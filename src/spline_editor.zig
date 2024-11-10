const std = @import("std");

const game = @import("game.zig");

const raylib = @cImport(@cInclude("raylib.h"));
const raygui = @cImport(@cInclude("raygui.h"));

const Spline = game.Spline;

const screen_width = 1000;
const screen_height = 800;

const region_size = 300;
const point_radius = 8;

var camera: raylib.Camera2D = .{
    .target = .{.x = -10, .y = -10},
    .offset = .{.x = 0, .y = 0},
    .rotation = 0,
    .zoom = 2,
};

var mouse_selected_point: ?usize = null;
var editor_selected_point: ?usize = null;

var text_input_buffer: [64]u8 = .{0} ** 64;

fn real_x(spline: *const game.SplinePoint) f32 {
    return region_size * spline.x; 
}

fn real_y(spline: *const game.SplinePoint) f32 {
    return region_size * spline.y; 
}

pub fn main() !void {
    var spline = Spline.init(); 

    raylib.InitWindow(screen_width, screen_height, "spline editor");
    raylib.SetTargetFPS(30);

    var scratch_buffer: [1024]u8 = undefined;
    var buffer_allocator = std.heap.FixedBufferAllocator.init(scratch_buffer[0..]);

    while (!raylib.WindowShouldClose()) {
        update(&spline);
        draw(&spline, buffer_allocator.allocator());
        buffer_allocator.reset();
    }

    raylib.CloseWindow();
}

fn update(spline: *Spline) void {
    const mouse_screen_position = raylib.GetMousePosition();
    const mouse_world_position = raylib.GetScreenToWorld2D(mouse_screen_position, camera);
   
    mouse_select: {
        if(!raylib.IsMouseButtonPressed(0)) {
            break :mouse_select;
        }

        if(mouse_selected_point != null) {
            mouse_selected_point = null;
            break :mouse_select;
        }

        for(0..spline.length) |i| {
            const point_real_x = real_x(&spline.buffer[i]);
            const point_real_y = real_y(&spline.buffer[i]);

            if(!(mouse_world_position.x >= point_real_x - point_radius and mouse_world_position.x <= point_real_x + point_radius)) {
                continue;
            }

            if(!(mouse_world_position.y >= point_real_y - point_radius and mouse_world_position.y <= point_real_y + point_radius)) {
                continue;
            }

            mouse_selected_point = i;
        }
    }

    point_move: {
        if(mouse_selected_point == null) {
            break :point_move;
        }

        const point = &spline.buffer[mouse_selected_point.?];

        // need to get mouse coords and translate them to be relative to region then update point
        const relative_x = mouse_world_position.x / region_size;
        const relative_y = mouse_world_position.y / region_size;
       
        point.x = relative_x;
        point.y = relative_y;

        point.clamp();
    }
}

fn draw(spline: *Spline, allocator: std.mem.Allocator) void {
    raylib.BeginDrawing();
    raylib.ClearBackground(raylib.BLACK);
    raylib.BeginMode2D(camera);

    raylib.DrawRectangle(0, 0, region_size, region_size, raylib.WHITE);

    // draw lines
    for(0..spline.length) |i| {
        if(i == spline.length - 1) {
            break;
        }

        const start_point = spline.buffer[i];
        const end_point = spline.buffer[i + 1];

        draw_line(real_x(&start_point), real_y(&start_point), real_x(&end_point), real_y(&end_point), 1, raylib.BLACK);
    }

    // draw points
    for(0..spline.length) |i| {
        var color: raylib.Color = undefined;
        if(i == 0) {
            color = raylib.GREEN;
        } else if(i == spline.length - 1) {
            color = raylib.RED;
        } else {
            color = raylib.GRAY;
        }

        if(editor_selected_point != null and i == editor_selected_point.?) {
            color = raylib.BLUE;
        }

        const point = &spline.buffer[i];
        draw_circle(real_x(point), real_y(point), point_radius, color);
    }

    raylib.EndMode2D();

    if(raygui.GuiButton(.{.x = screen_width - 350, .y = 10, .width = 300, .height = 50}, "new point") != 0) {
        spline.add_point();
    }

    editor_select_points: { // change selected points in editor
        if(spline.length == 0) {
            editor_selected_point = null;
            break :editor_select_points;
        }

        if(raygui.GuiButton(.{.x = screen_width - 350, .y = 60, .width = 150, .height = 50}, "-") != 0) {
            if(editor_selected_point == null) {
                editor_selected_point = 0;
                break :editor_select_points;
            }

            if(editor_selected_point.? == 0) {
                editor_selected_point = spline.length - 1;
            } else {
                editor_selected_point.? -= 1;
            }
        }
    
        if(raygui.GuiButton(.{.x = screen_width - 200, .y = 60, .width = 150, .height = 50}, "+") != 0) {
            if(editor_selected_point == null) {
                editor_selected_point = 0;
                break :editor_select_points;
            }

            if(editor_selected_point.? >= spline.length - 1) {
                editor_selected_point = 0;
            } else {
                editor_selected_point.? += 1;
            }
        } 
    }

    { // point text info
        if(editor_selected_point != null) {
            const selected_point = spline.buffer[editor_selected_point.?];

            const string = std.fmt.allocPrintZ(allocator, "point {{x: {d}, y: {d}}}", .{selected_point.x, selected_point.y}) catch unreachable;
            draw_text(string, 20, screen_height - 50, 40, raylib.WHITE);
        }
    }

    editor_increment_point: {
        if(editor_selected_point == null) {
            break :editor_increment_point;
        }

        const selected_point = &spline.buffer[editor_selected_point.?];
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
        spline.* = import_spline() catch |err| handle: {
            std.debug.print("error importing spline: {any}\n", .{err});
            break :handle spline.*;
        };
    }

    _ = raygui.GuiTextBox(.{.x = screen_width - 350, .y = screen_height - 110, .width = 300, .height = 50}, text_input_buffer[0..], 64, true);

    if(raygui.GuiButton(.{.x = screen_width - 350, .y = screen_height - 60, .width = 300, .height = 50}, "export") != 0) {
        export_spline(spline) catch |err| {
            std.debug.print("error exporting spline: {any}\n", .{err});
        };
    }

    raylib.EndDrawing();
}

fn get_text_input() []const u8 {
    var end_index: usize = 0;
    for(&text_input_buffer, 0..) |c, i| {
        end_index = i;

        if(c == 0) {
            break;
        }
    }

    return text_input_buffer[0..end_index];
}

fn export_spline(spline: *const Spline) !void {
    const cwd = std.fs.cwd();

    const file_name = get_text_input();

    var buffer: [1024]u8 = .{0} ** 1024;
    const export_path = try std.fmt.bufPrintZ(buffer[0..], "./src/splines/{s}", .{file_name});

    const file = try cwd.createFile(export_path, .{});
    defer file.close();

    const bytes = std.mem.toBytes(spline.*);
    try file.writeAll(bytes[0..]);
    
    std.debug.print("exported into {s}\n", .{export_path});
}

fn import_spline() !Spline {
    const cwd = std.fs.cwd();

    const file_name = get_text_input();

    var buffer: [1024]u8 = .{0} ** 1024;
    const import_path = try std.fmt.bufPrintZ(buffer[0..], "./src/splines/{s}", .{file_name});

    const file = try cwd.openFile(import_path, .{});
    defer file.close();

    const size = try file.readAll(buffer[0..]);

    const spline = std.mem.bytesToValue(Spline, buffer[0..size]);
    return spline;
}

fn draw_circle(x: f32, y: f32, radius: f32, color: raylib.Color) void {
    raylib.DrawCircle(
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        radius, 
        color
    );
}

fn draw_line(start_x: f32, start_y: f32, end_x: f32, end_y: f32, THICKNESS: f32, color: raylib.Color) void {
    raylib.DrawLineEx(
        .{.x = start_x, .y = start_y},
        .{.x = end_x, .y = end_y},
        THICKNESS,
        color
    );
}

fn draw_text(text: []const u8, x: f32, y: f32, font_size: i32, color: raylib.Color) void {
    raylib.DrawText(
        &text[0],
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intCast(font_size)), 
        color
    );
}
