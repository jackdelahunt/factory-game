const std = @import("std");


const raylib = @cImport(@cInclude("raylib.h"));
const raygui = @cImport(@cInclude("raygui.h"));

const m = @import("main.zig");

const Spline = m.Spline;
const SplinePoint = m.SplinePoint;
const State = m.State;

const game = @import("game.zig");
const render = @import("render.zig");

const screen_width = 1000;
const screen_height = 800;

const region_size = 300;
const point_radius = 8;

pub const SplineEditorState = struct {
    const Self = @This();

    camera: raylib.Camera2D,
    mouse_selected_point: ?usize = null,
    editor_selected_point: ?usize = null,
    text_input_buffer: [64]u8 = .{0} ** 64,
    spline: Spline,

    pub fn init() Self {
        return Self {
            .camera = .{
                .target = .{.x = -10, .y = -10},
                .offset = .{.x = 0, .y = 0},
                .rotation = 0,
                .zoom = 2,
            },
            .mouse_selected_point = null,
            .editor_selected_point = null,
            .text_input_buffer = .{0} ** 64,
            .spline = Spline.init(),
        };
    }
};

fn real_x(spline: *const SplinePoint) f32 {
    return region_size * spline.x; 
}

fn real_y(spline: *const SplinePoint) f32 {
    return region_size * spline.y; 
}

pub fn start(state: *State) void {
    _ = state;
}

pub fn update(state: *State) void {
    const mouse_screen_position = raylib.GetMousePosition();
    const mouse_world_position = raylib.GetScreenToWorld2D(mouse_screen_position, state.se.camera);
   
    mouse_select: {
        if(!raylib.IsMouseButtonPressed(0)) {
            break :mouse_select;
        }

        if(state.se.mouse_selected_point != null) {
            state.se.mouse_selected_point = null;
            break :mouse_select;
        }

        for(0..state.se.spline.length) |i| {
            const point_real_x = real_x(&state.se.spline.buffer[i]);
            const point_real_y = real_y(&state.se.spline.buffer[i]);

            if(!(mouse_world_position.x >= point_real_x - point_radius and mouse_world_position.x <= point_real_x + point_radius)) {
                continue;
            }

            if(!(mouse_world_position.y >= point_real_y - point_radius and mouse_world_position.y <= point_real_y + point_radius)) {
                continue;
            }

            state.se.mouse_selected_point = i;
        }
    }

    point_move: {
        if(state.se.mouse_selected_point == null) {
            break :point_move;
        }

        const point = &state.se.spline.buffer[state.se.mouse_selected_point.?];

        // need to get mouse coords and translate them to be relative to region then update point
        const relative_x = mouse_world_position.x / region_size;
        const relative_y = mouse_world_position.y / region_size;
       
        point.x = relative_x;
        point.y = relative_y;

        point.clamp();
    }
}

pub fn draw(state: *State) void {
    raylib.BeginDrawing();
    raylib.ClearBackground(raylib.BLACK);
    raylib.BeginMode2D(state.se.camera);

    raylib.DrawRectangle(0, 0, region_size, region_size, raylib.WHITE);

    const spline = &state.se.spline;

    // draw lines
    for(0..spline.length) |i| {
        if(i == spline.length - 1) {
            break;
        }

        const start_point = spline.buffer[i];
        const end_point = spline.buffer[i + 1];

        render.line(real_x(&start_point), real_y(&start_point), real_x(&end_point), real_y(&end_point), 1, raylib.BLACK);
    }

    // draw points
    for(0..state.se.spline.length) |i| {
        var color: raylib.Color = undefined;
        if(i == 0) {
            color = raylib.GREEN;
        } else if(i == spline.length - 1) {
            color = raylib.RED;
        } else {
            color = raylib.GRAY;
        }

        if(state.se.editor_selected_point != null and i == state.se.editor_selected_point.?) {
            color = raylib.BLUE;
        }

        const point = &spline.buffer[i];
        render.circle(real_x(point), real_y(point), point_radius, color);
    }

    raylib.EndMode2D();

    if(raygui.GuiButton(.{.x = screen_width - 350, .y = 10, .width = 300, .height = 50}, "new point") != 0) {
        spline.add_point();
    }

    editor_select_points: { // change selected points in editor
        if(spline.length == 0) {
            state.se.editor_selected_point = null;
            break :editor_select_points;
        }

        if(raygui.GuiButton(.{.x = screen_width - 350, .y = 60, .width = 150, .height = 50}, "-") != 0) {
            if(state.se.editor_selected_point == null) {
                state.se.editor_selected_point = 0;
                break :editor_select_points;
            }

            if(state.se.editor_selected_point.? == 0) {
                state.se.editor_selected_point = spline.length - 1;
            } else {
                state.se.editor_selected_point.? -= 1;
            }
        }
    
        if(raygui.GuiButton(.{.x = screen_width - 200, .y = 60, .width = 150, .height = 50}, "+") != 0) {
            if(state.se.editor_selected_point == null) {
                state.se.editor_selected_point = 0;
                break :editor_select_points;
            }

            if(state.se.editor_selected_point.? >= spline.length - 1) {
                state.se.editor_selected_point = 0;
            } else {
                state.se.editor_selected_point.? += 1;
            }
        } 
    }

    { // point text info
        if(state.se.editor_selected_point != null) {
            const selected_point = spline.buffer[state.se.editor_selected_point.?];

            const string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "point {{x: {d}, y: {d}}}", .{selected_point.x, selected_point.y}) catch unreachable;
            render.text(string, 20, screen_height - 50, 40, raylib.WHITE);
        }
    }

    editor_increment_point: {
        if(state.se.editor_selected_point == null) {
            break :editor_increment_point;
        }

        const selected_point = &spline.buffer[state.se.editor_selected_point.?];
        const increment = 0.05;

        // x add
        if(raygui.GuiButton(.{.x = screen_width - 350, .y = 110, .width = 150, .height = 25}, "+") != 0) {
            const rounded = @round(selected_point.x / increment) * increment;

            if(rounded > selected_point.x) {
                selected_point.x = rounded;
            } else if(rounded <= selected_point.x) {
                selected_point.x = rounded + increment;
            }
        }

        // x minus
        if(raygui.GuiButton(.{.x = screen_width - 350, .y = 135, .width = 150, .height = 25}, "-") != 0) {
            const rounded = @round(selected_point.x / increment) * increment;

            if(rounded < selected_point.x) {
                selected_point.x = rounded;
            } else if(rounded >= selected_point.x) {
                selected_point.x = rounded - increment;
            }
        }

        // y add
        if(raygui.GuiButton(.{.x = screen_width - 200, .y = 110, .width = 150, .height = 25}, "+") != 0) {
            const rounded = @round(selected_point.y / increment) * increment;

            if(rounded > selected_point.y) {
                selected_point.y = rounded;
            } else if(rounded <= selected_point.y) {
                selected_point.y = rounded + increment;
            }
        }

        // y minus
        if(raygui.GuiButton(.{.x = screen_width - 200, .y = 135, .width = 150, .height = 25}, "-") != 0) {
            const rounded = @round(selected_point.y / increment) * increment;

            if(rounded < selected_point.y) {
                selected_point.y = rounded;
            } else if(rounded >= selected_point.y) {
                selected_point.y = rounded - increment;
            }
        }

        selected_point.clamp();
    }

    if(raygui.GuiButton(.{.x = screen_width - 350, .y = screen_height - 160, .width = 300, .height = 50}, "import") != 0) {
        spline.* = import_spline(state) catch |err| handle: {
            std.debug.print("error importing spline: {any}\n", .{err});
            break :handle spline.*;
        };
    }

    _ = render.text_input(state, screen_width - 350, screen_height - 110, 300, 50, state.se.text_input_buffer[0..], 30);

    if(raygui.GuiButton(.{.x = screen_width - 350, .y = screen_height - 60, .width = 300, .height = 50}, "export") != 0) {
        export_spline(state) catch |err| {
            std.debug.print("error exporting spline: {any}\n", .{err});
        };
    }

    raylib.EndDrawing();
}

fn get_text_input(state: *State) []const u8 {
    var end_index: usize = 0;
    for(&state.se.text_input_buffer, 0..) |c, i| {
        end_index = i;

        if(c == 0) {
            break;
        }
    }

    return state.se.text_input_buffer[0..end_index];
}

fn export_spline(state: *State) !void {
    const cwd = std.fs.cwd();

    const file_name = get_text_input(state);

    var buffer: [1024]u8 = .{0} ** 1024;
    const export_path = try std.fmt.bufPrintZ(buffer[0..], "./resources/splines/{s}", .{file_name});

    const file = try cwd.createFile(export_path, .{});
    defer file.close();

    const bytes = std.mem.toBytes(state.se.spline);
    try file.writeAll(bytes[0..]);
    
    std.debug.print("exported into {s}\n", .{export_path});
}

fn import_spline(state: *State) !Spline {
    const cwd = std.fs.cwd();

    const file_name = get_text_input(state);

    var buffer: [1024]u8 = .{0} ** 1024;
    const import_path = try std.fmt.bufPrintZ(buffer[0..], "./resources/splines/{s}", .{file_name});

    const file = try cwd.openFile(import_path, .{});
    defer file.close();

    const size = try file.readAll(buffer[0..]);

    const spline = std.mem.bytesToValue(Spline, buffer[0..size]);
    return spline;
}
