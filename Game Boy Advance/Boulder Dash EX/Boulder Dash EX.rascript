// Boulder Dash EX
// #ID = 9641
// MD5: 70ED2328306FA863BF144B7FDCDBFDFD - Boulder Dash EX (Europe) (En,Fr,De).gba
// MD5: 8653D5731F4EFFD21E435B9A274023A4 - Boulder Dash EX (USA).gba
// MD5: 3CC5E954F8ADC6D313C44DA31E3F8A5C - Boulder Dash EX (Japan).gba

// --------------------------------------
// Useful notes, variables, and functions
// --------------------------------------

// $00BEA0: Screen [8-bit]
//          0x00 = Intro
//          0x01 = Title screen, main menu, demos
//          0x03 = Story Mode: World Select
//          0x04 = Story Mode in-game & cutscenes
//          0x05 = Classic Mode title screen
//          0x06 = Classic Mode in-game
//          0x07 = Battle Mode menus & in-game
//          0x30 = Card Collection menu
//          0x31 = Preview Scenes & cutscenes selected from this menu
//          0x33 = Sound Settings
//          0x34 = Language Select (Europe rom)
//          0x35 = Data Delete
//          0x3b = Card Collection: Viewing a card
//          0x47 = EX Game: Tutorial menu
//          0x48 = Classic Game: Tutorial menu
//          0x4a = EX Game menu
//          0x4b = Classic Game menu
//          0x4c = Options
//          0x50 = Classic Game: Tutorials in-game
//          0x51 = Classic Game: Tutorials text box
//          0x52 = EX Game: Tutorials text box
//          0x53 = EX Game: Tutorials in-game
//          0x5a = Story Mode: Stage Select

// I later realized this kind of function isn't that helpful, since it only returns true or false, which can't be used with prev() for example.
// Need the basic function that returns byte() first
//function screen(description) => byte(0xbea0) == description

function screen() => byte(0xbea0)

title_main_menu_demo = 1
story_mode_world_select = 3
story_mode_in_game = 4
classic_mode_title = 5
classic_mode_in_game = 6
battle_mode = 7
card_collection_menu = 0x30
preview_scenes = 0x31
sound_settings = 0x33
language_select = 0x34
data_delete = 0x35
card_collection_view_card = 0x3b
ex_tutorial_menu = 0x47
classic_tutorial_menu = 0x48
ex_game_menu = 0x4a
classic_game_menu = 0x4b
options = 0x4c
classic_tutorial_in_game = 0x50
classic_tutorial_text = 0x51
ex_tutorial_text = 0x52
ex_tutorial_in_game = 0x53
story_mode_stage_select = 0x5a

// $000CC9: Music [8-bit]
//          These values are for the Europe rom. The USA and Japan roms are slightly different; USA usually seems to add +1 to these values, and Japan usually seems to add +2.
//          0x06 = Card Collection
//          0x0a = World of Forest
//          0x10 or 0x11 = World of Sand
//          0x18 or 0x19 = World of Fire
//          0x21 = World of Water
//          0x27 or 0x28 = World of Ice
//          0x31, 0x32, 0x33 = World of Evil
//          0x3c or 0x3d = Battle Mode menus
//          0x42 = Battle Mode: Player 1 wins
//          0x43 or 0x44 = Battle Mode in-game
//          0x49 or 0x4a = Opening cutscene
//          0x4c or 0x4d = Opening cutscene: Dark King appears
//          0x53 or 0x54 = Opening cutscene: Sonya kidnapped
//          0x58 or 0x59 = Most cutscenes
//          0x5f = Cutscenes: Dark King theme
//          0x63 or 0x64 = Cutscene VI: Alex faces Dark King
//          0x6b = Cutscene VI: Sonya saved
//          0x6f or 0x70 = Credits
//          0x77 = Battle Mode: Time's up!
//          0x78 or 0x79 = Classic Mode: Title screen
//          0x91 = EX Game: Stage intro, also outro in Story Mode, and 1 frame before Game Over
//          0x92 = Story Mode: Game Over / Battle Mode: Player 1 loses, draw, or exit
//          0xde or 0xdf = Title screen, main menu
//          0xe8 or 0xe9 = EX Game menu, Classic Game menu
//          0xed or 0xee = Story Mode: World Select, Stage Select / Data Delete
//          0xf2 or 0xf3 = Tutorial menus
//          0xf8 = Classic Mode All Clear
//          0xfa or 0xfb = Options, Language Select, Preview Scenes
//
//          USA: (only listing relevant values for RP)
//          0x06 or 0x07 = Card Collection
//          0x3c or 0x3d = Battle Mode menus
//          0x42 = Battle Mode: Player 1 wins
//          0x44 or 0x45 = Battle Mode in-game
//          0x4a = Opening cutscene
//          0x4d = Opening cutscene: Dark King appears
//          0x54 = Opening cutscene: Sonya kidnapped
//          0x59 or 0x5a = Most cutscenes
//          0x5f or 0x60 = Cutscenes: Dark King theme
//          0x64 or 0x65 = Cutscene VI: Alex faces Dark King
//          0x6b or 0x6c = Cutscene VI: Sonya saved
//          0x6f or 0x70 = Credits (only 1 frame 0x6f, then all 0x70)
//          0x91 = EX Game: Stage intro, also outro in Story Mode, and 1 frame before Game Over
//          0x92 = Story Mode: Game Over / Battle Mode: Player 1 loses, draw, or exit
//          0xe9 = EX Game menu, Classic Game menu
//
//          Japan:
//          0x08 or 0x09 = Card Collection
//          0x3e or 0x3f = Battle Mode menus
//          0x44 = Battle Mode: Player 1 wins
//          0x45 or 0x46 = Battle Mode in-game
//          0x4c = Opening cutscene
//          0x4e or 0x4f = Opening cutscene: Dark King appears
//          0x55 or 0x56 = Opening cutscene: Sonya kidnapped
//          0x5a or 0x5b = Most cutscenes
//          0x61 or 0x62 = Cutscenes: Dark King theme
//          0x66 or 0x67 = Cutscene VI: Alex faces Dark King
//          0x6d = Cutscene VI: Sonya saved
//          0x71 or 0x72 = Credits
//          0x93 = EX Game: Stage intro, also outro in Story Mode, and 1 frame before Game Over
//          0x94 = Story Mode: Game Over / Battle Mode: Player 1 loses, draw, or exit
//          0xea or 0xeb = EX Game menu, Classic Game menu

function music() => byte(0xcc9)

//music_card_collection = 6
//music_battle_mode_menu = [0x3c, 0x3d]
//music_battle_mode_p1_wins = 0x42
//music_credits_1 = 0x6f
//music_credits_2 = 0x70
music_ex_stage_intro_outro = 0x91
//music_ex_game_over = 0x92

// this didn't seem to work in the rich presence
//function music_check(music_array) {
//    condition = always_true()
//    for i in music_array {
//        condition = condition || music() == i
//    }
//    return condition
//}

function music_battle_mode_menus() => (music() >= 0x3c && music() <= 0x3f)
function music_battle_mode_in_game() => (music() >= 0x43 && music() <= 0x44)
function music_story_mode_scenes() => (music() >= 0x49 && music() <= 0x6d)
function music_story_mode_credits() => (music() >= 0x6f && music() <= 0x72)
function music_game_menus() => (music() >= 0xe8 && music() <= 0xeb)
function music_card_collection() => (music() >= 6 && music() <= 9)

// This will conflict with Battle Mode in-game, but should be mostly ok with battle_mode_time_proper() used in RP
// Unfortunately still flawed sometimes when exiting in USA and Europe roms. Replace with something else
function music_battle_mode_p1_wins() => (music() == 0x42 || music() == 0x44)

// Can't do >= and <= and include 0x93, it's used by entrance theme
function music_ex_game_over() => (music() == 0x92 || music() == 0x94)

// -------
// EX Game
// -------

// $0221B8: EX Game: Score [32-bit]

function ex_score() => dword(0x221b8)

// $0221BC: EX Game: Jewels [8-bit]

function ex_jewels() => byte(0x221bc)

// $0221AC: EX Game: Life (Health) [16-bit]
//          0x0001 to 0x2710
//          Sometimes when taking excessive damage, health drops past 0 and loops around to under 0xffff. Could be a problem for rich presence

function ex_health() => word(0x221ac)

// $022198: EX Game: Item action & other animations [8-bit]
//          0x00 = Idle
//          0x01 = Super Pick right
//          0x02 = Super Pick left
//          0x03 = Super Pick up
//          0x04 = Super Pick down
//          0x05 = Time Bomb right
//          0x06 = Time Bomb left
//          0x07 = Time Bomb up
//          0x08 = Time Bomb down
//          0x09 = Player crushed by boulder
//          0x0a = Player appears as stage begins
//          0x0b = Player clears stage
//          0x0c = Player at low health
//          0x0d = Jewel or item falls on head
//          0x0e = Player dies, not from boulder
//          0x0f = Player takes damage from enemy
//          0x10 = Failed kick right
//          0x11 = Failed kick left
//          0x14 = Player nods off while idle
//          0x15 = Player sleeps while idle
//          0x16 = Hope Crystal (rotate stage clockwise)
//          0x17 = Hope Crystal (rotate stage counterclockwise)
//          0x18 = Magic Glove right
//          0x19 = Magic Glove left
//          0x1a = Magic Glove up
//          0x1b = Magic Glove down

function ex_player_animation() => byte(0x22198)

idle = 0
player_crushed = 0x9
enter_stage = 0xa
clear_stage = 0xb
player_dies = 0xe

// didn't seem to work in rich presence
//function ex_player_dies() => (ex_player_animation() == 9 || ex_player_animation() == 0xe)

// $0026D9: EX Game: Game state [8-bit]
//          0x00 = In-game, able to input. Also when paused and using map preview (select button)
//          0x0a = Stage intro, outro, transition. Player death in Story Mode and EX Tutorials. Results screen in Battle Mode after player 1 loss/draw/quit
//          0x0f = Time's up! (Battle Mode only)
//          0x32 = Card obtained, cutscenes. Also menus. Results screen in Battle Mode after player 1 wins

function ex_game_state() => byte(0x26d9)

in_game_input = 0
in_game_no_input = 0xa
time_up = 0xf
interstitial = 0x32

// ----------------
// EX Game Tutorial
// ----------------

// $020554: EX Game: Current/Last played tutorial lesson [8-bit]
//          0x00 to 0x07 = Lesson 1 to 8

//function ex_tutorial_lesson(number) => byte(0x20a04) == (number - 1)

function ex_tutorial_lesson() => byte(0x20554)

// ----------
// Story Mode
// ----------

// $00C126: Story Mode: Current/Last played world [8-bit]
//          0x00 = World of Forest
//          0x01 = World of Sand
//          0x02 = World of Fire
//          0x03 = World of Water
//          0x04 = World of Ice
//          0x05 = World of Evil
//          Not affected by demos

//function world(name) => byte(0xc126) == name

function story_mode_world() => byte(0xc126)

forest = 0
sand = 1
fire = 2
water = 3
ice = 4
evil = 5

world_dictionary = {
    forest: "World of Forest",
    sand: "World of Sand",
    fire: "World of Fire",
    water: "World of Water",
    ice: "World of Ice",
    evil: "World of Evil"
}

// $02019A: Story Mode: Current/Last played stage number in current world [8-bit]
//          0x00 to 0x09 or 0x0e = Stage 1 to 10 or 15
//          First 3 worlds have 10 stages, last 3 worlds have 15 stages
//          Not affected by demos

//function stage(number) => byte(0x2019a) == (number - 1)

function story_mode_stage() => byte(0x2019a)

// $0217C4: Story Mode: Current/Last viewed world in stage select [8-bit]
//          See 0x00c126 note
//          Used only to help fine-tune RP

function story_mode_world_alt() => byte(0x217c4)

// $0201F5: Story Mode: World of Forest 1 completion [8-bit]
//          0x00 = Incomplete
//          0x01 = Cleared
//          0x02 = "Perfect!"
// $0201F6: Story Mode: World of Forest 2 completion [8-bit]
//          See 0x0201f5 note
// $0201F7: Story Mode: World of Forest 3 completion [8-bit]
//          See 0x0201f5 note
// $0201F8: Story Mode: World of Forest 4 completion [8-bit]
//          See 0x0201f5 note
// $0201F9: Story Mode: World of Forest 5 completion [8-bit]
//          See 0x0201f5 note
// $0201FA: Story Mode: World of Forest 6 completion [8-bit]
//          See 0x0201f5 note
// $0201FB: Story Mode: World of Forest 7 completion [8-bit]
//          See 0x0201f5 note
// $0201FC: Story Mode: World of Forest 8 completion [8-bit]
//          See 0x0201f5 note
// $0201FD: Story Mode: World of Forest 9 completion [8-bit]
//          See 0x0201f5 note
// $0201FE: Story Mode: World of Forest 10 completion [8-bit]
//          See 0x0201f5 note
// $020204: Story Mode: World of Sand 1 completion [8-bit]
//          See 0x0201f5 note
// $020205: Story Mode: World of Sand 2 completion [8-bit]
//          See 0x0201f5 note
// $020206: Story Mode: World of Sand 3 completion [8-bit]
//          See 0x0201f5 note
// $020207: Story Mode: World of Sand 4 completion [8-bit]
//          See 0x0201f5 note
// $020208: Story Mode: World of Sand 5 completion [8-bit]
//          See 0x0201f5 note
// $020209: Story Mode: World of Sand 6 completion [8-bit]
//          See 0x0201f5 note
// $02020A: Story Mode: World of Sand 7 completion [8-bit]
//          See 0x0201f5 note
// $02020B: Story Mode: World of Sand 8 completion [8-bit]
//          See 0x0201f5 note
// $02020C: Story Mode: World of Sand 9 completion [8-bit]
//          See 0x0201f5 note
// $02020D: Story Mode: World of Sand 10 completion [8-bit]
//          See 0x0201f5 note
// $020213: Story Mode: World of Fire 1 completion [8-bit]
//          See 0x0201f5 note
// $020214: Story Mode: World of Fire 2 completion [8-bit]
//          See 0x0201f5 note
// $020215: Story Mode: World of Fire 3 completion [8-bit]
//          See 0x0201f5 note
// $020216: Story Mode: World of Fire 4 completion [8-bit]
//          See 0x0201f5 note
// $020217: Story Mode: World of Fire 5 completion [8-bit]
//          See 0x0201f5 note
// $020218: Story Mode: World of Fire 6 completion [8-bit]
//          See 0x0201f5 note
// $020219: Story Mode: World of Fire 7 completion [8-bit]
//          See 0x0201f5 note
// $02021A: Story Mode: World of Fire 8 completion [8-bit]
//          See 0x0201f5 note
// $02021B: Story Mode: World of Fire 9 completion [8-bit]
//          See 0x0201f5 note
// $02021C: Story Mode: World of Fire 10 completion [8-bit]
//          See 0x0201f5 note
// $020222: Story Mode: World of Water 1 completion [8-bit]
//          See 0x0201f5 note
// $020223: Story Mode: World of Water 2 completion [8-bit]
//          See 0x0201f5 note
// $020224: Story Mode: World of Water 3 completion [8-bit]
//          See 0x0201f5 note
// $020225: Story Mode: World of Water 4 completion [8-bit]
//          See 0x0201f5 note
// $020226: Story Mode: World of Water 5 completion [8-bit]
//          See 0x0201f5 note
// $020227: Story Mode: World of Water 6 completion [8-bit]
//          See 0x0201f5 note
// $020228: Story Mode: World of Water 7 completion [8-bit]
//          See 0x0201f5 note
// $020229: Story Mode: World of Water 8 completion [8-bit]
//          See 0x0201f5 note
// $02022A: Story Mode: World of Water 9 completion [8-bit]
//          See 0x0201f5 note
// $02022B: Story Mode: World of Water 10 completion [8-bit]
//          See 0x0201f5 note
// $02022C: Story Mode: World of Water 11 completion [8-bit]
//          See 0x0201f5 note
// $02022D: Story Mode: World of Water 12 completion [8-bit]
//          See 0x0201f5 note
// $02022E: Story Mode: World of Water 13 completion [8-bit]
//          See 0x0201f5 note
// $02022F: Story Mode: World of Water 14 completion [8-bit]
//          See 0x0201f5 note
// $020230: Story Mode: World of Water 15 completion [8-bit]
//          See 0x0201f5 note
// $020231: Story Mode: World of Ice 1 completion [8-bit]
//          See 0x0201f5 note
// $020232: Story Mode: World of Ice 2 completion [8-bit]
//          See 0x0201f5 note
// $020233: Story Mode: World of Ice 3 completion [8-bit]
//          See 0x0201f5 note
// $020234: Story Mode: World of Ice 4 completion [8-bit]
//          See 0x0201f5 note
// $020235: Story Mode: World of Ice 5 completion [8-bit]
//          See 0x0201f5 note
// $020236: Story Mode: World of Ice 6 completion [8-bit]
//          See 0x0201f5 note
// $020237: Story Mode: World of Ice 7 completion [8-bit]
//          See 0x0201f5 note
// $020238: Story Mode: World of Ice 8 completion [8-bit]
//          See 0x0201f5 note
// $020239: Story Mode: World of Ice 9 completion [8-bit]
//          See 0x0201f5 note
// $02023A: Story Mode: World of Ice 10 completion [8-bit]
//          See 0x0201f5 note
// $02023B: Story Mode: World of Ice 11 completion [8-bit]
//          See 0x0201f5 note
// $02023C: Story Mode: World of Ice 12 completion [8-bit]
//          See 0x0201f5 note
// $02023D: Story Mode: World of Ice 13 completion [8-bit]
//          See 0x0201f5 note
// $02023E: Story Mode: World of Ice 14 completion [8-bit]
//          See 0x0201f5 note
// $02023F: Story Mode: World of Ice 15 completion [8-bit]
//          See 0x0201f5 note
// $020240: Story Mode: World of Evil 1 completion [8-bit]
//          See 0x0201f5 note
// $020241: Story Mode: World of Evil 2 completion [8-bit]
//          See 0x0201f5 note
// $020242: Story Mode: World of Evil 3 completion [8-bit]
//          See 0x0201f5 note
// $020243: Story Mode: World of Evil 4 completion [8-bit]
//          See 0x0201f5 note
// $020244: Story Mode: World of Evil 5 completion [8-bit]
//          See 0x0201f5 note
// $020245: Story Mode: World of Evil 6 completion [8-bit]
//          See 0x0201f5 note
// $020246: Story Mode: World of Evil 7 completion [8-bit]
//          See 0x0201f5 note
// $020247: Story Mode: World of Evil 8 completion [8-bit]
//          See 0x0201f5 note
// $020248: Story Mode: World of Evil 9 completion [8-bit]
//          See 0x0201f5 note
// $020249: Story Mode: World of Evil 10 completion [8-bit]
//          See 0x0201f5 note
// $02024A: Story Mode: World of Evil 11 completion [8-bit]
//          See 0x0201f5 note
// $02024B: Story Mode: World of Evil 12 completion [8-bit]
//          See 0x0201f5 note
// $02024C: Story Mode: World of Evil 13 completion [8-bit]
//          See 0x0201f5 note
// $02024D: Story Mode: World of Evil 14 completion [8-bit]
//          See 0x0201f5 note
// $02024E: Story Mode: World of Evil 15 completion [8-bit]
//          See 0x0201f5 note

// The first 3 worlds have only 10 stages, but the addresses are laid out as if they had 15, with 5 unused addresses before the next world
// Could've just put the addresses directly in world_offsets. But hey it was fun figuring this out
stage_completion_start = 0x201f5
world_offsets = [0, 15, 30, 45, 60, 75]
stages_per_world = [10, 10, 10, 15, 15, 15]

function check_stage_completion(world, stage) {
    offset = world_offsets[world] + stage - 1
    check_stage = byte(stage_completion_start + offset)
    
    return check_stage
}

function count_perfect_stages(world) {
    start = stage_completion_start + world_offsets[world]
    end = start + stages_per_world[world] - 1
    bits = 0
    for i in range(start, end) {
        bits = bits + bit1(i)
    }
    
    return bits
}

// $020268: Story Mode: World of Forest 1 Hi-Score [32-bit]
//          Maximum for stage hi-scores seems to be 0x7fffffff. Nowhere near possible but just noting
// $02026C: Story Mode: World of Forest 2 Hi-Score [32-bit]
//          See 0x020268 note
// $020270: Story Mode: World of Forest 3 Hi-Score [32-bit]
//          See 0x020268 note
// $020274: Story Mode: World of Forest 4 Hi-Score [32-bit]
//          See 0x020268 note
// $020278: Story Mode: World of Forest 5 Hi-Score [32-bit]
//          See 0x020268 note
// $02027C: Story Mode: World of Forest 6 Hi-Score [32-bit]
//          See 0x020268 note
// $020280: Story Mode: World of Forest 7 Hi-Score [32-bit]
//          See 0x020268 note
// $020284: Story Mode: World of Forest 8 Hi-Score [32-bit]
//          See 0x020268 note
// $020288: Story Mode: World of Forest 9 Hi-Score [32-bit]
//          See 0x020268 note
// $02028C: Story Mode: World of Forest 10 Hi-Score [32-bit]
//          See 0x020268 note
// $0202A4: Story Mode: World of Sand 1 Hi-Score [32-bit]
//          See 0x020268 note
// $0202A8: Story Mode: World of Sand 2 Hi-Score [32-bit]
//          See 0x020268 note
// $0202AC: Story Mode: World of Sand 3 Hi-Score [32-bit]
//          See 0x020268 note
// $0202B0: Story Mode: World of Sand 4 Hi-Score [32-bit]
//          See 0x020268 note
// $0202B4: Story Mode: World of Sand 5 Hi-Score [32-bit]
//          See 0x020268 note
// $0202B8: Story Mode: World of Sand 6 Hi-Score [32-bit]
//          See 0x020268 note
// $0202BC: Story Mode: World of Sand 7 Hi-Score [32-bit]
//          See 0x020268 note
// $0202C0: Story Mode: World of Sand 8 Hi-Score [32-bit]
//          See 0x020268 note
// $0202C4: Story Mode: World of Sand 9 Hi-Score [32-bit]
//          See 0x020268 note
// $0202C8: Story Mode: World of Sand 10 Hi-Score [32-bit]
//          See 0x020268 note
// $0202E0: Story Mode: World of Fire 1 Hi-Score [32-bit]
//          See 0x020268 note
// $0202E4: Story Mode: World of Fire 2 Hi-Score [32-bit]
//          See 0x020268 note
// $0202E8: Story Mode: World of Fire 3 Hi-Score [32-bit]
//          See 0x020268 note
// $0202EC: Story Mode: World of Fire 4 Hi-Score [32-bit]
//          See 0x020268 note
// $0202F0: Story Mode: World of Fire 5 Hi-Score [32-bit]
//          See 0x020268 note
// $0202F4: Story Mode: World of Fire 6 Hi-Score [32-bit]
//          See 0x020268 note
// $0202F8: Story Mode: World of Fire 7 Hi-Score [32-bit]
//          See 0x020268 note
// $0202FC: Story Mode: World of Fire 8 Hi-Score [32-bit]
//          See 0x020268 note
// $020300: Story Mode: World of Fire 9 Hi-Score [32-bit]
//          See 0x020268 note
// $020304: Story Mode: World of Fire 10 Hi-Score [32-bit]
//          See 0x020268 note
// $02031C: Story Mode: World of Water 1 Hi-Score [32-bit]
//          See 0x020268 note
// $020320: Story Mode: World of Water 2 Hi-Score [32-bit]
//          See 0x020268 note
// $020324: Story Mode: World of Water 3 Hi-Score [32-bit]
//          See 0x020268 note
// $020328: Story Mode: World of Water 4 Hi-Score [32-bit]
//          See 0x020268 note
// $02032C: Story Mode: World of Water 5 Hi-Score [32-bit]
//          See 0x020268 note
// $020330: Story Mode: World of Water 6 Hi-Score [32-bit]
//          See 0x020268 note
// $020334: Story Mode: World of Water 7 Hi-Score [32-bit]
//          See 0x020268 note
// $020338: Story Mode: World of Water 8 Hi-Score [32-bit]
//          See 0x020268 note
// $02033C: Story Mode: World of Water 9 Hi-Score [32-bit]
//          See 0x020268 note
// $020340: Story Mode: World of Water 10 Hi-Score [32-bit]
//          See 0x020268 note
// $020344: Story Mode: World of Water 11 Hi-Score [32-bit]
//          See 0x020268 note
// $020348: Story Mode: World of Water 12 Hi-Score [32-bit]
//          See 0x020268 note
// $02034C: Story Mode: World of Water 13 Hi-Score [32-bit]
//          See 0x020268 note
// $020350: Story Mode: World of Water 14 Hi-Score [32-bit]
//          See 0x020268 note
// $020354: Story Mode: World of Water 15 Hi-Score [32-bit]
//          See 0x020268 note
// $020358: Story Mode: World of Ice 1 Hi-Score [32-bit]
//          See 0x020268 note
// $02035C: Story Mode: World of Ice 2 Hi-Score [32-bit]
//          See 0x020268 note
// $020360: Story Mode: World of Ice 3 Hi-Score [32-bit]
//          See 0x020268 note
// $020364: Story Mode: World of Ice 4 Hi-Score [32-bit]
//          See 0x020268 note
// $020368: Story Mode: World of Ice 5 Hi-Score [32-bit]
//          See 0x020268 note
// $02036C: Story Mode: World of Ice 6 Hi-Score [32-bit]
//          See 0x020268 note
// $020370: Story Mode: World of Ice 7 Hi-Score [32-bit]
//          See 0x020268 note
// $020374: Story Mode: World of Ice 8 Hi-Score [32-bit]
//          See 0x020268 note
// $020378: Story Mode: World of Ice 9 Hi-Score [32-bit]
//          See 0x020268 note
// $02037C: Story Mode: World of Ice 10 Hi-Score [32-bit]
//          See 0x020268 note
// $020380: Story Mode: World of Ice 11 Hi-Score [32-bit]
//          See 0x020268 note
// $020384: Story Mode: World of Ice 12 Hi-Score [32-bit]
//          See 0x020268 note
// $020388: Story Mode: World of Ice 13 Hi-Score [32-bit]
//          See 0x020268 note
// $02038C: Story Mode: World of Ice 14 Hi-Score [32-bit]
//          See 0x020268 note
// $020390: Story Mode: World of Ice 15 Hi-Score [32-bit]
//          See 0x020268 note
// $020394: Story Mode: World of Evil 1 Hi-Score [32-bit]
//          See 0x020268 note
// $020398: Story Mode: World of Evil 2 Hi-Score [32-bit]
//          See 0x020268 note
// $02039C: Story Mode: World of Evil 3 Hi-Score [32-bit]
//          See 0x020268 note
// $0203A0: Story Mode: World of Evil 4 Hi-Score [32-bit]
//          See 0x020268 note
// $0203A4: Story Mode: World of Evil 5 Hi-Score [32-bit]
//          See 0x020268 note
// $0203A8: Story Mode: World of Evil 6 Hi-Score [32-bit]
//          See 0x020268 note
// $0203AC: Story Mode: World of Evil 7 Hi-Score [32-bit]
//          See 0x020268 note
// $0203B0: Story Mode: World of Evil 8 Hi-Score [32-bit]
//          See 0x020268 note
// $0203B4: Story Mode: World of Evil 9 Hi-Score [32-bit]
//          See 0x020268 note
// $0203B8: Story Mode: World of Evil 10 Hi-Score [32-bit]
//          See 0x020268 note
// $0203BC: Story Mode: World of Evil 11 Hi-Score [32-bit]
//          See 0x020268 note
// $0203C0: Story Mode: World of Evil 12 Hi-Score [32-bit]
//          See 0x020268 note
// $0203C4: Story Mode: World of Evil 13 Hi-Score [32-bit]
//          See 0x020268 note
// $0203C8: Story Mode: World of Evil 14 Hi-Score [32-bit]
//          See 0x020268 note
// $0203CC: Story Mode: World of Evil 15 Hi-Score [32-bit]
//          See 0x020268 note

hi_scores_start = 0x20268
hi_scores_offsets = [0, 60, 120, 180, 240, 300]

function sum_hi_scores_world(world) {
    start = hi_scores_start + hi_scores_offsets[world]
    end = start + ((stages_per_world[world] - 1) * 4)
    sum = 0
    
    for i in range(start, end, 4) {
        sum = sum + dword(i)
    }
    
    return sum
}

function check_stage_hi_score(world, stage) {
    offset = hi_scores_offsets[world] + ((stage - 1) * 4)
    address = hi_scores_start + offset
    
    return dword(address)
}

// ---------------
// Card Collection
// ---------------

// $0203D4: Card 01: Mirror Jewel obtained [8-bit]
//          0x00 = Don't have it
//          0x01 = Got it
// $0203D5: Card 02: Hope Crystal obtained [8-bit]
//          See 0x0203d4 note
// $0203D6: Card 03: Time Bomb obtained [8-bit]
//          See 0x0203d4 note
// $0203D7: Card 04: Super Pick obtained [8-bit]
//          See 0x0203d4 note
// $0203D8: Card 05: Magic Glove obtained [8-bit]
//          See 0x0203d4 note
// $0203D9: Card 06: Energy Mushroom obtained [8-bit]
//          See 0x0203d4 note
// $0203DA: Card 07: Ultra Energy Mushroom obtained [8-bit]
//          See 0x0203d4 note
// $0203DB: Card 08: Poison Mushroom obtained [8-bit]
//          See 0x0203d4 note
// $0203DC: Card 09: Rapid Mushroom obtained [8-bit]
//          See 0x0203d4 note
// $0203DD: Card 10: Shining Mirror obtained [8-bit]
//          See 0x0203d4 note
// $0203DE: Card 11: Dark Mirror obtained [8-bit]
//          See 0x0203d4 note
// $0203DF: Card 12: Grace Pendant obtained [8-bit]
//          See 0x0203d4 note
// $0203E0: Card 13: Caterpillar obtained [8-bit]
//          See 0x0203d4 note
// $0203E1: Card 14: Dark Spider obtained [8-bit]
//          See 0x0203d4 note
// $0203E2: Card 15: Killer Bee obtained [8-bit]
//          See 0x0203d4 note
// $0203E3: Card 16: Killer Red obtained [8-bit]
//          See 0x0203d4 note
// $0203E4: Card 17: Sand Winder obtained [8-bit]
//          See 0x0203d4 note
// $0203E5: Card 18: Red Scorpion obtained [8-bit]
//          See 0x0203d4 note
// $0203E6: Card 19: Griff-Roc obtained [8-bit]
//          See 0x0203d4 note
// $0203E7: Card 20: Devil-Roc obtained [8-bit]
//          See 0x0203d4 note
// $0203E8: Card 21: Salamander obtained [8-bit]
//          See 0x0203d4 note
// $0203E9: Card 22: Evil Rock obtained [8-bit]
//          See 0x0203d4 note
// $0203EA: Card 23: Fire Ball obtained [8-bit]
//          See 0x0203d4 note
// $0203EB: Card 24: Phoenix obtained [8-bit]
//          See 0x0203d4 note
// $0203EC: Card 25: Sea Crab obtained [8-bit]
//          See 0x0203d4 note
// $0203ED: Card 26: Kraken obtained [8-bit]
//          See 0x0203d4 note
// $0203EE: Card 27: Needle Fish obtained [8-bit]
//          See 0x0203d4 note
// $0203EF: Card 28: Blue Shark obtained [8-bit]
//          See 0x0203d4 note
// $0203F0: Card 29: Darkness Seal obtained [8-bit]
//          See 0x0203d4 note
// $0203F1: Card 30: Big Fang obtained [8-bit]
//          See 0x0203d4 note
// $0203F2: Card 31: Killer Penguin obtained [8-bit]
//          See 0x0203d4 note
// $0203F3: Card 32: Giant Bear obtained [8-bit]
//          See 0x0203d4 note
// $0203F4: Card 33: Knight Armor obtained [8-bit]
//          See 0x0203d4 note
// $0203F5: Card 34: Undead obtained [8-bit]
//          See 0x0203d4 note
// $0203F6: Card 35: Devil Kid obtained [8-bit]
//          See 0x0203d4 note
// $0203F7: Card 36: Phantom obtained [8-bit]
//          See 0x0203d4 note
// $0203F8: Card 37: Alex obtained [8-bit]
//          See 0x0203d4 note
// $0203F9: Card 38: Sonya obtained [8-bit]
//          See 0x0203d4 note
// $0203FA: Card 39: Nick obtained [8-bit]
//          See 0x0203d4 note
// $0203FB: Card 40: Emily obtained [8-bit]
//          See 0x0203d4 note
// $0203FC: Card 41: Dark King obtained [8-bit]
//          See 0x0203d4 note

// Again, could've just put the card addresses directly in these arrays. But I like the idea of starting from the in-game card numbers
cards_start = 0x203d4
forest_cards = [1, 2, 13, 14, 15, 16]
sand_cards = [3, 4, 17, 18, 19, 20]
fire_cards = [5, 6, 21, 22, 23, 24]
water_cards = [7, 8, 25, 26, 27, 28]
ice_cards = [9, 10, 29, 30, 31, 32]
evil_cards = [11, 12, 33, 34, 35, 36]
cards_groups = [forest_cards, sand_cards, fire_cards, water_cards, ice_cards, evil_cards]

function count_cards_world(world) {
    cards = cards_groups[world]
    bits = 0
    for i in cards {
        offset = 0 + i - 1
        check_card = byte(cards_start + offset)
        bits = bits + check_card
    }
    
    return bits
}

// didn't actually need these, just check Card 41 itself. It's unlocked after getting every other card

//cards_end = 0x203fc

//function count_cards_all() {
//    bits = 0
//    for i in range(cards_start, cards_end) {
//        bits = bits + byte(i)
//    }
//    
//    return bits
//}

function card_41_dark_king() => byte(0x203fc)

// -----------
// Battle Mode
// -----------

// $013CD0: Battle Mode: Time setting [8-bit]
//          0x00 = 1 minute
//          0x01 = 2 minutes
//          0x02 = 3 minutes

function battle_mode_time_setting() => byte(0x13cd0)

one_minute = 0
two_minutes = 1

// $013CCE: Battle Mode: Computer setting [8-bit]
//          0x02 = 1 computer
//          0x03 = 2 computers
//          0x04 = 3 computers

function battle_mode_com_setting() => byte(0x13cce)

//one_computer = 2
three_computers = 4

// $013CD6: Battle Mode: Player 1's character [8-bit]
//          0x00 = Alex
//          0x01 = Sonya
//          0x02 = Nick
//          0x03 = Emily
// $013CD7: Battle Mode: Player 2's character [8-bit]
//          See 0x013cd6 note
// $013CD8: Battle Mode: Player 3's character [8-bit]
//          See 0x013cd6 note
// $013CD9: Battle Mode: Player 4's character [8-bit]
//          See 0x013cd6 note

function battle_mode_p1_character() => byte(0x13cd6)

//function battle_mode_p2_character() => byte(0x13cd7)

//alex = 0
//sonya = 1

character_dictionary = {
    0: "Alex",
    1: "Sonya",
    2: "Nick",
    3: "Emily"
}

function battle_mode_p1_character_not_alex() => (battle_mode_p1_character() >= 1 && battle_mode_p1_character() <= 3)

// $0217C8: Battle Mode: Current/Last played stage [8-bit]
//          0x00 to 0x09 = Stage 1 to 10

function battle_mode_stage() => byte(0x217c8)

stages_1_5 = [1, 2, 3, 4, 5]
stages_6_10 = [6, 7, 8, 9, 10]

// $013CDA: Battle Mode: Player 1's wins [8-bit]

function battle_mode_p1_wins() => byte(0x13cda)

// $024AC0: Battle Mode: Seconds remaining, hundreds digit [8-bit]
//          0x5f to 0x68 = 0 to 9
//          Works differently in other parts of the game
// $024AC2: Battle Mode: Seconds remaining, tens digit [8-bit]
//          See 0x024ac0 note
// $024AC4: Battle Mode: Seconds remaining, ones digit [8-bit]
//          See 0x024ac0 note

function battle_mode_time() {
    hundreds = (byte(0x24ac0) - 0x5f) * 100
    tens = (byte(0x24ac2) - 0x5f) * 10
    ones = byte(0x24ac4) - 0x5f
    time = hundreds + tens + ones
    
    return time
}

// $024AC1: Battle Mode: Timer working properly [8-bit]
//          0x20 = Proper
//          Only used to help fine-tune rich presence

function battle_mode_time_proper() => byte(0x24ac1)

proper_time = 0x20

// $02570E: Battle Mode: Graphics [8-bit]
//          0x00 = Settings menu
//          0x02 = Draw
//          0x0e = In-game
//          0xb2 = Player 1 wins
//          0xca = Player 1 loses
//          0xe3 = Exit
//          Stays the same after exiting to EX Game menu or One Player/Multiplayer menu.
//          Values are the same regardless of language/rom - English, German, French, Japanese

function battle_mode_graphics() => byte(0x2570e)

graphics_p1_wins = 0xb2

// ------------
// Classic Game
// ------------

// Classic Mode achievements and leaderboard have been moved into a subset
// But most of these are still used here for RP

// $01BA18: Classic Game: Time remaining [8-bit]

function classic_time() => byte(0x1ba18)

// $01B9F2: Classic Game: Score [16-bit]
//          Every 500 points gives an extra life

function classic_score() => word(0x1b9f2)

// $01B9EC: Classic Game: Jewels [8-bit]

function classic_jewels() => byte(0x1b9ec)

// $01B9EA: Classic Game: Player lives [8-bit]
//          0x01 to 0x03

function classic_lives() => byte(0x1b9ea)

// $000F08: Classic Game: Cave cleared [8-bit]
//          0x8c = Entered exit door
//          Seems reliable for tutorial achievement

function classic_cave_cleared() => byte(0xf08)

cave_cleared = 0x8c

// $015A06: Classic Game: Player lives graphic, tens digit [8-bit]
//          0x31 to 0x43 = 0 to 9, steps of 2
//          Used to help fine-tune rich presence
// $015A08: Classic Game: Player lives graphic, ones digit [8-bit]
//          See 0x015a06 note

function classic_lives_zero() => (byte(0x15a06) == 0x31 && byte(0x15a08) == 0x31)

// ---------------------
// Classic Game Tutorial
// ---------------------

// $020555: Classic Game: Current/Last played tutorial lesson [8-bit]
//          0x00 to 0x03 = Lesson 1 to 4

function classic_tutorial_lesson() => byte(0x20555)

// ------------
// Classic Mode
// ------------

// $01B9E2: Classic Mode: Current/Last played level [8-bit]
//          0x00 to 0x04 = Level 1 to 5
//          Also affected by tutorial lessons

function classic_mode_level() => byte(0x1b9e2)

// $01B9E3: Classic Mode: Current/Last played cave [8-bit]
//          0x00 to 0x03 = Cave A to D
//          0x04 = Bonus Cave Q
//          0x05 to 0x08 = Cave E to H
//          0x09 = Bonus Cave R
//          0x0a to 0x0d = Cave I to L
//          0x0e = Bonus Cave S
//          0x0f to 0x12 = Cave M to P
//          0x13 = Bonus Cave T
//          0x14 = Classic Mode All Clear screen
//          Also affected by tutorial lessons

function classic_mode_cave() => byte(0x1b9e3)

caves_a_d = [0, 1, 2, 3]
caves_e_h = [5, 6, 7, 8]
caves_i_l = [0xa, 0xb, 0xc, 0xd]
caves_m_p = [0xf, 0x10, 0x11, 0x12]
cave_q = 4
cave_r = 9
cave_s = 0xe
cave_t = 0x13
classic_mode_all_clear = 0x14

//cave_strings = ["A", "B", "C", "D", "Q", "E", "F", "G", "H", "R", "I", "J", "K", "L", "S", "M", "N", "O", "P", "T"]

// the array doesn't work with rich presence
cave_dictionary = {
    0: "A",
    1: "B",
    2: "C",
    3: "D",
    4: "Q",
    5: "E",
    6: "F",
    7: "G",
    8: "H",
    9: "R",
    0xa: "I",
    0xb: "J",
    0xc: "K",
    0xd: "L",
    0xe: "S",
    0xf: "M",
    0x10: "N",
    0x11: "O",
    0x12: "P",
    0x13: "T"
}

// $0205D6: Classic Mode: Bonus Cave Q cleared [8-bit]
//          0x00 = Not cleared
//          0x01 = Cleared
//          Flag is set when it's cleared on any level
// $0205D7: Classic Mode: Bonus Cave R cleared [8-bit]
//          See 0x0205d6 note
// $0205D8: Classic Mode: Bonus Cave S cleared [8-bit]
//          See 0x0205d6 note
// $0205D9: Classic Mode: Bonus Cave T / Classic Mode All Clear [8-bit]
//          See 0x0205d6 note
//          Flag is set after pressing start on the All Clear screen, entering the next level of Cave A

bonus_cave_completion = {
    cave_q: byte(0x205d6),
    cave_r: byte(0x205d7),
    cave_s: byte(0x205d8),
    cave_t: byte(0x205d9)
}

function check_bonus_cave_completion(cave) => bonus_cave_completion[cave]

// $00C110: Classic Mode: Hi-Score [16-bit]

function classic_mode_hi_score() => word(0xc110)

// ------------
// Achievements
// ------------

// ----------------
// EX Game Tutorial
// ----------------

function achievement_ex_tutorial_trigger() {
    trigger = always_true()
    for i in range(1, 8) {
        trigger = trigger &&
                  once(screen() == ex_tutorial_in_game && ex_tutorial_lesson() == i - 1 && prev(ex_player_animation()) != clear_stage && ex_player_animation() == clear_stage)
    }
    
    return trigger
}

achievement(
    id = 316999,
    title = "Learn to Play",
    description = "In one session, clear every lesson in the EX Game Tutorial.",
    points = 1,
    trigger = achievement_ex_tutorial_trigger()
)

// -------------------
// Story Mode Progress
// -------------------

// this didn't work out at all
//function achievement_story_progress_description(world, stage) {
//    if (stage == 5) {
//        variable_text = "the first 5 stages in "
//    }
//    else if ((world == water || ice || evil) && stage == 10) {
//        variable_text = "the first 10 stages in "
//    }
//    else if (((world == forest || sand || fire) && stage == 10) || stage == 15) {
//        variable_text = "every stage in "
//    }
//    text = "Clear " + variable_text + world_dictionary[world] + "."
//    
//    return text
//}

// couldn't get this working either
//function description_story_progress(world, stage) {
//    if (stage == 5) {
//        return "Clear the first 5 stages in " + world_dictionary[world] + "."
//    }
//    else if (stage == 10 && world == (water || ice || evil)) {
//        return "Clear the first 10 stages in " + world_dictionary[world] + "."
//    }
//    else if (stage == 15 || (stage == 10 && world == (forest || sand || fire))) {
//        return "Clear every stage in " + world_dictionary[world] + "."
//    }
//}

function achievement_story_progress(id, title, description, points, world, stage) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = screen() == story_mode_in_game &&
                  story_mode_world() == world &&
                  story_mode_stage() == stage - 1 &&
                  prev(check_stage_completion(world, stage)) == 0 &&
                  check_stage_completion(world, stage) > 0
    )
}

//function description_story_progress_5(world) {
//    return "Clear the first 5 stages in " + world_dictionary[world] + "."
//}

//function description_story_progress_10(world) {
//    return "Clear the first 10 stages in " + world_dictionary[world] + "."
//}

function description_story_progress_all(world) {
    return "Clear every stage in " + world_dictionary[world] + "."
}

// decided to scrap most of these, too many on top of the "perfect" achievements

// old title: "The Forest Path"
//achievement_story_progress("Through the Looking Glass", description_story_progress_5(forest), 3, forest, 5)
achievement_story_progress(317000, "Through the Looking Glass", description_story_progress_all(forest), 5, forest, 10)

//achievement_story_progress("Desert Wanderer", description_story_progress_5(sand), 3, sand, 5)
achievement_story_progress(317001, "Out of the Frying Pan", description_story_progress_all(sand), 5, sand, 10)

// old title: "Hot Pursuit""
//achievement_story_progress("Into the Fire", description_story_progress_5(fire), 3, fire, 5)
achievement_story_progress(317002, "Into the Fire", description_story_progress_all(fire), 5, fire, 10)

//achievement_story_progress("The Life Aquatic", description_story_progress_5(water), 4, water, 5)
//achievement_story_progress("In Deep Water", description_story_progress_10(water), 4, water, 10)
achievement_story_progress(317003, "Ocean Man", description_story_progress_all(water), 10, water, 15)

// old title: "Cool Party"
//achievement_story_progress("The Iceman Cometh!", description_story_progress_5(ice), 5, ice, 5)
//achievement_story_progress("What Killed the Dinosaurs? The Ice Age!", description_story_progress_10(ice), 5, ice, 10)
achievement_story_progress(317004, "Cool", description_story_progress_all(ice), 10, ice, 15)

//achievement_story_progress("Storming the Castle", description_story_progress_5(evil), 5, evil, 5)
//achievement_story_progress("The Final Stretch", description_story_progress_10(evil), 5, evil, 10)
achievement_story_progress(317005, "Against the Dark King", description_story_progress_all(evil), 25, evil, 15)

// --------------------------
// Story Mode: Perfect Stages
// --------------------------

function achievement_perfect_stages(id, title, description, points, world, number_of_stages) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = screen() == story_mode_in_game &&
                  story_mode_world() == world &&
                  prev(count_perfect_stages(world)) == (number_of_stages - 1) &&
                  measured(count_perfect_stages(world) == number_of_stages)
    )
}

function description_perfect_stages_5(world) {
    return "Collect all Mirror Jewels in any 5 stages in " + world_dictionary[world] + "."
}

function description_perfect_stages_10(world) {
    return "Collect all Mirror Jewels in any 10 stages in " + world_dictionary[world] + "."
}

function description_perfect_stages_all(world) {
    return "Collect all Mirror Jewels in every stage in " + world_dictionary[world] + "."
}

achievement_perfect_stages(317006, "Forest Treasures", description_perfect_stages_5(forest), 1, forest, 5)
achievement_perfect_stages(317007, "The Secret World of Alex Cat", description_perfect_stages_all(forest), 1, forest, 10)

achievement_perfect_stages(317008, "Combing the Desert", description_perfect_stages_5(sand), 2, sand, 5)
achievement_perfect_stages(317009, "No Stone Left Unturned", description_perfect_stages_all(sand), 2, sand, 10)

achievement_perfect_stages(317010, "Hot Ticket Items", description_perfect_stages_5(fire), 3, fire, 5)
achievement_perfect_stages(317011, "No Coal Here", description_perfect_stages_all(fire), 3, fire, 10)

achievement_perfect_stages(317012, "The Treasure Hunt Continues", description_perfect_stages_5(water), 4, water, 5)
achievement_perfect_stages(317013, "Deep Sea Gems", description_perfect_stages_10(water), 4, water, 10)
achievement_perfect_stages(317014, "Wealth of the Waves", description_perfect_stages_all(water), 5, water, 15)

achievement_perfect_stages(317015, "Glittering Treasures", description_perfect_stages_5(ice), 5, ice, 5)
achievement_perfect_stages(317016, "Cold Determination", description_perfect_stages_10(ice), 5, ice, 10)
achievement_perfect_stages(317017, "Iced Out", description_perfect_stages_all(ice), 10, ice, 15)

achievement_perfect_stages(317018, "Dungeon Loot", description_perfect_stages_5(evil), 5, evil, 5)
achievement_perfect_stages(317019, "The Hoard", description_perfect_stages_10(evil), 10, evil, 10)
achievement_perfect_stages(317020, "Filthy Rich", description_perfect_stages_all(evil), 25, evil, 15)

// ---------------
// Card Collection
// ---------------

// wasn't necessary, just put the description directly in the achievement
// function description_collect_cards_world(world) {
//    return "Collect every card from progressing and killing enemies in " + world_dictionary[world] + "."
//}

function achievement_collect_cards_world(id, title, points, world) {
    achievement(
        id = id,
        title = title,
        description = "Collect every card from progressing and killing enemies in " + world_dictionary[world] + ".",
        points = points,
        trigger = screen() == story_mode_in_game &&
                  story_mode_world() == world &&
                  prev(count_cards_world(world)) == 5 &&
                  measured(count_cards_world(world) == 6)
    )
}

achievement_collect_cards_world(317021, "Green Cards", 5, forest)
achievement_collect_cards_world(317022, "Cards of the Sands", 5, sand)
achievement_collect_cards_world(317023, "Cards of Fire", 5, fire)
achievement_collect_cards_world(317024, "Cards of the Sea", 10, water)
achievement_collect_cards_world(317025, "Cards of Ice", 10, ice)
achievement_collect_cards_world(317026, "Cards of Darkness", 10, evil)

achievement(
    id = 317027,
    title = "Master of the Cards",
    description = "Complete your Card Collection.",
    points = 25,
    trigger = screen() == story_mode_in_game &&
              prev(card_41_dark_king()) == 0 &&
              card_41_dark_king() == 1
)

// ----------
// Challenges
// ----------

function achievement_world_speedrun(id, title, points, world, final_stage, frames, time_description) {
    achievement(
        id = id,
        title = title,
        description = "In one session, clear every stage in " + world_dictionary[world] + " in under " + time_description + ". Starts after selecting " + world_dictionary[world] + " 1 from the Stage Select screen.",
        points = points,
        trigger = once(prev(screen()) == story_mode_stage_select &&
                       screen() == story_mode_in_game &&
                       story_mode_world() == world &&
                       story_mode_stage() == 1 - 1
                       ) &&
                  trigger_when(story_mode_stage() == final_stage - 1) &&
                  trigger_when(prev(ex_player_animation()) != clear_stage) &&
                  trigger_when(ex_player_animation() == clear_stage) &&
                  never(repeated(frames, always_true())) &&
                  never(screen() != story_mode_in_game) &&
                  never(story_mode_world() != world)
    )
}

function achievement_stage_hi_score(id, title, points, world, stage, target_score) {
    achievement(
        id = id,
        title = title,
        description = "Reach a Hi-Score of at least " + target_score + " in " + world_dictionary[world] + " " + stage + ".",
        points = points,
        trigger = screen() == story_mode_in_game &&
                  story_mode_world() == world &&
                  __ornext(story_mode_stage() == stage - 1 || story_mode_stage() == stage) &&
                  prev(check_stage_hi_score(world, stage)) < target_score &&
                  check_stage_hi_score(world, stage) >= target_score
    )
}

// Natural max health is 10,000 (0x2710)
function achievement_stage_low_damage(id, title, points, world, stage, damage_target) {
    achievement(
        id = id,
        title = title,
        description = "Complete " + world_dictionary[world] + " " + stage + " without taking damage from enemies (or an equivalent amount of damage from other sources).",
        points = points,
        trigger = once(screen() == story_mode_in_game &&
                       story_mode_world() == world &&
                       story_mode_stage() == stage - 1 &&
                       prev(ex_player_animation()) == enter_stage &&
                       ex_player_animation() == idle
                  ) &&
                  prev(ex_player_animation()) != clear_stage &&
                  trigger_when(ex_player_animation() == clear_stage) &&
                  never(prev(ex_health()) > (10000 - damage_target) && ex_health() <= (10000 - damage_target)) &&
                  never(prev(ex_player_animation()) != enter_stage && ex_player_animation() == enter_stage) &&
                  never(screen() != story_mode_in_game)
    )
}

function achievement_stage_speedrun(id, title, points, world, stage, frames, time_description) {
    achievement(
        id = id,
        title = title,
        description = "Clear " + world_dictionary[world] + " " + stage + " in under " + time_description + ".",
        points = points,
        trigger = once(screen() == story_mode_in_game &&
                       story_mode_world() == world &&
                       story_mode_stage() == stage - 1 &&
                       prev(ex_player_animation()) == enter_stage &&
                       ex_player_animation() == idle
                  ) &&
                  prev(ex_player_animation()) != clear_stage &&
                  trigger_when(ex_player_animation() == clear_stage) &&
                  never(repeated(frames, always_true())) &&
                  never(prev(ex_player_animation()) != enter_stage && ex_player_animation() == enter_stage) &&
                  never(screen() != story_mode_in_game)
    )
}

achievement_stage_hi_score(317028, "Bee Exterminator", 5, forest, 5, 9850)
achievement_world_speedrun(317029, "Forest Dash", 10, forest, 10, 14400, "4 minutes")

// Red Scorpions do 3000 damage
achievement_stage_low_damage(317030, "Scorpion Maneuvers", 5, sand, 5, 3000)
achievement_world_speedrun(317031, "Darude", 10, sand, 10, 18000, "5 minutes")

// Salamanders do 2500 damage
achievement_stage_low_damage(317032, "The Salamander Situation", 5, fire, 10, 2500)
// old name: Blazing Speed
achievement_world_speedrun(317033, "Hot Pursuit", 10, fire, 10, 21600, "6 minutes")

achievement_stage_hi_score(317034, "Seafloor Sweep", 5, water, 3, 17580)
achievement_stage_speedrun(317035, "Running on Water", 5, water, 6, 1200, "20 seconds")
// Blue Sharks do 6000 damage
achievement_stage_low_damage(317036, "Shark Control", 5, water, 12, 6000)

achievement_stage_hi_score(317037, "Avalanche", 5, ice, 4, 14770)
achievement_stage_speedrun(317038, "Slick", 5, ice, 7, 840, "14 seconds")
// Killer Penguins do 5500 damage
achievement_stage_low_damage(317039, "Penguins at Bay", 5, ice, 15, 5500)

achievement_stage_hi_score(317040, "Clean Up This Mess", 5, evil, 7, 10000)
// Devil Kids do 6000 damage, Phantoms do 8000 damage
achievement_stage_low_damage(317041, "Patience is Key", 5, evil, 14, 6000)
achievement_stage_speedrun(317042, "Speed Demon", 5, evil, 15, 1800, "30 seconds")

// scrapped the later world speedruns because they were too long and required too much memorization
//achievement_world_speedrun("Running on Water", 10, water, 15, 36000, "10 minutes")
//achievement_world_speedrun("Slick", 10, ice, 15, 41400, "11 minutes and 30 seconds")
//achievement_world_speedrun("Speed Demon", 10, evil, 15, 37800, "10 minutes and 30 seconds")

// ---------------
// World Hi-Scores
// ---------------

function achievement_world_hi_score(id, title, points, world, target_score) {
    achievement(
        id = id,
        title = title,
        description = "Reach a total Hi-Score of at least " + target_score + " in " + world_dictionary[world] + ".",
        points = points,
        trigger = screen() == story_mode_in_game &&
                  story_mode_world() == world &&
                  prev(sum_hi_scores_world(world)) < target_score &&
                  sum_hi_scores_world(world) >= target_score
    )
}

achievement_world_hi_score(317043, "Woodland Warrior", 5, forest, 81400)
achievement_world_hi_score(317044, "Duke of the Dunes", 5, sand, 85640)
achievement_world_hi_score(317045, "Firelord", 5, fire, 81910)
achievement_world_hi_score(317046, "Prince of the Sea", 10, water, 159670)
achievement_world_hi_score(317047, "Penguin Massacre", 10, ice, 151750)
achievement_world_hi_score(317048, "Demon Slayer", 25, evil, 170230)

// -----------
// Battle Mode
// -----------

// Removed battle_mode_time_setting() == two_minutes. Can take too long for such easy achievements, let players use 1 minute if they want
function achievement_battle_wins(id, title, points, stages) {
    trigger = always_true()
    for i in stages {
        trigger = trigger &&
                  once(screen() == battle_mode && battle_mode_com_setting() == three_computers &&
                       battle_mode_stage() == i - 1 && battle_mode_p1_wins() > prev(battle_mode_p1_wins()))
    }
    
    achievement(
        id = id,
        title = title,
        description = "Battle Mode: In one session, win games in stages " + stages[0] + " through " + stages[4] + ". Use 3 computers setting and any time setting.",
        points = points,
        trigger = trigger
    )
}

achievement_battle_wins(317049, "The Battlefield", 1, stages_1_5)
achievement_battle_wins(317050, "Cat Fights", 1, stages_6_10)

achievement(
    id = 317051,
    title = "Wealthy Winner",
    description = "Battle Mode: Win a game with at least 30 Mirror Jewels. Use 3 computers setting and 1 or 2 minutes time setting.",
    points = 1,
    trigger = screen() == battle_mode &&
              __ornext(battle_mode_time_setting() == one_minute || battle_mode_time_setting() == two_minutes) &&
              battle_mode_com_setting() == three_computers &&
              ex_jewels() >= 30 &&
              battle_mode_p1_wins() > prev(battle_mode_p1_wins())
)

// too annoying
//achievement(
//    title = "Joining the Dark King",
//    description = "Battle Mode: While playing as Alex, kill Sonya in a 1-on-1 game. Use any time setting.",
//    points = 5,
//    trigger = screen() == battle_mode &&
//              battle_mode_com_setting() == one_computer &&
//              battle_mode_p1_character() == alex &&
//              battle_mode_p2_character() == sonya &&
//              battle_mode_time_proper() == proper_time &&
//              prev(battle_mode_p2_health()) != 0 &&
//              battle_mode_p2_health() == 0
//)

achievement(
    id = 338618,
    title = "What Could've Been",
    description = "Play as Sonya, Nick, or Emily in Battle Mode, then return to the Title Screen or Main Menu and wait for the demo to play.",
    points = 1,
    trigger = screen() == title_main_menu_demo &&
              battle_mode_p1_character_not_alex() &&
              prev(ex_player_animation()) == enter_stage &&
              ex_player_animation() != enter_stage
)

// ------------
// Leaderboards
// ------------

function leaderboard_world_speedrun(id, world, final_stage) {
    leaderboard(
        id = id,
        title = world_dictionary[world] + " Speedrun",
        description = "Starts after selecting " + world_dictionary[world] + " 1 from the Stage Select screen.",
        start = prev(screen()) == story_mode_stage_select &&
                screen() == story_mode_in_game &&
                story_mode_world() == world &&
                story_mode_stage() == 1 - 1,
        cancel = __ornext(screen() != story_mode_in_game || story_mode_world() != world),
        submit = story_mode_stage() == final_stage - 1 &&
                 prev(ex_player_animation()) != clear_stage &&
                 ex_player_animation() == clear_stage,
        value = measured(always_true()),
        format = "FRAMES",
        lower_is_better = true
    )
}

leaderboard_world_speedrun(65201, forest, 10)
leaderboard_world_speedrun(65202, sand, 10)
leaderboard_world_speedrun(65203, fire, 10)
leaderboard_world_speedrun(65204, water, 15)
leaderboard_world_speedrun(65205, ice, 15)
leaderboard_world_speedrun(65206, evil, 15)

// The new Hi-Score should register before the stage number increases. However, I still accounted for that to be safe
function leaderboard_stage_hi_score() {
    leaderboard_ids = range(65207, 65281)
    id_iteration = 0
    for world in range(forest, evil) {
        for stage in range(1, stages_per_world[world]) {
            leaderboard(
                id = leaderboard_ids[id_iteration],
                title = world_dictionary[world] + " " + stage + " Hi-Score",
                description = "Submitted after stage is cleared with a new Hi-Score.",
                start = screen() == story_mode_in_game &&
                        story_mode_world() == world &&
                        __ornext(story_mode_stage() == stage - 1 || story_mode_stage() == stage) &&
                        check_stage_hi_score(world, stage) > prev(check_stage_hi_score(world, stage)),
                cancel = always_false(),
                submit = always_true(),
                value = measured(check_stage_hi_score(world, stage)),
                format = "VALUE"
            )
            id_iteration = id_iteration + 1
        }
    }
}

leaderboard_stage_hi_score()

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    screen() == story_mode_in_game && music_story_mode_credits(),
    "Alex cleared Story Mode! Viewing the Credits"
)

rich_presence_conditional_display(
    screen() == story_mode_in_game && music_card_collection(),
    "Collected a Card in Story Mode"
)

rich_presence_conditional_display(
    screen() == story_mode_in_game && music_story_mode_scenes(),
    "Viewing a Scene in Story Mode"
)

// Health not shown since it's draining during this time
rich_presence_conditional_display(
    screen() == story_mode_in_game && ex_player_animation() == clear_stage,
    "Alex cleared {0} {1} | 💯{2} | 💎{3}",
    rich_presence_lookup("StoryWorld", story_mode_world(), world_dictionary),
    rich_presence_value("StoryStage", story_mode_stage() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels())
)

// Jewel count drops to 0 when you get crushed, but not when dying by other means
rich_presence_conditional_display(
    screen() == story_mode_in_game && ex_player_animation() == player_crushed,
    "Alex got crushed in {0} {1} | 💯{2}",
    rich_presence_lookup("StoryWorld", story_mode_world(), world_dictionary),
    rich_presence_value("StoryStage", story_mode_stage() + 1),
    rich_presence_value("EXScore", ex_score())
)

rich_presence_conditional_display(
    screen() == story_mode_in_game && ex_player_animation() == player_dies,
    "Alex died in {0} {1} | 💯{2} | 💎{3}",
    rich_presence_lookup("StoryWorld", story_mode_world(), world_dictionary),
    rich_presence_value("StoryStage", story_mode_stage() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels())
)

// To hide inaccurate info during stage transitions, and maybe janky health values after dying too
rich_presence_conditional_display(
    screen() == story_mode_in_game && (ex_health() == 0 || ex_health() > 10000),
    "Alex is in {0} {1}",
    rich_presence_lookup("StoryWorld", story_mode_world(), world_dictionary),
    rich_presence_value("StoryStage", story_mode_stage() + 1)
)

rich_presence_conditional_display(
    screen() == story_mode_in_game,
    "Alex is in {0} {1} | 💯{2} | 💎{3} | ❤️{4}%",
    rich_presence_lookup("StoryWorld", story_mode_world(), world_dictionary),
    rich_presence_value("StoryStage", story_mode_stage() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels()),
    rich_presence_value("EXHealth", ex_health() / 100)
)

rich_presence_conditional_display(
    screen() == ex_tutorial_in_game && ex_player_animation() == clear_stage,
    "Alex cleared Tutorial Lesson {0} | 💯{1} | 💎{2}",
    rich_presence_value("EXTutorialLesson", ex_tutorial_lesson() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels())
)

rich_presence_conditional_display(
    screen() == ex_tutorial_in_game && ex_player_animation() == player_crushed,
    "Alex got crushed in Tutorial Lesson {0} | 💯{1}",
    rich_presence_value("EXTutorialLesson", ex_tutorial_lesson() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels())
)

rich_presence_conditional_display(
    screen() == ex_tutorial_in_game && ex_player_animation() == player_dies,
    "Alex died in Tutorial Lesson {0} | 💯{1} | 💎{2}",
    rich_presence_value("EXTutorialLesson", ex_tutorial_lesson() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels())
)

rich_presence_conditional_display(
    screen() == ex_tutorial_in_game && (ex_health() == 0 || ex_health() > 10000),
    "Alex is learning Tutorial Lesson {0} | 💯{1} | 💎{2}",
    rich_presence_value("EXTutorialLesson", ex_tutorial_lesson() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels())
)

rich_presence_conditional_display(
    screen() == ex_tutorial_in_game,
    "Alex is learning Tutorial Lesson {0} | 💯{1} | 💎{2} | ❤️{3}%",
    rich_presence_value("EXTutorialLesson", ex_tutorial_lesson() + 1),
    rich_presence_value("EXScore", ex_score()),
    rich_presence_value("EXJewels", ex_jewels()),
    rich_presence_value("EXHealth", ex_health() / 100)
)

// Score, jewels, and health values haven't updated yet on this screen, even though they're displayed in the game, so they aren't included in this RP
rich_presence_conditional_display(
    screen() == ex_tutorial_text,
    "Alex is learning Tutorial Lesson {0}",
    rich_presence_value("EXTutorialLesson", ex_tutorial_lesson() + 1)
)

// Every part of Battle Mode shares the same screen() value, so these are more of a hassle to distinguish

// It takes a second for the music value to change to the Battle Mode menu music, so the music from the previous menu is also included.
// Otherwise it briefly displays the "finished a game" RP when entering Battle Mode
// The proper_time value should only show when actually in-game in Battle Mode, not in menus or results screens
rich_presence_conditional_display(
    screen() == battle_mode && battle_mode_time_proper() != proper_time && (music_battle_mode_menus() || music_game_menus()),
    "Viewing the Battle Mode Menu | Wins: {0}",
    rich_presence_value("BattleP1Wins", battle_mode_p1_wins())
)

// ex_game_state() for the winning results screen always seemed to be "interstitial", not "in_game_no_input". Not included but just noting
// music_battle_mode_p1_wins() doesn't quite work here with USA and Japan roms supported. 0x44 value overlaps with in-game music
// Replaced with battle_mode_graphics() == graphics_p1_wins
rich_presence_conditional_display(
    screen() == battle_mode && battle_mode_graphics() == graphics_p1_wins,
    "{0} won a game in Stage {1} in Battle Mode | 💎{2} | ❤️{3}% | Wins: {4}",
    rich_presence_lookup("BattleCharacter", battle_mode_p1_character(), character_dictionary),
    rich_presence_value("BattleStage", battle_mode_stage() + 1),
    rich_presence_value("EXJewels", ex_jewels()),
    rich_presence_value("EXHealth", ex_health() / 100),
    rich_presence_value("BattleP1Wins", battle_mode_p1_wins())
)

// Unlike the winning screen, ex_game_state() for the loss/draw/quit screen always seemed to be "in_game_no_input", not "interstitial"
// Also displays before the winning screen, as soon as "Time's up!". Tried to avoid janky time values
rich_presence_conditional_display(
    screen() == battle_mode && (ex_game_state() == time_up || battle_mode_time_proper() != proper_time || music_ex_game_over()),
    "{0} finished a game in Stage {1} in Battle Mode | 💎{2} | ❤️{3}% | Wins: {4}",
    rich_presence_lookup("BattleCharacter", battle_mode_p1_character(), character_dictionary),
    rich_presence_value("BattleStage", battle_mode_stage() + 1),
    rich_presence_value("EXJewels", ex_jewels()),
    rich_presence_value("EXHealth", ex_health() / 100),
    rich_presence_value("BattleP1Wins", battle_mode_p1_wins())
)

rich_presence_conditional_display(
    screen() == battle_mode,
    "{0} is in Stage {1} in Battle Mode | ⏰{2} | 💎{3} | ❤️{4}% | Wins: {5}",
    rich_presence_lookup("BattleCharacter", battle_mode_p1_character(), character_dictionary),
    rich_presence_value("BattleStage", battle_mode_stage() + 1),
    rich_presence_value("BattleTime", battle_mode_time()),
    rich_presence_value("EXJewels", ex_jewels()),
    rich_presence_value("EXHealth", ex_health() / 100),
    rich_presence_value("BattleP1Wins", battle_mode_p1_wins())
)

rich_presence_conditional_display(
    screen() == classic_mode_in_game && classic_mode_cave() == classic_mode_all_clear,
    "Rockford cleared Classic Mode! Level {0} | 💯{1} | 🚶{2}",
    rich_presence_value("ClassicLevel", classic_mode_level() + 1),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicLives", classic_lives())
)

rich_presence_conditional_display(
    screen() == classic_mode_in_game && classic_cave_cleared() == cave_cleared,
    "Rockford cleared Cave {0}-{1} | 💯{2} | 💎{3} | 🚶{4}",
    rich_presence_lookup("ClassicCave", classic_mode_cave(), cave_dictionary),
    rich_presence_value("ClassicLevel", classic_mode_level() + 1),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels()),
    rich_presence_value("ClassicLives", classic_lives())
)

// To hide inaccurate info after Game Over, during transition to title screen
rich_presence_conditional_display(
    screen() == classic_mode_in_game && classic_lives_zero() && classic_lives() == 3,
    "Rockford lost all lives in Cave {0}-{1}",
    rich_presence_lookup("ClassicCave", classic_mode_cave(), cave_dictionary),
    rich_presence_value("ClassicLevel", classic_mode_level() + 1)
)

rich_presence_conditional_display(
    screen() == classic_mode_in_game && classic_lives_zero(),
    "Rockford lost all lives in Cave {0}-{1} | ⏰{2} | 💯{3} | 💎{4}",
    rich_presence_lookup("ClassicCave", classic_mode_cave(), cave_dictionary),
    rich_presence_value("ClassicLevel", classic_mode_level() + 1),
    rich_presence_value("ClassicTime", classic_time()),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels())
)

rich_presence_conditional_display(
    screen() == classic_mode_in_game && classic_time() == 0,
    "Rockford is in Cave {0}-{1} | 💯{2} | 💎{3} | 🚶{4}",
    rich_presence_lookup("ClassicCave", classic_mode_cave(), cave_dictionary),
    rich_presence_value("ClassicLevel", classic_mode_level() + 1),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels()),
    rich_presence_value("ClassicLives", classic_lives())
)

// When you exit a cave or tutorial lesson, briefly lives will be set to 3 and score and jewels will be set to 0
// Gave up trying to make another conditional to hide that situation, I spent way too much time trying to fine-tune RP already
rich_presence_conditional_display(
    screen() == classic_mode_in_game,
    "Rockford is in Cave {0}-{1} | ⏰{2} | 💯{3} | 💎{4} | 🚶{5}",
    rich_presence_lookup("ClassicCave", classic_mode_cave(), cave_dictionary),
    rich_presence_value("ClassicLevel", classic_mode_level() + 1),
    rich_presence_value("ClassicTime", classic_time()),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels()),
    rich_presence_value("ClassicLives", classic_lives())
)

rich_presence_conditional_display(
    screen() == classic_tutorial_in_game && classic_cave_cleared() == cave_cleared,
    "Rockford cleared Tutorial Lesson {0} | 💯{1} | 💎{2} | 🚶{3}",
    rich_presence_value("ClassicTutorialLesson", classic_tutorial_lesson() + 1),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels()),
    rich_presence_value("ClassicLives", classic_lives())
)

rich_presence_conditional_display(
    screen() == classic_tutorial_in_game && classic_lives_zero() && classic_lives() == 3,
    "Rockford lost all lives in Tutorial Lesson {0}",
    rich_presence_value("ClassicTutorialLesson", classic_tutorial_lesson() + 1)
)

rich_presence_conditional_display(
    screen() == classic_tutorial_in_game && classic_lives_zero(),
    "Rockford lost all lives in Tutorial Lesson {0} | ⏰{1} | 💯{2} | 💎{3}",
    rich_presence_value("ClassicTutorialLesson", classic_tutorial_lesson() + 1),
    rich_presence_value("ClassicTime", classic_time()),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels())
)

rich_presence_conditional_display(
    screen() == classic_tutorial_in_game && classic_time() == 0,
    "Rockford is learning Tutorial Lesson {0} | 💯{1} | 💎{2} | 🚶{3}",
    rich_presence_value("ClassicTutorialLesson", classic_tutorial_lesson() + 1),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels()),
    rich_presence_value("ClassicLives", classic_lives())
)

rich_presence_conditional_display(
    screen() == classic_tutorial_in_game,
    "Rockford is learning Tutorial Lesson {0} | ⏰{1} | 💯{2} | 💎{3} | 🚶{4}",
    rich_presence_value("ClassicTutorialLesson", classic_tutorial_lesson() + 1),
    rich_presence_value("ClassicTime", classic_time()),
    rich_presence_value("ClassicScore", classic_score()),
    rich_presence_value("ClassicJewels", classic_jewels()),
    rich_presence_value("ClassicLives", classic_lives())
)

rich_presence_conditional_display(
    screen() == classic_tutorial_text,
    "Rockford is learning Tutorial Lesson {0}",
    rich_presence_value("ClassicTutorialLesson", classic_tutorial_lesson() + 1)
)

rich_presence_conditional_display(
    screen() == ex_game_menu,
    "Viewing the EX Game Menu"
)

rich_presence_conditional_display(
    screen() == story_mode_world_select,
    "Viewing the World Select Menu in Story Mode"
)

rich_presence_conditional_display(
    screen() == story_mode_stage_select,
    "Viewing the Stage Select Menu in {0}",
    rich_presence_lookup("StoryWorld", story_mode_world_alt(), world_dictionary)
)

rich_presence_conditional_display(
    screen() == ex_tutorial_menu,
    "Viewing the EX Game Tutorial Menu"
)

rich_presence_conditional_display(
    screen() == card_collection_menu || screen() == card_collection_view_card,
    "Viewing the Card Collection"
)

rich_presence_conditional_display(
    screen() == preview_scenes,
    "Reviewing Scenes"
)

rich_presence_conditional_display(
    screen() == classic_game_menu,
    "Viewing the Classic Game Menu"
)

rich_presence_conditional_display(
    screen() == classic_mode_title,
    "Viewing the Classic Mode Title Screen"
)

rich_presence_conditional_display(
    screen() == classic_tutorial_menu,
    "Viewing the Classic Game Tutorial Menu"
)

rich_presence_conditional_display(
    screen() == sound_settings,
    "Viewing the Sound Settings"
)

rich_presence_conditional_display(
    screen() == options || screen() == data_delete || screen() == language_select,
    "Viewing the Options"
)

rich_presence_display(
    "Playing Boulder Dash EX"
)

// ---------------------
// Classic Mode Tutorial
// ---------------------

// These have been moved into a subset

// function achievement_classic_tutorial_trigger() {
//     trigger = always_true()
//     for i in range(1, 4) {
//         trigger = trigger &&
//                   once(screen() == classic_tutorial_in_game &&
//                        classic_tutorial_lesson() == i - 1 && prev(classic_cave_cleared()) != cave_cleared && classic_cave_cleared() == cave_cleared)
//     }
    
//     return trigger
// }

// achievement(
//     title = "Back to the Past",
//     description = "Classic Mode: In one session, complete every lesson in the tutorial.",
//     points = 2,
//     trigger = achievement_classic_tutorial_trigger()
// )

// ---------------------
// Classic Mode Progress
// ---------------------

// function achievement_classic_progress(title, points, level, caves) {
//     trigger = always_true()
//     for i in caves {
//         trigger = trigger &&
//                   once(screen() == classic_mode_in_game && classic_mode_level() == level - 1 && 
//                        prev(screen()) == classic_mode_in_game && prev(classic_mode_cave()) == i && classic_mode_cave() == i + 1)
//     }
    
//     achievement(
//         title = title,
//         description = "Classic Mode: In one session, clear Caves " + cave_dictionary[caves[0]] + ", " + cave_dictionary[caves[1]] + ", " + cave_dictionary[caves[2]] + ", and " + cave_dictionary[caves[3]] + " on Level " + level + ".",
//         points = points,
//         trigger = trigger
//     )
// }

// achievement_classic_progress("Enter the Mines I", 5, 1, caves_a_d)
// achievement_classic_progress("Grave of the Fireflies I", 5, 1, caves_e_h)
// achievement_classic_progress("The Depths I", 5, 1, caves_i_l)
// achievement_classic_progress("Amoeba Pit I", 5, 1, caves_m_p)

// achievement_classic_progress("Enter the Mines II", 5, 2, caves_a_d)
// achievement_classic_progress("Grave of the Fireflies II", 5, 2, caves_e_h)
// achievement_classic_progress("The Depths II", 5, 2, caves_i_l)
// achievement_classic_progress("Amoeba Pit II", 5, 2, caves_m_p)

// achievement_classic_progress("Enter the Mines III", 5, 3, caves_a_d)
// achievement_classic_progress("Grave of the Fireflies III", 5, 3, caves_e_h)
// achievement_classic_progress("The Depths III", 5, 3, caves_i_l)
// achievement_classic_progress("Amoeba Pit III", 5, 3, caves_m_p)

// achievement_classic_progress("Enter the Mines IV", 5, 4, caves_a_d)
// achievement_classic_progress("Grave of the Fireflies IV", 5, 4, caves_e_h)
// achievement_classic_progress("The Depths IV", 5, 4, caves_i_l)
// achievement_classic_progress("Amoeba Pit IV", 5, 4, caves_m_p)

// achievement_classic_progress("Enter the Mines V", 10, 5, caves_a_d)
// achievement_classic_progress("Grave of the Fireflies V", 10, 5, caves_e_h)
// achievement_classic_progress("The Depths V", 10, 5, caves_i_l)
// achievement_classic_progress("Amoeba Pit V", 10, 5, caves_m_p)

// function achievement_bonus_cave_clear(title, points, cave) {
//     achievement(
//         title = title,
//         description = "Classic Mode: Clear Bonus Cave " + cave_dictionary[cave] + ".",
//         points = points,
//         trigger = screen() == classic_mode_in_game &&
//                   __ornext(classic_mode_cave() == cave || classic_mode_cave() == cave + 1) &&
//                   prev(check_bonus_cave_completion(cave)) == 0 &&
//                   check_bonus_cave_completion(cave) == 1
//     )
// }

//function description_bonus_cave_clear(cave) {
//    return "Classic Mode: Clear Bonus Cave " + cave_strings[cave] + "."
//}

// achievement_bonus_cave_clear("The Butterfly Effect", 10, cave_q)
// achievement_bonus_cave_clear("Infestation", 10, cave_r)
// achievement_bonus_cave_clear("Magic Window", 10, cave_s)

// achievement(
//     title = "Rockford Smiles Upon You",
//     description = "Classic Mode: Clear Bonus Cave T.",
//     points = 10,
//     trigger = __ornext(screen() == classic_mode_in_game || screen() == classic_mode_title) &&
//               __ornext(classic_mode_cave() == cave_t || classic_mode_cave() == classic_mode_all_clear || classic_mode_cave() == 1 - 1) &&
//               prev(check_bonus_cave_completion(cave_t)) == 0 &&
//               check_bonus_cave_completion(cave_t) == 1
// )

// 1000 is the Hi-Score the game starts with
// leaderboard(
//     title = "Classic Mode Hi-Score",
//     description = "Submitted after cave is cleared, after Game Over, or after exiting to menu with a new Hi-Score.",
//     start = __ornext(screen() == classic_mode_in_game || screen() == classic_mode_title || screen() == classic_game_menu) &&
//             classic_mode_hi_score() > 1000 &&
//             classic_mode_hi_score() > prev(classic_mode_hi_score()),
//     cancel = always_false(),
//     submit = always_true(),
//     value = measured(classic_mode_hi_score()),
//     format = "VALUE"
// )

// -------------------
// Formerly used notes
// -------------------

// $0026DC: EX Game: Frame counter [8-bit]
//          Skips 0x00, 0x10, 0x20, 0x30, etc.
//          Active in-game, stops when game paused. Also active in menus, and stops briefly in menu transitions.

// no longer used
//function ex_frame_counter() => byte(0x26dc)

// $0219DC: EX Game: Game paused [8-bit]
//          0x00 = Not paused
//          0x01 = Paused. Also when using map preview from pause menu, but not when using it directly with select button

// no longer used
//function ex_game_paused() => byte(0x219dc)

//not_paused = 0
//paused = 1

// $0217D8: Story Mode: Game state (unreliable) [8-bit]
//          0x02 = In-game & able to input. Also map preview (select button)
//          0x05 = Stage intro, outro, transition, cutscenes, card obtained, player dies
//          0x06 = Briefly before outro, or when options appear after dying
//          0x0b = Game paused (Tutorials). Doesn't change when exiting to menu
//          0x0e = Game paused (Story Mode). Doesn't change when exiting to menu
//          Works differently in Battle Mode.
//          Also too unreliable, increases when you pick up items, flickers when you take damage. Not really what I thought it was

//function story_mode_game_state() => byte(0x217d8)

//in_game_input = 2
//in_game_no_input = [5, 6] // don't know if this would work
//game_paused = 0xe

// $007CA9: Story Mode: Map preview (select button) active [8-bit]
//          0x00 = In-game & not using map preview. Also when paused, and sometimes shows in other parts of the game
//          0x04 = Map preview
//          0x06 = Map preview, zoomed out once
//          0x08 = Map preview, zoomed out twice
//          Generally unstable and shows other numbers, but 0x04 seems reliable when in-game in Story Mode or the EX Game Tutorials

// no longer used
//function story_mode_map_view() => byte(0x7ca9)

//map_view_active = 4

// $022294: Battle Mode: Player 2's health [16-bit]
//          See 0x0221ad note
// $0222A4: Battle Mode: Player 2's jewels [8-bit]
// $0222C4: Battle Mode: Player 2's item [8-bit]
//          See 0x0221dc note
// $02237C: Battle Mode: Player 3's health [16-bit]
//          See 0x0221ad note
// $02238C: Battle Mode: Player 3's jewels [8-bit]
// $0223AC: Battle Mode: Player 3's item [8-bit]
//          See 0x0221dc note
// $022464: Battle Mode: Player 4's health [16-bit]
//          See 0x0221ad note
// $022474: Battle Mode: Player 4's jewels [8-bit]
// $022494: Battle Mode: Player 4's item [8-bit]
//          See 0x0221dc note

//function battle_mode_p2_health() => word(0x22294)

// $0155A8: Classic Game: Cave cleared (unreliable) [8-bit]
//          0x00 = Playing the game. Also when paused, using map preview (select button), cave intros, player death, and in menus
//          0x01 = Enter the exit door. Also Classic Mode All Clear screen
//          Not as reliable as I thought, it stays on 0x01 as you play through tutorial lessons

//function classic_cave_cleared() => byte(0x155a8)

// $007D7E: Classic Game: Cave cleared (unreliable) [8-bit]
//          0x01 = Entered exit door
//          Not reliable for the tutorial achievement I'm trying to do

//function classic_cave_cleared() => byte(0x7d7e)

// $01BA25: Classic Game: Cave intro [8-bit]
//          0x00 = Cave loading in. But also after Game Over transition to title screen, etc.
//          Formerly used to help fine-tune rich presence

//function classic_cave_intro() => byte(0x1ba25)

//cave_intro = 0

// ------------
// Unused notes
// ------------

// $002D56: Classic Game: Game paused [8-bit]
//          0x00 = Unpaused
//          0x0c = Paused

// $007DB6: Classic Game: Game state [8-bit]
//          0x00 = Paused, map preview (select button), or cave intro, outro, transition, player death
//          0x01 = In-game & able to input, but also when exiting to menu
// $00BAB1: Story Mode: Current/Last played stage [8-bit]
//          0x00 to 0x09 = World of Forest 1 to 10
//          0x0a to 0x13 = World of Sand 1 to 10
//          0x14 to 0x1d = World of Fire 1 to 10
//          0x1e to 0x2c = World of Water 1 to 15
//          0x2d to 0x3b = World of Ice 1 to 15
//          0x3c to 0x4a = World of Evil 1 to 15
//          Affected by demos

// $00C131: Classic Game: Cave intro, outro, transition, death [8-bit]
//          0x81 = Cave intro, outro, transition; also Classic Mode All Clear
//          0x83 = In-game & able to input, but stays the same when exiting to menu
//          0x85 = Player dies
//          0x8f = Time up

// $013CDB: Battle Mode: Player 2's wins [8-bit]
// $013CDC: Battle Mode: Player 3's wins [8-bit]
// $013CDD: Battle Mode: Player 4's wins [8-bit]

// $01B9E4: Classic Game: Player x-coordinate [8-bit]
//          0x0b = Furthest left
// $01B9E5: Classic Game: Player y-coordinate [8-bit]
//          0x0b = Furthest up

// $01BA28: Classic Game: Exit door opened [8-bit]
//          0x00 = Closed
//          0x01 = Opened
//          Doesn't always work while cheating, sometimes random things happen depending on the cave. Other factors are involved in opening the door

// $01D0CF: Classic Game: Cave tile map [1178 bytes]
//          0x00 = Nothing
//          0x01 and other values = Rockford animations
//          0x19 = Dirt
//          0x1a = Wall
//          0x1b = Boundary
//          0x1c = Boulder
//          0x26 to 0x29 = Magic Wall animation
//          0x2a to 0x2d = Butterfly animation
//          0x2e to 0x31 = Firefly animation
//          0x32 to 0x35 = Amoeba animation
//          0x41 to 0x44 = Exit door animation
//          0x5e to 0x65 = Jewel animation

// $020193: Story Mode: World of Forest accessible [8-bit]
//          0x00 = Inaccessible
//          0x01 = Unlocked
//          These need to be flagged along with 0x02019b and following addresses to make levels accessible
// $020194: Story Mode: World of Sand accessible [8-bit]
//          See 0x020193 note
// $020195: Story Mode: World of Fire accessible [8-bit]
//          See 0x020193 note
// $020196: Story Mode: World of Water accessible [8-bit]
//          See 0x020193 note
// $020197: Story Mode: World of Ice accessible [8-bit]
//          See 0x020193 note
// $020198: Story Mode: World of Evil accessible [8-bit]
//          See 0x020193 note

// $02019B: Story Mode: World of Forest 1 accessible [8-bit]
//          0x00 = Inaccessible
//          0x01 = Unlocked
// $02019C: Story Mode: World of Forest 2 accessible [8-bit]
//          See 0x2019b note
// $02019D: Story Mode: World of Forest 3 accessible [8-bit]
//          See 0x2019b note
// $02019E: Story Mode: World of Forest 4 accessible [8-bit]
//          See 0x2019b note
// $02019F: Story Mode: World of Forest 5 accessible [8-bit]
//          See 0x2019b note
// $0201A0: Story Mode: World of Forest 6 accessible [8-bit]
//          See 0x2019b note
// $0201A1: Story Mode: World of Forest 7 accessible [8-bit]
//          See 0x2019b note
// $0201A2: Story Mode: World of Forest 8 accessible [8-bit]
//          See 0x2019b note
// $0201A3: Story Mode: World of Forest 9 accessible [8-bit]
//          See 0x2019b note
// $0201A4: Story Mode: World of Forest 10 accessible [8-bit]
//          See 0x2019b note
// $0201AA: Story Mode: World of Sand 1 accessible [8-bit]
//          See 0x2019b note
// $0201AB: Story Mode: World of Sand 2 accessible [8-bit]
//          See 0x2019b note
// $0201AC: Story Mode: World of Sand 3 accessible [8-bit]
//          See 0x2019b note
// $0201AD: Story Mode: World of Sand 4 accessible [8-bit]
//          See 0x2019b note
// $0201AE: Story Mode: World of Sand 5 accessible [8-bit]
//          See 0x2019b note
// $0201AF: Story Mode: World of Sand 6 accessible [8-bit]
//          See 0x2019b note
// $0201B0: Story Mode: World of Sand 7 accessible [8-bit]
//          See 0x2019b note
// $0201B1: Story Mode: World of Sand 8 accessible [8-bit]
//          See 0x2019b note
// $0201B2: Story Mode: World of Sand 9 accessible [8-bit]
//          See 0x2019b note
// $0201B3: Story Mode: World of Sand 10 accessible [8-bit]
//          See 0x2019b note
// $0201B9: Story Mode: World of Fire 1 accessible [8-bit]
//          See 0x2019b note
// $0201BA: Story Mode: World of Fire 2 accessible [8-bit]
//          See 0x2019b note
// $0201BB: Story Mode: World of Fire 3 accessible [8-bit]
//          See 0x2019b note
// $0201BC: Story Mode: World of Fire 4 accessible [8-bit]
//          See 0x2019b note
// $0201BD: Story Mode: World of Fire 5 accessible [8-bit]
//          See 0x2019b note
// $0201BE: Story Mode: World of Fire 6 accessible [8-bit]
//          See 0x2019b note
// $0201BF: Story Mode: World of Fire 7 accessible [8-bit]
//          See 0x2019b note
// $0201C0: Story Mode: World of Fire 8 accessible [8-bit]
//          See 0x2019b note
// $0201C1: Story Mode: World of Fire 9 accessible [8-bit]
//          See 0x2019b note
// $0201C2: Story Mode: World of Fire 10 accessible [8-bit]
//          See 0x2019b note
// $0201C8: Story Mode: World of Water 1 accessible [8-bit]
//          See 0x2019b note
// $0201C9: Story Mode: World of Water 2 accessible [8-bit]
//          See 0x2019b note
// $0201CA: Story Mode: World of Water 3 accessible [8-bit]
//          See 0x2019b note
// $0201CB: Story Mode: World of Water 4 accessible [8-bit]
//          See 0x2019b note
// $0201CC: Story Mode: World of Water 5 accessible [8-bit]
//          See 0x2019b note
// $0201CD: Story Mode: World of Water 6 accessible [8-bit]
//          See 0x2019b note
// $0201CE: Story Mode: World of Water 7 accessible [8-bit]
//          See 0x2019b note
// $0201CF: Story Mode: World of Water 8 accessible [8-bit]
//          See 0x2019b note
// $0201D0: Story Mode: World of Water 9 accessible [8-bit]
//          See 0x2019b note
// $0201D1: Story Mode: World of Water 10 accessible [8-bit]
//          See 0x2019b note
// $0201D2: Story Mode: World of Water 11 accessible [8-bit]
//          See 0x2019b note
// $0201D3: Story Mode: World of Water 12 accessible [8-bit]
//          See 0x2019b note
// $0201D4: Story Mode: World of Water 13 accessible [8-bit]
//          See 0x2019b note
// $0201D5: Story Mode: World of Water 14 accessible [8-bit]
//          See 0x2019b note
// $0201D6: Story Mode: World of Water 15 accessible [8-bit]
//          See 0x2019b note
// $0201D7: Story Mode: World of Ice 1 accessible [8-bit]
//          See 0x2019b note
// $0201D8: Story Mode: World of Ice 2 accessible [8-bit]
//          See 0x2019b note
// $0201D9: Story Mode: World of Ice 3 accessible [8-bit]
//          See 0x2019b note
// $0201DA: Story Mode: World of Ice 4 accessible [8-bit]
//          See 0x2019b note
// $0201DB: Story Mode: World of Ice 5 accessible [8-bit]
//          See 0x2019b note
// $0201DC: Story Mode: World of Ice 6 accessible [8-bit]
//          See 0x2019b note
// $0201DD: Story Mode: World of Ice 7 accessible [8-bit]
//          See 0x2019b note
// $0201DE: Story Mode: World of Ice 8 accessible [8-bit]
//          See 0x2019b note
// $0201DF: Story Mode: World of Ice 9 accessible [8-bit]
//          See 0x2019b note
// $0201E0: Story Mode: World of Ice 10 accessible [8-bit]
//          See 0x2019b note
// $0201E1: Story Mode: World of Ice 11 accessible [8-bit]
//          See 0x2019b note
// $0201E2: Story Mode: World of Ice 12 accessible [8-bit]
//          See 0x2019b note
// $0201E3: Story Mode: World of Ice 13 accessible [8-bit]
//          See 0x2019b note
// $0201E4: Story Mode: World of Ice 14 accessible [8-bit]
//          See 0x2019b note
// $0201E5: Story Mode: World of Ice 15 accessible [8-bit]
//          See 0x2019b note
// $0201E6: Story Mode: World of Evil 1 accessible [8-bit]
//          See 0x2019b note
// $0201E7: Story Mode: World of Evil 2 accessible [8-bit]
//          See 0x2019b note
// $0201E8: Story Mode: World of Evil 3 accessible [8-bit]
//          See 0x2019b note
// $0201E9: Story Mode: World of Evil 4 accessible [8-bit]
//          See 0x2019b note
// $0201EA: Story Mode: World of Evil 5 accessible [8-bit]
//          See 0x2019b note
// $0201EB: Story Mode: World of Evil 6 accessible [8-bit]
//          See 0x2019b note
// $0201EC: Story Mode: World of Evil 7 accessible [8-bit]
//          See 0x2019b note
// $0201ED: Story Mode: World of Evil 8 accessible [8-bit]
//          See 0x2019b note
// $0201EE: Story Mode: World of Evil 9 accessible [8-bit]
//          See 0x2019b note
// $0201EF: Story Mode: World of Evil 10 accessible [8-bit]
//          See 0x2019b note
// $0201F0: Story Mode: World of Evil 11 accessible [8-bit]
//          See 0x2019b note
// $0201F1: Story Mode: World of Evil 12 accessible [8-bit]
//          See 0x2019b note
// $0201F2: Story Mode: World of Evil 13 accessible [8-bit]
//          See 0x2019b note
// $0201F3: Story Mode: World of Evil 14 accessible [8-bit]
//          See 0x2019b note
// $0201F4: Story Mode: World of Evil 15 accessible [8-bit]
//          See 0x2019b note

// $02055B: Classic Mode: Cave A-1 accessible [8-bit]
//          0x00 = Inaccessible
//          0x01 = Unlocked
//          Note 0x0205c6 and following addresses also need to be flagged for caves to be accessible.
//          Some caves are unlocked from the start, and higher level caves unlock while playing through lower level caves, so achievements may require beating caves in one session instead of relying on these flags.
// $02055C: Classic Mode: Cave A-2 accessible [8-bit]
//          See 0x02055b note
// $02055D: Classic Mode: Cave A-3 accessible [8-bit]
//          See 0x02055b note
// $02055E: Classic Mode: Cave A-4 accessible [8-bit]
//          See 0x02055b note
// $02055F: Classic Mode: Cave A-5 accessible [8-bit]
//          See 0x02055b note
// $020560: Classic Mode: Cave B-1 accessible [8-bit]
//          See 0x02055b note
// $020561: Classic Mode: Cave B-2 accessible [8-bit]
//          See 0x02055b note
// $020562: Classic Mode: Cave B-3 accessible [8-bit]
//          See 0x02055b note
// $020563: Classic Mode: Cave B-4 accessible [8-bit]
//          See 0x02055b note
// $020564: Classic Mode: Cave B-5 accessible [8-bit]
//          See 0x02055b note
// $020565: Classic Mode: Cave C-1 accessible [8-bit]
//          See 0x02055b note
// $020566: Classic Mode: Cave C-2 accessible [8-bit]
//          See 0x02055b note
// $020567: Classic Mode: Cave C-3 accessible [8-bit]
//          See 0x02055b note
// $020568: Classic Mode: Cave C-4 accessible [8-bit]
//          See 0x02055b note
// $020569: Classic Mode: Cave C-5 accessible [8-bit]
//          See 0x02055b note
// $02056A: Classic Mode: Cave D-1 accessible [8-bit]
//          See 0x02055b note
// $02056B: Classic Mode: Cave D-2 accessible [8-bit]
//          See 0x02055b note
// $02056C: Classic Mode: Cave D-3 accessible [8-bit]
//          See 0x02055b note
// $02056D: Classic Mode: Cave D-4 accessible [8-bit]
//          See 0x02055b note
// $02056E: Classic Mode: Cave D-5 accessible [8-bit]
//          See 0x02055b note
// $02056F: Classic Mode: Cave E-1 accessible [8-bit]
//          See 0x02055b note
// $020570: Classic Mode: Cave E-2 accessible [8-bit]
//          See 0x02055b note
// $020571: Classic Mode: Cave E-3 accessible [8-bit]
//          See 0x02055b note
// $020572: Classic Mode: Cave E-4 accessible [8-bit]
//          See 0x02055b note
// $020573: Classic Mode: Cave E-5 accessible [8-bit]
//          See 0x02055b note
// $020574: Classic Mode: Cave F-1 accessible [8-bit]
//          See 0x02055b note
// $020575: Classic Mode: Cave F-2 accessible [8-bit]
//          See 0x02055b note
// $020576: Classic Mode: Cave F-3 accessible [8-bit]
//          See 0x02055b note
// $020577: Classic Mode: Cave F-4 accessible [8-bit]
//          See 0x02055b note
// $020578: Classic Mode: Cave F-5 accessible [8-bit]
//          See 0x02055b note
// $020579: Classic Mode: Cave G-1 accessible [8-bit]
//          See 0x02055b note
// $02057A: Classic Mode: Cave G-2 accessible [8-bit]
//          See 0x02055b note
// $02057B: Classic Mode: Cave G-3 accessible [8-bit]
//          See 0x02055b note
// $02057C: Classic Mode: Cave G-4 accessible [8-bit]
//          See 0x02055b note
// $02057D: Classic Mode: Cave G-5 accessible [8-bit]
//          See 0x02055b note
// $02057E: Classic Mode: Cave H-1 accessible [8-bit]
//          See 0x02055b note
// $02057F: Classic Mode: Cave H-2 accessible [8-bit]
//          See 0x02055b note
// $020580: Classic Mode: Cave H-3 accessible [8-bit]
//          See 0x02055b note
// $020581: Classic Mode: Cave H-4 accessible [8-bit]
//          See 0x02055b note
// $020582: Classic Mode: Cave H-5 accessible [8-bit]
//          See 0x02055b note
// $020583: Classic Mode: Cave I-1 accessible [8-bit]
//          See 0x02055b note
// $020584: Classic Mode: Cave I-2 accessible [8-bit]
//          See 0x02055b note
// $020585: Classic Mode: Cave I-3 accessible [8-bit]
//          See 0x02055b note
// $020586: Classic Mode: Cave I-4 accessible [8-bit]
//          See 0x02055b note
// $020587: Classic Mode: Cave I-5 accessible [8-bit]
//          See 0x02055b note
// $020588: Classic Mode: Cave J-1 accessible [8-bit]
//          See 0x02055b note
// $020589: Classic Mode: Cave J-2 accessible [8-bit]
//          See 0x02055b note
// $02058A: Classic Mode: Cave J-3 accessible [8-bit]
//          See 0x02055b note
// $02058B: Classic Mode: Cave J-4 accessible [8-bit]
//          See 0x02055b note
// $02058C: Classic Mode: Cave J-5 accessible [8-bit]
//          See 0x02055b note
// $02058D: Classic Mode: Cave K-1 accessible [8-bit]
//          See 0x02055b note
// $02058E: Classic Mode: Cave K-2 accessible [8-bit]
//          See 0x02055b note
// $02058F: Classic Mode: Cave K-3 accessible [8-bit]
//          See 0x02055b note
// $020590: Classic Mode: Cave K-4 accessible [8-bit]
//          See 0x02055b note
// $020591: Classic Mode: Cave K-5 accessible [8-bit]
//          See 0x02055b note
// $020592: Classic Mode: Cave L-1 accessible [8-bit]
//          See 0x02055b note
// $020593: Classic Mode: Cave L-2 accessible [8-bit]
//          See 0x02055b note
// $020594: Classic Mode: Cave L-3 accessible [8-bit]
//          See 0x02055b note
// $020595: Classic Mode: Cave L-4 accessible [8-bit]
//          See 0x02055b note
// $020596: Classic Mode: Cave L-5 accessible [8-bit]
//          See 0x02055b note
// $020597: Classic Mode: Cave M-1 accessible [8-bit]
//          See 0x02055b note
// $020598: Classic Mode: Cave M-2 accessible [8-bit]
//          See 0x02055b note
// $020599: Classic Mode: Cave M-3 accessible [8-bit]
//          See 0x02055b note
// $02059A: Classic Mode: Cave M-4 accessible [8-bit]
//          See 0x02055b note
// $02059B: Classic Mode: Cave M-5 accessible [8-bit]
//          See 0x02055b note
// $02059C: Classic Mode: Cave N-1 accessible [8-bit]
//          See 0x02055b note
// $02059D: Classic Mode: Cave N-2 accessible [8-bit]
//          See 0x02055b note
// $02059E: Classic Mode: Cave N-3 accessible [8-bit]
//          See 0x02055b note
// $02059F: Classic Mode: Cave N-4 accessible [8-bit]
//          See 0x02055b note
// $0205A0: Classic Mode: Cave N-5 accessible [8-bit]
//          See 0x02055b note
// $0205A1: Classic Mode: Cave O-1 accessible [8-bit]
//          See 0x02055b note
// $0205A2: Classic Mode: Cave O-2 accessible [8-bit]
//          See 0x02055b note
// $0205A3: Classic Mode: Cave O-3 accessible [8-bit]
//          See 0x02055b note
// $0205A4: Classic Mode: Cave O-4 accessible [8-bit]
//          See 0x02055b note
// $0205A5: Classic Mode: Cave O-5 accessible [8-bit]
//          See 0x02055b note
// $0205A6: Classic Mode: Cave P-1 accessible [8-bit]
//          See 0x02055b note
// $0205A7: Classic Mode: Cave P-2 accessible [8-bit]
//          See 0x02055b note
// $0205A8: Classic Mode: Cave P-3 accessible [8-bit]
//          See 0x02055b note
// $0205A9: Classic Mode: Cave P-4 accessible [8-bit]
//          See 0x02055b note
// $0205AA: Classic Mode: Cave P-5 accessible [8-bit]
//          See 0x02055b note
// $0205AB: Classic Mode: Bonus Cave Q (Level 1) cleared [8-bit]
//          0x00 = Not cleared
//          0x01 = Cleared
//          All bonus caves seem to be the same regardless of level, even though these different flags are recorded
// $0205AC: Classic Mode: Bonus Cave Q (Level 2) cleared [8-bit]
//          See 0x0205ab note
// $0205AD: Classic Mode: Bonus Cave Q (Level 3) cleared [8-bit]
//          See 0x0205ab note
// $0205AE: Classic Mode: Bonus Cave Q (Level 4) cleared [8-bit]
//          See 0x0205ab note
// $0205AF: Classic Mode: Bonus Cave Q (Level 5) cleared [8-bit]
//          See 0x0205ab note
// $0205B0: Classic Mode: Bonus Cave R (Level 1) cleared [8-bit]
//          See 0x0205ab note
// $0205B1: Classic Mode: Bonus Cave R (Level 2) cleared [8-bit]
//          See 0x0205ab note
// $0205B2: Classic Mode: Bonus Cave R (Level 3) cleared [8-bit]
//          See 0x0205ab note
// $0205B3: Classic Mode: Bonus Cave R (Level 4) cleared [8-bit]
//          See 0x0205ab note
// $0205B4: Classic Mode: Bonus Cave R (Level 5) cleared [8-bit]
//          See 0x0205ab note
// $0205B5: Classic Mode: Bonus Cave S (Level 1) cleared [8-bit]
//          See 0x0205ab note
// $0205B6: Classic Mode: Bonus Cave S (Level 2) cleared [8-bit]
//          See 0x0205ab note
// $0205B7: Classic Mode: Bonus Cave S (Level 3) cleared [8-bit]
//          See 0x0205ab note
// $0205B8: Classic Mode: Bonus Cave S (Level 4) cleared [8-bit]
//          See 0x0205ab note
// $0205B9: Classic Mode: Bonus Cave S (Level 5) cleared [8-bit]
//          See 0x0205ab note
// $0205BA: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 1) [8-bit]
//          See 0x0205ab note
//          Flag is set after pressing start on the All Clear screen, entering the next level of Cave A
// $0205BB: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 2) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205BC: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 3) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205BD: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 4) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205BE: Classic Mode: Bonus Cave T / Classic Mode All Clear (Level 5) [8-bit]
//          See 0x0205ab and 0x0205ba notes
// $0205C6: Classic Mode: Cave A accessible [8-bit]
//          0x00 = Inaccessible
//          0x01 = Unlocked
// $0205C7: Classic Mode: Cave B accessible [8-bit]
//          See 0x0205c6 note
// $0205C8: Classic Mode: Cave C accessible [8-bit]
//          See 0x0205c6 note
// $0205C9: Classic Mode: Cave D accessible [8-bit]
//          See 0x0205c6 note
// $0205CA: Classic Mode: Cave E accessible [8-bit]
//          See 0x0205c6 note
// $0205CB: Classic Mode: Cave F accessible [8-bit]
//          See 0x0205c6 note
// $0205CC: Classic Mode: Cave G accessible [8-bit]
//          See 0x0205c6 note
// $0205CD: Classic Mode: Cave H accessible [8-bit]
//          See 0x0205c6 note
// $0205CE: Classic Mode: Cave I accessible [8-bit]
//          See 0x0205c6 note
// $0205CF: Classic Mode: Cave J accessible [8-bit]
//          See 0x0205c6 note
// $0205D0: Classic Mode: Cave K accessible [8-bit]
//          See 0x0205c6 note
// $0205D1: Classic Mode: Cave L accessible [8-bit]
//          See 0x0205c6 note
// $0205D2: Classic Mode: Cave M accessible [8-bit]
//          See 0x0205c6 note
// $0205D3: Classic Mode: Cave N accessible [8-bit]
//          See 0x0205c6 note
// $0205D4: Classic Mode: Cave O accessible [8-bit]
//          See 0x0205c6 note
// $0205D5: Classic Mode: Cave P accessible [8-bit]
//          See 0x0205c6 note

// $020A40: EX Game: Stage tile map [780 bytes]
//          0x00 = Nothing
//          0x01 = Pick-up tile
//          0x02 = Bombable block
//          0x03 = Indestructible block
//          0x04 = Boulder
//          0x06 = Mirror Jewel
//          0x07 = Energy Mushroom
//          0x08 = Ultra Energy Mushroom
//          0x09 = Rapid Mushroom
//          0x0a = Poison Mushroom
//          0x0b = Mysterious Mushroom
//          0x0c = Hope Crystal (rotate stage clockwise)
//          0x0d = Hope Crystal (rotate stage counterclockwise)
//          0x0f = Time Bomb
//          0x10 = Magic Glove
//          0x11 = Super Pick
//          0x12 = Random item (Battle Mode)
//          0x18 = Player character
//          0x19 = Player 2 character (Battle Mode)
//          0x1a = Player 3 character (Battle Mode)
//          0x1b = Player 4 character (Battle Mode)
//          0x1c = Shining Mirror (exit)
//          0x20 = Moving or falling object
//          0x60 = Enemy trailing hitbox
//          0x74 = Enemy type 1 (grounded horizontal movement)
//          0x75 = Enemy type 2 (vertical movement)
//          0x76 = Enemy type 3 (turns left)
//          0x77 = Enemy type 4 (turns right)

// $022188: EX Game: Player x-coordinate [8-bit]
//          0x01 = Furthest left
// $022189: EX Game: Player y-coordinate [8-bit]
//          0x01 = Furthest up
// $02218B: EX Game: Player movement speed [8-bit]
//          0x02 = Poison Mushroom active
//          0x04 = Normal speed
//          0x08 = Rapid Mushroom active
// $022194: EX Game: Player action [8-bit]
//          0x00 = Idle
//          0x01 = Move right
//          0x02 = Move left
//          0x03 = Move up
//          0x04 = Move down
//          0x05 = Push boulder right
//          0x06 = Push boulder left
//          0x07 = Kick right
//          0x08 = Kick left
//          0x09 = Unable to act (while using bomb or glove, or after stage rotation, failed kick, or narrowly avoiding falling boulder)

// $0221DC: EX Game: Current/Last selected item [8-bit]
//          0x00 = Nothing
//          0x0c = Hope Crystal (rotate stage clockwise)
//          0x0d = Hope Crystal (rotate stage counterclockwise)
//          0x0e = Random (Battle Mode only)
//          0x0f = Time Bomb
//          0x10 = Magic Glove
//          0x11 = Super Pick
