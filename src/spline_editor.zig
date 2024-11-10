const std = @import("std");

const raylib = @cImport(@cInclude("raylib.h"));
const raygui = @cImport(@cInclude("raygui.h"));

const screen_width = 1000;
const screen_height = 800;

const region_size = 300;
const point_radius = 8;

const import_path = "./src/splines/curved_belt_right.spline";

var camera: raylib.Camera2D = .{
    .target = .{.x = -10, .y = -10},
    .offset = .{.x = 0, .y = 0},
    .rotation = 0,
    .zoom = 2,
};

var mouse_selected_point: ?usize = null;
var editor_selected_point: ?usize = null;

pub const Point = struct {
    const Self = @This();

    x: f32,
    y: f32,

    fn clamp(self: *Self) void {
        self.x = std.math.clamp(self.x, 0, 1);
        self.y = std.math.clamp(self.y, 0, 1);
    }

    fn real_x(self: *const Self) f32 {
        return region_size * self.x; 
    }

    fn real_y(self: *const Self) f32 {
        return region_size * self.y; 
    }
};

pub const Spline = struct {
    const Self = @This();

    const max_points = 5;

    length: usize,
    buffer: [max_points]Point,

    pub fn init() Self {
        return Self{
            .length = 0,
            .buffer = [_]Point{.{.x = 0, .y = 0}} ** max_points,
        };
    }

    pub fn mirror_x(self: *const Self) Self {
        var new_spline = self.*;

        for(0..new_spline.length) |i| {
            const point = &new_spline.buffer[i];
            point.x = 1 - point.x;
            point.clamp();
        }

        return new_spline;
    }

    pub fn mirror_y(self: *const Self) Self {
        var new_spline = self.*;

        for(0..new_spline.length) |i| {
            const point = &new_spline.buffer[i];
            point.y = 1 - point.y;
            point.clamp();
        }

        return new_spline;
    }

    pub fn rotate_clockwise(self: *const Self) Self {
        var new_spline = self.*;

        for(0..new_spline.length) |i| {
            const point = &new_spline.buffer[i];

            // translate the origin to be the centre of the 
            // square and not the top left
            // 0 -> -1, 0.5 -> 0, 1 -> 1
            const translated_x = (point.x * 2) - 1;
            const translated_y = (point.y * 2) - 1;

            const half_pi = std.math.pi * 0.5;

            const rotated_x = (translated_x * std.math.cos(half_pi)) - (translated_y * std.math.sin(half_pi));
            const rotated_y = (translated_x * std.math.sin(half_pi)) + (translated_y * std.math.cos(half_pi));

            point.x = (rotated_x + 1) / 2;
            point.y = (rotated_y + 1) / 2;

            point.clamp();
        }

        return new_spline;
    }

    pub fn rotate_counter_clockwise(self: *const Self) Self {
        var new_spline = self.*;

        for(0..new_spline.length) |i| {
            const point = &new_spline.buffer[i];

            // translate the origin to be the centre of the 
            // square and not the top left
            // 0 -> -1, 0.5 -> 0, 1 -> 1
            const translated_x = (point.x * 2) - 1;
            const translated_y = (point.y * 2) - 1;

            const half_pi = -std.math.pi * 0.5;

            const rotated_x = (translated_x * std.math.cos(half_pi)) - (translated_y * std.math.sin(half_pi));
            const rotated_y = (translated_x * std.math.sin(half_pi)) + (translated_y * std.math.cos(half_pi));

            point.x = (rotated_x + 1) / 2;
            point.y = (rotated_y + 1) / 2;

            point.clamp();
        }

        return new_spline;
    }

    fn add_point(self: *Self) void {
        if(self.length == self.buffer.len) {
            return;
        }

        self.buffer[self.length] = .{.x = 0, .y = 0};
        self.length += 1;
    }
};

pub fn run() !void {
    var spline = Spline.init(); 

    if(import_path.len != 0) {
        spline = import_spline();
    }

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
            const point_real_x = spline.buffer[i].real_x();
            const point_real_y = spline.buffer[i].real_y();

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

        draw_line(start_point.real_x(), start_point.real_y(), end_point.real_x(), end_point.real_y(), 1, raylib.BLACK);
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

        draw_circle(spline.buffer[i].real_x(), spline.buffer[i].real_y(), point_radius, color);
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

    if(raygui.GuiButton(.{.x = screen_width - 350, .y = screen_height - 60, .width = 300, .height = 50}, "export") != 0) {
        export_spline(spline);
    }

    raylib.EndDrawing();
}

fn export_spline(spline: *const Spline) void {
    if(spline.length == 0) {
        std.debug.print("did not export spline, no points... :[\n", .{});
        return;
    }

    const cwd = std.fs.cwd();

    const file = cwd.createFile("./src/splines/new.spline", .{}) catch unreachable;
    defer file.close();

    const bytes = std.mem.toBytes(spline.*);
    file.writeAll(bytes[0..]) catch unreachable;
    
    std.debug.print("exported into cwd/src/splines/new.spline\n", .{});
}

fn import_spline() Spline {
    const cwd = std.fs.cwd();

    const file = cwd.openFile(import_path, .{}) catch unreachable;
    defer file.close();

    var buffer: [1024]u8 = .{0} ** 1024;
    const size = file.readAll(buffer[0..]) catch unreachable;

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
