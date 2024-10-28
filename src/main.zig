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

const default_screen_width = 1200;
const default_screen_height = 800;

const tile_width: i64 = 24;
const tile_height: i64 = 24;

const world_tile_width = 150;
const world_tile_height = 150;

const max_item_stack = 99;

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

const ForgroundTile = struct {
    tile: Tile, direction: Direction
};

const Tile = enum(u8) {
    const Self = @This();

    const miner_max_progress    = 10 * 3;
    const furnace_max_progress  = 10 * 3;
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
            else => null,
        };
    }

    fn get_texture(self: *const Self, tile_index: usize, game: *const Game) raylib.Texture {
        return switch (self.*) {
            .pipe => {
                const pipe = &game.get_tile_data(tile_index).?.data.pipe;
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
            .extractor => extractor_tile_texture
        };
    }

    fn has_tile_data(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .pipe, .pipe_merger, .extractor => true,
            else => false,
        };
    }

    // when a tile is place or updated can it
    // tuen to this tile to give items
    fn can_pipe_turn_to(self: Self, from_index: usize, tile_index: usize, game: *const Game) bool {
        switch (self) {
            .furnace => return true,
            .pipe => {
                const current_position = get_x_and_y_from_tile_index(tile_index);
                if(!valid_tile_position(current_position)) {
                    return false;
                }

                const current_direction = game.forground_tiles[tile_index].direction;
                const input_position = current_position.get_adjacent_tile_at_direction(current_direction);
                if(!valid_tile_position(input_position)) {
                    return false;
                }

                return from_index == get_tile_index_from_x_and_y(input_position.x, input_position.y);
            },
            .pipe_merger => {
                const current_position = get_x_and_y_from_tile_index(tile_index);
                if(!valid_tile_position(current_position)) {
                    return false;
                }

                const current_direction = game.forground_tiles[tile_index].direction;

                const input_positions = [_]TilePosition{
                    current_position.get_adjacent_tile_at_direction(current_direction),
                    current_position.get_adjacent_tile_at_direction(current_direction.counter_clockwise())
                };

                for(&input_positions) |input_position| {
                    if(!valid_tile_position(input_position)) {
                        continue;
                    }

                    if(from_index == get_tile_index_from_x_and_y(input_position.x, input_position.y)) {
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
                const current_tile_position = get_x_and_y_from_tile_index(tile_index);
                if(current_tile_position.y == 0) {
                    return;
                }

                const above_tile_index = get_tile_index_from_x_and_y(current_tile_position.x, current_tile_position.y - 1);
                if(!valid_tile_position(get_x_and_y_from_tile_index(above_tile_index))) {
                    return;
                }

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
                
                const position = get_x_and_y_from_tile_index(tile_index);
                const current_direction = game.forground_tiles[tile_index].direction;

                const targets = [_]struct {position: TilePosition, relative_direction: Direction} {
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.relative(pipe.relative_output_direction)), .relative_direction = pipe.relative_output_direction},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.oppisite()), .relative_direction = .up},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.clockwise()), .relative_direction = .left},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.counter_clockwise()), .relative_direction = .right}
                };

                for(&targets) |*target| {
                    if(!valid_tile_position(target.position)) {
                        continue;
                    }

                    const target_index = get_tile_index_from_x_and_y(target.position.x, target.position.y);
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
    fn tick_update(self: Self, tile_index: usize, tile_data: ?*TileData, game: *const Game) void {
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
                    const current_position = get_x_and_y_from_tile_index(tile_index);
                    const output_direction = game.forground_tiles[tile_index].direction.relative(pipe.relative_output_direction);
                    const output_position = current_position.get_adjacent_tile_at_direction(output_direction);
                    if(!valid_tile_position(output_position)) {
                        break :check_output;
                    }

                    const output_index = get_tile_index_from_x_and_y(output_position.x, output_position.y);
                    const output_tile = game.forground_tiles[output_index].tile;
                    
                    if(!output_tile.pipe_can_give()) {
                        break :check_output;
                    }

                    var output_tile_data: ?*TileData = null;  
                    if(output_tile.has_tile_data()) {
                        output_tile_data = game.get_tile_data(output_index) orelse unreachable; // has_tile_data is true so this needs to not be null
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

                const current_position = get_x_and_y_from_tile_index(tile_index);
                if(!valid_tile_position(current_position)) {
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
                    if(!valid_tile_position(input_position)) {
                        break :check_input;
                    }

                    const input_index = get_tile_index_from_x_and_y(input_position.x, input_position.y);
                    const input_tile = game.forground_tiles[input_index].tile;
                    
                    if(!input_tile.extractor_can_take()) {
                        break :check_input;
                    }

                    var input_tile_data: ?*TileData = null;  
                    if(input_tile.has_tile_data()) {
                        input_tile_data = game.get_tile_data(input_index) orelse unreachable; // has_tile_data is true so this needs to not be null
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
                    if(!valid_tile_position(output_position)) {
                        break :check_output;
                    }

                    const output_index = get_tile_index_from_x_and_y(output_position.x, output_position.y);
                    const output_tile = game.forground_tiles[output_index].tile;
                    
                    if(!output_tile.pipe_can_give()) {
                        break :check_output;
                    }

                    var output_tile_data: ?*TileData = null;  
                    if(output_tile.has_tile_data()) {
                        output_tile_data = game.get_tile_data(output_index) orelse unreachable; // has_tile_data is true so this needs to not be null
                    }

                    if(output_tile.pipe_give(extractor.item.?, tile_index, output_index, output_tile_data, game)) {
                        extractor.item = null;
                    }
                }
            },
            else => {},
        }
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

                const current_position = get_x_and_y_from_tile_index(tile_index);
                const from_position = get_x_and_y_from_tile_index(from_index);
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

                const current_position = get_x_and_y_from_tile_index(tile_index);
                const current_direction = game.forground_tiles[tile_index].direction;

                const input_positions = [_]TilePosition{
                    current_position.get_adjacent_tile_at_direction(current_direction),
                    current_position.get_adjacent_tile_at_direction(current_direction.counter_clockwise())
                };

                direction_checking: {
                    for(&input_positions) |input_position| {
                    if(from_index == get_tile_index_from_x_and_y(input_position.x, input_position.y)) {
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

    fn ctrl_left_click(self: Self, tile_index: usize, tile_data: ?*TileData, game: *Game) void {
        _ = tile_index; // autofix
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                game.player.add_stack_from_inventory_slot_to_inventory(&miner.output);
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                game.player.add_stack_from_inventory_slot_to_inventory(&furnace.output);
            },
            else => {},
        }
    }

    fn ctrl_right_click(self: Self, tile_index: usize, tile_data: ?*TileData, game: *Game) void {
        _ = tile_index; // autofix
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                if(game.player.get_selected_item_type()) |input_item| {
                    if(!input_item.can_be_fuel()) return;
                    game.player.add_stack_from_selected_slot_to_inventory_slot(&miner.input);
                }
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                if(game.player.get_selected_item_type()) |input_item| {
                    if(input_item.can_be_fuel()) {
                        game.player.add_stack_from_selected_slot_to_inventory_slot(&furnace.fuel_input);
                    } else if(input_item.can_be_smelted()) {
                        game.player.add_stack_from_selected_slot_to_inventory_slot(&furnace.ingredient_input);
                    }
                }
            },
            else => {},
        }
    }

    fn get_default_tile_data(self: *const Self) ?TileData {
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
            .pipe => TileData{
                .tile_index = 0,
                .data = .{
                    .pipe = .{
                        .storage = std.mem.zeroes([5]PipeStorageSlot),
                        .relative_output_direction = .up,
                    },
                },
            },
            .pipe_merger => Tile.pipe.get_default_tile_data(),
            .extractor => TileData{
                .tile_index = 0,
                .data = .{
                    .extractor =.{
                        .item = null,
                    },
                },
            },
            else => null,
        };
    }
};

const PipeStorageSlot = struct {
    item: ?Item,
    progress: i64
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
            .extractor => extractor_tile_texture
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
            else => null,
        };
    }
};

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

    fn is_empty(self: *const Self) bool {
        return self.item_type == null;
    }

    fn is_full(self: *const Self) bool {
        return self.count == max_item_stack;
    }
};

const Player = struct {
    const Self = @This();

    x: f32,
    y: f32,
    inventory:[9]InventorySlot,
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

            const amount_to_add = if (count > max_item_stack) max_item_stack else count;
            
            slot.item_type = item;
            slot.count += amount_to_add;
            remaining_count -= amount_to_add;
        }

        return remaining_count;
    }
};

const Game = struct {
    const Self = @This();

    const Input = struct{
        w: bool,
        a: bool,
        s: bool,
        d: bool,
        r: bool,
        up_arrow: bool,
        down_arrow: bool,
        numbers: [9]bool, // we ignore 0
        scroll: f32,
        left_mouse: bool,
        right_mouse: bool,
        ctrl: bool,
        left_shift: bool
    };

    seed: i32,
    player: Player,
    camera: raylib.Camera2D,
    input: Input,
    background_tiles: []Tile,
    forground_tiles: []ForgroundTile,
    tile_data: std.ArrayList(TileData),
    world_gen_noise: fastnoise.Noise(f32),
    allocator: std.mem.Allocator,
    tick_timer: f32,

    fn init(allocator: std.mem.Allocator) !Game {
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
                .inventory = std.mem.zeroes([9]InventorySlot),
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
            .tick_timer = 0,
        };

        // temp adding items to inventory 
        game.player.inventory[0] = .{ .item_type = .miner, .count = 99 };
        game.player.inventory[1] = .{ .item_type = .extractor, .count = 99 };
        game.player.inventory[2] = .{ .item_type = .pipe, .count = 99 };
        game.player.inventory[3] = .{ .item_type = .pipe_merger, .count = 99 };
        game.player.inventory[4] = .{ .item_type = .coal, .count = 99 };
        game.player.inventory[5] = .{ .item_type = .coal, .count = 99 };
        game.player.inventory[6] = .{ .item_type = .furnace, .count = 99 };
        game.player.inventory[7] = .{ .item_type = .coal, .count = 99 };
        game.player.inventory[8] = .{ .item_type = .coal, .count = 99 };
        
        return game;
    }

    fn run(self: *Self) void {
        while (!raylib.WindowShouldClose()) {
            self.get_input();
            self.update(raylib.GetFrameTime());
            self.draw();
        }

        raylib.CloseWindow();
    }

    fn get_input(self: *Self) void {
        self.input.w = raylib.IsKeyDown(raylib.KEY_W);
        self.input.a = raylib.IsKeyDown(raylib.KEY_A);
        self.input.s = raylib.IsKeyDown(raylib.KEY_S);
        self.input.d = raylib.IsKeyDown(raylib.KEY_D);
        self.input.r = raylib.IsKeyPressed(raylib.KEY_R);
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

    fn tick_update(self: *Self) void {
        for(self.tile_data.items) |*tile_data| {
            self.forground_tiles[tile_data.tile_index].tile.tick_update(tile_data.tile_index, tile_data, self);
        }
    }

    fn update(self: *Self, delta_time: f32) void {
        self.tick_timer += delta_time;
        if(self.tick_timer >= 0.1) {
            self.tick_timer = 0;
            self.tick_update();
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
            const mouse_position = self.get_mouse_world_position();
            
            if(!mouse_position.in_world_bounds()) {
                break :mouse_update;
            }

            const tile_coords = mouse_position.to_tile_position();
            const tile_index = get_tile_index_from_x_and_y(tile_coords.x, tile_coords.y);
            const tile = self.forground_tiles[tile_index].tile;
            const tile_data = if (tile.has_tile_data()) self.get_tile_data(tile_index) else null;

            if(self.input.right_mouse and !self.input.ctrl) {
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
    
            if(self.input.left_mouse and !self.input.ctrl) {
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
    
            if(self.input.right_mouse and self.input.ctrl) {
                tile.ctrl_right_click(tile_index, tile_data, self);
            }
    
            if(self.input.left_mouse and self.input.ctrl) {
                tile.ctrl_left_click(tile_index, tile_data, self);
            }
        }
    }

    fn draw(self: *Self) void {
        raylib.BeginDrawing();
        raylib.ClearBackground(raylib.PURPLE);
        raylib.BeginMode2D(self.camera);

        // background tiles
        for(0..self.background_tiles.len) |i| {
            const tile_coords = get_x_and_y_from_tile_index(i);
            const world_position = tile_coords.to_world_position();

            const texture = self.background_tiles[i].get_default_texture();
            draw_texture(texture, world_position.x, world_position.y, tile_width, tile_height);
        }

        // foreground tiles
        for(0..self.forground_tiles.len) |i| {
            const tile_position = get_x_and_y_from_tile_index(i);
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
    
                    const pipe = &self.get_tile_data(i).?.data.pipe;
    
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
        }

        // tile place preview
        tile_preview: {
            const mouse_world_position = self.get_mouse_world_position();
            if(!mouse_world_position.in_world_bounds()) {
                break :tile_preview;
            }

            const tile_position = mouse_world_position.to_tile_position();
            const tile_index = get_tile_index_from_x_and_y(tile_position.x, tile_position.y);

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
        
        // fps text 
        {
            var fps_buffer = std.mem.zeroes([32]u8);
            const fps_string = std.fmt.bufPrint(fps_buffer[0..], "fps: {}", .{raylib.GetFPS()}) catch unreachable;
            draw_text(fps_string, window_width() - 100, window_height() - 20, 20, raylib.WHITE);
        }

        // inventory
        {
            const size = 50;
            const padding = 5;
            const slot_y = window_height() - size - padding;

            for(0..self.player.inventory.len) |i| {

                var color = switch (i) {
                    0 => raylib.RED,
                    1 => raylib.ORANGE,
                    2 => raylib.YELLOW,
                    3 => raylib.GREEN,
                    4 => raylib.SKYBLUE,
                    5 => raylib.BLUE,
                    6 => raylib.VIOLET,
                    7 => raylib.WHITE,
                    8 => raylib.BLACK,
                    else => unreachable
                };

                color = raylib.Fade(color, 0.7);

                // adding the i * padding gives the gap
                const slot_x: f32 = @floatFromInt((size * i) + (i * padding) + padding);
                draw_inventory_slot(&self.player.inventory[i], slot_x, slot_y, size, color);

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

        // ctrl hover ui 
        hover_ui: {
            if(!self.input.ctrl) {
                break :hover_ui;
            }

            const mouse_world_position = self.get_mouse_world_position();
            if(!mouse_world_position.in_world_bounds()) {
                break :hover_ui;
            }

            const mouse_screen_position = get_mouse_screen_position();

            const tile_coords = mouse_world_position.to_tile_position();
            const tile_index = get_tile_index_from_x_and_y(tile_coords.x, tile_coords.y);
            const tile = self.forground_tiles[tile_index].tile;

            if(!tile.has_tile_data()) {
                break :hover_ui;
            }

            const tile_data = self.get_tile_data(tile_index) orelse unreachable; 
            
            switch (tile_data.data) {
                .miner => |*miner| {
                    const output_slot_x = mouse_screen_position.x + 15;
                    const output_slot_y = mouse_screen_position.y + 15;
                    const size = 50;
                    const padding = 5;
                    const input_slot_y = output_slot_y - (size + padding);

                    draw_inventory_slot(&miner.input, output_slot_x, input_slot_y, size, raylib.BLUE);  // input slot
                    draw_inventory_slot(&miner.output, output_slot_x, output_slot_y, size, raylib.RED); // output slot

                    const progress_bar_x = output_slot_x + size + padding;
                    draw_progress_bar_vertical(progress_bar_x, output_slot_y, 8, size, raylib.BLUE, raylib.WHITE, miner.progress, Tile.miner_max_progress);
                    if(miner.fuel_item_in_use) |fuel_item| {
                        draw_progress_bar_vertical(progress_bar_x, input_slot_y, 8, size, raylib.RED, raylib.ORANGE, miner.fuel_buffer, fuel_item.fuel_smelt_count().? * Tile.miner_max_progress);
                    }
                },
                .furnace => |*furnace| {
                    const output_slot_x = mouse_screen_position.x + 15;
                    const output_slot_y = mouse_screen_position.y + 15;
                    const size = 50;
                    const padding = 5;
                    const input_slot_y = output_slot_y - (size + padding);

                    const progress_bar_x = output_slot_x + size + padding;
                    const progress_bar_width = 8;
                    const ingredient_slot_x = progress_bar_x + progress_bar_width + padding;

                    draw_inventory_slot(&furnace.fuel_input, output_slot_x, input_slot_y, size, raylib.BLUE);           // fuel input slot
                    draw_inventory_slot(&furnace.ingredient_input, ingredient_slot_x, input_slot_y, size, raylib.BLUE); // ingredient slot
                    draw_inventory_slot(&furnace.output, output_slot_x, output_slot_y, size, raylib.RED);               // output slot
               
                    draw_progress_bar_vertical(progress_bar_x, output_slot_y, progress_bar_width, size, raylib.BLUE, raylib.WHITE, furnace.progress, Tile.furnace_max_progress);
                    if(furnace.fuel_item_in_use) |fuel_item| {
                        draw_progress_bar_vertical(progress_bar_x, input_slot_y, progress_bar_width, size, raylib.RED, raylib.ORANGE, furnace.fuel_buffer, fuel_item.fuel_smelt_count().? * Tile.furnace_max_progress);
                    }
                },
                .pipe => {},
                .extractor => {},
            }
        }

        raylib.EndDrawing();
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
        if(!valid_tile_position(get_x_and_y_from_tile_index(tile_index))) {
            return null;
        }

        const replcaing_tile = self.forground_tiles[tile_index].tile;

        if(replcaing_tile == .air) {
            return null;
        }

        const tile_data = self.get_tile_data(tile_index);
        replcaing_tile.removed_update(tile_index, tile_data, self);

        if(tile_data) |value| {
            for(0..self.tile_data.items.len) |i| {
                if(self.tile_data.items[i].tile_index == value.tile_index) {
                    _ = self.tile_data.swapRemove(i);
                    break;
                }
            }
        }
                    
        self.forground_tiles[tile_index].tile = .air;
        self.tile_update_adjectcent_tiles(tile_index);
        return replcaing_tile;
    }

    // places a tile in a given index in the foreground
    // if the tile is not air *not empty* then it is
    // not places and false is returned
    fn place_tile_in_foreground(self: *Self, tile_index: usize, tile: Tile) bool {
        if(self.forground_tiles[tile_index].tile != .air) {
            return false;
        }
        
        const direction = if(tile.has_direction()) self.player.placement_dirction else .down;
        self.forground_tiles[tile_index] = .{.tile = tile, .direction = direction};

        var tile_data = tile.get_default_tile_data();
        if(tile_data != null) {
            tile_data.?.tile_index = tile_index;

            self.tile_data.append(tile_data.?) catch |err| {
                switch (err) {          
                    error.OutOfMemory => {
                        std.debug.panic("out of memory creating new tile data {}", .{err});
                    }
                }
            };

        }

        if(tile_data == null) {
            tile.tile_update(tile_index, null, self);
        } else {
            tile.tile_update(tile_index, &self.tile_data.items[self.tile_data.items.len - 1], self);
        }

        self.tile_update_adjectcent_tiles(tile_index);
        return true;
    }

    fn tile_update_adjectcent_tiles(self: *Self, tile_index: usize) void {
        const tile_position = get_x_and_y_from_tile_index(tile_index);
        const adjacent_tile_positions = [_]TilePosition{
            tile_position.get_adjacent_tile_at_direction(.up),
            tile_position.get_adjacent_tile_at_direction(.left),
            tile_position.get_adjacent_tile_at_direction(.right),
            tile_position.get_adjacent_tile_at_direction(.down),
        };

        for(&adjacent_tile_positions) |*position| {
            if(!valid_tile_position(position.*)) {
                continue;
            }

            const target_index = get_tile_index_from_x_and_y(position.x, position.y);
            const target_tile = self.forground_tiles[target_index].tile;
            if(target_tile == .air) continue;

            var target_tile_data: ?*TileData = undefined;
            if(target_tile.has_tile_data()) {
                target_tile_data = self.get_tile_data(target_index) orelse unreachable;
            }

            self.forground_tiles[target_index].tile.tile_update(target_index, target_tile_data, self);
        }
    }


    fn get_tile_data(self: *const Self, tile_index: usize) ?*TileData {
        for(self.tile_data.items) |*tile_data| {
            if(tile_data.tile_index == tile_index) {
                // this pointer should not be stored across frames
                // if the tile data buffer changes the underlying
                // memory could become invalid or change
                return tile_data;
            }
        }

        return null;
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
            const base_tile_position = get_x_and_y_from_tile_index(i);

            if(!(noise < 0.2 and self.background_tiles[i] == .grass)) {
                continue :tree_check;
            }

            for(0..tree_height) |j| {
                const offset_position = TilePosition{.x = base_tile_position.x, .y = base_tile_position.y - j};
                if(!valid_tile_position(offset_position)) {
                    continue :tree_check;
                }

                const checking_tile_index = get_tile_index_from_x_and_y(offset_position.x, offset_position.y);
                if(self.forground_tiles[checking_tile_index].tile != .air) {
                    continue :tree_check;
                }
            }

            self.forground_tiles[i] = .{.tile = .tree_base, .direction = .down};
                
            for(1..tree_height) |j| {
                const offset_position = TilePosition{.x = base_tile_position.x, .y = base_tile_position.y - j};
                const tile_index = get_tile_index_from_x_and_y(offset_position.x, offset_position.y);
                self.forground_tiles[tile_index] = .{.tile = .tree_0, .direction = .down};
            }
        }
    }
};

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

fn valid_tile_position(position: TilePosition) bool {
    if(position.x > world_tile_width) return false;
    if(position.y > world_tile_height) return false;

    return true;
}

fn draw_inventory_slot(inventory_slot: *const InventorySlot, x: f32, y: f32, size: f32, tint: raylib.Color) void {
    draw_texture_tint(item_slot_texture, x, y, size, size, tint);

    if(inventory_slot.item_type) |item| {                     
        const item_texture = item.get_texture();
        draw_texture(item_texture, x, y, size, size);
        
        // max size is 99 so 2 bytes is fine here
        var text_buffer = std.mem.zeroes([2]u8);
        const string = std.fmt.bufPrint(text_buffer[0..], "{}", .{inventory_slot.count}) catch unreachable;
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

fn init_raylib(title: [*c]const u8) void {
        raylib.InitWindow(default_screen_width, default_screen_height, title);
        raylib.SetTargetFPS(0);
}

fn get_tile_index_from_x_and_y(x: usize, y: usize) usize {
    return @as(usize, @intCast((y * world_tile_width) + x));
}

fn get_x_and_y_from_tile_index(tile_index: usize) TilePosition {
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
    pipe_merger_tile_texture =   try load_texture(pipe_merger_image_path);

    // item texture setup
    iron_item_texture =         try load_texture(iron_item_image_path);
    item_slot_texture =         try load_texture(item_slot_image_path);
    coal_item_texture =         try load_texture(coal_item_image_path);
    furnace_tile_texture =      try load_texture(furnace_tile_image_path);
    iron_ingot_item_texture =   try load_texture(iron_ingot_item_image_path);
    stone_item_texture =        try load_texture(stone_item_image_path);
    wood_item_texture =         try load_texture(wood_item_image_path);

    var game = try Game.init(allocator);
    game.generate_world();
    game.run();
}
