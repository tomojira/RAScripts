// ~Hack~ Super Mario Bros. 3X
// #ID = 6614
// md5: 012d5ec25d9bbfc9e035483911ba0631 - Super Mario Bros. 3 X (Final 2.6) by Mirumo (Koyuki) [2014-06-24] (SMW Hack).sfc

// --------------------------------------
// Useful notes, variables, and functions
// --------------------------------------

// $0000: Thanks to everyone who contributed code notes for SMW and its hacks!
// $0019: Mario power-up state [8-bit]
//        0x00 = Small
//        0x01 = Big
//        0x02 = Raccoon
//        0x03 = Fire

function mario_state() => byte(0x19)

small_mario = 0
super_mario = 1
raccoon_mario = 2
fire_mario = 3

mario_state_dictionary = {
    small_mario: "Small Mario",
    super_mario: "Super Mario",
    raccoon_mario: "Raccoon Mario",
    fire_mario: "Fire Mario"
}

// $00CE: Room [16-bit]
//        0xd54c = Title screen
//        0xce8b = New game: Letter from Peach
//        0x0000 = World map, sometimes other transitions
//        0xa2c3 = Grassland 1
//        0xd4eb = Grassland 1 secret area
//        0xe24b = Grassland 2
//        0xd4f0 = Grassland 2 secret area
//        0xa266 = Grassland 3
//        0xe1eb = Grassland 3 secret area
//        0xb489 = Desert World 1
//        0x9fa2 = Desert World 1 secret area
//        0xcae0 = Desert World 4
//        0xb599 = Desert World 4 secret area
//        0xf09e = Piranha Hills 1
//        0xb83c = Piranha Hills 1 secret area
//        0x9bb1 = Lemmy's Castle area 4 (3-Up Moon)
//        0xa3b7 = Yoshi's Island 1
//        0xa75e = Yoshi's Island 1 secret area
//        0x8677 = YI Ghost House area 6 (3-Up Moon)
//        0xe5af = Bowser's Land 1
//        0xe63e = Bowser's Land 1 secret area
//        0xbd68 = Bonus World 1
//        0xf2c7 = Bonus World 1 secret area
//        0xfa7c = Bonus World 2
//        0xc4bd = Bonus World 2 secret area
//        0xcdd9 = Bonus World 3
//        0xd140 = Bonus World 3 secret area
//        0xf171 = Mario's Pad
//        0xf935 = Mario's Pad inside
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
room_zero = 0
room_grassland_1 = 0xa2c3
room_grassland_1_secret = 0xd4eb
room_grassland_2 = 0xe24b
room_grassland_2_secret = 0xd4f0
room_grassland_3 = 0xa266
room_grassland_3_secret = 0xe1eb
room_desert_world_1 = 0xb489
room_desert_world_1_secret = 0x9fa2
room_desert_world_4 = 0xcae0
room_desert_world_4_secret = 0xb599
room_piranha_hills_1 = 0xf09e
room_piranha_hills_1_secret = 0xb83c
room_lemmy_castle_moon = 0x9bb1
room_yoshi_island_1 = 0xa3b7
room_yoshi_island_1_secret = 0xa75e
room_yi_ghost_house_moon = 0x8677
room_bowser_land_1 = 0xe5af
room_bowser_land_1_secret = 0xe63e
room_bonus_world_1 = 0xbd68
room_bonus_world_1_secret = 0xf2c7
room_bonus_world_2 = 0xfa7c
room_bonus_world_2_secret = 0xc4bd
room_bonus_world_3 = 0xcdd9
room_bonus_world_3_secret = 0xd140
room_mario_pad_inside = 0xf935
room_fun_house = 0xabd8
room_fun_house_coin_ship = 0xe60a
room_fun_house_coin_ship_boss = 0x9475
room_fun_house_hammer_bro_zone = 0x8eda
room_fun_house_desert_maze = 0x87d6
room_fun_house_frost_cave = 0xbd53
room_fun_house_bowser = 0xe1c0

room_dictionary = {
    room_fun_house_coin_ship_boss: "Coin Ship",
    room_fun_house_hammer_bro_zone: "Hammer Bro. Zone",
    room_fun_house_desert_maze: "Desert Maze",
    room_fun_house_frost_cave: "Frost Cave"
}

// $0D9B: Game state [8-bit]
//        0x00 = In level
//        0x01 = Title screen, level transition
//        0x02 = World map

function game_state() => byte(0xd9b)

state_in_level = 0
state_transition = 1
state_world_map = 2

// $0DBE: Lives [8-bit]

function lives() => byte(0xdbe)

// $0DD5: Return to world map from level [8-bit]
//        0x01 = Level completed
//        0x80 = Died or quit
//        0xe0 = Save prompt. Doesn't show when level is completed for first time

function exit_level() => byte(0xdd5)

exit_level_complete = 1
exit_level_die_or_quit = 0x80

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

// $13BF: Last played level [8-bit]
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

function level() => byte(0x13bf)

level_grassland_1 = 0x29
level_grassland_2 = 0x2a
level_yoshi_house = 0x13
level_grassland_3 = 0x27
level_grassland_4 = 0x3a
level_larry_castle = 0x25

level_desert_world_1 = 1
level_dw_mushroom_house = 3
level_desert_world_2 = 2
level_pyramid = 4
level_desert_world_3 = 5
level_desert_world_4 = 6
level_quicksand = 7
level_morton_castle = 8

level_seaside_1 = 9
level_seaside_mushroom_house = 0x5d
level_seaside_2 = 0xa
level_seaside_3 = 0xb
level_seaside_fortress = 0xc
level_seaside_4 = 0xd
level_seaside_5 = 0xe
level_seaside_6 = 0xf
level_wendy_battleship = 0x10

level_giant_isle_1 = 0x11
level_giant_isle_2 = 0x12
level_gi_mushroom_house = 0x5c
level_gi_ghost_house = 0x14
level_giant_isle_3 = 0x15
level_giant_isle_4 = 0x17
level_iggy_castle = 0x18

level_piranha_hills_1 = 0x19

level_sky_1 = 0x1a
level_sky_2 = 0x1b
level_sky_3 = 0x1d
level_sky_mushroom_house = 0x5e
level_sky_fortress = 0x1e
level_sky_4 = 0x1f
level_sky_5 = 0x20
level_roy_ship = 0x21

level_ice_land_1 = 0x22
level_ice_land_2 = 0x23
level_il_mushroom_house = 0x2c
level_ice_land_3 = 0x2b
level_ice_fortress = 0x2d
level_ice_land_4 = 0x2e
level_ice_land_5 = 0x2f
level_ice_land_6 = 0x30
level_lemmy_castle = 0x31

level_yoshi_island_1 = 0x32
level_yoshi_island_2 = 0x33
level_yoshi_island_3 = 0x34
level_yi_mushroom_house = 0x36
level_yi_ghost_house = 0x35
level_yoshi_island_4 = 0x37
level_yoshi_island_5 = 0x38
level_ludwig_castle = 0x39

level_bowser_tank_1 = 0x3b
level_to_bowser_land = 0x3d

level_bowser_land_1 = 0x3e
level_bowser_land_2 = 0x3f
level_bl_mushroom_house = 0x40
level_bowser_land_3 = 0x41
level_magma_castle = 0x43
level_bowser_land_4 = 0x44

level_bandit_cave = 0x45
level_swooper_cave = 0x46
level_dark_cave = 0x47
level_crappy_ship = 0x49
level_bowser_tower = 0x4b
level_mystery_castle = 0x4a
level_bowser_castle = 0x4c

level_piranha_hills_2 = 0x4d

level_mario_pad = 0x55
level_powerup_house = 0x56
level_fun_house = 0x57
level_bonus_world_1 = 0x4e
level_bonus_world_2 = 0x4f
level_bonus_world_3 = 0x50
level_bonus_world_4 = 0x51
level_toad_castle = 0x53
level_bonus_world_5 = 0x54

level_dictionary = {
    level_grassland_1: "Grassland 1",
    level_grassland_2: "Grassland 2",
    level_yoshi_house: "Yoshi's House",
    level_grassland_3: "Grassland 3",
    level_grassland_4: "Grassland 4",
    level_larry_castle: "Larry's Castle",
    level_desert_world_1: "Desert World 1",
    level_dw_mushroom_house: "Desert World Mushroom House",
    level_desert_world_2: "Desert World 2",
    level_pyramid: "Pyramid",
    level_desert_world_3: "Desert World 3",
    level_desert_world_4: "Desert World 4",
    level_quicksand: "Quicksand",
    level_morton_castle: "Morton's Castle",
    level_seaside_1: "Seaside 1",
    level_seaside_mushroom_house: "Seaside Mushroom House",
    level_seaside_2: "Seaside 2",
    level_seaside_3: "Seaside 3",
    level_seaside_fortress: "Seaside Fortress",
    level_seaside_4: "Seaside 4",
    level_seaside_5: "Seaside 5",
    level_seaside_6: "Seaside 6",
    level_wendy_battleship: "Wendy's Battleship",
    level_giant_isle_1: "Giant Isle 1",
    level_giant_isle_2: "Giant Isle 2",
    level_gi_mushroom_house: "Giant Isle Mushroom House",
    level_gi_ghost_house: "Giant Isle Ghost House",
    level_giant_isle_3: "Giant Isle 3",
    level_giant_isle_4: "Giant Isle 4",
    level_iggy_castle: "Iggy's Castle",
    level_piranha_hills_1: "Piranha Hills 1",
    level_sky_1: "The Sky 1",
    level_sky_2: "The Sky 2",
    level_sky_3: "The Sky 3",
    level_sky_mushroom_house: "Sky Mushroom House",
    level_sky_fortress: "Sky Fortress",
    level_sky_4: "The Sky 4",
    level_sky_5: "The Sky 5",
    level_roy_ship: "Roy's Ship",
    level_ice_land_1: "Ice Land 1",
    level_ice_land_2: "Ice Land 2",
    level_il_mushroom_house: "Ice Land Mushroom House",
    level_ice_land_3: "Ice Land 3",
    level_ice_fortress: "Ice Fortress",
    level_ice_land_4: "Ice Land 4",
    level_ice_land_5: "Ice Land 5",
    level_ice_land_6: "Ice Land 6",
    level_lemmy_castle: "Lemmy's Castle",
    level_yoshi_island_1: "Yoshi's Island 1",
    level_yoshi_island_2: "Yoshi's Island 2",
    level_yoshi_island_3: "Yoshi's Island 3",
    level_yi_mushroom_house: "Yoshi's Island Mushroom House",
    level_yi_ghost_house: "Yoshi's Island Ghost House",
    level_yoshi_island_4: "Yoshi's Island 4",
    level_yoshi_island_5: "Yoshi's Island 5",
    level_ludwig_castle: "Ludwig's Castle",
    level_bowser_tank_1: "Bowser Tank #1",
    level_to_bowser_land: "To Bowser's Land",
    level_bowser_land_1: "Bowser's Land 1",
    level_bowser_land_2: "Bowser's Land 2",
    level_bl_mushroom_house: "Bowser's Land Mushroom House",
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
    level_mario_pad: "Mario's Pad",
    level_powerup_house: "Powerup House",
    level_fun_house: "Fun House",
    level_bonus_world_1: "Bonus World 1",
    level_bonus_world_2: "Bonus World 2",
    level_bonus_world_3: "Bonus World 3",
    level_bonus_world_4: "Bonus World 4",
    level_toad_castle: "Toad Castle",
    level_bonus_world_5: "Bonus World 5"
}

// $1420: Red Coins [8-bit]

function red_coins() => byte(0x1420)

// $1F02: Level complete bitflags [8-bit]
//        Bit7 = Grassland 1
//        Bit6 = Grassland 2
//        Bit5 = Grassland 3
//        Bit4 = Grassland 4
//        Bit3 = Larry's Castle
//        Bit2 = Desert World 1
//        Bit1 = Desert World 2
//        Bit0 = Pyramid

function complete_larry_castle() => bit3(0x1f02)

// $1F03: Level complete bitflags [8-bit]
//        Bit7 = Desert World 3
//        Bit6 = Desert World 4
//        Bit5 = Quicksand
//        Bit4 = Morton's Castle
//        Bit3 = Seaside 1
//        Bit2 = Seaside 2
//        Bit1 = Seaside 3
//        Bit0 = Seaside Fortress

function complete_morton_castle() => bit4(0x1f03)
function complete_seaside_fortress() => bit0(0x1f03)

// $1F04: Level complete bitflags [8-bit]
//        Bit7 = Seaside 4
//        Bit6 = Seaside 5
//        Bit5 = Seaside 6
//        Bit4 = Wendy's Battleship
//        Bit3 = Giant Isle 1
//        Bit2 = Giant Isle 2
//        Bit1 = GI Ghost House
//        Bit0 = Giant Isle 3

function complete_wendy_battleship() => bit4(0x1f04)
function complete_gi_ghost_house() => bit1(0x1f04)

// $1F05: Level complete bitflags [8-bit]
//        Bit7 = Giant Isle 4
//        Bit6 = Iggy's Castle
//        Bit5 = Piranha Hills 1
//        Bit4 = The Sky 1
//        Bit3 = The Sky 2
//        Bit2 = The Sky 3
//        Bit1 = Sky Fortress
//        Bit0 = The Sky 4

function complete_iggy_castle() => bit6(0x1f05)
function complete_sky_fortress() => bit1(0x1f05)

// $1F06: Level complete bitflags [8-bit]
//        Bit7 = The Sky 5
//        Bit6 = Roy's Ship
//        Bit5 = Ice Land 1
//        Bit4 = Ice Land 2
//        Bit3 = Ice Land 3
//        Bit2 = Ice Fortress
//        Bit1 = Ice Land 4
//        Bit0 = Ice Land 5

function complete_roy_ship() => bit6(0x1f06)
function complete_ice_fortress() => bit2(0x1f06)

// $1F07: Level complete bitflags [8-bit]
//        Bit7 = Ice Land 6
//        Bit6 = Lemmy's Castle
//        Bit5 = Yoshi's Island 1
//        Bit4 = Yoshi's Island 2
//        Bit3 = Yoshi's Island 3
//        Bit2 = YI Ghost House
//        Bit1 = Yoshi's Island 4
//        Bit0 = Yoshi's Island 5

function complete_lemmy_castle() => bit6(0x1f07)
function complete_yi_ghost_house() => bit2(0x1f07)

// $1F08: Level complete bitflags [8-bit]
//        Bit7 = Ludwig's Castle
//        Bit6 = Bowser's Tank #1
//        Bit5 = To Bowser's Land
//        Bit4 = Bowser's Land 1
//        Bit3 = Bowser's Land 2
//        Bit2 = Bowser's Land 3
//        Bit1 = Magma Castle
//        Bit0 = Bowser's Land 4

function complete_lugwig_castle() => bit7(0x1f08)
function complete_magma_castle() => bit1(0x1f08)

// $1F09: Level complete bitflags [8-bit]
//        Bit7 = Bandit Cave
//        Bit6 = Swooper Cave
//        Bit5 = Dark Cave
//        Bit4 = Crappy Ship
//        Bit3 = ??? Castle
//        Bit2 = Bowser's Tower
//        Bit1 = Bowser's Castle
//        Bit0 = Piranha Hills 2

function complete_mystery_castle() => bit3(0x1f09)
function complete_bowser_castle() => bit1(0x1f09)

// $1F0A: Level complete bitflags [8-bit]
//        Bit7 = Bonus World 1
//        Bit6 = Bonus World 2
//        Bit5 = Bonus World 3
//        Bit4 = Bonus World 4
//        Bit3 = Toad Castle
//        Bit2 = Bonus World 5

function complete_bonus_world_5() => bit2(0x1f0a)

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

// $1F1F: World map x-coordinate [8-bit]
// $1F21: World map y-coordinate [8-bit]

function world_map_x() => byte(0x1f1f)
function world_map_y() => byte(0x1f21)

// $1F2E: Total exits cleared [8-bit]
//        Up to 70 (0x46)

function total_exits() => byte(0x1f2e)

// $CB04: YI Ghost House: 3-Up Moon tile [8-bit]
//        0x6e = 3-Up Moon
//        0x25 = Empty

function yi_ghost_house_moon() => byte(0xcb04)

moon_tile = 0x6e
empty_tile = 0x25

// $D12A: Lemmy's Castle: 3-Up Moon tile [8-bit]
//        See 0x00cb04 note

function lemmy_castle_moon() => byte(0xd12a)

// ------------
// Achievements
// ------------

// --------
// Progress
// --------

function achievement_progress(title, points, level) {
    achievement(
        title = title,
        description = "Clear " + level_dictionary[level] + ".",
        points = points,
        trigger = game_state() == state_world_map &&
                  level() == level &&
                  prev(level_complete_dictionary[level]) == 0 &&
                  level_complete_dictionary[level] == 1
    )
}

achievement_progress("Unlucky Larry", 5, level_larry_castle)
achievement_progress("Big Mouth Shuts Up", 5, level_morton_castle)
achievement_progress("Invasion by Sea", 5, level_seaside_fortress)
achievement_progress("Battleship Sunk", 5, level_wendy_battleship)
achievement_progress("A Harrowing Ordeal", 5, level_gi_ghost_house)
achievement_progress("Crazed Koopa", 5, level_iggy_castle)
achievement_progress("Invasion by Air", 5, level_sky_fortress)
achievement_progress("Bullied", 5, level_roy_ship)
achievement_progress("Winter Invasion", 5, level_ice_fortress)
achievement_progress("Down with the Clown", 5, level_lemmy_castle)
achievement_progress("Ghost Hunter", 5, level_yi_ghost_house)
achievement_progress("Ludwig's Last Symphony", 5, level_ludwig_castle)
achievement_progress("Lethal Lava Lord", 5, level_magma_castle)
achievement_progress("Final Invasion", 5, level_mystery_castle)
achievement_progress("King of the Koopas", 5, level_bowser_castle)
achievement_progress("Mysterious Land", 5, level_bonus_world_5)


achievement(
    title = "Chill With Your Bro",
    description = "Get the 1-Up in Mario's Pad.",
    points = 1,
    trigger = game_state() == state_in_level &&
              level() == level_mario_pad &&
              room() == room_mario_pad_inside &&
              lives() > prev(lives())
)

function achievement_fun_house(title, description, points, room) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = game_state() == state_in_level &&
                  level() == level_fun_house &&
                  room() == room &&
                  prev(exit_level()) == 0 &&
                  exit_level() == exit_level_complete
    )
}

achievement_fun_house("The Hammering Fields", "Clear Hammer Bro. Zone in Fun House.", 2, )
// RATools 1.12.0 crashes whenever I try typing this on line 669:
// achievement_fun_house("The Hammering Fields", "Clear Hammer Bro. Zone in Fun House.", 2, room_fun_house_hammer_bro_zone)
// Specifically right after "room" is typed in the variable name

// ------------
// Unused notes
// ------------

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

// $0DBF: Coins [8-bit]

// $0F1A: P-Meter (Speed meter) [6 bytes]
//        0x38 = Inactive
//        0x40 = Active
// $0F20: P-Meter max speed [8-bit]
//        Flickers between 0x39 and 0x41

// $1490: Starman power-up timer [8-bit]
//        Down from 0x7f
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

// $1F13: Last direction moved on world map [8-bit]
//        0x00 = Up
//        0x02 = Down
//        0x04 = Left
//        0x06 = Right
// $1FF4: 3-Up Moon bitflags [8-bit]
//        Bit2 = YI Ghost House
//        Bit6 = Lemmy's Castle
//        Lost after closing/resetting game
