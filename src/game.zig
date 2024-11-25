const std = @import("std");

const raylib = @cImport(@cInclude("raylib.h"));
const raygui = @cImport(@cInclude("raygui.h"));
const fastnoise = @import("fastnoise.zig");

const render = @import("render.zig");
const m = @import("main.zig");

const State = m.State;
const Spline = m.Spline;
const get_alt_texture = m.get_alt_texture;
const get_item_texture = m.get_item_texture;
const get_tile_texture = m.get_tile_texture;
const load_resources = m.load_resources;

const tile_width: i64 = 16;
const tile_height: i64 = 16;

const world_tile_width = 150;
const world_tile_height = 150;

const player_inventory_width = 9;
const player_inventory_height = 9;
const player_inventory_size = player_inventory_height * player_inventory_width;

const player_speed: f32 = 450;

const debug_networks = true;
var debug_memory_usage = false; // toggled with m


const max_item_stack = 99;

/////////////////////////////////////////////////////////////////////////////////
///                         @state
/////////////////////////////////////////////////////////////////////////////////
pub const GameState = struct {
    const Self = @This();

    seed: i32,
    camera: raylib.Camera2D,
    player: Player,
    background_tiles: []Tile,
    forground_tiles: []ForgroundTile,
    tile_data: std.ArrayList(TileData),
    networks: std.ArrayList(Network),
    network_nodes: std.ArrayList(NetworkNode),
    world_gen_noise: fastnoise.Noise(f32),
    ui: UI,

    pub fn init(allocator: std.mem.Allocator) !Self {
        const background_tiles = try allocator.alloc(Tile, world_tile_width * world_tile_height);
        const forground_tiles = try allocator.alloc(ForgroundTile, world_tile_width * world_tile_height);

        for(0..background_tiles.len) |i| {
            background_tiles[i] = .air;
            forground_tiles[i] = .{.tile = .air, .direction = .down};
        }

        var self = Self {
            .seed = 16, 
            .camera = .{
                .target = .{
                    .x = @as(f32, @floatFromInt(world_tile_width * tile_width)) * 0.5,
                    .y = @as(f32, @floatFromInt(world_tile_height * tile_height)) * 0.5,
                },
                .offset = .{.x = window_width() / 2, .y = window_height() / 2},
                .rotation = 0,
                .zoom = 3.5,
            },
            .player = Player{
                // weird init style but first 9 slots give only placable flags and the rest nothing
                .inventory = 
                    [_]InventorySlot{.{.item = null, .count = 0, .flags = InventorySlot.only_placeable_flag}} ** player_inventory_width ++
                    [_]InventorySlot{.{.item = null, .count = 0, .flags = 0}} ** (player_inventory_size - player_inventory_width),
                .selected_item = 0,
                .placement_dirction = .down,
            },
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
            .ui = UI.init(),
        };

        if(true) {
            // temp adding items to inventory 
            self.player.inventory[0].item = .miner;         self.player.inventory[0].count = 99;
            self.player.inventory[1].item = .extractor;     self.player.inventory[1].count = 99;
            self.player.inventory[2].item = .belt;          self.player.inventory[2].count = 99;
            self.player.inventory[3].item = .splitter;      self.player.inventory[3].count = 99;
            self.player.inventory[4].item = .crusher;       self.player.inventory[4].count = 99;
            self.player.inventory[5].item = .furnace;       self.player.inventory[5].count = 99;
            self.player.inventory[6].item = .pole;          self.player.inventory[6].count = 99;
            self.player.inventory[7].item = .battery;       self.player.inventory[7].count = 99;
            self.player.inventory[8].item = .researcher;    self.player.inventory[8].count = 99;
            self.player.inventory[10].item = .coal;         self.player.inventory[10].count = 99;
            self.player.inventory[11].item = .coal;         self.player.inventory[11].count = 99;
            self.player.inventory[12].item = .coal;         self.player.inventory[12].count = 99;
            self.player.inventory[13].item = .coal;         self.player.inventory[13].count = 99;
            self.player.inventory[14].item = .coal;         self.player.inventory[14].count = 99;
            self.player.inventory[15].item = .coal;         self.player.inventory[15].count = 99;
            self.player.inventory[16].item = .red_science;  self.player.inventory[16].count = 99;
        } else {
            // default starting inventory
            self.player.inventory[0].item = .miner;         self.player.inventory[0].count = 1;
        }

        return self;
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @crafting
/////////////////////////////////////////////////////////////////////////////////
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
    },
    // extractor
    .{
        .output = .{.item = .extractor, .count = 1},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .iron_ingot, .count = 5},
            CraftingRecipe.empty_item()
        },
        .input_count = 1,
    },
    // belts
    .{
        .output = .{.item = .belt, .count = 5},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .iron_ingot, .count = 5},
            CraftingRecipe.empty_item()
        },
        .input_count = 1,
    },
    // splitter
    .{
        .output = .{.item = .splitter, .count = 1},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .iron_ingot, .count = 5},
            CraftingRecipe.empty_item()
        },
        .input_count = 1,
    },
    // pole
    .{
        .output = .{.item = .pole, .count = 5},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .wood, .count = 6},
            .{.item = .copper_ingot, .count = 2},
        },
        .input_count = 2,
    },
    // battery
    .{
        .output = .{.item = .battery, .count = 1},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .iron_ingot, .count = 1},
            .{.item = .copper_ingot, .count = 3},
        },
        .input_count = 2,
    },
    // researcher
    .{
        .output = .{.item = .researcher, .count = 1},
        .inputs = [_]CraftingRecipe.RecipeItem{
            .{.item = .iron_ingot, .count = 10},
            .{.item = .copper_ingot, .count = 10},
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
        .threshold = 0.2,
        .frequency = 0.15
    },
    .{
        .tile = .iron_ore,
        .threshold = 0.18,
        .frequency = 0.11
    },
    .{
        .tile = .copper_ore,
        .threshold = 0.20,
        .frequency = 0.12
    },
    .{
        .tile = .coal_ore,
        .threshold = 0.25,
        .frequency = 0.13
    },
};

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

    fn get_direction_from_adjacent_tile(self: *const Self, other: *const TilePosition) ?Direction {
        if(self.x == other.x and self.y + 1 == other.y) return .down;
        if(self.x == other.x and self.y - 1 == other.y) return .up;

        if(self.x - 1 == other.x and self.y == other.y) return .left;
        if(self.x + 1 == other.x and self.y == other.y) return .right;

        return null;
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

    fn get_relative_between_directions(self: Self, other: Direction) Direction {
        if(self == other) return .down;
        if(self.oppisite() == other) return .up;
        if(self.clockwise() == other) return .left;
        if(self.counter_clockwise() == other) return .right;

        unreachable;
    }

    // get direction relative to the current dierction
    //                up (relative right)
    //                         |
    //  left (relative up)   - O -   <--- *current* right (relative down)
    //                         |
    //                  down (relative left)
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
    const belt_max_progress     = 3; // tick for each slot in the belt

    const extractor_to_slot_count_cutoff = 5;

    air,
    grass,
    stone,
    iron_ore,
    copper_ore,
    miner,
    coal_ore,
    furnace,
    tree_base,
    tree_0,
    belt,
    pipe_merger,
    extractor,
    pole,
    battery,
    crusher,
    researcher,
    splitter,

    fn is_network_node(self: *const Self) bool {
        return switch (self.*) {
            .pole, .battery, .crusher, .researcher => true,
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

    fn extractor_can_take(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .belt => true,
            else => false,
        };
    }

    fn extractor_can_give(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .belt => true,
            else => false,
        };
    }

    fn belt_can_give(self: *const Self) bool {
        return switch (self.*) {
            .belt, .pipe_merger, .splitter => true,
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
            .belt, .pipe_merger, .extractor, .splitter => true,
            else => false,
        };
    }

    // can this tile be mined by a machine
    // different to if a player can break it
    fn can_be_mined(self: *const Self) bool {
        return switch (self.*) {
            .iron_ore, .copper_ore, .coal_ore, .stone => true,
            else => false,
        };
    }

    // item when this tile is mined by a machine
    // different to when a player breaks it
    fn item_when_mined(self: *const Self) ?Item {
        return switch (self.*) {
            .iron_ore => .iron,
            .copper_ore => .copper,
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
            .belt => .belt,
            .extractor => .extractor,
            .pole => .pole,
            .battery => .battery,
            .crusher => .crusher,
            .researcher => .researcher,
            .splitter => .splitter,
            else => null,
        };
    }

    fn get_texture(self: *const Self, tile_index: usize, state: *const State) raylib.Texture {
        return switch (self.*) {
            .belt => {
                const belt = &get_tile_data(state, tile_index).data.belt;
                return switch (belt.relative_output_direction) {
                    .up => get_tile_texture(.belt),
                    .left => get_tile_texture(.belt_left),
                    .right => get_tile_texture(.belt_right),
                    .down => unreachable
                };
            },
            else => self.get_default_texture()
        };
    }

    fn get_default_texture(self: *const Self) raylib.Texture {
        return switch (self.*) {
            .air => std.debug.panic("tried to get texture of air...\n", .{}),
            .grass => get_tile_texture(.grass),
            .stone => get_tile_texture(.stone),
            .iron_ore => get_tile_texture(.iron_ore),
            .copper_ore => get_tile_texture(.copper_ore),
            .miner => get_tile_texture(.miner),
            .coal_ore => get_tile_texture(.coal_ore),
            .furnace => get_tile_texture(.furnace),
            .tree_base => get_tile_texture(.tree_base),
            .tree_0 => get_tile_texture(.tree_0),
            .belt => get_tile_texture(.belt),
            .pipe_merger => get_tile_texture(.pipe_merger),
            .extractor => get_tile_texture(.extractor),
            .pole => get_tile_texture(.pole),
            .battery => get_tile_texture(.battery),
            .crusher => get_tile_texture(.crusher),
            .researcher => get_tile_texture(.researcher),
            .splitter => get_tile_texture(.splitter),
        };
    }

    fn has_tile_data(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .belt, .pipe_merger, .extractor, .crusher, .splitter, .researcher => true,
            else => false,
        };
    }

    // when a tile is place or updated can it
    // tuen to this tile to give items
    fn can_belt_turn_to(self: Self, from_index: usize, tile_index: usize, state: *const State) bool {
        switch (self) {
            .belt => {
                const current_position = get_tile_position_from_tile_index(tile_index);
                if(!current_position.is_valid()) {
                    return false;
                }

                const current_direction = state.g.forground_tiles[tile_index].direction;
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

                const current_direction = state.g.forground_tiles[tile_index].direction;

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
    fn removed_update(self: Self, tile_index: usize, tile_data: ?*TileData, state: *State) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                state.g.player.add_stack_from_inventory_slot_to_inventory(&miner.input);
                state.g.player.add_stack_from_inventory_slot_to_inventory(&miner.output);
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                state.g.player.add_stack_from_inventory_slot_to_inventory(&furnace.fuel_input);
                state.g.player.add_stack_from_inventory_slot_to_inventory(&furnace.ingredient_input);
                state.g.player.add_stack_from_inventory_slot_to_inventory(&furnace.output);
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

                if(state.g.forground_tiles[above_tile_index].tile.is_tree_tile()) {
                    const removed_tile = remove_tile_in_foreground(state, above_tile_index);
                    const item = removed_tile.?.item_when_broken();
                    _ = state.g.player.add_item_to_inventory(item.?, 1);
                }

            },
            else => {},
        }
    }

    fn tile_update(self: Self, tile_index: usize, tile_data: ?*TileData, state: *State) void {
        switch (self) {
            .miner => {
                var miner = &tile_data.?.data.miner;
                miner.valid_placement = state.g.background_tiles[tile_index].can_be_mined();
            },
            .belt => {
                const belt = &tile_data.?.data.belt;
                
                const position = get_tile_position_from_tile_index(tile_index);
                const current_direction = state.g.forground_tiles[tile_index].direction;

                const targets = [_]struct {position: TilePosition, relative_direction: Direction} {
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.relative(belt.relative_output_direction)), .relative_direction = belt.relative_output_direction},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.oppisite()), .relative_direction = .up},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.clockwise()), .relative_direction = .left},
                    .{.position = position.get_adjacent_tile_at_direction(current_direction.counter_clockwise()), .relative_direction = .right}
                };

                for(&targets) |*target| {
                    if(!target.position.is_valid()) {
                        continue;
                    }

                    const target_index = target.position.get_tile_index();
                    const target_tile = state.g.forground_tiles[target_index];

                    if(target_tile.tile.can_belt_turn_to(tile_index, target_index, state)) {
                        belt.relative_output_direction = target.relative_direction;
                        return;
                    }
                }
            },
            else => {}
        }
    }

    // update called every tick
    fn tick_update(self: Self, tile_index: usize, tile_data: ?*TileData, state: *State) void {
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
                        miner.fuel_buffer = miner.input.item.?.fuel_smelt_count().? * Tile.miner_max_progress;
                        miner.fuel_item_in_use = miner.input.item;
                        _ = miner.input.take_amount(1);
                    }
    
                    if(miner.fuel_buffer > 0) {
                        miner.progress += 1;
                        miner.fuel_buffer -= 1;
                        if(miner.progress >= Tile.miner_max_progress) {
                            miner.progress = 0;
    
                            const tile = state.g.background_tiles[tile_index];
                            const item = tile.item_when_mined() orelse unreachable; // if this failed there was a logic error before
                            miner.output.item = item;
                            miner.output.count += 1;
                        }
                    }
                }
            },
            .furnace => {
                var furnace = &tile_data.?.data.furnace;
                if(furnace.ingredient_input.is_empty()) return;
                if(furnace.output.item != null and furnace.ingredient_input.item.?.item_when_smelted() != furnace.output.item) return;

                if(furnace.fuel_buffer == 0) {
                    furnace.fuel_item_in_use = null;
                    furnace.progress = 0;
                }

                if(furnace.fuel_buffer == 0 and !furnace.fuel_input.is_empty()) {
                    furnace.fuel_buffer += furnace.fuel_input.item.?.fuel_smelt_count().? * Tile.furnace_max_progress;
                    furnace.fuel_item_in_use = furnace.fuel_input.item;
                    _ = furnace.fuel_input.take_amount(1);
                }

                if(furnace.fuel_buffer > 0) {
                    furnace.progress += 1;
                    furnace.fuel_buffer -= 1;
                    if(furnace.progress >= Tile.furnace_max_progress) {
                        furnace.progress = 0;

                        const output_item = furnace.ingredient_input.item.?.item_when_smelted();
                        furnace.output.item = output_item;
                        furnace.output.count += 1;

                        _ = furnace.ingredient_input.take_amount(1);
                    }
                }
            },
            .belt, => {
                const belt = &tile_data.?.data.belt;

                { // add progress to each non empty slot in the left and right storage
                    std.debug.assert(belt.left_storage.len == belt.right_storage.len);

                    for(0..belt.left_storage.len) |slot_number| {
                        if(!belt.left_storage[slot_number].is_empty() and  belt.left_progress[slot_number] < belt_max_progress) {
                            belt.left_progress[slot_number] += 1;
                        }

                        if(!belt.right_storage[slot_number].is_empty() and  belt.right_progress[slot_number] < belt_max_progress) {
                            belt.right_progress[slot_number] += 1;
                        }
                    }
                }

                // check to output items
                check_output: {
                    const current_position = get_tile_position_from_tile_index(tile_index);
                    const output_direction = state.g.forground_tiles[tile_index].direction.relative(belt.relative_output_direction);
                    const output_position = current_position.get_adjacent_tile_at_direction(output_direction);
                    if(!output_position.is_valid()) {
                        break :check_output;
                    }

                    const output_index = output_position.get_tile_index();
                    const output_tile = state.g.forground_tiles[output_index].tile;
                    
                    if(!output_tile.belt_can_give()) {
                        break :check_output;
                    }

                    var output_tile_data: ?*TileData = null;  
                    if(output_tile.has_tile_data()) {
                        output_tile_data = get_tile_data(state, output_index);
                    }

                    // try and give from left and right storage last slot
                    const last_left_slot = belt.last_left_slot();

                    if(last_left_slot.item) |item| {
                        if(belt.last_left_progress() >= Tile.belt_max_progress) {
                            if(output_tile.belt_give(item, tile_index, true, output_index, output_tile_data, state)) {
                                _ = last_left_slot.clear(); 
                            }
                        }
                    }

                    const last_right_slot = belt.last_right_slot();
                    if(last_right_slot.item) |item| {
                        if(belt.last_right_progress() >= Tile.belt_max_progress) {
                            if(output_tile.belt_give(item, tile_index, false, output_index, output_tile_data, state)) {
                                _ = last_right_slot.clear(); 
                            }
                        }
                    }
                }

                // move each item in the storage up by one if there is space
                {
                    std.debug.assert(belt.left_storage.len == belt.right_storage.len);

                    // go through each slot, if the next
                    // slot is empty then move it up by one if max progress
                    for(0..belt.left_storage.len - 1) |slot_number| {
                        const left_slot = &belt.left_storage[slot_number];
                        const left_progress = belt.left_progress[slot_number];

                        if(left_progress >= belt_max_progress) {
                            if(belt.left_storage[slot_number + 1].is_empty()) {
                                belt.left_storage[slot_number + 1].item = left_slot.item;
                                belt.left_progress[slot_number + 1] = 0;

                                _ = left_slot.clear();
                            }
                        }

                        const right_slot = &belt.right_storage[slot_number];
                        const right_progress = belt.right_progress[slot_number];

                        if(right_progress >= belt_max_progress) {
                            if(belt.right_storage[slot_number + 1].is_empty()) {
                                belt.right_storage[slot_number + 1].item = right_slot.item;
                                belt.right_progress[slot_number + 1] = 0;

                                _ = right_slot.clear();
                            }
                        }
                    }
                }

                if(false) {
                    std.debug.print("=== BELT DUMP ===\n", .{});

                    std.debug.print("=== RIGHT ===\n", .{});
                    for(&belt.left_storage, 0..) |*slot, i| {
                        std.debug.print("{}: {}\n", .{slot.*, i});
                    }

                    std.debug.print("=== LEFT ===\n", .{});
                    for(&belt.right_storage, 0..) |*slot, i| {
                        std.debug.print("{}: {}\n", .{slot.*, i});
                    }
                }
            },
            .splitter, => {
                const splitter = &tile_data.?.data.splitter;

                if(splitter.item == null) {
                    return;
                }

                // check to output item
                check_output: {
                    // check the oppisite of the last output direction
                    // if can give then give it and change last direcion and end
                    // if it cant try the other side
                    const current_position = get_tile_position_from_tile_index(tile_index);

                    const output_directions = .{
                        // always check the oppisite of the last dfirection first
                        // if that fails then try the next side
                        state.g.forground_tiles[tile_index].direction.relative(splitter.last_output_direction.oppisite()),
                        state.g.forground_tiles[tile_index].direction.relative(splitter.last_output_direction),
                    };

                    const output_positions = [_]TilePosition{
                        current_position.get_adjacent_tile_at_direction(output_directions[0]),
                        current_position.get_adjacent_tile_at_direction(output_directions[1])
                    };

                    for(&output_positions) |*output_position| {
                        if(!output_position.is_valid()) {
                            break :check_output;
                        }
    
                        const output_index = output_position.get_tile_index();
                        const output_tile = state.g.forground_tiles[output_index].tile;
                        
                        if(!output_tile.belt_can_give()) {
                            break :check_output;
                        }
    
                        var output_tile_data: ?*TileData = null;  
                        if(output_tile.has_tile_data()) {
                            output_tile_data = get_tile_data(state, output_index);
                        }
    
                        if(output_tile.belt_give(splitter.item.?, tile_index, true, output_index, tile_data, state)) {
                            splitter.item = null;
    
                            switch (splitter.last_output_direction) {
                                .left => splitter.last_output_direction = .right,
                                .right => splitter.last_output_direction = .left,
                                else => unreachable,
                            }

                            break :check_output;
                        }
                    }
                }
            },
            .pipe_merger => {
                const pipe_merger = &tile_data.?.data.pipe_merger;

                { // progress items in the pipe
                    for(&pipe_merger.storage) |*slot| {
                        if(slot.item != null and slot.progress < belt_max_progress) {
                            slot.progress += 1;
                        }
                    }
                }

                // check to output items
                check_output: {
                    const current_position = get_tile_position_from_tile_index(tile_index);
                    const output_direction = state.g.forground_tiles[tile_index].direction.relative(pipe_merger.relative_output_direction);
                    const output_position = current_position.get_adjacent_tile_at_direction(output_direction);
                    if(!output_position.is_valid()) {
                        break :check_output;
                    }

                    const output_index = output_position.get_tile_index();
                    const output_tile = state.g.forground_tiles[output_index].tile;
                    
                    if(!output_tile.belt_can_give()) {
                        break :check_output;
                    }

                    var output_tile_data: ?*TileData = null;  
                    if(output_tile.has_tile_data()) {
                        output_tile_data = get_tile_data(state, output_index);
                    }

                    for(&pipe_merger.storage) |*slot| {
                        if(slot.progress >= Tile.belt_max_progress) {
                            if(output_tile.belt_give(slot.item.?, tile_index, false, output_index, output_tile_data, state)) {
                                slot.item = null;
                                slot.progress = 0;
                            }        
                        }
                    }
                }
            },
            .extractor => {
                const extractor = &tile_data.?.data.extractor;
                _ = extractor; // autofix

                const current_position = get_tile_position_from_tile_index(tile_index);
                if(!current_position.is_valid()) {
                    return;
                }

                const input_direction = state.g.forground_tiles[tile_index].direction;
                const output_direction = input_direction.oppisite();

                var input_slots: [2]?*InventorySlot = .{null, null};
                var output_slots: [2]?*InventorySlot = .{null, null};

                get_input_slot: {
                    const input_position = current_position.get_adjacent_tile_at_direction(input_direction);
                    if(!input_position.is_valid()) {
                        break :get_input_slot;
                    }

                    const input_index = input_position.get_tile_index();
                    const input_tile = state.g.forground_tiles[input_index].tile;
                    
                    if(!input_tile.extractor_can_take()) {
                        break :get_input_slot;
                    }

                    input_slots = input_tile.get_output_slots_for_extractor(input_index, state);
                }

                get_output_slot: {
                    const output_position = current_position.get_adjacent_tile_at_direction(output_direction);
                    if(!output_position.is_valid()) {
                        break :get_output_slot;
                    }

                    const output_index = output_position.get_tile_index();
                    const output_tile = state.g.forground_tiles[output_index].tile;
                    
                    if(!output_tile.extractor_can_give()) {
                        break :get_output_slot;
                    }

                    output_slots = output_tile.get_input_slots_for_extractor(output_index, tile_index, state); 
                }

                // move items from output to input
                {
                    for(0..output_slots.len) |out_index| {
                        if(output_slots[out_index] == null) {
                            continue;
                        }

                        const output_slot = output_slots[out_index].?;
                        
                        if(output_slot.is_full()) {
                            continue;
                        }

                        if(output_slot.count >= Tile.extractor_to_slot_count_cutoff) {
                            continue;
                        }

                        for(0..input_slots.len) |in_index| {
                            if(input_slots[in_index] == null) {
                                continue;
                            }

                            const input_slot = input_slots[in_index].?;

                            if(input_slot.is_empty()) {
                                continue;
                            }

                            if(!output_slot.is_compatible(input_slot.item.?)) {
                                continue;
                            }
                            
                            if(output_slot.has_flag(InventorySlot.only_smeltable_flag) and !input_slot.item.?.can_be_smelted()) {
                                continue;
                            }

                            if(output_slot.has_flag(InventorySlot.only_fuel_flag) and !input_slot.item.?.can_be_fuel()) {
                                continue;
                            }

                            output_slot.count += 1;
                            output_slot.item = input_slot.item;

                            _ = input_slot.take_amount(1);
                            break;
                        }
                    }
                }
            },
            .crusher => {
                var crusher = &tile_data.?.data.crusher;
                const node = get_network_node(state, tile_index);
                var network = get_network(state, node.network_id);


                { // crushing logic
                    if(crusher.input.is_empty() or !network.consume_power(20)) {
                        crusher.progress = 0;
                        return;
                    }
    
                        crusher.progress += 1;
                        if(crusher.progress >= Tile.crusher_max_progress) {
                            crusher.progress = 0;
    
                            const item = crusher.input.item.?.item_when_crushed() orelse unreachable;
                            crusher.output.item = item;
                            crusher.output.count += 1;

                            _ = crusher.input.take_amount(1);
                        }
                    }
            },
            .researcher => {
                var researcher = &tile_data.?.data.researcher;
                const node = get_network_node(state, tile_index);
                var network = get_network(state, node.network_id);


                { // research logic
                    if(researcher.input.is_empty() or !network.consume_power(20)) {
                        researcher.progress = 0;
                        return;
                    }
    
                    researcher.progress += 1;

                    const current_item = researcher.input.item.?;

                    if(researcher.progress >= current_item.science_amount()) {
                        researcher.progress = 0;
                        _ = researcher.input.take_amount(1);
                    }
                }
            },
            else => unreachable,
        }
    }

    fn player_interacted(self: Self, tile_index: usize, state: *State) void {
        switch (self) {
            .miner, .furnace, .crusher, .researcher => {
                open_inventory(state, tile_index);
            },
            .belt => {
                var belt = &get_tile_data(state, tile_index).data.belt;

                for(&belt.left_storage, 0..) |*slot, i| {
                    if(slot.is_empty()) {
                        continue; 
                    }

                    if(state.g.player.add_item_to_inventory(slot.item.?, 1) == 0) {
                        _ = slot.clear();
                        belt.left_progress[i] = 0;
                    }
                }

                for(&belt.right_storage, 0..) |*slot, i| {
                    if(slot.is_empty()) {
                        continue; 
                    }

                    if(state.g.player.add_item_to_inventory(slot.item.?, 1) == 0) {
                        _ = slot.clear();
                        belt.left_progress[i] = 0;
                    }
                }
            },
            else => {},
        }
    }

    // called before the regular tick update, returns the amount of power that this tile
    // is generating for the current tick (just after this one)
    fn tick_network_generator_amount(self: Self, state: *const State) usize {
        _ = state; // autofix
        return switch (self) {
            .battery => 100,
            else => std.debug.panic("tried to get power generator amount from a non-generator\n", .{})
        };
    }

    fn extractor_take(self: Self, tile_index: usize, tile_data: ?*TileData, state: *const State) ?Item {
        _ = tile_index; // autofix
        _ = state; // autofix
        switch (self) {
            .miner => {
                const miner = &tile_data.?.data.miner;

                if(miner.output.is_empty()) {
                    return null;
                }

                const output_item = miner.output.item;
                _ = miner.output.take_amount(1);
                return output_item;
            },
            .belt => {
                const belt = &tile_data.?.data.belt;

                var item: ?Item = null;

                const last_left_slot = belt.last_left_slot();
                const last_right_slot = belt.last_right_slot();

                if(!last_left_slot.is_empty()) {
                    item = last_left_slot.item;
                    _ = last_left_slot.clear();
                } else if(!last_right_slot.is_empty()) {
                    item = last_right_slot.item;
                    _ = last_right_slot.clear();
                }

                return item;
            },
            else => {
                unreachable;
            }
        }
    }

    fn get_input_slots_for_extractor(self: Self, tile_index: usize, from_index: usize, state: *const State) [2]?*InventorySlot {
        switch (self) {
            .miner => {
                const miner = &get_tile_data(state, tile_index).data.miner;
                return .{&miner.input, null};
            },
            .furnace => {
                const furnace = &get_tile_data(state, tile_index).data.furnace;
                return .{&furnace.fuel_input, &furnace.ingredient_input};
            },
            .crusher => {
                const crusher = &get_tile_data(state, tile_index).data.crusher;
                return .{&crusher.input, null};
            },
            .belt => {
                const belt = &get_tile_data(state, tile_index).data.belt;

                const current_position = get_tile_position_from_tile_index(tile_index);
                const from_position = get_tile_position_from_tile_index(from_index);
                const current_direction = state.g.forground_tiles[tile_index].direction;

                const from_direction = current_position.get_direction_from_adjacent_tile(&from_position) orelse std.debug.panic("tried to input to a tile when not beside\n", .{});
                const relative_direction = current_direction.get_relative_between_directions(from_direction);

                const target_storage_slot = switch (relative_direction) {
                    .up, .right => &belt.right_storage[0],
                    .down, .left => &belt.left_storage[0],
                };

                return .{target_storage_slot, null};
            },
            else => {
                unreachable;
            }
        }
    }

    fn get_output_slots_for_extractor(self: Self, tile_index: usize, state: *const State) [2]?*InventorySlot {
        switch (self) {
            .miner => {
                const miner = &get_tile_data(state, tile_index).data.miner;
                return .{&miner.output, null};
            },
            .furnace => {
                const furnace = &get_tile_data(state, tile_index).data.furnace;
                return .{&furnace.output, null};

            },
            .crusher => {
                const crusher = &get_tile_data(state, tile_index).data.crusher;
                return .{&crusher.output, null};
            },
            .belt => {
                const belt = &get_tile_data(state, tile_index).data.belt;
                return .{belt.last_left_slot(), belt.last_right_slot()};
            },
            else => {
                unreachable;
            }
        }
    }

    fn belt_give(self: Self, item: Item, from_index: usize, is_left_side: bool, tile_index: usize, tile_data: ?*TileData, state: *const State) bool {
        switch (self) {
            .belt => {
                const belt = &get_tile_data(state, tile_index).data.belt;

                const current_position = get_tile_position_from_tile_index(tile_index);
                const from_position = get_tile_position_from_tile_index(from_index);
                const current_direction = state.g.forground_tiles[tile_index].direction;

                const from_direction = current_position.get_direction_from_adjacent_tile(&from_position) orelse std.debug.panic("tried to input to a tile when not beside\n", .{});
                const relative_direction = current_direction.get_relative_between_directions(from_direction);

                const target_storage_slot: ?*InventorySlot = switch (relative_direction) {
                    .up => null,
                    .right => if(is_left_side) &belt.right_storage[1] else &belt.right_storage[4],
                    .left => if(is_left_side) &belt.left_storage[4] else &belt.left_storage[1],
                    .down => if(is_left_side) &belt.left_storage[0] else &belt.right_storage[0],
                };

                if(target_storage_slot) |slot| {
                    if(!slot.is_empty()) {
                        return false;
                    }

                    slot.item = item;
                    return true;
                }

                return false;
            },
            .splitter => {
                const splitter = &get_tile_data(state, tile_index).data.splitter;

                if(splitter.item != null) {
                    return false;
                }

                const current_position = get_tile_position_from_tile_index(tile_index);
                const from_position = get_tile_position_from_tile_index(from_index);
                const current_direction = state.g.forground_tiles[tile_index].direction;

                const from_direction = current_position.get_direction_from_adjacent_tile(&from_position) orelse std.debug.panic("tried to input to a tile when not beside\n", .{});
                const relative_from_direction = current_direction.get_relative_between_directions(from_direction);

                // only accept input when it is from the bottom
                switch (relative_from_direction) {
                    .down => {},
                    else => return false,
                }

                splitter.item = item;
                return true;
            },
            .pipe_merger => {
                const pipe_merger = &tile_data.?.data.pipe_merger;

                const current_position = get_tile_position_from_tile_index(tile_index);
                const current_direction = state.g.forground_tiles[tile_index].direction;

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

                for(&pipe_merger.storage) |*slot| {
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
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_fuel_flag
                        },
                        .output = InventorySlot{
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_take_flag,
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
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_fuel_flag
                        },
                        .ingredient_input = InventorySlot{
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_smeltable_flag
                        },
                        .output = InventorySlot{
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_take_flag
                        },
                        .fuel_item_in_use = null,
                        .progress = 0,
                        .fuel_buffer = 0,
                    }
                },
            },
            .belt => TileData{
                .tile_index = 0,
                .data = .{
                    .belt = .{
                        .right_storage = [_]InventorySlot{.{.item = null, .count = 0, .flags = 0}} ** 5,
                        .left_storage =  [_]InventorySlot{.{.item = null, .count = 0, .flags = 0}} ** 5,
                        .left_progress = std.mem.zeroes([5]usize),
                        .right_progress = std.mem.zeroes([5]usize),
                        .relative_output_direction = .up,
                    },
                },
            },
            .splitter => TileData{
                .tile_index = 0,
                .data = .{
                    .splitter = .{
                        .item = null,
                        .last_output_direction = .right, // will always try and output left right
                    },
                }
            },
            .pipe_merger => TileData{
                .tile_index = 0,
                .data = .{
                    .pipe_merger = .{
                        .storage = std.mem.zeroes([5]BeltStorageSlot),
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
                            .item = null,
                            .count = 0,
                            .flags = 0,
                        },
                        .output = InventorySlot{
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_take_flag,
                        },
                        .progress = 0,
                    },
                },
            },
            .researcher => TileData{
                .tile_index = 0,
                .data = .{
                    .researcher = .{
                        .input = InventorySlot{
                            .item = null,
                            .count = 0,
                            .flags = InventorySlot.only_science_flag,
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
        pipe_merger: struct{
            storage: [5]BeltStorageSlot,
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
        belt: struct{
            left_storage: [5]InventorySlot,
            right_storage: [5]InventorySlot,
            left_progress: [5]usize,
            right_progress: [5]usize,
            relative_output_direction: Direction,

            fn last_left_slot(self: *@This()) *InventorySlot {
                return &self.left_storage[self.left_storage.len - 1];
            }

            fn last_right_slot(self: *@This()) *InventorySlot {
                return &self.right_storage[self.right_storage.len - 1];
            }

            fn last_left_progress(self: *@This()) usize {
                return self.left_progress[self.left_storage.len - 1];
            }

            fn last_right_progress(self: *@This()) usize {
                return self.right_progress[self.right_storage.len - 1];
            }
        },
        splitter: struct {
            item: ?Item,
            last_output_direction: Direction,
        },
        extractor: struct {
            item: ?Item,
        },
        crusher: struct{
            input: InventorySlot,
            output: InventorySlot,
            progress: i64,
        },
        researcher: struct{
            input: InventorySlot,
            progress: i64,
        },
    },
};

const Item = enum {
    const Self = @This();

    iron,
    copper,
    miner,
    coal,
    furnace,
    iron_ingot,
    copper_ingot,
    stone,
    wood,
    belt,
    pipe_merger,
    extractor,
    pole,
    battery,
    crusher,
    researcher,
    splitter,
    red_science,

    fn is_science(self: *const Self) bool {
        return switch (self.*) {  
            .red_science => true,
            else => false,
        };
    }

    fn science_amount(self: *const Self) usize {
        return switch (self.*) {  
            .red_science => 50,
            else => unreachable,
        };
    }

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
            .iron, .copper => true,
            else => false,
        };
    }

    fn item_when_smelted(self: *const Self) ?Item {
        return switch (self.*) {  
            .iron => .iron_ingot,
            .copper => .copper_ingot,
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
            .iron => get_item_texture(.iron),
            .copper => get_item_texture(.copper),
            .miner => get_tile_texture(.miner),
            .coal => get_item_texture(.coal),
            .furnace => get_tile_texture(.furnace),
            .iron_ingot => get_item_texture(.iron_ingot),
            .copper_ingot => get_item_texture(.copper_ingot),
            .stone => get_item_texture(.stone),
            .wood => get_item_texture(.wood),
            .belt => get_tile_texture(.belt),
            .pipe_merger => get_tile_texture(.pipe_merger),
            .extractor => get_tile_texture(.extractor),
            .pole => get_tile_texture(.pole),
            .battery => get_tile_texture(.battery),
            .crusher => get_tile_texture(.crusher),
            .researcher => get_tile_texture(.researcher),
            .splitter => get_tile_texture(.splitter),
            .red_science => get_item_texture(.red_science),
        };
    }

    fn can_be_placed(self: *const Self) bool {
        return switch (self.*) {
            .miner, .furnace, .belt, .pipe_merger, .extractor, .pole, .battery, .crusher, .researcher, .splitter => true,
            else => false,
        };
    }

    fn tile_when_placed(self: *const Self) Tile {
        return switch (self.*) {
            .miner => .miner,
            .furnace => .furnace,
            .belt => .belt,
            .pipe_merger => .pipe_merger,
            .extractor => .extractor,
            .pole => .pole,
            .battery => .battery,
            .crusher => .crusher,
            .researcher => .researcher,
            .splitter => .splitter,
            else => unreachable,
        };
    } 
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
        render.draw_texture_tint(get_alt_texture(.item_slot), self.x, self.y, self.size, self.size, tint);

        if(inventory_slot.item) |item| {                     
            const item_texture = item.get_texture();
            render.draw_texture(item_texture, self.x, self.y, self.size, self.size);
            
            // max size is 99 so 2 bytes is fine here
            const string = std.fmt.allocPrintZ(allocator, "{}", .{inventory_slot.count}) catch unreachable;
            render.text(string, self.x, self.y, 20, raylib.WHITE);
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

const UICraftingButton = struct {
    const Self = @This();

    x: f32,
    y: f32,
    size: f32,
    recipe: *const CraftingRecipe,

    fn draw(self: *const Self, tint: raylib.Color, allocator: std.mem.Allocator) void {
        render.draw_texture_tint(get_alt_texture(.item_slot), self.x, self.y, self.size, self.size, tint);

        const item_texture = self.recipe.output.item.get_texture();
        render.draw_texture(item_texture, self.x, self.y, self.size, self.size);
         
        const string = std.fmt.allocPrintZ(allocator, "{}", .{self.recipe.output.count}) catch unreachable;
        render.text(string, self.x, self.y, 20, raylib.WHITE);
    }

    fn mouse_over(self: *const Self, mouse_position: WorldPosition) bool {
        return mouse_position.x >= self.x and mouse_position.x <= (self.x + self.size) 
            and mouse_position.y >= self.y and mouse_position.y <= (self.y + self.size);
    }
};

const UI = struct {
    const Self = @This();

    in_hand: InventorySlot,
    player_inventory_panel: [player_inventory_size]UIIInventorySlot,
    crafting_panel: [crafting_recipes.len]UICraftingButton,
    miner_panel: struct {
        tile_index: usize,
        input_slot: UIIInventorySlot,
        output_slot: UIIInventorySlot,
    },
    furnace_panel: struct {
        tile_index: usize,
        input_fuel_slot: UIIInventorySlot,
        input_ingredient_slot: UIIInventorySlot,
        output_slot: UIIInventorySlot,
    },
    crusher_panel: struct {
        tile_index: usize,
        input_slot: UIIInventorySlot,
        output_slot: UIIInventorySlot,
    },
    researcher_panel: struct {
        tile_index: usize,
        input_slot: UIIInventorySlot,
    },
    current_panel: enum {
        none,
        crafting,
        miner,
        furnace,
        crusher,
        researcher
    },

    fn init() Self {
        var ui: Self = undefined;

        ui.in_hand = InventorySlot{
            .item = null,
            .count = 0,
            .flags = 0,
        };

        // player inventory panel init
        {
            const padding = 5;
            const slot_size = 50;
            const total_width = (player_inventory_width * slot_size) + ((player_inventory_width - 1) * padding);
            const total_height = (player_inventory_height * slot_size) + ((player_inventory_height - 1) * padding);

            const start_x = (window_width() * 0.5) - total_width - 20;
            const start_y = (window_height() * 0.5) - (total_height * 0.5);

            for(&ui.player_inventory_panel, 0..) |*ui_slot, _i| {
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

        // crafting panel init
        {
            const padding = 5;
            const slot_size = 50;
            const number_of_columns = 9;

            const total_height = (number_of_columns * slot_size) + ((number_of_columns - 1) * padding);

            const start_x = (window_width() * 0.5) + 20;
            const start_y = (window_height() * 0.5) - (total_height * 0.5);

            for(&ui.crafting_panel, 0..) |*crafting_button, _i| {
                const i = @as(f32, @floatFromInt(_i));

                const x_index = @mod(i, number_of_columns);
                const y_index = @divFloor(i, number_of_columns);

                crafting_button.x = start_x + (slot_size * x_index) + (padding * x_index);
                crafting_button.y = start_y + (slot_size * y_index) + (padding * y_index);
                crafting_button.size = slot_size;
                crafting_button.recipe = &crafting_recipes[_i];
            }
        }

        // miner panel init
        {
            const slot_size = 50;
            
            const input_slot_x = (window_width() * 0.5) + 100 - (slot_size * 0.5);
            const output_slot_x = (window_width() * 0.5) + 300 - (slot_size * 0.5);
    
            const slot_y = (window_height() * 0.5) - (slot_size * 0.5);
    
            ui.miner_panel = .{
                .tile_index = 0,
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
            };
        }

        // furnace panel init
        {
            const slot_size = 50;

            const input_fuel_slot_x = (window_width() * 0.5) + 80 - (slot_size * 0.5);
            const input_ingredient_slot_x = input_fuel_slot_x + slot_size + 5;
            const output_slot_x = (window_width() * 0.5) + 300 - (slot_size * 0.5);
    
            const slot_y = (window_height() * 0.5) - (slot_size * 0.5);
    
            ui.furnace_panel =.{
                .tile_index = 0,
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
            };
        }

        // crusher inventory init
        {
            const slot_size = 50;
            
            const input_slot_x = (window_width() * 0.5) + 100 - (slot_size * 0.5);
            const output_slot_x = (window_width() * 0.5) + 300 - (slot_size * 0.5);
    
            const slot_y = (window_height() * 0.5) - (slot_size * 0.5);

            ui.crusher_panel = .{
                .tile_index = 0,
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
            };
        }

        // researcher inventory init
        {
            const slot_size = 50;
            
            const input_slot_x = (window_width() * 0.5) + 100 - (slot_size * 0.5);
            const slot_y = (window_height() * 0.5) - (slot_size * 0.5);

            ui.researcher_panel = .{
                .tile_index = 0,
                .input_slot = .{
                    .x = input_slot_x,
                    .y = slot_y,
                    .size = slot_size,
                    .flags = 0,
                },
            };
        }

        return ui;
    } 
};

fn open_inventory(state: *State, tile_index: usize) void {
    // cant open inventory when one is already open
    std.debug.assert(state.g.ui.current_panel == .none);

    const tile = state.g.forground_tiles[tile_index].tile;

    switch (tile) {
        .miner => {
            state.g.ui.current_panel = .miner;
            state.g.ui.miner_panel.tile_index = tile_index;
        },
        .furnace => {
            state.g.ui.current_panel = .furnace;
            state.g.ui.furnace_panel.tile_index = tile_index;
        },
        .crusher => {
            state.g.ui.current_panel = .crusher;
            state.g.ui.crusher_panel.tile_index = tile_index;
        },
        .researcher => {
            state.g.ui.current_panel = .researcher;
            state.g.ui.researcher_panel.tile_index = tile_index;
        },
        else => unreachable,
    } 
}

fn close_inventory(state: *State) void {
    state.g.ui.current_panel = .none;
        
    state.g.ui.miner_panel.tile_index = 0;
    state.g.ui.furnace_panel.tile_index = 0;
    state.g.ui.crusher_panel.tile_index = 0;
    state.g.ui.researcher_panel.tile_index = 0;
}

fn is_viewing_inventory(state: *const State) bool {
    return switch (state.g.ui.current_panel) {
        .none => false,
        else => true,
    };
}

/////////////////////////////////////////////////////////////////////////////////
///                         @inventory
/////////////////////////////////////////////////////////////////////////////////
const InventorySlot = struct {
    const only_smeltable_flag: u8     = 0b00000001;
    const only_fuel_flag: u8          = 0b00000010;
    const only_take_flag: u8          = 0b00000100;
    const only_placeable_flag: u8     = 0b00001000;
    const only_crushable_flag: u8     = 0b00010000;
    const only_science_flag: u8       = 0b00100000;

    const Self = @This();

    item: ?Item,
    count: usize,
    flags: u8,

    // takes the given amount from the slot
    // if there is not enough then the slot is
    // emptied, the actual amount removed is 
    // returned
    fn take_amount(self: *Self, count: usize) usize {
        const amount_taken = if(count > self.count) self.count else count;
        self.count -= amount_taken;

        if(self.count == 0) {
            self.item = null;
        }

        return amount_taken;
    }

    // moves all items to another slot
    // checks need to be done before this to
    // make sure no items or lost
    fn move_items_to(self: *Self, other: *Self) void {
        if(self.item == null) {
            return;
        }

        if(other.item != null and self.item != other.item) {
            return;
        }

        other.item = self.item;

        const max_to_add = max_item_stack - other.count;
        other.count += self.take_amount(max_to_add);
    }

    fn move_half_items_to(self: *Self, other: *Self) void {
        if(self.item == null) {
            return;
        }

        if(other.item != null and self.item != other.item) {
            return;
        }

        other.item = self.item;
        const half_current = self.count / 2;
        other.count += self.take_amount(half_current);
    }

    fn swap(self: *Self, other: *Self) void {
        const other_copy = other.*;

        other.item = self.item;
        other.count = self.count;

        self.item = other_copy.item;
        self.count = other_copy.count;
    }

    fn clear(self: *Self) usize {
        if(self.item == null) {
            return 0;
        }

        const current_count = self.count;
        self.item = null;
        self.count = 0;

        return current_count;
    }

    fn is_empty(self: *const Self) bool {
        return self.item == null;
    }

    fn is_full(self: *const Self) bool {
        return self.count == max_item_stack;
    }

    fn is_compatible(self: *const Self, item: Item) bool {
        return self.item == null or self.item.? == item;
    }

    fn has_flag(self: *const Self, flag: u8) bool {
        return (self.flags & flag) == flag;
    }
};

const BeltStorageSlot = struct {
    const Self = @This();

    item: ?Item,
    progress: i64,

    fn clear(self: *Self) void {
        self.item = null;
        self.progress = 0;
    }

    fn is_empty(self: *Self) bool {
        return self.item == null;
    }

    fn is_complete(self: *Self) bool {
        return self.progress >= Tile.belt_max_progress;
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @player
/////////////////////////////////////////////////////////////////////////////////
const Player = struct {
    const Self = @This();

    inventory: [player_inventory_size]InventorySlot,
    selected_item: usize,
    placement_dirction: Direction,

    fn can_craft_recipe(self: *const Self, recipe: *const CraftingRecipe) bool {
        for(&recipe.inputs) |*input| {
            var inputs_found: usize = 0;

            for(&self.inventory) |*slot| {
                if(slot.item == input.item)  {
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
                if(slot.item == input.item)  {
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
        return if (slot.count == 0) null else slot.item;
    }

    fn get_selected_inventory_slot(self: *Self) *InventorySlot {
        return &self.inventory[self.selected_item];
    }

    // removes one of the current selected item in the
    // inventory, if there is no items in the current slot
    // then null is returned
    fn try_pop_selected_item(self: *Self) ?Item {
        const slot = self.get_selected_inventory_slot();
        const item = slot.item;
        
        if(item == null) {
            return null;
        }

        slot.count -= 1;
        if(slot.count == 0) slot.item = null;

        return item;
    }

    // add what is possible to the inventory from a given slot
    // this may not change the inventory slot or it may clear 
    // it completely
    fn add_stack_from_inventory_slot_to_inventory(self: *Self, inventory_slot: *InventorySlot) void {
        if(inventory_slot.item == null) return;

        const remaining = self.add_item_to_inventory(inventory_slot.item.?, inventory_slot.count);
        inventory_slot.count = remaining;

        if(inventory_slot.count == 0) {
            inventory_slot.item = null;
        }
    }

    // add what is possible to the inventory slot from the
    // current selected item in the inventory, this may not
    // actually move the items or it may empty the selected
    // slot completly
    fn add_stack_from_selected_slot_to_inventory_slot(self: *Self, inventory_slot: *InventorySlot) void {
        const selected_item_type = self.get_selected_item_type() orelse return;
        
        if(inventory_slot.item != null and selected_item_type != inventory_slot.item) return;

        inventory_slot.item = selected_item_type;

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
            if(slot.item != item) continue;
            
            const space_remaining = max_item_stack - slot.count;
            const amount_to_add = if(remaining_count > space_remaining) space_remaining else remaining_count;

            slot.count += amount_to_add;
            remaining_count -= amount_to_add;
        }

       
        for(0..self.inventory.len) |i| {
            if(remaining_count <= 0) break;
            
            const slot = &self.inventory[i];
            if(slot.item != null) continue;

            if(i < 9 and !item.can_be_placed()) continue;

            const amount_to_add = if (count > max_item_stack) max_item_stack else count;
            
            slot.item = item;
            slot.count += amount_to_add;
            remaining_count -= amount_to_add;
        }

        return remaining_count;
    }
};

/////////////////////////////////////////////////////////////////////////////////
///                         @start
/////////////////////////////////////////////////////////////////////////////////
pub fn start(state: *State) void {
    generate_world(state);
}

/////////////////////////////////////////////////////////////////////////////////
///                         @update
/////////////////////////////////////////////////////////////////////////////////
pub fn update(state: *State, delta_time: f32) void {
    state.tick_timer += delta_time;

    if(state.tick()) {
        power_update(state);
        tick_update(state);
    }

    if(state.key(raylib.KEY_L) == .down) {
        if(state.input.left_shift) {
            load_game_data(state) catch |err| {
                std.debug.print("error loading game data{any}\n", .{err});
            };
        } else {
            dump_game_data(state) catch |err| {
                std.debug.print("error dumping game data{any}\n", .{err});
            };
        }
    }

    // tick changing update
    {
        // also min tick speed
        const tick_increment = 0.01;

        if(state.key(raylib.KEY_LEFT) == .down) {
            if(state.input.left_shift) {
                state.time_per_tick -= 10 * tick_increment; 
            } else {
                state.time_per_tick -= tick_increment; 
            }
            
            std.debug.print("tick speed {d}\n", .{state.time_per_tick});
        }

        if(state.key(raylib.KEY_RIGHT) == .down) {
            if(state.input.left_shift) {
                state.time_per_tick += 10 * tick_increment; 
            } else {
                state.time_per_tick += tick_increment; 
            }

            std.debug.print("tick speed {d}\n", .{state.time_per_tick});
        }

        if(state.time_per_tick < tick_increment) {
            state.time_per_tick = tick_increment;
        }
    }

    // basic input update
    {
        if(state.key(raylib.KEY_T) == .down) {
            load_resources() catch |err| {
                std.debug.panic("error when reloading textures during runtime: {}\n", .{err});
            };
        }
    
        if(state.key(raylib.KEY_K) == .down) {
            debug_memory_usage = !debug_memory_usage;
        }
    
        // player update
        if(state.key(raylib.KEY_W) == .pressing) {
            state.g.camera.target.y -= player_speed * delta_time;
        }
    
        if(state.key(raylib.KEY_A) == .pressing) {
            state.g.camera.target.x -= player_speed * delta_time;
        }
    
        if(state.key(raylib.KEY_S) == .pressing) {
            state.g.camera.target.y += player_speed * delta_time;
        }
    
        if(state.key(raylib.KEY_D) == .pressing) {
            state.g.camera.target.x += player_speed * delta_time;
        }

        // ui controls
        if(state.key(raylib.KEY_E) == .down) {
            if(state.g.ui.current_panel != .none) {
                close_inventory(state);
            } else {
                state.g.ui.current_panel = .crafting; 
            }
        }
    
        if(state.key(raylib.KEY_R) == .down) {
            // only change direction if current slot is a tile
            // that can be placed and can be rotated
            const slot = state.g.player.get_selected_inventory_slot();
            if(slot.item) |item| {
                if(item.can_be_placed()) {
                    const tile = item.tile_when_placed();
                    if(tile.has_direction()) {
                        state.g.player.placement_dirction.next();
                    }
                }
            }
        }
    }

    // hud inventory update
    {
        for(0..state.input.numbers.len) |i| {
            if(state.input.numbers[i]) {
                state.g.player.selected_item = i;
            }
        }
    
        if(state.input.scroll > 0 and state.g.player.selected_item > 0 and !state.input.left_shift) {
            state.g.player.selected_item -= 1;
    
        } else if(state.input.scroll < 0 and state.g.player.selected_item < state.g.player.inventory.len - 1 and !state.input.left_shift) {
            state.g.player.selected_item += 1;
        } 
    }

    // camera update
    {
        const zoom_amount = 0.2;
        if(state.key(raylib.KEY_UP) == .down) {
            state.g.camera.zoom += state.g.camera.zoom * zoom_amount;
        }
    
        if(state.key(raylib.KEY_DOWN) == .down) {
            state.g.camera.zoom -= state.g.camera.zoom * zoom_amount;
            if(state.g.camera.zoom <= 0.4) state.g.camera.zoom = 0.4;
        }
    }

    mouse_update: {
        if(is_viewing_inventory(state)) {
            break :mouse_update;
        }

        const mouse_position = get_mouse_world_position(state);

        if(!mouse_position.in_world_bounds()) {
            break :mouse_update;
        }

        const tile_coords = mouse_position.to_tile_position();
        const tile_index = tile_coords.get_tile_index();

        if(state.input.right_mouse) {
            if(state.g.forground_tiles[tile_index].tile != .air) {
                state.g.forground_tiles[tile_index].tile.player_interacted(tile_index, state);
                break :mouse_update;
            }

            const current_selected_item = state.g.player.get_selected_item_type();
            if(current_selected_item != null and current_selected_item.?.can_be_placed()) {
                const tile = current_selected_item.?.tile_when_placed();
                if(place_tile_in_foreground(state, tile_index, tile)) {
                    _ = state.g.player.try_pop_selected_item();
                }
            }
        }

        if(state.input.left_mouse) {
            const removed_tile = remove_tile_in_foreground(state, tile_index);

            if(removed_tile) |value| {
                if(value.item_when_broken()) |item| {
                    // right now if the player has no space in the inventory
                    // we just ignore it and the item vanishes of course
                    // this is not ideal
                    _ = state.g.player.add_item_to_inventory(item, 1);
                }
            }
        }
    }

    // panels UI and inventory panel update
    panels: {
        const mouse_position = get_mouse_screen_position();

        // current inventory slot the player is hovering over
        // and the associated tile data inventory slot
        var target_slots: ?struct {ui_slot: *UIIInventorySlot, slot: *InventorySlot} = null;

        find_target_slot: {
            for(&state.g.ui.player_inventory_panel, 0..) |*ui_slot, i| {
                if(ui_slot.mouse_over(mouse_position)) {
                    const player_inventory_slot = &state.g.player.inventory[i];
                    target_slots = .{
                        .ui_slot = &state.g.ui.player_inventory_panel[i],
                        .slot = player_inventory_slot
                    };

                    break :find_target_slot;
                }
            }

            switch (state.g.ui.current_panel) {
                .none => break :panels,
                .crafting => {
                    for(&state.g.ui.crafting_panel) |*crafting_button| {
                        if(crafting_button.mouse_over(mouse_position) and state.input.left_mouse) {
                            if(state.g.player.can_craft_recipe(crafting_button.recipe)) {
                                state.g.player.craft_recipe(crafting_button.recipe);
                            }
                        }
                    }
                },
                .miner => {
                    const miner_panel = &state.g.ui.miner_panel;
                    if(state.g.forground_tiles[miner_panel.tile_index].tile != .miner) {
                        close_inventory(state);
                        break :panels;
                    }

                    const miner = &get_tile_data(state, miner_panel.tile_index).data.miner;

                    if(miner_panel.input_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &miner_panel.input_slot,
                            .slot = &miner.input
                        };

                        break :find_target_slot;
                    }

                    if(miner_panel.output_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &miner_panel.output_slot,
                            .slot = &miner.output
                        };

                        break :find_target_slot;
                    }
                },
                .furnace => {
                    const furnace_panel = &state.g.ui.furnace_panel;
                    if(state.g.forground_tiles[furnace_panel.tile_index].tile != .furnace) {
                        close_inventory(state);
                        break :panels;
                    }

                    const furnace = &get_tile_data(state, furnace_panel.tile_index).data.furnace;

                    if(furnace_panel.input_fuel_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &furnace_panel.input_fuel_slot,
                            .slot = &furnace.fuel_input
                        };

                        break :find_target_slot;
                    }

                    if(furnace_panel.input_ingredient_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &furnace_panel.input_ingredient_slot,
                            .slot = &furnace.ingredient_input
                        };

                        break :find_target_slot;
                    }

                    if(furnace_panel.output_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &furnace_panel.output_slot,
                            .slot = &furnace.output
                        };

                        break :find_target_slot;
                    }
                },
                .crusher => {
                    const crusher_panel = &state.g.ui.crusher_panel;
                    if(state.g.forground_tiles[crusher_panel.tile_index].tile != .crusher) {
                        close_inventory(state);
                        break :panels;
                    }

                    const crusher = &get_tile_data(state, crusher_panel.tile_index).data.crusher;

                    if(crusher_panel.input_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &crusher_panel.input_slot,
                            .slot = &crusher.input
                        };

                        break :find_target_slot;
                    }

                    if(crusher_panel.output_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &crusher_panel.output_slot,
                            .slot = &crusher.output
                        };

                        break :find_target_slot;
                    }
                },
                .researcher => {
                    const researcher_panel = &state.g.ui.researcher_panel;
                    if(state.g.forground_tiles[researcher_panel.tile_index].tile != .researcher) {
                        close_inventory(state);
                        break :panels;
                    }

                    const researcher = &get_tile_data(state, researcher_panel.tile_index).data.researcher;

                    if(researcher_panel.input_slot.mouse_over(mouse_position)) {
                        target_slots = .{
                            .ui_slot = &researcher_panel.input_slot,
                            .slot = &researcher.input
                        };

                        break :find_target_slot;
                    }
                },
            }
        }

        if(target_slots == null) break :panels;

        mouse_interaction: {
            if(!(state.input.left_mouse or state.input.right_mouse)) {
                break :mouse_interaction;
            }

            const in_hand = &state.g.ui.in_hand;
            const target_ui_slot = target_slots.?.ui_slot;
            const target_game_slot = target_slots.?.slot;

            if(in_hand.is_empty()) {
                if(state.input.left_mouse) {
                    target_game_slot.move_items_to(in_hand);
                } else if(state.input.right_mouse) {
                    target_game_slot.move_half_items_to(in_hand);
                }

            } else {
                if(target_ui_slot.has_flag(UIIInventorySlot.only_take_flag)) {
                    break :mouse_interaction;
                }

                if(target_ui_slot.has_flag(UIIInventorySlot.only_smeltable_flag) and !in_hand.item.?.can_be_smelted()) {
                    break :mouse_interaction;
                }

                if(target_ui_slot.has_flag(UIIInventorySlot.only_fuel_flag) and !in_hand.item.?.can_be_fuel()) {
                    break :mouse_interaction;
                }

                if(target_ui_slot.has_flag(UIIInventorySlot.only_placeable_flag) and !in_hand.item.?.can_be_placed()) {
                    break :mouse_interaction;
                }

                if(target_ui_slot.has_flag(UIIInventorySlot.only_crushable_flag) and !in_hand.item.?.can_be_crushed()) {
                    break :mouse_interaction;
                }

                if(state.input.left_mouse) {
                    if(!target_game_slot.is_empty()) {

                        if(target_game_slot.item == in_hand.item) {
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

fn power_update(state: *State) void {
    // reset power for this tick
    for(state.g.networks.items) |*network| {
        network.available_power = 0;
    }

    // add power to the network for this tick
    for(state.g.network_nodes.items) |*node| {
        const tile = state.g.forground_tiles[node.tile_index].tile;

        if(!tile.is_network_generator()) {
            continue;
        }

        var network = get_network(state, node.network_id);
        network.available_power += tile.tick_network_generator_amount(state);
    }
}

fn tick_update(state: *State) void {
    for(state.g.tile_data.items) |*tile_data| {
        state.g.forground_tiles[tile_data.tile_index].tile.tick_update(tile_data.tile_index, tile_data, state);
    }
}

/////////////////////////////////////////////////////////////////////////////////
///                         @draw
/////////////////////////////////////////////////////////////////////////////////
pub fn draw(state: *State) void {
    raylib.BeginDrawing();
    raylib.ClearBackground(raylib.PURPLE);
    raylib.BeginMode2D(state.g.camera);

    // background tiles
    for(0..state.g.background_tiles.len) |i| {
        const tile_coords = get_tile_position_from_tile_index(i);
        const world_position = tile_coords.to_world_position();

        const texture = state.g.background_tiles[i].get_default_texture();
        render.draw_texture(texture, world_position.x, world_position.y, tile_width, tile_height);
    }

    // foreground tiles
    for(0..state.g.forground_tiles.len) |i| {
        const tile_position = get_tile_position_from_tile_index(i);
        const world_position = tile_position.to_world_position();

        const forground_tile = state.g.forground_tiles[i];
        if(forground_tile.tile == .air) {
            continue;
        }

        const texture = forground_tile.tile.get_texture(i, state);

        // update draw location based on the rotation
        // this is because textures are drawn from the
        // top left corner
        var rotated_position = world_position;
        if(forground_tile.tile.has_direction()) {
            rotated_position = move_draw_location_on_direction(world_position, forground_tile.direction);
        }

        render.draw_texture_pro(texture, rotated_position.x, rotated_position.y, tile_width, tile_height, forground_tile.direction.get_rotation(), raylib.WHITE, false);

        // special belt render
        {
            if(forground_tile.tile == .belt) {
                const icon_size = 6;

                const belt = &get_tile_data(state, i).data.belt;

                const left_spline_to_use = get_belt_spline(
                    belt.relative_output_direction == Direction.up,
                    true,
                    forground_tile.direction,
                    belt.relative_output_direction
                );

                const right_spline_to_use = get_belt_spline(
                    belt.relative_output_direction == Direction.up,
                    false,
                    forground_tile.direction,
                    belt.relative_output_direction
                );

                // TODO: at some point figure out how to do interpolation for these points
                for(&belt.left_storage, 0..) |*slot, slot_index| {
                    if(slot.is_empty()) {
                        continue;
                    }

                    const spline_point = left_spline_to_use.buffer[slot_index];
                    const draw_position = WorldPosition{
                        .x = world_position.x + (spline_point.x * tile_width),
                        .y = world_position.y + (spline_point.y * tile_width),
                    };

                    const item_texture = slot.item.?.get_texture();
                    render.draw_texture_pro(item_texture, draw_position.x, draw_position.y, icon_size, icon_size, 0, raylib.WHITE, true);
                }

                for(&belt.right_storage, 0..) |*slot, slot_index| {
                    if(slot.is_empty()) {
                        continue;
                    }

                    const spline_point = right_spline_to_use.buffer[slot_index];
                    const draw_position = WorldPosition{
                        .x = world_position.x + (spline_point.x * tile_width),
                        .y = world_position.y + (spline_point.y * tile_width),
                    };

                    const item_texture = slot.item.?.get_texture();
                    render.draw_texture_pro(item_texture, draw_position.x, draw_position.y, icon_size, icon_size, 0, raylib.WHITE, true);
                }
            }
        }

        if(debug_networks) {
            if(forground_tile.tile.is_network_node()) {
                const node = get_network_node(state, i);

                const id_string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "{}", .{node.network_id}) catch unreachable;
                render.text(id_string, world_position.x, world_position.y, 10, raylib.GREEN);

                const connections_string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "{}", .{node.neighbour_tile_indices.slice().len}) catch unreachable;
                render.text(connections_string, world_position.x, world_position.y + 10, 10, raylib.BLUE);
            }
        }
    }

    // network connections debug
    if(debug_networks) {
        for(state.g.network_nodes.items) |*node| {
            const node_world_position = get_tile_position_from_tile_index(node.tile_index).to_world_position();
            for(node.neighbour_tile_indices.slice()) |neighbour_tile_index| {
                const neighbour_world_position = get_tile_position_from_tile_index(neighbour_tile_index).to_world_position();
                render.line(node_world_position.x, node_world_position.y, neighbour_world_position.x, neighbour_world_position.y, 1, raylib.RED);
            }
        }
    }

    // tile place preview
    tile_preview: {
        if(is_viewing_inventory(state)) {
            break :tile_preview;
        }

        const mouse_world_position = get_mouse_world_position(state);
        if(!mouse_world_position.in_world_bounds()) {
            break :tile_preview;
        }

        const tile_position = mouse_world_position.to_tile_position();
        const tile_index = tile_position.get_tile_index();

        if(state.g.forground_tiles[tile_index].tile != .air) {
            break :tile_preview;
        }

        var world_position = tile_position.to_world_position();

        const selected_slot = state.g.player.get_selected_inventory_slot();
        if(selected_slot.item) |item| {
            if(item.can_be_placed()) {
                const tile = item.tile_when_placed();
                if(tile.has_direction()) {
                    world_position = move_draw_location_on_direction(world_position, state.g.player.placement_dirction);
                }

                const direction = if(tile.has_direction()) state.g.player.placement_dirction else .down;

                render.draw_texture_pro(tile.get_default_texture(), world_position.x, world_position.y, tile_width, tile_height, direction.get_rotation(), raylib.Fade(raylib.WHITE, 0.6), false);
            }
        }
    }

    // end 2d mode so ui is not in world space
    raylib.EndMode2D();

    // ui panels and inventory drawing
    game_ui_drawing: {
        const mouse_screen_position = get_mouse_screen_position();

        // draw current open panel
        switch (state.g.ui.current_panel) {
            .none => {
                break :game_ui_drawing;
            },
            .crafting => {
                const crafting_background_width = 600;
                const crafting_background_height = 550;
        
                const crafting_background_x = window_width() * 0.5;
                const crafting_background_y = window_height() * 0.5 - (crafting_background_height * 0.5);
     
                render.draw_texture_pro(get_alt_texture(.item_slot), crafting_background_x, crafting_background_y, crafting_background_width, crafting_background_height, 0, raylib.SKYBLUE, false);

                // draw each button first
                for(&state.g.ui.crafting_panel) |*crafting_button| {
                    const color = if(state.g.player.can_craft_recipe(crafting_button.recipe)) raylib.GREEN else raylib.RED;
                    crafting_button.draw(color, state.scratch_space.allocator());
                }

                // then draw any input after so it is always drawn in the top
                for(&state.g.ui.crafting_panel) |*crafting_button| {
                    if(crafting_button.mouse_over(mouse_screen_position)) {
                        draw_crafting_recipe_input(crafting_button.recipe, mouse_screen_position.x + 15, mouse_screen_position.y + 15, 50);
                    }
                }
            },
            .miner => {
                const miner_panel = &state.g.ui.miner_panel;

                const background_height = 300;
                const background_width = 400;

                render.draw_texture_pro(get_alt_texture(.item_slot), window_width() * 0.5, (window_height() * 0.5) - (background_height * 0.5), background_width, background_height, 0, raylib.BLACK, false);

                if(state.g.forground_tiles[miner_panel.tile_index].tile != .miner) {
                    close_inventory(state);
                    break :game_ui_drawing;
                }

                const miner = &get_tile_data(state, miner_panel.tile_index).data.miner;

                const progress_bar_width = 5;
                const fuel_progress_bar_x = miner_panel.input_slot.x - 10 - progress_bar_width;
                const fuel_progress_bar_y = miner_panel.input_slot.y;

                if(miner.fuel_item_in_use) |fuel_item| {
                    draw_progress_bar_vertical(fuel_progress_bar_x, fuel_progress_bar_y, 10, miner_panel.input_slot.size, raylib.RED, raylib.ORANGE, miner.fuel_buffer, fuel_item.fuel_smelt_count().? * Tile.miner_max_progress);
                }

                const output_progress_bar_x = miner_panel.output_slot.x - 10 - progress_bar_width;
                const output_progress_bar_y = miner_panel.output_slot.y;
                draw_progress_bar_vertical(output_progress_bar_x, output_progress_bar_y, 10, miner_panel.output_slot.size, raylib.BLUE, raylib.WHITE, miner.progress, Tile.miner_max_progress);

                miner_panel.input_slot.draw(&miner.input, raylib.BLUE, state.scratch_space.allocator());
                miner_panel.output_slot.draw(&miner.output, raylib.RED, state.scratch_space.allocator());
            },
            .furnace => {
                const furnace_panel = &state.g.ui.furnace_panel;

                if(state.g.forground_tiles[furnace_panel.tile_index].tile != .furnace) {
                    close_inventory(state);
                    break :game_ui_drawing;
                }

                const background_height = 300;
                const background_width = 400;

                render.draw_texture_pro(get_alt_texture(.item_slot), window_width() * 0.5, (window_height() * 0.5) - background_height / 2, background_width, background_height, 0, raylib.ORANGE, false); 

                const furnace = &get_tile_data(state, furnace_panel.tile_index).data.furnace;

                const progress_bar_width = 5;

                const fuel_progress_bar_x = furnace_panel.input_fuel_slot.x - 10 - progress_bar_width;
                const fuel_progress_bar_y = furnace_panel.input_fuel_slot.y;

                if(furnace.fuel_item_in_use) |fuel_item| {
                    draw_progress_bar_vertical(fuel_progress_bar_x, fuel_progress_bar_y, 10, furnace_panel.input_fuel_slot.size, raylib.RED, raylib.ORANGE, furnace.fuel_buffer, fuel_item.fuel_smelt_count().? * Tile.furnace_max_progress);
                }

                const output_progress_bar_x = furnace_panel.output_slot.x - 10 - progress_bar_width;
                const output_progress_bar_y = furnace_panel.output_slot.y;

                draw_progress_bar_vertical(output_progress_bar_x, output_progress_bar_y, 10, furnace_panel.output_slot.size, raylib.BLUE, raylib.WHITE, furnace.progress, Tile.furnace_max_progress);

                furnace_panel.input_ingredient_slot.draw(&furnace.ingredient_input, raylib.BLUE, state.scratch_space.allocator());
                furnace_panel.input_fuel_slot.draw(&furnace.fuel_input, raylib.BLUE, state.scratch_space.allocator());
                furnace_panel.output_slot.draw(&furnace.output, raylib.RED, state.scratch_space.allocator());
            },
            .crusher => {
                const crusher_panel = &state.g.ui.crusher_panel;

                const background_height = 300;
                const background_width = 400;

                render.draw_texture_pro(get_alt_texture(.item_slot), window_width() * 0.5, (window_height() * 0.5) - (background_height * 0.5), background_width, background_height, 0, raylib.WHITE, false);

                if(state.g.forground_tiles[crusher_panel.tile_index].tile != .crusher) {
                    close_inventory(state);
                    break :game_ui_drawing;
                }

                const crusher = &get_tile_data(state, crusher_panel.tile_index).data.crusher;

                crusher_panel.input_slot.draw(&crusher.input, raylib.BLUE, state.scratch_space.allocator());
                crusher_panel.output_slot.draw(&crusher.output, raylib.RED, state.scratch_space.allocator());
            },
            .researcher => {
                const researcher_panel = &state.g.ui.researcher_panel;

                const background_height = 300;
                const background_width = 400;

                render.draw_texture_pro(get_alt_texture(.item_slot), window_width() * 0.5, (window_height() * 0.5) - (background_height * 0.5), background_width, background_height, 0, raylib.WHITE, false);

                if(state.g.forground_tiles[researcher_panel.tile_index].tile != .researcher) {
                    close_inventory(state);
                    break :game_ui_drawing;
                }

                const researcher = &get_tile_data(state, researcher_panel.tile_index).data.researcher;

                researcher_panel.input_slot.draw(&researcher.input, raylib.BLUE, state.scratch_space.allocator());
            },
        }

        // draw player inventory
        {
            // player inventory is drawn all the time
            const padding = 10;
    
            const first_slot = &state.g.ui.player_inventory_panel[0];
            const last_slot = &state.g.ui.player_inventory_panel[state.g.ui.player_inventory_panel.len - 1];
    
            const inventory_background_x = first_slot.x - padding;
            const inventory_background_y = first_slot.y - padding;
    
            const inventory_background_width = last_slot.x + last_slot.size - first_slot.x + (padding * 2);
            const inventory_background_height = last_slot.y + last_slot.size - first_slot.y + (padding * 2);
    
            render.draw_texture_pro(get_alt_texture(.item_slot), inventory_background_x, inventory_background_y, inventory_background_width, inventory_background_height, 0, raylib.BLUE, false);
    
            for(&state.g.ui.player_inventory_panel, 0..) |*ui_slot, i| {
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
    
                ui_slot.draw(&state.g.player.inventory[i], color, state.scratch_space.allocator());
            }
        }

        // draw item in hand
        if(state.g.ui.in_hand.item) |item| {
            const item_texture = item.get_texture();
            const icon_x = mouse_screen_position.x + 10;
            const icon_y = mouse_screen_position.y + 10;

            render.draw_texture(item_texture, icon_x, icon_y, 50, 50);

            // max size is 99 so 2 bytes is fine here
            const string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "{}", .{state.g.ui.in_hand.count}) catch unreachable;
            render.text(string, icon_x, icon_y, 20, raylib.WHITE);
        }
    }

    // fps text
    {
        const fps_string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "fps: {}", .{raylib.GetFPS()}) catch unreachable;
        render.text(fps_string, window_width() - 100, window_height() - 20, 20, raylib.WHITE);
    }

    // memory debug info
    if(debug_memory_usage) {
        const arena_string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "A: {}", .{state.underlying_arena.queryCapacity()}) catch unreachable;
        render.text(arena_string, window_width() - 100, 20, 20, raylib.PURPLE);

        const scratch_string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "S: {}", .{state.scratch_space.end_index}) catch unreachable;
        render.text(scratch_string, window_width() - 100, 40, 20, raylib.PURPLE);

        const max_scratch_string = std.fmt.allocPrintZ(state.scratch_space.allocator(), "MS: {}", .{state.max_scratch_space_usage}) catch unreachable;
        render.text(max_scratch_string, window_width() - 100, 60, 20, raylib.PURPLE);
    }

    // inventory preview bar
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
            draw_inventory_slot(&state.g.player.inventory[i], slot_x, slot_y, size, color, state.scratch_space.allocator());

            // draw item selected indicator
            if(i == state.g.player.selected_item) {
                const indicator_radius = 5;
                const indicator_y = slot_y - 10;
                const indicator_x = slot_x + (size * 0.5);

                render.circle(indicator_x, indicator_y, indicator_radius, raylib.YELLOW);
            }
        }
    } 

    raylib.EndDrawing();
}

// removes a tile in a given index in the foreground
// and replaces it with air, if the tile has an associated
// tile data then that is also removed
fn remove_tile_in_foreground(state: *State, tile_index: usize) ?Tile {
    if(!get_tile_position_from_tile_index(tile_index).is_valid()) {
        return null;
    }

    const replcaing_tile = state.g.forground_tiles[tile_index].tile;

    if(replcaing_tile == .air) {
        return null;
    }

    const tile_data: ?*TileData = if(replcaing_tile.has_tile_data()) get_tile_data(state, tile_index) else null;
    replcaing_tile.removed_update(tile_index, tile_data, state);

    if(tile_data) |value| {
        for(0..state.g.tile_data.items.len) |i| {
            if(state.g.tile_data.items[i].tile_index == value.tile_index) {
                _ = state.g.tile_data.swapRemove(i);
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

        for(0..state.g.network_nodes.items.len) |i| {
            if(state.g.network_nodes.items[i].tile_index == tile_index) {
                node = state.g.network_nodes.items[i];
                _ = state.g.network_nodes.swapRemove(i);
                break;
            }
        }

        for(node.neighbour_tile_indices.slice()) |neighbour_index| {
            const neighbour = get_network_node(state, neighbour_index);
            neighbour.remove_neighbour(tile_index);
        }

        const network = get_network(state, node.network_id);
        network.remove_node(&node);
        rebuild_damaged_network(state, network.network_id);
    }

    state.g.forground_tiles[tile_index].tile = .air;
    tile_update_adjectcent_tiles(state, tile_index);
    return replcaing_tile;
}

// places a tile in a given index in the foreground
// if the tile is not air *not empty* then it is
// not placed and false is returned
fn place_tile_in_foreground(state: *State, tile_index: usize, tile: Tile) bool {
    if(state.g.forground_tiles[tile_index].tile != .air) {
        return false;
    }

    const direction = if(tile.has_direction()) state.g.player.placement_dirction else .down;
    state.g.forground_tiles[tile_index] = .{.tile = tile, .direction = direction};

    if(tile.has_tile_data()) {
        var tile_data = tile.get_default_tile_data();
        tile_data.tile_index = tile_index;

        state.g.tile_data.append(tile_data) catch |err| {
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
        var network = Network.init(state.allocator);
        const node = NetworkNode.init(tile_index, network.network_id);

        network.nodes.append(node.tile_index) catch |err| {
            switch (err) {
                error.OutOfMemory => {
                    std.debug.panic("out of memory add new network node to network: tile_index: {}, network_id: {}", .{node.tile_index, network.network_id});
                }
            }
        };

        state.g.networks.append(network) catch |err| {
            switch (err) {
                error.OutOfMemory => {
                    std.debug.panic("out of memory add new network to game: network_id: {}", .{network.network_id});
                }
            }
        };

        state.g.network_nodes.append(node) catch |err| {
            switch (err) {
                error.OutOfMemory => {
                    std.debug.panic("out of memory creating new network node {}", .{err});
                }
            }
        };

        search_for_network_connections(state, tile_index);
    }

    if(tile.has_tile_data()) {
        tile.tile_update(tile_index, &state.g.tile_data.items[state.g.tile_data.items.len - 1], state);
    } else {
        tile.tile_update(tile_index, null, state);
    }

    tile_update_adjectcent_tiles(state, tile_index);
    return true;
}

fn tile_update_adjectcent_tiles(state: *State, tile_index: usize) void {
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
        const target_tile = state.g.forground_tiles[target_index].tile;
        if(target_tile == .air) continue;

        var target_tile_data: ?*TileData = undefined;
        if(target_tile.has_tile_data()) {
            target_tile_data = get_tile_data(state, target_index);
        }

        state.g.forground_tiles[target_index].tile.tile_update(target_index, target_tile_data, state);
    }
}

fn search_for_network_connections(state: *State, tile_index: usize) void {
    const search_radius = 3;
    const tile_position = get_tile_position_from_tile_index(tile_index);

    if(!state.g.forground_tiles[tile_index].tile.is_network_node()) {
        return;
    }

    const is_this_tile_connector = state.g.forground_tiles[tile_index].tile.is_network_node_connector();

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
            const target_tile = state.g.forground_tiles[target_tile_index].tile;

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

            const source_node = get_network_node(state, tile_index);
            const target_node = get_network_node(state, target_tile_index);

            const source_network = get_network(state, source_node.network_id);
            const target_network = get_network(state, target_node.network_id);

            connect_networks_at_nodes(state, source_network, target_network, source_node, target_node);
        }
    }
}

fn connect_networks_at_nodes(state: *State, source_network: *Network, target_network: *Network, source_node: *NetworkNode, target_node: *NetworkNode) void {
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

    for(state.g.network_nodes.items) |*node| {
        if(node.network_id == smaller_network.network_id) {
            node.network_id = bigger_network.network_id;
        }
    }

    bigger_network.nodes.appendSlice(smaller_network.nodes.items) catch unreachable;

    for(0..state.g.networks.items.len) |i| {
        if(state.g.networks.items[i].network_id == smaller_network.network_id) {
            _ = state.g.networks.swapRemove(i);
            break;
        }
    }
}

fn rebuild_damaged_network(state: *State, network_id: usize) void {
    while(!traverse_nodes_and_replace_network(state, network_id)) {}

    for(state.g.networks.items, 0..) |*network, i| {
        if(network.network_id == network_id) {
            _ = state.g.networks.swapRemove(i);
            break;
        }
    }
}

fn traverse_nodes_and_replace_network(state: *State, old_network_id: usize) bool {
    // 1. create new network with new id
    // 2. find the first node with the old network id
    // 3. flood fill all connecting nodes
    // 4. replace old id with new one
    //      - also add nodes to new network

    var node_queue = std.ArrayList(usize).init(state.scratch_space.allocator());
    var completed_nodes = std.AutoHashMap(usize, void).init(state.scratch_space.allocator());

    var new_network = Network.init(state.allocator);

    defer node_queue.deinit();
    defer completed_nodes.deinit();

    // find the first node with the old id and add to list
    for(state.g.network_nodes.items) |*node| {
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

        const current_node = get_network_node(state, current_node_index);
        for(current_node.neighbour_tile_indices.slice()) |neighbour_index| {
            node_queue.append(neighbour_index) catch unreachable;
        }

        current_node.network_id = new_network.network_id;
        new_network.add_node(current_node);
    }

    state.g.networks.append(new_network) catch unreachable;

    return false; // no new nodes so return false to call again
}

fn get_mouse_world_position(state: *const State) WorldPosition {
    const screen_position = raylib.GetMousePosition();
    const world_position = raylib.GetScreenToWorld2D(screen_position, state.g.camera);

    return .{.x = world_position.x, .y = world_position.y};
}

// WARNING: the pointer is fragile it should not be stored
// accross frames, use the id to get a new version of it
fn get_network(state: *State, network_id: usize) *Network {
    for(state.g.networks.items) |*network| {
        if(network.network_id == network_id) {
            return network;
        }
    }

    std.debug.panic("tried to get network with ide: {} and failed\n", .{network_id});
}

// WARNING: the pointer is fragile it should not be stored
// accross frames, use the id to get a new version of it
fn get_network_node(state: *const State, tile_index: usize) *NetworkNode {
    for(state.g.network_nodes.items) |*node| {
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
fn get_tile_data(state: *const State, tile_index: usize) *TileData {
    for(state.g.tile_data.items) |*tile_data| {
        if(tile_data.tile_index == tile_index) {
            // this pointer should not be stored across frames
            // if the tile data buffer changes the underlying
            // memory could become invalid or change
            return tile_data;
        }
    }

    std.debug.panic("tried to get tile data at index: {} and failed\n", .{tile_index});
}

fn generate_world(state: *State) void {
    // base terrain pass
    for(0..state.g.background_tiles.len) |i| {
        // right now setting every tile by default
        // to grass at some point this will change
        const tile_value: Tile = .grass;
        state.g.background_tiles[i] = tile_value;
    }

    // ore generation pass
    for(0..state.g.background_tiles.len) |i| {
        for(&ore_table) |*ore| {
            const noise_generator = fastnoise.Noise(f32) {
                .seed = state.g.seed,
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
                state.g.background_tiles[i] = ore.tile;
                continue;
            }
        }
    }

    // tree generation pass
    tree_check: for((world_tile_width * 3)..state.g.forground_tiles.len) |i| {
        const noise_generator = fastnoise.Noise(f32) {
            .seed = state.g.seed,
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

        if(!(noise < 0.2 and state.g.background_tiles[i] == .grass)) {
            continue :tree_check;
        }

        for(0..tree_height) |j| {
            const offset_position = TilePosition{.x = base_tile_position.x, .y = base_tile_position.y - j};
            if(!offset_position.is_valid()) {
                continue :tree_check;
            }

            const checking_tile_index = offset_position.get_tile_index();
            if(state.g.forground_tiles[checking_tile_index].tile != .air) {
                continue :tree_check;
            }
        }

        state.g.forground_tiles[i] = .{.tile = .tree_base, .direction = .down};

        for(1..tree_height) |j| {
            const offset_position = TilePosition{.x = base_tile_position.x, .y = base_tile_position.y - j};
            const tile_index = offset_position.get_tile_index();
            state.g.forground_tiles[tile_index] = .{.tile = .tree_0, .direction = .down};
        }
    }
}

/////////////////////////////////////////////////////////////////////////////////
///                         @render
////////////////////////////////////////////////////////////////////////////////
fn draw_inventory_slot(inventory_slot: *const InventorySlot, x: f32, y: f32, size: f32, tint: raylib.Color, allocator: std.mem.Allocator) void {
    render.draw_texture_tint(get_alt_texture(.item_slot), x, y, size, size, tint);

    if(inventory_slot.item) |item| {                     
        const item_texture = item.get_texture();
        render.draw_texture(item_texture, x, y, size, size);

        const string = std.fmt.allocPrintZ(allocator, "{}", .{inventory_slot.count}) catch unreachable;
        render.text(string, x, y, 20, raylib.WHITE);
    }
}

fn draw_crafting_recipe_output(recipe: *const CraftingRecipe, x: f32, y: f32, size: f32, tint: raylib.Color) void {
    const item_texture = recipe.output.item.get_texture();

    render.draw_texture_tint(get_alt_texture(.item_slot), x, y, size, size, tint);
    render.draw_texture(item_texture, x, y, size, size);
}

fn draw_crafting_recipe_input(recipe: *const CraftingRecipe, x: f32, y: f32, size: f32) void {
    const padding = 5;

    for(0..recipe.input_count) |_i| {
        const i = @as(f32, @floatFromInt(_i));
        const input = &recipe.inputs[_i];
        const item_texture = input.item.get_texture();
        const input_x = x + (size * i) + (padding * i);

        render.draw_texture_tint(get_alt_texture(.item_slot), input_x, y, size, size, raylib.BLUE);
        render.draw_texture(item_texture, input_x, y, size, size);

        var text_buffer = std.mem.zeroes([2]u8); 
        const string = std.fmt.bufPrint(text_buffer[0..], "{}", .{input.count}) catch unreachable;
        render.text(string, input_x, y, 20, raylib.WHITE);

    }
}

fn draw_progress_bar_vertical(x: f32, y: f32, width: f32, max_height: f32, start_color: raylib.Color, end_color: raylib.Color, value: i64, max_value: i64) void {
    const progress =  @as(f32, @floatFromInt(value)) / @as(f32, @floatFromInt(max_value));
    const progress_bar_end_y = y + max_height;
    const progress_bar_start_y = progress_bar_end_y - (progress * max_height);
    const progress_bar_height = progress_bar_end_y - progress_bar_start_y;

    render.rectangle_gradient_vertical(x, progress_bar_start_y, width, progress_bar_height, end_color, start_color);
}

/////////////////////////////////////////////////////////////////////////////////
///                         @random
/////////////////////////////////////////////////////////////////////////////////
fn window_width() f32 {
    return @as(f32, @floatFromInt(raylib.GetScreenWidth()));
}

fn window_height() f32 {
    return @as(f32, @floatFromInt(raylib.GetScreenHeight()));
}

// relative output direction is ignored if it is straight
fn get_belt_spline(is_straight: bool, is_left_side: bool, direction: Direction, relative_output_direction: Direction) Spline {
    var index: usize = 0;

    if(!is_straight) {
        index += 8;
    }

    if(!is_left_side) {
        index += 1;
    }

    switch (direction) {
        .down => {},
        .up => index += 2,
        .left => index += 4,
        .right => index += 6,
    }

    if(!is_straight) {
        switch (relative_output_direction) {
            .left => index += 8,
            .right => {},
            else => {}
        }
    }

    return m.splines[index];
}

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

pub fn get_mouse_screen_position() WorldPosition {
    const screen_position = raylib.GetMousePosition();
    return .{.x = screen_position.x, .y = screen_position.y};
}

fn get_tile_position_from_tile_index(tile_index: usize) TilePosition {
        const x = @mod(tile_index, world_tile_width);
        const y = @divFloor(tile_index, world_tile_width); 
        return .{.x = x, .y = y};
}

fn dump_game_data(state: *State) !void {
    const buffer_size = 
        @sizeOf(raylib.Camera2D) +
        @sizeOf(Player) +
        @sizeOf(ForgroundTile) * state.g.forground_tiles.len +
        @sizeOf(TileData) * state.g.tile_data.items.len +
        @sizeOf(Network) * state.g.networks.items.len +
        @sizeOf(NetworkNode) * state.g.network_nodes.items.len +
        @sizeOf(usize) * 3
    ;

    var write_index: usize = 0;
    const buffer = try state.allocator.alloc(u8, buffer_size);

    std.mem.copyForwards(u8, buffer, &std.mem.toBytes(state.g.camera));
    write_index += @sizeOf(raylib.Camera2D);

    std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(state.g.player));
    write_index += @sizeOf(Player);

    for(state.g.forground_tiles) |tile| {
        std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(tile));
        write_index += @sizeOf(ForgroundTile);
    }

    std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(state.g.tile_data.items.len));
    write_index += @sizeOf(usize);

    for(state.g.tile_data.items) |*tile_data| {
        std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(tile_data.*));
        write_index += @sizeOf(TileData);
    }

    std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(state.g.networks.items.len));
    write_index += @sizeOf(usize);

    for(state.g.networks.items) |*network| {
        std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(network.*));
        write_index += @sizeOf(Network);
    }

    std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(state.g.network_nodes.items.len));
    write_index += @sizeOf(usize);

    for(state.g.network_nodes.items) |*network_node| {
        std.mem.copyForwards(u8, buffer[write_index..], &std.mem.toBytes(network_node.*));
        write_index += @sizeOf(NetworkNode);
    }

    const file = try std.fs.cwd().createFile("level.dat", .{});
    defer file.close();

    try file.writeAll(buffer);
}

fn load_game_data(state: *State) !void {
    const buffer = try std.fs.cwd().readFileAlloc(state.scratch_space.allocator(), "level.dat", state.scratch_space.buffer.len - state.scratch_space.end_index);
    var read_index: usize = 0;

    // camera
    {
        std.mem.copyForwards(u8, std.mem.asBytes(&state.g.camera), buffer[read_index..read_index + @sizeOf(raylib.Camera2D)]);
        read_index += @sizeOf(raylib.Camera2D);
    }

    // player
    {
        std.mem.copyForwards(u8, std.mem.asBytes(&state.g.player), buffer[read_index..read_index + @sizeOf(Player)]);
        read_index += @sizeOf(Player);
    }

    // forground tiles
    {
        for(state.g.forground_tiles) |*tile| {
            std.mem.copyForwards(u8, std.mem.asBytes(tile), buffer[read_index..read_index + @sizeOf(ForgroundTile)]);
            read_index += @sizeOf(ForgroundTile);
        }
    }

    // tile data
    {
        var new_tile_data_len: usize = 0;
        std.mem.copyForwards(u8, std.mem.asBytes(&new_tile_data_len), buffer[read_index..read_index + @sizeOf(usize)]);
        read_index += @sizeOf(usize);
    
        try state.g.tile_data.resize(new_tile_data_len);
    
        for(state.g.tile_data.items) |*tile_data| {
            std.mem.copyForwards(u8, std.mem.asBytes(tile_data), buffer[read_index..read_index + @sizeOf(TileData)]);
            read_index += @sizeOf(TileData);
        }
    }

    // networks
    {
        var new_networks_len: usize = 0;
        std.mem.copyForwards(u8, std.mem.asBytes(&new_networks_len), buffer[read_index..read_index + @sizeOf(usize)]);
        read_index += @sizeOf(usize);
    
        try state.g.networks.resize(new_networks_len);
    
        for(state.g.networks.items) |*network| {
            std.mem.copyForwards(u8, std.mem.asBytes(network), buffer[read_index..read_index + @sizeOf(Network)]);
            read_index += @sizeOf(Network);
        }
    }

    // network nodes
    {
        var new_nodes_len: usize = 0;
        std.mem.copyForwards(u8, std.mem.asBytes(&new_nodes_len), buffer[read_index..read_index + @sizeOf(usize)]);
        read_index += @sizeOf(usize);
    
        try state.g.network_nodes.resize(new_nodes_len);
    
        for(state.g.network_nodes.items) |*node| {
            std.mem.copyForwards(u8, std.mem.asBytes(node), buffer[read_index..read_index + @sizeOf(NetworkNode)]);
            read_index += @sizeOf(NetworkNode);
        }
    }
}
