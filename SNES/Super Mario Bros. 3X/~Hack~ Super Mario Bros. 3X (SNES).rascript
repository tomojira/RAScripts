// ~Hack~ Super Mario Bros. 3X
// #ID = 6614
// md5: 012d5ec25d9bbfc9e035483911ba0631 - Super Mario Bros. 3 X (Final 2.6) by Mirumo (Koyuki) [2014-06-24] (SMW Hack).sfc

// --------------------------------------
// Useful notes, variables, and functions
// --------------------------------------

// $0000: Thanks to everyone who contributed code notes for SMW and its hacks!
// $0D9B: Game state [8-bit]
//        0x00 = In level
//        0x01 = Title screen, level transition
//        0x02 = World map
//        0xc1 = Fun House: Bowser fight

function game_state() => byte(0xd9b)

state_in_level = 0
state_transition = 1
state_world_map = 2
state_fun_house_bowser = 0xc1

// $0DA2: Input [8-bit]
//        Bit0 = Right
//        Bit1 = Left
//        Bit2 = Down
//        Bit3 = Up
//        Bit4 = Start
//        Bit5 = Select
//        Bit6 = Y
//        Bit7 = B
// $0DA4: Input [8-bit]
//        Bit4 = R
//        Bit5 = L
//        Bit6 = X
//        Bit7 = A

function input_l_x_select() => bit5(0xda4) == 1 && bit6(0xda4) == 1 && bit5(0xda2) == 1
function input_r_x_select() => bit4(0xda4) == 1 && bit6(0xda4) == 1 && bit5(0xda2) == 1

// $0DD5: Return to world map from level [8-bit]
//        0x01 = Level completed
//        0x80 = Died or quit
//        0xe0 = Save prompt. Doesn't show when level is completed for first time

function exit_level() => byte(0xdd5)

exit_level_complete = 1
exit_level_die_or_quit = 0x80

// $0071: Mario action [8-bit]
//        0x01 = Get hit, lose power
//        0x02 = Become Super Mario
//        0x03 = Become Raccoon Mario
//        0x04 = Become Fire Mario
//        0x06 = Enter/exit pipe
//        0x09 = Death
//        0x0b = End level star (only in certain levels, not the same as the end cards)
//        0x0d = Enter door

function mario_action() => byte(0x71)

mario_death = 9
end_level_star = 0xb
enter_door = 0xd

// $0019: Mario power-up state [8-bit]
//        0x00 = Small
//        0x01 = Big
//        0x02 = Raccoon
//        0x03 = Fire

function mario_power_state() => byte(0x19)

small_mario = 0
super_mario = 1
raccoon_mario = 2
fire_mario = 3

mario_power_dictionary = {
    small_mario: "Small Mario",
    super_mario: "Super Mario",
    raccoon_mario: "Raccoon Mario",
    fire_mario: "Fire Mario"
}

// $0DBE: Lives [8-bit]
//        This address is not always reliable when rapidly getting multiple lives. Can't use for Frost Cave cheevo

function lives() => byte(0xdbe)

// $0F02: Lives display: X0 [8-bit]
//        Also unreliable for Frost Cave cheevo
// $0F03: Lives display: 0X [8-bit]

// $0F31: Time: X00 [8-bit]
// $0F32: Time: 0X0 [8-bit]
// $0F33: Time: 00X [8-bit]

function time() {
    hundreds = byte(0xf31) * 100
    tens = byte(0xf32) * 10
    ones = byte(0xf33)
    time = hundreds + tens + ones
    
    return time
}

// $0F34: Score [24-bit]
//        Multiply by 10

function score() {
    score = tbyte(0xf34) * 10
    
    return score
}

// $1420: Red Coins [8-bit]

function red_coins() => byte(0x1420)

// $1F2E: Total exits cleared [8-bit]
//        Up to 70 (0x46)

function total_exits() => byte(0x1f2e)

// $1F11: World map [8-bit]
//        0x00 = Grassland, Seaside, Piranha Hills, Yoshi's Island, To Bowser's Land, Bonus World
//        0x01 = Desert World
//        0x02 = Bowser's Land first area
//        0x03 = Giant Isle
//        0x04 = Bowser's Land second area
//        0x05 = The Sky
//        0x06 = Ice Land

function world_map() => byte(0x1f11)

map_grassland = 0
map_desert_world = 1
map_seaside = 0
map_giant_isle = 3
map_piranha_hills = 0
map_sky = 5
map_ice_land = 6
map_yoshi_island = 0
map_to_bowser_land = 0
map_bowser_land_first = 2
map_bowser_land_second = 4
map_bonus_world = 0

map_dictionary = {
    map_desert_world: "Desert World",
    map_giant_isle: "Giant Isle",
    map_sky: "The Sky",
    map_ice_land: "Ice Land",
    map_bowser_land_first: "Bowser's Land",
    map_bowser_land_second: "Bowser's Land"
}

// $1F1F: World map x-coordinate [8-bit]
//        Grassland = 0x00 to 0x0c
//        Seaside = 0x11 to 0x1d
//        Piranha Hills = 0x14 to 0x1f
//        Yoshi's Island = 0x01 to 0x10
//        To Bowser's Land = 0x18 to 0x1d
//        Bonus World = 0x02 to 0x11
// $1F21: World map y-coordinate [8-bit]
//        Grassland = 0x19 to 0x1e
//        Seaside = 0x17 to 0x1f
//        Piranha Hills = 0x0f to 0x10
//        Yoshi's Island = 0x07 to 0x11
//        To Bowser's Land = 0x05 to 0x09
//        Bonus World = 0x01 to 0x05

function world_map_x() => byte(0x1f1f)
function world_map_y() => byte(0x1f21)

// $1DEA: Last played level [8-bit]
//        0x00 to 0x04 = Grassland 1 to 4, Larry's Castle
//        0x05 to 0x0b = Desert World 1, 2, Pyramid, 3, 4, Quicksand, Morton's Castle
//        0x0c to 0x13 = Seaside 1 to 3, Fortress, 4 to 6, Wendy's Battleship
//        0x14 to 0x19 = Giant Isle 1, 2, Ghost House, 3, 4, Iggy's Castle
//        0x1a = Piranha Hills 1
//        0x1b to 0x21 = The Sky 1 to 3, Fortress, 4, 5, Roy's Ship
//        0x22 to 0x29 = Ice Land 1 to 3, Fortress, 4 to 6, Lemmy's Castle
//        0x2a to 0x30 = Yoshi's Island 1 to 3, Ghost House, Mushroom House/4, 5, Ludwig's Castle
//        0x31 to 0x32 = Bowser's Tank #1, To Bowser's Land
//        0x33 to 0x37 = Bowser's Land 1 to 3, Magma Castle, 4
//        0x38 to 0x3e = Bandit Cave, Swooper Cave, Dark Cave, Crappy Ship, ??? Castle, Bowser's Tower, Bowser's Castle
//        0x3f = Piranha Hills 2
//        0x40 to 0x45 = Bonus World 1 to 4, Toad Castle, 5
//        0xff = None, or Yoshi's House, most Mushroom Houses, Mario's Pad, Powerup House, Fun House
//        YI Mushroom House and YI 4 share the same ID (0x2e) for some reason

function level() => byte(0x1dea)

level_grassland_1 = 0
level_grassland_2 = 1
level_yoshi_house = 0xff
level_grassland_3 = 2
level_grassland_4 = 3
level_larry_castle = 4

level_desert_world_1 = 5
level_dw_mushroom_house = 0xff
level_desert_world_2 = 6
level_pyramid = 7
level_desert_world_3 = 8
level_desert_world_4 = 9
level_quicksand = 0xa
level_morton_castle = 0xb

level_seaside_1 = 0xc
level_seaside_mushroom_house = 0xff
level_seaside_2 = 0xd
level_seaside_3 = 0xe
level_seaside_fortress = 0xf
level_seaside_4 = 0x10
level_seaside_5 = 0x11
level_seaside_6 = 0x12
level_wendy_battleship = 0x13

level_giant_isle_1 = 0x14
level_giant_isle_2 = 0x15
level_gi_mushroom_house = 0xff
level_gi_ghost_house = 0x16
level_giant_isle_3 = 0x17
level_giant_isle_4 = 0x18
level_iggy_castle = 0x19

level_piranha_hills_1 = 0x1a

level_sky_1 = 0x1b
level_sky_2 = 0x1c
level_sky_3 = 0x1d
level_sky_mushroom_house = 0xff
level_sky_fortress = 0x1e
level_sky_4 = 0x1f
level_sky_5 = 0x20
level_roy_ship = 0x21

level_ice_land_1 = 0x22
level_ice_land_2 = 0x23
level_il_mushroom_house = 0xff
level_ice_land_3 = 0x24
level_ice_fortress = 0x25
level_ice_land_4 = 0x26
level_ice_land_5 = 0x27
level_ice_land_6 = 0x28
level_lemmy_castle = 0x29

level_yoshi_island_1 = 0x2a
level_yoshi_island_2 = 0x2b
level_yoshi_island_3 = 0x2c
level_yi_mushroom_house = 0x2e
level_yi_ghost_house = 0x2d
level_yoshi_island_4 = 0x2e
level_yoshi_island_5 = 0x2f
level_ludwig_castle = 0x30

level_bowser_tank_1 = 0x31
level_to_bowser_land = 0x32

level_bowser_land_1 = 0x33
level_bowser_land_2 = 0x34
level_bl_mushroom_house = 0xff
level_bowser_land_3 = 0x35
level_magma_castle = 0x36
level_bowser_land_4 = 0x37

level_bandit_cave = 0x38
level_swooper_cave = 0x39
level_dark_cave = 0x3a
level_crappy_ship = 0x3b
level_bowser_tower = 0x3d
level_mystery_castle = 0x3c
level_bowser_castle = 0x3e

level_piranha_hills_2 = 0x3f

level_mario_pad = 0xff
level_powerup_house = 0xff
level_fun_house = 0xff
level_bonus_world_1 = 0x40
level_bonus_world_2 = 0x41
level_bonus_world_3 = 0x42
level_bonus_world_4 = 0x43
level_toad_castle = 0x44
level_bonus_world_5 = 0x45

// Levels with 0xff value excluded, as well as YI Mushroom House and YI 4, which are both 0x2e. Must use room() for those instead
level_dictionary = {
    level_grassland_1: "Grassland 1",
    level_grassland_2: "Grassland 2",
    level_grassland_3: "Grassland 3",
    level_grassland_4: "Grassland 4",
    level_larry_castle: "Larry's Castle",
    level_desert_world_1: "Desert World 1",
    level_desert_world_2: "Desert World 2",
    level_pyramid: "Pyramid",
    level_desert_world_3: "Desert World 3",
    level_desert_world_4: "Desert World 4",
    level_quicksand: "Quicksand",
    level_morton_castle: "Morton's Castle",
    level_seaside_1: "Seaside 1",
    level_seaside_2: "Seaside 2",
    level_seaside_3: "Seaside 3",
    level_seaside_fortress: "Seaside Fortress",
    level_seaside_4: "Seaside 4",
    level_seaside_5: "Seaside 5",
    level_seaside_6: "Seaside 6",
    level_wendy_battleship: "Wendy's Battleship",
    level_giant_isle_1: "Giant Isle 1",
    level_giant_isle_2: "Giant Isle 2",
    level_gi_ghost_house: "Giant Isle Ghost House",
    level_giant_isle_3: "Giant Isle 3",
    level_giant_isle_4: "Giant Isle 4",
    level_iggy_castle: "Iggy's Castle",
    level_piranha_hills_1: "Piranha Hills 1",
    level_sky_1: "The Sky 1",
    level_sky_2: "The Sky 2",
    level_sky_3: "The Sky 3",
    level_sky_fortress: "Sky Fortress",
    level_sky_4: "The Sky 4",
    level_sky_5: "The Sky 5",
    level_roy_ship: "Roy's Ship",
    level_ice_land_1: "Ice Land 1",
    level_ice_land_2: "Ice Land 2",
    level_ice_land_3: "Ice Land 3",
    level_ice_fortress: "Ice Fortress",
    level_ice_land_4: "Ice Land 4",
    level_ice_land_5: "Ice Land 5",
    level_ice_land_6: "Ice Land 6",
    level_lemmy_castle: "Lemmy's Castle",
    level_yoshi_island_1: "Yoshi's Island 1",
    level_yoshi_island_2: "Yoshi's Island 2",
    level_yoshi_island_3: "Yoshi's Island 3",
    level_yi_ghost_house: "Yoshi's Island Ghost House",
    level_yoshi_island_5: "Yoshi's Island 5",
    level_ludwig_castle: "Ludwig's Castle",
    level_bowser_tank_1: "Bowser's Tank #1",
    level_to_bowser_land: "To Bowser's Land",
    level_bowser_land_1: "Bowser's Land 1",
    level_bowser_land_2: "Bowser's Land 2",
    level_bowser_land_3: "Bowser's Land 3",
    level_magma_castle: "Magma Castle",
    level_bowser_land_4: "Bowser's Land 4",
    level_bandit_cave: "Bandit Cave",
    level_swooper_cave: "Swooper Cave",
    level_dark_cave: "Dark Cave",
    level_crappy_ship: "Crappy Ship",
    level_bowser_tower: "Bowser's Tower",
    level_mystery_castle: "??? Castle",
    level_bowser_castle: "Bowser's Castle",
    level_piranha_hills_2: "Piranha Hills 2",
    level_bonus_world_1: "Bonus World 1",
    level_bonus_world_2: "Bonus World 2",
    level_bonus_world_3: "Bonus World 3",
    level_bonus_world_4: "Bonus World 4",
    level_toad_castle: "Toad Castle",
    level_bonus_world_5: "Bonus World 5"
}

// These arrays are used to generate speedrun leaderboards. Only proper levels included, not Mushroom Houses, Mario's Pad, etc.
// YI4 also not included due to sharing value with YI Mushroom House. YI array is split around it so I can generate all the leaderboards in the right order
// Bonus World array is now also split to fit in a quick and silly Toad Castle speedrun
// And Bowser's Castle is also excluded because it needs separate logic
// Also the 3 cave levels in Bowser's Land split after an issue arose
grassland_array = [level_grassland_1, level_grassland_2, level_grassland_3, level_grassland_4, level_larry_castle]
desert_world_array = [level_desert_world_1, level_desert_world_2, level_pyramid, level_desert_world_3, level_desert_world_4, level_quicksand, level_morton_castle]
seaside_array = [level_seaside_1, level_seaside_2, level_seaside_3, level_seaside_fortress, level_seaside_4, level_seaside_5, level_seaside_6, level_wendy_battleship]
giant_isle_array = [level_giant_isle_1, level_giant_isle_2, level_gi_ghost_house, level_giant_isle_3, level_giant_isle_4, level_iggy_castle]
sky_array = [level_piranha_hills_1, level_sky_1, level_sky_2, level_sky_3, level_sky_fortress, level_sky_4, level_sky_5, level_roy_ship]
ice_land_array = [level_ice_land_1, level_ice_land_2, level_ice_land_3, level_ice_fortress, level_ice_land_4, level_ice_land_5, level_ice_land_6, level_lemmy_castle]
yoshi_island_array_1 = [level_yoshi_island_1, level_yoshi_island_2, level_yoshi_island_3, level_yi_ghost_house]
yoshi_island_array_2 = [level_yoshi_island_5, level_ludwig_castle]
bowser_land_array_1 = [level_bowser_tank_1, level_to_bowser_land, level_bowser_land_1, level_bowser_land_2, level_bowser_land_3, level_magma_castle, level_bowser_land_4]
bowser_land_array_2 = [level_bandit_cave, level_swooper_cave, level_dark_cave]
bowser_land_array_3 = [level_crappy_ship, level_bowser_tower, level_mystery_castle]
bonus_world_array_1 = [level_piranha_hills_2, level_bonus_world_1, level_bonus_world_2, level_bonus_world_3, level_bonus_world_4]
bonus_world_array_2 = [level_bonus_world_5]

// No longer used
//level_arrays = [grassland_array, desert_world_array, seaside_array, giant_isle_array, sky_array, ice_land_array, yoshi_island_array, bowser_land_array, bonus_world_array]

// $00CE: Room [16-bit]
//        0xd54c = Title screen
//        0xce8b = New game: Letter from Peach
//        0x0000 = World map, sometimes other transitions
//        0xa2c3 = Grassland 1
//        0xd4eb = Grassland 1 secret area
//        0xe24b = Grassland 2
//        0xd4f0 = Grassland 2 secret area
//        0xe681 = Yoshi's House
//        0xa266 = Grassland 3
//        0xe1eb = Grassland 3 secret area
//        0xb489 = Desert World 1
//        0x9fa2 = Desert World 1 secret area
//        0x9cfe = DW Mushroom House
//        0xcae0 = Desert World 4
//        0xb599 = Desert World 4 secret area
//        0xd91a = Seaside Mushroom House
//        0xadad = GI Mushroom House
//        0xf09e = Piranha Hills 1
//        0xb83c = Piranha Hills 1 secret area
//        0xb810 = Sky Mushroom House
//        0xad61 = IL Mushroom House
//        0x9bb1 = Lemmy's Castle area 4 (3-Up Moon)
//        0xa3b7 = Yoshi's Island 1
//        0xa75e = Yoshi's Island 1 secret area
//        0xda83 = YI Mushroom House
//        0x8677 = YI Ghost House area 6 (3-Up Moon)
//        0xabcb = Yoshi's Island 4
//        0x8ba0 = Yoshi's Island 4 area 2
//        0xe5af = Bowser's Land 1
//        0xe63e = Bowser's Land 1 secret area
//        0xeac3 = BL Mushroom House
//        0x9698 = Bowser's Castle boss
//        0xe2aa = Bowser defeated text
//        0xe7a7 = Bowser's Castle end
//        0xbd68 = Bonus World 1
//        0xf2c7 = Bonus World 1 secret area
//        0xfa7c = Bonus World 2
//        0xc4bd = Bonus World 2 secret area
//        0xcdd9 = Bonus World 3
//        0xd140 = Bonus World 3 secret area
//        0xa72e = Toad Castle
//        0xb7c0 = Toad Castle exit
//        0xf171 = Mario's Pad
//        0xf935 = Mario's Pad inside
//        0x973a = Powerup House
//        0xabd8 = Fun House
//        0xe60a = Fun House: Coin Ship
//        0x9475 = Fun House: Coin Ship miniboss
//        0x8eda = Fun House: Hammer Bro. Zone
//        0x87d6 = Fun House: Desert Maze
//        0xbd53 = Fun House: Frost Cave
//        0xe1c0 = Fun House: Bowser

function room() => word(0xce)

room_title_screen = 0xd54c
room_peach_letter = 0xce8b
room_grassland_1 = 0xa2c3
room_grassland_1_secret = 0xd4eb
room_grassland_2 = 0xe24b
room_grassland_2_secret = 0xd4f0
room_yoshi_house = 0xe681
room_grassland_3 = 0xa266
room_grassland_3_secret = 0xe1eb
room_desert_world_1 = 0xb489
room_desert_world_1_secret = 0x9fa2
room_dw_mushroom_house = 0x9cfe
room_desert_world_4 = 0xcae0
room_desert_world_4_secret = 0xb599
room_seaside_mushroom_house = 0xd91a
room_gi_mushroom_house = 0xadad
room_piranha_hills_1 = 0xf09e
room_piranha_hills_1_secret = 0xb83c
room_sky_mushroom_house = 0xb810
room_il_mushroom_house = 0xad61
room_lemmy_castle_moon = 0x9bb1
room_yoshi_island_1 = 0xa3b7
room_yoshi_island_1_secret = 0xa75e
room_yi_mushroom_house = 0xda83
room_yi_ghost_house_moon = 0x8677
room_yoshi_island_4 = 0xabcb
room_yoshi_island_4_area_2 = 0x8ba0
room_bowser_land_1 = 0xe5af
room_bowser_land_1_secret = 0xe63e
room_bl_mushroom_house = 0xeac3
room_bowser_castle_boss = 0x9698
room_bonus_world_1 = 0xbd68
room_bonus_world_1_secret = 0xf2c7
room_bonus_world_2 = 0xfa7c
room_bonus_world_2_secret = 0xc4bd
room_bonus_world_3 = 0xcdd9
room_bonus_world_3_secret = 0xd140
room_toad_castle = 0xa72e
room_toad_castle_exit = 0xb7c0
room_mario_pad = 0xf171
room_mario_pad_inside = 0xf935
room_powerup_house = 0x973a
room_fun_house = 0xabd8
room_fun_house_coin_ship = 0xe60a
room_fun_house_coin_ship_boss = 0x9475
room_fun_house_hammer_bro_zone = 0x8eda
room_fun_house_desert_maze = 0x87d6
room_fun_house_frost_cave = 0xbd53
room_fun_house_bowser = 0xe1c0

room_dictionary = {
    room_yoshi_house: "Yoshi's House",
    room_dw_mushroom_house: "Desert World Mushroom House",
    room_seaside_mushroom_house: "Seaside Mushroom House",
    room_gi_mushroom_house: "Giant Isle Mushroom House",
    room_sky_mushroom_house: "Sky Mushroom House",
    room_il_mushroom_house: "Ice Land Mushroom House",
    room_yi_mushroom_house: "Yoshi's Island Mushroom House",
    room_yoshi_island_4: "Yoshi's Island 4",
    room_yoshi_island_4_area_2: "Yoshi's Island 4",
    room_bl_mushroom_house: "Bowser's Land Mushroom House",
    room_mario_pad: "Mario's Pad",
    room_mario_pad_inside: "Mario's Pad",
    room_powerup_house: "Powerup House",
    room_fun_house: "Fun House",
    room_fun_house_coin_ship: "Fun House: Coin Ship",
    room_fun_house_coin_ship_boss: "Fun House: Coin Ship",
    room_fun_house_hammer_bro_zone: "Fun House: Hammer Bro. Zone",
    room_fun_house_desert_maze: "Fun House: Desert Maze",
    room_fun_house_frost_cave: "Fun House: Frost Cave",
    room_fun_house_bowser: "Fun House: Bowser Fight"
}

// For speedrun leaderboards. Coin Ship removed due to issue, needs separate logic
fun_house_array = [room_fun_house_hammer_bro_zone, room_fun_house_desert_maze, room_fun_house_frost_cave]

// $0094: Mario x-coordinate (in level) [16-bit]
// $0096: Mario y-coordinate (in level) [16-bit]

function mario_x() => word(0x94)
function mario_y() => word(0x96)

// $1F02: Level complete bitflags [8-bit]
//        Bit7 = Grassland 1
//        Bit6 = Grassland 2
//        Bit5 = Grassland 3
//        Bit4 = Grassland 4
//        Bit3 = Larry's Castle
//        Bit2 = Desert World 1
//        Bit1 = Desert World 2
//        Bit0 = Pyramid
// $1F03: Level complete bitflags [8-bit]
//        Bit7 = Desert World 3
//        Bit6 = Desert World 4
//        Bit5 = Quicksand
//        Bit4 = Morton's Castle
//        Bit3 = Seaside 1
//        Bit2 = Seaside 2
//        Bit1 = Seaside 3
//        Bit0 = Seaside Fortress
// $1F04: Level complete bitflags [8-bit]
//        Bit7 = Seaside 4
//        Bit6 = Seaside 5
//        Bit5 = Seaside 6
//        Bit4 = Wendy's Battleship
//        Bit3 = Giant Isle 1
//        Bit2 = Giant Isle 2
//        Bit1 = GI Ghost House
//        Bit0 = Giant Isle 3
// $1F05: Level complete bitflags [8-bit]
//        Bit7 = Giant Isle 4
//        Bit6 = Iggy's Castle
//        Bit5 = Piranha Hills 1
//        Bit4 = The Sky 1
//        Bit3 = The Sky 2
//        Bit2 = The Sky 3
//        Bit1 = Sky Fortress
//        Bit0 = The Sky 4
// $1F06: Level complete bitflags [8-bit]
//        Bit7 = The Sky 5
//        Bit6 = Roy's Ship
//        Bit5 = Ice Land 1
//        Bit4 = Ice Land 2
//        Bit3 = Ice Land 3
//        Bit2 = Ice Fortress
//        Bit1 = Ice Land 4
//        Bit0 = Ice Land 5
// $1F07: Level complete bitflags [8-bit]
//        Bit7 = Ice Land 6
//        Bit6 = Lemmy's Castle
//        Bit5 = Yoshi's Island 1
//        Bit4 = Yoshi's Island 2
//        Bit3 = Yoshi's Island 3
//        Bit2 = YI Ghost House
//        Bit1 = Yoshi's Island 4
//        Bit0 = Yoshi's Island 5
// $1F08: Level complete bitflags [8-bit]
//        Bit7 = Ludwig's Castle
//        Bit6 = Bowser's Tank #1
//        Bit5 = To Bowser's Land
//        Bit4 = Bowser's Land 1
//        Bit3 = Bowser's Land 2
//        Bit2 = Bowser's Land 3
//        Bit1 = Magma Castle
//        Bit0 = Bowser's Land 4
// $1F09: Level complete bitflags [8-bit]
//        Bit7 = Bandit Cave
//        Bit6 = Swooper Cave
//        Bit5 = Dark Cave
//        Bit4 = Crappy Ship
//        Bit3 = ??? Castle
//        Bit2 = Bowser's Tower
//        Bit1 = Bowser's Castle
//        Bit0 = Piranha Hills 2
// $1F0A: Level complete bitflags [8-bit]
//        Bit7 = Bonus World 1
//        Bit6 = Bonus World 2
//        Bit5 = Bonus World 3
//        Bit4 = Bonus World 4
//        Bit3 = Toad Castle
//        Bit2 = Bonus World 5

level_complete_dictionary = {
    level_larry_castle: bit3(0x1f02),
    level_morton_castle: bit4(0x1f03),
    level_seaside_fortress: bit0(0x1f03),
    level_wendy_battleship: bit4(0x1f04),
    level_gi_ghost_house: bit1(0x1f04),
    level_iggy_castle: bit6(0x1f05),
    level_sky_fortress: bit1(0x1f05),
    level_roy_ship: bit6(0x1f06),
    level_ice_fortress: bit2(0x1f06),
    level_lemmy_castle: bit6(0x1f07),
    level_yi_ghost_house: bit2(0x1f07),
    level_ludwig_castle: bit7(0x1f08),
    level_magma_castle: bit1(0x1f08),
    level_mystery_castle: bit3(0x1f09),
    level_bowser_castle: bit1(0x1f09),
    level_bonus_world_5: bit2(0x1f0a)
}

// $CB04: YI Ghost House: 3-Up Moon tile [8-bit]
//        0x6e = 3-Up Moon
//        0x25 = Empty
// $D12A: Lemmy's Castle: 3-Up Moon tile [8-bit]
//        See 0x00cb04 note

function yi_ghost_house_moon() => byte(0xcb04)

moon_tile = 0x6e
empty_tile = 0x25

function lemmy_castle_moon() => byte(0xd12a)

// $13F9: Fun House: Bowser end cutscene begins [8-bit]
//        0x00 to 0x03
//        Has other meaning but only using for speedrun leaderboard

function fun_house_bowser_end() => prev(byte(0x13f9)) == 0 && byte(0x13f9) == 3

// x: 0x0f70 to 0x0fd0
// y: 0x00f0 to 0x0130

// $1AB16: Fun House: Frost Cave hidden 1-Up #3 grabbed [8-bit]
//         0x01 to 0x00
//         Dynamic, only use these with room ID and within x-coordinates 0x0f70 to 0x0fd0, y-coordinates 0x00f0 to 0x0130
// $1AB17: Fun House: Frost Cave hidden 1-Up #2 grabbed [8-bit]
//         See 0x0014ce note
// $1AB18: Fun House: Frost Cave hidden 1-Up #1 grabbed [8-bit]
//         See 0x0014ce note

function fun_house_frost_cave_1_up_3() => byte(0x1ab16)
function fun_house_frost_cave_1_up_2() => byte(0x1ab17)
function fun_house_frost_cave_1_up_1() => byte(0x1ab18)

// ------------
// Achievements
// ------------

// --------
// Progress
// --------

function achievement_progress(id, title, points, level_parameter) {
    achievement(
        title = title,
        description = "Clear " + level_dictionary[level_parameter] + ".",
        points = points,
        trigger = game_state() == state_world_map &&
                  level() == level_parameter &&
                  prev(level_complete_dictionary[level_parameter]) == 0 &&
                  level_complete_dictionary[level_parameter] == 1
    )
}

function achievement_secret_area(id, title, points, level_parameter, first_room, second_room) {
    achievement(
        title = title,
        description = "Find the secret area in " + level_dictionary[level_parameter] + ".",
        points = points,
        trigger = game_state() == state_transition &&
                  level() == level_parameter &&
                  prev(room()) == first_room &&
                  room() == second_room
    )
}

function achievement_speedrun(id, title, points, level_parameter, time_parameter) {
    achievement(
        title = title,
        description = "Clear " + level_dictionary[level_parameter] + " with at least " + time_parameter + " remaining on the timer.",
        points = points,
        trigger = __ornext(game_state() == state_in_level || game_state() == state_transition) &&
                  level() == level_parameter &&
                  time() >= time_parameter &&
                  prev(exit_level()) == 0 &&
                  trigger_when(exit_level() == exit_level_complete)
    )
}

function achievement_small_mario(id, title, points, level_parameter) {
    achievement(
        title = title,
        description = "Clear " + level_dictionary[level_parameter] + " as Small Mario from start to finish, without getting a power-up.",
        points = points,
        trigger = once(prior(game_state()) == state_world_map &&
                       game_state() == state_transition &&
                       level() == level_parameter &&
                       prev(room()) == 0 &&
                       room() != 0 &&
                       mario_power_state() == small_mario
                  ) &&
                  __ornext(game_state() == state_in_level || game_state() == state_transition) &&
                  prev(exit_level()) == 0 &&
                  trigger_when(exit_level() == exit_level_complete) &&
                  never(mario_power_state() != small_mario) &&
                  never(game_state() == state_world_map)
    )
}

function achievement_red_coins(id, title, points, level_parameter) {
    achievement(
        title = title,
        description = "Get all Red Coins in " + level_dictionary[level_parameter] + ".",
        points = points,
        trigger = game_state() == state_in_level &&
                  level() == level_parameter &&
                  prev(red_coins()) == 4 &&
                  red_coins() == 5
    )
}

function achievement_fun_house(id, title, description, points, room_parameter) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = game_state() == state_in_level &&
                  level() == level_fun_house &&
                  room() == room_parameter &&
                  prev(exit_level()) == 0 &&
                  exit_level() == exit_level_complete
    )
}

achievement_secret_area(325743, "Super Mario Bros. 5", 2, level_grassland_1, room_grassland_1, room_grassland_1_secret)
achievement_speedrun(325744, "Classic SMB3 Feel", 5, level_grassland_1, 255)
achievement_secret_area(325745, "A Pipeful of Dollars", 2, level_grassland_2, room_grassland_2, room_grassland_2_secret)
achievement_secret_area(325746, "3x3", 2, level_grassland_3, room_grassland_3, room_grassland_3_secret)
achievement_small_mario(325747, "Close Quarters", 5, level_grassland_4)
achievement_progress(325720, "Unlucky Larry", 5, level_larry_castle)

achievement_secret_area(325748, "Beautiful Blue Coins", 2, level_desert_world_1, room_desert_world_1, room_desert_world_1_secret)
achievement_small_mario(325749, "Pyramid of No Power", 5, level_pyramid)
achievement_secret_area(325750, "Moai Menace", 2, level_desert_world_4, room_desert_world_4, room_desert_world_4_secret)
achievement_speedrun(325751, "Rage Race", 5, level_quicksand, 240)
achievement_progress(325721, "Big Mouth Shuts Up", 5, level_morton_castle)

achievement_small_mario(325752, "Deep Trouble", 5, level_seaside_3)
achievement_progress(325722, "Invasion by Sea", 5, level_seaside_fortress)
achievement_speedrun(325753, "Fire Flower Recommended", 5, level_seaside_4, 250)
achievement_progress(325723, "Battleship Sunk", 5, level_wendy_battleship)
achievement_red_coins(325754, "Piracy", 5, level_wendy_battleship)

achievement_speedrun(325755, "Lakitu's Rain of Terror", 5, level_giant_isle_2, 220)
achievement_progress(325724, "A Harrowing Ordeal", 5, level_gi_ghost_house)
achievement_small_mario(325756, "Extra Small", 5, level_giant_isle_3)
achievement_progress(325725, "Crazed Koopa", 10, level_iggy_castle)

achievement_secret_area(325757, "Conspicuous Pipe", 2, level_piranha_hills_1, room_piranha_hills_1, room_piranha_hills_1_secret)
achievement_small_mario(325758, "Birds of Prey", 5, level_sky_1)
achievement_speedrun(325759, "Familiar Territory", 5, level_sky_3, 200)
achievement_progress(325726, "Invasion by Air", 5, level_sky_fortress)
achievement(
    id = 325742,
    title = "Finally!",
    description = "Get a Super Leaf and become Raccoon Mario.",
    points = 2,
    trigger = game_state() == state_in_level &&
              prev(mario_power_state()) != raccoon_mario &&
              mario_power_state() == raccoon_mario
)
achievement_progress(325727, "Bullied", 10, level_roy_ship)

achievement_small_mario(325760, "Ptooie Panic", 5, level_ice_land_1)
achievement_speedrun(325761, "Big Bertha's Revenge", 5, level_ice_land_3, 340)
achievement_progress(325728, "Winter Invasion", 5, level_ice_fortress)
achievement_progress(325729, "Down with the Clown", 10, level_lemmy_castle)
achievement(
    id = 325762,
    title = "Lemmy's Precious Treasure",
    description = "Get the 3-Up Moon in Lemmy's Castle",
    points = 5,
    trigger = game_state() == state_in_level &&
              level() == level_lemmy_castle &&
              room() == room_lemmy_castle_moon &&
              prev(lemmy_castle_moon()) == moon_tile &&
              lemmy_castle_moon() == empty_tile
)

achievement_secret_area(325763, "Where's Yoshi Though", 2, level_yoshi_island_1, room_yoshi_island_1, room_yoshi_island_1_secret)
achievement_speedrun(325764, "Bah Bah!", 5, level_yoshi_island_1, 230)
achievement_red_coins(325765, "Yoshi's Red Coins", 5, level_yoshi_island_2)
achievement_red_coins(325766, "More Stealing from Yoshi", 5, level_yoshi_island_3)
achievement_progress(325730, "Ghost Hunter", 5, level_yi_ghost_house)
achievement(
    id = 325767,
    title = "Haunted Treasure",
    description = "Get all Red Coins and the 3-Up Moon in Yoshi's Island Ghost House.",
    points = 5,
    trigger = once(game_state() == state_in_level &&
                   level() == level_yi_ghost_house &&
                   prev(red_coins()) == 4 &&
                   red_coins() == 5
              ) &&
              once(game_state() == state_in_level &&
                   level() == level_yi_ghost_house &&
                   room() == room_yi_ghost_house_moon &&
                   prev(yi_ghost_house_moon()) == moon_tile &&
                   yi_ghost_house_moon() == empty_tile
              ) &&
              never(game_state() == state_world_map)
)
achievement(
    id = 325768,
    title = "Dense Jungle",
    description = "Clear Yoshi's Island 4 as Small Mario from start to finish, without getting a power-up. (Watch out for a buggy death tile in the tunnel!)",
    points = 5,
    trigger = once(prior(game_state()) == state_world_map &&
                   game_state() == state_transition &&
                   level() == level_yoshi_island_4 &&
                   prev(room()) == 0 &&
                   room() == room_yoshi_island_4 &&
                   mario_power_state() == small_mario
              ) &&
              __ornext(game_state() == state_in_level || game_state() == state_transition) &&
              prev(exit_level()) == 0 &&
              trigger_when(exit_level() == exit_level_complete) &&
              never(mario_power_state() != small_mario) &&
              never(game_state() == state_world_map)
)
achievement_progress(325731, "Ludwig's Last Symphony", 10, level_ludwig_castle)

achievement_secret_area(325769, "Dark Secrets", 3, level_bowser_land_1, room_bowser_land_1, room_bowser_land_1_secret)
achievement_speedrun(325770, "Rage Race 2: Slow and Steady Wins the Race", 5, level_bowser_land_2, 330)
achievement_progress(325732, "Lethal Lava Lord", 5, level_magma_castle)
achievement_small_mario(325771, "Sky Craptain and the World of Mario", 5, level_crappy_ship)
achievement_progress(325733, "Final Invasion", 5, level_mystery_castle)
achievement_progress(325734, "King of the Koopas", 25, level_bowser_castle)

achievement_secret_area(325772, "Bonus World Bonus", 2, level_bonus_world_1, room_bonus_world_1, room_bonus_world_1_secret)
achievement_speedrun(325773, "Classic SMW Feel", 5, level_bonus_world_1, 255)
achievement_secret_area(325774, "The Blue Cave", 2, level_bonus_world_2, room_bonus_world_2, room_bonus_world_2_secret)
achievement_secret_area(325775, "Cozy Night", 2, level_bonus_world_3, room_bonus_world_3, room_bonus_world_3_secret)
achievement_small_mario(325776, "Mario's Last Stand", 5, level_bonus_world_4)
achievement_progress(325735, "Mysterious Land", 5, level_bonus_world_5)

achievement(
    id = 325736,
    title = "Chill With Your Bro",
    description = "Get the 1-Up in Mario's Pad.",
    points = 1,
    trigger = game_state() == state_in_level &&
              level() == level_mario_pad &&
              room() == room_mario_pad_inside &&
              lives() > prev(lives())
)
achievement_fun_house(325737, "Many Coins, One Point", "Clear Coin Ship in Fun House.", 1, room_fun_house_coin_ship_boss)
achievement_fun_house(325738, "The Hammering Fields", "Clear Hammer Bro. Zone in Fun House.", 2, room_fun_house_hammer_bro_zone)
achievement_fun_house(325739, "Lost in the Desert", "Clear Desert Maze in Fun House.", 2, room_fun_house_desert_maze)
achievement_fun_house(325740, "A Cold and Cruel Challenge", "Clear Frost Cave in Fun House.", 5, room_fun_house_frost_cave)

achievement(
    id = 325777,
    title = "The Secret Exit",
    description = "Clear the secret exit in Frost Cave in Fun House.",
    points = 5,
    trigger = game_state() == state_in_level &&
              level() == level_fun_house &&
              room() == room_fun_house_frost_cave &&
              mario_action() != end_level_star &&
              prev(exit_level()) == 0 &&
              exit_level() == exit_level_complete
)
// This old design was unreliable, see Drew's comment here https://retroachievements.org/achievement/325777
//achievement(
//    id = 325777,
//    title = "The Secret Exit",
//    description = "Get the 3 hidden 1-Ups in Frost Cave in Fun House.",
//    points = 5,
//    trigger = once(game_state() == state_in_level &&
//                   level() == level_fun_house &&
//                   room() == room_fun_house_frost_cave &&
//                   mario_x() > 0xf70 &&
//                   mario_x() < 0xfd0 &&
//                   mario_y() > 0xf0 &&
//                   mario_y() < 0x130 &&
//                   prev(fun_house_frost_cave_1_up_3()) == 1 &&
//                   fun_house_frost_cave_1_up_3() == 0
//              ) &&
//              once(game_state() == state_in_level &&
//                   level() == level_fun_house &&
//                   room() == room_fun_house_frost_cave &&
//                   mario_x() > 0xf70 &&
//                   mario_x() < 0xfd0 &&
//                   mario_y() > 0xf0 &&
//                   mario_y() < 0x130 &&
//                   prev(fun_house_frost_cave_1_up_2()) == 1 &&
//                   fun_house_frost_cave_1_up_2() == 0
//              ) &&
//              once(game_state() == state_in_level &&
//                   level() == level_fun_house &&
//                   room() == room_fun_house_frost_cave &&
//                   mario_x() > 0xf70 &&
//                   mario_x() < 0xfd0 &&
//                   mario_y() > 0xf0 &&
//                   mario_y() < 0x130 &&
//                   prev(fun_house_frost_cave_1_up_1()) == 1 &&
//                   fun_house_frost_cave_1_up_1() == 0
//              ) &&
//              never(game_state() == state_world_map)
//)

achievement(
    id = 325741,
    title = "Mario Astral Projects to SMW",
    description = "Defeat Bowser in Fun House.",
    points = 3,
    trigger = game_state() == state_fun_house_bowser &&
              level() == level_fun_house &&
              room() == room_fun_house_bowser &&
              prev(exit_level()) == 0 &&
              exit_level() == exit_level_complete
)

// ------------
// Leaderboards
// ------------

leaderboard(
    id = 66978,
    title = "Lowest Score: Full Game",
    description = "One session, starts after New Game, ends after clearing Bonus World 5. If you want to remove the tracker and cancel this challenge, press L+X+Select while on the world map.",
    start = game_state() == state_transition &&
            total_exits() == 0 &&
            prev(room()) == 0 &&
            room() == room_peach_letter,
    cancel = game_state() == state_world_map &&
             input_l_x_select(),
    submit = game_state() == state_in_level &&
             level() == level_bonus_world_5 &&
             prev(exit_level()) == 0 &&
             exit_level() == exit_level_complete,
    value = measured(score()),
    format = "VALUE",
    lower_is_better = true
)

leaderboard(
    id = 66979,
    title = "Speedrun: Full Game",
    description = "One session, starts after New Game, ends after clearing Bonus World 5. If you want to remove the tracker and cancel this challenge, press R+X+Select while on the world map.",
    start = game_state() == state_transition &&
            total_exits() == 0 &&
            prev(room()) == 0 &&
            room() == room_peach_letter,
    cancel = game_state() == state_world_map &&
             input_r_x_select(),
    submit = game_state() == state_in_level &&
             level() == level_bonus_world_5 &&
             prev(exit_level()) == 0 &&
             exit_level() == exit_level_complete,
    value = measured(always_true()),
    format = "FRAMES",
    lower_is_better = true
)

leaderboard_id = {
    level_grassland_1: 66980,
    level_grassland_2: 66981,
    level_grassland_3: 66982,
    level_grassland_4: 66983,
    level_larry_castle: 66984,
    level_desert_world_1: 66985,
    level_desert_world_2: 66986,
    level_pyramid: 66987,
    level_desert_world_3: 66988,
    level_desert_world_4: 66989,
    level_quicksand: 66990,
    level_morton_castle: 66991,
    level_seaside_1: 66992,
    level_seaside_2: 66993,
    level_seaside_3: 66994,
    level_seaside_fortress: 66995,
    level_seaside_4: 66996,
    level_seaside_5: 66997,
    level_seaside_6: 66998,
    level_wendy_battleship: 66999,
    level_giant_isle_1: 67000,
    level_giant_isle_2: 67001,
    level_gi_ghost_house: 67002,
    level_giant_isle_3: 67003,
    level_giant_isle_4: 67004,
    level_iggy_castle: 67005,
    level_piranha_hills_1: 67006,
    level_sky_1: 67007,
    level_sky_2: 67008,
    level_sky_3: 67009,
    level_sky_fortress: 67010,
    level_sky_4: 67011,
    level_sky_5: 67012,
    level_roy_ship: 67013,
    level_ice_land_1: 67014,
    level_ice_land_2: 67015,
    level_ice_land_3: 67016,
    level_ice_fortress: 67017,
    level_ice_land_4: 67018,
    level_ice_land_5: 67019,
    level_ice_land_6: 67020,
    level_lemmy_castle: 67021,
    level_yoshi_island_1: 67022,
    level_yoshi_island_2: 67023,
    level_yoshi_island_3: 67024,
    level_yi_ghost_house: 67025,
    level_yoshi_island_4: 67026,
    level_yoshi_island_5: 67027,
    level_ludwig_castle: 67028,
    level_bowser_tank_1: 67029,
    level_to_bowser_land: 67030,
    level_bowser_land_1: 67031,
    level_bowser_land_2: 67032,
    level_bowser_land_3: 67033,
    level_magma_castle: 67034,
    level_bowser_land_4: 67035,
    level_bandit_cave: 67036,
    level_swooper_cave: 67037,
    level_dark_cave: 67038,
    level_crappy_ship: 67039,
    level_bowser_tower: 67040,
    level_mystery_castle: 67041,
    level_bowser_castle: 67042,
    level_piranha_hills_2: 67043,
    level_bonus_world_1: 67044,
    level_bonus_world_2: 67045,
    level_bonus_world_3: 67046,
    level_bonus_world_4: 67047,
    level_toad_castle: 67048,
    level_bonus_world_5: 67049,
    room_fun_house_coin_ship_boss: 67050,
    room_fun_house_hammer_bro_zone: 67051,
    room_fun_house_desert_maze: 67052,
    room_fun_house_frost_cave: 67053,
    room_fun_house_bowser: 67054
}

function leaderboard_level_speedrun(array) {
    for level_iteration in array {
        leaderboard(
            id = leaderboard_id[level_iteration],
            title = level_dictionary[level_iteration] + " Speedrun",
            description = "Submits time remaining.",
            start = game_state() == state_in_level &&
                    level() == level_iteration &&
                    prev(exit_level()) == 0 &&
                    exit_level() == exit_level_complete,
            cancel = always_false(),
            submit = always_true(),
            value = measured(time()),
            format = "VALUE"
        )
    }
}

// Used for the 3 cave levels due to an issue that arose with them. Small tweak to exit_level() logic
// Could probably apply this to all leaderboards but don't want to mess with everything after it's live
function leaderboard_level_speedrun_alt(array) {
    for level_iteration in array {
        leaderboard(
            id = leaderboard_id[level_iteration],
            title = level_dictionary[level_iteration] + " Speedrun",
            description = "Submits time remaining.",
            start = game_state() == state_in_level &&
                    level() == level_iteration &&
                    prev(exit_level()) != exit_level_complete &&
                    exit_level() == exit_level_complete,
            cancel = always_false(),
            submit = always_true(),
            value = measured(time()),
            format = "VALUE"
        )
    }
}

leaderboard_level_speedrun(grassland_array)
leaderboard_level_speedrun(desert_world_array)
leaderboard_level_speedrun(seaside_array)
leaderboard_level_speedrun(giant_isle_array)
leaderboard_level_speedrun(sky_array)
leaderboard_level_speedrun(ice_land_array)
leaderboard_level_speedrun(yoshi_island_array_1)

leaderboard(
    id = 67026,
    title = "Yoshi's Island 4 Speedrun",
    description = "Submits time remaining.",
    start = game_state() == state_in_level &&
            level() == level_yoshi_island_4 &&
            room() == room_yoshi_island_4 &&
            prev(exit_level()) == 0 &&
            exit_level() == exit_level_complete,
    cancel = always_false(),
    submit = always_true(),
    value = measured(time()),
    format = "VALUE"
)

leaderboard_level_speedrun(yoshi_island_array_2)
leaderboard_level_speedrun(bowser_land_array_1)
leaderboard_level_speedrun_alt(bowser_land_array_2)
leaderboard_level_speedrun(bowser_land_array_3)

leaderboard(
    id = 67042,
    title = "Bowser's Castle Speedrun",
    description = "Submits time remaining.",
    start = game_state() == state_in_level &&
            level() == level_bowser_castle &&
            room() == room_bowser_castle_boss &&
            prev(mario_action()) != enter_door &&
            mario_action() == enter_door,
    cancel = always_false(),
    submit = always_true(),
    value = measured(time()),
    format = "VALUE"
)

leaderboard_level_speedrun(bonus_world_array_1)

leaderboard(
    id = 67048,
    title = "Toad Castle Speedrun",
    description = "Why not?",
    start = game_state() == state_transition &&
            prev(room()) == 0 &&
            room() == room_toad_castle,
    cancel = game_state() == state_world_map ||
             exit_level() == exit_level_die_or_quit,
    submit = prev(exit_level()) == 0 &&
             exit_level() == exit_level_complete,
    value = measured(always_true()),
    format = "FRAMES",
    lower_is_better = true
)

leaderboard_level_speedrun(bonus_world_array_2)

function leaderboard_fun_house_speedrun() {
    for room_iteration in fun_house_array {
        leaderboard(
            id = leaderboard_id[room_iteration],
            title = room_dictionary[room_iteration] + " Speedrun",
            description = "Submits time remaining.",
            start = game_state() == state_in_level &&
                    room() == room_iteration &&
                    prev(exit_level()) == 0 &&
                    exit_level() == exit_level_complete,
            cancel = always_false(),
            submit = always_true(),
            value = measured(time()),
            format = "VALUE"
        )
    }
}

// room() value for this one was shared with the last room in Bowser's Land 3. So had to add the level() logic
// Could probably apply to all the fun house leaderboards, but still avoiding unnecessary changes
leaderboard(
    id = 67050,
    title = "Fun House: Coin Ship Speedrun",
    description = "Submits time remaining.",
    start = game_state() == state_in_level &&
            level() == 0xff &&
            room() == room_fun_house_coin_ship_boss &&
            prev(exit_level()) == 0 &&
            exit_level() == exit_level_complete,
    cancel = always_false(),
    submit = always_true(),
    value = measured(time()),
    format = "VALUE"
)

leaderboard_fun_house_speedrun()

leaderboard(
    id = 67054,
    title = "Fun House: Bowser Speedrun",
    description = "Submits as ending cutscene begins.",
    start = prev(game_state()) == state_transition &&
            game_state() == state_fun_house_bowser &&
            room() == room_fun_house_bowser,
    cancel = game_state() == state_world_map ||
             exit_level() == exit_level_die_or_quit,
    submit = fun_house_bowser_end(),
    value = measured(always_true()),
    format = "FRAMES",
    lower_is_better = true
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    game_state() == state_world_map && world_map() == 0 && world_map_x() >= 0 && world_map_x() <= 0xc && world_map_y() >= 0x19 && world_map_y() <= 0x1e,
    "{0} is in Grassland (Overworld) | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    game_state() == state_world_map && world_map() == 0 && world_map_x() >= 0x11 && world_map_x() <= 0x1d && world_map_y() >= 0x17 && world_map_y() <= 0x1f,
    "{0} is in Seaside (Overworld) | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    game_state() == state_world_map && world_map() == 0 && world_map_x() >= 0x14 && world_map_x() <= 0x1f && world_map_y() >= 0xf && world_map_y() <= 0x10,
    "{0} is in Piranha Hills (Overworld) | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)


rich_presence_conditional_display(
    game_state() == state_world_map && world_map() == 0 && world_map_x() >= 1 && world_map_x() <= 0x10 && world_map_y() >= 7 && world_map_y() <= 0x11,
    "{0} is in Yoshi's Island (Overworld) | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    game_state() == state_world_map && world_map() == 0 && world_map_x() >= 0x18 && world_map_x() <= 0x1d && world_map_y() >= 5 && world_map_y() <= 9,
    "{0} is heading to Bowser's Land (Overworld) | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    game_state() == state_world_map && world_map() == 0 && world_map_x() >= 0x2 && world_map_x() <= 0x11 && world_map_y() >= 1 && world_map_y() <= 5,
    "{0} is in Bonus World (Overworld) | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    game_state() == state_world_map,
    "{0} is in {1} (Overworld) | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("WorldMap", world_map(), map_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    room() == room_title_screen,
    "Viewing the Title Screen"
)

rich_presence_conditional_display(
    room() == room_peach_letter,
    "Reading a letter from Princess Toadstool"
)

rich_presence_conditional_display(
    (level() == 0xff || level() == 0x2e) && room() != 0 && exit_level() == exit_level_complete,
    "{0} cleared {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Room", room(), room_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    (level() == 0xff || level() == 0x2e) && room() != 0 && mario_action() == mario_death,
    "Mario died in {0} | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("Room", room(), room_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    (level() == 0xff || level() == 0x2e) && room() != 0 && exit_level() == exit_level_die_or_quit,
    "{0} died or quit in {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Room", room(), room_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    (level() == 0xff || level() == 0x2e) && room() != 0,
    "{0} is in {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Room", room(), room_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    (level() == 0xff || level() == 0x2e) && room() == 0,
    "{0} | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    exit_level() == exit_level_complete,
    "{0} cleared {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Level", level(), level_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    mario_action() == mario_death,
    "Mario died in {0} | 🚶{1} | 🚪{2}/70",
    rich_presence_lookup("Level", level(), level_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

// The hand that drags you into these levels will set the "exit_level_die_or_quit" value for the whole level. So they need separate logic for an appropriate message
rich_presence_conditional_display(
    exit_level() == exit_level_die_or_quit && (level() == level_bandit_cave || level() == level_swooper_cave || level() == level_dark_cave),
    "{0} is in {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Level", level(), level_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    exit_level() == exit_level_die_or_quit,
    "{0} died or quit in {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Level", level(), level_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_conditional_display(
    room() != 0,
    "{0} is in {1} | 🚶{2} | 🚪{3}/70",
    rich_presence_lookup("MarioPower", mario_power_state(), mario_power_dictionary),
    rich_presence_lookup("Level", level(), level_dictionary),
    rich_presence_value("Lives", lives() + 1),
    rich_presence_value("Exits", total_exits())
)

rich_presence_display(
    "Playing ~Hack~ Super Mario Bros. 3X"
)

// ------------
// Unused notes
// ------------

// $0DBF: Coins [8-bit]

// $0F1A: P-Meter (Speed meter) [6 bytes]
//        0x38 = Inactive
//        0x40 = Active
// $0F20: P-Meter max speed [8-bit]
//        Flickers between 0x39 and 0x41

// $1490: Starman power-up timer [8-bit]
//        Down from 0x7f

// $1F13: Last direction moved on world map [8-bit]
//        0x00 = Up
//        0x02 = Down
//        0x04 = Left
//        0x06 = Right
// $1FF4: 3-Up Moon bitflags [8-bit]
//        Bit2 = YI Ghost House
//        Bit6 = Lemmy's Castle
//        Lost after closing/resetting game

// $13BF: Last played level [8-bit]
//        Unreliable! Talking to a Toad will change the value, and sometimes the new value will be the same as another level. Can't be used with RP.
//        Toads are found in most Mushroom Houses, Powerup House, Fun House, Toad Castle, and Bonus World 5.
//        Talking to Luigi in Mario's Pad or hitting a Message Box doesn't seem to have the same effect.
//        0x01 = Desert World 1
//        0x02 = Desert World 2
//        0x03 = DW Mushroom House
//        0x04 = Pyramid
//        0x05 = Desert World 3
//        0x06 = Desert World 4
//        0x07 = Quicksand
//        0x08 = Morton's Castle
//        0x09 = Seaside 1
//        0x0a = Seaside 2
//        0x0b = Seaside 3
//        0x0c = Seaside Fortress
//        0x0d = Seaside 4
//        0x0e = Seaside 5
//        0x0f = Seaside 6
//        0x10 = Wendy's Battleship
//        0x11 = Giant Isle 1
//        0x12 = Giant Isle 2
//        0x13 = Yoshi's House
//        0x14 = GI Ghost House
//        0x15 = Giant Isle 3
//        0x17 = Giant Isle 4
//        0x18 = Iggy's Castle
//        0x19 = Piranha Hills 1
//        0x1a = The Sky 1
//        0x1b = The Sky 2
//        0x1d = The Sky 3
//        0x1e = Sky Fortress
//        0x1f = The Sky 4
//        0x20 = The Sky 5
//        0x21 = Roy's Ship
//        0x22 = Ice Land 1
//        0x23 = Ice Land 2
//        0x25 = Larry's Castle
//        0x27 = Grassland 3
//        0x29 = Grassland 1
//        0x2a = Grassland 2
//        0x2b = Ice Land 3
//        0x2c = IL Mushroom House
//        0x2d = Ice Fortress
//        0x2e = Ice Land 4
//        0x2f = Ice Land 5
//        0x30 = Ice Land 6
//        0x31 = Lemmy's Castle
//        0x32 = Yoshi's Island 1
//        0x33 = Yoshi's Island 2
//        0x34 = Yoshi's Island 3
//        0x35 = YI Ghost House
//        0x36 = YI Mushroom House
//        0x37 = Yoshi's Island 4
//        0x38 = Yoshi's Island 5
//        0x39 = Ludwig's Castle
//        0x3a = Grassland 4
//        0x3b = Bowser's Tank #1
//        0x3d = To Bowser's Land
//        0x3e = Bowser's Land 1
//        0x3f = Bowser's Land 2
//        0x40 = BL Mushroom House
//        0x41 = Bowser's Land 3
//        0x43 = Magma Castle
//        0x44 = Bowser's Land 4
//        0x45 = Bandit Cave
//        0x46 = Swooper Cave
//        0x47 = Dark Cave
//        0x49 = Crappy Ship
//        0x4a = ??? Castle
//        0x4b = Bowser's Tower
//        0x4c = Bowser's Castle
//        0x4d = Piranha Hills 2
//        0x4e = Bonus World 1
//        0x4f = Bonus World 2
//        0x50 = Bonus World 3
//        0x51 = Bonus World 4
//        0x53 = Toad Castle
//        0x54 = Bonus World 5
//        0x55 = Mario's Pad
//        0x56 = Powerup House
//        0x57 = Fun House
//        0x5c = GI Mushroom House
//        0x5d = Seaside Mushroom House
//        0x5e = Sky Mushroom House
