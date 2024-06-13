// Radirgy GeneriC | Radio Allergy
// #ID = 28263

// $000000: ASCII Game Version [6 bytes]
//          47 4c 4a 4a 4d 53 = GLJJMS (Japan)
//          47 4c 4a 45 47 47 = GLJEGG (USA Prototype)
// $1D1B63: High Scores [Prototype]
// $1D2BC7: 0x01 = Boss/miniboss timeout [Prototype]
//          Lingers at 0x01 after a timeout, but will reset to 0x00 at the beginning of the next boss/miniboss
// $1D2BCA: Boss Timer [Prototype] [16-bit BE]
//          Stage 1 Boss Timeout = 0x0e11
//          Stage 2 Boss = 0x12e0
//          Stage 4 Boss = 0x16a8
//          Doesn't apply to other bosses/minibosses
// $1D2BD2: Boss/Miniboss Health [Prototype] [16-bit BE]
//          Stage 1 Boss = 0x4268 max
//          Stage 2 Boss = 0x55f0
//          Stage 3 Miniboss = 0x4e20
//          Stage 3 Boss = 0x9470
//          Stage 4 Miniboss = 0x4e20
//          Stage 4 Boss = 0x9c40
//          Stage 5 Miniboss = 0x445c
//          Stage 5 Boss = 0x88b8
//          True Last Boss = 0x88b8
//          Modifying has no effect
// $1DB805: 0x20 = Bullet converter? [Prototype]
// $20022B: Similar to 0x0026b861 [Prototype]
//          Except modifying this has no effect
// $20022F: 0x01 = In-game [Prototype]
//          0x00 between stages
// $2003AF: Stage [Prototype] [8-bit]
//          0x02 to 0x06 = Stage 1 to 5
//          0x07 = Ending
// $2003BF: Point/Item Gain Display Enabled [Prototype] [8-bit]
//          Use Z-button
// $200BA0: Score [Prototype] [32-bit BE]
//          Works differently than Japanese version
//          During gameplay, value needs to be multiplied by 10 - but at name entry, it will be updated to match the displayed score in-game. However, the displayed score will then by multiplied by 10 after name entry - so the scores on the ranking screen are inflated with an extra 0.
// $200BB0: Battery (Lives) [Prototype] [8-bit]
// $200BB3: Score Multiplier [Prototype] [8-bit]
//          0x00 = x1
//          0x01 = x2
//          0x02 = x4
//          0x03 = x8
//          0x04 = x16
//          0x05 = x32
//          0x06 = x64
//          0x07 = x128
//          0x08 = x256
// $200BB5: Weapon Power [Prototype] [8-bit]
//          0x00 to 0x06
// $200BB7: Body [Prototype] [8-bit]
//          0x00 = Speed 3 (Default)
//          0x01 = Speed 5
//          0x02 = Speed 2
// $200BB9: Weapon [Prototype] [8-bit]
//          0x00 = Wide Shot (Default)
//          0x01 = 123 Laser
//          0x02 = Bubble Shot
// $200BBB: Mail Receiving Option [Prototype] [8-bit]
//          0x00 = Receive All (Default)
//          0x01 = Reject Receiving
// $200BBE: Items Collected [Prototype] [16-bit BE]
//          0x0100 = 100%
//          57 in Stage 1
//          96 in Stage 2
//          35 in Stage 3
//          37 in Stage 4
//          30 in Stage 5, not counting MileStone logo
// $200BC8: ASCII Score [Prototype]
// $200C40: Stage 1 - Enemies/Objects Destroyed [Prototype] [32-bit BE]
// $200C64: Stage 1 - Shoot Button Held Counter [Prototype] [32-bit BE]
// $200C68: Stage 1 - Sword Swing Counter [Prototype] [32-bit BE]
// $200C6C: Stage 1 - Shield Active Counter [Prototype] [32-bit BE]
// $200C74: Stage 2 - Enemies/Objects Destroyed [Prototype] [32-bit BE]
// $200C98: Stage 2 - Shoot Button Held Counter [Prototype] [32-bit BE]
// $200C9C: Stage 2 - Sword Swing Counter [Prototype] [32-bit BE]
// $200CA0: Stage 2 - Shield Active Counter [Prototype] [32-bit BE]
// $200D77: Game Mode [Prototype] [8-bit]
//          0x00 = Arcade Mode
//          0x01 = Score Attack Mode
//          0x02 = Full Belly Mode
// $200D78: Crush (Enemies/Objects Destroyed) [Prototype] [16-bit BE]
// $200D7D: Playtime - Hours [Prototype] [8-bit]
// $200D7E: Playtime - Minutes [Prototype] [8-bit]
// $200D7F: Playtime - Seconds [Prototype] [8-bit]
// $200D81: Item Percent [Prototype] [8-bit]
// $201084: Stage Progress [Prototype] [24-bit BE]
//          Stage 1 Boss = 0x45ed80
//          Stage 1 Boss Timeout = 0x463860
//          Stage 2 Boss = 0x460fc0
//          Stage 2 Boss Timeout = 0x465ac8
//          Stage 3 Miniboss = 0x458980
//          Stage 3 Miniboss Timeout = 0x45e078
//          Stage 3 Boss = 0x464e40
//          Stage 3 Boss Timeout = 0x468e24
//          Stage 4 Miniboss = 0x45a280
//          Stage 4 Miniboss Timeout = 0x45f740
//          Stage 4 Boss = 0x466290
//          Stage 4 Boss Timeout = 0x469e94
//          Stage 5 Miniboss = 0x451920
//          Stage 5 Miniboss Timeout = 0x459cf0
//          Stage 5 Boss = 0x462be0
//          Stage 5 Progress Stops = 0x468ca0
//          Last 2 bytes might differ slightly, just use 16-bit
// $2025FB: Invincibility Timer [Prototype] [8-bit]
//          Starts at 0xb4 after dying
// $202642: Score Multiplier Gauge [Prototype] [16-bit BE]
//          0x0034 = x2
//          0x01f6 = x4
//          0x03ea = x8
//          0x05dc = x16
//          0x07d0 = Max
//          
//          Full Belly Mode
//          0x07d6 = x32
//          0x09c8 = x64
//          0x0bbe = x128
//          0x0e00 = x256
//          0x0fa0 = Max
//          
//          Each green pill gives 0x04 normally, or 0x06 in Full Belly Mode
//          Drains by 0x02 each frame
// $202651: ABS Net Gauge [Prototype] [8-bit]
//          0x00 to 0x46
// $20265C: ASCII Item Gain Display [Prototype]
// $202667: ASCII Point Gain Display [Prototype]
// $202670: ASCII Point Multiplier Display [Prototype]
// $202680: ASCII Total Point Gain Display [Prototype]
// $202694: Last Point Gain [Prototype] [32-bit BE]
//          Multiply by 10
// $2029A8: ASCII Ranking Screen Display [Prototype]
// $21E8E3: 0x01 = Boss defeated or timeout [Prototype]
//          Opposite for minibosses defeat/timeout
//          Doesn't apply to Stage 5 boss timeout or true last boss defeat/timeout
// $21EAC5: Battery Option [Prototype] [8-bit]
//          0x00 = 3 (Default)
//          0x01 = 4
//          0x02 = 5
// $21EAC6: Extend Option [Prototype] [8-bit]
//          0x00 = Type 1 (8,000,000 and 20,000,000) (Default)
//          0x01 = Type 2 (Every 10,000,000 up to 50,000,000)
//          0x02 = Type 3 (5,000,000 and 15,000,000)
//          0x03 = Type 4 (No Extend)
// $21EAC7: Difficulty Option [Prototype] [8-bit]
//          0x00 = Easy
//          0x01 = Normal (Default)
//          0x02 = Hard
// $21F9D0: Screen Mode [Prototype] [8-bit]
//          0x00 = Horizontal (Default)
//          0x01 = Vertical
// $21F9D1: Sound Option [Prototype] [8-bit]
//          0x00 = Stereo (Default)
//          0x01 = Mono
// $21F9D2: Rumble Option [Prototype] [8-bit]
//          0x00 = Off
//          0x01 = On (Default)
// $220027: Credits [Prototype] [8-bit]
// $24FA8D: Battery Option [8-bit]
//          0x00 = 3 (Default)
//          0x01 = 4
//          0x02 = 5
// $24FA8E: Extend Option [8-bit]
//          0x00 = Type 1 (8,000,000 and 20,000,000) (Default)
//          0x01 = Type 2 (Every 10,000,000 up to 50,000,000)
//          0x02 = Type 3 (5,000,000 and 15,000,000)
//          0x03 = Type 4 (No Extend)
// $24FA8F: Difficulty Option [8-bit]
//          0x00 = Easy
//          0x01 = Normal (Default)
//          0x02 = Hard
// $250998: Screen Mode [8-bit]
//          0x00 = Yoko (Default)
//          0x01 = Tate
// $250999: Sound Option [8-bit]
//          0x00 = Stereo (Default)
//          0x01 = Mono
// $25099A: Vibration Option [8-bit]
//          0x00 = Off
//          0x01 = On (Default)
// $250FEF: Credits [8-bit]
// $26B861: 0x02 = Intro, Title screen, Demo [Prototype]
//          0x06 = Tutorial
//          0x07 = Transition from tutorial to 0x0f
//          0x09 = Main menu, Options
//          0x0b = Transition to select machine (0x0a or 0x08 may also appear)
//          0x0c = Select machine
//          0x0d = Select stage
//          0x0e = Transition from select machine or select stage to tutorial or in-game, or from stage complete or restart stage to 0x0f
//          0x0f = Transition to stage
//          0x10 = In-game
//          0x12 -> 0x16 -> 0x17 = Stage complete in Arcade Mode and Full Belly Mode (0x11 may also appear)
//          0x13 = Stage complete in Score Attack Mode, Name entry
//          0x14 = Pause
//          0x18 = Transition to continue
//          0x19 = Continue
//          0x1a = Game over name entry
//          0x1d = Game over
//          0x24 = Transition to ending
//          0x25 = Ending, Credits
//          Modifying this has an effect, unlike 0x0020022b
// $29C829: 0x02 = Intro, Title screen, Demo
//          0x06 = Tutorial
//          0x07 = Transition from tutorial to 0x0f
//          0x09 = Main menu, Options
//          0x0b = Transition to select machine (0x0a or 0x08 may also appear)
//          0x0c = Select machine
//          0x0d = Select stage
//          0x0e = Transition from select machine or select stage to tutorial or in-game, or from stage complete or restart stage to 0x0f
//          0x0f = Transition to stage
//          0x10 = In-game
//          0x12 -> 0x16 -> 0x17 = Stage complete in Arcade Mode and Manpuku Mode (0x11 may also appear)
//          0x13 = Stage complete in Score Attack Mode, Name entry
//          0x14 = Pause
//          0x18 = Transition to continue
//          0x19 = Continue
//          0x1a = Game over name entry
//          0x1d = Game over
//          0x24 = Transition to ending
//          0x25 = Ending, Credits
//          Modifying this has an effect, unlike 0x002fe41b
// $2A35DB: ASCII names of files loaded [Prototype]
// $2CFD53: High Scores
// $2D0DB7: 0x01 = Boss/miniboss timeout
//          Lingers at 0x01 after a timeout, but will reset to 0x00 at the beginning of the next boss/miniboss
// $2D0DBA: Boss Timer [16-bit BE]
//          Stage 1 Boss Timeout = 0x0e11
//          Stage 2 Boss = 0x12e0
//          Stage 4 Boss = 0x16a8
//          Doesn't apply to other bosses/minibosses
// $2D0DC2: Boss/Miniboss Health [16-bit BE]
//          Stage 1 Boss = 0x4268 max
//          Stage 2 Boss = 0x55f0
//          Stage 3 Miniboss = 0x4e20
//          Stage 3 Boss = 0x9470
//          Stage 4 Miniboss = 0x4e20
//          Stage 4 Boss = 0x9c40
//          Stage 5 Miniboss = 0x445c
//          Stage 5 Boss = 0x88b8
//          True Last Boss = 0x88b8
//          Modifying has no effect
// $2FE41B: Similar to 0x0029c829
//          Except modifying this has no effect
// $2FE41F: 0x01 = In-game
//          0x00 between stages
// $2FE597: Stage [8-bit]
//          0x02 to 0x06 = Stage 1 to 5
//          0x07 = Ending
// $2FE5A7: Point/Item Gain Display Enabled [8-bit]
//          Use Z-button
// $2FED88: Score [32-bit BE]
//          Multiply by 10
// $2FED98: Battery (Lives) [8-bit]
// $2FED9B: Score Multiplier [8-bit]
//          0x00 = x1
//          0x01 = x2
//          0x02 = x4
//          0x03 = x8
//          0x04 = x16
//          0x05 = x32
//          0x06 = x64
//          0x07 = x128
//          0x08 = x256
// $2FED9D: Weapon Power [8-bit]
//          0x00 to 0x06
// $2FED9F: Body [8-bit]
//          0x00 = Speed 3 (Default)
//          0x01 = Speed 5
//          0x02 = Speed 2
// $2FEDA1: Weapon [8-bit]
//          0x00 = Wide Shot (Default)
//          0x01 = 123 Laser
//          0x02 = Bubble Shot
// $2FEDA3: Mail Receiving Option [8-bit]
//          0x00 = Receive All (Default)
//          0x01 = Reject Receiving
// $2FEDA6: Items Collected [16-bit BE]
//          0x0100 = 100%
//          57 in Stage 1
//          96 in Stage 2
//          35 in Stage 3
//          37 in Stage 4
//          30 in Stage 5, not counting MileStone logo
// $2FEDB0: ASCII Score
// $2FEE28: Stage 1 - Enemies/Objects Destroyed [32-bit BE]
// $2FEE4C: Stage 1 - Shoot Button Held Counter [32-bit BE]
// $2FEE50: Stage 1 - Sword Swing Counter [32-bit BE]
// $2FEE54: Stage 1 - Shield Active Counter [32-bit BE]
// $2FEF5F: Game Mode [8-bit]
//          0x00 = Arcade Mode
//          0x01 = Score Attack Mode
//          0x02 = Full Belly Mode
// $2FEF60: Crush (Enemies/Objects Destroyed) [16-bit BE]
// $2FEF65: Playtime - Hours [8-bit]
// $2FEF66: Playtime - Minutes [8-bit]
// $2FEF67: Playtime - Seconds [8-bit]
// $2FEF69: Item Percent [8-bit]
// $2FF26C: Stage Progress [24-bit BE]
//          Stage 1 Boss = 0x45ed80
//          Stage 1 Boss Timeout = 0x463860
//          Stage 2 Boss = 0x460fc0
//          Stage 2 Boss Timeout = 0x465ac8
//          Stage 3 Miniboss = 0x458980
//          Stage 3 Miniboss Timeout = 0x45e078
//          Stage 3 Boss = 0x464e40
//          Stage 3 Boss Timeout = 0x468e24
//          Stage 4 Miniboss = 0x45a280
//          Stage 4 Miniboss Timeout = 0x45f740
//          Stage 4 Boss = 0x466290
//          Stage 4 Boss Timeout = 0x469e94
//          Stage 5 Miniboss = 0x451920
//          Stage 5 Miniboss Timeout = 0x459cf0
//          Stage 5 Boss = 0x462be0
//          Stage 5 Progress Stops = 0x468ca0
//          Last 2 bytes might differ slightly, just use 16-bit
// $3007E3: Invincibility Timer [8-bit]
//          Starts at 0xb4 after dying
// $30082A: Score Multiplier Gauge [16-bit BE]
//          0x0034 = x2
//          0x01f6 = x4
//          0x03ea = x8
//          0x05dc = x16
//          0x07d0 = Max
//          
//          Manpuku Mode
//          0x07d6 = x32
//          0x09c8 = x64
//          0x0bbe = x128
//          0x0e00 = x256
//          0x0fa0 = Max
//          
//          Each green pill gives 0x04 normally, or 0x06 in Manpuku Mode
//          Drains by 0x02 each frame
// $300839: ABS Net Gauge [8-bit]
//          0x00 to 0x46
// $300844: ASCII Item Gain Display
// $300850: ASCII Point Gain Display
// $300858: ASCII Point Multiplier Display
// $300864: ASCII Total Point Gain Display
// $30087C: Last Point Gain [32-bit BE]
//          Multiply by 10
// $300B90: ASCII Ranking Screen Display

game_version = byte(0x3)

game_state_us = byte(0x26b861)
game_state_jp = byte(0x29c829)

game_mode_us = byte(0x200d77)
game_mode_jp = byte(0x2fef5f)

difficulty_option_us = byte(0x21eac7)
difficulty_option_jp = byte(0x24fa8f)

battery_option_us = byte(0x21eac5)
battery_option_jp = byte(0x24fa8d)

extend_option_us = byte(0x21eac6)
extend_option_jp = byte(0x24fa8e)

body_us = byte(0x200bb7)
body_jp = byte(0x2fed9f)

weapon_us = byte(0x200bb9)
weapon_jp = byte(0x2feda1)

stage_us = byte(0x2003af)
stage_jp = byte(0x2fe597)

stage_progress_us = word_be(0x201084)
stage_progress_jp = word_be(0x2ff26c)

boss_health_us = word_be(0x1d2bd2)
boss_health_jp = word_be(0x2d0dc2)

credits_us = byte(0x220027)
credits_jp = byte(0x250fef)

battery_us = byte(0x200bb0)
battery_jp = byte(0x2fed98)

score_us = dword_be(0x200ba0) * 10
score_jp = dword_be(0x2fed88) * 10

score_multiplier_gauge_us = word_be(0x202642)
score_multiplier_gauge_jp = word_be(0x30082a)

score_multiplier_us = byte(0x200bb3)
score_multiplier_jp = byte(0x2fed9b)

weapon_power_us = byte(0x200bb5)
weapon_power_jp = byte(0x2fed9d)

items_us = word_be(0x200bbe)
items_jp = word_be(0x2feda6)

// ---
// ---
// ---

version_us = game_version == 0x45
version_jp = game_version == 0x4a

in_game_us = game_state_us == 0x10
in_game_jp = game_state_jp == 0x10

title_screen_us = game_state_us == 2
title_screen_jp = game_state_jp == 2

select_machine_us = game_state_us == 0xc
select_machine_jp = game_state_jp == 0xc

continue_us = game_state_us == 0x19
continue_jp = game_state_jp == 0x19

game_over_us = game_state_us == 0x1d
game_over_jp = game_state_jp == 0x1d

complete_stage_us =
    prev(game_state_us) == 0x10 &&
    game_state_us >= 0x11 &&
    game_state_us <= 0x13

complete_stage_jp =
    prev(game_state_jp) == 0x10 &&
    game_state_jp >= 0x11 &&
    game_state_jp <= 0x13

complete_game_us =
    game_state_us >= 0x24 &&
    prev(stage_us) == 6 &&
    stage_us == 7

complete_game_jp =
    game_state_jp >= 0x24 &&
    prev(stage_jp) == 6 &&
    stage_jp == 7

complete_stage_5_us =
    __ornext(
        stage_us == 6 ||
        stage_us == 7
    ) &&
    prev(game_state_us) < 0x13 &&
    __ornext(
        game_state_us == 0x13 ||
        game_state_us >= 0x24
    )

complete_stage_5_jp =
    __ornext(
        stage_jp == 6 ||
        stage_jp == 7
    ) &&
    prev(game_state_jp) < 0x13 &&
    __ornext(
        game_state_jp == 0x13 ||
        game_state_jp >= 0x24
    )

arcade_mode_us = game_mode_us == 0
arcade_mode_jp = game_mode_jp == 0

arcade_or_manpuku_mode_us =
    __ornext(
        game_mode_us == 0 ||
        game_mode_us == 2
    )

arcade_or_manpuku_mode_jp =
    __ornext(
        game_mode_jp == 0 ||
        game_mode_jp == 2
    )

arcade_or_score_attack_us = game_mode_us <= 1
arcade_or_score_attack_jp = game_mode_jp <= 1

score_attack_us = game_mode_us == 1
score_attack_jp = game_mode_jp == 1

manpuku_mode_us = game_mode_us == 2
manpuku_mode_jp = game_mode_jp == 2

default_options_us =
    version_us &&
    battery_option_us == 0 &&
    __ornext(
        extend_option_us == 0 ||
        extend_option_us == 3
    )

default_options_jp =
    //version_jp &&
    battery_option_jp == 0 &&
    __ornext(
        extend_option_jp == 0 ||
        extend_option_jp == 3
    )

normal_options_us =
    default_options_us &&
    difficulty_option_us >= 1

normal_options_jp =
    default_options_jp &&
    difficulty_option_jp >= 1

hard_options_us =
    default_options_us &&
    difficulty_option_us == 2

hard_options_jp =
    default_options_jp &&
    difficulty_option_jp == 2

manpuku_options_us =
    version_us &&
    battery_option_us == 0 &&
    difficulty_option_us >= 1 &&
    manpuku_mode_us

manpuku_options_jp =
    //version_jp &&
    battery_option_jp == 0 &&
    difficulty_option_jp >= 1 &&
    manpuku_mode_jp

body_speed_3_us = body_us == 0
body_speed_5_us = body_us == 1
body_speed_2_us = body_us == 2

body_speed_3_jp = body_jp == 0
body_speed_5_jp = body_jp == 1
body_speed_2_jp = body_jp == 2

wide_shot_us = weapon_us == 0
laser_us = weapon_us == 1
bubble_shot_us = weapon_us == 2

wide_shot_jp = weapon_jp == 0
laser_jp = weapon_jp == 1
bubble_shot_jp = weapon_jp == 2

start_stage_us = byte(0x201084) == 0x41
start_stage_jp = byte(0x2ff26c) == 0x41

stage_1_boss_us = stage_progress_us >= 0x45ed
stage_2_boss_us = stage_progress_us >= 0x460f
stage_3_boss_us = stage_progress_us >= 0x464e
stage_4_boss_us = stage_progress_us >= 0x4662
stage_5_boss_us = stage_progress_us >= 0x462b

stage_1_boss_jp = stage_progress_jp >= 0x45ed
stage_2_boss_jp = stage_progress_jp >= 0x460f
stage_3_boss_jp = stage_progress_jp >= 0x464e
stage_4_boss_jp = stage_progress_jp >= 0x4662
stage_5_boss_jp = stage_progress_jp >= 0x462b

stage_3_miniboss_us =
    stage_progress_us >= 0x4589 &&
    stage_progress_us <= 0x45e0

stage_4_miniboss_us =
    stage_progress_us >= 0x45a2 &&
    stage_progress_us <= 0x45f7

stage_5_miniboss_us =
    stage_progress_us >= 0x4519 &&
    stage_progress_us <= 0x459c

stage_3_miniboss_jp =
    stage_progress_jp >= 0x4589 &&
    stage_progress_jp <= 0x45e0

stage_4_miniboss_jp =
    stage_progress_jp >= 0x45a2 &&
    stage_progress_jp <= 0x45f7

stage_5_miniboss_jp =
    stage_progress_jp >= 0x4519 &&
    stage_progress_jp <= 0x459c

defeat_boss_us =
    prev(boss_health_us) > 0 &&
    boss_health_us == 0

defeat_boss_jp =
    prev(boss_health_jp) > 0 &&
    boss_health_jp == 0

use_credit_us = credits_us < prev(credits_us)

use_credit_jp = credits_jp < prev(credits_jp)

lose_battery_us = battery_us < prev(battery_us)

lose_battery_jp = battery_jp < prev(battery_jp)

max_score_multiplier_gauge_arcade_us =
    prev(score_multiplier_gauge_us) < 0x7d0 &&
    score_multiplier_gauge_us == 0x7d0

max_score_multiplier_gauge_arcade_jp =
    prev(score_multiplier_gauge_jp) < 0x7d0 &&
    score_multiplier_gauge_jp == 0x7d0

max_score_multiplier_gauge_manpuku_us =
    prev(score_multiplier_gauge_us) < 0xfa0 &&
    score_multiplier_gauge_us == 0xfa0

max_score_multiplier_gauge_manpuku_jp =
    prev(score_multiplier_gauge_jp) < 0xfa0 &&
    score_multiplier_gauge_jp == 0xfa0

max_score_multiplier_arcade_us = score_multiplier_us == 4

max_score_multiplier_arcade_jp = score_multiplier_jp == 4

max_score_multiplier_manpuku_us = score_multiplier_us == 8

max_score_multiplier_manpuku_jp = score_multiplier_jp == 8

max_weapon_power_us =
    prev(weapon_power_us) < 6 &&
    weapon_power_us == 6

max_weapon_power_jp =
    prev(weapon_power_jp) < 6 &&
    weapon_power_jp == 6

all_items_us = items_us == 0x100

all_items_jp = items_jp == 0x100

difficulty_dict = {
    0: "Easy",
    1: "Normal",
    2: "Hard"
}

weapon_dict = {
    0: "Wide Shot",
    1: "123 Laser",
    2: "Bubble Shot"
}

// ------------
// Achievements
// ------------

progress_id_array = range(407063, 407066)

for i in range(0, 3) {
    if (i == 0) {
        title_param = "Kojiro Takes Flight"
        points_param = 3
    }
    else if (i == 1) {
        title_param = "The Park"
        points_param = 3
    }
    else if (i == 2) {
        title_param = "Orbital Elevator #88"
        points_param = 5
    }
    else {
        title_param = "Highway to Hell"
        points_param = 10
    }
    achievement(
        id = progress_id_array[i],
        type = "PROGRESSION",
        title = title_param,
        description =
            format(
                "Complete Stage {0} in Arcade Mode or Manpuku Mode on any difficulty with other settings on default",
                i + 1
            ),
        points = points_param,
        trigger =
            default_options_jp &&
            arcade_or_manpuku_mode_jp &&
            prev(stage_jp) == i + 2 &&
            complete_stage_jp
    )
}

achievement(
    id = 407067,
    type = "WIN_CONDITION",
    title = "Confronting Ruki",
    description = "Complete Stage 5 in Arcade Mode or Manpuku Mode on any difficulty with other settings on default",
    points = 25,
    trigger =
        default_options_jp &&
        arcade_or_manpuku_mode_jp &&
        complete_game_jp
)

boss_id_array = range(407068, 407074)

for i in range(0, 6) {
    if (i == 0) {
        title_param = "The Station Maintenance System"
        description_param = "boss"
        points_param = 3
        stage_param = 2
        progress_param_jp = stage_1_boss_jp
    }
    else if (i == 1) {
        title_param = "The Park Management Machine"
        description_param = "boss"
        points_param = 3
        stage_param = 3
        progress_param_jp = stage_2_boss_jp
    }
    else if (i == 2) {
        title_param = "Malding"
        description_param = "miniboss"
        points_param = 5
        stage_param = 4
        progress_param_jp = stage_3_miniboss_jp
    }
    else if (i == 3) {
        title_param = "Unsafe Machinery"
        description_param = "boss"
        points_param = 5
        stage_param = 4
        progress_param_jp = stage_3_boss_jp
    }
    else if (i == 4) {
        title_param = "Terrorist Thwarted"
        description_param = "miniboss"
        points_param = 5
        stage_param = 5
        progress_param_jp = stage_4_miniboss_jp
    }
    else if (i == 5) {
        title_param = "The Toll Gate"
        description_param = "boss"
        points_param = 5
        stage_param = 5
        progress_param_jp = stage_4_boss_jp
    }
    else {
        title_param = "Crazy Clash"
        description_param = "miniboss"
        points_param = 10
        stage_param = 6
        progress_param_jp = stage_5_miniboss_jp
    }
    achievement(
        id = boss_id_array[i],
        title = title_param,
        description =
            format(
                "Defeat the {0} of Stage {1} in Arcade Mode or Manpuku Mode on Normal or Hard difficulty with other settings on default",
                description_param,
                stage_param - 1
            ),
        points = points_param,
        trigger =
            normal_options_jp &&
            in_game_jp &&
            arcade_or_manpuku_mode_jp &&
            stage_jp == stage_param &&
            progress_param_jp &&
            defeat_boss_jp
    )
}

tlb_id_array = [407075, 407076]

for i in range(0, 1) {
    if (i == 0) {
        title_param = "Mechanical Menace"
        description_param = "Normal or Hard"
        points_param = 25
        difficulty_param_jp = normal_options_jp
    }
    else {
        title_param = "Ruki's Last Stand"
        description_param = "Hard"
        points_param = 50
        difficulty_param_jp = hard_options_jp
    }
    achievement(
        id = tlb_id_array[i],
        title = title_param,
        description =
            format(
                "Defeat the true last boss in Arcade Mode or Manpuku Mode on {0} difficulty with other settings on default",
                description_param
            ),
        points = points_param,
        trigger =
            repeated(2,
                difficulty_param_jp &&
                in_game_jp &&
                !score_attack_jp &&
                stage_jp == 6 &&
                stage_5_boss_jp &&
                defeat_boss_jp &&
                never(
                    title_screen_jp
                ) &&
                never(
                    select_machine_jp
                )
            )
    )
}

machine_id_array = range(407077, 407082)

for i in range(0, 5) {
    if (i == 0) {
        title_param = "Balanced Kojiro"
        description_param = "Body Speed 3"
        machine_param_jp = body_speed_3_jp
    }
    else if (i == 1) {
        title_param = "Speedy Kojiro"
        description_param = "Body Speed 5"
        machine_param_jp = body_speed_5_jp
    }
    else if (i == 2) {
        title_param = "Steady Kojiro"
        description_param = "Body Speed 2"
        machine_param_jp = body_speed_2_jp
    }
    else if (i == 3) {
        title_param = "It's Easy Being Green"
        description_param = "the Wide Shot"
        machine_param_jp = wide_shot_jp
    }
    else if (i == 4) {
        title_param = "Major Laser"
        description_param = "the 123 Laser"
        machine_param_jp = laser_jp
    }
    else {
        title_param = "Bubble Blast"
        description_param = "the Bubble Shot"
        machine_param_jp = bubble_shot_jp
    }
    achievement(
        id = machine_id_array[i],
        title = title_param,
        description =
            format(
                "Complete Arcade Mode or Manpuku Mode using {0} on Normal or Hard difficulty with other settings on default",
                description_param
            ),
        points = 10,
        trigger =
            normal_options_jp &&
            arcade_or_manpuku_mode_jp &&
            machine_param_jp &&
            complete_game_jp
    )
}

achievement(
    id = 407083,
    title = "Breathe Easy",
    description = "Complete Arcade Mode or Manpuku Mode without using a continue on Normal or Hard difficulty with other settings on default",
    points = 100,
    trigger =
        once(
            normal_options_jp &&
            in_game_jp &&
            !score_attack_jp &&
            stage_jp == 2 &&
            start_stage_jp &&
            never(
                continue_jp
            ) &&
            never(
                title_screen_jp
            ) &&
            never(
                select_machine_jp
            )
        ) &&
        normal_options_jp &&
        arcade_or_manpuku_mode_jp &&
        trigger_when(complete_game_jp)
)

deathless_id_array = range(407084, 407087)

for i in range(0, 3) {
    if (i == 0) {
        title_param = "Immune System I"
        points_param = 10
    }
    else if (i == 1) {
        title_param = "Immune System II"
        points_param = 10
    }
    else if (i == 2) {
        title_param = "Immune System III"
        points_param = 10
    }
    else {
        title_param = "Immune System IV"
        points_param = 25
    }
    achievement(
        id = deathless_id_array[i],
        title = title_param,
        description =
            format(
                "Complete Stage {0} without losing a battery on Normal or Hard difficulty with other settings on default",
                i + 1
            ),
        points = points_param,
        trigger =
            once(
                normal_options_jp &&
                in_game_jp &&
                start_stage_jp &&
                never(
                    lose_battery_jp
                ) &&
                never(
                    title_screen_jp
                ) &&
                never(
                    select_machine_jp
                ) &&
                never(
                    prev(stage_jp) != i + 2
                )
            ) &&
            normal_options_jp &&
            trigger_when(complete_stage_jp)
    )
}

achievement(
    id = 407088,
    title = "Immune System V",
    description = "Complete Stage 5 without losing a battery on Normal or Hard difficulty with other settings on default",
    points = 25,
    trigger =
        once(
            normal_options_jp &&
            in_game_jp &&
            start_stage_jp &&
            never(
                lose_battery_jp
            ) &&
            never(
                title_screen_jp
            ) &&
            never(
                select_machine_jp
            ) &&
            never(
                stage_jp < 6
            )
        ) &&
        normal_options_jp &&
        trigger_when(complete_stage_5_jp)
)

achievement(
    id = 407089,
    title = "Killer Kojiro",
    description = "Fully power up your weapon in Arcade Mode or Manpuku Mode on Normal or Hard difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options_jp &&
        in_game_jp &&
        arcade_or_manpuku_mode_jp &&
        max_weapon_power_jp
)

achievement(
    id = 407090,
    title = "Greenpilled",
    description = "Max out your score multiplier gauge in Arcade Mode or Score Attack Mode on Normal or Hard difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options_jp &&
        in_game_jp &&
        arcade_or_score_attack_jp &&
        max_score_multiplier_gauge_arcade_jp
)

extend_id_array = [407091, 407092]

for i in range(0, 1) {
    if (i == 0) {
        title_param = "Battery Power I"
        description_param = "8,000,000"
        points_param = 5
        score_param = 8000000
    }
    else {
        title_param = "Battery Power II"
        description_param = "20,000,000"
        points_param = 10
        score_param = 20000000
    }
    achievement(
        id = extend_id_array[i],
        title = title_param,
        description =
            format(
                "Score {0} points and extend your battery gauge to {1} in Arcade Mode on Normal or Hard difficulty with other settings on default",
                description_param,
                i + 4
            ),
        points = points_param,
        trigger =
            normal_options_jp &&
            in_game_jp &&
            arcade_mode_jp &&
            score_jp >= score_param &&
            prev(battery_jp) == i + 3 &&
            battery_jp == i + 4
    )
}

items_id_array = range(407093, 407097)

for i in range(0, 4) {
    if (i == 0) {
        title_param = "Avid Collector I"
        items_param = 57
    }
    else if (i == 1) {
        title_param = "Avid Collector II"
        items_param = 96
    }
    else if (i == 2) {
        title_param = "Avid Collector III"
        items_param = 35
    }
    else if (i == 3) {
        title_param = "Avid Collector IV"
        items_param = 37
    }
    else {
        title_param = "Avid Collector V"
        items_param = 30
    }
    achievement(
        id = items_id_array[i],
        title = title_param,
        description =
            format(
                "Collect {0} items in Stage {1} on Normal or Hard difficulty with other settings on default",
                items_param,
                i + 1
            ),
        points = 5,
        trigger =
            measured(
                repeated(items_param,
                    normal_options_jp &&
                    in_game_jp &&
                    items_jp > prev(items_jp) &&
                    never(
                        title_screen_jp
                    ) &&
                    never(
                        select_machine_jp
                    ) &&
                    never(
                        stage_jp != i + 2
                    )
                )
            )
    )
}

achievement(
    id = 407098,
    title = "Collection Complete",
    description = "Collect the Milestone logo and complete Arcade Mode or Manpuku Mode with 100% items on Normal or Hard difficulty with other settings on default",
    points = 10,
    trigger =
        normal_options_jp &&
        arcade_or_manpuku_mode_jp &&
        all_items_jp &&
        complete_game_jp
)

score_attack_id_array = range(407099, 407103)

for i in range(0, 4) {
    if (i == 0) {
        title_param = "Antihistamine I"
        description_param = "3,000,000"
        points_param = 10
        score_param = 3000000
    }
    else if (i == 1) {
        title_param = "Antihistamine II"
        description_param = "5,000,000"
        points_param = 10
        score_param = 5000000
    }
    else if (i == 2) {
        title_param = "Antihistamine III"
        description_param = "8,000,000"
        points_param = 10
        score_param = 8000000
    }
    else if (i == 3) {
        title_param = "Antihistamine IV"
        description_param = "12,000,000"
        points_param = 25
        score_param = 12000000
    }
    else {
        title_param = "Antihistamine V"
        description_param = "20,000,000"
        points_param = 25
        score_param = 20000000
    }
    achievement(
        id = score_attack_id_array[i],
        title = title_param,
        description =
            format(
                "Score {0} points in Stage {1} in Score Attack Mode on Normal or Hard difficulty with other settings on default",
                description_param,
                i + 1
            ),
        points = points_param,
        trigger =
            normal_options_jp &&
            in_game_jp &&
            score_attack_jp &&
            stage_jp == i + 2 &&
            prev(score_jp) < score_param &&
            score_jp >= score_param
    )
}

arcade_multiplier_id_array = range(407104, 407107)

for i in range(0, 3) {
    if (i == 0) {
        title_param = "Pill Pusher I"
        points_param = 10
    }
    else if (i == 1) {
        title_param = "Pill Pusher II"
        points_param = 10
    }
    else if (i == 2) {
        title_param = "Pill Pusher III"
        points_param = 10
    }
    else {
        title_param = "Pill Pusher IV"
        points_param = 25
    }
    achievement(
        id = arcade_multiplier_id_array[i],
        title = title_param,
        description =
            format(
                "Complete Stage {0} in Arcade Mode or Score Attack Mode with your score multiplier at x16 on Normal or Hard difficulty with other settings on default",
                i + 1
            ),
        points = points_param,
        trigger =
            normal_options_jp &&
            arcade_or_score_attack_jp &&
            prev(stage_jp) == i + 2 &&
            max_score_multiplier_arcade_jp &&
            complete_stage_jp
    )
}

achievement(
    id = 407108,
    title = "Pill Pusher V",
    description = "Complete Stage 5 in Arcade Mode or Score Attack Mode with your score multiplier at x16 on Normal or Hard difficulty with other settings on default",
    points = 25,
    trigger =
        normal_options_jp &&
        arcade_or_score_attack_jp &&
        max_score_multiplier_arcade_jp &&
        complete_stage_5_jp
)

achievement(
    id = 407109,
    title = "Drug Addict",
    description = "Max out your score multiplier gauge in Manpuku Mode on Normal or Hard difficulty with other settings on default",
    points = 5,
    trigger =
        normal_options_jp &&
        in_game_jp &&
        manpuku_mode_jp &&
        max_score_multiplier_gauge_manpuku_jp
)

achievement(
    id = 407110,
    title = "Allergy Avenger",
    description = "Score 500,000,000 points in Manpuku Mode on Normal or Hard difficulty with other settings on default",
    points = 25,
    trigger =
        manpuku_options_jp &&
        in_game_jp &&
        prev(score_jp) < 500000000 &&
        score_jp >= 500000000
)

manpuku_multiplier_id_array = range(407111, 407114)

for i in range(0, 3) {
    if (i == 0) {
        title_param = "Full Belly Jacket I"
        points_param = 10
    }
    else if (i == 1) {
        title_param = "Full Belly Jacket II"
        points_param = 10
    }
    else if (i == 2) {
        title_param = "Full Belly Jacket III"
        points_param = 25
    }
    else {
        title_param = "Full Belly Jacket IV"
        points_param = 50
    }
    achievement(
        id = manpuku_multiplier_id_array[i],
        title = title_param,
        description =
            format(
                "Complete Stage {0} in Manpuku Mode with your score multiplier at x256 on Normal or Hard difficulty with other settings on default",
                i + 1
            ),
        points = points_param,
        trigger =
            manpuku_options_jp &&
            prev(stage_jp) == i + 2 &&
            max_score_multiplier_manpuku_jp &&
            complete_stage_jp
    )
}

achievement(
    id = 407115,
    title = "Full Belly Jacket V",
    description = "Complete Stage 5 in Manpuku Mode with your score multiplier at x256 on Normal or Hard difficulty with other settings on default",
    points = 100,
    trigger =
        manpuku_options_jp &&
        max_score_multiplier_manpuku_jp &&
        complete_stage_5_jp
)

// ------------
// Leaderboards
// ------------

leaderboard_id_array_1 = range(91894, 91911)
leaderboard_id_index_1 = 0

for m in range(0, 1) {
    if (m == 0) {
        title_param = "Arcade Mode"
        mode_param_jp = arcade_mode_jp
    }
    else {
        title_param = "Manpuku Mode"
        mode_param_jp = manpuku_mode_jp
    }
    for d in range(2, 0, -1) {
        for w in range (0, 2) {
            leaderboard(
                id = leaderboard_id_array_1[leaderboard_id_index_1],
                title =
                    format(
                        "{0} High Score: {1}, {2}",
                        title_param,
                        weapon_dict[w],
                        difficulty_dict[d]
                    ),
                description = "Submits at continue/game over or after beating the game (other settings default)",
                start =
                    default_options_jp &&
                    difficulty_option_jp == d &&
                    mode_param_jp &&
                    weapon_jp == w &&
                    score_jp > 0 &&
                    prev(game_state_jp) < 0x19 &&
                    __ornext(
                        continue_jp ||
                        game_over_jp ||
                        game_state_jp >= 0x24
                    ),
                cancel = always_false(),
                submit = always_true(),
                value = measured(score_jp),
                format = "VALUE"
            )
            leaderboard_id_index_1 = leaderboard_id_index_1 + 1
        }
    }
}

leaderboard_id_array_2 = range(91912, 91956)
leaderboard_id_index_2 = 0

for s in range(0, 4) {
    for d in range(2, 0, -1) {
        for w in range (0, 2) {
            leaderboard(
                id = leaderboard_id_array_2[leaderboard_id_index_2],
                title =
                    format(
                        "Stage {0} Score Attack: {1}, {2}",
                        s + 1,
                        weapon_dict[w],
                        difficulty_dict[d]
                    ),
                description = "Submits at game over or after beating the stage (other settings default)",
                start =
                    default_options_jp &&
                    difficulty_option_jp == d &&
                    score_attack_jp &&
                    stage_jp == s + 2 &&
                    weapon_jp == w &&
                    score_jp > 0 &&
                    prev(game_state_jp) == 0x10 &&
                    __ornext(
                        game_over_jp ||
                        game_state_jp == 0x13
                    ),
                cancel = always_false(),
                submit = always_true(),
                value = measured(score_jp),
                format = "VALUE"
            )
            leaderboard_id_index_2 = leaderboard_id_index_2 + 1
        }
    }
}

// -------------
// Rich Presence
// -------------

stage_dict = {
    2: "Stage 1",
    3: "Stage 2",
    4: "Stage 3",
    5: "Stage 4",
    6: "Stage 5",
    7: "Complete!"
}

rich_presence_conditional_display(
    arcade_mode_jp && game_state_jp >= 0x10,
    "Arcade Mode: {0} • {1} • Battery: {2} • Credits: {3} • Score: {4} • {5}",
    rich_presence_lookup("Stage", stage_jp, stage_dict),
    rich_presence_lookup("Weapon", weapon_jp, weapon_dict),
    rich_presence_value("Battery", battery_jp),
    rich_presence_value("Credits", credits_jp),
    rich_presence_value("Score", score_jp),
    rich_presence_lookup("Difficulty", difficulty_option_jp, difficulty_dict)
)

rich_presence_conditional_display(
    score_attack_jp && game_state_jp >= 0x10,
    "Score Attack Mode: {0} • {1} • Battery: {2} • Score: {3} • {4}",
    rich_presence_lookup("Stage", stage_jp, stage_dict),
    rich_presence_lookup("Weapon", weapon_jp, weapon_dict),
    rich_presence_value("Battery", battery_jp),
    rich_presence_value("Score", score_jp),
    rich_presence_lookup("Difficulty", difficulty_option_jp, difficulty_dict)
)

rich_presence_conditional_display(
    manpuku_mode_jp && game_state_jp >= 0x10,
    "Manpuku Mode: {0} • {1} • Battery: {2} • Score: {3} • {4}",
    rich_presence_lookup("Stage", stage_jp, stage_dict),
    rich_presence_lookup("Weapon", weapon_jp, weapon_dict),
    rich_presence_value("Battery", battery_jp),
    rich_presence_value("Score", score_jp),
    rich_presence_lookup("Difficulty", difficulty_option_jp, difficulty_dict)
)

rich_presence_display(
    "Preparing to fight UMBRA!"
)

// -----------------
// Prototype Support
// -----------------

// Scrapped after finally realizing the score was a bit buggy in prototype

// progress_title_array = [
//     "Stage 1",
//     "Stage 2",
//     "Stage 3",
//     "Stage 4"
// ]

// progress_points_array = [
//     3,
//     3,
//     5,
//     10
// ]

// for i in range(0, 3) {
//     achievement(
//         title = progress_title_array[i],
//         description =
//             format(
//                 "Complete Stage {0} in Arcade Mode or Manpuku Mode on any difficulty (other settings default)",
//                 i + 1
//             ),
//         points = progress_points_array[i],
//         trigger =
//             always_true() &&
//             (
//                 (
//                     default_options_us &&
//                     arcade_or_manpuku_mode_us &&
//                     stage_us == i + 2 &&
//                     complete_stage_us
//                 ) ||
//                 (
//                     default_options_jp &&
//                     arcade_or_manpuku_mode_jp &&
//                     stage_jp == i + 2 &&
//                     complete_stage_jp
//                 )
//             )
//     )
// }

// achievement(
//     title = "Stage 5",
//     description = "Complete Stage 5 in Arcade Mode or Manpuku Mode on any difficulty (other settings default)",
//     points = 25,
//     trigger =
//         always_true() &&
//         (
//             (
//                 default_options_us &&
//                 arcade_or_manpuku_mode_us &&
//                 complete_game_us
//             ) ||
//             (
//                 default_options_jp &&
//                 arcade_or_manpuku_mode_jp &&
//                 complete_game_jp
//             )
//         )
// )

// stage_1_boss_dict = {
//     "title": "Boss 1",
//     "description": "boss",
//     "points": 3,
//     "stage": 2,
//     "progress_us": stage_1_boss_us,
//     "progress_jp": stage_1_boss_jp
// }

// stage_2_boss_dict = {
//     "title": "Boss 2",
//     "description": "boss",
//     "points": 3,
//     "stage": 3,
//     "progress_us": stage_2_boss_us,
//     "progress_jp": stage_2_boss_jp
// }

// stage_3_miniboss_dict = {
//     "title": "Miniboss 3",
//     "description": "miniboss",
//     "points": 5,
//     "stage": 4,
//     "progress_us": stage_3_miniboss_us,
//     "progress_jp": stage_3_miniboss_jp
// }

// stage_3_boss_dict = {
//     "title": "Boss 3",
//     "description": "boss",
//     "points": 5,
//     "stage": 4,
//     "progress_us": stage_3_boss_us,
//     "progress_jp": stage_3_boss_jp
// }

// stage_4_miniboss_dict = {
//     "title": "Miniboss 4",
//     "description": "miniboss",
//     "points": 5,
//     "stage": 5,
//     "progress_us": stage_4_miniboss_us,
//     "progress_jp": stage_4_miniboss_jp
// }

// stage_4_boss_dict = {
//     "title": "Boss 4",
//     "description": "boss",
//     "points": 5,
//     "stage": 5,
//     "progress_us": stage_4_boss_us,
//     "progress_jp": stage_4_boss_jp
// }

// stage_5_miniboss_dict = {
//     "title": "Miniboss 5",
//     "description": "miniboss",
//     "points": 10,
//     "stage": 6,
//     "progress_us": stage_5_miniboss_us,
//     "progress_jp": stage_5_miniboss_jp
// }

// boss_dict_array = [
//     stage_1_boss_dict,
//     stage_2_boss_dict,
//     stage_3_miniboss_dict,
//     stage_3_boss_dict,
//     stage_4_miniboss_dict,
//     stage_4_boss_dict,
//     stage_5_miniboss_dict
// ]

// for i in range(0, 6) {
//     achievement(
//         title = boss_dict_array[i]["title"],
//         description =
//             format(
//                 "Defeat the {0} in Stage {1} in Arcade Mode or Manpuku Mode on normal or hard (other settings default)",
//                 boss_dict_array[i]["description"],
//                 boss_dict_array[i]["stage"] - 1
//             ),
//         points = boss_dict_array[i]["points"],
//         trigger =
//             always_true() &&
//             (
//                 (
//                     normal_options_us &&
//                     in_game_us &&
//                     arcade_or_manpuku_mode_us &&
//                     stage_us == boss_dict_array[i]["stage"] &&
//                     boss_dict_array[i]["progress_us"] &&
//                     defeat_boss_us
//                 ) ||
//                 (
//                     normal_options_jp &&
//                     in_game_jp &&
//                     arcade_or_manpuku_mode_jp &&
//                     stage_jp == boss_dict_array[i]["stage"] &&
//                     boss_dict_array[i]["progress_jp"] &&
//                     defeat_boss_jp
//                 )
//             )
//     )
// }

// for i in range(0, 1) {
//     if (i == 0) {
//         title_param = "TLB Normal"
//         description_param = "normal or hard"
//         points_param = 25
//         difficulty_param_us = normal_options_us
//         difficulty_param_jp = normal_options_jp
//     }
//     else {
//         title_param = "TLB Hard"
//         description_param = "hard"
//         points_param = 50
//         difficulty_param_us = hard_options_us
//         difficulty_param_jp = hard_options_jp
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Defeat the true last boss in Arcade Mode or Manpuku Mode on {0} (other settings default)",
//                 description_param
//             ),
//         points = points_param,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     repeated(2,
//                         difficulty_param_us &&
//                         in_game_us &&
//                         !score_attack_us &&
//                         stage_us == 6 &&
//                         stage_5_boss_us &&
//                         defeat_boss_us &&
//                         never(
//                             title_screen_us
//                         ) &&
//                         never(
//                             select_machine_us
//                         )
//                     )
//                 ) ||
//                 (
//                     repeated(2,
//                         difficulty_param_jp &&
//                         in_game_jp &&
//                         !score_attack_jp &&
//                         stage_jp == 6 &&
//                         stage_5_boss_jp &&
//                         defeat_boss_jp &&
//                         never(
//                             title_screen_jp
//                         ) &&
//                         never(
//                             select_machine_jp
//                         )
//                     )
//                 )
//             )
//     )
// }

// for i in range(0, 5) {
//     if (i == 0) {
//         title_param = "Speed 3"
//         description_param = "Body Speed 3"
//         machine_param_us = body_speed_3_us
//         machine_param_jp = body_speed_3_jp
//     }
//     else if (i == 1) {
//         title_param = "Speed 5"
//         description_param = "Body Speed 5"
//         machine_param_us = body_speed_5_us
//         machine_param_jp = body_speed_5_jp
//     }
//     else if (i == 2) {
//         title_param = "Speed 2"
//         description_param = "Body Speed 2"
//         machine_param_us = body_speed_2_us
//         machine_param_jp = body_speed_2_jp
//     }
//     else if (i == 3) {
//         title_param = "Wide Shot"
//         description_param = "the Wide Shot"
//         machine_param_us = wide_shot_us
//         machine_param_jp = wide_shot_jp
//     }
//     else if (i == 4) {
//         title_param = "123 Laser"
//         description_param = "the 123 Laser"
//         machine_param_us = laser_us
//         machine_param_jp = laser_jp
//     }
//     else {
//         title_param = "Bubble Shot"
//         description_param = "the Bubble Shot"
//         machine_param_us = bubble_shot_us
//         machine_param_jp = bubble_shot_jp
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Complete Arcade Mode or Manpuku Mode using {0} on normal or hard (other settings default)",
//                 description_param
//             ),
//         points = 10,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     normal_options_us &&
//                     arcade_or_manpuku_mode_us &&
//                     machine_param_us &&
//                     complete_game_us
//                 ) ||
//                 (
//                     normal_options_jp &&
//                     arcade_or_manpuku_mode_jp &&
//                     machine_param_jp &&
//                     complete_game_jp
//                 )
//             )
//     )
// }

// achievement(
//     title = "1CC",
//     description = "Complete Arcade Mode or Manpuku Mode without using a continue on normal or hard (other settings default)",
//     points = 100,
//     trigger =
//         always_true() &&
//         (
//             (
//                 once(
//                     normal_options_us &&
//                     in_game_us &&
//                     !score_attack_us &&
//                     stage_us == 2 &&
//                     start_stage_us &&
//                     never(
//                         use_credit_us
//                     ) &&
//                     never(
//                         title_screen_us
//                     ) &&
//                     never(
//                         select_machine_us
//                     )
//                 ) &&
//                 normal_options_us &&
//                 arcade_or_manpuku_mode_us &&
//                 complete_game_us
//             ) ||
//             (
//                 once(
//                     normal_options_jp &&
//                     in_game_jp &&
//                     !score_attack_jp &&
//                     stage_jp == 2 &&
//                     start_stage_jp &&
//                     never(
//                         use_credit_jp
//                     ) &&
//                     never(
//                         title_screen_jp
//                     ) &&
//                     never(
//                         select_machine_jp
//                     )
//                 ) &&
//                 normal_options_jp &&
//                 arcade_or_manpuku_mode_jp &&
//                 complete_game_jp
//             )
//         )
// )

// for i in range(0, 3) {
//     if (i == 0) {
//         title_param = "Deathless 1"
//         points_param = 10
//     }
//     else if (i == 1) {
//         title_param = "Deathless 2"
//         points_param = 10
//     }
//     else if (i == 2) {
//         title_param = "Deathless 3"
//         points_param = 10
//     }
//     else {
//         title_param = "Deathless 4"
//         points_param = 25
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Complete Stage {0} without losing a battery on normal or hard (other settings default)",
//                 i + 1
//             ),
//         points = points_param,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     once(
//                         normal_options_us &&
//                         in_game_us &&
//                         start_stage_us &&
//                         never(
//                             lose_battery_us
//                         ) &&
//                         never(
//                             title_screen_us
//                         ) &&
//                         never(
//                             select_machine_us
//                         ) &&
//                         never(
//                             stage_us != i + 2
//                         )
//                     ) &&
//                     normal_options_us &&
//                     stage_us == i + 2 &&
//                     complete_stage_us
//                 ) ||
//                 (
//                     once(
//                         normal_options_jp &&
//                         in_game_jp &&
//                         start_stage_jp &&
//                         never(
//                             lose_battery_jp
//                         ) &&
//                         never(
//                             title_screen_jp
//                         ) &&
//                         never(
//                             select_machine_jp
//                         ) &&
//                         never(
//                             stage_jp != i + 2
//                         )
//                     ) &&
//                     normal_options_jp &&
//                     stage_jp == i + 2 &&
//                     complete_stage_jp
//                 )
//             )
//     )
// }

// achievement(
//     title = "Deathless 5",
//     description = "Complete Stage 5 without losing a battery on normal or hard (other settings default)",
//     points = 25,
//     trigger =
//         always_true() &&
//         (
//             (
//                 once(
//                     normal_options_us &&
//                     in_game_us &&
//                     start_stage_us &&
//                     never(
//                         lose_battery_us
//                     ) &&
//                     never(
//                         title_screen_us
//                     ) &&
//                     never(
//                         select_machine_us
//                     ) &&
//                     never(
//                         stage_us < 6
//                     )
//                 ) &&
//                 normal_options_us &&
//                 complete_stage_5_us
//             ) ||
//             (
//                 once(
//                     normal_options_jp &&
//                     in_game_jp &&
//                     start_stage_jp &&
//                     never(
//                         lose_battery_jp
//                     ) &&
//                     never(
//                         title_screen_jp
//                     ) &&
//                     never(
//                         select_machine_jp
//                     ) &&
//                     never(
//                         stage_jp < 6
//                     )
//                 ) &&
//                 normal_options_jp &&
//                 complete_stage_5_jp
//             )
//         )
// )

// achievement(
//     title = "Full Power",
//     description = "Fully power up your weapon in Arcade Mode or Manpuku Mode on normal or hard (other settings default)",
//     points = 5,
//     trigger =
//         always_true() &&
//         (
//             (
//                 normal_options_us &&
//                 in_game_us &&
//                 arcade_or_manpuku_mode_us &&
//                 max_weapon_power_us
//             ) ||
//             (
//                 normal_options_jp &&
//                 in_game_jp &&
//                 arcade_or_manpuku_mode_jp &&
//                 max_weapon_power_jp
//             )
//         )
// )

// achievement(
//     title = "Max Score Multiplier Gauge",
//     description = "Max out your score multiplier gauge in Arcade Mode or Score Attack Mode on normal or hard (other settings default)",
//     points = 5,
//     trigger =
//         always_true() &&
//         (
//             (
//                 normal_options_us &&
//                 in_game_us &&
//                 arcade_or_score_attack_us &&
//                 max_score_multiplier_gauge_arcade_us
//             ) ||
//             (
//                 normal_options_jp &&
//                 in_game_jp &&
//                 arcade_or_score_attack_jp &&
//                 max_score_multiplier_gauge_arcade_jp
//             )
//         )
// )

// for i in range(0, 1) {
//     if (i == 0) {
//         title_param = "First Extend"
//         description_param = "8,000,000"
//         points_param = 5
//         score_param = 8000000
//     }
//     else {
//         title_param = "Second Extend"
//         description_param = "20,000,000"
//         points_param = 10
//         score_param = 20000000
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Score {0} points and extend your battery gauge to {1} in Arcade Mode on normal or hard (other settings default)",
//                 description_param,
//                 i + 4
//             ),
//         points = points_param,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     normal_options_us &&
//                     in_game_us &&
//                     arcade_mode_us &&
//                     score_us >= score_param &&
//                     prev(battery_us) == i + 3 &&
//                     battery_us == i + 4
//                 ) ||
//                 (
//                     normal_options_jp &&
//                     in_game_jp &&
//                     arcade_mode_jp &&
//                     score_jp >= score_param &&
//                     prev(battery_jp) == i + 3 &&
//                     battery_jp == i + 4
//                 )
//             )
//     )
// }

// for i in range(0, 4) {
//     if (i == 0) {
//         title_param = "Items 1"
//         items_param = 57
//     }
//     else if (i == 1) {
//         title_param = "Items 2"
//         items_param = 96
//     }
//     else if (i == 2) {
//         title_param = "Items 3"
//         items_param = 35
//     }
//     else if (i == 3) {
//         title_param = "Items 4"
//         items_param = 37
//     }
//     else {
//         title_param = "Items 5"
//         items_param = 30
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Collect {0} items in Stage {0} on normal or hard (other settings default)",
//                 items_param,
//                 i + 1
//             ),
//         points = 5,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     repeated(items_param,
//                         normal_options_us &&
//                         in_game_us &&
//                         items_us > prev(items_us) &&
//                         never(
//                             title_screen_us
//                         ) &&
//                         never(
//                             select_machine_us
//                         ) &&
//                         never(
//                             stage_us != i + 2
//                         )
//                     )
//                 ) ||
//                 (
//                     repeated(items_param,
//                         normal_options_jp &&
//                         in_game_jp &&
//                         items_jp > prev(items_jp) &&
//                         never(
//                             title_screen_jp
//                         ) &&
//                         never(
//                             select_machine_jp
//                         ) &&
//                         never(
//                             stage_jp != i + 2
//                         )
//                     )
//                 )
//             )
//     )
// }

// achievement(
//     title = "All Items Complete",
//     description = "Collect the MileStone logo and complete Arcade Mode or Manpuku Mode with 100% items on normal or hard (other settings default)",
//     points = 10,
//     trigger =
//         always_true() &&
//         (
//             (
//                 normal_options_us &&
//                 arcade_or_manpuku_mode_us &&
//                 all_items_us &&
//                 complete_game_us
//             ) ||
//             (
//                 normal_options_jp &&
//                 arcade_or_manpuku_mode_jp &&
//                 all_items_jp &&
//                 complete_game_jp
//             )
//         )
// )

// for i in range(0, 4) {
//     if (i == 0) {
//         title_param = "Score 1"
//         description_param = "3,000,000"
//         points_param = 10
//         score_param = 3000000
//     }
//     else if (i == 1) {
//         title_param = "Score 2"
//         description_param = "5,000,000"
//         points_param = 10
//         score_param = 5000000
//     }
//     else if (i == 2) {
//         title_param = "Score 3"
//         description_param = "8,000,000"
//         points_param = 10
//         score_param = 8000000
//     }
//     else if (i == 3) {
//         title_param = "Score 4"
//         description_param = "12,000,000"
//         points_param = 25
//         score_param = 12000000
//     }
//     else {
//         title_param = "Score 5"
//         description_param = "20,000,000"
//         points_param = 25
//         score_param = 20000000
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Score {0} points in Stage {1} in Score Attack Mode on normal or hard (other settings default)",
//                 description_param,
//                 i + 1
//             ),
//         points = points_param,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     normal_options_us &&
//                     in_game_us &&
//                     score_attack_us &&
//                     stage_us == i + 2 &&
//                     prev(score_us) < score_param &&
//                     score_us >= score_param
//                 ) ||
//                 (
//                     normal_options_jp &&
//                     in_game_jp &&
//                     score_attack_jp &&
//                     stage_jp == i + 2 &&
//                     prev(score_jp) < score_param &&
//                     score_jp >= score_param
//                 )
//             )
//     )
// }

// for i in range(0, 3) {
//     if (i == 0) {
//         title_param = "Score Multiplier 1"
//         points_param = 10
//     }
//     else if (i == 1) {
//         title_param = "Score Multiplier 2"
//         points_param = 10
//     }
//     else if (i == 2) {
//         title_param = "Score Multiplier 3"
//         points_param = 10
//     }
//     else {
//         title_param = "Score Multiplier 4"
//         points_param = 25
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Complete Stage {0} in Arcade Mode or Score Attack Mode with your score multiplier at x16 on normal or hard (other settings default)",
//                 i + 1
//             ),
//         points = points_param,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     normal_options_us &&
//                     arcade_or_score_attack_us &&
//                     max_score_multiplier_arcade_us &&
//                     complete_stage_us
//                 ) ||
//                 (
//                     normal_options_jp &&
//                     arcade_or_score_attack_jp &&
//                     max_score_multiplier_arcade_jp &&
//                     complete_stage_jp
//                 )
//             )
//     )
// }

// achievement(
//     title = "Score Multiplier 5",
//     description = "Complete Stage 5 in Arcade Mode or Score Attack Mode with your score multiplier at x16 on normal or hard (other settings default)",
//     points = 25,
//     trigger =
//         always_true() &&
//         (
//             (
//                 normal_options_us &&
//                 arcade_or_score_attack_us &&
//                 max_score_multiplier_arcade_us &&
//                 complete_stage_5_us
//             ) ||
//             (
//                 normal_options_jp &&
//                 arcade_or_score_attack_jp &&
//                 max_score_multiplier_arcade_jp &&
//                 complete_stage_5_jp
//             )
//         )
// )

// achievement(
//     title = "Max Score Multiplier Gauge Manpuku",
//     description = "Max out your score multiplier gauge in Manpuku Mode on normal or hard (other settings default)",
//     points = 5,
//     trigger =
//         always_true() &&
//         (
//             (
//                 normal_options_us &&
//                 in_game_us &&
//                 manpuku_mode_us &&
//                 max_score_multiplier_gauge_manpuku_us
//             ) ||
//             (
//                 normal_options_jp &&
//                 in_game_jp &&
//                 manpuku_mode_jp &&
//                 max_score_multiplier_gauge_manpuku_jp
//             )
//         )
// )

// achievement(
//     title = "Manpuku Score",
//     description = "Score 500,000,000 points in Manpuku Mode on normal or hard (other settings default)",
//     points = 25,
//     trigger =
//         always_true() &&
//         (
//             (
//                 manpuku_options_us &&
//                 in_game_us &&
//                 prev(score_us) < 500000000 &&
//                 score_us >= 500000000
//             ) ||
//             (
//                 manpuku_options_jp &&
//                 in_game_jp &&
//                 prev(score_jp) < 500000000 &&
//                 score_jp >= 500000000
//             )
//         )
// )

// for i in range(0, 3) {
//     if (i == 0) {
//         title_param = "Score Multiplier Manpuku 1"
//         points_param = 10
//     }
//     else if (i == 1) {
//         title_param = "Score Multiplier Manpuku 2"
//         points_param = 10
//     }
//     else if (i == 2) {
//         title_param = "Score Multiplier Manpuku 3"
//         points_param = 10
//     }
//     else {
//         title_param = "Score Multiplier Manpuku 4"
//         points_param = 25
//     }
//     achievement(
//         title = title_param,
//         description =
//             format(
//                 "Complete Stage {0} in Manpuku Mode with your score multiplier at x256 on normal or hard (other settings default)",
//                 i + 1
//             ),
//         points = points_param,
//         trigger =
//             always_true() &&
//             (
//                 (
//                     manpuku_options_us &&
//                     max_score_multiplier_manpuku_us &&
//                     complete_stage_us
//                 ) ||
//                 (
//                     manpuku_options_jp &&
//                     max_score_multiplier_manpuku_jp &&
//                     complete_stage_jp
//                 )
//             )
//     )
// }

// achievement(
//     title = "Score Multiplier Manpuku 5",
//     description = "Complete Stage 5 in Manpuku Mode with your score multiplier at x256 on normal or hard (other settings default)",
//     points = 25,
//     trigger =
//         always_true() &&
//         (
//             (
//                 manpuku_options_us &&
//                 max_score_multiplier_manpuku_us &&
//                 complete_stage_5_us
//             ) ||
//             (
//                 manpuku_options_jp &&
//                 max_score_multiplier_manpuku_jp &&
//                 complete_stage_5_jp
//             )
//         )
// )

// for m in range(0, 1) {
//     if (m == 0) {
//         title_param = "Arcade Mode"
//         mode_param_us = arcade_mode_us
//         mode_param_jp = arcade_mode_jp
//     }
//     else {
//         title_param = "Manpuku Mode"
//         mode_param_us = manpuku_mode_us
//         mode_param_jp = manpuku_mode_jp
//     }
//     for d in range(2, 0, -1) {
//         for w in range (0, 2) {
//             leaderboard(
//                 title =
//                     format(
//                         "{0} High Score: {1}, {2}",
//                         title_param,
//                         weapon_dict[w],
//                         difficulty_dict[d]
//                     ),
//                 description = "Submits at continue/game over or after beating the game (other settings default)",
//                 start =
//                     always_true() &&
//                     (
//                         (
//                             default_options_us &&
//                             difficulty_option_us == d &&
//                             mode_param_us &&
//                             weapon_us == w &&
//                             score_us > 0 &&
//                             prev(game_state_us) < 0x19 &&
//                             __ornext(
//                                 continue_us ||
//                                 game_over_us ||
//                                 game_state_us >= 0x24
//                             )
//                         ) ||
//                         (
//                             default_options_jp &&
//                             difficulty_option_jp == d &&
//                             mode_param_jp &&
//                             weapon_jp == w &&
//                             score_jp > 0 &&
//                             prev(game_state_jp) < 0x19 &&
//                             __ornext(
//                                 continue_jp ||
//                                 game_over_jp ||
//                                 game_state_jp >= 0x24
//                             )
//                         )
//                     ),
//                 cancel = always_false(),
//                 submit = always_true(),
//                 value =
//                     max_of(
//                         measured(
//                             score_us,
//                             when = version_us
//                         ),
//                         measured(
//                             score_jp,
//                             when = version_jp
//                         )
//                     ),
//                 format = "VALUE"
//             )
//         }
//     }
// }

// for s in range(0, 4) {
//     for d in range(2, 0, -1) {
//         for w in range (0, 2) {
//             leaderboard(
//                 title =
//                     format(
//                         "Stage {0} Score Attack: {1}, {2}",
//                         s + 1,
//                         weapon_dict[w],
//                         difficulty_dict[d]
//                     ),
//                 description = "Submits at game over or after beating the stage (other settings default)",
//                 start =
//                     always_true() &&
//                     (
//                         (
//                             default_options_us &&
//                             difficulty_option_us == d &&
//                             score_attack_us &&
//                             stage_us == s + 2 &&
//                             weapon_us == w &&
//                             score_us > 0 &&
//                             prev(game_state_us) == 0x10 &&
//                             __ornext(
//                                 game_over_us ||
//                                 game_state_us == 0x13
//                             )
//                         ) ||
//                         (
//                             default_options_jp &&
//                             difficulty_option_jp == d &&
//                             score_attack_jp &&
//                             stage_jp == s + 2 &&
//                             weapon_jp == w &&
//                             score_jp > 0 &&
//                             prev(game_state_jp) == 0x10 &&
//                             __ornext(
//                                 game_over_jp ||
//                                 game_state_jp == 0x13
//                             )
//                         )
//                     ),
//                 cancel = always_false(),
//                 submit = always_true(),
//                 value =
//                     max_of(
//                         measured(
//                             score_us,
//                             when = version_us
//                         ),
//                         measured(
//                             score_jp,
//                             when = version_jp
//                         )
//                     ),
//                 format = "VALUE"
//             )
//         }
//     }
// }