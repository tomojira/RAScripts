// 1944: Return to Midway
// #ID = 21470

// This script wasn't actually used to generate the achievements, and I haven't tested it. I made it later while trying to learn RATools.

// $0195: [8bit] Mission
//        0x00=Mission 1
//        etc.
//        Loops from 256 to 1
// $0197: [8bit] Screen
//        0x00=1 frame before Title screen, after High scores
//        0x01=Title screen
//        0x02=1 frame before In-game, after Title screen/Mission success
//        0x03=In-game
//        0x04=Mission success, also briefly before All missions over
//        0x05=Game over/All missions over
//        0x06=1 frame before Credits, after Title screen
//        0x07=Credits
//        0x08=1 frame before High scores, after Game over/All missions over/Credits
//        0x09=High scores
// $0249: [8bit] Enemy 1 health
//        Small white planes=0x01
//        Big white planes (only 1 in formation)=0x01
//        Big white planes (3 in formation)=0x02
//        Black planes=0x02
//        Ships=0x05
//        0xff=Death animation begins, ticks down
//        Doesn't change until next enemy spawns
// $024A: [8bit] Enemy 1 type
//        0x9c=Ship
//        0xcc=Big white plane
//        0xe6=Small white plane
//        0xfc=Black plane
//        Doesn't change until next enemy spawns
// $0258: [8bit] Enemy 1 behaviour
//        0x7a=Flies down
//        0x83=Flies diagonally down and left
//        0x8c=Flies left, then turns down
//        0xa1=Flies left
//        Doesn't change until next enemy spawns
// $025A: [8bit] Enemy 1 movement
//        Ticks down and loops until it reaches 0x00 when off-screen or destroyed
// $0267: [8bit] Enemy 2 health
//        See 0x0249 note
// $0268: [8bit] Enemy 2 type
//        See 0x024a note
// $0276: [8bit] Enemy 2 behaviour
//        See 0x0258 note
// $0278: [8bit] Enemy 2 movement
//        See 0x025a note
// $0285: [8bit] Enemy 3 health
//        See 0x0249 note
// $0286: [8bit] Enemy 3 type
//        See 0x024a note
// $0294: [8bit] Enemy 3 behaviour
//        See 0x0258 note
// $0296: [8bit] Enemy 3 movement
//        See 0x025a note
// $02A3: [8bit] Enemy 4 health
//        See 0x0249 note
// $02A4: [8bit] Enemy 4 type
//        See 0x024a note
// $02B2: [8bit] Enemy 4 behaviour
//        See 0x0258 note
// $02B4: [8bit] Enemy 4 movement
//        See 0x025a note
// $02C1: [8bit] Enemy 5 health
//        See 0x0249 note
// $02C2: [8bit] Enemy 5 type
//        See 0x024a note
// $02D0: [8bit] Enemy 5 behaviour
//        See 0x0258 note
// $02D2: [8bit] Enemy 5 movement
//        See 0x025a note
// $02DF: [8bit] Enemy 6 health
//        See 0x0249 note
// $02E0: [8bit] Enemy 6 type
//        See 0x024a note
// $02EE: [8bit] Enemy 6 behaviour
//        See 0x0258 note
// $02F0: [8bit] Enemy 6 movement
//        See 0x025a note
// $0310: [8bit] Player x-coordinate
//        0x00 (furthest left) to 0x66 (furthest right)
// $0314: [8bit] Player y-coordinate
//        0x00 (furthest up) to 0x2d (furthest down)
// $0318: [8bit] Player health
//        0x01 to 0x0e
//        0xff=Death animation begins, ticks down to 0xf6
//        Health refills to max on 1st frame of Screen 0x03 (In-game)
// $031B: [16bit] Score
//        Loops from 65535 to 0
// $031D: [8bit] Ammo
//        0x01 to 0x4b
//        Ammo refills to max on 1st frame of Screen 0x03 (In-game)
// $031E: [16bit] Fuel
//        0x0001 to 0x0dfe (1st frame In-game) or 0x0e00 (shows on Title screen)
//        0xfff4=Out of fuel death animation begins, ticks down to 0xf0f4
//        Fuel refills to max on 1st frame of Screen 0x03 (In-game)
// $0321: [8bit] Triple shot power-up active
//        0x01 to 0x0a
// $0328: [16bit] Frame counter, almost. Increases by 1 each frame for 5 frames, stalls on the 6th frame, then repeats pattern. Stops briefly at the end of missions when player can't input anything. Loops from 0xffff to 0x0000
// $0738: [8bit] Power-up object bitflag
//        0x00=Despawned or picked up
//        0x01=Spawned
// $073D: [8bit] Power-up object
//        0x00=Fuel
//        0x01=Ammo
//        0x02=Health
//        0x03=Triple shot
//        Doesn't change until next power-up spawns
// $0748: [8bit] Difficulty level
//        0x00=Level 1
//        0x01=Level 2
//        0x02=Level 3

function current_mission() => byte(0x000195)

function current_screen() => byte(0x000197)

function current_health() => byte(0x000318)

health_lookup = {
    0x00: "◻◻◻◻◻◻◻",
    0x01: "◼◻◻◻◻◻◻",
    0x02: "◼◻◻◻◻◻◻",
    0x03: "◼◼◻◻◻◻◻",
    0x04: "◼◼◻◻◻◻◻",
    0x05: "◼◼◼◻◻◻◻",
    0x06: "◼◼◼◻◻◻◻",
    0x07: "◼◼◼◼◻◻◻",
    0x08: "◼◼◼◼◻◻◻",
    0x09: "◼◼◼◼◼◻◻",
    0x0a: "◼◼◼◼◼◻◻",
    0x0b: "◼◼◼◼◼◼◻",
    0x0c: "◼◼◼◼◼◼◻",
    0x0d: "◼◼◼◼◼◼◼",
    0x0e: "◼◼◼◼◼◼◼",
    0xf6: "◻◻◻◻◻◻◻",
    0xf7: "◻◻◻◻◻◻◻",
    0xf8: "◻◻◻◻◻◻◻",
    0xf9: "◻◻◻◻◻◻◻",
    0xfa: "◻◻◻◻◻◻◻",
    0xfb: "◻◻◻◻◻◻◻",
    0xfc: "◻◻◻◻◻◻◻",
    0xfd: "◻◻◻◻◻◻◻",
    0xfe: "◻◻◻◻◻◻◻",
    0xff: "◻◻◻◻◻◻◻",
}

function current_score() => word(0x00031B)

function current_ammo() => byte(0x00031D)

function current_fuel() => word(0x00031E)

function current_triple_shot_ammo() => byte(0x000321)

function power_up_spawned() => byte(0x000738)

function current_difficulty() => byte(0x000748)

function number_minus_1(number)
{
    return number - 1
}

function difficulty_2_or_3() => current_difficulty() == 0x01 || current_difficulty() == 0x02

function difficulty_3() => current_difficulty() == 0x02

function screen_in_game() => current_screen() == 0x03

function screen_in_game_or_mission_success() => current_screen() == 0x03 || current_screen() == 0x04

function screen_transition_mission_success() => prev(current_screen()) == 0x03 && current_screen() == 0x04

function screen_transition_mission_success_trigger() => prev(current_screen()) == 0x03 && trigger_when(current_screen() == 0x04)

function screen_transition_game_over() => (prev(current_screen()) == 0x03 || prev(current_screen()) == 0x04) && current_screen() == 0x05

function mission_transition(last, next) => prev(current_mission()) == number_minus_1(last) && current_mission() == number_minus_1(next)

function score_reached(target) => prev(current_score()) < target && current_score() >= target

achievement(
    title = "Barrage", points = 1,
    description = "Collect a triple shot power-up [Any difficulty]",
    id = 302684, badge = "336659", published = "2023-03-25 6:58:24 PM", modified = "2023-03-25 6:58:24 PM",
    trigger = screen_in_game() &&
              prev(current_triple_shot_ammo()) == 0x00 &&
              current_triple_shot_ammo() > 0x00
)

achievement(
    title = "Take to the Skies", points = 1,
    description = "Complete Mission 1 [Any difficulty]",
    id = 302685, badge = "336702", published = "2023-03-25 6:58:29 PM", modified = "2023-03-27 1:00:07 AM",
    trigger = screen_transition_mission_success() &&
              mission_transition(1, 2)
)

achievement(
    title = "First Loop", points = 2,
    description = "Complete Mission 5 [Any difficulty]",
    id = 303127, badge = "336827", published = "2023-03-27 1:01:23 AM", modified = "2023-03-27 1:01:23 AM",
    trigger = screen_transition_mission_success() &&
              mission_transition(5, 6)
)

achievement(
    title = "Second Loop", points = 5,
    description = "Complete Mission 10 [Any difficulty]",
    id = 302368, badge = "336703", published = "2023-03-25 5:02:26 AM", modified = "2023-03-27 12:59:38 AM",
    trigger = screen_transition_mission_success() &&
              mission_transition(10, 11)
)

achievement(
    title = "Cycle of War", points = 5,
    description = "Complete Mission 20 [Any difficulty]",
    id = 302369, badge = "336704", published = "2023-03-25 5:03:01 AM", modified = "2023-03-27 12:59:19 AM",
    trigger = screen_transition_mission_success() &&
              mission_transition(20, 21)
)

achievement(
    title = "Level 1 Complete", points = 5,
    description = "Complete Mission 30 [Any difficulty]",
    id = 302370, badge = "336705", published = "2023-03-25 5:03:14 AM", modified = "2023-03-25 5:03:14 AM",
    trigger = screen_transition_mission_success() &&
              mission_transition(30, 31)
)

achievement(
    title = "Midway Crisis", points = 5,
    description = "Complete Mission 40 [Level 2 or 3 difficulty]",
    id = 302371, badge = "336706", published = "2023-03-25 5:03:19 AM", modified = "2023-03-25 4:51:37 PM",
    trigger = difficulty_2_or_3() &&
              screen_transition_mission_success() &&
              mission_transition(40, 41)
)

achievement(
    title = "Feeling Loopy", points = 5,
    description = "Complete Mission 50 [Level 2 or 3 difficulty]",
    id = 302372, badge = "336707", published = "2023-03-25 5:03:24 AM", modified = "2023-03-25 4:51:37 PM",
    trigger = difficulty_2_or_3() &&
              screen_transition_mission_success() &&
              mission_transition(50, 51)
)

achievement(
    title = "Level 2 Complete", points = 10,
    description = "Complete Mission 60 [Level 2 or 3 difficulty]",
    id = 302373, badge = "336708", published = "2023-03-25 5:03:28 AM", modified = "2023-03-25 5:03:28 AM",
    trigger = difficulty_2_or_3() &&
              screen_transition_mission_success() &&
              mission_transition(60, 61)
)

achievement(
    title = "Endless War", points = 10,
    description = "Complete Mission 70 [Level 3 difficulty]",
    id = 302374, badge = "336709", published = "2023-03-25 5:03:34 AM", modified = "2023-03-25 4:51:38 PM",
    trigger = difficulty_3() &&
              screen_transition_mission_success() &&
              mission_transition(70, 71)
)

achievement(
    title = "Millennial Ace", points = 5,
    description = "Reach a score of 1000 [Any difficulty]",
    id = 302375, badge = "336700", published = "2023-03-25 5:03:40 AM", modified = "2023-03-25 5:03:40 AM",
    trigger = screen_in_game_or_mission_success() &&
              score_reached(1000)
)

achievement(
    title = "Mass Wreckage", points = 5,
    description = "Reach a score of 2000 [Level 2 or 3 difficulty]",
    id = 302376, badge = "336710", published = "2023-03-25 5:03:40 AM", modified = "2023-03-25 4:51:38 PM",
    trigger = difficulty_2_or_3() &&
              screen_in_game_or_mission_success() &&
              score_reached(2000)
)

achievement(
    title = "Polluting the Pacific", points = 10,
    description = "Reach a score of 4000 [Level 3 difficulty]",
    id = 302377, badge = "336711", published = "2023-03-25 5:03:40 AM", modified = "2023-03-25 4:51:38 PM",
    trigger = difficulty_3() &&
              screen_in_game_or_mission_success() &&
              score_reached(4000)
)

achievement(
    title = "Zero Respecter", points = 3,
    description = "Complete any mission without destroying any enemies [Level 3 difficulty]",
    id = 302379, badge = "336808", published = "2023-03-25 5:03:41 AM", modified = "2023-04-04 9:01:46 PM",
    trigger = difficulty_3() &&
              screen_transition_mission_success_trigger() &&
              disable_when(
                           screen_in_game() &&
                           current_score() > prev(current_score()),
                           until=(
                                  current_screen() != 0x03 &&
                                  current_screen() != 0x04
                                  )
                           )
)

achievement(
    title = "Limited Supplies", points = 5,
    description = "Complete any mission with only 1 fuel refill, and without recovering any health or ammo [Level 3 difficulty]",
    id = 302378, badge = "339448", published = "2023-03-25 5:03:41 AM", modified = "2023-04-04 8:40:43 PM",
    trigger = difficulty_3() &&
              screen_transition_mission_success_trigger() &&
              disable_when(
                           prev(power_up_spawned()) == 0x01 &&
                           power_up_spawned() == 0x00 &&
                           (
                            (repeated(2,
                                      current_fuel() > prev(current_fuel())
                                      )
                             ) ||
                            once(
                                 current_health() > prev(current_health())
                                 ) ||
                            once(
                                 current_ammo() > prev(current_ammo())
                                 )
                            ) &&
                           prev(current_screen()) == 0x03,
                           until=(
                                  current_screen() < 0x03 ||
                                  current_screen() > 0x04 ||
                                  prev(current_screen()) == 0x02
                                  )
                           )
)

achievement(
    title = "The Loop Master", points = 10,
    description = "Complete any mission without taking damage [Level 3 difficulty]",
    id = 306605, badge = "339447", published = "2023-04-04 7:34:58 PM", modified = "2023-04-04 9:08:42 PM",
    trigger = difficulty_3() &&
              current_health() == 0x0e &&
              screen_transition_mission_success_trigger() &&
              disable_when(
                           screen_in_game() &&
                           current_health() < prev(current_health()),
                           until=(
                                  current_screen() != 0x03 &&
                                  current_screen() != 0x04
                                  )
                           )
)

achievement(
    title = "Total Victory", points = 25,
    description = "Complete any mission after destroying all 60 enemies [Level 3 difficulty]",
    id = 302380, badge = "337042", published = "2023-03-25 5:03:41 AM", modified = "2023-04-04 9:01:47 PM",
    trigger = difficulty_3() &&
              measured(
                       repeated(60,
                                current_score() > prev(current_score())
                                )
                       ) &&
              screen_transition_mission_success() &&
              never(
                    (current_screen() != 0x03 &&
                     current_screen() != 0x04
                     )
                    )
)

achievement(
    title = "9 Out of 10", points = 25,
    description = "Complete the first 10 missions with a score of at least 540 [Level 3 difficulty]",
    id = 302381, badge = "337041", published = "2023-03-25 5:03:42 AM", modified = "2023-04-04 9:01:48 PM",
    trigger = difficulty_3() &&
              current_score() >= 480 &&
              trigger_when(current_score() >= 540) &&
              screen_transition_mission_success_trigger() &&
              prev(current_mission()) == 0x09 &&
              trigger_when(current_mission() == 0x0a)
)

leaderboard(
    id = 61809, title = "High Scores: Level 3 Difficulty",
    description = "Score submitted at Game Over or after reaching 65535 (maximum)",
    start  = difficulty_3() &&
             (
              screen_transition_game_over() ||
              current_score() == 65535
              ),
    cancel = always_false(),
    submit = always_true(),
    value = current_score(),
    format = "VALUE"
)

leaderboard(
    id = 61810, title = "Highest Mission Reached: Level 3 Difficulty",
    description = "Submitted at Game Over or after reaching Mission 256 (maximum)",
    start  = difficulty_3() &&
             (
              screen_transition_game_over() ||
              (
               screen_transition_mission_success() &&
               mission_transition(255, 256)
               )
              ),
    cancel = always_false(),
    submit = always_true(),
    value = measured(1 + current_mission()),
    format = "VALUE"
)

leaderboard(
    id = 61811, title = "Mission 10 High Scores: Level 3 Difficulty",
    description = "Score submitted after completing Mission 10",
    start  = difficulty_3() &&
             screen_transition_mission_success() &&
             mission_transition(10, 11),
    cancel = always_false(),
    submit = always_true(),
    value = current_score(),
    format = "VALUE"
)

leaderboard(
    id = 61812, title = "High Scores: Level 2 Difficulty",
    description = "Score submitted at Game Over or after completing Mission 60",
    start  = current_difficulty() == 0x01 &&
             screen_transition_game_over(),
    cancel = always_false(),
    submit = always_true(),
    value = current_score(),
    format = "VALUE"
)

leaderboard(
    id = 61813, title = "High Scores: Level 1 Difficulty",
    description = "Score submitted at Game Over or after completing Mission 30",
    start  = current_difficulty() == 0x00 &&
             screen_transition_game_over(),
    cancel = always_false(),
    submit = always_true(),
    value = current_score(),
    format = "VALUE"
)

rich_presence_conditional_display(
                                  current_screen() == 0x00 ||
                                  current_screen() == 0x01,
                                  "Viewing the Title Screen"
)

rich_presence_conditional_display(
                                  current_screen() == 0x02 ||
                                  current_screen() == 0x03,
                                  "Attempting Mission {0} [Level {1} difficulty] [💯{2}] [❤️{3}]",
                                  rich_presence_value("Value", current_mission() + 1),
                                  rich_presence_value("Value", current_difficulty() + 1),
                                  rich_presence_value("Value", current_score()),
                                  rich_presence_lookup("Health", current_health(), health_lookup)
)

rich_presence_conditional_display(current_screen() == 0x04,
                                  "Completed Mission {0} [Level {1} difficulty] [💯{2}]",
                                  rich_presence_value("Value", current_mission() + 1),
                                  rich_presence_value("Value", current_difficulty() + 1),
                                  rich_presence_value("Value", current_score())
)

rich_presence_conditional_display(current_screen() == 0x05,
                                  "Game Over in Mission {0} [Level {1} difficulty] [💯{2}] [❤️{3}]",
                                  rich_presence_value("Value", current_mission() + 1),
                                  rich_presence_value("Value", current_difficulty() + 1),
                                  rich_presence_value("Value", current_score()),
                                  rich_presence_lookup("Health", current_health(), health_lookup)
)

rich_presence_conditional_display(
                                  current_screen() == 0x06 ||
                                  current_screen() == 0x07,
                                  "Viewing the Credits"
)

rich_presence_conditional_display(
                                  current_screen() == 0x08 ||
                                  current_screen() == 0x09, 
                                  "Viewing the High Scores [💯{0}]",
                                  rich_presence_value("Value", current_score())
)

rich_presence_display("Playing 1944: Return to Midway")
