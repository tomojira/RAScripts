// Tenchi o Kurau II: Sekiheki no Tatakai
// #ID = 26147

// $000075: 0x0f = Game loaded
//          0x00 = First Capcom logo, Saturn bios
//          Shows nonsense in RP
// $00009F: 0x23 = Game Over
// $0020CC: 0x0d = Game loaded
//          0x00 = First Capcom logo, Saturn bios
//          Shows nonsense in RP
//          Slightly better than 0x0075
// $052D44: Players Active
//          Bit0 = P1
//          Bit1 = P2
//          0 when continuing
//          Not active during demo
// $1D0D0C: Extend Setting [8-bit]
//          0 = No Extend
//          1 = 100,000
//          2 = 300,000
//          3 = 100,000, 300,000, 500,000, 1,000,000
//          4 = Every 200,000 (Default)
// $1D0D0D: Difficulty Setting [8-bit]
//          0 = Easy
//          1 = Normal (Default)
//          2 = Hard
// $1E80BC: Stage Clear - Boss Bonus [16-bit]
//          Multiply by 100
//          Stage 1: Ri-Ten = 12,000
//          Stage 2: Kakou-Ton = 15,000
//          Stage 3: Kyo-Cho = 20,000
//          Mei-Mei, Mei-Ya, Mei-Ling = 12,000
//          Stage 4: Sou-Jin = 25,000
//          Stage 5: Jun'U-Dou = 15,000
//          Stage 6: Kakou-Ketsu, An-Mei = 15,000
//          Stage 7: Chou-Ryou = 25,000
//          Stage 8: Jo-Kou = 15,000
//          Stage 9: Ryo-Fu = 80,000
//          Sou-Sou = 90,000
//          Not reliable alone, also used when "Hurry up!" message appears on screen
// $1E814F: 0x9b = Attract Mode
// $1E8214: Credits [8-bit]
// $1E8BC8: P1 Continue Timer [16-bit]
// $1E8CB8: P2 Continue Timer [16-bit]
// $1E8EE8: P1 Score [32-bit BE Swizzled]
// $1E8EEC: P2 Score [32-bit BE Swizzled]
// $1E8EF6: P1 Lives [8-bit]
// $1E8EF9: P2 Lives [8-bit]
// $1E8F0B: Stage [8-bit]
//          0x00 = Stage 1
//          0x01 = Stage 2
//          0x02 = Bonus Game 1
//          0x03 = Stage 3
//          0x04 = Mei-Mei, Mei-Ya, Mei-Ling
//          0x05 = Stage 4: Area 1-3
//          0x0e = Stage 4: Area 4
//          0x0f = Stage 4: Boss Area
//          0x06 = Stage 5: Area 1
//          0x07 = Stage 5: Boss Area
//          0x08 = Stage 6
//          0x09 = Bonus Game 2
//          0x0a = Stage 7: Area 1
//          0x10 = Stage 7: Area 2-4
//          0x11 = Stage 7: Boss Area
//          0x0b = Stage 8: Area 1
//          0x13 = Stage 8: Area 2
//          0x14 = Stage 8: Area 3-4
//          0x15 = Stage 8: Area 5
//          0x16 = Stage 8: Boss Area
//          0x0c = Stage 9
//          0x0d = Sou-Sou
// $1E8F0E: Stage/Scene [8-bit]
//          0x02 = Opening scene, Scenes after Stage 2, Bonus Game 1, Scene after Mei-Mei et al, Scenes after Stage 6, Ending scenes
//          0x15 = Select Character, End name entry
//          0x00 = Stage 1, Last scene after Stage 6
//          0x01 = Stage 2
//          0x1a = Stage 3 opening scene
//          0x03 = Stage 3
//          0x20 = Scene before Mei-Mei et al, Pre-credits scene, Credits
//          0x04 = Mei-Mei, Mei-Ya, Mei-Ling
//          0x05 = Stage 4: Area 1-2, Boss Area
//          0x17 = Stage 4: Area 3
//          0x16 = Stage 4: Area 4
//          0x06 = Stage 5: Area 1
//          0x1a = Stage 5: Scene after area 1
//          0x07 = Stage 5: Boss Area
//          0x21 = Scene after Stage 5
//          0x08 = Stage 6, Area 1, Boss Area
//          0x22 = Stage 6: Boss scene
//          0x09 = Bonus Game 2
//          0x0a = Stage 7: Area 1-2
//          0x1b = Stage 7: Area 3-4
//          0x1c = Stage 7: Boss Area, Scene after Stage 7
//          0x0b = Stage 8 opening scene
//          0x23 = Stage 8: Area 1
//          0x1d = Stage 8: Area 2
//          0x1e = Stage 8: Area 3
//          0x26 = Stage 8: Area 4
//          0x1f = Stage 8: Area 5, Boss Area
//          0x0c = Stage 9: Area 1-2, 4
//          0x0d = Stage 9: Bridge burning scene, Scene before boss, Sou-Sou
//          0x24 = Stage 9: Area 3
//          0x25 = Stage 9: Boss Area
// $1E8F0F: 0xff = Stage cleared, interstitial scenes and Bonus Game 1
// $1E8F19: Players Active
//          Bit0 = P1
//          Bit1 = P2
//          0 when continuing
//          Active during demo
// $1E8F37: 0x00 = Kill Sou-Sou
//          0x01 = Sou-Sou escapes after time runs out
//          0xff = Let Sou-Sou escape
// $1E8F66: Stage Clear - Time Bonus [8-bit]
//          Multiply by 100
// $1E8F70: Stage Timer [16-bit]
// $1E8F9E: Boss Timer [16-bit]
// $1E8FB5: Boss Defeated [8-bit]
//          0x02 = Defeated with punch, axe, hammer, sai, horseback weapon
//          0x04 = Defeated with throw
//          0x08 = Defeated with sword
//          0x0c = Defeated with mace
// $1E8FCF: Bonus Game 2 Timer [8-bit]
// $1EDCB2: Item 6 [8-bit]
// $1EDDA2: Item 5 [8-bit]
// $1EDE92: Item 4 [8-bit]
// $1EDF82: Item 3 [8-bit]
// $1EE072: Item 2 [8-bit]
// $1EE162: Item 1 [8-bit]
//          Swords (cuts enemies in half)
//          0x44 = Seiryutou
//          0x46 = Dai Engetsutou
//          0x4c = Seikou
//          0x4e = Iten
//          0x50 = Shichisei
//          0x58 = Muramasa
//          0x5a = Masamune
//          0x5c = Murasame
//          0x5e = Kotetsu
//          0x60 = Kiku Ichimonji
//          0x62 = Hiryu
//          0x64 = Masakuni
//          0x66 = Samurai Sword
//          0x70 = Sword
//          0x72 = Kusanagi Sword
//          
//          Maces (mauls enemies to pieces)
//          0x40 = Mace
//          0x42 = Uni Tonkachi
//          0x48 = Sui
//          
//          Hammers (stuns enemies, no special kill)
//          0x3c = Hammer
//          0x3e = Iron Hammer
//          
//          Other Weapons (no special kill)
//          0x54 = Battle Axe
//          0x56 = Axe
//          0x68 = Sai
//          
//          Daggers (thrown)
//          0x6a = Aikuchi
//          0x6c = Dagger (娘刀)
//          0x6e = Knife
//          
//          0xce = Dora (summons horse)
//          
//          Food
//          0xba = Roast Pork
//          0xbc = Peking Duck
//          0xbe = Lobster
//          0xc0 = Fish
//          0xc2 = Meat Bun (plateful)
//          0xd0 = Meat Bun (one)
//          0xd2 = Chicken
//          0xd4 = Barbecue
//          
//          Loot
//          0xc4 = Treasure
//          0xc6 = Treasure (spilled sack)
//          0xc8 = Gold Coin
//          0xca = Book
//          0xcc = Scroll
// $1EE20A: P1 Character [8-bit]
//          0 = Kan-U
//          1 = Chou-Hi
//          2 = Chou-Un
//          3 = Kou-Chuu
//          4 = Gi-En
//          Changes to 0 at scene before Mei-Mei et al; briefly after Stage 6; briefly after Bonus Game 2
// $1EE214: P1 Action [16-bit]
// $1EE256: P1 Riding Horse [8-bit]
// $1EE276: P1 Health [8-bit]
// $1EE280: P1 Pointer to Wielded Weapon [16-bit]
//          +0x1e006a = Item Type
//          
//          0xe0f8 = Item 1
//          0xe008 = Item 2
//          0xdf18 = Item 3
//          0xde28 = Item 4
//          0xdd38 = Item 5
//          0xdc48 = Item 6
// $1EE2AE: P1 Invincibility Time Left [8-bit]
//          Starts with 0x3c
// $1EE2D0: P1 Stage Clear - Health Bonus [8-bit]
//          Multiply by 100
//          Perfect is 20,000
// $1EE2D2: P1 Stage Clear - Victory Bonus [8-bit]
//          Multiply by 100
//          1000 = Boss defeated normally
//          5000 = Special kill
//          10,000 = Decapitated
//          Awarded to the player who defeats the boss
// $1EE2D4: P1 Stage Clear - Activity Bonus [8-bit]
//          Always 10,000 (Multiply by 100)
//          Awarded to the player who does the most damage to the boss
// $1EE2D6: P1 Stage Clear - Bonus Total [16-bit]
//          Multiply by 100
//          Also used for Bonus Game 2 Score (2P)
// $1EE2FA: P2 Character [8-bit]
// $1EE304: P2 Action [16-bit]
// $1EE346: P2 Riding Horse [8-bit]
// $1EE366: P2 Health [8-bit]
// $1EE370: P2 Pointer to Wielded Weapon [16-bit]
// $1EE39E: P2 Invincibility Time Left [8-bit]
// $1EE3C0: P2 Stage Clear - Health Bonus [8-bit]
// $1EE3C2: P2 Stage Clear - Victory Bonus [8-bit]
// $1EE3C4: P2 Stage Clear - Activity Bonus [8-bit]
// $1EE3C6: P2 Stage Clear - Bonus Total [16-bit]
// $1F229D: P1 Bonus Game 1 Score [8-bit]
//          Multiply by 1000
//          All food eaten = 17,000 + 10,000 perfect bonus
// $1F22A1: P2 Bonus Game 1 Score [8-bit]
// $1F22C2: Bonus Game 1 Status [8-bit]
//          0x04 = Tally food score
//          0x08 = Perfect
//          0x0a = Tally time score
//          0x0c = Finished tallying time score
//          0x0e = Add Bonus Game 1 total score to full game score
//          0x10 = Finished adding total score
// $1F22C4: Bonus Game 1 Timer [16-bit]
// $1F3C4A: Bonus Game 2 - Statues Left [8-bit]
// $1F3D3A: Beat Game - Total Bonus [16-bit]
// $1F3D96: Bonus Game 2 - Perfect Bonus [8-bit]
//          Always 20,000 (Multiply by 100)
// $1F3D98: Bonus Game 2 Score [16-bit]
//          Multiply by 100
//          Note this bonus game is completely different with 2 players
// $1F3D9A: Bonus Game 2 - Time Bonus [8-bit]
//          Multiply by 100
// $1F3F45: 0xff = Power-up Special Move Cheat Enabled

system_screen = byte(0x20cc) == 0

difficulty = byte(0x1d0d0d)
difficulty_normal_or_higher = difficulty >= 1
difficulty_hard = difficulty == 2

difficulty_dict = {
    0: "Easy",
    1: "Normal",
    2: "Hard"
}

boss_bonus = word(0x1e80bc)
get_boss_bonus = prev(boss_bonus) == 0 && boss_bonus != 0

credits = byte(0x1e8214)

p1_continue_timer = word(0x1e8bc8)
p2_continue_timer = word(0x1e8cb8)

p1_score = (word(0x1e8ee8) * 65536) + word(0x1e8eea)
p2_score = (word(0x1e8eec) * 65536) + word(0x1e8eee)

p1_lives = byte(0x1e8ef6)
p2_lives = byte(0x1e8ef9)

stage = byte(0x1e8f0b)
stage_array = [0, 1, 3, 4, 0x0f, 7, 8, 0x11, 0x16, 0x0c, 0x0d]
bonus_game_1 = stage == 2
bonus_game_2 = stage == 9

stage_dict = {
    0: "Round 1",
    1: "Round 2",
    2: "Bonus Game 1",
    3: "Round 3",
    4: "Round 3",
    5: "Round 4",
    0xe: "Round 4",
    0xf: "Round 4",
    6: "Round 5",
    7: "Round 5",
    8: "Round 6",
    9: "Bonus Game 2",
    0xa: "Round 7",
    0x10: "Round 7",
    0x11: "Round 7",
    0xb: "Round 8",
    0x13: "Round 8",
    0x14: "Round 8",
    0x15: "Round 8",
    0x16: "Round 8",
    0xc: "Round 9",
    0xd: "Round 9"
}

scene = byte(0x1e8f0e)
start_game = prev(scene) == 0x15 && scene == 0
scene_array = [0, 1, 3, 4, 5, 7, 8, 0x1c, 0x1f, 0x25, 0x0d]

stage_complete = byte(0x1e8f0f) == 0xff

// players_active = 0x1e8f19
players_active = 0x52d44
p1_active_only = byte(players_active) == 1
p2_active_only = byte(players_active) == 2
both_players_active = byte(players_active) == 3
both_players_inactive = byte(players_active) == 0
p1_active = bit0(players_active) == 1
p2_active = bit1(players_active) == 1

sou_sou_end = byte(0x1e8f37)
sou_sou_escape = prev(sou_sou_end) == 0 && sou_sou_end == 1
let_sou_sou_go = prev(sou_sou_end) == 0 && sou_sou_end == 0xff

p1_character = byte(0x1ee20a)

kan_u = 0
chou_hi = 1
chou_un = 2
kou_chuu = 3
gi_en = 4

character_dict = {
    0: "Kan-U",
    1: "Chou-Hi",
    2: "Chou-Un",
    3: "Kou-Chuu",
    4: "Gi-En"
}

p1_riding_horse = byte(0x1ee256) == 1
p1_health = byte(0x1ee276)
p1_weapon_pointer = word(0x1ee280)
p1_get_weapon = p1_weapon_pointer != prev(p1_weapon_pointer)
p1_weapon_type = byte(p1_weapon_pointer + 0x1e006a)

seikou = 0x4c
shichisei = 0x50
sui = 0x48
masakuni = 0x64
kusanagi = 0x72

p1_health_bonus = byte(0x1ee2d0)
p1_get_perfect_health_bonus = prev(p1_health_bonus) == 0 && p1_health_bonus == 200

p1_victory_bonus = byte(0x1ee2d2)
p1_get_special_kill_bonus = prev(p1_victory_bonus) == 0 && p1_victory_bonus == 50
p1_get_decapitate_bonus = prev(p1_victory_bonus) == 0 && p1_victory_bonus == 100

p2_character = byte(0x1ee2fa)
p2_riding_horse = byte(0x1ee346) == 1
p2_health = byte(0x1ee366)
p2_weapon_pointer = word(0x1ee370)
p2_get_weapon = p2_weapon_pointer != prev(p2_weapon_pointer)
p2_weapon_type = byte(p2_weapon_pointer + 0x1e006a)

p2_health_bonus = byte(0x1ee3c0)
p2_get_perfect_health_bonus = prev(p2_health_bonus) == 0 && p2_health_bonus == 200

p2_victory_bonus = byte(0x1ee3c2)
p2_get_special_kill_bonus = prev(p2_victory_bonus) == 0 && p2_victory_bonus == 50
p2_get_decapitate_bonus = prev(p2_victory_bonus) == 0 && p2_victory_bonus == 100

p1_bonus_game_1_score = byte(0x1f229d)
p1_get_bonus_game_1_perfect = prev(p1_bonus_game_1_score) == 17 && p1_bonus_game_1_score == 27

p2_bonus_game_1_score = byte(0x1f22a1)
p2_get_bonus_game_1_perfect = prev(p2_bonus_game_1_score) == 17 && p2_bonus_game_1_score == 27

bonus_game_1_status = byte(0x1f22c2)
bonus_game_1_total_score_tallied = prev(bonus_game_1_status) == 0x0a && bonus_game_1_status == 0x0c
bonus_game_1_timer = word(0x1f22c4)

final_score_bonus = word(0x1f3d3a)
get_final_score_bonus = prev(final_score_bonus) != 0 && final_score_bonus == 0

bonus_game_2_perfect = byte(0x1f3d96)
get_bonus_game_2_perfect = prev(bonus_game_2_perfect) == 0 && bonus_game_2_perfect == 200

bonus_game_2_score = word(0x1f3d98)
get_bonus_game_2_score = bonus_game_2_score < prev(bonus_game_2_score)

special_move_cheat = byte(0x1f3f45)
special_move_cheat_enabled = special_move_cheat == 0xff

cheat_dict = {
    0: "",
    0xff: " • Special moves cheat"
}

// ------------
// Achievements
// ------------

function achievement_progress(title, description, points, stage_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = difficulty_normal_or_higher &&
                  p1_active_only &&
                  stage == stage_array[stage_param] &&
                  stage_complete &&
                  get_boss_bonus &&
                  unless(special_move_cheat_enabled) &&
                  disable_when(p2_active, until=credits == 10)
    )
}

achievement_progress("Battle of Bowang, Part 1", "Defeat Ri-Ten in Round 1 on normal or hard (No special moves cheat)", points=5, stage_param=0)
achievement_progress("Battle of Bowang, Part 2", "Defeat Kakou-Ton in Round 2 on normal or hard (No special moves cheat)", points=5, stage_param=1)
achievement_progress("Xinye Castle", "Defeat Kyo-Cho in Round 3 on normal or hard (No special moves cheat)", points=5, stage_param=2)
achievement_progress("Ambush", "Defeat Mei-Mei, Mei-Ya, and Mei-Ling on normal or hard (No special moves cheat)", points=5, stage_param=3)
achievement_progress("White River", "Defeat Sou-Jin in Round 4 on normal or hard (No special moves cheat)", points=5, stage_param=4)
achievement_progress("Battle of Changban", "Defeat Jun'U-Dou in Round 5 on normal or hard (No special moves cheat)", points=5, stage_param=5)
achievement_progress("Changban Bridge", "Defeat Kakou-Ketsu and An-Mei in Round 6 on normal or hard (No special moves cheat)", points=5, stage_param=6)
achievement_progress("Battle of Red Cliffs, Part 1", "Defeat Chou-Ryou in Round 7 on normal or hard (No special moves cheat)", points=10, stage_param=7)
achievement_progress("Battle of Red Cliffs, Part 2", "Defeat Jo-Kou in Round 8 on normal or hard (No special moves cheat)", points=10, stage_param=8)
achievement_progress("Huarong Trail", "Defeat Ryo-Fu in Round 9 on normal or hard (No special moves cheat)", points=25, stage_param=9)

achievement(
    title = "Changing History",
    description = "Kill Sou-Sou on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage == stage_array[10] &&
              stage_complete &&
              get_boss_bonus &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Age of Tyranny",
    description = "Fail to kill Sou-Sou and watch him escape on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage == stage_array[10] &&
              stage_complete &&
              sou_sou_escape &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Lurking Threat",
    description = "Choose to let Sou-Sou go on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage == stage_array[10] &&
              stage_complete &&
              let_sou_sou_go &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Hard-Won Victory",
    description = "Complete the game on hard (No special moves cheat)",
    points = 25,
    trigger = difficulty_hard &&
              p1_active_only &&
              stage == stage_array[10] &&
              stage_complete &&
              unless(special_move_cheat_enabled) &&
              disable_when(p2_active, until=credits == 10) &&
              ((get_boss_bonus) ||
               (sou_sou_escape) ||
               (let_sou_sou_go))
)

achievement(
    title = "Three Kingdoms, Three Credits",
    description = "Complete the game using 2 or fewer continues on normal or hard (No special moves cheat)",
    points = 50,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              credits >= 7 &&
              trigger_when(stage == stage_array[10]) &&
              trigger_when(stage_complete) &&
              unless(special_move_cheat_enabled) &&
              disable_when(p2_active, until=credits == 10) &&
              ((trigger_when(get_boss_bonus)) ||
               (trigger_when(sou_sou_escape)) ||
               (trigger_when(let_sou_sou_go)))
)

achievement(
    title = "Secret Techniques",
    description = "Complete the game with the special moves cheat enabled on normal or hard",
    points = 10,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              special_move_cheat_enabled &&
              stage == stage_array[10] &&
              stage_complete &&
              disable_when(p2_active, until=credits == 10) &&
              ((get_boss_bonus) ||
               (sou_sou_escape) ||
               (let_sou_sou_go))
)

function achievement_character(title, description, points, character_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = once(difficulty_normal_or_higher &&
                       p1_active_only &&
                       p1_character == character_param &&
                       start_game) &&
                  difficulty_normal_or_higher &&
                  p1_active_only &&
                  trigger_when(stage == stage_array[10]) &&
                  trigger_when(stage_complete) &&
                  never(p1_active_only && !stage_complete && p1_character != character_param) &&
                  disable_when(p2_active, until=credits == 10) &&
                  ((trigger_when(get_boss_bonus)) ||
                   (trigger_when(sou_sou_escape)) ||
                   (trigger_when(let_sou_sou_go)))
    )
}

achievement_character("Guan Yu", "Complete the game playing only as Kan-U on normal or hard (Special moves cheat allowed)", 10, kan_u)
achievement_character("Zhang Fei", "Complete the game playing only as Chou-Hi on normal or hard (Special moves cheat allowed)", 10, chou_hi)
achievement_character("Zhao Yun", "Complete the game playing only as Chou-Un on normal or hard (Special moves cheat allowed)", 10, chou_un)
achievement_character("Huang Zhong", "Complete the game playing only as Kou-Chuu on normal or hard (Special moves cheat allowed)", 10, kou_chuu)
achievement_character("Wei Yan", "Complete the game playing only as Gi-En on normal or hard (Special moves cheat allowed)", 10, gi_en)

achievement(
    title = "Well-Fed",
    description = "Eat all your food in the first bonus game on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              bonus_game_1 &&
              p1_get_bonus_game_1_perfect &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Sou-Sou Buster",
    description = "Destroy all statues in the second bonus game on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              bonus_game_2 &&
              get_bonus_game_2_perfect &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Mighty Vitality",
    description = "Get a perfect health bonus of 20,000 on normal or hard (Sou-Sou doesn't count. Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage != stage_array[10] &&
              stage_complete &&
              p1_get_perfect_health_bonus &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Fatality",
    description = "Get a victory bonus of 5000 by cutting a boss in half on normal or hard (Sou-Sou doesn't count. Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage != stage_array[10] &&
              stage_complete &&
              p1_get_special_kill_bonus &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Execution",
    description = "Get a victory bonus of 10,000 by decapitating a boss on normal or hard (Sou-Sou doesn't count. Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage != stage_array[10] &&
              stage_complete &&
              p1_get_decapitate_bonus &&
              disable_when(p2_active, until=credits == 10)
)

achievement(
    title = "Horselord",
    description = "Complete a round while on horseback on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              p1_riding_horse &&
              stage_complete &&
              get_boss_bonus &&
              disable_when(p2_active, until=credits == 10)
)

function achievement_weapon(title, description, points, weapon_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = difficulty_normal_or_higher &&
                  p1_active_only &&
                  p1_get_weapon &&
                  p1_weapon_type == weapon_param &&
                  disable_when(p2_active, until=credits == 10)
    )
}

achievement_weapon("No Escape", "Get the Seikou on normal or hard (Special moves cheat allowed)", 5, seikou)
achievement_weapon("Rainbow Blade", "Get the Shichisei on normal or hard (Special moves cheat allowed)", 5, shichisei)
achievement_weapon("Majestic Mace", "Get the Sui on normal or hard (Special moves cheat allowed)", 5, sui)

achievement(
    title = "Samurai Sword",
    description = "Get a secret sword in Round 8 on normal or hard (Special moves cheat allowed)",
    points = 5,
    trigger = difficulty_normal_or_higher &&
              p1_active_only &&
              stage == stage_array[8] &&
              p1_get_weapon &&
              p1_weapon_type >= 0x58 &&
              p1_weapon_type <= 0x67 &&
              disable_when(p2_active, until=credits == 10)
)

achievement_weapon("Burning Blade", "Get the Kusanagi Sword on normal or hard (Special moves cheat allowed)", 5, kusanagi)

// ------------
// Leaderboards
// ------------

function leaderboard_score_1cc(difficulty_param) {
    leaderboard(
        title = format("High Score: {0} 1CC", difficulty_dict[difficulty_param]),
        description = "Submits after beating the game with 9 credits remaining (No special moves cheat)",
        start = difficulty == difficulty_param &&
                p1_active_only &&
                credits == 9 &&
                stage == stage_array[10] &&
                get_final_score_bonus &&
                unless(special_move_cheat_enabled) &&
                disable_when(p2_active, until=credits == 10),
        cancel = always_false(),
        submit = always_true(),
        value = measured(p1_score),
        format = "VALUE"
    )
}

function leaderboard_score(difficulty_param) {
    leaderboard(
        title = format("High Score: {0}", difficulty_dict[difficulty_param]),
        description = "Submits at continue/game over or after beating the game (No special moves cheat)",
        start = difficulty == difficulty_param &&
                p1_score > 0 &&
                unless(special_move_cheat_enabled) &&
                disable_when(p2_active, until=credits == 10) &&
                ((prior(byte(players_active)) == 1 && both_players_inactive && prior(p1_lives) == 1 && p1_lives == 2 && p1_continue_timer > 0) || 
                 (prior(byte(players_active)) == 1 && both_players_inactive && prior(p1_lives) == 1 && p1_lives == 2 && credits == 0) ||
                 (p1_active_only && stage == stage_array[10] && get_final_score_bonus)),
        cancel = always_false(),
        submit = always_true(),
        value = measured(p1_score),
        format = "VALUE"
    )
}

leaderboard_score_1cc(2)
leaderboard_score(2)

leaderboard_score_1cc(1)
leaderboard_score(1)

leaderboard_score_1cc(0)
leaderboard_score(0)

leaderboard(
    title = "Bonus Game 1 Score",
    description = "Eat your food! (Special moves cheat allowed)",
    start = p1_active_only &&
            bonus_game_1 &&
            p1_bonus_game_1_score > 0 &&
            bonus_game_1_total_score_tallied &&
            disable_when(p2_active, until=credits == 10),
    cancel = always_false(),
    submit = always_true(),
    value = measured(p1_bonus_game_1_score * 1000),
    format = "VALUE"
)

leaderboard(
    title = "Bonus Game 2 Score",
    description = "Destroy the statues! (Special moves cheat allowed)",
    start = p1_active_only &&
            bonus_game_2 &&
            get_bonus_game_2_score &&
            disable_when(p2_active, until=credits == 10),
    cancel = always_false(),
    submit = always_true(),
    value = measured(prev(bonus_game_2_score) * 100),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    system_screen,
    "Staring at a Capcom logo or a Saturn system screen"
)

rich_presence_conditional_display(
    p1_active_only && p2_score == 0,
    "{0} is in {1} • Lives: {2} • Credits: {3} • Score: {4} • {5}{6}",
    rich_presence_lookup("P1Character", p1_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P1Lives", p1_lives - 1),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("Cheat", special_move_cheat, cheat_dict)
)

rich_presence_conditional_display(
    p1_active_only && p2_score > 0,
    "{0} is in {1} • Lives: {2} • Credits: {3} • P1 Score: {4} • P2 Score: {5} • {6}{7}",
    rich_presence_lookup("P1Character", p1_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P1Lives", p2_lives - 1),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("Cheat", special_move_cheat, cheat_dict)
)

rich_presence_conditional_display(
    p2_active_only,
    "P2 {0} is in {1} • Lives: {2} • Credits: {3} • P1 Score: {4} • P2 Score: {5} • {6}{7}",
    rich_presence_lookup("P2Character", p2_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P2Lives", p2_lives - 1),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("Cheat", special_move_cheat, cheat_dict)
)

rich_presence_conditional_display(
    both_players_active,
    "{0} & {1} are in {2} • P1 Lives: {3} • P2 Lives: {4} • Credits: {5} • P1 Score: {6} • P2 Score: {7} • {8}{9}",
    rich_presence_lookup("P1Character", p1_character, character_dict),
    rich_presence_lookup("P2Character", p2_character, character_dict),
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("P1Lives", p1_lives - 1),
    rich_presence_value("P2Lives", p2_lives - 1),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("Cheat", special_move_cheat, cheat_dict)
)

rich_presence_conditional_display(
    both_players_inactive && p2_score == 0 && p1_continue_timer > 0,
    "Continue? {0} • Credits: {1} • Score: {2} • {3}{4}",
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("Cheat", special_move_cheat, cheat_dict)
)

rich_presence_conditional_display(
    both_players_inactive && p2_score > 0 && (p1_continue_timer > 0 || p2_continue_timer > 0),
    "Continue? {0} • Credits: {1} • P1 Score: {2} • P2 Score: {3} • {4}{5}",
    rich_presence_lookup("Round", stage, stage_dict),
    rich_presence_value("Credits", credits),
    rich_presence_value("P1Score", p1_score),
    rich_presence_value("P2Score", p2_score),
    rich_presence_lookup("Difficulty", difficulty, difficulty_dict),
    rich_presence_lookup("Cheat", special_move_cheat, cheat_dict)
)

rich_presence_display(
    "Preparing for war with Sou-Sou"
)