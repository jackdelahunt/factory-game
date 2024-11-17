const std = @import("std");

const raylib = @cImport(@cInclude("raylib.h"));
const raygui = @cImport(@cInclude("raygui.h"));
const fastnoise = @import("fastnoise.zig");

const main = @import("main.zig");
const game = @import("game.zig");

const allowed_text_input_keys = block: {
    var keys = [_]c_int{0} ** 28;

    for(0..26) |i| {
        keys[i] = raylib.KEY_A + @as(c_int, @intCast(i));
    }

    keys[26] = raylib.KEY_MINUS;
    keys[27] = raylib.KEY_PERIOD;

    break :block keys;
};

const allowed_number_input_keys = [_]c_int{
    raylib.KEY_ZERO,
    raylib.KEY_ONE,
    raylib.KEY_TWO,
    raylib.KEY_THREE,
    raylib.KEY_FOUR,
    raylib.KEY_FIVE,
    raylib.KEY_SIX,
    raylib.KEY_SEVEN,
    raylib.KEY_EIGHT,
    raylib.KEY_NINE,
};

pub fn number_input(state: *main.State, x: f32, y: f32, width: f32, height: f32, input_buffer: []u8, font_size: i32, value: *usize) []const u8 {
    const toggled = toggle(state, x, y, width, height, input_buffer, font_size, raylib.RED, raylib.WHITE);

    if(toggled) {
        for(&allowed_number_input_keys) |key| {
            if(state.key(key) == .down) {
                append_to_input(input_buffer, key_to_byte(key));
            }
        }
    
        if(state.key(raylib.KEY_BACKSPACE) == .down) {
            backspace_from_input(input_buffer);
        }
    }

    var last_index = input_buffer.len;
    for(input_buffer, 0..) |c, i| {
        if(c == 0) {
            last_index = i;
            break;
        }
    }

    value.* = std.fmt.parseInt(usize, input_buffer[0..last_index], 10) catch 0;

    return input_buffer[0..last_index];
}

pub fn text_input(state: *main.State, x: f32, y: f32, width: f32, height: f32, input_buffer: []u8, font_size: i32) []const u8 {
    const toggled = toggle(state, x, y, width, height, input_buffer, font_size, raylib.RED, raylib.WHITE);

    if(toggled) {
        for(&allowed_text_input_keys) |key| {
            if(state.key(key) == .down) {
                append_to_input(input_buffer, key_to_byte(key));
            }
        }
    
        if(state.key(raylib.KEY_BACKSPACE) == .down) {
            backspace_from_input(input_buffer);
        }
    }

    var last_index = input_buffer.len;
    for(input_buffer, 0..) |c, i| {
        if(c == 0) {
            last_index = i;
            break;
        }
    }
    

    return input_buffer[0..last_index];
}

pub fn number_selector(state: *main.State, x: f32, y: f32, width: f32, height: f32, value: *i64) void {
    if(button(state, x, y, width / 2, height / 2, "", @intFromFloat(width / 2), raylib.GREEN)) {
        value.* += 1; 
    }

    if(button(state, x, y + (height / 2), width / 2, height / 2, "", @intFromFloat(width / 2), raylib.RED)) {
        value.* -= 1;
    }

    const slice = std.fmt.allocPrintZ(state.scratch_space.allocator(), "{d}", .{value.*}) catch unreachable;
    game.draw_text(slice, x + (width / 2), y, @intFromFloat(width / 2), raylib.WHITE);
}

pub fn toggle(state: *main.State, x: f32, y: f32, width: f32, height: f32, label: []const u8, font_size: i32, on_color: raylib.Color, off_color: raylib.Color) bool {
    const static = struct {
        var active: ?struct {x: f32, y: f32} = null;

        fn is_active_to_me(x_input: f32, y_input: f32) bool {
            if(active == null) {
                return false;
            }

            return active.?.x == x_input and active.?.y == y_input;
        }
    };

    const clicked = button(state, x, y, width, height, label, font_size, if(static.is_active_to_me(x, y)) on_color else off_color);

    if(clicked) {
        static.active = .{.x = x, .y = y};
    } else if(state.input.left_mouse and static.is_active_to_me(x, y)) {
        static.active = null;
    }

    if(!static.is_active_to_me(x, y)) {
        return false;
    }

    return true;
}

pub fn button(state: *main.State, x: f32, y: f32, width: f32, height: f32, label: []const u8, font_size: i32, color: raylib.Color) bool {
    draw_texture_tint(main.get_alt_texture(.item_slot), x, y, width, height, color);
    text_bounded(label, x, y, font_size, @intFromFloat(width), raylib.WHITE);

    if(!state.input.left_mouse) {
        return false;
    }

    const mouse_position = game.get_mouse_screen_position();
    return (mouse_position.x >= x and mouse_position.x <= x + width) and (mouse_position.y >= y and mouse_position.y <= y + height);
}

pub fn rectangle(x: f32, y: f32, width: f32, height: f32, color: raylib.Color) void {
    raylib.DrawRectangle(
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intFromFloat(width)), 
        @as(c_int, @intFromFloat(height)), 
        color
    );
}

pub fn rectangle_gradient_vertical(x: f32, y: f32, width: f32, height: f32, start_color: raylib.Color, end_color: raylib.Color) void {
    raylib.DrawRectangleGradientV(
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intFromFloat(width)), 
        @as(c_int, @intFromFloat(height)), 
        start_color,
        end_color
    );
}

pub fn circle(x: f32, y: f32, radius: f32, color: raylib.Color) void {
    raylib.DrawCircle(
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        radius, 
        color
    );
}

pub fn line(start_x: f32, start_y: f32, end_x: f32, end_y: f32, THICKNESS: f32, color: raylib.Color) void {
    raylib.DrawLineEx(
        .{.x = start_x, .y = start_y},
        .{.x = end_x, .y = end_y},
        THICKNESS,
        color
    );
}

pub fn text(string: []const u8, x: f32, y: f32, font_size: i32, color: raylib.Color) void {
    if(string.len == 0) return;

    raylib.DrawText(
        &string[0],
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intCast(font_size)), 
        color
    );
}

// WARNING: this is slow
pub fn text_bounded(string: []const u8, x: f32, y: f32, font_size: i32, max_width: i32, color: raylib.Color) void {
    if(string.len == 0) return;

    var real_font_size = font_size;
    while(raylib.MeasureText(&string[0], real_font_size) > @as(c_int, @intCast(max_width))) {
        real_font_size -= 1;

        if(font_size == 1) break;
    }

    raylib.DrawText(
        &string[0],
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intCast(real_font_size)), 
        color
    );
}

pub inline fn draw_texture(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32) void {
    draw_texture_tint(texture, x, y, width, height, raylib.WHITE);
}

pub inline fn draw_texture_tint(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32, tint: raylib.Color) void {
    draw_texture_pro(texture, x, y, width, height, 0, tint, false);
}

pub fn draw_texture_pro(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32, rotation: f32, tint: raylib.Color, centred: bool) void {
    // Source rectangle (part of the texture to use for drawing)
    const source_rectagle: raylib.Rectangle = .{ .x = 0, .y = 0, .width = @as(f32, @floatFromInt(texture.width)), .height = @as(f32, @floatFromInt(texture.height)) };

    // Destination rectangle (screen rectangle where drawing part of texture)
    var destination_rectangle: raylib.Rectangle = .{ .x = x, .y = y, .width = width, .height = height};

    if(centred) {
        destination_rectangle.x -= width / 2;
        destination_rectangle.y -= height / 2;
    }

    raylib.DrawTexturePro(texture, source_rectagle, destination_rectangle, .{}, rotation, tint);
}

// only keys in the text input list are allowed
fn key_to_byte(key: c_int) u8 {
    // for alphabetical lowercase
    const letter_offset = 97 - raylib.KEY_A;
    const number_offset = 48 - raylib.KEY_ZERO;

    return switch (key) {
        raylib.KEY_A...raylib.KEY_Z => @as(u8, @intCast(key + letter_offset)),
        raylib.KEY_ZERO...raylib.KEY_NINE => @as(u8, @intCast(key + number_offset)),
        raylib.KEY_MINUS => 45,
        raylib.KEY_PERIOD => 46,
        else => unreachable
    };
}

fn append_to_input(buffer: []u8, byte: u8) void {
    for(buffer, 0..) |c, i| {
        if(c != 0) {
            continue;
        }

        buffer[i] = byte;
        break;
    }
}

fn backspace_from_input(buffer: []u8) void {
    // check the last character to remove first
    // this just makes the code after easier
    if(buffer[buffer.len - 1] != 0) {
        buffer[buffer.len - 1] = 0;
        return;
    }

    for(buffer, 0..) |c, i| {
        if(c != 0) {
            continue;
        }

        // empty input buffer
        if(i == 0) {
            break;
        }

        buffer[i - 1] = 0;
        break;
    }
}
