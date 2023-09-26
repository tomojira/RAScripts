// Puzzle Bobble | Bust-A-Move [Neo-Geo MVS]
// #ID = 12247

// $0004: Difficulty level [8-bit]
//        0x00 to 0x07 = Level 1 to Level 8
//        Level 2 = AES Easy Mode
//        Level 4 = MVS Default, AES Normal Mode
//        Level 6 = AES MVS Mode
//        Level 8 = AES Hard Mode

function difficulty() => byte(0x4)
function difficulty_normal() => difficulty() >= 3

aes_difficulty_dict = {
    0: "Level-1",
    1: "Easy",
    2: "Level-3",
    3: "Normal",
    4: "Level-5",
    5: "MVS",
    6: "Level-7",
    7: "Hard"
}

// $0008: MVS or AES [8-bit]
//        0x01 = AES
//        0x02 = MVS

function mvs_mode() => byte(0x8) == 2
function aes_mode() => byte(0x8) == 1

// $0018: P2 active [8-bit]
//        0x00 = Not active
//        0x01 = P2 enters game
//        0x02 = P2 active, either in 2P Vs. or 1P mode
//
//        Works well for detecting game state [16-bit]
//        0x0000 = Attract Mode, Title screen, Continue screen after losing
//        0x0200 = P1 in 1P mode, High Scores screen after losing, End screen and Credits
//        0x0002 = P2 in 1P mode, High Scores screen after losing, End screen and Credits
//        0x0202 = 2P Vs. mode
//        0x0201 = P2 enters P1's 1P mode, beginning Vs. mode
//        0x0102 = P1 enters P2's 1P mode, beginning Vs. mode
//        etc.
// $0019: P1 active [8-bit]
//        0x00 = Not active
//        0x01 = P1 enters game
//        0x02 = P1 active

function player_activity() => word(0x18)
function p1_active() => player_activity() == 0x0200
function p2_active() => player_activity() == 0x0002
function vs_mode() => player_activity() == 0x0202
function players_inactive() => player_activity() == 0
function p1_become_active() => prev(player_activity()) != 0x0200 && player_activity() == 0x0200
function p2_become_active() => prev(player_activity()) != 0x0002 && player_activity() == 0x0002
function p2_enters_p1_game() => prev(player_activity()) == 0x0200 && player_activity() == 0x0201
function p1_enters_p2_game() => prev(player_activity()) == 0x0002 && player_activity() == 0x0102
function p2_in_p1_game() => player_activity() == 0x0201
function p1_in_p2_game() => player_activity() == 0x0102

// $21C0: Credits (MVS) [8-bit]
// $21C1: Credits (MVS) [8-bit]
// $21C6: P2 Credits (AES) [8-bit]
// $21C7: P1 Credits (AES) [8-bit]

function credits_mvs() => byte(0x21c0)
function credits_aes_p1() => byte(0x21c7)
function credits_aes_p2() => byte(0x21c6)

// $2270: Round number [8-bit]
//        0x00 to 0x1d = Round 1 to 30
//        0x1e = End screen
//        0xff = Tutorial demo, 2P Vs. demo
//        Editing changes the number displayed when next stage loads
//        Editing to 0x1d early and transitioning to 0x1e will still load the end screen

function round() => byte(0x2270)
function round_trans(round_param) => prev(round()) == (round_param - 1) && round() == round_param
function beat_game() => prev(round()) == 0x1d && round() == 0x1e
function end_screen() => round() == 0x1e

// $820A: P1 Score, Part 2 [16-bit]
//        Multiply by 65536, add to 0x820c
// $820C: P1 Score, Part 1 [16-bit]
//        Multiply by 1, add to 0x820a
// $82A6: P2 Score, Part 1 [16-bit]
//        Multiply by 65536, add to 0x82a8
// $82A8: P2 Score, Part 2 [16-bit]
//        Multiply by 1, add to 0x82a6

function p1_score() => word(0x820c) + (word(0x820a) * 65536)
function p2_score() => word(0x82a8) + (word(0x82a6) * 65536)

// $821E: P1 current colour [8-bit]
//        0x00 = Blue
//        0x01 = Red
//        0x02 = Yellow
//        0x03 = Green
//        0x04 = Purple
//        0x05 = Orange
//        0x06 = Black
//        0x07 = White
//        0x08 = Dead black (after losing)
// $82BA: P2 current colour [8-bit]
//        0x00 = Blue
//        0x01 = Red
//        0x02 = Yellow
//        0x03 = Green
//        0x04 = Purple
//        0x05 = Orange
//        0x06 = Black
//        0x07 = White
//        0x08 = Dead black (after losing)

function p1_lose() => prev(byte(0x821e)) < 8 && byte(0x821e) == 8
function p2_lose() => prev(byte(0x82ba)) < 8 && byte(0x82ba) == 8
function p1_retry_after_loss() => prev(byte(0x821e)) == 8 && byte(0x821e) == 0

// $FE30: Unibios [32-bit]
//        0x00000000 = No Unibios
//        0x80025632 = Unibios

function no_unibios() => dword(0xfe30) == 0

// $FEC4: Attract Mode (MVS) [8-bit]
//        0x00 = Attract Mode
//        0x01 = Coin inserted, player active

function attract_mode() => byte(0xfec4) == 0

// $0000: Region [8-bit]
//        0x01 = Japan
//        0x02 = USA
//        0x04 = Europe
// $1078: Game mode [8-bit]
//        0x00 = 1P mode
//        0x01 = 2P Vs.
//        Flickers other values during demo transitions, and stays on 0x01 after the 2P Vs. demo
// $14B2: Continue Timer (seems to be used for other things too)
// $2272: Round number/Stage layout [8-bit]
//        0x00 to 0x1d = Round 1 to 30
//        0x1e = End screen
//        0xff = Tutorial demo, 2P Vs. demo
//        Editing changes the actual stage loaded in next stage
//        Editing to 0x1d early and transitioning to 0x1e loads an unused stage similar to stage 2, instead of loading the end screen
// $81FE: Another round number [8-bit]
//        Does not change to 0x1e at the end screen
// $FDDB: Title screen: Time left after inserting coin [8-bit]

// ------------
// Achievements
// ------------

function achievement_progress(id, title, description, points, round_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = no_unibios() &&
                  difficulty_normal() &&
                  __ornext(p1_active() || p2_active()) &&
                  round_trans(round_param)
    )
}

achievement_progress(60640, "Five Jives", "Beat Round 5 (Difficulty Level-4 / Normal or higher)", points=5, round_param=5)
achievement_progress(60641, "Adventures of Tenten", "Beat Round 10 (Difficulty Level-4 / Normal or higher)", points=5, round_param=10)
achievement_progress(60642, "Round 15 (Betcha Thought This Was Going to be a Pun, Didn't Ya?)", "Beat Round 15 (Difficulty Level-4 / Normal or higher)", points=5, round_param=15)
achievement_progress(60643, "Adventure of Tenten #2", "Beat Round 20 (Difficulty Level-4 / Normal or higher)", points=10, round_param=20)
achievement_progress(60644, "Space Oddity", "Beat Round 25 (Difficulty Level-4 / Normal or higher)", points=10, round_param=25)
achievement_progress(60645, "Back on Earth", "Beat Round 28 (Difficulty Level-4 / Normal or higher)", points=10, round_param=28)
achievement_progress(60646, "That's All Folks", "Beat the game (Difficulty Level-4 / Normal or higher). You're done here, go home. Talk to me after a 1 credit run", points=25, round_param=30)

function achievement_score(id, title, description, points, score_target, score_min) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = no_unibios() &&
                  difficulty_normal() &&
                  never(vs_mode()) &&
                  never(players_inactive()) &&
                  (
                    (once(p1_score() == 0 && p1_become_active()) && prev(p1_score()) > score_min && prev(p1_score()) < score_target && p1_score() >= score_target) ||
                    (once(p2_score() == 0 && p2_become_active()) && prev(p2_score()) > score_min && prev(p2_score()) < score_target && p2_score() >= score_target)
                  )
    )
}

achievement_score(60636, "100 Grand Bar", "Score 100,000 points (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=5, score_target=100000, score_min=250)
achievement_score(60637, "500 Grand Bar", "Score 500,000 points (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=10, score_target=500000, score_min=250)
achievement_score(60635, "Million Dollar Bash", "Score 1,000,000 points (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=10, score_target=1000000, score_min=200)
achievement_score(60638, "Threeper Creepers", "Score 3,000,000 points (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=25, score_target=3000000, score_min=750000)
//achievement_score(60639, "Streets of Fiver", "Score 5,000,000 points (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=25, score_target=5000000, score_min=2500000)

achievement(
    id = 60639,
    title = "Streets of Fiver",
    description = "Score 5,000,000 points (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode",
    points = 25,
    trigger = no_unibios() &&
              difficulty_normal() &&
              never(vs_mode()) &&
              never(players_inactive()) &&
              never(end_screen()) &&
              (
                (once(p1_score() == 0 && p1_become_active()) && trigger_when(prev(p1_score()) > 2500000 && prev(p1_score()) < 5000000 && p1_score() >= 5000000)) ||
                (once(p2_score() == 0 && p2_become_active()) && trigger_when(prev(p2_score()) > 2500000 && prev(p2_score()) < 5000000 && p2_score() >= 5000000))
              )
)

function achievement_1cc(id, title, description, points, round_param) {
    achievement(
        id = id,
        title = title,
        description = description,
        points = points,
        trigger = no_unibios() &&
                  difficulty_normal() &&
                  trigger_when(round_trans(round_param)) &&
                  never(p1_lose()) &&
                  never(p2_lose()) &&
                  never(vs_mode()) &&
                  never(players_inactive()) &&
                  (
                    (once(round() == 0 && p1_become_active())) ||
                    (once(round() == 0 && p2_become_active()))
                  )
    )
}

achievement_1cc(60647, "You Want a Medal or Something?", "Starting from Round 1, beat Round 15 on 1 credit (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=25, round_param=15)
achievement_1cc(60649, "The Dark Souls of Puzzle Games", "Starting from Round 1, beat the game on 1 credit (Difficulty Level-4 / Normal or higher). Do not enter 2P Versus Mode", points=50, round_param=30)

// ----------
// Unofficial
// ----------

achievement(
    title = "Temporary Test", points = 1,
    description = "Get 100,000 Points",
    id = 62488, badge = "00080", published = "2018-07-17 8:59:18 PM", modified = "2018-07-17 11:25:55 PM",
    trigger = never(dword(0x00FE30) != 0) && never(word(0x00820A) == 0) && never(word(0x00820C) == 0) &&
              ((word(0x00820A) == 1 && word(0x00820C) >= 34464) ||
               (word(0x00820A) >= 2 && word(0x00820A) <= 18))
)

// ------------
// Leaderboards
// ------------

leaderboard(
    title = "High Score",
    description = "Starts after beginning a Round with score 0 (Difficulty Level-4 / Normal or higher). Submits after losing or beating the game. Do not enter 2P Versus Mode",
    start = no_unibios() &&
            difficulty() >= 3 &&
            (
              (p1_score() == 0 && p1_become_active()) ||
              (p2_score() == 0 && p2_become_active())
            ),
    cancel = __ornext(vs_mode() || players_inactive()),
    submit = always_true() &&
             (
               (p1_active() && p1_score() > 0 && p1_lose()) ||
               (p2_active() && p2_score() > 0 && p2_lose()) ||
               (p1_active() && p1_score() > 0 && beat_game()) ||
               (p2_active() && p2_score() > 0 && beat_game()) ||
               (p1_score() > 0 && p2_enters_p1_game()) ||
               (p2_score() > 0 && p1_enters_p2_game())
             ),
    value = max_of(measured(p1_score(), when=p1_active() || p2_in_p1_game()),
                   measured(p2_score(), when=p2_active() || p1_in_p2_game())),
    format = "VALUE"
)

// To be hidden
leaderboard(
    id = 3919, title = "Scoreboard",
    description = "Scoreboard",
    start  = word(0x0021C0) == 1 && word(0x002270) == 0 && word(0x002272) == 0 && word(0x00820A) == 0 && word(0x00820C)
              == 0,
    cancel = word(0x0021C0) == 0 && word(0x0021C1) == 0 && word(0x0014B2) == 0,
    submit = word(0x0021C0) == 0 && word(0x0021C1) == 0 && word(0x0014B2) == 0,
    value = word(0x00820A) + word(0x00820C),
    format = "SCORE"
)

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    mvs_mode() && p1_active() && round() == 0x1e,
    "Cleared All Rounds!! Score: {0} | MVS: Level-{1} Difficulty",
    rich_presence_value("P1Score", p1_score()),
    rich_presence_value("Difficulty", difficulty() + 1)
)

rich_presence_conditional_display(
    mvs_mode() && p2_active() && round() == 0x1e,
    "Cleared All Rounds!! Score: {0} | MVS: Level-{1} Difficulty",
    rich_presence_value("P2Score", p2_score()),
    rich_presence_value("Difficulty", difficulty() + 1)
)

rich_presence_conditional_display(
    aes_mode() && p1_active() && round() == 0x1e,
    "Cleared All Rounds!! Score: {0} | AES: {1} Difficulty | Credits: {2}",
    rich_presence_value("P1Score", p1_score()),
    rich_presence_lookup("DifficultyLookupAES", difficulty(), aes_difficulty_dict),
    rich_presence_value("P1CreditsAES", credits_aes_p1())
)

rich_presence_conditional_display(
    aes_mode() && p2_active() && round() == 0x1e,
    "Cleared All Rounds!! Score: {0} | AES: {1} Difficulty | Credits: {2}",
    rich_presence_value("P2Score", p2_score()),
    rich_presence_lookup("DifficultyLookupAES", difficulty(), aes_difficulty_dict),
    rich_presence_value("P2CreditsAES", credits_aes_p2())
)

rich_presence_conditional_display(
    mvs_mode() && p1_active(),
    "Round {0} | Score: {1} | MVS: Level-{2} Difficulty",
    rich_presence_value("Round", round() + 1),
    rich_presence_value("P1Score", p1_score()),
    rich_presence_value("Difficulty", difficulty() + 1)
)

rich_presence_conditional_display(
    mvs_mode() && p2_active(),
    "Round {0} | Score: {1} | MVS: Level-{2} Difficulty",
    rich_presence_value("Round", round() + 1),
    rich_presence_value("P2Score", p2_score()),
    rich_presence_value("Difficulty", difficulty() + 1)
)

rich_presence_conditional_display(
    aes_mode() && p1_active(),
    "Round {0} | Score: {1} | AES: {2} Difficulty | Credits: {3}",
    rich_presence_value("Round", round() + 1),
    rich_presence_value("P1Score", p1_score()),
    rich_presence_lookup("DifficultyLookupAES", difficulty(), aes_difficulty_dict),
    rich_presence_value("P1CreditsAES", credits_aes_p1())
)

rich_presence_conditional_display(
    aes_mode() && p2_active(),
    "Round {0} | Score: {1} | AES: {2} Difficulty | Credits: {3}",
    rich_presence_value("Round", round() + 1),
    rich_presence_value("P2Score", p2_score()),
    rich_presence_lookup("DifficultyLookupAES", difficulty(), aes_difficulty_dict),
    rich_presence_value("P2CreditsAES", credits_aes_p2())
)

rich_presence_conditional_display(
    mvs_mode() && vs_mode(),
    "2P Versus Mode | P1 Score: {0} | P2 Score: {1} | MVS: Level-{2} Difficulty",
    rich_presence_value("P1Score", p1_score()),
    rich_presence_value("P2Score", p2_score()),
    rich_presence_value("Difficulty", difficulty() + 1)
)

rich_presence_conditional_display(
    aes_mode() && vs_mode(),
    "2P Versus Mode | P1 Score: {0} | P2 Score: {1} | AES: {2} Difficulty",
    rich_presence_value("P1Score", p1_score()),
    rich_presence_value("P2Score", p2_score()),
    rich_presence_lookup("DifficultyLookupAES", difficulty(), aes_difficulty_dict)
)

rich_presence_conditional_display(
    mvs_mode() && attract_mode(),
    "Attract Mode"
)

rich_presence_display(
    "Playing Puzzle Bobble | Bust-A-Move"
)