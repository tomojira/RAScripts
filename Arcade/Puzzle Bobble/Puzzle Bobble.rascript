// Puzzle Bobble | Bust-A-Move [Neo-Geo MVS]
// #ID = 12247

// $14B2: Continue Timer (seems to be used for other things too)
// $21C0: Credit
//        
// $21C1: Credit
// $2270: Level Count
// $2272: Level Count
// $81FE: Level Count
// $820A: P1 Score (Part 1, 16-bit)
// $820C: P1 Score (Part 2, 16-bit)

RoundLookup = {
    0x0: "1",
    0x1: "2",
    0x2: "3",
    0x3: "4",
    0x4: "5",
    0x5: "6",
    0x6: "7",
    0x7: "8",
    0x8: "9",
    0x9: "10",
    0x10: "11",
    0x11: "12",
    0x12: "13",
    0x13: "14",
    0x14: "15",
    0x15: "16",
    0x16: "17",
    0x17: "18",
    0x18: "19",
    0x19: "20",
    0x20: "21",
    0x21: "22",
    0x22: "23",
    0x23: "24",
    0x24: "25",
    0x25: "26",
    0x26: "27",
    0x27: "28",
    0x28: "29",
    0x29: "30",
}

achievement(
    title = "100 Grand Bar", points = 5,
    description = "Get 100,000 Points",
    id = 60636, badge = "63706", published = "2018-05-28 3:02:25 AM", modified = "2021-12-12 6:42:05 PM",
    trigger = (word(0x00820A) * 65536 + word(0x00820C)) >= 100000 && (prev(word(0x00820A)) * 65536 +
               prev(word(0x00820C))) < 100000 && (prev(word(0x00820A)) * 65536 + prev(word(0x00820C))) > 250
)

achievement(
    title = "500 Grand Bar", points = 10,
    description = "Get 500,000 Points",
    id = 60637, badge = "63705", published = "2018-05-28 3:02:28 AM", modified = "2021-12-12 6:42:05 PM",
    trigger = (word(0x00820A) * 65536 + word(0x00820C)) >= 500000 && (prev(word(0x00820A)) * 65536 +
               prev(word(0x00820C))) < 500000 && (prev(word(0x00820A)) * 65536 + prev(word(0x00820C))) > 250
)

achievement(
    title = "Million Dollar Bash", points = 10,
    description = "Get 1 Million Points",
    id = 60635, badge = "63707", published = "2018-05-28 3:02:21 AM", modified = "2021-12-12 6:42:06 PM",
    trigger = (word(0x00820A) * 65536 + word(0x00820C)) >= 1000000 && (prev(word(0x00820A)) * 65536 +
               prev(word(0x00820C))) < 1000000 && (prev(word(0x00820A)) * 65536 + prev(word(0x00820C))) > 200
)

achievement(
    title = "Threeper Creepers", points = 25,
    description = "Get 3 Million Points",
    id = 60638, badge = "63709", published = "2018-05-28 3:02:31 AM", modified = "2021-12-12 6:42:06 PM",
    trigger = (word(0x00820A) * 65536 + word(0x00820C)) >= 3000000 && (prev(word(0x00820A)) * 65536 +
               prev(word(0x00820C))) < 3000000 && (prev(word(0x00820A)) * 65536 + prev(word(0x00820C))) > 750000
)

achievement(
    title = "Streets of Fiver", points = 25,
    description = "Get 5 Million Points",
    id = 60639, badge = "63708", published = "2018-05-28 3:02:38 AM", modified = "2021-12-12 6:42:06 PM",
    trigger = (word(0x00820A) * 65536 + word(0x00820C)) >= 5000000 && (prev(word(0x00820A)) * 65536 +
               prev(word(0x00820C))) < 5000000 && (prev(word(0x00820A)) * 65536 + prev(word(0x00820C))) > 2500000
)

achievement(
    title = "Five Jives", points = 5,
    description = "Beat Level 5",
    id = 60640, badge = "63879", published = "2018-05-28 3:02:41 AM", modified = "2018-05-30 7:25:03 PM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 5 && byte(0x002272) == 5 && byte(0x0081FE) == 5
)

achievement(
    title = "Adventures of Tenten", points = 5,
    description = "Beat Level 10",
    id = 60641, badge = "63880", published = "2018-05-28 3:02:44 AM", modified = "2021-03-01 3:17:57 AM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 10 && byte(0x002272) == 10 && byte(0x0081FE) == 10
)

achievement(
    title = "Level 15", points = 5,
    description = "Beat Level 15. Betcha Thought This Was Going to be a Pun, Didn't Ya?",
    id = 60642, badge = "63881", published = "2018-05-28 3:02:48 AM", modified = "2021-03-01 3:17:59 AM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 15 && byte(0x002272) == 15 && byte(0x0081FE) == 15
)

achievement(
    title = "Adventure of Tenten #2", points = 10,
    description = "Beat Level 20",
    id = 60643, badge = "63882", published = "2018-05-28 3:02:52 AM", modified = "2021-03-01 3:18:02 AM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 20 && byte(0x002272) == 20 && byte(0x0081FE) == 20
)

achievement(
    title = "Space Oddity", points = 10,
    description = "Reach Outer Space (Level 25)",
    id = 60644, badge = "63883", published = "2018-05-28 3:02:56 AM", modified = "2021-03-01 3:18:05 AM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 25 && byte(0x002272) == 25 && byte(0x0081FE) == 25
)

achievement(
    title = "Back on Earth", points = 10,
    description = "Back Home on Earth (Level 28)",
    id = 60645, badge = "63884", published = "2018-05-28 3:02:59 AM", modified = "2021-03-01 3:18:08 AM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 28 && byte(0x002272) == 28 && byte(0x0081FE) == 28
)

achievement(
    title = "Temporary Test", points = 1,
    description = "Get 100,000 Points",
    id = 62488, badge = "00080", published = "2018-07-17 8:59:18 PM", modified = "2018-07-17 11:25:55 PM",
    trigger = never(dword(0x00FE30) != 0) && never(word(0x00820A) == 0) && never(word(0x00820C) == 0) &&
              ((word(0x00820A) == 1 && word(0x00820C) >= 34464) ||
               (word(0x00820A) >= 2 && word(0x00820A) <= 18))
)

achievement(
    title = "You Want a Medal or Something?", points = 30,
    description = "Beat Level 15 With Only One Credit. ",
    id = 60647, badge = "63886", published = "2018-05-28 3:03:05 AM", modified = "2019-10-11 12:20:48 PM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) == 15 && byte(0x002272) == 15 && byte(0x0081FE) == 15 && 
              byte(0x0021C0) == 1 && byte(0x0021C1) == 1 && never(byte(0x0021C0) == 0) && never(byte(0x0021C1) == 0) && 
              never(byte(0x0021C0) > 1) && never(byte(0x0021C1) > 1)
)

achievement(
    title = "That's All Folks", points = 30,
    description = "Beat the Game. You're done here, go home. Talk to me after a 1 credit run",
    id = 60646, badge = "63885", published = "2018-05-28 3:03:02 AM", modified = "2018-06-01 10:59:11 PM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) >= 30 && byte(0x002272) >= 30 && byte(0x0081FE) >= 30
)

achievement(
    title = "The Dark Souls of Puzzle Games", points = 50,
    description = "Beat the Game with One Credit",
    id = 60649, badge = "63887", published = "2018-05-28 1:11:57 PM", modified = "2018-05-30 9:45:18 PM",
    trigger = never(dword(0x00FE30) != 0) && byte(0x002270) >= 30 && byte(0x002272) >= 30 && byte(0x0081FE) >= 30 && 
              byte(0x0021C0) == 1 && byte(0x0021C1) == 1 && byte(0x0021C0) == 0 && byte(0x0021C1) == 0 && 
              never(byte(0x0021C0) > 1) && never(byte(0x0021C1) > 1)
)

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

rich_presence_display("Round: {0}, Credits: {1}, Score: {2}",
    rich_presence_lookup("Round", word(0x002270), RoundLookup),
    rich_presence_value("Credits", low4(0x0021C0) + high4(0x0021C0) * 10),
    rich_presence_value("Score", low4(0x00820C) + high4(0x00820C) * 16 + low4(0x00820D) * 256 + high4(0x00820D) * 4096 + low4(0x00820A) * 65536 + high4(0x00820A) * 1048576 + low4(0x00820B) * 16777216 + high4(0x00820B) * 268435456)
)
