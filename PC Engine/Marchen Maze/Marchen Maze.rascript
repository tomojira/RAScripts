// Marchen Maze
// #ID = 19923

// $0617: Stage [8-bit]
//        0x00 = Title screen, flickers between stages
//        0x01 = Opening scene, level select, sound test
//        0x02 = Stage 1
//        0x03 = Stage 1 boss
//        0x04 = Stage 2
//        0x05 = Stage 2 boss
//        0x06 = Stage 3
//        0x07 = Stage 3 boss
//        0x08 = Stage 4
//        0x09 = Stage 4 boss
//        0x0a = Stage 5
//        0x0b = Stage 5 boss
//        0x0c = Stage 6
//        0x0d = Stage 6 boss
//        0x0e = Stage 7
//        0x0f = Stage 7 boss
//        0x10 = Stage 8
//        0x11 = Stage 8 boss
//        0x12 = Stage 9
//        0x13 = Stage 9 boss
//        0x14 = Ending
//        Can freeze to load a certain level
// $0619: Last Stage Loaded [8-bit]
//        0x00 = Title screen, opening scene, level select, sound test
//        0x02 = Stage 1
//        0x04 = Stage 2
//        0x06 = Stage 3
//        0x08 = Stage 4
//        0x0a = Stage 5
//        0x0c = Stage 6
//        0x0e = Stage 7
//        0x10 = Stage 8
//        0x12 = Stage 9
//        0x14 = Ending
//        Lingers after demo, into opening scene
//        Includes boss area with the rest of the stage
//        Doesn't flicker 0 between stages
// $061C: 0x01 = In-game
// $0625: Balloons [8-bit]
// $0627: 0x02 = Riding platform to boss area
// $074B: 0x01 = Player active
//        Inactive when dying or riding platform to boss area
// $0769: 0x01 = Invincibility active
// $18C0: Item Collected [8-bit]
//        Stage 1: Rabbit
//        Stage 2: Boots
//        Stage 3: Balloon
//        Stage 4: Green Crystal
//        Stage 5: Balloon
//        Stage 7: Boots
//        Stage 8: Balloon
//        Stage 9: Boots
// $18C1: Item Collected [8-bit]
//        Stage 1: Balloon
//        Stage 2: Blue Crystal
//        Stage 3: Purple Crystal
//        Stage 4: Purple Crystal
//        Stage 5: Blue Crystal
//        Stage 7: Purple Crystal
//        Stage 9: Balloon
// $18C2: Item Collected [8-bit]
//        Stage 3: Balloon
//        Stage 4: Black Crystal
//        Stage 7: Green Crystal
//        Stage 9: Balloon
// $18C3: Item Collected [8-bit]
//        Stage 3: Red Crystal
//        Stage 4: Balloon
//        Stage 7: Rabbit
//        Stage 9: Balloon
// $18C4: Item Collected [8-bit]
//        Stage 4: Black Crystal
// $1F89: Power-up
//        Bit0 = Red Crystal (spin and turbo fire)
//        Bit1 = Green Crystal (triple shot)
//        Bit2 = Blue Crystal (big projectiles)
//        Bit3 = Boots (high jump)
//        Bit4 = Rabbit (barrier)
//        Bit5 = Black Crystal (no ice physics)
//        Bit7 = Purple Crystal (speed)

stage = byte(0x617)
stage_alt = byte(0x619)
in_game = byte(0x61c)
balloons = byte(0x625)
platform_to_boss = byte(0x627)

item_address_array = range(0x18c0, 0x18c4)

power_up = 0x1f89

//
//
//

start_game =
    once(
        balloons == 2 &&
        prev(stage) < 2 &&
        stage == 2
    ) &&
    never(in_game == 0)

reach_platform_to_boss =
    prev(platform_to_boss) == 0 &&
    platform_to_boss == 2

function get_item_array(number) {
    item_array = []
    for i in range(0, number - 1) {
        array_push(item_array, byte(item_address_array[i]))
    }
    return item_array
}

purple_crystal = bit7(power_up)

//
//
//

stage_name_array = [
    "Candy Land",
    "Toy Land",
    "Green Land",
    "Ice Land",
    "Time Land",
    "Water Land",
    "Sky Land",
    "Mirror Land",
    "Queen Land"
]

stage_dict = {}

for i in range(0, 8) {
    stage_dict[(i + 1) * 2] = stage_name_array[i]
}

// ------------
// Achievements
// ------------

progress_array = [
    ["Menacing Mushrooms", 3],
    ["Don't Toy with Me", 3],
    ["Caterpillar's Coil", 5],
    ["Penguin Peril", 5],
    ["A Grin Without a Cat", 5],
    ["Raft Relay", 5],
    ["A Mob of Mad Hatters", 5],
    ["Alice's Reflection", 5],
    ["Heart of Darkness", 10]
]

for i in range(0, 8) {
    if (i < 8) {
        type_param = "PROGRESSION"
    }
    else {
        type_param = "WIN_CONDITION"
    }
    achievement(
        title = progress_array[i][0],
        description = 
            format(
                "Complete {0} without using cheats",
                stage_name_array[i]
            ),
        points = progress_array[i][1],
        type = type_param,
        trigger =
            disable_when(
                prev(balloons) <= 2 &&
                balloons == 0xa,
                until = in_game == 0
            ) &&
            prev(stage) == (i + 1) * 2 + 1 &&
            stage == (i + 2) * 2
    )
}

achievement(
    title = "Wonderland Marathon",
    description = "Starting from Candy Land, complete the game in one session without using cheats",
    points = 10,
    trigger =
        start_game &&
        prev(stage) == 0x13 &&
        stage == 0x14
)

// Title, description, points, number of items
collection_array = [
    ["Mysteries of Candy Land", "2 items", 1, 2],
    ["Mysteries of Toy Land", "2 items", 2, 2],
    ["Mysteries of Green Land", "4 items", 4, 4],
    ["Mysteries of Ice Land", "5 items", 5, 5],
    ["Mysteries of Time Land", "2 items", 1, 2],
    ["Mysteries of Sky Land", "4 items", 4, 4],
    ["Mysteries of Mirror Land", "1 item", 1, 1],
    ["Mysteries of Queen Land", "4 items", 2, 4]
]

for i in range(0, 7) {
    if (i < 5) {
        stage_param = i
    }
    else {
        stage_param = i + 1
    }
    achievement(
        title = collection_array[i][0],
        description =
            format(
                "Collect {0} in {1}",
                collection_array[i][1],
                stage_name_array[stage_param]
            ),
        points = collection_array[i][2],
        trigger =
            prev(sum_of(get_item_array(collection_array[i][3]), f => f)) == collection_array[i][3] - 1 &&
            measured(
                sum_of(get_item_array(collection_array[i][3]), f => f) == collection_array[i][3],
                when =
                    in_game == 1 &&
                    stage == (stage_param + 1) * 2
            )
    )
}

// Title, description: stage name, description: seconds, stage ID, frames
speedrun_array = [
    ["Slime Dodger", "Green Land", "22", 6, 1320],
    ["Slippery Speed", "Ice Land", "40", 8, 2400],
    ["Cloud Hopping", "Sky Land", "45", 0xe, 2700]
]

for i in range(0, 2) {
    achievement(
        title = speedrun_array[i][0],
        description =
            format(
                "After collecting the Purple Crystal in {0}, reach the exit in under {1} seconds without losing a balloon",
                speedrun_array[i][1],
                speedrun_array[i][2]
            ),
        points = 5,
        trigger =
            once(
                prev(purple_crystal) == 0 &&
                purple_crystal == 1
            ) &&
            unless(
                repeated(speedrun_array[i][4],
                    purple_crystal == 1
                )
            ) &&
            reach_platform_to_boss &&
            (
                (
                    always_false()
                ) ||
                (
                    never(in_game == 0) &&
                    never(stage != speedrun_array[i][3]) &&
                    never(purple_crystal == 0)
                )
            )
    )
}

// ------------
// Leaderboards
// ------------

leaderboard(
    title = "Most Balloons",
    description = "Starting from Candy Land, beat the game without using cheats",
    start =
        start_game &&
        prev(stage) == 0x13 &&
        stage == 0x14,
    cancel = always_false(),
    submit = always_true(),
    value = measured(balloons),
    format = "VALUE"
)

for i in range(0, 2) {
    leaderboard(
        title = speedrun_array[i][0],
        description =
            format(
                "After collecting the Purple Crystal in {0}, reach the exit quickly without losing a balloon",
                speedrun_array[i][1]
            ),
        start =
            in_game == 1 &&
            stage == speedrun_array[i][3] &&
            prev(purple_crystal) == 0 &&
            purple_crystal == 1,
        cancel =
            __ornext(
                in_game == 0 ||
                stage != speedrun_array[i][3] ||
                purple_crystal == 0
            ),
        submit =
            in_game == 1 &&
            stage == speedrun_array[i][3] &&
            reach_platform_to_boss,
        value = measured(always_true()),
        format = "FRAMES",
        lower_is_better = true
    )
}

// -------------
// Rich Presence
// -------------

rich_presence_conditional_display(
    in_game == 1 && stage_alt == 0x14,
    "Alice completed the game! Balloons: {0}",
    rich_presence_value("Balloons", balloons)
)

rich_presence_conditional_display(
    in_game == 1 && stage_alt >= 2 && stage != 1,
    "Alice is in {0} • Balloons: {1}",
    rich_presence_lookup("Stage", stage_alt, stage_dict),
    rich_presence_value("Balloons", balloons)
)

rich_presence_display(
    "Preparing to follow the white rabbit"
)