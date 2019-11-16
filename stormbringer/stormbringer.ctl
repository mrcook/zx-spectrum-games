> 23296 ; SkoolKit disassembly for Stormbringer (48k)
> 23296 ;
> 23296 ; Copyright (c) 2017 Philip M. Anderson (this disassembly)
> 23296 ; Copyright (c) 1987 David Jones / Mastertronic (Stormbringer)
> 23296 @start=37632
@ 23296 org
b 23296 Miscellaneous Data 1
B 23296,2,2 Temporary storage (e.g. scrolling graphics)
B 23298,1,1 Terrain Interaction Parameter Painting Bitmap for 2x2 block currently being drawn
b 23299 Temporary Storage Area for Background Graphics
B 23299,64,8
b 23363 Unused
B 23363,1,1
b 23364 Miscellaneous Data 2
B 23364,1,1 Unused (see trivia)
B 23365,1,1 Wish Pending Flag (index of last object (egg) dropped down the Wishing Well)
b 23366 Unused
B 23366,1,1
b 23367 Miscellaneous Data 3
B 23367,1,1 Character Is Incoming Flag
b 23368 Table of Glowing Attribute File Addresses
D 23368 Up to fifteen WORDs can be stored here. Each entry is an address in Attribute File and represents a character block on the screen that is glowing (e.g. area of floor that leads to lower floor, flames etc.)
W 23368,2,2 Glow 1
W 23370,2,2 Glow 2
W 23372,2,2 Glow 3
W 23374,2,2 Glow 4
W 23376,2,2 Glow 5
W 23378,2,2 Glow 6
W 23380,2,2 Glow 7
W 23382,2,2 Glow 8
W 23384,2,2 Glow 9
W 23386,2,2 Glow 10
W 23388,2,2 Glow 11
W 23390,2,2 Glow 12
W 23392,2,2 Glow 13
W 23394,2,2 Glow 14
W 23396,2,2 Glow 15
b 23398 Miscellaneous Data 4
D 23398 The following byte keeps track of the number of times the text printing routine calls itself, in printing common words as part of a higher-level string.
B 23398,1,1 Text Printing Routine Recursion Depth Counter
b 23399 Unused
B 23399,3,3
b 23402 Main Lever Flags
D 23402 Seven bits, each one corresponding to a Main Lever. The eighth bit is unused.
B 23402,1,1
b 23403 Off-White Knight Sent To Sleep Flag
D 23403 This value is normally either 0 or 255. A value of 255 indicates that Off-White Knight has had the Magic Missile thrown at him.
B 23403,1,1
b 23404 Miscellaneous Data 5
B 23404,1,1 x-coordinate of left edge of region to scroll (characters)
B 23405,1,1 x-coordinate of right edge of region to scroll (characters)
B 23406,1,1 y-coordinate of top of region to scroll (pixels)
B 23407,1,1 y-coordinate of bottom of region to scroll (pixels)
B 23408,1,1 x-coordinate of left edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23409,1,1 y-coordinate of top edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23410,1,1 x-coordinate of right edge (of frame, or of interior) of current window to draw (characters), x+1 for current graphic (room drawing)
B 23411,1,1 y-coordinate of bottom edge (of frame, or of interior) of current window to draw (characters), y+1 for current graphic (room drawing)
W 23412,2,2 Pointer to entry in Table of Display File Addresses for pixel row at Magic Knight's current y-coordinate
B 23414,1,1 Temporary store for Magic Knight's x-coordinate in characters
B 23415,1,1 Temporary store for Magic Knight's x-coordinate in characters (stored by instruction at #R61897 but otherwise unused)
B 23416,1,1 Temporary store for Magic Knight's y-coordinate in pixels (stored by instruction at #R61903 but otherwise unused)
B 23417,1,1 Magic Knight Facing Left Flag
B 23418,1,1 Temporary store for x-coordinate of left edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23419,1,1 Temporary store for y-coordinate of top edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23420,1,1 Temporary store for x-coordinate of right edge (of frame, or of interior) of current window to draw (characters), x+1 for current graphic (room drawing)
B 23421,1,1 Temporary store for y-coordinate of bottom edge (of frame, or of interior) of current window to draw (characters), y+1 for current graphic (room drawing)
b 23422 Table of Characters in Room of Interest
D 23422 List of characters in a particular room, as set by the routine at #R46408
B 23422,8,8
b 23430 Miscellaneous Data 6
B 23430,5,5 Storage space for ASCII string converted from numeric value
b 23435 Unused
B 23435,1,1
b 23436 Miscellaneous Data 7
B 23436,1,1 Compass Glow Update Flag (see trivia)
B 23437,1,1 Do Not Draw Axes Flag
B 23438,1,1 Current Disquise
B 23439,1,1 Robin Has Been Paid Flag
b 23440 Unused
B 23440,1,1
b 23441 Miscellaneous Data 8
B 23441,1,1 Redraw Magic Knight On Next Interrupt Flag
W 23442,2,2 Store for address of current position in Magic Knight's y-velocities sequence table at #R49019
B 23444,1,1 x-coordinate of graphic to draw
B 23445,1,1 y-coordinate of graphic to draw
B 23446,1,1 Bonus Score
W 23447,2,2 Store for address of graphic data
B 23449,1,1 Store for pixel row counter
b 23450 Vertical and Horizontal Mirror Flags
D 23450 Used by the routines at #R61214, #R61236, #R61267, #R61297, #R61336, #R61418 and #R61521 in graphic / room drawing. When the Vertical Mirror Flag is set, the graphic is reflected in a vertical mirror (i.e. left and right are swapped). When the Horizontal Mirror Flag is set, the graphic is reflected in a horizontal mirror (i.e. top and bottom are swapped).
B 23450,1,1
b 23451 Miscellaneous Data 9
B 23451,1,1 Magic Knight's temporary movement flags
B 23452,1,1 Drawing Layout Data Fragment Flag
B 23453,2,2 Temporary store for current position in room layout data (fragment drawing)
B 23455,1,1 Index of character whose turn it is to be updated
B 23456,1,1 Initial y-coordinate of top of hand cursor relative to current window (characters)
b 23457 Time Data
B 23457,1,1 Current Time Left - game hours (5 real-time minutes per game hour)
B 23458,1,1 Minute Counter (Time Elapsed since last "hour")
B 23459,1,1 Second Counter (Time Elapsed since last minute)
B 23460,1,1 1/50 Second Counter (Time Elapsed since last second)
b 23461 Draw 2x1 Blocks Flag
D 23461 Flag that determines whether or not to only draw the top two characters in 2x2 blocks. The instructions between #R41347 and #R41351 inclusive are set up to skip rendering of the lower two character cells in a 2x2 block if this value is not zero, however this flag is never modified, meaning that 2x1 blocks are never drawn.
B 23461,1,1
b 23462 Miscellaneous Data 10
B 23462,1,1 Current INK Colour of Glowing Blocks
W 23463,2,2 Temporary store for coordinates for 2x2 block drawing
B 23465,1,1 Current progress through cave (0 = rightmost room)
B 23466,1,1 Index of next object to be laid by Chicken
b 23467 Unused
B 23467,4,4
b 23471 y- and x- coordinates of top-left corner of currently glowing Locate Compass sector
D 23471 (See trivia)
B 23471,2,2
b 23473 Miscellaneous Data 11
B 23473,1,1 Temporary store for an object's Terrain Interaction Parameter
b 23474 Magic Knight Movement Flags
D 23474 Bitwise flags which determine which direction(s) Magic Knight cannot currently move (i.e. set means can't move). The bits are as follows:
B 23474,1,1
b 23475 Miscellaneous Data 12
B 23475,1,1 Height available to Menu Hand Cursor to move down (pixels)
B 23476,1,1 x-coordinate of left-most character in a row of menu text (characters)
B 23477,1,1 y-coordinate of "finger" on hand-cursor (characters)
B 23478,1,1 Menu hand-cursor's y-coordinate (pixels)
B 23479,1,1 Current y-coordinate of hand cursor relative to its starting position (pixels)
b 23480 Animate Puff of Smoke Flag
D 23480 #TABLE(default,centre,:w) { =h Value | =h Effect } { 0 | Reset (don't animate smoke) } { Any other value | Set (animate smoke) } TABLE#
B 23480,1,1
b 23481 Miscellaneous Data 13
B 23481,1,1 Attribute of interior of current window, i.e. background / foreground colours of contents
B 23482,1,1 Magic Knight's predicted x-coordinate (used in routine at #R38585)
B 23483,1,1 Magic Knight's predicted y-coordinate (used in routine at #R38585)
B 23484,1,1 Current Password Number
B 23485,1,1 Terrain interaction parameter to apply for 2x2 block currently being drawn
B 23486,1,1 Unused (see trivia)
B 23487,1,1 Store for currently active keyboard press / joystick action
b 23488 Visited Room Flags
D 23488 Fifty-two bytes, one for each room in the game. At the start of the game, these are all reset (i.e. zero). Each time Magic Knight enters a room for the first time, the flag corresponding to that room is set (to 1). These flags are used in calculating percentage completion.
B 23488,1,1 (00) - Limbo
B 23489,1,1 (01) - Outdoors, 0 (Bearwoolf's Hoard)
B 23490,1,1 (02) - Outdoors, 1 (Bearwoolf's Cave)
B 23491,1,1 (03) - Outdoors, 2 (Beware Bearwoolf)
B 23492,1,1 (04) - Outdoors, 3 (The Spooky Forest, 1)
B 23493,1,1 (05) - Outdoors, 4
B 23494,1,1 (06) - Outdoors, 5 (The Spooky Forest, 2)
B 23495,1,1 (07) - Outdoors, 6 (The Sword in the Concrete)
B 23496,1,1 (08) - Outdoors, 7 (Robin's Little Hut)
B 23497,1,1 (09) - Outdoors, 8 (Exit from Limbo)
B 23498,1,1 (10) - Outdoors, 9 (More Spooky Forest)
B 23499,1,1 (11) - Outdoors, 10 (Entwood)
B 23500,1,1 (12) - Outdoors, 11 (The Spooky Forest, 3)
B 23501,1,1 (13) - Outdoors, 12 (The Spooky Forest, 4)
B 23502,1,1 (14) - Outdoors, 13 (Wishing Well)
B 23503,1,1 (15) - Outdoors, 14
B 23504,1,1 (16) - Outdoors, 15 (The Castle Entrance)
B 23505,1,1 (17) - Castle Ground Floor, 0 (One Axe Room)
B 23506,1,1 (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
B 23507,1,1 (19) - Castle Ground Floor, 2
B 23508,1,1 (20) - Castle Ground Floor, 3
B 23509,1,1 (21) - Castle Ground Floor, 4 (More Axe Problems)
B 23510,1,1 (22) - Castle Ground Floor, 5 (Even More Axes)
B 23511,1,1 (23) - Castle Ground Floor, 6 (The First Jump Chute)
B 23512,1,1 (24) - Castle First Floor, 0 (Main Lever 7)
B 23513,1,1 (25) - Castle First Floor, 1 (Main Lever 6)
B 23514,1,1 (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
B 23515,1,1 (27) - Castle First Floor, 3 (Main Lever 4)
B 23516,1,1 (28) - Castle First Floor, 4 (Main Lever 3)
B 23517,1,1 (29) - Castle First Floor, 5 (Main Lever 2)
B 23518,1,1 (30) - Castle First Floor, 6 (Main Lever 1)
B 23519,1,1 (31) - Castle Second Floor, 0 (The Broken Teleport)
B 23520,1,1 (32) - Castle Second Floor, 1 (Terrible Twins)
B 23521,1,1 (33) - Castle Second Floor, 2 (The Guardian Statues)
B 23522,1,1 (34) - Castle Second Floor, 3 (One Way Corridor, 1)
B 23523,1,1 (35) - Castle Second Floor, 4 (One Way Corridor, 2)
B 23524,1,1 (36) - Castle Second Floor, 5 (One Way Corridor, 3)
B 23525,1,1 (37) - Castle Second Floor, 6
B 23526,1,1 (38) - Castle Third Floor, 0 (Big White Statue)
B 23527,1,1 (39) - Castle Third Floor, 1
B 23528,1,1 (40) - Castle Third Floor, 2 (Teleport Room, 1)
B 23529,1,1 (41) - Castle Third Floor, 3 (One Way Corridor, 4)
B 23530,1,1 (42) - Castle Third Floor, 4 (One Way Corridor, 5)
B 23531,1,1 (43) - Castle Third Floor, 5 (One Way Corridor, 6)
B 23532,1,1 (44) - Castle Third Floor, 6
B 23533,1,1 (45) - Spaceship, 0 (The Control Room)
B 23534,1,1 (46) - Spaceship, 1 (Many Screened Room)
B 23535,1,1 (47) - Spaceship, 2 (Teleport Room, 2)
B 23536,1,1 (48) - Spaceship, 3
B 23537,1,1 (49) - Spaceship, 4 (The Power Plant)
B 23538,1,1 (50) - Spaceship, 5
B 23539,1,1 (51) - Spaceship, 6
b 23540 Unused
B 23540,87,8,4,8*9,3
b 23627 VARS system variable
@ 23627 ssub=DEFW 24119
W 23627,2,2
B 23629,6,6
b 23635 PROG system variable
@ 23635 ssub=DEFW 23755
W 23635,2,2
B 23637,38,8*4,6
b 23675 Interrupt Routine Flags
D 23675 Bitwise flags which determine which things occur upon executing the Interrupt Routine. The bits are as follows:
B 23675,23,1,8*2,6
b 23698 Available In-Game Menu Command Flags
D 23698 Flags that determine which additional entries are available in Main In-Game Menu
B 23698,2,1
b 23700 Miscellaneous Data 14
B 23700,1,1 Storm Cloud's actual current x-coordinate in its current room
B 23701,1,1 Storm Cloud's apparent (i.e. for drawing) current x-coordinate in its current room
b 23702 Magic Knight's current room
B 23702,1,1
b 23703 Index of Required Disquise
D 23703 Index of disquise required in the current game in order to enter the Castle.
B 23703,1,1
b 23704 Store for Display File Address to Print Text to in Command Summary Window
W 23704,2,2
b 23706 Player Attribute Update Flag
D 23706 #TABLE(default,centre,:w) { =h Value | =h Effect } { 0 | Player Attribute Ignore Mode } { Any other value | Player Attribute Update Mode } TABLE#
B 23706,1,1
b 23707 Attribute File address for Virtual Text Cursor
W 23707,2,2
b 23709 Miscellaneous Data 15
W 23709,2,2 Address in Terrain Interaction Data at #R23808 for 2x2 block currently being drawn
W 23711,2,2 Temporary storage used by the routine at #R63740 (Redefine Keyboard Controls)
B 23713,1,1 Index of current Crystal Ball substring
B 23714,1,1 Index of current Scroll substring
B 23715,1,1 Storm Cloud's current room
B 23716,1,1 Index of Current Command
B 23717,11,8,3
b 23728 Cheat Mode Enabled Flag
D 23728 See trivia
B 23728,1,1 Cheat Mode Enabled Flag / NMIADD (LSB)
B 23729,5,5
b 23734 System Data / BASIC Program
B 23734,21,8*2,5
b 23755 Basic loader
D 23755 The basic loader is set to auto-run from line 0. Line 30 loads the loading screen, and a block of code of length 40360 bytes to address 25176. This code block contains the main game code, and after loading it, we jump to the start-up routine at 37632.
B 23755,3,3 10 CLEAR 25170: PAPER 0: BORDER 0: INK 7: BRIGHT 1: CLS : PRINT BRIGHT 1; INK 7;AT 9,3;"STORMBRINGER 48 IS LOADING";AT 12,10;"PLEASE WAIT" 20 PAPER 8: INK 8: BRIGHT 8: OVER 1 30 BEEP .1,1: BEEP .1,2: BEEP .1,3: BEEP .1,4: BEEP .1,5: PRINT AT 0,0;: LOAD ""CODE 16384: PRINT AT 0,0;: LOAD ""CODE 40 RANDOMIZE USR 37632
B 23758,50,5,3,5,3,5,3,5,3,5,3,5,3,2
b 23808 Terrain Interaction Data Table
D 23808 Table comprised of 32 x 24 entries, each one corresponding to a character block in Magic Knight's current room. Each entry is a set of bitwise flags with the following effects:
B 23808,768,3,8*38,4,8*57,1
b 24576 Table of Bitmap Data for Magic Knight at his Current Location
D 24576 Used by the routines at #R61638, #R61720 and #R61774.
B 24576,96,8
b 24672 Table of Background Bitmap Data
D 24672 Used by the routines at #R39553, #R61638 and #R61823.
B 24672,96,8
b 24768 Characters' Current Stats
D 24768 Nine groups of eight bytes, one group per character (including Magic Knight). The values are capped at 100:
B 24768,8,8 Magic Knight
B 24776,8,8 Off-White Knight
B 24784,8,8 Aramis le Peux
B 24792,8,8 Robin of Shylock
B 24800,8,8 Reggie the Rat
B 24808,8,8 Rachel of Amazonia
B 24816,8,8 Barker the Ent
B 24824,8,8 Organon the Guard
B 24832,8,8 Grunter the Bearwoolf
b 24840 Magic Knight's Current Data
D 24840 See also #R48603 for Magic Knight's Initial Data
B 24840,1,1 x-coordinate (pixels)
B 24841,1,1 y-coordinate (pixels)
B 24842,1,1 Unused (set to zero by instruction at #R44322)
B 24843,1,1 Index of current frame
B 24844,1,1 x-velocity (pixels) [walking / jumping sideways, usually 2 for right and 254 / -2 for left]
B 24845,1,1 y-velocity (pixels) [jumping]
B 24846,1,1 Attribute
B 24847,1,1 Unused
b 24848 Characters' Current Inventories
D 24848 See also #R48611 for Characters' Initial Inventories
B 24848,5,5 Magic Knight (carrying)
B 24853,5,5 Magic Knight (wearing)
B 24858,5,5 Off-White Knight
B 24863,5,5 Aramis le Peux
B 24868,5,5 Robin of Shylock
B 24873,5,5 Reggie the Rat
B 24878,5,5 Rachel of Amazonia
B 24883,5,5 Barker the Ent
B 24888,5,5 Organon the Guard
B 24893,5,5 Grunter the Bearwoolf
b 24898 Characters' Current Positions
D 24898 Eight groups of three bytes, one group per character (excluding Magic Knight). The values are:
B 24898,3,3 Off-White Knight
B 24901,3,3 Aramis le Peux
B 24904,3,3 Robin of Shylock
B 24907,3,3 Reggie the Rat
B 24910,3,3 Rachel of Amazonia
B 24913,3,3 Barker the Ent
B 24916,3,3 Organon the Guard
B 24919,3,3 Grunter the Bearwoolf
b 24922 Objects' Current Positions
D 24922 Forty-two groups of three bytes, one group per object. The values are:
B 24922,3,3 (00) - Nothing at all
B 24925,3,3 (01) - Disquise
B 24928,3,3 (02) - Crystal Ball
B 24931,3,3 (03) - Wand of Command
B 24934,3,3 (04) - Teddy Bear
B 24937,3,3 (05) - Stick of Dynamite
B 24940,3,3 (06) - Magic Talisman
B 24943,3,3 (07) - Broken Glass
B 24946,3,3 (08) - Broken Glass
B 24949,3,3 (09) - Broken Glass
B 24952,3,3 (10) - Horse Feather
B 24955,3,3 (11) - Power Boots
B 24958,3,3 (12) - Glow Shield
B 24961,3,3 (13) - Chicken
B 24964,3,3 (14) - Boomerang
B 24967,3,3 (15) - Sword
B 24970,3,3 (16) - Brass Ankh
B 24973,3,3 (17) - Bottle of Liquid
B 24976,3,3 (18) - Bottle of Liquid
B 24979,3,3 (19) - Torch
B 24982,3,3 (20) - Mirror
B 24985,3,3 (21) - Gadget X
B 24988,3,3 (22) - Elf-Horn
B 24991,3,3 (23) - Silver Arrow
B 24994,3,3 (24) - Instruction Book
B 24997,3,3 (25) - Magic Missile
B 25000,3,3 (26) - Advert
B 25003,3,3 (27) - Scroll
B 25006,3,3 (28) - Empty Bottle
B 25009,3,3 (29) - Empty Bottle
B 25012,3,3 (30) - Shield
B 25015,3,3 (31) - Teleport Key
B 25018,3,3 (32) - Teleport Pad
B 25021,3,3 (33) - Newspaper
B 25024,3,3 (34) - List of Clues
B 25027,3,3 (35) - Bow
B 25030,3,3 (36) - Golden Egg
B 25033,3,3 (37) - Silver Egg
B 25036,3,3 (38) - Copper Egg
B 25039,3,3 (39) - Golden Egg
B 25042,3,3 (40) - Silver Egg
B 25045,3,3 (41) - Copper Egg
b 25048 Table of Background Attribute Data
D 25048 Attribute values for region behind Magic Knight, stored here so that they can be restored when Magic Knight moves on in Player Attribute Update mode.
B 25048,12,3
b 25060 Temporary Text Buffer
D 25060 Used by the routines at #R46902 and #R48389
B 25060,116,8*14,4
b 25176 Graphics (Storm Cloud)
D 25176 All Storm Cloud frame graphics are (8 x 2). Frame 1
B 25176,128,8
N 25304 Frame 2
B 25304,128,8
N 25432 Frame 3
B 25432,128,8
N 25560 Frame 4
B 25560,128,8
N 25688 Frame 5
B 25688,128,8
N 25816 Frame 6
B 25816,128,8
N 25944 Frame 7
B 25944,128,8
N 26072 Frame 8
B 26072,128,8
b 26200 Graphics Magic Knight
D 26200 All Magic Knight frames are (3 x 4). Facing Right, Frame 1
B 26200,96,8
N 26296 Facing Right, Frame 2
B 26296,96,8
N 26392 Facing Right, Frame 3
B 26392,96,8
N 26488 Facing Right, Frame 4
B 26488,96,8
N 26584 Facing Left, Frame 4
B 26584,96,8
N 26680 Facing Left, Frame 3
B 26680,96,8
N 26776 Facing Left, Frame 2
B 26776,96,8
N 26872 Facing Left, Frame 1
B 26872,96,8
N 26968 Facing Right, Frame 1 (Mask)
B 26968,96,8
N 27064 Facing Right, Frame 2 (Mask)
B 27064,96,8
N 27160 Facing Right, Frame 3 (Mask)
B 27160,96,8
N 27256 Facing Right, Frame 4 (Mask)
B 27256,96,8
N 27352 Facing Left, Frame 4 (Mask)
B 27352,96,8
N 27448 Facing Left, Frame 3 (Mask)
B 27448,96,8
N 27544 Facing Left, Frame 2 (Mask)
B 27544,96,8
N 27640 Facing Left, Frame 1 (Mask)
B 27640,96,8
b 27736 Graphics (01 x 64) Character Set Part 1
B 27736,8,8 (032) - SPACE
B 27744,8,8 (033) - !
B 27752,8,8 (034) - "
B 27760,8,8 (035) - #
B 27768,8,8 (036) - $
B 27776,8,8 (037) - %
B 27784,8,8 (038) - &
B 27792,8,8 (039) - '
B 27800,8,8 (040) - (
B 27808,8,8 (041) - )
B 27816,8,8 (042) - *
B 27824,8,8 (043) - +
B 27832,8,8 (044) - ,
B 27840,8,8 (045) - -
B 27848,8,8 (046) - .
B 27856,8,8 (047) - /
B 27864,8,8 (048) - 0
B 27872,8,8 (049) - 1
B 27880,8,8 (050) - 2
B 27888,8,8 (051) - 3
B 27896,8,8 (052) - 4
B 27904,8,8 (053) - 5
B 27912,8,8 (054) - 6
B 27920,8,8 (055) - 7
B 27928,8,8 (056) - 8
B 27936,8,8 (057) - 9
B 27944,8,8 (058) - :
B 27952,8,8 (059) - ;
B 27960,8,8 (060) - <
B 27968,8,8 (061) - =
B 27976,8,8 (062) - >
B 27984,8,8 (063) - ?
B 27992,8,8 (064) - @
B 28000,8,8 (065) - A
B 28008,8,8 (066) - B
B 28016,8,8 (067) - C
B 28024,8,8 (068) - D
B 28032,8,8 (069) - E
B 28040,8,8 (070) - F
B 28048,8,8 (071) - G
B 28056,8,8 (072) - H
B 28064,8,8 (073) - I
B 28072,8,8 (074) - J
B 28080,8,8 (075) - K
B 28088,8,8 (076) - L
B 28096,8,8 (077) - M
B 28104,8,8 (078) - N
B 28112,8,8 (079) - O
B 28120,8,8 (080) - P
B 28128,8,8 (081) - Q
B 28136,8,8 (082) - R
B 28144,8,8 (083) - S
B 28152,8,8 (084) - T
B 28160,8,8 (085) - U
B 28168,8,8 (086) - V
B 28176,8,8 (087) - W
B 28184,8,8 (088) - X
B 28192,8,8 (089) - Y
B 28200,8,8 (090) - Z
B 28208,8,8 (091) - Unused
B 28216,8,8 (092) - Unused
B 28224,8,8 (093) - Window Border 1 (top edge)
B 28232,8,8 (094) - Window Border 1 (bottom edge)
B 28240,8,8 (095) - Window Border 1 (left edge)
b 28248 Graphics (01 x 32) Character Set Part 2
B 28248,8,8 (096) - Window Border 1 (right edge)
B 28256,8,8 (097) - Window Border 1 (top right corner)
B 28264,8,8 (098) - Window Border 1 (bottom right corner)
B 28272,8,8 (099) - Window Border 1 (bottom left corner)
B 28280,8,8 (100) - Window Border 1 (top left corner)
B 28288,8,8 (101) - Window Border 2 (top edge)
B 28296,8,8 (102) - Window Border 2 (bottom edge)
B 28304,8,8 (103) - Window Border 2 (left edge)
B 28312,8,8 (104) - Window Border 2 (right edge)
B 28320,8,8 (105) - Window Border 2 (top right corner)
B 28328,8,8 (106) - Window Border 2 (bottom right corner)
B 28336,8,8 (107) - Window Border 2 (bottom left corner)
B 28344,8,8 (108) - Window Border 2 (top left corner)
B 28352,8,8 (109) - Window Border 3 (top edge)
B 28360,8,8 (110) - Window Border 3 (bottom edge)
B 28368,8,8 (111) - Window Border 3 (left edge)
B 28376,8,8 (112) - Window Border 3 (right edge)
B 28384,8,8 (113) - Window Border 3 (top right corner)
B 28392,8,8 (114) - Window Border 3 (bottom right corner)
B 28400,8,8 (115) - Window Border 3 (bottom left corner)
B 28408,8,8 (116) - Window Border 3 (top left corner)
B 28416,8,8 (117) - Window Border 4 (top edge)
B 28424,8,8 (118) - Window Border 4 (bottom edge)
B 28432,8,8 (119) - Window Border 4 (left edge)
B 28440,8,8 (120) - Window Border 4 (right edge)
B 28448,8,8 (121) - Window Border 4 (top right corner)
B 28456,8,8 (122) - Window Border 4 (bottom right corner)
B 28464,8,8 (123) - Window Border 4 (bottom left corner)
B 28472,8,8 (124) - Window Border 4 (top left corner)
B 28480,8,8 (125) - ^
B 28488,8,8 (126) - £
B 28496,8,8 (127) - COPYRIGHT
b 28504 Graphics - Brickwork Blocks (Part 1)
D 28504 Referenced by Table of Block Style Definitions at #R49794.
B 28504,8,8 (00) -  Blank
B 28512,8,8 (01) -  Unused
B 28520,8,8 (02) -  Unused
B 28528,8,8 (03) -  Unused
B 28536,8,8 (04) -  Unused
B 28544,8,8 (05) -  Unused
B 28552,8,8 (06) -  Unused
B 28560,8,8 (07) -  Unused
B 28568,8,8 (08) -  Unused
B 28576,8,8 (09) -  Unused
B 28584,8,8 (10) -  Unused
B 28592,8,8 (11) -  Unused
B 28600,8,8 (12) -  Unused
B 28608,8,8 (13) -  Unused
B 28616,8,8 (14) -  Unused
B 28624,8,8 (15) -  Unused
B 28632,8,8 (16) -  Unused
B 28640,8,8 (17) -  White bricks
B 28648,8,8 (18) -  White bricks
B 28656,8,8 (19) -  Unused
B 28664,8,8 (20) -  Floor UDG 52 (Outdoors)
B 28672,8,8 (21) -  Floor UDG 53 (Castle)
B 28680,8,8 (22) -  Floor UDG 54 (Spaceship)
B 28688,8,8 (23) -  Floor UDG 55 (Limbo / Caves)
B 28696,8,8 (24) -  Yellow bricks
B 28704,8,8 (25) -  Unused
B 28712,8,8 (26) -  Unused
B 28720,8,8 (27) -  Unused
B 28728,8,8 (28) -  Unused
B 28736,8,8 (29) -  Unused
B 28744,8,8 (30) -  Unused
B 28752,8,8 (31) -  Unused
B 28760,8,8 (32) -  Unused
B 28768,8,8 (33) -  Unused
B 28776,8,8 (34) -  Unused
B 28784,8,8 (35) -  Unused
B 28792,8,8 (36) -  Unused
B 28800,8,8 (37) -  Unused
B 28808,8,8 (38) -  Unused
B 28816,8,8 (39) -  Unused
B 28824,8,8 (40) -  Unused
B 28832,8,8 (41) -  Unused
B 28840,8,8 (42) -  Unused
B 28848,8,8 (43) -  Unused
B 28856,8,8 (44) -  Unused
B 28864,8,8 (45) -  Unused
B 28872,8,8 (46) -  Unused
B 28880,8,8 (47) -  Unused
B 28888,8,8 (48) -  Unused
B 28896,8,8 (49) -  Unused
B 28904,8,8 (50) -  Cobweb
B 28912,8,8 (51) -  Cobweb
B 28920,8,8 (52) -  Lever
B 28928,8,8 (53) -  Lever
B 28936,8,8 (54) -  Unused
B 28944,8,8 (55) -  Unused
B 28952,8,8 (56) -  Unused
B 28960,8,8 (57) -  Unused
B 28968,8,8 (58) -  Security door
B 28976,8,8 (59) -  Security door
B 28984,8,8 (60) -  Unused
B 28992,8,8 (61) -  Unused
B 29000,8,8 (62) -  Unused
B 29008,8,8 (63) -  Unused
B 29016,8,8 (64) -  Unused
B 29024,8,8 (65) -  Unused
B 29032,8,8 (66) -  Unused
B 29040,8,8 (67) -  Power Plant ceiling / bridge
B 29048,8,8 (68) -  Grass
B 29056,8,8 (69) -  Grass
B 29064,8,8 (70) -  Unused
B 29072,8,8 (71) -  Unused
B 29080,8,8 (72) -  Unused
B 29088,8,8 (73) -  Unused
B 29096,8,8 (74) -  Cobweb
B 29104,8,8 (75) -  Cobweb
B 29112,8,8 (76) -  Lever
B 29120,8,8 (77) -  Lever
B 29128,8,8 (78) -  Unused
B 29136,8,8 (79) -  Unused
B 29144,8,8 (80) -  Unused
B 29152,8,8 (81) -  Unused
B 29160,8,8 (82) -  Unused
B 29168,8,8 (83) -  Unused
b 29176 Graphics (Axes)
B 29176,8,8 (84) -  Frame 1
B 29184,8,8 (85) -  Frame 2
B 29192,8,8 (86) -  Frame 3
B 29200,8,8 (87) -  Frame 4
b 29208 Graphics - Brickwork Blocks (Part 2)
D 29208 Referenced by Architecture Styles Table at #R49794.
B 29208,8,8 (88) -  Unused
B 29216,8,8 (89) -  Unused
B 29224,8,8 (90) -  Castle Entrance / steps for Power Plant bridge
B 29232,8,8 (91) -  Unused
B 29240,8,8 (92) -  Power Plant Core
B 29248,8,8 (93) -  Power Plant Core
B 29256,8,8 (94) -  Power Plant Core
B 29264,8,8 (95) -  Power Plant Core
b 29272 Graphic Lookup Data
D 29272 Table of addresses of start of graphic data for game graphics.
W 29272,4,4 (00) - Unused
W 29276,4,4 (01) - Graphics (Compacted): (03 x 07) Left half of Teleport
W 29280,4,4 (02) - Graphics (Standard): (02 x 02) Menu Hand Cursor
W 29284,4,4 (03) - Graphics (Standard): (02 x 02) Gadget X / Bow
W 29288,4,4 (04) - Graphics (Standard): (02 x 02) Advert / Newspaper
W 29292,4,4 (05) - Graphics (Standard): (02 x 02) Mirror
W 29296,4,4 (06) - Graphics (Standard): (02 x 02) Scroll / List of Clues
W 29300,4,4 (07) - Graphics (Standard): (02 x 02) Disquise
W 29304,4,4 (08) - Graphics (Standard): (02 x 02) Teleport Pad
W 29308,4,4 (09) - Graphics (Standard): (02 x 02) Golden Egg / Silver Egg / Copper Egg
W 29312,4,4 (10) - Graphics (Standard): (02 x 02) Shield / Glow Shield
W 29316,4,4 (11) - Graphics (Standard): (02 x 02) Magic Talisman
W 29320,4,4 (12) - Graphics (Standard): (02 x 02) Chicken
W 29324,4,4 (13) - Graphics (Standard): (02 x 02) Broken Glass
W 29328,4,4 (14) - Graphics (Standard): (02 x 02) Bottle of Liquid / Empty Bottle
W 29332,4,4 (15) - Graphics (Standard): (02 x 02) Instruction Book
W 29336,4,4 (16) - Graphics (Standard): (02 x 02) Crystal Ball
W 29340,4,4 (17) - Graphics (Standard): (02 x 02) Wand of Command
W 29344,4,4 (18) - Graphics (Standard): (02 x 02) Torch
W 29348,4,4 (19) - Graphics (Standard): (02 x 02) Brass Ankh
W 29352,4,4 (20) - Graphics (Standard): (02 x 02) Teddy Bear
W 29356,4,4 (21) - Graphics (Standard): (02 x 02) Teleport Key
W 29360,4,4 (22) - Graphics (Standard): (02 x 02) Magic Missile
W 29364,4,4 (23) - Graphics (Standard): (02 x 02) Elf-Horn
W 29368,4,4 (24) - Graphics (Standard): (02 x 02) Silver Arrow
W 29372,4,4 (25) - Graphics (Standard): (02 x 02) Boomerang
W 29376,4,4 (26) - Graphics (Standard): (02 x 02) Stick of Dynamite
W 29380,4,4 (27) - Graphics (Standard): (02 x 02) Power Boots
W 29384,4,4 (28) - Graphics (Standard): (02 x 02) Horse Feather
W 29388,4,4 (29) - Graphics (Standard): (02 x 02) Sword
W 29392,4,4 (30) - Graphics (Standard): (02 x 03) Puff of Smoke, frame 1
W 29396,4,4 (31) - Graphics (Standard): (02 x 03) Puff of Smoke, frame 2
W 29400,4,4 (32) - Graphics (Standard): (02 x 03) Puff of Smoke, frame 3
W 29404,4,4 (33) - Graphics (Standard): (02 x 03) Puff of Smoke, frame 4
W 29408,4,4 (34) - Graphics (Standard): (02 x 03) Puff of Smoke, frame 5
W 29412,4,4 (35) - Graphics (Standard): (02 x 03) Puff of Smoke, frame 6
W 29416,4,4 (36) - Graphics (Compacted): (11 x 12) Grunter / Statue
W 29420,4,4 (37) - Graphics (Standard): (02 x 04) Magic Knight facing left / Off-White Knight
W 29424,4,4 (38) - Graphics (Compacted): (12 x 07) Top of tree with face
W 29428,4,4 (39) - Graphics (Compacted): (09 x 06) Top of tree without face
W 29432,4,4 (40) - Graphics (Compacted): (07 x 10) Top of tree, bare
W 29436,4,4 (41) - Unused
W 29440,4,4 (42) - Graphics (Compacted): (05 x 07) Axe in tree stump
W 29444,4,4 (43) - Graphics (Compacted): (04 x 13) Control console
W 29448,4,4 (44) - Graphics (Compacted): (04 x 03) Tree trunk 1
W 29452,4,4 (45) - Graphics (Compacted): (07 x 03) Tree trunk 2
W 29456,4,4 (46) - Unused
W 29460,4,4 (47) - Graphics (Compacted): (06 x 03) Tree trunk 3
W 29464,4,4 (48) - Graphics (Compacted): (05 x 04) Monitor showing castle
W 29468,4,4 (49) - Graphics (Compacted): (05 x 04) Control panel
W 29472,4,4 (50) - Graphics (Compacted): (05 x 04) Display screen
W 29476,4,4 (51) - Graphics (Compacted): (05 x 05) Moon
W 29480,4,4 (52) - Graphics (Standard): (02 x 04) Aramis Le Peux
W 29484,4,4 (53) - Graphics (Standard): (02 x 04) Robin of Shylock
W 29488,4,4 (54) - Graphics (Standard): (02 x 04) Rachel of Amazonia
W 29492,4,4 (55) - Graphics (Compacted): (07 x 04) Flowers
W 29496,4,4 (56) - Graphics (Compacted): (02 x 04) Organon the Guard
W 29500,4,4 (57) - Graphics (Compacted): (05 x 02) Reggie the Rat
W 29504,4,4 (58) - Graphics (Compacted): (10 x 03) Roof / Top of Well
W 29508,4,4 (59) - Graphics (Compacted): (11 x 10) Well
W 29512,4,4 (60) - Graphics (Compacted): (04 x 02) Jump Chute / Corridor Pad
W 29516,4,4 (61) - Graphics (Compacted): (04 x 07) Cracked Column Section 1
W 29520,4,4 (62) - Graphics (Compacted): (04 x 06) Cracked Column Section 2
W 29524,4,4 (63) - Graphics (Compacted): (07 x 07) Fire bowl
W 29528,4,4 (64) - Graphics (Compacted): (03 x 04) Plinth
W 29532,4,4 (65) - Graphics (Compacted): (04 x 06) Large stool
W 29536,4,4 (66) - Graphics (Compacted): (02 x 05) Plant
W 29540,4,4 (67) - Graphics (Compacted): (03 x 07) Torch
W 29544,4,4 (68) - Graphics (Compacted): (06 x 05) Sword in Concrete
b 29548 Graphics (Compacted) Scenery Part 1 (03 x 07) Left half of Teleport
B 29548,133,8*16,5
b 29681 Graphics (02 x 02) Menu Hand Cursor
B 29681,32,8
b 29713 Graphics Objects
D 29713 All object graphics are (2 x 2). Gadget X / Bow
B 29713,32,8
N 29745 Gadget X / Bow (Mask)
B 29745,32,8
N 29777 Advert / Newspaper
B 29777,32,8
N 29809 Advert / Newspaper / Mirror / Scroll / List of Clues (Mask)
B 29809,32,8
N 29841 Mirror
B 29841,32,8
N 29873 Scroll / List of Clues
B 29873,32,8
N 29905 Disquise
B 29905,32,8
N 29937 Disquise (Mask)
B 29937,32,8
N 29969 Teleport Pad
B 29969,32,8
N 30001 Teleport Pad (Mask)
B 30001,32,8
N 30033 Golden Egg / Silver Egg / Copper Egg
B 30033,32,8
N 30065 Golden Egg / Silver Egg / Copper Egg (Mask)
B 30065,32,8
N 30097 Shield / Glow Shield
B 30097,32,8
N 30129 Shield / Glow Shield (Mask)
B 30129,32,8
N 30161 Magic Talisman
B 30161,32,8
N 30193 Magic Talisman (Mask)
B 30193,32,8
N 30225 Chicken
B 30225,32,8
N 30257 Chicken (Mask)
B 30257,32,8
N 30289 Broken Glass
B 30289,32,8
N 30321 Broken Glass (Mask)
B 30321,32,8
N 30353 Bottle of Liquid / Empty Bottle
B 30353,32,8
N 30385 Bottle of Liquid / Empty Bottle (Mask)
B 30385,32,8
N 30417 Instruction Book
B 30417,32,8
N 30449 Instruction Book (Mask)
B 30449,32,8
N 30481 Crystal Ball
B 30481,32,8
N 30513 Crystal Ball (Mask)
B 30513,32,8
N 30545 Wand of Command
B 30545,32,8
N 30577 Wand of Command (Mask)
B 30577,32,8
N 30609 Torch
B 30609,32,8
N 30641 Torch (Mask)
B 30641,32,8
N 30673 Brass Ankh
B 30673,32,8
N 30705 Brass Ankh (Mask)
B 30705,32,8
N 30737 Teddy Bear
B 30737,32,8
N 30769 Teddy Bear (Mask)
B 30769,32,8
N 30801 Teleport Key
B 30801,32,8
N 30833 Teleport Key (Mask)
B 30833,32,8
N 30865 Magic Missile
B 30865,32,8
N 30897 Magic Missile (Mask)
B 30897,32,8
N 30929 Elf-Horn
B 30929,32,8
N 30961 Elf-Horn (Mask)
B 30961,32,8
N 30993 Silver Arrow
B 30993,32,8
N 31025 Silver Arrow (Mask)
B 31025,32,8
N 31057 Boomerang
B 31057,32,8
N 31089 Boomerang (Mask)
B 31089,32,8
N 31121 Stick of Dynamite
B 31121,32,8
N 31153 Stick of Dynamite (Mask)
B 31153,32,8
N 31185 Power Boots
B 31185,32,8
N 31217 Power Boots (Mask)
B 31217,32,8
N 31249 Horse Feather
B 31249,32,8
N 31281 Horse Feather (Mask)
B 31281,32,8
N 31313 Sword
B 31313,32,8
N 31345 Sword (Mask)
B 31345,32,8
b 31377 Graphics (Puff of Smoke)
D 31377 All Puff of Smoke frame graphics are (2 x 3). Frame 1
B 31377,48,8
N 31425 Frame 1 (Mask)
B 31425,48,8
N 31473 Frame 2
B 31473,48,8
N 31521 Frame 2 (Mask)
B 31521,48,8
N 31569 Frame 3
B 31569,48,8
N 31617 Frame 3 (Mask)
B 31617,48,8
N 31665 Frame 4
B 31665,48,8
N 31713 Frame 4 (Mask)
B 31713,48,8
N 31761 Frame 5
B 31761,48,8
N 31809 Frame 5 (Mask)
B 31809,48,8
N 31857 Frame 6
B 31857,48,8
N 31905 Frame 6 (Mask)
B 31905,48,8
b 31953 Graphics (Compacted) Scenery Part 2
D 31953 (11 x 12) Grunter / Statue
B 31953,752,8
b 32705 Graphics (Characters) Part 1
D 32705 All character graphics are (2 x 4). Magic Knight facing left / Off-White Knight
B 32705,64,8
N 32769 Magic Knight facing left / Off-White Knight (Mask)
B 32769,64,8
b 32833 Graphics (Compacted) Scenery Part 3 (12 x 07) Top of tree with face
B 32833,293,8*36,5
N 33126 (09 x 06) Top of tree without face
B 33126,292,8*36,4
N 33418 (07 x 10) Top of tree, bare
B 33418,258,8*32,2
N 33676 (05 x 07) Axe in tree stump
B 33676,159,8*19,7
N 33835 (04 x 13) Control console
B 33835,178,8*22,2
N 34013 (04 x 03) Tree trunk 1
B 34013,74,8*9,2
N 34087 (07 x 03) Tree trunk 2
B 34087,118,8*14,6
N 34205 (06 x 03) Tree trunk 3
B 34205,125,8*15,5
N 34330 (05 x 04) Monitor showing castle
B 34330,172,8*21,4
N 34502 (05 x 04) Control panel
B 34502,167,8*20,7
N 34669 (05 x 04) Display screen
B 34669,141,8*17,5
N 34810 (05 x 05) Moon
B 34810,83,8*10,3
b 34893 Graphics (Characters) Part 2
D 34893 All character graphics are (2 x 4). Aramis Le Peux
B 34893,64,8
N 34957 Aramis Le Peux (Mask)
B 34957,64,8
N 35021 Robin of Shylock
B 35021,64,8
N 35085 Robin of Shylock (Mask)
B 35085,64,8
N 35149 Rachel of Amazonia
B 35149,64,8
N 35213 Rachel of Amazonia (Mask)
B 35213,64,8
b 35277 Graphics (Compacted) Scenery Part 4 (07 x 04) Flowers
B 35277,166,8*20,6
N 35443 (02 x 04) Organon the Guard
B 35443,69,8*8,5
N 35512 (05 x 02) Reggie the Rat
B 35512,57,8*7,1
N 35569 (10 x 03) Roof / Top of Well
B 35569,221,8*27,5
N 35790 (11 x 10) Well
B 35790,617,8*77,1
N 36407 (04 x 02) Jump Chute / Corridor Pad
B 36407,56,8
N 36463 (04 x 07) Cracked Column Section 1
B 36463,185,8*23,1
N 36648 (04 x 06) Cracked Column Section 2
B 36648,146,8*18,2
N 36794 (07 x 07) Fire bowl
B 36794,239,8*29,7
N 37033 (03 x 04) Plinth
B 37033,99,8*12,3
N 37132 (04 x 06) Large stool
B 37132,136,8
N 37268 (02 x 05) Plant
B 37268,75,8*9,3
N 37343 (03 x 07) Torch
B 37343,127,8*15,7
N 37470 (06 x 05) Sword in Concrete
B 37470,125,8*15,5
b 37595 Unused
B 37595,37,8*4,5
c 37632 Initialise Interrupt Code then Display and Handle Input Device Selection Menu
C 37632,3 Set Stack Pointer to 23808
C 37635,1 Load A with zero
C 37636,3 Store zero at 23364 (see trivia)
C 37639,3 Reset all Interrupt Routine flags
C 37642,4 Set P-FLAG bits 0 and 1 (OVER 1) (IY = 23610)
C 37650,2 Put JR instruction at 65535 for jumping to interrupt routine...
C 37652,3 ...
C 37655,2 Load first byte of interrupt routine with 195...
C 37657,3 ...representing "JP"
C 37660,3 Load following two bytes of interrupt routine with 62178...
C 37663,3 ...to make "JP 62178"
C 37666,2 Load A with 59
C 37668,1 Disable Interrupts
C 37669,2 Load I register with 57 (for interrupt routine)
C 37671,1 Enable Interrupts
C 37672,1 Wait for interrupt
C 37673,1 Reset all Interrupt Routine flags...
C 37674,3 ... (IY = 23610)
C 37677,2 Set Interrupt Mode 2
C 37679,2 Set Player Attribute Update Flag (Player Attribute Update mode)...
C 37681,3 ...
C 37684,3 Set border to black and clear temporary storage area of memory
C 37687,2 Display and handle Input Device Selection Menu
c 37689 Wait for Interrupt then Display and Handle Input Device Selection Menu
D 37689 Used by the routine at #R64582.
C 37689,1 Wait for interrupt
C 37690,3 Set Stack Pointer to 23808
C 37693,1 Reset all Interrupt Routine flags...
C 37694,3 ... (IY = 23610)
C 37697,2 Set Interrupt Mode 2
C 37699,3 Set border to black and clear temporary storage area of memory
N 37702 This entry point is used by the routine at 37632
C 37702,3 Draw Input Device Selection Menu and update currently selected input device
C 37705,3 Process keyboard / joystick input on a menu and load A with selected item index
C 37708,2 If "CHANGE GAME OPTIONS" selected...
C 37710,3 ...then skip ahead to #R37758
C 37713,2 If "INSTRUCTIONS" selected...
C 37715,2 ...then skip ahead to #R37752
C 37717,2 If "PLAY GAME" selected...
C 37719,3 ...then jump to #R38024 (initialise data and start a new game)
C 37722,1 Store AF (A = index of selected menu item)
C 37723,3 Load A with index of currently selected input device (see trivia)
C 37726,1 Store AF (A = index of currently selected input device)
C 37727,1 Load C with index of currently selected input device
C 37728,3 Load A with y-coordinate of top edge of Window 6 (Control Selection Window)
C 37731,1 Add index of currently selected input device...
C 37732,2 ...and add two more to get y-coordinate of menu item for currently selected input device
C 37734,1 Load value into B
C 37735,2 Load C with 3
C 37737,3 Load HL with Attribute File address for coordinates (C, B)
C 37740,2 Set attribute at this location to 71 (white INK, black PAPER, BRIGHT) (see trivia)
C 37742,1 Restore DE (D = index of currently selected input device, previously in AF)
C 37743,1 Store AF (A = index of selected menu item)
C 37744,3 Set new selected input device index at #R63653
C 37747,3 Update currently selected input device...
C 37750,2 ...and loop back to #R37705
C 37752,3 Display Instructions windows
C 37755,3 Jump back to #R37702 to capture next menu selection
C 37758,3 Display and handle Gadget X Menu
C 37761,3 Jump back to #R37702 to capture next menu selection
c 37764 Display and Handle Gadget X Menu
D 37764 Used by the routines at #R37689 and #R43494.
C 37764,2 Set y-coordinate of top edge (characters) of Window 7 to 11...
C 37766,3 ...
C 37769,2 Load A with index of "REDEFINE THE GAME" Window
C 37771,3 ...and draw
C 37774,3 Point HL at Gadget X menu text...
C 37777,3 ...and print
C 37780,3 Play upward scale sound
C 37783,3 Process keyboard / joystick input on a menu and load A with selected item index
C 37786,1 If REDEFINE KEYBOARD selected...
C 37787,3 ...then skip ahead to #R37824
C 37790,2 If PLAYER ATTRIBUTE IGNORE selected...
C 37792,2 ...then skip ahead to #R37815
C 37794,2 If PLAYER ATTRIBUTE UPDATE selected...
C 37796,2 ...then skip ahead to #R37820
C 37798,2 If DO NOTHING selected...
C 37800,1 ...then return
C 37801,4 If Game In Progress Flag is reset... (IY = 23610)
C 37805,2 ...then skip ahead to #R37863
C 37807,2 If SAVE THE GAME selected...
C 37809,2 ...then skip ahead to #R37841
C 37811,2 If LOAD AN OLD GAME selected...
C 37813,2 ...then skip ahead to #R37848
C 37815,1 Reset Player Attribute Update Flag (Player Attribute Ignore mode)...
C 37816,3 ...
C 37819,1 Return
C 37820,2 Set Player Attribute Update Flag (Player Attribute Update mode)...
C 37822,2 ...and return
C 37824,3 Play upward scale sound
C 37827,2 Draw Window 8...
C 37829,3 ...
C 37832,3 Point HL at "Redefine Keys Window" text...
C 37835,3 ...and print to screen
C 37838,3 Redefine keyboard controls
C 37841,3 Clear Stack and Prepare to Save Data
C 37844,3 Jump to ROM routine to save game data
C 37847,1 Return (to start of Main Game Loop - see PUSH at #R37887)
C 37848,3 Clear Stack and Prepare to Load Data
C 37851,1 Set Carry Flag as we are LOADing, not VERIFYing
C 37852,3 Set Stack Pointer to 22528
C 37855,3 Jump to ROM routine to load game data
C 37858,4 Restore Stack Pointer from 23613 (set to 23808 in routine at #R37880)
C 37862,1 Return (to start of Main Game Loop - see PUSH at #R37887)
C 37863,2 Draw Window 5...
C 37865,3 ...
C 37868,3 Point HL at "SAVE & LOAD ARE NOT ALLOWED HERE..." text...
C 37871,3 ...and print to screen
C 37874,3 Play upward scale sound
C 37877,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed and return
c 37880 Clear Stack and Prepare to Load Data
D 37880 Used by the routine at #R37764.
C 37880,1 Remove return address of calling routine from top of Stack
C 37881,3 Set Stack Pointer to 23808
C 37884,3 Load HL with start address of Main Game Loop routine
C 37887,1 Store HL (address of Main Game Loop)
C 37888,4 Store Stack Pointer address at 23613 (System Variable ERR SP)
C 37892,1 Store HL (return address in routine that called this routine)
C 37893,3 Play upward scale sound
C 37896,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 37899,4 Set base address for load to 23296
C 37903,3 Set data length to 23808
C 37906,2 Load A with 255 to denote a data block
C 37908,1 Return
c 37909 Draw Input Device Selection Menu and Update Currently Selected Input Device
D 37909 Used by the routine at #R37689.
C 37909,3 Clear Display File
C 37912,2 Load system variable ATTR T with 70 (yellow INK, black PAPER, BRIGHT)...
C 37914,3 ...
C 37917,3 ...and flood Attribute File with this attribute
C 37920,2 Draw Window 5 ("STORMBRINGER A TRUE GRAPHIC ADVENTURE...")...
C 37922,3 ...
C 37925,3 Point HL at "STORMBRINGER A TRUE GRAPHIC ADVENTURE..." text...
C 37928,3 ...and print to screen
C 37931,2 Draw Control Selection Menu Window...
C 37933,3 ...
C 37936,3 Point HL at Initial Control Selection Menu text...
C 37939,3 ...and print to screen
C 37942,3 Play downward scale sound
C 37945,3 Load index of currently selected input device into A
C 37948,3 Update currently selected input device and return
c 37951 Display Instructions Windows
D 37951 Used by the routines at #R37689 and #R43494.
C 37951,2 Set y-coordinate of top edge (characters) of Window 7 to 10...
C 37953,3 ...
C 37956,2 Load A with 7 (index of window to draw)
C 37958,3 Point HL at Instructions Text
C 37961,3 Print text at HL in Window 07
C 37964,2 Draw Window 8...
C 37966,3 ...
C 37969,3 Point HL at "THE KEYS ARE :-..." text...
C 37972,3 ...and print to screen
C 37975,3 Print current control keys to screen
C 37978,3 Play upward scale sound
C 37981,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 37984,2 Prepare to draw Window 9
C 37986,3 Point HL at Cast of Characters text
C 37989,1 Store HL (pointer to text to print)
C 37990,3 Draw current Instructions Window
C 37993,1 Restore HL (pointer to text to print)
C 37994,3 Print text
C 37997,3 Play upward scale sound
C 38000,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed and return
c 38003 Set Border to Black and Clear Temporary Storage Area of Memory
D 38003 Used by the routine at #R37689.
C 38003,2 Set System Variable BORDCR to 7 (black BORDER, white INK, black PAPER)...
C 38005,3 ...
C 38008,1 Set border to black and reset EAR and MIC bits...
C 38009,2 ...
C 38011,3 Load memory addresses from #R23296 to 23551 with zeroes...
C 38014,3 ...
C 38017,3 ...
C 38020,1 ...
C 38021,2 ...
C 38023,1 Return
c 38024 Initialise Data and Start a New Game
D 38024 Used by the routine at #R37689.
C 38024,3 Load A with LSB of System Variable FRAMES...
C 38027,2 ...and clear bit 7 to leave random number between 0 and 127
C 38029,2 If number is zero then loop back to #R38024
C 38031,1 Load B with generated number
C 38032,2 If neither bit 5 not bit 6 is set (see trivia)...
C 38034,2 ...then loop back to #R38024 to generate another number
C 38036,1 Load A with generated number...
C 38037,3 ...and store at #R23484 as Current Password Number
C 38040,3 Point HL at start of "---" segment for Password Number in Rachel's help text at #R51709
C 38043,3 Splice numeric Password data as a string into Rachel's help text
C 38046,3 Play upward scale sound
C 38049,2 Set ATTR T system variable to 70 (yellow INK, black PAPER, BRIGHT)...
C 38051,3 ...
C 38054,3 Copy data from #R49282 - 49353 (Characters' Initial Stats)...
C 38057,3 ...to #R24768 - 24839 (Characters' Current Stats)...
C 38060,3 ...
C 38063,2 ...
C 38065,3 Copy data from #R48603 - 48610 (Magic Knight's Initial Data)...
C 38068,3 ...to #R24840 - 24847 (Magic Knight's Current Data)...
C 38071,2 ...
C 38073,3 Copy data from #R48611 - 48660 (Characters' Initial Inventories)...
C 38076,3 ...to #R24848 - 24897 (Characters' Current Inventories)...
C 38079,2 ...
C 38081,3 Copy data from #R48661 - 48684 (Characters' Initial Positions)...
C 38084,3 ...to #R24898 - 24921 (Characters' Current Positions)...
C 38087,2 ...
C 38089,3 Copy data from #R48685 - 48810 (Objects' Initial Positions)...
C 38092,3 ...to #R24922 - 25047 (Objects' Current Positions)...
C 38095,2 ...
C 38097,3 Set Magic Knight's available action flags
C 38100,1 Load A and HL with zero...
C 38101,1 ...
C 38102,1 ...
C 38103,3 Clear last pressed key
C 38106,3 Reset Bearwoolf Removed Flag
C 38109,3 Store zero at #R23486 (see trivia)
C 38112,3 Set 1/50 Second Counter (Time Elapsed since last second) to zero
C 38115,3 Set Minute Counter and Second Counter to zero
C 38118,3 Reset all Interrupt Routine flags
C 38121,1 Do nothing (see trivia)...
C 38122,1 ...
C 38123,1 ...
C 38124,3 Set two most significant bytes of system variable FRAMES to zero
C 38127,3 Set x- & y- coordinates of top-left character of currently glowing "Locate Compass" component to zero (see trivia)
C 38130,1 Set Animate Puff of Smoke Flag...
C 38131,3 ...
C 38134,3 Set Do Not Draw Storm Cloud Flag
C 38137,2 Set number of hours left to 36...
C 38139,3 ...
C 38142,2 Set room layout data instruction at #R59866...
C 38144,3 ...to 135 (draw Security Door 1/3)
C 38147,1 Set room layout data instruction at #R59867...
C 38148,3 ...to 136 (draw Security Door 2/3)
C 38151,1 Set room layout data instruction at #R59868...
C 38152,3 ...to 137 (draw Security Door 3/3)
C 38155,3 Set Room Layout Data Pointer for Room 3 to #R59006...
C 38158,3 ...i.e. include Grunter graphic in room layout
C 38161,2 Load A with random number in range 0-5...
C 38163,3 ...
C 38166,3 ...and store as Index of Required Disquise
C 38169,3 Load A with LSB of System Variable FRAMES...
C 38172,2 ...clear bits 3-7 to leave random number between 0 and 7...
C 38174,3 ...and set index of current Crystal Ball substring to this value
C 38177,2 Add four to A...
C 38179,2 ...clear bits 3-7 to leave random number between 0 and 7...
C 38181,3 ...and set index of current Scroll substring to this value
C 38184,2 Set index of next object to be laid by Chicken to 36 (Golden Egg)...
C 38186,3 ...
C 38189,2 Set Storm Cloud's current room to 12 (Outdoors, 11, The Spooky Forest, 3)...
C 38191,3 ...
C 38194,2 Move Magic Knight into Outdoors, 6 (The Sword in the Concrete), draw room and initialise room-specific data...
C 38196,3 ...
C 38199,4 Set Game In Progress Flag (IY = 23610)
C 38203,2 Jump into Main Game Loop (process keyboard input and move Magic Knight or enter menus)
c 38205 Main Game Loop - Process Keyboard Input and Move Magic Knight or Enter Menus
D 38205 Used by the routines at #R41578 and #R64926.
C 38205,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
N 38208 This entry point is used by the routine at #R38024.
C 38208,3 Set Magic Knight's velocity to zero, if appropriate move to new room, update state of Storm Cloud and execute room-specific routine
C 38211,3 Handle Magic Knight's fall
C 38214,2 Reset Bit 7 in A to select the keyboard half-row SPACE - B
C 38216,2 Read the keyboard
C 38218,1 Reset Carry Flag if SPACE pressed, else set it
C 38219,2 SPACE was not pressed, so skip ahead to #R38232
C 38221,2 Reset bit 0 in A to select the keyboard half-row SHIFT - V
C 38223,2 Read the keyboard
C 38225,1 Reset Carry Flag if SHIFT pressed, else set it
C 38226,3 Point HL at "BREAK KEY PRESSED" text
C 38229,3 If SHIFT was pressed (i.e. SHIFT-SPACE, or BREAK) jump to "Game over" window routine and return to Control Selection Menu
C 38232,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 38235,3 Capture keyboard or joystick input loading result into A
C 38238,2 If "left" pressed then...
C 38240,2 Skip ahead to "move left" subroutine
C 38242,2 If "right" pressed then...
C 38244,2 Skip ahead to "move right" subroutine
C 38246,2 If "up" pressed then...
C 38248,3 Skip ahead to "jump" subroutine
C 38251,2 If "down" pressed then...
C 38253,3 ...select Magic Knight's Room if Cheat / Debug Mode is enabled
C 38256,2 If "fire" pressed then...
C 38258,2 ...skip ahead to #R38266
C 38260,3 Wait for interrupt then erase Magic Knight from display, advance his current position then redraw
C 38263,3 Loop back for next key / control press
N 38266 Fire Pressed
C 38266,3 Wait for Fire Button / Key to be Released
C 38269,3 Display and handle main in-game menu
N 38272 Left Pressed
C 38272,3 If "Magic Knight Can't Move Left" flag is set...
C 38275,2 ...
C 38277,3 ...then loop back to start of keyboard check routine
C 38280,1 Switch AF and AF'
C 38281,2 Set Magic Knight Facing Left Flag...
C 38283,3 ...
C 38286,2 Set Magic Knight's x-velocity to minus 2...
C 38288,3 ...
C 38291,3 Prepare to set Magic Knight's x-velocity to minus 2
C 38294,1 Switch AF and AF' (A now holds pressed controls bitmap)
C 38295,2 If "up" was also pressed...
C 38297,2 ...then skip ahead to #R38333 (jumping subroutine)
C 38299,1 Set Magic Knight's current y-velocity to zero...
C 38300,3 ...
C 38303,3 Wait for interrupt then erase Magic Knight from display, advance his current position then redraw
C 38306,3 Handle Magic Knight's fall
C 38309,3 Loop back for next key / control press
N 38312 Right Pressed
C 38312,3 If "Magic Knight Can't Move Right" flag is set...
C 38315,2 ...
C 38317,3 ...then loop back to start of keyboard check routine
C 38320,1 Switch AF and AF'
C 38321,1 Reset Magic Knight Facing Left Flag...
C 38322,3 ...
C 38325,2 Jump to #R38288, setting Magic Knight's x-velocity to 2...
C 38327,2 ...
N 38329 Up Pressed
C 38329,1 Prepare to set Magic Knight's x-velocity to zero...
C 38330,3 ...
C 38333,3 Point HL at start of Magic Knight's y-velocities sequence table
C 38336,3 Store current position in Magic Knight's y-velocities sequence table at #R23442
C 38339,3 Load A with Magic Knight's current y-coordinate (pixels)
C 38342,2 If y-coordinate is less than 8...
C 38344,3 ...then jump to #R38413 (exit loop as Magic Knight can't get any higher!)
C 38347,3 Load HL with current position in Magic Knight's y-velocities sequence table
C 38350,1 Load the current y-velocity in the sequence into A
C 38351,2 Negate (as Magic Knight is jumping upwards)
C 38353,1 If A is zero...
C 38354,2 ...jump to #R38413 (exit loop as we have reached the end of the sequence)
C 38356,3 Load A into Magic Knight's y-velocity
N 38359 The operand of the instruction at #R38359 represents the x-velocity value stored previously. This is modified by the instructions at #R38291, #R38330 and #R38423.
C 38359,2 Set Magic Knight's x-velocity...
C 38361,3 ...
C 38364,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 38367,3 Load Magic Knight's x-velocity into B...
C 38370,1 ...
C 38371,3 Load Magic Knight movement flags into A
C 38374,1 Check:
C 38375,2 If x-velocity is -2 (left), and Magic Knight can't move left...
C 38377,3 ...then jump ahead to #R38419
C 38380,2 If x-velocity is -2 (left), and Magic Knight can't move left or right...
C 38382,3 ...then jump ahead to #R38419
C 38385,2 If x-velocity is +2 (right), and Magic Knight can't move left or right...
C 38387,3 ...then jump ahead to #R38419
C 38390,1 If x-velocity is +2 (right), and Magic Knight can't move right...
C 38391,3 ...then jump ahead to #R38419
C 38394,3 Kill Magic Knight's jump if he cannot vertically pass through a block above him
C 38397,1 Switch AF and AF'
C 38398,3 Wait for interrupt then erase Magic Knight from display, advance his current position then redraw
C 38401,1 Switch AF and AF'
C 38402,2 If Magic Knight's jump was impeded by a block above him then jump to #R38413
C 38404,3 Set Magic Knight's velocity to zero, if appropriate move to new room, update state of Storm Cloud and execute room-specific routine
C 38407,3 Load HL with current position in Magic Knight's y-velocities sequence table
C 38410,1 Advance to next y-velocity in the sequence
C 38411,2 Loop back to #R38336
C 38413,3 Handle Magic Knight's fall, preserving x-velocity
C 38416,3 Loop back to start of keyboard check routine
C 38419,1 Set Magic Knight's x-velocity to zero...
C 38420,3 ...
C 38423,3 Prepare to set Magic Knight's x-velocity to zero
C 38426,3 Jump back to #R38394
c 38429 Handle Magic Knight's Fall, Preserving x-Velocity
D 38429 Used by the routine at #R38205.
C 38429,3 Load Magic Knight's stored x-velocity
C 38432,2 Handle Magic Knight's fall
c 38434 Handle Magic Knight's Falls
D 38434 Used by the routine at #R38205.
C 38434,1 Set A to zero
N 38435 This entry point is used by the routine at #R38429.
C 38435,3 Prepare to set Magic Knight's x-velocity to A
C 38438,3 Point HL at end of table of y-velocities sequence for jumping and falling
C 38441,3 Store current position at #R23442
C 38444,3 If Magic Knight's movement flags are reset...
C 38447,1 ...
C 38448,2 ...then skip ahead to #R38454
C 38450,1 Prepare to set Magic Knight's x-velocity to zero...
C 38451,3 ...
C 38454,3 Load current position in y-velocities table into HL
C 38457,1 Load current y-velocity from table into A
C 38458,2 If velocity is 7...
C 38460,2 ...then skip ahead to #R38466
C 38462,1 Step pointer back one byte in y-velocities table
C 38463,3 Store pointer
C 38466,3 Load last y-velocity read from table into Magic Knight's y-velocity
N 38469 The operand of the instruction at #R38469 represents the x-velocity value stored previously. This is modified by the instructions at #R38435, #R38451 and #R38579.
C 38469,2 Set Magic Knight's x-velocity...
C 38471,3 ...
C 38474,3 Load A with Magic Knight's current x-coordinate (pixels)
C 38477,2 Add 4 to x-coordinate
C 38479,3 Divide x-coordinate by eight, rounding down to nearest integer
C 38482,1 Load result (Magic Knight's x-coordinate in characters) into C, setting B to zero...
C 38483,2 ...
C 38485,3 Load A with Magic Knight's current y-coordinate (pixels)
C 38488,2 If y-coordinate is a multiple of eight...
C 38490,2 ...then skip ahead to #R38494
C 38492,2 Set B to 8, as we need to look one character block lower due to Magic Knight spanning five, rather than four, characters [y-coordinate is not a multiple of eight]
C 38494,3 Load A with Magic Knight's current y-coordinate (pixels)
C 38497,1 Add B to current y-coordinate (i.e. y-coordinate of highest full character block spanned by Magic Knight)
C 38498,2 Add 32 (as Magic Knight is 32 pixels high, so now y-coordinate of highest full character block not occupied by Magic Knight)
C 38500,3 Divide A by eight, rounding down to nearest integer
C 38503,1 Load result (y-coordinate in characters) into B
C 38504,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B (block that Magic Knight is "falling through")
C 38507,1 If this block, or the one to the right of it cannot be passed vertically (downwards)...
C 38508,1 ...(i.e. Magic Knight has landed)...
C 38509,1 ...
C 38510,2 ...
C 38512,2 ...then skip ahead to #R38553
C 38514,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 38517,3 Load Magic Knight's x-velocity into B...
C 38520,1 ...
C 38521,3 Load Magic Knight's movement flags into A
C 38524,1 Check:
C 38525,2 If x-velocity is -2 (left), and Magic Knight can't move left...
C 38527,3 ...then jump ahead to #R38575
C 38530,2 If x-velocity is -2 (left), and Magic Knight can't move left or right...
C 38532,3 ...then jump ahead to #R38575
C 38535,2 If x-velocity is +2 (right), and Magic Knight can't move left or right...
C 38537,3 ...then jump ahead to #R38575
C 38540,1 If x-velocity is +2 (right), and Magic Knight can't move right...
C 38541,3 ...then jump ahead to #R38575
C 38544,3 Wait for interrupt then erase Magic Knight from display, advance his current position then redraw
C 38547,3 Set Magic Knight's velocity to zero, if appropriate move to new room, update state of Storm Cloud and execute room-specific routine
C 38550,3 Loop back to #R38444
C 38553,3 Load A with Magic Knight's current y-coordinate (pixels)
C 38556,2 Retain only pixel-within-character component (e.g. 5 pixels down the pair of character blocks)
C 38558,2 Negate (i.e. -5 pixels)
C 38560,2 Retain only pixel-within-character component (e.g. 3 pixels up the pair of character blocks, or 3 pixels down to the ground)
C 38562,3 Set Magic Knight's y-velocity so that it will take his feet to the ground
C 38565,3 Wait for interrupt then erase Magic Knight from display, advance his current position then redraw
C 38568,3 Set Magic Knight's x- and y-velocities to zero...
C 38571,3 ...
C 38574,1 Return (Magic Knight has landed)
C 38575,1 Set Magic Knight's x-velocity to zero...
C 38576,3 ...
C 38579,3 Prepare to set Magic Knight's x-velocity to zero
C 38582,3 Loop back to #R38544
c 38585 Kill Magic Knight's x-Velocity if he Cannot Horizontally Pass Through a Block Beside Him
D 38585 Used by the routines at #R38205 and #R38434.
C 38585,3 Load B with Magic Knight's "temporary store" movement flags...
C 38588,1 ...
C 38589,3 Load Magic Knight's x-coordinate into A
C 38592,2 If x-coordinate is less than 5...
C 38594,3 ...then jump ahead to #R38604
C 38597,2 If x-coordinate is 230 or greater...
C 38599,3 ...then jump ahead to #R38604
C 38602,2 Set B (Magic Knight's Temporary Store Movement Flags) to zero (i.e. Magic Knight is not at the outer edges of his current room, so can move both left and right)
C 38604,1 Load Magic Knight's Temporary Store Movement Flags into A
C 38605,3 Set Magic Knight's movement flags
C 38608,3 Load Magic Knight's y-coordinate into B
C 38611,1 ...
C 38612,3 Add Magic Knight's y-velocity to y-coordinate in A...
C 38615,1 ...
C 38616,3 Store this new (predicted) y-coordinate at #R23483
C 38619,2 Set C to 4 (as Magic Knight is normally four characters tall)
C 38621,2 If predicted y-coordinate is divisible by eight...
C 38623,2 ...then skip ahead to #R38626...
C 38625,1 ...else Magic Knight must be airborne and at non-integer y-coordinate, and so spans five character blocks rather than four
C 38626,1 Load A with number of vertical characters spanned by Magic Knight...
C 38627,3 ...and update instructions at #R38658...
C 38630,3 ...and #R38697 with this value
C 38633,3 Load Magic Knight's current x-coordinate into C...
C 38636,1 ...
C 38637,3 Add Magic Knight's x-velocity to x-coordinate in A...
C 38640,1 ...
C 38641,3 Store this new (predicted) x-coordinate at #R23482
C 38644,3 Divide predicted x-coordinate by eight, rounding down to nearest integer...
C 38647,1 ...and load into C
C 38648,3 Load predicted y-coordinate into A...
C 38651,3 ...divide it by eight, rounding down to nearest integer...
C 38654,3 ...store back at #R23483...
C 38657,1 ...and load into B
N 38658 The operand of the instruction at #R38658 represents number of characters spanned by Magic Knight, vertically. This is modified by the instruction at #R38627.
C 38658,2 Load number of characters (vertically) to check for impassibility
C 38660,1 Store remaining number of character blocks spanned by Magic Knight vertically to check
C 38661,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 38664,2 If Bit 6 of terrain data is set (i.e. Magic Knight cannot pass block horizontally)...
C 38666,2 ...then jump ahead to #R38675
C 38668,1 Advance check to next character down
C 38669,1 Restore remaining number of character blocks spanned by Magic Knight vertically to check
C 38670,1 Decrease count of remaining character blocks by one
C 38671,2 Loop back to #R38660 to check next block down
C 38673,2 Skip over setting Magic Knight's Cannot Move Left Flag as there are no obstructions to the left
C 38675,1 Restore AF
C 38676,3 Set "Magic Knight Cannot Move Left" Flag...
C 38679,2 ...
C 38681,3 ...
C 38684,3 Load Magic Knight's predicted x-coordinate (pixels) into A...
C 38687,2 ...and add 15...
C 38689,3 ...divide by eight, rounding down to nearest integer...
C 38692,1 ...and load into C
C 38693,3 Load Magic Knight's predicted y-coordinate (chars) into B...
C 38696,1 ...
N 38697 The operand of the instruction at #R38697 represents number of characters spanned by Magic Knight, vertically. This is modified by the instruction at #R38630.
C 38697,2 Load number of characters (vertically) to check for impassibility
C 38699,1 Store AF (remaining number of vertical characters to check for impassibility)
C 38700,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 38703,2 If Bit 6 is set (i.e. Magic Knight cannot pass block horizontally)...
C 38705,2 ...jump ahead to #R38714
C 38707,1 Increase y-coordinate by one character
C 38708,1 Restore AF
C 38709,1 Decrease number of remaining blocks to check
C 38710,2 If number of remaining blocks to check is not zero then loop back to #R38699
C 38712,2 Exit routine
C 38714,1 Restore AF
C 38715,3 Set "Magic Knight Cannot Move Right" flag...
C 38718,2 ...
C 38720,3 ...
C 38723,1 Return
c 38724 Kill Magic Knight's Jump if he Cannot Vertically Pass Through a Block Above Him
D 38724 Used by the routine at #R38205. Output: A  Zero (if Magic Knight's jump was not impeded) or 1 (if the jump was impeded)
C 38724,3 Load Magic Knight's current y-coordinate into B...
C 38727,1 ...
C 38728,3 Load A with Magic Knight's y-velocity
C 38731,1 Add y-velocity to y-coordinate in A
C 38732,3 Divide A by eight, rounding down to nearest integer
C 38735,1 Load Magic Knight's y-coordinate (CHARS) into B
C 38736,3 Load Magic Knight's current x-coordinate into A
C 38739,2 Add 4 to x-coordinate (to get point roughly quarter of the way through Magic Knight's total width)
C 38741,3 Divide A by eight, rounding down to nearest integer
C 38744,1 Load Magic Knight's current x-coordinate (CHARS) into C
C 38745,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 38748,2 If Bit 4 of Magic Knight's current position's terrain data (block is impassable vertically, upwards) is set then...
C 38750,2 ...kill Magic Knight's y-velocity and exit routine
C 38752,1 Advance to next character block along in "terrain interaction data"
C 38753,2 If Bit 4 of this position's terrain data (block is impassable vertically, upwards) is set then...
C 38755,2 ...kill Magic Knight's y-velocity and exit routine
C 38757,1 Advance y-coordinate by one character (to get point roughly three quarters of the way through Magic Knight's total width)
C 38758,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 38761,2 If Bit 4 of this position's terrain data (block is impassable vertically, upwards) is set then...
C 38763,2 ...kill Magic Knight's y-velocity and exit routine
C 38765,1 Advance to next character block along in "terrain interaction data"
C 38766,2 If Bit 4 of this position's terrain data (block is impassable vertically, upwards) is set then...
C 38768,2 ...kill Magic Knight's y-velocity and exit routine
C 38770,1 Set A to zero, as jump was not impeded
C 38771,1 Return
C 38772,1 Set Magic Knight's y-velocity to zero...
C 38773,3 ...
C 38776,2 Set A to one
C 38778,1 Reset Zero Flag
C 38779,1 Return
c 38780 Draw Top In-Game Window
D 38780 Used by the routine at #R38841.
C 38780,3 Point HL at Info Window Text (not carrying Mirror version)
C 38783,1 Store HL (address of Info Window Text)
C 38784,2 If Magic Knight is not carrying the Mirror (20)...
C 38786,3 ...
C 38789,2 ...then skip ahead to #R38796
C 38791,1 Restore HL (address of Info Window Text)
C 38792,3 Point HL at Info Window Text (carrying Mirror version)
C 38795,1 Store HL (address of Info Window Text)
C 38796,2 Draw Window 1...
C 38798,3 ...
C 38801,3 Load HL with Display File address corresponding to (10, 0) (characters)...
C 38804,3 ...and move Bitmap Virtual Text Cursor here
C 38807,3 Point HL at "STORMBRINGER" text...
C 38810,3 ...and print to screen
C 38813,3 Load HL with Display File address corresponding to (1, 1) (characters)...
C 38816,3 ...and move Bitmap Virtual Text Cursor here
C 38819,1 Store HL (address of Info Window Text)
C 38820,3 Print window text
C 38823,3 Print Magic Knight's current strength at (6, 2) as text if he is carrying the Mirror
C 38826,3 Draw objects in Magic Knight's inventory if he is carrying the Mirror then return
c 38829 Print "STORMBRINGER" Text at Top of Command Summary Window
D 38829 Used by the routine at #R63399.
C 38829,3 Load HL with Display File address corresponding to (10, 0) (characters)...
C 38832,3 ...and move Bitmap Virtual Text Cursor here
C 38835,3 Point HL at "STORMBRINGER" text...
C 38838,3 ...and print to screen, then return
c 38841 Move Magic Knight into Room A, Draw Room, Objects and Characters and Initialise Room-Specific Data
D 38841 Used by the routines at #R38024, #R40406, #R40437 and #R40546. Input:  A  Index of room to move Magic Knight into
C 38841,3 Update Magic Knight's current room to be room index passed to this routine in A
N 38844 This entry point is used by the routines at #R38205, #R39714 and #R64878.
C 38844,3 Load Magic Knight's current strength into A...
C 38847,1 ...and if not zero...
C 38848,2 ...then skip ahead to #R38865
C 38850,2 If Magic Knight is wearing the Brass Ankh...
C 38852,3 ...
C 38855,2 ...then skip ahead to #R38863
N 38857 This entry point is used by the routines at #R40153 and #R40201.
C 38857,3 Point HL at "YOU DIED OF EXHAUSTION" text
C 38860,3 Jump to "Game over" window routine and return to Control Selection Menu
C 38863,2 Set Magic Knight's current strength to 60...
C 38865,1 ...
C 38866,3 ...
C 38869,3 Draw top in-game window
C 38872,2 Load A with 71 (white INK, black PAPER, BRIGHT)...
C 38874,3 ...and load this value into system variables ATTR T...
C 38877,3 ...and ATTR P
C 38880,2 Load 32 into "frame number" property of...
C 38882,3 ...axe 1...
C 38885,3 ...axe 2...
C 38888,3 ...axe 3...
C 38891,3 ...and axe 4...
C 38894,3 Draw axe(s) to screen if Magic Knight is in an axe room
C 38897,3 Load A with Magic Knight's current room
C 38900,2 Clear all but the lowest two bits to leave a value 0-3...
C 38902,2 ...add this to 68...
C 38904,3 ...and set the border attribute of Window 1 to this value
C 38907,3 Load character rows 0-4 in Terrain Interaction Table with 254...
C 38910,3 ...i.e. prevent Magic Knight jumping above ceilings...
C 38913,3 ...
C 38916,2 ...
C 38918,2 ...
C 38920,3 Load character rows 5-22 in Terrain Interaction Table with 0...
C 38923,2 ...i.e. allow Magic Knight to pass through freely...
C 38925,2 ...
C 38927,3 Load character row 23 in Terrain Interaction Table with 254...
C 38930,2 ...i.e. prevent Magic Knight falling through floors...
C 38932,2 ...
C 38934,3 Starting at the beginning of the sixth character row (y=5)...
C 38937,3 ...fill the Attribute File to the end with...
C 38940,3 ...white INK, black PAPER, BRIGHT...
C 38943,2 ...
C 38945,2 ...
C 38947,3 Set all entries in Table of Glowing Attribute File Addresses to zero...
C 38950,3 ...
C 38953,3 ...
C 38956,2 ...
C 38958,2 ...
C 38960,3 Load A with Magic Knight's current room
C 38963,3 Point HL at start of Table of Room Layout Data Pointers
C 38966,3 Load address of layout data for Magic Knight's current room into HL
C 38969,1 Store HL (pointer to room layout data for Magic Knight's current room)
C 38970,3 Clear lower two thirds, and lower three character rows of upper third of Display File
C 38973,1 Restore HL (pointer to room layout data for Magic Knight's current room)
C 38974,3 Store address of start of room layout data by modifying instruction at #R39063
N 38977 This entry point is used by the routines at #R39014, #R39036, #R39047, #R40729, #R40752, #R40765 and #R40784.
C 38977,1 Read byte of room layout data
C 38978,1 If byte is a zero (i.e. marker for end of layout data)...
C 38979,3 ...then draw floor, paint attributes / Terrain Interaction Data, draw MK, characters and objects then return
C 38982,2 If byte is 126 (i.e. vertical block drawing)...
C 38984,3 ...then skip ahead to #R39036 (skip over block drawing data to start of next instruction)
C 38987,2 If byte is 127 (i.e. horizontal block drawing)...
C 38989,3 ...then skip ahead to #R39036 (skip over block drawing data to start of next instruction)
C 38992,2 If Bit 7 (Draw Layout Data Fragment Flag) is set...
C 38994,3 ...then jump to #R39014 (start drawing layout data fragment)
C 38997,1 Advance HL by three bytes to x- and y-coordinates...
C 38998,1 ...
C 38999,1 ...
C 39000,1 Load x- and y-coordinates (characters) for graphic into DE...
C 39001,1 ...
C 39002,1 ...
C 39003,1 Advance HL to Mirror Options...
C 39004,1 ...and load into C
C 39005,1 Advance HL to next byte (start of next entry) in Room Layout Data
C 39006,1 Store HL (current position in Room Layout Data)
C 39007,1 Swap DE (now current position in Room Layout Data) and HL (x- and y-coordinates of graphic to draw)
C 39008,3 Read Graphic Definition from Room Layout Data and Draw
C 39011,1 Restore HL (current position in Room Layout Data)
C 39012,2 Loop back to #R38977 for next byte of room layout data
c 39014 Room Drawing Start Drawing Layout Data Fragment
D 39014 Used by the routine at #R38841. Input:  A  Draw layout data fragment instruction
C 39014,1 Store AF (A = current byte from room layout data)
C 39015,2 Set Drawing Layout Data Fragment Flag to 1...
C 39017,3 ...
C 39020,1 Advance HL by one byte
C 39021,3 Store current position in room layout data at #R23453
C 39024,3 Load HL with address of Room Layout Data Fragment Pointers
C 39027,1 Restore AF (A = current byte from room layout data)
C 39028,2 Reset Bit 7
C 39030,3 Load address of layout data for required fragment into HL
C 39033,3 Loop back to #R38977 to start drawing fragment
c 39036 Room Drawing Skip Over Block Drawing Data to Start of Next Instruction
D 39036 Used by the routine at #R38841.
C 39036,1 Advance data pointer by two bytes...
C 39037,1 ...
C 39038,1 Load A with current data byte...
C 39039,1 ...and advance data pointer by one byte
C 39040,2 If byte was 255 (End Marker)...
C 39042,3 ...then loop back to #R38977 for next byte of room layout data
C 39045,2 Loop back to #R39038 to check next byte
c 39047 Room Drawing (000) - Draw Floor, Paint Attributes / Terrain Interaction Data, Draw MK, Characters and Objects then Return
D 39047 Used by the routine at #R38841.
C 39047,3 If Drawing Layout Data Fragment Flag is zero (reset)...
C 39050,1 ...
C 39051,2 ...then skip ahead to #R39063
C 39053,1 Set Drawing Layout Data Fragment Flag to zero (reset)...
C 39054,3 ...
C 39057,3 Load HL with previously stored position in room layout data
C 39060,3 Loop back to #R38977 for next byte of room layout data
N 39063 The operand of the instruction at #R39063 represents the address of start of room layout data for the current room. This is modified by the instruction at #R38974.
C 39063,4 Load IX with start address of room layout data for current room
N 39067 This entry point is used by the routines at #R39183, #R39189, #R39216, #R39291, #R39393 and #R41059.
C 39067,3 Load first byte of room layout data instruction
C 39070,1 If this byte is zero (i.e. last entry so no more painting to do)...
C 39071,3 ...then finalise room drawing, draw objects and characters, and animate the arrival of any new characters, then return
C 39074,2 If this byte is 127 (i.e. horizontal block drawing)...
C 39076,3 ...then draw run of 2x2 blocks horizontally
C 39079,2 If this byte is 126 (i.e. vertical block drawing)...
C 39081,3 ...then draw run of 2x2 blocks vertically
C 39084,2 If Bit 7 (Draw Layout Data Fragment Flag) is set...
C 39086,3 ...then jump to #R39189 (start painting attribute / terrain interaction data for layout data fragment)
C 39089,2 Advance to RLE Attribute Data index and load into L...
C 39091,3 ...
C 39094,2 Advance to RLE Terrain Interaction Data index and load into E...
C 39096,3 ...
C 39099,2 Advance to x-coordinate...
C 39101,3 ...
C 39104,3 ...and store at #R23408
C 39107,2 Advance to y-coordinate...
C 39109,3 ...
C 39112,3 ...and store at #R23409
C 39115,2 Load H with zero (RLE Attribute Data index already in L)...
C 39117,1 ...and multiply by four...
C 39118,1 ...
C 39119,3 Point BC at start of Lookup Table for RLE Attribute Data (Room Layout Graphics)...
C 39122,1 ...and add HL as offset, loading result into HL
C 39123,1 Swap DE (now points to entry in RLE Attribute Lookup Table at #R60487) and HL (L now RLE Terrain Interaction Data index)
C 39124,2 Load H with zero (RLE Terrain Interaction Data index already in L)...
C 39126,1 ...and multiply by four...
C 39127,1 ...
C 39128,3 Point BC at start of Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics)...
C 39131,1 ...and add HL as offset, loading result into HL
C 39132,1 Swap DE (now points to entry in RLE Terrain Interaction Lookup Table at #R60889) and HL (now points to entry in RLE Attribute Lookup Table at #R60487)
C 39133,1 Store DE (pointer to required entry in RLE Terrain Interaction Lookup Table)
C 39134,2 Advance to Mirror Options...
C 39136,3 ...and load into A
C 39139,2 Store IX (current position in room layout data)
C 39141,1 If both mirror options are off...
N 39142 The following jumps handle the painting of the current room layout data entry's attribute and terrain interaction data. After this painting is completed, IX is advanced to the start of the next room layout data entry and a jump back to #R39067 occurs to process this next entry.
C 39142,3 ...then paint room layout data entry's attributes and terrain interaction data then process next entry
C 39145,2 If Apply Vertical Mirror selected...
C 39147,3 ...then paint room layout data entry's attributes and terrain interaction data applying vertical mirror, then process next entry
C 39150,2 If Apply Horizontal Mirror selected...
C 39152,3 ...then paint room layout data entry's attributes and terrain interaction data applying horizontal mirror, then process next entry
C 39155,3 Otherwise, paint room layout data entry's attributes and terrain interaction data applying horizontal and vertical mirrors, then process next entry
c 39158 Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint Attributes
D 39158 This routine is jumped to only by the routine at #R40937, which in turn is only jumped to by the routine at #R39047. In this latter routine, the instruction at #R39133 pushes DE (pointer to required entry in RLE Terrain Interaction Lookup Table) onto the stack, and then the instruction at #R39139 pushes IX (current position in room layout data) onto the stack.
C 39158,2 Restore IX (current position in room layout data)
C 39160,1 Restore HL (pointer to required entry in RLE Terrain Interaction Lookup Table, PUSHed by instruction at #R39133)
C 39161,3 Load Mirror Options into A
C 39164,2 Store IX (current position in room layout data)
C 39166,1 If both mirror options are off...
C 39167,3 ...then paint room layout data entry's Terrain Interaction Parameters, then advance to next entry
C 39170,2 If Apply Vertical Mirror selected...
C 39172,3 ...then paint room layout data entry's Terrain Interaction Parameters, applying vertical mirror, then advance to next entry
C 39175,2 If Apply Horizontal Mirror selected...
C 39177,3 ...then paint room layout data entry's Terrain Interaction Parameters, applying horizontal mirror, then advance to next entry
C 39180,3 Otherwise, paint room layout data entry's Terrain Interaction Parameters, applying horizontal and vertical mirrors, then advance to next entry
c 39183 Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint Terrain Interaction Data
D 39183 Used by the routine at #R41173.
C 39183,2 Restore IX (current position in room layout data, PUSHed by instruction at #R39164)
C 39185,2 Advance IX by one byte to start of next room layout data entry
C 39187,2 Process next room layout instruction (jump to #R39067)
c 39189 Room Drawing Start Painting Attribute / Terrain Interaction Data for Layout Data Fragment
D 39189 Used by the routine at #R39047. Input:  A  Draw layout data fragment instruction
C 39189,1 Store AF (A = current byte from room layout data)
C 39190,2 Set Drawing Layout Data Fragment Flag to 1...
C 39192,3 ...
C 39195,2 Advance IX by one byte
C 39197,4 Store current position in room layout data at #R23453
C 39201,3 Load HL with address of Room Layout Data Fragment Pointers
C 39204,1 Restore AF (A = current byte from room layout data)
C 39205,2 Reset Bit 7
C 39207,3 Load address of layout data for required fragment into HL
C 39210,1 Transfer address from HL to IX...
C 39211,2 ...
C 39213,3 Loop back to #R38977 to start painting fragment
c 39216 Draw Run of 2x2 Blocks Horizontally
D 39216 The parameters for block drawing start at the byte after the address in IX. These are: Input:  IX  Current position in room layout data
C 39216,2 Advance IX to x-coordinate...
C 39218,3 ...and load into C
C 39221,2 Advance IX to y-coordinate...
C 39223,3 ...and load into B
C 39226,2 Advance IX to first block layout data byte
C 39228,1 Store BC (B = y-coordinate, C = x-coordinate)
C 39229,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 39232,1 Restore BC (B = y-coordinate, C = x-coordinate)
C 39233,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B...
C 39236,3 ...and store at #R23709
C 39239,3 Load A with next block layout data...
C 39242,2 ...and if this is 255 (End Marker)...
C 39244,2 ...then skip ahead to #R39261
C 39246,2 If Draw Run Flag is set...
C 39248,2 ...then skip ahead to #R39266
C 39250,2 Store IX (current position in block layout data)
C 39252,3 Draw 2x2 block with style index A at Bitmap Virtual Text Cursor then move right two characters
C 39255,2 Restore IX (current position in block layout data)
C 39257,2 Advance IX to next block layout data...
C 39259,2 ...and loop back to #R39239 to process
N 39261 End Marker encountered
C 39261,2 Advance IX to next byte in room layout data...
C 39263,3 ...and jump to #R39067 to process
N 39266 Draw Run Flag set
C 39266,2 Reset Draw Run Flag...
C 39268,1 ...and load B with run length
C 39269,2 Advance IX to block style index...
C 39271,3 ...and load into A
C 39274,2 Advance IX to next block layout data
C 39276,2 Store IX (current position in block layout data)
C 39278,1 Store BC (B = remaining number of blocks to draw)
C 39279,1 Store AF
C 39280,3 Draw 2x2 block with style index A at Bitmap Virtual Text Cursor then move right two characters
C 39283,1 Restore AF
C 39284,1 Restore BC (B = remaining number of blocks to draw)
C 39285,2 Decrease remaining number of blocks and loop back to #R39278 if not zero
C 39287,2 Restore IX (current position in block layout data)
C 39289,2 Loop back to #R39239 for next block layout data
c 39291 Draw Run of 2x2 Blocks Vertically
D 39291 The parameters for block drawing start at the byte after the address in IX. These are: Input:  IX  Current position in room layout data
C 39291,2 Advance IX to x-coordinate...
C 39293,3 ...and load into L
C 39296,2 Advance IX to y-coordinate...
C 39298,3 ...and load into H
C 39301,2 Advance IX to first block layout data byte
C 39303,3 Store coordinates of top-left of block at #R23463
C 39306,3 Load A with next block layout data...
C 39309,2 ...and if this is 255 (End Marker)...
C 39311,2 ...then skip ahead to #R39332
C 39313,2 If Draw Run Flag is set...
C 39315,2 ...then skip ahead to #R39337
C 39317,3 Draw 2x2 block with style index A at coordinates stored at #R23463 then move right two characters
C 39320,2 Advance IX to next block layout data
C 39322,3 Load HL with coordinates of top-left of block just drawn...
C 39325,1 ...add two to y-coordinate...
C 39326,1 ...
C 39327,3 ...and store updated coordinates at #R23463
C 39330,2 Loop back to #R39306 to process next block layout data
N 39332 End Marker encountered
C 39332,2 Advance IX to next byte in room layout data...
C 39334,3 ...and jump to #R39067 to process
N 39337 Draw Run Flag set
C 39337,2 Reset Draw Run Flag...
C 39339,1 ...and load B with run length
C 39340,2 Advance IX to block style index...
C 39342,3 ...and load into A
C 39345,2 Advance IX to next block layout data
C 39347,1 Store BC (B = remaining number of blocks to draw)
C 39348,1 Store AF
C 39349,3 Draw 2x2 block with style index A at coordinates stored at #R23463 then move right two characters
C 39352,3 Load HL with coordinates of top-left of block just drawn...
C 39355,1 ...add two to y-coordinate...
C 39356,1 ...
C 39357,3 ...and store updated coordinates at #R23463
C 39360,1 Restore AF
C 39361,1 Restore BC (B = remaining number of blocks to draw)
C 39362,2 Decrease remaining number of blocks and loop back to #R39347 if not zero
C 39364,2 Loop back to #R39306 for next block layout data
c 39366 Draw 2x2 Block with Style Index A at Coordinates Stored at 23463 then move Right Two Characters
D 39366 Used by the routine at #R39291. Input:  A  Block style index
C 39366,2 Store IX (current position in block layout data)
C 39368,1 Store AF
C 39369,4 Load BC with coordinates of top-left of block
C 39373,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 39376,4 Load BC with coordinates of top-left of block
C 39380,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B...
C 39383,3 ...and store address at #R23709
C 39386,1 Restore AF
C 39387,3 Draw 2x2 block with style index A at Bitmap Virtual Text Cursor then move right two characters
C 39390,2 Restore IX (current position in block layout data)
C 39392,1 Return
c 39393 Finalise Room Drawing, Draw Objects and Characters, and Animate the Arrival of Any New Characters
D 39393 Used by the routine at #R39047. Input:  IX  Current position in room layout data Output: A  Index of Magic Knight's current room
C 39393,3 If Drawing Layout Data Fragment Flag is zero (reset)...
C 39396,1 ...
C 39397,2 ...then skip ahead to #R39410
C 39399,1 Set Drawing Layout Data Fragment Flag to zero (reset)...
C 39400,3 ...
C 39403,4 Load IX with previously stored position in room layout data
C 39407,3 Process next room layout instruction (jump to #R39067 to paint Attribute and Terrain Interaction data)
C 39410,3 Load A with floor UDG code...
C 39413,3 ...and store at #R63305
C 39416,3 Load floor attribute into A...
C 39419,3 ...and set ATTR T system variable to this value
C 39422,3 Load HL with Display File address corresponding to (0, 23) (characters)...
C 39425,3 ...and move Bitmap Virtual Text Cursor here
C 39428,3 Update character printing routine to use base address of Floor Character Set graphics
C 39431,3 Draw run of 32 characters (i.e. draw the room's floor)...
C 39434,3 ...
C 39437,3 Update Character Printing Routine to use base address of Text Character Set graphics
C 39440,2 Transfer current position in room layout data from IX...
C 39442,1 ...to HL
C 39443,1 Advance HL by two bytes, to attribute parameter...
C 39444,1 ...
C 39445,3 Read glowing character block definitions and add to current room
C 39448,3 Print Magic Knight's current room's name at top of screen
C 39451,3 Draw axe(s) to screen if Magic Knight is in an Axe Room
C 39454,3 Prepare to execute room-specific routine for Magic Knight's current room
C 39457,3 Draw all objects in Magic Knight's current room
C 39460,3 Draw all characters in Magic Knight's current room
C 39463,3 Flag Magic Knight's current room as visited for scoring purposes...
C 39466,1 ...
C 39467,2 ...
C 39469,3 ...
C 39472,1 ...
C 39473,2 ...
C 39475,2 Set system variable BORDCR to 7...
C 39477,3 ...
C 39480,1 Set border to black and reset speaker state...
C 39481,2 ...
C 39483,2 Set ATTR T system variable to 71 (white INK, black PAPER, BRIGHT)...
C 39485,3 ...
C 39488,3 If Animate Puff of Smoke Flag is reset...
C 39491,1 ...
C 39492,2 ...then skip ahead to #R39525
C 39494,3 Load Magic Knight's current x-coordinate into A
C 39497,1 Divide x-coordinate by eight, rounding down to nearest integer...
C 39498,1 ...
C 39499,1 ...
C 39500,2 ...
C 39502,1 Copy x-coordinate (characters) into C
C 39503,3 Load Magic Knight's current y-coordinate into A
C 39506,1 Divide y-coordinate by eight, rounding down to nearest integer...
C 39507,1 ...
C 39508,1 ...
C 39509,2 ...
C 39511,1 Copy y-coordinate (characters) into B
C 39512,4 Store Magic Knight's current character coordinates at #23296...
C 39516,3 ...
C 39519,3 ...
C 39522,3 Animate Puff of Smoke at Magic Knight's current coordinates
C 39525,3 Store background attributes if appropriate, then draw Magic Knight to display without drawing axes
C 39528,1 Reset Animate Puff of Smoke Flag...
C 39529,3 ...
C 39532,3 Animate arrival of any new character if in Magic Knight's current room
C 39535,3 If a character has arrived then redraw Magic Knight and all characters in room
C 39538,3 Set Magic Knight's available action flags
C 39541,4 Reset Characters Movement Unrestricted Flag / Disable In-Game Glow Flag
C 39545,4 Reset Characters Can't Move Flag
C 39549,3 Load A with index of Magic Knight's current room
C 39552,1 Return
c 39553 If a Character Has Arrived then Redraw Magic Knight and All Characters in Room
D 39553 Used by the routine at #R39393.
C 39553,3 If Character Is Incoming Flag is reset...
C 39556,1 ...
C 39557,1 ...then return
C 39558,3 Draw all characters in Magic Knight's current room
C 39561,3 Restore background bitmap data (i.e. remove Magic Knight bitmap data from display)...
C 39564,1 ...and wait for interrupt...
C 39565,3 ...
C 39568,3 If Player Attribute Update Flag is set (Player Attribute Update mode)...
C 39571,1 ...
C 39572,3 ...then restore background attribute data at Magic Knight's current location
C 39575,3 Store background attributes if appropriate, then draw Magic Knight to display without drawing axes and return
c 39578 Print Magic Knight's Current Room's Name at Top of Screen
D 39578 The Room Name Bar displayed on the 5th character row takes as its attribute the inverse of the attribute at (0, 0), i.e. INK and PAPER colours exchanged.
C 39578,3 Load B with attribute at (0, 0), i.e. top-left of display...
C 39581,1 ...
C 39582,2 Clear all but BRIGHT and FLASH flags...
C 39584,1 ...and load into C
C 39585,1 Load A with attribute at (0, 0)...
C 39586,2 ...and clear all but INK bits
C 39588,1 Shift INK bit values into PAPER bits...
C 39589,1 ...i.e. set PAPER to colour previously in INK...
C 39590,1 ...
C 39591,1 Set BRIGHT and FLASH flags to values stored previously...
C 39592,1 ...and load C with new attribute value
C 39593,1 Load A with attribute at (0, 0)
C 39594,1 Shift PAPER bit values into INK bits...
C 39595,1 ...
C 39596,1 ...
C 39597,2 ...and clear all but INK bits
C 39599,1 Add new INK value to existing attribute in A
C 39600,3 Set ATTR T system variable to attribute in A, which is now the inverse of attribute at (0, 0)
C 39603,3 Point HL at start of table of room names
C 39606,3 Load B with Magic Knight's current room...
C 39609,1 ...
C 39610,3 Advance HL to name entry for Magic Knight's current room
C 39613,1 Load first value (string length) into A
C 39614,1 If string length value is zero (i.e. no room name defined)...
C 39615,1 ...then return
C 39616,1 Advance HL to first byte of string
C 39617,1 Store HL (pointer to first byte of room name string)
C 39618,2 Add 2 to the string's length to accommodate space characters before and after...
C 39620,1 ...and load value into B
C 39621,2 Load A with width of screen (characters) minus length of room name string and spaces...
C 39623,1 ...
C 39624,1 Divide value by two...
C 39625,2 ...and cap at 31
C 39627,1 Load this value (length of one half of Room Name string) into BC...
C 39628,2 ...
C 39630,3 Point HL at top pixel row of character block at coordinates (0, 4)
C 39633,1 Add value in BC as offset...
C 39634,3 ...and load this address into Bitmap Virtual Text Cursor
C 39637,3 Point HL at text code for SPACE
C 39640,3 Print text at location HL to screen using full screen width
C 39643,1 Restore HL (pointer to first byte of room name string)
C 39644,3 Print text at location HL to screen using full screen width
C 39647,3 Point HL at text code for SPACE
C 39650,3 Print text at location HL to screen using full screen width and return
b 39653 Miscellaneous Text 1
T 39653,2,1:B1 (SPACE character for padding room names)
c 39655 Prepare to Execute Room-Specific Routine for Magic Knight's Current Room
D 39655 Used by the routine at #R39393.
C 39655,3 Load A with Magic Knight's current room
C 39658,3 Point HL at start of Table of Room-Specific Routine Addresses
C 39661,3 Advance HL to entry for Magic Knight's current room and load into HL
C 39664,3 Update jump in routine at #R40190 to execute room-specific routine
C 39667,1 Return
c 39668 Check Whether Magic Knight is Moving into a New Room and React if so
D 39668 Used by the routine at #R40008.
C 39668,3 Load A with Magic Knight's current x-coordinate (pixels)
C 39671,2 If less than 3...
C 39673,3 ...then skip to #R39714 (move Magic Knight one room to the left if possible then return)
C 39676,2 If more than 231...
C 39678,3 ...then skip to #R39758 (move Magic Knight one room to the right if possible then return)
C 39681,1 Return
c 39682 Change Magic Knight's Current Room if Possible
D 39682 Used by the routines at #R39714 and #R39758. Input:  A  Magic Knight's new x-coordinate upon entering new room DE Exit that Magic Knight is leaving old room from; either 0 (left exit) or 1 (right exit) Output: F  Zero Flag set if Magic Knight can't leave his current room, reset otherwise
C 39682,1 Store new x-coordinate for later
C 39683,1 Set Magic Knight's Temporary Movement Flags to zero (new room, so Magic Knight can move both left and right)...
C 39684,3 ...
C 39687,3 Point HL to Room Connectivity Data Table
C 39690,3 Load Magic Knight's current room's index into A...
C 39693,1 ...double it...
C 39694,1 ...and load into BC...
C 39695,2 ...
C 39697,1 Add BC as offset to HL
C 39698,1 Point to left or right exit from current room, as determined by DE
C 39699,1 Load new room number into A...
C 39700,2 ...and if this is 255 (i.e. Magic Knight can't leave his current room)...
C 39702,2 ...set Zero Flag and exit routine...
C 39704,3 ...else update Magic Knight's current room to be this new room index
C 39707,1 Restore new x-coordinate to B...
C 39708,1 ...and load back into A
C 39709,1 Reset Zero Flag
C 39710,1 Return
C 39711,1 Restore AF to BC...
C 39712,1 ...and load A with contents of B to restore to what it was on entering this routine
C 39713,1 Return
c 39714 Move Magic Knight One Room to the Left if Possible
D 39714 Used by the routine at #R39668. Input:  A  (Entry at #R39746 only) Magic Knight's new x-coordinate (pixels)
C 39714,3 If Magic Knight's current room is not 2 (Outdoors, 1, Bearwoolf's Cave)...
C 39717,2 ...
C 39719,2 ...then skip ahead to #R39736
C 39721,3 If current progress through cave is 4...
C 39724,2 ...
C 39726,2 ...then skip ahead to #R39736
C 39728,1 Increase current progress through cave by one...
C 39729,3 ...
C 39732,2 Load A with Magic Knight's new x-coordinate when he arrives in new room (228 is near right-hand side of room)
C 39734,2 Skip ahead to #R39746 (move Magic Knight back to other side of the room)
C 39736,3 Set DE to zero (dealing with current room's left exit)
C 39739,2 Load A with Magic Knight's new x-coordinate when he arrives in new room (228 is near right-hand side of room)
C 39741,3 Change Magic Knight's current room (if possible) based upon left exit of his current room
C 39744,2 If Magic Knight can't leave his current room then jump to #R39752
N 39746 This entry point is used by the routine at #R39758.
C 39746,3 Set Magic Knight's x-coordinate
C 39749,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data and return
C 39752,2 Set Magic Knight's Temporary Movement Flags to 1 (Magic Knight can't move left because he can't leave his current room)...
C 39754,3 ...
C 39757,1 Return
c 39758 Move Magic Knight One Room to the Right if Possible
D 39758 Used by the routine at #R39668.
C 39758,3 If Magic Knight's current room is not 2 (Outdoors, 1, Bearwoolf's Cave)...
C 39761,2 ...
C 39763,2 ...then skip ahead to #R39779
C 39765,3 If current progress through cave is zero...
C 39768,1 ...
C 39769,2 ...then skip ahead to #R39779
C 39771,1 Decrease current progress through cave by one...
C 39772,3 ...
C 39775,2 Load A with Magic Knight's new x-coordinate when he arrives in new room (4 is near left-hand side of room)
C 39777,2 Set Magic Knight's x-coordinate, draw the room and return
C 39779,3 Set DE to 1 (dealing with current room's right exit)
C 39782,2 Load A with Magic Knight's new x-coordinate when he arrives in new room (4 is near left-hand side of room)
C 39784,3 Change Magic Knight's current room (if possible) based upon right exit of his current room
C 39787,2 If Magic Knight's can leave his current room then set his x-coordinate, draw the room and return
C 39789,2 Set Magic Knight's Temporary Movement Flags to 2 (Magic Knight can't move right because he can't leave his current room)...
C 39791,3 ...
C 39794,1 Return
c 39795 Draw all Characters in Magic Knight's Current Room
D 39795 Used by the routines at #R39393 and #R39553.
C 39795,4 Set Characters Can't Move Flag
C 39799,4 Point IX at start of Table of Characters' Current Positions at #R24898
C 39803,3 Load B with 8 and C (current character) with 0
C 39806,3 Load A with Magic Knight's current room
C 39809,3 If Magic Knight and current character are in the same room...
C 39812,3 ...then draw character with index C
C 39815,1 Increase C to advance to next character
C 39816,2 Advance IX to entry for next character...
C 39818,2 ...
C 39820,2 ...
C 39822,2 Loop back to #R39806 for next character
C 39824,4 Reset Characters Can't Move Flag
C 39828,1 Return
c 39829 Animate Arrival of Any New Character if in Magic Knight's Current Room
D 39829 Used by the routine at #R39393.
C 39829,1 Reset Character Is Incoming Flag...
C 39830,3 ...
C 39833,4 Set Characters Can't Move Flag
C 39837,4 Point IX at start of Table of Characters' Current Positions at #R24898
C 39841,3 Load B with 8 and C (current character) with 0
C 39844,3 Load A with Magic Knight's current room
C 39847,4 If Arrival Pending Flag in character's current room (pointed to by IX) is reset...
C 39851,2 ...then skip ahead to #R39869
C 39853,3 Load E with character's current room
C 39856,2 Reset Arrival Pending Flag in E...
C 39858,1 ...and if this is then the same as Magic Knight's current room...
C 39859,3 ...then animate Puff of Smoke at character's current coordinates...
C 39862,3 ...and draw the character
C 39865,4 Reset character's Arrival Pending Flag
C 39869,1 Increase C (index of current character)
C 39870,2 Advance IX to room of next character...
C 39872,2 ...
C 39874,2 ...
C 39876,2 Decrease B (remaining number of characters to check) and loop back to #R39844 if not zero
C 39878,4 Reset Characters Can't Move Flag
C 39882,1 Return
c 39883 Draw a Character
D 39883 Used by the routines at #R39795 and #R39829. Input:  C  Index of character to draw IX  Pointer to position data
C 39883,1 Store BC
C 39884,2 Store IX
C 39886,1 Load A with character's index...
C 39887,3 ...store in operand of instruction at #R39904...
C 39890,2 ...and point HL at this character's Attribute value (in Characters' Current Stats Table)...
C 39892,3 ...
C 39895,1 Load character's Attribute into A...
C 39896,3 ...and modify instruction at #R39942 with this value
C 39899,1 Advance HL to Character Graphic Index...
C 39900,1 ...and load value into A
C 39901,1 If this is not zero...
C 39902,2 ...then skip ahead to #R39909 (i.e. draw the character)
N 39904 The operand of the instruction at #R39904 represents the index of the character to draw. This is modified by the instruction at #R39887.
C 39904,2 If character index is not zero (see trivia)...
C 39906,1 ...i.e. not Off-White...
C 39907,2 ...then skip ahead to #R39929 (i.e. don't draw the character)
C 39909,3 Load C with character's x-coordinate (characters)
C 39912,3 Load B with character's y-coordinate (characters)
C 39915,2 Store IX (pointer to character's entry in Table of Characters' Current Positions)
C 39917,3 Draw the graphic with lookup index A at character coordinates (C, B) with width = 2 characters and height = 4 characters
C 39920,2 Restore IX (pointer to character's entry in Table of Characters' Current Positions)
C 39922,3 If Player Attribute Update Flag is set (Player Attribute Update mode)...
C 39925,1 ...
C 39926,3 ...then paint the character's attributes
C 39929,2 Restore IX
C 39931,1 Restore BC
C 39932,1 Return
c 39933 Paint a character's attributes
D 39933 Used by the routine at #R39883. Input:  IX  A character's entry in Table of Characters' Current Positions at #R24898.
C 39933,3 Load C with character's x-coordinate (characters)
C 39936,3 Load B with character's y-coordinate (characters)
C 39939,3 Load HL with Attribute File address for coordinates (C, B)
N 39942 The operand of the instruction at #R39942 represents the character's attribute value. This is modified by the instruction at #R39896.
C 39942,2 Load A with Attribute value
C 39944,2 Load B with 4 (as characters are four characters high)
C 39946,1 Store BC (B = remaining number of character rows to paint)
C 39947,1 Paint character's attribute at coordinates (C, B)...
C 39948,1 ...
C 39949,1 ...and at coordinates (C + 1, B)
C 39950,3 Advance down one character row, and left one character to coordinates (C, B + 1)...
C 39953,1 ...
C 39954,1 Restore BC (B = remaining number of character rows to paint)
C 39955,2 Decrease remaining number of character rows to paint and loop back to #R39946
C 39957,1 Return
c 39958 Animate Puff of Smoke at Coordinates Pointed to by IX
D 39958 Used by the routines at #R39393 and #R39829. Input:  IX  Address of position data for a character, or Magic Knight
C 39958,1 Store AF
C 39959,1 Store BC
C 39960,3 Copy 2x4 (Characters) Region of Display File into Temporary Storage at #R23299
C 39963,3 Set Character Is Incoming Flag...
C 39966,1 ...
C 39967,3 ...
C 39970,2 Load C with 30 (graphic index of first Puff of Smoke frame)
C 39972,2 Load B with 5 (number of smoke frames to draw) [bug]
C 39974,1 Store BC (B = remaining number of frames to draw, C = current frame's lookup index)
C 39975,2 Store IX (address of position data)
C 39977,1 Store AF
C 39978,1 Load A with current graphic index
C 39979,3 Load C with x-coordinate (characters)
C 39982,3 Load B with y-coordinate (characters)
C 39985,3 Draw 2x3 graphic with lookup index A at character coordinates (C, B)
C 39988,1 Store BC (B = remaining number of frames to draw, C = current frame's lookup index)
C 39989,2 Load B with 12 (number of interrupt cycles to wait per frame)
C 39991,1 Wait for interrupt
C 39992,2 Decrease remaining number of interrupt cycles to wait and loop back to #R39991 if not zero
C 39994,1 Restore BC (B = remaining number of frames to draw, C = current frame's lookup index)
C 39995,3 Copy 2x4 (Characters) Region from Temporary Storage at #R23299 into Display File
C 39998,1 Restore AF
C 39999,2 Restore IX (address of position data)
C 40001,1 Restore BC (B = remaining number of frames to draw, C = current frame's lookup index)
C 40002,1 Advance to next Puff of Smoke frame
C 40003,2 Decrease remaining number of frames to draw and loop back to #R39974 if not zero
C 40005,1 Restore BC
C 40006,1 Restore AF
C 40007,1 Return
c 40008 Set Magic Knight's Velocity to Zero, if Appropriate Move to New Room, Update State of Storm Cloud and Execute Room-Specific Routine
D 40008 Used by the routines at #R38205 and #R38434.
C 40008,3 Set Magic Knight's current x- and y-velocities to zero...
C 40011,3 ...
C 40014,3 Check whether Magic Knight is moving into a new room and react if so
C 40017,3 If Magic Knight is currently in Bearwoolf's cave or hoard, or in Limbo...
C 40020,2 ...
C 40022,3 ...then decrease Magic Knight's current strength by average of 1/4 if he is carrying the Glow Shield and jump to room-specific routine
C 40025,2 If Magic Knight is currently in the Castle or the Spaceship...
C 40027,3 ...then decrease Magic Knight's current strength by average of 1/4 if he is carrying the Glow Shield and jump to room-specific routine
C 40030,3 If Magic Knight's current room...
C 40033,1 ...
C 40034,3 ...is the same as the Storm Cloud's current room...
C 40037,1 ...
C 40038,3 ...then if Do Not Draw Storm Cloud Flag is set then prepare to draw Storm Cloud
C 40041,3 Load B with the Storm Cloud's current room as stored at #R23715...
C 40044,1 ...
C 40045,3 Load C with Storm Cloud's current x-coordinate...
C 40048,1 ...
C 40049,3 Load H with Magic Knight's current room...
C 40052,1 ...
C 40053,3 Load L with Magic Knight's current x-coordinate (pixels)...
C 40056,1 ...
C 40057,1 Set A to zero and reset Carry Flag
C 40058,2 If Magic Knight and Storm Cloud have the same horizontal position in the same room...
C 40060,2 ...then skip ahead to #R40102 (have a lightning bolt strike Magic Knight)
C 40062,3 If Magic Knight is to the right of the Storm Cloud then skip ahead to #R40068
C 40065,1 Move the Storm Cloud one pixel to the left, changing room if appropriate
C 40066,2 Skip ahead to #R40069
C 40068,1 Move the Storm Cloud one pixel to the right, changing room if appropriate
C 40069,1 Load A with Storm Cloud's current room in B...
C 40070,3 ...and store at #R23715
C 40073,1 Load A with Storm Cloud's current x-coordinate in C...
C 40074,3 ...and store at #R23700
C 40077,2 If Storm Cloud's current x-coordinate is less than 32...
C 40079,3 ...then skip ahead to #R40091
C 40082,2 If Storm Cloud's current x-coordinate is at least 223...
C 40084,3 ...then skip ahead to #R40094
C 40087,2 Subtract 30 from A (Storm Cloud's current x-coordinate)
C 40089,2 Skip ahead to #R40096
C 40091,1 Load A with zero
C 40092,2 Skip ahead to #R40096
C 40094,2 Load A with 195
C 40096,3 Store new apparent x-coordinate at #R23701
C 40099,3 Decrease Magic Knight's current strength by average of 1/4 if he is carrying the Glow Shield and jump to room-specific routine
C 40102,2 Set MASK P and MASK T system variables to 255...
C 40104,3 ...to preserve attributes already on screen...
C 40107,3 ...
C 40110,3 Load C with apparent x-coordinate stored previously...
C 40113,2 ...and add 30...
C 40115,1 ...to give x-coordinate of origin of lightning bolt
C 40116,2 Load B with 119 (y-coordinate of origin of lightning bolt)
C 40118,3 Load E with Magic Knight's current x-coordinate (pixels) plus eight...
C 40121,2 ...(x-coordinate of target of lightning bolt)...
C 40123,1 ...
C 40124,3 Load A with Magic Knight's current y-coordinate (pixels)
C 40127,2 Subtract y-coordinate from 175 to change y-origin to top of screen...
C 40129,2 ...and have y-coordinate increase downwards rather than upwards
C 40131,1 Load D with result
C 40132,1 Store BC (coordinates of lightning bolt origin)
C 40133,1 Store DE (coordinates of lightning bolt target)
C 40134,3 Draw the lightning bolt
C 40137,2 Wait for 20 interrupts...
C 40139,1 ...
C 40140,2 ...
C 40142,1 Restore DE (coordinates of lightning bolt target)
C 40143,1 Restore BC (coordinates of lightning bolt origin)
C 40144,3 Erase the lightning bolt drawn previously
C 40147,3 Decrease Magic Knight's current strength by ten
C 40150,3 Decrease Magic Knight's current strength by average of 1/4 if he is carrying the Glow Shield and jump to room-specific routine
c 40153 Decrease Magic Knight's Current Strength by Ten
D 40153 Used by the routine at #R40008.
C 40153,2 Load B with 10 (as we are decreasing Magic Knight's strength by 10)
N 40155 This entry point is used by the routine at #R40177.
C 40155,3 Load Magic Knight's current strength into A...
C 40158,1 ...and if zero...
C 40159,2 ...then skip ahead to #R40173
C 40161,1 Decrease Magic Knight's current strength by one...
C 40162,3 ...
C 40165,1 Store BC
C 40166,3 Print Magic Knight's current strength at (6, 2) as text if he is carrying the Mirror
C 40169,1 Restore BC
C 40170,2 Loop back to #R40155 for next strength point
N 40172 This entry point is used by the routine at #R40190. It also serves as the room-specific routine for various rooms.
C 40172,1 Return
C 40173,1 Remove return address of calling routine from top of Stack
C 40174,3 Display "YOU DIED OF EXHAUSTION" Game Over window and return to Control Selection Menu
c 40177 Decrease Magic Knight's Current Strength By One Every Fourth Call
D 40177 The operand of the instruction at #R40177 represents the number of calls since the last time Magic Knight's strength was decreased, which happens once every four calls. This is modified by the instruction at #R40182.
C 40177,2 Load A with number of cycles since last call...
C 40179,1 ...and increase by one
C 40180,2 Clear all but bits 0 and 1...
C 40182,3 ...and store at #R40177
C 40185,1 If value is not zero (i.e. four cycles have not elapsed since last decrease) then return
C 40186,2 Decrease Magic Knight's strength by one and return...
C 40188,2 ...
c 40190 Decrease Magic Knight's Current Strength By Average of 1/4 if He Is Carrying the Glow Shield
D 40190 Used by the routine at #R40008.
C 40190,2 If Magic Knight is carrying the Glow Shield (12)...
C 40192,3 ...
C 40195,3 ...then decrease Magic Knight's current strength by one every fourth call
N 40198 The operand of the instruction at #R40198 (jump destination) is the address of a room-specific routine. This is modified by the instruction at #R39664.
C 40198,3 Jump to room-specific routine
c 40201 Room-Specific Routine Decrease Magic Knight's Strength by One Once Every Four Frames
C 40201,3 Load A with LSB of System Variable FRAMES...
C 40204,2 ...clear bits 2-7 to leave random number between 0 and 3...
C 40206,1 ...and if number is not zero then return
C 40207,3 Load A with unused bit...
C 40210,2 ...
C 40212,3 ...and store as operand of instruction at #R40222
C 40215,3 Load Magic Knight's current strength into A...
C 40218,2 ...
C 40220,1 ...and decrease by one
C 40221,1 Store AF (A = Magic Knight's new strength)
N 40222 The operand of the instruction at #R40222 represents the unused bit from Magic Knight's current strength. This is modified by the instruction at #R40212.
C 40222,2 Combine unused bit with new strength value in A...
C 40224,3 ...and store as Magic Knight's current strength
C 40227,3 Print Magic Knight's current strength at (6, 2) as text if he is carrying the Mirror
C 40230,1 Restore AF (A = Magic Knight's new strength)...
C 40231,3 ...and if zero then display "YOU DIED OF EXHAUSTION" Game Over window and return to Control Selection Menu
C 40234,1 Return
c 40235 Room-Specific Routine Update Position of 1 Axe and Display
C 40235,1 Set A to zero (axe 0)
C 40236,3 Update position of Axe 0, display, and decrease Magic Knight's strength if in contact, then return
c 40239 Room-Specific Routine Update Positions of 4 Axes and Display
C 40239,1 Set A to zero (axe 0)
C 40240,3 Update position of Axe 0, display, and decrease Magic Knight's strength if in contact
C 40243,2 Set A to 1 (axe 1)
C 40245,3 Update position of Axe 1, display, and decrease Magic Knight's strength if in contact
C 40248,2 Set A to 2 (axe 2)
C 40250,3 Update position of Axe 2, display, and decrease Magic Knight's strength if in contact
C 40253,2 Set A to 3 (axe 3)
C 40255,3 Update position of Axe 3, display, and decrease Magic Knight's strength if in contact, then return
c 40258 Room-Specific Routine Kill Magic Knight if he is in a Dark Room Without Illumination
C 40258,2 If Magic Knight is carrying the Torch (19)...
C 40260,3 ...
C 40263,1 ...then return
C 40264,2 If Magic Knight is carrying the Glow Shield (12)...
C 40266,3 ...
C 40269,1 ...then return
C 40270,2 If the Torch is in Magic Knight's current room...
C 40272,3 ...
C 40275,3 ...
C 40278,1 ...
C 40279,1 ...then return
C 40280,2 If the Glow Shield is in Magic Knight's current room...
C 40282,3 ...
C 40285,3 ...
C 40288,1 ...
C 40289,1 ...then return
C 40290,4 Reset Game In Progress Flag (IY = 23610)
C 40294,3 Load HL with Attribute File address for cell at (0, 6)
C 40297,3 Load DE with Attribute File address for cell at (1, 6)
C 40300,3 Load BC with 575 (prepare to write to remainder of Attribute File)
C 40303,1 Set Attribute File byte at HL to (L = 192) (black INK, black PAPER, BRIGHT, FLASH)
C 40304,2 Flood remainder of Attribute File with attribute value 192
C 40306,2 Draw Window 26...
C 40308,3 ...
C 40311,3 Point HL at "SOMEBODY SWITCHED OUT THE LIGHT..." text...
C 40314,3 ...and print
C 40317,3 Wait for Interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 40320,3 Point HL at "YOU HURT YOURSELF MOVING AROUND IN THE DARK" text
C 40323,3 Display Cyan "Game Over" Window and Return to Control Selection Menu
c 40326 Load B with Room Index of Object A
D 40326 Used by the routine at #R40258. Input:  A  Index of an object Output: B  Current room of object HL  Address of current position data for object
C 40326,1 Load BC with three times object index...
C 40327,1 ...
C 40328,1 ...
C 40329,1 ...
C 40330,2 ...
C 40332,3 Load HL with start address of Table of Objects' Current Positions...
C 40335,1 ...and add BC as offset
C 40336,1 Load B with room index of object
C 40337,1 Return
c 40338 Room-Specific Routine Check for Egg Dropped down Wishing Well and Set Wish Pending Flag and Display Message If Appropriate
C 40338,3 If Wish Pending Flag is set...
C 40341,1 ...
C 40342,1 ...then return
C 40343,3 Check whether an egg has been dropped down the Wishing Well and set Wish Pending Flag if so
C 40346,3 If Wish Pending Flag is reset...
C 40349,1 ...
C 40350,1 ...then return
C 40351,3 Point HL at "SOMEBODY YELLS...YOU CAN HAVE A WISH IF YOU WANT..." text
C 40354,3 Display "...YOU CAN HAVE A WISH IF YOU WANT..." window (29), wait for Fire to be pressed then jump to Main Game Loop
c 40357 Check Whether an Egg Has Been Dropped Down the Wishing Well and Set Wish Pending Flag if So
D 40357 Used by the routine at #R40338.
C 40357,2 Load A with 36 (object index of Golden Egg)
C 40359,2 Load B with 6 (as there are six eggs)
C 40361,1 Store BC (B = remaining number of eggs to process)
C 40362,1 Store AF (A = object index of current egg)
C 40363,1 Load BC with three times object index of current egg...
C 40364,1 ...
C 40365,1 ...
C 40366,1 ...
C 40367,2 ...
C 40369,3 Point HL at start of Objects' Current Positions Table...
C 40372,1 ...and add BC as offset
C 40373,1 Load A with room of current egg...
C 40374,2 ...and if this is not 14 (Outdoors, 13, Wishing Well)...
C 40376,2 ...then skip ahead to #R40395
C 40378,1 Advance HL to y-coordinate of object...
C 40379,1 ...
C 40380,1 ...and load into A
C 40381,2 If this is not 19...
C 40383,2 ...then skip ahead to #R40395
N 40385 The instructions between #R40385 and #R40392 are only executed when the current egg is both in room 14 (Outdoors, 13, Wishing Well) and has a y-coordinate of 19, i.e. the egg has been dropped on top of (down) the well. The index of the dropped object (egg) is stored at #R23365.
C 40385,1 Restore AF (A = object index of current egg)
C 40386,3 Store object index of current egg at #R23365, i.e. set Wish Pending Flag
C 40389,1 Store AF (A = object index of current egg)
C 40390,1 Move HL back to room of object...
C 40391,1 ...
C 40392,3 ...and store address in operand of instruction at #R40400
C 40395,1 Restore AF (A = object index of current egg)
C 40396,1 Restore BC (B = remaining number of eggs to process)
C 40397,1 Advance A to next egg
C 40398,2 Decrease remaining number of eggs to process and loop back to #R40361 if not zero
N 40400 The operand of the instruction at #R40400 represents the start address of the current position data for the object of interest. This is modified by the instruction at #R40392.
C 40400,3 Load HL with address of current position data for dropped egg...
C 40403,2 ...and set its current room to 99
C 40405,1 Return
c 40406 Room-Specific Routine Move Magic Knight Down a Room if Appropriate
D 40406 Move Magic Knight "down" a room if he is at 128 < x < 153 and y = 152.
C 40406,3 If Magic Knight's current y-coordinate (pixels) is not 152...
C 40409,2 ...i.e. he is not at floor-level...
C 40411,1 ...then return
C 40412,3 If Magic Knight's current x-coordinate (pixels) is 153 or greater...
C 40415,2 ...
C 40417,1 ...then return
C 40418,2 If Magic Knight's current x-coordinate (pixels) is less than 128...
C 40420,1 ...then return
C 40421,2 Set Magic Knight's current y-coordinate (pixels) to 48...
C 40423,3 ...
C 40426,3 Load A with index of Magic Knight's current room...
C 40429,2 ...minus 7
C 40431,3 Set this as Magic Knight's current room (see trivia)
C 40434,3 Move Magic Knight into room A, draw room, objects and characters and initialise room-specific data
c 40437 Room-Specific Routine Move Magic Knight Between Teleport Rooms if Appropriate
C 40437,1 Set BORDER to black and reset speaker state (see trivia)...
C 40438,2 ...
C 40440,3 Load B with Current Password Number...
C 40443,1 ...
C 40444,3 If value encoded in Main Lever Flags...
C 40447,1 ...is not the same as Current Password Number...
C 40448,1 ...then return
C 40449,3 If Magic Knight's current y-coordinate (pixels) is not 144...
C 40452,2 ...
C 40454,1 ...then return
C 40455,3 If Magic Knight's current x-coordinate (pixels) is not 112...
C 40458,2 ...
C 40460,1 ...then return
C 40461,2 Set Magic Knight's current x-coordinate (pixels) to 144...
C 40463,3 ...
C 40466,2 Load B with 40 (index of Castle Third Floor, 2, Teleport Room, 1)
C 40468,3 If Magic Knight's current room...
C 40471,2 ...is 47 (Spaceship, 2, Teleport Room, 2)...
C 40473,2 ...then skip ahead to #R40477
C 40475,2 Load B with 47 (index of Spaceship, 2, Teleport Room, 2)
C 40477,2 Set Animate Puff of Smoke Flag...
C 40479,3 ...
C 40482,1 Load A with destination room index in B
C 40483,3 Set this as Magic Knight's current room (see trivia)
C 40486,3 Move Magic Knight into room A, draw room, objects and characters and initialise room-specific data
c 40489 Room-Specific Routine Display Cave Progress and Set Magic Knight's x-Velocity to 2 if at Floor Level
C 40489,3 Load A with current progress through cave
C 40492,3 Point HL at "---" text
C 40495,3 Splice numeric cave progress data as a string into "---" text
C 40498,3 Load HL with Display File address corresponding to (14, 5) (characters)...
C 40501,3 ...and move Bitmap Virtual Text Cursor here
C 40504,3 Point HL at "---" text...
C 40507,3 ...and print
C 40510,2 Prepare to set Magic Knight's x-velocity to 2...
C 40512,3 ...
C 40515,3 If Magic Knight's current y-coordinate (pixels) is not 152...
C 40518,2 ...
C 40520,1 ...then return
C 40521,2 Set Magic Knight's x-velocity to 2, redraw and return
c 40523 Room-Specific Routine Set Magic Knight's x-Velocity to 2 if his y-Coordinate is 136
C 40523,2 Load A with 2
C 40525,2 Set Magic Knight's x-Velocity to 2 if his y-Coordinate is 136
c 40527 Room-Specific Routine Set Magic Knight's x-Velocity to -2 if his y-Coordinate is 136
C 40527,2 Load A with -2
N 40529 This entry point is used by the routine at #R40523.
C 40529,3 Prepare to set Magic Knight's x-velocity to A
C 40532,3 If Magic Knight's current y-coordinate (pixels) is not 136...
C 40535,2 ...
C 40537,1 ...then return
N 40538 This entry point is used by the routine at #R40489. The operand of the instruction at #R40538 represents the x-velocity given to Magic Knight due to a conveyor-belt-like force. This is modified by the instructions at #R40512 and #R40529.
C 40538,2 Load A with new x-velocity...
C 40540,3 ...and set this as Magic Knight's x-velocity
C 40543,3 Set Redraw Magic Knight On Next Interrupt Flag, wait for interrupt and return
c 40546 Room-Specific Routine Move Magic Knight Up or Down a Room if Appropriate and Boost Jumps if Wearing Power Boots
D 40546 The CALL at #R40546 will move Magic Knight "down" a room if he is at 128 < x < 153 and y = 152.
C 40546,3 Move Magic Knight down a room if appropriate
N 40549 This entry point serves as the room-specific routine for moving Magic Knight up a room if appropriate, and boosting jumps if wearing Power Boots.
C 40549,3 If Magic Knight's current y-coordinate (pixels) is 152...
C 40552,2 ...
C 40554,1 ...then return
C 40555,3 If Magic Knight's current x-coordinate (pixels) is less than 204...
C 40558,2 ...
C 40560,1 ...then return
C 40561,2 If Magic Knight is not wearing the Power Boots (11)...
C 40563,3 ...
C 40566,1 ...then return
C 40567,3 If Magic Knight's current y-coordinate (pixels) is less than 62...
C 40570,2 ...
C 40572,2 ...then skip ahead to #R40582
C 40574,2 Set Magic Knight's y-velocity to -4...
C 40576,3 ...
C 40579,3 Set Redraw Magic Knight On Next Interrupt Flag, wait for interrupt and return
C 40582,2 Set Magic Knight's current y-coordinate (pixels) to 136...
C 40584,3 ...
C 40587,3 Load A with index of Magic Knight's current room...
C 40590,2 ...plus 7
C 40592,3 Set this as Magic Knight's current room (see trivia)
C 40595,3 Move Magic Knight into room A, draw room, objects and characters and initialise room-specific data
c 40598 Room-Specific Routine Kill Magic Knight if he is Too Close to Bearwoolf
C 40598,3 If Magic Knight's current x-coordinate (pixels) is 128 or greater...
C 40601,2 ...
C 40603,1 ...then return
N 40604 The operand of the instruction at #R40604 represents the Bearwoolf Removed Flag. This is modified by the instructions at #R38106 and #R45290.
C 40604,2 Load A with Bearwoolf Removed Flag...
C 40606,1 ...and if this is set...
C 40607,1 ...then return
C 40608,3 Point HL at "YOU STOOD FAR TOO CLOSE TO BEARWOOLF..." text
C 40611,3 Display Cyan "Game Over" Window and Return to Control Selection Menu
c 40614 Room-Specific Routine Enable / Disable Entry to Castle Depending Upon Disquise Worn and Whether Newspaper is Held
C 40614,1 Do nothing...
C 40615,1 ...
C 40616,1 ...
C 40617,1 ...
C 40618,1 ...
C 40619,2 Set right exit from Outdoors, 15 (The Castle Entrance) to 255...
C 40621,3 ...i.e. disable right exit
C 40624,2 If Magic Knight is not wearing the Disquise...
C 40626,3 ...
C 40629,1 ...then return
C 40630,3 Load B with zero-based index of current disquise...
C 40633,1 ...
C 40634,1 ...
C 40635,3 Load A with Index of Required Disquise...
C 40638,1 ...and if this is not the same as the disquise currently being worn...
C 40639,1 ...then return
C 40640,2 If Magic Knight is not carrying the Newspaper (33)...
C 40642,3 ...
C 40645,1 ...then return
C 40646,3 Load A with index Magic Knight's current room...
C 40649,1 ...plus one...
C 40650,3 ...and set right exit from Outdoors, 15 (The Castle Entrance) to A
C 40653,1 Set Magic Knight's Temporary Movement Flags to zero (so Magic Knight can move both left and right)...
C 40654,3 ...
C 40657,1 Return
c 40658 Divide A by Eight, Rounding Down to Nearest Integer
D 40658 Used by the routines at #R38434, #R38585, #R38724, #R45584 and #R47731.
C 40658,1 Divide by eight...
C 40659,1 ...
C 40660,1 ...
C 40661,2 ...and remove remainder
C 40663,1 Return
c 40664 Room Drawing Read Graphic Definition from Room Layout Data and Draw
D 40664 Used by the routine at #R38841. Input:  A  Index of graphic to draw C  Mirror options (bit 0 = apply vertical mirror, bit 1 = apply horizontal mirror) H  y-coordinate (characters) L  x-coordinate (characters)
C 40664,1 Store BC (C = horizontal / vertical mirror options)
C 40665,1 Store HL (H = y-coordinate, L = x-coordinate)
C 40666,1 Load four times index of graphic to draw into HL...
C 40667,2 ...
C 40669,1 ...
C 40670,1 ...
C 40671,3 ...and add (in HL) to address of start of Graphics Data Lookup Table at #R29272 as an offset...
C 40674,1 ...
C 40675,1 Load width & height at this location into BC...
C 40676,1 ...
C 40677,1 ...
C 40678,1 ...
C 40679,1 Load address of graphic data into HL...
C 40680,1 ...
C 40681,1 ...
C 40682,1 ...
C 40683,3 ...and store at #R23447
C 40686,1 Restore HL (H = y-coordinate, L = x-coordinate)...
C 40687,3 ...and store at #R23408
C 40690,1 Add width and height to get coordinates (x+1, y+1) of bottom right of graphic to draw...
C 40691,3 ...and store at #R23410
C 40694,1 Restore BC (C = horizontal / vertical mirror options)
C 40695,1 If both mirror options are switched off...
C 40696,2 ...
C 40698,3 ...then skip ahead to #R40717
C 40701,2 If only the "apply vertical mirror" option is switched on...
C 40703,3 ...then skip ahead to #R40720
C 40706,2 If only the "apply horizontal mirror" option is switched on...
C 40708,3 ...then skip ahead to #R40723
C 40711,2 If both mirror options are switched on...
C 40713,3 ...then skip ahead to #R40726
C 40716,1 Return
C 40717,3 Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode off, draw the graphic and return
C 40720,3 Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode off, draw the graphic and return
C 40723,3 Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode on, draw the graphic and return
C 40726,3 Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode on, draw the graphic and return
c 40729 Unused routine
D 40729 This is a room drawing routine. It reads start co-ordinates, repeat count and UDG code and prints a run of characters.
C 40729,3 Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout Data
C 40732,1 Load repeat count into B...
C 40733,1 ...and advance HL to next parameter
C 40734,1 Load UDG code to print into A...
C 40735,1 ...and advance HL to next parameter
C 40736,1 Store HL (current position in room layout data)
C 40737,1 Store BC (B = remaining number of UDGs to print)
C 40738,1 Store AF (A = UDG code to print)
C 40739,1 Store HL (current position in room layout data)
C 40740,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 40743,1 Restore HL (current position in room layout data)
C 40744,1 Restore AF (A = UDG code to print)
C 40745,1 Restore BC (B = remaining number of UDGs to print)
C 40746,2 Decrease remaining number of UDGs to print and loop back to #R40737
C 40748,1 Restore HL (current position in room layout data)
C 40749,3 Jump back to #R38977 for next byte of room layout data
c 40752 Unused routine
D 40752 This is a room drawing routine. It reads start co-ordinates and UDG code and prints the UDG.
C 40752,3 Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout Data
C 40755,1 Load UDG code to print into A...
C 40756,1 ...and advance HL to next parameter
C 40757,1 Store HL (current position in room layout data)
C 40758,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 40761,1 Restore HL (current position in room layout data)
C 40762,3 Jump back to #R38977 for next byte of room layout data
c 40765 Unused routine
D 40765 This is a room drawing routine. It draws a line.
C 40765,1 Advance data pointer by three bytes...
C 40766,1 ...
C 40767,1 ...
C 40768,1 Load x-coordinate of start of line into C
C 40769,1 Advance HL to y-coordinate of start of line...
C 40770,1 ...and load into B
C 40771,1 Advance HL to x-coordinate of end of line...
C 40772,1 ...and load into E
C 40773,1 Advance HL to y-coordinate of end of line...
C 40774,1 ...and load into D
C 40775,1 Advance HL to start of next room layout data entry
C 40776,1 Store HL (current position in room layout data)
C 40777,3 Draw a line from (C, B) to (E, D)
C 40780,1 Restore HL (current position in room layout data)
C 40781,3 Jump back to #R38977 for next byte of room layout data
c 40784 Unused routine
D 40784 This is a room drawing routine. It draws a horizontal line.
C 40784,1 Advance data pointer by three bytes...
C 40785,1 ...
C 40786,1 ...
C 40787,1 Transfer current position in room layout data from HL to IX...
C 40788,2 ...
C 40790,3 Load HL with y-coordinate (pixels)...
C 40793,2 ...
C 40795,1 ...and double
C 40796,3 Point BC at Table of Display File Addresses of Start of Each Pixel Row...
C 40799,1 ...and add doubled y-coordinate as offset in HL
C 40800,3 Load address corresponding to start of pixel row at this coordinate into HL
C 40803,2 Advance layout data pointer to next byte
C 40805,3 Load BC with x-coordinate of start of line (characters)...
C 40808,2 ...
C 40810,1 ...and add to HL as offset
C 40811,2 Advance layout data pointer to next byte
C 40813,3 Load A with x-coordinate of end of line (characters)
C 40816,1 Subtract start coord. from end coord. and add one to get width...
C 40817,1 ...
C 40818,1 ...and load into B
C 40819,2 Load A with 255 (i.e. all bits set)
C 40821,1 Write a row of eight set pixels to the Display File...
C 40822,1 ...and advance to next character to the right
C 40823,2 Decrease B (remaining number of character blocks to draw to) and loop back to #R40821
C 40825,2 Transfer current position in room layout data from IX to HL...
C 40827,1 ...
C 40828,1 Advance room layout data pointer to next instruction in layout data
C 40829,3 Jump back to #R38977 for next byte of room layout data
c 40832 Room Drawing - Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout Data
D 40832 Used by the routines at #R40729 and #R40752. Input:  HL  Pointer to an instruction in room layout data Output: HL Pointer to next instruction in room layout data
C 40832,1 Advance HL by three bytes...
C 40833,1 ...
C 40834,1 ...
C 40835,1 Load x- and y-coordinates into BC...
C 40836,1 ...
C 40837,1 ...
C 40838,1 ...advancing to next position in room layout data
C 40839,1 Store HL (current position in room layout data)
C 40840,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 40843,1 Restore HL (current position in room layout data)
C 40844,1 Return
c 40845 Paint Room Layout Data Entry's Attributes, Applying Horizontal and Vertical Mirrors (Room Drawing)
D 40845 Used by the routine at #R39047. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) at #R60487 Output: B  y-coordinate of graphic's bottom C  x-coordinate of graphic's right
C 40845,1 Store HL (current entry in Lookup Table for RLE Attribute Data)
C 40846,3 Modify instruction at #R40983 to load x-coordinate of graphic's left edge into A...
C 40849,3 ...i.e. set end x-coordinate for painting right-to-left
C 40852,3 Modify instruction at #R40987 to jump to #R41025...
C 40855,3 ...i.e. advance HL up one character row in Attribute File
C 40858,2 Modify instruction at #R40990 with opcode 43 (DEC HL)...
C 40860,3 ...
C 40863,1 Restore HL (current entry in Lookup Table for RLE Attribute Data)
C 40864,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 40867,4 Load BC with coordinates of graphic's bottom-right
C 40871,2 Jump to attribute painting routine
c 40873 Paint Room Layout Data Entry's Attributes, Applying Horizontal Mirror (Room Drawing)
D 40873 Used by the routine at #R39047. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) at #R60487 Output: B  y-coordinate of graphic's bottom C  x-coordinate of graphic's left
C 40873,1 Store HL (current entry in Lookup Table for RLE Attribute Data)
C 40874,3 Modify instruction at #R40983 to load x-coordinate of graphic's right edge into A...
C 40877,3 ...i.e. set end x-coordinate for painting left-to-right
C 40880,3 Modify instruction at #R40987 to jump to #R41025...
C 40883,3 ...i.e. advance HL up one character row in Attribute File
C 40886,2 Modify instruction at #R40990 with opcode 35 (INC HL)...
C 40888,3 ...
C 40891,1 Restore HL (current entry in Lookup Table for RLE Attribute Data)
C 40892,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 40895,3 Load C with x-coordinate of graphic's left edge...
C 40898,1 ...
C 40899,3 Load B with y-coordinate of graphic's bottom edge...
C 40902,1 ...
C 40903,2 Jump to attribute painting routine
c 40905 Paint Room Layout Data Entry's Attributes, Applying Vertical Mirror (Room Drawing)
D 40905 Used by the routine at #R39047. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) at #R60487 Output: B  y-coordinate of graphic's top C  x-coordinate of graphic's right
C 40905,1 Store HL (current entry in Lookup Table for RLE Attribute Data)
C 40906,3 Modify instruction at #R40983 to load x-coordinate of graphic's left edge into A...
C 40909,3 ...i.e. set end x-coordinate for painting right-to-left
C 40912,3 Modify instruction at #R40987 to jump to #R41004...
C 40915,3 ...i.e. advance HL down one character row in Attribute File
C 40918,2 Modify instruction at #R40990 with opcode 43 (DEC HL)...
C 40920,3 ...
C 40923,1 Restore HL (current entry in Lookup Table for RLE Attribute Data)
C 40924,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 40927,3 Load C with x-coordinate of graphic's right edge...
C 40930,1 ...
C 40931,3 Load B with y-coordinate of graphic's top edge...
C 40934,1 ...
C 40935,2 Jump to attribute painting routine
c 40937 Paint Room Layout Data Entry's Attributes (Room Drawing)
D 40937 Used by the routine at #R39047. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) at #R60487 DE  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at #R60889
C 40937,1 Store HL (Pointer to entry in Lookup Table for RLE Attribute Data)
C 40938,3 Modify instruction at #R40983 to load x-coordinate of graphic's right edge into A...
C 40941,3 ...i.e. set end x-coordinate for painting left-to-right
C 40944,3 Modify instruction at #R40987 to jump to #R41004...
C 40947,3 ...i.e. advance HL down one character row in Attribute File
C 40950,2 Modify instruction at #R40990 with opcode 35 (INC HL)...
C 40952,3 ...
C 40955,1 Restore HL (Pointer to entry in Lookup Table for RLE Attribute Data)
C 40956,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 40959,4 Load BC with x- and y-coordinates (top-left) defined in current room layout data entry
N 40963 This entry point is used by the routines at #R40845, #R40873 and #R40905. At this point, BC holds the initial coordinates in characters, from which to start painting attributes. IX points to the required RLE attribute data.
C 40963,1 Store BC (B = current y-coordinate, C = initial x-coordinate)
C 40964,3 Point HL at Attribute File address for character coordinates (C, B)
C 40967,3 Load A with repeat count value
C 40970,1 If repeat count is zero...
C 40971,3 ...then jump to #R41000
C 40974,1 Load B with repeat count
C 40975,3 Load C with attribute to paint
C 40978,1 Apply attribute in C to current Attribute File location in HL
C 40979,1 Load E with x-coordinate (characters) of current Attribute File location...
C 40980,2 ...
C 40982,1 ...
N 40983 The operand of the instruction at #R40983 is modified by instructions at #R40849, #R40877, #R40909, #R40941, to #R23408 (x-coordinate of left edge), #R23410 (x-coordinate of right edge), #R23408 (x-coordinate of left edge), or #R23410 (x-coordinate of right edge) respectively.
C 40983,3 Load A with end x-coordinate for painting...
C 40986,1 ...and if this is the same as the x-coordinate...
N 40987 The operand of the instruction at #R40987 (i.e. the destination of the jump) is modified by the instructions at #R40855, #R40883, #R40915 and #R40947 to be #R41025 (move up one character row), #R41025 (move up one character row), #R41004 (move down one character row) or #R41004 (move down one character row) respectively.
C 40987,3 ...then jump to routine to move up or down one character row
N 40990 The instruction at #R40990 is modified by the instructions at #R40860, #R40888, #R40920 and #R40952 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL) respectively.
C 40990,1 Advance HL to next (or previous) byte in Attribute File
C 40991,2 Decrease B (repeat count) and loop back to #R40978 if not zero
C 40993,2 Advance IX by two bytes in RLE attribute data...
C 40995,2 ...
C 40997,3 Loop back to #R40967 for this new data
C 41000,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 41001,3 Advance to next Room Layout Data entry and paint its attributes
N 41004 Move down one character row
C 41004,1 Switch registers
C 41005,3 Load A with one more than y-coordinate of bottom edge of area to paint...
C 41008,1 ...
C 41009,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 41010,1 Increase B (i.e. move down a character row)
C 41011,1 Store BC (B = updated y-coordinate, C = initial x-coordinate)
C 41012,1 If B is the same as A (i.e. we are now outside the area to be painted)...
C 41013,3 ...then jump to #R41000
C 41016,3 Load HL with Attribute File address for coordinates (C, B) and load E with x-coordinate (characters)
C 41019,1 Store HL (new Attribute File Address)
C 41020,1 Switch registers
C 41021,1 Restore HL (new Attribute File Address)
C 41022,3 Jump back to #R40991 and continue painting
N 41025 Move up one character row
C 41025,1 Switch registers
C 41026,3 Load A with one less than y-coordinate of top edge of area to paint...
C 41029,1 ...
C 41030,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 41031,1 Increase B (i.e. move down a character row)
C 41032,3 Jump back to #R41011
c 41035 Store Coordinates of Area to be Coloured and Point IX at RLE Attribute (or Terrain Interaction) Data (Room Drawing)
D 41035 Used by the routines at #R40845, #R40873, #R40905, #R40937, #R41081, #R41109, #R41141 and #R41173. Input:  HL Pointer to entry in Lookup Table for Attribute Data or Terrain Interaction Data Output: IX  Points to start of RLE attribute data
C 41035,4 Load BC with x- and y-coordinates (top-left) defined in current room layout data entry
C 41039,1 Load width as defined in attribute lookup data into A...
C 41040,1 ...add to x-coordinate...
C 41041,1 ...subtract one to get x-coordinate of right of graphic...
C 41042,3 ...and store at #R23410
C 41045,1 Advance HL to height value in attribute lookup data...
C 41046,1 ...load into A...
C 41047,1 ...add to y-coordinate...
C 41048,3 ...and store at #R23411
C 41051,1 Advance HL to address of attribute data...
C 41052,3 ...load this address into HL...
C 41055,1 ...and copy the address from HL to IX...
C 41056,2 ...
C 41058,1 Return
c 41059 Unused routine
D 41059 Skip IX over room layout data entry for which painting (attribute / terrain interaction) is inappropriate. Input: IX  Points to start of an instruction in room layout data A  First byte of the instruction
C 41059,2 Advance by six bytes to start of next instruction...
C 41061,2 ...
C 41063,2 ...
C 41065,2 ...
C 41067,2 ...
C 41069,2 ...
C 41071,2 If instruction number is even (i.e. instruction which has five parameters)...
C 41073,3 ...then process next room layout instruction (jump to #R39067)...
C 41076,2 ...otherwise, advance by one more byte to skip over sixth parameter...
C 41078,3 ...and process next room layout instruction (jump to #R39067)
c 41081 Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying Horizontal and Vertical Mirrors (Room Drawing)
D 41081 Used by the routine at #R39158. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at #R60889 Output: B  y-coordinate of graphic's bottom C  x-coordinate of graphic's right
C 41081,1 Store HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 41082,3 Modify instruction at #R41219 to load x-coordinate of graphic's left edge into A...
C 41085,3 ...i.e. set end x-coordinate for painting right-to-left
C 41088,3 Modify instruction at #R41223 to jump to #R41261...
C 41091,3 ...i.e. advance HL up one character row in Terrain Interaction Data Table at #R23808
C 41094,2 Modify instruction at #R41226 with opcode 43 (DEC HL)...
C 41096,3 ...
C 41099,1 Restore HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 41100,3 Store coordinates of area to be painted and point IX at RLE Terrain Interaction data
C 41103,4 Load BC with coordinates of graphic's bottom-right
C 41107,2 Jump to terrain interaction parameter painting routine
c 41109 Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying Horizontal Mirror (Room Drawing)
D 41109 Used by the routine at #R39158. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at #R60889 Output: B  y-coordinate of graphic's bottom C  x-coordinate of graphic's left
C 41109,1 Store HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 41110,3 Modify instruction at #R41219 to load x-coordinate of graphic's right edge into A...
C 41113,3 ...i.e. set end x-coordinate for painting left-to-right
C 41116,3 Modify instruction at #R41223 to jump to #R41261...
C 41119,3 ...i.e. advance HL up one character row in Terrain Interaction Data Table at #R23808
C 41122,2 Modify instruction at #R41226 with opcode 35 (INC HL)...
C 41124,3 ...
C 41127,1 Restore HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 41128,3 Store coordinates of area to be coloured and point IX at RLE Terrain Interaction Data
C 41131,3 Load C with x-coordinate of graphic's left edge...
C 41134,1 ...
C 41135,3 Load B with y-coordinate of graphic's bottom edge...
C 41138,1 ...
C 41139,2 Jump to terrain interaction data painting routine
c 41141 Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying Vertical Mirror (Room Drawing)
D 41141 Used by the routine at #R39158. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at #R60889 Output: B  y-coordinate of graphic's top C  x-coordinate of graphic's right
C 41141,1 Store HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 41142,3 Modify instruction at #R41219 to load x-coordinate of graphic's left edge into A...
C 41145,3 ...i.e. set end x-coordinate for painting right-to-left
C 41148,3 Modify instruction at #R41223 to jump to #R41240...
C 41151,3 ...i.e. advance HL down one character row in Terrain Interaction Data Table at #R23808
C 41154,2 Modify instruction at #R41226 with opcode 43 (DEC HL)...
C 41156,3 ...
C 41159,1 Restore HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 41160,3 Store coordinates of area to be coloured and point IX at RLE Terrain Interaction Data
C 41163,3 Load C with x-coordinate of graphic's right edge...
C 41166,1 ...
C 41167,3 Load B with y-coordinate of graphic's top edge...
C 41170,1 ...
C 41171,2 Jump to terrain interaction data painting routine
c 41173 Paint Room Layout Data Entry's Terrain Interaction Parameters then Advance to Next Entry (Room Drawing)
D 41173 Used by the routine at #R39158. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at #R60889
C 41173,1 Store HL (Pointer to entry in Lookup Table for RLE Terrain Interaction Data)
C 41174,3 Modify instruction at #R41219 to load x-coordinate of graphic's right edge into A...
C 41177,3 ...i.e. set end x-coordinate for painting left-to-right
C 41180,3 Modify instruction at #R41223 to jump to #R41240...
C 41183,3 ...i.e. advance HL down one character row in Terrain Interaction Data Table at #R23808
C 41186,2 Modify instruction at #R41226 with opcode 35 (INC HL)...
C 41188,3 ...
C 41191,1 Restore HL (Pointer to entry in Lookup Table for RLE Terrain Interaction Data)
C 41192,3 Store coordinates of area to be coloured and point IX at RLE Terrain Interaction Data
C 41195,4 Load BC with x- and y-coordinates (top-left) defined in current room layout data entry
N 41199 This entry point is used by the routines at #R41081, #R41109 and #R41141. At this point, BC holds the initial coordinates in characters, from which to start painting terrain interaction parameters. IX points to the required RLE terrain interaction data.
C 41199,1 Store BC (B = current y-coordinate, C = initial x-coordinate)
C 41200,3 Point HL at Terrain Interaction Data Table address for character coordinates x=C, y=B
C 41203,3 Load A with repeat count value
C 41206,1 If repeat count is zero...
C 41207,3 ...then jump to #R41236
C 41210,1 Load B with repeat count
C 41211,3 Load C with terrain interaction parameter to paint
C 41214,1 Apply terrain interaction parameter in C to current Terrain Interaction Data Table location in HL
C 41215,1 Load E with x-coordinate (characters) of current Terrain Interaction Data location...
C 41216,2 ...
C 41218,1 ...
N 41219 The operand of the instruction at #R41219 is modified by instructions at #R41085, #R41113, #R41145, #R41177, to #R23408 (x-coordinate of left edge), #R23410 (x-coordinate of right edge), #R23408 (x-coordinate of left edge), or #R23410 (x-coordinate of right edge) respectively.
C 41219,3 Load A with end x-coordinate for painting...
C 41222,1 ...and if this is the same as the x-coordinate...
N 41223 The operand of the instruction at #R41223 (i.e. the destination of the jump) is modified by the instructions at #R41091, #R41119, #R41151 and #R41183 to be #R41261 (move up one character row), #R41261 (move up one character row), #R41240 (move down one character row) or #R41240 (move down one character row) respectively.
C 41223,3 ...then jump to routine to move up or down one character row
N 41226 The instruction at #R41226 is modified by the instructions at #R41096, #R41124, #R41156 and #R41188 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL) respectively.
C 41226,1 Advance HL to next (or previous) byte in Terrain Interaction Data Table
C 41227,2 Decrease B (repeat count) and loop back to #R41214 if not zero
C 41229,2 Advance IX by two bytes in RLE terrain interaction data...
C 41231,2 ...
C 41233,3 Loop back to #R41203 for this new data
C 41236,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 41237,3 Advance IX to start of next Room Layout Data entry and jump back to #R39067 to paint its attributes / terrain interaction data
N 41240 Move down one character row
C 41240,1 Switch registers
C 41241,3 Load A with one more than y-coordinate of bottom edge of area to paint...
C 41244,1 ...
C 41245,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 41246,1 Increase B (i.e. move down a character row)
C 41247,1 Store BC (B = updated y-coordinate, C = initial x-coordinate)
C 41248,1 If B is the same as A (i.e. we are now outside the area to be painted)...
C 41249,3 ...then jump to #R41236
C 41252,3 Load HL with Terrain Interaction Data Table address for coordinates (C, B) and load E with x-coordinate (characters)
C 41255,1 Store HL (new Terrain Interaction Data Table Address)
C 41256,1 Switch registers
C 41257,1 Restore HL (new Terrain Interaction Data Table Address)
C 41258,3 Jump back to #R41227 and continue painting
N 41261 Move up one character row
C 41261,1 Switch registers
C 41262,3 Load A with one less than y-coordinate of top edge of area to paint...
C 41265,1 ...
C 41266,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 41267,1 Increase B (i.e. move down a character row)
C 41268,3 Jump back to #R41247
c 41271 Draw 2x2 Block with Style Index A at Bitmap Virtual Text Cursor then move Right Two Characters
D 41271 Used by the routines at #R39216 and #R39366. Input:  A  Block style index
C 41271,1 Switch registers
C 41272,2 Load HL with eight times block style index...
C 41274,1 ...(see trivia)...
C 41275,1 ...
C 41276,1 ...
C 41277,1 ...
C 41278,1 ...
C 41279,3 Load DE with start address of Table of Block Style Definitions...
C 41282,1 ...and add to HL as offset in HL
C 41283,1 Load system variable ATTR T with attribute value in selected style...
C 41284,3 ...
C 41287,1 Advance HL to terrain interaction parameter to apply...
C 41288,1 ...
C 41289,3 ...and store at #R23485
C 41292,1 Advance HL to Terrain Interaction Parameter Painting Bitmap...
C 41293,1 ...
C 41294,3 ...and store at #R23298
C 41297,1 Advance HL to index of top-left block UDG...
C 41298,1 ...
C 41299,4 Store Display File address of Bitmap Virtual Text Cursor to #R23296...
C 41303,4 ...
C 41307,1 Load A with index of top-left block UDG...
C 41308,3 ...and draw at location of Bitmap Virtual Text Cursor
C 41311,1 Store HL (pointer to index of top-left block UDG)
C 41312,3 Advance Bitmap Virtual Text Cursor right by one character
C 41315,1 Restore HL (pointer to index of top-left block UDG)
C 41316,1 Advance HL to index of top-right block UDG...
C 41317,1 ...load into A...
C 41318,3 ...and draw at location of Bitmap Virtual Text Cursor
C 41321,1 Store HL (pointer to index of top-right block UDG)
C 41322,3 Advance Bitmap Virtual Text Cursor right by one character (see trivia)
C 41325,3 Load B with Terrain Interaction Parameter Painting Bitmap...
C 41328,1 ...
C 41329,3 Load A with terrain interaction parameter to apply
C 41332,3 Load HL with address of terrain interaction data for top-left character
C 41335,2 If Bit 0 of Terrain Interaction Parameter Painting Bitmap is reset...
C 41337,2 ...then skip ahead to #R41340
C 41339,1 Apply current terrain interaction parameter to address in HL
C 41340,1 Advance HL (i.e. move right one character)
C 41341,2 If Bit 1 of Terrain Interaction Parameter Painting Bitmap is reset...
C 41343,2 ...then skip ahead to #R41346
C 41345,1 Apply current terrain interaction parameter to address in HL
C 41346,1 Restore HL (pointer to index of top-right block UDG)
C 41347,3 If Draw 2x1 Blocks Flag is set (see trivia)...
C 41350,1 ...
C 41351,2 ...then skip ahead to #R41457
C 41353,1 Advance HL to index of bottom-left block UDG
C 41354,1 Swap DE (now points to index of bottom-left block UDG) and HL
C 41355,3 Restore Display File address of Bitmap Virtual Text Cursor (top-left character) from #R23296...
C 41358,3 ...
C 41361,3 Advance Bitmap Virtual Text Cursor to start of next character row
C 41364,3 Load A with LSB of Bitmap Virtual Text Cursor Display File address stored previously...
C 41367,2 ...and clear bits 5, 6 and 7 to leave x-coordinate in characters
C 41369,3 Load HL with address of Bitmap Virtual Text Cursor...
C 41372,1 ...and add x-coordinate in characters to move to bottom-left character in 2x2 block...
C 41373,1 ...
C 41374,3 Store updated address of Bitmap Virtual Text Cursor
C 41377,1 Swap DE and HL (now points to index of bottom-left block UDG)
C 41378,1 Load A with index of bottom-left block UDG...
C 41379,3 ...and draw at location of Bitmap Virtual Text Cursor
C 41382,1 Store HL (pointer to index of bottom-left block UDG)
C 41383,3 Advance Bitmap Virtual Text Cursor right by one character
C 41386,1 Restore HL (pointer to index of bottom-left block UDG)
C 41387,1 Advance HL to index of bottom-right block UDG...
C 41388,1 ...load into A...
C 41389,3 ...and draw at location of Bitmap Virtual Text Cursor
C 41392,3 Restore Display File address of Bitmap Virtual Text Cursor (top-left character) from #R23296...
C 41395,3 ...
C 41398,3 Load B with Terrain Interaction Parameter Painting Bitmap...
C 41401,1 ...
C 41402,3 Load A with terrain interaction parameter to apply
C 41405,3 Load HL with address of terrain interaction data for top-left character...
C 41408,3 ...and add 32 to point to bottom-left character...
C 41411,1 ...
C 41412,2 If Bit 2 of Terrain Interaction Parameter Painting Bitmap is reset (bug)...
C 41414,2 ...then skip ahead to #R41417
C 41416,1 Apply current terrain interaction parameter to address in HL
C 41417,1 Advance HL (i.e. move right one character)
C 41418,2 If Bit 3 of Terrain Interaction Parameter Painting Bitmap is reset (bug)...
C 41420,2 ...then skip ahead to #R41423
C 41422,1 Apply current terrain interaction parameter to address in HL
C 41423,3 Advance Bitmap Virtual Text Cursor right by two characters...
C 41426,3 ...i.e. move to top-left character of next 2x2 block to the right
C 41429,3 Load HL with address of terrain interaction data for top-left character...
C 41432,1 ...advance by two characters...
C 41433,1 ...
C 41434,3 ...and store at #R23709
C 41437,3 Load A with LSB of Bitmap Virtual Text Cursor Display File address...
C 41440,2 ...and if at least one of bits 0-4 are set (i.e. we are not at the start of a new character row)...
C 41442,2 ...then skip ahead to #R41457
C 41444,3 Advance Bitmap Virtual Text Cursor to start of next character row
C 41447,3 Add 32 to address of terrain interaction data to move to next character row...
C 41450,3 ...
C 41453,1 ...
C 41454,3 ...
C 41457,1 Switch registers
C 41458,1 Return
c 41459 Read Glowing Character Block Definitions and Add to Current Room
D 41459 Used by the routine at #R39393. Input:  HL  Current position in room layout data
C 41459,1 Advance HL by one byte...
C 41460,1 ...and if value here is 255 (end marker)...
C 41461,2 ...
C 41463,1 ...then return
C 41464,1 Load C with x-coordinate
C 41465,1 Advance HL to y-coordinate...
C 41466,1 ...and load into B
C 41467,1 Store HL (current position in room layout data)
C 41468,3 Point HL at Attribute File address for character coordinates x=C, y=B
C 41471,3 Add a glowing character block to the current room
C 41474,1 Restore HL (current position in room layout data)
C 41475,2 Loop back to #R41459 for next entry
c 41477 Add a Glowing Character Block to the Current Room
D 41477 Used by the routine at #R41459. Input:  HL  Attribute File address to add Output: IX  Points to entry in the table created on the last pass of this routine
C 41477,4 Point IX at table of Attribute File addresses of glowing characters in current room
C 41481,2 Move IX back two bytes...
C 41483,2 ...
C 41485,2 Advance IX by two bytes...
C 41487,2 ...
C 41489,3 If two bytes at IX are non-zero...
C 41492,3 ...
C 41495,2 ...then loop back to check next two bytes
C 41497,3 Store HL at first empty pair of bytes after 23368...
C 41500,3 ...
C 41503,1 Return
c 41504 Copy 2x4 (Characters) Region of Display File into Temporary Storage at 23299
D 41504 Used by the routine at #R39958. Input:  IX  Address of position data for a character, or Magic Knight
C 41504,3 Load DE with start address of temporary storage area
C 41507,3 Load C with x-coordinate of area to copy
C 41510,3 Load B with y-coordinate of area to copy...
C 41513,1 ...and decrease by one
C 41514,4 Store x- and y-coordinates as operand of instruction at #R41548
C 41518,2 Load A with 4 (as Magic Knight and other characters span four character blocks in height)
C 41520,1 Store AF (A = remaining height in characters to copy)
C 41521,1 Increase y-coordinate by one
C 41522,1 Store BC (B = current y-coordinate, C = current x-coordinate)
C 41523,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 41526,2 Load B with 8 (as there are eight pixel rows per character)
C 41528,1 Copy byte from current location in Display File...
C 41529,1 ...to temporary storage area starting at #R23299
C 41530,1 Advance right one character in Display File
C 41531,1 Advance to next byte in temporary storage area
C 41532,1 Copy byte from current location in Display File...
C 41533,1 ...to temporary storage area starting at #R23299
C 41534,1 Advance to next byte in temporary storage area
C 41535,1 Move left one character...
C 41536,1 ...and down one pixel in Display File
C 41537,2 Decrease B (remaining number of pixel rows) and loop back to #R41528 if not zero
C 41539,1 Restore BC (B = current y-coordinate, C = current x-coordinate)
C 41540,1 Restore AF (A = remaining height in characters to copy)
C 41541,1 Decrease remaining number of character blocks to copy...
C 41542,2 ...and loop back to #R41520 if not zero
C 41544,1 Return
c 41545 Copy 2x4 (Characters) Region from Temporary Storage at 23299 into Display File
D 41545 Used by the routine at #R39958.
C 41545,3 Load DE with start address of temporary storage area
N 41548 The operand of the instruction at #R41548 represents the x- and y-coordinates at which to copy the previously stored bitmap data into the Display File. This is modified by the instruction at #R41514.
C 41548,3 Load B and C with the y- and x-coordinates to copy to, respectively
C 41551,2 Load A with 4 (as characters are 4 characters high)
C 41553,1 Store AF (A = remaining height in characters to copy)
C 41554,1 Increase destination y-coordinate by one
C 41555,1 Store BC (B = current y-coordinate, C = current x-coordinate)
C 41556,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 41559,2 Load B with 8 (as there are eight pixel rows per character)
C 41561,1 Copy byte from temporary storage area starting at #R23299...
C 41562,1 ...to current location in Display File
C 41563,1 Advance right one character in Display File
C 41564,1 Advance to next byte in temporary storage area
C 41565,1 Copy byte from temporary storage area starting at #R23299...
C 41566,1 ...to current location in Display File
C 41567,1 Advance to next byte in temporary storage area
C 41568,1 Move left one character...
C 41569,1 ...and down one pixel in Display File
C 41570,2 Decrease B (remaining number of pixel rows) and loop back to #R41561 if not zero
C 41572,1 Restore BC (B = current y-coordinate, C = current x-coordinate)
C 41573,1 Restore AF (A = remaining height in characters to copy)
C 41574,1 Decrease remaining height to copy...
C 41575,2 ...and loop back to #R41553 if not zero
C 41577,1 Return
c 41578 Process Command to Pick Up an Object
C 41578,3 Print or update Command Summary Window at top of screen
C 41581,3 Point DE at "PICK UP THE" text...
C 41584,3 ...and print in Command Summary Window at top of screen
C 41587,3 Point HL at start of Objects' Current Positions Table
C 41590,3 Load B with 42 (as there are 42 objects) and C with 0
C 41593,3 Load A with Magic Knight's current room
C 41596,1 If current object's room is not the same as Magic Knight's then...
C 41597,2 ...skip ahead to #R41600
C 41599,1 Increase C (count of objects in Magic Knight's current room)
C 41600,1 Advance HL to next object's position...
C 41601,1 ...
C 41602,1 ...
C 41603,2 Decrease B and loop back for next object
C 41605,1 Copy total number of objects into A...
C 41606,1 ...and if this value is zero then set Zero Flag
C 41607,3 Load HL with address of "THERE IS NOTHING IN THIS ROOM" text
C 41610,3 Display "THERE IS NOTHING IN THIS ROOM" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 41613,3 Point HL at start of Objects' Current Positions Table
C 41616,3 Load A with Magic Knight's current room
C 41619,1 ...and copy into C
C 41620,3 Load Magic Knight's coordinates (in characters) into DE
C 41623,1 Set A to zero
C 41624,1 Switch A register
C 41625,2 Load B with 42 (as there are 42 objects)
C 41627,1 Load Magic Knight's current room into A
C 41628,1 If room of current object is not the same as Magic Knight's current room...
C 41629,2 ...then skip ahead to #R41652 [advance to next object]
C 41631,1 Copy Magic Knight's y-coordinate into A
C 41632,1 Advance HL to current object's y-coordinate...
C 41633,1 ...
C 41634,1 ...and if this is not the same as Magic Knight's y-coordinate...
C 41635,2 ...then skip ahead to #R41654 [advance to next object]
C 41637,1 Move HL back to object's x-coordinate
C 41638,1 Load Magic Knight's x-coordinate into A
C 41639,1 Decrease x-coordinate by two...
C 41640,1 ...
C 41641,1 Store BC
C 41642,2 Load B with 5 (as we are going to test 5 different x-coordinates)
C 41644,1 If x-coordinate of object is the same as current x-coordinate value...
C 41645,2 ...then skip ahead to #R41666
C 41647,1 Increase value of current x-coordinate (to test next x-coordinate in range -2 to +2)
C 41648,2 Decrease B (remaining number of x-coordinates to test) and loop back to #R41644
C 41650,1 Restore BC
C 41651,1 Move HL back one byte to start of position data for current object
C 41652,1 Advance HL by three bytes to move to next object...
C 41653,1 ...
C 41654,1 ...
C 41655,1 Switch A register back (so now contains the index of the object to test next)
C 41656,1 Increase A [index of current object to test]
C 41657,1 Switch A register
C 41658,2 Loop back to #R41627 for next object
C 41660,3 Display "THERE IS NOTHING NEAR ENOUGH" Window (13), wait for Fire to be pressed then jump to Main Game Loop...
C 41663,3 ...
N 41666 An object has been found within Magic Knight's reach so make this the current object
C 41666,1 Restore BC
C 41667,1 Switch A register (so now contains index of first object that is within Magic Knight's reach)
C 41668,3 Load index of this object into instruction at #R41778 (i.e. set as Current Object)
C 41671,3 Point DE at character code to print name of Current Object
C 41674,3 ...and print in Command Summary Window at top of screen
C 41677,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 41680,3 Load A with index of Current Object...
C 41683,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 41686,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 41689,1 ...
C 41690,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 41691,3 ...then display "YOUR HANDS ARE FULL" window, wait for Fire to be pressed then jump to Main Game Loop
C 41694,3 Check whether object has a weight greater than Magic Knight's surplus strength...
C 41697,3 ...and if it does then display "THE [name of Current Object] IS TOO HEAVY FOR YOU" Window), wait for Fire to be pressed then jump to Main Game Loop
C 41700,3 Load A with index of Current Object...
C 41703,1 ...and copy into C
C 41704,2 Load B with 5 (five inventory slots)
C 41706,3 Wait for interrupt then load object in C into Magic Knight's first empty inventory (carrying) slot...
C 41709,3 ...
C 41712,3 Load A with index of Current Object...
C 41715,1 ...and copy into C
C 41716,1 Multiply index by three in A...
C 41717,1 ...
C 41718,2 Load three times object index into BC...
C 41720,1 ...
C 41721,3 Point HL at start of Objects' Current Positions Table
C 41724,1 Add BC as offset to point HL at position data for current object
C 41725,2 Set object's room to 99
N 41727 This entry point is used by the routines at #R41748, #R42036, #R42395 and #R44635.
C 41727,4 Point IX at Magic Knight's current inventory (carrying)
C 41731,2 Load B with 5 (five inventory slots)
C 41733,3 Point HL at "YOU ARE NOW CARRYING" text
C 41736,3 Display "Magic Knight's current inventory" window as an information window
N 41739 This entry point is used by the routines at #R42638 and #R45552.
C 41739,3 Wait for Interrupt then display "PRESS FIRE TO CONTINUE" window and wait for Fire to be pressed
N 41742 This entry point is used by the routines at #R41748, #R41924, #R42257, #R42638, #R43043, #R43494, #R43636, #R44635, #R44861, #R44933, #R64207 and #R64317.
C 41742,3 Set Magic Knight's available action flags
C 41745,3 Jump to start of Main Game Loop
c 41748 Process Command to Drop an Object
C 41748,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 41751,3 If MK's inventory (carrying) is empty then set his available action flags and jump to start of Main Game Loop
C 41754,4 Point IX at start of Magic Knight's current inventory (carrying)
C 41758,2 Load B with 5 (five inventory slots)
C 41760,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 41763,3 Point DE at "[Current Command] THE " text
C 41766,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 41769,3 Point HL at start of Magic Knight's current inventory (carrying)
C 41772,3 Print name of selected object in Magic Knight's current inventory (carrying) in Command Summary Window
C 41775,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
N 41778 The operand of the instruction at #R41778 represents the index of the Current Object used in multiple routines. This is modified by the instructions at #R41668 and #R45771.
C 41778,2 Load index of Current Object into A [Operand is index of Current Object]
C 41780,3 Point HL at "THE [name of Current Object] BLEW UP..." text
C 41783,2 If Current Object is 5 (Stick of Dynamite)...
C 41785,3 ...then jump to "Game over" window routine and return to Control Selection Menu
C 41788,3 If Current Object is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 41791,2 Load E with 0 (prepare to check Drop Status Flag)
C 41793,3 Point HL to byte 0 of the A-th record in Object Properties Table
C 41796,2 Reset Zero Flag if object's Drop Status Flag is set
C 41798,3 Point HL at "YOU CANNOT [Current Command] THE [name of Current Object]" text
C 41801,3 ...then display "YOU CANNOT [Current Command] THE [object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 41804,3 Load A with index of Current Object
C 41807,1 Copy into C
C 41808,2 Load B with 5 (five inventory slots)
C 41810,3 Point HL at start of Magic Knight's current inventory (carrying)
C 41813,3 Remove object C from Magic Knight's current inventory (carrying)
C 41816,3 Load A with Magic Knight's current room
C 41819,2 If room is not 2 (Outdoors, 1, Bearwoolf's Cave)...
C 41821,2 ...then skip ahead to #R41850
C 41823,3 Load A with index of Current Object
C 41826,1 Multiply object index by 3...
C 41827,1 ...
C 41828,1 ...
C 41829,1 ...and load into C
C 41830,2 Load B with zero
C 41832,3 Point HL at start of Objects' Current Positions Table at #R24922
C 41835,1 Add three times Current Object's index as offset to point HL at position data of current object
C 41836,1 Set object's current room...
C 41837,1 ...to be zero (Limbo)
C 41838,1 Advance HL to x-coordinate of object...
C 41839,2 ...and set to 15
C 41841,1 Advance HL to y-coordinate of object...
C 41842,2 ...and set to 22
C 41844,3 Display "THE MAD JANITOR..." Window (12), wait for Fire to be pressed then jump to Main Game Loop...
C 41847,3 ...
C 41850,3 Load C with index of Current Object...
C 41853,1 ...
C 41854,2 If Current Object is 20 (Mirror)...
C 41856,3 ...then load C with 7 (index of Broken Glass)
C 41859,2 If Current Object is 17 (Bottle of Liquid)...
C 41861,3 ...then load C with 8 (index of Broken Glass)
C 41864,2 If Current Object is 18 (Bottle of Liquid)...
C 41866,3 ...then load C with 9 (index of Broken Glass)
C 41869,2 If Current Object is 28 (Empty Bottle)...
C 41871,3 ...then load C with 8 (index of Broken Glass)
C 41874,2 If Current Object is 29 (Empty Bottle)...
C 41876,3 ...then load C with 9 (index of Broken Glass)
C 41879,1 Load object's index into A
C 41880,1 Multiply object index by 3...
C 41881,1 ...
C 41882,1 ...and load back into C
C 41883,2 Load B with zero
C 41885,3 Point HL at start of Objects' Current Positions Table at #R24922
C 41888,1 Add three times Current Object's index as offset to point HL at position data of current object
C 41889,3 Load A with Magic Knight's current room
C 41892,1 Set object's current room to be same as Magic Knight's
C 41893,1 Advance HL to x-coordinate of object
C 41894,2 Set B to zero
C 41896,3 Load A with Magic Knight's current x-coordinate (pixels)
C 41899,2 Get x-coordinate in terms of pixels within current character block (i.e. lowest 3 bits of x-coordinate)
C 41901,2 If this is zero (i.e. Magic Knight at left-most pixel in character block) then skip ahead to #R41904...
C 41903,1 ...else increase B
C 41904,3 Load Magic Knight's Coordinates (in Characters) into DE
C 41907,1 Load B into A
C 41908,1 Add Magic Knight's x-coordinate to A
C 41909,1 Set this as object's x-coordinate
C 41910,1 Advance HL to y-coordinate of object
C 41911,1 Set this to same as Magic Knight's y-coordinate
C 41912,3 Show Magic Knight's current inventory and jump back to Main Game Loop
c 41915 Load C with 7 (Index of Broken Glass)
D 41915 Used by the routines at #R41748 and #R43636.
C 41915,2 Load C with 7 (Broken Glass)
C 41917,1 Return
c 41918 Load C with 8 (Index of Broken Glass)
D 41918 Used by the routines at #R41748 and #R43636.
C 41918,2 Load C with 8 (Broken Glass)
C 41920,1 Return
c 41921 Load C with 9 (Index of Broken Glass)
D 41921 Used by the routines at #R41748 and #R43636.
C 41921,2 Load C with 9 (Broken Glass)
C 41923,1 Return
c 41924 Process Command to Take an Object
C 41924,3 Point HL at "[Current Command] AN OBJECT FROM ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 41927,3 Point DE (Command Summary Text Pointer) at "[Current Command] SOMETHING FROM " text
C 41930,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 41933,3 If there are no characters in the room then set MK's available action flags and jump to start of Main Game Loop (#R41742)
N 41936 The operand of the instruction at #R41936 represents the index of the Current Character used in multiple routines. This is modified by the instructions at #R42686, #R45789, #R46067, #R46147 and #R46177.
C 41936,2 Point IX at current inventory of Current Character...
C 41938,3 ...
C 41941,3 If the first inventory slot of the character is empty...
C 41944,1 ...then set Zero Flag
C 41945,3 Point HL at "[Current Character's short name]'S HANDS ARE EMPTY" text
C 41948,3 If Zero Flag is set then display "[Character]'S HANDS ARE EMPTY" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 41951,2 Store IX (start of inventory)
C 41953,2 Load B with 5 (five inventory slots)
C 41955,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 41958,3 Load DE with zero (i.e. no Command Summary Text)
C 41961,3 Show list of objects in character's inventory as a menu and load A with selected item index
C 41964,1 Store AF (A = index of chosen object's inventory slot)
C 41965,3 Print or update Command Summary Window at top of screen
C 41968,3 Point DE at "[Current Command] THE " text...
C 41971,3 ...and print in Command Summary Window at top of screen
C 41974,1 Restore AF (A = index of chosen object's inventory slot)
C 41975,1 Restore HL (previously IX, pointer to current inventory of current character)
C 41976,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 41979,3 Point DE at " FROM " text...
C 41982,3 ...and print in Command Summary Window at top of screen
C 41985,3 Load A with index of Current Character
C 41988,3 Print character's name
C 41991,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 41994,3 Load A with index of Current Object...
C 41997,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 42000,2 Decrease Current Character's happiness by 3...
C 42002,3 ...
C 42005,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 42008,1 ...
C 42009,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 42010,3 ...then display "YOUR HANDS ARE FULL" window, wait for Fire to be pressed then jump to Main Game Loop
C 42013,3 Check whether object has a weight greater than Magic Knight's surplus strength...
C 42016,3 ...and if it does then display "THE [name of Current Object] IS TOO HEAVY FOR YOU" Window, wait for Fire to be pressed then jump to Main Game Loop
C 42019,3 Load A with Current Character's Happiness Level...
C 42022,2 and if this is less than 30...
C 42024,3 ...then display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42027,3 Load A with index of Current Character
C 42030,3 Load HL with start address of Table of Start Addresses of Routines for Characters Having Objects Taken
C 42033,3 Load HL with address of Current Character's "Take an Object" routine and jump to it
c 42036 Remove Current Object from Current Character's Inventory and Add it to Magic Knight's then Return to Main Game Loop
D 42036 Used by the routines at #R42085, #R42091, #R42105, #R42220, #R42226, #R42232 and #R42238.
C 42036,3 Point IX at current inventory of Current Character...
C 42039,3 ...
C 42042,2 Copy value from IX...
C 42044,1 ...to HL
C 42045,3 Load C with index of Current Object...
C 42048,1 ...
C 42049,2 Load B with 5 (five inventory slots)
C 42051,3 Remove object C from Current Character's inventory
C 42054,3 Load C with index of Current Object...
C 42057,1 ...
C 42058,2 Load B with 5 (five inventory slots)
C 42060,3 Point HL at start of Magic Knight's current inventory (carrying)...
C 42063,3 ...and wait for interrupt then load object C into the first empty slot
C 42066,3 Show Magic Knight's current inventory and jump back to Main Game Loop
b 42069 Table of Start Addresses of Routines for Characters Having Objects Taken
W 42069,2,2 Off-White Knight (bug)
W 42071,2,2 Aramis le Peux
W 42073,2,2 Robin of Shylock
W 42075,2,2 Reggie the Rat
W 42077,2,2 Rachel of Amazonia
W 42079,2,2 Barker the Ent
W 42081,2,2 Organon the Guard
W 42083,2,2 Grunter the Bearwoolf
c 42085 Take an Object Routine Off-White Knight
D 42085 Off-White will refuse to surrender any egg he may have (bug).
C 42085,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42088,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
c 42091 Take an Object Routine Aramis le Peux
D 42091 Aramis will refuse to surrender the List of Clues or any egg he may have.
C 42091,3 If Current Object is 34 (List of Clues)...
C 42094,2 ...
C 42096,3 ...then display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42099,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42102,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
c 42105 Take an Object Routine Robin of Shylock
D 42105 Robin will refuse to surrender the Bow or any egg he may have. He will only surrender the Newspaper in exchange for an egg. When surrendering the Newspaper, he will always take the most valuable egg Magic Knight currently has, i.e. Golden Egg > Silver Egg > Copper Egg.
C 42105,3 If Current Object is 33 (Newspaper)...
C 42108,2 ...
C 42110,3 ...then skip ahead to #R42124
C 42113,2 If Current Object is 35 (Bow)...
C 42115,3 Display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42118,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42121,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
C 42124,2 Have current character try to take object 36 (Golden Egg) in exchange for Newspaper...
C 42126,3 ...returning to Main Game Loop if successful
C 42129,2 Have current character try to take object 39 (Golden Egg) in exchange for Newspaper...
C 42131,3 ...returning to Main Game Loop if successful
C 42134,2 Have current character try to take object 37 (Silver Egg) in exchange for Newspaper...
C 42136,3 ...returning to Main Game Loop if successful
C 42139,2 Have current character try to take object 40 (Silver Egg) in exchange for Newspaper...
C 42141,3 ...returning to Main Game Loop if successful
C 42144,2 Have current character try to take object 38 (Copper Egg) in exchange for Newspaper...
C 42146,3 ...returning to Main Game Loop if successful
C 42149,2 Have current character try to take object 41 (Copper Egg) in exchange for Newspaper...
C 42151,3 ...returning to Main Game Loop if successful
N 42154 At this point, Robin will have failed to take an egg. In this case, he will refuse to surrender the Newspaper.
C 42154,3 Display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
c 42157 Take an Object Routine Have Current Character Take Object A in Exchange for Newspaper
D 42157 Used by the routine at #R42105. Input:  A  Index of object of interest
C 42157,3 Store index of object of interest as operand of instruction at #R42207
C 42160,3 If Magic Knight is not carrying the object of interest...
C 42163,1 ...then return
C 42164,1 Remove return address of calling routine from top of Stack
C 42165,3 Load C with index of object of interest...
C 42168,1 ...
C 42169,2 Load B with 5 (five inventory slots)
C 42171,3 Point HL at start of Magic Knight's current inventory (carrying)
C 42174,3 Remove object of interest from Magic Knight's current inventory (carrying)
C 42177,2 Load C with 33 (index of Newspaper)...
C 42179,1 ...
C 42180,2 Load B with 5 (five inventory slots)
C 42182,3 Wait for interrupt then load object in C into Magic Knight's first empty inventory (carrying) slot...
C 42185,3 ...
C 42188,3 Point IX at current inventory of Current Character...
C 42191,3 ...
C 42194,2 Copy address from IX to HL...
C 42196,1 ...
C 42197,1 Store HL (address of Current Character's current inventory)
C 42198,2 Load C with 33 (index of Newspaper)...
C 42200,1 ...
C 42201,2 Load B with 5 (five inventory slots)
C 42203,3 Remove object of interest from Current Character's current inventory
C 42206,1 Restore HL (address of Current Character's current inventory)
N 42207 The operand of the instruction at #R42207 represents the index of the object of interest. This is modified by the instruction at #R42157.
C 42207,2 Load C with index of object of interest
C 42209,2 Load B with 5 (five inventory slots)
C 42211,3 Wait for interrupt then load object in C into Current Character's first empty inventory slot
C 42214,3 Point HL at "[Current Character's short name] HAS [Current Command]N AN EGG..." text
C 42217,3 Display "[Current Character's short name] HAS [Current Command]N AN EGG..." Window (13), wait for Fire to be pressed then jump to Main Game Loop
c 42220 Take an Object Routine Reggie the Rat
D 42220 Reggie will refuse to surrender any egg he may have.
C 42220,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42223,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
c 42226 Take an Object Routine Rachel of Amazonia
D 42226 Rachel will refuse to surrender any egg she may have.
C 42226,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42229,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
c 42232 Take an Object Routine Barker the Ent
D 42232 Barker will refuse to surrender any egg he may have.
C 42232,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42235,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
c 42238 Take an Object Routine Organon the Guard
D 42238 Organon will refuse to surrender any egg he may have.
C 42238,3 If Current Object is an egg then display "[Character] WANTS TO KEEP THE [Object]" Window (13) and return to Main Game Loop
C 42241,3 Remove Current Object from Current Character's inventory and add it to Magic Knight's then return to Main Game Loop
c 42244 Take an Object Routine Grunter the Bearwoolf
C 42244,3 End the game if Current Character is Off-White or Grunter
c 42247 If Current Object is an Egg then Display "[Character] WANTS TO KEEP THE [Object]" Window (13) and Return to Main Game Loop
D 42247 Used by the routines at #R42085, #R42091, #R42105, #R42220, #R42226, #R42232 and #R42238.
C 42247,3 If index of Current Object...
C 42250,2 ...is less than 36 (i.e. is not an egg)...
C 42252,1 ...then return
C 42253,1 Remove return address of calling routine from top of Stack
C 42254,3 Display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
c 42257 Process Command to Give an Object
C 42257,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 42260,3 If MK's inventory (carrying) is empty then set his available action flags and jump to start of Main Game Loop (#R41742)
C 42263,4 Point IX at Magic Knight's current inventory (carrying)
C 42267,2 Load B with 5 (five inventory slots)
C 42269,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 42272,3 Point DE at "[Current Command] THE " text
C 42275,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 42278,3 Point HL at Magic Knight's current inventory (carrying)
C 42281,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 42284,3 Point DE at " TO " text...
C 42287,3 ...and print in Command Summary Window at top of screen
C 42290,3 Point HL at "[Current Command] AN OBJECT TO ?" text
C 42293,3 Load DE with zero (i.e. no Command Summary Text)
C 42296,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 42299,3 If there are no characters in the room then set his available action flags and jump to start of Main Game Loop (#R41742)
C 42302,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 42305,3 Load A with index of Current Object...
C 42308,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 42311,2 Increase Current Character's happiness by 4...
C 42313,3 ...
C 42316,3 Point IX at current inventory of Current Character...
C 42319,3 ...
C 42322,3 If last inventory slot of character is not zero...
C 42325,1 ...(i.e. last inventory slot is occupied) then reset Zero Flag
C 42326,3 Point HL at "[Current Character's short name]'S HANDS ARE FULL" text
C 42329,3 If Zero Flag is reset then display "[Character]'S HANDS ARE FULL" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42332,3 Load B with 5 (five inventory slots) and C with zero
C 42335,3 Load content of current inventory slot into A
C 42338,1 If this inventory slot is empty...
C 42339,2 ...then skip ahead to #R42350
C 42341,3 Load A with weight of object in current slot...
C 42344,1 ...and add to C (running total weight)...
C 42345,1 ...
C 42346,2 Advance to next inventory slot
C 42348,2 Loop back to #R42335 for next slot
C 42350,3 Load A with index of Current Object
C 42353,3 Load A with weight of object being given...
C 42356,1 ...and add this to total in C also...
C 42357,1 ...
C 42358,3 Load A with index of Current Character
C 42361,2 Point HL at character's current strength...
C 42363,3 ...
C 42366,1 Load strength into A...
C 42367,2 ...and reset Bit 7 (unused)
C 42369,1 If character's strength is not less than total weight of objects...
C 42370,2 ...then skip ahead to #R42378
C 42372,3 Point HL at "[Current Character's short name] IS NOT STRONG ENOUGH" text
C 42375,3 Display "[Character] IS NOT STRONG ENOUGH" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42378,3 Load A with Current Character's Happiness Level...
C 42381,2 ...and if this is less than 20...
C 42383,3 ...then display "[Character] DOES NOT WANT THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42386,3 Load A with index of Current Character
C 42389,3 Load HL with start address of Table of Start Addresses of Routines for Characters Having Objects Given
C 42392,3 Load HL with address of Current Character's "Give an Object" routine and jump to it
c 42395 Remove Current Object from Magic Knight's Inventory and Add it to a Character's then Return to Main Game Loop
D 42395 Used by the routines at #R42441, #R42479, #R42482, #R42485 and #R42488. Input:  IX  Address of first empty entry in a character's current inventory
C 42395,3 Load Current Object into first empty entry in character's current inventory...
C 42398,3 ...
C 42401,1 Load C with index of Current Object
C 42402,2 Load B with 5 (five inventory slots)
C 42404,3 Point HL at start of Magic Knight's current inventory (carrying)...
C 42407,3 Remove Current Object from Magic Knight's current inventory (carrying) and tidy up remaining entries
C 42410,3 Show Magic Knight's current inventory and jump back to Main Game Loop
b 42413 Table of Start Addresses of Routines for Characters Having Objects Given
W 42413,2,2 Off-White Knight (bug)
W 42415,2,2 Aramis le Peux
W 42417,2,2 Robin of Shylock
W 42419,2,2 Reggie the Rat
W 42421,2,2 Rachel of Amazonia
W 42423,2,2 Barker the Ent
W 42425,2,2 Organon the Guard
W 42427,2,2 Grunter the Bearwoolf (bug)
c 42429 Give an Object Routine Off-White Knight
D 42429 Off-White will refuse to take the Brass Ankh (bug).
C 42429,3 If Current Object is 16 (Brass Ankh)...
C 42432,2 ...
C 42434,3 ...then display "[Character] DOES NOT WANT THE [Object]" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 42437,3 Jump to non-existent address (bug)
b 42440 Unused
B 42440,1,1
c 42441 Give an Object Routine Robin of Shylock
C 42441,3 If Current Object is not 23 (Silver Arrow)...
C 42444,2 ...
C 42446,2 ...then skip ahead to #R42459
C 42448,3 Set Robin's Can Help Flag...
C 42451,2 ...
C 42453,3 ...
C 42456,3 Remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
C 42459,2 If Current Object is 36 (Golden Egg)...
C 42461,2 ...then skip ahead to #R42468
C 42463,2 If Current Object is not 39 (Golden Egg)...
C 42465,3 ...then remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
C 42468,3 Set Robin Has Been Paid Flag...
C 42471,2 ...
C 42473,3 ...
C 42476,3 Remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
c 42479 Give an Object Routine Aramis le Peux and Reggie the Rat
C 42479,3 Remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
c 42482 Give an Object Routine Rachel of Amazonia
C 42482,3 Remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
c 42485 Give an Object Routine Barker the Ent and Organon the Guard
C 42485,3 Remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
c 42488 Give an Object Routine Grunter the Bearwoolf
C 42488,3 Remove Current Object from Magic Knight's inventory and add it to a character's then return to Main Game Loop
c 42491 Unused routine
D 42491 Give an object routine. Input:  This  routine is related to a bug
C 42491,3 End the game if Current Character is Off-White or Grunter
c 42494 Display and Handle Main In-Game Menu (When Fire is Pressed)
D 42494 Used by the routine at #R38205.
C 42494,3 Play downward scale sound
C 42497,3 Set Magic Knight's available action flags
C 42500,3 Set B = 8 (eight action flags) and C = 0 (count of set flags)
C 42503,3 Load A with Available In-Game Menu Command Flags (part 1)
C 42506,1 Pop a bit into Carry Flag
C 42507,2 If Magic Knight action flag is not set then skip ahead to #R42510 to repeat loop for next flag...
C 42509,1 ...else increase count of set flags
C 42510,2 Loop back for next bit until all eight are done
C 42512,2 Set B = 8 (another eight action flags)
C 42514,3 Load A with Available In-Game Menu Command Flags (part 2)
C 42517,1 Pop a bit into Carry Flag
C 42518,2 If Magic Knight action flag is not set then skip ahead to #R42521 to repeat loop for next flag...
C 42520,1 ...else increase count of set flags
C 42521,2 Loop back for next bit until all eight are done
C 42523,2 Load A with 8 (as minimal command window has bottom y-coordinate of 8)
C 42525,1 Increase A by number of extra commands available
C 42526,1 Load value back into C
C 42527,3 Load A with y-coordinate (characters) of top of menu window
C 42530,1 Update y-coordinate of bottom of window according to number of extra commands...
C 42531,3 ...
C 42534,2 Display main in-game menu window (window number zero)...
C 42536,3 ...
C 42539,3 Print "COMMANDS AVAILABLE:-" followed by first five commands (Pick up, drop, etc.) that are always available...
C 42542,3 ...
C 42545,3 Point HL at zero immediately preceding list of conditional entry (Main in-Game Menu) texts
C 42548,3 Load A with Available In-Game Menu Command Flags (part 1)
C 42551,3 Print currently available additional In-Game Menu command options (part 1)
C 42554,3 Load A with Available In-Game Menu Command Flags (part 2)
C 42557,3 Print currently available additional In-Game Menu command options (part 2)
C 42560,3 Process keyboard / joystick input on a menu and load A with selected item index
C 42563,2 If index of selected item is less than 5 (i.e. is a permanent, yellow entry)...
C 42565,2 ...then skip ahead to #R42587
C 42567,2 Subtract 4 from index to get index within currently available conditional entries...
C 42569,1 ...and load this value into B
C 42570,2 Load C with zero
C 42572,3 Load HL with Available In-Game Menu Command Flags
N 42575 At this point, B is initialised to the index of the selected menu option among the currently available conditional entries. The following loop loads C with the index of the selected action's Action Flag (bit) in the WORD value at #R23698.
C 42575,2 Perform 16-bit rotation (right) through HL and into Carry Flag...
C 42577,2 ...so that Carry Flag contains "current" Action Flag
C 42579,1 Increase C (index of current Action Flag)
C 42580,2 If current Action Flag is not set then loop back to #R42575...
C 42582,2 ...otherwise decrease B then loop back to #R42575
C 42584,1 Load index of appropriate Action Flag into A
C 42585,2 Add 4, to restore original index value (i.e. reverse of instruction at #R42567)
N 42587 At this point, A holds either the index of the appropriate Action Flag plus four, or the index of the originally selected menu item if less than 5. In either case, A contains the index of the command to initiate. Code between #R42587 and #R42595 is not necessary; see trivia.
C 42587,3 Point HL at List of Command Indices
C 42590,1 Load index of selected command into B, setting C to zero...
C 42591,2 ...
C 42593,1 If current entry in List of Command Indices is the same as the index of the selected command...
C 42594,1 ...
C 42595,2 ...then skip ahead to #R42601
C 42597,1 Increase C (index of command index)
C 42598,1 Advance HL to next command index in list
C 42599,2 Loop back to #R42593
C 42601,1 Store BC (B = selected command index, C = index of selected command index)
C 42602,3 Play upward scale sound
C 42605,1 Restore BC (B = selected command index, C = index of selected command index)
C 42606,1 Load index (of selected command index) into A...
C 42607,3 ...and set as Current Command
C 42610,3 Point HL at start of Table of Command Routine Addresses
C 42613,3 Advance HL by A words, load HL with word at location HL as address and jump to it
c 42616 Print Currently Available Additional In-Game Menu Command Options
D 42616 Used by the routine at #R42494. Input:  A  Available In-Game Menu Command Flags (part 1 or part 2) HL  Points to #R51486 if dealing with Flags part 1. Points to #R51527 if dealing with Flags part 2.
C 42616,2 Load B with 8 (as there are 8 flags)
C 42618,1 Store BC (B = remaining number of flags to process)
C 42619,1 Rotate least significant bit of A (i.e. current flag) into Carry Flag
C 42620,1 Store AF (current flag in Carry and remaining flags in A)
C 42621,3 Advance HL to byte after first zero from address in HL onwards
C 42624,1 Restore AF (current flag in Carry and remaining flags in A)
C 42625,2 If current flag is reset then skip ahead to #R42634
C 42627,1 Store HL (current position in Additional Menu Items texts)
C 42628,1 Store AF (current flag in Carry and remaining flags in A)
C 42629,3 Print text at HL (current additional menu item)
C 42632,1 Restore AF (current flag in Carry and remaining flags in A)
C 42633,1 Restore HL (current position in Additional Menu Items texts)
C 42634,1 Restore BC (B = remaining number of flags to process)
C 42635,2 Decrease B and loop back to #R42618 for next flag
C 42637,1 Return
c 42638 Process Command to Examine Yourself / A Character / An Object
C 42638,3 Print or update Command Summary Window at top of screen
C 42641,3 Point DE at "[Current Command] " text...
C 42644,3 ...and print in Command Summary Window at top of screen
C 42647,2 Draw "EXAMINE WHAT?" Menu Window...
C 42649,3 ...
C 42652,3 Point HL at "[Current Command] WHAT ?" menu text...
C 42655,3 ...and print to screen
C 42658,3 Process keyboard / joystick input on a menu and load A with selected item index
C 42661,1 If "OBJECT" selected...
C 42662,3 ...then skip ahead to #R42834
C 42665,2 If "CHARACTER" selected...
C 42667,3 ...then skip ahead to #R42715
N 42670 Examine Yourself
C 42670,3 Point DE at "YOURSELF " text...
C 42673,3 ...and print in Command Summary Window at top of screen
C 42676,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 42679,2 Draw Window 18...
C 42681,3 ...
C 42684,2 Set Current Character index to 32...
C 42686,3 ...as index of "MAGIC KNIGHT" text is 32 relative to start of characters' names at #R58544
C 42689,3 Point HL at percentage completion text
C 42692,3 Point DE at time left text
C 42695,3 Insert current time and score into "Time Left" and "Percentage Completion" texts
C 42698,3 Point HL at start of Magic Knight's Current Stats
C 42701,2 Set Graphic Index to 37...
C 42703,3 ...and store as operand to instruction at #R42826
C 42706,3 Load Magic Knight's Attribute value into...
C 42709,3 ...content attribute slot of Window 19 (EXAMINE Portrait Frame)
C 42712,3 Skip ahead to #R42763 (display window as in Examine Character)
N 42715 Examine Character
C 42715,3 Point HL at "[Current Command] ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 42718,3 Load DE with zero (i.e. no Command Summary Text)
C 42721,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 42724,3 If there are no characters in the room then set MK's available action flags and jump to start of Main Game Loop (#R41742)
C 42727,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 42730,2 Increase Current Character's happiness by 5...
C 42732,3 ...
C 42735,2 Draw Window 18...
C 42737,3 ...
C 42740,3 Load A with index of Current Character
C 42743,2 Point HL at start of character's stats...
C 42745,3 ...
C 42748,1 Transfer address from HL...
C 42749,2 ...into IX
C 42751,3 Load Character Graphic Index into A...
C 42754,3 ...and modify operand of instruction at #R42826 to match
C 42757,3 Load character's Attribute value into...
C 42760,3 ...content attribute slot of Window 19 (EXAMINE Portrait Frame)
C 42763,3 Insert numeric stats (at HL) of a character into "EXAMINE CHARACTER" window text
C 42766,1 Store HL (points to start of character's current stats)
C 42767,3 Print Examine Character window text (i.e. "EXAMINE [CHARACTER] ... STRENGTH XX..." text)...
C 42770,3 ...
C 42773,2 Restore IX (points to start of character's current stats)
C 42775,2 Load B with 10 (index of "[Current Character's short name] IS ASLEEP" text)
C 42777,4 If character's Asleep Flag is set...
C 42781,2 ...then skip ahead to #R42786
C 42783,3 Load B with index of character's Current Status Text
C 42786,3 If Current Character index is not 32 (Magic Knight, i.e. EXAMINE YOURSELF)...
C 42789,2 ...
C 42791,2 ...then skip ahead to #R42795
C 42793,2 Load B with 1 (index of Magic Knight's current status text)
C 42795,2 Reset Bit 7 of status text index (see trivia)
C 42797,3 Point HL at start of characters' "current status" texts
C 42800,3 Advance HL to B-th entry in list of zero-terminated strings starting at HL...
C 42803,3 ...and print
C 42806,3 If Character Graphic Index is zero...
C 42809,1 ...
C 42810,2 ...then skip ahead to #R42831
C 42812,2 Draw Window 19 (EXAMINE Portrait Frame)...
C 42814,3 ...
C 42817,4 Load BC with top-left coordinate of current window
C 42821,2 Load ATTR T system variable with 71 (white INK, black PAPER, BRIGHT)...
C 42823,3 ...
N 42826 The operand of the instruction at #R42826 represents the Character's Graphic Index. This is modified by the instructions at #R42703 and #R42754.
C 42826,2 Load A with character's Graphic Index...
C 42828,3 ...and draw this graphic at character coordinates (C, B) with width = 2 characters and height = 4 characters
C 42831,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
N 42834 Examine Object
C 42834,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 42837,3 If MK's inventory (carrying) is empty then set his available action flags and jump to start of Main Game Loop (#R41742)
C 42840,2 Set bottom edge of Window 20 to 15...
C 42842,3 ...
C 42845,4 Point IX at Magic Knight's current inventory (carrying)
C 42849,2 Load B with 5 (five inventory slots)
C 42851,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 42854,3 Load DE with zero (i.e. no Command Summary Text)
C 42857,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 42860,3 Point HL at start of Characters' Current Inventories Table
C 42863,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 42866,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 42869,3 Load A with index of Current Object...
C 42872,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 42875,2 Point HL to the start of the Current Object's record in Object Properties Table...
C 42877,3 ...
C 42880,1 Store HL (pointer to Current Object's properties)
C 42881,3 Insert numeric / text properties of the object into "Examine Object" Window Text
C 42884,2 Draw Window 20 ("EXAMINE OBJECT" Window)...
C 42886,3 ...
C 42889,3 Point HL at "      [Current Command]" text
C 42892,3 ...and print to screen
C 42895,3 Load B with index of Current Object...
C 42898,1 ...
C 42899,3 ...and point HL at its entry in Table of Object Names
C 42902,3 Print the Current Object's name
C 42905,3 Point HL at Object Properties text...
C 42908,3 ...and print to screen
C 42911,2 Restore IX (pointer to Current Object's properties)
C 42913,3 Set content attribute of Window 21 (frame around object in "EXAMINE OBJECT" Window)...
C 42916,3 ...to match attribute of object
C 42919,2 Draw Window 21...
C 42921,3 ...
C 42924,4 Load BC with top-left coordinate of current window
C 42928,1 Increase y-coordinate by 1 (as object positions are based upon their bottom-left corner)
C 42929,3 Load A with index of Current Object
C 42932,3 Set Terrain Interaction Data for character blocks spanned by object and draw the object
C 42935,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 42938 Insert Numeric Stats (at HL) of a Character into "Examine Character" Window Text
D 42938 Used by the routine at #R42638. Input:  HL  Address of start of a character's current stats
C 42938,1 Store HL (address of start of character's stats)
C 42939,1 Load character's Strength into A...
C 42940,2 ...and remove bit 7 (unused)
C 42942,1 Store HL (Strength position in character's stats)
C 42943,3 Point HL at start of " 99 " segment for Strength in Character's Stats Text at #R52180
C 42946,3 Splice numeric Strength data as a string into Character's Stats Text
C 42949,1 Restore HL (Strength position in character's stats)
C 42950,1 Advance HL to Happiness position
C 42951,1 Load character's Happiness into A...
C 42952,2 ...and remove bit 7 (unused)
C 42954,1 Store HL (Happiness position in character's stats)
C 42955,3 Point HL at start of " 99 " segment for Happiness in Character's Stats Text at #R52180
C 42958,3 Splice numeric Happiness data as a string into Character's Stats Text
C 42961,1 Restore HL (Happiness position in character's stats)
C 42962,1 Advance HL to Stamina position
C 42963,1 Load character's Stamina into A...
C 42964,2 ...and remove bit 7 (unused)
C 42966,1 Store HL (Stamina position in character's stats)
C 42967,3 Point HL at start of " 99 " segment for Stamina in Character's Stats Text at #R52180
C 42970,3 Splice numeric Stamina data as a string into Character's Stats Text
C 42973,1 Restore HL (Stamina position in character's stats)
C 42974,1 Advance HL to Magic Level position
C 42975,1 Load character's Magic Level into A...
C 42976,2 ...and remove bit 7 (Can Help Flag)
C 42978,1 Store HL (Magic Level position in character's stats)
C 42979,3 Point HL at start of " 99 " segment for Magic Level in Character's Stats Text at #R52180
C 42982,3 Splice numeric Magic Level data as a string into Character's Stats Text
C 42985,1 Restore HL (Magic Level position in character's stats)
C 42986,1 Advance HL to Food Level position...
C 42987,1 ...
C 42988,1 ...
C 42989,1 Load character's Food Level into A...
C 42990,2 ...and remove bit 7 (Asleep Flag)
C 42992,3 Point HL at start of " 99 " segment for Magic Level in Character's Stats Text at #R52180
C 42995,3 Splice numeric Magic Level data as a string into Character's Stats Text
C 42998,1 Restore HL (address of start of character's stats)
C 42999,1 Return
c 43000 Insert Numeric / Text Stats of an Object into "Examine Object" Window Text
D 43000 Used by the routine at #R42638. Input:  HL  Address of start of an object's properties
C 43000,1 Load A with weight of the object...
C 43001,2 ...stripping out flag values
C 43003,1 Store HL (address of start of object's properties)
C 43004,3 Point HL at numeric part of "WEIGHT" string...
C 43007,3 ...and overwrite with weight value
C 43010,1 Restore HL (address of start of object's properties)
C 43011,2 Load A with (Common Word Index for text "YES")
C 43013,2 If Can Blow Flag is set...
C 43015,2 ...then skip ahead to #R43018
C 43017,1 Increase A to 148 (Common Word Index for text "NO")
C 43018,3 Insert Common Word Index in A into the "BLOW" field of the string
C 43021,2 Load A with (Common Word Index for text "YES")
C 43023,2 If Can Read Flag is set...
C 43025,2 ...then skip ahead to #R43028
C 43027,1 Increase A to 148 (Common Word Index for text "NO")
C 43028,3 Insert Common Word Index in A into the "READ" field of the string
C 43031,1 Advance HL to second byte in record
C 43032,2 Load A with (Common Word Index for text "YES")
C 43034,2 If Can Be Worn Flag is set...
C 43036,2 ...then skip ahead to #R43039
C 43038,1 Increase A to 148 (Common Word Index for text "NO")
C 43039,3 Insert Common Word Index in A into the "WEAR" field of the string
C 43042,1 Return
c 43043 Process Command to Command a Character
C 43043,3 Point HL at "[Current Command] ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 43046,3 Point DE (Command Summary Text Pointer) at "COMMAND " text
C 43049,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 43052,3 If there are no characters in the room then set MK's available action flags and jump to start of Main Game Loop (#R41742)
C 43055,3 Point DE at " TO " text...
C 43058,3 ...and print in Command Summary Window at top of screen
C 43061,2 Draw  "WHICH COMMAND DO YOU WANT TO USE?" Menu Window...
C 43063,3 ...
C 43066,3 Print "WHICH COMMAND DO YOU WANT TO USE" Menu text...
C 43069,3 ...
C 43072,3 Process keyboard / joystick input on a menu and load A with selected item index
C 43075,3 Load index of selected command into operand of instruction at #R43097...
C 43078,1 ...and into B
C 43079,3 Point HL at start of B-th entry in list of "COMMAND A CHARACTER" commands at #R52590
C 43082,1 Swap HL and DE (Command Summary Text Pointer, now at selected command string)
C 43083,3 Print text at DE in Command Summary Window at top of screen
C 43086,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 43089,3 End the game if Current Character is Off-White or Grunter
C 43092,2 Increase Current Character's happiness by 2 (see trivia)...
C 43094,3 ...
N 43097 The operand of the instruction at #R43097 is the index of the currently selected command from the "COMMAND A CHARACTER TO" menu. This is modified by the instruction at #R43075.
C 43097,2 Load A with index of selected "COMMAND A CHARACTER TO" command
C 43099,3 Point HL at start of Table of "Command a Character" Routine Addresses
C 43102,3 Advance HL by A words, load HL with word at location HL as address and jump to it
b 43105 Table of Routine Addresses for Magic Knight Commanding Characters
W 43105,2,2 Send Current Character to Sleep if Possible
W 43107,2,2 Wake Current Character Up if Possible
W 43109,2,2 Make Current Character Go Away if Possible
W 43111,2,2 Have a Character Help if Possible
W 43113,2,2 Make Current Character Eat & Drink if Possible
W 43115,2,2 Make Current Character Be Happy if Possible
c 43117 Send Current Character to Sleep if Possible
C 43117,3 Point IX at Current Character's current stats
C 43120,4 If character's Asleep Flag is set then reset Zero Flag
C 43124,3 Point HL at "[Current Character's short name] IS ALREADY ASLEEP" text
C 43127,3 If character is asleep then display "[Character] IS ALREADY ASLEEP" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43130,3 If character's stamina is 70 or more...
C 43133,2 ...
C 43135,2 ...then reset Carry Flag, otherwise set it
C 43137,3 Point HL at "[Current Character's short name] IS TOO WAKEFUL TO SLEEP" text
C 43140,3 If Carry Flag is reset then display "[Character] IS TOO WAKEFUL TO SLEEP" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43143,2 If character's happiness is less than 30 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 43145,3 ...
C 43148,4 Set character's Asleep Flag
C 43152,3 Point HL at "[Current Character's short name] HAS GONE TO SLEEP" text
C 43155,3 Display "[Character] HAS GONE TO SLEEP" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 43158 Wake Current Character Up if Possible
C 43158,3 Point IX at Current Character's current stats
C 43161,4 If character's Asleep Flag is set then reset Zero Flag
C 43165,3 Point HL at "[Current Character's short name] IS ALREADY AWAKE" text
C 43168,3 If character is awake then display "[Character] IS ALREADY AWAKE" Window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43171,3 If character's stamina is less than 30...
C 43174,2 ...
C 43176,2 ...then set Carry Flag, otherwise reset it
C 43178,3 Point HL at "[Current Character's short name] IS TOO TIRED TO WAKE UP" text
C 43181,3 If Carry Flag is set then display "[Character] IS TOO TIRED TO WAKE UP" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43184,2 If character's happiness is less than 30 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 43186,3 ...
C 43189,4 Reset character's Asleep Flag
C 43193,3 Point HL at "[Current Character's short name] HAS WOKEN UP" text
C 43196,3 Display "[Character] HAS WOKEN UP" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 43199 Make Current Character Go Away if Possible
C 43199,3 If index of Current Character is 6 (Organon the Guard)...
C 43202,2 ...then set Zero Flag, otherwise reset
C 43204,3 Point HL at "[Current Character's short name] SAYS 'I THINK YOU ARE THE ONE..." text
C 43207,3 If Current Character is Organon then display "I THINK YOU ARE THE ONE..." Window (15), wait for Fire to be pressed then jump to Main Game Loop
C 43210,2 Decrease Current Character's happiness by 3...
C 43212,3 ...
C 43215,3 Display "[Character] IS ASLEEP" Window and jump to Main Game Loop if Current Character is asleep, else return here and continue
C 43218,3 Point IX at Current Character's current stats
C 43221,3 If character's stamina is less than 20...
C 43224,2 ...
C 43226,2 ...then set Carry Flag, otherwise reset it
C 43228,3 Point HL at "[Current Character's short name] IS TOO TIRED TO GO AWAY" text
C 43231,3 If Carry Flag is set then display "[Character] IS TOO TIRED TO GO AWAY" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43234,2 If character's happiness is less than 20 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 43236,3 ...
C 43239,3 Point HL at current position data for Current Character
C 43242,2 Change current room number for Current Character to 99
C 43244,3 Point HL at "[Current Character's short name] HAS GONE AWAY" text
C 43247,3 Display "[Character] HAS GONE AWAY" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 43250 Have a Character Help if Possible
C 43250,3 Display "[Character] IS ASLEEP" Window and jump to Main Game Loop if Current Character is asleep, else return here and continue
C 43253,2 Set last character in "[Current Character's short name] CANNOT HELP YOU  " text at #R52770...
C 43255,3 ...to 32 (SPACE) (see trivia)
C 43258,3 If index of Current Character is 7 (Grunter the Bearwoolf)...
C 43261,2 ...
C 43263,2 ...then skip ahead to #R43293
C 43265,3 Point IX at Current Character's current stats
C 43268,4 If character's Can Help Flag is reset...
C 43272,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43275,3 If character's stamina is less than 10...
C 43278,2 ...
C 43280,2 ...the set Carry Flag, otherwise reset
C 43282,3 Point HL at "[Current Character's short name] IS TOO TIRED TO HELP YOU " text
C 43285,3 ...then display "[Character] IS TOO TIRED TO HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43288,2 If character's happiness is less than 10 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 43290,3 ...
C 43293,3 Load A with index of Current Character
C 43296,3 Point HL at start of Table of Addressed of Characters' Help Routines
C 43299,3 Advance HL by A words, load HL with word at location HL as address and jump to it
b 43302 Table of Start Addresses of Routines for Characters Being Commanded to Help
W 43302,2,2 Off-White Knight
W 43304,2,2 Aramis le Peux
W 43306,2,2 Robin of Shylock
W 43308,2,2 Reggie the Rat
W 43310,2,2 Rachel of Amazonia
W 43312,2,2 Barker the Ent
W 43314,2,2 Organon the Guard
W 43316,2,2 Grunter the Bearwoolf
c 43318 Make Current Character Eat & Drink if Possible
C 43318,3 Display "[Character] IS ASLEEP" Window and jump to Main Game Loop if Current Character is asleep, else return here and continue
C 43321,3 Load A with index of Current Character
C 43324,2 Point HL at character's current strength...
C 43326,3 ...
C 43329,1 Transfer address from HL...
C 43330,2 ...into IX
C 43332,3 Load A with character's food level stripping out Asleep Flag...
C 43335,2 ...and set Zero Flag if food level is zero
C 43337,3 Point HL at "[Current Character's short name] HAS NO FOOD LEFT" text
C 43340,3 If Zero Flag is set then display "[Character] HAS NO FOOD LEFT" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43343,3 If character's stamina is less than 20...
C 43346,2 ...then set Carry Flag
C 43348,3 Point HL at "[Current Character's short name] IS TOO TIRED TO EAT OR DRINK" text
C 43351,3 If Carry Flag is set then display "[Character] IS TOO TIRED TO EAT OR DRINK" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43354,3 If character's happiness is less than 30...
C 43357,2 ...
C 43359,3 ...then display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), wait for Fire to be pressed then Jump to Main Game Loop
C 43362,3 Load A with character's Asleep Flag...
C 43365,2 ...
C 43367,3 ...and store in operand of instruction at #R43406
C 43370,4 Reset character's Asleep Flag
C 43374,3 Load A with character's unused flag...
C 43377,2 ...
C 43379,3 ...and store in operand of instruction at #R43414
C 43382,4 Reset character's unused flag
C 43386,3 If character's strength is 100...
C 43389,2 ...
C 43391,3 ...then skip ahead to #R43406
C 43394,3 Decrease character's food level by one
C 43397,3 Increase character's strength by one
C 43400,3 If character's food level is not zero...
C 43403,1 ...
C 43404,2 ...then loop back to #R43386
N 43406 The operand of the instruction at #R43406 represents the character's Asleep Flag (128 for asleep or 0 for awake). This is modified by the instruction at #R43367.
C 43406,2 Load A with Asleep Flag value...
C 43408,3 ...merge with food level...
C 43411,3 ...and store
N 43414 The operand of the instruction at #R43414 represents the character's unused flag (bit 7 of strength). This is modified by the instruction at #R43379.
C 43414,2 Load A with unused flag value...
C 43416,3 ...merge with strength...
C 43419,3 ...and store
C 43422,3 Point HL at "[Current Character's short name] HAS TAKEN REFRESHMENT" text
C 43425,3 Display "[Character] HAS TAKEN REFRESHMENT" window (29), wait for Fire to be pressed then jump to Main Game Loop
c 43428 Make Current Character Be Happy if Possible
C 43428,3 Display "[Character] IS ASLEEP" Window and jump to Main Game Loop if Current Character is asleep, else return here and continue
C 43431,3 Load A with index of Current Character
C 43434,2 Point HL at start of character's current stats...
C 43436,3 ...
C 43439,1 Transfer address from HL...
C 43440,2 ...into IX
C 43442,3 If character's stamina is less than 30...
C 43445,2 ...then set Carry Flag
C 43447,3 Point HL at "[Current Character's short name] IS TOO TIRED TO BE HAPPY" text
C 43450,3 If Carry Flag is set then display "[Character] IS TOO TIRED TO BE HAPPY" window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43453,3 If character's happiness is less than 5...
C 43456,2 ...
C 43458,3 ...then display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
C 43461,3 Load DE with index of Current Character...
C 43464,1 ...
C 43465,2 ...
C 43467,3 Load HL with start address of Table of Characters' Default Happiness Levels...
C 43470,1 ...and add DE as offset
C 43471,3 Load A with character's current happiness...
C 43474,2 ...and reset all but Bit 7 (unused)
C 43476,1 Add in character's default happiness...
C 43477,3 ...and set as character's current happiness
C 43480,3 Point HL at "[Current Character's short name] WILL TRY TO BE HAPPY" text
C 43483,3 Display "[Character] WILL TRY TO BE HAPPY" window (29), wait for Fire to be pressed then jump to Main Game Loop
b 43486 Table of Characters' Default Happiness Levels
D 43486 (See trivia)
B 43486,1,1 Off-White Knight
B 43487,1,1 Aramis le Peux
B 43488,1,1 Robin of Shylock
B 43489,1,1 Reggie the Rat
B 43490,1,1 Rachel of Amazonia
B 43491,1,1 Barker the Ent
B 43492,1,1 Organon the Guard
B 43493,1,1 Grunter the Bearwoolf
c 43494 Process Command to Read an Object
C 43494,4 Point IX at Magic Knight's current inventory (carrying)
C 43498,2 Load B with 5 (five inventory slots)
C 43500,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 43503,3 Point DE at "[Current Command] THE " text
C 43506,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 43509,3 Point IX at Magic Knight's current inventory (carrying)
C 43512,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 43515,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 43518,3 Load A with index of Current Object...
C 43521,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 43524,2 If Current Object is the Instruction Book (24)...
C 43526,3 ...then skip ahead to #R43624
C 43529,2 If Current Object is the Gadget X (21)...
C 43531,3 ...then skip ahead to #R43630
C 43534,2 If Magic Knight is not carrying the Crystal Ball (2)...
C 43536,3 ...
C 43539,2 ...then skip ahead to #R43592
C 43541,3 Load A with index of Current Object...
C 43544,2 Load B with 21 (index of read-text for Wand of Command with Crystal Ball)
C 43546,2 If Current Object is the Wand of Command (3)...
C 43548,2 ...then skip ahead to #R43617 (display text with index B)
C 43550,2 Load B with 23 (index of read-text for Magic Talisman with Crystal Ball)
C 43552,2 If Current Object is the Magic Talisman (6)...
C 43554,2 ...then skip ahead to #R43617 (display text with index B)
C 43556,2 Load B with 24 (index of read-text for Glow Shield with Crystal Ball)
C 43558,2 If Current Object is the Glow Shield (12)...
C 43560,2 ...then skip ahead to #R43617 (display text with index B)
C 43562,2 Load B with 25 (index of read-text for Boomerang with Crystal Ball)
C 43564,2 If Current Object is the Boomerang (14)...
C 43566,2 ...then skip ahead to #R43617 (display text with index B)
C 43568,2 Load B with 3 (index of read-text for unreadable magic language) (see trivia)
C 43570,2 If Current Object is the Sword (15)...
C 43572,2 ...then skip ahead to #R43617 (display text with index B)
C 43574,2 Load B with 27 (index of read-text for Brass Ankh with Crystal Ball)
C 43576,2 If Current Object is the Brass Ankh (16)...
C 43578,2 ...then skip ahead to #R43617 (display text with index B)
C 43580,2 Load B with 28 (index of read-text for Elf-Horn with Crystal Ball)
C 43582,2 If Current Object is the Elf-Horn (22)...
C 43584,2 ...then skip ahead to #R43617 (display text with index B)
C 43586,2 Load B with 29 (index of read-text for Silver Arrow with Crystal Ball)
C 43588,2 If Current Object is the Silver Arrow (23)...
C 43590,2 ...then skip ahead to #R43617 (display text with index B)
C 43592,3 Load A with index of Current Object...
C 43595,2 Point HL at start of record for object with index A in Object Properties Table...
C 43597,3 ...
C 43600,2 If Can Read Flag is set...
C 43602,2 ...then skip ahead to #R43610
C 43604,3 Point HL at "THERE IS NO WRITING FOR ME TO [Current Command]" text
C 43607,3 Display "THERE IS NO WRITING FOR ME TO [Current Command]" Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 43610,1 Advance HL to read-text index for object...
C 43611,1 ...
C 43612,1 ...
C 43613,1 ...and load into A
C 43614,2 Clear bits 5, 6 and 7...
C 43616,1 ...and load index into B
N 43617 At this point, B holds the index of the read-text to print
C 43617,3 Point HL at start of B-th entry in List of Read-Texts of Readable Objects
C 43620,3 Display Window 02 with object's read-text, wait for Fire to be pressed then jump to Main Game Loop...
b 43623 Data block at 43623
B 43623,1,1 ...
c 43624 Routine at 43624
D 43624 Used by the routine at #R43494.
C 43624,3 Display Instructions windows
C 43627,3 Set Magic Knight's available action flags and jump to start of Main Game Loop
N 43630 This entry point is used by the routine at #R43494.
C 43630,3 Display and handle Gadget X Menu
C 43633,3 Set Magic Knight's available action flags and jump to start of Main Game Loop
c 43636 Process Command to Throw an Object
C 43636,4 Point IX at Magic Knight's current inventory (carrying)
C 43640,2 Load B with 5 (five inventory slots)
C 43642,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 43645,3 Point DE at "[Current Command] THE " text
C 43648,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 43651,3 Point HL at Magic Knight's current inventory (carrying)
C 43654,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 43657,3 Point DE at " AT " text...
C 43660,3 ...and print in Command Summary Window at top of screen
C 43663,3 Point HL at "THROW AN OBJECT AT ?" text
C 43666,3 Load DE with zero (i.e. no Command Summary Text)
C 43669,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 43672,3 If there are no characters in the room then set his available action flags and jump to start of Main Game Loop (#R41742)
C 43675,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 43678,3 Load A with index of Current Object...
C 43681,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 43684,3 Point HL at "THE [name of Current Object] BLEW UP..." text
C 43687,2 If Current Object is the Stick of Dynamite (5)...
C 43689,3 ...then jump to "Game over" window routine and return to Control Selection Menu
C 43692,2 If Current Object is the Boomerang (14)...
C 43694,3 ...then skip ahead to #R43868 (Game Over)
C 43697,2 If Current Object is not the Magic Missile (25)...
C 43699,2 ...then skip ahead to #R43715
C 43701,3 If Current Character is not Off-White Knight (0)...
C 43704,1 ...
C 43705,2 ...then skip ahead to #R43712
C 43707,2 Set Off-White Knight Sent To Sleep Flag to 255...
C 43709,3 ...
C 43712,3 Load A with index of Current Object...
C 43715,2 Point HL to the start of the Current Object's record in Object Properties Table...
C 43717,3 ...
C 43720,1 Copy address into IX...
C 43721,2 ...
C 43723,3 Load A with Current Object's weight...
C 43726,2 ...
C 43728,2 ...and if this is 12 or greater...
C 43730,3 ...then skip ahead to #R43856 (Game Over)
C 43733,4 If Current Object's Is Lethal if Thrown Flag is set...
C 43737,3 ...then skip ahead to #R43862
C 43740,3 Load C with index of Current Object...
C 43743,1 ...
C 43744,2 Load B with 5 (five inventory slots)
C 43746,3 Point IX at Magic Knight's current inventory (carrying)
C 43749,3 Remove object C from Magic Knight's current inventory (carrying)
C 43752,3 Load C with index of Current Object...
C 43755,1 ...
C 43756,2 If Current Object is the Mirror (20)...
C 43758,3 ...then load C with 7 (index of Broken Glass)
C 43761,2 If Current Object is Bottle of Liquid (17)...
C 43763,3 ...then load C with 8 (index of Broken Glass)
C 43766,2 If Current Object is Bottle of Liquid (18)...
C 43768,3 ...then load C with 9 (index of Broken Glass)
C 43771,2 If Current Object is Empty Bottle (28)...
C 43773,3 ...then load C with 8 (index of Broken Glass)
C 43776,2 If Current Object is Empty Bottle (29)...
C 43778,3 ...then load C with 9 (index of Broken Glass)
C 43781,1 Load BC with three times index of Current Object...
C 43782,1 ...
C 43783,1 ...
C 43784,1 ...
C 43785,2 ...
C 43787,3 Point HL at start of Objects' Current Positions Table at #R24922
C 43790,1 Add three times Current Object's index as offset to point HL at position data of current object
C 43791,3 Set object's room to be Magic Knight's current room...
C 43794,1 ...
C 43795,1 Advance HL to object's x-coordinate
C 43796,1 Store HL (pointer to x-coordinate)
C 43797,3 Load BC with three times index of character who was target of throw...
C 43800,1 ...
C 43801,1 ...
C 43802,1 ...
C 43803,2 ...
C 43805,1 ...
C 43806,3 Point HL at x-coordinate of first entry in characters' current positions table
C 43809,1 Add BC (three times character index) as offset
C 43810,1 Swap DE (now pointer to Current Character's x-coordinate) and HL (now undefined)
C 43811,1 Restore HL (pointer to object's x-coordinate)
C 43812,1 Copy character's x-coordinate...
C 43813,1 ...into object's x-coordinate
C 43814,1 Advance to character's y-coordinate
C 43815,1 Advance to object's y-coordinate
C 43816,1 Copy character's y-coordinate plus three...
C 43817,2 ...
C 43819,1 ...into object's y-coordinate
C 43820,3 Set Magic Knight's available action flags
C 43823,3 Load A with index of Current Object
C 43826,2 If Current Object is the Magic Missile (25)...
C 43828,2 ...then skip ahead to #R43840
C 43830,2 If Current Object is not the Mirror (20)...
C 43832,2 ...then skip ahead to #R43850
C 43834,3 Point HL at "THE [object] LANDED ON THE FLOOR BY [character] AND SMASHED..." text (see trivia)
C 43837,3 Display Smashed Object Window (15), wait for Fire to be pressed then jump to Main Game Loop
N 43840 Magic Missile thrown
C 43840,3 Load A with index of Current Character
C 43843,2 Point HL at character's Flags...
C 43845,3 ...
C 43848,2 ...and set Asleep Flag
C 43850,3 Point HL at "THE [object] LANDED ON THE FLOOR BY [character]" text
C 43853,3 Display "THE [object] LANDED ON THE FLOOR BY [character]" Window (15), wait for Fire to be pressed then jump to Main Game Loop
N 43856 Weight of 12 or more
C 43856,3 Point HL at "YOU KILLED YOURSELF TRYING TO THROW..." text
C 43859,3 Display cyan "Game Over" Window and return to Control Selection Menu
N 43862 Lethal if thrown
C 43862,3 Point HL at "YOU THREW THE [Object] AND KILLED [Character]" text
C 43865,3 Display cyan "Game Over" Window and return to Control Selection Menu
N 43868 Boomerang
C 43868,3 Point HL at thrown Boomerang Game Over text
C 43871,3 Display cyan "Game Over" Window and return to Control Selection Menu
c 43874 Process Command to Cast a Spell
C 43874,2 Print or update Command Summary Window at top of screen...
C 43876,3 ...with "CAST A SPELL" text
C 43879,3 Point HL at "WHICH SPELL DO YOU WANT TO [Current Command] ?" full menu text
C 43882,3 Adjust height of window 30 to accommodate text...
C 43885,3 ...
C 43888,1 Store HL (pointer to menu text to print)
C 43889,2 Draw Menu Window 30...
C 43891,3 ...
C 43894,1 Restore HL (pointer to menu text to print)
C 43895,3 Print text to screen
C 43898,3 Process keyboard / joystick input on a menu and load A with selected item index
C 43901,3 Store index of spell selected in this routine at #R43928
C 43904,2 If selected spell is 4 (TRAVEL TO PERSON)...
C 43906,2 ...then skip ahead to #R43928
C 43908,3 Print or update Command Summary Window at top of screen
C 43911,3 Point HL at "CAST DIMENSION MERGE" text (i.e. first in list of "CAST [SPELL]" strings)
C 43914,3 Load index of spell selected into B...
C 43917,1 ...
C 43918,3 ...and advance HL to relevant "CAST [SPELL]" string
C 43921,1 Swap DE (now points to "CAST [SPELL]" text) and HL...
C 43922,3 ...and print in Command Summary Window at top of screen
C 43925,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
N 43928 The operand of the instruction at #R43928 represents the index of the selected spell. This is modified by the instruction at #R43901.
C 43928,2 Load A with index of selected spell
C 43930,3 Point HL at Table of Cast a Spell Routine Addresses
C 43933,3 Load HL with address of appropriate Cast a Spell Routine and jump to it
b 43936 Table of Cast a Spell Routine Addresses
W 43936,2,2 Dimension Merge
W 43938,2,2 Melt Granite
W 43940,2,2 Pass Plant
W 43942,2,2 Spell of Wonder
W 43944,2,2 Travel to Person
W 43946,2,2 Magic Fulcrum
W 43948,2,2 Quiticus Gamus
c 43950 Cast Dimension Merge if Possible, else Display Failure Message
C 43950,3 If Current Disquise is not zero...
C 43953,1 ...i.e. a disquise is being worn...
C 43954,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 43957,3 Load HL with address of Off-White Knight's current position data
C 43960,3 If Magic Knight's current room is not the same as Off-White Knight's...
C 43963,1 ...
C 43964,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 43967,3 If Magic Knight's current x-coordinate (characters)...
C 43970,1 ...
C 43971,1 ...
C 43972,1 ...
C 43973,2 ...
C 43975,1 ...
C 43976,1 ...is not the same as Off-White Knight's...
C 43977,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 43980,3 If Off-White Knight Sent To Sleep Flag is zero...
C 43983,1 ...i.e. Off-White has not yet been sent to sleep...
C 43984,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 43987,2 If Magic Knight's magic level is at least 99...
C 43989,3 ...then flash border and screen and decrease Magic Knight's magic level by 99...
C 43992,3 ...otherwise display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 43995,3 Show "WELL DONE" screen, jumping to Game Over when Fire is pressed
c 43998 Display Failure Message (When Attempting to Cast Melt Granite)
D 43998 See trivia
C 43998,3 Display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
c 44001 Cast Pass Plant if Possible, else Display Failure Message
C 44001,2 Load B with 49 (destination plant's room on Spaceship)
C 44003,3 If Magic Knight's current room is 4 (Outdoors, 3, The Spooky Forest, 1)...
C 44006,2 ...
C 44008,2 ...then skip ahead to #R44021
C 44010,2 If Magic Knight's current room is 17 (Castle Ground Floor, 0, One Axe Room)...
C 44012,2 ...then skip ahead to #R44021
C 44014,2 Load B with 4 (destination plant's room in Spooky Forest)
C 44016,2 If Magic Knight's current room is not 49 (Spaceship, 4, The Power Plant)...
C 44018,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
N 44021 At this point, B holds the room to which Magic Knight will travel when Pass Plant spell is cast.
C 44021,1 Load A with destination room
C 44022,3 Update operand to instruction at #R44052 to hold destination room
C 44025,3 Load A with Magic Knight's current x-coordinate (characters)...
C 44028,1 ...
C 44029,1 ...
C 44030,1 ...
C 44031,1 ...
C 44032,2 ...
C 44034,2 ...and if this is 7...
C 44036,2 ...then skip ahead to #R44044
C 44038,3 Point HL at "YOU ARE NOT NEAR ENOUGH TO THE RIGHT TYPE OF PLANT" text
C 44041,3 Display "YOU ARE NOT NEAR ENOUGH TO THE RIGHT TYPE OF PLANT" Window (27), wait for Fire to be pressed then jump to Main Game Loop
C 44044,2 If Magic Knight's magic level is at least 30...
C 44046,3 ...then flash border and screen and decrease Magic Knight's magic level by 30...
C 44049,3 ...otherwise display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
N 44052 The operand of the instruction at #R44052 represents the destination room for Pass Plant spell. This is modified by the instruction at #R44022.
C 44052,2 Set Magic Knight's room to destination room...
C 44054,3 ...
C 44057,3 Point HL at "YOU FIND YOURSELF STANDING BESIDE A SIMILAR PLANT..." text
C 44060,3 Display "YOU FIND YOURSELF STANDING BESIDE A SIMILAR PLANT..." Window (27), wait for Fire to be pressed then jump to Main Game Loop
c 44063 Cast Spell of Wonder if Possible, else Display Failure Message
D 44063 See trivia
C 44063,2 If Magic Knight's magic level is at least 60...
C 44065,3 ...then flash border and screen and decrease Magic Knight's magic level by 60...
C 44068,3 ...otherwise display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44071,3 Load B with unused bit...
C 44074,2 ...
C 44076,1 ...
C 44077,3 Load Magic Knight's current strength into A...
C 44080,2 ...
C 44082,2 ...add 10...
C 44084,2 ...and if less than 101...
C 44086,2 ...then skip ahead to #R44090
C 44088,2 Load A with 100
C 44090,1 Combine unused bit with value in A...
C 44091,3 ...and store as Magic Knight's new strength
C 44094,3 Point HL at "YOU FEEL THE USUAL MAGIC ENERGY DRAIN..." text
C 44097,3 Display "YOU FEEL THE USUAL MAGIC ENERGY DRAIN..." Window (27), wait for Fire to be pressed then jump to Main Game Loop
c 44100 Cast Travel to Person if Possible, else Display Failure Message
C 44100,3 Print or update Command Summary Window at top of screen
C 44103,3 Point DE at "TRAVEL TO " text...
C 44106,3 ...and print in Command Summary Window at top of screen
C 44109,3 Point HL at "TRAVEL TO ?" text
C 44112,1 Store HL (pointer to "TRAVEL TO ?" text)
C 44113,3 Load HL with start address of list of characters for "TRAVEL TO" Character Selection Menu
C 44116,3 Display and process input for character selection menu ("TRAVEL TO")
C 44119,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44122,2 If Magic Knight is not carrying the Crystal Ball (2)...
C 44124,3 ...
C 44127,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44130,2 If Magic Knight is not carrying the Magic Missile (25)...
C 44132,3 ...
C 44135,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44138,3 Load BC with three times index of Current Character...
C 44141,1 ...
C 44142,1 ...
C 44143,1 ...
C 44144,2 ...
C 44146,1 ...
C 44147,3 Point IX at start of Table of Characters' Current Positions at #R24898...
C 44150,1 ...and add BC as offset
C 44151,1 If character's current room is 99...
C 44152,2 ...
C 44154,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44157,2 If character's current room is 100...
C 44159,3 ...then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44162,2 Load C with 30 (as spell reduces magic level by 30)
C 44164,1 Store HL (pointer to character's current room)
C 44165,3 If MK's Magic Level is at least 30 then flash border and screen and decrease Magic Knight's magic level by 30, otherwise set Carry Flag
C 44168,1 Restore HL (pointer to character's current room)
C 44169,3 If Carry Flag set then display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44172,1 Set Magic Knight's current room to be the same as the character's...
C 44173,3 ...
C 44176,1 Advance HL to character's x-coordinate...
C 44177,1 ...and load into A
C 44178,1 Multiply A by eight to get x-coordinate in pixels...
C 44179,1 ...
C 44180,1 ...
C 44181,3 ...and set Magic Knight's current x-coordinate to this value
C 44184,1 Advance HL to character's y-coordinate...
C 44185,1 ...and load into A
C 44186,1 Multiply A by eight to get y-coordinate in pixels...
C 44187,1 ...
C 44188,1 ...
C 44189,3 ...and set Magic Knight's current y-coordinate to this value
C 44192,3 Point HL at "YOU FEEL YOUR BODY SUCKED THROUGH A BYPASS..." text
C 44195,3 Display "YOU FEEL YOUR BODY SUCKED THROUGH A BYPASS..." Window (15), wait for Fire to be pressed then jump to Main Game Loop
c 44198 Cast Magic Fulcrum if Possible, else Display Failure Message
C 44198,2 If Magic Knight's magic level is at least 55...
C 44200,3 ...then flash border and screen and decrease Magic Knight's magic level by 55...
C 44203,3 ...otherwise display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
C 44206,1 Reset all Main Lever Flags...
C 44207,3 ...
C 44210,3 Point HL at "YOU FEEL SEVEN LEVERS ALL MOVING TO THEIR START POSITIONS..." text
C 44213,3 Display "YOU FEEL SEVEN LEVERS..." Window (27), wait for Fire to be pressed then jump to Main Game Loop
c 44216 Cast Quiticus Gamus and Jump to Game Over
C 44216,3 Flash border and screen (as in Cast a Spell)
C 44219,3 Point HL at "I SUPPOSE YOU REALISED..." text
C 44222,3 Display cyan "Game Over" Window and return to Control Selection Menu
c 44225 Flash Border and Screen and Decrease Magic Knight's Magic Level if Level is at Least C
D 44225 Used by the routines at #R43950, #R44001, #R44063, #R44100 and #R44198. Input:  C  Cost of spell Output: A  Magic Knight's magic level if less than C, otherwise zero F  Carry Flag set if Magic Knight's magic level is less than C, reset otherwise
C 44225,3 Load Magic Knight's current magic level into A...
C 44228,2 ...
C 44230,1 If this is less than C...
C 44231,1 ...then return
C 44232,3 Load B with unused bit...
C 44235,2 ...
C 44237,1 ...
C 44238,3 Load Magic Knight's current magic level into A...
C 44241,2 ...
C 44243,1 ...subtract C...
C 44244,1 ...combine with unused bit...
C 44245,3 ...and store
C 44248,3 Flash border and screen (as in Cast a Spell)
C 44251,1 Set A to zero
C 44252,1 Return
c 44253 Show "WELL DONE" Screen, Jumping to Game Over when Fire is Pressed
D 44253 Used by the routine at #R43950.
C 44253,2 Set Interrupt Mode 1
C 44255,3 Increase Bonus Score by 17...
C 44258,2 ...
C 44260,3 ...
C 44263,3 Flash border and screen (as in Cast a Spell)
C 44266,2 Draw Window 10...
C 44268,3 ...
C 44271,3 Point HL at "WELL DONE..." text
C 44274,3 ...and print to screen
C 44277,3 Blank out top two thirds of Display File...
C 44280,3 ...
C 44283,3 ...
C 44286,1 ...
C 44287,2 ...
C 44289,2 Load A with 71 (white INK, black PAPER, BRIGHT)...
C 44291,3 ...and set system variables ATTR T...
C 44294,3 ...and ATTR P to this value
C 44297,3 Load HL with start of attribute section of video memory
C 44300,3 Load DE with next byte up
C 44303,3 Load BC with length of data to copy (511 bytes = length of 16 rows of attribute area of video memory minus one)
C 44306,1 Load memory at HL with this attribute...
C 44307,2 ...and repeat 511 times
C 44309,3 Set Magic Knight's x- and y-velocities to zero...
C 44312,3 ...
C 44315,3 Set Magic Knight's x-coordinate to 120 and y-coordinate to 75...
C 44318,3 ...
C 44321,1 Set unused data at #R24842 to zero...
C 44322,3 ...
C 44325,3 Store background attributes if appropriate, then draw Magic Knight to display without drawing axes
C 44328,3 Wait for Interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 44331,3 Point HL at "YOU HAVE COMPLETED YOUR TASK..." text
C 44334,3 Display Cyan "Game Over" Window and Return to Control Selection Menu
c 44337 Process Command to Blow an Object
C 44337,4 Point IX at start of Magic Knight's current inventory (carrying)
C 44341,2 Load B with 5 (five inventory slots)
C 44343,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 44346,3 Point DE at "[Current Command] THE " text
C 44349,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 44352,3 Point HL at start of Magic Knight's current inventory (carrying)
C 44355,3 Print name of selected object in Magic Knight's current inventory (carrying) in Command Summary Window
C 44358,3 Load A with index of Current Object
C 44361,2 If the selected object is not the Elf-Horn...
C 44363,3 ...then skip ahead to #R44557
C 44366,3 Load BC with double index of Magic Knight's current room...
C 44369,1 ...
C 44370,1 ...
C 44371,2 ...
C 44373,3 Load HL with start address of Character Movement Restriction Data
C 44376,1 Add BC as offset
C 44377,1 Load current room's movement restriction data...
C 44378,3 ...into operand of instruction at #R44453
C 44381,3 Print or update Command Summary Window at top of Screen
C 44384,3 Point DE at "SUMMON " text...
C 44387,3 ...and print in Command Summary Window at top of screen
C 44390,3 Point HL at "SUMMON ?" text
C 44393,1 Store HL (address of "SUMMON ?" text)
C 44394,3 Load HL with start address of list of characters for "SUMMON" Character Selection Menu
C 44397,3 Display and process input for character selection menu ("SUMMON")
C 44400,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44403,3 Load A with index of Current Object (see trivia)
C 44406,3 Point HL at current position data for Current Character
C 44409,3 Load A with Magic Knight's current room...
C 44412,1 ...and set Zero Flag if this is the same as the Current Character's current room
C 44413,3 Point HL at "[Current Character's full name] IS ALREADY HERE!" text
C 44416,3 If Zero Flag is set then display "[Character] IS ALREADY HERE!" Window (28), wait for Fire to be pressed then jump to Main Game Loop
C 44419,3 Point HL at Current Character's strength...
C 44422,2 ...
C 44424,3 ...
C 44427,1 Load IX with address of Current Character's strength...
C 44428,2 ...
C 44430,4 Set Zero Flag to inverse of Current Character's Asleep Flag (i.e. Awake Flag)
C 44434,3 Point HL at "[Current Character's full name] IS ASLEEP" text
C 44437,3 If Zero Flag is not set then display "[Character] IS ASLEEP" Window (28), wait for Fire to be pressed then jump to Main Game Loop
C 44440,3 If character's happiness is less than 35...
C 44443,2 ...
C 44445,2 ...then set Carry Flag
C 44447,3 Point HL at "[Current Character's full name] DOES NOT WANT TO BE SUMMONED" text
C 44450,3 If Carry Flag is set then display "[Character] DOES NOT WANT TO BE SUMMONED" Window (28), wait for Fire to be pressed then jump to Main Game Loop
N 44453 The operand of the instruction at #R44453 represents the movement restriction data for the current room. This is modified by the instruction at #R44378.
C 44453,2 If movement restriction data is 98 (i.e. room not accessible by character)...
C 44455,2 ...
C 44457,3 ...then display "[Character] DOES NOT WANT TO BE SUMMONED" Window (28), wait for Fire to be pressed then jump to Main Game Loop
C 44460,3 If Current Character's stamina is less than 25...
C 44463,2 ...
C 44465,2 ...then set Carry Flag
C 44467,3 Point HL at "[Current Character's full name] IS TOO TIRED TO BE SUMMONED" text
C 44470,3 If Carry Flag is set then display "[Character] IS TOO TIRED TO BE SUMMONED" Window (28), wait for Fire to be pressed then jump to Main Game Loop
C 44473,3 Point HL at current position data for Current Character
C 44476,3 Load BC with coordinates of character's arrival point when summoned to current room and set Zero Flag if character refuses to come
C 44479,3 If character does not want to come here then skip ahead to #R44585
C 44482,3 Load A with Magic Knight's current x-coordinate (characters)...
C 44485,1 ...
C 44486,1 ...
C 44487,1 ...
C 44488,2 ...
C 44490,1 Subtract arrival x-coordinate to give horizontal distance from Magic Knight...
C 44491,3 ...and if zero then skip ahead to #R44591 (check vertical distance to Magic Knight)
C 44494,2 If horizontal distance is 1...
C 44496,3 ...then skip ahead to #R44591 (check vertical distance to Magic Knight)
C 44499,2 If horizontal distance is -1...
C 44501,3 ...then skip ahead to #R44591 (check vertical distance to Magic Knight)
C 44504,2 If horizontal distance is -2...
C 44506,3 ...then skip ahead to #R44591 (check vertical distance to Magic Knight)
N 44509 Have character arrive in new room
C 44509,3 Load A with index of Magic Knight's current room...
C 44512,2 ...and set MSB
C 44514,1 Set this as character's current room
C 44515,1 Advance to character's x-coordinate...
C 44516,1 ...and set to value in C
C 44517,1 Advance to character's y-coordinate...
C 44518,1 ...and set to value in B
C 44519,3 Decrease character's strength by 4...
C 44522,2 ...
C 44524,3 ...
C 44527,3 Decrease character's happiness by 3...
C 44530,2 ...
C 44532,3 ...
C 44535,3 Decrease character's stamina by 7...
C 44538,2 ...
C 44540,3 ...
C 44543,3 Decrease Magic Knight's current magic level by 3...
C 44546,2 ...
C 44548,3 ...
C 44551,3 Point HL at "[Current Character's full name] APPEARS IN A THICK PUFF OF SMOKE" text
C 44554,3 Display "[Character] APPEARS IN A THICK PUFF OF SMOKE" Window (28), wait for Fire to be pressed then jump to Main Game Loop
N 44557 Blown object is not the Elf-Horn
C 44557,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44560,3 Load A with index of Current Object...
C 44563,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 44566,2 Load E with 0 (prepare to check Blow Status Flag)
C 44568,3 Point HL to byte 0 of the A-th record in Object Properties Table
C 44571,2 Set Zero Flag if object's Blow Status Flag is reset, otherwise reset
C 44573,3 Point HL at "WHAT A LOT OF DUST..." text
C 44576,3 If Zero Flag is set then display "WHAT A LOT OF DUST..." Window (27), wait for Fire to be pressed then jump to Main Game Loop
C 44579,3 Point HL at "I THINK YOU SHOULD GIVE UP TRYING TO PLAY THE [name of Current Object]..." text
C 44582,3 Display "I THINK YOU SHOULD GIVE UP..." Window (27), wait for Fire to be pressed then jump to Main Game Loop
N 44585 Character does not want to come to current room
C 44585,3 Point HL at "[Current Character's short name] DOES NOT WANT TO COME HERE!" text
C 44588,3 Display "[Character] DOES NOT WANT TO COME HERE!" Window (27), wait for Fire to be pressed then jump to Main Game Loop
N 44591 Magic Knight is within two characters horizontally of character's intended arrival point
C 44591,3 Load A with Magic Knight's current y-coordinate (characters)...
C 44594,1 ...
C 44595,1 ...
C 44596,1 ...
C 44597,2 ...
C 44599,1 Subtract arrival y-coordinate to give vertical distance from Magic Knight...
C 44600,2 If bits 2-7 are all reset (i.e. distance was 0 - 3)...
C 44602,2 ...then skip ahead to #R44609
C 44604,2 If bits 2-7 are not all set (i.e. distance was not -1 - -4)...
C 44606,3 ...then jump back to #R44509 (have character arrive)
C 44609,3 Point HL at "[Current Character's short name] SAYS 'I CANNOT COME TO THAT ROOM ... YOU ARE IN MY WAY!'" text
C 44612,3 Display "[Character] SAYS 'I CANNOT COME TO THAT ROOM...'" Window (15), wait for Fire to be pressed then jump to Main Game Loop
c 44615 Load BC with Coordinates of Character's Arrival Point When Summoned and Set Zero Flag if Character Refuses
D 44615 Used by the routine at #R44337. Output: B  Destination y-coordinate C  Destination x-coordinate F  Zero Flag set if character does not want to come to room, otherwise reset
C 44615,3 Load A with index of Magic Knight's current room
C 44618,1 Store HL
C 44619,1 Double index of Magic Knight's current room
C 44620,3 Load HL with start address of Table of x- and y-Coordinates of Positions Taken by Summoned Characters in Each Room...
C 44623,1 ...and add double room index as offset...
C 44624,2 ...
C 44626,1 ...
C 44627,1 Load C with destination x-coordinate
C 44628,1 Advance HL to destination y-coordinate...
C 44629,1 ...and load into B
C 44630,1 Restore HL
C 44631,1 If destination x-coordinate is 99...
C 44632,2 ...then set Zero Flag
C 44634,1 Return
c 44635 Process Command to Wear / Unwear an Object
C 44635,2 Draw Window 11...
C 44637,3 ...
C 44640,3 Point HL at Wear/Unwear Menu text...
C 44643,3 ...and print to screen
C 44646,3 Process keyboard / joystick input on a menu and load A with selected item index
C 44649,2 If UNWEAR selected then skip ahead to #R44745
C 44651,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 44654,3 If MK's inventory (carrying) is empty then set his available action flags and jump to start of Main Game Loop (#R41742)
C 44657,4 Point IX at Magic Knight's current inventory (carrying)
C 44661,2 Load B with 5 (five inventory slots)
C 44663,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 44666,3 Point DE at "UN[Current Command] THE " text
C 44669,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 44672,3 Point HL at start of Magic Knight's current inventory (carrying)
C 44675,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 44678,3 If Current Object (selected object) is the Disquise (1)...
C 44681,2 ...
C 44683,3 ...then skip ahead to #R44824
C 44686,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44689,3 Load A with index of Current Object...
C 44692,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 44695,3 If last slot in Magic Knight's current inventory (wearing) is not empty...
C 44698,1 ...
C 44699,1 ...then reset Zero Flag, otherwise set
C 44700,3 Point HL at "YOU ARE [Current Command]ING TOO MUCH" text
C 44703,3 If Zero Flag is reset then display "YOU ARE [Command]ING TOO MUCH" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 44706,3 Load A with index of Current Object
C 44709,2 If object's Can Be Worn Flag is reset...
C 44711,3 ...
C 44714,2 ...then set Zero Flag, otherwise reset
C 44716,3 Point HL at "YOU CANNOT [Current Command] THAT " text
C 44719,3 If Zero Flag is set then display "YOU CANNOT [Command] THAT" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 44722,3 Load C with index of Current Object...
C 44725,1 ...
C 44726,2 Load B with 5 (five inventory slots)
C 44728,1 Store BC (B = number of slots to process, C = Current Object)
C 44729,3 Point HL at start of Magic Knight's current inventory (carrying)
C 44732,3 Remove object C from this inventory
C 44735,1 Restore BC (B = number of slots to process, C = Current Object)
C 44736,3 Point HL at Magic Knight's current inventory (wearing)...
C 44739,3 ...and wait for interrupt then load object C into the first empty slot
C 44742,3 Show Magic Knight's current inventory and jump back to Main Game Loop
C 44745,3 Display "YOU ARE NOT WEARING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (wearing) is empty
C 44748,3 If MK's inventory (wearing) is empty then set his available action flags and jump to start of Main Game Loop (#R41742)
C 44751,4 Point IX at Magic Knight's current inventory (wearing)
C 44755,2 Load B with 5 (five inventory slots)
C 44757,3 Point HL at "UN[Current Command] WHICH OBJECT ?" text
C 44760,3 Point DE at "UN[Current Command] THE " text
C 44763,3 Show list of objects in Magic Knight's inventory (wearing) as a menu and load A with selected item index
C 44766,3 Point HL at Magic Knight's current inventory (wearing)
C 44769,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 44772,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44775,3 Load A with index of Current Object...
C 44778,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed (see trivia)
C 44781,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 44784,1 ...
C 44785,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 44786,3 ...then display "YOUR HANDS ARE FULL" Window (13), wait for Fire to be pressed then jump to Main Game Loop
C 44789,3 Load C with index of Current Object...
C 44792,1 ...
C 44793,2 Load B with 5 (five inventory slots)
C 44795,1 Store BC (B = number of slots to process, C = Current Object)
C 44796,3 Point HL at Magic Knight's current inventory (wearing)
C 44799,3 Remove object C from Magic Knight's current inventory (wearing)
C 44802,1 Restore BC (B = number of slots to process, C = Current Object)
C 44803,3 Point HL at start of Magic Knight's current inventory (carrying)...
C 44806,3 ...and wait for interrupt then load Object C into the first empty slot
C 44809,3 If Current Object (selected object) is not the Disquise (1)...
C 44812,2 ...
C 44814,3 ...then show Magic Knight's current inventory and jump back to Main Game Loop
C 44817,1 Set Current Disquise to zero...
C 44818,3 ...
C 44821,3 Show Magic Knight's current inventory and jump back to Main Game Loop
C 44824,3 Point HL at "WHICH DISQUISE DO YOU WANT TO [Current Command]?" full menu text
C 44827,3 Adjust height of window 13 to accommodate text...
C 44830,3 ...
C 44833,1 Store HL (pointer to menu text to print)
C 44834,2 Draw Menu Window 13...
C 44836,3 ...
C 44839,1 Restore HL (pointer to menu text to print)
C 44840,3 Print text to screen
C 44843,3 Process keyboard / joystick input on a menu and load A with selected item index
C 44846,1 Add one to selected item index to give selected disquise index...
C 44847,3 ...and store as operand to instruction at #R44853
C 44850,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
N 44853 The operand of the instruction at #R44853 represents the index of the selected disquise to wear. This is modified by the instruction at #R44847.
C 44853,2 Load A with selected disquise index...
C 44855,3 ...and store at #R23438 as Current Disquise
C 44858,3 Jump back to #R44689 (i.e. try to wear selected disquise)
c 44861 Process Command to Teleport
C 44861,2 Print or update Command Summary Window at top of screen...
C 44863,3 ...with "TELEPORT" text
C 44866,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44869,3 If the Teleport Pad's current room is not 99...
C 44872,2 ...
C 44874,2 ...then skip ahead to #R44900
C 44876,1 Set Magic Knight's current room...
C 44877,3 ...to be zero (Limbo)
C 44880,2 Set Magic Knight's x- and y-coordinates to be 120...
C 44882,3 ...
C 44885,3 ...
C 44888,2 Set Animate Puff of Smoke Flag...
C 44890,3 ...
C 44893,3 Point HL at "IT WAS NOT SAFE TO TELEPORT SO YOU HAVE WOUND UP IN LIMBO" text
C 44896,3 Display "IT WAS NOT SAFE TO TELEPORT..." Window (17), wait for Fire to be pressed then jump to Main Game Loop...
b 44899 Data block at 44899
B 44899,1,1 ...
c 44900 Teleport Pad's room is not 99
D 44900 Used by the routine at #R44861.
C 44900,3 Point HL to current position data of Teleport Pad
C 44903,1 Load A with current room of Teleport Pad...
C 44904,3 ...and update Magic Knight's current room to match
C 44907,1 Advance HL to x-coordinate of Teleport Pad...
C 44908,1 ...and load this into A
C 44909,1 Multiply x-coordinate by eight...
C 44910,1 ...
C 44911,1 ...
C 44912,3 ...and update Magic Knight's current x-coordinate to match
C 44915,1 Advance HL to y-coordinate of Teleport Pad...
C 44916,1 ...and load this into A
C 44917,2 Subtract three (because Magic Knight is four character blocks tall)...
C 44919,1 ...multiply by eight...
C 44920,1 ...
C 44921,1 ...
C 44922,3 ...and update Magic Knight's current y-coordinate to match
C 44925,2 Set Animate Puff of Smoke Flag...
C 44927,3 ...
C 44930,3 Set Magic Knight's available action flags and jump to start of Main Game Loop
c 44933 Process Command to Tickle a Character
C 44933,3 Point HL at "[Current Command] ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 44936,3 Point DE at "TICKLE " text
C 44939,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 44942,3 If there are no characters in the room then set MK's available action flags and jump to start of Main Game Loop (#R41742)
C 44945,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44948,3 End the game if Current Character is Off-White or Grunter
C 44951,3 Display "[Character] IS ASLEEP" Window and jump to Main Game Loop if Current Character is asleep, else return here and continue
C 44954,3 Load A with index of Current Character
C 44957,2 Point HL at character's current strength...
C 44959,3 ...
C 44962,1 Transfer address from HL...
C 44963,2 ...into IX
C 44965,3 Load DE with index of Current Character...
C 44968,1 ...
C 44969,2 ...
C 44971,3 Load HL with start address of Table of Characters' Default Happiness Levels...
C 44974,1 ...and add DE as offset
C 44975,3 Load A with character's current happiness...
C 44978,2 ...and reset all but Bit 7 (unused)
C 44980,1 Add in character's default happiness...
C 44981,3 ...and set as character's current happiness
C 44984,3 Point HL at "[Current Character's short name] GIGGLES AND BURSTS INTO LAUGHTER..." text
C 44987,3 Display "[Character's] GIGGLES AND BURSTS INTO LAUGHTER..." window (29), wait for Fire to be pressed then jump to Main Game Loop
c 44990 Process Command to Pull Lever
C 44990,2 Print or update Command Summary Window at top of screen...
C 44992,3 ...with "PULL LEVER" text
C 44995,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 44998,3 Load A with Magic Knight's current room
C 45001,2 If current room is 20 (Castle Ground Floor, 3)...
C 45003,3 ...then skip ahead to #R45073
C 45006,2 If current room is 38 (Castle Third Floor, 0, Big White Statue)...
C 45008,3 ...then skip ahead to #R45080
C 45011,2 If current room is 34 (Castle Second Floor, 3, One Way Corridor, 1)...
C 45013,3 ...then skip ahead to #R45087
C 45016,2 Prepare to set Main Lever 7 Flag
C 45018,2 If current room is 24 (Castle First Floor, 0, Main Lever 7)...
C 45020,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45022,2 Prepare to set Main Lever 6 Flag
C 45024,2 If current room is 25 (Castle First Floor, 1, Main Lever 6)...
C 45026,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45028,2 Prepare to set Main Lever 5 Flag
C 45030,2 If current room is 26 (Castle First Floor, 2, Security Door & Main Lever 5)...
C 45032,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45034,2 Prepare to set Main Lever 4 Flag
C 45036,2 If current room is 27 (Castle First Floor, 3, Main Lever 4)...
C 45038,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45040,2 Prepare to set Main Lever 3 Flag
C 45042,2 If current room is 28 (Castle First Floor, 4, Main Lever 3)...
C 45044,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45046,2 Prepare to set Main Lever 2 Flag
C 45048,2 If current room is 29 (Castle First Floor, 5, Main Lever 2)...
C 45050,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45052,2 Prepare to set Main Lever 1 Flag
C 45054,2 If current room is 30 (Castle First Floor, 6, Main Lever 1)...
C 45056,2 ...then skip ahead to #R45064 (set prepared Main Lever Flag)
C 45058,3 Point HL at "THE LEVER SPRUNG BACK INTO POSITION..." text
C 45061,3 Display "THE LEVER SPRUNG BACK INTO POSITION..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
N 45064 Set Prepared Main Lever Flag
C 45064,3 Load current Main Lever Flags...
C 45067,1 ...merge in set flag prepared in B...
C 45068,3 ...and store back at #R23402
C 45071,2 Jump back to #R45058 (show "THE LEVEL SPRUNG BACK..." message and return to Main Game Loop
N 45073 Room 20 (Castle Ground Floor, 3)
C 45073,2 Load A with 138 (instruction to draw layout data fragment 10, i.e. blank)...
C 45075,3 ...and replace Security Door (1/3) instruction at #R59866
C 45078,2 Jump back to #R45058 (show "THE LEVEL SPRUNG BACK..." message and return to Main Game Loop
N 45080 Room 38 (Castle Third Floor, 0, Big White Statue)
C 45080,2 Load A with 138 (instruction to draw layout data fragment 10, i.e. blank)...
C 45082,3 ...and replace Security Door (2/3) instruction at #R59867
C 45085,2 Jump back to #R45058 (show "THE LEVEL SPRUNG BACK..." message and return to Main Game Loop
N 45087 Room 34 (Castle Second Floor, 3, One Way Corridor, 1)
C 45087,2 Load A with 138 (instruction to draw layout data fragment 10, i.e. blank)...
C 45089,3 ...and replace Security Door (3/3) instruction at #R59868
C 45092,2 Jump back to #R45058 (show "THE LEVEL SPRUNG BACK..." message and return to Main Game Loop
c 45094 Unused routine
D 45094 Do nothing (return).
C 45094,1 Return
c 45095 Process Command to Smell Something
C 45095,4 Point IX at start of Magic Knight's current inventory (carrying)
C 45099,2 Load B with 5 (five inventory slots)
C 45101,3 Point HL at "[Current Command] WHICH OBJECT ?" text
C 45104,3 Point DE at "[Current Command] THE " text
C 45107,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 45110,3 Point HL at start of Magic Knight's current inventory (carrying)
C 45113,3 Print name of selected object in Magic Knight's current inventory (carrying) in Command Summary Window
C 45116,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 45119,3 Load A with index of Current Object...
C 45122,3 ...and if this is 4 (Teddy Bear) then display "THE BEAR SAYS..." message and wait for Fire to be pressed
C 45125,3 Point HL at "YOU CAN SMELL NOTHING BECAUSE YOUR NOSE IS BLOCKED!" text
C 45128,3 Display "YOU CAN SMELL NOTHING..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
c 45131 Process Command to Have a Wish
C 45131,2 Print or update Command Summary Window at top of screen...
C 45133,3 ...with "HAVE A WISH" text
C 45136,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 45139,1 Reset Wish Pending Flag...
C 45140,3 ...
C 45143,3 Point HL at "YOUR [Current Command] HAS BEEN GRANTED!" text
C 45146,3 Display "YOUR [Current Command] HAS BEEN GRANTED!" Window (12), wait for Fire to be pressed then jump to Main Game Loop
c 45149 Process Command to Have a Drink
C 45149,2 Print or update Command Summary Window at top of screen...
C 45151,3 ...with "HAVE A DRINK" text
C 45154,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 45157,2 If Magic Knight is carrying the Bottle of Liquid (17)...
C 45159,3 ...then set Zero Flag, otherwise reset
C 45162,2 Load C with 17 (index of first Bottle of Liquid)
C 45164,2 If Zero Flag is set (i.e. Magic Knight is carrying the Bottle of Liquid) then skip ahead to #R45168
C 45166,2 Load C with 18 (index of second Bottle of Liquid)
C 45168,2 Load B with 5 (five inventory slots)
C 45170,1 Store BC (C = index of appropriate Bottle of Liquid)
C 45171,3 Point HL at Magic Knight's current inventory (carrying)
C 45174,3 Remove object C from Current Character's inventory
C 45177,1 Restore BC (C = index of appropriate Bottle of Liquid)
C 45178,1 Load A with index of Bottle of Liquid drank...
C 45179,2 ...subtract 17...
C 45181,2 ...add 28 to give index of appropriate Empty Bottle...
C 45183,1 ...and load into C
C 45184,3 Point HL at Magic Knight's current inventory (carrying)
C 45187,3 Wait for interrupt then load appropriate Empty Bottle into Magic Knight's inventory
C 45190,3 Load A with unused bit in Magic Knight's current Strength field...
C 45193,2 ...clear all strength bits...
C 45195,2 ...set new strength to 100...
C 45197,3 ...and store
C 45200,3 Point HL at "MMMMM.. TASTY. YOU CAN FEEL NEW STRENGTH " text
C 45203,3 Display "MMMMM.. TASTY..." Window (12), wait for Fire to be pressed then jump to Main Game Loop
c 45206 Print Name of B-th Conditional Command in Command Summary Window
D 45206 Used by the routines at #R43874, #R44861, #R44990, #R45131 and #R45149. Input:  B  Index of conditional command to print in Command Summary Window
C 45206,1 Store BC (B = index of conditional command to print)
C 45207,3 Print or update Command Summary Window at top of screen
C 45210,1 Restore BC (B = index of conditional command to print)
C 45211,3 Point HL at text for first of conditional Main Menu options
C 45214,3 Advance HL to B-th entry in list of zero-terminated strings starting at HL
C 45217,1 Skip over formatting codes to first text character...
C 45218,1 ...
C 45219,1 Transfer address from HL...
C 45220,1 ...to DE
C 45221,3 Print text at DE (Command Summary) in Command Summary Window at top of screen and return
c 45224 "Command Character to Help" Routine for Off-White Knight
C 45224,3 Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 45227 "Command Character to Help" Routine for Aramis le Peux
C 45227,2 Set Zero Flag if Aramis le Peux is carrying the List of Clues, reset otherwise...
C 45229,3 ...
C 45232,3 ...(see trivia)
C 45235,3 If Zero Flag is reset then display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
N 45238 The operand of the instruction at #R45238 represents the index of the Current Clue. This is modified by the instruction at #R45243.
C 45238,2 Increase index of Current Clue...
C 45240,1 ...
C 45241,2 ...resetting to zero if greater than 7...
C 45243,3 ...and store at #R45238
C 45246,1 Load B with index of Current Clue
C 45247,3 Point HL at start of list of Clue Texts
C 45250,3 Advance HL to B-th entry in list of zero-terminated strings starting at HL
C 45253,3 Display Current Clue Window (24), wait for Fire to be pressed then jump to Main Game Loop
c 45256 "Command Character to Help" Routine for Robin of Shylock
C 45256,3 If Robin Has Been Paid Flag is set...
C 45259,2 ...
C 45261,2 ...then skip ahead to #R45269
C 45263,3 Point HL at "[Current Character's short name] SAYS "I WILL REQUIRE A GOLDEN EGG..."" text
C 45266,3 Display "[Character] SAYS "I WILL REQUIRE A GOLDEN EGG..."" Window (24), wait for Fire to be pressed then jump to Main Game Loop
C 45269,3 If Magic Knight's current room is not 3...
C 45272,2 ...(Outdoors, 2, Beware Bearwoolf)...
C 45274,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
C 45277,2 Set the Teddy Bear's current room to 3...
C 45279,3 ...
C 45282,3 Set Room Layout Data Pointer for Room 3 to #R59012...
C 45285,3 ...i.e. exclude Grunter graphic from room layout
C 45288,2 Set Bearwoolf Removed Flag...
C 45290,3 ...
C 45293,2 Remove Silver Arrow from Robin's current inventory...
C 45295,2 ...
C 45297,3 ...
C 45300,3 ...
C 45303,3 Set Silver Arrow's current room to 3...
C 45306,2 ...
C 45308,1 Set Silver Arrow's x-coordinate to 14...
C 45309,2 ...
C 45311,1 Set Silver Arrow's y-coordinate to 22...
C 45312,2 ...
C 45314,3 Add 20 to Bonus Score...
C 45317,2 ...
C 45319,3 ...
C 45322,2 Set Grunter's current room to 99...
C 45324,3 ...
C 45327,3 Point HL at "BRAVE [Current Character's short name] HAS SHOT BEARWOOLF..." text
C 45330,3 Display "BRAVE [Character] HAS SHOT BEARWOOLF..." Window (24), wait for Fire to be pressed then jump to Main Game Loop
c 45333 "Command Character to Help" Routine for Reggie the Rat
C 45333,3 Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 45336 "Command Character to Help" Routine for Rachel of Amazonia
C 45336,3 Point HL at "[Current Character's short name] SAYS "THE PASSWORD NUMBER..."" text
C 45339,3 Display "[Character] SAYS "THE PASSWORD NUMBER..."" Window (24), wait for Fire to be pressed then jump to Main Game Loop
c 45342 "Command Character to Help" Routine for Barker the Ent
C 45342,3 Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 45345 "Command Character to Help" Routine for Organon the Guard
C 45345,3 Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 45348 "Command Character to Help" Routine for Grunter the Bearwoolf
C 45348,3 Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 45351 Load A with weight of object A
D 45351 Used by the routines at #R42257 and #R45466. Input:  A  Index of object of interest Output: A  Weight of object of interest
C 45351,1 Store HL
C 45352,1 Store DE
C 45353,2 Point HL to the first byte of the A-th record in Object Properties Table...
C 45355,3 ...
C 45358,1 Load data at this location into A
C 45359,2 Discard all but the Weight bits
C 45361,1 Restore DE
C 45362,1 Restore HL
C 45363,1 Return
c 45364 Load A with Current Character's Happiness Level
D 45364 Used by the routines at #R41924 and #R42257. Output: A  Happiness of Current Character
C 45364,3 Load A with index of Current Character
C 45367,1 Store HL
C 45368,1 Store DE
C 45369,2 Point HL at Current Character's Happiness...
C 45371,3 ...
C 45374,1 ...and load Happiness into A
C 45375,2 Reset Bit 7 (unused)
C 45377,1 Restore DE
C 45378,1 Restore HL
C 45379,1 Return
c 45380 Wait for Interrupt then Load Object C into the First Empty Inventory Slot of a Character
D 45380 Used by the routines at #R41578, #R42036, #R42157, #R44635 and #R45149. Input:  B  Number of inventory slots to process C  Index of an object to load into a character's inventory HL  Points to (usually the start of) a record in the Characters' Current Inventories Table at #R24848
C 45380,1 Wait for interrupt
N 45381 This entry point is used by the routine at #R62443.
C 45381,1 If current inventory slot is empty...
C 45382,1 ...
C 45383,2 ...then skip ahead to #R45388
C 45385,1 Advance to next inventory slot
C 45386,2 If there are still slots to process then loop back to #R45381
C 45388,1 Load item into current inventory slot
C 45389,1 Return
c 45390 Point HL to the E-th byte of the A-th record in Object Properties Table
D 45390 Used by the routines at #R41748, #R42638, #R43494, #R43636, #R44337, #R44635, #R45351, #R46380 and #R46490. Input: A  Index of required record (i.e. table entry number), first is zero E  Index of required field within record (i.e. byte number), first is zero HL  (entry at #R45393 only) Points to Table of Characters' Current Stats (Off-White's entry, i.e. not including Magic Knight) Output: HL  Points to required field within record of interest
C 45390,3 Point HL at start of Table of Object Properties
N 45393 This entry point is used by the routine at #R45406.
C 45393,1 Store HL (points to current position in a table of 8-byte-wide records)
C 45394,1 Multiply A (record number) by eight and load into HL...
C 45395,1 ...
C 45396,1 ...
C 45397,2 ...
C 45399,1 ...
C 45400,2 Set D to zero (DE = field number)
C 45402,1 Add field number to HL to give exact offset to record and field of interest
C 45403,1 Restore DE (points to current position in a table of 8-byte-wide records)...
C 45404,1 ...and add to offset value already in HL
C 45405,1 Return
c 45406 Point HL at E-th Byte on A-th Record of Characters' Current Stats Table (Excluding Magic Knight)
D 45406 Used by the routines at #R39883, #R42257, #R42638, #R43318, #R43428, #R43636, #R44337, #R44933, #R45364, #R45411, #R45552 and #R62622.
C 45406,3 Point HL at Table of Characters' Current Stats (Off-White's entry, i.e. not including Magic Knight)...
C 45409,2 ...and advance to the E-th byte of the A-th entry in this table of 8-byte-wide records, then return
c 45411 Point IX at Current Character's Current Stats
D 45411 Used by the routines at #R43117, #R43158, #R43199, #R43250 and #R45434. Output: HL  Address of start of Current Character's stats IX  Address of start of Current Character's stats
C 45411,3 Load A with index of Current Character
C 45414,2 Point HL at Current Character's current strength...
C 45416,3 ...
C 45419,1 Transfer address from HL...
C 45420,2 ...to IX
C 45422,1 Return
c 45423 If Character's Happiness is Lower than B then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop
D 45423 Used by the routines at #R43117, #R43158, #R43199 and #R43250. Input:  IX  Pointer to start of a character's current stats B  Happiness threshold
C 45423,3 If character's current happiness is at or above the threshold value...
C 45426,2 ...
C 45428,1 ...
C 45429,1 ...then return
C 45430,1 Remove return value from top of stack as we are not RETurning
C 45431,3 Display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), wait for Fire to be pressed then jump to Main Game Loop
c 45434 Increase Current Character's Happiness by Amount A
D 45434 Used by the routines at #R41924, #R42257, #R42638, #R43043 and #R43199. Input:  A  Value by which to change character's Happiness
C 45434,1 Store AF (A = increment value)
C 45435,3 Point IX at Current Character's current stats
C 45438,1 Restore AF (A = increment value)
C 45439,1 Load increment value into C
C 45440,3 Add increment value to Current Character's Happiness...
C 45443,3 ...
C 45446,3 ...and store
C 45449,1 Return
c 45450 Point IX at Current Inventory of Character A
D 45450 Used by the routines at #R41924, #R42036, #R42157, #R42257 and #R45670. Input:  A  Index of a character Output: IX Points to current inventory of character A
C 45450,1 Store DE
C 45451,1 Multiply character index by five (as each character has five inventory slots)...
C 45452,1 ...
C 45453,1 ...
C 45454,1 ...
C 45455,1 ...and load into DE...
C 45456,2 ...
C 45458,4 Point IX at Off-White Knight's entry in Characters' Current Inventories Table (i.e. first entry for non-player characters)
C 45462,2 Add five times character index to this as offset
C 45464,1 Restore DE
C 45465,1 Return
c 45466 Test Whether Current Object is too Heavy for Magic Knight to Pick Up (or Take)
D 45466 Used by the routines at #R41578 and #R41924. Output: F  S Flag set if object is light enough to be picked up, reset otherwise
C 45466,4 Point IX at start of Magic Knight's current inventory
C 45470,3 Load Magic Knight's current strength into A
C 45473,1 Store AF (A = Magic Knight's current strength)
C 45474,3 Load B with 5 (as five inventory slots to check) and C (total weight carried) with zero
C 45477,3 Load object in current inventory slot
C 45480,1 If no object present...
C 45481,2 ...skip ahead to #R45492...
C 45483,3 Load A with weight of object A
C 45486,1 Add C to this...
C 45487,1 ...and load result into C (total weight so far)
C 45488,2 Advance to next inventory slot
C 45490,2 Loop back for next inventory slot
C 45492,1 Restore AF (A = Magic Knight's current strength)
C 45493,2 Ensure that strength is capped at 127 and that Sign Flag is reset
C 45495,1 Subtract total weight of Magic Knight's carried objects from his strength to get "surplus" strength...
C 45496,1 ...and load into C
C 45497,3 Load A with index of Current Object (i.e. object Magic Knight is trying to pick up)
C 45500,3 Load A with weight of object A
C 45503,1 Set Sign Flag if surplus strength exceeds weight of object, otherwise reset
C 45504,1 Return
c 45505 Check Whether Magic Knight is Wearing an Object
D 45505 Used by the routines at #R38841, #R40546, #R40614, #R46560 and #R62330. Input:  A  Index of an object Output: F Zero Flag set if object is present in inventory, reset otherwise
C 45505,3 Point HL at start of Magic Knight's Inventory (Wearing)
C 45508,2 Jump to #R45513 (set Zero Flag if Magic Knight is wearing object A, reset otherwise)
c 45510 Check Whether Magic Knight is Carrying an Object
D 45510 Used by the routines at #R38780, #R40190, #R40258, #R40614, #R42157, #R43494, #R44100, #R45149, #R46183, #R46326, #R46463, #R46490 and #R62443. Input:  A  Index of an object HL  (entry at #R45513) Pointer to start of a character's inventory Output: F  Zero Flag set if object is present in inventory, reset otherwise
C 45510,3 Point HL at start of Magic Knight's current inventory (carrying)
N 45513 This entry point is used by the routines at #R45227, #R45505 and #R45670.
C 45513,2 Load B with 5 (as characters have five inventory slots)
C 45515,1 If object at current inventory slot is the object of interest...
C 45516,1 ...then return with zero flag set
C 45517,1 Advance HL to next inventory slot
C 45518,2 Decrease B (remaining number of inventory slots to check) and loop back to #R33650
C 45520,1 Reset zero flag, as object is not present
C 45521,1 Return
c 45522 Insert Current Time and Score into "Time Left" and "Percentage Completion" Texts
D 45522 Used by the routines at #R42638 and #R64582. Input:  HL  Points to percentage completion text (#R52302 or #R50756) DE  Points to time left text (#R52302 or #R50756)
C 45522,1 Store DE (address of time left text)
C 45523,1 Store HL (address of percentage completion text)
C 45524,3 Point HL at Visited Rooms table
C 45527,3 Set B=52, C=0
C 45530,1 Load A with value at HL
C 45531,1 Add this to C...
C 45532,1 ...
C 45533,1 Advance to next byte
C 45534,2 Loop back to #R45530 (adding together 52 values from #R23488 onwards to get score for exploring rooms)
C 45536,1 Decrease exploration score by one (due to no score for The Sword in the Concrete)
C 45537,3 Add Bonus Score to total...
C 45540,1 ...
C 45541,1 Restore HL (address of percentage completion text)
C 45542,3 Splice numeric data A as a string into a string at HL
C 45545,3 Load A with number of hours left
C 45548,1 Restore HL (originally DE, address of time left text)
C 45549,3 Splice numeric data A as a string into a string at HL and return
c 45552 Display "[Character] IS ASLEEP" Window and Jump to Main Game Loop if Current Character is Asleep, else Return
D 45552 Used by the routines at #R43199, #R43250, #R43318, #R43428 and #R44933. Output: A  Zero if character is awake
C 45552,1 Store HL
C 45553,3 Load A with index of Current Character
C 45556,2 Point HL at character's Flags...
C 45558,3 ...
C 45561,2 If character is awake...
C 45563,2 ...then skip ahead to #R45581
C 45565,2 Draw Window 25...
C 45567,3 ...
C 45570,3 Point HL at "[Current Character's short name] IS ASLEEP" text
C 45573,3 ...and print to screen
C 45576,1 Restore HL
C 45577,1 Remove value from top of stack as we are not RETurning
C 45578,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 45581,1 Restore HL
C 45582,1 Set A to zero
C 45583,1 Return
c 45584 Load Magic Knight's Coordinates (in Characters) into DE
D 45584 Used by the routines at #R41578 and #R41748. Output: D  y-coordinate (characters) E  x-coordinate (characters)
C 45584,3 Load Magic Knight's current y-coordinate into A
C 45587,3 Divide A by eight, rounding down to nearest integer
C 45590,2 Add 3 (as Magic Knight is four characters tall)
C 45592,1 And load result into D
C 45593,3 Load Magic Knight's current x-coordinate into A
C 45596,3 Divide A by eight, rounding down to nearest integer
C 45599,1 Load result into E
C 45600,1 Return
c 45601 Point HL at Current Position Data for Current Character
D 45601 Used by the routines at #R43199 and #R44337. Output: HL  Address of Current Character's entry in Table of Characters' Current Positions
C 45601,1 Store BC
C 45602,3 Load BC index of Current Character...
C 45605,1 ...multiply by three...
C 45606,1 ...
C 45607,1 ...
C 45608,1 ...and load into BC...
C 45609,2 ...
C 45611,3 Load HL with start address of Table of Characters' Current Positions...
C 45614,1 ...and add BC as offset
C 45615,1 Restore BC
C 45616,1 Return
c 45617 Adjust Height (at DE) of a Window to Accommodate Text
D 45617 Used by the routines at #R43874, #R44635, #R45641, #R45685, #R45723, #R45963, #R64317 and #R64582. Input:  HL Points to height byte preceding text data DE  Points to third byte of an entry in table at #R49034 (i.e. y-coordinate of top edge of a window) Output: HL  Points to first byte of text data (i.e. input HL value plus one)
C 45617,1 Load height data into C...
C 45618,1 ...
C 45619,1 Load y-coordinate in characters of window of interest into A
C 45620,1 Add height to window's top y-coordinate to get required bottom y-coordinate
C 45621,1 Advance DE to y-coordinate of bottom edge of window...
C 45622,1 ...and load calculated bottom y-coordinate into address in DE
C 45623,1 Advance HL to first byte of actual text data
C 45624,1 Return
c 45625 Set a Window's Height to A
D 45625 Used by the routine at #R46106. Input:  A  A window height DE  Location of a window's top y-coordinate data
C 45625,1 Load window height into C
C 45626,1 Load window's top y-coordinate into A
C 45627,1 Add C to give bottom y-coordinate
C 45628,1 Advance DE to window's bottom y-coordinate data...
C 45629,1 ...and update with new height value in A
C 45630,1 Return
c 45631 Display "YOU ARE NOT WEARING ANYTHING" Window and Set Zero Flag if Magic Knight's Inventory (Wearing) is Empty
D 45631 Used by the routine at #R44635.
C 45631,3 If Magic Knight's first inventory slot (wearing) is not empty...
C 45634,1 ...
C 45635,1 ...then return
C 45636,3 Point HL at "YOU ARE NOT WEARING ANYTHING" text
C 45639,2 Display "YOU ARE NOT WEARING ANYTHING" Window, wait for Fire to be pressed and return
c 45641 Display "YOU ARE NOT CARRYING ANYTHING" Window and Set Zero Flag if Magic Knight's Inventory (Carrying) is Empty
D 45641 Used by the routines at #R41748, #R42257, #R42638 and #R44635. Output: F  Zero Flag set if Magic Knight's (first) inventory (slot) is empty. Reset otherwise
C 45641,3 Load A with index of first object in Magic Knight's (Carrying) inventory...
C 45644,1 ...and if this is zero...
C 45645,1 ...then return
C 45646,3 Point HL at "YOU ARE NOT CARRYING ANYTHING" text
N 45649 This entry point is used by the routine at #R45631.
C 45649,3 Adjust height of window 13 to accommodate text...
C 45652,3 ...
C 45655,1 Store HL (pointer to text to print)
C 45656,2 Draw Window 13...
C 45658,3 ...
C 45661,1 Restore HL (pointer to text to print)
C 45662,3 Print text to screen
C 45665,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 45668,1 Load A with zero
C 45669,1 Return
c 45670 Unused routine
D 45670 Check whether Current Character is carrying an object. Input:  E  Index of an object Output: F  (via jumped-to routine at #R45510) Zero Flag set if object is present in inventory, reset otherwise
C 45670,3 Load A with index of Current Character
C 45673,1 Store DE (E = index of object to check for)
C 45674,3 Point IX at current inventory of character with index A...
C 45677,2 ...and copy into HL...
C 45679,1 ...
C 45680,1 Restore DE (E = index of object to check for)
C 45681,1 Load index of object to check for into A
C 45682,3 Check if object is in inventory data at HL and (re)set Zero Flag accordingly
c 45685 If A is 4 then Display "THE BEAR SAYS..." Message and wait for Fire to be pressed
D 45685 Used by the routines at #R41578, #R41748, #R41924, #R42257, #R42638, #R43494, #R43636, #R44337, #R44635 and #R45095. Input:  A  Index of an object Output: A  Index of an object (same as input value)
C 45685,2 If object of interest is not 4 (Teddy Bear)...
C 45687,1 ...then return
C 45688,1 Store HL
C 45689,1 Store DE
C 45690,1 Store BC
C 45691,2 Store IX
C 45693,3 Load HL with address of "THE BEAR SAYS..." text
C 45696,3 Adjust height of a Window 22 to accommodate text...
C 45699,3 ...
C 45702,1 Store HL (address of text to print)
C 45703,2 Draw Window 22...
C 45705,3 ...
C 45708,1 Restore HL (address of text to print)
C 45709,3 Print "THE BEAR SAYS..." text
C 45712,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 45715,2 Load A with 4 (restore original value of A)
C 45717,2 Restore IX
C 45719,1 Restore BC
C 45720,1 Restore DE
C 45721,1 Restore HL
C 45722,1 Return
c 45723 End the Game if Current Character is Off-White or Grunter
D 45723 Used by the routines at #R42244, #R42491, #R43043 and #R44933.
C 45723,3 If Current Character is 7 (Grunter)...
C 45726,2 ...
C 45728,2 ...then skip ahead to #R45760
C 45730,1 If Current Character is not 0 (Off-White)...
C 45731,1 ...then return
N 45732 Current Character is Off-White
C 45732,3 Point HL at "OFF-WHITE KNIGHT SAYS " text
C 45735,3 Adjust height of window 24 ("Game Over" Window) to accommodate text...
C 45738,3 ...
C 45741,1 Store HL (points to first character of text to display)
C 45742,2 Draw Window 24 ("Game Over" Window)...
C 45744,3 ...
C 45747,1 Restore HL (points to first character of text to display)
C 45748,3 Print text to screen
C 45751,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 45754,3 Point HL at "YOU WERE KILLED BY OFF-WHITE KNIGHT." text
C 45757,3 Display cyan "Game Over" Window and return to Control Selection Menu
N 45760 Current Character is Grunter
C 45760,3 Point HL at "[Current Character's full name] KILLED YOU AS YOU APPROACHED." text
C 45763,3 Display cyan "Game Over" Window and return to Control Selection Menu
c 45766 Print Name of Object in Inventory Slot A of Inventory Data at HL in Command Summary Window
D 45766 Used by the routines at #R41748, #R41924, #R42257, #R42638, #R43494, #R43636, #R44337, #R44635 and #R45095. Input: A  Index of an inventory slot, with first slot being zero HL  Points to start of a character's inventory
C 45766,1 Load inventory slot number into DE...
C 45767,2 ...
C 45769,1 Add to HL as offset
C 45770,1 Load index of object in that slot into A
C 45771,3 Set this object as the Current Object
C 45774,3 Point DE at instruction to print name of Current Object...
C 45777,2 ...print in Command Summary Window at top of screen and return
b 45779 Code for Printing Routine to Display Name of Current Object
T 45779,2,B2 name of Current Object
c 45781 Update Current Character Based Upon Selection Made in Menu
D 45781 Used by the routine at #R45963. Input:  A  Index of selected character from a character-selection menu
C 45781,3 Point HL at list of characters in room of interest
C 45784,1 Load DE with index of selected item in menu...
C 45785,2 ...
C 45787,1 Add this as offset in table of characters in room to point to character of interest
C 45788,1 Load index of this character into A
C 45789,3 Modify operand of instruction at #R41936 to use this particular character (i.e. set Current Character)
N 45792 This entry point is used by the routines at #R41924 and #R46106.
C 45792,3 Point DE at instruction to print short name of Current Character
N 45795 This entry point is used by the routine at #R45766.
C 45795,3 Print text at DE in Command Summary Window at top of screen and return
b 45798 Code for Printing Routine to Display Short Name of Current Character
T 45798,2,B2 short name of Current Character
b 45800 Code for Printing Routine to Display Full Name of Current Character
T 45800,2,B2 full name of Current Character
c 45802 Display a Character's Inventory Window as an Information Window
D 45802 Used by the routine at #R41578. Input:  IX  Points to a character's inventory (usually Magic Knight)
C 45802,2 Modify instruction at #R45867 to display as information window, rather than menu window...
C 45804,3 ...
C 45807,2 Jump into inventory window drawing routine
c 45809 Show List of Objects (Window or Menu) and Handle Selection if a Menu
D 45809 Used by the routines at #R41748, #R41924, #R42257, #R42638, #R43494, #R43636, #R44337, #R44635 and #R45095. Input: B  Number of inventory slots to check DE  Points to summary command text (i.e. "DROP THE ", "GIVE THE ", "READ THE ", "WEAR THE " or "UNWEAR THE "), or 0 for no summary text HL  (entry via #R45809) Points to full command text (e.g. "DROP WHICH OBJECT?", or "YOU ARE NOW CARRYING") HL  (entry via #R45834) Points to "YOU ARE NOW CARRYING" text IX  Points to a character's inventory Output: A  Zero-based index of selected menu item
C 45809,3 Store all registers on the stack
C 45812,3 Play downward scale sound
C 45815,3 Restore all registers from the stack
C 45818,2 Modify instruction at #R45867 with 105, denoting window as a menu rather than information window...
C 45820,3 ...
C 45823,1 Store BC (B = number of inventory slots)
C 45824,1 Store HL
C 45825,2 Store IX
C 45827,3 Print Command Summary Text at DE (e.g. "DROP THE ") in Command Summary Window
C 45830,2 Restore IX
C 45832,1 Restore HL
C 45833,1 Restore BC
N 45834 This entry point is used by the routine at #R45802.
C 45834,2 Load C (object counter) with zero
C 45836,1 Store BC (B = number of inventory slots)
C 45837,2 Store IX (points to start of inventory)
C 45839,3 Load object from character's inventory (slot number C) into A
C 45842,1 If nothing in this slot...
C 45843,2 ...then jump ahead to #R45850
C 45845,1 Increase count of objects in inventory
C 45846,2 Advance IX to next slot
C 45848,2 Loop back to #R45839 for next slot
C 45850,2 Restore IX (points to start of inventory)
C 45852,1 Copy number of objects into A
C 45853,1 If number of objects is zero...
C 45854,3 ...then jump ahead to #R45937
C 45857,3 Load A with y-coordinate of top edge of Window 04
C 45860,1 Add number of objects to this y-coordinate
C 45861,2 Add an additional 3 to this total (menu window padding)
C 45863,3 Set y-coordinate of bottom edge of Window 04 to accommodate list of C objects
C 45866,1 Store HL (e.g. pointer to "DROP WHICH OBJECT?" text)
N 45867 The operand of the instruction at #R45867 represents the "Draw Hand Menu Cursor" Flag. This is modified by the instructions at #R45804 and #R45820.
C 45867,2 Load A with menu / static window value
C 45869,2 If this is not 105 (i.e. window is not a menu, but a simple information window)...
C 45871,2 ...then skip ahead to #R45880
C 45873,2 Draw Window 4 as a menu window...
C 45875,3 ...
C 45878,2 ...and skip over "draw an information window" section
C 45880,2 Draw Window 4 as an information window...
C 45882,3 ...
C 45885,1 Restore HL (pointer to full command text)...
C 45886,2 Store IX (points to start of inventory)
C 45888,3 Print text to screen
C 45891,2 Restore IX (points to start of inventory)
C 45893,1 Restore BC (B = number of remaining inventory slots)
C 45894,1 Store BC (B = number of remaining inventory slots)
C 45895,3 Load index of object in current inventory into A
C 45898,1 If index is zero (i.e. inventory slot is empty)...
C 45899,3 ...then skip ahead to #R45927
C 45902,1 Copy index into B
C 45903,2 Store IX (pointer to start of inventory)
C 45905,3 Point HL to text printing instruction to move cursor to start of next character row within window, then right by two characters
C 45908,1 Store BC (B = index of an object)
C 45909,3 Print text to screen (i.e. move text printing cursor right by two characters)
C 45912,1 Restore BC (B = index of an object)
C 45913,3 Point HL at object B's name in Table of Object Names...
C 45916,3 ...and print to screen
C 45919,2 Restore IX (pointer to start of inventory)
C 45921,2 Advance IX to next inventory slot
C 45923,1 Restore BC (B = number of remaining inventory slots)
C 45924,2 Repeat loop for next object in inventory, decreasing B (number of remaining inventory slots)
C 45926,1 Store BC (B = 0)
C 45927,1 Restore BC (B = number of remaining inventory slots
C 45928,3 If window is a menu, rather than information window...
C 45931,2 ...
C 45933,3 ...process keyboard / joystick input on a menu and load A with selected item index
C 45936,1 ...and return
C 45937,1 Store HL (pointer to "YOU ARE NOW CARRYING" text)
C 45938,3 Load A with y-coordinate of top edge of Window 04
C 45941,2 Add 4 to this y-coordinate
C 45943,3 Set y-coordinate of bottom edge of Window 04 to accommodate three rows of text
C 45946,2 Draw Window 4...
C 45948,3 ...
C 45951,1 Restore HL (pointer to "YOU ARE NOW CARRYING" text)
C 45952,3 ...and print to screen
C 45955,3 Point HL at "NOTHING AT ALL" text...
C 45958,3 ...and print to screen
C 45961,1 Restore BC (number of inventory slots, PUSHed by instruction at #R45836)
C 45962,1 Return
c 45963 Display and Process Input for Character Selection Menu (Current Room's Characters Only)
D 45963 Used by the routines at #R41924, #R42257, #R42638, #R43043, #R43636 and #R44933. Input:  HL  Pointer to text to append to menu's title string, after "WHO DO YOU WANT TO " DE  Command Summary Text Pointer (second row of text in Command Summary Window) Output: A  1 if there is at least one character in the room, zero otherwise F  Reset if there is at least one character in the room, set otherwise
C 45963,1 Store HL (pointer to text to append to menu's title string)
C 45964,1 Store BC
C 45965,2 Store IX
C 45967,1 Store DE (Command Summary Text Pointer)
C 45968,3 Play Short Downward Scale Sound
C 45971,1 Restore DE (Command Summary Text Pointer)
C 45972,3 Print text at Command Summary Text Pointer (e.g. "COMMAND ") in Command Summary Window
C 45975,3 Load A with Magic Knight's current room...
C 45978,3 ...and create list of characters in this room at #R23422, loading A with number of characters
C 45981,2 If there are characters in this room then skip ahead to #R46011
C 45983,3 Point HL at "THERE IS NOBODY IN THIS ROOM" text
C 45986,3 Adjust height of window 13 to accommodate text...
C 45989,3 ...
C 45992,1 Store HL (pointer to start of text to print)
C 45993,2 Draw Window 13...
C 45995,3 ...
C 45998,1 Restore HL (pointer to start of text to print)
C 45999,3 Print text at HL
C 46002,3 Wait for Interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 46005,2 Restore IX
C 46007,1 Restore BC
C 46008,1 Restore HL (pointer to text to append to menu's title string)
C 46009,1 Set A to zero and set Zero Flag
C 46010,1 Return
C 46011,2 Add four to number of characters in current room (for menu size padding)...
C 46013,1 ...and load value into C
C 46014,3 Load A with window's top y-coordinate
C 46017,1 Add 4 + number of characters...
C 46018,3 ...and set window's bottom y-coordinate to this value
C 46021,2 Restore IX
C 46023,1 Restore BC
C 46024,2 Draw Window 3 as a menu window...
C 46026,3 ...
C 46029,3 Point HL at "WHO DO YOU WANT TO " text...
C 46032,3 ...and print to screen
C 46035,1 Restore HL (pointer to text to append to menu's title string, as at beginning of this routine)
C 46036,3 Append this text to menu's title
C 46039,4 Point IX at list of characters in room
C 46043,2 Load B with 8 (8 characters)
C 46045,1 Store BC (B = remaining characters to process)
C 46046,3 Load A with index of current character in list...
C 46049,2 ...and if this is 255 (End Marker)...
C 46051,3 ...then skip ahead to #R46095
C 46054,3 Point HL at text printing instructions to move cursor to start of next character row within window, then right by two characters
C 46057,2 Store IX (current position in list of characters in room)
C 46059,3 Print text at HL to screen (i.e. move cursor)
C 46062,2 Restore IX (current position in list of characters in room)
C 46064,3 Load A with index of current character in list...
C 46067,3 Set this character as the Current Character
C 46070,3 Point HL at instruction to print full name of Current Character
C 46073,2 Store IX (current position in list of characters in room)
C 46075,3 Print text to screen
C 46078,2 Restore IX (current position in list of characters in room)
C 46080,2 Advance IX to next character in list
C 46082,1 Restore BC (B = remaining characters to process)
C 46083,2 Decrease B and loop back to #R46045
C 46085,3 Process keyboard / joystick input on a menu and load A with selected item index
C 46088,3 Update Current Character based upon selection made in menu
C 46091,2 Load A with 1
C 46093,1 Reset Zero Flag
C 46094,1 Return
C 46095,1 Restore BC (B = remaining characters to process)
C 46096,3 Process keyboard / joystick input on a menu and load A with selected item index
C 46099,3 Update Current Character based upon selection made in menu
C 46102,2 Load A with 1
C 46104,1 Reset Zero Flag
C 46105,1 Return
c 46106 Display and Process Input for Character Selection Menu (Character List Defined at HL)
D 46106 This routine is called at #R44116 and #R44397. In both cases, the address of a piece of text ("TRAVEL TO" or "SUMMON") is PUSHed onto the Stack just before the call. Input:  HL  Start address of list of characters for a character selection menu
C 46106,3 Load list start address into operand of instruction at #R46137
C 46109,1 Store HL (start address of list of characters)
C 46110,3 Play Short Downward Scale Sound
C 46113,1 Restore HL (start address of list of characters)
C 46114,3 Point DE at y-coordinate of top edge of Window 3 in Window Data Table at #R49034...
C 46117,1 Load required window height from start of list of characters...
C 46118,3 ...and set window's height to this value
C 46121,2 Display character selection menu...
C 46123,3 ...
C 46126,3 Print "WHO DO YOU WANT TO " text...
C 46129,3 ...
C 46132,1 Restore HL (address to return to upon RET instruction)...
C 46133,1 ...and swap with next value on stack (pointer to text that was PUSHed before this routine was called)
C 46134,3 Print the text ("TRAVEL TO" or "SUMMON")
N 46137 The operand of the instruction at #R46137 represents the start address of the list of characters. This is modified by the instruction at #R46106.
C 46137,3 Load HL with start address of list of characters
C 46140,1 Advance HL by one byte
C 46141,1 If value at HL is 255 (End Marker)...
C 46142,2 ...
C 46144,2 ...then skip ahead to #R46165
C 46146,1 Store HL (current position in list of characters)
C 46147,3 Set character at current position in list to be Current Character
C 46150,3 Point HL to text printing instruction to move cursor to start of next character row within window, then right by two characters...
C 46153,3 ...and print
C 46156,3 Point HL at instruction to print full name of Current Character...
C 46159,3 ...and print
C 46162,1 Restore HL (current position in list of characters)
C 46163,2 Loop back to #R46140 for next entry in list
C 46165,3 Process keyboard / joystick input on a menu and load A with selected item index
C 46168,1 Add one to selected item index (as first entry in list is window height)...
C 46169,1 ...and load into BC...
C 46170,2 ...
C 46172,3 Load HL with list start address...
C 46175,1 ...and add BC as offset
C 46176,1 Load A with entry at position HL in list (i.e. index of selected character)...
C 46177,3 ...and set as Current Character
C 46180,3 Print character's name and return
c 46183 Set Magic Knight's Available Action Flags
D 46183 Used by the routines at #R38024, #R39393, #R41578, #R42494 and #R43636.
C 46183,3 Reset all Available In-Game Menu Command Flags...
C 46186,3 ...
C 46189,2 If Magic Knight is not carrying the Wand of Command...
C 46191,3 ...
C 46194,2 ...then skip ahead to #R46200
C 46196,4 Set "COMMAND A CHARACTER" Menu Command Flag (IY = 23610)
C 46200,3 Load A with Magic Knight's current Magic Level...
C 46203,2 ...stripping out unused bit
C 46205,2 If Magic Level is zero then skip ahead to #R46211
C 46207,4 Set "CAST A SPELL" Menu Command Flag (IY = 23610)
C 46211,3 If Magic Knight's current room is 1 (Outdoors, 0, Bearwoolf's Hoard)...
C 46214,2 ...
C 46216,2 ...then skip ahead to #R46233
C 46218,2 If Magic Knight's current room is 2 (Outdoors, 1, Bearwoolf's Cave)...
C 46220,2 ...then skip ahead to #R46233
C 46222,2 If Magic Knight is not carrying the Teleport Key...
C 46224,3 ...
C 46227,2 ...then skip ahead to #R46233
C 46229,4 Set "TELEPORT" Menu Command Flag (IY = 23610)
C 46233,2 If Magic Knight is not carrying the Horse Feather...
C 46235,3 ...
C 46238,2 ...then skip ahead to #R46244
C 46240,4 Set "TICKLE A CHARACTER" Menu Command Flag (IY = 23610)
C 46244,1 Load C with weights / flags of all Magic Knight's carried objects, OR-ed Together...
C 46245,3 ...
C 46248,2 ...and if Can Be Read Flag is not set for any of the objects...
C 46250,2 ...then skip ahead to #R46256
C 46252,4 Set "READ SOMETHING" Menu Command Flag (IY = 23610)
C 46256,2 If Can Be Blown Flag is not set for any of the objects...
C 46258,2 ...then skip ahead to #R46264
C 46260,4 Set "BLOW SOMETHING" Menu Command Flag (IY = 23610)
C 46264,2 Load C with flags (2) of all Magic Knight's carried objects, OR-ed Together...
C 46266,3 ...
C 46269,2 ...and if Can Be Worn Flag is set for at least one of the objects...
C 46271,2 ...then skip ahead to #R46279
C 46273,3 If Magic Knight's first inventory slot (wearing) is empty...
C 46276,1 ...
C 46277,2 ...then skip ahead to #R46283
C 46279,4 Set "WEAR/UNWEAR OBJECT" Menu Command Flag (IY = 23610)
C 46283,2 Load A with flags (2) of all Magic Knight's carried objects, OR-ed Together...
C 46285,3 ...
C 46288,1 ...
C 46289,2 If bits 5 (Can Be Thrown Flag) 6 (Can Be Thrown and is Lethal Flag) and 7 (Can Be Thrown Flag) are all reset...
C 46291,2 ...then skip ahead to #R46297
C 46293,4 Set "THROW SOMETHING" Menu Command Flag (IY = 23610)
C 46297,3 Load B with Magic Knight's current room...
C 46300,1 ...
C 46301,3 Load HL with start address of List of Indices of Rooms with Levers
C 46304,1 If current index is the same as Magic Knight's current room...
C 46305,1 ...
C 46306,2 ...then set additional action flags including "PULL LEVER" and return
C 46308,2 If current index is 255 (End Marker)...
C 46310,2 ...then set additional action flags excluding "PULL LEVER" and return
C 46312,1 Advance HL to next room in list
C 46313,2 Loop back to #R46304
b 46315 List of Indices of Rooms with Levers
B 46315,1,1 Castle Ground Floor, 3
B 46316,1,1 Castle First Floor, 0 (Main Lever 7)
B 46317,1,1 Castle First Floor, 1 (Main Lever 6)
B 46318,1,1 Castle First Floor, 2 (Security Door & Main Lever 5)
B 46319,1,1 Castle First Floor, 3 (Main Lever 4)
B 46320,1,1 Castle First Floor, 4 (Main Lever 3)
B 46321,1,1 Castle First Floor, 5 (Main Lever 2)
B 46322,1,1 Castle First Floor, 6 (Main Lever 1)
B 46323,1,1 Castle Second Floor, 3 (One Way Corridor, 1)
B 46324,1,1 Castle Second Floor, 6
B 46325,1,1 End Marker
c 46326 Set Magic Knight's Available Action Flags (Additional)
D 46326 Used by the routine at #R46183.
C 46326,4 Set "PULL LEVER" Menu Command Flag (IY = 23610)
N 46330 This entry point is used by the routine at #R46183.
C 46330,2 Load A with Attribute Flags and Can Smell flags of all Magic Knight's carried objects, OR-ed Together...
C 46332,3 ...
C 46335,1 ...
C 46336,2 Reset all but bits 4, 5, 6 and 7 (the four Can Smell flags)...
C 46338,2 ...and if these flags are all reset then skip ahead to #R46344
C 46340,4 Set "SMELL SOMETHING" Menu Command Flag (IY = 23610)
C 46344,3 If Wish Pending Flag is reset...
C 46347,1 ...
C 46348,2 ...then skip ahead to #R46361
C 46350,3 If Magic Knight's current room is not 14...
C 46353,2 ...
C 46355,2 ...then skip ahead to #R46361
C 46357,4 Set "HAVE A WISH" Menu Command Flag (IY = 23610)
C 46361,2 If Magic Knight is carrying the Bottle of Liquid (17)...
C 46363,3 ...
C 46366,2 ...then skip ahead to #R46375
C 46368,2 If Magic Knight is not carrying the Bottle of Liquid (18)...
C 46370,3 ...
C 46373,2 ...then skip ahead to #R46379
C 46375,4 Set "HAVE A DRINK" Menu Command Flag (IY = 23610)
C 46379,1 Return
c 46380 Load C with Property of Index A for All Magic Knight's Carried Objects, OR-ed Together
D 46380 Used by the routines at #R46183 and #R46326. Input:  A  Index of required property of objects Output: C  Flags of all objects held, OR-ed together
C 46380,3 Modify instruction at #R46395 with index of required property
C 46383,4 Point IX at Magic Knight's current inventory (carrying)
C 46387,3 Load B with 5 and C with 0 (i.e. reset all bits in C)
C 46390,3 If Magic Knight's current inventory slot is empty...
C 46393,1 ...
C 46394,1 ...then return
N 46395 The operand of the instruction at #R46395 represents the index of the required property. This is modified by the instruction at #R46380.
C 46395,2 Load E with index of required property
C 46397,3 Point HL to the E-th byte of the A-th record in Object Properties Table
C 46400,1 Load A with value of required property (flags)...
C 46401,1 ...and set corresponding bits of C...
C 46402,1 ...
C 46403,2 Advance IX to next inventory slot...
C 46405,2 ...and loop back to #R46390 for next object
C 46407,1 Return
c 46408 Create List of Characters in Room A at 23422 and Load A with Number of Characters
D 46408 Used by the routine at #R45963. Input:  A  Room index Output: A  Number of characters in room F  Zero Flag set if no characters in room, reset otherwise
C 46408,3 Modify instruction at #R46436 with room index
C 46411,1 Store HL
C 46412,1 Store BC
C 46413,1 Store DE
C 46414,2 Store IX
C 46416,2 Set A to 255 (End Marker)
C 46418,3 Point HL at end of Table of Characters in Room of Interest
C 46421,2 Load B with 8 (as we are clearing 8 entries in the list)
C 46423,1 Set value at address in HL to 255
C 46424,1 Move HL back one byte
C 46425,2 Loop back to #R46423
C 46427,4 Point IX at start of Table of Characters' Current Positions at #R24898
C 46431,2 Set D (index of current character) to zero
C 46433,2 Load B with 8 (as there are 8 characters in the game)
C 46435,1 Set C (count of characters in room of interest) to zero
N 46436 The operand of the instruction at #R46436 represents a room index. This is modified by the instruction at #R46408.
C 46436,2 Load A with room index
C 46438,3 If current character's current room is not the room of interest...
C 46441,2 ...then skip ahead to #R46446
C 46443,1 Increase C (count of number of characters in room of interest)
C 46444,1 Advance HL by one byte
C 46445,1 Load index of current character into address in HL
C 46446,2 Advance IX to next character's position data...
C 46448,2 ...
C 46450,2 ...
C 46452,1 Increase index of current character (i.e. advance to next character)
C 46453,2 Loop back to #R46436
C 46455,1 Load number of characters in room of interest into A
C 46456,1 Set zero flag is there are no characters in room, otherwise reset
C 46457,2 Restore IX
C 46459,1 Restore DE
C 46460,1 Restore BC
C 46461,1 Restore HL
C 46462,1 Return
c 46463 Print Magic Knight's Current Strength at (6, 2) as Text if he is Carrying the Mirror
D 46463 Used by the routines at #R38780, #R40153, #R40201 and #R46560.
C 46463,2 If Magic Knight is not carrying the Mirror (20)...
C 46465,3 ...
C 46468,1 ...then return
C 46469,3 Set left and right x-coordinates (#R23408 and #R23410) to edges of screen and load A with Magic Knight's current strength
C 46472,3 Point HL at "---" text...
C 46475,3 ...and overwrite with Magic Knight's current strength as a string
C 46478,3 Load HL with Display File address corresponding to (6, 2) (characters)...
C 46481,3 ...and move Bitmap Virtual Text Cursor here
C 46484,3 Load HL with address of text containing Magic Knight's current strength...
C 46487,3 ...print to screen and return
c 46490 Draw Objects in Magic Knight's Inventory if he is Carrying the Mirror
D 46490 Used by the routine at #R38780.
C 46490,2 If Magic Knight is not carrying the Mirror (20)...
C 46492,3 ...
C 46495,1 ...then return
C 46496,3 Point HL at start of Magic Knight's current inventory (carrying)
C 46499,2 Load B with 5 (five inventory slots)
C 46501,3 Load DE with x- and y-coordinates respectively to start drawing object graphics (D, or x = 2, E, or y = 16)
C 46504,1 Store BC (B = remaining number of inventory slots to process)
C 46505,1 Store HL (pointer to current position in Magic Knight's current inventory)
C 46506,1 Store DE (coordinates in characters to draw object)
C 46507,1 Load index of object in current slot in Magic Knight's inventory into A
C 46508,1 If this is zero...
C 46509,2 ...then restore registers and return
C 46511,2 Load 6 (index of objects' attribute property) into E
C 46513,3 Point HL at the attribute property of the object in the current inventory slot
C 46516,1 Load attribute into ATTR T system variable...
C 46517,3 ...
C 46520,1 Advance HL to point to graphic index property...
C 46521,1 ...and load into A
C 46522,1 Restore BC (coordinates in characters to draw object, was in DE)
C 46523,1 Store BC (coordinates in characters to draw object)
C 46524,1 Store BC (coordinates in characters to draw object)
C 46525,3 Draw 2x2 graphic with lookup index A at character coordinates (C, B)
C 46528,1 Restore BC (coordinates in characters to draw object)
C 46529,3 Load HL with Attribute File address for coordinates (C, B)
C 46532,3 Load A with value stored in ATTR T system variable...
C 46535,1 ...and apply this attribute to Attribute File at coordinates (C, B)...
C 46536,1 ...
C 46537,1 ...(C + 1, B)...
C 46538,3 ...
C 46541,1 ...
C 46542,1 ...(C, B + 1)...
C 46543,1 ...
C 46544,1 ...and (C + 1, B + 1)
C 46545,1 Restore DE (coordinates in characters to draw object)
C 46546,1 Advance right by three characters (i.e. add three to x-coordinate in E)...
C 46547,2 ...
C 46549,1 ...
C 46550,1 Restore HL (pointer to current position in Magic Knight's current inventory)
C 46551,1 Advance HL to next inventory slot
C 46552,1 Restore BC (B = remaining number of inventory slots to process)
C 46553,2 Decrease B, and loop back to #R46504 if not zero
C 46555,1 Return
C 46556,1 Restore DE (coordinates in characters to draw object)
C 46557,1 Restore HL (pointer to current position in Magic Knight's current inventory)
C 46558,1 Restore BC (B = remaining number of inventory slots to process)
C 46559,1 Return
c 46560 Update Position of Axe, Display, and Decrease Magic Knight's Strength if in Contact
D 46560 Used by the routines at #R40235 and #R40239. Input:  A  Axe number (0, 1, 2 or 3)
C 46560,1 Multiply value of A by eight...
C 46561,1 ...
C 46562,1 ...
C 46563,1 Store in C
C 46564,2 Set B to zero
C 46566,4 Set IX to point to data for axes
C 46570,2 Add eight times axe number as offset to IX pointer
C 46572,3 Load axe's x-coordinate into C
C 46575,3 Load axe's y-coordinate into B
C 46578,1 Store BC
C 46579,4 Load BC into system variable "COORDS"
C 46583,3 Load A with axe's current frame number
C 46586,2 Store IX
C 46588,3 Draw axe to screen
C 46591,2 Restore IX
C 46593,1 Restore BC
C 46594,3 Load x-velocity into A
C 46597,1 Add x-coordinate to A
C 46598,1 Load new x-coordinate back into C
C 46599,3 Load y-velocity into A
C 46602,1 Add y-coordinate to A
C 46603,1 Load new y-coordinate back into B
C 46604,3 Update data with new x-...
C 46607,3 ...and y-coordinates
C 46610,4 Update "COORDS" system variable
C 46614,3 Load A with axe frame data
C 46617,2 Subtract 116 (i.e. frame number of first axe frame) to get "absolute frame number" (see trivia)
C 46619,1 Advance absolute frame number by one
C 46620,2 Cap absolute frame number to 3, and wrap round from 3 to 0 as there are only four frames
C 46622,2 Add 116 to absolute frame number to give relative frame number again
C 46624,3 Store new frame number
C 46627,2 Store IX
C 46629,3 Draw axe to screen
C 46632,2 Restore IX
C 46634,3 Load x-coordinate of axe
C 46637,1 If x-coordinate is zero...
C 46638,3 ...multiply x "velocity" by minus one
C 46641,2 If x-coordinate is 244...
C 46643,3 ...multiply x "velocity" by minus one
C 46646,2 Temporarily advance IX pointer to work with y "velocities"
C 46648,3 Load y-coordinate of axe
C 46651,2 If y-coordinate is 172...
C 46653,3 ...multiply y "velocity" by minus one
C 46656,2 If y-coordinate is 100...
C 46658,3 ...multiply y "velocity" by minus one
C 46661,2 Move IX back one again (reversing instruction at #R46646)
C 46663,3 Load A with Magic Knight's current x-coordinate
C 46666,1 Copy into B
C 46667,3 Load A with x-coordinate of axe
C 46670,2 Add 6 to x-coordinate of axe
C 46672,1 Subtract B to get x-distance between Magic Knight and the axe, plus 6
C 46673,2 If this value is not less than 21 then...
C 46675,3 ...return
C 46678,3 Else, load B with Magic Knight's y-coordinate...
C 46681,1 ...
C 46682,3 Load A with y-coordinate of axe (uses same coordinate system as PLOT command, i.e. y=0 is at bottom of screen)
C 46685,1 Subtract B to get y-distance between Magic Knight and the axe
C 46686,2 If this value is not less than 39 then...
C 46688,3 ...return
C 46691,2 If Magic Knight is wearing the Shield...
C 46693,3 ...
C 46696,3 ...then skip ahead to #R46719
C 46699,3 Else, decrease Magic Knight's current strength by one...
C 46702,1 ...
C 46703,3 ...
C 46706,3 Print Magic Knight's current strength at (6, 2) as text if he is carrying the Mirror
C 46709,3 Load Magic Knight's current strength into A...
C 46712,1 If Magic Knight's strength is zero...
C 46713,3 ...point HL to "YOU DIED OF EXHAUSTION" text...
C 46716,3 ...and jump to "Game over" window routine and exit
C 46719,2 Set C to 32 (number of times to repeat loop below)
C 46721,2 Set speaker bit...
C 46723,2 ...
C 46725,2 Load A with random number between 0 - 15 (as R register increases with each instruction executed)...
C 46727,2 ...
C 46729,1 Load value into B
C 46730,2 Pause by repeating this line B times
C 46732,1 Set A to zero
C 46733,2 Reset speaker bit
C 46735,1 Decrease C...
C 46736,2 ...and repeat loop if C is not zero
C 46738,1 Reset speaker bit...
C 46739,2 ...
C 46741,1 Return
c 46742 Multiply x or y Velocity of axe by Minus One
D 46742 Used by the routine at #R46560. Input:  IX  Address of x or y "velocity" of axe minus two
C 46742,3 Load A with x "velocity" of axe
C 46745,2 Multiply velocity by minus one
C 46747,3 Load back into data block
C 46750,1 Set A to zero
C 46751,1 Return
b 46752 Properties of the Axes
D 46752 Up to four axes may exist in a room, therefore there are four entries in this table. Each axe's properties are encoded in eight bytes with the following meanings:
B 46752,8,8 Axe 1
B 46760,8,8 Axe 2
B 46768,8,8 Axe 3
B 46776,8,8 Axe 4
c 46784 Draw Axe(s) to Screen if Magic Knight is in an Axe Room
D 46784 Used by the routines at #R38841, #R39393, #R61823 and #R61860.
C 46784,3 If Magic Knight's current room's index is less than 17...
C 46787,2 ...i.e. he is outside the Castle / Spaceship...
C 46789,1 ...then return
C 46790,2 If Magic Knight's current room's index is 23 or more (not in any, except last, Castle ground floor room)...
C 46792,1 ...then return
C 46793,3 Load HL with start address of properties of axe 0
C 46796,3 Draw axe 0
C 46799,3 If Magic Knight's current room's index is less than 21...
C 46802,2 ...i.e. he is on the Castle ground floor, in room 0, 1, 2 or 3...
C 46804,1 ...then return (only one axe in these rooms)
C 46805,3 Advance HL to start of properties of axe 1...
C 46808,1 ...
C 46809,3 Draw axe 0
C 46812,3 Advance HL to start of properties of axe 2...
C 46815,1 ...
C 46816,3 Draw axe 0
C 46819,3 Advance HL to start of properties of axe 3...
C 46822,1 ...
C 46823,1 Load E with current axe's x-coordinate...
C 46824,1 ...
C 46825,1 Load D with current axe's y-coordinate...
C 46826,4 ...and store coordinates in system variable COORDS
C 46830,1 Advance HL to axe frame number...
C 46831,1 ...
C 46832,1 ...
C 46833,1 ...and load into A
C 46834,3 Draw axe to screen and return
c 46837 Splice Numeric Data A as a String into a String at HL
D 46837 Used by the routines at #R38024, #R40489, #R42938, #R43000, #R45522 and #R46463. Input:  A  Numeric value to put into string HL  Address of string to modify
C 46837,1 Store HL (address of string to modify)
C 46838,3 Point HL at destination location for ASCII string
C 46841,2 Load numeric value into BC...
C 46843,1 ...
C 46844,3 Convert numeric value BC to ASCII string at address in HL (#R23430)
C 46847,3 Point HL at third digit in converted five-digit string
C 46850,2 Load C with 2 (as we can have up to two leading zeroes on a three-digit number)
C 46852,1 Load ASCII character at HL into A
C 46853,2 If character is not a zero ("0")...
C 46855,2 ...then skip ahead to #R46863
C 46857,2 Replace the zero character with a space (i.e. remove leading zeroes from number)
C 46859,1 Advance to next character in string
C 46860,1 Decrease C (number of remaining digits to process)
C 46861,2 Loop back to #R46852 if there are still digits to process
C 46863,1 Restore pointer to "numeric text" (originally in HL at start of this routine) into DE
C 46864,3 Point HL at string just created
C 46867,3 Splice ASCII string number just generated into "numeric data" text
C 46870,2 ...
C 46872,1 Return
c 46873 Print Text at Location HL to Screen Using Full Screen Width
D 46873 Used by the routines at #R39578 and #R63598. Input:  HL  Text to print
C 46873,3 Load A with x-coordinate of right edge of current window to draw (characters)
C 46876,1 Store AF (A = x-coordinate of right edge of current window)
C 46877,2 Set right-edge x-coordinate value at #R23410 to 31...
C 46879,3 ...
C 46882,3 Load A with x-coordinate of left edge of current window to draw (characters)
C 46885,1 Store AF (A = x-coordinate of left edge of current window)
C 46886,1 Set left-edge x-coordinate value at #R23408 to zero...
C 46887,3 ...
C 46890,3 Print text at location HL to screen
C 46893,1 Restore x-coordinate of left edge of current window...
C 46894,3 ...to #R23408
C 46897,1 Restore x-coordinate of right edge of current window...
C 46898,3 ...to #R23410
C 46901,1 Return
c 46902 Print Text at Location HL to Screen
D 46902 Used by the routines at #R37764, #R37909, #R37951, #R38780, #R38829, #R40258, #R40489, #R42494, #R42616, #R42638, #R43043, #R43874, #R44253, #R44635, #R45552, #R45641, #R45685, #R45723, #R45809, #R45963, #R46106, #R46463, #R46873, #R63349, #R63399, #R64207, #R64230, #R64317 and #R64582. Input:  HL  Points to text data to print
C 46902,4 Point IX at start of Temporary Text Buffer
C 46906,2 Prepare Recursion Depth Counter for loop...
C 46908,3 ...
N 46911 This entry point is used by the routine at #R47049.
C 46911,3 Increase Recursion Depth Counter...
C 46914,1 ...
C 46915,3 ...
C 46918,1 Store HL
C 46919,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 46922,1 Restore HL
C 46923,1 Prepare pointer to text to print for loop
N 46924 This entry point is used by the routines at #R47020, #R47096 and #R48389.
C 46924,3 Load A with value in Recursion Depth Counter...
C 46927,2 ...and if this is 255 (i.e. no more text to print)...
C 46929,3 ...then return (see trivia)
C 46932,1 Advance to next character code to be printed...
C 46933,1 ...and load into A
C 46934,1 If character code is a zero (i.e. End Marker)...
C 46935,3 ...then return from current level of text printing
C 46938,2 If the character is a "32" (SPACE)...
C 46940,3 ...then print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R46924 to load next word
C 46943,2 If the character is a "31"...
C 46945,3 ...then print the Current Character's short name
C 46948,2 If the character is a "30"...
C 46950,3 ...then print the Current Character's full name
C 46953,2 If the character is a "29"...
C 46955,3 ...then print the Current Object's name
C 46958,2 If the character is a "28"...
C 46960,3 ... then print appropriate Newspaper substring for current required disquise
C 46963,2 If the character is a "27"...
C 46965,3 ...then print current Crystal Ball substring
C 46968,2 If the character is a "26"...
C 46970,3 ...then print current Scroll substring
C 46973,2 If the character is a "25"...
C 46975,3 ...then print the name of the Current Command
C 46978,2 If the character is a "19"...
C 46980,3 ...then toggle BRIGHT Flag then loop back to #R46924 for next data
C 46983,2 If the character is a "18"...
C 46985,3 ...then toggle FLASH Flag then loop back to #R46924 for next data
C 46988,2 If the character is a "17"...
C 46990,3 ...then change PAPER colour based upon following data byte then loop back to #R46924 for next data
C 46993,2 If the character is a "16"...
C 46995,3 ...then change INK colour based upon following data byte then loop back to #R46924 for next data
C 46998,2 If the character is a "14" (Carriage return / line feed to start of next character row down within window)...
C 47000,3 ...then print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R46924 to load next word
C 47003,2 If the character is a "13" (Carriage return / line feed to start of next character row down)...
C 47005,3 ...then print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R46924 to load next word
C 47008,2 If value is 91 or greater (i.e. special character)...
C 47010,3 ...then print an entry from the Common Words Table
C 47013,3 Load character into Temporary Text Buffer
C 47016,2 Advance to next position in temporary text buffer
C 47018,2 Loop back to #R46924
c 47020 Return from recursive text-printing
D 47020 Used by the routine at #R47049.
C 47020,1 Restore HL (pointer to current position in text to print)
C 47021,2 Jump back into text printing routine to process next character in parent string
c 47023 Text Printing Return from current level of text printing
D 47023 Used by the routine at #R46902.
C 47023,1 Store AF
C 47024,3 Load Recursion Depth Counter into B...
C 47027,1 ...
C 47028,1 Restore AF
C 47029,1 If Recursion Depth Counter is not zero (i.e. we are not at the end of the top-level string)...
C 47030,2 ...then skip ahead to #R47041
C 47032,1 Decrease Recursion Depth Counter to 255, as we have reached the end of the top-level string...
C 47033,3 ...
C 47036,2 Load A with 255 (End Marker)
C 47038,3 Print word in Temporary Text Buffer to screen, wrapping text if necessary, then process next word
C 47041,3 Decrease Recursion Depth Counter...
C 47044,1 ...
C 47045,3 ...
C 47048,1 Return
c 47049 Text Printing Print an entry from the Common Words Table
D 47049 Used by the routines at #R46902, #R47154, #R47162 and #R47170. Input:  A  (Entry at #R47049 only) 91 + Index of required entry in Common Words Table A  (Entry at #R47055 only) Index of required entry in list of texts HL (Entry at #R47055 only) Start address of a list of texts
C 47049,1 Store HL (pointer to current position in text to print)
C 47050,3 Point HL at start of Common Words Table
C 47053,2 Subtract 91 to get absolute index of required entry in table
N 47055 This entry point is used by the routines at #R47110, #R47121, #R47132 and #R47143.
C 47055,2 If index is zero (i.e. first entry is required) then skip ahead to #R47075
C 47057,2 If index is at least 100...
C 47059,3 ...then advance HL to second part of Common Words Table and subtract 100 from required index (see trivia)
C 47062,2 If index is zero (i.e. first entry is required) then skip ahead to #R47075
C 47064,1 Load index into B
C 47065,1 Store BC (B = Remaining number of strings to skip, initially set to index of required entry in Common Words Table)
C 47066,3 Set BC to 65535 (repeat count for CPIR)
C 47069,1 Set A to zero
C 47070,2 Advance HL until (HL) = A, i.e. a zero (end of string) is found
C 47072,1 Restore BC (B = Remaining number of strings to skip)
C 47073,2 Loop back to #R47065
C 47075,3 Call text printing routine recursively to print the common word
C 47078,2 Restore HL (pointer to current position in text to print) then jump back into text printing routine to process next character in parent string
c 47080 Text Printing Toggle BRIGHT Flag
D 47080 Used by the routine at #R46902.
C 47080,2 Load B with 64 (BRIGHT flag)
C 47082,2 Skip ahead to 47086 (toggle BRIGHT flag, store ATTR T system variable and jump back to start of text printing loop to process next data byte)
c 47084 Text Printing Toggle FLASH Flag
D 47084 Used by the routine at #R46902.
C 47084,2 Load B with 128 (FLASH flag)
N 47086 This entry point is used by the routine at #R47080.
C 47086,3 Load A with current ATTR T system variable value
C 47089,1 Toggle FLASH flag
C 47090,2 Store ATTR T system variable and jump back to start of text printing loop to process next data byte
c 47092 Text Printing Change PAPER Colour
D 47092 Used by the routine at #R46902.
C 47092,2 Load B with attribute mask (FLASH, BRIGHT and all INK bits set, all PAPER bits reset)
C 47094,2 Change PAPER colour then jump back to start of text printing loop to process next data byte
c 47096 Text Printing Change INK Colour
D 47096 Used by the routine at #R46902.
C 47096,2 Load B with attribute mask (FLASH, BRIGHT and all PAPER bits set, all INK bits reset)
N 47098 This entry point is used by the routine at #R47092.
C 47098,1 Advance HL pointer to next byte in text data
C 47099,3 Load ATTR T system variable value into A
C 47102,1 Apply mask to reset all INK bits
C 47103,1 Set INK bits as defined in next text data byte
N 47104 This entry point is used by the routine at #R47084.
C 47104,3 Store new value of ATTR T
C 47107,3 Jump back to start of text printing loop to process next data byte
c 47110 Print the Current Object's Name
D 47110 Used by the routine at #R46902.
C 47110,1 Store HL (current position in text data)
C 47111,3 Point HL at start of Table of Object Names
C 47114,3 Load A with index of Current Object
C 47117,1 Set Zero Flag is object index is zero
C 47118,3 Jump back to print this object's name
c 47121 Print Appropriate Newspaper Substring for Current Required Disquise
D 47121 Used by the routine at #R46902.
C 47121,1 Store HL
C 47122,3 Load HL with start address for Newspaper Substrings
C 47125,3 Load A with Index of Required Disquise...
C 47128,1 ...and set Zero Flag if index is zero
C 47129,3 Jump back to print this newspaper string
c 47132 Print Current Crystal Ball Substring
D 47132 Used by the routine at #R46902.
C 47132,1 Store HL
C 47133,3 Load HL with start address for Crystal Ball Substrings
C 47136,3 Load A with index of current Crystal Ball substring...
C 47139,1 ...and set Zero Flag if index is zero
C 47140,3 Jump back to print this Crystal Ball substring
c 47143 Print Current Scroll Substring
D 47143 Used by the routine at #R46902.
C 47143,1 Store HL
C 47144,3 Load HL with start address for Scroll Substrings
C 47147,3 Load A with index of current Scroll substring...
C 47150,1 ...and set Zero Flag if index is zero
C 47151,3 Jump back to print this scroll substring
c 47154 Print the Name of the Current Command
D 47154 Used by the routine at #R46902.
C 47154,3 Load A with index of Current Command
C 47157,2 Add 234 (as 234 is the index of the first of the list of command names in the Common Words Table)
C 47159,3 Print an entry (A) from the Common Words Table
c 47162 Print the Current Character's Full Name
D 47162 Used by the routine at #R46902.
C 47162,3 Load A with index of Current Character
C 47165,2 Add 217 (as 217 is the index of the first of the list of characters' full names in the Common Words Table)
C 47167,3 Print an entry (A) from the Common Words Table
c 47170 Print the Current Character's Short Name
D 47170 Used by the routine at #R46902.
C 47170,3 Load A with index of Current Character
C 47173,2 Add 201 (as 201 is the index of the first of the list of characters' short names in the Common Words Table)
C 47175,3 Print an entry (A) from the Common Words Table
c 47178 Return
D 47178 See trivia
C 47178,1 Return
c 47179 Subtract 100 from Common Word Index and Jump to Second Part of Common Words Table
D 47179 This routine is redundant in that if it is skipped (via a RET at #R47179) the game continues to function normally (see trivia). Input:  A  Index of common word required Output: A  Modified common word index (as input, minus 100)
C 47179,3 Advance to second part of Common Words Table
C 47182,2 Subtract 100 from index required
C 47184,1 Return
c 47185 Draw a Menu Window
D 47185 Used by the routines at #R37764, #R37909, #R42494, #R42638, #R43043, #R43874, #R44635, #R45809, #R45963, #R46106 and #R64207.
C 47185,1 Swap AF register (A holds index of window to draw)
C 47186,2 Load the value 105 into #R47289 (i.e. set "Draw Menu (Hand) Cursor" 'flag' to true)...
C 47188,3 ...
C 47191,2 Draw the window
c 47193 Draw a Window
D 47193 Used by the routines at #R37764, #R37909, #R37951, #R38780, #R40258, #R42638, #R44253, #R45552, #R45641, #R45685, #R45723, #R45809, #R45963, #R63399, #R64230, #R64317 and #R64582. Input:  A  Index of window to draw
C 47193,1 Switch AF and AF'
C 47194,2 Reset "Draw Hand Menu Cursor" Flag (later in this routine)...
C 47196,3 ...
N 47199 This entry point is used by the routine at #R47185.
C 47199,4 Set Characters Movement Unrestricted Flag / Disable In-Game Glow Flag (IY = 23610)
C 47203,1 Restore original AF (with A being index of window)
C 47204,3 Set this index as the "current" window index
C 47207,1 Load HL with A value (index of required window)...
C 47208,2 ...
C 47210,1 Multiply index by eight (as each window's data takes up eight bytes in table at #R49034)...
C 47211,1 ...
C 47212,1 ...
C 47213,3 Set BC to start of window data table
C 47216,1 Calculate location of start of required window's data
C 47217,1 Load E with x-coordinate of left edge (characters)
C 47218,1 Load C with x-coordinate of right edge (characters)...
C 47219,1 ...
C 47220,1 Load D with y-coordinate of top edge (characters)...
C 47221,1 ...
C 47222,1 Load B with y-coordinate of bottom edge (characters)...
C 47223,1 ...
C 47224,4 Store values for later use...
C 47228,4 ...
C 47232,1 Load A with window's upper edge border style...
C 47233,1 ...
C 47234,3 Store for later use in routine at #R63302
C 47237,1 Load A with window's border attribute...
C 47238,1 ...
C 47239,1 Exchange AF and AF'
C 47240,1 Load A with starting y-coordinate of hand cursor...
C 47241,1 ...
C 47242,3 Store for later use
C 47245,1 Load A with window's content attribute...
C 47246,1 ...
C 47247,3 Store for later use
C 47250,1 Exchange AF and AF' (restoring border attribute to A and putting background colour in A')
C 47251,3 Draw window frame
C 47254,3 Point HL at previously stored values
C 47257,1 Increase top-left x-coordinate
C 47258,1 Increase top-left y-coordinate...
C 47259,1 ...
C 47260,1 Decrease bottom-right x-coordinate...
C 47261,1 ...
C 47262,1 Decrease bottom-right y-coordinate...
C 47263,1 ...
C 47264,3 Load window content attribute into A
C 47267,3 Prepare to fill a region with the attribute in A
C 47270,3 Update ATTR T system variable with window content attribute
C 47273,3 Fill a region of Attribute File with specified attribute
C 47276,3 Blank the interior of the window (Display File)
C 47279,3 Load x-coordinate of left of interior of window into C...
C 47282,1 ...
C 47283,1 Load y-coordinate of top of interior of window into B...
C 47284,1 ...
C 47285,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47288,1 Store HL (address in Display File of top-left of interior of window)
N 47289 The operand of the instruction at #R47289 represents the "Draw Hand Menu Cursor" Flag. This is modified by the instructions at #R47188 and #R47196.
C 47289,2 Load A with "Draw Hand Menu Cursor" Flag
C 47291,2 If value is not 105...
C 47293,3 ...then jump to #R47317 (i.e. don't draw the hand cursor)
N 47296 Window is a menu (105)
C 47296,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 47300,3 Load A with starting y-coordinate of hand cursor
C 47303,1 Add y-coordinate of top of area to this...
C 47304,1 ...and place back into B
C 47305,2 Load A with 2 (graphic lookup index of Menu Hand Cursor graphic in table at #R29272)
C 47307,3 Load D (graphic width) with 2 and E (graphic height) with 2
C 47310,2 Store IX
C 47312,3 Draw a Graphic with Lookup Index A at Character Coordinates (C, B) with width = E characters and height = D characters
C 47315,2 Restore IX
C 47317,1 Set A to zero
C 47318,3 Set hand cursor's current y-coordinate to zero (i.e. defaults to top of its movement range within current window)
C 47321,1 Restore HL (address in Display File of top-left of interior of window)
C 47322,3 Set memory location to start printing character in character printing routine
C 47325,1 Return
c 47326 Draw a Window Frame
D 47326 Used by the routine at #R47193.
C 47326,3 Store border attribute in ATTR T system variable
C 47329,3 Load A with x-coordinate of left of window
C 47332,1 Copy into C
C 47333,3 Load A with x-coordinate of right of window
C 47336,1 Get distance between left and right coordinates
C 47337,1 Subtract 1 to get width of window top-edge (not including corner pieces)
C 47338,1 Transfer this to BC...
C 47339,2 ...
C 47341,1 Store BC (width of top edge of window, not including corner pieces)
C 47342,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 47346,1 Increase C by one (as top edge strictly starts one to the right of this x-coordinate - the left-most is actually a corner piece, not an edge)
C 47347,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47350,1 Restore HL (width of top edge of window, not including corner pieces)
C 47351,1 Store HL (width of top edge of window, not including corner pieces)
C 47352,1 Wait for interrupt
C 47353,3 Draw upper window frame edge then increment the border character index in routine at #R63302
C 47356,3 Load C with x-coordinate of left of window...
C 47359,1 ...
C 47360,3 Load B with y-coordinate of bottom of window...
C 47363,1 ...
C 47364,1 Increase C by one (as bottom edge strictly starts one to the right of this x-coordinate - the left-most is actually a corner piece, not an edge)
C 47365,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47368,1 Restore HL (width of bottom edge of window)...
C 47369,3 Draw lower window frame edge then increment the border character index in routine at #R63302
C 47372,3 Load y-coordinate of top of window into B...
C 47375,1 ...
C 47376,3 Load y-coordinate of bottom of window into A
C 47379,1 Subtract B...
C 47380,1 ...and decrease by one to get length of left-edge (not including corner pieces)
C 47381,1 Store AF (A = remaining length of left / right edges)
C 47382,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 47386,1 Add A and B to get y-coordinate of character to draw in left edge...
C 47387,1 ...and load into B
C 47388,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47391,3 Load A with index of character (left edge) to draw
C 47394,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 47397,3 Load HL with address of Bitmap Virtual Text Cursor
C 47400,1 Load A with LSB of Display File address (virtual attribute cursor location)
C 47401,2 Decrease to nearest multiple of 32 (i.e. start of character row)...
C 47403,1 ...and place back in L
C 47404,3 Load A with x-coordinate of right edge of window (characters)
C 47407,1 Add this x-coordinate to value in HL...
C 47408,1 ...
C 47409,3 ...and update address of Bitmap Virtual Text Cursor
C 47412,3 Load A with index of character (left edge) to draw...
C 47415,1 ...and increment index to get index of right-edge character
C 47416,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 47419,1 Restore AF (A = remaining length of left / right edges)
C 47420,1 Decrease remaining length
C 47421,3 If remaining length is not zero then loop back to #R47381
C 47424,3 Load C with x-coordinate of right edge of window (characters)...
C 47427,1 ...
C 47428,3 Load y-coordinate of top edge of window into B...
C 47431,1 ...
C 47432,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47435,3 Load A with index of character (left-edge) to draw...
C 47438,1 ...and increment (to get right-edge character)
C 47439,3 Increment index again (to get top-right corner character) and store at #R63305
C 47442,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 47445,4 Load B with y-coordinate of window's bottom edge and C with x-coordinate of window's right-edge
C 47449,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47452,3 Increment index of window frame character currently in use to get bottom-right corner character
C 47455,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 47458,3 Load C with x-coordinate of left edge of current window to draw (characters)...
C 47461,1 ...
C 47462,3 Load B with y-coordinate of window's bottom edge...
C 47465,1 ...
C 47466,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47469,3 Increment index of window frame character currently in use to get bottom-left corner character
C 47472,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 47475,4 Load B with y-coordinate of top-edge of window and C with x-coordinate of left-edge of window
C 47479,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 47482,3 Increment index of window frame character currently in use to get top-left corner character
C 47485,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 47488,3 Update Character Printing Routine to use base address of Text Character Set graphics and return
c 47491 Draw an upper or lower window frame edge then increment the border character index
D 47491 Used by the routine at #R47326. Input:  A  (Input, #R47497) Previous border edge character index used HL  (Input, #R47491) Width of window edge to draw (characters, minus 1)
C 47491,3 Draw an Edge of Frame of a Window
N 47494 This entry point is used by the routine at #R47326.
C 47494,3 Load A with window edge border character previously used
N 47497 This entry point is used by the routine at #R47326.
C 47497,1 Increase index of window edge border character to use next...
C 47498,3 ...and store at #R63305
C 47501,1 Return
c 47502 Process Keyboard / Joystick Input on a Menu and Load A with Selected Item Index
D 47502 Used by the routines at #R37689, #R37764, #R42494, #R42638, #R43043, #R43874, #R44635, #R45809, #R45963, #R46106 and #R64207. Output: A  Selected menu item index (zero-based)
C 47502,3 Check whether to draw hand cursor on menu...
C 47505,2 ...and if not...
C 47507,1 ...then return
C 47508,3 Load A with x-coordinate of left edge of current window to draw (characters)...
C 47511,3 ...and store at #R23404
C 47514,1 Increase by one character...
C 47515,3 ...and store for later use
C 47518,3 Load starting y-coordinate of hand cursor into A...
C 47521,1 and copy into B
C 47522,3 Load y-coordinate of current window's top-left corner into A...
C 47525,1 ...add to B...
C 47526,1 ...and multiply by 8 to get y-coordinate of top of hand cursor in pixels...
C 47527,1 ...
C 47528,1 ...
C 47529,3 Then store for later use
C 47532,3 Load y-coordinate of current window's bottom edge into A...
C 47535,1 ...multiply by eight...
C 47536,1 ...
C 47537,1 ...
C 47538,2 ...then add 7 to get y-coordinate of absolute bottom of window in pixels
C 47540,3 ...and store for later
C 47543,3 Load y-coordinate of current window's top-left corner into A...
C 47546,1 ...and copy into B
C 47547,3 Load y-coordinate of current window's bottom-right corner into A...
C 47550,1 ...subtract B...
C 47551,1 ...then subtract one to get height of window, not including frame
C 47552,1 Copy this into B
C 47553,3 Load A with initial y-coordinate of hand cursor relative to current window...
C 47556,1 ...subtract B...
C 47557,2 ...and negate to give vertical distance available to hand cursor to move
C 47559,1 Multiply this by eight to convert from characters to pixels...
C 47560,1 ...
C 47561,1 ...
C 47562,3 ...and store at 23475
C 47565,3 Load A with current y-coordinate of hand cursor relative to its starting position (pixels)...
C 47568,3 ...and invert INK and PAPER bits to highlight currently active menu item at this position
N 47571 This entry point is used by the routines at #R47603 and #R47665.
C 47571,3 Capture keyboard or joystick input loading result into A
C 47574,1 Wait for interrupt
C 47575,2 If "up" pressed then...
C 47577,3 ...jump to routine to move Hand Cursor up and update menu item highlighting
C 47580,2 If "down" pressed then...
C 47582,3 ...jump to routine to move Hand Cursor down and update menu item highlighting
C 47585,2 If "fire" has not been pressed then...
C 47587,2 Loop back to #R47571
C 47589,3 Load A with (zero-based) index of selected menu item and return
c 47592 Wait for Fire Button / Key to be Released
D 47592 Used by the routines at #R38205, #R47703 and #R64230.
C 47592,1 Store AF
C 47593,1 Wait for interrupt
C 47594,3 Capture keyboard or joystick input loading result into A
C 47597,2 If fire button / key pressed...
C 47599,2 ...loop back to #R47593
C 47601,1 Restore AF
C 47602,1 Return
c 47603 Move Hand Cursor Up and Update Menu Item Highlighting
D 47603 Used by the routine at #R47502.
C 47603,3 Load menu hand cursor's current y-coordinate into A
C 47606,1 If coordinate is zero...
C 47607,3 ...then jump to #R47571 (return to menu input handling routine)
C 47610,3 Store y-coordinate (pixels) at #R23478
C 47613,1 Store AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 47614,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 47616,1 Divide this new y-coordinate by eight to get y-coordinate in characters...
C 47617,1 ...
C 47618,1 ...
C 47619,2 ...
C 47621,1 Load this y-coordinate into C
C 47622,1 Restore AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 47623,1 Decrease y-coordinate (pixels) by two...
C 47624,1 ...
C 47625,3 Store new y-coordinate (in pixels)
C 47628,1 Store BC (C = y-coordinate, in characters and before move, of Menu Hand Cursor's finger)
C 47629,3 Scroll a region of the Display File up two pixel rows without wrapping...
C 47632,3 ...
N 47635 This entry point is used by the routine at #R47665.
C 47635,1 Restore BC (C = y-coordinate, in characters and before move, of Menu Hand Cursor's finger)
C 47636,3 Load menu hand cursor's new y-coordinate (in pixels) into A
C 47639,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 47641,1 Divide this new y-coordinate by eight to get y-coordinate in characters...
C 47642,1 ...
C 47643,1 ...
C 47644,2 ...
C 47646,1 If new y-coordinate of Menu Hand Cursor (in characters) is the same as its previous y-coordinate...
C 47647,3 ...then jump to #R47571 (return to menu input handling routine)
C 47650,3 Load A with previous y-coordinate in pixels...
C 47653,3 ...and invert INK and PAPER bits to remove highlighting at this location
C 47656,3 Load A with new y-coordinate in pixels...
C 47659,3 and invert INK and PAPER bits to apply highlighting at this location
C 47662,3 Jump to #R47571 (return to menu input handling routine)
c 47665 Move Hand Cursor Down and Update Menu Item Highlighting
D 47665 Used by the routine at #R47502.
C 47665,3 Load menu hand cursor's current y-coordinate into A
C 47668,3 If height available to Menu Hand Cursor to move down (in pixels, stored at #R23475) is the same as the cursor's current y-coordinate...
C 47671,1 ...i.e. the cursor cannot move any further down...
C 47672,3 ...then jump to #R47571 (return to menu input handling routine)
C 47675,3 Store y-coordinate (pixels) at #R23478
C 47678,1 Store AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 47679,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 47681,1 Divide this new y-coordinate by eight to get y-coordinate in characters...
C 47682,1 ...
C 47683,1 ...
C 47684,2 ...
C 47686,1 Load this y-coordinate into C
C 47687,1 Restore AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 47688,1 Increase y-coordinate (pixels) by two...
C 47689,1 ...
C 47690,3 Store new y-coordinate (in pixels)
C 47693,1 Store BC (C = y-coordinate, in characters and before move, of Menu Hand Cursor's finger)
C 47694,3 Scroll a region of the Display File down two pixel rows without wrapping...
C 47697,3 ...
C 47700,3 Jump to #R47635 (update menu highlighting as appropriate then jump to menu input handling routine)
c 47703 Load A with (Zero-Based) Index of Selected Menu Item
D 47703 Used by the routine at #R47502. Output: A  Selected menu item index (zero-based)
C 47703,3 Wait for Fire Button / Key to be Released
C 47706,4 Load BC with absolute coordinates (characters) of start of row of text of interest in menu
C 47710,3 Load C with initial y-coordinate of top of Hand Cursor relative to current window (characters)...
C 47713,1 ...
C 47714,3 Load A with y-coordinate of top edge of current window (characters)...
C 47717,1 ...add C...
C 47718,1 ...and add 1 to get absolute y-coordinate of first item in menu
C 47719,1 Store y-coordinate in C
C 47720,1 Load A with y-coordinate of row of text of interest in menu
C 47721,1 Subtract absolute y-coordinate of first item in menu to give zero-based index of selected item
C 47722,1 Store AF (A = selected item index)
C 47723,3 Load A with current y-coordinate of hand cursor relative to its starting position (pixels)...
C 47726,3 ...and use to de-highlight selected menu item
C 47729,1 Restore AF (A = selected item index)
C 47730,1 Return
c 47731 Invert INK and PAPER bits to (De-)Highlight Currently Active Menu Item
D 47731 Used by the routines at #R47502, #R47603 and #R47703. Input:  A  y-coordinate of Menu Hand Cursor (pixels)
C 47731,1 Store AF (A = y-coordinate of Menu Hand Cursor)
C 47732,3 Load A with x-coordinate of left edge of current window to draw (characters)
C 47735,2 Add 2, as Menu Hand Cursor is two characters wide...
C 47737,1 ...and load into C (x-coordinate of start of row of text in menu)
C 47738,1 Restore AF (A = y-coordinate of Menu Hand Cursor)
C 47739,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 47741,3 Divide this new y-coordinate by eight to get y-coordinate in characters
C 47744,1 Load this y-coordinate into B
C 47745,3 Load initial y-coordinate of top of hand cursor relative to current window, into A
C 47748,1 Add this to y-coordinate of "finger"
C 47749,1 Load this into B, so that B now contains y-coordinate of "finger" relative to top of window (characters)
C 47750,3 Load y-coordinate of top edge of current window into A
C 47753,1 Add...
C 47754,1 ...then add one (for window frame at top) so we now have absolute y-coordinate of "finger"
C 47755,1 Load into B
C 47756,4 Store coordinates at #R23476
C 47760,3 Point HL at Attribute File address for character coordinates x=C, y=B
C 47763,3 Load B with x-coordinate of left edge of current window to draw (characters)...
C 47766,1 ...
C 47767,3 Load A with x-coordinate of right edge of current window...
C 47770,1 ...and subtract x-coordinate of left edge to get width
C 47771,1 Decrease width by one to take into account window frame width...
C 47772,1 ...and load into B
C 47773,1 Load attribute at current position in Attribute File into A
C 47774,2 Reset INK, BRIGHT and FLASH bits, preserving PAPER only
C 47776,1 Shift PAPER bits into INK bit slots...
C 47777,1 ...
C 47778,1 ...
C 47779,1 Store this value (new INK colour) in C
C 47780,1 Load attribute at current position in Attribute File into A
C 47781,1 Shift all bits right by three (i.e. INK bits now contain former PAPER colour)...
C 47782,1 ...
C 47783,1 ...
C 47784,2 Reset INK, BRIGHT and FLASH bits, preserving PAPER only (i.e. PAPER bits now contain former INK colour)
C 47786,1 Merge modified PAPER value back in, to give new attribute (i.e. swapped INK and PAPER colours)...
C 47787,1 ...and load into C
C 47788,1 Load attribute at current position in Attribute File into A
C 47789,2 Reset INK and PAPER bits, preserving BRIGHT and FLASH only...
C 47791,1 ...and merge in swapped INK and PAPER values
C 47792,1 Write this new attribute value back to the Attribute File
C 47793,1 Advance HL to next byte in Attribute File
C 47794,2 Decrease B (remaining number of characters to invert) and loop back to #R47792 for next character block
C 47796,1 Return
c 47797 Convert Numeric Value BC to ASCII String at Location HL
D 47797 Used by the routine at #R46837. Input:  BC  A numeric value HL  Points to location to hold a five-character string
C 47797,1 Store DE
C 47798,3 Point DE at table of powers of ten
C 47801,1 Store BC (value)
C 47802,1 Store HL (location to hold string)
C 47803,1 Store HL (location to hold string)
C 47804,1 Load BC (value) into HL...
C 47805,1 ...
C 47806,1 Swap DE (now value) and HL (now pointer to table of powers of ten)
C 47807,1 Read WORD at HL (power of ten) into BC...
C 47808,1 ...and advance HL by two bytes...
C 47809,1 ...
C 47810,1 ...
C 47811,1 Swap DE (now pointer to next power of ten) and HL (now value)
C 47812,2 Load A with 47 (ASCII code immediately prior to that for zero, "0")
C 47814,1 Increase A to next ASCII character
C 47815,1 (Re)Set carry flag
C 47816,2 Subtract (BC [power of ten] + carry flag) from HL (value)
C 47818,2 If carry flag was not set then loop back to #R47814
C 47820,1 Add power of ten back to HL
C 47821,1 Swap value on top of stack (now remaining value) with HL (now location to hold string)
C 47822,1 Store ASCII code in string and advance HL to next slot...
C 47823,1 ...
C 47824,1 Swap value on top of stack (pointer to current position in string) with HL (now remaining value)
C 47825,1 Decrease C to check if last power of ten (i.e. 1) has been reached...
C 47826,2 ...and if not, then loop back to #R47806 for next power of ten
C 47828,1 Restore HL
C 47829,1 Restore HL
C 47830,1 Restore BC
C 47831,1 Restore DE
C 47832,1 Return
c 47833 Clear Lower Two Thirds, and Lower Three Character Rows of Upper Third of Display File
D 47833 Used by the routine at #R38841.
C 47833,3 Load HL with Display File address corresponding to (0, 5) (characters)
C 47836,3 ...and move Bitmap Virtual Text Cursor here
C 47839,3 Load HL with 96 (repeat count)
C 47842,2 Load A with 32 (character code for SPACE)...
C 47844,3 ...and store at #R63305
C 47847,3 Draw three rows of SPACE characters and set HL to zero
C 47850,3 Load B with 0 (repeat inner loop 256 times) and C with 8 (repeat outer loop 8 times)
C 47853,3 Clear lower two thirds of Display File and return
c 47856 Clear Display File
D 47856 When this routine is entered via #R47856 and #R47862, B is set to zero. Upon reaching the DJNZ instruction (end of inner loop) at #R47871, B is already zero, so the loop will execute 256 times, clearing one twelfth of the Display File (two bytes cleared per PUSH, 256 PUSHes per loop).
C 47856,3 Load zero (all bits reset) into HL
C 47859,3 Load B with 0 (repeat inner loop 256 times) and C with 12 (repeat outer loop 12 times)
N 47862 This entry point is used by the routine at #R47833.
C 47862,1 Disable interrupts
C 47863,4 Store stack pointer at #R47876
C 47867,3 Point stack pointer at start of attribute section of video memory
C 47870,1 Decrease current stack pointer position by two and load two zeroes into it
C 47871,2 Loop back for next iteration
C 47873,1 Decrease C...
C 47874,2 ...and repeat if C is still greater than zero, to clear the remaining eleven twelfths of the Display File
C 47876,3 Restore stack pointer to original value [Operand set by instruction at #R47863]
C 47879,1 Enable interrupts
C 47880,1 Return
c 47881 Flood Attribute File with Value in ATTR T System Variable
D 47881 Used by the routine at #R37909.
C 47881,3 Load ATTR T system variable into A
C 47884,3 Load HL with start of attribute section of video memory
C 47887,3 Load DE with next byte up
C 47890,3 Load BC with length of data to copy (767 bytes = length of attribute area of video memory minus one)
C 47893,1 Load memory at HL with this attribute...
C 47894,2 ...and repeat 767 times
C 47896,1 Return
c 47897 Set Parameters for and Play Upward Scale Sound
D 47897 The value of A (set to zero at the start of this routine, or set to 1 before jumps from other routines into #R47902) is a delay constant that determines the speed at which the sound is played. Input:  A  (Entry at #R47902 only) Delay constant
C 47897,1 Set A to 0
C 47898,2 Set B to 13 (DEC C)
C 47900,1 Set HL to 0...
C 47901,1 ...
N 47902 This entry point is used by the routines at #R47930 and #R47938.
C 47902,3 Modify instruction at #R47915 with value of delay constant
C 47905,1 Load B into A
C 47906,3 Set instruction at #R47924
C 47909,3 Set instructions at #R47925 and #R47926
C 47912,3 Load A with current border colour
N 47915 The operand of the instruction at #R47915 represents the value of the delay constant. This is modified by the instruction at #R47902.
C 47915,2 Load C with delay constant
C 47917,2 Set border colour, and reset ear/speaker
C 47919,2 Invert ear/speaker bit of A
C 47921,1 Load C (delay constant) into B...
C 47922,2 ...and delay
N 47924 The instructions at #R47924 - #R47926 represent the manipulation of the delay constant between iterations of this routine. These instructions may decrease C by one, increase C by three or do nothing. These instructions are modified by the instructions at #R47906 and #R47909.
C 47924,1 Decrease / increase delay constant for next pass, increasing / decreasing pitch of tone respectively
C 47925,1 Do nothing, or increase delay constant
C 47926,1 Do nothing, or increase delay constant
C 47927,2 If delay constant is not zero, then loop back to continue playing tone
C 47929,1 Return
c 47930 Set Parameters for and Play Downward Scale Sound
D 47930 Used by the routines at #R37909, #R42494 and #R45809.
C 47930,1 Set parameters...
C 47931,2 ...(INC C)...
C 47933,1 ...
C 47934,1 ...
C 47935,1 ...
C 47936,2 ...and play sound
c 47938 Set Parameters for and Play Short Downward Scale Sound
D 47938 Used by the routines at #R45963 and #R46106.
C 47938,2 Set parameters...
C 47940,2 ...(INC C)...
C 47942,1 ...
C 47943,1 ...
C 47944,2 ...and play sound
c 47946 Play Hiss-Type Sound
D 47946 Used by the routines at #R64207 and #R64230.
c 47989 Set Parameters (for Cheat / Debug Routine Sound) and Play
D 47989 Used by the routine at #R64836.
C 47989,3 Load HL with bytecodes for instruction "ADD A,4"
C 47992,3 Load D with 0 and E with 0
C 47995,3 Load A with current border colour
C 47998,3 Set instruction at #R48010 to "ADD A,4" (opcodes in HL)
C 48001,2 Set current border colour and reset speaker state
C 48003,2 Flip "speaker" bit
C 48005,1 Copy E into B
C 48006,2 Delay for period determined by B
C 48008,1 Switch AF and AF'
C 48009,1 Copy E into A
C 48010,2 Change E (delay constant)...
C 48012,1 ...
C 48013,1 Switch AF and AF' again
C 48014,1 Decrease D (initially zero)...
C 48015,2 ...and repeat loop (256 times)
C 48017,1 Return
c 48018 Get Current Border Colour in A
D 48018 Used by the routines at #R47897, #R47946 and #R47989. Output: A  Current border colour (0 - 7)
C 48018,3 Get border & BASIC cursor area attribute
C 48021,1 Clear bits for 1, 2 and 4 to leave (border colour * 8) only...
C 48022,1 ...
C 48023,1 ...
C 48024,2 Ensure all other bits are cleared
C 48026,1 Return
c 48027 Fill a Region of Attribute File with Specified Attribute (e.g. Background Colour and Colour of Text Within)
D 48027 Used by the routine at #R47193.
C 48027,4 Load BC with the coordinates of the top-left corner of the area to fill
C 48031,3 Load HL with Attribute File address for coordinates (C, B)
N 48034 The operand of the instruction at #R48034 is an attribute value. This is modified by the instruction at #R47267.
C 48034,2 Load attribute to place into A
C 48036,1 Apply attribute data to Attribute File address in HL
C 48037,3 Load A with x-coordinate of right side of area to fill
C 48040,1 Check if left and right edges are at same x-coordinate (i.e. zero width)...
C 48041,3 ...and if so, skip to #R48057
C 48044,1 Increase C
C 48045,1 Copy C into A
C 48046,2 Ensure current x-coordinate doesn't exceed 31 (i.e. width of screen)
C 48048,1 Place back into C
C 48049,1 Get LSB of Attribute File address
C 48050,2 Decrease to nearest multiple of 32 (i.e. start of character row in Attribute File)
C 48052,1 Add x-offset (i.e. current x-coordinate, C)
C 48053,1 Update HL with x-offset
C 48054,3 Loop back to #R48034 to print next attribute block
C 48057,3 Get x-coordinate of left of area to fill
C 48060,1 Store in C
C 48061,3 Get y-coordinate of bottom of area to fill
C 48064,1 Compare with y-coordinate of top of area to fill
C 48065,1 If no difference between current y-coordinate and y-coordinate of bottom of area to fill then exit function and return
C 48066,1 Advance current y-coordinate down one unit
C 48067,1 Copy current y-coordinate into A...
C 48068,2 ...and ensure it doesn't exceed 24 (i.e. height of screen)...
C 48070,3 ...if it doesn't then skip ahead to #R48075...
C 48073,2 ...else set current y-coord to zero (top of screen)
C 48075,3 Load HL with Attribute File address for coordinates (C, B)
C 48078,3 Loop back to print next attribute block row
c 48081 Blank the Interior of an Area of the Display File (i.e. Set Bytes to Zero)
D 48081 Used by the routine at #R47193.
C 48081,2 Store IX
C 48083,4 Load B with y-coordinate of top, and C with x-coordinate of left of area to fill
C 48087,4 Load D with y-coordinate of bottom, and E with x-coordinate of right of area to fill
C 48091,1 Load HL with x-coordinate of left of area to fill...
C 48092,2 ...
C 48094,3 ...and store as operand of instruction at #R48140
C 48097,1 Load A with y-coordinate of bottom of area to fill...
C 48098,1 ...subtract B (y-coordinate of top of area to fill)...
C 48099,1 ...and add one to give number of rows to fill
C 48100,1 Multiply A by eight to get number of pixel rows to fill...
C 48101,1 ...
C 48102,1 ...
C 48103,3 ...and store as operand of instruction at #R48131
C 48106,1 Load A with y-coordinate of top of area to fill (characters)...
C 48107,1 ...and multiply by eight to get y-coordinate in pixels...
C 48108,1 ...
C 48109,1 ...
C 48110,1 Load y-coordinate (pixels) into HL...
C 48111,2 ...
C 48113,1 Double HL (as entries in table at #R65140 are two bytes wide)
C 48114,1 Store DE (coordinates of bottom right of area to fill)
C 48115,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 48118,1 Add HL as offset, in HL
C 48119,1 Restore DE (coordinates of bottom right of area to fill)
C 48120,1 Copy pointer to entry in table of Display File addresses for start of pixel row at top of area to fill from HL to IX...
C 48121,2 ...
C 48123,1 Load A with x-coordinate of right of area to fill (characters)...
C 48124,1 ...subtract C (x-coordinate of left of area to fill)...
C 48125,1 ...and load into HL...
C 48126,2 ...
C 48128,3 ...and store as operand of instruction at #R48147
N 48131 The operand of the instruction at #R48131 represents the number of pixel rows to fill. This is modified by the instruction at #R48103.
C 48131,2 Load B with number of pixel rows to fill
C 48133,1 Store BC (B = remaining number of pixel rows to fill)
C 48134,3 Load HL with Display File address of start of current pixel row...
C 48137,3 ...
N 48140 The operand of the instruction at #R48140 represents the x-coordinate of the area to fill (characters). This is modified by the instruction at #R48094.
C 48140,3 Load BC with x-coordinate of area to fill (characters)...
C 48143,1 ...and add to HL as offset
C 48144,1 Copy Display File address of left-most byte of top pixel row of area to fill from HL to DE...
C 48145,1 ...
C 48146,1 Advance DE to next address in Display File
N 48147 The operand of the instruction at #R48147 represents the width, minus 1, of the area to fill (characters). This is modified by the instruction at #R48128.
C 48147,3 Load BC with width, minus 1, of area to fill (characters)
C 48150,2 Set content of this address to zero...
C 48152,2 ...and repeat for remaining BC addresses, clearing entire pixel row within specified x-coordinates
C 48154,1 Restore BC (B = remaining number of pixel rows to fill)
C 48155,2 Advance IX by two bytes to point to start address of next pixel row down in Display File...
C 48157,2 ...
C 48159,2 Decrease B (remaining number of pixel rows to fill) and loop back to #R48133 if not zero
C 48161,2 Restore IX
C 48163,1 Return
c 48164 Draw all Objects in Magic Knight's Current Room
D 48164 Used by the routine at #R39393.
C 48164,4 Point IX at start of Objects' Current Positions Table
C 48168,2 Set current object to zero
C 48170,2 Set counter to 42 (as there are 42 objects, including "Nothing at All")
C 48172,3 Load A with Magic Knight's current room
C 48175,3 If object and Magic Knight are in the same room...
C 48178,3 ...then set Terrain Interaction Data for character blocks spanned by that object and draw
C 48181,1 Increase C
C 48182,2 Advance to next object...
C 48184,2 ...
C 48186,2 ...
C 48188,2 ...and loop back to #R48172 for next object
C 48190,1 Return
c 48191 Set Terrain Interaction Data for Character Blocks Spanned by an Object and Draw the Object
D 48191 Used by the routine at #R42638. Input:  A  Index of object to draw (entry at #R48191 only) B  y-coordinate (entry at #R48191 only) C  x-coordinate (entry at #R48191 only) IX  Position data for an object (entry at #R48202 only)
C 48191,4 Store object's position data temporarily at 23296 - 23298...
C 48195,3 ...x-coordinate...
C 48198,3 ...y-coordinate...
C 48201,1 Load index of object of interest into C
N 48202 This entry point is used by the routine at #R48164.
C 48202,1 Store BC
C 48203,2 Store IX
C 48205,1 Load HL with eight times current object index...
C 48206,1 ...
C 48207,1 ...
C 48208,1 ...
C 48209,2 ...
C 48211,1 ...
C 48212,3 Point DE at last byte (graphic index) of "Nothing at All" properties
C 48215,1 Add eight times current object index as offset
C 48216,1 Load graphic index into A
C 48217,1 Store AF (A = graphic index)
C 48218,1 Move pointer back one byte to point at attribute of object...
C 48219,1 ...
C 48220,3 ...and copy into System Variable ATTR T
C 48223,1 Move pointer back one byte to point at object's Terrain Interaction Parameter...
C 48224,1 ...and store at #R23473...
C 48225,3 ...
C 48228,1 Move pointer back one byte to point at object's Attribute Flags...
C 48229,1 ...load into A...
C 48230,2 ...clear upper four bits...
C 48232,3 ...and store as operand of instruction at #R48270
C 48235,3 Load C with x-coordinate of current object
C 48238,3 Load B with y-coordinate of current object
C 48241,1 Decrease y-coordinate by one to point to object's top-left character block
C 48242,1 Restore AF (A = graphic index)
C 48243,2 Store IX (pointer to position data for object)
C 48245,1 Store BC (x- and y-coordinates of object's top-left character block)
C 48246,3 Draw 2x2 graphic with lookup index A at character coordinates (C, B)
C 48249,1 Restore BC (x- and y-coordinates of object's top-left character block)
C 48250,1 Store BC (x- and y-coordinates of object's top-left character block)
C 48251,1 If object's y-coordinate is 4 (i.e. drawn in window at top while carrying mirror)...
C 48252,2 ...
C 48254,2 ...then skip ahead to #R48263
C 48256,3 If Player Attribute Update Flag is reset (Player Attribute Ignore mode)...
C 48259,1 ...
C 48260,3 ...then skip ahead to #R48298
C 48263,3 Load HL with Attribute File address for coordinates (C, B)
C 48266,3 Load E with value of system variable ATTR T...
C 48269,1 ...
N 48270 The operand of the instruction at #R48270 represents the object's Attribute Flags. This is modified by the instruction at #R48232.
C 48270,2 Load A with object's Attribute Flags
C 48272,2 If Paint Top-Left Flag is reset...
C 48274,2 ...then skip ahead to #R36190
C 48276,1 Paint top-left character block of object with object attribute
C 48277,1 Increase HL to move to top-right character block
C 48278,2 If Paint Top-Right Flag is reset...
C 48280,2 ...then skip ahead to #R48283
C 48282,1 Paint top-right character block of object with object attribute
C 48283,3 Advance HL by 31 bytes...
C 48286,1 ...to point to bottom-left character block of object
C 48287,2 If Paint Bottom-Left Flag is reset...
C 48289,2 ...then skip ahead to #R48292
C 48291,1 Paint bottom-left character block of object with object attribute
C 48292,1 Increase HL to move to bottom-right character block
C 48293,2 If Paint Bottom-Right Flag is reset...
C 48295,2 ...then skip ahead to #R48298
C 48297,1 Paint bottom-right character block of object with object attribute
C 48298,1 Store BC (x- and y-coordinates of object's top-left character block)
C 48299,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 48302,3 Load E with object's Terrain Interaction Parameter...
C 48305,1 ...
C 48306,3 Load A with object's Attribute Flags
C 48309,2 If Paint Top-Left Flag is reset...
C 48311,2 ...then skip ahead to #R48314
C 48313,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for top-left character block
C 48314,1 Increase HL to move to top-right character block
C 48315,2 If Paint Top-Right Flag is reset...
C 48317,2 ...then skip ahead to #R48320
C 48319,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for top-right character block
C 48320,3 Advance HL by 31 bytes...
C 48323,1 ...to point to bottom-left character block of object
C 48324,2 If Paint Bottom-Left Flag is reset...
C 48326,2 ...then skip ahead to #R48329
C 48328,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for bottom-left character block
C 48329,1 Increase HL to move to bottom-right character block
C 48330,2 If Paint Bottom-Right Flag is reset...
C 48332,2 ...then skip ahead to #R48335
C 48334,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for bottom-right character block
C 48335,2 Restore IX (pointer to position data for object)
C 48337,2 Restore IX
C 48339,1 Restore BC
C 48340,1 Return
c 48341 Remove Object C from a Character's Inventory and Tidy Up Remaining Entries
D 48341 Used by the routines at #R41748, #R42036, #R42157, #R42395, #R43636, #R44635, #R45149 and #R45256. Input:  B Number of inventory slots to check C  Index of object to be removed HL  Pointer to a character's current inventory
C 48341,1 Load A with inventory object
C 48342,1 If this matches index in C...
C 48343,2 ...then skip ahead to #R48349
C 48345,1 Advance to next inventory slot...
C 48346,2 ...and loop back to #R48341 for next slot
C 48348,1 Return if object not found
C 48349,1 Advance to next inventory slot
C 48350,1 Load object at this slot into A
C 48351,1 Move back to previous slot again
C 48352,1 Place object from next slot into current one
C 48353,1 Advance to next slot again
C 48354,2 Loop back to #R48349 (i.e. repeat for all remaining slots)
C 48356,1 Move back to previous slot (i.e. final slot for this character)...
C 48357,1 ...and set to empty...
C 48358,1 ...
C 48359,1 Return
c 48360 Draw a Line From (C, B) to (E, D)
D 48360 Used by the routines at #R40008 and #R40765. Input:  B  y-coordinate of start of line C  x-coordinate of start of line D  y-coordinate of end of line E  x-coordinate of end of line
C 48360,4 Load contents of DE into system variable COORDS (start point of line)
C 48364,1 Subtract y-coordinate of start of line from y-coordinate of end of line...
C 48365,1 ...to get delta-y
C 48366,2 Set direction of vertical change to +1 (upward)
C 48368,2 If delta-y is positive (i.e. upward) then skip ahead to #R48374
C 48370,1 Multiply delta-y by -1 (downward) to get absolute magnitude...
C 48371,1 ...
C 48372,2 Set direction of vertical change to -1 (downward)
C 48374,1 Load B with magnitude of difference in y-coordinate between start and end of line
C 48375,1 Subtract x-coordinate of start of line from y-coordinate of end of line...
C 48376,1 ...to get delta-x
C 48377,2 Set direction of horizontal change to +1 (rightward)
C 48379,2 If delta-x is positive (i.e. rightward) then skip ahead to #R48385
C 48381,1 Multiply delta-x by -1 (leftward) to get absolute magnitude...
C 48382,1 ...
C 48383,2 Set direction of vertical change to -1 (leftward)
C 48385,1 Load C with magnitude of difference in x-coordinate between start and end of line
C 48386,3 Draw the line (ROM routine) and return
c 48389 Print word in Temporary Text Buffer to screen, wrapping text if necessary, then process next word
D 48389 This routine prints the string of characters stored in the Temporary Text Buffer. If the string is longer than the available space to the right of the Virtual Text Cursor, then the cursor is wrapped, moving down to the next character row and to the left edge of the current window. Input:  A  A word-ending character (e.g. a SPACE) from a character string IX  Points to current position in Temporary Text buffer at #R25060
C 48389,3 Store character in temporary text buffer
C 48392,1 Store HL (pointer to current position in text to print)
C 48393,3 Load HL with address of Bitmap Virtual Text Cursor
C 48396,1 Load x-coordinate of the cursor into B, decreasing by one...
C 48397,1 ...
C 48398,2 ...
C 48400,1 ...
C 48401,3 Load x-coordinate of right edge of current window into A
C 48404,1 Subtract B to get distance to right-edge of window in A
C 48405,1 Store AF (A = distance to right-edge of window)
C 48406,3 Point HL at start of Temporary Text Buffer
C 48409,2 Set C to zero
C 48411,1 Load character from current position in Temporary Text Buffer into A
C 48412,2 If character is 32 (SPACE)...
C 48414,2 ...then skip ahead to #R48432 as end of word reached
C 48416,2 If character is 13 (Carriage return / line feed to start of next character row down)...
C 48418,2 ...then skip ahead to #R48432 as end of word reached
C 48420,2 If character is 14 (Carriage return / line feed to start of next character row down within window)...
C 48422,2 ...then skip ahead to #R48432 as end of word reached
C 48424,2 If character is 255 (End Marker)...
C 48426,2 ...then skip ahead to #R48432 as end of word reached
C 48428,1 Increase C (number of characters to print)
C 48429,1 Advance to next character in Temporary Text Buffer
C 48430,2 Loop back to #R48411
C 48432,1 Restore AF (A = distance to right-edge of window)
C 48433,1 Subtract C (number of characters)
C 48434,3 If result is negative (i.e. more characters than space) then move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next row of window
C 48437,3 Point HL at byte before start of Temporary Text Buffer
C 48440,1 Advance to next byte in Temporary Text Buffer
C 48441,1 Load character from current position in Temporary Text Buffer into A
C 48442,2 If character is 255 (End Marker)...
C 48444,2 ...then skip ahead to #R48510 (reset Temporary Text Buffer and load next word into it)
C 48446,2 If character is 32 (SPACE)...
C 48448,2 ...then skip ahead to #R48491
C 48450,2 If character is 13 (Carriage return / line feed to start of next character row down)...
C 48452,3 ...then skip ahead to #R48478
C 48455,2 If character is 14 (Carriage return / line feed to start of next character row down within window)...
C 48457,3 ...then skip ahead to #R48486
C 48460,2 If character is 9 (Move Virtual Text Cursor right one character)...
C 48462,3 ...then skip ahead to #R48470
C 48465,3 Print the character
C 48468,2 Loop back to #R48440
N 48470 Move Virtual Text Cursor right one character (9)
C 48470,1 Store HL (current position in Temporary Text Buffer)
C 48471,3 Advance Bitmap Virtual Text Cursor right by one character
C 48474,1 Restore HL (current position in Temporary Text Buffer)
C 48475,3 Jump to #R48440 for next character
N 48478 Carriage return / line feed to start of next character row down (13)
C 48478,3 Advance Bitmap Virtual Text Cursor to start of next character row
C 48481,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 48484,2 Skip ahead to #R48510 (reset Temporary Text Buffer and load next word into it)
N 48486 Carriage return / line feed to start of next character row down within window (14)
C 48486,3 Move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next row of window
C 48489,2 Skip ahead to #R48510 (reset Temporary Text Buffer and load next word into it)
N 48491 Print a SPACE (32)
C 48491,3 Load HL with address of Bitmap Virtual Text Cursor
C 48494,1 Strip out higher-order bits in L to leave only x-coordinate component...
C 48495,2 ...
C 48497,1 ...
C 48498,3 Load A with x-coordinate of right edge of current window plus one...
C 48501,1 ...
C 48502,1 If this is the same as the x-coordinate of the Bitmap Virtual Text Cursor...
C 48503,2 ...then skip ahead to #R48510 (reset Temporary Text Buffer and load next word into it, i.e. no need to print a SPACE)
C 48505,2 Print a SPACE character (chr. 32)...
C 48507,3 ...
N 48510 End Marker (255)
C 48510,1 Restore HL (pointer to current position in text to print)
C 48511,4 Point IX at start of Temporary Text Buffer
C 48515,3 Jump back to #R46924 to load next word into Temporary Text Buffer
c 48518 Move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next row of window
D 48518 Used by the routine at #R48389.
C 48518,3 Advance Bitmap Virtual Text Cursor to start of next character row
C 48521,3 Load HL with address of Bitmap Virtual Text Cursor
C 48524,3 Load A with x-coordinate of left edge of window
C 48527,1 Add this to address in HL to move cursor to left edge of window...
C 48528,1 ...
C 48529,3 ...and place the result back at #R63017
C 48532,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor and return
b 48535 List of Command Indices
D 48535 See trivia
B 48535,18,8*2,2
b 48553 Routine Start Addresses for Magic Knight's Commands (Main Menu)
W 48553,2,2 (00) - Process Command to Pick Up an Object
W 48555,2,2 (01) - Process Command to Drop an Object
W 48557,2,2 (02) - Process Command to Take an Object
W 48559,2,2 (03) - Process Command to Give an Object
W 48561,2,2 (04) - Process Command to Examine Yourself / A Character / An Object
W 48563,2,2 (05) - Process Command to Command a Character
W 48565,2,2 (06) - Unused [Set MK's available action flags and jump to start of Main Game Loop]
W 48567,2,2 (07) - Process Command to Teleport
W 48569,2,2 (08) - Process Command to Read an Object
W 48571,2,2 (09) - Process Command to Throw an Object
W 48573,2,2 (10) - Process Command to Cast a Spell
W 48575,2,2 (11) - Process Command to Blow an Object
W 48577,2,2 (12) - Process Command to Wear / Unwear an Object
W 48579,2,2 (13) - Process Command to Tickle a Character
W 48581,2,2 (14) - Process Command to Pull Lever
W 48583,2,2 (15) - Process Command to Smell Something
W 48585,2,2 (16) - Process Command to Have a Wish
W 48587,2,2 (17) - Process Command to Have a Drink
b 48589 List of Characters for "TRAVEL TO" Character Selection Menu
B 48589,1,1 Height = 10
B 48590,1,1 Aramis le Peux
B 48591,1,1 Robin of Shylock
B 48592,1,1 Reggie the Rat
B 48593,1,1 Rachel of Amazonia
B 48594,1,1 Barker the Ent
B 48595,1,1 Organon the Guard
B 48596,1,1 Grunter the Bearwoolf
B 48597,1,1 End Marker
b 48598 List of Characters for "SUMMON" Character Selection Menu
B 48598,1,1 Height = 6
B 48599,1,1 Aramis le Peux
B 48600,1,1 Robin of Shylock
B 48601,1,1 Rachel of Amazonia
B 48602,1,1 End Marker
b 48603 Magic Knight's Initial Data
D 48603 See also #R24840 for Magic Knight's Current Data
B 48603,1,1 x-coordinate (pixels)
B 48604,1,1 y-coordinate (pixels)
B 48605,1,1 Unused
B 48606,1,1 Index of current frame
B 48607,1,1 x-velocity (pixels) [walking / jumping sideways, usually 2 for right and 254 / -2 for left]
B 48608,1,1 y-velocity (pixels) [jumping]
B 48609,1,1 Attribute
B 48610,1,1 Unused
b 48611 Characters' Initial Inventories
D 48611 See also #R24848 for Characters' Current Inventories
B 48611,5,5 Magic Knight (carrying)
B 48616,5,5 Magic Knight (wearing)
B 48621,5,5 Off-White Knight
B 48626,5,5 Aramis le Peux
B 48631,5,5 Robin of Shylock
B 48636,5,5 Reggie the Rat
B 48641,5,5 Rachel of Amazonia
B 48646,5,5 Barker the Ent
B 48651,5,5 Organon the Guard
B 48656,5,5 Grunter the Bearwoolf
b 48661 Characters' Initial Positions
D 48661 Eight groups of three bytes, one group per character (excluding Magic Knight). The values are:
B 48661,3,3 Off-White Knight
B 48664,3,3 Aramis le Peux
B 48667,3,3 Robin of Shylock
B 48670,3,3 Reggie the Rat
B 48673,3,3 Rachel of Amazonia
B 48676,3,3 Barker the Ent
B 48679,3,3 Organon the Guard
B 48682,3,3 Grunter the Bearwoolf
b 48685 Objects' Initial Positions
D 48685 Forty-two groups of three bytes, one group per object. The values are:
B 48685,3,3 (00) - Nothing at all
B 48688,3,3 (01) - Disquise
B 48691,3,3 (02) - Crystal Ball
B 48694,3,3 (03) - Wand of Command
B 48697,3,3 (04) - Teddy Bear
B 48700,3,3 (05) - Stick of Dynamite
B 48703,3,3 (06) - Magic Talisman
B 48706,3,3 (07) - Broken Glass
B 48709,3,3 (08) - Broken Glass
B 48712,3,3 (09) - Broken Glass
B 48715,3,3 (10) - Horse Feather
B 48718,3,3 (11) - Power Boots
B 48721,3,3 (12) - Glow Shield
B 48724,3,3 (13) - Chicken
B 48727,3,3 (14) - Boomerang
B 48730,3,3 (15) - Sword
B 48733,3,3 (16) - Brass Ankh
B 48736,3,3 (17) - Bottle of Liquid
B 48739,3,3 (18) - Bottle of Liquid
B 48742,3,3 (19) - Torch
B 48745,3,3 (20) - Mirror
B 48748,3,3 (21) - Gadget X
B 48751,3,3 (22) - Elf-Horn
B 48754,3,3 (23) - Silver Arrow
B 48757,3,3 (24) - Instruction Book
B 48760,3,3 (25) - Magic Missile
B 48763,3,3 (26) - Advert
B 48766,3,3 (27) - Scroll
B 48769,3,3 (28) - Empty Bottle
B 48772,3,3 (29) - Empty Bottle
B 48775,3,3 (30) - Shield
B 48778,3,3 (31) - Teleport Key
B 48781,3,3 (32) - Teleport Pad
B 48784,3,3 (33) - Newspaper
B 48787,3,3 (34) - List of Clues
B 48790,3,3 (35) - Bow
B 48793,3,3 (36) - Golden Egg
B 48796,3,3 (37) - Silver Egg
B 48799,3,3 (38) - Copper Egg
B 48802,3,3 (39) - Golden Egg
B 48805,3,3 (40) - Silver Egg
B 48808,3,3 (41) - Copper Egg
b 48811 Room Connectivity Data
D 48811 Two values per room:
B 48811,2,2 (00) - Limbo
B 48813,2,2 (01) - Outdoors, 0 (Bearwoolf's Hoard)
B 48815,2,2 (02) - Outdoors, 1 (Bearwoolf's Cave)
B 48817,2,2 (03) - Outdoors, 2 (Beware Bearwoolf)
B 48819,2,2 (04) - Outdoors, 3 (The Spooky Forest, 1)
B 48821,2,2 (05) - Outdoors, 4
B 48823,2,2 (06) - Outdoors, 5 (The Spooky Forest, 2)
B 48825,2,2 (07) - Outdoors, 6 (The Sword in the Concrete)
B 48827,2,2 (08) - Outdoors, 7 (Robin's Little Hut)
B 48829,2,2 (09) - Outdoors, 8 (Exit from Limbo)
B 48831,2,2 (10) - Outdoors, 9 (More Spooky Forest)
B 48833,2,2 (11) - Outdoors, 10 (Entwood)
B 48835,2,2 (12) - Outdoors, 11 (The Spooky Forest, 3)
B 48837,2,2 (13) - Outdoors, 12 (The Spooky Forest, 4)
B 48839,2,2 (14) - Outdoors, 13 (Wishing Well)
B 48841,2,2 (15) - Outdoors, 14
B 48843,2,2 (16) - Outdoors, 15 (The Castle Entrance)
B 48845,2,2 (17) - Castle Ground Floor, 0 (One Axe Room)
B 48847,2,2 (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
B 48849,2,2 (19) - Castle Ground Floor, 2
B 48851,2,2 (20) - Castle Ground Floor, 3
B 48853,2,2 (21) - Castle Ground Floor, 4 (More Axe Problems)
B 48855,2,2 (22) - Castle Ground Floor, 5 (Even More Axes)
B 48857,2,2 (23) - Castle Ground Floor, 6 (The First Jump Chute)
B 48859,2,2 (24) - Castle First Floor, 0 (Main Lever 7)
B 48861,2,2 (25) - Castle First Floor, 1 (Main Lever 6)
B 48863,2,2 (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
B 48865,2,2 (27) - Castle First Floor, 3 (Main Lever 4)
B 48867,2,2 (28) - Castle First Floor, 4 (Main Lever 3)
B 48869,2,2 (29) - Castle First Floor, 5 (Main Lever 2)
B 48871,2,2 (30) - Castle First Floor, 6 (Main Lever 1)
B 48873,2,2 (31) - Castle Second Floor, 0 (The Broken Teleport)
B 48875,2,2 (32) - Castle Second Floor, 1 (Terrible Twins)
B 48877,2,2 (33) - Castle Second Floor, 2 (The Guardian Statues)
B 48879,2,2 (34) - Castle Second Floor, 3 (One Way Corridor, 1)
B 48881,2,2 (35) - Castle Second Floor, 4 (One Way Corridor, 2)
B 48883,2,2 (36) - Castle Second Floor, 5 (One Way Corridor, 3)
B 48885,2,2 (37) - Castle Second Floor, 6
B 48887,2,2 (38) - Castle Third Floor, 0 (Big White Statue)
B 48889,2,2 (39) - Castle Third Floor, 1
B 48891,2,2 (40) - Castle Third Floor, 2 (Teleport Room, 1)
B 48893,2,2 (41) - Castle Third Floor, 3 (One Way Corridor, 4)
B 48895,2,2 (42) - Castle Third Floor, 4 (One Way Corridor, 5)
B 48897,2,2 (43) - Castle Third Floor, 5 (One Way Corridor, 6)
B 48899,2,2 (44) - Castle Third Floor, 6
B 48901,2,2 (45) - Spaceship, 0 (The Control Room)
B 48903,2,2 (46) - Spaceship, 1 (Many Screened Room)
B 48905,2,2 (47) - Spaceship, 2 (Teleport Room, 2)
B 48907,2,2 (48) - Spaceship, 3
B 48909,2,2 (49) - Spaceship, 4 (The Power Plant)
B 48911,2,2 (50) - Spaceship, 5
B 48913,2,2 (51) - Spaceship, 6
b 48915 Character Movement Restriction Data
D 48915 The values in this table serve to restrict the movement of characters in two ways:
B 48915,2,2 (00) - Limbo
B 48917,2,2 (01) - Outdoors, 0 (Bearwoolf's Hoard)
B 48919,2,2 (02) - Outdoors, 1 (Bearwoolf's Cave)
B 48921,2,2 (03) - Outdoors, 2 (Beware Bearwoolf)
B 48923,2,2 (04) - Outdoors, 3 (The Spooky Forest, 1)
B 48925,2,2 (05) - Outdoors, 4
B 48927,2,2 (06) - Outdoors, 5 (The Spooky Forest, 2)
B 48929,2,2 (07) - Outdoors, 6 (The Sword in the Concrete)
B 48931,2,2 (08) - Outdoors, 7 (Robin's Little Hut)
B 48933,2,2 (09) - Outdoors, 8 (Exit from Limbo)
B 48935,2,2 (10) - Outdoors, 9 (More Spooky Forest)
B 48937,2,2 (11) - Outdoors, 10 (Entwood)
B 48939,2,2 (12) - Outdoors, 11 (The Spooky Forest, 3)
B 48941,2,2 (13) - Outdoors, 12 (The Spooky Forest, 4)
B 48943,2,2 (14) - Outdoors, 13 (Wishing Well)
B 48945,2,2 (15) - Outdoors, 14
B 48947,2,2 (16) - Outdoors, 15 (The Castle Entrance)
B 48949,2,2 (17) - Castle Ground Floor, 0 (One Axe Room)
B 48951,2,2 (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
B 48953,2,2 (19) - Castle Ground Floor, 2
B 48955,2,2 (20) - Castle Ground Floor, 3
B 48957,2,2 (21) - Castle Ground Floor, 4 (More Axe Problems)
B 48959,2,2 (22) - Castle Ground Floor, 5 (Even More Axes)
B 48961,2,2 (23) - Castle Ground Floor, 6 (The First Jump Chute)
B 48963,2,2 (24) - Castle First Floor, 0 (Main Lever 7)
B 48965,2,2 (25) - Castle First Floor, 1 (Main Lever 6)
B 48967,2,2 (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
B 48969,2,2 (27) - Castle First Floor, 3 (Main Lever 4)
B 48971,2,2 (28) - Castle First Floor, 4 (Main Lever 3)
B 48973,2,2 (29) - Castle First Floor, 5 (Main Lever 2)
B 48975,2,2 (30) - Castle First Floor, 6 (Main Lever 1)
B 48977,2,2 (31) - Castle Second Floor, 0 (The Broken Teleport)
B 48979,2,2 (32) - Castle Second Floor, 1 (Terrible Twins)
B 48981,2,2 (33) - Castle Second Floor, 2 (The Guardian Statues)
B 48983,2,2 (34) - Castle Second Floor, 3 (One Way Corridor, 1)
B 48985,2,2 (35) - Castle Second Floor, 4 (One Way Corridor, 2)
B 48987,2,2 (36) - Castle Second Floor, 5 (One Way Corridor, 3)
B 48989,2,2 (37) - Castle Second Floor, 6
B 48991,2,2 (38) - Castle Third Floor, 0 (Big White Statue)
B 48993,2,2 (39) - Castle Third Floor, 1
B 48995,2,2 (40) - Castle Third Floor, 2 (Teleport Room, 1)
B 48997,2,2 (41) - Castle Third Floor, 3 (One Way Corridor, 4)
B 48999,2,2 (42) - Castle Third Floor, 4 (One Way Corridor, 5)
B 49001,2,2 (43) - Castle Third Floor, 5 (One Way Corridor, 6)
B 49003,2,2 (44) - Castle Third Floor, 6
B 49005,2,2 (45) - Spaceship, 0 (The Control Room)
B 49007,2,2 (46) - Spaceship, 1 (Many Screened Room)
B 49009,2,2 (47) - Spaceship, 2 (Teleport Room, 2)
B 49011,2,2 (48) - Spaceship, 3
B 49013,2,2 (49) - Spaceship, 4 (The Power Plant)
B 49015,2,2 (50) - Spaceship, 5
B 49017,2,2 (51) - Spaceship, 6
b 49019 Magic Knight's y-Velocities Sequence for Jumping and Falling
D 49019 This is the sequence of y-velocity increments / decrements applied to Magic Knight's y-coordinate when he is jumping or falling. The data is zero-terminated.
B 49019,15,2*7,1
b 49034 Window Data
D 49034 Eight bytes per window. The meaning of the data is:
B 49034,8,8 (00) Main Menu (Game) Window
B 49042,8,8 (01) Command Summary Window
B 49050,8,8 (02)
B 49058,8,8 (03) Character Selection Window
B 49066,8,8 (04) List of objects window (menu or info)
B 49074,8,8 (05) "STORMBRINGER A TRUE GRAPHIC ADVENTURE..." window above Control Selection Window
B 49082,8,8 (06) Control Selection Window
B 49090,8,8 (07) "REDEFINE THE GAME" Window
B 49098,8,8 (08) Redefine Keys / Instructions Window
B 49106,8,8 (09) Instructions Window
B 49114,8,8 (10) "WELL DONE..." Window
B 49122,8,8 (11)
B 49130,8,8 (12)
B 49138,8,8 (13)
B 49146,8,8 (14) "PRESS FIRE TO CONTINUE" Window
B 49154,8,8 (15)
B 49162,8,8 (16) "EXAMINE WHAT?" Window
B 49170,8,8 (17)
B 49178,8,8 (18) "EXAMINE YOURSELF" / "EXAMINE CHARACTER" Window
B 49186,8,8 (19) Frame around portrait of character on "EXAMINE CHARACTER" and "EXAMINE YOURSELF" windows
B 49194,8,8 (20) "EXAMINE OBJECT" Window
B 49202,8,8 (21) Frame around object in "EXAMINE OBJECT" Window
B 49210,8,8 (22) "THE BEAR SAYS..." Window
B 49218,8,8 (23) "WHICH COMMAND DO YOU WANT TO USE?" ("COMMAND [CHARACTER] TO...") Window
B 49226,8,8 (24) Game Over Window
B 49234,8,8 (25) "[CHARACTER] IS ASLEEP" Window
B 49242,8,8 (26) "SOMEBODY SWITCHED OUT THE LIGHT..." Window
B 49250,8,8 (27)
B 49258,8,8 (28)
B 49266,8,8 (29)
B 49274,8,8 (30) Spell Selection Window
b 49282 Characters' Initial Stats
D 49282 Nine groups of eight bytes, one group per character (including Magic Knight). The values are capped at 100:
B 49282,8,8 Magic Knight
B 49290,8,8 Off-White Knight
B 49298,8,8 Aramis le Peux
B 49306,8,8 Robin of Shylock
B 49314,8,8 Reggie the Rat
B 49322,8,8 Rachel of Amazonia
B 49330,8,8 Barker the Ent
B 49338,8,8 Organon the Guard
B 49346,8,8 Grunter the Bearwoolf
b 49354 Table of Object Properties
D 49354 Forty-two groups of eight bytes, one group per object (including "Nothing at All"). The values are:
B 49354,8,8 (00) - Nothing at all
B 49362,8,8 (01) - Disquise
B 49370,8,8 (02) - Crystal Ball
B 49378,8,8 (03) - Wand of Command
B 49386,8,8 (04) - Teddy Bear
B 49394,8,8 (05) - Stick of Dynamite
B 49402,8,8 (06) - Magic Talisman
B 49410,8,8 (07) - Broken Glass
B 49418,8,8 (08) - Broken Glass
B 49426,8,8 (09) - Broken Glass
B 49434,8,8 (10) - Horse Feather
B 49442,8,8 (11) - Power Boots
B 49450,8,8 (12) - Glow Shield
B 49458,8,8 (13) - Chicken
B 49466,8,8 (14) - Boomerang
B 49474,8,8 (15) - Sword
B 49482,8,8 (16) - Brass Ankh
B 49490,8,8 (17) - Bottle of Liquid
B 49498,8,8 (18) - Bottle of Liquid
B 49506,8,8 (19) - Torch
B 49514,8,8 (20) - Mirror
B 49522,8,8 (21) - Gadget X
B 49530,8,8 (22) - Elf-Horn
B 49538,8,8 (23) - Silver Arrow
B 49546,8,8 (24) - Instruction Book
B 49554,8,8 (25) - Magic Missile
B 49562,8,8 (26) - Advert
B 49570,8,8 (27) - Scroll
B 49578,8,8 (28) - Empty Bottle
B 49586,8,8 (29) - Empty Bottle
B 49594,8,8 (30) - Shield
B 49602,8,8 (31) - Teleport Key
B 49610,8,8 (32) - Teleport Pad
B 49618,8,8 (33) - Newspaper
B 49626,8,8 (34) - List of Clues
B 49634,8,8 (35) - Bow
B 49642,8,8 (36) - Golden Egg
B 49650,8,8 (37) - Silver Egg
B 49658,8,8 (38) - Copper Egg
B 49666,8,8 (39) - Golden Egg
B 49674,8,8 (40) - Silver Egg
B 49682,8,8 (41) - Copper Egg
b 49690 Table of x- and y-Coordinates of Positions Taken by Summoned Characters in Each Room
D 49690 x- and y-coordinates at which a summoned character will initially appear for each room. Values are:
B 49690,2,2 (00) - Limbo
B 49692,2,2 (01) - Outdoors, 0 (Bearwoolf's Hoard)
B 49694,2,2 (02) - Outdoors, 1 (Bearwoolf's Cave)
B 49696,2,2 (03) - Outdoors, 2 (Beware Bearwoolf)
B 49698,2,2 (04) - Outdoors, 3 (The Spooky Forest, 1)
B 49700,2,2 (05) - Outdoors, 4
B 49702,2,2 (06) - Outdoors, 5 (The Spooky Forest, 2)
B 49704,2,2 (07) - Outdoors, 6 (The Sword in the Concrete)
B 49706,2,2 (08) - Outdoors, 7 (Robin's Little Hut)
B 49708,2,2 (09) - Outdoors, 8 (Exit from Limbo)
B 49710,2,2 (10) - Outdoors, 9 (More Spooky Forest)
B 49712,2,2 (11) - Outdoors, 10 (Entwood)
B 49714,2,2 (12) - Outdoors, 11 (The Spooky Forest, 3)
B 49716,2,2 (13) - Outdoors, 12 (The Spooky Forest, 4)
B 49718,2,2 (14) - Outdoors, 13 (Wishing Well)
B 49720,2,2 (15) - Outdoors, 14
B 49722,2,2 (16) - Outdoors, 15 (The Castle Entrance)
B 49724,2,2 (17) - Castle Ground Floor, 0 (One Axe Room)
B 49726,2,2 (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
B 49728,2,2 (19) - Castle Ground Floor, 2
B 49730,2,2 (20) - Castle Ground Floor, 3
B 49732,2,2 (21) - Castle Ground Floor, 4 (More Axe Problems)
B 49734,2,2 (22) - Castle Ground Floor, 5 (Even More Axes)
B 49736,2,2 (23) - Castle Ground Floor, 6 (The First Jump Chute)
B 49738,2,2 (24) - Castle First Floor, 0 (Main Lever 7)
B 49740,2,2 (25) - Castle First Floor, 1 (Main Lever 6)
B 49742,2,2 (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
B 49744,2,2 (27) - Castle First Floor, 3 (Main Lever 4)
B 49746,2,2 (28) - Castle First Floor, 4 (Main Lever 3)
B 49748,2,2 (29) - Castle First Floor, 5 (Main Lever 2)
B 49750,2,2 (30) - Castle First Floor, 6 (Main Lever 1)
B 49752,2,2 (31) - Castle Second Floor, 0 (The Broken Teleport)
B 49754,2,2 (32) - Castle Second Floor, 1 (Terrible Twins)
B 49756,2,2 (33) - Castle Second Floor, 2 (The Guardian Statues)
B 49758,2,2 (34) - Castle Second Floor, 3 (One Way Corridor, 1)
B 49760,2,2 (35) - Castle Second Floor, 4 (One Way Corridor, 2)
B 49762,2,2 (36) - Castle Second Floor, 5 (One Way Corridor, 3)
B 49764,2,2 (37) - Castle Second Floor, 6
B 49766,2,2 (38) - Castle Third Floor, 0 (Big White Statue)
B 49768,2,2 (39) - Castle Third Floor, 1
B 49770,2,2 (40) - Castle Third Floor, 2 (Teleport Room, 1)
B 49772,2,2 (41) - Castle Third Floor, 3 (One Way Corridor, 4)
B 49774,2,2 (42) - Castle Third Floor, 4 (One Way Corridor, 5)
B 49776,2,2 (43) - Castle Third Floor, 5 (One Way Corridor, 6)
B 49778,2,2 (44) - Castle Third Floor, 6
B 49780,2,2 (45) - Spaceship, 0 (The Control Room)
B 49782,2,2 (46) - Spaceship, 1 (Many Screened Room)
B 49784,2,2 (47) - Spaceship, 2 (Teleport Room, 2)
B 49786,2,2 (48) - Spaceship, 3
B 49788,2,2 (49) - Spaceship, 4 (The Power Plant)
B 49790,2,2 (50) - Spaceship, 5
B 49792,2,2 (51) - Spaceship, 6
b 49794 Table of 2x2 Block Style Definitions
D 49794 #TABLE(default,centre,:w) { =h Offset | =h Meaning } { 0 | Attribute } { 1 | Terrain interaction parameter to apply } { 2 | Terrain Interaction Parameter Painting Bitmap } { 3 | Unused } { 4 | Index of top-left udg } { 5 | Index of top-right udg } { 6 | Index of bottom-left udg } { 7 | Index of bottom-right udg } TABLE#
B 49794,16,8
B 49810,8,8 (unused)
B 49818,8,8 (unused)
B 49826,8,8
B 49834,8,8 (unused)
B 49842,8,8 (unused)
B 49850,8,8 (unused)
B 49858,8,8 (unused)
B 49866,8,8 (unused)
B 49874,8,8 (unused)
B 49882,8,8 (unused)
B 49890,8,8 (unused)
B 49898,8,8
B 49906,8,8 (unused)
B 49914,8,8
B 49922,8,8 (unused)
B 49930,8,8 (unused)
B 49938,8,8 (unused)
B 49946,16,8
B 49962,8,8 (unused)
B 49970,8,8 (unused)
B 49978,8,8
B 49986,8,8 (unused)
B 49994,8,8
B 50002,8,8 (unused)
B 50010,8,8
B 50018,8,8 (unused)
B 50026,8,8
B 50034,8,8 (unused)
B 50042,8,8 (unused)
B 50050,8,8 (unused)
B 50058,8,8
B 50066,8,8 (unused)
B 50074,8,8 (unused)
B 50082,8,8 (unused)
b 50090 Initial Control Selection Menu Text
T 50090,3,B3 KEYBOARD KEMPSTON JOYSTICK CURSOR JOYSTICK SINCLAIR JOYSTICK 1 CHANGE GAME OPTIONS INSTRUCTIONS PLAY GAME
T 50093,45,B3*4,B3:7:B1:7:B1,B4:1:B1,B1:5:B1,B1
b 50138 Instructions Text
T 50138,15,12:B3 AFTER RETURNING FROM THE STARSHIP USS PISCES IN THE 25TH CENTURY MAGIC KNIGHT FINDS THAT THE OTHERWISE QUIET VILLAGE OF CORNHAMP-ON-MARSH HAS BEEN ATTACKED BY A DESPOT CALLING HIMSELF THE OFF-WHITE KNIGHT. OFF-WHITE IS THE DREADED STORMBRINGER!
T 50153,143,23:B1,13:B1:1,6:B2:16,8:B1:18,B1:17:B1:7,1:B2:8:B1,B1:2,B1:1:B2,1:B1:3:B1:1,B1
T 50296,12,B1:1:B2:2:B1:3:B2 THE KEYS ARE :- N = LEFT     M = RIGHT A = JUMP/UP  Z = DOWN - = MENU (FIRE)
T 50308,52,2:B1:4:B1:3:B1:5:B1,2:B1:10:B1:4:B1,2:B1:11,B1
T 50360,12,1:B2:8:B1 THIS GAME FEATURES WINDIMATION+ STARRING YOU AS MAGIC KNIGHT WITH ARAMIS, ROBIN, REGGIE, RACHEL, BARKER, ORGANON, AND GRUNTER (see trivia)
T 50372,77,B1:13:B1,B1:2:B3:6:B4,B2:1:B1:3:B2,B2:2:B2:1:B1:1:B1,B2:1:B1:2:B1:1:B1,1:B1:2:B1:1:B1*2,1:B2,B1
b 50449 "REDEFINE THE GAME" Window Text
T 50449,7,B7 REDEFINE THE GAME REDEFINE KEYBOARD PLAYER ATTRIBUTE IGNORE PLAYER ATTRIBUTE UPDATE SAVE THE GAME LOAD AN OLD GAME DO NOTHING
T 50456,57,B4,B3:3:B1:2:B1,B3:7:B1,B3:5:B3,B1:5:B1:4:B2,B3:3:B1,B1
N 50513 "Redefine Keys Window" Text
T 50513,19,10:B1:7:B1 ENTER NEW KEY CHOICE OR PRESS ENTER TO EXIT N = LEFT     M = RIGHT A = JUMP/UP  Z = DOWN 0 = MAIN MENU
T 50532,62,3:B1:7:B1:2:B2,2:B1:4:B1:3:B1:5:B1,2:B1:10:B1:4:B1,2:B2:4,B1
T 50594,15,12:B1:1:B1 SAVE & LOAD ARE NOT ALLOWED HERE. START A GAME THEN READ GADGET X
T 50609,31,B1:5:B1:1:B1,6:B2:5,B1:4:B1:2,B1
b 50640 Miscellaneous Text 2
T 50640,4,B4 STORMBRINGER A TRUE GRAPHIC ADVENTURE BY DAVID JONES COPYRIGHT 1987 (see trivia)
T 50644,38,1:B1:4:B1,18:B1,B3:3:B2,B3,B1
T 50682,11,B4:1:B1:4:B1 STORMBRINGER 48K COPYRIGHT DAVID JONES 1987 FROM MASTERTRONIC 1987
T 50693,21,B3:2:B2:1:B2,B1:1:B1:5:B2,B1
T 50714,16,B1:6:B1:8 PRESS FIRE TO CONTINUE
T 50730,1,B1
T 50731,1,B1 EXECUTE COMMAND REJECT COMMAND
T 50732,21,B1:8:B2,B1:7:B1,B1
T 50753,1,B1 carriage return / line feed}{move text cursor right by two characters
T 50754,2,B1
T 50756,6,B1:4:B1 GAME OVER TOTAL COMPLETION 000 % TIME LEFT 30 HOURS
T 50762,40,23,B1:14:B1,B1
T 50802,2,B2 COMMAND
T 50804,1,B1
T 50805,3,B3 STORMBRINGER
T 50808,1,B1
T 50809,1,B1 Height = 5
T 50810,6,B2:1:B1:2 BREAK KEY PRESSED
T 50816,1,B1
T 50817,1,B1 Height = 7
T 50818,7,B1:5:B1 YOU HURT YOURSELF MOVING AROUND IN THE DARK
T 50825,20,3:B1:10:B1,4,B1
T 50845,1,B1 Height = 8
T 50846,3,B3 YOU KILLED YOURSELF TRYING TO THROW THE {name of Current Object} AT {short name of Current Character}
T 50849,15,3:B3:1:B1,B1:4:B1,B1
T 50864,1,B1 Height = 6
T 50865,10,B1:6:B2:1 YOU THREW THE {name of Current Object} AND KILLED {short name of Current Character}
T 50875,4,B3,B1
T 50879,1,B1 Height = 9
T 50880,20,10:B1:9 I SUPPOSE YOU REALISED THAT THIS IS A SPELL TO QUIT THE GAME BUT PRESSING THE BREAK KEY IS MUCH QUICKER !
T 50900,37,B5:1,B1:2:B1:1:B3:1,B5:1,B1:14,B1
b 50937 Miscellaneous Text 3
T 50937,9,B1:1:B1:6 short name of Current Character} IS ASLEEP
T 50946,1,B1
T 50947,11,10:B1 WELL DONE! MAGIC KNIGHT IS WHOLE AGAIN! MAGIC KNIGHT IS NOW IN NEED OF A NICE LONG REST.
T 50958,48,B1:1:B1:13,B1:1:B2:10:B1,B1:15,B1
T 51006,1,B1 Height = 8
T 51007,16,B1:15 YOU HAVE COMPLETED YOUR TASK AND MAGIC KNIGHT HAS DECIDED TO RETIRE.
T 51023,27,B1:5:B2:1,B1:8:B1:7,B1
T 51050,16,B3:13 STRENGTH    1  2  3  4  5
T 51066,1,B1
N 51067 Placeholder for three-digit number (Magic Knight's strength and/or cave progress)
T 51067,3,3 ---
T 51070,1,B1
T 51071,1,B1 Height = 5
T 51072,17,B1:5:B1:10 YOU DIED OF EXHAUSTION
T 51089,1,B1
T 51090,1,B1 Height = 10
T 51091,2,B1:1 full name of Current Character} KILLED YOU AS YOU APPROACHED. GREAT CARE IS NEEDED WITH {short name of Current Character} BECAUSE IT DOES NOT KNOW ITS OWN STRENGTH
T 51093,70,B2:3:B1,19:B1:1,B1:8:B1:2:B1:1,8:B1:6:B1,1:B1:2:B1:6:B1,B1
T 51163,1,B1 Unused
T 51164,1,B1 Height = 10
T 51165,3,B1:1:B1 OFF-WHITE KNIGHT SAYS "YOU FOOL! NOW I WILL TRULY BE THE MASTER OF ALL CREATION! WITHOUT YOU TO STOP ME I AM INVINCIBLE!" AS HE SPOKE OFF-WHITE PULLED A BLASTER FROM A CONCEALED POCKET AND DISINTEGRATED YOU
T 51168,142,B2:6:B1:4:B1,9:B1:7:B1,B1:12:B1:5,B2:13,11:B2,12:B1:1,B1:3:B1:8:B1,B1:17:B1,14:B1,B1
T 51310,1,B1 Height = 6
T 51311,10,B1:5:B1:3 YOU WERE KILLED BY OFF-WHITE KNIGHT.
T 51321,3,B1:1,B1
T 51324,1,B1 Height = 5
T 51325,9,B1:1:B1:4:B2 YOU RAN OUT OF TIME
T 51334,1,B1
T 51335,1,B1 Height = 2
T 51336,4,B2:1:B1 YOU ARE NOT CARRYING ANYTHING
T 51340,13,5:B1:5:B1,B1
T 51353,1,B1 Height = 2
T 51354,4,B2:1:B1 YOU ARE NOT WEARING ANYTHING
T 51358,9,B2:5:B1,B1
T 51367,2,B2 WHO DO YOU WANT TO
T 51369,12,7:B2:1:B1,B1
T 51381,1,B1 Height = 2
T 51382,4,B4 THERE IS NOBODY IN THIS ROOM
T 51386,6,3:B2,B1
T 51392,7,B1:1:B3:1:B1 name of Current Command} AN OBJECT FROM ?
T 51399,1,B1
T 51400,7,B1:1:B3:1:B1 name of Current Command} AN OBJECT TO ?
T 51407,1,B1
T 51408,4,B1:2:B1 name of Current Command} ?
T 51412,1,B1
T 51413,1,B1 SUMMON ?
T 51414,4,B1:1:B1,B1
T 51418,9,B1:1:B2:4:B1 THROW AN OBJECT AT ?
T 51427,1,B1
T 51428,5,B1:1:B1:1:B1 TRAVEL TO ?
T 51433,1,B1
b 51434 Main In-Game Menu Strings Permanent entries:
T 51434,18,B3:14:B1 COMMANDS AVAILABLE :- PICK UP AN OBJECT DROP AN OBJECT TAKE AN OBJECT GIVE AN OBJECT EXAMINE
T 51452,35,B3:8:B3,B2:1:B3*3,B2,B1
N 51487 Conditional entries:
T 51487,7,B3:1:B3 COMMAND A CHARACTER
T 51494,4,B2:1:B1 A (see trivia)
T 51498,4,B4 TELEPORT
T 51502,6,B3:1:B2 READ SOMETHING
T 51508,6,B3:1:B2 THROW SOMETHING
T 51514,7,B3:1:B3 CAST A SPELL
T 51521,6,B3:1:B2 BLOW SOMETHING
T 51527,10,B4:2:B1:1:B2 WEAR/UNWEAR OBJECT
T 51537,7,B3:1:B3 TICKLE A CHARACTER
T 51544,6,B3:1:B2 PULL LEVER
T 51550,6,B3:1:B2 SMELL SOMETHING
T 51556,10,B2:5:B3 HAVE A WISH
T 51566,10,B2:5:B3 HAVE A DRINK
T 51576,4,B2:1:B1 D (see trivia)
T 51580,4,B2:1:B1 E (see trivia)
T 51584,4,B2:1:B1 F (see trivia)
b 51588 Text Relating to "COMMAND A CHARACTER TO HELP" Command
T 51588,1,B1 Height = 3
T 51589,7,B1:1:B2:2:B1 short name of Current Character} SAYS "I WILL REQUIRE A GOLDEN EGG FOR MY SERVICES"
T 51596,23,B1:1:B3:1,15:B1,B1
T 51619,1,B1 Height = 6
T 51620,14,6:B1:1:B1:5 BRAVE {short name of Current Character} HAS SHOT BEARWOOLF FROM A NICE SAFE DISTANCE! IT HAS BEEN RETURNED TO ITS ORIGINAL FORM, A CUTE LITTLE TEDDY BEAR!
T 51634,75,B1:1:B2:10,10:B1:1:B1:5,9:B2:11,6:B1:6:B1:4,B1:1,B1
T 51709,1,B1 Height = 7
T 51710,5,B1:1:B3 short name of Current Character} SAYS "THE PASSWORD NUMBER FOR TODAY IS ---. YOU WILL NEED TO ENTER THIS NUMBER TO ACTIVATE THE CASTLE TELEPORT SYSTEM"
T 51715,79,20,6:B1:5:B2,5:B1:6:B1,7:B1:9:B1,B1:3:B1:1,6:B1,B1
b 51794 Text Relating to "PICK UP" Command
T 51794,16,B3:1:B1:10:B1 YOU ARE NOW CARRYING
T 51810,1,B1
T 51811,10,B1:8:B1 PICK UP THE
T 51821,1,B1
T 51822,1,B1 Height = 2
T 51823,4,B3:1 THERE IS NOTHING IN THIS ROOM
T 51827,6,3:B2,B1
T 51833,1,B1 Height = 2
T 51834,4,B3:1 THERE IS NOTHING NEAR ENOUGH
T 51838,11,6:B1:3,B1
T 51849,1,B1 Height = 2
T 51850,9,B1:6:B1:1 YOUR HANDS ARE FULL
T 51859,5,4,B1
T 51864,1,B1 Height = 3
T 51865,3,B2:1 THE {name of Current Object} IS TOO HEAVY FOR YOU
T 51868,17,B1:14,B1
b 51885 Teddy Bear is Scared Text
T 51885,1,B1 Height = 6
T 51886,6,B1:5 THE BEAR SAYS 'MAMA! MAMA! TEDDY IS SCARED!'
T 51892,28,B1,7,6,6:B1,2:B1:3,B1
b 51920 Text Relating to All Commands that Manipulate Objects
T 51920,7,B2:1:B2:1:B1 name of Current Command} WHICH OBJECT ?
T 51927,1,B1
T 51928,4,B2:1:B1 name of Current Command} THE
T 51932,1,B1
b 51933 Text Relating to "DROP" Command
T 51933,1,B1 Height = 8
T 51934,3,B2:1 THE {name of Current Object} BLEW UP! IT WAS NOT A VERY SAFE STICK OF {name of Current Object}
T 51937,33,9:B1:1,B3,16:B1,B1
T 51970,1,B1 Height = 2
T 51971,7,B1:3:B2:1 YOU CANNOT {name of Current Command} THE {name of Current Object}
T 51978,3,B2,B1
T 51981,1,B1 Height = 7
T 51982,13,B1:12 THE MAD JANITOR HAS SWEPT UP THE {name of Current Object} IT IS NOT ADVISED THAT YOU DROP THINGS HERE
T 51995,39,B1:9,B3,3:B2,8:B1,B2:8,B1
b 52034 Text Relating to "TAKE" Command
T 52034,4,B1:1:B2 name of Current Command} SOMETHING FROM
T 52038,1,B1
T 52039,2,1:B1 FROM
T 52041,1,B1
T 52042,1,B1 Height = 2
T 52043,10,B1:9 short name of Current Character}'S HANDS ARE EMPTY
T 52053,8,B1:6,B1
T 52061,1,B1 Height = 3
T 52062,5,B1:1:B1:2 short name of Current Character} WANTS TO KEEP THE {name of Current Object
T 52067,9,B1:5:B1,B1
T 52076,1,B1 Height = 4
T 52077,3,B1:1:B1 short name of Current Character} HAS {name of Current Command}N AN EGG IN EXCHANGE FOR THE {name of Current Object
T 52080,25,B1:2:B2:4,13:B1,B1
b 52105 Text Relating to "GIVE" Command
T 52105,2,1:B1 TO
T 52107,1,B1
T 52108,1,B1 Height = 2
T 52109,10,B1:9 short name of Current Character}'S HANDS ARE FULL
T 52119,7,B1:5,B1
T 52126,1,B1 Height = 2
T 52127,4,B1:1:B2 short name of Current Character} IS NOT STRONG ENOUGH
T 52131,13,8:B1:3,B1
T 52144,1,B1 Height = 3
T 52145,7,B1:6 short name of Current Character} DOES NOT WANT THE {name of Current Object
T 52152,6,B2:1:B1,B1
b 52158 Text Relating to "EXAMINE" Command
T 52158,3,B2:1 name of Current Command
T 52161,1,B1
T 52162,9,B1:7:B1 name of Current Command} WHAT ? OBJECT CHARACTER YOURSELF
T 52171,9,B3*2,B2,B1
T 52180,4,B1:1:B2 name of Current Command} {short name of Current Character} STRENGTH 99 HAPPINESS   99 STAMINA     99 MAGIC LVL.  99 FOOD LVL.   99
T 52184,67,B1:6:B1,15:B1,7:B1:5:B1,B1:10:B1,15:B1,B1
T 52251,4,B4 name of Current Command
T 52255,1,B1
T 52256,1,B1 WEIGHT     99 BLOW       . READ       . WEAR       .
T 52257,44,B2:6:B1:6:B1,B5:3:B1,B3:1:B2:2:B1,B5:3:B1,B1
b 52301 Characters' "Current Status" Texts
T 52301,1,B1 Unused
N 52302 (01) Magic Knight
T 52302,15,14:B1 PROGRESS 000 % TIME LEFT 48 HOURS
T 52317,16,B1:14,B1
N 52333 (02) Off-White Knight
T 52333,17,B1:1:B2:11:B2 OFF-WHITE IS THE OTHER HALF OF YOU
T 52350,1,B1
N 52351 (03) Aramis Le Peux
T 52351,33,B1:17:B1:1:B2:1:B1:3:B1:5 ARAMIS CAN'T WORK OUT WHERE THE SMELL IS COMING FROM!
T 52384,1,B1
N 52385 (04) Robin of Shylock
T 52385,32,B1:1:B2:11:B1:16 ROBIN IS A GOOD SHOT WITH POINTED STICKS
T 52417,1,B1
N 52418 (05) Reggie the Rat
T 52418,14,B1:1:B2:10 REGGIE IS NOT VERY CLEAN
T 52432,1,B1
N 52433 (06) Rachel of Amazonia
T 52433,16,B1:1:B1:13 RACHEL IS GOOD AT MATHS
T 52449,1,B1
N 52450 (07) Barker the Ent
T 52450,26,B1:1:B1:15:B1:7 BARKER IS INCREDIBLY OLD AND GNARLED
T 52476,1,B1
N 52477 (08) Organon the Guard
T 52477,13,B1:1:B1:10 ORGANON IS VERY TOUGH
T 52490,1,B1
N 52491 (09) Grunter the Bearwoolf
T 52491,19,B1:1:B2:15 GRUNTER IS A REAL TOUGH DUDE
T 52510,1,B1
T 52511,9,B1:1:B1:6 short name of Current Character} IS ASLEEP
T 52520,1,B1
b 52521 Miscellaneous Text 4
T 52521,1,B1 YOURSELF
T 52522,1,B1
b 52523 Text Relating to "COMMAND" Command
T 52523,2,B1:1 COMMAND
T 52525,1,B1
T 52526,17,B2:4:B2:1:B1:5:B2 WHICH COMMAND DO YOU WANT TO USE ? GO TO SLEEP WAKE UP GO AWAY HELP EAT & DRINK BE HAPPY
T 52543,47,B1:3:B1:5:B1,B1:7:B1*2,B3,B1:6:B2,B1:3:B1,B1
T 52590,9,3:B1:5 GO TO SLEEP
T 52599,1,B1
T 52600,7,7 WAKE UP
T 52607,1,B1
T 52608,7,7 GO AWAY
T 52615,1,B1
T 52616,1,B1 HELP
T 52617,1,B1
T 52618,7,6:B1 EAT & DRINK
T 52625,1,B1
T 52626,4,3:B1 BE HAPPY
T 52630,1,B1
T 52631,1,B1 Height = 3
T 52632,8,B1:6:B1 short name of Current Character} DOES NOT WANT TO BE COMMANDED BY YOU
T 52640,15,B1:1:B1:3,B1:6:B1,B1
T 52655,1,B1 Height = 2
T 52656,3,B1:1:B1 short name of Current Character} IS ALREADY ASLEEP
T 52659,9,B1:7,B1
T 52668,1,B1 Height = 3
T 52669,7,B1:1:B1:4 short name of Current Character} IS TOO WAKEFUL TO SLEEP
T 52676,15,8:B1:5,B1
T 52691,1,B1 Height = 2
T 52692,8,B1:1:B1:5 short name of Current Character} HAS GONE TO SLEEP
T 52700,7,B1:5,B1
T 52707,1,B1 Height = 2
T 52708,3,B1:1:B1 short name of Current Character} IS ALREADY AWAKE
T 52711,8,B1:6,B1
T 52719,1,B1 Height = 2
T 52720,3,B2:1 short name of Current Character} IS TOO TIRED TO WAKE UP
T 52723,8,7,B1
T 52731,1,B1 Height = 2
T 52732,3,B1:1:B1 short name of Current Character} HAS WOKEN UP
T 52735,9,8,B1
T 52744,1,B1 Height = 2
T 52745,3,B2:1 short name of Current Character} IS TOO TIRED TO GO AWAY
T 52748,8,7,B1
T 52756,1,B1 Height = 2
T 52757,3,B1:1:B1 short name of Current Character} HAS GONE AWAY
T 52760,10,9,B1
T 52770,1,B1 Height = 2
T 52771,6,B1:4:B1 short name of Current Character} CANNOT HELP YOU   (see trivia)
T 52777,4,B2:1,B1
T 52781,1,B1 Height = 3
T 52782,3,B2:1 short name of Current Character} IS TOO TIRED TO HELP YOU
T 52785,3,B2,B1
T 52788,1,B1 Height = 2
T 52789,3,B1:1:B1 short name of Current Character} HAS NO FOOD LEFT
T 52792,12,B1:10,B1
T 52804,1,B1 Height = 3
T 52805,3,B2:1 short name of Current Character} IS TOO TIRED TO EAT OR DRINK
T 52808,9,7,B1
T 52817,1,B1 Height = 2
T 52818,3,B1:1:B1 short name of Current Character} HAS TAKEN REFRESHMENT
T 52821,15,B1:13,B1
T 52836,1,B1 Height = 3
T 52837,3,B2:1 short name of Current Character} IS TOO TIRED TO BE HAPPY
T 52840,5,3,B1
T 52845,1,B1 Height = 2
T 52846,3,B1:1:B1 short name of Current Character} WILL TRY TO BE HAPPY
T 52849,10,4:B1:3:B1,B1
b 52859 Text Relating to "READ" Command
T 52859,1,B1 Height = 3
T 52860,4,B3:1 THERE IS NO WRITING FOR ME TO {name of Current Command}
T 52864,14,2:B2:7,B2,B1
b 52878 List of Read-Texts of Readable Objects 00: Disquise
T 52878,1,B1 Height = 11
T 52879,4,B4 name of Current Object} MAGIC DISQUISE KIT. THIS KIT CONTAINS 6 DISQUISES 1. FOOTMAN 2. GUARD 3. WIZARD 4. CHAMBERMAID 5. WHITE WITCH 6. WARRIOR
T 52883,56,B1:1:B1:2:B1:1:B1,B1:1:B1:12:B1:1:B1,3:B2*5,3:B1,B1
N 52939 01: Newspaper
T 52939,1,B1 Height = 11
T 52940,3,B3 name of Current Object} SITUATIONS VACANT : {Current Newspaper substring
T 52943,21,1:B1:16:B1,B1
N 52964 02: Teddy Bear
T 52964,1,B1 Height = 4
T 52965,3,B3 name of Current Object} TNORF OT KCAB
T 52968,13,1:B1:10,B1
N 52981 03: Magic Talisman / Glow Shield / Boomerang / Sword / Brass Ankh / Elf-Horn / Silver Arrow
T 52981,1,B1 Height = 5
T 52982,3,B3 name of Current Object} THERE IS WRITING HERE BUT IT IS WRITTEN IN A MAGIC LANGUAGE THAT YOU CANNOT {name of Current Command
T 52985,43,B2:2:B3:1,B1:1:B1:1:B1:2:B1:4,3:B2:10,B2:3:B2,B1
N 53028 04: Unused
T 53028,1,B1
N 53029 05: Unused
T 53029,1,B1
N 53030 06: Wand of Command
T 53030,1,B1 Height = 6
T 53031,3,B3 name of Current Object} THERE ARE A WHOLE SERIES OF REALLY TASTY LOOKING RUNES CARVED ON THIS RATHER FLASH LOOKING WAND !
T 53034,73,B2:1:B1:13,B1:2:B1:12:B1,16:B1,17:B1,1:B1:1,B1
N 53107 07: Advert
T 53107,1,B1 Height = 11
T 53108,4,B4 name of Current Object} GAME CONCEPT AND PROGRAM BY DAVID JONES. GRAPHICS BY RAY OWEN. THIS GAME CONTINUES THE ADVENTURES OF MAGIC KNIGHT, FOR EARLIER EPISODES SEE FINDERS KEEPERS, SPELLBOUND AND KNIGHT-TYME.
T 53112,146,B3:8:B1:7:B1,3:B4:2:B1,B3:21:B1,B2:10:B1,11:B2:2,33,9:B1:6:B1,12,B1
N 53258 08: Stick of Dynamite
T 53258,1,B1 Height = 4
T 53259,3,B3 name of Current Object} {name of Current Object}, HANDLE WITH EXTREEME CAUTION! (bug)
T 53262,32,B1:2,8:B1:11,8,B1
N 53294 09: Unused (see trivia)
T 53294,1,B1 Height = 3
T 53295,3,B3 name of Current Object} CHEAPO PLASTIC PRODUCTS LTD. MADE IN HONG KONG
T 53298,47,24,22,B1
N 53345 10: Power Boots
T 53345,1,B1 Height = 4
T 53346,3,B3 name of Current Object} THE LABEL {name of Current Command}S 'SIZE 7 SOFT SOLE SPECIAL JUMPING BOOTS'
T 53349,48,B1:6:B1:10,18,4:B1:6,B1
N 53397 11: Crystal Ball
T 53397,1,B1 Height = 6
T 53398,4,B4 name of Current Object} {Current Crystal Ball substring
T 53402,2,B1
N 53404 12: Scroll
T 53404,1,B1 Height = 9
T 53405,3,B3 name of Current Object} {Current Scroll substring
T 53408,2,B1
N 53410 13: Unused
T 53410,1,B1
N 53411 14: Bottle of Liquid / Empty Bottle
T 53411,1,B1 Height = 4
T 53412,3,B3 name of Current Object} OLDE GROG. BOTTLED AND DISTRIBUTED BY P ARTIST & SON
T 53415,43,11:B1:2:B1,6:B1:15,5,B1
N 53458 15: Bottle of Liquid / Empty Bottle
T 53458,1,B1 Height = 4
T 53459,3,B3 name of Current Object} SUPERSTRONG LIQUID BOTTLED AND DISTRIBUTED BY A POTHECARY & SON
T 53462,53,19,B1:2:B1:6:B1:3,3:B1:15,B1
N 53515 16: Unused
T 53515,1,B1
N 53516 17: Torch
T 53516,1,B1 Height = 4
T 53517,3,B3 name of Current Object} BRITELITE MEGA-TORCH
T 53520,19,2:B1:2:B1:12,B1
N 53539 18: Unused
T 53539,1,B1
N 53540 19: Unused
T 53540,1,B1
N 53541 20: Unused
T 53541,1,B1
N 53542 21: Wand of Command (with Crystal Ball)
T 53542,1,B1 Height = 5
T 53543,3,B3 name of Current Object} THE RUNES WHEN {name of Current Command} EXPLAIN THAT THIS OBJECT IS JOLLY USEFUL FOR BOSSING PEOPLE ABOUT
T 53546,61,B1:11:B1:1,8:B3,B1:17,4:B1:12,B1
N 53607 22: Unused (see trivia)
T 53607,1,B1 Height = 10
T 53608,3,B3 name of Current Object} THE LABEL {name of Current Command}S 'I AM MILNE THE BEAR SO PLEASE TREAT ME WITH CARE, AND WASH ME WITH WARM WATER IF I GET HORRIBLY DIRTY, AND IF YOU FIND ANY HUNNEY LYING ABOUT I AM QUITE HAPPY TO SCOFF IT FOR YOU ' (see trivia)
T 53611,157,B1:6:B1:8,6:B1:15,10:B1:3:B1:2:B1,9:B1:13,5:B1:17,B1:3:B1:5:B1,9:B1:11,2:B1:2:B1:1:B1:6:B1:1,4:B1:1,B1
N 53768 23: Magic Talisman (with Crystal Ball)
T 53768,1,B1 Height = 3
T 53769,3,B3 name of Current Object} WEAR ME FOR FAST MAGIC POWER RESTORE
T 53772,30,B1:13:B1:1,13,B1
N 53802 24: Glow Shield (with Crystal Ball)
T 53802,1,B1 Height = 5
T 53803,3,B3 name of Current Object} HIGHEST QUALITY PLUTONIUM {name of Current Object}. CREATED BY THE LEAD MEN FOR SEEING IN THE DARK
T 53806,66,12:B1:2,10:B1:2,11:B1:9,7:B1:3:B1:4,B1
N 53872 25: Boomerang (with Crystal Ball)
T 53872,1,B1 Height = 5
T 53873,3,B3 name of Current Object} MAGIC {name of Current Object}. WARNING :- CAN BE DANGEROUS. USE WITH CARE
T 53876,43,B1:1:B1:1:B1,4:B1:4:B1:3,24,B1
N 53919 26: Unused
T 53919,1,B1
N 53920 27: Brass Ankh (with Crystal Ball)
T 53920,1,B1 Height = 2
T 53921,3,B3 name of Current Object} LIVE LONG AND PROSPER
T 53924,19,10:B1:7,B1
N 53943 28: Elf-Horn (with Crystal Ball)
T 53943,1,B1 Height = 3
T 53944,3,B3 name of Current Object} HORN OF SUMMONING
T 53947,14,5:B1:6:B1,B1
N 53961 29: Silver Arrow (with Crystal Ball)
T 53961,1,B1 Height = 5
T 53962,3,B3 name of Current Object} ANTI-POLLYMORPH ARROW
T 53965,22,21,B1
N 53987 30: Unused
T 53987,1,B1
N 53988 31: List of Clues
T 53988,1,B1 Height = 7
T 53989,3,B3 name of Current Object} THIS WRITING APPEARS TO BE VERY OLD AND YOU CAN NOT READ IT
T 53992,35,B1:2:B2:8:B1,12:B2:1:B1,B2:1:B1,B1
b 54027 Newspaper Substrings Newspaper Substring 0
T 54027,2,B2 A FOOTMAN IS REQUIRED URGENTLY AT CASTLE STORMM. SALARY IS NEGOTIABLE.
T 54029,50,B4:2,12:B1:3,15:B1,11,B1
N 54079 Newspaper Substring 1
T 54079,1,B1 THE OFF-WHITE KNIGHT REQUIRES THE SERVICES OF AN ADDITIONAL GUARD AT THE CASTLE DUE TO EXPANSION OF THE TAX COLLECTION RACKET. PLEASE APPLY IN PERSON WITH THIS ADVERT.
T 54080,113,B2:1,B1:2:B1:9:B1,B1:3:B1:6:B1:3,B2:7:B1,10:B2:4,19,23,1:B1:2:B1:7,B1
N 54193 Newspaper Substring 2
T 54193,1,B1 A NEW COURT WIZARD IS NOW REQUIRED. APPLY TO CASTLE STORMM IN PERSON WITH THIS ADVERT. PLEASE NOTE THAT 1ST LEVEL ADEPTS NEED NOT APPLY
T 54194,102,B1:10:B2,B1:2:B1:9:B1,B1:20,1:B1:2:B1:15,B1:3:B1:10,12:B1:5,B1
N 54296 Newspaper Substring 3
T 54296,2,B2 THERE IS A VACANCY AT THE CASTLE FOR ONE CHAMBERMAID WITH A MINIMUM EDUCATION OF CLASS 1 HONOURS DEGREE. PLEASE APPLY IN PERSON.
T 54298,99,B3:11,B2:11,B1:1:B1:2:B1,18:B1,10:B1:11:B1,23,B1
N 54397 Newspaper Substring 4
T 54397,2,B2 A VACANCY NOW EXISTS FOR A WHITE WITCH AT CASTLE STORMM DUE TO THE SUDDEN RESIGNATION OF GRETOL THE SEER.
T 54399,79,B1:8:B1:13,B2:3:B1:3,11:B2:7,12:B1:7,B1:5,B1
N 54478 Newspaper Substring 5
T 54478,1,B1 A STRONG WARRIOR IS REQUIRED AT THE CASTLE FOR THE NEW POST OF BOUNCER. DUTIES TO INCLUDE KEEPING HUNGRY PEASANTS AWAY FROM THEIR LORD AND MASTER THE OFF-WHITE KNIGHT.
T 54479,107,B1:7:B2,B1:5:B2:3,4:B1:9:B1,16:B1,12:B1:7,14:B2:1,5:B1:7:B1,B1:1,B1
b 54586 Crystal Ball Substrings Crystal Ball Substring 0
T 54586,15,B2:13 YOU WILL NEED SPECIAL JUMPING BOOTS TO REACH THE UPPER LEVELS OF CASTLE STORMM
T 54601,44,4:B1:6:B1:6,B1:13:B1,B1:9,B1
N 54645 Crystal Ball Substring 1
T 54645,14,B1:1:B1:10:B1 IT IS VERY EASY TO RETURN FROM LIMBO
T 54659,14,7:B1:5,B1
N 54673 Crystal Ball Substring 2
T 54673,11,B1:3:B1:5:B1 YOU DO NOT NEED THE CRYSTAL BALL BUT IT COULD HELP
T 54684,20,B1:2:B1:1:B1:1:B1:1,10,B1
N 54704 Crystal Ball Substring 3
T 54704,18,B1:9:B1:7 YOU MUST USE YOUR BINARY KNOWLEDGE TO LEVER YOUR WAY TO THE STARS..
T 54722,28,1:B1:7:B2:1:B1,4:B2:8,B1
N 54750 Crystal Ball Substring 4
T 54750,10,B1:9 OFF-WHITE KNIGHT MUST BE ASLEEP BEFORE YOU CAN MERGE WITH HIM
T 54760,31,14:B1:1:B1,7:B1:5,B1
N 54791 Crystal Ball Substring 5
T 54791,14,3:B1:7:B1:2 DO SOMETHING SILLY WITH THE TELEPORT PAD AND TELEPORT KEY AND YOU WILL WIND UP IN LIMBO
T 54805,32,B2:5:B1,B1:1:B1:1:B2,B1:16,B1
N 54837 Crystal Ball Substring 6
T 54837,12,B2:9:B1 THE MAGIC MISSILE WILL INDUCE SLEEP IN ANYBODY THAT IT IS THROW AT (bug)
T 54849,29,19:B1,B2:1:B2:3,B1
N 54878 Crystal Ball Substring 7
T 54878,9,B1:2:B1:5 ARAMIS LE PEUX CAN READ THE LIST OF CLUES
T 54887,15,B1:13,B1
b 54902 Scroll Substrings Scroll Substring 0
T 54902,4,B4 WATCH OUT FOR THE STORM CLOUD!
T 54906,28,14:B1:6,6,B1
N 54934 Scroll Substring 1
T 54934,3,B3 OFF-WHITE KNIGHT IS THE BAD HALF OF MAGIC KNIGHT
T 54937,16,B1:1:B2,9:B2,B1
N 54953 Scroll Substring 2
T 54953,2,B2 TO TRAVEL TO PEOPLE YOU WILL NEED TO CARRY TWO SPECIAL OBJECTS
T 54955,45,B2:1:B1:7:B1,B1:5:B1:10,15,B1
N 55000 Scroll Substring 3
T 55000,3,B3 OFF-WHITE KNIGHT IS TRYING TO KILL YOU
T 55003,15,B1:1:B1,3:B2:5:B1,B1
N 55018 Scroll Substring 4
T 55018,3,B3 YOU MUST NOT KILL OFF-WHITE KNIGHT
T 55021,14,B1:5:B1:5,B1
N 55035 Scroll Substring 5
T 55035,2,B2 YOU MUST MERGE WITH OFF-WHITE KNIGHT TO BECOME A WHOLE PERSON AGAIN
T 55037,46,B1:12:B1:2,B1:1:B1,7:B1:13,5,B1
N 55083 Scroll Substring 6
T 55083,4,B4 DISQUISE CAN BE USEFUL SOMETIMES (bug)
T 55087,18,B1:2:B1:10,B2:1,B1
N 55105 Scroll Substring 7
T 55105,3,B3 THE MAGIC MISSILE CAN PROVIDE TRAVELLING ENERGY
T 55108,31,B2:10:B1,8:B1:1:B1,6,B1
N 55139 Scroll Substring 8 [bug]
T 55139,15,B2:13 YOU WILL NEED SPECIAL JUMPING BOOTS TO REACH THE UPPER LEVELS OF CASTLE STORMM
T 55154,44,4:B1:6:B1:6,B1:13:B1,B1:9,B1
b 55198 Clue Texts Clue 0
T 55198,1,B1 Height = 4
T 55199,3,B1:1:B1 ARAMIS LE PEUX SAYS "THE MAGIC MISSILE IS SOMEWHERE IN THE CAVES"
T 55202,28,B3:9:B1,B1:1:B1:4:B1,5:B1,B1
N 55230 Clue 1
T 55230,1,B1 Height = 3
T 55231,3,B1:1:B1 ARAMIS LE PEUX SAYS "THE ELF-HORN CAN BE USED TO SUMMON PEOPLE"
T 55234,31,B2:10:B1:3,5:B2:6:B1,B1
N 55265 Clue 2
T 55265,1,B1 Height = 4
T 55266,3,B1:1:B1 ARAMIS LE PEUX SAYS "THE CRYSTAL BALL IS NEEDED TO READ MAGIC WRITING "
T 55269,26,B3:2:B1:1:B1,7:B2:1:B1:1,2:B3,B1
N 55295 Clue 3
T 55295,1,B1 Height = 5
T 55296,5,B1:1:B3 ARAMIS LE PEUX SAYS "A YELLOW STREAK MIGHT NOT HELP BUT A BIRD WITH SIMILAR ATTRIBUTES MIGHT!"
T 55301,53,20,B3:1:B1:5,1:B1:10,B1:8:B1,B1
N 55354 Clue 4
T 55354,1,B1 Height = 4
T 55355,3,B1:1:B1 ARAMIS LE PEUX SAYS "AN ADVERT CAN HELP GET THE POINT FOR ROBIN"
T 55358,32,B2:8:B2,B1:1:B1:10,5:B1,B1
N 55390 Clue 5
T 55390,1,B1 Height = 4
T 55391,3,B1:1:B1 ARAMIS LE PEUX SAYS "COPPER, SILVER, GOLD. JUST WAIT AND YOU WILL BEHOLD!"
T 55394,34,B2:2:B1:8,7:B1:1:B3,7:B1,B1
N 55428 Clue 6
T 55428,1,B1 Height = 4
T 55429,3,B1:1:B1 ARAMIS LE PEUX SAYS "SPECIAL JUMPING BOOTS ARE AVAILABLE IN LIMBO"
T 55432,42,B1:12:B1:6,B1:14,5:B1,B1
N 55474 Clue 7
T 55474,1,B1 Height = 4
T 55475,3,B1:1:B1 ARAMIS LE PEUX SAYS "DANGEROUS USE OF TELEPORT PADS WILL TAKE YOU TO LIMBO"
T 55478,35,B1:14:B1,B1:6:B1,B1:1:B2:5:B1,B1
b 55513 Text Relating to "CAST A SPELL" Command
T 55513,1,B1 Height = 10
T 55514,9,B2:4:B2:1 WHICH SPELL DO YOU WANT TO {name of Current Command} ? DIMENSION MERGE MELT GRANITE PASS PLANT SPELL OF WONDER TRAVEL TO PERSON MAGIC FULCRUM QUITICUS GAMUS
T 55523,26,B2:2:B1,B3*6,B2,B1
T 55549,1,B1 Height = 3
T 55550,7,B1:3:B2:1 YOU CANNOT {name of Current Command} THAT SPELL NOW. MAYBE YOU NEED MORE SPELL POWER
T 55557,32,B2:1:B1:9:B1,10:B1:6,B1
T 55589,1,B1 Height = 4
T 55590,4,B2:1:B1 YOU ARE NOT NEAR ENOUGH TO THE RIGHT TYPE OF PLANT
T 55594,31,6:B1:4:B1,B1:11,B1:5,B1
T 55625,1,B1 Height = 9
T 55626,6,B1:5 YOU FIND YOURSELF STANDING BESIDE A SIMILAR PLANT BUT YOU HAVE TRAVELLED TO SOMEWHERE ELSE!
T 55632,53,B1,5:B1,7:B1,14,B1:1:B1:5,B1:4:B1,B1:1:B1:1,5,B1
T 55685,1,B1 Height = 12
T 55686,7,B1:5:B1 YOU FEEL THE USUAL MAGIC ENERGY DRAIN OF SPELL {name of Current Command}ING BUT YOU WONDER WHAT HAS ACTUALLY HAPPENED! NOTHING SEEMS TO HAVE CHANGED!
T 55693,82,6:B1:1,13,B2:1,B3:1,B1:7,5:B1,4:B1:2,10,B1:7,B1:5,8,B1
T 55775,1,B1 Height = 9
T 55776,12,B1:11 YOU FEEL SEVEN LEVERS ALL MOVING TO THEIR START POSITIONS. BALANCE IS RESTORED SOMEWHERE NEARBY.
T 55788,58,B1:2:B1:1,3:B2,B1:7,3:B1:6,8:B1,9,B1:1:B1:1,7,B1
T 55846,1,B1 Height = 6
T 55847,8,B1:5:B2 YOU FEEL YOUR BODY SUCKED THROUGH A BYPASS IN NULL-SPACE AND SUDDENLY FIND YOURSELF STANDING IN FRONT OF {short name of Current Character}
T 55855,71,15:B1,21,B1:14,B1:5:B1:3,6:B2,B1
T 55926,4,B1:1:B2 CAST DIMENSION MERGE
T 55930,4,B1:1:B2 CAST MELT GRANITE
T 55934,4,B1:1:B2 CAST PASS PLANT
T 55938,4,B1:1:B2 CAST SPELL OF WONDER
T 55942,5,B1:1:B3 TRAVEL TO
T 55947,4,B1:1:B2 CAST MAGIC FULCRUM
T 55951,4,B1:1:B2 CAST QUITICUS GAMUS
T 55955,4,B1:1:B2 TRAVEL TO
b 55959 Text Relating to "THROW" Command
T 55959,5,4:B1 AT
T 55964,1,B1 Height = 3
T 55965,3,B2:1 THE {name of Current Object} LANDED ON THE FLOOR BY {short name of Current Character}
T 55968,18,10:B2:4,B1
T 55986,1,B1 Height = 4
T 55987,3,B2:1 THE {name of Current Object} LANDED ON THE FLOOR BY {short name of Current Character} AND SMASHED INTO TINY LITTLE BITS
T 55990,45,10:B2:4,B1:1:B1:8,2:B1:6:B1:5:B1:1,B1
T 56035,1,B1 Height = 8
T 56036,10,B1:6:B2:1 YOU THREW THE {name of Current Object} AT {short name of Current Character} BUT IT CAME BACK AND KILLED YOU !
T 56046,24,3:B1:1,B1:1:B1:11:B1,B2:1,B1
b 56070 Text Relating to "BLOW" Command
T 56070,1,B1 Height = 4
T 56071,10,B1:1:B1:6:B1 short name of Current Character} SAYS 'I CANNOT COME TO THAT ROOM AT THE MOMENT BECAUSE YOU ARE IN MY WAY!'
T 56081,43,5:B3:4,B1:15:B1,B1:12,B1
T 56124,1,B1 Height = 3
T 56125,6,B1:1:B1:3 short name of Current Character} SAYS 'I THINK YOU ARE THE ONE THAT SHOULD GO AWAY!'
T 56131,32,6:B2:1:B1:4,B1:16,B1
T 56163,2,B2 SUMMON
T 56165,1,B1 Height = 7
T 56166,9,8:B1 I THINK YOU SHOULD GIVE UP TRYING TO PLAY THE {name of Current Object} THAT WAS TERRIBLE !
T 56175,38,7:B1:4,3:B2:5,B2:1,B2:10,B1
T 56213,1,B1 Height = 2
T 56214,3,B1:1:B1 full name of Current Character} IS ASLEEP
T 56217,7,6,B1
T 56224,1,B1 Height = 3
T 56225,2,B2 full name of Current Character} DOES NOT WANT TO BE SUMMONED
T 56227,21,5:B2:1:B1:3,8,B1
T 56248,1,B1 Height = 3
T 56249,3,B1:1:B1 full name of Current Character} IS TOO TIRED TO BE SUMMONED
T 56252,23,10:B1:3,8,B1
T 56275,1,B1 Height = 2
T 56276,3,B1:1:B1 full name of Current Character} IS ALREADY HERE!
T 56279,5,B1:1:B1:1,B1
T 56284,1,B1 Height = 2
T 56285,7,B1:6 short name of Current Character} DOES NOT WANT TO COME HERE!
T 56292,12,B2:1:B1,5:B1:1,B1
T 56304,1,B1 Height = 4
T 56305,11,5:B1:4:B1 WHAT A LOT OF DUST. DOESN'T ANYBODY CLEAN THIS PLACE ?
T 56316,31,14,3:B1:3:B1,B1:7,B1
T 56347,1,B1 Height = 3
T 56348,2,B1:1 full name of Current Character} APPEARS IN A THICK PUFF OF SMOKE
T 56350,30,11:B1:6,5:B1:5,B1
b 56380 Text Relating to "WEAR/UNWEAR OBJECT" Command
T 56380,1,B1 name of Current Command} UN{name of Current Command
T 56381,8,B3,B1:2:B1,B1
T 56389,6,2:B1:1:B2 UN{name of Current Command} THE
T 56395,9,2:B1:1:B2:1:B2 UN{name of Current Command} WHICH OBJECT ?
T 56404,1,B1 Height = 2
T 56405,5,B2:1:B2 YOU ARE {name of Current Command}ING TOO MUCH
T 56410,9,8,B1
T 56419,1,B1 Height = 2
T 56420,7,B1:3:B2:1 YOU CANNOT {name of Current Command} THAT
T 56427,2,B1
T 56429,1,B1 Height = 9
T 56430,6,B2:4 WHICH DISQUISE DO YOU WANT TO {name of Current Command}? FOOTMAN GUARD WIZARD CHAMBERMAID WHITE WITCH WARRIOR
T 56436,26,B2:1:B2:1:B2,B3*5,B2,B1
b 56462 Text Relating to "TELEPORT" Command
T 56462,1,B1 Height = 4
T 56463,9,B1:1:B2:5 IT WAS NOT SAFE TO TELEPORT SO YOU HAVE WOUND UP IN LIMBO
T 56472,30,B2:4,B1:14,8,B1
b 56502 Text Relating to "TICKLE" Command
T 56502,3,B1:1:B1 TICKLE
T 56505,1,B1 Height = 5
T 56506,10,B1:9 short name of Current Character} GIGGLES AND BURSTS INTO LAUGHTER. WHAT A NICE WAY TO CHEER SOMEBODY UP!
T 56516,49,B1:9:B1,15:B1,9:B1:6,B2:3,B1
b 56565 Object names
D 56565 Zero-terminated strings
T 56565,7,B1:4:B2 NOTHING AT ALL
T 56572,2,B2 DISQUISE
T 56574,5,B1:2:B2 CRYSTAL BALL
T 56579,5,1:B4 WAND OF COMMAND
T 56584,2,B2 TEDDY BEAR
T 56586,15,6:B1:5:B1:1:B1 STICK OF DYNAMITE
T 56601,11,B1:9:B1 MAGIC TALISMAN
T 56612,2,B2 BROKEN GLASS
T 56614,2,B2 BROKEN GLASS
T 56616,2,B2 BROKEN GLASS
T 56618,14,13:B1 HORSE FEATHER
T 56632,12,11:B1 POWER BOOTS
T 56644,12,11:B1 GLOW SHIELD
T 56656,8,7:B1 CHICKEN
T 56664,10,9:B1 BOOMERANG
T 56674,6,5:B1 SWORD
T 56680,11,10:B1 BRASS ANKH
T 56691,2,B2 BOTTLE OF LIQUID
T 56693,2,B2 BOTTLE OF LIQUID
T 56695,6,5:B1 TORCH
T 56701,7,6:B1 MIRROR
T 56708,7,3:B1:2:B1 GADGET X
T 56715,9,8:B1 ELF-HORN
T 56724,8,B1:6:B1 SILVER ARROW
T 56732,4,B1:1:B2 INSTRUCTION BOOK
T 56736,10,B1:8:B1 MAGIC MISSILE
T 56746,7,6:B1 ADVERT
T 56753,7,6:B1 SCROLL
T 56760,8,6:B2 EMPTY BOTTLE
T 56768,8,6:B2 EMPTY BOTTLE
T 56776,7,6:B1 SHIELD
T 56783,4,B1:1:B2 TELEPORT KEY
T 56787,6,B1:4:B1 TELEPORT PAD
T 56793,10,9:B1 NEWSPAPER
T 56803,12,5:B1:5:B1 LIST OF CLUES
T 56815,4,3:B1 BOW
T 56819,3,B3 GOLDEN EGG
T 56822,4,B1:1:B2 SILVER EGG
T 56826,4,B1:1:B2 COPPER EGG
T 56830,3,B3 GOLDEN EGG
T 56833,4,B1:1:B2 SILVER EGG
T 56837,4,B1:1:B2 COPPER EGG
T 56841,2,1:B1 Unused (see trivia)
b 56843 Room names
D 56843 Strings are zero-terminated. For rooms without a name, the entry is a single zero byte. For rooms with names, the first byte of the entry is data, and the text string itself starts at the second byte. The data structure is:
T 56843,7,B1:5:B1 LIMBO
T 56850,10,B2:7:B1 BEARWOOLFS HOARD (bug)
T 56860,3,B3 BEARWOOLFS CAVE
T 56863,8,B1:3:B1:1:B2 BEWARE BEARWOOLF
T 56871,5,B5 THE SPOOKY FOREST
T 56876,1,B1 Unused
T 56877,5,B5 THE SPOOKY FOREST
T 56882,21,B2:9:B1:8:B1 THE SWORD IN THE CONCRETE
T 56903,19,B1:9:B1:7:B1 ROBIN'S LITTLE HUT
T 56922,12,B1:2:B1:1:B1:5:B1 EXIT FROM LIMBO
T 56934,9,B1:5:B3 MORE SPOOKY FOREST
T 56943,9,B1:7:B1 ENTWOOD
T 56952,5,B5 THE SPOOKY FOREST
T 56957,5,B5 THE SPOOKY FOREST
T 56962,8,B3:4:B1 WISHING WELL
T 56970,1,B1 Unused
T 56971,15,B3:11:B1 THE CASTLE ENTRANCE
T 56986,11,B1:8:B2 ONE AXE ROOM
T 56997,22,B1:20:B1 INDOOR BOWLING GREEN
T 57019,1,B1 Unused
T 57020,1,B1 Unused
T 57021,19,B1:17:B1 MORE AXE PROBLEMS
T 57040,16,B1:14:B1 EVEN MORE AXES
T 57056,19,B2:16:B1 THE FIRST JUMP CHUTE
T 57075,6,B3:2:B1 MAIN LEVER 7
T 57081,6,B3:2:B1 MAIN LEVER 6
T 57087,21,B1:5:B1:9:B2:2:B1 SECURITY DOOR & MAIN LEVER 5
T 57108,6,B3:2:B1 MAIN LEVER 4
T 57114,6,B3:2:B1 MAIN LEVER 3
T 57120,6,B3:2:B1 MAIN LEVER 2
T 57126,6,B3:2:B1 MAIN LEVER 1
T 57132,11,B2:7:B2 THE BROKEN TELEPORT
T 57143,16,B1:14:B1 TERRIBLE TWINS
T 57159,19,B2:16:B1 THE GUARDIAN STATUES
T 57178,3,B3 ONE WAY CORRIDOR
T 57181,3,B3 ONE WAY CORRIDOR
T 57184,3,B3 ONE WAY CORRIDOR
T 57187,1,B1 Unused
T 57188,17,B1:6:B1:8:B1 BIG WHITE STATUE
T 57205,1,B1 Unused
T 57206,5,B2:1:B2 TELEPORT ROOM
T 57211,3,B3 ONE WAY CORRIDOR
T 57214,3,B3 ONE WAY CORRIDOR
T 57217,3,B3 ONE WAY CORRIDOR
T 57220,1,B1 Unused
T 57221,12,B2:8:B2 THE CONTROL ROOM
T 57233,14,B1:1:B1:9:B2 MANY SCREENED ROOM
T 57247,5,B2:1:B2 TELEPORT ROOM
T 57252,1,B1 Unused
T 57253,14,B2:11:B1 THE POWER PLANT
T 57267,1,B1 Unused
T 57268,1,B1 Unused
b 57269 Miscellaneous Text 5
T 57269,14,B2:2:B1:9 SOMEBODY SWITCHED OUT THE LIGHT. YOU FALL AND INJURE YOURSELF FATALLY ON YOUR ARMOUR WHY NOT CARRY A TORCH OR SOMETHING SIMILAR NEXT TIME ? HARD LUCK MAGIC KNIGHT
T 57283,91,B1:7:B1:1:B1:1,B1:7:B1,3:B1:5:B1:6:B2,4:B1:6:B1:6,3:B1:8,5:B1:2:B2,10:B1,B1
T 57374,1,B1 Height = 9
T 57375,15,B1:14 YOU STOOD FAR TOO CLOSE TO BEARWOOLF AND IT LASHED OUT AT YOU WITH ITS ENORMOUS GREEN ARM
T 57390,52,6:B2:1:B1,B1:15:B1,1:B1:2:B1:3:B1:6,9,B1
T 57442,1,B1 Height = 5
T 57443,11,B2:6:B1:1:B1 SOMEBODY YELLS "TA FOR THE EGG MATE. YOU CAN HAVE A WISH IF YOU WANT!" IN A DEEP VOICE
T 57454,47,4:B2:7,B1:1:B1:5:B1,B1:4:B2:1:B1:1,3:B1:10,B1
T 57501,1,B1 Height = 4
T 57502,5,B1:1:B2:1 YOU CAN SMELL NOTHING BECAUSE YOUR NOSE IS BLOCKED!
T 57507,26,B1:9,B1:5:B1,8,B1
T 57533,1,B1 Height = 2
T 57534,3,B2:1 YOUR {name of Current Command} HAS BEEN GRANTED!
T 57537,15,B1:13,B1
T 57552,1,B1 Height = 9
T 57553,3,B2:1 THE LEVER SPRUNG BACK INTO POSITION. NOTHING SEEMS TO HAVE HAPPENED BUT THAT DOES NOT MAKE MUCH SENSE DOES IT?
T 57556,80,12,2:B1:3:B1:5,B1:7,B1:5,9:B1:1,B1:5:B1,16,5:B1:1,B1
T 57636,1,B1 Height = 6
T 57637,15,15 MMMMM.. TASTY. YOU CAN FEEL NEW STRENGTH AND VITALITY SURGING THROUGH YOUR VEINS
T 57652,41,B1:1:B1:5,4:B1,B1:1:B1:2:B1:2,4:B1:8,B1:5,B1
b 57693 Common Words Table, Part 1
D 57693 This data block contains a list of zero-terminated (sub-)strings. Other text blocks reference this table when a particular string is required. This reduces the space requirements for storage of all of the game's text.
T 57693,3,B3 carriage return / line feed}{carriage return / line feed
T 57696,3,B3 change INK colour to yellow
T 57699,3,B3 move text cursor right by two characters
T 57702,4,B4 carriage return / line feed}{change INK colour to white
T 57706,12,11:B1 INSTRUCTION
T 57718,4,3:B1 =
T 57722,3,2:B1 A
T 57725,4,3:B1 AN
T 57729,4,3:B1 TO
T 57733,3,2:B1 IT
T 57736,10,9:B1 CHARACTER
T 57746,6,5:B1 FROM
T 57752,8,7:B1 OBJECT
T 57760,5,4:B1 AND
T 57765,5,4:B1 YOU
T 57770,6,5:B1 GAME
T 57776,6,5:B1 LEVER
T 57782,5,4:B1 ANY
T 57787,4,3:B1 KEY
T 57791,4,3:B1
T 57795,5,4:B1 THE
T 57800,7,6:B1 WHICH
T 57807,4,3:B1 BUT
T 57811,4,3:B1 EGG
T 57815,8,7:B1 SUMMON
T 57823,4,3:B1 ARE
T 57827,4,3:B1 IS
T 57831,6,5:B1 SAYS
T 57837,6,5:B1 YOUR
T 57843,5,4:B1 NOT
T 57848,10,9:B1 YOURSELF
T 57858,4,3:B1 OF
T 57862,5,4:B1 ING
T 57867,9,8:B1 DISQUISE (bug)
T 57876,11,10:B1 SOMETHING
T 57887,13,12:B1 BROKEN GLASS
T 57900,8,7:B1 GOLDEN
T 57908,6,5:B1 HELP
T 57914,12,11:B1 DAVID JONES
T 57926,9,8:B1 FOOTMAN
T 57935,7,6:B1 GUARD
T 57942,8,7:B1 WIZARD
T 57950,13,12:B1 CHAMBERMAID
T 57963,13,12:B1 WHITE WITCH
T 57976,9,8:B1 WARRIOR
T 57985,7,6:B1 SILVER
T 57992,7,6:B1 COPPER
T 57999,8,7:B1 CRYSTAL
T 58007,6,5:B1 THIS
T 58013,8,7:B1 NOTHING
T 58021,4,3:B1 ALL
T 58025,7,6:B1 THERE
T 58032,6,5:B1 THEIR
T 58038,10,9:B1 STRENGTH
T 58048,5,4:B1 BOOK
T 58053,5,4:B1 SOME
T 58058,4,3:B1 YES
T 58062,3,2:B1 NO
T 58065,7,6:B1 BOTTLE
T 58072,17,16:B1 BOTTLE OF LIQUID (see trivia)
T 58089,6,5:B1 THAT
T 58095,5,4:B1 HAS
T 58100,7,6:B1 BREAK
T 58107,6,5:B1 WILL
T 58113,5,4:B1 WANT
T 58118,7,6:B1 TRAVEL
T 58125,6,5:B1 BODY
T 58131,10,9:B1 BEARWOOLF
T 58141,11,10:B1 TEDDY BEAR
T 58152,5,4:B1 WAS
T 58157,8,7:B1 REQUIRE
T 58165,6,5:B1 PRESS
T 58171,8,7:B1 KILLED
T 58179,10,9:B1 ATTRIBUTE
T 58189,13,12:B1 STORMBRINGER
T 58202,11,10:B1 COPYRIGHT
T 58213,17,16:B1 IS TOO TIRED TO
T 58230,17,16:B1 ONE WAY CORRIDOR
T 58247,5,4:B1 HERE
T 58252,4,3:B1 YET
T 58256,16,15:B1 BEARWOOLFS CAVE (bug)
T 58272,7,6:B1 FOREST
T 58279,15,14:B1 QUITICUS GAMUS
T 58294,6,5:B1 MAIN
T 58300,6,5:B1 SPELL
T 58306,12,B1:10:B1 SPELL OF WONDER
T 58318,6,5:B1 FLOOR
T 58324,5,4:B1 ROOM
T 58329,16,15:B1 DIMENSION MERGE
T 58345,13,12:B1 MELT GRANITE
T 58358,11,10:B1 PASS PLANT
T 58369,15,7:B1:6:B1 TRAVEL TO PERSON
T 58384,14,13:B1 MAGIC FULCRUM (see trivia)
T 58398,6,5:B1 HAPPY
T 58404,8,7:B1 SPOOKY
T 58412,8,7:B1 PLAYER
T 58420,7,6:B1 CANDLE
T 58427,8,7:B1 ALREADY
T 58435,10,9:B1 REDEFINE
T 58445,14,13:B1 MASTERTRONIC
b 58459 Common Words Table, Part 2
D 58459 This data block contains a list of zero-terminated (sub-)strings. Other text blocks reference this table when a particular string is required. This reduces the space requirements for storage of all of the game's text.
T 58459,6,5:B1 *191* (see trivia)
T 58465,6,5:B1 *192* (see trivia)
T 58471,5,4:B1 TIME
T 58476,6,5:B1 MAGIC
T 58482,11,10:B1 CONTROL :
T 58493,9,8:B1 KEYBOARD
T 58502,11,9:B2 KEMPSTON JOYSTICK
T 58513,9,7:B2 CURSOR JOYSTICK
T 58522,12,9:B1:1:B1 SINCLAIR JOYSTICK 1
T 58534,10,9:B1 JOYSTICK
T 58544,10,9:B1 OFF-WHITE
T 58554,7,6:B1 ARAMIS
T 58561,6,5:B1 ROBIN
T 58567,7,6:B1 REGGIE
T 58574,7,6:B1 RACHEL
T 58581,7,6:B1 BARKER
T 58588,8,7:B1 ORGANON
T 58596,8,7:B1 GRUNTER
T 58604,1,B1 Unused
T 58605,1,B1 Unused
T 58606,1,B1 Unused
T 58607,1,B1 Unused
T 58608,1,B1 Unused
T 58609,1,B1 Unused
T 58610,1,B1 Unused
T 58611,1,B1 Unused
T 58612,9,B1:7:B1 OFF-WHITE KNIGHT
T 58621,10,B1:8:B1 ARAMIS LE PEUX
T 58631,13,B1:11:B1 ROBIN OF SHYLOCK
T 58644,7,B1:1:B1:3:B1 REGGIE THE RAT
T 58651,14,B1:12:B1 RACHEL OF AMAZONIA
T 58665,7,B1:1:B1:3:B1 BARKER THE ENT
T 58672,9,B1:1:B1:5:B1 ORGANON THE GUARD
T 58681,13,B1:1:B1:9:B1 GRUNTER THE BEARWOOLF
T 58694,1,B1 Unused
T 58695,1,B1 Unused
T 58696,1,B1 Unused
T 58697,1,B1 Unused
T 58698,1,B1 Unused
T 58699,1,B1 Unused
T 58700,1,B1 Unused
T 58701,1,B1 Unused
T 58702,13,12:B1 MAGIC KNIGHT (see trivia)
T 58715,4,3:B1 GET
T 58719,5,4:B1 DROP
T 58724,5,4:B1 TAKE
T 58729,5,4:B1 GIVE
T 58734,8,7:B1 EXAMINE
T 58742,8,7:B1 COMMAND
T 58750,7,6:B1 LOCATE
T 58757,9,8:B1 TELEPORT
T 58766,5,4:B1 READ
T 58771,6,5:B1 THROW
T 58777,5,4:B1 CAST
T 58782,5,4:B1 BLOW
T 58787,5,4:B1 WEAR
T 58792,7,6:B1 TICKLE
T 58799,5,4:B1 PULL
T 58804,6,5:B1 SMELL
T 58810,5,4:B1 WISH
T 58815,6,5:B1 DRINK
T 58821,5,4:B1 *FC* (see trivia)
T 58826,5,4:B1 1987
T 58831,5,4:B1 *FE* (see trivia)
T 58836,5,4:B1 *FF* (see trivia)
b 58841 Room Layout Data Pointers
W 58841,2,2 (00) - Limbo
W 58843,2,2 (01) - Outdoors, 0 (Bearwoolf's Hoard)
W 58845,2,2 (02) - Outdoors, 1 (Bearwoolf's Cave)
W 58847,2,2 (03) - Outdoors, 2 (Beware Bearwoolf)
W 58849,2,2 (04) - Outdoors, 3 (The Spooky Forest, 1)
W 58851,2,2 (05) - Outdoors, 4
W 58853,2,2 (06) - Outdoors, 5 (The Spooky Forest, 2)
W 58855,2,2 (07) - Outdoors, 6 (The Sword in the Concrete)
W 58857,2,2 (08) - Outdoors, 7 (Robin's Little Hut)
W 58859,2,2 (09) - Outdoors, 8 (Exit from Limbo)
W 58861,2,2 (10) - Outdoors, 9 (More Spooky Forest)
W 58863,2,2 (11) - Outdoors, 10 (Entwood)
W 58865,2,2 (12) - Outdoors, 11 (The Spooky Forest, 3)
W 58867,2,2 (13) - Outdoors, 12 (The Spooky Forest, 4)
W 58869,2,2 (14) - Outdoors, 13 (Wishing Well)
W 58871,2,2 (15) - Outdoors, 14
W 58873,2,2 (16) - Outdoors, 15 (The Castle Entrance)
W 58875,2,2 (17) - Castle Ground Floor, 0 (One Axe Room)
W 58877,2,2 (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
W 58879,2,2 (19) - Castle Ground Floor, 2
W 58881,2,2 (20) - Castle Ground Floor, 3
W 58883,2,2 (21) - Castle Ground Floor, 4 (More Axe Problems)
W 58885,2,2 (22) - Castle Ground Floor, 5 (Even More Axes)
W 58887,2,2 (23) - Castle Ground Floor, 6 (The First Jump Chute)
W 58889,2,2 (24) - Castle First Floor, 0 (Main Lever 7)
W 58891,2,2 (25) - Castle First Floor, 1 (Main Lever 6)
W 58893,2,2 (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
W 58895,2,2 (27) - Castle First Floor, 3 (Main Lever 4)
W 58897,2,2 (28) - Castle First Floor, 4 (Main Lever 3)
W 58899,2,2 (29) - Castle First Floor, 5 (Main Lever 2)
W 58901,2,2 (30) - Castle First Floor, 6 (Main Lever 1)
W 58903,2,2 (31) - Castle Second Floor, 0 (The Broken Teleport)
W 58905,2,2 (32) - Castle Second Floor, 1 (Terrible Twins)
W 58907,2,2 (33) - Castle Second Floor, 2 (The Guardian Statues)
W 58909,2,2 (34) - Castle Second Floor, 3 (One Way Corridor, 1)
W 58911,2,2 (35) - Castle Second Floor, 4 (One Way Corridor, 2)
W 58913,2,2 (36) - Castle Second Floor, 5 (One Way Corridor, 3)
W 58915,2,2 (37) - Castle Second Floor, 6
W 58917,2,2 (38) - Castle Third Floor, 0 (Big White Statue)
W 58919,2,2 (39) - Castle Third Floor, 1
W 58921,2,2 (40) - Castle Third Floor, 2 (Teleport Room, 1)
W 58923,2,2 (41) - Castle Third Floor, 3 (One Way Corridor, 4)
W 58925,2,2 (42) - Castle Third Floor, 4 (One Way Corridor, 5)
W 58927,2,2 (43) - Castle Third Floor, 5 (One Way Corridor, 6)
W 58929,2,2 (44) - Castle Third Floor, 6
W 58931,2,2 (45) - Spaceship, 0 (The Control Room)
W 58933,2,2 (46) - Spaceship, 1 (Many Screened Room)
W 58935,2,2 (47) - Spaceship, 2 (Teleport Room, 2)
W 58937,2,2 (48) - Spaceship, 3
W 58939,2,2 (49) - Spaceship, 4 (The Power Plant)
W 58941,2,2 (50) - Spaceship, 5
W 58943,2,2 (51) - Spaceship, 6
b 58945 Room Layout Data (00) - Limbo
B 58945,3,3 Draw floor with floor character set UDG 55 and attribute 71 (white INK, black PAPER, BRIGHT)
B 58948,1,1 End Marker (room layout data)
b 58949 Room Layout Data (01) - Outdoors, 0 (Bearwoolf's Hoard)
B 58949,1,1 Draw layout data fragment 5 (Left Wall)
B 58950,3,3 Start horizontal block drawing at (0, 5)
B 58953,2,2 Draw 16 blocks of style 1
B 58955,1,1 End Marker
B 58956,3,3 Start horizontal block drawing at (2, 17)
B 58959,15,15 Draw pattern of blocks
B 58974,1,1 End Marker
B 58975,3,3 Draw floor with floor character set UDG 55 and attribute 71 (white INK, black PAPER, BRIGHT)
B 58978,1,1 End Marker (room layout data)
b 58979 Room Layout Data (02) - Outdoors, 1 (Bearwoolf's Cave)
B 58979,3,3 Start horizontal block drawing at (0, 5)
B 58982,2,2 Draw 16 blocks of style 1
B 58984,1,1 End Marker
B 58985,3,3 Start horizontal block drawing at (0, 17)
B 58988,13,13 Draw pattern of blocks
B 59001,1,1 End Marker
B 59002,3,3 Draw floor with floor character set UDG 55 and attribute 71 (white INK, black PAPER, BRIGHT)
B 59005,1,1 End Marker (room layout data)
b 59006 Room Layout Data (03) - Outdoors, 2 (Beware Bearwoolf)
B 59006,6,6 Draw Grunter (36) with attribute data index of 28, terrain interaction data index of 0 at (7, 11)
B 59012,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (26, 6)
B 59018,6,6 Draw flowers (55) with attribute data index of 23, terrain interaction data index of 0 at (0, 19), and apply vertical mirror (1)
B 59024,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59027,1,1 End Marker (room layout data)
b 59028 Room Layout Data (04) - Outdoors, 3 (The Spooky Forest, 1)
B 59028,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (24, 6)
B 59034,1,1 Draw layout data fragment 4 (Top of Tree with Face)
B 59035,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (4, 20)
B 59041,6,6 Draw flowers (55) with attribute data index of 23, terrain interaction data index of 0 at (22, 19)
B 59047,1,1 Draw layout data fragment 2 (Plant)
B 59048,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59051,1,1 End Marker (room layout data)
b 59052 Room Layout Data (05) - Outdoors, 4
B 59052,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (22, 6)
B 59058,1,1 Draw layout data fragment 4 (Top of Tree with Face)
B 59059,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (4, 20)
B 59065,3,3 Start horizontal block drawing at (15, 20)
B 59068,2,2 Draw 3 blocks of style 4
B 59070,1,1 End Marker
B 59071,3,3 Start horizontal block drawing at (13, 21)
B 59074,4,4 Draw pattern of blocks
B 59078,1,1 End Marker
B 59079,3,3 Start horizontal block drawing at (11, 22)
B 59082,4,4 Draw pattern of blocks
B 59086,1,1 End Marker
B 59087,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59090,1,1 End Marker (room layout data)
b 59091 Room Layout Data (06) - Outdoors, 5 (The Spooky Forest, 2)
B 59091,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (20, 6)
B 59097,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (18, 14)
B 59103,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (18, 20)
B 59109,6,6 Draw flowers (55) with attribute data index of 23, terrain interaction data index of 0 at (9, 19)
B 59115,6,6 Draw axe in tree stump (42) with attribute data index of 9, terrain interaction data index of 2 at (2, 16)
B 59121,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59124,1,1 End Marker (room layout data)
b 59125 Room Layout Data (07) - Outdoors, 6 (The Sword in the Concrete)
B 59125,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (18, 6)
B 59131,1,1 Draw layout data fragment 4 (Top of Tree with Face)
B 59132,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (5, 20)
B 59138,6,6 Draw Sword in Concrete (68) with attribute data index of 31, terrain interaction data index of 0 at (12, 18)
B 59144,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59147,1,1 End Marker (room layout data)
b 59148 Room Layout Data (08) - Outdoors, 7 (Robin's Little Hut)
B 59148,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (16, 6)
B 59154,6,6 Draw hut roof (58) with attribute data index of 10, terrain interaction data index of 0 at (11, 14)
B 59160,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (23, 14)
B 59166,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (23, 20)
B 59172,3,3 Start horizontal block drawing at (12, 17)
B 59175,2,2 Draw 4 blocks of style 29
B 59177,1,1 End Marker (block drawing)
B 59178,3,3 Start horizontal block drawing at (12, 19)
B 59181,4,4 Draw pattern of blocks
B 59185,1,1 End Marker (block drawing)
B 59186,3,3 Start horizontal block drawing at (12, 21)
B 59189,4,4 Draw pattern of blocks
B 59193,1,1 End Marker (block drawing)
B 59194,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59197,1,1 End Marker (room layout data)
b 59198 Room Layout Data (09) - Outdoors, 8 (Exit from Limbo)
B 59198,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (14, 6)
B 59204,1,1 Draw layout data fragment 4 (Top of Tree with Face)
B 59205,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (4, 20)
B 59211,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (14, 14)
B 59217,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (14, 20)
B 59223,6,6 Draw flowers (55) with attribute data index of 23, terrain interaction data index of 0 at (23, 19)
B 59229,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59232,1,1 End Marker (room layout data)
b 59233 Room Layout Data (10) - Outdoors, 9 (More Spooky Forest)
B 59233,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (12, 6)
B 59239,1,1 Draw layout data fragment 4 (Top of Tree with Face)
B 59240,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (5, 20)
B 59246,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (14, 14)
B 59252,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (14, 20)
B 59258,6,6 Draw top of tree, bare (40) with attribute data index of 26, terrain interaction data index of 0 at (23, 10)
B 59264,6,6 Draw tree trunk 3 (47) with attribute data index of 22, terrain interaction data index of 0 at (24, 20)
B 59270,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59273,1,1 End Marker (room layout data)
b 59274 Room Layout Data (11) - Outdoors, 10 (Entwood)
B 59274,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (10, 6)
B 59280,6,6 Draw top of tree with face (38) with attribute data index of 24, terrain interaction data index of 0 at (0, 13), and apply vertical mirror (1)
B 59286,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (12, 14), and apply vertical mirror (1)
B 59292,6,6 Draw top of tree, bare (40) with attribute data index of 26, terrain interaction data index of 0 at (24, 10), and apply vertical mirror (1)
B 59298,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (5, 20), and apply vertical mirror (1)
B 59304,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (14, 20), and apply vertical mirror (1)
B 59310,6,6 Draw tree trunk 3 (47) with attribute data index of 22, terrain interaction data index of 0 at (24, 20), and apply vertical mirror (1)
B 59316,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59319,1,1 End Marker (room layout data)
b 59320 Room Layout Data (12) - Outdoors, 11 (The Spooky Forest, 3)
B 59320,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (8, 6)
B 59326,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (2, 14)
B 59332,6,6 Draw top of tree with face (38) with attribute data index of 24, terrain interaction data index of 0 at (12, 13)
B 59338,6,6 Draw top of tree, bare (40) with attribute data index of 26, terrain interaction data index of 0 at (23, 10)
B 59344,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (3, 20)
B 59350,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (14, 20)
B 59356,6,6 Draw tree trunk 3 (47) with attribute data index of 22, terrain interaction data index of 0 at (24, 20)
B 59362,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59365,1,1 End Marker (room layout data)
b 59366 Room Layout Data (13) - Outdoors, 12 (The Spooky Forest, 4)
B 59366,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (6, 6)
B 59372,6,6 Draw top of tree with face (38) with attribute data index of 24, terrain interaction data index of 0 at (19, 13)
B 59378,6,6 Draw top of tree without face (39) with attribute data index of 25, terrain interaction data index of 0 at (1, 14)
B 59384,6,6 Draw top of tree, bare (40) with attribute data index of 26, terrain interaction data index of 0 at (12, 10)
B 59390,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (22, 20)
B 59396,6,6 Draw tree trunk 2 (45) with attribute data index of 20, terrain interaction data index of 0 at (1, 20)
B 59402,6,6 Draw tree trunk 3 (47) with attribute data index of 22, terrain interaction data index of 0 at (13, 20)
B 59408,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59411,1,1 End Marker (room layout data)
b 59412 Room Layout Data (14) - Outdoors, 13 (Wishing Well)
B 59412,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (4, 6)
B 59418,6,6 Draw top of well (58) with attribute data index of 10, terrain interaction data index of 0 at (11, 11)
B 59424,6,6 Draw well (59) with attribute data index of 11, terrain interaction data index of 4 at (11, 14)
B 59430,6,6 Draw flowers (55) with attribute data index of 23, terrain interaction data index of 0 at (1, 19)
B 59436,6,6 Draw flowers (55) with attribute data index of 23, terrain interaction data index of 0 at (21, 19)
B 59442,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59445,1,1 End Marker (room layout data)
b 59446 Room Layout Data (15) - Outdoors, 14
B 59446,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (2, 6)
B 59452,6,6 Draw top of tree with face (38) with attribute data index of 24, terrain interaction data index of 0 at (1, 13), and apply vertical mirror (1)
B 59458,6,6 Draw top of tree with face (38) with attribute data index of 24, terrain interaction data index of 0 at (13,13)
B 59464,6,6 Draw top of tree, bare (40) with attribute data index of 26, terrain interaction data index of 0 at (25, 10)
B 59470,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (6, 20), and apply vertical mirror (1)
B 59476,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (17, 20), and apply vertical mirror (1)
B 59482,6,6 Draw tree trunk 3 (47) with attribute data index of 22, terrain interaction data index of 0 at (26, 20)
B 59488,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59491,1,1 End Marker (room layout data)
b 59492 Room Layout Data (16) - Outdoors, 15 (The Castle Entrance)
B 59492,6,6 Draw Moon (51) with attribute data index of 5, terrain interaction data index of 0 at (0, 6)
B 59498,6,6 Draw Organon (56) with attribute data index of 7, terrain interaction data index of 0 at (18, 19)
B 59504,1,1 Draw layout data fragment 4 (Top of Tree with Face)
B 59505,6,6 Draw tree trunk 1 (44) with attribute data index of 19, terrain interaction data index of 0 at (5, 20)
B 59511,3,3 Start horizontal block drawing at (18, 9)
B 59514,7,7 Draw pattern of blocks
B 59521,1,1 End Marker (block drawing)
B 59522,3,3 Start horizontal block drawing at (18, 11)
B 59525,2,2 Draw 7 blocks of style 29
B 59527,1,1 End Marker (block drawing)
B 59528,3,3 Start horizontal block drawing at (20, 13)
B 59531,2,2 Draw 6 blocks of style 29
B 59533,1,1 End Marker (block drawing)
B 59534,3,3 Start horizontal block drawing at (20, 15)
B 59537,2,2 Draw 6 blocks of style 29
B 59539,1,1 End Marker (block drawing)
B 59540,3,3 Start horizontal block drawing at (20, 17)
B 59543,2,2 Draw 6 blocks of style 29
B 59545,1,1 End Marker (block drawing)
B 59546,3,3 Start horizontal block drawing at (20, 19)
B 59549,4,4 Draw pattern of blocks
B 59553,1,1 End Marker (block drawing)
B 59554,3,3 Start horizontal block drawing at (20, 21)
B 59557,4,4 Draw pattern of blocks
B 59561,1,1 End Marker (block drawing)
B 59562,3,3 Draw floor with floor character set UDG 52 and attribute 68 (green INK, black PAPER, BRIGHT)
B 59565,1,1 End Marker (room layout data)
b 59566 Room Layout Data (17) - Castle Ground Floor, 0 (One Axe Room)
B 59566,1,1 Draw layout data fragment 0 (Two Torches)
B 59567,1,1 Draw layout data fragment 2 (Plant)
B 59568,3,3 Start horizontal block drawing at (0, 5)
B 59571,2,2 Draw 32 blocks of style 1
B 59573,1,1 End Marker (block drawing)
B 59574,3,3 Start horizontal block drawing at (12, 15)
B 59577,5,5 Draw pattern of blocks
B 59582,1,1 End Marker (block drawing)
B 59583,3,3 Start horizontal block drawing at (10, 17)
B 59586,2,2 Draw pattern of blocks
B 59588,1,1 End Marker (block drawing)
B 59589,3,3 Start horizontal block drawing at (20, 17)
B 59592,6,6 Draw pattern of blocks
B 59598,1,1 End Marker (block drawing)
B 59599,3,3 Start horizontal block drawing at (22, 19)
B 59602,6,6 Draw pattern of blocks
B 59608,1,1 End Marker (block drawing)
B 59609,3,3 Start horizontal block drawing at (22, 21)
B 59612,2,2 Draw 5 blocks of style 1
B 59614,1,1 End Marker (block drawing)
B 59615,3,3 Start vertical block drawing at (0, 5)
B 59618,4,4 Draw pattern of blocks
B 59622,1,1 End Marker (block drawing)
B 59623,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59626,1,1 End Marker (room layout data)
b 59627 Room Layout Data (18) - Castle Ground Floor, 1 (Indoor Bowling Green)
B 59627,1,1 Draw layout data fragment 0 (Two Torches)
B 59628,3,3 Start horizontal block drawing at (0, 21)
B 59631,2,2 Draw 16 blocks of style 4
B 59633,1,1 End Marker (block drawing)
B 59634,3,3 Start horizontal block drawing at (0, 22)
B 59637,2,2 Draw 16 blocks of style 20
B 59639,1,1 End Marker (block drawing)
B 59640,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59643,1,1 End Marker (room layout data)
b 59644 Room Layout Data (19) - Castle Ground Floor, 2
B 59644,1,1 Draw layout data fragment 0 (Two Torches)
B 59645,6,6 Draw fire bowl (63) with attribute data index of 16, terrain interaction data index of 0 at (12, 12)
B 59651,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (14, 19)
B 59657,3,3 Start horizontal block drawing at (0, 21)
B 59660,1,1 Draw 1 block of style 1
B 59661,1,1 End Marker
B 59662,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59665,2,2 Paint glowing blocks at (13,12)...
B 59667,2,2 ...(14,12)...
B 59669,2,2 ...(15,12)...
B 59671,2,2 ...(16,12)...
B 59673,2,2 ...(13,13)...
B 59675,2,2 ...(14,13)...
B 59677,2,2 ...(15,13)...
B 59679,2,2 ...(16,13)...
B 59681,2,2 ...(13,14)...
B 59683,2,2 ...(14,14)...
B 59685,2,2 ...(15,14)...
B 59687,2,2 ...and (16,14)
B 59689,1,1 End Marker (room layout data)
b 59690 Room Layout Data (20) - Castle Ground Floor, 3
B 59690,1,1 Draw layout data fragment 0 (Two Torches)
B 59691,1,1 Draw layout data fragment 11 (Lever)
B 59692,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59695,1,1 End Marker (room layout data)
b 59696 Room Layout Data (21) - Castle Ground Floor, 4 (More Axe Problems)
B 59696,1,1 Draw layout data fragment 0 (Two Torches)
B 59697,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 14, terrain interaction data index of 0 at (15, 21)
B 59703,6,6 Draw Cracked Column Section 1 (61) with attribute data index of 12, terrain interaction data index of 0 at (15, 14)
B 59709,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 14, terrain interaction data index of 0 at (25, 21)
B 59715,6,6 Draw Cracked Column Section 1 (61) with attribute data index of 12, terrain interaction data index of 0 at (25, 14)
B 59721,6,6 Draw Cracked Column Section 2 (62) with attribute data index of 13, terrain interaction data index of 0 at (25, 9)
B 59727,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59730,1,1 End Marker (room layout data)
b 59731 Room Layout Data (22) - Castle Ground Floor, 5 (Even More Axes)
B 59731,6,6 Draw fire bowl (63) with attribute data index of 16, terrain interaction data index of 0 at (22, 12)
B 59737,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (24, 19)
B 59743,6,6 Draw fire bowl (63) with attribute data index of 16, terrain interaction data index of 0 at (4, 12)
B 59749,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (6, 19)
B 59755,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59758,1,1 End Marker (room layout data)
b 59759 Room Layout Data (23) - Castle Ground Floor, 6 (The First Jump Chute)
B 59759,1,1 Draw layout data fragment 0 (Two Torches)
B 59760,6,6 Draw large stool (65) with attribute data index of 17, terrain interaction data index of 3 at (15, 17)
B 59766,1,1 Draw layout data fragment 12 (Ceiling, Floor and Jump Chute)
B 59767,1,1 Draw layout data fragment 6 (Right Wall)
B 59768,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59771,1,1 End Marker (room layout data)
b 59772 Room Layout Data (24) - Castle First Floor, 0 (Main Lever 7)
B 59772,1,1 Draw layout data fragment 13 (Ceiling)
B 59773,1,1 Draw layout data fragment 5 (Left Wall)
B 59774,1,1 Draw layout data fragment 0 (Two Torches)
B 59775,6,6 Draw large stool (65) with attribute data index of 17, terrain interaction data index of 3 at (9, 17)
B 59781,6,6 Draw large stool (65) with attribute data index of 17, terrain interaction data index of 3 at (13, 17)
B 59787,6,6 Draw large stool (65) with attribute data index of 17, terrain interaction data index of 3 at (17, 17)
B 59793,1,1 Draw layout data fragment 11 (Lever)
B 59794,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59797,1,1 End Marker (room layout data)
b 59798 Room Layout Data (25) - Castle First Floor, 1 (Main Lever 6)
B 59798,1,1 Draw layout data fragment 13 (Ceiling)
B 59799,1,1 Draw layout data fragment 0 (Two Torches)
B 59800,1,1 Draw layout data fragment 11 (Lever)
B 59801,6,6 Draw fire bowl (63) with attribute data index of 16, terrain interaction data index of 0 at (12, 12)
B 59807,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (14, 19)
B 59813,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59816,2,2 Paint glowing blocks at (13,12)...
B 59818,2,2 ...(14,12)...
B 59820,2,2 ...(15,12)...
B 59822,2,2 ...(16,12)...
B 59824,2,2 ...(13,13)...
B 59826,2,2 ...(14,13)...
B 59828,2,2 ...(15,13)...
B 59830,2,2 ...(16,13)...
B 59832,2,2 ...(13,14)...
B 59834,2,2 ...(14,14)...
B 59836,2,2 ...(15,14)...
B 59838,2,2 ...and (16,14)
B 59840,1,1 End Marker (room layout data)
b 59841 Room Layout Data (26) - Castle First Floor, 2 (Security Door & Main Lever 5)
B 59841,1,1 Draw layout data fragment 13 (Ceiling)
B 59842,1,1 Draw layout data fragment 0 (Two Torches)
B 59843,3,3 Start horizontal block drawing at (11, 7)
B 59846,1,1 Draw 1 block of style 27
B 59847,1,1 End Marker (block drawing)
B 59848,3,3 Start vertical block drawing at (13, 5)
B 59851,2,2 Draw 7 blocks of style 33
B 59853,1,1 End Marker (block drawing)
B 59854,3,3 Start vertical block drawing at (15, 5)
B 59857,2,2 Draw 7 blocks of style 33
B 59859,1,1 End Marker (block drawing)
B 59860,3,3 Start vertical block drawing at (17, 5)
B 59863,2,2 Draw 7 blocks of style 33
B 59865,1,1 End Marker (block drawing)
B 59866,1,1 Draw Security Door (1/3) (layout data fragment 7)
B 59867,1,1 Draw Security Door (2/3) (layout data fragment 8)
B 59868,1,1 Draw Security Door (3/3) (layout data fragment 9)
B 59869,1,1 Draw layout data fragment 11 (Lever)
B 59870,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59873,1,1 End Marker (room layout data)
b 59874 Room Layout Data (27) - Castle First Floor, 3 (Main Lever 4)
B 59874,1,1 Draw layout data fragment 13 (Ceiling)
B 59875,1,1 Draw layout data fragment 0 (Two Torches)
B 59876,6,6 Draw Reggie (57) with attribute data index of 0, terrain interaction data index of 0 at (2, 21)
B 59882,3,3 Start horizontal block drawing at (12, 5)
B 59885,2,2 Draw 4 blocks of style 33
B 59887,1,1 End Marker (block drawing)
B 59888,3,3 Start horizontal block drawing at (12, 7)
B 59891,2,2 Draw 4 blocks of style 33
B 59893,1,1 End Marker (block drawing)
B 59894,3,3 Start horizontal block drawing at (12, 9)
B 59897,2,2 Draw 4 blocks of style 33
B 59899,1,1 End Marker (block drawing)
B 59900,3,3 Start horizontal block drawing at (12, 11)
B 59903,2,2 Draw 4 blocks of style 33
B 59905,1,1 End Marker (block drawing)
B 59906,3,3 Start horizontal block drawing at (12, 13)
B 59909,2,2 Draw 4 blocks of style 33
B 59911,1,1 End Marker (block drawing)
B 59912,1,1 Draw layout data fragment 17 (Middle Section of Corridor)
B 59913,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (10, 21)
B 59919,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (14, 21)
B 59925,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (18, 21)
B 59931,1,1 Draw layout data fragment 11 (Lever)
B 59932,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59935,1,1 End Marker (room layout data)
b 59936 Room Layout Data (28) - Castle First Floor, 4 (Main Lever 3)
B 59936,1,1 Draw layout data fragment 13 (Ceiling)
B 59937,1,1 Draw layout data fragment 0 (Two Torches)
B 59938,1,1 Draw layout data fragment 11 (Lever)
B 59939,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (10, 19)
B 59945,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (14, 19)
B 59951,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (18, 19)
B 59957,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (12, 15)
B 59963,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (16, 15)
B 59969,6,6 Draw plinth (64) with attribute data index of 15, terrain interaction data index of 0 at (14, 11)
B 59975,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59978,1,1 End Marker (room layout data)
b 59979 Room Layout Data (29) - Castle First Floor, 5 (Main Lever 2)
B 59979,1,1 Draw layout data fragment 13 (Ceiling)
B 59980,1,1 Draw layout data fragment 0 (Two Torches)
B 59981,1,1 Draw layout data fragment 11 (Lever)
B 59982,1,1 Draw layout data fragment 18 (Cracked Column)
B 59983,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59986,1,1 End Marker (room layout data)
b 59987 Room Layout Data (30) - Castle First Floor, 6 (Main Lever 1)
B 59987,1,1 Draw layout data fragment 0 (Two Torches)
B 59988,1,1 Draw layout data fragment 11 (Lever)
B 59989,1,1 Draw layout data fragment 6 (Right Wall)
B 59990,1,1 Draw layout data fragment 12 (Ceiling, Floor and Jump Chute)
B 59991,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 59994,2,2 Paint glowing blocks at (17,23)...
B 59996,2,2 ...(18,23)...
B 59998,2,2 ...(19,23)...
B 60000,2,2 ...and (20,23)
B 60002,1,1 End Marker (room layout data)
b 60003 Room Layout Data (31) - Castle Second Floor, 0 (The Broken Teleport)
B 60003,1,1 Draw layout data fragment 5 (Left Wall)
B 60004,1,1 Draw layout data fragment 1 (Teleport)
B 60005,1,1 Draw layout data fragment 0 (Two Torches)
B 60006,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60009,1,1 End Marker (room layout data)
b 60010 Room Layout Data (32) - Castle Second Floor, 1 (Terrible Twins)
B 60010,6,6 Draw Grunter-like statue (36) with attribute data index of 28, terrain interaction data index of 0 at (5, 11), and apply vertical mirror (1)
B 60016,6,6 Draw Grunter-like statue (36) with attribute data index of 28, terrain interaction data index of 0 at (16, 11)
B 60022,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60025,1,1 End Marker (room layout data)
b 60026 Room Layout Data (33) - Castle Second Floor, 2 (The Guardian Statues)
B 60026,1,1 Draw layout data fragment 0 (Two Torches)
B 60027,6,6 Draw Organon-like statue (56) with attribute data index of 7, terrain interaction data index of 0 at (3, 19)
B 60033,6,6 Draw Organon-like statue (56) with attribute data index of 7, terrain interaction data index of 0 at (6, 19)
B 60039,6,6 Draw Organon-like statue (56) with attribute data index of 7, terrain interaction data index of 0 at (9, 19)
B 60045,6,6 Draw Organon-like statue (56) with attribute data index of 7, terrain interaction data index of 0 at (12, 19)
B 60051,6,6 Draw Organon-like statue (56) with attribute data index of 7, terrain interaction data index of 0 at (15, 19)
B 60057,6,6 Draw Organon-like statue (56) with attribute data index of 7, terrain interaction data index of 0 at (18, 19)
B 60063,1,1 Draw layout data fragment 14 (Right Wall Section)
B 60064,1,1 Draw layout data fragment 15 (Right Section of Corridor)
B 60065,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60068,1,1 End Marker (room layout data)
b 60069 Room Layout Data (34) - Castle Second Floor, 3 (One Way Corridor, 1)
D 60069 This room also uses the following data block (at #R60070) as part of its layout definition.
B 60069,1,1 Draw layout data fragment 11 (Lever)
b 60070 Room Layout Data (35 / 36) - Castle Second Floor, 4 / 5 (One Way Corridor, 2 / 3)
B 60070,1,1 Draw layout data fragment 3 (Corridor with Partial Floor and Ceiling)
B 60071,1,1 Draw layout data fragment 15 (Right Section of Corridor)
B 60072,1,1 Draw layout data fragment 16 (Left Section of Corridor)
B 60073,1,1 Draw layout data fragment 17 (Middle Section of Corridor)
B 60074,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60077,1,1 End Marker (room layout data)
b 60078 Room Layout Data (37 / 44) - Castle Second Floor, 6 / Castle Third Floor, 6
B 60078,1,1 Draw layout data fragment 12 (Ceiling, Floor and Jump Chute)
B 60079,3,3 Start vertical block drawing at (0, 5)
B 60082,2,2 Draw 5 blocks of style 1
B 60084,1,1 End Marker (block drawing)
B 60085,3,3 Start vertical block drawing at (2, 5)
B 60088,2,2 Draw 5 blocks of style 1
B 60090,1,1 End Marker (block drawing)
B 60091,1,1 Draw layout data fragment 16 (Left Section of Corridor)
B 60092,1,1 Draw layout data fragment 0 (Two Torches)
B 60093,1,1 Draw layout data fragment 6 (Right Wall)
B 60094,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60097,2,2 Paint glowing blocks at (17,23)...
B 60099,2,2 ...(18,23)...
B 60101,2,2 ...(19,23)...
B 60103,2,2 ...and (20,23)
B 60105,1,1 End Marker (room layout data)
b 60106 Room Layout Data (38) - Castle Third Floor, 0 (Big White Statue)
B 60106,1,1 Draw layout data fragment 0 (Two Torches)
B 60107,6,6 Draw Grunter-like statue (36) with attribute data index of 30, terrain interaction data index of 0 at (6, 9)
B 60113,3,3 Start horizontal block drawing at (0, 21)
B 60116,2,2 Draw 8 blocks of style 1
B 60118,1,1 End Marker
B 60119,1,1 Draw layout data fragment 11 (Lever)
B 60120,1,1 Draw layout data fragment 5 (Left Wall)
B 60121,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60124,2,2 Paint glowing blocks at (17,23)...
B 60126,2,2 ...(18,23)...
B 60128,2,2 ...(19,23)...
B 60130,2,2 ...and (20,23)
B 60132,1,1 End Marker (room layout data)
b 60133 Room Layout Data (39) - Castle Third Floor, 1
B 60133,1,1 Draw layout data fragment 0 (Two Torches)
B 60134,1,1 Draw layout data fragment 18 (Cracked Column)
B 60135,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60138,1,1 End Marker (room layout data)
b 60139 Room Layout Data (40) - Castle Third Floor, 2 (Teleport Room, 1)
B 60139,1,1 Draw layout data fragment 14 (Right Wall Section)
B 60140,1,1 Draw layout data fragment 15 (Right Section of Corridor)
B 60141,1,1 Draw layout data fragment 0 (Two Torches)
B 60142,1,1 Draw layout data fragment 1 (Teleport)
B 60143,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60146,1,1 End Marker (room layout data)
b 60147 Room Layout Data (41 / 42 / 43) - Castle Third Floor, 3 / 4 / 5 (One Way Corridor, 4 / 5 / 6)
B 60147,1,1 Draw layout data fragment 3 (Corridor with Partial Floor and Ceiling)
B 60148,1,1 Draw layout data fragment 15 (Right Section of Corridor)
B 60149,1,1 Draw layout data fragment 16 (Left Section of Corridor)
B 60150,1,1 Draw layout data fragment 17 (Middle Section of Corridor)
B 60151,3,3 Draw floor with floor character set UDG 53 and attribute 7 (white INK, black PAPER)
B 60154,1,1 End Marker (room layout data)
b 60155 Room Layout Data (45) - Spaceship, 0 (The Control Room)
B 60155,6,6 Draw control console (43) with attribute data index of 4, terrain interaction data index of 0 at (2, 10)
B 60161,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (10, 12)
B 60167,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (17, 12)
B 60173,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (24, 12)
B 60179,1,1 Draw layout data fragment 5 (Left Wall)
B 60180,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60183,1,1 End Marker (room layout data)
b 60184 Room Layout Data (46) - Spaceship, 1 (Many Screened Room)
B 60184,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (1, 9)
B 60190,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (6, 9)
B 60196,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (11, 9)
B 60202,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (16, 9)
B 60208,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (21, 9)
B 60214,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (26, 9)
B 60220,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (1, 13)
B 60226,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (6, 13)
B 60232,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (11, 13)
B 60238,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (16, 13)
B 60244,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (21, 13)
B 60250,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (26, 13)
B 60256,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (1, 17)
B 60262,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (6, 17)
B 60268,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (11, 17)
B 60274,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (16, 17)
B 60280,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (21, 17)
B 60286,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (26, 17)
B 60292,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60295,1,1 End Marker (room layout data)
b 60296 Room Layout Data (47) - Spaceship, 2 (Teleport Room, 2)
B 60296,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (1, 12)
B 60302,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (25, 12)
B 60308,1,1 Draw layout data fragment 1 (Teleport)
B 60309,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60312,1,1 End Marker (room layout data)
b 60313 Room Layout Data (48) - Spaceship, 3
B 60313,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (3, 12)
B 60319,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (16, 12)
B 60325,3,3 Start horizontal block drawing at (0, 5)
B 60328,2,2 Draw 16 blocks of style 23
B 60330,1,1 End Marker (block drawing)
B 60331,3,3 Start horizontal block drawing at (20, 21)
B 60334,1,1 Draw 1 block of style 25
B 60335,1,1 End Marker (block drawing)
B 60336,3,3 Start vertical block drawing at (22, 19)
B 60339,2,2 Draw 2 blocks of style 25
B 60341,1,1 End Marker (block drawing)
B 60342,3,3 Start vertical block drawing at (24, 17)
B 60345,2,2 Draw 3 blocks of style 25
B 60347,1,1 End Marker (block drawing)
B 60348,3,3 Start vertical block drawing at (26, 15)
B 60351,2,2 Draw 4 blocks of style 25
B 60353,1,1 End Marker (block drawing)
B 60354,3,3 Start vertical block drawing at (28, 13)
B 60357,2,2 Draw 5 blocks of style 25
B 60359,1,1 End Marker (block drawing)
B 60360,3,3 Start vertical block drawing at (30, 13)
B 60363,2,2 Draw 5 blocks of style 25
B 60365,1,1 End Marker (block drawing)
B 60366,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60369,1,1 End Marker (room layout data)
b 60370 Room Layout Data (49) - Spaceship, 4 (The Power Plant)
B 60370,1,1 Draw layout data fragment 2 (Plant)
B 60371,3,3 Start horizontal block drawing at (0, 5)
B 60374,6,6 Draw pattern of blocks
B 60380,1,1 End Marker (block drawing)
B 60381,3,3 Start horizontal block drawing at (4, 19)
B 60384,1,1 Draw 1 block of style 19
B 60385,1,1 End Marker (block drawing)
B 60386,3,3 Start horizontal block drawing at (26, 19)
B 60389,1,1 Draw 1 block of style 19
B 60390,1,1 End Marker (block drawing)
B 60391,3,3 Start vertical block drawing at (0, 15)
B 60394,2,2 Draw 4 blocks of style 25
B 60396,1,1 End Marker (block drawing)
B 60397,3,3 Start vertical block drawing at (30, 15)
B 60400,2,2 Draw 4 blocks of style 25
B 60402,1,1 End Marker (block drawing)
B 60403,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60406,1,1 End Marker (room layout data)
b 60407 Room Layout Data (50) - Spaceship, 5
B 60407,6,6 Draw display screen (50) with attribute data index of 3, terrain interaction data index of 0 at (16, 12)
B 60413,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (25, 12)
B 60419,3,3 Start horizontal block drawing at (0, 5)
B 60422,2,2 Draw 16 blocks of style 23
B 60424,1,1 End Marker (block drawing)
B 60425,3,3 Start vertical block drawing at (0, 13)
B 60428,2,2 Draw 5 blocks of style 25
B 60430,1,1 End Marker (block drawing)
B 60431,3,3 Start vertical block drawing at (2, 13)
B 60434,2,2 Draw 5 blocks of style 25
B 60436,1,1 End Marker (block drawing)
B 60437,3,3 Start vertical block drawing at (4, 15)
B 60440,2,2 Draw 4 blocks of style 25
B 60442,1,1 End Marker (block drawing)
B 60443,3,3 Start vertical block drawing at (6, 17)
B 60446,2,2 Draw 3 blocks of style 25
B 60448,1,1 End Marker (block drawing)
B 60449,3,3 Start vertical block drawing at (8, 19)
B 60452,2,2 Draw 2 blocks of style 25
B 60454,1,1 End Marker (block drawing)
B 60455,3,3 Start vertical block drawing at (10, 21)
B 60458,1,1 Draw 1 block of style 25
B 60459,1,1 End Marker (block drawing)
B 60460,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60463,1,1 End Marker (room layout data)
b 60464 Room Layout Data (51) - Spaceship, 6
B 60464,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (5, 12)
B 60470,6,6 Draw control panel (49) with attribute data index of 2, terrain interaction data index of 0 at (14, 12)
B 60476,6,6 Draw monitor showing castle (48) with attribute data index of 1, terrain interaction data index of 0 at (23, 12)
B 60482,1,1 Draw layout data fragment 6 (Right Wall)
B 60483,3,3 Draw floor with floor character set UDG 54 and attribute 114 (red INK, yellow PAPER, BRIGHT)
B 60486,1,1 End Marker (room layout data)
b 60487 Lookup Table for RLE Attribute Data (Room Layout Graphics)
D 60487 Each entry is comprised of four bytes:
B 60487,4,4 (00) - #R60615 - No colouring
B 60491,4,4 (01) - #R60616 - Monitor Showing Castle
B 60495,4,4 (02) - #R60627 - Control Panel
B 60499,4,4 (03) - #R60630 - Display Screen
B 60503,4,4 (04) - #R60641 - Control Console
B 60507,4,4 (05) - #R60684 - Moon
B 60511,4,4 (06) - #R60687 - Torch
B 60515,4,4 (07) - #R60692 - Organon / Organon-like statue
B 60519,4,4 (08) - #R60695 - Plant
B 60523,4,4 (09) - #R60700 - Axe in Tree Stump
B 60527,4,4 (10) - #R60713 - Hut Roof / Top of Well
B 60531,4,4 (11) - #R60716 - Well
B 60535,4,4 (12) - #R60769 - Cracked Column Section 1
B 60539,4,4 (13) - #R60772 - Cracked Column Section 2
B 60543,4,4 (14) - #R60775 - Jump Chute / Corridor Pad
B 60547,4,4 (15) - #R60778 - Plinth
B 60551,4,4 (16) - #R60785 - Fire Bowl
B 60555,4,4 (17) - #R60790 - Large Stool
B 60559,4,4 (18) - #R60795 - Jump Chute / Corridor Pad
B 60563,4,4 (19) - #R60800 - Tree Trunk 1
B 60567,4,4 (20) - #R60803 - Tree Trunk 2
B 60571,4,4 (21) - #R60806 - Unused
B 60575,4,4 (22) - #R60809 - Tree Trunk 3
B 60579,4,4 (23) - #R60812 - Flowers
B 60583,4,4 (24) - #R60819 - Top of Tree With Face
B 60587,4,4 (25) - #R60840 - Top of Tree Without Face
B 60591,4,4 (26) - #R60849 - Top of Tree, Bare
B 60595,4,4 (27) - #R60852 - Unused
B 60599,4,4 (28) - #R60855 - Grunter / Grunter-like Statue (Green)
B 60603,4,4 (29) - #R60864 - Half of Teleport
B 60607,4,4 (30) - #R60873 - Grunter-like Statue (White)
B 60611,4,4 (31) - #R60882 - Sword in Concrete
b 60615 RLE Attribute Data (Room Layout Graphics)
D 60615 Run Length Encoded data used to paint attributes, with two bytes per entry (or a one-byte end marker represented by a zero). Records are comprised of: (00) - No colouring
B 60615,1,1 End Marker
N 60616 (01) - Monitor Showing Castle
B 60616,2,2 6 x 68 (green INK, black PAPER, BRIGHT)
B 60618,2,2 3 x 70 (yellow INK, black PAPER, BRIGHT)
B 60620,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 60622,2,2 3 x 70 (yellow INK, black PAPER, BRIGHT)
B 60624,2,2 6 x 68 (green INK, black PAPER, BRIGHT)
B 60626,1,1 End Marker
N 60627 (02) - Control Panel
B 60627,2,2 20 x 71 (white INK, black PAPER, BRIGHT)
B 60629,1,1 End Marker
N 60630 (03) - Display Screen
B 60630,2,2 10 x 71 (white INK, black PAPER, BRIGHT)
B 60632,2,2 1 x 68 (green INK, black PAPER, BRIGHT)
B 60634,2,2 4 x 71 (white INK, black PAPER, BRIGHT)
B 60636,2,2 1 x 68 (green INK, black PAPER, BRIGHT)
B 60638,2,2 4 x 71 (white INK, black PAPER, BRIGHT)
B 60640,1,1 End Marker
N 60641 (04) - Control Console
B 60641,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 60643,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60645,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 60647,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60649,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 60651,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60653,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 60655,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60657,2,2 1 x 68 (green INK, black PAPER, BRIGHT)
B 60659,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60661,2,2 1 x 68 (green INK, black PAPER, BRIGHT)
B 60663,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60665,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 60667,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60669,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60671,2,2 2 x 69 (cyan INK, black PAPER, BRIGHT)
B 60673,2,2 9 x 70 (yellow INK, black PAPER, BRIGHT)
B 60675,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60677,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 60679,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60681,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 60683,1,1 End Marker
N 60684 (05) - Moon
B 60684,2,2 25 x 71 (white INK, black PAPER, BRIGHT)
B 60686,1,1 End Marker
N 60687 (06) - Torch
B 60687,2,2 9 x 70 (yellow INK, black PAPER, BRIGHT)
B 60689,2,2 12 x 67 (magenta INK, black PAPER, BRIGHT)
B 60691,1,1 End Marker
N 60692 (07) - Organon / Organon-like statue
B 60692,2,2 8 x 71 (white INK, black PAPER, BRIGHT)
B 60694,1,1 End Marker
N 60695 (08) - Plant
B 60695,2,2 2 x 66 (red INK, black PAPER, BRIGHT)
B 60697,2,2 8 x 68 (green INK, black PAPER, BRIGHT)
B 60699,1,1 End Marker
N 60700 (09) - Axe in Tree Stump
B 60700,2,2 10 x 70 (yellow INK, black PAPER, BRIGHT)
B 60702,2,2 3 x 66 (red INK, black PAPER, BRIGHT)
B 60704,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60706,2,2 3 x 66 (red INK, black PAPER, BRIGHT)
B 60708,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60710,2,2 15 x 68 (green INK, black PAPER, BRIGHT)
B 60712,1,1 End Marker
N 60713 (10) - Hut Roof / Top of Well
B 60713,2,2 33 x 70 (yellow INK, black PAPER, BRIGHT)
B 60715,1,1 End Marker
N 60716 (11) - Well
B 60716,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 60718,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60720,2,2 7 x 71 (white INK, black PAPER, BRIGHT)
B 60722,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 60724,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60726,2,2 7 x 71 (white INK, black PAPER, BRIGHT)
B 60728,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60730,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60732,2,2 5 x 71 (white INK, black PAPER, BRIGHT)
B 60734,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60736,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60738,2,2 5 x 71 (white INK, black PAPER, BRIGHT)
B 60740,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60742,2,2 3 x 69 (cyan INK, black PAPER, BRIGHT)
B 60744,2,2 5 x 71 (white INK, black PAPER, BRIGHT)
B 60746,2,2 11 x 71 (white INK, black PAPER, BRIGHT)
B 60748,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 60750,2,2 6 x 7 (white INK, black PAPER)
B 60752,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60754,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 60756,2,2 6 x 7 (white INK, black PAPER)
B 60758,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60760,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 60762,2,2 6 x 7 (white INK, black PAPER)
B 60764,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60766,2,2 11 x 39 (white INK, green PAPER)
B 60768,1,1 End Marker
N 60769 (12) - Cracked Column Section 1
B 60769,2,2 28 x 70 (yellow INK, black PAPER, BRIGHT)
B 60771,1,1 End Marker
N 60772 (13) - Cracked Column Section 2
B 60772,2,2 24 x 70 (yellow INK, black PAPER, BRIGHT)
B 60774,1,1 End Marker
N 60775 (14) - Jump Chute / Corridor Pad
B 60775,2,2 8 x 71 (white INK, black PAPER, BRIGHT)
B 60777,1,1 End Marker
N 60778 (15) - Plinth
B 60778,2,2 3 x 67 (magenta INK, black PAPER, BRIGHT)
B 60780,2,2 6 x 70 (yellow INK, black PAPER, BRIGHT)
B 60782,2,2 3 x 68 (green INK, black PAPER, BRIGHT)
B 60784,1,1 End Marker
N 60785 (16) - Fire Bowl
B 60785,2,2 21 x 70 (yellow INK, black PAPER, BRIGHT)
B 60787,2,2 28 x  4 (green INK, black PAPER)
B 60789,1,1 End Marker
N 60790 (17) - Large Stool
B 60790,2,2 4 x 67 (magenta INK, black PAPER, BRIGHT)
B 60792,2,2 20 x 70 (yellow INK, black PAPER, BRIGHT)
B 60794,1,1 End Marker
N 60795 (18) - Jump Chute / Corridor Pad
B 60795,2,2 4 x 69 (cyan INK, black PAPER, BRIGHT)
B 60797,2,2 4 x 71 (white INK, black PAPER, BRIGHT)
B 60799,1,1 End Marker
N 60800 (19) - Tree Trunk 1
B 60800,2,2 12 x 68 (green INK, black PAPER, BRIGHT)
B 60802,1,1 End Marker
N 60803 (20) - Tree Trunk 2
B 60803,2,2 21 x 68 (green INK, black PAPER, BRIGHT)
B 60805,1,1 End Marker
N 60806 (21) - Unused
B 60806,2,2 12 x 68 (green INK, black PAPER, BRIGHT)
B 60808,1,1 End Marker
N 60809 (22) - Tree Trunk 3
B 60809,2,2 18 x 68 (green INK, black PAPER, BRIGHT)
B 60811,1,1 End Marker
N 60812 (23) - Flowers
B 60812,2,2 16 x 68 (green INK, black PAPER, BRIGHT)
B 60814,2,2 1 x 84 (green INK, red PAPER, BRIGHT)
B 60816,2,2 11 x 68 (green INK, black PAPER, BRIGHT)
B 60818,1,1 End Marker
N 60819 (24) - Top of Tree With Face
B 60819,2,2 24 x 68 (green INK, black PAPER, BRIGHT)
B 60821,2,2 9 x 68 (green INK, black PAPER, BRIGHT)
B 60823,2,2 1 x 66 (red INK, black PAPER, BRIGHT)
B 60825,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 60827,2,2 12 x 68 (green INK, black PAPER, BRIGHT)
B 60829,2,2 12 x 68 (green INK, black PAPER, BRIGHT)
B 60831,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 60833,2,2 1 x 66 (red INK, black PAPER, BRIGHT)
B 60835,2,2 9 x 68 (green INK, black PAPER, BRIGHT)
B 60837,2,2 12 x 68 (green INK, black PAPER, BRIGHT)
B 60839,1,1 End Marker
N 60840 (25) - Top of Tree Without Face
B 60840,2,2 35 x 68 (green INK, black PAPER, BRIGHT)
B 60842,2,2 1 x 66 (red INK, black PAPER, BRIGHT)
B 60844,2,2 16 x 68 (green INK, black PAPER, BRIGHT)
B 60846,2,2 2 x 66 (red INK, black PAPER, BRIGHT)
B 60848,1,1 End Marker
N 60849 (26) - Top of Tree, Bare
B 60849,2,2 70 x 68 (green INK, black PAPER, BRIGHT)
B 60851,1,1 End Marker
N 60852 (27) - Unused
B 60852,2,2 42 x 68 (green INK, black PAPER, BRIGHT)
B 60854,1,1 End Marker
N 60855 (28) - Grunter / Grunter-like Statue (Green)
B 60855,2,2 122 x 68 (green INK, black PAPER, BRIGHT)
B 60857,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60859,2,2 4 x 68 (green INK, black PAPER, BRIGHT)
B 60861,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60863,1,1 End Marker
N 60864 (29) - Half of Teleport
B 60864,2,2 3 x 7 (white INK, black PAPER)
B 60866,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60868,2,2 12 x 69 (cyan INK, black PAPER, BRIGHT)
B 60870,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 60872,1,1 End Marker
N 60873 (30) - Grunter-like Statue (White)
B 60873,2,2 122 x 71 (white INK, black PAPER, BRIGHT)
B 60875,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60877,2,2 4 x 71 (white INK, black PAPER, BRIGHT)
B 60879,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 60881,1,1 End Marker
N 60882 (31) - Sword in Concrete
B 60882,2,2 14 x 68 (green INK, black PAPER, BRIGHT)
B 60884,2,2 4 x 7 (white INK, black PAPER)
B 60886,2,2 12 x 71 (white INK, black PAPER, BRIGHT)
B 60888,1,1 End Marker
b 60889 Lookup Table for RLE Terrain Interaction Parameter Data (Room Layout Graphics)
D 60889 Each entry is comprised of four bytes:
B 60889,4,4 (00) - #R60615 - No interaction
B 60893,4,4 (01) - #R60909 - Jump Chute / Corridor Pad
B 60897,4,4 (02) - #R60912 - Axe in Tree Stump
B 60901,4,4 (03) - #R60917 - Large Stool
B 60905,4,4 (04) - #R60920 - Well
b 60909 RLE Terrain Interaction Parameter Data (Room Layout Graphics)
D 60909 Run Length Encoded data used to paint terrain interaction parameters, with two bytes per entry (or a one-byte end marker represented by a zero). Records are comprised of: (01) - Jump Chute / Corridor Pad
B 60909,2,2 4 x 255 (impassable horizontally, upwards and downwards / preserve attribute)
B 60911,1,1 End Marker
N 60912 (02) - Axe in Tree Stump
B 60912,2,2 20 x 0 (no interaction)
B 60914,2,2 3 x 128 (impassable downwards)
B 60916,1,1 End Marker
N 60917 (03) - Large Stool
B 60917,2,2 4 x 128 (impassable downwards)
B 60919,1,1 End Marker
N 60920 (04) - Well
B 60920,2,2 68 x 0 (no interaction)
B 60922,2,2 7 x 128 (impassable downwards)
B 60924,1,1 End Marker
b 60925 Room Layout Data Fragment Pointers
W 60925,2,2 (00) - Two Torches
W 60927,2,2 (01) - Teleport
W 60929,2,2 (02) - Plant
W 60931,2,2 (03) - Corridor with Partial Floor and Ceiling
W 60933,2,2 (04) - Top of Tree with Face
W 60935,2,2 (05) - Left Wall
W 60937,2,2 (06) - Right Wall
W 60939,2,2 (07) - Security Door (1/3)
W 60941,2,2 (08) - Security Door (2/3)
W 60943,2,2 (09) - Security Door (3/3)
W 60945,2,2 (10) - Blank
W 60947,2,2 (11) - Lever
W 60949,2,2 (12) - Ceiling, Floor and Jump Chute
W 60951,2,2 (13) - Ceiling
W 60953,2,2 (14) - Right Wall Section
W 60955,2,2 (15) - Right Section of Corridor
W 60957,2,2 (16) - Left Section of Corridor
W 60959,2,2 (17) - Middle Section of Corridor
W 60961,2,2 (18) - Cracked Column
b 60963 Room Layout Data Fragment (00) - Two Torches
B 60963,6,6 Draw torch (67) with attribute data index of 6, terrain interaction data index of 0 at (6, 10)
B 60969,6,6 Draw torch (67) with attribute data index of 6, terrain interaction data index of 0 at (22, 10)
B 60975,1,1 End Marker (room layout data fragment)
b 60976 Room Layout Data Fragment (01) - Teleport
B 60976,6,6 Draw left half of Teleport (1) with attribute data index of 29, terrain interaction data index of 0 at (14, 15)
B 60982,6,6 Draw left half of Teleport (1) with attribute data index of 29, terrain interaction data index of 0 at (17, 15), and apply vertical mirror (1)
B 60988,3,3 Start horizontal block drawing at (14, 22)
B 60991,2,2 Draw 3 blocks of style 1
B 60993,1,1 End Marker (block drawing)
B 60994,1,1 End Marker (room layout data fragment)
b 60995 Room Layout Data Fragment (02) - Plant
B 60995,6,6 Draw plant (66) with attribute data index of 8, terrain interaction data index of 0 at (15, 18)
B 61001,1,1 End Marker (room layout data fragment)
b 61002 Room Layout Data Fragment (03) - Corridor with Partial Floor and Ceiling
B 61002,3,3 Start horizontal block drawing at (0, 5)
B 61005,2,2 Draw 80 blocks of style 1
B 61007,1,1 End Marker (block drawing)
B 61008,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (8, 21)
B 61014,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (12, 21)
B 61020,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (16, 21)
B 61026,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (20, 21)
B 61032,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (4, 14), and apply horizontal mirror (2)
B 61038,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (8, 14), and apply horizontal mirror (2)
B 61044,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (20, 14), and apply horizontal mirror (2)
B 61050,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (24, 14), and apply horizontal mirror (2)
B 61056,1,1 End Marker (room layout data fragment)
b 61057 Room Layout Data Fragment (04) - Top of Tree with Face
B 61057,6,6 Draw top of tree with face (38) with attribute data index of 24, terrain interaction data index of 0 at (2, 13)
B 61063,1,1 End Marker (room layout data fragment)
b 61064 Room Layout Data Fragment (05) - Left Wall
B 61064,3,3 Start vertical block drawing at (0, 5)
B 61067,2,2 Draw 9 blocks of style 1
B 61069,1,1 End Marker (block drawing)
B 61070,1,1 End Marker (room layout data fragment)
b 61071 Room Layout Data Fragment (06) - Right Wall
B 61071,3,3 Start vertical block drawing at (30, 5)
B 61074,2,2 Draw 9 blocks of style 1
B 61076,1,1 End Marker (block drawing)
B 61077,1,1 End Marker (room layout data fragment)
b 61078 Room Layout Data Fragment (07) - Security Door (1/3)
B 61078,3,3 Start vertical block drawing at (13, 19)
B 61081,2,2 Draw 2 blocks of style 13
B 61083,1,1 End Marker (block drawing)
B 61084,1,1 End Marker (room layout data fragment)
b 61085 Room Layout Data Fragment (08) - Security Door (2/3)
B 61085,3,3 Start vertical block drawing at (15, 19)
B 61088,2,2 Draw 2 blocks of style 13
B 61090,1,1 End Marker (block drawing)
B 61091,1,1 End Marker (room layout data fragment)
b 61092 Room Layout Data Fragment (09) - Security Door (3/3)
B 61092,3,3 Start vertical block drawing at (17, 19)
B 61095,2,2 Draw 2 blocks of style 13
B 61097,1,1 End Marker (block drawing)
b 61098 Room Layout Data Fragment (10) - Blank
B 61098,1,1 End Marker (room layout data fragment)
b 61099 Room Layout Data Fragment (11) - Lever
B 61099,3,3 Start horizontal block drawing at (21, 17)
B 61102,1,1 Draw 1 block of style 15
B 61103,1,1 End Marker (block drawing)
B 61104,1,1 End Marker (room layout data fragment)
b 61105 Room Layout Data Fragment (12) - Ceiling, Floor and Jump Chute
B 61105,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (26, 21)
B 61111,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (26, 4), and apply horizontal mirror (2)
B 61117,3,3 Start horizontal block drawing at (0, 5)
B 61120,2,2 Draw 13 blocks of style 33
B 61122,1,1 End Marker (block drawing)
B 61123,1,1 End Marker (room layout data fragment)
b 61124 Room Layout Data Fragment (13) - Ceiling
B 61124,3,3 Start horizontal block drawing at (0, 5)
B 61127,2,2 Draw 16 blocks of style 33
B 61129,1,1 End Marker (block drawing)
B 61130,1,1 End Marker (room layout data fragment)
b 61131 Room Layout Data Fragment (14) - Right Wall Section
B 61131,3,3 Start vertical block drawing at (28, 5)
B 61134,2,2 Draw 5 blocks of style 1
B 61136,1,1 End Marker (block drawing)
B 61137,3,3 Start vertical block drawing at (30, 5)
B 61140,2,2 Draw 5 blocks of style 1
B 61142,1,1 End Marker (block drawing)
B 61143,1,1 End Marker (room layout data fragment)
b 61144 Room Layout Data Fragment (15) - Right Section of Corridor
B 61144,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (24, 21)
B 61150,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (28, 21)
B 61156,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (28, 14), and apply horizontal mirror (2)
B 61162,1,1 End Marker (room layout data fragment)
b 61163 Room Layout Data Fragment (16) - Left Section of Corridor
B 61163,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (0, 21)
B 61169,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (4, 21)
B 61175,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (0, 14), and apply horizontal mirror (2)
B 61181,1,1 End Marker (room layout data fragment)
b 61182 Room Layout Data Fragment (17) - Middle Section of Corridor
B 61182,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (12, 14), and apply horizontal mirror (2)
B 61188,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 18, terrain interaction data index of 1 at (16, 14), and apply horizontal mirror (2)
B 61194,1,1 End Marker (room layout data fragment)
b 61195 Room Layout Data Fragment (18) - Cracked Column
B 61195,6,6 Draw Jump Chute / Corridor Pad (60) with attribute data index of 14, terrain interaction data index of 0 at (10, 21)
B 61201,6,6 Draw Cracked Column Section 1 (61) with attribute data index of 12, terrain interaction data index of 0 at (10, 14)
B 61207,6,6 Draw Cracked Column Section 2 (62) with attribute data index of 13, terrain interaction data index of 0 at (10, 9)
B 61213,1,1 End Marker (room layout data fragment)
c 61214 Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode off and Draw a Graphic
D 61214 Used by the routine at #R40664.
C 61214,1 Load #R61373 with opcode for "NOP"...
C 61215,3 ...
C 61218,1 Load #R61373 and #R61373 with opcode for "NOP"
C 61219,1 ...
C 61220,3 ...
C 61223,3 Reset both Horizontal and Vertical Mirror Flags
C 61226,3 Set Pixel Row Counter to zero
C 61229,4 Load BC with x- and y-coordinates of graphic to draw
C 61233,3 Jump to #R61336 (draw the graphic then return)
c 61236 Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode off and Draw a Graphic
D 61236 Used by the routine at #R40664.
C 61236,2 Load #R61373 with opcode for "CALL"...
C 61238,3 ...
C 61241,3 Load #R61373 (i.e. operand of instruction at #R61373) with address of start of "Reverse the order of the bits in A" routine...
C 61244,3 ...
C 61247,1 Set Pixel Row Counter to zero...
C 61248,3 ...
C 61251,1 Set Apply Vertical Mirror Flag and reset Apply Horizontal Mirror Flag...
C 61252,3 ...
C 61255,3 Load B with y-coordinate of graphic to draw...
C 61258,1 ...
C 61259,3 Load C with x-coordinate of graphic to draw...
C 61262,1 ...and decrease by one...
C 61263,1 ...
C 61264,3 Jump to #R61336 (draw the graphic then return)
c 61267 Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode on and Draw a Graphic
D 61267 Used by the routine at #R40664.
C 61267,1 Load #R61373 with opcode for "NOP"...
C 61268,3 ...
C 61271,1 Load #R61373 and #R61373 with opcode for "NOP"
C 61272,1 ...
C 61273,3 ...
C 61276,2 Reset Apply Vertical Mirror Flag and set Apply Horizontal Mirror Flag...
C 61278,3 ...
C 61281,2 Set Pixel Row Counter to 7...
C 61283,3 ...
C 61286,3 Load C with x-coordinate of left edge of current graphic to draw...
C 61289,1 ...
C 61290,3 Load B with y-coordinate + 1 for current graphic...
C 61293,1 ...
C 61294,3 Jump to #R61323 (set coordinates, draw the graphic then return)
c 61297 Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode on and Draw a Graphic
D 61297 Used by the routine at #R40664.
C 61297,2 Load #R61373 with opcode for "CALL"...
C 61299,3 ...
C 61302,3 Load #R61373 (i.e. operand of instruction at #R61373) with address of start of "Reverse the order of the bits in A" routine...
C 61305,3 ...
C 61308,2 Set Pixel Row Counter to 7...
C 61310,3 ...
C 61313,2 Set both Horizontal and Vertical Mirror Flags...
C 61315,3 ...
C 61318,4 Load BC with coordinates (each +1) of bottom-right of graphic to draw
C 61322,1 Decrease x-coordinate by one
N 61323 This entry point is used by the routine at #R61267.
C 61323,4 Store coordinates at which to draw graphic at #R23444
C 61327,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 61330,2 Advance HL down to bottom pixel row in its current character block (as we are drawing up from the bottom)...
C 61332,1 ...
C 61333,1 ...
C 61334,2 Jump to #R61343 (draw the graphic then return)
c 61336 Room Drawing Draw a Graphic
D 61336 Used by the routines at #R61214 and #R61236. Input:  BC  x- and y-coordinates HL  (Entry at #R61343 only) Address in Display File to start drawing
C 61336,4 Store x- and y-coordinates of character block currently being drawn at #R23444
C 61340,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
N 61343 This entry point is used by the routine at #R61297.
C 61343,1 Store HL (address in Display File to print character)
C 61344,3 Load HL with 61418 (address of "Advance HL to next Display File Address to be drawn to (Apply Horizontal Mirror Flag reset)" routine)
C 61347,3 Load A with Apply Horizontal and Apply Vertical Mirror Flags
C 61350,2 If Apply Horizontal Mirror Flag is reset...
C 61352,2 ...then skip ahead to #R61357
C 61354,3 Load HL with 61521 (address of "Advance HL to next Display File Address to be drawn to (Apply Horizontal Mirror Flag set)" routine)
C 61357,3 Change destination for JP instruction at #R61415 to value in HL...
C 61360,1 Restore HL (address in Display File to print character)
C 61361,4 Load DE with graphic data address
N 61365 This entry point is used by the routine at #R61390.
C 61365,1 Load A with a byte of graphic data
C 61366,1 If data is zero...
C 61367,2 ...then read repeat counter value, x, and draw x rows of reset pixels
C 61369,2 If data is 255...
C 61371,2 ...then read repeat counter value, x, and draw x rows of set pixels
N 61373 The three-byte instruction at #R61373 is modified by the instructions at #R61215, #R61238, #R61268 and #R61299. Initially it is as shown below, however upon modification it can take the following forms: #TABLE(default,centre,:w) { =h Instruction | =h Mirror Options | =h Effect } { #R61215 | None | NOP / NOP / NOP (do nothing) } { #R61238 | Apply Vertical | CALL #R61625 (Reverse the order of the bits in A) } { #R61268 | Apply Horizontal | NOP / NOP / NOP (do nothing) } { #R61299 | Both | CALL #R61625 (Reverse the order of the bits in A) } TABLE#
C 61373,3 Reverse the order of the bits in A [This instruction is modified by the instructions at #R61215, #R61238, #R61268 and #R61299]
C 61376,3 Load byte of graphic data in A into Display File address in HL
C 61379,1 Advance DE to next byte of graphic data
C 61380,3 Advance HL to next location in Display File (up or down one pixel)...
C 61383,3 ...and if this new location is not outside dimensions of the graphic then loop back to #R61365
N 61386 This entry point is used by the routine at #R61390.
C 61386,1 Return
c 61387 Load Contents of A into Memory Location Pointed to by HL
D 61387 Used by the routines at #R61336 and #R61390. Input:  A  A byte of (e.g. graphic) data HL  An address (e.g. in Display File)
C 61387,1 Do nothing (see trivia)
C 61388,1 Load byte of graphic data into Display File address HL
C 61389,1 Return
c 61390 Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Reset Pixels
D 61390 Used by the routine at #R61336. Input:  DE  Current position in graphic data
C 61390,2 Set C to zero (all bits reset)
N 61392 This entry point is used by the routine at #R61411.
C 61392,1 Advance graphic data pointer
C 61393,1 Load next data byte (repeat counter) into A
C 61394,1 Advance graphic data pointer
C 61395,1 Load B (repeat counter) with value in A
C 61396,1 Load A with zero (i.e. all eight pixel bits reset)
C 61397,3 Load byte of graphic data in A into Display File address in HL
C 61400,3 Advance HL to next location in Display File (up or down one pixel)...
C 61403,3 ...and if this new location is outside dimensions of the graphic then jump to #R61386 (return)
C 61406,2 Decrease repeat counter and loop back to #R61396 if not zero
C 61408,3 Jump back to #R61365 to process next graphic data byte
c 61411 Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Set Pixels
D 61411 Used by the routine at #R61336.
C 61411,2 Load C with 255 (all bits set)
C 61413,2 Read repeat counter value, x, and draw x rows of set pixels
c 61415 Room Drawing Jump to routine to advance HL to next Display File address to be drawn to
D 61415 Destination of jump (i.e. WORD value at 61416) depends upon whether or not the Apply Horizontal Mirror Flag is set. If the flag is set, then the jump destination is #R61521, otherwise, the jump destination is #R61418. Input: HL  A Display File address
C 61415,3 Advance HL to next Display File Address to be drawn to, depending upon state of Apply Horizontal Mirror Flag and return
c 61418 Room Drawing Advance HL to next Display File address to be drawn to (Apply Horizontal Mirror Flag reset)
D 61418 Used when Apply Horizontal Mirror Flag is reset Input:  HL  A Display File address Output: A  1 (if returning via #R61493, drawing complete), otherwise zero F  Zero Flag reset (if returning via #R61493, drawing complete)
C 61418,3 Increase Pixel Row Counter...
C 61421,1 ...
C 61422,2 ...and reset to zero if it exceeds 7...
C 61424,3 ...
C 61427,2 If new value of Pixel Row Counter is zero (i.e. we have rolled over to a new character block) then advance HL to next character block to be drawn and return
C 61429,1 Increase Display File address by 256 bytes (i.e. move to next pixel row down)
C 61430,1 Set A to zero
C 61431,1 Return
N 61432 This next section advances HL to next character block to be drawn
C 61432,3 Load A with Horizontal and Vertical Mirror Flags
C 61435,2 If Apply Vertical Mirror Flag is set...
C 61437,3 ...then skip ahead to #R61494
C 61440,1 Store BC
C 61441,3 Load x-coordinate of character block currently being drawn into A...
C 61444,1 ...increase by one...
C 61445,1 ...and load into B
C 61446,3 Load (x-coordinate + 1) of right of graphic being drawn into A
C 61449,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's right edge)...
C 61450,2 ...then jump to #R61466
C 61452,1 Store increased x-coordinate at #R23444...
C 61453,3 ...
C 61456,4 Load BC with coordinates of new character block to draw
C 61460,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 61463,1 Set A to zero
C 61464,1 Restore BC
C 61465,1 Return
N 61466 This next section advances HL to next character row to be drawn
C 61466,3 Load A with x-coordinate of left of graphic to draw...
C 61469,3 ...and set current x-coordinate to match
C 61472,3 Load current y-coordinate into C, increasing by one...
C 61475,1 ...
C 61476,1 ...
C 61477,3 Load (y-coordinate + 1) of bottom of graphic being drawn into A
C 61480,1 If both y-coordinates are the same (i.e. we have moved beyond graphic's bottom edge)...
C 61481,2 ...then skip ahead to #R61489
C 61483,1 Store increased y-coordinate at #R23445...
C 61484,3 ...
C 61487,2 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
N 61489 This entry point is used by the routine at #R61521.
C 61489,2 Load A with 1
C 61491,1 Reset Zero Flag
C 61492,1 Restore BC
C 61493,1 Return
N 61494 This next section advances HL to next character block to be drawn where the Apply Vertical Mirror Flag is set
C 61494,1 Store BC
C 61495,3 Load x-coordinate of character block currently being drawn into A...
C 61498,1 ...decrease by one...
C 61499,1 ...and load into B
C 61500,3 Load x-coordinate of left of graphic being drawn into A...
C 61503,1 ...and decrease by one
C 61504,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's left edge)...
C 61505,2 ...then jump to #R61514
C 61507,1 Store decreased x-coordinate at #R23444...
C 61508,3 ...
C 61511,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
C 61514,3 Load x-coordinate of right of graphic being drawn into A...
C 61517,1 ...
C 61518,3 Move current character position down one character row and return
c 61521 Room Drawing Advance HL to next Display File address to be drawn to (Apply Horizontal Mirror Flag set)
D 61521 Used when Apply Horizontal Mirror Flag is set Input:  HL  A Display File address Output: A  1 (if returning via #R61493, drawing complete), otherwise zero F  Zero Flag reset (if returning via #R61493, drawing complete)
C 61521,3 Increase Pixel Row Counter...
C 61524,1 ...
C 61525,2 ...and reset to 7 if it falls below zero...
C 61527,3 ...
C 61530,2 If new value of Pixel Row Counter is 7 (i.e. we have rolled over to a new character block)...
C 61532,2 ...then advance HL to next character block to be drawn and return
C 61534,1 Decrease Display File address by 256 bytes (i.e. move to next pixel row up)
C 61535,1 Set A to zero
C 61536,1 Return
N 61537 This next section advances HL to next character block to be drawn
C 61537,3 Load A with Horizontal and Vertical Mirror Flags
C 61540,2 If Apply Vertical Mirror Flag is set...
C 61542,3 ...then skip ahead to #R61598
C 61545,1 Store BC
C 61546,3 Load x-coordinate of character block currently being drawn into A...
C 61549,1 ...increase by one...
C 61550,1 ...and load into B
C 61551,3 Load (x-coordinate + 1) of right of graphic being drawn into A
C 61554,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's right edge)...
C 61555,2 ...then jump to #R61575
C 61557,1 Store increased x-coordinate at #R23444...
C 61558,3 ...
C 61561,4 Load BC with coordinates of new character block to draw
C 61565,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 61568,2 Advance HL down seven pixel rows to bottom of character block...
C 61570,1 ...
C 61571,1 ...
C 61572,1 Set A to zero
C 61573,1 Restore BC
C 61574,1 Return
N 61575 This next section advances HL to next character row to be drawn
C 61575,3 Load A with x-coordinate of left of graphic to draw...
C 61578,3 ...and set current x-coordinate to match
C 61581,3 Load current y-coordinate into C, decreasing by one...
C 61584,1 ...
C 61585,1 ...
C 61586,3 Load y-coordinate of top of graphic being drawn into A
C 61589,1 If both y-coordinates are the same (i.e. we have moved beyond graphic's top edge)...
C 61590,2 ...then jump to #R61489 (load A with 1, reset Zero Flag and return)
C 61592,1 Store increased y-coordinate at #R23445...
C 61593,3 ...
C 61596,2 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
N 61598 This next section advances HL to next character block to be drawn where the Apply Vertical Mirror Flag is set
C 61598,1 Store BC
C 61599,3 Load x-coordinate of character block currently being drawn into A...
C 61602,1 ...decrease by one...
C 61603,1 ...and load into B
C 61604,3 Load x-coordinate of left of graphic being drawn into A...
C 61607,1 ...and decrease by one
C 61608,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's left edge)...
C 61609,2 ...then jump to #R61618
C 61611,1 Store decreased x-coordinate at #R23444...
C 61612,3 ...
C 61615,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
C 61618,3 Load x-coordinate of right of graphic being drawn into A...
C 61621,1 ...
C 61622,3 Move current character position down one character row and return
c 61625 Reverse the order of the bits in A
D 61625 For example, if A is 3 (00000011) at input, then at output, A will be 192 (11000000). Input:  A  A bitmap Output: A  A vertically mirrored bitmap
C 61625,1 Store BC
C 61626,2 Load B with 8 (eight bits)
C 61628,2 Load C with zero
C 61630,1 Shift bit right out of A and into Carry Flag
C 61631,2 Shift bit left out of Carry Flag and into C
C 61633,2 Loop back to #R61630 for next bit
C 61635,1 Load modified bitmap back into A
C 61636,1 Restore BC
C 61637,1 Return
c 61638 Store Background Bitmap Data at Magic Knight's Current Location
D 61638 Used by the routine at #R61860.
C 61638,3 Point DE at Table of Bitmap Data for Magic Knight at his Current Location
C 61641,3 Load HL with double Magic Knight's current y-coordinate (pixels)...
C 61644,1 ...
C 61645,2 ...
C 61647,1 ...
C 61648,3 Point BC at Table of Display File Addresses of Start of Each Pixel Row
C 61651,1 Add double y-coordinate as offset in HL
C 61652,3 Store pointer to entry for pixel row at Magic Knight's current y-coordinate
C 61655,3 Load A with Magic Knight's current x-coordinate (pixels)
C 61658,1 Divide by two
C 61659,1 Store AF (A = Magic Knight's current x-coordinate in pixels, divided by two)
C 61660,2 Clear all but the lowest three bits...
C 61662,3 ...and store the remaining value as Magic Knight's current frame index
C 61665,1 Restore AF (A = Magic Knight's current x-coordinate in pixels, divided by two)
C 61666,1 Divide Magic Knight's current x-coordinate in pixels by eight and remove remainder...
C 61667,1 ...
C 61668,2 ...
C 61670,3 Store value (Magic Knight's current x-coordinate in characters) at #R23414...
C 61673,1 ...and load into C
C 61674,2 Load B with 32 (as Magic Knight is 32 pixels tall)
C 61676,4 Load IX with pointer to entry for pixel row at Magic Knight's current y-coordinate
C 61680,1 Store BC (B = remaining number of pixel rows to store, C = MK's x-coordinate in characters)
C 61681,3 Load Display File address of pixel row at IX into HL...
C 61684,2 ...and advance IX to entry for next pixel row down...
C 61686,3 ...
C 61689,2 ...
C 61691,2 Set B to zero (BC = Magic Knight's current x-coordinate in characters)
C 61693,1 Add BC to HL as offset
C 61694,1 Copy three bytes of graphic data from Display File address...
C 61695,1 ...into Table of Background Bitmap Data...
C 61696,1 ...as Magic Knight can only occupy three consecutive character blocks horizontally...
C 61697,1 ...
C 61698,1 ...
C 61699,1 ...
C 61700,1 ...
C 61701,1 ...
C 61702,1 ...
C 61703,1 ...
C 61704,1 ...
C 61705,1 Restore BC (B = remaining number of pixel rows to store, C = MK's x-coordinate in characters)
C 61706,2 Decrease B (remaining number of pixel rows to store) and loop back to #R61680 if non-zero for next pixel row
C 61708,3 Copy contents of Table of Bitmap Data for Magic Knight at his Current Location to Table of Background Bitmap Data #R24672...
C 61711,3 ...
C 61714,3 ...
C 61717,2 ...
C 61719,1 Return
c 61720 Overlay Graphic Data for MK's Current Frame on Table of Bitmap Data for MK at his Current Location
D 61720 Used by the routine at #R61860.
C 61720,3 Load Magic Knight's current frame index into A...
C 61723,1 ...multiply by 48...
C 61724,1 ...
C 61725,1 ...
C 61726,1 ...
C 61727,1 ...
C 61728,1 ...
C 61729,1 ...
C 61730,1 ...load into HL...
C 61731,2 ...
C 61733,1 ...and double again to give 96 times original value, as graphic data for MK's frames are 96 bytes each
C 61734,3 If Magic Knight Facing Left Flag is reset...
C 61737,1 ...
C 61738,2 ...then skip ahead to #R61744
C 61740,3 Advance HL by 384 bytes...
C 61743,1 ...i.e. prepare to use left-facing graphic data, rather than right-facing...
C 61744,1 Copy value in HL to IX...
C 61745,2 ...
C 61747,3 Point DE at start of graphic data for Magic Knight facing right, frame 1 (mask)
C 61750,1 Add HL as offset in HL (HL now points to start of graphic data for Magic Knight's current frame mask)
C 61751,3 Point DE at start of graphic data for Magic Knight facing right, frame 1
C 61754,2 Add IX as offset in IX (IX now points to start of graphic data for Magic Knight's current frame)
C 61756,3 Point DE at Table of Bitmap Data for Magic Knight at his Current Location
C 61759,2 Load B with 96, as Magic Knight's bitmap graphic data is 96 bytes per frame
C 61761,1 Load current background bitmap byte into A
C 61762,1 Apply mask to bitmap data
C 61763,3 Overlay Magic Knight bitmap graphic data
C 61766,1 Store result back into Table of Background Bitmap Data
C 61767,1 Advance HL to next byte in Magic Knight mask bitmap data
C 61768,1 Advance DE to next byte in background graphic bitmap data
C 61769,2 Advance IX to next byte in Magic Knight graphic bitmap data
C 61771,2 Decrease B (remaining number of bytes to process) and loop back to #R61761
C 61773,1 Return
c 61774 Draw Bitmap Data for Magic Knight Overlaid on Background to Display File
D 61774 Used by the routine at #R61860. Input:  DE  (Entry at #R61777 only) Address of Table of Background Bitmap Data (#R24672)
C 61774,3 Point DE at Table of Bitmap Data for Magic Knight at his Current Location
N 61777 This entry point is used by the routines at #R39553 and #R61823.
C 61777,4 Load IX with pointer to entry in Table of Display File Addresses for pixel row at Magic Knight's current y-coordinate
C 61781,3 Load C with Magic Knight's current x-coordinate (characters)...
C 61784,1 ...
C 61785,2 Load B with 32 (as Magic Knight is 32 pixels tall)
C 61787,1 Store BC (B = remaining number of pixel rows to draw, C = MK's x-coordinate in characters)
C 61788,3 Load Display File address of pixel row at IX into HL...
C 61791,2 ...and advance IX to entry for next pixel row down...
C 61793,3 ...
C 61796,2 ...
C 61798,2 Set B to zero (BC = Magic Knight's current x-coordinate in characters)
C 61800,1 Add BC to HL as offset
C 61801,1 Copy three bytes of graphic data from Table of Bitmap Data for Magic Knight at his Current Location...
C 61802,1 ...into Display File...
C 61803,1 ...as Magic Knight can only occupy three consecutive character blocks horizontally...
C 61804,1 ...
C 61805,1 ...
C 61806,1 ...
C 61807,1 ...
C 61808,1 ...
C 61809,1 ...
C 61810,1 ...
C 61811,1 ...
C 61812,1 Restore BC (B = remaining number of pixel rows to store, C = MK's x-coordinate in characters)
C 61813,2 Decrease B (remaining number of pixel rows to draw) and loop back to #R61787 if non-zero for next pixel row
C 61815,1 Return
c 61816 Set Redraw Magic Knight On Next Interrupt Flag and Wait for Interrupt
D 61816 Used by the routines at #R38205, #R38434, #R40527 and #R40546.
C 61816,2 Set Redraw Magic Knight On Next Interrupt Flag...
C 61818,3 ...
C 61821,1 Wait for interrupt (i.e. redraw Magic Knight, etc.)
C 61822,1 Return
c 61823 Erase Magic Knight from Display, Advance his Current Position then Redraw
D 61823 Used by the routine at #R62178.
C 61823,2 Store IX
C 61825,3 Draw axe(s) to screen if Magic Knight is in an axe room
C 61828,3 Point DE at Table of Background Bitmap Data
C 61831,3 Restore background bitmap data (i.e. remove Magic Knight bitmap data from display)
C 61834,3 If Player Attribute Update Flag is set...
C 61837,1 ...
C 61838,3 ...then restore background attribute data at Magic Knight's current location
C 61841,2 Restore IX
C 61843,3 Point HL at Magic Knight's current x-coordinate
C 61846,3 Load A with Magic Knight's current x-velocity...
C 61849,1 ...and add to this Magic Knight's current x-coordinate
C 61850,1 Set this as Magic Knight's new x-coordinate
C 61851,1 Advance HL to Magic Knight's y-coordinate
C 61852,3 Load A with Magic Knight's current y-velocity...
C 61855,1 ...and add to this Magic Knight's current y-coordinate
C 61856,1 Set this as Magic Knight's new y-coordinate
C 61857,1 Load A with 0 (prepare to reset Do Not Draw Axes Flag)
C 61858,2 Store background attributes if appropriate, then draw Magic Knight (and axes if appropriate) to display, then return
c 61860 Store Background Attributes if Appropriate, then Draw Magic Knight to Display Without Drawing Axes
D 61860 Used by the routines at #R39393, #R39553 and #R44253. Input:  A  (Entry at #R61866 only) Value for Do Not Draw Axes Flag
C 61860,1 Reset Redraw Magic Knight On Next Interrupt Flag...
C 61861,3 ...
C 61864,2 Load A with 1 (prepare to set Do Not Draw Axes Flag)
N 61866 This entry point is used by the routine at #R61823.
C 61866,2 Store IX
C 61868,3 (Re)set Do Not Draw Axes Flag to value in A
C 61871,3 If Player Attribute Update Flag is set (Player Attribute Update mode)...
C 61874,1 ...
C 61875,3 ...then store background attribute data at Magic Knight's current location
C 61878,3 Store background bitmap data at Magic Knight's current location
C 61881,3 Overlay graphic data for MK's current frame on Table of Bitmap Data for MK at his Current Location
C 61884,3 Draw bitmap data for Magic Knight overlaid on background to Display File
C 61887,3 If Do Not Draw Axes Flag is reset...
C 61890,1 ...
C 61891,3 ...then draw axe(s) to screen if Magic Knight is in an axe room
C 61894,3 Store Magic Knight's current x-coordinate (characters) at #R23415...
C 61897,3 ...
C 61900,3 Store Magic Knight's current y-coordinate (pixels) at #R23416...
C 61903,3 ...
C 61906,2 Restore IX
C 61908,1 Reset Redraw Magic Knight On Next Interrupt Flag...
C 61909,3 ...
C 61912,1 Return
c 61913 Store Background Attribute Data at Magic Knight's Current Location
D 61913 Used by the routine at #R61860.
C 61913,3 Point DE at Table of Background Attribute data
C 61916,3 Load A with Magic Knight's current y-coordinate (pixels)
C 61919,2 Clear lowest three bits to round down to nearest multiple of 8
C 61921,1 Load this value into HL...
C 61922,2 ...
C 61924,1 Multiply by four to obtain 32 x y-coordinate (characters)...
C 61925,1 ...
C 61926,3 Load A with Magic Knight's current x-coordinate (pixels)
C 61929,1 Divide this by eight, rounding down to nearest integer...
C 61930,1 ...to convert from pixels to characters...
C 61931,1 ...
C 61932,2 ...
C 61934,1 Load x-coordinate (characters) into BC...
C 61935,2 ...
C 61937,1 Add x-coordinate to 32 x y-coordinate in HL
C 61938,1 Store HL (32 x y-coordinate in characters)
C 61939,3 Add this to start address of Attribute File...
C 61942,1 ...so that HL points to required byte in Attribute File
C 61943,1 Put Attribute File address on top of stack and load HL with 32 x y-coordinate
C 61944,3 Point BC at start of Terrain Interaction Data Table...
C 61947,1 ...and add 32 x y-coordinate as offset in HL
C 61948,1 Restore Attribute File address to HL...
C 61949,2 ...and load IX with Terrain Interaction address
C 61951,3 Load C with Magic Knight's attribute...
C 61954,1 ...
C 61955,2 Load B with 4 as Magic Knight is four characters tall
C 61957,1 Store BC (B = remaining number of character rows)
C 61958,1 Copy byte from Attribute File...
C 61959,1 ...into Table of Background Attribute Data
C 61960,4 If Preserve Attribute Terrain Interaction Flag is set for this character...
C 61964,2 ...then skip ahead to #R61967
C 61966,1 Set current Attribute File byte to match Magic Knight's attribute
C 61967,1 Advance current position in Attribute File
C 61968,1 Advance current position in Table of Background Attribute Data
C 61969,1 Copy byte from Attribute File...
C 61970,1 ...into Table of Background Attribute Data
C 61971,4 If Preserve Attribute Terrain Interaction Flag is set for this character...
C 61975,2 ...then skip ahead to #R61978
C 61977,1 Set current Attribute File byte to match Magic Knight's attribute
C 61978,1 Advance current position in Attribute File
C 61979,1 Advance current position in Table of Background Attribute Data
C 61980,1 Copy byte from Attribute File...
C 61981,1 ...into Table of Background Attribute Data
C 61982,4 If Preserve Attribute Terrain Interaction Flag is set for this character...
C 61986,2 ...then skip ahead to #R61989
C 61988,1 Set current Attribute File byte to match Magic Knight's attribute
C 61989,1 Advance current position in Table of Background Attribute Data
C 61990,3 Advance current position in Attribute File by 30 bytes...
C 61993,1 ...i.e. down one character and left two characters
C 61994,3 Advance current position in Terrain Interaction Data Table by 32 bytes...
C 61997,2 ...i.e. down one character
C 61999,1 Restore BC (B = remaining number of character rows)
C 62000,2 If character rows remain then loop back to #R61957
C 62002,1 Return
c 62003 Restore Background Attribute Data at Magic Knight's Current Location
D 62003 Used by the routines at #R39553 and #R61823.
C 62003,3 Point DE at Table of Background Attribute Data
C 62006,3 Load A with Magic Knight's current y-coordinate (pixels)
C 62009,2 Clear lowest three bits to round down to nearest multiple of 8
C 62011,1 Load this value into HL...
C 62012,2 ...
C 62014,1 Multiply by four to obtain 32 x y-coordinate (characters)...
C 62015,1 ...
C 62016,3 Load A with Magic Knight's current x-coordinate (pixels)
C 62019,1 Divide this by eight, rounding down to nearest integer...
C 62020,1 ...to convert from pixels to characters...
C 62021,1 ...
C 62022,2 ...
C 62024,1 Load x-coordinate (characters) into BC...
C 62025,2 ...
C 62027,1 Add x-coordinate to 32 x y-coordinate in HL...
C 62028,3 ...then add this to start address of Attribute File...
C 62031,1 ...so that HL points to required byte in Attribute File
C 62032,2 Load B with 4 as Magic Knight is four characters tall
C 62034,1 Store BC (B = remaining number of character rows)
C 62035,1 Copy byte from Table of Background Attribute Data...
C 62036,1 ...into Attribute File
C 62037,1 Advance current position in Attribute File
C 62038,1 Advance current position in Table of Background Attribute Data
C 62039,1 Copy byte from Table of Background Attribute Data...
C 62040,1 ...into Attribute File
C 62041,1 Advance current position in Attribute File
C 62042,1 Advance current position in Table of Background Attribute Data
C 62043,1 Copy byte from Table of Background Attribute Data...
C 62044,1 ...into Attribute File
C 62045,1 Advance current position in Table of Background Attribute Data
C 62046,3 Advance current position in Attribute File by 30 bytes...
C 62049,1 ...i.e. down one character and left two characters
C 62050,1 Restore BC (B = remaining number of character rows)
C 62051,2 If character rows to be coloured remain then loop back to #R62034
C 62053,1 Return
b 62054 Table of Start Addresses of Input Device Reading Routines
W 62054,2,2 Address of keyboard reading routine
W 62056,2,2 Address of Kempston Joystick reading routine
W 62058,2,2 Address of Cursor Joystick reading routine
W 62060,2,2 Address of Sinclair Joystick 1 reading routine
b 62062 Powers of Ten (Used by Routine at 47797) for Converting Numbers to ASCII String
W 62062,10,2
b 62072 Addresses of Room-Specific Routines
W 62072,2,2 (00) - Do Nothing - Limbo
W 62074,2,2 (01) - Do Nothing - Outdoors, 0 (Bearwoolf's Hoard)
W 62076,2,2 (02) - Display Cave Progress and Set Magic Knight's x-Velocity to 2 if at Floor Level - Outdoors, 1 (Bearwoolf's Cave)
W 62078,2,2 (03) - Kill Magic Knight if he is Too Close to Bearwoolf - Outdoors, 2 (Beware Bearwoolf)
W 62080,2,2 (04) - Do Nothing - Outdoors, 3 (The Spooky Forest, 1)
W 62082,2,2 (05) - Do Nothing - Outdoors, 4
W 62084,2,2 (06) - Do Nothing - Outdoors, 5 (The Spooky Forest, 2)
W 62086,2,2 (07) - Do Nothing - Outdoors, 6 (The Sword in the Concrete)
W 62088,2,2 (08) - Do Nothing - Outdoors, 7 (Robin's Little Hut)
W 62090,2,2 (09) - Do Nothing - Outdoors, 8 (Exit from Limbo)
W 62092,2,2 (10) - Do Nothing - Outdoors, 9 (More Spooky Forest)
W 62094,2,2 (11) - Do Nothing - Outdoors, 10 (Entwood)
W 62096,2,2 (12) - Do Nothing - Outdoors, 11 (The Spooky Forest, 3)
W 62098,2,2 (13) - Do Nothing - Outdoors, 12 (The Spooky Forest, 4)
W 62100,2,2 (14) - Check for Egg Dropped down Wishing Well and Set Wish Pending Flag and Display Message If Appropriate - Outdoors, 13 (Wishing Well)
W 62102,2,2 (15) - Do Nothing - Outdoors, 14
W 62104,2,2 (16) - Enable / Disable Entry to Castle Depending Upon Disquise Worn and Whether Newspaper is Held - Outdoors, 15 (The Castle Entrance)
W 62106,2,2 (17) - Update Position of 1 Axe and Display - Castle Ground Floor, 0 (One Axe Room)
W 62108,2,2 (18) - Update Position of 1 Axe and Display - Castle Ground Floor, 1 (Indoor Bowling Green)
W 62110,2,2 (19) - Update Position of 1 Axe and Display - Castle Ground Floor, 2
W 62112,2,2 (20) - Update Position of 1 Axe and Display - Castle Ground Floor, 3
W 62114,2,2 (21) - Update Positions of 4 Axes and Display - Castle Ground Floor, 4 (More Axe Problems)
W 62116,2,2 (22) - Update Positions of 4 Axes and Display - Castle Ground Floor, 5 (Even More Axes)
W 62118,2,2 (23) - Moving Magic Knight Up a Room if Appropriate and Boost Jumps if Wearing Power Boots - Castle Ground Floor, 6 (The First Jump Chute)
W 62120,2,2 (24) - Do Nothing - Castle First Floor, 0 (Main Lever 7)
W 62122,2,2 (25) - Do Nothing - Castle First Floor, 1 (Main Lever 6)
W 62124,2,2 (26) - Do Nothing - Castle First Floor, 2 (Security Door & Main Lever 5)
W 62126,2,2 (27) - Set Magic Knight's x-Velocity to 2 if his y-Coordinate is 136 - Castle First Floor, 3 (Main Lever 4)
W 62128,2,2 (28) - Do Nothing - Castle First Floor, 4 (Main Lever 3)
W 62130,2,2 (29) - Kill Magic Knight if he is in a Dark Room Without Illumination - Castle First Floor, 5 (Main Lever 2)
W 62132,2,2 (30) - Move Magic Knight Up or Down a Room if Appropriate and Boost Jumps if Wearing Power Boots - Castle First Floor, 6 (Main Lever 1)
W 62134,2,2 (31) - Do Nothing - Castle Second Floor, 0 (The Broken Teleport)
W 62136,2,2 (32) - Do Nothing - Castle Second Floor, 1 (Terrible Twins)
W 62138,2,2 (33) - Do Nothing - Castle Second Floor, 2 (The Guardian Statues)
W 62140,2,2 (34) - Set Magic Knight's x-Velocity to 2 if his y-Coordinate is 136 - Castle Second Floor, 3 (One Way Corridor, 1)
W 62142,2,2 (35) - Set Magic Knight's x-Velocity to 2 if his y-Coordinate is 136 - Castle Second Floor, 4 (One Way Corridor, 2)
W 62144,2,2 (36) - Set Magic Knight's x-Velocity to 2 if his y-Coordinate is 136 - Castle Second Floor, 5 (One Way Corridor, 3)
W 62146,2,2 (37) - Move Magic Knight Up or Down a Room if Appropriate and Boost Jumps if Wearing Power Boots - Castle Second Floor, 6
W 62148,2,2 (38) - Move Magic Knight Down a Room if Appropriate - Castle Third Floor, 0 (Big White Statue)
W 62150,2,2 (39) - Do Nothing - Castle Third Floor, 1
W 62152,2,2 (40) - Move Magic Knight Between Teleport Rooms if Appropriate - Castle Third Floor, 2 (Teleport Room, 1)
W 62154,2,2 (41) - Set Magic Knight's x-Velocity to -2 if his y-Coordinate is 136 - Castle Third Floor, 3 (One Way Corridor, 4)
W 62156,2,2 (42) - Set Magic Knight's x-Velocity to -2 if his y-Coordinate is 136 - Castle Third Floor, 4 (One Way Corridor, 5)
W 62158,2,2 (43) - Set Magic Knight's x-Velocity to -2 if his y-Coordinate is 136 - Castle Third Floor, 5 (One Way Corridor, 6)
W 62160,2,2 (44) - Move Magic Knight Down a Room if Appropriate - Castle Third Floor, 6
W 62162,2,2 (45) - Do Nothing - Spaceship, 0 (The Control Room)
W 62164,2,2 (46) - Do Nothing - Spaceship, 1 (Many Screened Room)
W 62166,2,2 (47) - Move Magic Knight Between Teleport Rooms if Appropriate - Spaceship, 2 (Teleport Room, 2)
W 62168,2,2 (48) - Do Nothing - Spaceship, 3
W 62170,2,2 (49) - Decrease Magic Knight's Strength by One Once Every Four Frames - Spaceship, 4 (The Power Plant)
W 62172,2,2 (50) - Do Nothing - Spaceship, 5
W 62174,2,2 (51) - Do Nothing - Spaceship, 6
W 62176,2,2 (52) - Do Nothing - Unused (see trivia)
c 62178 Call Time-Dependent Routines [Main Interrupt Routine]
D 62178 Used by the routine at #R65524.
C 62178,3 Store all registers on the stack
C 62181,4 If Game In Progress Flag is reset... (IY = 23610)
C 62185,3 ...then skip ahead to #R62288
C 62188,3 If Do Not Draw Storm Cloud Flag is reset then draw Storm Cloud
C 62191,3 If Redraw Magic Knight On Next Interrupt Flag is set...
C 62194,1 ...
C 62195,3 ...then erase Magic Knight from display, advance his current position then redraw
C 62198,3 Update game time, time left and move characters if appropriate
C 62201,3 Load B with MSB of Off-White Knight Sent To Sleep Flag...
C 62204,2 ...
C 62206,1 ...
C 62207,3 Set Off-White Knight's Asleep Flag...
C 62210,1 ...if MSB of Off-White Knight Sent To Sleep Flag is set...
C 62211,3 ...
N 62214 The instructions between #R62214 and #R62252 (inclusive) are not used in the 48k version of Stormbringer. These instructions relate to the LOCATE A CHARACTER functionality that is present in the 128k version of Stormbringer - see trivia
C 62214,4 Load x- & y- coordinate of top-left character of currently glowing "Locate Compass" component into BC
C 62218,1 If this is zero (i.e. compass not glowing because Magic Knight isn't "locating")...
C 62219,1 ...
C 62220,2 ...then skip ahead to #R62255
C 62222,3 Load "Compass Glow Update Flag" into A
C 62225,1 Invert Compass Glow Update Flag
C 62226,2 Store back at #R23436 and if Compass Glow Update Flag is set...
C 62228,3 ...
C 62231,2 ...then skip over glow attribute update section to #R62255 (don't update glowing attributes this time)
C 62233,3 Load HL with Attribute File address for coordinates (C, B)
C 62236,3 Update glowing blocks' attribute to next colour in sequence and load into E
C 62239,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 62242,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 62245,3 Advance Attribute File address (HL) down to next row, to the block immediately below the first one updated at instruction #R62239...
C 62248,1 ...
C 62249,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 62252,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 62255,4 If "Disable In-Game Glow" flag is set...
C 62259,3 ...then skip to end of interrupt routine
C 62262,4 Point IX at Table of Glowing Attribute File Addresses
C 62266,3 Update glowing blocks' attribute to next colour in sequence and load into E
C 62269,3 Load a glowing Attribute File address into HL...
C 62272,3 ...
C 62275,1 If HL is zero...
C 62276,1 ...
C 62277,2 ...then jump to #R62288 (to exit loop)
C 62279,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 62282,2 Advance to next Attribute File address in list of glowing blocks...
C 62284,2 ...
C 62286,2 Jump back to #R62269 to update next block
C 62288,3 Load HL with current value in lowest two bytes of System Variable FRAMES...
C 62291,1 ...increase...
C 62292,3 ...and write back to memory
C 62295,1 If lowest two bytes of FRAMES are not both zero...
C 62296,1 ...
C 62297,2 ...then skip ahead to #R62302
C 62299,3 Increase most significant byte of System Variable FRAMES (23674)
C 62302,3 Call ROM routine to read keyboard
C 62305,3 Restore all registers from the Stack
C 62308,1 Enable interrupts
C 62309,1 Return
c 62310 Interrupt Routine Write Current Attribute for a Glowing Block to Attribute File
D 62310 Used by the routine at #R62178. Input:  HL  Attribute File address that is glowing E  Current attribute of glowing blocks Output: HL  Next Attribute File address on from that in HL on input
C 62310,1 Load current attribute of this memory location into A
C 62311,2 Reset all INK bits
C 62313,1 Set required INK bits for current colour
C 62314,1 Write data to Attribute File to display the colour
C 62315,1 Advance to next Attribute File address
C 62316,1 Return
c 62317 Interrupt Routine Update Glowing Blocks' Attribute to Next Colour in Sequence
D 62317 Used by the routine at #R62178. Output: E  New attribute of glowing blocks
C 62317,3 Load A with current INK colour of glowing blocks
C 62320,1 Advance to next colour in sequence
C 62321,2 Ensure that only INK attributes are used, rolling back over to zero (black) after seven (white)
C 62323,2 We don't want "black" light, so advance from zero (black) to one (blue) if black
C 62325,3 Place updated attribute back in memory
C 62328,1 Copy new attribute into E
C 62329,1 Return
c 62330 Update Game Time, Time Left and Move Characters if Appropriate
D 62330 Used by the routine at #R62178.
C 62330,3 If number of 1/50 seconds elapsed in current minute is zero (i.e. start of new second)...
C 62333,1 ...
C 62334,3 ...then move character whose turn it is to move, if allowed
C 62337,3 [EVERY 1/50 SECOND] Increase number of elapsed 1/50 seconds
C 62340,1 ...
C 62341,3 ...
C 62344,2 If new value isn't 50...
C 62346,1 ...then return
C 62347,1 [EVERY 1 SECOND] Else, set the value to zero (start of next full second)...
C 62348,3 ...
C 62351,3 Increase number of seconds elapsed...
C 62354,1 ...
C 62355,3 ...
C 62358,2 If new value isn't 60...
C 62360,1 ...then return
C 62361,1 [EVERY 1 MINUTE] Else, set the value to zero (start of next minute)...
C 62362,3 ...
C 62365,3 Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send to Sleep if Required
C 62368,3 Increase Magic Knight's current Magic Level by 10 (capped at 100)
C 62371,2 If Magic Knight is wearing the Magic Talisman (6)...
C 62373,3 ...
C 62376,3 ...then increase Magic Knight's current Magic Level by 20 (capped at 100)
C 62379,3 Increase index of current Crystal Ball substring...
C 62382,1 ...
C 62383,2 ...resetting to zero if above 7...
C 62385,3 ...
C 62388,3 Increase index of current Scroll substring...
C 62391,1 ...
C 62392,2 ...resetting to zero if above 7...
C 62394,3 ...
C 62397,3 Make Chicken lay an egg if possible
C 62400,3 Increase number of minutes elapsed...
C 62403,1 ...
C 62404,3 ...
C 62407,2 If new value isn't 5...
C 62409,1 ...then return
C 62410,1 [EVERY 5 MINUTES] Else, set the value to zero (start of next "hour")...
C 62411,3 ...
C 62414,3 Decrease number of hours left...
C 62417,1 ...
C 62418,3 ...
C 62421,3 If zero then show "Out of time" game over message and return to Control Selection Menu
C 62424,3 Play upward scale sound
C 62427,1 Return
c 62428 Increase Magic Knight's Current Magic Level by 20 (Up to Maximum of 100)
D 62428 Used by the routine at #R62330.
C 62428,3 Increase Magic Knight's current magic level by 10 (up to maximum of 100)
N 62431 This entry point is used by the routine at #R62330.
C 62431,3 Load A with Magic Knight's current Magic Level
C 62434,2 Add 10 to this value, capping at 100...
C 62436,3 ...
C 62439,3 Store updated value for Magic Level
C 62442,1 Return
c 62443 Make Chicken Lay an Egg If Possible
D 62443 Used by the routine at #R62330.
C 62443,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 62446,1 ...and if this is not zero (i.e. Magic Knight's hands are full)...
C 62447,1 ...then return
C 62448,2 If Magic Knight is not carrying the Chicken...
C 62450,3 ...
C 62453,1 ...then return
C 62454,3 If index of next object to be laid by Chicken is 42...
C 62457,2 ...i.e. no more eggs...
C 62459,1 ...then return
C 62460,3 Load C with index of next object to be laid by Chicken...
C 62463,1 ...
C 62464,1 Increase index of next object to be laid by Chicken...
C 62465,3 ...
C 62468,2 Load B with 5 (as Magic Knight has five inventory slots)
C 62470,3 Load object in C into Magic Knight's first empty inventory (carrying) slot...
C 62473,3 ...and return
c 62476 Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send to Sleep if Required
D 62476 Used by the routine at #R62330.
C 62476,3 Load DE with 8 (as data is 8 bytes long)
C 62479,3 Point HL at start of characters' Stat Regeneration Data Table
C 62482,4 Point IX at Off-White Knight's current stats (2nd entry in Characters' Current Stats Table, as first is Magic Knight's)
C 62486,2 Load B with 8 (8 characters)
C 62488,4 If current character is awake...
C 62492,2 ...then skip ahead to #R62498
C 62494,1 Advance HL by four bytes to stat deterioration data...
C 62495,1 ...
C 62496,1 ...
C 62497,1 ...
C 62498,1 Load stat change value into C
C 62499,3 Load current character's strength into A
C 62502,3 Update character's strength as they tire (awake) or regenerate (asleep)...
C 62505,3 ...
C 62508,1 Advance HL to next (happiness) data
C 62509,1 Load stat change value into C
C 62510,3 Load current character's happiness into A
C 62513,3 Update character's happiness as they tire (awake) or regenerate (asleep)...
C 62516,3 ...
C 62519,1 Advance HL to next (stamina) data
C 62520,1 Load stat change value into C
C 62521,3 Load current character's stamina into A
C 62524,3 Update character's stamina as they tire (awake) or regenerate (asleep)...
C 62527,3 ...
C 62530,1 Advance HL to next (magic level) data
C 62531,1 Load stat change value into C
C 62532,3 Load current character's magic level into A
C 62535,3 Update character's magic level as they tire (awake) or regenerate (asleep)...
C 62538,3 ...
C 62541,1 Advance HL to next block of data
C 62542,4 If current character is asleep...
C 62546,2 ...then we have already moved into data for next character, so skip ahead to #R62552
C 62548,1 Else, we are now in same character's "asleep" data, so need to advance HL by four bytes to get to next character's data...
C 62549,1 ...
C 62550,1 ...
C 62551,1 ...
C 62552,2 Advance IX by eight bytes to next character's stats
C 62554,2 Loop back to 62488
C 62556,3 Load DE with 8
C 62559,4 Point IX to Off-White Knight's current stats
C 62563,2 Load B with 8 (8 characters)
C 62565,2 Load C with zero (to denote first character, Off-White Knight)
C 62567,3 Load current character's stamina into A
C 62570,2 If stamina (bits 0-6) is not zero...
C 62572,2 ...then skip ahead to #R62580
C 62574,4 Else send character to sleep
C 62578,2 Skip ahead to #R62588
C 62580,2 If stamina is not 100...
C 62582,2 ...then skip ahead to #R62588
C 62584,4 Else wake character up
C 62588,2 Advance IX to next character's stats
C 62590,1 Increase C for next character
C 62591,2 Loop back to #R62567 for next character
C 62593,1 Return
c 62594 Update Characters' Stats as They Tire (Awake) or Regenerate (Asleep)
D 62594 Used by the routines at #R45434, #R62428 and #R62476. Input:  A  A character's stat (strength, stamina, happiness or spell power) C  An increment (while asleep) or decrement (while awake) for that stat Output: A  New value of stat
C 62594,1 Store AF (A = value of character's stat)
C 62595,2 Capture MSB in stat value and store in instruction at #R62619...
C 62597,3 ...
C 62600,1 Restore AF (A = value of character's stat)
C 62601,2 Discard MSB of stat value
C 62603,1 Add change value
C 62604,1 Check Sign Flag
C 62605,3 If sign flag reset (i.e. MSB of result is reset and result is positive) then jump ahead to #R62611
C 62608,1 else stat must have dropped below zero, so set stat to zero (as it can't be less than 0)
C 62609,2 Skip ahead to #R62619
C 62611,2 If new value of stat is less than or equal to 100...
C 62613,2 ...then skip ahead to #R62619...
C 62615,2 ...
C 62617,2 ...else set stat to 100 (as it can't be greater than 100)
N 62619 The operand of the instruction at #R62619 represents bit 7 of the input value in A. This is modified by the instruction at #R62597.
C 62619,2 Restore previously stored MSB state
C 62621,1 Return
c 62622 Move Character Whose Turn it is to Move, if Allowed
D 62622 Alternate characters move in opposite directions on alternate hours. Characters can only move if they are not in the same room as Magic Knight, or if the player is not currently controlling Magic Knight (i.e. navigating menus or failing to press FIRE when "PRESS FIRE TO CONTINUE" message is shown).
C 62622,4 If Characters Can't Move Flag is set...
C 62626,1 ...then return
C 62627,3 Update index of character whose turn it is to be updated and load into A
C 62630,2 Point HL at this character's flags...
C 62632,3 ...
C 62635,1 ...and load flags into A
C 62636,2 If character is asleep...
C 62638,1 ...then return
C 62639,1 Move HL back two bytes to character's Attribute...
C 62640,1 ...
C 62641,1 ...and load attribute into A
C 62642,1 If attribute is zero...
C 62643,1 ...then return
C 62644,3 Load BC with three times index of character whose turn it is to be updated...
C 62647,1 ...
C 62648,1 ...
C 62649,1 ...
C 62650,1 ...
C 62651,2 ...
C 62653,3 Point HL at start of Table of Characters' Current Positions at #R24898
C 62656,1 Add BC to HL as offset
C 62657,3 If Magic Knight is not in the same room as this character...
C 62660,1 ...
C 62661,2 ...then skip ahead to #R62668
C 62663,4 If Characters Movement Unrestricted Flag is reset (IY = 23610)...
C 62667,1 ...then return
C 62668,1 If character's room is 100...
C 62669,2 ...
C 62671,1 ...then return
C 62672,2 If character's room is 99...
C 62674,3 ...then reset character to his / her initial position
C 62677,3 Load B with index of character whose turn it is to be updated...
C 62680,1 ...
C 62681,3 Load A with number of hours left...
C 62684,1 ...and add index of character to be updated
C 62685,2 If result is even...
C 62687,3 ...then skip ahead to #R62734
N 62690 Move character left
C 62690,1 Load A with character's current room
C 62691,1 Store HL (pointer to character's current room)
C 62692,3 Set movement restriction data base address to #R48915 (one room to the left)...
C 62695,3 ...and load address into instruction at #R62784
C 62698,3 Point HL to left exit value of first entry in Room Connectivity Data Table
C 62701,3 Get index of destination room for character and load into A
C 62704,3 Load value into instruction at #R62722
C 62707,1 Restore HL (pointer to character's current room)
C 62708,1 Advance HL to character's x-coordinate
C 62709,1 Load x-coordinate into A...
C 62710,2 ...and if this is 2...
C 62712,2 ...then skip ahead to #R62722
C 62714,1 Decrease x-coordinate by two...
C 62715,1 ...
C 62716,3 Set this as character's new x-coordinate if value is allowed, otherwise return
C 62719,2 If character's x-coordinate is not 2...
C 62721,1 ...then return
N 62722 The operand of the instruction at #R62722 represents the character's destination room when moving left. This is modified by the instructions at #R62704.
C 62722,2 Load B with character's destination room...
C 62724,1 ...
C 62725,2 ...and if this is 255 (i.e. no room available)...
C 62727,1 ...then return
C 62728,2 Set character's x-coordinate to 28 (right-hand side of new room)...
C 62730,1 ...
C 62731,1 Move HL back to character's room
C 62732,1 Set current room to new room index
C 62733,1 Return
N 62734 Move character right
C 62734,1 Load A with character's current room
C 62735,1 Store HL (pointer to character's current room)
C 62736,3 Set movement restriction data base address to #R48915 (one room to the right)...
C 62739,3 ...and load address into instruction at #R62784
C 62742,3 Point HL to right exit value of first entry in Room Connectivity Data Table
C 62745,3 Get index of destination room for character and load into A
C 62748,3 Load value into instruction at #R62766
C 62751,1 Restore HL (pointer to character's current room)
C 62752,1 Advance HL to character's x-coordinate
C 62753,1 Load x-coordinate into A...
C 62754,2 ...and if this is 28...
C 62756,2 ...then skip ahead to #R62766
C 62758,1 Increase x-coordinate by two...
C 62759,1 ...
C 62760,3 Set this as character's new x-coordinate if value is allowed, otherwise return
C 62763,2 If character's x-coordinate is not 28...
C 62765,1 ...then return
N 62766 The operand of the instruction at #R62766 represents the character's destination room when moving right. This is modified by the instructions at #R62748.
C 62766,2 Load B with character's destination room...
C 62768,1 ...
C 62769,2 ...and if this is 255 (i.e. no room available)...
C 62771,1 ...then return
C 62772,2 Set character's x-coordinate to 2 (left-hand side of new room)...
C 62774,1 ...
C 62775,1 Move HL back to character's room
C 62776,1 Set current room to new room index
C 62777,1 Return
c 62778 Get Index of Destination Room for a Character and Load into A
D 62778 Used by the routine at #R62622. Input:  A  A room index HL  Points to one of the two bytes of the first entry of the Room Connectivity Data Table at #R48811 Output: A  New room index
C 62778,1 Load double room index into BC...
C 62779,1 ...
C 62780,2 ...
C 62782,1 Add BC to HL as offset
C 62783,1 Store HL (pointer to room's left or right exit data)
N 62784 The operand of the instruction at #R62784 represents the base address of the movement restriction data (table at #R48915), and may be #R48915 (when character tries to move one room to the left) or #R48915 (when character tries to move one room to the right). This is modified by the instructions at #R62695 and #R62739.
C 62784,3 Load HL with base address of movement restriction data
C 62787,1 Add BC to HL as offset
C 62788,1 If movement restriction data is 98...
C 62789,2 ...then set Zero Flag
C 62791,1 Restore HL (pointer to room's left or right exit data)
C 62792,2 If Zero Flag is set (i.e. movement restriction data was 98) then skip ahead to #R62807
C 62794,1 Load B with index of room to the left or right of room of interest
C 62795,3 If Magic Knight's current room is not the same as that in B...
C 62798,1 ...
C 62799,2 ...then skip ahead to #R62810
C 62801,4 If Characters Movement Unrestricted Flag is reset (IY = 23610)...
C 62805,2 ...then skip ahead to #R62810
C 62807,2 Load A with 255
C 62809,1 Return
C 62810,1 Load A with room index at HL
C 62811,1 Return
c 62812 Update Index of Character Whose Turn it is to be Updated
D 62812 Used by the routine at #R62622. Output: A  Updated index of character whose turn it is to be updated
C 62812,3 Increment index of character whose turn it is to be updated...
C 62815,1 ...
C 62816,3 ...
C 62819,2 If new character index is not 8...
C 62821,1 ...then return
C 62822,1 Set new character index to 0, as there are only 8 characters...
C 62823,3 ...
C 62826,1 Return
c 62827 Update Character's x-Coordinate if New Value is Allowed, Otherwise Return
D 62827 Used by the routine at #R62622. Input:  A  Updated x-coordinate for character HL  Pointer to x-coordinate data in a character's current position data Output: A  Updated x-coordinate for character (same as input)
C 62827,1 Store HL (pointer to x-coordinate in a character's current position data)
C 62828,1 Store AF (A = updated x-coordinate)
C 62829,1 Move HL back to room index
C 62830,1 Load BC with double character's room index...
C 62831,1 ...
C 62832,1 ...
C 62833,2 ...
C 62835,3 Load HL with start address of Character Movement Restriction Data
C 62838,1 ...and add BC as offset
C 62839,1 Restore AF (A = updated x-coordinate)
C 62840,1 If new x-coordinate is same as first disallowed x-coordinate...
C 62841,2 ...then skip ahead to #R62850
C 62843,1 If new x-coordinate is same as second disallowed x-coordinate...
C 62844,1 ...
C 62845,2 ...then skip ahead to #R62850
C 62847,1 Store HL (pointer to x-coordinate in a character's current position data)
C 62848,1 Store updated x-coordinate
C 62849,1 Return
C 62850,1 Store HL (pointer to x-coordinate in a character's current position data)
C 62851,1 Remove return address from top of stack...
C 62852,1 ...and return to routine that called the routine that called this one
c 62853 Set Position of Character Whose Turn it is to Move to His/Her Initial Position
D 62853 Used by the routine at #R62622.
C 62853,3 Load BC with three times index of character whose turn it is to be updated...
C 62856,1 ...
C 62857,1 ...
C 62858,1 ...
C 62859,1 ...
C 62860,2 ...
C 62862,3 Load HL with start address of Table of Characters' Current Positions...
C 62865,1 ...and add BC as offset
C 62866,3 Load DE with start address of Table of Characters' Initial Positions
C 62869,1 Swap DE (now points to current position data of character of interest) and HL (now points to Table of Characters' Initial Positions)
C 62870,1 Add BC to HL as offset (HL now points to character's initial position)
C 62871,3 Set character's current position to same as initial position...
C 62874,2 ...
C 62876,1 Return
c 62877 End Game Due to Running Out of Time
D 62877 Used by the routine at #R62330.
C 62877,3 Point HL at "YOU RAN OUT OF TIME" text...
C 62880,3 ...and store as operand in instruction at #R62888
C 62883,1 Remove return address (call to this routine) from top of stack
C 62884,3 Restore all registers from the stack
C 62887,1 Remove return address (call to interrupt routine) from top of stack
N 62888 The operand of the instruction at #R62888 represents the address of the Game Over text to use. This is modified by the instruction at #R62880.
C 62888,3 Restore address of "YOU RAN OUT OF TIME" text to HL
C 62891,1 Enable interrupts
C 62892,3 Jump to "Game over" window routine and return to Control Selection Menu
b 62895 Characters' Rates of Stat Regeneration
D 62895 Stats are in order:
B 62895,8,8 Off-White Knight      ( 1,  1,  1,  1,  5, 5,  5,  5)
B 62903,8,8 Aramis le Peux        (-1, -3, -3, -1, 10, 8, 15, 10)
B 62911,8,8 Robin of Shylock      (-3, -2, -4, -6,  8, 4,  4,  8)
B 62919,8,8 Reggie the Rat        (-3, -2, -4, -4,  8, 4,  4,  3)
B 62927,8,8 Rachel of Amazonia    (-3, -3, -1, -1,  6, 3,  4,  1)
B 62935,8,8 Barker the Ent        (-3, -2, -4, -6,  8, 4,  4,  8)
B 62943,8,8 Organon the Guard     (-3, -2, -4, -4,  8, 4,  4,  3)
B 62951,8,8 Grunter the Bearwoolf (-3, -2, -4, -4,  8, 4,  4,  3)
c 62959 Store all Registers on the Stack
D 62959 Used by the routines at #R45809 and #R62178.
C 62959,1 Place HL onto stack in place of top entry (the address of the CALL to this routine is now in HL)
C 62960,1 Store registers AF, BC & DE...
C 62961,1 ...
C 62962,1 ...
C 62963,1 Store shadow registers too...
C 62964,1 ...
C 62965,1 ...
C 62966,1 ...
C 62967,1 ...
C 62968,1 ...
C 62969,1 ...
C 62970,1 ...
C 62971,2 Store IX
C 62973,2 Store IY
C 62975,1 Store HL (address of call to this routine)
C 62976,1 Store AF
C 62977,3 Restore original value of HL (as switched with top of stack at beginning of this routine)...
C 62980,1 ...
C 62981,1 ...
C 62982,1 ...
C 62983,1 ...
C 62984,1 ...
C 62985,1 Restore AF
C 62986,1 Return
c 62987 Restore All Registers from the Stack
D 62987 Used by the routines at #R45809, #R62178 and #R62877.
C 62987,1 Restore registers HL, IY & IX (HL has address of call to this routine, i.e. 62987)...
C 62988,2 ...
C 62990,2 ...
C 62992,1 Restore shadow registers too...
C 62993,1 ...
C 62994,1 ...
C 62995,1 ...
C 62996,1 ...
C 62997,1 ...
C 62998,1 ...
C 62999,1 ...
C 63000,1 Restore AF, BC, DE...
C 63001,1 ...
C 63002,1 ...
C 63003,1 Put HL (address of call to 62987) back on stack in preparation for RET and take off original value of HL
C 63004,1 Return
c 63005 Print Text/Graphic Character in A and Advance Bitmap Virtual Text Cursor
D 63005 Used by the routines at #R40729, #R40752, #R47326, #R48389, #R63302, #R63691 and #R63740. Input:  A  Index of character to print
C 63005,1 Store HL
N 63006 The operand of the instruction at #R63006 represents the base address of the character set. This is modified by the instructions between #R63478 and #R63482.
C 63006,3 Point to (effective) start Character Set graphics
C 63009,1 Load index of character into HL and multiply by 8...
C 63010,2 ...
C 63012,1 ...
C 63013,1 ...
C 63014,1 ...
C 63015,1 ...and add to DE to obtain memory location of required character in the character set
C 63016,1 Swap values (DE now holds memory location of character to print and HL holds #R27480)
N 63017 The operand of the instruction at #R63017 represents the address of the Bitmap Virtual Text Cursor. This is modified by the instructions at #R38804, #R38816, #R38832, #R39425, #R39634, #R40501, #R41358, #R41374, #R41395, #R46481, #R47322, #R47409, #R47836, #R48529, #R63259, #R63363, #R63625, #R63642 and #R64797.
C 63017,3 Load (video) memory location to start printing character into HL
C 63020,2 For eight bytes (i.e. full height of character)...
C 63022,1 ...get graphic data from character set...
C 63023,1 ...and load into video memory...
C 63024,1 ...move to next pixel row in character set...
C 63025,1 ...and move to next pixel row in video memory
C 63026,2 Loop back to #R63022
C 63028,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 63031,3 Obtain attribute data stored previously (71 = bright white)
C 63034,1 Apply attribute to character just printed
C 63035,3 Advance Bitmap Virtual Text Cursor right by one character
C 63038,1 Restore HL
C 63039,1 Return
c 63040 Draw Axe to Screen
D 63040 Used by the routines at #R46560 and #R46784. Input:  A  Frame Number (32, 116, 117, 118 or 119)
C 63040,1 Store HL
C 63041,3 Point DE at 28248
C 63044,1 Double A...
C 63045,2 ...Load into HL...
C 63047,1 ...
C 63048,1 ...Double again...
C 63049,1 ...and again to get 8 times original A value...
C 63050,1 ...and add DE to this to point to one of the five sets of axe frame graphic data (#R28504, #R29176, #R29184, #R29192 or #R29200)
C 63051,1 Copy HL into IX...
C 63052,2 ...
C 63054,4 Load system variable COORDS into BC (holds x- and y-coordinates of axe)
C 63058,3 Load HL with Display File address for coordinates in BC
C 63061,1 Load pixel-within-byte "address" into C
C 63062,2 Load 8 into B (as axe graphic data comprises 8 pixel rows)
C 63064,3 Load a byte of axe graphic data into D
C 63067,1 Load pixel-within-byte "address" into A
C 63068,1 Check if we're dealing with pixel zero...
C 63069,2 ...and if so, skip ahead to #R63128
C 63071,1 Set A to zero
C 63072,1 Copy into E
C 63073,1 Store BC (B=graphic row counter, C=pixel-within-byte "address")
C 63074,1 Copy pixel-within-byte "address" into B
C 63075,2 Shift graphic data right one bit (rightmost bit goes into carry flag)
C 63077,1 Rotate carry flag into leftmost bit of A, shifting other bits right
C 63078,1 Set carry flag
C 63079,2 Rotate (set) carry flag into leftmost bit of E, shifting other bits right, and resetting carry flag
C 63081,2 Repeat loop to shift graphic right another pixel if necessary
C 63083,1 Switch AF registers
C 63084,1 Load A with value in E (set bits represent number of pixels by which axe graphic has been shifted right)
C 63085,1 Restore (B=graphic row counter, C=pixel-within-byte "address")
C 63086,1 Load left part of axe graphic data into A
C 63087,1 Load E with graphic data currently at axe's position on screen
C 63088,1 Blend axe graphic data with what is already on screen at its position to make things look more natural...
C 63089,1 ...and write new graphic data back to screen
C 63090,1 Advance right one byte in Display File
C 63091,1 Switch registers to restore right part of axe graphic data to A
C 63092,1 Load E with graphic data currently at axe's position on screen
C 63093,1 Blend axe graphic data with what is already on screen at its position to make things look more natural...
C 63094,1 ...and write new graphic data back to screen
C 63095,1 Move left one byte in Display File
C 63096,2 Advance IX to next row of axe graphic data
C 63098,1 Increase H by 1 (i.e. advance HL by 256)
C 63099,1 If at least one of the three rightmost bits of H are set (i.e. we haven't crossed over from one third of the display to the next third)...
C 63100,2 ...
C 63102,2 ...then skip ahead to #R63124 (as HL now points to next pixel row down)...
C 63104,1 ...else we must have been in the bottom pixel row of a character row, so decrease H by 8 (1 to go back up, then 7 pixel rows up to the top of that character row)...
C 63105,2 ...
C 63107,1 ...
C 63108,1 Advance L by 32 bytes to move down one character row, so now the top of the next character row down...
C 63109,2 ...
C 63111,1 ...
C 63112,2 If L hasn't gone over 256 (i.e. we haven't moved 32 bytes on from the top pixel row of the bottom character row of the third) then skip ahead to #R63124
C 63114,1 Move down by a third...
C 63115,2 ...
C 63117,1 ...
C 63118,2 If we have not reached the start of the Attribute File...
C 63120,2 ...then skip ahead to #R63124
C 63122,2 ...else wrap back round to the start of Display File again
C 63124,2 Decrease B (remaining number of pixel rows to draw) and loop back to #R63064
C 63126,1 Restore HL
C 63127,1 Return
C 63128,1 Set A to zero
C 63129,1 Switch registers
C 63130,1 Set A to zero
C 63131,1 Set E to zero as axe graphic hasn't been shifted
C 63132,2 Jump back to #R63086
c 63134 Load HL with Display File Address for Coordinates in BC
D 63134 Used by the routine at #R63040. Input:  B  y-coordinate of axe in pixels C  x-coordinate of axe in pixels Output: A  Horizontal pixel offset of axe HL  Display File address for axe
C 63134,1 Load A with remainder, when dividing x-coordinate (pixels) by eight...
C 63135,2 ...i.e. "pixel-within-byte" address
C 63137,1 Switch AF and AF'
C 63138,2 Load HL with double y-coordinate in pixels...
C 63140,1 ...
C 63141,1 ...
C 63142,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row...
C 63145,1 ...and add HL as offset in HL
C 63146,1 Load HL with Display File address of start of pixel row at y-coordinate...
C 63147,1 ...
C 63148,1 ...
C 63149,1 ...
C 63150,1 Load A with x-coordinate in pixels...
C 63151,1 ...and divide by eight to give x-coordinate in characters...
C 63152,1 ...
C 63153,1 ...
C 63154,2 ...
C 63156,1 Load BC with x-coordinate in characters...
C 63157,2 ...
C 63159,1 ...and add to HL as offset in HL
C 63160,1 Switch AF and AF' (A now contains "pixel-within-byte" address)
C 63161,1 Return
c 63162 Draw a UDG, with Index A, from 2x2 Blocks' UDG Data at Location of Bitmap Virtual Text Cursor
D 63162 Used by the routine at #R41271. Input:  A  Block UDG index (in graphic data starting at #R28504)
C 63162,1 Store HL
C 63163,3 Load DE with start address of UDG data for 2x2 blocks
C 63166,1 Load HL with eight times UDG index...
C 63167,2 ...
C 63169,1 ...
C 63170,1 ...
C 63171,1 ...
C 63172,1 Add start address of UDG data for 2x2 blocks to HL as offset in HL
C 63173,1 Swap DE (now address of graphic data for required UDG) and HL (now start address of UDG data for 2x2 blocks)
C 63174,3 Load HL with (Display File address of) Bitmap Virtual Text Cursor
C 63177,2 Print UDG data at address in DE to Display File address in HL...
C 63179,1 ...
C 63180,1 ...
C 63181,1 ...
C 63182,1 ...
C 63183,2 ...
C 63185,3 Load HL with (Display File address of) Bitmap Virtual Text Cursor
C 63188,1 Load H into A...
C 63189,2 ...and cap at 31, to give screen third of interest (H=0-7, top third; H=8-15, middle third; H=16-23, bottom third)
C 63191,1 Divide by eight to get character row within the third...
C 63192,1 ...
C 63193,1 ...
C 63194,2 Add 22,528 to HL to move into attribute section of video memory
C 63196,1 L still contains offset of x characters, so points to start of attributes for area where room name was just printed
C 63197,3 Load A with value in system variable ATTR T...
C 63200,1 ...and apply this to the Attribute File address in HL
C 63201,1 Restore HL
C 63202,1 Return
c 63203 Move Virtual Cursor (Bitmap) to Display File for Coordinates x=C, y=B and Load Address into HL
D 63203 Used by the routines at #R39216, #R39366, #R40832, #R41504, #R41545, #R47193, #R47326, #R61297, #R61336, #R61418, #R61521, #R63691 and #R63740. Input:  B  y-coordinate (characters) C  x-coordinate (characters) Output: HL Virtual Cursor (Bitmap) Display File address
C 63203,1 Load y-coordinate into A
C 63204,2 AND 24 to determine which third of the bitmap memory we are in (A = 0, 8 or 16. Can't be 24 as this is greater than y-resolution in characters, 0-23)
C 63206,2 Load HL with bitmap Display File address of start of appropriate third of display...
C 63208,1 ...(16,384, 18,432 or 20,480)
C 63209,1 Load y-coordinate back into A
C 63210,2 AND 7 to determine which of the 8 character rows within the third we are interested in
C 63212,1 Multiply by 8 to get pixel row required...
C 63213,1 ...
C 63214,1 ...
C 63215,1 Add x-coordinate
C 63216,1 Add to value currently in HL
C 63217,2 Store the updated address of Bitmap Virtual Text Cursor and return
c 63219 Point HL at Terrain Interaction Data, or Attribute File address for Character Coordinates x=C, y=B
D 63219 The operand in the instruction at #R63228 is usually 88 (corresponding to a Attribute File lookup). It is only changed to 93 (corresponding to a Terrain Interaction Data lookup) by the routine at #R63233, and is returned to a value of 88 before that routine concludes. Input:  B  y-coordinate (chars) C  x-coordinate (chars) Output: DE points to entry in data table with coordinates (C, 0) HL  points to entry in data table with coordinates (C, B)
C 63219,1 Load y-coordinate into A
C 63220,1 Multiply this by 8...
C 63221,1 ...
C 63222,1 ...
C 63223,1 Copy 8 times y-coordinate into HL...
C 63224,2 ...
C 63226,1 Multiply by 4...
C 63227,1 ...to give 32 times original y-coordinate in HL
N 63228 The operand of the instruction at #R63228 determines whether we are dealing with the Attribute File (88), or the current Terrain Interaction Data (93). It is modified by the instructions at #R63235 and #R63243.
C 63228,2 Point DE at start of data, plus x-coordinate offset in C...
C 63230,1 ...
C 63231,1 Add 32 times y-coordinate as offset in HL
C 63232,1 Return
c 63233 Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
D 63233 Used by the routines at #R38434, #R38585, #R38724, #R39216, #R39366, #R41173 and #R48191. Input:  B  y-coordinate (chars) C  x-coordinate (chars) Output: HL  points to entry in Terrain Interaction Data
C 63233,2 Set most significant byte in Terrain Interaction Data / Attribute File lookup routine to 93 (Terrain Interaction Table)...
C 63235,3 ...
C 63238,3 Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
C 63241,2 Set most significant byte in Terrain Interaction Data / Attribute File lookup routine to 88, (Attribute File)...
C 63243,3 ...
C 63246,1 Return
c 63247 Advance Bitmap Virtual Text Cursor right by one character
D 63247 Used by the routines at #R41271, #R48389 and #R63005.
C 63247,3 Load HL with address of Bitmap Virtual Text Cursor...
C 63250,1 ...and increase (for next character)
C 63251,1 Load LSB of HL into A...
C 63252,1 ...and check whether it is zero
C 63253,2 If it is not zero (i.e. advancing down a character row will not take us into a different third of bitmap video memory) then skip ahead to #R63259
C 63255,1 Add 7 to MSB of video memory address...
C 63256,2 ...as advancing by one at #R63250 took video memory pointer back up to 2nd pixel row of the current third of the display...
C 63258,1 ...when in fact we need to move to top pixel row of the NEXT third of the display (i.e. 7 x 32 x 8 = 7 x 256 bytes on from this!)
N 63259 This entry point is used by the routines at #R63203, #R63263, #R63349 and #R63399.
C 63259,3 Store the updated address of Bitmap Virtual Text Cursor
C 63262,1 Return
c 63263 Advance Bitmap Virtual Text Cursor to start of next character row
D 63263 Used by the routines at #R41271, #R48389 and #R48518.
C 63263,3 Load HL with address of Bitmap Virtual Text Cursor
C 63266,1 Get LSB of video memory address in A
C 63267,2 Add 32 (i.e. move down one character row)
C 63269,3 If we have encountered the bottom of the current third of the display, then skip ahead to #R63277
C 63272,2 Decrease to nearest multiple of 32 (i.e. start of a character row)
C 63274,1 Place modified address back into HL
C 63275,2 Store at 63018 and return
C 63277,2 Decrease to nearest multiple of 32 (i.e. start of a character row)
C 63279,1 Place modified address back into L
C 63280,1 Load MSB of video memory address into A
C 63281,2 Increase by 8 (as we're moving one text row, or EIGHT pixel rows down)
C 63283,1 Place modified address back into HL
C 63284,2 Store at 63018 and return
c 63286 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
D 63286 Used by the routines at #R46902, #R48389, #R48518 and #R63005.
C 63286,3 Load HL with address of Bitmap Virtual Text Cursor
C 63289,1 Load H into A...
C 63290,2 ...and cap at 31, to give screen third of interest (H=0-7, top third; H=8-15, middle third; H=16-23, bottom third)
C 63292,1 Divide by eight to get character row within the third...
C 63293,1 ...
C 63294,1 ...
C 63295,2 Add 22,528 to HL to move into attribute section of video memory
C 63297,1 L still contains offset of x characters, so points to start of attributes for area where room name was just printed
C 63298,3 Store memory location for later use
C 63301,1 Return
c 63302 Draw a Run of Characters (e.g. Edge of Frame of a Window)
D 63302 Used by the routines at #R39393, #R47491, #R47833 and #R63598. Input:  HL  Repeat count for printing character (e.g. width of window in characters minus 1)
C 63302,1 Check whether remaining window's width is zero...
C 63303,1 ...and if it is...
C 63304,1 ...then return without doing anything
N 63305 The operand of the instruction at #R63305 represents the index of a character set character to draw. This is modified by the instructions at #R39413, #R47234, #R47498, #R47844 and #R63630.
C 63305,2 Else, load A with the character index
C 63307,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 63310,1 Decrease remaining width
C 63311,2 Loop back to #R63302
c 63313 Advance HL to Byte After First Zero From Address in HL Onwards
D 63313 Used by the routine at #R42616. Input:  HL  Pointer to search starting point Output: HL  Pointer to byte after first zero at or after HL input
C 63313,1 Store BC
C 63314,3 Set range to 65535
C 63317,1 Load A (value to search for) to zero
C 63318,2 Advance HL to byte after first zero found
C 63320,1 Restore BC
C 63321,1 Return
c 63322 Point HL at Start of B-th Entry in List of Read-Texts of Readable Objects
D 63322 Used by the routine at #R43494.
C 63322,3 Point HL at start of List of Read-Texts of Readable Objects
C 63325,2 Advance HL to B-th entry in list of zero-terminated strings starting at HL and return
c 63327 Point HL at Start of B-th Entry in List of "COMMAND A CHARACTER" Commands at 52590
D 63327 Used by the routine at #R43043.
C 63327,3 Point HL at first of the "COMMAND A CHARACTER" commands (i.e. "GO TO SLEEP")
C 63330,2 Advance HL to B-th entry in list of zero-terminated strings starting at HL and return
c 63332 Point HL at B-th Entry in Table of Object Names
D 63332 Used by the routines at #R42638 and #R45809. Input:  B  Index of required text string HL  (entry via #R63335) address of start of a table of zero-terminated strings Output: HL  Points to string of index B (input)
C 63332,3 Point HL at start of Table of Object Names
N 63335 This entry point is used by the routines at #R39578, #R42638, #R43874, #R45206, #R45227, #R63322 and #R63327.
C 63335,1 Load string index into A
C 63336,1 Return if index is zero...
C 63337,1 ...
C 63338,1 Store BC
C 63339,3 Load BC (loop counter) with 65535
C 63342,1 Set A to zero
C 63343,2 Advance HL to start of next zero-terminated string
C 63345,1 Store BC
C 63346,2 Decrease B (remaining number of object names to skip over) and loop back to #R63338
C 63348,1 Return
c 63349 Print Text at DE (Command Summary) in Command Summary Window at Top of Screen
D 63349 Used by the routines at #R41578, #R41924, #R42257, #R42638, #R43043, #R43636, #R43874, #R44100, #R44337, #R45206, #R45781 and #R63388. Input:  DE  Points to command text
C 63349,1 Store DE (Pointer to command text to print)
C 63350,2 Set ATTR T system variable to 70 (yellow INK, black PAPER, BRIGHT)...
C 63352,3 ...
C 63355,3 Load HL with address of Bitmap Virtual Text Cursor
C 63358,1 Swap registers so that HL points to text to be printed, and (SP) i.e. PUSHed value) contains Display File address to start printing character
C 63359,4 Load DE with new Display File address to print character...
C 63363,4 ...and update Bitmap Virtual Text Cursor with this location
C 63367,1 Store HL (pointer to text to be printed)
C 63368,3 Swap x- and y-coordinates of current window with those of Command Summary Window in temporary storage at #R23418
C 63371,1 Restore HL (pointer to text to be printed)
C 63372,3 Print text to screen
C 63375,3 Restore x- and y-coordinates of current window from temporary storage at #R23418
C 63378,3 Load HL with new address in Bitmap Virtual Text Cursor (i.e. after text just printed)...
C 63381,3 ...and store back at #R23704
C 63384,1 Restore HL (Display File address to start printing character as swapped by instruction at #R63358)
C 63385,3 Store the updated address of Bitmap Virtual Text Cursor and return
c 63388 Print Command Summary Text (Text at DE, e.g. "COMMAND ") in Command Summary Window
D 63388 Used by the routines at #R45809 and #R45963. Input:  DE  Pointer to text to print
C 63388,1 If DE is zero (i.e. no Command Summary Text)...
C 63389,1 ...
C 63390,1 ...then return
C 63391,1 Store DE (Command Summary Text Pointer)
C 63392,3 Print or update Command Summary Window at top of screen
C 63395,1 Restore DE (Command Summary Text Pointer)...
C 63396,3 ...and print in Command Summary Window at top of screen and return
c 63399 Print or Update Command Summary Window at Top of Screen
D 63399 Used by the routines at #R41578, #R41924, #R42638, #R43874, #R44100, #R44337, #R45206 and #R63388. The operand of the instruction at #R63399 represents the index of the window being drawn. This is modified by the instructions at #R47204 and #R63437.
C 63399,2 Load index of window being drawn into A
C 63401,1 Store AF (A = index of Current Window)
C 63402,3 Load HL with address of Bitmap Virtual Text Cursor...
C 63405,1 ...and store
C 63406,3 Store x- and y-coordinates of current window temporarily at #R23418
C 63409,1 Wait for interrupt
C 63410,2 Draw Window 1 (Command Summary Window at top of screen)...
C 63412,3 ...
C 63415,3 Point HL to ("COMMAND") text...
C 63418,3 ...and print to screen
C 63421,3 Load HL with address of Bitmap Virtual Text Cursor
C 63424,1 Store HL (address of Bitmap Virtual Text Cursor)
C 63425,3 Print "STORMBRINGER" text at top of Command Summary Window
C 63428,1 Restore HL (address of Bitmap Virtual Text Cursor)
C 63429,3 Store this location as the location to print text to in the Command Summary Window
C 63432,3 Restore x- and y-coordinates of current window from #R23418
C 63435,1 Restore HL (address of Bitmap Virtual Text Cursor)
C 63436,1 Restore AF (A = index of Current Window)
C 63437,3 Restore index of Current Window to 63400 (was updated to 1 by call at #R63412)
C 63440,3 Store the updated address of Bitmap Virtual Text Cursor and return
c 63443 Swap x- and y-coordinates of current window / graphic with values in temporary storage (at 23418)
D 63443 This routine is used when there are two windows being updated (e.g. Command Summary Window at top of screen, and "EXAMINE" window). It is used to keep track of the dimensions of two windows simultaneously
C 63443,3 Swap x- and y-coordinates of top-left of window / graphic currently at #R23408 with values in temporary store at #R23418...
C 63446,4 ...
C 63450,4 ...
C 63454,3 ...
C 63457,3 Swap x- and y-coordinates of bottom-right of window / graphic currently at #R23410 with values in temporary store at #R23420...
C 63460,4 ...
C 63464,4 ...
C 63468,3 ...
C 63471,1 Return
c 63472 Update Character Printing Routine to Use Base Address of Text Character Set Graphics
D 63472 Used by the routines at #R39393 and #R47326. Input:  HL  (Entry at #R63476 only) Effective start address of an alternative character set
C 63472,1 Store HL
C 63473,3 Load HL with address of (effective) start Character Set graphics
N 63476 This entry point is used by the routine at #R63488.
C 63476,1 Store AF
C 63477,1 Set operand of instruction at #R63006 (character printing routine) to address in HL...
C 63478,3 ...
C 63481,1 ...
C 63482,3 ...
C 63485,1 Restore AF
C 63486,1 Restore HL
C 63487,1 Return
c 63488 Update Character Printing Routine to Use Base Address of Floor Character Set Graphics
D 63488 Used by the routine at #R39393.
C 63488,1 Store HL (corresponds to POP HL at #R63486)
C 63489,3 Load HL with address of (effective) start Floor Character Set graphics
C 63492,2 Update character printing routine to this as base address of character set graphics and return
c 63494 Draw a Graphic with Lookup Index A, Width of 2 and Height of 3 at Character Coordinates (C, B)
D 63494 Used by the routine at #R39958. Input:  A  Index of graphic to draw in graphic data lookup table at #R29272 B y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item
C 63494,3 Load D with 3 and E with 2
C 63497,2 Draw a Graphic with Lookup Index A at Character Coordinates (C, B) with width = 2 characters and height = 3 characters and return
c 63499 Draw a Graphic with Lookup Index A, Width of 2 and Height of 2 at Character Coordinates (C, B)
D 63499 Used by the routines at #R46490 and #R48191. Input:  A  Index of graphic to draw in graphic data lookup table at #R29272 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item
C 63499,3 Load D and E with 2
C 63502,2 Draw a Graphic with Lookup Index A at Character Coordinates (C, B) with width = 2 characters and height = 2 characters and return
c 63504 Draw a Graphic with Lookup Index A at Character Coordinates (C, B)
D 63504 Used by the routines at #R39883 and #R42638. Input:  A  Index of graphic to draw in graphic data lookup table at #R29272 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item D  (entry at #R63507) Graphic height (characters) E  (entry at #R63507) Graphic width (characters)
C 63504,3 Set D (height) to 4 and E to 2 (width)
N 63507 This entry point is used by the routines at #R47193, #R63494 and #R63499.
C 63507,1 Store HL
C 63508,1 Store DE
C 63509,1 Store AF
C 63510,1 Load x-coordinate to draw item into instruction at #R63570...
C 63511,3 ...
C 63514,1 Multiply y-coordinate by 8...
C 63515,1 ...
C 63516,1 ...
C 63517,1 ...
C 63518,1 ...and load into HL...
C 63519,2 ...
C 63521,1 Double again (so now 16 times y-coordinate, as 8 pixels in a character block, and two bytes per entry in data at #R65140)
C 63522,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 63525,1 Advance by 16 times y-coordinate to point HL at entry for start of item's current pixel row
C 63526,1 Transfer this value into IX...
C 63527,2 ...
C 63529,1 Restore A (graphic index of item to draw)...
C 63530,1 ...and load into HL...
C 63531,2 ...
C 63533,1 Multiply by four (as there are two WORD entries for each graphic in the table at #R29272)...
C 63534,1 ...
C 63535,3 Point BC at start of Graphics Data Lookup Table at #R29272...
C 63538,1 ...and add offset to point to entry for item of interest
C 63539,1 Load graphic data address for this graphic into DE...
C 63540,1 ...
C 63541,1 ...
C 63542,1 ...
C 63543,3 Load next value in table (address of graphic data for this object's mask) into HL
C 63546,1 Restore BC (B = height, C = width)
C 63547,1 Load height into A...
C 63548,1 ...and multiply by eight...
C 63549,1 ...
C 63550,1 ...
C 63551,1 Swap A and A'
C 63552,1 Copy graphic width into B...
C 63553,1 ...and A'...
C 63554,3 ...and modify instruction at #R63573 with this value also
C 63557,1 Swap A and A'
C 63558,1 Swap DE (now pointer to object's mask graphic data) and HL (now pointer to object's graphic data)
C 63559,1 Switch registers
C 63560,1 Load C with eight times graphic's height
C 63561,1 Store BC (C = remaining number of pixel rows to draw, initially eight times graphic's height)
C 63562,3 Load HL' with Display File address of start of pixel row at object's y-coordinate...
C 63565,3 ...
C 63568,2 Set B' to zero
N 63570 The operand of the instruction at #R63570 represents the x-coordinate at which to draw the item. This is modified by the instruction at #R63511.
C 63570,2 Set C' to x-coordinate of item
C 63572,1 Add x-coordinate as offset to address of start of pixel row in HL' (HL' now points at Display File address to begin drawing)
N 63573 The operand of the instruction at #R63573 represents the width of the graphic to draw. This is modified by the instruction at #R63554.
C 63573,2 Load B with graphic width
C 63575,1 Switch registers
C 63576,1 Load graphic data byte from graphic mask data into A
C 63577,1 Switch registers
C 63578,1 Modify mask data by AND-ing with data already present in Display File (to allow scenery in background to show as set pixels are transparent)
C 63579,1 Switch registers
C 63580,1 Modify modified mask data by OR-ing with object graphic data byte from graphic data
C 63581,1 Advance HL to next byte in object graphic data
C 63582,1 Advance DE to next byte in object graphic mask data
C 63583,1 Switch registers
C 63584,1 Load masked graphic data byte into Display File
C 63585,1 Advance HL to next byte in Display File
C 63586,2 Loop back to #R63575 for next column of object graphic data
C 63588,2 Advance IX by two bytes to next address in Table of Addresses of Starts of Pixel Rows...
C 63590,2 ...
C 63592,1 Restore BC (C = remaining number of pixel rows to draw)
C 63593,1 Decrease remaining number pixel rows to draw
C 63594,2 If not zero (i.e. still need to draw at least one more pixel row of graphic data) then loop back to #R63561
C 63596,1 Restore HL
C 63597,1 Return
c 63598 Update Currently Selected Input Device
D 63598 Used by the routines at #R37689 and #R37909. Input:  A  Index of currently selected input device D  Index of previously selected input device (valid for call at #R37747 only)
C 63598,1 Load B with index of currently selected input device...
C 63599,2 ...and if this is 1 (Kempston Joystick)...
C 63601,3 ...then if Kempston Joystick is not present, revert to previously selected input device
C 63604,1 Load A with currently selected input device
C 63605,3 Point HL at start of Table of Start Addresses of Input Device Reading Routines
C 63608,3 Load HL with A-th entry from table (i.e. the routine for the currently selected input device)...
C 63611,3 ...and update jump (at #R64039) in input reading routine to this address
C 63614,3 Load index of currently selected input device into A
C 63617,2 Add 196 (index in Common Words Table for first "control method" string)
C 63619,3 Store as text code at #R63654
C 63622,3 Load HL with Display File address corresponding to (12, 8) (characters)...
C 63625,3 ...and move Bitmap Virtual Text Cursor here
C 63628,2 Set character to be repeated to 32 (SPACE)...
C 63630,3 ...
C 63633,3 Load HL with 20 as we need to draw across 20 character blocks
C 63636,3 Draw run of 20 SPACE characters (i.e. clear old "CONTROL : ..." text)
C 63639,3 Load HL with Display File address corresponding to (2, 8) (characters)...
C 63642,3 ...and move Bitmap Virtual Text Cursor here
C 63645,3 Point HL at Current Control Text (Control Selection Screen)
C 63648,3 Print text at location HL to screen using full screen width
C 63651,1 Set A to zero
C 63652,1 Return
b 63653 Index of Currently Selected Input Device
B 63653,1,1
b 63654 Current Control Text (on Control Selection Screen)
T 63654,3,B3 CONTROL : KEYBOARD
c 63657 If Kempston Joystick is Not Present then Revert to Previously Selected Input Device
D 63657 Used by the routine at #R63598. Input:  B  Index of currently selected input device D  Index of previously selected input device Output: B  Index of currently selected input device if Kempston Joystick is present, otherwise index of previously selected input device
C 63657,2 Load A with current Kempston Joystick state
C 63659,2 If bits 5, 6 and 7 (i.e. unused bits) are reset, indicating presence of Kempston Joystick...
C 63661,1 ...then return
C 63662,1 Load A with index of previously selected input device...
C 63663,3 ...set as currently selected input device...
C 63666,1 ...and load into B
C 63667,1 Return
c 63668 If Keypress Was Enqueued then Return Index of Last Key Pressed, Else Wait for Keypress and Return Index
D 63668 Used by the routine at #R63740. Output: A  Index of key pressed The operand of the instruction at #R63668 represents an enqueued keypress. This is modified by the instructions at #R63686 and #R63749.
C 63668,2 Load A with enqueued key index...
C 63670,1 ...and if not zero...
C 63671,2 ...then skip ahead to #R63677
C 63673,1 Clear last pressed key...
C 63674,3 ...
C 63677,1 Wait for interrupt
C 63678,3 Load last pressed key into A...
C 63681,1 ...and if this is zero (i.e. no key pressed)...
C 63682,2 ...then loop back to #R63677
C 63684,1 Switch AF and AF'
C 63685,1 Set enqueued key index to zero...
C 63686,3 ...
C 63689,1 Switch AF and AF'
C 63690,1 Return
c 63691 Print Current Control Keys to Screen
D 63691 Used by the routines at #R37951 and #R63740.
C 63691,3 Point HL at list of current keyboard control characters
C 63694,3 Print LEFT key at (5, 14)...
C 63697,3 ...
C 63700,3 Print RIGHT key at (18, 14)...
C 63703,3 ...
C 63706,3 Print JUMP/UP key at (5, 16)...
C 63709,3 ...
C 63712,3 Print DOWN key at (18, 16)...
C 63715,3 ...
C 63718,3 Print MENU (FIRE) key at (5, 18)...
C 63721,3 ... (see trivia)
C 63724,1 Store HL (current position in list of current keyboard control characters)
C 63725,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 63728,1 Restore HL (current position in Current Keyboard Controls)
C 63729,1 Load current keyboard control character into A
C 63730,1 Advance HL by one byte to next keyboard control
C 63731,2 If current keyboard control character is not 32 (SPACE)...
C 63733,2 ...then skip ahead to #R63737
C 63735,2 Load A with 127 (index of COPYRIGHT graphic in character set)
C 63737,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor and return
c 63740 Redefine Keyboard Controls
D 63740 Used by the routine at #R37764.
C 63740,3 Print current control keys to Screen
C 63743,3 If keypress was enqueued then load A with index of last key pressed, otherwise wait for keypress and load A with index
C 63746,2 If key pressed was 13 (ENTER)...
C 63748,1 ...then return
C 63749,3 Set enqueued key index to index of key pressed
C 63752,2 Load B with 5 (as there are five controls)
C 63754,3 Point HL at start of list of current keyboard control characters
C 63757,2 Set current keyboard control character to zero
C 63759,1 Advance to next keyboard control character
C 63760,2 Decrease B (remaining number of keyboard control characters to clear) and loop back to #R63757 if not zero
C 63762,3 Load B with 5 and C with zero
C 63765,3 Point HL at start of list of current keyboard control characters
C 63768,1 Store BC (B = remaining number of controls to define, C = number of controls defined)
C 63769,1 Store HL (current position in List of Keyboard Control Characters)
C 63770,1 Load number of controls defined (0, 1, 2, 3 or 4) into A
C 63771,2 Reset all but bits 1 and 2 (to give 0, 2 or 4)
C 63773,2 Add 14 (to give 14, 16 or 18, the y-coordinates in characters of displayed keyboard controls)...
C 63775,1 ...and load into B
C 63776,1 Load A with number of controls defined (0, 1, 2, 3 or 4)
C 63777,2 Reset all but bit 0 (to give 0 or 1)
C 63779,1 Store AF (A = bit 0 of number of controls defined)
C 63780,1 Double A (to give 0 or 2)...
C 63781,1 ...and load into C
C 63782,1 Restore AF (A = bit 0 of number of controls defined)
C 63783,1 Store AF (A = bit 0 of number of controls defined)
C 63784,1 Add C to A (to give 0 or 3)
C 63785,1 Multiply A by four...
C 63786,1 ...to give 0 or 12...
C 63787,1 ...and load into C
C 63788,1 Restore AF (A = bit 0 of number of controls defined)
C 63789,1 Add value in C to A (to give 0 or 13)
C 63790,2 Add 5 (to give 5 or 18, the x-coordinates in characters of displayed keyboard controls)...
C 63792,1 ...and load into C
C 63793,1 Store BC (coordinates in characters of current control being defined)
C 63794,3 Load HL with Attribute File address for coordinates (C, B)...
C 63797,1 ...and set the FLASH Flag for this address...
C 63798,2 ...
C 63800,1 ...
C 63801,1 Restore BC (coordinates in characters of current control being defined)
C 63802,1 Store BC (coordinates in characters of current control being defined)
C 63803,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 63806,3 If keypress was enqueued then load A with index of last key pressed, otherwise wait for keypress and load A with index
C 63809,2 If key pressed was SPACE...
C 63811,3 ...then skip ahead to #R63837
C 63814,2 If index of key pressed is less than 48 (i.e. below "0")...
C 63816,3 ...then jump back to #R63801 (i.e. wait for next key press and try again)
C 63819,2 If index of key pressed is 91 or higher (i.e. above "Z")...
C 63821,3 ...then jump back to #R63801 (i.e. wait for next key press and try again)
C 63824,2 If index of key pressed is less than 58 (i.e. "9" or below)...
C 63826,3 ...then skip ahead to #R63837
C 63829,2 If index of key pressed is 65 or higher (i.e. "A" or above)...
C 63831,3 ...then skip ahead to #R63837
C 63834,3 Jump back to #R63801 (i.e. wait for next key press and try again)
C 63837,3 Set Zero Flag if key pressed is already assigned to a control, otherwise reset
C 63840,3 If key pressed is already assigned then jump back to #R63801 (i.e. wait for next key press and try again)
C 63843,3 Store pressed key index at #R23711
C 63846,2 If key was not SPACE...
C 63848,2 ...then skip ahead to #R63852
C 63850,2 Load A with 127 (index in character set of COPYRIGHT UDG at #R28496)
C 63852,3 Print text character in A and advance Bitmap Virtual Text Cursor
C 63855,1 Restore BC (coordinates in characters of current control being defined)
C 63856,3 Load HL with Attribute File address for coordinates (C, B)...
C 63859,1 ...and reset the FLASH Flag for this address...
C 63860,2 ...
C 63862,1 ...
C 63863,1 Restore HL (current position in List of Keyboard Control Characters)
C 63864,3 Load A with index of previously defined key...
C 63867,1 ...and store in List of Keyboard Control Characters
C 63868,1 Advance HL to next entry in List of Keyboard Control Characters
C 63869,1 Restore BC (B = remaining number of controls to define, C = number of controls defined)
C 63870,1 Increase C (number of controls defined)
C 63871,2 Decrease B (remaining number of controls to define) and loop back to #R63768 if not zero
C 63873,2 Load B with 5 (as each keyboard half-row holds five keys)
C 63875,3 Load HL with address of operand of instruction at #R64044 (MSB of "input address" for keyboard half-row reading for LEFT)...
C 63878,3 ...and store at #R23711
C 63881,3 Point HL at start of list of current keyboard control characters
C 63884,1 Store BC (B = remaining number of control keys to check)
C 63885,1 Store HL (pointer to current position in list of current keyboard control characters)
C 63886,4 Point IX at Lists of Characters on Each Keyboard Half-Row
C 63890,1 Load A with current keyboard control character index
C 63891,2 Set C (index in list of half-rows) to zero
C 63893,3 If current keyboard control character index is the same as the current character in keyboard half-row groups...
C 63896,2 ...then skip ahead to #R63903
C 63898,1 Increase C (index in list of half-rows)
C 63899,2 Advance to next entry in list of half-rows
C 63901,2 Loop back to #R63893
C 63903,1 Load A with index of current control key in list of half-rows
N 63904 At this point we know the index of the current key in the list of half-rows. We now need to identify which half row it belongs to.
C 63904,2 Set B (keyboard half-row index) to zero
C 63906,2 If index of key in current half-row is less than 5 (i.e. key is in the current half-row)...
C 63908,3 ...then skip ahead to #R63914
C 63911,1 Increase B (keyboard half-row index)
C 63912,2 Loop back to #R63906
N 63914 The MSB in the "input address" for the various keyboard half-rows obeys the progression (254, 253, 251, 247, 239, 223, 191, 127).
C 63914,1 Load A with index of keyboard half-row containing current key
C 63915,1 Store BC (B = index of keyboard half-row, C = index of key in list of half-rows)
C 63916,1 Increase B
C 63917,3 Load HL with 128
C 63920,1 Double value in HL
C 63921,2 Decrease B (index of keyboard half-row) and loop back to #R63920 if not zero
N 63923 HL now contains the value (128 * 2^n) where n is the (1-based) index of the relevant half-row. H contains (2^m), where m is the (zero-based) index of the relevant half-row.
C 63923,2 Load A with 255
C 63925,1 Subtract H (2^m) to give MSB of input address for relevant half-row
C 63926,3 Load HL with address of operand of instruction to modify (#R64044)...
C 63929,1 ...and set operand to value in A
N 63930 Next we need to modify the second part of the opcode for the instruction that checks the set bit in A to determine which key in the half-row was pressed. The range of opcode values are: #TABLE(default,centre,:w) { =h Opcode Value | =h Instruction } { 71 | BIT 0,A } { 79 | BIT 1,A } { 87 | BIT 2,A } { 95 | BIT 3,A } { 103 | BIT 4,A } TABLE#
C 63930,1 Advance HL by four bytes to operand of instruction at #R64048...
C 63931,1 ...
C 63932,1 ...
C 63933,1 ...
C 63934,3 ...and store at #R23711
C 63937,1 Restore BC (B = index of keyboard half-row, C = index of key in list of half-rows)
C 63938,1 Load B with five times index of keyboard half-row (value currently in B)...
C 63939,1 ...
C 63940,1 ...
C 63941,1 ...
C 63942,1 ... (B is now 0, 5, 10, 15, 20, 25, 30 or 35)
C 63943,1 Load A with index of key in list of half-rows...
C 63944,1 ...and subtract B (5 times index of half-row) to give index of key within current half-row
C 63945,1 Multiply this index by 8 (opcode interval between successive "BIT n,A" and "BIT n+1,A" instructions)...
C 63946,1 ...
C 63947,1 ...
C 63948,2 ...and add 71 (opcode for "BIT 0,A")
C 63950,3 Load HL with address of operand / opcode for "BIT n,A" instruction...
C 63953,1 ...and set "n" accordingly
C 63954,3 Advance HL by five bytes to operand of next "LD B,x" instruction (i.e. MSB of "input address" for next control)...
C 63957,1 ...
C 63958,3 ...and store at #R23711
C 63961,1 Restore HL (pointer to current position in list of current keyboard control characters, PUSHed at #R63885)
C 63962,1 Advance HL to next keyboard control character
C 63963,1 Store BC (B = remaining number of control keys to check, PUSHed at #R63884)
C 63964,2 Decrease B (remaining number of control keys to check) and loop back to #R63884 for next control key if not zero
C 63966,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed and return
c 63969 Set Zero Flag if Key Pressed is Already Assigned to a Control, Otherwise Reset
D 63969 Used by the routine at #R63740. Input:  A  Index of key pressed Output: F  Zero Flag set if pressed key is already assigned, otherwise reset
C 63969,1 Store BC
C 63970,1 Store HL
C 63971,3 Point HL at start of list of current keyboard control characters
C 63974,2 Load B with 5 (as there are five controls to process)
C 63976,1 If key pressed is the same as current control key index...
C 63977,2 ...then skip ahead to #R63983
C 63979,1 Advance HL to next entry in list of current keyboard control characters
C 63980,2 Decrease B (remaining number of control characters to process) and loop back to #R63976 if not zero
C 63982,1 Reset Zero Flag
C 63983,1 Restore HL
C 63984,1 Restore BC
C 63985,1 Return
b 63986 Current Keyboard Controls
B 63986,1,1 Left
B 63987,1,1 Right
B 63988,1,1 Jump / Up
B 63989,1,1 Down
B 63990,1,1 Menu (Fire)
B 63991,3,3 Unused
b 63994 Lists of Characters on Each Keyboard Half-Row
T 63994,5,B1:4 (00) - IN 65278 (B = 254, C = 254)
T 63999,5,5 (01) - IN 65022 (B = 253, C = 254)
T 64004,5,5 (02) - IN 64510 (B = 251, C = 254)
T 64009,5,5 (03) - IN 63486 (B = 247, C = 254)
T 64014,5,5 (04) - IN 61438 (B = 239, C = 254)
T 64019,5,5 (05) - IN 57342 (B = 223, C = 254)
T 64024,5,B1:4 (06) - IN 49150 (B = 191, C = 254)
T 64029,5,1:B1:3 (07) - IN 32766 (B = 127, C = 254)
c 64034 Capture Keyboard Input, or Jump to Joystick Reading Routine, Loading Result into A
D 64034 Used by the routines at #R38205, #R47502, #R47592, #R64230 and #R64836. Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 64034,3 Point HL at input control flags and reset all...
C 64037,2 ...
N 64039 The operand of the instruction at #R64039 represents the start address of the input reading routine for the currently selected input device. This is modified by the instruction at #R63611.
C 64039,3 Jump to appropriate keyboard / joystick reading routine
c 64042 Capture Keyboard Input
D 64042 Used by the routine at #R64034. Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 64042,2 Load C with 254 (as all keyboard half-row "input addresses" have C = 254)
N 64044 The operand of the instruction at #R64044 represents the MSB of the "input address" to use in reading the keyboard for the currently defined LEFT key. It is modified by the routine at #R63740.
C 64044,2 Load B with MSB of "input address"
C 64046,2 Read keyboard
N 64048 The operand of the instruction at #R64048 represents the index of the bit to use in reading the keyboard. It is modified by the routine at #R63740.
C 64048,2 "N" key pressed so...
C 64050,3 ...store a LEFT input from control device
C 64053,2 Load B with MSB of "input address"
C 64055,2 Read keyboard
C 64057,2 "M" key pressed so...
C 64059,3 ...store a RIGHT input from control device
C 64062,2 IN 65022 reads the half row A to G...
C 64064,2 Read keyboard
C 64066,2 "A" key pressed so...
C 64068,3 ...store an UP input from control device
C 64071,2 IN 65278 reads the half row CAPS SHIFT to V
C 64073,2 Read keyboard
C 64075,2 "Z" key pressed so...
C 64077,3 ...store a DOWN input from control device
C 64080,2 IN 32766 reads the half row SPACE to B
C 64082,2 Read keyboard
C 64084,2 SPACE bar pressed so...
C 64086,3 ...store a FIRE input from control device
C 64089,1 Load stored input into A
C 64090,1 Return
c 64091 Capture Kempston Joystick Input Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 64091,2 Load 31 (Kempston port number) into A
C 64093,2 Read byte from port 31 (i.e. read state of joystick)
C 64095,2 If joystick moved right...
C 64097,3 ...store a RIGHT input from control device
C 64100,2 If joystick moved left...
C 64102,3 ...store a LEFT input from control device
C 64105,2 If joystick moved down...
C 64107,3 ...store a DOWN input from control device
C 64110,2 If joystick moved up...
C 64112,3 ...store an UP input from control device
C 64115,2 If fire button pressed...
C 64117,3 ...store a FIRE input from control device
C 64120,1 Return stored joystick movement in A
C 64121,1 Return
c 64122 Capture Cursor Joystick Input Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 64122,2 IN 63486 reads the half row 1 to 5
C 64124,2 ...
C 64126,2 Read keyboard/joystick
C 64128,2 If joystick moved left ("5" key pressed)...
C 64130,3 ...store a LEFT input from control device
C 64133,2 IN 61438 reads the half row O to 6
C 64135,2 Read keyboard/joystick
C 64137,2 If joystick moved right ("8" key pressed)...
C 64139,3 ...store a RIGHT input from control device
C 64142,2 If joystick moved down ("6" key pressed)...
C 64144,3 ...store a DOWN input from control device
C 64147,2 If joystick moved up ("7" key pressed)...
C 64149,3 ...store an UP input from control device
C 64152,2 If fire button pressed ("0" key pressed)...
C 64154,3 ...store a FIRE input from control device
C 64157,1 Return stored joystick movement in A
C 64158,1 Return
c 64159 Capture Sinclair Joystick 1 Input Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 64159,2 IN 61438 reads the half row O to 6
C 64161,2 ...
C 64163,2 ...
C 64165,2 If joystick moved left ("6" key pressed)...
C 64167,3 ...store a LEFT input from control device
C 64170,2 If joystick moved right ("7" key pressed)...
C 64172,3 ...store a RIGHT input from control device
C 64175,2 If joystick moved down ("8" key pressed)...
C 64177,3 ...store a DOWN input from control device
C 64180,2 If joystick moved down ("9" key pressed)...
C 64182,3 ...store an UP input from control device
C 64185,2 If fire button pressed ("0" key pressed)...
C 64187,3 ...store a FIRE input from control device
C 64190,1 Return stored joystick movement in A
C 64191,1 Return
c 64192 Store a LEFT Input from Control Device
D 64192 Used by the routines at #R64042, #R64091, #R64122 and #R64159. Input:  HL  Pointer to Input Control Flags (#R23487)
C 64192,2 Set Left Pressed Flag
C 64194,1 Return
c 64195 Store a RIGHT Input from Control Device
D 64195 Used by the routines at #R64042, #R64091, #R64122 and #R64159. Input:  HL  Pointer to Input Control Flags (#R23487)
C 64195,2 Set Right Pressed Flag
C 64197,1 Return
c 64198 Store an UP Input from Control Device
D 64198 Used by the routines at #R64042, #R64091, #R64122 and #R64159. Input:  HL  Pointer to Input Control Flags (#R23487)
C 64198,2 Set Up Pressed Flag
C 64200,1 Return
c 64201 Store a DOWN Input from Control Device
D 64201 Used by the routines at #R64042, #R64091, #R64122 and #R64159. Input:  HL  Pointer to Input Control Flags (#R23487)
C 64201,2 Set Down Pressed Flag
C 64203,1 Return
c 64204 Store a FIRE Input from Control Device
D 64204 Used by the routines at #R64042, #R64091, #R64122 and #R64159. Input:  HL  Pointer to Input Control Flags (#R23487)
C 64204,2 Set Fire Pressed Flag
C 64206,1 Return
c 64207 Display Execute / Reject Command Window and Return if Execute Chosen, Else Exit to Main Game Loop
D 64207 Used by the routines at #R41578, #R41748, #R41924, #R42257, #R42638, #R43043, #R43494, #R43636, #R43874, #R44100, #R44337, #R44635, #R44861, #R44933, #R44990, #R45095, #R45131 and #R45149.
C 64207,3 Play Hiss-Type Sound
C 64210,2 Draw "EXECUTE / REJECT COMMAND" Window...
C 64212,3 ...
C 64215,3 Point to "EXECUTE COMMAND..." text...
C 64218,3 ...and print to screen
C 64221,3 Process keyboard / joystick input on a menu and load A with selected item index...
C 64224,1 ...and if this is 0 (i.e. Execute Command)...
C 64225,1 ...then return
C 64226,1 Remove return address from stack
C 64227,3 Set Magic Knight's available action flags and jump to start of Main Game Loop
c 64230 Wait for Interrupt then Display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
D 64230 Used by the routines at #R37764, #R37880, #R37951, #R40258, #R41578, #R44253, #R45641, #R45685, #R45723, #R45963, #R63740, #R64317 and #R64582.
C 64230,1 Wait for interrupt
C 64231,3 Play Hiss-Type Sound
C 64234,2 Draw Window 14 ("PRESS FIRE TO CONTINUE")...
C 64236,3 ...
C 64239,3 Point HL at "PRESS FIRE TO CONTINUE" text string...
C 64242,3 ...and print to screen
C 64245,3 Capture keyboard or joystick input loading result into A
C 64248,2 If bit 4 (Fire Button Flag) is not set...
C 64250,2 ...then loop back to #R64245
C 64252,3 Wait for Fire Button / Key to be Released
C 64255,3 Play upward scale sound and return
c 64258 Display "YOUR HANDS ARE FULL" Window (13), wait for Fire to be pressed then Jump to Main Game Loop
D 64258 Used by the routines at #R41578, #R41924 and #R44635. Input:  HL  (entry at #R64261 only) Address of text to print in window
C 64258,3 Point HL at "YOUR HANDS ARE FULL" text
N 64261 This entry point is used by the routines at #R41578, #R41748, #R41924, #R42157, #R42257, #R44635, #R64265, #R64270 and #R64275.
C 64261,3 Display Window 13 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64264 Data block at 64264
B 64264,1,1 ...
c 64265 Display "THE [object] IS TOO HEAVY FOR YOU" Window (13), wait for Fire to be pressed then Jump to Main Game Loop
D 64265 Used by the routines at #R41578 and #R41924.
C 64265,3 Point HL at "THE [name of current object] IS TOO HEAVY FOR YOU" text
C 64268,2 Display Window 13 with text at HL, wait for Fire to be pressed then jump to Main Game Loop
c 64270 Display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for Fire to be pressed then Jump to Main Game Loop
D 64270 Used by the routines at #R41924, #R42091, #R42105 and #R42247.
C 64270,3 Point HL at "[Current Character's short name] WANTS TO KEEP THE [name of Current Object]" text
C 64273,2 Display Window 13 with text at HL, wait for Fire to be pressed then jump to Main Game Loop
c 64275 Display "[Character] DOES NOT WANT THE [Object]" Window (13), wait for Fire to be pressed then Jump to Main Game Loop
D 64275 Used by the routines at #R42257 and #R42429.
C 64275,3 Point HL at "[Current Character's short name] DOES NOT WANT THE [name of Current Object]" text
C 64278,2 Display Window 13 with text at HL, wait for Fire to be pressed then jump to Main Game Loop
c 64280 Display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), wait for Fire to be pressed then Jump to Main Game Loop
D 64280 Used by the routines at #R43318, #R43428 and #R45423.
C 64280,3 Point HL at "[Current Character's short name] DOES NOT WANT TO BE COMMANDED BY YOU " text
C 64283,2 Display Window 29 with text at HL, wait for Fire to be pressed then jump to Main Game Loop
c 64285 Display "[Character] CANNOT HELP YOU" Window (29), wait for Fire to be pressed then Jump to Main Game Loop
D 64285 Used by the routines at #R43250, #R45224, #R45227, #R45256, #R45333, #R45342, #R45345 and #R45348.
C 64285,3 Point HL at "[Current Character's short name] CANNOT HELP YOU  " text
C 64288,2 Display Window 29 with text at HL, wait for Fire to be pressed then jump to Main Game Loop
c 64290 Display "YOU CANNOT [Current Command] THAT SPELL NOW..." Window (12), wait for Fire to be pressed then Jump to Main Game Loop
D 64290 Used by the routines at #R43950, #R43998, #R44001, #R44063, #R44100 and #R44198.
C 64290,3 Point HL at "YOU CANNOT [Current Command] THAT SPELL NOW..." text
N 64293 This entry point is used by the routines at #R43199, #R43636, #R44100 and #R44337.
C 64293,3 Display Window 15 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64296 Data block at 64296
B 64296,1,1 ...
c 64297 Display Window 12 with Text at HL, wait for Fire to be pressed then Jump to Main Game Loop
D 64297 Used by the routines at #R41748, #R43494, #R44990, #R45095, #R45131 and #R45149.
C 64297,3 Display Window 12 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64300 Data block at 64300
B 64300,1,1 ...
c 64301 Display Window 24 with Text at HL, wait for Fire to be pressed then Jump to Main Game Loop
D 64301 Used by the routines at #R45227, #R45256 and #R45336.
C 64301,3 Display Window 24 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64304 Data block at 64304
B 64304,1,1 ...
c 64305 Display Window 27 with Text at HL, wait for Fire to be pressed then Jump to Main Game Loop
D 64305 Used by the routines at #R44001, #R44063, #R44198 and #R44337.
C 64305,3 Display Window 27 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64308 Data block at 64308
B 64308,1,1 ...
c 64309 Display Window 28 with Text at HL, wait for Fire to be pressed then Jump to Main Game Loop
D 64309 Used by the routine at #R44337.
C 64309,3 Display Window 28 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64312 Data block at 64312
B 64312,1,1 ...
c 64313 Display Window 29 with Text at HL, wait for Fire to be pressed then Jump to Main Game Loop
D 64313 Used by the routines at #R40338, #R43117, #R43158, #R43199, #R43250, #R43318, #R43428, #R44933, #R64280 and #R64285.
C 64313,3 Display Window 29 with text at HL, wait for Fire to be pressed then jump to Main Game Loop...
b 64316 Data block at 64316
B 64316,1,1 ...
c 64317 Display an Information Window with Text at HL, wait for Fire to be pressed then Jump to Main Game Loop
D 64317 This routine is CALLed by the instructions at #R43620, #R44896, #R64261, #R64293, #R64297, #R64301, #R64305, #R64309 and #R64313. Immediately after each of these calls is a byte of data representing the index of the window to draw. This data is read in this routine by loading the RETurn address (where the data is held) into DE and then performing a LD A,(DE). Input:  HL  Points to text to print in the window
C 64317,1 Remove value on top of stack, as we are not RETurning to this address, but reading data from it
C 64318,1 Load A with window index data...
C 64319,3 ...and modify instruction at #R64339 with this index
C 64322,1 Store HL (pointer to text to print)
C 64323,1 Load eight times window index into HL...
C 64324,2 ...
C 64326,1 ...
C 64327,1 ...
C 64328,1 ...
C 64329,3 Point DE at y-coordinate of top of window in first entry of Window Data table at #R49034
C 64332,1 ...and add HL as offset in HL
C 64333,1 Swap DE (now points to y-coordinate of top of required window) and HL (now points to first entry in Window Data table)
C 64334,1 Restore HL (pointer to text to print)
C 64335,3 Adjust height of window to accommodate text
C 64338,1 Store HL (pointer to start of text data)
N 64339 The operand of the instruction at #R64339 represents a window index. This is modified by the instruction at #R64319.
C 64339,2 Draw window with index specified in data previously...
C 64341,3 ...
C 64344,1 Restore HL (pointer to start of text data)
C 64345,3 Print text to screen
C 64348,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 64351,3 Set Magic Knight's available action flags and jump to start of Main Game Loop
c 64354 Scroll a Region of the Display File Up a Pixel Row Without Wrapping
D 64354 Used by the routine at #R47603.
C 64354,3 Load HL with address of routine at #R64360 (return)
C 64357,3 Jump to #R64367 (scroll a region of the Display File up a pixel row then return)
c 64360 Do Nothing (Return)
D 64360 Used by the routines at #R64367 and #R64456.
C 64360,1 Return
c 64361 Scroll a Region of the Display File Down a Pixel Row Without Wrapping
D 64361 Used by the routine at #R47665.
C 64361,3 Load HL with address of routine at #R64360 (return)
C 64364,3 Jump to #R64456 (scroll a region of the Display File down a pixel row then return)
c 64367 Scroll a Region of the Display File Up a Pixel Row
D 64367 Used by the routine at #R64354. Input:  HL  Address to jump to at the end of this routine (instruction at #R64453)
C 64367,3 Modify jump (at #R64453) destination to address stored in HL
C 64370,3 Load y-coordinate of top of region to scroll (pixels) into C...
C 64373,1 ...
C 64374,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 64377,2 Load HL with double y-coordinate of top of region to scroll...
C 64379,1 ...(as entries in table at #R26240 are two bytes wide)...
C 64380,1 ...
C 64381,1 ...and add to DE as offset in HL
C 64382,1 Load Display File address of pixel row of interest into DE...
C 64383,1 ...
C 64384,1 ...
C 64385,1 Swap HL (now Display File address of start of A-th pixel row) and DE (now points to entry in table at #R65140)
C 64386,3 Load y-coordinate of bottom of region to scroll (pixels) into A...
C 64389,1 ...and subtract C to get height of region to scroll (pixels)
C 64390,1 Swap AF and AF' (A' now holds height of region to scroll in pixels)
C 64391,3 Load C with x-coordinate of left edge of region to scroll (characters)...
C 64394,1 ...
C 64395,1 Add this x-coordinate value as offset (via OR) to HL...
C 64396,1 ...
C 64397,1 ...
C 64398,3 Load A with x-coordinate of right edge of region to scroll (characters)
C 64401,1 Subtract C...
C 64402,1 ...and add one to get width (characters) of region to scroll
C 64403,2 Load BC with width of region to scroll (characters)...
C 64405,1 ...
C 64406,1 Store BC (width of region to scroll in characters)
C 64407,1 Store HL (current position in Display File, at left edge of top pixel row in region to scroll)
C 64408,3 Point DE at #R23296
C 64411,2 Copy BC bytes of data from HL to DE
C 64413,1 Restore HL (current position in Display File, at left edge of top pixel row in region to scroll)
C 64414,1 Restore BC (width of region to scroll in characters)
C 64415,1 Swap all registers (B' = width of region to scroll in characters)
C 64416,1 Swap AF and AF' (A now holds height of region to scroll in pixels)
C 64417,3 If height of region to scroll in pixels is zero then skip ahead to #R64452
C 64420,1 Load B with height of region to scroll in pixels
C 64421,1 Swap all registers (B = width of region to scroll, B' = remaining number of pixel rows to scroll)
C 64422,1 Load D and A with H plus 1 and E with L...
C 64423,1 ...
C 64424,1 ...
C 64425,1 ...
C 64426,2 If any of three least significant bits in A are set (i.e. at least one of the three least significant bits in H were also set)...
C 64428,3 ...then skip ahead to #R64442
N 64431 At least one of the three least significant bits of H are set, meaning we could be at the top of a third of the display
C 64431,1 Move DE on by 32 bytes to move up one character row (eight rows of pixels)...
C 64432,2 ...
C 64434,1 ...
C 64435,3 If L hasn't gone over 256 (i.e. we haven't moved 32 bytes on from the top pixel row of the bottom character row of a third) then skip ahead to #R64442...
C 64438,1 ...else move up by a third...
C 64439,2 ...
C 64441,1 ...
C 64442,1 Swap DE (now points to start of upper pixel row) and HL (now points to start of lower pixel row)
C 64443,1 Store HL (pointer to lower pixel row)
C 64444,1 Store BC (B = width of region to scroll, in characters)
C 64445,2 Copy row of bitmap data up a row from HL to DE
C 64447,1 Restore BC (B = width of region to scroll, in characters)
C 64448,1 Store HL (pointer to upper pixel row)
C 64449,1 Swap all registers (B = remaining number of pixel rows to scroll, B' = width of region to scroll)
C 64450,2 Loop back to #R64421 to copy next row of pixels up
C 64452,1 Swap all registers
N 64453 The operand of the instruction at #R64453 is the address to jump to upon completion of this routine. This is modified by the instruction at #R64367, set to the value in HL at the start of this routine. The only value this is set to is #R64360 (return).
C 64453,3 Jump to address that was in HL at start of this routine (return)
c 64456 Scroll a Region of the Display File Down a Pixel Row
D 64456 Used by the routine at #R64361. Input:  HL  Address to jump to at the end of this routine (instruction at #R64545)
C 64456,3 Modify jump (at #R64545) destination to address stored in HL
C 64459,3 Load y-coordinate of bottom of region to scroll (pixels) into A and C...
C 64462,1 ...
C 64463,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 64466,2 Load HL with double y-coordinate of bottom of region to scroll...
C 64468,1 ...(as entries in table at #R26240 are two bytes wide)...
C 64469,1 ...
C 64470,1 ...and add to DE as offset in HL
C 64471,1 Load Display File address of pixel row of interest into DE...
C 64472,1 ...
C 64473,1 ...
C 64474,1 Swap HL (now Display File address of start of A-th pixel row) and DE (now points to entry in table at #R65140)
C 64475,3 Load y-coordinate of top of region to scroll (pixels) into B...
C 64478,1 ...
C 64479,1 Load y-coordinate of bottom of region to scroll into A...
C 64480,1 ...and subtract B to get height of region to scroll (pixels)
C 64481,1 Swap AF and AF' (A' now holds height of region to scroll in pixels)
C 64482,3 Load C with x-coordinate of left edge of region to scroll (characters)...
C 64485,1 ...
C 64486,1 Add this x-coordinate value as offset (via OR) to HL...
C 64487,1 ...
C 64488,1 ...
C 64489,3 Load A with x-coordinate of right edge of region to scroll (characters)
C 64492,1 Subtract C...
C 64493,1 ...and add one to get width (characters) of region to scroll
C 64494,2 Load BC with width of region to scroll (characters)...
C 64496,1 ...
C 64497,1 Store BC (width of region to scroll in characters)
C 64498,1 Store HL (current position in Display File, at left edge of bottom pixel row in region to scroll)
C 64499,3 Point DE at #R23296
C 64502,2 Copy BC bytes of data from HL to DE
C 64504,1 Restore HL (current position in Display File, at left edge of bottom pixel row in region to scroll)
C 64505,1 Restore BC (width of region to scroll in characters)
C 64506,1 Swap all registers (B' = width of region to scroll in characters)
C 64507,1 Swap AF and AF' (A now holds height of region to scroll in pixels)
C 64508,3 If height of region to scroll in pixels is zero then skip ahead to #R64544
C 64511,1 Load B with height of region to scroll in pixels
C 64512,1 Swap all registers (B = width of region to scroll, B' = remaining number of pixel rows to scroll)
C 64513,1 Load D and A with H minus 1 and E with L...
C 64514,1 ...
C 64515,1 ...
C 64516,1 ...
C 64517,1 Invert all bits in A
C 64518,2 If any of three least significant bits in A are set (i.e. at least one of the three least significant bits in H were also set)...
C 64520,3 ...then skip ahead to #R64534
N 64523 At least one of the three least significant bits of H are set, meaning we could be at the top of a third of the display
C 64523,1 Move DE back by 32 bytes to move up one character row (eight rows of pixels)...
C 64524,2 ...
C 64526,1 ...
C 64527,3 If E hasn't gone under zero (i.e. we haven't moved 32 bytes back from the top character row of a third) then skip ahead to #R64534...
C 64530,1 ...else move down by a third...
C 64531,2 ...
C 64533,1 ...
C 64534,1 Swap DE (now points to start of lower pixel row) and HL (now points to start of upper pixel row)
C 64535,1 Store HL (pointer to upper pixel row)
C 64536,1 Store BC (B = width of region to scroll, in characters)
C 64537,2 Copy row of bitmap data down a row from HL to DE
C 64539,1 Restore BC (B = width of region to scroll, in characters)
C 64540,1 Store HL (pointer to upper pixel row)
C 64541,1 Swap all registers (B = remaining number of pixel rows to scroll, B' = width of region to scroll)
C 64542,2 Loop back to #R64512 to copy next row of pixels down
C 64544,1 Swap all registers
N 64545 The operand of the instruction at #R64545 is the address to jump to upon completion of this routine. This is modified by the instruction at #R64456, set to the value in HL at the start of this routine. The only value this is set to is #R64360 (return).
C 64545,3 Jump to address that was in HL at start of this routine (return)
c 64548 Flash Border and Screen (as in Cast a Spell)
D 64548 Used by the routines at #R44216, #R44225 and #R44253.
C 64548,2 Load B with 96 (number of times to repeat routine)
C 64550,3 Load DE with 576 (number of bytes to modify - i.e. bottom 18 rows)
C 64553,3 Point HL at start of 7th row in Attribute File
C 64556,1 Load attribute byte into A
C 64557,2 Clear three lowest bits (i.e. INK colour) preserving only PAPER, BRIGHT and FLASH bits
C 64559,1 Place modified value into C
C 64560,1 Get original attribute from screen again
C 64561,1 Increase by one
C 64562,2 Clear all bits except the lowest three (i.e. INK colour)
C 64564,2 Set border colour to A
C 64566,1 Combine other bits back in
C 64567,2 Update border / speaker state
C 64569,1 Load modified value back into Attribute File
C 64570,1 Move to next byte in Attribute File
C 64571,1 Reduce DE (reducing number of attribute bytes left to modify)
C 64572,1 If DE is not zero (i.e. there are more attribute bytes to modify)...
C 64573,1 ...
C 64574,2 ...then loop back to #R64556
C 64576,2 Loop back for another pass
C 64578,1 Set A to zero
C 64579,2 Reset border to black and reset speaker state
C 64581,1 Return
c 64582 Display Cyan "Game Over" Window and Return to Control Selection Menu
D 64582 Used by the routines at #R38205, #R38841, #R40258, #R40598, #R41748, #R43636, #R44216, #R44253, #R45723, #R46560 and #R62877. Input:  HL  Points to location of a string
C 64582,4 Reset Game In Progress Flag (IY = 23610)
C 64586,3 Adjust height of window 24 ("Game Over" Window) to accommodate text...
C 64589,3 ...
C 64592,1 Store HL (points to first character of text to display)
C 64593,2 Draw Window 24 ("Game Over" Window)...
C 64595,3 ...
C 64598,3 Point to string for percentage completion
C 64601,3 Point to string for time left
C 64604,3 Insert current time and score into "Time Left" and "Percentage Completion" texts
C 64607,3 Point HL at "GAME OVER / TOTAL COMPLETION XX% / TIME LEFT XX HOURS" text...
C 64610,3 ...and print to screen
C 64613,1 Restore HL (points to first character of text to display)
C 64614,3 Print text to screen
C 64617,3 Wait for interrupt then display "PRESS FIRE TO CONTINUE" Window and wait for Fire to be pressed
C 64620,3 Wait for interrupt then display and handle Input Device Selection Menu
c 64623 Advance HL by A Words, Load HL with Word at Location HL as Address and Jump to it
D 64623 Used by the routines at #R41924, #R42257, #R42494, #R43043, #R43250 and #R43874. Input:  A  An index HL  First entry in list of addresses
C 64623,3 Load address with index A in a list of addresses at HL into HL
C 64626,1 Jump to address in HL
c 64627 Load address with index A in a list of addresses at HL into HL
D 64627 Used by the routines at #R38841, #R39014, #R39189, #R39655, #R63598 and #R64623. Input:  A  Index of required entry in list (0 is first) HL  Address of start of list Output: HL  A-th address in list at HL (input)
C 64627,1 Double offset value...
C 64628,2 ...and load into DE...
C 64630,1 ...
C 64631,1 Add doubled offset to address in HL
N 64632 This entry point is used by the routines at #R40784, #R41035 and #R63504.
C 64632,1 Load address at HL into HL...
C 64633,1 ...
C 64634,1 ...
C 64635,1 ...
C 64636,1 Return
c 64637 If Do Not Draw Storm Cloud Flag is Set then Prepare to Draw Storm Cloud
D 64637 This routine is only called when the Storm Cloud and Magic Knight are both in the same room.
C 64637,3 If Do Not Draw Storm Cloud Flag is reset...
C 64640,1 ...
C 64641,1 ...then return
C 64642,3 Load BC with Storm Cloud's apparent x-coordinate (characters)...
C 64645,1 ...
C 64646,1 ...
C 64647,1 ...
C 64648,2 ...
C 64650,1 ...
C 64651,2 ...
C 64653,3 Load HL with Display File address for top pixel row of cell at character coordinates (0, 5)
C 64656,1 Add BC to HL as offset...
C 64657,3 ...and store at #R64703
C 64660,3 Load HL with Storm Cloud's apparent x-coordinate (pixel-within-character)...
C 64663,2 ...
C 64665,1 ...multiplied by 128...
C 64666,1 ...as each Storm Cloud frame graphic is 128 bytes long...
C 64667,1 ...
C 64668,1 ...
C 64669,1 ...
C 64670,2 ...
C 64672,1 ...
C 64673,1 ...
C 64674,1 ...
C 64675,3 Load BC with start address of Storm Cloud graphic data...
C 64678,1 ...and add HL as offset in HL to give address of required frame's graphic data
C 64679,3 Store graphic's start address at #R64707
C 64682,1 Reset Do Not Draw Storm Cloud Flag...
C 64683,3 ...
C 64686,1 Return
c 64687 If Do Not Draw Storm Cloud Flag is Reset then Draw Storm Cloud
D 64687 If the Do Not Draw Storm Cloud Flag is reset, then the Storm Cloud will be drawn. After this, the flag is set, ensuring that the position of the Storm Cloud can be updated by the routine at #R64637. This also ensures that if Magic Knight moves to a different room, the drawing of the Storm Cloud will cease, since the Do Not Draw Storm Cloud Flag is only reset by the routine at #R64637, which in turn is only called when both the Storm Cloud and Magic Knight are in the same room. The operand of the instruction at #R64687 represents the Do Not Draw Storm Cloud Flag. This is modified by the instructions at #R38134, #R64683 and #R64806.
C 64687,2 If Do Not Draw Storm Cloud Flag is set...
C 64689,1 ...
C 64690,1 ...then return
C 64691,3 Store value of system variable COORDS on stack...
C 64694,1 ...
C 64695,3 Load HL with address of Bitmap Virtual Text Cursor
C 64698,1 Store HL (Bitmap Virtual Cursor address)
C 64699,3 Load HL with address of Attribute Virtual Text Cursor
C 64702,1 Store HL (Attribute Virtual Cursor address)
N 64703 The operand of the instruction at #R64703 represents the Display File address for the top-left of the Storm Cloud. This is modified by the instruction at #R64657.
C 64703,3 Load HL with current Display File address of Storm Cloud
C 64706,1 Store HL (current Display File address of Storm Cloud)
N 64707 The operand of the instruction at #R64707 represents the start address of the graphic data for the Storm Cloud's current frame. This is modified by the instruction at #R64679.
C 64707,3 Load DE with start address of graphic data for Storm Cloud's current frame
C 64710,2 Load B with 8 (as we are drawing the first eight pixel rows of cloud graphic data)
C 64712,1 Store HL (current Display File address at left side of cloud)
C 64713,1 Copy a run of eight bytes from Storm Cloud's graphic data...
C 64714,1 ...to Display File, starting at current Display File address...
C 64715,1 ...
C 64716,1 ...
C 64717,1 ...
C 64718,1 ...
C 64719,1 ...
C 64720,1 ...
C 64721,1 ...
C 64722,1 ...
C 64723,1 ...
C 64724,1 ...
C 64725,1 ...
C 64726,1 ...
C 64727,1 ...
C 64728,1 ...
C 64729,1 ...
C 64730,1 ...
C 64731,1 ...
C 64732,1 ...
C 64733,1 ...
C 64734,1 ...
C 64735,1 ...
C 64736,1 ...
C 64737,1 ...
C 64738,1 ...
C 64739,1 ...
C 64740,1 ...
C 64741,1 ...
C 64742,1 ...
C 64743,1 Advance DE to next byte in graphic data (i.e. start of next pixel row)
C 64744,1 Restore HL (current Display File address at left side of cloud)
C 64745,1 Advance down a pixel row
C 64746,2 Decrease remaining number of pixel rows to draw, and loop back to #R64712 if not zero
C 64748,1 Restore HL (current Display File address of Storm Cloud)
C 64749,2 Add 32 to Display File address to move down eight pixels...
C 64751,1 ...
C 64752,1 ...
C 64753,1 Set A to zero (see trivia)
C 64754,2 Load B with 5 (as we are drawing a further five pixel rows of cloud graphic data)
C 64756,1 Store HL (current Display File address at left side of cloud)
C 64757,1 Copy a run of eight bytes from Storm Cloud's graphic data...
C 64758,1 ...to Display File, starting at current Display File address...
C 64759,1 ...
C 64760,1 ...
C 64761,1 ...
C 64762,1 ...
C 64763,1 ...
C 64764,1 ...
C 64765,1 ...
C 64766,1 ...
C 64767,1 ...
C 64768,1 ...
C 64769,1 ...
C 64770,1 ...
C 64771,1 ...
C 64772,1 ...
C 64773,1 ...
C 64774,1 ...
C 64775,1 ...
C 64776,1 ...
C 64777,1 ...
C 64778,1 ...
C 64779,1 ...
C 64780,1 ...
C 64781,1 ...
C 64782,1 ...
C 64783,1 ...
C 64784,1 ...
C 64785,1 ...
C 64786,1 ...
C 64787,1 ...
C 64788,1 Restore HL (current Display File address at left side of cloud)
C 64789,1 Advance down a pixel row
C 64790,2 Decrease remaining number of pixel rows to draw, and loop back to #R64756 if not zero
C 64792,1 Restore HL (Attribute Virtual Cursor address)
C 64793,3 Restore Attribute Virtual Cursor address
C 64796,1 Restore HL (Bitmap Virtual Cursor address)
C 64797,3 Restore Bitmap Virtual Cursor address
C 64800,1 Restore value of system variable COORDS from stack...
C 64801,3 ...
C 64804,2 Set Do Not Draw Storm Cloud Flag...
C 64806,3 ...
C 64809,1 Return
c 64810 Set New Random Seed and Load A with a Random Number
D 64810 Used by the routine at #R64829. Output: A  LSB of new random seed
C 64810,1 Store HL
C 64811,1 Store BC
C 64812,4 Load system variables Seed (hi) and Frames (1) into BC
C 64816,3 Load system variable Seed into HL
C 64819,1 Add these together
C 64820,1 Add together H and L in A...
C 64821,1 ...
C 64822,1 ...and load into L
C 64823,3 Place new HL back into system variable Seed
C 64826,1 Restore BC
C 64827,1 Restore HL
C 64828,1 Return
c 64829 Generate a Random Seed / Random Number Up To B
D 64829 Used by the routine at #R38024. Input:  B  Cap value Output: A  Random number
C 64829,3 Set new random seed and load A with a random number
C 64832,1 If random seed is greater than or equal to B...
C 64833,2 ...then loop back to #R64829
C 64835,1 Return
c 64836 Select Magic Knight's Room (Cheat / Debug Routine)
D 64836 Used by the routine at #R38205.
C 64836,1 Switch AF and AF'
C 64837,3 If Cheat Mode Enabled Flag is set (see trivia)...
C 64840,1 ...
C 64841,2 ...then skip ahead to #R64845
C 64843,1 Switch AF and AF'
C 64844,1 Return
C 64845,1 Remove return address from top of Stack
C 64846,3 Set parameters (for Cheat Routine Sound) and play
N 64849 This entry point is used by the routine at #R64878.
C 64849,2 Set BORDER to red...
C 64851,2 ...
C 64853,3 Capture keyboard or joystick input loading result into A
C 64856,2 If left pressed...
C 64858,2 ...then jump to #R64883 (decrease Magic Knight's current room index by 1, wrapping around to 51 if below zero)
C 64860,2 If right pressed...
C 64862,2 ...then jump to #R64906 (increase Magic Knight's current room index by 1, wrapping around to zero if above 51)
C 64864,2 If up pressed...
C 64866,2 ...then jump to #R64912 (increase Magic Knight's current room index by 8, wrapping around to zero if above 51)
C 64868,2 If down pressed...
C 64870,2 ...then jump to #R64919 (decrease Magic Knight's current room index by 8, wrapping around to 51 if below zero)
C 64872,2 If fire pressed...
C 64874,2 ...then jump to #R64926 (exit Cheat / Debug Mode)
C 64876,2 Loop back to #R64849
c 64878 Cheat / Debug Routine Draw Magic Knight's Current Room then Jump Back into Cheat Routine Main Loop
D 64878 Used by the routine at #R64883.
C 64878,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 64881,2 Jump back into Cheat Routine main loop
c 64883 Cheat / Debug Routine Decrease Magic Knight's Current Room Index By 1, Wrapping Around to 51 if Below Zero
D 64883 Used by the routine at #R64836.
C 64883,3 Load A with index of Magic Knight's current room...
C 64886,1 ...minus 1
N 64887 This entry point is used by the routines at #R64906, #R64912 and #R64919.
C 64887,1 If new room index is not less than zero...
C 64888,3 ...then skip ahead to #R64893
C 64891,2 Add 52 to new room index (wrap 0 to 51)
C 64893,2 If new room index is less than 52...
C 64895,2 ...then skip ahead to #R64901
C 64897,2 Subtract 52 from new room index (wrap 51 to 0)
C 64899,2 Loop back to #R64893
C 64901,3 Store Magic Knight's new room index
C 64904,2 Draw Magic Knight's current room then jump back into Cheat Routine Main Loop
c 64906 Cheat / Debug Routine Increase Magic Knight's Current Room Index By 1, Wrapping Around to Zero if Above 51
D 64906 Used by the routine at #R64836.
C 64906,3 Load A with index of Magic Knight's current room...
C 64909,1 ...plus 1
C 64910,2 Wrap new index if out of range, store and jump back to Cheat Routine Main Loop
c 64912 Cheat / Debug Routine Increase Magic Knight's Current Room Index By 8, Wrapping Around to Zero if Above 51
D 64912 Used by the routine at #R64836.
C 64912,3 Load A with index of Magic Knight's current room...
C 64915,2 ...plus 8
C 64917,2 Wrap new index if out of range, store and jump back to Cheat Routine Main Loop
c 64919 Cheat / Debug Routine Decrease Magic Knight's Current Room Index By 8, Wrapping Around to Zero if Below Zero
D 64919 Used by the routine at #R64836.
C 64919,3 Load A with index of Magic Knight's current room...
C 64922,2 ...minus 8
C 64924,2 Wrap new index if out of range, store and jump back to Cheat Routine Main Loop
c 64926 Cheat / Debug Routine Exit Cheat / Debug Mode
D 64926 Used by the routine at #R64836.
C 64926,1 Set BORDER to black...
C 64927,2 ...
C 64929,3 Play upward scale sound
C 64932,3 Jump to start of Main Game Loop
c 64935 Set Left and Right x-Coordinates (23408 and 23410) to Edges of Screen and Load A with Magic Knight's Current Strength
D 64935 Used by the routine at #R46463. Output: A  Magic Knight's current strength
C 64935,1 Set left-edge x-coordinate value at #R23408 to zero...
C 64936,3 ...
C 64939,2 Set right-edge x-coordinate value at #R23410 to 31...
C 64941,3 ...
C 64944,3 Load A with Magic Knight's current strength
C 64947,1 Return
b 64948 Unused
B 64948,192,8
b 65140 Table of Display File Addresses of Start of Each Pixel Row
D 65140 Addresses are in sequence, from top to bottom of display
W 65140,384,2
c 65524 Interrupt Routine (Jump 2)
D 65524 Note - original values here are 16, 16, 16. These are modified to the JP instruction by instructions between 37655 and 37663
@ 65524 ssub=JP 62178
B 65524,3,3 Jump to main part of interrupt routine at #R62178
b 65527 Unused
B 65527,8,8
c 65535 Interrupt Routine (Jump 1)
D 65535 Note - original value at 65535 is 0. This is modified to the JR instruction by instruction at 37652. The operand comes from next byte (location 0 in ROM.)
@ 65535 ssub=JR 65524
