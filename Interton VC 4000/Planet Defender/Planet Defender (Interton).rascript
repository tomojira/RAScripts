// Planet Defender
// #ID = 21653
// md5: 802550e1879d4c59876beb1742f9467f - Planet Defender (Europe).bin

// --------------------------------------
// Useful notes, variables, and functions
// --------------------------------------

// $051E: Game state [8-bit]
//        0x00 = Select game variation
//        0x01 = In-game
//        0x02 = Game over (lost all cities)

function game_state() => byte(0x51e)

select_game = 0
in_game = 1
game_over = 2

// $048B: Start/Select button input [8-bit]
//        0x4f = Start (starts/resets game)
//        0x8f = Select (changes game variation)
//        0x0f at other times

function start_select_input() => byte(0x48b)

input_start = 0x4f
input_select = 0x8f
input_none = 0xf

// $0550: Game variation [8-bit BCD]
//        Games 1 to 4 start with enemy wave 1 (yellow missiles).
//        Games 5 to 8 start with enemy wave 5 (red missiles).
//        Games 9 to 12 start with enemy wave 9 (green missiles).
//        Games 13 to 16 start with enemy wave 11 (white missiles).
//        See the manual for more details on game variations.

function game_variation() => bcd(byte(0x550))

// $058B: Enemy wave [8-bit]
//        Starts at 0x01 on game variations 1 to 4. Increases by 1 after every 7 attack rounds (see 0x0564). Enemy speed increases with each wave.
//        With wave 5, ballistic missiles change from yellow to red and become significantly faster. Game variations 5 to 8 start here.
//        With wave 8, cruise missiles start dropping straight down.
//        With wave 9, ballistic missiles become green and even faster. Game variations 9 to 12 start here.
//        With wave 11, ballistic missiles become white and ludicrous speed. Game variations 13 to 16 start here.
//        Wave 13 is the final wave and loops on itself forever.

function enemy_wave() => byte(0x58b)

// $0564: Enemy attack round [8-bit]
//        Starts at 0x07, counts down with each round of enemy missiles. After reaching 0x00, loops back to 0x07 and enemy wave (see 0x058b) increases by 1.

function enemy_round() => byte(0x564)

// $058E: Score [16-bit BE BCD]
//        After each wave, bonus points are given based on cities and ammo remaining.

function score() => bcd(word_be(0x58e))

// $058C: Left cities health [8-bit]
//        Upper4 = Leftmost city, Lower4 = Middle left city
//        0xf = Healthy, 0x0 = Destroyed
// $058D: Right cities health [8-bit]
//        Upper4 = Middle right city, Lower4 = Rightmost city
//        0xf = Healthy, 0x0 = Destroyed

function cities_all() => word(0x58c)

cities_dictionary = {
    0x0000: "0",
    0x000f: "1",
    0x00f0: "1",
    0x0f00: "1",
    0xf000: "1",
    0x00ff: "2",
    0x0ff0: "2",
    0xff00: "2",
    0x0f0f: "2",
    0xf0f0: "2",
    0xf00f: "2",
    0x0fff: "3",
    0xfff0: "3",
    0xff0f: "3",
    0xf0ff: "3",
    0xffff: "4"
}

// $0590: Player ammo [8-bit]
//        Starts with 0x23 (35).
//        If player missile base (middle structure) is hit, some ammo is lost. The amount seems to vary - 4, 6, 8, maybe other possibilities.
//        Refills back to 0x23 after each enemy wave (7 attack rounds).

function ammo() => byte(0x590)

// ------------
// Achievements
// ------------

function achievement_progress(id, title, description, points, game_array, wave_parameter) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = game_state() == in_game &&
                  __ornext(any_of(game_array, f => game_variation() == f)) &&
                  prev(enemy_wave()) == (wave_parameter) &&
                  enemy_wave() == (wave_parameter + 1)
    )
}

function achievement_wave_13(id, title, description, points, game_array) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = game_state() == in_game &&
                  __ornext(any_of(game_array, f => game_variation() == f)) &&
                  prev(enemy_wave()) == 0xd &&
                  enemy_wave() == 0xd &&
                  prev(enemy_round()) == 0 &&
                  enemy_round() == 7
    )
}

function achievement_score_perfect(id, title, description, points, game_array, score_parameter) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = once(prev(start_select_input()) == input_start &&
                       start_select_input() != input_start &&
                       game_state() == in_game &&
                       __ornext(any_of(game_array, f => game_variation() == f))
                  ) &&
                  prev(score()) < score_parameter &&
                  trigger_when(score() >= score_parameter) &&
                  never(prev(cities_all()) == 0xffff &&
                        cities_all() < 0xffff
                  ) &&
                  never(prev(start_select_input()) != input_start &&
                        start_select_input() == input_start
                  ) &&
                  never(game_state() != in_game)
    )
}

function achievement_score(id, title, description, points, game_array, score_parameter) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = game_state() == in_game &&
                  __ornext(any_of(game_array, f => game_variation() == f)) &&
                  prev(score()) < score_parameter &&
                  score() >= score_parameter
    )
}

achievement_progress(325881, "First Defence", "[Game 1/2/3/4] Clear wave 1. (Each wave lasts 7 rounds of enemy attacks)", points=1, game_array=range(1, 4), wave_parameter=1)
achievement_progress(325882, "Yellow Shield: Target Control A", "[Game 1/3] Clear wave 4 - the final wave of yellow ballistic missiles.", points=1, game_array=range(1, 3, 2), wave_parameter=4)
achievement_progress(325883, "Yellow Shield: Target Control B", "[Game 2/4] Clear wave 4 - the final wave of yellow ballistic missiles.", points=1, game_array=range(2, 4, 2), wave_parameter=4)
achievement_progress(325884, "Red Revolution", "[Game 1/2/3/4] Clear wave 8 - the final wave of red ballistic missiles and the first wave of cruise missiles.", points=3, game_array=range(1, 4), wave_parameter=8)
achievement_progress(325885, "The Age of Green Missiles is Over...", "[Game 1/2/3/4] Clear wave 10 - the final wave of green ballistic missiles.", points=5, game_array=range(1, 4), wave_parameter=10)
achievement_wave_13(331687, "...The Time of the White Missile Has Come!", "[Game 1/2/3/4] Clear wave 13 - the wave that loops forever.", points=10, game_array=range(1, 4))
achievement_score_perfect(325886, "City Defender", "[Game 1/2/3/4] Reach a score of at least 2000 without ever letting a city get hit.", points=5, game_array=range(1, 4), score_parameter=2000)

achievement_progress(325887, "Red Revenge: Target Control A", "[Game 5/7] Clear wave 8 - the final wave of red ballistic missiles and the first wave of cruise missiles.", points=2, game_array=range(5, 7, 2), wave_parameter=8)
achievement_progress(331688, "The Deadly Purple Pixel: Target Control B", "[Game 6/8] Clear wave 8 - the final wave of red ballistic missiles and the first wave of cruise missiles.", points=2, game_array=range(6, 8, 2), wave_parameter=8)
achievement_progress(325888, "Green Vengeance", "[Game 5/6/7/8] Clear wave 10 - the final wave of green ballistic missiles.", points=5, game_array=range(5, 8), wave_parameter=10)
achievement_wave_13(331689, "Return of the White Menace", "[Game 5/6/7/8] Clear wave 13 - the wave that loops forever.", points=10, game_array=range(5, 8))
achievement_score_perfect(325889, "Man of the People", "[Game 5/6/7/8] Reach a score of at least 1500 without ever letting a city get hit.", points=5, game_array=range(5, 8), score_parameter=1500)

achievement_progress(325890, "Green Defeat: Target Control A", "[Game 9/11] Clear wave 10 - the final wave of green ballistic missiles.", points=3, game_array=range(9, 11, 2), wave_parameter=10)
achievement_progress(331690, "Green Defeat: Target Control B", "[Game 10/12] Clear wave 10 - the final wave of green ballistic missiles.", points=3, game_array=range(10, 12, 2), wave_parameter=10)
achievement_progress(331691, "Green Defeat: Against the Dumb Missiles", "[Game 9/10] Clear wave 10 - the final wave of green ballistic missiles.", points=3, game_array=range(9, 10), wave_parameter=10)
achievement_progress(331692, "Green Defeat: Against the Smart Missiles", "[Game 11/12] Clear wave 10 - the final wave of green ballistic missiles.", points=3, game_array=range(11, 12), wave_parameter=10)
achievement_wave_13(331693, "White Duel", "[Game 9/10/11/12] Clear wave 13 - the wave that loops forever.", points=10, game_array=range(9, 12))
achievement_score(325891, "Survival", "[Game 9/10/11/12] Reach a score of at least 1500.", points=5, game_array=range(9, 12), score_parameter=1500)

achievement_wave_13(325894, "Defender of Planets: Target Control A", "[Game 13/15] Clear wave 13 - the wave that loops forever.", points=5, game_array=range(13, 15, 2))
achievement_wave_13(331694, "Defender of Planets: Target Control B", "[Game 14/16] Clear wave 13 - the wave that loops forever.", points=5, game_array=range(14, 16, 2))
achievement_wave_13(325892, "Defender of Planets: Against the Dumb Missiles", "[Game 13/14] Clear wave 13 - the wave that loops forever.", points=5, game_array=range(13, 14))
achievement_wave_13(325893, "Defender of Planets: Against the Smart Missiles", "[Game 15/16] Clear wave 13 - the wave that loops forever.", points=5, game_array=range(15, 16))
achievement_score(325895, "Pushed to the Brink", "[Game 13/14/15/16] Reach a score of at least 1500.", points=5, game_array=range(13, 16), score_parameter=1500)

// ------------
// Leaderboards
// ------------

function leaderboard_high_score() {
    for i in range(1, 16) {
        leaderboard(
            title = "Game " + i + " High Score",
            description = "Submits when all 4 cities are lost.",
            start = game_state() == game_over &&
                    game_variation() == i &&
                    cities_all() == 0,
            cancel = always_false(),
            submit = always_true(),
            value = measured(score()),
            format = "VALUE"
        )
    }
}

leaderboard_high_score()

// Doesn't seem to work
// leaderboard(
//     title = "Display Wave Number",
//     description = "This is not an actual leaderboard. It is used to display the current wave number to the player.",
//     start = always_true(),
//     cancel = always_false(),
//     submit = always_false(),
//     value = measured(enemy_wave()),
//     format = "VALUE"
// )

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    game_state() == in_game,
    "Defending {0} cities with {1} ABMs | Game {2} | Wave {3} | Score {4}",
    rich_presence_lookup("Cities", cities_all(), cities_dictionary),
    rich_presence_value("Ammo", ammo()),
    rich_presence_value("GameVariation", game_variation()),
    rich_presence_value("EnemyWave", enemy_wave()),
    rich_presence_value("Score", score())
)

rich_presence_conditional_display(
    game_state() == game_over,
    "Mission failure! Lost all cities! {0} ABMs | Game {1} | Wave {2} | Score {3}",
    rich_presence_value("Ammo", ammo()),
    rich_presence_value("GameVariation", game_variation()),
    rich_presence_value("EnemyWave", enemy_wave()),
    rich_presence_value("Score", score())
)

rich_presence_conditional_display(
    game_state() == select_game,
    "Preparing to Defend the Planet | Game {0}",
    rich_presence_value("GameVariation", game_variation())
)

rich_presence_display(
    "Playing Planet Defender"
)

// ------------
// Unused notes
// ------------

// $0489: Fire button input [8-bit]
//        0x8f = Fire
//        0x0f at other times

// $0506: Left cities health [8-bit]
//        Upper4 = Leftmost city. 0x4 = Healthy, 0x0 = Destroyed.
//        Lower4 = Middle left city. 0x1 = Healthy, 0x0 = Destroyed.
//        The following three bytes are similar, though the values may be different.
//        0x058c is a more straightforward alternative to this.
// $0516: Right cities health [8-bit]
//        Upper4 = Middle right city. 0xa = Healthy, 0x0 = Destroyed.
//        Lower4 = Rightmost city. 0x4 = Healthy, 0x0 = Destroyed.
//        The following three bytes are similar, though the values may be different.
//        0x058d is a more straightforward alternative to this.

// $054F: Game variation [8-bit]
//        0x00 to 0x0f = 1 to 16
//        Next address is the same but BCD. Probably using that one instead

// $0552: Enemy ballistic missile 1 [8-bit]
//        0x01 = Straight down
//        Above 1: Odd numbers seem to be diagonal down left, even numbers seem to be diagonal down right.
//        The lower the number, the sharper the angle.
//        Up to 0x0c and 0x0d
// $0553: Enemy ballistic missile 2 [8-bit]
//        See 0x0552 note
// $0554: Enemy ballistic missile 3 [8-bit]
//        See 0x0552 note
// $0555: Enemy ballistic missile 4 [8-bit]
//        See 0x0552 note

// $055B: Enemy cruise missile [8-bit]
//        0x40 = Active

// $0556: Player target x-coordinate [8-bit]
//        0x00 to 0xff = Left to right
// $0557: Player target y-coordinate [8-bit]
//        0x00 to 0xff = Top to bottom
// $0562: Game start or variation change [8-bit]
//        0x00 = Game starts or game variation changes
//        0xff at other times.
//        Next address is the same.

// $0565: Enemy ballistic missiles y-coordinate [8-bit]
//        0x0f to 0x00 = Top to bottom
// $0566: Player target x-coordinate (actual display) [8-bit]
//        0x25 to 0x8a = Left to right
// $0568: Player target y-coordinate (actual display) [8-bit]
//        0x3c to 0xb0 = Top to bottom
// $056C: Game state [8-bit]
//        0x8f = Select game variation
//        After starting game, rapidly ticks down to 0. Then the following address becomes active and rapidly decreases/loops.
//        Changes again between each attack round.
//        Use 0x051e for game state instead

// $058A: Cities destroyed [8-bit]
//        0x04 to 0x00
//        Game ends when all 4 cities are destroyed.
//        A city will be restored for every 1000 points. However this does not increase this value! So the game can continue even when this address says 0x00. Rely on 0x058c and 0x058d instead.
//        This address does seem to affect the bonus points given after each wave.

// $05AD: Player shot fired [8-bit]
//        0x00 = No
//        0x01 = Player missile active
// $05C8: Score/Game variation number display [16-bit BE BCD]
//        0xf = No digit displayed

// $0567: Enemy cruise missile x-coordinate [8-bit]
// $056A: Player missile explosion x-coordinate [8-bit]
//        Usually displays 0x5e.
//        Rapidly changes when player missile is in flight, then settles briefly on the explosion x-coordinate.
// $056B: Player missile explosion y-coordinate [8-bit]
//        Usually displays 0xc7.
//        Rapidly changes when player missile is in flight, then settles briefly on the explosion y-coordinate.