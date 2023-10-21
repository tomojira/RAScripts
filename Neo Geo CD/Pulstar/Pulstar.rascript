// Pulstar
// #ID = 9164

// $FE30: Unibios [32-bit]
//        0x00000000 = No Unibios
//        0x02003256 = Unibios

function no_unibios() => dword(0xfe30) == 0

// $FD8E: Difficulty [8-bit]
//        0x00 to 0x07 = Level 1 to 8
//        Level 4 = Default

function difficulty() => byte(0xfd8e)
function difficulty_normal_or_higher() => difficulty() >= 3

// $FDB6: P1 status [8-bit]
//        0x00 = Inactive
//        0x01 = Active (includes Stage Select menu, and also Player Select menu if Start was pressed)
//        0x02 = Continue screen
//        0x03 = Game Over screen
// $FDB7: P2 status [8-bit]

function players_status() => word(0xfdb6)
function p1_active_only() => players_status() == 0x0001
function players_inactive() => players_status() == 0x0000
function p1_continue_screen() => players_status() == 0x0002
function p1_continue_screen_trans() => prev(players_status()) == 0x0001 && players_status() == 0x0002
function p1_active_after_continue() => prev(players_status()) == 0x0002 && players_status() == 0x0001

// $1A02: Full power cheat input [8-bit]
//        0x00 to 0x06 = Up, Up, Down, Down, Left, Right
//        0x06 -> 0x07 -> 0x00 = Final button input

function full_power_cheat() => byte(0x1a02)
function activate_full_power_cheat() => prev(full_power_cheat()) == 7 && full_power_cheat() == 0 && speed() == 7 && power() == 0x7f

// $1E07: Stage [8-bit]
//        0x01 = Stage 1
//        0x09 = Final boss area in Stage 8

function stage() => byte(0x1e07)

stage_dict = {
    1: "Stage 1",
    2: "Stage 2",
    3: "Stage 3",
    4: "Stage 4",
    5: "Stage 5",
    6: "Stage 6",
    7: "Stage 7",
    8: "Final Stage",
    9: "Final Stage"
}

// $16D0: Stage progress [16-bit]

function stage_progress() => word(0x16d0)
function begin_stage() => prev(stage_progress()) == 0 && stage_progress() == 0x0100

// $1E05: 0xff = Stage cleared
//        Also during transition to final boss area in Stage 8

function clear_stage() => prev(byte(0x1e05)) == 0 && byte(0x1e05) == 0xff

// $1674: P1 Score [32-bit BE BCD]
// $1678: P2 Score [32-bit BE BCD]

function p1_score() => bcd(dword_be(0x1674))

// $167C: P1 Lives [8-bit]
//        Start with 0x02
// $167D: P2 Lives [8-bit]

function p1_lives() => byte(0x167c)

// $1B30: Speed [8-bit]
//        Bit0 = Speed 1
//        Bit1 = Speed 2
//        Bit2 = Speed 3
//        
//        0x07 = Full speed

function speed() => byte(0x1b30)

// $1B33: Power [8-bit]
//        Bit0 = Weapon 1 (front orb)
//        Bit1 = I (side pod 1, upper)
//        Bit2 = I (side pod 2, lower)
//        Bit3 = C (charge speed-up 1)
//        Bit4 = C (charge speed-up 2)
//        Bit5 = Weapon 2 (big front orb)
//        Bit6 = Missiles
//        
//        0x7f = Full power

function power() => byte(0x1b33)
function get_full_power() => __ornext(prev(speed()) < 7 || prev(power()) < 0x7f) && speed() == 7 && power() == 0x7f

// $1B31: Missile type [8-bit]
//        0x00 = H (homing missiles)
//        0x01 = M (straight missile)
//        0x02 = B (diagonal missile)
// $1B32: Weapon type [8-bit]
//        0x00 = N (wave)
//        0x01 = T (trailing homing laser)
//        0x02 = F (electric shield)
//        0x03 = P (reflecting lasers)
//        0x04 = R (straight laser)

function weapon_type() => byte(0x1b32)

weapon_dict = {
    0: "N",
    1: "T",
    2: "F",
    3: "P",
    4: "R"
}

// $0000: High Score [32-bit BE BCD]
// $0038: Difficulty [8-bit]
//        0x00 to 0x07 = Level 1 to 8
//        Level 4 = Default
// $13BC: Continue timer [8-bit]
//        0x09 to 0x00, then 0xff
// $163E: 0xff00 = Stage Select screen, FMVs, Data Save screen (after Game Over), High Score screen (after Data Save screen)
//        0x00ff = In-game, Demo
//        0x0000 = Title screen menus, How to Play
// $19E8: Charge Meter [8-bit]
//        0x00 to 0xff
// $1E04: 0xff = Boss defeated
//        Also during transition to final boss area in Stage 8

// ------------
// Achievements
// ------------

function achievement_progress(title, description, points, stage_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = no_unibios() &&
                  p1_active_only() &&
                  difficulty_normal_or_higher() &&
                  stage() == stage_param &&
                  clear_stage() &&
                  disable_when(activate_full_power_cheat(), until=players_inactive())
    )
}

achievement_progress("Front Line on the Earth", "Clear Stage 1. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=5, stage_param=1)
achievement_progress("Water Vein Under Ground", "Clear Stage 2. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=5, stage_param=2)
achievement_progress("The Fire Prominence", "Clear Stage 3. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=5, stage_param=3)
achievement_progress("Attack on Space Station", "Clear Stage 4. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=10, stage_param=4)
achievement_progress("The Dangerous Forest", "Clear Stage 5. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=10, stage_param=5)
achievement_progress("The Terminators", "Clear Stage 6. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=10, stage_param=6)
achievement_progress("Darkness Nebula", "Clear Stage 7. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=25, stage_param=7)
achievement_progress("Life or Death", "Clear the Final Stage. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=50, stage_param=9)

function achievement_progress_cheat(title, description, points, stage_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = no_unibios() &&
                  p1_active_only() &&
                  stage() == stage_param &&
                  clear_stage()
    )
}

achievement_progress_cheat("No More Death Penalty I", "Clear Stage 1. Any difficulty, and you can use the full power cheat! (Must be P1)", points=2, stage_param=1)
achievement_progress_cheat("No More Death Penalty II", "Clear Stage 2. Any difficulty, and you can use the full power cheat! (Must be P1)", points=3, stage_param=2)
achievement_progress_cheat("No More Death Penalty III", "Clear Stage 3. Any difficulty, and you can use the full power cheat! (Must be P1)", points=4, stage_param=3)
achievement_progress_cheat("No More Death Penalty IV", "Clear Stage 4. Any difficulty, and you can use the full power cheat! (Must be P1)", points=5, stage_param=4)
achievement_progress_cheat("No More Death Penalty V", "Clear Stage 5. Any difficulty, and you can use the full power cheat! (Must be P1)", points=5, stage_param=5)
achievement_progress_cheat("No More Death Penalty VI", "Clear Stage 6. Any difficulty, and you can use the full power cheat! (Must be P1)", points=5, stage_param=6)
achievement_progress_cheat("No More Death Penalty VII", "Clear Stage 7. Any difficulty, and you can use the full power cheat! (Must be P1)", points=5, stage_param=7)
achievement_progress_cheat("No More Death Penalty VIII", "Clear the Final Stage. Any difficulty, and you can use the full power cheat! (Must be P1)", points=10, stage_param=9)

achievement(
    title = "Dynamo",
    description = "Get fully powered up. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)",
    points = 5,
    trigger = no_unibios() &&
              p1_active_only() &&
              difficulty_normal_or_higher() &&
              get_full_power() &&
              disable_when(activate_full_power_cheat(), until=players_inactive())
)

function achievement_score(title, description, points, score_param) {
    achievement(
        title = title,
        description = description,
        points = points,
        trigger = no_unibios() &&
                  p1_active_only() &&
                  difficulty_normal_or_higher() &&
                  prev(p1_score()) < score_param &&
                  p1_score() >= score_param &&
                  disable_when(activate_full_power_cheat(), until=players_inactive())
    )
}

achievement_score("Rebirth", "Score 300,000 points. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=5, score_param=300000)
achievement_score("Rebirth II", "Score 500,000 points. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)", points=10, score_param=500000)

achievement(
    title = "Slowest Ship in the Galaxy",
    description = "Clear Stage 1 without getting any power-ups. (Difficulty Level-4 or higher) (No Cheats) (Must be P1)",
    points = 5,
    trigger = no_unibios() &&
              p1_active_only() &&
              difficulty_normal_or_higher() &&
              once(stage() == 1 && begin_stage()) &&
              trigger_when(clear_stage()) &&
              never(speed() > 0 || power() > 0) &&
              disable_when(activate_full_power_cheat(), until=players_inactive())
)

// achievement(
//     title = "Three Strikes",
//     description = "Starting from Stage 1, beat the game while using 3 or fewer continues. (Difficulty Level-4 or higher) (Must be P1)",
//     points = 50,
//     trigger = no_unibios() &&
//               p1_active_only() &&
//               difficulty_normal_or_higher() &&
//               once(stage() == 1 && begin_stage()) &&
//               trigger_when(stage() == 9) &&
//               trigger_when(clear_stage()) &&
//               never(repeated(4, p1_continue_screen())) &&
//               disable_when(activate_full_power_cheat()) &&
//               (always_false() || never(players_inactive()))
// )

// ------------
// Leaderboards
// ------------

leaderboard(
    title = "High Score",
    description = "Submits at Continue screen or after beating the game (Difficulty Level-4 or higher) (No Cheats) (Must be P1)",
    start = no_unibios() &&
            difficulty_normal_or_higher() &&
            p1_active_only() &&
            p1_score() == 0 &&
            (begin_stage() || p1_active_after_continue()),
    cancel = players_inactive() || activate_full_power_cheat(),
    submit = p1_score() > 0 && (p1_continue_screen_trans() || (stage() == 9 && clear_stage())),
    value = measured(p1_score()),
    format = "VALUE"
)

leaderboard(
    title = "High Score: 1CC",
    description = "Starts at Stage 1. Submits after beating the game without using a continue (Difficulty Level-4 or higher) (No Cheats) (Must be P1)",
    start = no_unibios() &&
            difficulty_normal_or_higher() &&
            p1_active_only() &&
            p1_score() == 0 &&
            stage() == 1 &&
            begin_stage(),
    cancel = p1_continue_screen_trans() || players_inactive() || activate_full_power_cheat(),
    submit = stage() == 9 && clear_stage(),
    value = measured(p1_score()),
    format = "VALUE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    p1_active_only() && stage_progress() > 0x0000,
    "{0} | Weapon: {1} | Lives: {2} | Score: {3} | Difficulty Level-{4}",
    rich_presence_lookup("Stage", stage(), stage_dict),
    rich_presence_lookup("Weapon", weapon_type(), weapon_dict),
    rich_presence_value("Lives", p1_lives()),
    rich_presence_value("Score", p1_score()),
    rich_presence_value("Difficulty", difficulty() + 1)
)

rich_presence_display(
    "Playing Pulstar"
)