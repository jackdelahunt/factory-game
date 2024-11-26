//       F---------G
//      /|        /|
//     B---------C |
//     | |       | |        <----- what are the secrets of the cube
//     | E-------|-H
//     |/        |/
//     A---------D

const std = @import("std");

const raylib = @cImport(@cInclude("raylib.h"));
const raygui = @cImport(@cInclude("raygui.h"));

const fastnoise = @import("fastnoise.zig");

const game = @import("game.zig");
const spline_editor = @import("spline_editor.zig");

const default_screen_width = 1200;
const default_screen_height = 900;

var time_per_tick: f32 = 0.1;
      
//        straight                   curved
// (2 side * 4 directions) + (2 sides * 4 direction * 2 output sides)
pub var splines: [24]Spline = undefined;

// spline paths
//
const straight_belt_left_spline_path = "straight-belt-left.spline";
const curved_belt_left_spline_path = "curved-belt-left.spline";
const curved_belt_right_spline_path = "curved-belt-right.spline";

// TILES
var tile_textures: [19]raylib.Texture = .{undefined} ** 19;

// ITEMS
var item_textures: [8]raylib.Texture = .{undefined} ** 8;

// ALTS
var alt_textures: [1]raylib.Texture = .{undefined} ** 1;

// images paths
//
// TILES
const grass_tile_image_path = "tiles/grass.png";
const stone_tile_image_path = "tiles/stone.png";
const iron_ore_tile_image_path = "tiles/iron_ore.png";
const copper_ore_tile_image_path = "tiles/copper_ore.png";
const miner_tile_image_path = "tiles/miner.png";
const coal_ore_tile_image_path = "tiles/coal_ore.png";
const furnace_tile_image_path = "tiles/furnace.png";
const tree_base_image_path = "tiles/tree_base.png";
const tree_0_image_path = "tiles/tree_0.png";
const extractor_image_path = "tiles/extractor.png";
const belt_image_path = "tiles/belt.png";
const belt_left_image_path = "tiles/belt_left.png";
const belt_right_image_path = "tiles/belt_right.png";
const pipe_merger_image_path = "tiles/pipe_merger.png";
const pole_image_path = "tiles/pole.png";
const battery_image_path = "tiles/battery.png";
const crusher_image_path = "tiles/crusher.png";
const researcher_image_path = "tiles/researcher.png";
const splitter_image_path = "tiles/splitter.png";

// ITEMS
const iron_item_image_path = "items/iron.png";
const copper_item_image_path = "items/copper.png";
const coal_item_image_path = "items/coal.png";
const iron_ingot_item_image_path = "items/iron_ingot.png";
const copper_ingot_item_image_path = "items/copper_ingot.png";
const stone_item_image_path = "items/stone.png";
const wood_item_image_path = "items/wood.png";
const red_science_item_image_path = "items/red_science.png";

// ALTS
const item_slot_image_path = "items/item_slot.png";

pub const TileTextures = enum {
    grass,
    stone,
    iron_ore,
    copper_ore,
    miner,
    coal_ore,
    furnace,
    tree_base,
    tree_0,
    extractor,
    belt,
    belt_left,
    belt_right,
    pipe_merger,
    pole,
    battery,
    crusher,
    researcher,
    splitter,
};

pub const ItemTextures = enum {
    iron,
    copper,
    coal,
    iron_ingot,
    copper_ingot,
    stone,
    wood,
    red_science
};

pub const AltTextures = enum {
    item_slot
};

pub fn get_tile_texture(tile: TileTextures) raylib.Texture {
    return tile_textures[@intFromEnum(tile)];
}

pub fn get_item_texture(item: ItemTextures) raylib.Texture {
    return item_textures[@intFromEnum(item)];
}

pub fn get_alt_texture(alt: AltTextures) raylib.Texture {
    return alt_textures[@intFromEnum(alt)];
}

/////////////////////////////////////////////////////////////////////////////////
///                         @state
/////////////////////////////////////////////////////////////////////////////////
pub const State = struct {
    const Self = @This();

    var extractor_give_left = true;

    const Input = struct{
        numbers: [9]bool, // we ignore 0
        scroll: f32,
        left_mouse: bool,
        right_mouse: bool,
        left_shift: bool,
    };

    const InputState = enum {
        up,
        down, 
        pressing, 
        released,
    };

    keyboard: [348]InputState,
    mouse: [7]InputState,
    input: Input,
    allocator: std.mem.Allocator,
    underlying_arena: *std.heap.ArenaAllocator,
    scratch_space: std.heap.FixedBufferAllocator,
    max_scratch_space_usage: usize,
    tick_timer: f32,
    time_per_tick: f32,
    current_state: enum {
        game,
        spline_editor
    },
    g: game.GameState,
    se: spline_editor.SplineEditorState,

    // arena* is just used for getting memory usage,
    // use the allocator field for actual allocation
    fn init(arena: *std.heap.ArenaAllocator, allocator: std.mem.Allocator) !State { 
        return Self { 
            .keyboard = [_]State.InputState{.up} ** 348,
            .mouse = [_]State.InputState{.up} ** 7,
            .input = std.mem.zeroes(State.Input),
            .allocator = allocator,
            .underlying_arena = arena,
            .scratch_space = std.heap.FixedBufferAllocator.init(try allocator.alloc(u8, 1024 * 1024 * 1)), // 1 MB
            .max_scratch_space_usage = 0,
            .tick_timer = 0,
            .time_per_tick = 0.1,
            .current_state = .game,
            .g = try game.GameState.init(allocator),
            .se = spline_editor.SplineEditorState.init(),
        };
    }

    fn run(self: *Self) void {
        game.start(self);

        while (!raylib.WindowShouldClose()) {
            const delta_time = raylib.GetFrameTime();
            self.tick_timer += delta_time; 

            self.get_input();

            if(self.key(raylib.KEY_N) == .down and self.input.left_shift) {
                self.current_state = switch (self.current_state) {
                    .game => .spline_editor,
                    .spline_editor => .game,
                };
            }

            switch (self.current_state) {
                .game => {
                    game.update(self, raylib.GetFrameTime());
                    game.draw(self);
                },
                .spline_editor => {
                    spline_editor.update(self);
                    spline_editor.draw(self);
                }
            }

            if(self.tick_timer >= self.time_per_tick) {
                self.tick_timer = 0;
            }
           
            if(self.max_scratch_space_usage < self.scratch_space.end_index) {
                self.max_scratch_space_usage = self.scratch_space.end_index;
            }

            self.scratch_space.reset();
        }

        raylib.CloseWindow();
    }

    fn get_input(self: *Self) void {
        for(&self.keyboard, 0..) |_, i| {
            if(raylib.IsKeyDown(@intCast(i))) {
                if(raylib.IsKeyPressed(@intCast(i))) {
                    self.keyboard[i] = .down;
                } else {
                    self.keyboard[i] = .pressing;
                }
            } else if(raylib.IsKeyReleased(@intCast(i))) {
                self.keyboard[i] = .released;
            } else {
                self.keyboard[i] = .up;
            }
        }

        for(&self.mouse, 0..) |_, i| {
            if(raylib.IsMouseButtonDown(@intCast(i))) {
                if(raylib.IsMouseButtonPressed(@intCast(i))) {
                    self.mouse[i] = .down;
                } else {
                    self.mouse[i] = .pressing;
                }
            } else if(raylib.IsMouseButtonReleased(@intCast(i))) {
                self.mouse[i] = .released;
            } else {
                self.mouse[i] = .up;
            }
        }

        self.input.numbers[0] = raylib.IsKeyDown(raylib.KEY_ONE);
        self.input.numbers[1] = raylib.IsKeyDown(raylib.KEY_TWO);
        self.input.numbers[2] = raylib.IsKeyDown(raylib.KEY_THREE);
        self.input.numbers[3] = raylib.IsKeyDown(raylib.KEY_FOUR);
        self.input.numbers[4] = raylib.IsKeyDown(raylib.KEY_FIVE);
        self.input.numbers[5] = raylib.IsKeyDown(raylib.KEY_SIX);
        self.input.numbers[6] = raylib.IsKeyDown(raylib.KEY_SEVEN);
        self.input.numbers[7] = raylib.IsKeyDown(raylib.KEY_EIGHT);
        self.input.numbers[8] = raylib.IsKeyDown(raylib.KEY_NINE);
        self.input.scroll = raylib.GetMouseWheelMoveV().y;
        self.input.right_mouse = raylib.IsMouseButtonPressed(1);
        self.input.left_mouse = raylib.IsMouseButtonPressed(0);
        self.input.left_mouse = raylib.IsMouseButtonPressed(0);
        self.input.left_shift = raylib.IsKeyDown(raylib.KEY_LEFT_SHIFT);
    }

    pub fn tick(self: *const Self) bool {
        return self.tick_timer >= self.time_per_tick;
    }

    pub fn key(self: *const Self, k: c_int) Self.InputState {
        return self.keyboard[@intCast(k)];
    }

    pub fn mouse_button(self: *const Self, k: c_int) Self.InputState {
        return self.mouse[@intCast(k)];
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @splines
////////////////////////////////////////////////////////////////////////////////
pub const SplinePoint = struct {
    const Self = @This();

    x: f32,
    y: f32,

    pub fn clamp(self: *Self) void {
        self.x = std.math.clamp(self.x, 0, 1);
        self.y = std.math.clamp(self.y, 0, 1);
    } 
};

pub const Spline = struct {
    const Self = @This();

    const max_points = 5;

    length: usize,
    buffer: [max_points]SplinePoint,

    pub fn init() Self {
        return Self{
            .length = 0,
            .buffer = [_]SplinePoint{.{.x = 0, .y = 0}} ** max_points,
        };
    }

    // given two points in the spline return a new point
    // inbetween based off the ratio given t
    // this is just based of the two points given
    // if they are not adjacent any points inbettwen are
    // ignored, the resulting point is on a straight line 
    // between the two points
    pub fn interpolate(self: *const Self, start_point_index: usize, end_point_index: usize, t: f32) SplinePoint {
        const start_point = self.buffer[start_point_index];
        const end_point = self.buffer[end_point_index];

        const delta_x = end_point.x - start_point.x;
        const delta_y = end_point.y - start_point.y;


        return .{
            .x = start_point.x + (delta_x * t),
            .y = start_point.y + (delta_y * t)
        };
    }

    fn mirror_x(self: *const Self) Self {
        var new_spline = self.*;

        for(0..new_spline.length) |i| {
            const point = &new_spline.buffer[i];
            point.x = 1 - point.x;
            point.clamp();
        }

        return new_spline;
    }

    fn mirror_y(self: *const Self) Self {
        var new_spline = self.*;

        for(0..new_spline.length) |i| {
            const point = &new_spline.buffer[i];
            point.y = 1 - point.y;
            point.clamp();
        }

        return new_spline;
    }

    fn rotate_clockwise(self: *const Self) Self {
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

    fn rotate_counter_clockwise(self: *const Self) Self {
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

    pub fn add_point(self: *Self) void {
        if(self.length == self.buffer.len) {
            return;
        }

        self.buffer[self.length] = .{.x = 0, .y = 0};
        self.length += 1;
    }
};

fn load_texture(relative_texture_path: []const u8) !raylib.Texture {
    var base_path_buffer = std.mem.zeroes([std.fs.MAX_PATH_BYTES]u8);
    
    const cwd_dir = std.fs.cwd();
    const base_path = try cwd_dir.realpath(".", base_path_buffer[0..]);

    var texture_path_buffer = std.mem.zeroes([std.fs.MAX_PATH_BYTES]u8);
    const texture_path = try std.fmt.bufPrint(texture_path_buffer[0..], "{s}/resources/textures/{s}", .{base_path, relative_texture_path});

    const texture = raylib.LoadTexture(&texture_path[0]);
    if(texture.id <= 0) {
        std.debug.panic("unable to load texture with path {s}\n", .{texture_path});
    }

    return texture;
}

fn load_spline(relative_spline_path: []const u8) !Spline {
    const cwd = std.fs.cwd();

    var spline_path_buffer = std.mem.zeroes([std.fs.MAX_PATH_BYTES]u8);
    const spline_path = try std.fmt.bufPrint(spline_path_buffer[0..], "./resources/splines/{s}", .{relative_spline_path});

    const file = try cwd.openFile(spline_path, .{});
    
    var spline_buffer: [@sizeOf(Spline)]u8 = undefined;
    const read_size = try file.readAll(spline_buffer[0..]);
    std.debug.assert(read_size == spline_buffer.len);

    return std.mem.bytesToValue(Spline, spline_buffer[0..]);
}

pub fn load_resources() !void {
    const Loaded = struct {
        var loaded = false;
    };

    if(Loaded.loaded) {
        for(&tile_textures) |texture| {
            raylib.UnloadTexture(texture);
        }

        for(&item_textures) |texture| {
            raylib.UnloadTexture(texture);
        }

        for(&alt_textures) |texture| {
            raylib.UnloadTexture(texture);
        }
    }

    tile_textures = .{
        try load_texture(grass_tile_image_path),
        try load_texture(stone_tile_image_path),
        try load_texture(iron_ore_tile_image_path),
        try load_texture(copper_ore_tile_image_path),
        try load_texture(miner_tile_image_path),
        try load_texture(coal_ore_tile_image_path),
        try load_texture(furnace_tile_image_path),
        try load_texture(tree_base_image_path),
        try load_texture(tree_0_image_path),
        try load_texture(extractor_image_path),
        try load_texture(belt_image_path),
        try load_texture(belt_left_image_path),
        try load_texture(belt_right_image_path),
        try load_texture(pipe_merger_image_path),
        try load_texture(pole_image_path),
        try load_texture(battery_image_path),
        try load_texture(crusher_image_path),
        try load_texture(researcher_image_path),
        try load_texture(splitter_image_path),
    };

    item_textures = .{
       try load_texture(iron_item_image_path),
       try load_texture(copper_item_image_path),
       try load_texture(coal_item_image_path),
       try load_texture(iron_ingot_item_image_path),
       try load_texture(copper_ingot_item_image_path),
       try load_texture(stone_item_image_path),
       try load_texture(wood_item_image_path),
       try load_texture(red_science_item_image_path),
    };

    alt_textures = .{
       try load_texture(item_slot_image_path),
    };

    const straight_belt_down_left = try load_spline(straight_belt_left_spline_path);
    const curved_belt_down_left = try load_spline(curved_belt_left_spline_path);
    const curved_belt_down_right = try load_spline(curved_belt_right_spline_path);

    // index by -> straight/curved -> direction -> out direction
    splines = .{
        // straight
        straight_belt_down_left,                                            // ^ |
        straight_belt_down_left.mirror_x(),                                 // | ^

        straight_belt_down_left.mirror_x().mirror_y(),                      // | V
        straight_belt_down_left.mirror_y(),                                 // V |
                                                        
        straight_belt_down_left.rotate_clockwise(),                         // >
                                                                            // -

        straight_belt_down_left.mirror_x().rotate_clockwise(),              // -
                                                                            // >


        straight_belt_down_left.rotate_counter_clockwise(),                 // -
                                                                            // <

        straight_belt_down_left.mirror_x().rotate_counter_clockwise(),      // <
                                                                            // -

        // curved
        curved_belt_down_left,                                              // > |
        curved_belt_down_right,                                             // | >

        curved_belt_down_left.mirror_x().mirror_y(),                        // | <
        curved_belt_down_right.mirror_x().mirror_y(),                       // < |
                                                        
        curved_belt_down_left.rotate_clockwise(),                           // V
                                                                            // -

        curved_belt_down_right.rotate_clockwise(),                          // -
                                                                            // V


        curved_belt_down_left.rotate_counter_clockwise(),                   // -
                                                                            // ^

        curved_belt_down_right.rotate_counter_clockwise(),                  // ^
                                                                            // -
  
        // curved but left this time
        curved_belt_down_right.mirror_x(),                                  // < |
        curved_belt_down_left.mirror_x(),                                   // | <

        curved_belt_down_right.mirror_y(),                                  // | >
        curved_belt_down_left.mirror_y(),                                   // > |
                                                        
        curved_belt_down_right.mirror_x().rotate_clockwise(),               // ^
                                                                            // -

        curved_belt_down_left.mirror_x().rotate_clockwise(),                // -
                                                                            // ^


        curved_belt_down_right.mirror_x().rotate_counter_clockwise(),       // -
                                                                            // V

        curved_belt_down_left.mirror_x().rotate_counter_clockwise(),        // V
                                                                            // -
    };

    Loaded.loaded = true;
}

fn init_raylib(title: [*c]const u8) void {
        raylib.InitWindow(default_screen_width, default_screen_height, title);
        raylib.SetTargetFPS(0);
}

/////////////////////////////////////////////////////////////////////////////////
///                         @main
/////////////////////////////////////////////////////////////////////////////////
pub fn main() !void {
    init_raylib("factory game");
    var game_arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer game_arena.deinit();
 
    const allocator = game_arena.allocator();

    try load_resources();
    
    // tile texture setup
    // item texture setup
    var state = try State.init(&game_arena, allocator);
    state.run();
}
