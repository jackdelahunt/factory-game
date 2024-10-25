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
const grass_tile_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/grass.png";
const stone_tile_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/stone.png";
const iron_ore_tile_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/iron_ore.png";
const miner_tile_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/miner.png";
const coal_ore_tile_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/coal_ore.png";
const furnace_tile_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/furnace.png";
const tree_base_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/tree_base.png";
const tree_0_image_path = "/Users/jdelahun/projects/zigraylib/images/tiles/tree_0.png";


// ITEMS
const iron_item_image_path = "/Users/jdelahun/projects/zigraylib/images/items/iron.png";
const item_slot_image_path = "/Users/jdelahun/projects/zigraylib/images/items/item_slot.png";
const coal_item_image_path = "/Users/jdelahun/projects/zigraylib/images/items/coal.png";
const iron_ingot_item_image_path = "/Users/jdelahun/projects/zigraylib/images/items/iron_ingot.png";
const stone_item_image_path = "/Users/jdelahun/projects/zigraylib/images/items/stone.png";
const wood_item_image_path = "/Users/jdelahun/projects/zigraylib/images/items/wood.png";


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
    draw_texture_pro(texture, x, y, width, height, 0, tint);
}

fn draw_texture_pro(texture: raylib.Texture, x: f32, y: f32, width: f32, height: f32, rotation: f32, tint: raylib.Color) void {
    // Source rectangle (part of the texture to use for drawing)
    const source_rectagle: raylib.Rectangle = .{ .x = 0, .y = 0, .width = @as(f32, @floatFromInt(texture.width)), .height = @as(f32, @floatFromInt(texture.height)) };

    // Destination rectangle (screen rectangle where drawing part of texture)
    const destination_rectangle: raylib.Rectangle = .{ .x = x, .y = y, .width = width, .height = height};

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
};

const ForgroundTile = struct {
    tile: Tile, direction: Direction
};

const Tile = enum(u8) {
    const Self = @This();

    const miner_max_progress = 30; // 3 seconds
    const furnace_max_progress = 30; // 3 seconds

    air,
    grass,
    stone,
    iron_ore,
    miner,
    coal_ore,
    furnace,
    tree_base,
    tree_0,

    fn is_tree_tile(self: *const Self) bool {
        return switch (self.*) {
             .tree_base, .tree_0 => true,
            .air, .grass, .miner, .furnace, .iron_ore, .coal_ore, .stone => false,
        };
    }

    fn has_direction(self: *const Self) bool {
        return switch (self.*) {
            .furnace => true,
            .tree_base, .tree_0, .air, .grass, .miner, .iron_ore, .coal_ore, .stone => false,
        };
    }

    // can this tile be mined by a machine
    // different to if a player can break it
    fn can_be_mined(self: *const Self) bool {
        return switch (self.*) {
            .iron_ore, .coal_ore, .stone => true,
            .air, .grass, .miner, .furnace, .tree_base, .tree_0 => false,
        };
    }

    // item when this tile is mined by a machine
    // different to when a player breaks it
    fn item_when_mined(self: *const Self) ?Item {
        return switch (self.*) {
            .iron_ore => .iron,
            .coal_ore, => .coal,
            .stone => .stone,
            .air, .grass, .miner, .furnace, .tree_base, .tree_0 => null
        };
    }

    // item when this tile is broken by a player
    fn item_when_broken(self: *const Self) ?Item {
        return switch (self.*) {
            .miner => .miner,
            .furnace => .furnace,
            .tree_base, .tree_0 => .wood,
            .air, .grass, .stone, .iron_ore, .coal_ore => null
        };
    }

    fn get_texture(self: *const Self) ?raylib.Texture {
        return switch (self.*) {
            .air => null,
            .grass => grass_tile_texture,
            .stone => stone_tile_texture,
            .iron_ore => iron_ore_tile_texture,
            .miner => miner_tile_texture,
            .coal_ore => coal_ore_tile_texture,
            .furnace => furnace_tile_texture,
            .tree_base => tree_base_tile_texture,
            .tree_0 => tree_0_tile_texture
        };
    }

    fn has_tile_data(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace => true,
            .air, .grass, .stone, .iron_ore, .coal_ore, .tree_base, .tree_0 => false
        };
    }

    // update called when a player places this tile
    fn placed_update(self: Self, tile_index: usize, tile_data: ?*TileData, game: *const Game) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                miner.valid_placement = game.background_tiles[tile_index].can_be_mined();
            },
            else => {},
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

    // update called every tick
    fn tick_update(self: Self, tile_index: usize, tile_data: ?*TileData, game: *const Game) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                if(!miner.valid_placement) return;

                if(miner.fuel_buffer == 0) {
                    miner.fuel_item_in_use = null;
                    miner.progress = 0;
                }

                if(miner.fuel_buffer == 0 and miner.input.count > 0) {
                    miner.fuel_buffer = miner.input.item_type.?.fuel_smelt_count().? * Tile.miner_max_progress;
                    miner.fuel_item_in_use = miner.input.item_type;
                    miner.input.count -= 1;
                    if(miner.input.count == 0) miner.input.item_type = null;
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
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                if(furnace.ingredient_input.count == 0) return;
                if(furnace.output.item_type != null and furnace.ingredient_input.item_type.?.item_when_smelted() != furnace.output.item_type) return;

                if(furnace.fuel_buffer == 0) {
                    furnace.fuel_item_in_use = null;
                    furnace.progress = 0;
                }

                if(furnace.fuel_buffer == 0 and furnace.fuel_input.count > 0) {
                    furnace.fuel_buffer += furnace.fuel_input.item_type.?.fuel_smelt_count().? * Tile.furnace_max_progress;
                    furnace.fuel_item_in_use = furnace.fuel_input.item_type;
                    furnace.fuel_input.count -= 1;
                    if(furnace.fuel_input.count == 0) furnace.fuel_input.item_type = null;
                }

                if(furnace.fuel_buffer > 0) {
                    furnace.progress += 1;
                    furnace.fuel_buffer -= 1;
                    if(furnace.progress >= Tile.furnace_max_progress) {
                        furnace.progress = 0;

                        const output_item = furnace.ingredient_input.item_type.?.item_when_smelted();
                        furnace.output.item_type = output_item;
                        furnace.output.count += 1;

                        furnace.ingredient_input.count -= 1;
                        if(furnace.ingredient_input.count == 0) {
                            furnace.ingredient_input.item_type = null;
                        }
                    }
                }
            },
            else => {},
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
            .air, .grass, .stone, .iron_ore, .coal_ore, .tree_base, .tree_0 => null
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
        }
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

    fn can_be_fuel(self: *const Self) bool {
        return switch (self.*) {  
            .coal, .wood => true,
            .miner, .iron, .furnace, .iron_ingot, .stone => false
        };
    }

    fn fuel_smelt_count(self: *const Self) ?i64 {
        return switch (self.*) {  
            .coal => 10,
            .wood => 5,
            .miner, .iron, .furnace, .iron_ingot, .stone => null
        };
    }

    fn can_be_smelted(self: *const Self) bool {
        return switch (self.*) {  
            .iron => true,
            .miner, .furnace, .coal, .iron_ingot, .stone, .wood => false
        };
    }

    fn item_when_smelted(self: *const Self) ?Item {
        return switch (self.*) {  
            .iron => .iron_ingot,
            .miner, .furnace, .coal, .iron_ingot, .stone, .wood => null
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
            .wood => wood_item_texture
        };
    }

    // used for associating an item to the tile that
    // is placed, while some tiles drop and item
    // that item cannot be used to place the tile
    // therefore you need to check with this
    fn get_tile_when_placed(self: *const Self) ?Tile {
        return switch (self.*) {
            .miner => .miner,
            .furnace => .furnace,
            .iron, .coal, .iron_ingot, .stone, .wood => null,
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
        game.player.inventory[0] = .{ .item_type = .miner, .count = 3 };
        game.player.inventory[1] = .{ .item_type = .iron, .count = 1 };
        game.player.inventory[2] = .{ .item_type = .coal, .count = 20 };
        game.player.inventory[3] = .{ .item_type = .coal, .count = 20 };
        game.player.inventory[4] = .{ .item_type = .furnace, .count = 10 };
        game.player.inventory[5] = .{ .item_type = .stone, .count = 10 };

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
                if(item.get_tile_when_placed()) |tile| {
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
                    const items_tile = current_selected_item.?.get_tile_when_placed();
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

            const texture = self.background_tiles[i].get_texture();
            if(texture == null) continue;
                

            draw_texture(texture.?, world_position.x, world_position.y, tile_width, tile_height);
        }

        // foreground tiles
        for(0..self.forground_tiles.len) |i| {
            const tile_position = get_x_and_y_from_tile_index(i);
            var world_position = tile_position.to_world_position();
            const forground_tile = self.forground_tiles[i];

            const texture = forground_tile.tile.get_texture();
            if(texture == null) continue;
                
            // update draw location based on the rotation
            // this is because textures are drawn from the 
            // top left corner
            if(forground_tile.tile.has_direction()) {
                world_position = move_draw_location_on_direction(world_position, forground_tile.direction);
            }

            draw_texture_pro(texture.?, world_position.x, world_position.y, tile_width, tile_height, forground_tile.direction.get_rotation(), raylib.WHITE);
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
                if(item.get_tile_when_placed()) |tile|  {
                    if(tile.has_direction()) {
                        world_position = move_draw_location_on_direction(world_position, self.player.placement_dirction);
                    }

                    const direction = if(tile.has_direction()) self.player.placement_dirction else .down;

                    draw_texture_pro(tile.get_texture().?, world_position.x, world_position.y, tile_width, tile_height, direction.get_rotation(), raylib.Fade(raylib.WHITE, 0.6));
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
                }
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
            tile.placed_update(tile_index, null, self);
        } else {
            tile.placed_update(tile_index, &self.tile_data.items[self.tile_data.items.len - 1], self);
        }

        return true;
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

pub fn main() !void {
    var game_arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer game_arena.deinit();
 
    const allocator = game_arena.allocator();

    init_raylib("factory game");
 
    // tile texture setup
    grass_tile_texture = raylib.LoadTexture(grass_tile_image_path);
    stone_tile_texture = raylib.LoadTexture(stone_tile_image_path);
    iron_ore_tile_texture = raylib.LoadTexture(iron_ore_tile_image_path);
    miner_tile_texture = raylib.LoadTexture(miner_tile_image_path);
    coal_ore_tile_texture = raylib.LoadTexture(coal_ore_tile_image_path);
    tree_base_tile_texture = raylib.LoadTexture(tree_base_image_path);
    tree_0_tile_texture = raylib.LoadTexture(tree_0_image_path);

    // item texture setup
    iron_item_texture = raylib.LoadTexture(iron_item_image_path);
    item_slot_texture = raylib.LoadTexture(item_slot_image_path);
    coal_item_texture = raylib.LoadTexture(coal_item_image_path);
    furnace_tile_texture = raylib.LoadTexture(furnace_tile_image_path);
    iron_ingot_item_texture = raylib.LoadTexture(iron_ingot_item_image_path);
    stone_item_texture = raylib.LoadTexture(stone_item_image_path);
    wood_item_texture = raylib.LoadTexture(wood_item_image_path);

    var game = try Game.init(allocator);
    game.generate_world();
    game.run();

    std.debug.print("{}\n", .{crafting_recipes.len});
}
