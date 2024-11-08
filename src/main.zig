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

const player_speed: f32 = 450;

const default_screen_width = 1400;
const default_screen_height = 1000;

const tile_width: i64 = 16;
const tile_height: i64 = 16;

const world_tile_width = 150;
const world_tile_height = 150;

const max_item_stack = 99;

const player_inventory_width = 9;
const player_inventory_height = 9;
const player_inventory_size = player_inventory_height * player_inventory_width;

const debug_networks = true;
var debug_memory_usage = false; // toggled with m

// images paths
//
// TILES
const grass_tile_image_path = "tiles/grass.png";
const stone_tile_image_path = "tiles/stone.png";
const iron_ore_tile_image_path = "tiles/iron_ore.png";
const miner_tile_image_path = "tiles/miner.png";
const coal_ore_tile_image_path = "tiles/coal_ore.png";
const furnace_tile_image_path = "tiles/furnace.png";
const tree_base_image_path = "tiles/tree_base.png";
const tree_0_image_path = "tiles/tree_0.png";
const extractor_image_path = "tiles/extractor.png";
const pipe_image_path = "tiles/pipe.png";
const pipe_left_image_path = "tiles/pipe_left.png";
const pipe_right_image_path = "tiles/pipe_right.png";
const pipe_merger_image_path = "tiles/pipe_merger.png";
const pole_image_path = "tiles/pole.png";
const battery_image_path = "tiles/battery.png";
const crusher_image_path = "tiles/crusher.png";

// ITEMS
const iron_item_image_path = "items/iron.png";
const item_slot_image_path = "items/item_slot.png";
const coal_item_image_path = "items/coal.png";
const iron_ingot_item_image_path = "items/iron_ingot.png";
const stone_item_image_path = "items/stone.png";
const wood_item_image_path = "items/wood.png";


// gloabal textures
//
// TILES
var grass_tile_texture: raylib.Texture = undefined;
var stone_tile_texture: raylib.Texture = undefined;
var iron_ore_tile_texture: raylib.Texture = undefined;
var miner_tile_texture: raylib.Texture = undefined;
var coal_ore_tile_texture: raylib.Texture = undefined;
var furnace_tile_texture: raylib.Texture = undefined;
var tree_base_tile_texture: raylib.Texture = undefined;
var tree_0_tile_texture: raylib.Texture = undefined;
var extractor_tile_texture: raylib.Texture = undefined;
var pipe_tile_texture: raylib.Texture = undefined;
var pipe_left_tile_texture: raylib.Texture = undefined;
var pipe_right_tile_texture: raylib.Texture = undefined;
var pipe_merger_tile_texture: raylib.Texture = undefined;
var pole_tile_texture: raylib.Texture = undefined;
var battery_tile_texture: raylib.Texture = undefined;
var crusher_tile_texture: raylib.Texture = undefined;

// ITEMS
var iron_item_texture: raylib.Texture = undefined;
var item_slot_texture: raylib.Texture = undefined;
var coal_item_texture: raylib.Texture = undefined;
var iron_ingot_item_texture: raylib.Texture = undefined;
var stone_item_texture: raylib.Texture = undefined;
var wood_item_texture: raylib.Texture = undefined;

const CraftingRecipe = struct {
    const RecipeItem = struct {item: Item, count: usize};

    output: RecipeItem,
    inputs: [2]RecipeItem,
    input_count: usize,

    fn empty_item() RecipeItem {
        return .{.item = .stone, .count = 0};
    }
};

const crafting_recipes = [_]CraftingRecipe {
    // furnace
    .{
        .output = .{.item = .furnace, .count = 1},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .stone, .count = 5},
            CraftingRecipe.empty_item(),
        },
        .input_count = 1,
    },
    // miner
    .{
        .output = .{.item = .miner, .count = 1},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .iron_ingot, .count = 5},
            .{.item = .stone, .count = 5},
        },
        .input_count = 2,
    }
};

const ore_table = [_]struct {
    tile: Tile,
    threshold: f32,
    frequency: f32
} {
    .{
        .tile = .stone,
        .threshold = 0.3,
        .frequency = 0.13
    },
    .{
        .tile = .iron_ore,
        .threshold = 0.15,
        .frequency = 0.1
    },
    .{
        .tile = .coal_ore,
        .threshold = 0.15,
        .frequency = 0.12
    },
};

fn window_width() f32 {
    return @as(f32, @floatFromInt(raylib.GetScreenWidth()));
}

fn window_height() f32 {
    return @as(f32, @floatFromInt(raylib.GetScreenHeight()));
}

/////////////////////////////////////////////////////////////////////////////////
///                         @render
////////////////////////////////////////////////////////////////////////////////
fn draw_rectangle(x: f32, y: f32, width: f32, height: f32, color: raylib.Color) void {
    raylib.DrawRectangle(
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intFromFloat(width)), 
        @as(c_int, @intFromFloat(height)), 
        color
    );
}

fn draw_rectangle_gradient_vertical(x: f32, y: f32, width: f32, height: f32, start_color: raylib.Color, end_color: raylib.Color) void {
    raylib.DrawRectangleGradientV(
        @as(c_int, @intFromFloat(x)), 
        @as(c_int, @intFromFloat(y)), 
        @as(c_int, @intFromFloat(width)), 
        @as(c_int, @intFromFloat(height)), 
        start_color,
        end_color
    );
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

inline fn draw_texture(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32) void {
    draw_texture_tint(texture, x, y, width, height, raylib.WHITE);
}

inline fn draw_texture_tint(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32, tint: raylib.Color) void {
    draw_texture_pro(texture, x, y, width, height, 0, tint, false);
}

fn draw_texture_pro(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32, rotation: f32, tint: raylib.Color, centred: bool) void {
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

fn draw_inventory_slot(inventory_slot: *const InventorySlot, x: f32, y: f32, size: f32, tint: raylib.Color, allocator: std.mem.Allocator) void {
    draw_texture_tint(item_slot_texture, x, y, size, size, tint);

    if(inventory_slot.item_type) |item| {                     
        const item_texture = item.get_texture();
        draw_texture(item_texture, x, y, size, size);

        const string = std.fmt.allocPrintZ(allocator, "{}", .{inventory_slot.count}) catch unreachable;
        draw_text(string, x, y, 20, raylib.WHITE);
    }
}

fn draw_crafting_recipe_output(recipe: *const CraftingRecipe, x: f32, y: f32, size: f32, tint: raylib.Color) void {
    const item_texture = recipe.output.item.get_texture();

    draw_texture_tint(item_slot_texture, x, y, size, size, tint);
    draw_texture(item_texture, x, y, size, size);
}

fn draw_crafting_recipe_input(recipe: *const CraftingRecipe, x: f32, y: f32, size: f32) void {
    const padding = 5;

    for(0..recipe.input_count) |_i| {
        const i = @as(f32, @floatFromInt(_i));
        const input = &recipe.inputs[_i];
        const item_texture = input.item.get_texture();
        const input_x = x + (size * i) + (padding * i);

        draw_texture_tint(item_slot_texture, input_x, y, size, size, raylib.BLUE);
        draw_texture(item_texture, input_x, y, size, size);

        var text_buffer = std.mem.zeroes([2]u8); 
        const string = std.fmt.bufPrint(text_buffer[0..], "{}", .{input.count}) catch unreachable;
        draw_text(string, input_x, y, 20, raylib.WHITE);

    }
}

fn draw_progress_bar_vertical(x: f32, y: f32, width: f32, max_height: f32, start_color: raylib.Color, end_color: raylib.Color, value: i64, max_value: i64) void {
    const progress =  @as(f32, @floatFromInt(value)) / @as(f32, @floatFromInt(max_value));
    const progress_bar_end_y = y + max_height;
    const progress_bar_start_y = progress_bar_end_y - (progress * max_height);
    const progress_bar_height = progress_bar_end_y - progress_bar_start_y;

    draw_rectangle_gradient_vertical(x, progress_bar_start_y, width, progress_bar_height, end_color, start_color);
}

const TilePosition = struct {
    const Self = @This();
    x: usize, 
    y: usize,

    fn to_world_position(self: *const Self) WorldPosition {
        return .{
            .x = @as(f32, @floatFromInt(self.x * tile_width)),
            .y = @as(f32, @floatFromInt(self.y * tile_height)),
        };
    }

    fn get_adjacent_tile_at_direction(self: *const Self, direction: Direction) TilePosition {
        var position = self.*;

        switch (direction) {
            .up => {
                position.y -= 1;
            },
            .down => {
                position.y += 1;
            },
            .left => {
                position.x -= 1;
            },
            .right => {
                position.x += 1;
            }
        }

        return position;
    }

    fn get_tile_index(self: *const Self) usize {
        return @as(usize, @intCast((self.y * world_tile_width) + self.x));
    }

    fn is_valid(self: *const Self) bool {
        if(self.x > world_tile_width) return false;
        if(self.y > world_tile_height) return false;

        return true;
    }
};

const WorldPosition = struct {
    const Self = @This();
    x: f32, 
    y: f32,

    fn to_tile_position(self: *const Self) TilePosition {
        // used for debuging should be removed at some point
        if(!self.in_world_bounds()) {
            std.debug.panic("trying to get world pos when out of bounds: {d} {d}\n", .{self.x, self.y}) ;
        }

        const x = @divFloor(@as(usize, @intFromFloat(self.x)), tile_width);
        const y = @divFloor(@as(usize, @intFromFloat(self.y)), tile_height);
    
        return .{.x = x, .y = y};
    }

    fn in_world_bounds(self: *const Self) bool {
        if(self.x < 0 or self.x > (world_tile_width * tile_width)) return false;
        if(self.y < 0 or self.y > (world_tile_height * tile_height)) return false;

        return true;
    }
};

const Direction = enum(u8){
    const Self = @This();

    up,
    down,
    left,
    right,

    fn next(self: *Self) void {
        self.* = switch (self.*) {
            .up => .right,
            .right => .down,
            .down => .left,
            .left => .up
        };
    }

    fn get_rotation(self: Self) f32 {
        return switch (self) {
            .up => 180,
            .right => 270,
            .down => 0,
            .left => 90
        };
    }

    fn oppisite(self: Self) Direction {
        return switch (self) {
            .up => .down,
            .right => .left,
            .down => .up,
            .left => .right
        };
    }

    fn clockwise(self: Self) Direction {
        return switch (self) {
            .up => .right,
            .right => .down,
            .down => .left,
            .left => .up
        };
    }

    fn counter_clockwise(self: Self) Direction {
        return switch (self) {
            .up => .left,
            .right => .up,
            .down => .right,
            .left => .down
        };
    }

    fn relative(self: Self, relative_direction: Direction) Direction {
        return switch (relative_direction) {
            .up => self.oppisite(),
            .right => self.counter_clockwise(),
            .down => self,
            .left => self.clockwise()
        };
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @networks
/////////////////////////////////////////////////////////////////////////////////
const Network = struct {
    const Self = @This();

    var network_id_counter: usize = 0;

    network_id: usize,
    available_power: usize,
    nodes: std.ArrayList(usize),

    fn init(allocator: std.mem.Allocator) Self {
        return Self {
            .network_id = Self.new_id(),
            .available_power = 0,
            .nodes = std.ArrayList(usize).init(allocator),
        };
    }

    fn new_id() usize {
        network_id_counter += 1;
        return network_id_counter;
    }

    fn add_node(self: *Self, node: *const NetworkNode) void {
        self.nodes.append(node.tile_index) catch {
            std.debug.panic("out of memory when add new node to network\n", .{});
        };
    }

    fn remove_node(self: *Self, node: *const NetworkNode) void {
        for(self.nodes.items, 0..) |node_index, i| {
            if(node_index == node.tile_index) {
                _ = self.nodes.swapRemove(i);
                break;
            }
        }
    }

    fn consume_power(self: *Self, power: usize) bool {
        if(power > self.available_power) return false;

        self.available_power -= power;
        return true;
    }
};

const NetworkNode = struct {
    const Self = @This();
    const max_neighbour_count = 5;

    tile_index: usize,
    network_id: usize,
    neighbour_tile_indices: std.BoundedArray(usize, 5),

    fn init(tile_index: usize, network_id: usize) Self {
        return Self {
            .tile_index = tile_index,
            .network_id = network_id,
            .neighbour_tile_indices = std.BoundedArray(usize, 5).init(0) catch unreachable, // unreachable because we will never pass len > capacity here
        };
    }

    fn add_neighbour(self: *Self, neighbour_tile_index: usize) void {
        const n_ptr = self.neighbour_tile_indices.addOne() catch unreachable;
        n_ptr.* = neighbour_tile_index;
    }

    fn remove_neighbour(self: *Self, neighbour_tile_index: usize) void {
        for(self.neighbour_tile_indices.slice(), 0..) |neighbour, i| {
           if(neighbour == neighbour_tile_index) {
               _ = self.neighbour_tile_indices.swapRemove(i);
                return;
           }
        }
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @tiles
///                         @tile data
///                         @items
////////////////////////////////////////////////////////////////////////////////
const ForgroundTile = struct {
    tile: Tile, direction: Direction
};

const Tile = enum(u8) {
    const Self = @This();

    const miner_max_progress    = 10 * 3;
    const furnace_max_progress  = 10 * 3;
    const crusher_max_progress  = 10 * 2;
    const pipe_max_progress     = 30 * 1;

    const pipe_to_slot_count_cutoff = 5;

    air,
    grass,
    stone,
    iron_ore,
    miner,
    coal_ore,
    furnace,
    tree_base,
    tree_0,
    pipe,
    pipe_merger,
    extractor,
    pole,
    battery,
    crusher,

    fn is_network_node(self: *const Self) bool {
        return switch (self.*) {
            .pole, .battery, .crusher => true,
            else => false,
        };
    }

    fn is_network_node_connector(self: *const Self) bool {
        return switch (self.*) {
            .pole, => true,
            else => false,
        };
    }

    fn is_network_generator(self: *const Self) bool {
        return switch (self.*) {
            .battery=> true,
            else => false,
        };
    }

    fn has_clickable_ui(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .crusher => true,
            else => false,
        };
    }

    fn extractor_can_take(self: *const Self) bool {
        return switch (self.*) {
            .miner, .pipe => true,
            else => false,
        };
    }

    fn pipe_can_give(self: *const Self) bool {
        return switch (self.*) {
            .furnace, .pipe, .pipe_merger => true,
            else => false,
        };
    }

    fn is_tree_tile(self: *const Self) bool {
        return switch (self.*) {
             .tree_base, .tree_0 => true,
             else => false,
        };
    }

    fn has_direction(self: *const Self) bool {
        return switch (self.*) {
            .miner, .pipe, .pipe_merger, .extractor => true,
            else => false,
        };
    }

    // can this tile be mined by a machine
    // different to if a player can break it
    fn can_be_mined(self: *const Self) bool {
        return switch (self.*) {
            .iron_ore, .coal_ore, .stone => true,
            else => false,
        };
    }

    // item when this tile is mined by a machine
    // different to when a player breaks it
    fn item_when_mined(self: *const Self) ?Item {
        return switch (self.*) {
            .iron_ore => .iron,
            .coal_ore, => .coal,
            .stone => .stone,
            else => null
        };
    }

    // item when this tile is broken by a player
    fn item_when_broken(self: *const Self) ?Item {
        return switch (self.*) {
            .miner => .miner,
            .furnace => .furnace,
            .tree_base, .tree_0 => .wood,
            .pipe => .pipe,
            .extractor => .extractor,
            .pole => .pole,
            .battery => .battery,
            .crusher => .crusher,
            else => null,
        };
    }

    fn get_texture(self: *const Self, tile_index: usize, game: *const Game) raylib.Texture {
        return switch (self.*) {
            .pipe => {
                const pipe = &game.get_tile_data(tile_index).data.pipe;
                return switch (pipe.relative_output_direction) {
                    .up => pipe_tile_texture,
                    .left => pipe_left_tile_texture,
                    .right => pipe_right_tile_texture,
                    .down => unreachable
                };
            },
            else => self.get_default_texture()
        };
    }

    fn get_default_texture(self: *const Self) raylib.Texture {
        return switch (self.*) {
            .air => std.debug.panic("tried to get texture of air...\n", .{}),
            .grass => grass_tile_texture,
            .stone => stone_tile_texture,
            .iron_ore => iron_ore_tile_texture,
            .miner => miner_tile_texture,
            .coal_ore => coal_ore_tile_texture,
            .furnace => furnace_tile_texture,
            .tree_base => tree_base_tile_texture,
            .tree_0 => tree_0_tile_texture,
            .pipe => pipe_tile_texture,
            .pipe_merger => pipe_merger_tile_texture,
            .extractor => extractor_tile_texture,
            .pole => pole_tile_texture,
            .battery => battery_tile_texture,
            .crusher => crusher_tile_texture,
        };
    }

    fn has_tile_data(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .pipe, .pipe_merger, .extractor, .crusher => true,
            else => false,
        };
    }

    // when a tile is place or updated can it
    // tuen to this tile to give items
    fn can_pipe_turn_to(self: Self, from_index: usize, tile_index: usize, game: *const Game) bool {
        switch (self) {
            .furnace => return true,
            .pipe => {
                const current_position = get_tile_position_from_tile_index(tile_index);
                if(!current_position.is_valid()) {
                    return false;
                }

                const current_direction = game.forground_tiles[tile_index].direction;
                const input_position = current_position.get_adjacent_tile_at_direction(current_direction);
                if(!input_position.is_valid()) {
                    return false;
                }

                return from_index == input_position.get_tile_index();
            },
            .pipe_merger => {
                const current_position = get_tile_position_from_tile_index(tile_index);
                if(!current_position.is_valid()) {
                    return false;
                }

                const current_direction = game.forground_tiles[tile_index].direction;

                const input_positions = [_]TilePosition{
                    current_position.get_adjacent_tile_at_direction(current_direction),
                    current_position.get_adjacent_tile_at_direction(current_direction.counter_clockwise())
                };

                for(&input_positions) |input_position| {
                    if(!input_position.is_valid()) {
                        continue;
                    }

                    if(from_index == input_position.get_tile_index()) {
                        return true;
                    }
                }

                return false;
            },
            else => return false,
        }
    }

    // update called when the player removes this tile,
    // after this is called the tile data is removed
    // so no need to cleanup anything
    fn removed_update(self: Self, tile_index: usize, tile_data: ?*TileData, game: *Game) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                game.player.add_stack_from_inventory_slot_to_inventory(&miner.input);
                game.player.add_stack_from_inventory_slot_to_inventory(&miner.output);
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                game.player.add_stack_from_inventory_slot_to_inventory(&furnace.fuel_input);
                game.player.add_stack_from_inventory_slot_to_inventory(&furnace.ingredient_input);
                game.player.add_stack_from_inventory_slot_to_inventory(&furnace.output);
            },
            .tree_base, .tree_0 => {
                const current_tile_position = get_tile_position_from_tile_index(tile_index);
                if(current_tile_position.y == 0) {
                    return;
                }

                const above_tile_position = TilePosition{.x = current_tile_position.x, .y = current_tile_position.y - 1};
                if(!above_tile_position.is_valid()) {
                    return;
                }

                const above_tile_index = above_tile_position.get_tile_index();

                if(game.forground_tiles[above_tile_index].tile.is_tree_tile()) {
                    const removed_tile = game.remove_tile_in_foreground(above_tile_index);
                    const item = removed_tile.?.item_when_broken();
                    _ = game.player.add_item_to_inventory(item.?, 1);
                }

            },
            else => {},
        }
    }

    fn tile_update(self: Self, tile_index: usize, tile_data: ?*TileData, game: *Game) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                miner.valid_placement = game.background_tiles[tile_index].can_be_mined();
            },
            .pipe => {
                const pipe = &tile_data.?.data.pipe;
                
                const position = get_tile_position_from_tile_index(tile_index);
                const current_direction = game.forground_tiles[tile_index].direction;

                const targets = [_]struct {position: TilePosition, relative_direction: Direction} {
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.relative(pipe.relative_output_direction)), .relative_direction = pipe.relative_output_direction},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.oppisite()), .relative_direction = .up},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.clockwise()), .relative_direction = .left},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.counter_clockwise()), .relative_direction = .right}
                };

                for(&targets) |*target| {
                    if(!target.position.is_valid()) {
                        continue;
                    }

                    const target_index = target.position.get_tile_index();
                    const target_tile = game.forground_tiles[target_index];

                    if(target_tile.tile.can_pipe_turn_to(tile_index, target_index, game)) {
                        pipe.relative_output_direction = target.relative_direction;
                        return;
                    }
                }
            },
            else => {}
        }
    }


    // update called every tick
    fn tick_update(self: Self, tile_index: usize, tile_data: ?*TileData, game: *Game) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                if(!miner.valid_placement) return;

                { // mining logic
                    if(miner.fuel_buffer == 0) {
                        miner.fuel_item_in_use = null;
                        miner.progress = 0;
                    }
    
                    if(miner.fuel_buffer == 0 and !miner.input.is_empty()) {
                        miner.fuel_buffer = miner.input.item_type.?.fuel_smelt_count().? * Tile.miner_max_progress;
                        miner.fuel_item_in_use = miner.input.item_type;
                        _ = miner.input.take_amount(1);
                    }
    
                    if(miner.fuel_buffer > 0) {
                        miner.progress += 1;
                        miner.fuel_buffer -= 1;
                        if(miner.progress >= Tile.miner_max_progress) {
                            miner.progress = 0;
    
                            const tile = game.background_tiles[tile_index];
                            const item = tile.item_when_mined() orelse unreachable; // if this failed there was a logic error before
                            miner.output.item_type = item;
                            miner.output.count += 1;
                        }
                    }
                }
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                if(furnace.ingredient_input.is_empty()) return;
                if(furnace.output.item_type != null and furnace.ingredient_input.item_type.?.item_when_smelted() != furnace.output.item_type) return;

                if(furnace.fuel_buffer == 0) {
                    furnace.fuel_item_in_use = null;
                    furnace.progress = 0;
                }

                if(furnace.fuel_buffer == 0 and !furnace.fuel_input.is_empty()) {
                    furnace.fuel_buffer += furnace.fuel_input.item_type.?.fuel_smelt_count().? * Tile.furnace_max_progress;
                    furnace.fuel_item_in_use = furnace.fuel_input.item_type;
                    _ = furnace.fuel_input.take_amount(1);
                }

                if(furnace.fuel_buffer > 0) {
                    furnace.progress += 1;
                    furnace.fuel_buffer -= 1;
                    if(furnace.progress >= Tile.furnace_max_progress) {
                        furnace.progress = 0;

                        const output_item = furnace.ingredient_input.item_type.?.item_when_smelted();
                        furnace.output.item_type = output_item;
                        furnace.output.count += 1;

                        _ = furnace.ingredient_input.take_amount(1);
                    }
                }
            },
            .pipe, .pipe_merger => {
                const pipe = &tile_data.?.data.pipe;

                { // progress items in the pipe
                    for(&pipe.storage) |*slot| {
                        if(slot.item != null and slot.progress < pipe_max_progress) {
                            slot.progress += 1;
                        }
                    }
                }

                // check to output items
                check_output: {
                    const current_position = get_tile_position_from_tile_index(tile_index);
                    const output_direction = game.forground_tiles[tile_index].direction.relative(pipe.relative_output_direction);
                    const output_position = current_position.get_adjacent_tile_at_direction(output_direction);
                    if(!output_position.is_valid()) {
                        break :check_output;
                    }

                    const output_index = output_position.get_tile_index();
                    const output_tile = game.forground_tiles[output_index].tile;
                    
                    if(!output_tile.pipe_can_give()) {
                        break :check_output;
                    }

                    var output_tile_data: ?*TileData = null;  
                    if(output_tile.has_tile_data()) {
                        output_tile_data = game.get_tile_data(output_index);
                    }

                    for(&pipe.storage) |*slot| {
                        if(slot.progress >= Tile.pipe_max_progress) {
                            if(output_tile.pipe_give(slot.item.?, tile_index, output_index, output_tile_data, game)) {
                                slot.item = null;
                                slot.progress = 0;
                            }        
                        }
                    }
                }
            },
            .extractor => {
                const extractor = &tile_data.?.data.extractor;

                const current_position = get_tile_position_from_tile_index(tile_index);
                if(!current_position.is_valid()) {
                    return;
                }

                const input_direction = game.forground_tiles[tile_index].direction;
                const output_direction = input_direction.oppisite();

                // check to take item
                check_input: {
                    if(extractor.item != null) {
                        break :check_input;
                    }

                    const input_position = current_position.get_adjacent_tile_at_direction(input_direction);
                    if(!input_position.is_valid()) {
                        break :check_input;
                    }

                    const input_index = input_position.get_tile_index();
                    const input_tile = game.forground_tiles[input_index].tile;
                    
                    if(!input_tile.extractor_can_take()) {
                        break :check_input;
                    }

                    var input_tile_data: ?*TileData = null;  
                    if(input_tile.has_tile_data()) {
                        input_tile_data = game.get_tile_data(input_index);
                    }

                    const input_item = input_tile.extractor_take(input_index, input_tile_data, game);
                    extractor.item = input_item;
                }

                // check to output item
                check_output: {
                    if(extractor.item == null) {
                        break :check_output;
                    }

                    const output_position = current_position.get_adjacent_tile_at_direction(output_direction);
                    if(!output_position.is_valid()) {
                        break :check_output;
                    }

                    const output_index = output_position.get_tile_index();
                    const output_tile = game.forground_tiles[output_index].tile;
                    
                    if(!output_tile.pipe_can_give()) {
                        break :check_output;
                    }

                    var output_tile_data: ?*TileData = null;  
                    if(output_tile.has_tile_data()) {
                        output_tile_data = game.get_tile_data(output_index);
                    }

                    if(output_tile.pipe_give(extractor.item.?, tile_index, output_index, output_tile_data, game)) {
                        extractor.item = null;
                    }
                }
            },
            .crusher => {
                var crusher = &tile_data.?.data.crusher;
                const node = game.get_network_node(tile_index);
                var network = game.get_network(node.network_id);


                { // mining logic
                    if(crusher.input.is_empty() or !network.consume_power(20)) {
                        crusher.progress = 0;
                        return;
                    }
    
                        crusher.progress += 1;
                        if(crusher.progress >= Tile.crusher_max_progress) {
                            crusher.progress = 0;
    
                            const item = crusher.input.item_type.?.item_when_crushed() orelse unreachable;
                            crusher.output.item_type = item;
                            crusher.output.count += 1;

                            _ = crusher.input.take_amount(1);
                        }
                    }
            },
            else => {},
        }
    }

    // called before the regular tick update, returns the amount of power that this tile
    // is generating for the current tick (just after this one)
    fn tick_network_generator_amount(self: Self, game: *const Game) usize {
        _ = game; // autofix
        return switch (self) {
            .battery => 100,
            else => std.debug.panic("tried to get power generator amount from a non-generator\n", .{})
        };
    }


    fn extractor_take(self: Self, tile_index: usize, tile_data: ?*TileData, game: *const Game) ?Item {
        _ = tile_index; // autofix
        _ = game; // autofix
        switch (self) {
            .miner => {
                const miner = &tile_data.?.data.miner;

                if(miner.output.is_empty()) {
                    return null;
                }

                const output_item = miner.output.item_type;
                _ = miner.output.take_amount(1);
                return output_item;
            },
            .pipe => {
                const pipe = &tile_data.?.data.pipe;

                var item: ?Item = null;
                
                for(&pipe.storage) |*slot| {
                    if(slot.item != null) {
                        item = slot.item;
                        slot.progress = 0;
                        slot.item = null;
                        return item;
                    }
                }

                return item;
            },
            else => {
                unreachable;
            }
        }
    }

    fn pipe_give(self: Self, item: Item, from_index: usize, tile_index: usize, tile_data: ?*TileData, game: *const Game) bool {
        switch (self) {
            .furnace => {
                const furnace = &tile_data.?.data.furnace;
                
                var target_slot: *InventorySlot = undefined;
                if(item.can_be_fuel()) {
                    target_slot = &furnace.fuel_input;
                } else if(item.can_be_smelted()) {
                    target_slot = &furnace.ingredient_input;
                } else {
                    return false;
                }
                
                if(target_slot.is_full() or target_slot.count >= Tile.pipe_to_slot_count_cutoff) {
                    return false;
                }

                if(target_slot.item_type != null and target_slot.item_type != item) {
                    return false;
                }

                // set the item as it should be the same or null
                target_slot.item_type = item;
                target_slot.count += 1;
                return true;
            },
            .pipe => {
                const pipe = &tile_data.?.data.pipe;

                const current_position = get_tile_position_from_tile_index(tile_index);
                const from_position = get_tile_position_from_tile_index(from_index);
                const input_position = current_position.get_adjacent_tile_at_direction(game.forground_tiles[tile_index].direction);

                // if the position that our input is facing is not the same as where the pipe
                // that is trying to give us input is then do not accept
                if(input_position.x != from_position.x or input_position.y != from_position.y) return false;

                for(&pipe.storage) |*slot| {
                    if(slot.item == null) {
                        slot.item = item;
                        return true;
                    }
                }

                return false;
            },
            .pipe_merger => {
                const pipe = &tile_data.?.data.pipe;

                const current_position = get_tile_position_from_tile_index(tile_index);
                const current_direction = game.forground_tiles[tile_index].direction;

                const input_positions = [_]TilePosition{
                    current_position.get_adjacent_tile_at_direction(current_direction),
                    current_position.get_adjacent_tile_at_direction(current_direction.counter_clockwise())
                };

                direction_checking: {
                    // check each of the mergers input positions and compare them to
                    // position of the from_index
                    for(&input_positions) |*input_position| {
                        if(from_index == input_position.get_tile_index()) {
                            break :direction_checking;            
                        }
                    }

                    return false;
                }

                for(&pipe.storage) |*slot| {
                    if(slot.item == null) {
                        slot.item = item;
                        return true;
                    }
                }

                return false;
            },
            else => {
                unreachable;
            }
        }

    }

    fn get_default_tile_data(self: *const Self) TileData {
        return switch (self.*) {
            .miner => TileData{
                .tile_index = 0,
                .data = .{
                    .miner = .{
                        .input = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .output = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .fuel_item_in_use = null,
                        .progress = 0,
                        .valid_placement = false,
                        .fuel_buffer = 0,
                    }
                },
            },
            .furnace => TileData{
                .tile_index = 0,
                .data = .{
                    .furnace = .{
                        .fuel_input = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .ingredient_input = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .output = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .fuel_item_in_use = null,
                        .progress = 0,
                        .fuel_buffer = 0,
                    }
                },
            },
            .pipe, .pipe_merger => TileData{
                .tile_index = 0,
                .data = .{
                    .pipe = .{
                        .storage = std.mem.zeroes([5]PipeStorageSlot),
                        .relative_output_direction = .up,
                    },
                },
            },
            .extractor => TileData{
                .tile_index = 0,
                .data = .{
                    .extractor =.{
                        .item = null,
                    },
                },
            },
            .crusher => TileData{
                .tile_index = 0,
                .data = .{
                    .crusher =.{
                        .input = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .output = InventorySlot{
                            .item_type = null,
                            .count = 0,
                        },
                        .progress = 0,
                    },
                },
            },
            else => std.debug.panic("trying to get default tile data of a tile that has none: {}\n", .{self.*}),
        };
    }
};

const TileData = struct {
    const Self = @This();
 
    tile_index: usize,
    data: union(enum) {
        miner: struct{
            input: InventorySlot,
            output: InventorySlot,
            fuel_item_in_use: ?Item, // the item that is *currently* being used i.e. burned, this can be differnt to the input fueled
                                     // used by ui to track the current item being burned and display progress bar

            progress: i64,          // amount of ticks used for current item 
            fuel_buffer: i64,       // amount of ticks remaining until fuel is over
            valid_placement: bool,
        },
        furnace: struct{
            fuel_input: InventorySlot,
            ingredient_input: InventorySlot,
            output: InventorySlot,
            fuel_item_in_use: ?Item, // the item that is *currently* being used i.e. burned, this can be differnt to the input fueled
                                     // used by ui to track the current item being burned and display progress bar

            progress: i64,          // amount of ticks used for current item   
            fuel_buffer: i64,       // amount of ticks remaining until fuel is over
        },
        pipe: struct{
            storage: [5]PipeStorageSlot,
            relative_output_direction: Direction,

            fn get_empty_slot(self: *const @This()) ?usize {
                for(&self.storage, 0..) |*slot, i| {
                    if(slot.item == null) {
                        return i;
                    }
                }

                return null;
            }
        },
        extractor: struct {
            item: ?Item,
        },
        crusher: struct{
            input: InventorySlot,
            output: InventorySlot,
            progress: i64,
        },
    },
};

const Item = enum {
    const Self = @This();

    iron,
    miner,
    coal,
    furnace,
    iron_ingot,
    stone,
    wood,
    pipe,
    pipe_merger,
    extractor,
    pole,
    battery,
    crusher,

    fn can_be_fuel(self: *const Self) bool {
        return switch (self.*) {  
            .coal, .wood => true,
            else => false,
        };
    }

    fn fuel_smelt_count(self: *const Self) ?i64 {
        return switch (self.*) {  
            .coal => 10,
            .wood => 5,
            else => null,
        };
    }

    fn can_be_smelted(self: *const Self) bool {
        return switch (self.*) {  
            .iron => true,
            else => false,
        };
    }

    fn item_when_smelted(self: *const Self) ?Item {
        return switch (self.*) {  
            .iron => .iron_ingot,
            else => null,
        };
    }

    fn can_be_crushed(self: *const Self) bool {
        return switch (self.*) {  
            .iron => true,
            else => false,
        };
    }

    fn item_when_crushed(self: *const Self) ?Item {
        return switch (self.*) {  
            .iron => .coal,
            else => null,
        };
    }

    fn get_texture(self: *const Self) raylib.Texture {
        return switch (self.*) {  
            .iron => iron_item_texture,
            .miner => miner_tile_texture,
            .coal => coal_item_texture,
            .furnace => furnace_tile_texture,
            .iron_ingot => iron_ingot_item_texture,
            .stone => stone_item_texture,
            .wood => wood_item_texture,
            .pipe => pipe_tile_texture,
            .pipe_merger => pipe_merger_tile_texture,
            .extractor => extractor_tile_texture,
            .pole => pole_tile_texture,
            .battery => battery_tile_texture,
            .crusher => crusher_tile_texture,
        };
    }

    // used for associating an item to the tile that
    // is placed, while some tiles drop and item
    // that item cannot be used to place the tile
    // therefore you need to check with this
    fn tile_when_placed(self: *const Self) ?Tile {
        return switch (self.*) {
            .miner => .miner,
            .furnace => .furnace,
            .pipe => .pipe,
            .pipe_merger => .pipe_merger,
            .extractor => .extractor,
            .pole => .pole,
            .battery => .battery,
            .crusher => .crusher,
            else => null,
        };
    }

    fn can_be_placed(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .pipe, .pipe_merger, .extractor, .pole, .battery, .crusher => true,
            else => false,
        };
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @inventory
/////////////////////////////////////////////////////////////////////////////////
const InventorySlot = struct {
    const Self = @This();

    item_type: ?Item,
    count: usize,

    // takes the given amount from the slot
    // if there is not enough then the slot is
    // emptied, the actual amount removed is 
    // returned
    fn take_amount(self: *Self, count: usize) usize {
        const amount_taken = if(count > self.count) self.count else count;
        self.count -= amount_taken;

        if(self.count == 0) {
            self.item_type = null;
        }

        return amount_taken;
    }

    // moves all items to another slot
    // checks need to be done before this to
    // make sure no items or lost
    fn move_items_to(self: *Self, other: *Self) void {
        if(self.item_type == null) {
            return;
        }

        if(other.item_type != null and self.item_type != other.item_type) {
            return;
        }

        other.item_type = self.item_type;

        const max_to_add = max_item_stack - other.count;
        other.count += self.take_amount(max_to_add);
    }

    fn move_half_items_to(self: *Self, other: *Self) void {
        if(self.item_type == null) {
            return;
        }

        if(other.item_type != null and self.item_type != other.item_type) {
            return;
        }

        other.item_type = self.item_type;
        const half_current = self.count / 2;
        other.count += self.take_amount(half_current);
    }

    fn swap(self: *Self, other: *Self) void {
        const other_copy = other.*;

        other.item_type = self.item_type;
        other.count = self.count;

        self.item_type = other_copy.item_type;
        self.count = other_copy.count;
    }

    fn clear(self: *Self) usize {
        if(self.item_type == null) {
            return 0;
        }

        const current_count = self.count;
        self.item_type = null;
        self.count = 0;

        return current_count;
    }

    fn is_empty(self: *const Self) bool {
        return self.item_type == null;
    }

    fn is_full(self: *const Self) bool {
        return self.count == max_item_stack;
    }
};

const PipeStorageSlot = struct {
    item: ?Item,
    progress: i64
};

/////////////////////////////////////////////////////////////////////////////////
///                         @ui
/////////////////////////////////////////////////////////////////////////////////
const UIIInventorySlot = struct {
    const only_smeltable_flag: u8     = 0b00000001;
    const only_fuel_flag: u8          = 0b00000010;
    const only_take_flag: u8          = 0b00000100;
    const only_placeable_flag: u8     = 0b00001000;
    const only_crushable_flag: u8     = 0b00010000;

    const Self = @This();

    x: f32,
    y: f32,
    size: f32,
    flags: u8,

    fn draw(self: *const Self, inventory_slot: *const InventorySlot, tint: raylib.Color, allocator: std.mem.Allocator) void {
        draw_texture_tint(item_slot_texture, self.x, self.y, self.size, self.size, tint);

        if(inventory_slot.item_type) |item| {                     
            const item_texture = item.get_texture();
            draw_texture(item_texture, self.x, self.y, self.size, self.size);
            
            // max size is 99 so 2 bytes is fine here
            const string = std.fmt.allocPrintZ(allocator, "{}", .{inventory_slot.count}) catch unreachable;
            draw_text(string, self.x, self.y, 20, raylib.WHITE);
        }
    }

    fn mouse_over(self: *const Self, mouse_position: WorldPosition) bool {
        return mouse_position.x >= self.x and mouse_position.x <= (self.x + self.size) 
            and mouse_position.y >= self.y and mouse_position.y <= (self.y + self.size);
    }

    fn has_flag(self: *const Self, flag: u8) bool {
        return (self.flags & flag) == flag;
    }
};

const UIPanel = union(enum) {
    empty: struct {},
    miner_inventory: struct {
        tile_index: usize,
        input_slot: UIIInventorySlot,
        output_slot: UIIInventorySlot,
    },
    furnace_inventory: struct {
        tile_index: usize,
        input_fuel_slot: UIIInventorySlot,
        input_ingredient_slot: UIIInventorySlot,
        output_slot: UIIInventorySlot,
    },
    crusher_inventory: struct {
        tile_index: usize,
        input_slot: UIIInventorySlot,
        output_slot: UIIInventorySlot,
    },

    fn empty() UIPanel {
        return UIPanel{
            .empty = .{}
        };   
    }

    fn miner_inventory(tile_index: usize) UIPanel {
        const slot_size = 50;
        
        const input_slot_x = (window_width() * 0.5) + 100 - (slot_size * 0.5);
        const output_slot_x = (window_width() * 0.5) + 300 - (slot_size * 0.5);

        const slot_y = (window_height() * 0.5) - (slot_size * 0.5);

        return UIPanel{
            .miner_inventory = .{
                .tile_index = tile_index,
                .input_slot = .{
                    .x = input_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_fuel_flag,
                },
                .output_slot = .{
                    .x = output_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_take_flag
                }
            }
        };   
    }

    fn furnace_inventory(tile_index: usize) UIPanel {
        const slot_size = 50;
        
        const input_fuel_slot_x = (window_width() * 0.5) - 100 - (slot_size * 0.5);
        const input_ingredient_slot_x = (window_width() * 0.5) - (slot_size * 0.5);
        const output_slot_x = (window_width() * 0.5) + 100 - (slot_size * 0.5);

        const slot_y = (window_height() * 0.5) - (slot_size * 0.5);

        return UIPanel{
            .furnace_inventory =.{
                .tile_index = tile_index,
                .input_fuel_slot = .{
                    .x = input_fuel_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_fuel_flag,
                },
                .input_ingredient_slot =.{
                    .x = input_ingredient_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_smeltable_flag
                },
                .output_slot = .{
                    .x = output_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_take_flag
                }
            }
        };   
    }

    fn crusher_inventory(tile_index: usize) UIPanel {
        const slot_size = 50;
        
        const input_slot_x = (window_width() * 0.5) + 100 - (slot_size * 0.5);
        const output_slot_x = (window_width() * 0.5) + 300 - (slot_size * 0.5);

        const slot_y = (window_height() * 0.5) - (slot_size * 0.5);

        return UIPanel{
            .crusher_inventory = .{
                .tile_index = tile_index,
                .input_slot = .{
                    .x = input_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_crushable_flag,
                },
                .output_slot = .{
                    .x = output_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = UIIInventorySlot.only_take_flag
                }
            }
        };   
    }
};

const UI = struct {
    const Self = @This();

    in_hand: InventorySlot,
    player_panel: [player_inventory_size]UIIInventorySlot,
    current_open_panel: UIPanel, 

    fn init() Self {
        var ui: Self = undefined;

        ui.current_open_panel = UIPanel.empty();
        ui.in_hand = InventorySlot{
            .item_type = null,
            .count = 0
        };

        // player inventory panel init
        {
            const padding = 5;
            const slot_size = 50;
            const total_width = (player_inventory_width * slot_size) + ((player_inventory_width - 1) * padding);
            const total_height = (player_inventory_height * slot_size) + ((player_inventory_height - 1) * padding);

            const start_x = (window_width() * 0.5) - total_width - 20;
            const start_y = (window_height() * 0.5) - (total_height * 0.5);

            for(&ui.player_panel, 0..) |*ui_slot, _i| {
                const i = @as(f32, @floatFromInt(_i));

                const x_index = @mod(i, 9);
                const y_index = @divFloor(i, 9);

                ui_slot.x = start_x + (slot_size * x_index) + (padding * x_index);
                ui_slot.y = start_y + (slot_size * y_index) + (padding * y_index);
                ui_slot.size = slot_size;

                // slots 0..8 are only for placable items
                ui_slot.flags = if(_i < 9) UIIInventorySlot.only_placeable_flag else 0;
            }
        }

        return ui;
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @player
/////////////////////////////////////////////////////////////////////////////////
const Player = struct {
    const Self = @This();

    x: f32,
    y: f32,
    inventory:[player_inventory_size]InventorySlot,
    selected_item: usize,
    placement_dirction: Direction,

    fn can_craft_recipe(self: *const Self, recipe: *const CraftingRecipe) bool {
        for(&recipe.inputs) |*input| {
            var inputs_found: usize = 0;

            for(&self.inventory) |*slot| {
                if(slot.item_type == input.item)  {
                    inputs_found += slot.count;  
                }
            }

            if(inputs_found < input.count) return false;
        }

        return true;
    }

    fn craft_recipe(self: *Self, recipe: *const CraftingRecipe) void {
        input: 
        for(&recipe.inputs) |*input| {
            var inputs_found: usize = 0;

            for(&self.inventory) |*slot| {
                if(slot.item_type == input.item)  {
                    const amount_taken = slot.take_amount(input.count - inputs_found);
                    inputs_found += amount_taken;
                    if(inputs_found == input.count) {
                        continue :input;
                    }
                }
            }
        }

        _ = self.add_item_to_inventory(recipe.output.item, recipe.output.count);
    }

    // used to get the current item that is selected but
    // does not modify the inventory, should be used to
    // check the current state before trying to access
    // the inventory
    fn get_selected_item_type(self: *const Self) ?Item {
        const slot = &self.inventory[self.selected_item];
        return if (slot.count == 0) null else slot.item_type;
    }

    fn get_selected_inventory_slot(self: *Self) *InventorySlot {
        return &self.inventory[self.selected_item];
    }

    // removes one of the current selected item in the
    // inventory, if there is no items in the current slot
    // then null is returned
    fn try_pop_selected_item(self: *Self) ?Item {
        const slot = self.get_selected_inventory_slot();
        const item = slot.item_type;
        
        if(item == null) {
            return null;
        }

        slot.count -= 1;
        if(slot.count == 0) slot.item_type = null;

        return item;
    }

    // add what is possible to the inventory from a given slot
    // this may not change the inventory slot or it may clear 
    // it completely
    fn add_stack_from_inventory_slot_to_inventory(self: *Self, inventory_slot: *InventorySlot) void {
        if(inventory_slot.item_type == null) return;

        const remaining = self.add_item_to_inventory(inventory_slot.item_type.?, inventory_slot.count);
        inventory_slot.count = remaining;

        if(inventory_slot.count == 0) {
            inventory_slot.item_type = null;
        }
    }

    // add what is possible to the inventory slot from the
    // current selected item in the inventory, this may not
    // actually move the items or it may empty the selected
    // slot completly
    fn add_stack_from_selected_slot_to_inventory_slot(self: *Self, inventory_slot: *InventorySlot) void {
        const selected_item_type = self.get_selected_item_type() orelse return;
        
        if(inventory_slot.item_type != null and selected_item_type != inventory_slot.item_type) return;

        inventory_slot.item_type = selected_item_type;

        // 1. get space left in the target inventory slot
        // 2. take items from selected slot, with the max being the space left
        // 3 add the number of items taken to the inventory slot
        const space_remaining = max_item_stack - inventory_slot.count;
        const amount_taken = self.get_selected_inventory_slot().take_amount(space_remaining);
        inventory_slot.count += amount_taken;
    }

    fn add_item_to_inventory(self: *Self, item: Item, count: usize) usize {
        var remaining_count = count;

        // first check existing slots that have the same
        // item type to stack them first
        for(0..self.inventory.len) |i| {
            if(remaining_count <= 0) break;

            const slot = &self.inventory[i];
            if(slot.item_type != item) continue;
            
            const space_remaining = max_item_stack - slot.count;
            const amount_to_add = if(remaining_count > space_remaining) space_remaining else remaining_count;

            slot.count += amount_to_add;
            remaining_count -= amount_to_add;
        }

       
        for(0..self.inventory.len) |i| {
            if(remaining_count <= 0) break;
            
            const slot = &self.inventory[i];
            if(slot.item_type != null) continue;

            if(i < 9 and !item.can_be_placed()) continue;

            const amount_to_add = if (count > max_item_stack) max_item_stack else count;
            
            slot.item_type = item;
            slot.count += amount_to_add;
            remaining_count -= amount_to_add;
        }

        return remaining_count;
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @game
/////////////////////////////////////////////////////////////////////////////////
const Game = struct {
    const Self = @This();

    const Input = struct{
        w: bool,
        a: bool,
        s: bool,
        d: bool,
        r: bool,
        e: bool,
        m: bool,
        up_arrow: bool,
        down_arrow: bool,
        numbers: [9]bool, // we ignore 0
        scroll: f32,
        left_mouse: bool,
        right_mouse: bool,
        ctrl: bool,
        left_shift: bool,
    };

    seed: i32,
    player: Player,
    camera: raylib.Camera2D,
    input: Input,
    background_tiles: []Tile,
    forground_tiles: []ForgroundTile,
    tile_data: std.ArrayList(TileData),
    networks: std.ArrayList(Network),
    network_nodes: std.ArrayList(NetworkNode),
    world_gen_noise: fastnoise.Noise(f32),
    allocator: std.mem.Allocator,
    scratch_space: std.heap.FixedBufferAllocator,
    underlying_arena: *std.heap.ArenaAllocator,
    max_scratch_space_usage: usize,
    tick_timer: f32,
    ui_state: UI,

    // arena* is just used for getting memory usage,
    // use the allocator field for actual allocation
    fn init(arena: *std.heap.ArenaAllocator, allocator: std.mem.Allocator) !Game {
        const background_tiles = try allocator.alloc(Tile, world_tile_height * world_tile_width);
        const forground_tiles = try allocator.alloc(ForgroundTile, world_tile_height * world_tile_width);

        for(0..background_tiles.len) |i| {
            background_tiles[i] = .air;
            forground_tiles[i] = .{.tile = .air, .direction = .down};
        }

        var game = Game{
            .seed = 16,
            .player = Player{
                .x = @divFloor(world_tile_width * tile_width, 2),
                .y = @divFloor(world_tile_height * tile_height, 2),
                .inventory = std.mem.zeroes([player_inventory_size]InventorySlot),
                .selected_item = 0,
                .placement_dirction = .down,
            },
            .camera = .{
                .target = .{.x = 0, .y = 0}, // gets set to player x and y before first frame rendered
                .offset = .{.x = window_width() / 2, .y = window_height() / 2},
                .rotation = 0,
                .zoom = 2,
            },
            .input = std.mem.zeroes(Game.Input),
            .background_tiles = background_tiles,
            .forground_tiles = forground_tiles,
            .tile_data = std.ArrayList(TileData).init(allocator),
            .networks = std.ArrayList(Network).init(allocator),
            .network_nodes = std.ArrayList(NetworkNode).init(allocator),
            .world_gen_noise = fastnoise.Noise(f32) {
                .seed = 1337,
                .noise_type = .perlin,
                .frequency = 0.38717738,
                .gain = 0.01,
                .fractal_type = .fbm,
                .lacunarity = 0.40,
                .cellular_distance = .euclidean,
                .cellular_return = .distance2,
                .cellular_jitter_mod = 0.88,
                .octaves = 2
            },
            .allocator = allocator,
            .scratch_space = undefined,
            .underlying_arena = arena,
            .max_scratch_space_usage = 0,
            .tick_timer = 0,
            .ui_state = UI.init(),
        };

        // temp adding items to inventory 
        game.player.inventory[0] = .{ .item_type = .miner, .count = 99 };
        game.player.inventory[1] = .{ .item_type = .extractor, .count = 99 };
        game.player.inventory[2] = .{ .item_type = .pipe, .count = 99 };
        game.player.inventory[3] = .{ .item_type = .pipe_merger, .count = 99 };
        game.player.inventory[4] = .{ .item_type = .crusher, .count = 99 };
        game.player.inventory[6] = .{ .item_type = .furnace, .count = 99 };
        game.player.inventory[7] = .{ .item_type = .pole, .count = 99 };
        game.player.inventory[8] = .{ .item_type = .battery, .count = 99 };

        game.player.inventory[9] = .{ .item_type = .coal, .count = 99 };
        game.player.inventory[10] = .{ .item_type = .coal, .count = 99 };
        game.player.inventory[11] = .{ .item_type = .coal, .count = 99 };
        game.player.inventory[12] = .{ .item_type = .iron, .count = 99 };
        
        return game;
    }

    fn run(self: *Self) void {
        var scratch_space: []u8 = self.allocator.alloc(u8, 1024 * 10) catch |err| switch (err) {
            error.OutOfMemory => {
                std.debug.panic("out of memory when allocating scratch space :[\n", .{});
            }
        };

        self.scratch_space = std.heap.FixedBufferAllocator.init(scratch_space[0..]);

        while (!raylib.WindowShouldClose()) {
            self.get_input();
            self.update(raylib.GetFrameTime());
            self.draw();
           
            if(self.max_scratch_space_usage < self.scratch_space.end_index) {
                self.max_scratch_space_usage = self.scratch_space.end_index;
            }

            self.scratch_space.reset();
        }

        raylib.CloseWindow();
    }

    fn get_input(self: *Self) void {
        self.input.w = raylib.IsKeyDown(raylib.KEY_W);
        self.input.a = raylib.IsKeyDown(raylib.KEY_A);
        self.input.s = raylib.IsKeyDown(raylib.KEY_S);
        self.input.d = raylib.IsKeyDown(raylib.KEY_D);
        self.input.r = raylib.IsKeyPressed(raylib.KEY_R);
        self.input.e = raylib.IsKeyPressed(raylib.KEY_E);
        self.input.m = raylib.IsKeyPressed(raylib.KEY_M);
        self.input.up_arrow = raylib.IsKeyPressed(raylib.KEY_UP);
        self.input.down_arrow = raylib.IsKeyPressed(raylib.KEY_DOWN);
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
        self.input.ctrl = raylib.IsKeyDown(raylib.KEY_LEFT_CONTROL);
        self.input.left_shift = raylib.IsKeyDown(raylib.KEY_LEFT_SHIFT);
    }

    fn power_update(self: *Self) void {
        // reset power for this tick
        for(self.networks.items) |*network| {
            network.available_power = 0;
        }

        // add power to the network for this tick
        for(self.network_nodes.items) |*node| {
            const tile = self.forground_tiles[node.tile_index].tile;

            if(!tile.is_network_generator()) {
                continue;
            }

            var network = self.get_network(node.network_id);
            network.available_power += tile.tick_network_generator_amount(self);
        }
    }

    fn tick_update(self: *Self) void {
        for(self.tile_data.items) |*tile_data| {
            self.forground_tiles[tile_data.tile_index].tile.tick_update(tile_data.tile_index, tile_data, self);
        }
    }

    fn update(self: *Self, delta_time: f32) void {
        self.tick_timer += delta_time;
        if(self.tick_timer >= 0.1) {
            self.tick_timer = 0;
            self.power_update();
            self.tick_update();
        }

        // memory debug toggle
        if(self.input.m) {
            debug_memory_usage = !debug_memory_usage;
        }

        // player update
        if(self.input.w) {
            self.player.y -= player_speed * delta_time;
        }

        if(self.input.a) {
            self.player.x -= player_speed * delta_time;
        }

        if(self.input.s) {
            self.player.y += player_speed * delta_time;
        }

        if(self.input.d) {
            self.player.x += player_speed * delta_time;
        }

        if(self.input.r) {
            // only change direction if current slot is a tile
            // that can be placed and can be rotated
            const slot = self.player.get_selected_inventory_slot();
            if(slot.item_type) |item| {
                if(item.tile_when_placed()) |tile| {
                    if(tile.has_direction()) {
                        self.player.placement_dirction.next();
                    }
                }
            }
        }

        // inventory
        for(0..self.input.numbers.len) |i| {
            if(self.input.numbers[i]) {
                self.player.selected_item = i;
            }
        }

        if(self.input.scroll > 0 and self.player.selected_item > 0 and !self.input.left_shift) {
            self.player.selected_item -= 1;
            
        } else if(self.input.scroll < 0 and self.player.selected_item < self.player.inventory.len - 1 and !self.input.left_shift) {
            self.player.selected_item += 1;
        }

        // ui controls
        if(self.input.e) {
            self.close_inventory();
        }

        // camera update
        const zoom_amount = 0.2;
        if(self.input.up_arrow) {
            self.camera.zoom += self.camera.zoom * zoom_amount;
        }

        if(self.input.down_arrow or (self.input.left_shift and self.input.scroll < 0)) {
            self.camera.zoom -= self.camera.zoom * zoom_amount;
            if(self.camera.zoom <= 0.4) self.camera.zoom = 0.4;
        }

        self.camera.target.x = self.player.x;
        self.camera.target.y = self.player.y; 

        mouse_update: {
            if(self.is_viewing_inventory()) {
                break :mouse_update;
            }

            const mouse_position = self.get_mouse_world_position();
            
            if(!mouse_position.in_world_bounds()) {
                break :mouse_update;
            }

            const tile_coords = mouse_position.to_tile_position();
            const tile_index = tile_coords.get_tile_index();

            if(self.input.right_mouse) {
                if(self.forground_tiles[tile_index].tile != .air) {
                    self.open_inventory(tile_index);
                    break :mouse_update;
                }

                const current_selected_item = self.player.get_selected_item_type();
                if(current_selected_item != null) {
                    const items_tile = current_selected_item.?.tile_when_placed();
                    if(items_tile) |value| {
                        // only pop the item from the inventory when it has an
                        // associated tile type to place
                        if(self.place_tile_in_foreground(tile_index, value)) {
                            _ = self.player.try_pop_selected_item();
                        }
                    }
                }
            }
    
            if(self.input.left_mouse) {
                const removed_tile = self.remove_tile_in_foreground(tile_index);
    
                if(removed_tile) |value| {
                    if(value.item_when_broken()) |item| {
                        // right now if the player has no space in the inventory
                        // we just ignore it and the item vanishes of course
                        // this is not ideal
                        _ = self.player.add_item_to_inventory(item, 1);
                    }
                }
            }
        }

        // interactive panels and inventory update
        panels: {
            const mouse_position = get_mouse_screen_position(); 
            
            // current inventory slot the player is hovering over
            // and the associated tile data inventory slot
            var target_slots: ?struct {ui_slot: *UIIInventorySlot, slot: *InventorySlot} = null;

            find_target_slot: {
                for(&self.ui_state.player_panel, 0..) |*ui_slot, i| {
                    if(ui_slot.mouse_over(mouse_position)) {
                        const player_inventory_slot = &self.player.inventory[i];
                        target_slots = .{
                            .ui_slot = &self.ui_state.player_panel[i],
                            .slot = player_inventory_slot
                        };

                        break :find_target_slot;
                    }             
                }

                switch (self.ui_state.current_open_panel) {
                    .empty => break :panels,
                    .miner_inventory => |*miner_inventory| {
                        if(self.forground_tiles[miner_inventory.tile_index].tile != .miner) {
                            self.close_inventory();
                            break :panels;
                        }

                        const miner_tile_data = self.get_tile_data(miner_inventory.tile_index);

                        if(miner_inventory.input_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &miner_inventory.input_slot,
                                .slot = &miner_tile_data.data.miner.input
                            };

                            break :find_target_slot;
                        }
    
                        if(miner_inventory.output_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &miner_inventory.output_slot,
                                .slot = &miner_tile_data.data.miner.output
                            };
                            
                            break :find_target_slot;
                        }
                    },
                    .furnace_inventory => |*furnace_inventory| {
                        if(self.forground_tiles[furnace_inventory.tile_index].tile != .furnace) {
                            self.close_inventory();
                            break :panels;
                        }

                        const furnace_tile_data = self.get_tile_data(furnace_inventory.tile_index);

                        if(furnace_inventory.input_fuel_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &furnace_inventory.input_fuel_slot,
                                .slot = &furnace_tile_data.data.furnace.fuel_input
                            };

                            break :find_target_slot;
                        }

                        if(furnace_inventory.input_ingredient_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &furnace_inventory.input_ingredient_slot,
                                .slot = &furnace_tile_data.data.furnace.ingredient_input
                            };

                            break :find_target_slot;
                        }
    
                        if(furnace_inventory.output_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &furnace_inventory.output_slot,
                                .slot = &furnace_tile_data.data.furnace.output
                            };
                            
                            break :find_target_slot;
                        }
                    },
                    .crusher_inventory => |*crusher_inventory| {
                        if(self.forground_tiles[crusher_inventory.tile_index].tile != .crusher) {
                            self.close_inventory();
                            break :panels;
                        }

                        const crusher_tile_data = self.get_tile_data(crusher_inventory.tile_index);

                        if(crusher_inventory.input_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &crusher_inventory.input_slot,
                                .slot = &crusher_tile_data.data.crusher.input
                            };

                            break :find_target_slot;
                        }
    
                        if(crusher_inventory.output_slot.mouse_over(mouse_position)) {
                            target_slots = .{
                                .ui_slot = &crusher_inventory.output_slot,
                                .slot = &crusher_tile_data.data.crusher.output
                            };
                            
                            break :find_target_slot;
                        }
                    },
                }
            } 

            if(target_slots == null) break :panels;

            mouse_interaction: {
                if(!(self.input.left_mouse or self.input.right_mouse)) {
                    break :mouse_interaction;
                }

                const in_hand = &self.ui_state.in_hand;
                const target_ui_slot = target_slots.?.ui_slot;
                const target_game_slot = target_slots.?.slot;

                if(in_hand.is_empty()) {
                    if(self.input.left_mouse) {
                        target_game_slot.move_items_to(in_hand);
                    } else if(self.input.right_mouse) {
                        target_game_slot.move_half_items_to(in_hand);
                    }

                } else {
                    if(target_ui_slot.has_flag(UIIInventorySlot.only_take_flag)) {
                        break :mouse_interaction;
                    }

                    if(target_ui_slot.has_flag(UIIInventorySlot.only_smeltable_flag) and !in_hand.item_type.?.can_be_smelted()) {
                        break :mouse_interaction;
                    }

                    if(target_ui_slot.has_flag(UIIInventorySlot.only_fuel_flag) and !in_hand.item_type.?.can_be_fuel()) {
                        break :mouse_interaction;
                    }

                    if(target_ui_slot.has_flag(UIIInventorySlot.only_placeable_flag) and !in_hand.item_type.?.can_be_placed()) {
                        break :mouse_interaction;
                    }

                    if(target_ui_slot.has_flag(UIIInventorySlot.only_crushable_flag) and !in_hand.item_type.?.can_be_crushed()) {
                        break :mouse_interaction;
                    }

                    if(self.input.left_mouse) {
                        if(!target_game_slot.is_empty()) {

                            if(target_game_slot.item_type == in_hand.item_type) {
                                in_hand.move_items_to(target_game_slot);
                            } else {
                                in_hand.swap(target_game_slot);
                            }
                        } else {
                            in_hand.move_items_to(target_game_slot);
                        }
                    } 
                }
            }
        }
    }

    fn draw(self: *Self) void {
        raylib.BeginDrawing();
        raylib.ClearBackground(raylib.PURPLE);
        raylib.BeginMode2D(self.camera);

        // background tiles
        for(0..self.background_tiles.len) |i| {
            const tile_coords = get_tile_position_from_tile_index(i);
            const world_position = tile_coords.to_world_position();

            const texture = self.background_tiles[i].get_default_texture();
            draw_texture(texture, world_position.x, world_position.y, tile_width, tile_height);
        }

        // foreground tiles
        for(0..self.forground_tiles.len) |i| {
            const tile_position = get_tile_position_from_tile_index(i);
            const world_position = tile_position.to_world_position();
            
            const forground_tile = self.forground_tiles[i];
            if(forground_tile.tile == .air) {
                continue;
            }

            const texture = forground_tile.tile.get_texture(i, self);
                
            // update draw location based on the rotation
            // this is because textures are drawn from the 
            // top left corner
            var rotated_position = world_position;
            if(forground_tile.tile.has_direction()) {
                rotated_position = move_draw_location_on_direction(world_position, forground_tile.direction);
            }

            special_pipe_render: {
                if(forground_tile.tile == .pipe) {
                    const icon_size = 12;
    
                    const pipe = &self.get_tile_data(i).data.pipe;
    
                    // only drawing items for straight pipes
                    if(pipe.relative_output_direction != .up) {
                        break :special_pipe_render;
                    }
    
                    // where is the position of the first item, this need to be done because the rotation
                    // of the belt also needs to be taken into account
                    const icon_start_position: WorldPosition = switch (forground_tile.direction) {
                        .up => .{.x = world_position.x + (tile_width / 2), .y = world_position.y},
                        .down => .{.x = world_position.x + (tile_width / 2), .y = world_position.y + tile_height},
                        .left => .{.x = world_position.x, .y = world_position.y + (tile_height / 2)},
                        .right => .{.x = world_position.x + tile_width, .y = world_position.y + (tile_height / 2)},
                    };

                    for(&pipe.storage) |*slot| {
                        if(slot.item == null) {
                            continue;
                        }
    
                        const offset_based_on_progress = (@as(f32, @floatFromInt(slot.progress)) / @as(f32, @floatFromInt(Tile.pipe_max_progress))) * tile_width;
    
                        const draw_position = switch (forground_tile.direction) {
                            .up => .{.x = icon_start_position.x, .y = icon_start_position.y + offset_based_on_progress},
                            .down => .{.x = icon_start_position.x, .y = icon_start_position.y - offset_based_on_progress},
                            .left => .{.x = icon_start_position.x + offset_based_on_progress, .y = icon_start_position.y},
                            .right => .{.x = icon_start_position.x - offset_based_on_progress, .y = icon_start_position.y},
                        };
    
                        const item_texture = slot.item.?.get_texture();
                        draw_texture_pro(item_texture, draw_position.x, draw_position.y, icon_size, icon_size, 0, raylib.WHITE, true);
                    }
                }
            }

            draw_texture_pro(texture, rotated_position.x, rotated_position.y, tile_width, tile_height, forground_tile.direction.get_rotation(), raylib.WHITE, false);

            if(debug_networks) {
                if(forground_tile.tile.is_network_node()) {
                    const node = self.get_network_node(i);
                    
                    const id_string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "{}", .{node.network_id}) catch unreachable;
                    draw_text(id_string, world_position.x, world_position.y, 10, raylib.GREEN);

                    const connections_string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "{}", .{node.neighbour_tile_indices.slice().len}) catch unreachable;
                    draw_text(connections_string, world_position.x, world_position.y + 10, 10, raylib.BLUE);
                }
            }
        }

        // network connections debug
        if(debug_networks) {
            for(self.network_nodes.items) |*node| {
                const node_world_position = get_tile_position_from_tile_index(node.tile_index).to_world_position();
                for(node.neighbour_tile_indices.slice()) |neighbour_tile_index| {
                    const neighbour_world_position = get_tile_position_from_tile_index(neighbour_tile_index).to_world_position();
                    draw_line(node_world_position.x, node_world_position.y, neighbour_world_position.x, neighbour_world_position.y, 1, raylib.RED);
                }
            }
        }

        // tile place preview
        tile_preview: {
            if(self.is_viewing_inventory()) {
                break :tile_preview;
            }

            const mouse_world_position = self.get_mouse_world_position();
            if(!mouse_world_position.in_world_bounds()) {
                break :tile_preview;
            }

            const tile_position = mouse_world_position.to_tile_position();
            const tile_index = tile_position.get_tile_index();

            if(self.forground_tiles[tile_index].tile != .air) {
                break :tile_preview;
            }
            
            var world_position = tile_position.to_world_position();

            const selected_slot = self.player.get_selected_inventory_slot();
            if(selected_slot.item_type) |item| {
                if(item.tile_when_placed()) |tile|  {
                    if(tile.has_direction()) {
                        world_position = move_draw_location_on_direction(world_position, self.player.placement_dirction);
                    }

                    const direction = if(tile.has_direction()) self.player.placement_dirction else .down;

                    draw_texture_pro(tile.get_default_texture(), world_position.x, world_position.y, tile_width, tile_height, direction.get_rotation(), raylib.Fade(raylib.WHITE, 0.6), false);
                }
            }
        }

        // end 2d mode so ui is not in world space
        raylib.EndMode2D();

        // ui panels and inventory drawing
        game_ui_drawing: {
            const mouse_screen_position = get_mouse_screen_position();

            // draw current open panel
            switch (self.ui_state.current_open_panel) {
                .empty => {
                    break :game_ui_drawing;
                },
                .miner_inventory => |*miner_ui| {
                    const background_height = 300;
                    const background_width = 400;

                    draw_texture_pro(item_slot_texture, window_width() * 0.5, (window_height() * 0.5) - (background_height * 0.5), background_width, background_height, 0, raylib.BLACK, false);
    
                    if(self.forground_tiles[miner_ui.tile_index].tile != .miner) {
                        self.close_inventory();
                        break :game_ui_drawing;
                    }
    
                    const miner = &self.get_tile_data(miner_ui.tile_index).data.miner;

                    const progress_bar_width = 5;
                    const fuel_progress_bar_x = miner_ui.input_slot.x - 10 - progress_bar_width;
                    const fuel_progress_bar_y = miner_ui.input_slot.y;

                    if(miner.fuel_item_in_use) |fuel_item| {
                        draw_progress_bar_vertical(fuel_progress_bar_x, fuel_progress_bar_y, 10, miner_ui.input_slot.size, raylib.RED, raylib.ORANGE, miner.fuel_buffer, fuel_item.fuel_smelt_count().? * Tile.miner_max_progress);
                    }

                    const output_progress_bar_x = miner_ui.output_slot.x - 10 - progress_bar_width;
                    const output_progress_bar_y = miner_ui.output_slot.y;
                    draw_progress_bar_vertical(output_progress_bar_x, output_progress_bar_y, 10, miner_ui.output_slot.size, raylib.BLUE, raylib.WHITE, miner.progress, Tile.miner_max_progress);
    
                    miner_ui.input_slot.draw(&miner.input, raylib.BLUE, self.scratch_space.allocator());
                    miner_ui.output_slot.draw(&miner.output, raylib.RED, self.scratch_space.allocator());
                },
                .furnace_inventory => |*furnace_ui| {
                    draw_texture_pro(item_slot_texture, window_width() * 0.5, window_height() * 0.5, 400, 250, 0, raylib.ORANGE, true);
    
                    if(self.forground_tiles[furnace_ui.tile_index].tile != .furnace) {
                        self.close_inventory();
                        break :game_ui_drawing;
                    }
    
                    const furnace = &self.get_tile_data(furnace_ui.tile_index).data.furnace;
                    
                    const progress_bar_width = 5;

                    const fuel_progress_bar_x = furnace_ui.input_fuel_slot.x - 10 - progress_bar_width;
                    const fuel_progress_bar_y = furnace_ui.input_fuel_slot.y;

                    if(furnace.fuel_item_in_use) |fuel_item| {
                        draw_progress_bar_vertical(fuel_progress_bar_x, fuel_progress_bar_y, 10, furnace_ui.input_fuel_slot.size, raylib.RED, raylib.ORANGE, furnace.fuel_buffer, fuel_item.fuel_smelt_count().? * Tile.furnace_max_progress);
                    }

                    const output_progress_bar_x = furnace_ui.output_slot.x - 10 - progress_bar_width;
                    const output_progress_bar_y = furnace_ui.output_slot.y;

                    draw_progress_bar_vertical(output_progress_bar_x, output_progress_bar_y, 10, furnace_ui.output_slot.size, raylib.BLUE, raylib.WHITE, furnace.progress, Tile.furnace_max_progress);

                    furnace_ui.input_ingredient_slot.draw(&furnace.ingredient_input, raylib.BLUE, self.scratch_space.allocator());
                    furnace_ui.input_fuel_slot.draw(&furnace.fuel_input, raylib.BLUE, self.scratch_space.allocator());
                    furnace_ui.output_slot.draw(&furnace.output, raylib.RED, self.scratch_space.allocator());
                },
                .crusher_inventory => |*crusher_ui| {
                    const background_height = 300;
                    const background_width = 400;

                    draw_texture_pro(item_slot_texture, window_width() * 0.5, (window_height() * 0.5) - (background_height * 0.5), background_width, background_height, 0, raylib.WHITE, false);
    
                    if(self.forground_tiles[crusher_ui.tile_index].tile != .crusher) {
                        self.close_inventory();
                        break :game_ui_drawing;
                    }
    
                    const crusher = &self.get_tile_data(crusher_ui.tile_index).data.crusher;

                    crusher_ui.input_slot.draw(&crusher.input, raylib.BLUE, self.scratch_space.allocator());
                    crusher_ui.output_slot.draw(&crusher.output, raylib.RED, self.scratch_space.allocator());
                },
            }

            // draw player inventory
            for(&self.ui_state.player_panel, 0..) |*ui_slot, i| {
                const color = switch (i) {
                    0 => raylib.RED,
                    1 => raylib.ORANGE,
                    2 => raylib.YELLOW,
                    3 => raylib.GREEN,
                    4 => raylib.SKYBLUE,
                    5 => raylib.BLUE,
                    6 => raylib.VIOLET,
                    7 => raylib.BROWN,
                    8 => raylib.BLACK,
                    else => raylib.WHITE
                };

                ui_slot.draw(&self.player.inventory[i], color, self.scratch_space.allocator());
            }

            // draw item in hand
            if(self.ui_state.in_hand.item_type) |item| {                     
                const item_texture = item.get_texture();
                const icon_x = mouse_screen_position.x + 10;
                const icon_y = mouse_screen_position.y + 10;

                draw_texture(item_texture, icon_x, icon_y, 50, 50);
                
                // max size is 99 so 2 bytes is fine here
                const string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "{}", .{self.ui_state.in_hand.count}) catch unreachable;
                draw_text(string, icon_x, icon_y, 20, raylib.WHITE);
            }
        }
        
        // fps text 
        {
            const fps_string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "fps: {}", .{raylib.GetFPS()}) catch unreachable;
            draw_text(fps_string, window_width() - 100, window_height() - 20, 20, raylib.WHITE);
        }

        // memory debug info
        if(debug_memory_usage) {
            const arena_string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "A: {}", .{self.underlying_arena.queryCapacity()}) catch unreachable;
            draw_text(arena_string, window_width() - 100, 20, 20, raylib.PURPLE);

            const scratch_string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "S: {}", .{self.scratch_space.end_index}) catch unreachable;
            draw_text(scratch_string, window_width() - 100, 40, 20, raylib.PURPLE);

            const max_scratch_string = std.fmt.allocPrintZ(self.scratch_space.allocator(), "MS: {}", .{self.max_scratch_space_usage}) catch unreachable;
            draw_text(max_scratch_string, window_width() - 100, 60, 20, raylib.PURPLE);
        }

        // inventory
        {
            const size = 50;
            const padding = 5;
            const slot_y = window_height() - size - padding;

            for(0..9) |i| {

                var color = switch (i) {
                    0 => raylib.RED,
                    1 => raylib.ORANGE,
                    2 => raylib.YELLOW,
                    3 => raylib.GREEN,
                    4 => raylib.SKYBLUE,
                    5 => raylib.BLUE,
                    6 => raylib.VIOLET,
                    7 => raylib.BROWN,
                    8 => raylib.BLACK,
                    else => unreachable
                };

                color = raylib.Fade(color, 0.7);

                // adding the i * padding gives the gap
                const slot_x: f32 = @floatFromInt((size * i) + (i * padding) + padding);
                draw_inventory_slot(&self.player.inventory[i], slot_x, slot_y, size, color, self.scratch_space.allocator());

                // draw item selected indicator
                if(i == self.player.selected_item) {
                    const indicator_radius = 5;
                    const indicator_y = slot_y - 10;
                    const indicator_x = slot_x + (size * 0.5);

                    draw_circle(indicator_x, indicator_y, indicator_radius, raylib.YELLOW);
                }
            }
        }

        // crafting ui
        {
            const padding = 5;
            const output_icon_size = 50;

            const mouse_screen_position = get_mouse_screen_position();

            for(&crafting_recipes, 0..) |*recipe, _i| {
                const craftable = self.player.can_craft_recipe(recipe);
                const color = if(craftable) raylib.Fade(raylib.GREEN, 0.7) else raylib.Fade(raylib.RED, 0.7);

                const i = @as(f32, @floatFromInt(_i));
                const output_icon_x = padding;
                const output_icon_y = padding + (output_icon_size * i) + (padding * i);

                draw_crafting_recipe_output(recipe, output_icon_x, output_icon_y, output_icon_size, color);

                if(mouse_screen_position.x >= output_icon_x and mouse_screen_position.x <= output_icon_x + output_icon_size) {
                    if(mouse_screen_position.y >= output_icon_y and mouse_screen_position.y <= output_icon_y + output_icon_size) {
                        draw_crafting_recipe_input(recipe, mouse_screen_position.x + 15, mouse_screen_position.y, output_icon_size);

                        if(craftable and self.input.left_mouse) {
                            self.player.craft_recipe(recipe);
                        }
                    }
                }
            }
        }

        raylib.EndDrawing();
    }

    fn is_viewing_inventory(self: *const Self) bool {
        return switch (self.ui_state.current_open_panel) {
            .empty => false,
            else => true,
        };
    }

    fn open_inventory(self: *Self, tile_index: usize) void {
        const tile = self.forground_tiles[tile_index].tile;

        if(!tile.has_clickable_ui()) {
            return;
        }

        switch (tile) {
            .miner => {
                self.ui_state.current_open_panel = UIPanel.miner_inventory(tile_index);
            },
            .furnace => {
                self.ui_state.current_open_panel = UIPanel.furnace_inventory(tile_index);
            },
            .crusher => {
                self.ui_state.current_open_panel = UIPanel.crusher_inventory(tile_index);
            },
            else => unreachable,
        }
    }

    fn close_inventory(self: *Self) void {
        self.ui_state.current_open_panel = UIPanel.empty();
    }

    fn get_mouse_world_position(self: *const Self) WorldPosition {
        const screen_position = raylib.GetMousePosition();
        const world_position = raylib.GetScreenToWorld2D(screen_position, self.camera);
    
        return .{.x = world_position.x, .y = world_position.y};
    } 

    // removes a tile in a given index in the foreground
    // and replaces it with air, if the tile has an associated
    // tile data then that is also removed
    fn remove_tile_in_foreground(self: *Self, tile_index: usize) ?Tile {
        if(!get_tile_position_from_tile_index(tile_index).is_valid()) {
            return null;
        }

        const replcaing_tile = self.forground_tiles[tile_index].tile;

        if(replcaing_tile == .air) {
            return null;
        }

        const tile_data: ?*TileData = if(replcaing_tile.has_tile_data()) self.get_tile_data(tile_index) else null;
        replcaing_tile.removed_update(tile_index, tile_data, self);

        if(tile_data) |value| {
            for(0..self.tile_data.items.len) |i| {
                if(self.tile_data.items[i].tile_index == value.tile_index) {
                    _ = self.tile_data.swapRemove(i);
                    break;
                }
            }
        }

        if(replcaing_tile.is_network_node()) {
            // 1. get node info
            // 2. remove node from network nodes
            // 3. remove node from neighbour nodes
            // 4. remove node from network
            // 5. if network is empty remove network
           
            // making a copy of node
            var node: NetworkNode = undefined;

            for(0..self.network_nodes.items.len) |i| {
                if(self.network_nodes.items[i].tile_index == tile_index) {
                    node = self.network_nodes.items[i];
                    _ = self.network_nodes.swapRemove(i);
                    break;
                }
            }

            for(node.neighbour_tile_indices.slice()) |neighbour_index| {
                const neighbour = self.get_network_node(neighbour_index);
                neighbour.remove_neighbour(tile_index);
            }

            const network = self.get_network(node.network_id);
            network.remove_node(&node);
            self.rebuild_damaged_network(network.network_id);
        }
                    
        self.forground_tiles[tile_index].tile = .air;
        self.tile_update_adjectcent_tiles(tile_index);
        return replcaing_tile;
    }

    fn rebuild_damaged_network(self: *Self, network_id: usize) void {
        while(!self.traverse_nodes_and_replace_network(network_id)) {}

        // delete old network
    }

    fn traverse_nodes_and_replace_network(self: *Self, old_network_id: usize) bool {
        // 1. create new network with new id
        // 2. find the first node with the old network id
        // 3. flood fill all connecting nodes
        // 4. replace old id with new one
        //      - also add nodes to new network

        var node_queue = std.ArrayList(usize).init(self.scratch_space.allocator());
        var completed_nodes = std.AutoHashMap(usize, void).init(self.scratch_space.allocator());

        var new_network = Network.init(self.allocator);

        defer node_queue.deinit();
        defer completed_nodes.deinit();

        // find the first node with the old id and add to list
        for(self.network_nodes.items) |*node| {
            if(node.network_id == old_network_id) {
                node_queue.append(node.tile_index) catch std.debug.panic("scratch space out of memory\n", .{});
                break;
            }
        }

        if(node_queue.items.len == 0) {
            return true; // complete no old nodes
        }

        while(node_queue.items.len > 0) {
            const current_node_index = node_queue.pop();
            if(completed_nodes.contains(current_node_index)) {
                continue;
            } else {
                completed_nodes.put(current_node_index, {}) catch unreachable;
            }

            const current_node = self.get_network_node(current_node_index);
            for(current_node.neighbour_tile_indices.slice()) |neighbour_index| {
                node_queue.append(neighbour_index) catch unreachable;
            }

            current_node.network_id = new_network.network_id;
            new_network.add_node(current_node);
        }

        self.networks.append(new_network) catch unreachable;

        return false; // no new nodes so return false to call again
    }

    // places a tile in a given index in the foreground
    // if the tile is not air *not empty* then it is
    // not placed and false is returned
    fn place_tile_in_foreground(self: *Self, tile_index: usize, tile: Tile) bool {
        if(self.forground_tiles[tile_index].tile != .air) {
            return false;
        }
        
        const direction = if(tile.has_direction()) self.player.placement_dirction else .down;
        self.forground_tiles[tile_index] = .{.tile = tile, .direction = direction};

        if(tile.has_tile_data()) {
            var tile_data = tile.get_default_tile_data();
            tile_data.tile_index = tile_index;

            self.tile_data.append(tile_data) catch |err| {
                switch (err) {          
                    error.OutOfMemory => {
                        std.debug.panic("out of memory creating new tile data {}", .{err});
                    }
                }
            };
        }

        if(tile.is_network_node()) {
            // if we are adding a new network node this is the order of things
            // to be done
            //
            // 1. create a new network with a single node (the new one)
            // 2. check any possible connections to that new node
            // 3. if there are try and join the two networks
            // 4. repeat 2 until false
            var network = Network.init(self.allocator);
            const node = NetworkNode.init(tile_index, network.network_id);

            network.nodes.append(node.tile_index) catch |err| {
                switch (err) {          
                    error.OutOfMemory => {
                        std.debug.panic("out of memory add new network node to network: tile_index: {}, network_id: {}", .{node.tile_index, network.network_id});
                    }
                }
            };

            self.networks.append(network) catch |err| {
                switch (err) {          
                    error.OutOfMemory => {
                        std.debug.panic("out of memory add new network to game: network_id: {}", .{network.network_id});
                    }
                }
            };

            self.network_nodes.append(node) catch |err| {
                switch (err) {          
                    error.OutOfMemory => {
                        std.debug.panic("out of memory creating new network node {}", .{err});
                    }
                }
            };

            self.search_for_network_connections(tile_index);
        }

        if(tile.has_tile_data()) {
            tile.tile_update(tile_index, &self.tile_data.items[self.tile_data.items.len - 1], self);
        } else {
            tile.tile_update(tile_index, null, self);
        }

        self.tile_update_adjectcent_tiles(tile_index);
        return true;
    }

    fn tile_update_adjectcent_tiles(self: *Self, tile_index: usize) void {
        const tile_position = get_tile_position_from_tile_index(tile_index);
        const adjacent_tile_positions = [_]TilePosition{
            tile_position.get_adjacent_tile_at_direction(.up),
            tile_position.get_adjacent_tile_at_direction(.left),
            tile_position.get_adjacent_tile_at_direction(.right),
            tile_position.get_adjacent_tile_at_direction(.down),
        };

        for(&adjacent_tile_positions) |*position| {
            if(!position.is_valid()) {
                continue;
            }

            const target_index = position.get_tile_index();
            const target_tile = self.forground_tiles[target_index].tile;
            if(target_tile == .air) continue;

            var target_tile_data: ?*TileData = undefined;
            if(target_tile.has_tile_data()) {
                target_tile_data = self.get_tile_data(target_index);
            }

            self.forground_tiles[target_index].tile.tile_update(target_index, target_tile_data, self);
        }
    }

    fn search_for_network_connections(self: *Self, tile_index: usize) void {
        const search_radius = 3;
        const tile_position = get_tile_position_from_tile_index(tile_index);

        if(!self.forground_tiles[tile_index].tile.is_network_node()) {
            return;
        }

        const is_this_tile_connector = self.forground_tiles[tile_index].tile.is_network_node_connector();

        for(tile_position.y - search_radius..tile_position.y + search_radius + 1) |y| {
            for(tile_position.x - search_radius..tile_position.x + search_radius + 1) |x| {
                const target_position = TilePosition{.x = x, .y = y};

                if(x == tile_position.x and y == tile_position.y) {
                    continue; // search tile is the same as the source tile
                }

                if(!target_position.is_valid()) {
                    continue;
                }

                const target_tile_index = target_position.get_tile_index();
                const target_tile = self.forground_tiles[target_tile_index].tile;

                // check if the other tile is a network node if it is not
                // then do not connect
                // check if either tile is a connector node, if both are not
                // then do not connect them
                if(
                    !target_tile.is_network_node() or
                    (!is_this_tile_connector and
                    !target_tile.is_network_node_connector())
                ) {
                    continue;
                }

                const source_node = self.get_network_node(tile_index);
                const target_node = self.get_network_node(target_tile_index);

                const source_network = self.get_network(source_node.network_id);
                const target_network = self.get_network(target_node.network_id);

                self.connect_networks_at_nodes(source_network, target_network, source_node, target_node);
            }
        }
    }

    fn connect_networks_at_nodes(self: *Self, source_network: *Network, target_network: *Network, source_node: *NetworkNode, target_node: *NetworkNode) void {
        // 1. connect the nodes together
        // 2. if the networks are the same then dont merge
        // 3. check the size of each netowrk
        // 4. the smaller one is eaten by the bigger
        //      - change network ids in smaller network
        //      - add the nodes to the bigger network

        source_node.add_neighbour(target_node.tile_index);
        target_node.add_neighbour(source_node.tile_index);

        if(source_node.network_id == target_network.network_id) {
            return;
        }
    
        var bigger_network : *Network = undefined;
        var smaller_network : *Network = undefined;

        if(source_network.nodes.items.len > target_network.nodes.items.len) {
            bigger_network = source_network;
            smaller_network = target_network;
        } else {
            bigger_network = target_network;
            smaller_network = source_network;
        }
   
        for(self.network_nodes.items) |*node| {
            if(node.network_id == smaller_network.network_id) {
                node.network_id = bigger_network.network_id;
            }
        }

        bigger_network.nodes.appendSlice(smaller_network.nodes.items) catch unreachable;

        for(0..self.networks.items.len) |i| {
            if(self.networks.items[i].network_id == smaller_network.network_id) {
                _ = self.networks.swapRemove(i);
                break;
            }
        }

        std.debug.print("{} ate {} :: network count {}\n", .{bigger_network.network_id, smaller_network.network_id, self.networks.items.len});

        std.debug.print("==========\n", .{});
        for(self.network_nodes.items) |*node| {
            std.debug.print("node: {}, network: {}\n", .{node.tile_index, node.network_id});
        }
        std.debug.print("==========\n", .{});
    }

    // WARNING: the pointer is fragile it should not be stored
    // accross frames, use the id to get a new version of it
    fn get_network(self: *Self, network_id: usize) *Network {
        for(self.networks.items) |*network| {
            if(network.network_id == network_id) {
                return network;
            }
        }

        std.debug.panic("tried to get network with ide: {} and failed\n", .{network_id});
    }

    // WARNING: the pointer is fragile it should not be stored
    // accross frames, use the id to get a new version of it
    fn get_network_node(self: *const Self, tile_index: usize) *NetworkNode {
        for(self.network_nodes.items) |*node| {
            if(node.tile_index == tile_index) {
                // this pointer should not be stored across frames
                // if the tile data buffer changes the underlying
                // memory could become invalid or change
                return node;
            }
        }

        std.debug.panic("tried to get network node at index: {} and failed\n", .{tile_index});
    }

    // WARNING: the pointer is fragile it should not be stored
    // accross frames, use the index to get a new version of it
    fn get_tile_data(self: *const Self, tile_index: usize) *TileData {
        for(self.tile_data.items) |*tile_data| {
            if(tile_data.tile_index == tile_index) {
                // this pointer should not be stored across frames
                // if the tile data buffer changes the underlying
                // memory could become invalid or change
                return tile_data;
            }
        }

        std.debug.panic("tried to get tile data at index: {} and failed\n", .{tile_index});
    }

    fn generate_world(self: *Game) void {
        // base terrain pass
        for(0..self.background_tiles.len) |i| {
            // right now setting every tile by default
            // to grass at some point this will change
            const tile_value: Tile = .grass;
            self.background_tiles[i] = tile_value;
        }

        // ore generation pass
        for(0..self.background_tiles.len) |i| {
            for(&ore_table) |*ore| {
                const noise_generator = fastnoise.Noise(f32) {
                    .seed = self.seed,
                    .noise_type = .perlin,
                    .frequency = ore.frequency,
                    .gain = 0.01,
                    .fractal_type = .fbm,
                    .lacunarity = 0.40,
                    .cellular_distance = .euclidean,
                    .cellular_return = .distance2,
                    .cellular_jitter_mod = 0.88,
                    .octaves = 2
                };

                var noise = noise_generator.genNoise2D(@floatFromInt(@mod(i, world_tile_width)), @floatFromInt(@divFloor(i, world_tile_width)));

                // normalise noise from -1 to 1 -> 0 to 1
                noise = (noise + 1) * 0.5;

                if(noise < ore.threshold) {
                    self.background_tiles[i] = ore.tile;
                    continue;
                }
            }
        }

        // tree generation pass
        tree_check: for((world_tile_width * 3)..self.forground_tiles.len) |i| {
            const noise_generator = fastnoise.Noise(f32) {
                .seed = self.seed,
                .noise_type = .perlin,
                .frequency = 0.6,
                .gain = 0.01,
                .fractal_type = .fbm,
                .lacunarity = 0.40,
                .cellular_distance = .euclidean,
                .cellular_return = .distance2,
                .cellular_jitter_mod = 0.88,
                .octaves = 2
            };

            var noise = noise_generator.genNoise2D(@floatFromInt(@mod(i, world_tile_width)), @floatFromInt(@divFloor(i, world_tile_width)));

            // normalise noise from -1 to 1 -> 0 to 1
            noise = (noise + 1) * 0.5;

            const tree_height = 3;
            const base_tile_position = get_tile_position_from_tile_index(i);

            if(!(noise < 0.2 and self.background_tiles[i] == .grass)) {
                continue :tree_check;
            }

            for(0..tree_height) |j| {
                const offset_position = TilePosition{.x = base_tile_position.x, .y = base_tile_position.y - j};
                if(!offset_position.is_valid()) {
                    continue :tree_check;
                }

                const checking_tile_index = offset_position.get_tile_index();
                if(self.forground_tiles[checking_tile_index].tile != .air) {
                    continue :tree_check;
                }
            }

            self.forground_tiles[i] = .{.tile = .tree_base, .direction = .down};
                
            for(1..tree_height) |j| {
                const offset_position = TilePosition{.x = base_tile_position.x, .y = base_tile_position.y - j};
                const tile_index = offset_position.get_tile_index();
                self.forground_tiles[tile_index] = .{.tile = .tree_0, .direction = .down};
            }
        }
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @random
/////////////////////////////////////////////////////////////////////////////////
fn move_draw_location_on_direction(world_position: WorldPosition, direction: Direction) WorldPosition {
    var new_position = world_position;
    switch (direction) {     
        .left => {
            new_position.x += tile_width; 
        },
        .up => {
            new_position.x += tile_width;
            new_position.y += tile_height;
        },
        .right => {
            new_position.y += tile_height;
        },
        .down => {}
    }
    
    return new_position;
}

fn get_mouse_screen_position() WorldPosition {
    const screen_position = raylib.GetMousePosition();
    return .{.x = screen_position.x, .y = screen_position.y};
}

fn init_raylib(title: [*c]const u8) void {
        raylib.InitWindow(default_screen_width, default_screen_height, title);
        raylib.SetTargetFPS(0);
}

fn get_tile_position_from_tile_index(tile_index: usize) TilePosition {
        const x = @mod(tile_index, world_tile_width);
        const y = @divFloor(tile_index, world_tile_width); 
        return .{.x = x, .y = y};
}

fn load_texture(relative_texture_path: []const u8) !raylib.Texture {
    var base_path_buffer = std.mem.zeroes([std.fs.MAX_PATH_BYTES]u8);
    
    const cwd_dir = std.fs.cwd();
    const base_path = try cwd_dir.realpath(".", base_path_buffer[0..]);

    var texture_path_buffer = std.mem.zeroes([std.fs.MAX_PATH_BYTES]u8);
    const texture_path = try std.fmt.bufPrint(texture_path_buffer[0..], "{s}/textures/{s}", .{base_path, relative_texture_path});

    const texture = raylib.LoadTexture(&texture_path[0]);
    if(texture.id <= 0) {
        std.debug.panic("unable to load texture with path {s}\n", .{texture_path});
    }

    return texture;
}

/////////////////////////////////////////////////////////////////////////////////
///                         @main
/////////////////////////////////////////////////////////////////////////////////
pub fn main() !void {
    var game_arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer game_arena.deinit();
 
    const allocator = game_arena.allocator();

    init_raylib("factory game");

    // tile texture setup
    grass_tile_texture =        try load_texture(grass_tile_image_path);
    stone_tile_texture =        try load_texture(stone_tile_image_path);
    iron_ore_tile_texture =     try load_texture(iron_ore_tile_image_path);
    miner_tile_texture =        try load_texture(miner_tile_image_path);
    coal_ore_tile_texture =     try load_texture(coal_ore_tile_image_path);
    tree_base_tile_texture =    try load_texture(tree_base_image_path);
    tree_0_tile_texture =       try load_texture(tree_0_image_path);
    extractor_tile_texture =    try load_texture(extractor_image_path);
    pipe_tile_texture =         try load_texture(pipe_image_path);
    pipe_left_tile_texture =    try load_texture(pipe_left_image_path);
    pipe_right_tile_texture =   try load_texture(pipe_right_image_path);
    pipe_merger_tile_texture =  try load_texture(pipe_merger_image_path);
    pole_tile_texture =         try load_texture(pole_image_path);
    battery_tile_texture =      try load_texture(battery_image_path);
    crusher_tile_texture =      try load_texture(crusher_image_path);

    // item texture setup
    iron_item_texture =         try load_texture(iron_item_image_path);
    item_slot_texture =         try load_texture(item_slot_image_path);
    coal_item_texture =         try load_texture(coal_item_image_path);
    furnace_tile_texture =      try load_texture(furnace_tile_image_path);
    iron_ingot_item_texture =   try load_texture(iron_ingot_item_image_path);
    stone_item_texture =        try load_texture(stone_item_image_path);
    wood_item_texture =         try load_texture(wood_item_image_path);

    var game = try Game.init(&game_arena, allocator);
    game.generate_world();
    game.run();
}
