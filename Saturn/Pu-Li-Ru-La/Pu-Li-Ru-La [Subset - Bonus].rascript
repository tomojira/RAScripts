// Arcade Gears Vol. 1: Pu-Li-Ru-La [Subset - Bonus]
// #ID = 28437

// $198E7C: P1 Score - Tens Digit Display [Lower4]
//          Last 2 digits determine spell cast
//          00 = Glitter Magic
//          10 or 60 = Fairy
//          20 or 90 = Rapman
//          30 or 50 = Mr. Mikata
//          40 or 70 = Animal Stampede
//          80 = Tornado
// $198E7E: P1 Score - Ones Digit Display [Lower4]
// $198EA2: P2 Score - Tens Digit Display [Lower4]
// $198EA4: P2 Score - Ones Digit Display [Lower4]
// $1AB824: Starting Lives Setting [8-bit]
//          0x00 = 2 Lives
//          0x01 = 3 Lives (Default)
//          0x02 = 4 Lives
//          0x03 = 5 Lives
// $1AB825: Difficulty Setting [8-bit]
//          0x00 = Easy
//          0x01 = Normal (Default)
//          0x02 = Hard
// $1AB826: Starting Credits Setting [8-bit]
//          0x00 = 3 Credits
//          0x01 = 5 Credits (Default)
//          0x02 = 7 Credits
//          0x03 = Infinite
// $1AB827: Starting Magic Setting [8-bit]
//          0x00 = 3 Magic (Default)
//          0x01 = 4 Magic
//          0x02 = 5 Magic
//          0x03 = 6 Magic
// $1ACEBA: Counts fish defeated in Bonus Scene [8-bit]
// $1B0A70: Boss 1 Active [8-bit]
// $1B0A86: Boss 1 Health [8-bit]
// $1B0B60: Boss 2 Active [8-bit]
// $1B0B76: Boss 2 Health [8-bit]
// $1B0BC6: Boss 3 Health [8-bit]
// $1B0CA0: Boss 3 Active [8-bit]
// $1B0CB6: Boss 4 Health [8-bit]
// $1B0D70: Boss 4 Active [8-bit]
// $1B0D80: Boss 5 Active [8-bit]
// $1B0D96: Boss 5 Health [8-bit]
// $1B0DE6: Boss 6 Health [8-bit]
// $1B0E34: Boss 6 Active [8-bit]
// $1B0E40: Final Boss 1 Active [8-bit]
// $1B0E56: Final Boss 1 Health [8-bit]
// $1B1050: Final Boss 2 Active [8-bit]
// $1B1066: Final Boss 2 Health [8-bit]
// $1B20D0: Counts animals freed in current area [8-bit]
// $1B2241: Pink Elephant Freed [8-bit]
//          0x01 to 0x04
// $1B2B48: Magic Used [8-bit]
//          0x01 = Cast spell
//          0x02 = Spell active
// $1B2B49: Magic Used by Which Player [8-bit]
//          0x00 = P1
//          0x01 = P2
//          0x03 = Both (Shock Pa)
// $1B4158: Character Select Setting Enabled [8-bit]
// $1B415A: No Death Setting Enabled [8-bit]
// $1B415C: Round Select Setting [8-bit]
//          0x00 = Round 1
//          0x04 = Round 2
//          0x07 = Round 3
//          0x0a = Round 4
//          0x0c = Round 5
//          0x0f = Round 6
//          0x13 = Round 7 (Final Boss 2)
// $1B415E: Size Setting [8-bit]
//          0x00 = XL
//          0x01 = L
//          0x02 = M (Default)
//          0x03 = S
//          0x04 = XS
// $1B4160: Display Attack Setting Enabled [8-bit]
// $1B4670: P1 Character [8-bit]
//          0x00 = Zac
//          0x01 = Mel
// $1B4671: P1 Active [8-bit]
//          0x00 = Active
//          0xff = Inactive
// $1B4674: P1 Health [8-bit]
//          0x0c = Max
// $1B4676: P1 Lives [8-bit]
// $1B4678: P1 Magic [8-bit]
// $1B467E: P1 Invincibility Active [8-bit]
// $1B4684: P1 Score [32-bit BE Swizzled]
// $1B46EC: P2 Character [8-bit]
// $1B46ED: P2 Active [8-bit]
// $1B46F0: P2 Health [8-bit]
// $1B46F2: P2 Lives [8-bit]
// $1B46F4: P2 Magic [8-bit]
// $1B46FA: P2 Invincibility Active [8-bit]
// $1B4700: P2 Score [32-bit BE Swizzled]
// $1B47FE: Demo Active [8-bit]
// $1B4806: Credits [8-bit]
// $1B4D38: Counts animals freed + animals collected [16-bit]
//          Total across entire game
// $1B4E36: Progression [8-bit]
//          0x00 = Opening Scene
//          0x01 = Stage 1: Area 1
//          0x02 = Stage 1: Boss Area
//          0x03 = Scene after Boss 1
//          0x04 = World Map: Travel from Stage 1 to 2
//          0x05 = Stage 2: Area 1
//          0x06 = Stage 2: Boss Area
//          0x07 = World Map: Travel from Stage 2 to 3
//          0x08 = Stage 3
//          0x09 = Scene after Boss 3
//          0x0a = World Map: Travel from Stage 3 to 4
//          0x0b = Stage 4
//          0x0c = World Map: Travel from Stage 4 to 5
//          0x0d = Stage 5
//          0x0e = Bonus Scene
//          0x0f = World Map: Travel from Stage 5 to 6
//          0x10 = Stage 6: Area 1
//          0x11 = Stage 6: Boss Area
//          0x12 = Final Boss 1
//          0x13 = World Map: Travel from Stage 6 to 1
//          0x14 = Final Boss 2
//          0x15 = Ending/Credits
//          0x20 = Name Entry, Game Over, High Scores
// $1FFB7C: Character Select Setting Unlocked
//          Bit0, only on Options Screen
// $1FFB7E: No Death Setting Unlocked
//          Bit0, only on Options Screen
// $1FFB80: Round Select Setting Unlocked
//          Bit0, only on Options Screen
// $1FFB82: Size Setting Unlocked
//          Bit0, only on Options Screen
// $1FFB84: Infinite Credits Setting Unlocked
//          Bit0, only on Options Screen
// $1FFB86: Display Attack Setting Unlocked
//          Bit0, only on Options Screen
// $1FFBCA: 0x0b = In-game
//          0x0a = Game over, name entry
//          0x00 = Game over
//          0x07 = Options

stage = byte(0x1b4e36)
bonus_scene = stage == 0x0e
game_start = stage == 0
game_over = stage == 0x20

stage_start_array = [1, 5, 8, 0x0b, 0x0d, 0x10, 0x14]
stage_end_array = [2, 6, 8, 0x0b, 0x0d, 0x12, 0x14]

stage_1 = __ornext(stage == 1 || stage == 2)
stage_2 = __ornext(stage == 5 || stage == 6)
stage_3 = stage == 8
stage_4 = stage == 0x0b
stage_5 = stage == 0x0d
stage_6 = __ornext(stage == 0x10 || stage == 0x11 || stage == 0x12)
stage_final = stage == 0x14

stage_array = [stage_1, stage_2, stage_3, stage_4, stage_5, stage_6, stage_final]

stage_dict = {
    1: "in Round 1",
    2: "in Round 1",
    3: "in Round 1",
    4: "in Round 1",
    5: "in Round 2",
    6: "in Round 2",
    7: "in Round 2",
    8: "in Round 3",
    9: "in Round 3",
    0x0a: "in Round 3",
    0x0b: "in Round 4",
    0x0c: "in Round 4",
    0x0d: "in Round 5",
    0x0e: "in Round 5",
    0x0f: "in Round 5",
    0x10: "in Round 6",
    0x11: "in Round 6",
    0x12: "in Round 6",
    0x13: "in Round 6",
    0x14: "vs. Jack O'Colson!",
    0x15: "saved Radishland!"
}

p1_score_tens = low4(0x198e7c)
p1_score_ones = low4(0x198e7e)

p1_glitter = p1_score_tens == 0
p1_fairy = __ornext(p1_score_tens == 1 || p1_score_tens == 6)
p1_rapman = __ornext(p1_score_tens == 2 || p1_score_tens == 9)
p1_mikata = __ornext(p1_score_tens == 3 || p1_score_tens == 5)
p1_stampede = __ornext(p1_score_tens == 4 || p1_score_tens == 7)
p1_tornado = p1_score_tens == 8

p1_spell_dict = {
    "glitter": p1_glitter,
    "fairy": p1_fairy,
    "rapman": p1_rapman,
    "mikata": p1_mikata,
    "stampede": p1_stampede,
    "tornado": p1_tornado
}

p2_score_tens = low4(0x198ea2)
p2_score_ones = low4(0x198ea4)

p2_glitter = p2_score_tens == 0
p2_fairy = __ornext(p2_score_tens == 1 || p2_score_tens == 6)
p2_rapman = __ornext(p2_score_tens == 2 || p2_score_tens == 9)
p2_mikata = __ornext(p2_score_tens == 3 || p2_score_tens == 5)
p2_stampede = __ornext(p2_score_tens == 4 || p2_score_tens == 7)
p2_tornado = p2_score_tens == 8

p2_spell_dict = {
    "glitter": p2_glitter,
    "fairy": p2_fairy,
    "rapman": p2_rapman,
    "mikata": p2_mikata,
    "stampede": p2_stampede,
    "tornado": p2_tornado
}

starting_lives = byte(0x1ab824)
difficulty = byte(0x1ab825)
starting_credits = byte(0x1ab826)
starting_magic = byte(0x1ab827)
default_settings_or_lower = starting_lives <= 1 &&
                            starting_magic == 0 &&
                            starting_credits <= 1
starting_lives_default_or_lower = starting_lives <= 1
starting_magic_default = starting_magic == 0
difficulty_normal_or_higher = difficulty >= 1
difficulty_hard = difficulty == 2
starting_credits_3 = starting_credits == 0
starting_credits_5 = starting_credits == 1
starting_credits_7 = starting_credits == 2
starting_credits_infinite = starting_credits == 3

difficulty_dict = {
    0: "Easy",
    1: "Normal",
    2: "Hard"
}

starting_credits_dict = {
    0: "3",
    1: "5",
    2: "7"
}

boss_1_active = byte(0x1b0a70)
boss_1_health = byte(0x1b0a86)
defeat_boss_1 = boss_1_active == 1 && prev(boss_1_health) != 0 && prev(boss_1_health) < 0xf0 && __ornext(boss_1_health == 0 || boss_1_health >= 0xf0)

boss_2_active = byte(0x1b0b60)
boss_2_health = byte(0x1b0b76)
defeat_boss_2 = boss_2_active == 1 && prev(boss_2_health) != 0 && prev(boss_2_health) < 0xf0 && __ornext(boss_2_health == 0 || boss_2_health >= 0xf0)

boss_3_active = byte(0x1b0ca0)
boss_3_health = byte(0x1b0bc6)
defeat_boss_3 = boss_3_active == 1 && prev(boss_3_health) != 0 && prev(boss_3_health) < 0xf0 && __ornext(boss_3_health == 0 || boss_3_health >= 0xf0)

boss_4_active = byte(0x1b0d70)
boss_4_health = byte(0x1b0cb6)
defeat_boss_4 = boss_4_active == 1 && prev(boss_4_health) != 0 && prev(boss_4_health) < 0xf0 && __ornext(boss_4_health == 0 || boss_4_health >= 0xf0)

boss_5_active = byte(0x1b0d80)
boss_5_health = byte(0x1b0d96)
defeat_boss_5 = boss_5_active == 1 && prev(boss_5_health) != 0 && prev(boss_5_health) < 0xf0 && __ornext(boss_5_health == 0 || boss_5_health >= 0xf0)

boss_6_active = byte(0x1b0e34)
boss_6_health = byte(0x1b0de6)
defeat_boss_6 = boss_6_active == 1 && prev(boss_6_health) != 0 && prev(boss_6_health) < 0xf0 && __ornext(boss_6_health == 0 || boss_6_health >= 0xf0)

final_boss_1_active = byte(0x1b0e40)
final_boss_1_health = byte(0x1b0e56)
defeat_final_boss_1 = final_boss_1_active == 1 && prev(final_boss_1_health) != 0 && prev(final_boss_1_health) < 0xf0 && __ornext(final_boss_1_health == 0 || final_boss_1_health >= 0xf0)

final_boss_2_active = byte(0x1b1050)
final_boss_2_health = byte(0x1b1066)
defeat_final_boss_2 = final_boss_2_active == 1 && prev(final_boss_2_health) != 0 && prev(final_boss_2_health) < 0xf0 && __ornext(final_boss_2_health == 0 || final_boss_2_health >= 0xf0)

defeat_boss_array = [defeat_boss_1, defeat_boss_2, defeat_boss_3, defeat_boss_4, defeat_boss_5, defeat_final_boss_1, defeat_final_boss_2]

boss_active_array = [boss_1_active, boss_2_active, boss_3_active, boss_4_active, boss_5_active, final_boss_1_active, final_boss_2_active]

free_pink_elephant = prev(byte(0x1b2241)) == 3 && byte(0x1b2241) == 4

magic_used = byte(0x1b2b48)
use_magic = prev(magic_used) == 0 && magic_used == 1
magic_ends = prev(magic_used) == 2 && magic_used == 0
magic_active = magic_used == 2

player_used_magic = byte(0x1b2b49)
p1_used_magic = player_used_magic == 0
p2_used_magic = player_used_magic == 1
shock_pa = player_used_magic == 3

p1_character = byte(0x1b4670)
p1_zac = p1_character == 0
p1_mel = p1_character == 1
p1_active = byte(0x1b4671) == 0
p1_inactive = byte(0x1b4671) == 0xff
p1_health = byte(0x1b4674)
p1_lives = byte(0x1b4676)
p1_magic = byte(0x1b4678)
p1_score = (word(0x1b4684) * 0x10000) + word(0x1b4686)
p1_minor_damage = byte(0x1b46e4)

p2_character = byte(0x1b46ec)
p2_zac = p2_character == 0
p2_mel = p2_character == 1
p2_active = byte(0x1b46ed) == 0
p2_inactive = byte(0x1b46ed) == 0xff
p2_health = byte(0x1b46f0)
p2_lives = byte(0x1b46f2)
p2_magic = byte(0x1b46f4)
p2_score = (word(0x1b4700) * 0x10000) + word(0x1b4702)
p2_minor_damage = byte(0x1b4760)

both_players_active = p1_active && p2_active

character_dict = {
    0: "Zac",
    1: "Mel"
}

demo_active = byte(0x1b47fe) == 1

credits = byte(0x1b4806)

enemy_counter = byte(0x1b20d0)
enemy_animal_counter = byte(0x1b4d38)
fish_counter = byte(0x1aceba)

options_screen = byte(0x1ffbca) == 7

character_select_flag = byte(0x1ffb7c) == 1
no_death_flag = byte(0x1ffb7e) == 1
round_select_flag = byte(0x1ffb80) == 1
size_flag = byte(0x1ffb82) == 1
infinite_credits_flag = byte(0x1ffb84) == 1
display_attack_flag = byte(0x1ffb86) == 1

no_death_mode_off = byte(0x1b415a) == 0
round_select_setting_off = byte(0x1b415c) == 0
size_setting = byte(0x1b415e)
size_m = size_setting == 2
size_xl = size_setting == 0
size_xs = size_setting == 4
ura_mode = byte(0x1b4160)
ura_mode_on = ura_mode == 1
ura_mode_off = ura_mode == 0

ura_dict = {
    0: "",
    1: " • Ura Mode"
}

// ------------
// Achievements
// ------------

function achievement_stage_damageless(id, title, description, points, stage_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = !demo_active &&
                  p1_active &&
                  difficulty_hard &&
                  no_death_mode_off &&
                  ura_mode_off &&
                  stage_array[stage_param] &&
                  trigger_when(defeat_boss_array[stage_param]) &&
                  disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=stage < stage_start_array[stage_param] || stage > stage_end_array[stage_param]) &&
                  disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=stage < stage_start_array[stage_param] || stage > stage_end_array[stage_param]) &&
                  disable_when(use_magic, until=stage < stage_start_array[stage_param] || stage > stage_end_array[stage_param]) &&
                  disable_when(p2_active, until=game_start || game_over)
    )
}

achievement_stage_damageless(396310, "Not on Their Turf Either", "Complete Round 2 without being harmed and without using magic on hard (Ura mode off)", 5, 1)
achievement_stage_damageless(396311, "True Leg Legend", "Complete Round 3 without being harmed and without using magic on hard (Ura mode off)", 10, 2)
achievement_stage_damageless(396312, "Super Snail Smasher", "Complete Round 4 without being harmed and without using magic on hard (Ura mode off)", 25, 3)
achievement_stage_damageless(396313, "Eternal Life After Death", "Complete Round 5 without being harmed and without using magic on hard (Ura mode off)", 25, 4)
achievement_stage_damageless(396314, "True Puppetmaster", "Complete Round 6 without being harmed and without using magic on hard (Ura mode off)", 50, 5)
achievement_stage_damageless(396315, "Jack Attack", "Defeat the final boss without being harmed and without using magic on hard (Ura mode off)", 50, 6)

function achievement_stage_damageless_ura(id, title, description, points, character_param, stage_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = !demo_active &&
                  p1_active &&
                  p1_character == character_param &&
                  difficulty_hard &&
                  no_death_mode_off &&
                  ura_mode_on &&
                  stage_array[stage_param] &&
                  trigger_when(defeat_boss_array[stage_param]) &&
                  disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=stage < stage_start_array[stage_param] || stage > stage_end_array[stage_param]) &&
                  disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=stage < stage_start_array[stage_param] || stage > stage_end_array[stage_param]) &&
                  disable_when(use_magic, until=stage < stage_start_array[stage_param] || stage > stage_end_array[stage_param]) &&
                  disable_when(p2_active, until=game_start || game_over)
    )
}

achievement_stage_damageless_ura(396316, "Mel of the Mountains", "Complete Round 2 without being harmed and without using magic as Mel with ura mode on hard", 5, 1, 1)
achievement_stage_damageless_ura(396317, "Mel's Bizarre Adventure", "Complete Round 3 without being harmed and without using magic as Mel with ura mode on hard", 10, 1, 2)
achievement_stage_damageless_ura(396318, "Queen of the Desert", "Complete Round 4 without being harmed and without using magic as Mel with ura mode on hard", 10, 1, 3)
achievement_stage_damageless_ura(396319, "Mellow Mel", "Complete Round 5 without being harmed and without using magic as Mel with ura mode on hard", 10, 1, 4)
achievement_stage_damageless_ura(396320, "Mel's Nightmare", "Complete Round 6 without being harmed and without using magic as Mel with ura mode on hard", 25, 1, 5)
achievement_stage_damageless_ura(396321, "Mel Smacks Jack", "Defeat the final boss without being harmed and without using magic as Mel with ura mode on hard", 25, 1, 6)

achievement_stage_damageless_ura(396322, "Zac the Mountain Climber", "Complete Round 2 without being harmed and without using magic as Zac with ura mode on hard", 5, 0, 1)
achievement_stage_damageless_ura(396323, "Zac's Bizarre Adventure", "Complete Round 3 without being harmed and without using magic as Zac with ura mode on hard", 10, 0, 2)
achievement_stage_damageless_ura(396324, "King of the Desert", "Complete Round 4 without being harmed and without using magic as Zac with ura mode on hard", 10, 0, 3)
achievement_stage_damageless_ura(396325, "Zac Reborn", "Complete Round 5 without being harmed and without using magic as Zac with ura mode on hard", 10, 0, 4)
achievement_stage_damageless_ura(396326, "Zac's Nightmare", "Complete Round 6 without being harmed and without using magic as Zac with ura mode on hard", 25, 0, 5)
achievement_stage_damageless_ura(396327, "Zac & Jack", "Defeat the final boss without being harmed and without using magic as Zac with ura mode on hard", 10, 0, 6)

achievement(
    id = 396328,
    title = "Dauntless Hero",
    description = "Starting from Round 1, complete the game without being harmed on hard (Magic setting default, ura mode off)",
    points = 100,
    trigger = !demo_active &&
              p1_active &&
              difficulty_hard &&
              starting_magic_default &&
              no_death_mode_off &&
              ura_mode_off &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over) &&
              disable_when(shock_pa, until=game_start || game_over)
)

achievement(
    id = 396329,
    title = "Dauntless Mel",
    description = "Starting from Round 1, complete the game without being harmed as Mel with ura mode on hard (Magic setting default)",
    points = 100,
    trigger = !demo_active &&
              p1_active &&
              p1_mel &&
              difficulty_hard &&
              starting_magic_default &&
              no_death_mode_off &&
              ura_mode_on &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over) &&
              disable_when(shock_pa, until=game_start || game_over)
)

achievement(
    id = 396330,
    title = "Dauntless Zac",
    description = "Starting from Round 1, complete the game without being harmed as Zac with ura mode on hard (Magic setting default)",
    points = 50,
    trigger = !demo_active &&
              p1_active &&
              p1_zac &&
              difficulty_hard &&
              starting_magic_default &&
              no_death_mode_off &&
              ura_mode_on &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over) &&
              disable_when(shock_pa, until=game_start || game_over)
)

achievement(
    id = 396331,
    title = "True Dauntless Hero",
    description = "Starting from Round 1, complete the game without being harmed and without restocking magic on hard (Magic setting default, ura mode off)",
    points = 100,
    trigger = !demo_active &&
              p1_active &&
              difficulty_hard &&
              starting_magic_default &&
              no_death_mode_off &&
              ura_mode_off &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
              disable_when(p1_magic > prev(p1_magic), until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over) &&
              disable_when(shock_pa, until=game_start || game_over)
)

achievement(
    id = 396332,
    title = "True Dauntless Mel",
    description = "Starting from Round 1, complete the game without being harmed and without restocking magic as Mel with ura mode on hard (Magic setting default)",
    points = 100,
    trigger = !demo_active &&
              p1_active &&
              p1_mel &&
              difficulty_hard &&
              starting_magic_default &&
              no_death_mode_off &&
              ura_mode_on &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
              disable_when(p1_magic > prev(p1_magic), until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over) &&
              disable_when(shock_pa, until=game_start || game_over)
)

achievement(
    id = 396333,
    title = "True Dauntless Zac",
    description = "Starting from Round 1, complete the game without being harmed and without using magic as Zac with ura mode on hard",
    points = 100,
    trigger = !demo_active &&
              p1_active &&
              p1_zac &&
              difficulty_hard &&
              no_death_mode_off &&
              ura_mode_on &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
              disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
              disable_when(use_magic, until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over)
)

achievement(
    id = 396334,
    title = "Radical Radish Redeemer",
    description = "Starting from Round 1, complete the game without using a continue, without healing, and without using magic on hard (Lives setting default or lower, ura mode off)",
    points = 50,
    trigger = !demo_active &&
              p1_active &&
              difficulty_hard &&
              starting_lives_default_or_lower &&
              no_death_mode_off &&
              ura_mode_off &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(p1_health) != 0 && p1_health > prev(p1_health), until=game_start || game_over) &&
              disable_when(use_magic, until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over) &&
              ((starting_credits_3 && credits == 2) ||
               (starting_credits_5 && credits == 4) ||
               (starting_credits_7 && credits == 6) ||
               (starting_credits_infinite && disable_when(tally(1, prev(p1_lives) == 0 && p1_lives != 0 && prev(p1_health) == 0 && p1_health != 0), until=game_start || game_over)))
)

achievement(
    id = 396335,
    title = "Revolutionary Radish Redeemer",
    description = "Starting from Round 1, complete the game without dying, without healing, and without using magic on hard (Ura mode off)",
    points = 100,
    trigger = !demo_active &&
              p1_active &&
              difficulty_hard &&
              no_death_mode_off &&
              ura_mode_off &&
              round_select_setting_off &&
              trigger_when(stage == 0x14) &&
              trigger_when(defeat_final_boss_2) &&
              disable_when(prev(p1_health) != 0 && p1_health == 0, until=game_start || game_over) &&
              disable_when(prev(p1_health) != 0 && p1_health > prev(p1_health), until=game_start || game_over) &&
              disable_when(use_magic, until=game_start || game_over) &&
              disable_when(p2_active, until=game_start || game_over)
)

// ------------
// Leaderboards
// ------------

leaderboard(
    id = 88645,
    title = "High Score: Damageless",
    description = "Starting from Round 1. Submits after beating the game on hard (Magic setting default, ura mode off)",
    start = !demo_active &&
            p1_active &&
            difficulty_hard &&
            starting_magic_default &&
            no_death_mode_off &&
            ura_mode_off &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over) &&
            disable_when(shock_pa, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88646,
    title = "High Score: Ura Mode, Mel, Damageless",
    description = "Starting from Round 1. Submits after beating the game on hard (Magic setting default)",
    start = !demo_active &&
            p1_active &&
            p1_mel &&
            difficulty_hard &&
            starting_magic_default &&
            no_death_mode_off &&
            ura_mode_on &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over) &&
            disable_when(shock_pa, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88647,
    title = "High Score: Ura Mode, Zac, Damageless",
    description = "Starting from Round 1. Submits after beating the game on hard (Magic setting default)",
    start = !demo_active &&
            p1_active &&
            p1_zac &&
            difficulty_hard &&
            starting_magic_default &&
            no_death_mode_off &&
            ura_mode_on &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over) &&
            disable_when(shock_pa, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88648,
    title = "High Score: Damageless, No Magic Restock",
    description = "Starting from Round 1. Submits after beating the game on hard (Magic setting default, ura mode off)",
    start = !demo_active &&
            p1_active &&
            difficulty_hard &&
            starting_magic_default &&
            no_death_mode_off &&
            ura_mode_off &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
            disable_when(p1_magic > prev(p1_magic), until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over) &&
            disable_when(shock_pa, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88649,
    title = "High Score: Ura Mode, Mel, Damageless, No Magic Restock",
    description = "Starting from Round 1. Submits after beating the game on hard (Magic setting default)",
    start = !demo_active &&
            p1_active &&
            p1_mel &&
            difficulty_hard &&
            starting_magic_default &&
            no_death_mode_off &&
            ura_mode_on &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
            disable_when(p1_magic > prev(p1_magic), until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over) &&
            disable_when(shock_pa, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88650,
    title = "High Score: Ura Mode, Zac, Damageless, No Magic",
    description = "Starting from Round 1. Submits after beating the game on hard",
    start = !demo_active &&
            p1_active &&
            p1_zac &&
            difficulty_hard &&
            no_death_mode_off &&
            ura_mode_on &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_health < prev(p1_health), until=game_start || game_over) &&
            disable_when(prev(stage) != 0 && prev(stage) != 0x20 && p1_minor_damage > prev(p1_minor_damage), until=game_start || game_over) &&
            disable_when(use_magic, until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88651,
    title = "High Score: 1CC, No Healing, No Magic",
    description = "Starting from Round 1. Submits after beating the game on hard (Lives setting default or lower, ura mode off)",
    start = !demo_active &&
            p1_active &&
            difficulty_hard &&
            starting_lives_default_or_lower &&
            no_death_mode_off &&
            ura_mode_off &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(p1_health) != 0 && p1_health > prev(p1_health), until=game_start || game_over) &&
            disable_when(use_magic, until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over) &&
            ((starting_credits_3 && credits == 2) ||
             (starting_credits_5 && credits == 4) ||
             (starting_credits_7 && credits == 6) ||
             (starting_credits_infinite && disable_when(tally(1, prev(p1_lives) == 0 && p1_lives != 0 && prev(p1_health) == 0 && p1_health != 0), until=game_start || game_over))),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

leaderboard(
    id = 88652,
    title = "High Score: Deathless, No Healing, No Magic",
    description = "Starting from Round 1. Submits after beating the game on hard (Ura mode off)",
    start = !demo_active &&
            p1_active &&
            difficulty_hard &&
            no_death_mode_off &&
            ura_mode_off &&
            round_select_setting_off &&
            stage == 0x14 &&
            defeat_final_boss_2 &&
            disable_when(prev(p1_health) != 0 && p1_health == 0, until=game_start || game_over) &&
            disable_when(prev(p1_health) != 0 && p1_health > prev(p1_health), until=game_start || game_over) &&
            disable_when(use_magic, until=game_start || game_over) &&
            disable_when(p2_active, until=game_start || game_over),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_score),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

// Same as main set

rich_presence_conditional_display(
    p1_active && p2_inactive && stage >= 1 && stage <= 0x15,
    "{0} {1} • Lives: {2} • Credits: {3} • Score: {4} • {5}{6}",
    rich_presence_lookup("P1Character", p1_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("UraMode", ura_mode, ura_dict)
)

rich_presence_conditional_display(
    p1_inactive && p2_active && stage >= 1 && stage <= 0x15,
    "P2 {0} {1} • Lives: {2} • Credits: {3} • Score: {4} • {5}{6}",
    rich_presence_lookup("P2Character", p2_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P2Lives", p2_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("UraMode", ura_mode, ura_dict)
)

rich_presence_conditional_display(
    p1_active && p2_active && stage >= 1 && stage <= 0x15,
    "{0} & {1} {2} • P1 Lives: {3} • P2 Lives: {4} • Credits: {5} • P1 Score: {6} • P2 Score: {7} • {8}{9}",
    rich_presence_lookup("P1Character", p1_character, character_dict),
    rich_presence_lookup("P2Character", p2_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P1Lives", p1_lives),
    rich_presence_value("P2Lives", p2_lives),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("UraMode", ura_mode, ura_dict)
)

rich_presence_display(
    "Preparing to save Radishland!"
)