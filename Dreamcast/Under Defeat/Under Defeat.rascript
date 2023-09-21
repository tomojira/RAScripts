// Under Defeat
// #ID = 10831

// $16E3C0: Credits Left
// $16E3E0: [Settings] Free Play
// $16E3E4: [Settings] Difficulty
// $16E3E5: [Settings] Player Stock
// $16E3E6: [Settings] Screen Mode
// $16E3E7: [Settings] Control Rotation
// $16E3F6: [Settings] Wallpaper
// $16E744: Total Playtime in seconds (Hex, 32-bit)
//          8h enables free play
// $16E748: [Settings] Practice Mode Difficulty
// $16E749: [Settings] Practice Player Stock
// $16E74A: [Settings] Practice - Stage Selection
// $16E74B: [Settings] Practice - Area Selection
// $16E74C: [Settings] Rank Offset
// $16E74D: [Settings] Option 1P
// $16E74E: [Settings] Option 2P
// $16E74F: Stage ID (doesn't change during credits)
//          0x00-0x04=Loop 1
//          0x05-0x09=Loop 2

// $16E758: Some kind of internal timer (32-bit)
//          Each real time second +60 in hex
//          Seems the best option for an ingame check. Covers all game modes, doesn't activate on replays/demo, resets to zero on manua lgame exit, no continue and game ending.

function internal_timer() => dword(0x16e758)

// $16E768: stage frame counter (16bit)

function stage_frame_counter() => word(0x16e768)

// $16E76C: stage frame counter (16bit) - mirrored
// $16F054: 00=Ingame, Replay
//          01=Main Menu, Pause, Continue Screen...

// $16F05C: 0x01=Replay/Demo

function replay_or_demo() => byte(0x16f05c)

// $16F18C: 0xb5=boss dies
//          0xb4-0xb5=flickers briefly during boss dying scene, sets to 0x00 again at the start of the next stage

function boss_dies() => byte(0x16f18c)

// $16F20C: Top score
// $16F212: Current Boss - Current HP (16-bit)
// $16F216: Current Boss - Max HP (16-bit)
// $16F218: Boss Timer (Hex, 16 bits)
//          value 0xe10=3600frames=60s
// $16F21A: Estimate Enemy Casualty (hex, 16-bit)
//          Bottom value during Endstage screen
// $16F21C: something related to kills? combos?
// $16F220: Contribution Percentage Target
//          (This is the minimum required to get 100%)
// $16F222: Contribution Percentage Current

// $16F226: Difficulty

function difficulty() => byte(0x16f226)

// $16F228: Stage (0x00-0x09)
//          0x0a=loop 1 complete
//          0x0b=loop 2 complete

function stage() => byte(0x16f228)

// $16F229: Stage Area

function stage_area() => byte(0x16f229)

// $16F237: 0x00=Demo/Replay or Playing Arcade/Practice
//          0x01=Exiting an Arcade game
//          0x02=Exiting a Practice game
// $16F244: main menu = 1
//          ingame = 0
//          (doesn't reset after exiting practice mode)
// $16F248: P1 Score (32-bit)
// $16F24C: [Settings] Control Mode
//          0x00=Normal
//          0x01=Reverse
// $16F24D: P1 Lives (0x00=Game Over)
// $16F24E: P1 Bombs
// $16F24F: Option Type:
//          0x00=Vulcan
//          0x01=Cannon
//          0x02=Rocket

// $16F254: 2P Game

function p2_game() => byte(0x16f254)

// $16F258: 1P Game

function p1_game() => byte(0x16f258)

// $16F25C: P2 Score (32-bit)
// $16F261: P2 Lives
// $16F262: P2 Bombs
// $16F264: 0x01=player is alive
//          0x00=player dead or briefly at start of level
// $16F268: 0x01=option deployed
// $16F30A: Option Bar (0x00-0x80)
// $16F693: Hud: Play Time X0 Hours
// $16F694: Hud: Play Time X Hours
// $16F696: Hud: Play Time X0 Minutes
// $16F697: Hud: Play Time X Minutes
// $16F699: Hud: Play Time X0 Seconds
// $16F69A: Hud: Play Time X Seconds
// $173B80: 0x01=paused
// $9AFABA: Option Bar

optLookup = {
    0x00: "Vulcan",
    0x01: "Cannon",
    0x02: "Rocket",
}

stgLookup = {
    0x00: "1-1",
    0x01: "1-2",
    0x02: "1-3",
    0x03: "1-4",
    0x04: "1-5",
    0x05: "2-1",
    0x06: "2-2",
    0x07: "2-3",
    0x08: "2-4",
    0x09: "2-5",
}

stage_name_dict = {
    0: "Bridgehead",
    1: "Battleship",
    2: "Front Line",
    3: "Fortress",
    4: "Graveyard"
}

difLookup = {
    0x00: "Easy",
    0x01: "Normal",
    0x02: "Hard",
}

function achievement_progress(points, stage_param) {
    achievement(
        title = format("Rookie: {0}", stage_name_dict[stage_param]),
        description = format("Start the 1st loop and complete Stage 1-{0}.", stage_param + 1),
        points = points,
        trigger = once(stage() == 0 &&
                       stage_area() == 0 &&
                       prev(stage_frame_counter()) == 0 &&
                       stage_frame_counter() > 0) &&
                  never(internal_timer() == 0) &&
                  never(replay_or_demo() != 0) &&
                  never(p2_game() != 0) &&
                  never(p1_game() != 1) &&
                  difficulty() >= 1 &&
                  stage() == stage_param &&
                  boss_dies() == 0xb5 &&
                  prev(boss_dies()) != 0xb5
    )
}

achievement_progress(points=1, stage_param=0)
achievement_progress(points=2, stage_param=1)
achievement_progress(points=3, stage_param=2)
achievement_progress(points=4, stage_param=3)
achievement_progress(points=5, stage_param=4)

achievement(
    title = "Mission: Bridgehead", points = 3,
    description = "Start the 1st loop and complete Stage 1-1 dying 15 times or less.",
    id = 189641, badge = "210567", published = "2021-12-28 9:32:37 AM", modified = "2022-02-20 7:56:27 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 0 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Mission: Battleship", points = 3,
    description = "Start the 1st loop and complete Stage 1-2 dying 15 times or less.",
    id = 189642, badge = "210568", published = "2021-12-28 9:32:37 AM", modified = "2022-02-20 7:56:27 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 1 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Mission: Front Line", points = 5,
    description = "Start the 1st loop and complete Stage 1-3 dying 15 times or less.",
    id = 189643, badge = "210569", published = "2021-12-28 9:32:37 AM", modified = "2022-02-20 7:56:27 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 2 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Mission: Fortress", points = 5,
    description = "Start the 1st loop and complete Stage 1-4 dying 15 times or less.",
    id = 189644, badge = "210570", published = "2021-12-28 9:32:38 AM", modified = "2022-02-20 7:56:28 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 3 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Mission: Graveyard", points = 5,
    description = "Start the 1st loop and complete Stage 1-5 dying 15 times or less.",
    id = 189645, badge = "210571", published = "2021-12-28 9:32:38 AM", modified = "2022-02-20 7:56:28 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 4 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Mission: Another Bridgehead", points = 3,
    description = "Start the 2nd loop and complete Stage 2-1 dying 15 times or less.",
    id = 189646, badge = "210572", published = "2021-12-28 9:32:38 AM", modified = "2022-02-20 7:56:28 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 5 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Mission: Another Battleship", points = 3,
    description = "Start the 2nd loop and complete Stage 2-2 dying 15 times or less.",
    id = 189647, badge = "210573", published = "2021-12-28 9:32:39 AM", modified = "2022-02-20 7:56:29 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 6 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Mission: Another Front Line", points = 5,
    description = "Start the 2nd loop and complete Stage 2-3 dying 15 times or less.",
    id = 189648, badge = "210574", published = "2021-12-28 9:32:39 AM", modified = "2022-02-20 7:56:29 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 7 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Mission: Another Fortress", points = 5,
    description = "Start the 2nd loop and complete Stage 2-4 dying 15 times or less.",
    id = 189649, badge = "210575", published = "2021-12-28 9:32:39 AM", modified = "2022-02-20 7:56:29 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 8 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Mission: Another Graveyard", points = 5,
    description = "Start the 2nd loop and complete Stage 2-5 dying 15 times or less.",
    id = 189650, badge = "210576", published = "2021-12-28 9:32:40 AM", modified = "2022-02-20 7:56:30 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 9 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Operation: Twin Tiger", points = 25,
    description = "Start the 1st loop and complete Stage 1-5 dying 3 times or less.",
    id = 189651, badge = "210577", published = "2021-12-28 9:32:40 AM", modified = "2022-02-20 7:56:30 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 4 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(4, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Operation: Twin Cobra", points = 25,
    description = "Start the 2nd loop and complete Stage 2-5 dying 3 times or less.",
    id = 189652, badge = "210578", published = "2021-12-28 9:32:40 AM", modified = "2022-02-20 7:56:30 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 9 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(4, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Operation: Metal Black", points = 50,
    description = "Start the 1st loop and complete Stage 1-5 dying 3 times or less, on Hard.",
    id = 189653, badge = "210579", published = "2021-12-28 9:32:41 AM", modified = "2022-02-20 7:56:31 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) == 2 && (byte(0x16F228) == 4 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(4, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Operation: Border Down", points = 50,
    description = "Start the 2nd loop and complete Stage 2-5 dying 3 times or less, on Hard.",
    id = 189654, badge = "210580", published = "2021-12-28 9:32:41 AM", modified = "2022-02-20 7:56:31 AM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) == 2 && (byte(0x16F228) == 9 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(4, byte(0x16F24D) < prev(byte(0x16F24D)) &&
               never(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0)))
)

achievement(
    title = "Operation: Above Defeat", points = 50,
    description = "Start the 1st loop and complete Stage 2-5 in the same game dying 15 times or less (>95% average contribution to advance loop).",
    id = 189678, badge = "210601", published = "2021-12-28 10:27:59 AM", modified = "2022-02-20 7:56:31 AM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (byte(0x16F228) == 9 && byte(0x16F18C) == 181 &&
               prev(byte(0x16F18C)) != 181) && never(repeated(16, byte(0x16F24D) < prev(byte(0x16F24D))))
)

achievement(
    title = "Target: Aerial Heavy Tank ''Winchester''", points = 5,
    description = "Defeat the boss in 1-1 with >25 seconds left. No deaths or bombs allowed.",
    id = 189655, badge = "210581", published = "2021-12-28 9:32:41 AM", modified = "2022-02-14 5:18:11 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 0)
)

achievement(
    title = "Target: Mauser-class Battleship ''Bordeaux''", points = 5,
    description = "Defeat the boss in 1-2 with >25 seconds left. No deaths or bombs allowed.",
    id = 189656, badge = "210582", published = "2021-12-28 9:32:42 AM", modified = "2022-02-14 5:18:11 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 1)
)

achievement(
    title = "Target: New-Type Aerial Heavy Tank ''Springfield''", points = 10,
    description = "Defeat the boss in 1-3 with >40 seconds left. No deaths or bombs allowed.",
    id = 189657, badge = "210583", published = "2021-12-28 9:32:42 AM", modified = "2022-02-14 5:18:11 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 2)
)

achievement(
    title = "Target: Assault Control Tower", points = 10,
    description = "Defeat the boss in 1-4 with >40 seconds left. No deaths or bombs allowed.",
    id = 189658, badge = "210584", published = "2021-12-28 9:32:42 AM", modified = "2022-02-14 5:18:12 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 3)
)

achievement(
    title = "Target: Self-Propelled Fortress ''Braun''", points = 25,
    description = "Defeat the boss in 1-5 with >25 seconds left. No deaths or bombs allowed.",
    id = 189659, badge = "210585", published = "2021-12-28 9:32:43 AM", modified = "2022-02-14 5:18:12 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 4)
)

achievement(
    title = "Target: Aerial Heavy Tank ''Winchester'' mk.II", points = 5,
    description = "Defeat the boss in 2-1 with >25 seconds left. No deaths or bombs allowed.",
    id = 189660, badge = "210586", published = "2021-12-28 9:32:43 AM", modified = "2022-02-14 5:18:12 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 5)
)

achievement(
    title = "Target: Mauser-class Battleship ''Bordeaux'' mk.II", points = 5,
    description = "Defeat the boss in 2-2 with >25 seconds left. No deaths or bombs allowed.",
    id = 189661, badge = "210587", published = "2021-12-28 9:32:43 AM", modified = "2022-02-14 5:18:13 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 6)
)

achievement(
    title = "Target: New-Type Aerial Heavy Tank ''Springfield'' mk.II", points = 10,
    description = "Defeat the boss in 2-3 with >40 seconds left. No deaths or bombs allowed.",
    id = 189662, badge = "210588", published = "2021-12-28 9:32:44 AM", modified = "2022-02-14 5:18:13 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 7)
)

achievement(
    title = "Target: Assault Control Tower mk.II", points = 10,
    description = "Defeat the boss in 2-4 with >40 seconds left. No deaths or bombs allowed.",
    id = 189663, badge = "210589", published = "2021-12-28 9:32:44 AM", modified = "2022-02-14 5:18:13 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 8)
)

achievement(
    title = "Target: Self-Propelled Fortress ''Braun'' mk.II", points = 25,
    description = "Defeat the boss in 2-5 with >25 seconds left. No deaths or bombs allowed.",
    id = 189664, badge = "210590", published = "2021-12-28 9:32:44 AM", modified = "2022-02-14 5:18:14 AM",
    trigger = once(prev(word(0x16F218)) == 0 && word(0x16F218) > 0) && never(dword(0x16E758) == 0) && 
              never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && byte(0x16F226)
               >= 1 && trigger_when((prev(byte(0x16F18C)) == 0 && byte(0x16F18C) == 181)) && never(byte(0x16F24D) <
               prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && never(word(0x16F218) < 1500) && 
              never(byte(0x16F228) != 9)
)

achievement(
    title = "Ace: Bridgehead", points = 5,
    description = "From the start of 1-1, reach the boss without dying or using bombs.",
    id = 189631, badge = "210557", published = "2021-12-28 9:32:33 AM", modified = "2022-04-25 4:59:59 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 0)
)

achievement(
    title = "Ace: Battleship", points = 10,
    description = "From the start of 1-2, reach the boss without dying or using bombs.",
    id = 189632, badge = "210558", published = "2021-12-28 9:32:34 AM", modified = "2022-04-25 5:00:00 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 1)
)

achievement(
    title = "Ace: Front Line", points = 10,
    description = "From the start of 1-3, reach the boss without dying or using bombs.",
    id = 189633, badge = "210559", published = "2021-12-28 9:32:34 AM", modified = "2022-04-25 5:00:00 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 2)
)

achievement(
    title = "Ace: Fortress", points = 25,
    description = "From the start of 1-4, reach the boss without dying or using bombs.",
    id = 189634, badge = "210560", published = "2021-12-28 9:32:34 AM", modified = "2022-04-25 5:00:00 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 3)
)

achievement(
    title = "Ace: Graveyard", points = 25,
    description = "From the start of 1-5, reach the boss without dying or using bombs.",
    id = 189635, badge = "210561", published = "2021-12-28 9:32:35 AM", modified = "2022-04-25 5:00:01 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 4)
)

achievement(
    title = "Ace: Bridgehead Again", points = 5,
    description = "From the start of 2-1, reach the boss without dying or using bombs.",
    id = 189636, badge = "210562", published = "2021-12-28 9:32:35 AM", modified = "2022-04-25 5:00:01 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 5)
)

achievement(
    title = "Ace: Battleship Again", points = 10,
    description = "From the start of 2-2, reach the boss without dying or using bombs.",
    id = 189637, badge = "210563", published = "2021-12-28 9:32:35 AM", modified = "2022-04-25 5:00:01 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 6)
)

achievement(
    title = "Ace: Front Line Again", points = 10,
    description = "From the start of 2-3, reach the boss without dying or using bombs.",
    id = 189638, badge = "210564", published = "2021-12-28 9:32:36 AM", modified = "2022-04-25 5:00:02 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 7)
)

achievement(
    title = "Ace: Fortress Again", points = 25,
    description = "From the start of 2-4, reach the boss without dying or using bombs.",
    id = 189639, badge = "210565", published = "2021-12-28 9:32:36 AM", modified = "2022-04-25 5:00:02 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 8)
)

achievement(
    title = "Ace: Graveyard Again", points = 25,
    description = "From the start of 2-5, reach the boss without dying or using bombs.",
    id = 189640, badge = "210566", published = "2021-12-28 9:32:36 AM", modified = "2022-04-25 5:00:02 AM",
    trigger = once(byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && never(dword(0x16E758) ==
               0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && never(byte(0x16F258) != 1) && 
              byte(0x16F226) >= 1 && trigger_when((prev(word(0x16F212)) == 0 && word(0x16F212) > 0)) && 
              never(byte(0x16F24D) < prev(byte(0x16F24D))) && never(byte(0x16F24E) < prev(byte(0x16F24E))) && 
              never(byte(0x16F228) != 9)
)

achievement(
    title = "Gunner: Vulcan Expert", points = 5,
    description = "Deploy 20 Vulcan options in a single life.",
    id = 189665, badge = "210591", published = "2021-12-28 9:32:45 AM", modified = "2022-02-15 6:44:29 AM",
    trigger = never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && measured(repeated(20, byte(0x16F24F) == 0 &&
               prev(byte(0x16F268)) == 0 && byte(0x16F268) == 1)) && never(byte(0x16F24D) < prev(byte(0x16F24D)))
)

achievement(
    title = "Gunner: Cannon Expert", points = 5,
    description = "Deploy 20 Cannon options in a single life.",
    id = 189666, badge = "210592", published = "2021-12-28 9:32:45 AM", modified = "2022-02-15 6:44:30 AM",
    trigger = never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && measured(repeated(20, byte(0x16F24F) == 1 &&
               prev(byte(0x16F268)) == 0 && byte(0x16F268) == 1)) && never(byte(0x16F24D) < prev(byte(0x16F24D)))
)

achievement(
    title = "Gunner: Rocket Expert", points = 10,
    description = "Deploy 20 Rocket options in a single life.",
    id = 189667, badge = "210593", published = "2021-12-28 9:32:46 AM", modified = "2022-02-15 6:44:30 AM",
    trigger = never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && measured(repeated(20, byte(0x16F24F) == 2 &&
               prev(byte(0x16F268)) == 0 && byte(0x16F268) == 1)) && never(byte(0x16F24D) < prev(byte(0x16F24D)))
)

achievement(
    title = "Score: Bronze Medal", points = 3,
    description = "Start the 1st loop and reach 100k points before using a continue.",
    id = 189668, badge = "210594", published = "2021-12-28 9:32:46 AM", modified = "2022-01-30 6:09:28 PM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (prev(dword(0x16F248)) < 100000 && dword(0x16F248) >=
               100000) && never(byte(0x16F24D) == 0)
)

achievement(
    title = "Score: Silver Medal", points = 10,
    description = "Start the 1st loop and reach 300k points before using a continue.",
    id = 189669, badge = "210595", published = "2021-12-28 9:32:46 AM", modified = "2022-01-30 6:09:28 PM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (prev(dword(0x16F248)) < 300000 && dword(0x16F248) >=
               300000) && never(byte(0x16F24D) == 0)
)

achievement(
    title = "Score: Gold Medal", points = 25,
    description = "Start the 1st loop and reach 500k points before using a continue.",
    id = 189670, badge = "210596", published = "2021-12-28 9:32:47 AM", modified = "2022-01-30 6:09:28 PM",
    trigger = once(byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (prev(dword(0x16F248)) < 500000 && dword(0x16F248) >=
               500000) && never(byte(0x16F24D) == 0)
)

achievement(
    title = "Score: Great Bronze Medal", points = 4,
    description = "Start the 2nd loop and reach 100k points before using a continue.",
    id = 189671, badge = "210597", published = "2021-12-28 9:32:47 AM", modified = "2022-01-30 6:09:29 PM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (prev(dword(0x16F248)) < 100000 && dword(0x16F248) >=
               100000) && never(byte(0x16F24D) == 0)
)

achievement(
    title = "Score: Great Silver Medal", points = 10,
    description = "Start the 2nd loop and reach 300k points before using a continue.",
    id = 189672, badge = "210598", published = "2021-12-28 9:32:47 AM", modified = "2022-01-30 6:09:29 PM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (prev(dword(0x16F248)) < 300000 && dword(0x16F248) >=
               300000) && never(byte(0x16F24D) == 0)
)

achievement(
    title = "Score: Great Gold Medal", points = 25,
    description = "Start the 2nd loop and reach 500k points before using a continue.",
    id = 189673, badge = "210599", published = "2021-12-28 9:32:48 AM", modified = "2022-01-30 6:09:29 PM",
    trigger = once(byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0) && 
              never(dword(0x16E758) == 0) && never(byte(0x16F05C) != 0) && never(byte(0x16F254) != 0) && 
              never(byte(0x16F258) != 1) && byte(0x16F226) >= 1 && (prev(dword(0x16F248)) < 500000 && dword(0x16F248) >=
               500000) && never(byte(0x16F24D) == 0)
)

achievement(
    title = "Honorable Discharge", points = 1,
    description = "Enter the menu screen, after unlocking Free Play.",
    id = 189674, badge = "210600", published = "2021-12-28 9:32:48 AM", modified = "2021-12-28 10:29:56 AM",
    trigger = dword(0x16E744) >= 28800 && dword(0x16E758) == 0
)

leaderboard(
    id = 29836, title = "Total Deaths",
    description = "Times you died in a single game.",
    start  = prev(dword(0x16E768)) < dword(0x16E768),
    cancel = ((dword(0x16E758) == 0) ||
              (byte(0x16F05C) != 0) ||
              (byte(0x16F254) != 0) ||
              (byte(0x16F258) != 1) ||
              (byte(0x16F226) == 0)),
    submit = always_false(),
    value = measured(byte(0x16F24D) < prev(byte(0x16F24D))),
    format = "VALUE"
)

leaderboard(
    id = 28544, title = "Top Score: Loop 1",
    description = "Highest score possible in a single life starting from 1-1 (Normal+ difficulty).",
    start  = byte(0x16F228) == 0 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0,
    cancel = ((dword(0x16E758) == 0) ||
              (byte(0x16F05C) != 0) ||
              (byte(0x16F254) != 0) ||
              (byte(0x16F258) != 1) ||
              (byte(0x16F226) == 0)),
    submit = prev(byte(0x16F24D)) > byte(0x16F24D),
    value = dword(0x16F248),
    format = "SCORE"
)

leaderboard(
    id = 28545, title = "Top Score: Loop 2",
    description = "Highest score possible in a single life starting from 2-1 (Normal+ difficulty).",
    start  = byte(0x16F228) == 5 && byte(0x16F229) == 0 && prev(word(0x16E768)) == 0 && word(0x16E768) > 0,
    cancel = ((dword(0x16E758) == 0) ||
              (byte(0x16F05C) != 0) ||
              (byte(0x16F254) != 0) ||
              (byte(0x16F258) != 1) ||
              (byte(0x16F226) == 0)),
    submit = prev(byte(0x16F24D)) > byte(0x16F24D),
    value = dword(0x16F248),
    format = "SCORE"
)

rich_presence_conditional_display(dword(0x16E758) == 0, "At the title screen. Let's Go!")

rich_presence_conditional_display(byte(0x16F254) == 1, "In a 2 player game. Achievements disabled.")

rich_presence_display("🚩Stage {0} on {1}. 💯Score: {2}.",
    rich_presence_lookup("stg", byte(0x16F228), stgLookup),
    rich_presence_lookup("dif", byte(0x16F226), difLookup),
    rich_presence_value("val", dword(0x16F248))
)
