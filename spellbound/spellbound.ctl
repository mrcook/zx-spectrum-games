> 23296 ; SkoolKit disassembly for Spellbound (48k)
> 23296 ;
> 23296 ; Copyright (c) 2017 Philip M. Anderson (this disassembly)
> 23296 ; Copyright (c) 1985 David Jones / Mastertronic (Spellbound)
> 23296 @start=26627
@ 23296 org
b 23296 Temporary Data Storage Area
D 23296 Used by the Draw Magic Knight routine at #R39224
W 23296,2,2 Display File address of bottom of Magic Knight's feet: predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up)
W 23298,2,2 Current position in Magic Knight graphic data (initially: Last byte of Magic Knight graphic frame (Magic Knight's current frame to draw [Magic Knight moving down / horizontally] or current frame to erase [Magic Knight moving up]))
B 23300,1,1 Temporary store for Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (pixel-within-character)
W 23301,2,2 Temporary store for Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters)
W 23303,2,2 Temporary store for current Display File address to draw to (Magic Knight drawing routine)
W 23305,2,2 Last byte of a Magic Knight graphic frame (frame to erase [Magic Knight moving down / horizontally] or frame to draw [Magic Knight moving up])
B 23307,1,1 Temporary store for Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (pixel-within-character)
W 23308,2,2 Temporary store for Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (characters)
W 23310,2,2 Display File address of leftmost part of Magic Knight at current pixel row, mid-drawing
W 23312,2,2 Temporary store for Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters)
B 23314,1,1 "Magic Knight changing character position to right" flag (Magic Knight moving down / horizontally) or "Magic Knight changing character position to left" flag (Magic Knight moving up)
B 23315,1,1 "Magic Knight changing character position to left" flag (Magic Knight moving down / horizontally) or "Magic Knight changing character position to right" flag (Magic Knight moving up)
B 23316,1,1 "Magic Knight is leaving his current character position and going left" flag
B 23317,1,1 "Magic Knight is leaving his current character position and going right" flag
B 23318,1,1 "Magic Knight is leaving his current character position" flag
B 23319,1,1 Temporary store for magnitude of Magic Knight's y-velocity
W 23320,2,2 Pointer to Display File address of start of pixel row at Magic Knight's feet: predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) in table at 26064
B 23322,1,1 Temporary store for Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (pixels)
B 23323,1,1 Temporary store for Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (pixels)
B 23324,1,1 Temporary store for Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) y-coordinate (pixels)
B 23325,1,1 Temporary store for Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) y-coordinate (pixels)
B 23326,1,1 Temporary store for Magic Knight's current frame to draw (Magic Knight moving down / horizontally) or current frame to erase (Magic Knight moving up)
B 23327,1,1 Temporary store for Magic Knight's current frame to erase (Magic Knight moving down / horizontally) or current frame to draw (Magic Knight moving up)
B 23328,1,1 Temporary store for Magic Knight's current frame to erase
B 23329,1,1 Temporary store for Magic Knight's current x-coordinate (pixels)
B 23330,1,1 Temporary store for Magic Knight's current y-coordinate (pixels)
B 23331,1,1 Temporary store for Magic Knight's predicted x-coordinate (pixels)
B 23332,1,1 Temporary store for Magic Knight's predicted y-coordinate (pixels)
B 23333,1,1 Temporary store for Magic Knight's predicted x-coordinate (characters)
B 23334,1,1 Temporary store for Magic Knight's predicted y-coordinate (characters)
B 23335,1,1 Temporary store for Magic Knight's predicted x-coordinate (pixel-within-character)
B 23336,1,1 Temporary store for Magic Knight's predicted y-coordinate (pixel-within-character)
B 23337,1,1 Temporary store for Magic Knight's attribute
B 23338,1,1 Temporary store for "Update Attributes at Magic Knight's Predicted Position" flag
b 23339 Unused
B 23339,38,8*4,6
b 23377 Gimbal-White-Out Safe Flag
D 23377 Controls whether or not the "GIMBAL IS NOT YET RELEASED..." warning window appears when a command is selected.
B 23377,1,1
b 23378 Score Progress Flags
D 23378 Bitwise flags which record Magic Knight's achievements, and are used in calculating percentage completion. Flags are initially reset, and each one is set when the corresponding action is performed.
B 23378,1,1
b 23379 Unused
B 23379,3,3
b 23382 Glowing Lift Control Panel Index
D 23382 Determines which light on the Lift control panel is glowing.
B 23382,1,1
b 23383 Table of Glowing Attribute File Addresses
D 23383 Up to ten WORDs can be stored here. Each entry is an address in Attribute File and represents a character block on the screen that is glowing (e.g. Lift control panel light, candle flames etc.)
W 23383,2,2 Glow 1
W 23385,2,2 Glow 2
W 23387,2,2 Glow 3
W 23389,2,2 Glow 4
W 23391,2,2 Glow 5
W 23393,2,2 Glow 6
W 23395,2,2 Glow 7
W 23397,2,2 Glow 8
W 23399,2,2 Glow 9
W 23401,2,2 Glow 10
b 23403 Unused
B 23403,1,1
b 23404 Time Data
D 23404 Data related to Magic Knight's time left, and also elapsed game time.
B 23404,1,1 Current Time Left - game hours (5 real-time minutes per game hour)
B 23405,1,1 Minute Counter (Time Elapsed since last "hour")
B 23406,1,1 Second Counter (Time Elapsed since last minute)
B 23407,1,1 1/50 Second Counter (Time Elapsed since last second)
b 23408 Compass Glow Update Flag (Locate Compass)
D 23408 If flag is reset (0), then the attribute of the illuminated Locate A Character Compass sector will be updated on next interrupt, if Magic Knight is locating. No update will take place if the flag is set (1).
B 23408,1,1
b 23409 Current INK Colour of Glowing Blocks
B 23409,1,1
b 23410 Temporary Store for Magic Knight's Movement Flags
D 23410 Bitwise flags which determine which direction(s) Magic Knight cannot currently move (i.e. set means can't move). Set when Magic Knight either:
B 23410,1,1
b 23411 Game progress flags (1)
D 23411 Bitwise flags which record some of Magic Knight's achievements. Flags are initially reset, and each one is set when the corresponding action is performed.
B 23411,1,1
b 23412 Visited Room Flags
D 23412 Fifty bytes, one for each room in the game. At the start of the game, these are all reset (i.e. zero). Each time Magic Knight enters a room for the first time, the flag corresponding to that room is set (to 1). These flags are used in calculating percentage completion.
B 23412,1,1 The Lift
B 23413,8,8 Roof
B 23421,8,8 4th Floor
B 23429,8,8 3rd Floor
B 23437,8,8 2nd Floor
B 23445,8,8 1st Floor
B 23453,8,8 Ground Floor
B 23461,1,1 Basement
b 23462 y- and x- coordinates of top-left corner of currently glowing Locate Compass sector
B 23462,2,2
b 23464 Indices of characters in current room
D 23464 Up to three characters. Data used by routine at #R35931
B 23464,3,3
b 23467 Game progress flags (2)
D 23467 Bitwise flags which record more of Magic Knight's achievements. Flags are initially reset, and each one is set when the corresponding action is performed.
B 23467,1,1
b 23468 Game progress flags (3)
D 23468 Bitwise flags which record more of Magic Knight's achievements. Flags are initially reset, and each one is set when the corresponding action is performed.
B 23468,1,1
b 23469 Brickwork Drawing Mode
D 23469 #TABLE(default,centre,:w) { =h Value | =h Meaning } { 0 | Draw two rows } { 1 | Draw one row only } { 2 | Draw one row then a blank row below } TABLE#
B 23469,1,1
b 23470 Magic Knight movement flags
D 23470 Bitwise flags which determine which direction(s) Magic Knight cannot currently move (i.e. set means can't move). The bits are as follows:
B 23470,1,1
b 23471 Position data for drawing Menu Hand Cursor
B 23471,1,1 Height available to hand cursor to move down (pixels)
B 23472,1,1 x-coordinate of left edge of current window (characters)
B 23473,1,1 y-coordinate of "finger" on hand-cursor (characters)
B 23474,1,1 Unused
B 23475,1,1 Current y-coordinate of hand cursor relative to its starting position (pixels)
b 23476 Brickwork Drawing Direction Flag
D 23476 Only bit 0 is used. If reset (0), then direction is horizontal (i.e. floors and ceilings). If set (1), then direction is vertical (i.e. walls).
B 23476,1,1
b 23477 Attribute of interior of current window, i.e. background / foreground colours of contents
B 23477,1,1
b 23478 Magic Knight's predicted position, used in routine at 27666
B 23478,1,1 Predicted x-coordinate
B 23479,1,1 Predicted y-coordinate
b 23480 Unused
B 23480,1,1
b 23481 Store for current position in Terrain Interaction Parameter Table at 24539
W 23481,2,2
b 23483 Store for current Terrain Interaction Parameter value
B 23483,1,1
b 23484 Unused
B 23484,1,1
b 23485 Store for currently active keyboard press / joystick action
B 23485,1,1
b 23486 Unused
B 23486,1,1
b 23487 Attribute File address of Virtual Text Cursor
W 23487,2,2
b 23489 Position data for drawing windows
B 23489,1,1 Initial y-coordinate of top of hand cursor relative to current window (characters)
B 23490,1,1 x-coordinate of left of interior area of window (characters) (i.e. value at 23493 plus 1)
B 23491,1,1 y-coordinate of top of hand cursor (pixels)
B 23492,1,1 y-coordinate of bottom of window (including frame) (pixels)
B 23493,1,1 x-coordinate of left edge (of frame, or of interior) of current window to draw (characters)
B 23494,1,1 y-coordinate of top edge (of frame, or of interior) of current window to draw (characters)
B 23495,1,1 x-coordinate of right edge (of frame, or of interior) of current window to draw (characters)
B 23496,1,1 y-coordinate of bottom edge (of frame, or of interior) of current window to draw (characters)
b 23497 Storage space for ASCII string converted from numeric value
B 23497,5,5
b 23502 Unused
B 23502,1,1
b 23503 Pointer to index of next character (in summoning sequence table at 33565) who will be sent home upon being summoned
W 23503,2,2
b 23505 "Animate Magic Knight's Puff of Smoke Appearance on Next Room Redraw" Flag
D 23505 Determines whether or not Magic Knight appears in a puff of smoke the next time a room is (re)drawn. Only bit 0 is used.
B 23505,1,1
b 23506 Characters Sent Home Counter (Score)
D 23506 For each character sent home, Magic Knight gains a 1% contribution to Percentage Completion. This value counts the number of characters sent home for this purpose.
B 23506,1,1
b 23507 Unused
B 23507,120,8*5,5,8*9,3
b 23627 VARS system variable
@ 23627 ssub=DEFW 23849
W 23627,2,2
B 23629,6,6
b 23635 PROG system variable
@ 23635 ssub=DEFW 23755
W 23635,2,2
B 23637,38,8*4,6
b 23675 Interrupt Routine Flags
D 23675 Bitwise flags which determine which things occur upon executing the Interrupt Routine. The bits are as follows:
B 23675,59,1,8*7,2
b 23734 System Data and Stack space
B 23734,21,8*2,5
b 23755 Basic loader
D 23755 The basic loader is set to auto-run from line 10, which loads a block of code of length 6940 bytes to address 16384. This code block contains the loading screen and additional loading code at #R23296. This loading code is called, before we jump to the start-up routine at 26627. The listing has a disguised address for the start-up routine, 26624, which would take us to the "HELLO HACKER" routine.
B 23755,3,3 10 CLEAR 26060: POKE 23693,71: BORDER 0: CLS : LOAD ""CODE 16384: RANDOMIZE USR 23296: RANDOMIZE USR 26624{26627}
B 23758,781,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,3*2,5,8*85,5
b 24539 Terrain Interaction Data Table
D 24539 Table comprised of 32 x 20 entries, each one corresponding to a character block in Magic Knight's current room. Each entry is a set of bitwise flags with the following effects:
B 24539,640,32
b 25179 Unused
B 25179,128,8
b 25307 Slot number (1-3) currently occupied by characters in their current rooms
B 25307,1,1 Gimbal the Wizard
B 25308,1,1 Thor
B 25309,1,1 Florin the Dwarf
B 25310,1,1 Orik the Cleric
B 25311,1,1 Samsun the Strong
B 25312,1,1 Elrand Halfelven
B 25313,1,1 Lady Rosmar
B 25314,1,1 The Banshee
b 25315 Characters' Current Stats
D 25315 Nine groups of eight bytes, one group per character (including Magic Knight). The values are:
B 25315,8,8 Magic Knight
B 25323,8,8 Gimbal the Wizard
B 25331,8,8 Thor
B 25339,8,8 Florin the Dwarf
B 25347,8,8 Orik the Cleric
B 25355,8,8 Samsun the Strong
B 25363,8,8 Elrand Halfelven
B 25371,8,8 Lady Rosmar
B 25379,8,8 The Banshee
b 25387 Magic Knight's Current Data
B 25387,1,1 x-coordinate (pixels)
B 25388,1,1 y-coordinate (pixels)
B 25389,1,1 Frame Number (frame to erase)
B 25390,1,1 Frame Number (frame to draw)
B 25391,1,1 x velocity (pixels) [walking / jumping sideways, usually 2 for right and 254 / -2 for left]
B 25392,1,1 y velocity (pixels) [jumping]
B 25393,1,1 Attribute
B 25394,1,1 Update Attributes Mask (zeroes BRIGHT and INK component of existing attribute so that Magic Knight's INK and BRIGHT bits override) (used by routine at #R39989)
b 25395 Characters' Current Inventories
D 25395 Nine groups of five bytes, one group per character (including Magic Knight). Each of the five bytes per group represents an inventory slot for that character. A value of zero indicates that the slot is empty. Non-zero values correspond to indices of objects (e.g. 3 = Miolnir)
B 25395,5,5 Magic Knight
B 25400,5,5 Gimbal the Wizard
B 25405,5,5 Thor
B 25410,5,5 Florin the Dwarf
B 25415,5,5 Orik the Cleric
B 25420,5,5 Samsun the Strong
B 25425,5,5 Elrand Halfelven
B 25430,5,5 Lady Rosmar
B 25435,5,5 The Banshee
b 25440 Characters' Current Positions
D 25440 Eight groups of three bytes, one group per character (excluding Magic Knight). The values are:
B 25440,3,3 Gimbal the Wizard
B 25443,3,3 Thor
B 25446,3,3 Florin the Dwarf
B 25449,3,3 Orik the Cleric
B 25452,3,3 Samsun the Strong
B 25455,3,3 Elrand Halfelven
B 25458,3,3 Lady Rosmar
B 25461,3,3 The Banshee
b 25464 Objects' Current Positions
D 25464 Fifty groups of three bytes, one group per object. The values are:
B 25464,3,3 "Nothing at All"!
B 25467,3,3 Ancient Scroll
B 25470,3,3 Book of Shadows
B 25473,3,3 Miolnir
B 25476,3,3 Axe
B 25479,3,3 Sticky Bun
B 25482,3,3 Crystal Ball
B 25485,3,3 Wand of Command
B 25488,3,3 Javelin
B 25491,3,3 Cannon Ball
B 25494,3,3 Tube of Glue
B 25497,3,3 Broken Talisman
B 25500,3,3 Magic Talisman
B 25503,3,3 Runestone
B 25506,3,3 Broken Glass
B 25509,3,3 Book of Runes
B 25512,3,3 Glowing Bottle
B 25515,3,3 Gold Goblet
B 25518,3,3 Fast Blow Fuse
B 25521,3,3 Red Herring
B 25524,3,3 Brick
B 25527,3,3 Green Crystal
B 25530,3,3 Blue Crystal
B 25533,3,3 Red Crystal
B 25536,3,3 Willow Rod
B 25539,3,3 Lump of Brickwork
B 25542,3,3 Bottle of Liquid
B 25545,3,3 Four Leaf Clover
B 25548,3,3 Loaf of Elf-Bread
B 25551,3,3 Platform
B 25554,3,3 Gold Bar
B 25557,3,3 Pewter Tankard
B 25560,3,3 White Gold Ring
B 25563,3,3 Engraved Candle
B 25566,3,3 Strange Liquid
B 25569,3,3 Mirror
B 25572,3,3 Pocket Laser
B 25575,3,3 Prism
B 25578,3,3 Elf-Horn
B 25581,3,3 Saxophone
B 25584,3,3 Trumpet
B 25587,3,3 Instruction Book
B 25590,3,3 Key
B 25593,3,3 Advert
B 25596,3,3 Lump of Brickwork
B 25599,3,3 Empty Bottle
B 25602,3,3 Power-Pong Plant
B 25605,3,3 Shield
B 25608,3,3 Teleport Key
B 25611,3,3 Teleport Pad
b 25614 Movement Data Table for Starfield Routine
D 25614 Fifty groups of nine bytes, one group per star. The values are:
B 25614,450,9
b 26064 Display File addresses of start of each pixel row
D 26064 Addresses are in sequence, from top to bottom of display
W 26064,384,2
b 26448 Unused
B 26448,176,8
c 26624 Fake Start of Game Code
C 26624,3 Jump to "Hello Hacker" routine
c 26627 Initialise Interrupt Code then Jump to Input Device Selection Menu
C 26627,3 Redundant instructions (part of a previous debug routine?)...
C 26630,1 ...
C 26631,1 ...
C 26632,1 ...
C 26633,1 Set A to zero (see trivia)
C 26634,3 Disable debug / cheat mode...
C 26637,3 ...
C 26640,3 ...
C 26643,1 Disable interrupts
C 26644,1 Reset "Update Game Time and Locate Arrow Glow" flag, "Disable In-Game Glow" flag and "Characters Can't Move" flag...
C 26645,3 ...
C 26648,2 Put JR instruction at 65535 for jumping to interrupt routine...
C 26650,3 ...
C 26653,3 Load first three bytes of interrupt routine with 195, 69 and 214...
C 26656,2 ...this corresponds to the instruction "JP 54853"
C 26658,1 ...
C 26659,2 ...
C 26661,1 ...
C 26662,2 ...
N 26664 Here we load I with 57, indicating an interrupt vector table at 57*256=14592. This is an area of ROM filled with FF values. This causes a jump to $FFFF (i.e. 65535) on each interrupt.
C 26664,2 Load I register with 57 (for interrupt routine)...
C 26666,2 ...
C 26668,1 Enable interrupts
C 26669,4 Set CAPS LOCK flag (i.e. set CAPS LOCK to ON)
c 26673 Display input device selection menu
D 26673 Used by the routine at #R35101.
C 26673,1 Wait for interrupt
C 26674,3 Set Stack Pointer to 24539
C 26677,1 Reset "Update Game Time and Locate Arrow Glow" flag, "Disable In-Game Glow" flag and "Characters Can't Move" flag...
C 26678,3 ...
C 26681,2 Set interrupt mode 2
C 26683,3 Clear areas of memory and initialise some variables
C 26686,3 Draw Input Selection Menu
C 26689,2 Default to "A: Keyboard"
C 26691,3 Change input device (A=Keyboard, B=Kempston, C=Fuller, etc.) depending on which key was pressed (forced to keyboard as A is 65)
C 26694,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 26697,2 If "F" pressed (INSTRUCTIONS)...
C 26699,2 ...then display instructions
C 26701,2 If "G" pressed (PLAY GAME)...
C 26703,3 ...then start a new game
C 26706,2 If key lower than "A" pressed...
C 26708,2 ...then loop back to #R26689
C 26710,2 If key higher than "F" pressed...
C 26712,2 ...then loop back to #R26689
C 26714,1 Switch registers
C 26715,3 Load current input device selection into A'
C 26718,1 Switch registers
C 26719,3 Store new input device selection
C 26722,1 Switch registers
C 26723,2 Subtract 65 to get index of previous input device selection
C 26725,2 Add 12, to give y-coordinate of previous selection in menu
C 26727,1 Load this y-coordinate into B
C 26728,2 Load 1 (x-coordinate) into C
C 26730,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 26733,2 Set attribute at this position to 71 (white INK, black PAPER, BRIGHT) to "undo" selection glow
C 26735,2 Loop back to #R26689
C 26737,3 Display instructions
C 26740,2 Loop back to #R26689
c 26742 Return to Basic
D 26742 Used by the routine at #R35420.
C 26742,2 Set Interrupt Mode 1
C 26744,1 Enable interrupts
C 26745,1 Return to BASIC...
b 26746 Data block at 26746
B 26746,1,1 ...
c 26747 Draw Input Device Selection Menu
D 26747 Used by the routine at #R26673.
C 26747,3 Clear Display File
C 26750,2 Load system variable ATTR T with 70 (yellow INK, black PAPER, BRIGHT)...
C 26752,3 ...
C 26755,3 Flood Attribute File with current value in system variable ATTR T
C 26758,2 Draw window 5 ("SPELLBOUND A TRUE GRAPHIC ADVENTURE BY DAVID JONES COPYRIGHT 1985" window)...
C 26760,3 ...at top of screen above input selection menu window...
C 26763,3 ...and print the text within...
C 26766,3 ...
C 26769,2 Display the input selection menu window...
C 26771,3 ...
C 26774,3 ...and print the text within...
C 26777,3 ...
C 26780,3 Set parameters for and play downward scale sound
C 26783,1 Clear last pressed key...
C 26784,3 ...
C 26787,1 Return
c 26788 Display Instructions Windows
D 26788 Used by the routines at #R26673 and #R32258.
C 26788,2 Draw window 7...
C 26790,3 ...
C 26793,3 Point HL to location of text for 1st instructions window
C 26796,3 Print text
C 26799,3 Wait for a key-press then beep
C 26802,2 Draw window 8...
C 26804,3 ...
C 26807,3 Point HL to location of text for 2nd instructions window
C 26810,3 Print text
C 26813,3 Wait for a key-press then beep
C 26816,2 Draw window 9...
C 26818,3 ...
C 26821,3 Point HL to location of text for 3rd instructions window
C 26824,3 Print text
C 26827,3 Wait for a key-press then beep
C 26830,1 Set last key-press to null...
C 26831,3 ...
C 26834,1 Return
c 26835 Wait for a Key-Press then Beep
D 26835 Used by the routines at #R26788 and #R35420. Output: A  ASCII index of key pressed
C 26835,1 Set last key-press to null...
C 26836,3 ...
C 26839,1 Wait for interrupt
C 26840,3 Load last pressed key into A
C 26843,1 If A is zero (i.e. no key pressed)...
C 26844,2 ...then loop back to #R26840
C 26846,3 Make a beep
C 26849,3 Wait for keyboard to be released
C 26852,1 Return
c 26853 Clear Areas of Memory and Initialise Some Variables
D 26853 Used by the routine at #R26673.
C 26853,2 Set system variable BORDERCR to 7...
C 26855,3 ...setting border to black and attribute of bottom of screen to white INK, black PAPER
C 26858,1 Set "pressed key" to null...
C 26859,3 ...
C 26862,2 Reset speaker
C 26864,3 Write 255 zeroes to 23296 onwards, overwriting custom loader...
C 26867,3 ...
C 26870,3 ...
C 26873,1 ...
C 26874,2 ...
C 26876,3 Write 8 zeroes from 25307 onwards resetting characters' current slot numbers
C 26879,3 ...
C 26882,3 ...
C 26885,1 ...
C 26886,2 ...
C 26888,3 Write 20 zeroes from 23383 onwards resetting table of attribute memory addresses that are glowing
C 26891,3 ...
C 26894,3 ...
C 26897,1 ...
C 26898,2 ...
C 26900,1 Set HL to zero...
C 26901,1 ...
C 26902,3 Reset Magic Knight's action flags
C 26905,1 Return
c 26906 Initialise Data and Start a New Game
D 26906 Used by the routine at #R26673.
C 26906,3 Load input device selection into A
C 26909,3 Change input device based on A
C 26912,3 Clear Display File
C 26915,2 Flood Attribute File with value 70 (yellow INK, black PAPER, BRIGHT)...
C 26917,3 ...
C 26920,3 ...
C 26923,3 Copy initial characters' stats into "current" (modifiable) slots...
C 26926,3 ...
C 26929,3 ...
C 26932,2 ...
C 26934,3 Copy initial Magic Knight properties (position) into "current" (modifiable) slots...
C 26937,3 ...
C 26940,2 ...
C 26942,3 Copy initial characters' inventories into "current" (modifiable) slots...
C 26945,3 ...
C 26948,2 ...
C 26950,3 Copy initial characters' positions into "current" (modifiable) slots...
C 26953,3 ...
C 26956,2 ...
C 26958,3 Copy initial objects' locations into "current" (modifiable) slots (at #R25464)...
C 26961,3 ...
C 26964,2 ...
C 26966,1 Set A to zero
C 26967,3 Set UDG system variable to zero...
C 26970,3 ...
C 26973,3 Set Lift control panel to display R as current floor
C 26976,3 Set left-hand exit of the left-most Roof Garden room to lead to the Lift
C 26979,1 Set right-hand exit of The Lift to lead to the Roof Garden (i.e. move the Lift to the roof)...
C 26980,3 ...
C 26983,2 Set left-hand exits of left-most rooms on all other floors to be inaccessible (i.e. Lift isn't there!)...
C 26985,3 ...4th Floor...
C 26988,3 ...3rd Floor...
C 26991,3 ...2nd Floor...
C 26994,3 ...1st Floor...
C 26997,3 ...Ground Floor...
C 27000,3 ...and Basement
C 27003,3 Set Magic Knight's available action flags
C 27006,1 Set A to zero
C 27007,3 Set last key pressed to NULL (system variable)
C 27010,3 Set unused memory address to zero
C 27013,3 Set number of 1/50 seconds elapsed to zero
C 27016,1 Load HL with zero...
C 27017,1 ...
C 27018,3 Set number of minutes elapsed to zero
C 27021,3 Set system variable FRAMES to zero
C 27024,3 ...
C 27027,1 Set A to 1
C 27028,3 Set Gimbal's current slot to 1
C 27031,3 Set temporary store for Magic Knight's frame number to zero
C 27034,3 Set "Animate Magic Knight's Puff of Smoke Appearance on Next Room Redraw" flag
C 27037,2 Set number of hours left...
C 27039,3 ...
C 27042,2 Set Gimbal's current attribute to 127 (white INK, white PAPER, BRIGHT)...
C 27044,3 ...
C 27047,2 Set read-text property of the Crystal Ball to 139...
C 27049,3 ...
C 27052,3 Point HL at Thor's current position
C 27055,3 Load B with 6 and C with 255
C 27058,1 Increase C (current character index)
C 27059,1 Store B and C
C 27060,1 Copy C into B
C 27061,1 Load character's screen number into C
C 27062,1 Store HL
C 27063,3 Assign a slot in room C to character B and get x- and y-coordinates in BC
C 27066,1 Restore HL
C 27067,1 Advance HL to character's x-coordinate
C 27068,1 Update current x-coordinate based upon position of assigned slot
C 27069,1 Advance HL to character's y-coordinate
C 27070,1 Update current y-coordinate based upon position of assigned slot
C 27071,1 Advance HL to start of next character's data
C 27072,1 Restore B and C
C 27073,2 Repeat loop for next character
C 27075,2 Assign an attribute of 69 (cyan INK, black PAPER, BRIGHT) to...
C 27077,3 ...Broken Glass...
C 27080,3 ...and Teleport Pad
C 27083,2 Set room layout pointer for "The Wall" to 53289...
C 27085,2 ...
C 27087,3 ...
C 27090,3 Point HL at start of character summoning sequence to return them home
C 27093,3 Store this at 23503
C 27096,2 Make right-wall in Secret Tunnel Entrance height 9 (i.e. full height of room)...
C 27098,3 ...
C 27101,2 Set character whose turn it is to move to Banshee (8)...
C 27103,3 ...
C 27106,2 Load A with 21 (The Start Room)
C 27108,3 Move Magic Knight into room A, initialise room-specific data and draw room
C 27111,4 Set "Update Game Time and Locate Arrow Glow" flag
C 27115,3 Jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
c 27118 Print "HELLO HACKER" Text, Animate Starfield and Reset Spectrum upon Key-Press
D 27118 Used by the routine at #R26624.
C 27118,3 Set Stack Pointer to 24529
C 27121,1 Set A to zero
C 27122,2 Reset speaker state and border to black
C 27124,3 Fill Display File with zeroes (i.e. black out the screen)
C 27127,3 ...
C 27130,3 ...
C 27133,1 ...
C 27134,2 ...
C 27136,2 Load A with 71
C 27138,3 Set system variable ATTR P (permanent colours) to 71 (White INK, black PAPER, BRIGHT)
C 27141,3 Set system variable ATTR T to 71 (White INK, black PAPER, BRIGHT)
C 27144,3 Flood Attribute File with value 71 (white INK, black PAPER, BRIGHT)
C 27147,1 ...
C 27148,2 ...
C 27150,3 Set Display File address to print text
C 27153,3 ...
C 27156,3 Point HL at "HELLO HACKER" text
C 27159,3 Print text to screen
C 27162,3 Animate starfield until a key is pressed
C 27165,3 Reset the Spectrum
c 27168 Redraw Magic Knight's Current Room and Return to Main Game Loop
D 27168 Used by the routines at #R30222 and #R35420.
C 27168,3 Load A with Magic Knight's current room
C 27171,3 Move Magic Knight into room A, initialise room-specific data and draw room
C 27174,2 Jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
c 27176 Main Game Loop - Process Keyboard Input and Move Magic Knight, Enter Menus or Execute Other Command
D 27176 Used by the routine at #R35420.
C 27176,3 Update Magic Knight's current frame based on x-coordinate
C 27179,3 Store frame number at 65528...
C 27182,3 ...and in Magic Knight's current data
C 27185,1 Set A to zero (Magic Knight) and...
C 27186,3 ...draw Magic Knight (erase old frame and draw new frame)
N 27189 This entry point is used by the routines at #R26906, #R27168, #R31636, #R32035, #R32194, #R32258, #R32390, #R32655, #R33312, #R33593 and #R33663.
C 27189,3 Run checks and updates (Magic Knight's current room and room-specific routines)
C 27192,3 Handle Magic Knight's fall
C 27195,2 Reset bit 7 in A to select the keyboard half-row SPACE - B
C 27197,2 Read the keyboard
C 27199,1 Reset Carry Flag if SPACE pressed, else set it
C 27200,2 SPACE was not pressed, so skip ahead to #R27213
C 27202,2 Reset bit 0 in A to select the keyboard half-row SHIFT - V
C 27204,2 Read the keyboard
C 27206,1 Reset Carry Flag if SHIFT pressed, else set it
C 27207,3 Point HL at "BREAK KEY PRESSED" text
C 27210,3 If SHIFT was pressed (i.e. SHIFT-SPACE, or BREAK) jump to "Game over" window routine and exit
C 27213,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 27216,3 Capture keyboard/joystick input into A
C 27219,2 If "left" pressed then...
C 27221,3 Skip ahead to Move Left Subroutine
C 27224,2 If "right" pressed then...
C 27226,3 Skip ahead to Move Right Subroutine
C 27229,2 If "up" pressed then...
C 27231,3 Skip ahead to Jump Subroutine
C 27234,2 Check for "down" pressed
c 27236 Routine fragment at 27236
D 27236 This is the conditional jump to the cheat / debug routine which is overwritten by the instructions between #R26633 and #R26640.
N 27236 The following three bytes are set to zero (NOP) by the instructions between 26633 and 26640. This disables the conditional jump to the cheat / debug routine at #R35420 (see trivia).
C 27236,3 Jump to Select Magic Knight's Room (Cheat / Debug Routine - see trivia)
C 27239,2 If "fire" pressed then...
C 27241,3 Skip ahead to #R27301
C 27244,3 Set Magic Knight's current frame to stored value...
C 27247,3 ...
C 27250,1 Set A to zero (Magic Knight) and...
C 27251,3 ...draw Magic Knight (erase old frame and draw new frame)
C 27254,3 Load index of last pressed key into A
C 27257,1 If last key pressed is null (i.e. key NOT pressed)...
C 27258,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 27261,3 Point HL at string of keyboard shortcuts for commands
C 27264,1 Load index of key pressed into B
C 27265,2 Set C (index of command shortcut) to zero initially
C 27267,1 Load command shortcut from table at 41811 into A
C 27268,1 If A is zero (i.e. we have reached the last command shortcut in the table)...
C 27269,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 27272,1 If key pressed matches current command shortcut...
C 27273,3 ...then skip ahead to #R27280
C 27276,1 Increase C to advance to next command shortcut to test
C 27277,1 Advance pointer to next shortcut
C 27278,2 Loop back to #R27267 for next shortcut
C 27280,3 Wait for keyboard to be released
C 27283,1 Load double the index of command shortcut chosen into BC...
C 27284,1 ...
C 27285,2 ...
C 27287,1 ...
C 27288,3 Point HL at table of routine start addresses for Magic Knight's main menu commands
C 27291,1 Add double index of this command's entry as offset, so HL now points at address in table of chosen command
C 27292,1 Load address into HL...
C 27293,1 ...
C 27294,1 ...
C 27295,1 ...
C 27296,1 Set last pressed key to null...
C 27297,3 ...
C 27300,1 Execute the command, then return to game
N 27301 Fire pressed
C 27301,3 Wait for fire button / key to be released
C 27304,3 Display and handle main in-game menu, execute selected command and return to game
N 27307 Left pressed
C 27307,3 If "Magic Knight Can't Move Left" flag is set...
C 27310,2 ...
C 27312,3 ...then loop back to start of keyboard check routine
C 27315,3 Load HL with 34824 (left-facing version of update Magic Knight's current frame routine)
C 27318,1 Switch AF and AF'
C 27319,2 Set Magic Knight's x-velocity to minus 2...
C 27321,3 ...
C 27324,3 Prepare to set Magic Knight's x-velocity to minus 2
C 27327,3 Set instruction at 34821 to jump to 34824 (left-facing version of update Magic Knight's current frame routine)
C 27330,1 Switch AF and AF' (A now holds pressed controls bitmap)
C 27331,2 If "up" was also pressed...
C 27333,2 ...then skip ahead to #R27378 (jumping subroutine)
C 27335,1 Set Magic Knight's current y-velocity to zero...
C 27336,3 ...
C 27339,3 Update Magic Knight's current frame based on x-coordinate...
C 27342,3 ...
C 27345,3 Store frame number at 65528
C 27348,1 Set A to zero (Magic Knight) and...
C 27349,3 ...draw Magic Knight (erase old frame and draw new frame)
C 27352,3 Handle Magic Knight's fall
C 27355,3 Loop back for next key / control press
N 27358 Right pressed
C 27358,3 If "Magic Knight Can't Move Right" flag is set...
C 27361,2 ...
C 27363,3 ...then loop back to start of keyboard check routine
C 27366,3 Load HL with 34838 (right-facing version of update Magic Knight's current frame routine)
C 27369,1 Switch AF and AF'
C 27370,2 Jump to #R27321, setting Magic Knight's x-velocity to 2...
C 27372,2 ...
N 27374 Up pressed
C 27374,1 Prepare to set Magic Knight's x-velocity to zero...
C 27375,3 ...
C 27378,3 Point HL at start of Magic Knight's y-velocities sequence table
C 27381,3 Store current position in Magic Knight's y-velocities sequence table at 41857
C 27384,3 Load Magic Knight's current y-coordinate into A
C 27387,2 If y-coordinate is less than 8...
C 27389,3 ...then jump to #R27468 (exit loop as Magic Knight can't get any higher!)
C 27392,3 Load HL with current position in Magic Knight's y-velocities sequence table
C 27395,1 Load the current y-velocity in the sequence into A
C 27396,2 Negate (as Magic Knight is jumping upwards)
C 27398,1 If A is zero...
C 27399,2 ...jump to #R27468 (exit loop as we have reached the end of the sequence)
C 27401,3 Load A into Magic Knight's y-velocity
N 27404 The operand of the instruction at #R27404 represents the x-velocity value stored previously. This is modified by the instruction at #R27375.
C 27404,2 Set Magic Knight's x-velocity...
C 27406,3 ...
C 27409,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 27412,3 Load Magic Knight's x-velocity into B...
C 27415,1 ...
C 27416,3 Load Magic Knight movement flags into A
C 27419,1 Check:
C 27420,2 If x-velocity is -2 (left), and Magic Knight can't move left...
C 27422,3 ...then jump ahead to #R27480
C 27425,2 If x-velocity is -2 (left), and Magic Knight can't move left or right...
C 27427,3 ...then jump ahead to #R27480
C 27430,2 If x-velocity is +2 (right), and Magic Knight can't move left or right...
C 27432,3 ...then jump ahead to #R27480
C 27435,1 If x-velocity is +2 (right), and Magic Knight can't move right...
C 27436,3 ...then jump ahead to #R27480
C 27439,3 Update Magic Knight's current frame based on x-coordinate...
C 27442,3 ...
C 27445,3 Store frame number at 65528
C 27448,3 Kill Magic Knight's jump if he cannot vertically pass through a block above him
C 27451,1 Store AF
C 27452,1 Set A to zero (Magic Knight) and...
C 27453,3 ...draw Magic Knight (erase old frame and draw new frame)
C 27456,1 Restore AF
C 27457,2 If Magic Knight's jump was impeded by a block above him then jump to #R27468
C 27459,3 Run checks and updates (Magic Knight's current room and room-specific routines)
C 27462,3 Load HL with current position in Magic Knight's y-velocities sequence table at #R41857
C 27465,1 Advance to next y-velocity in the sequence
C 27466,2 Loop back to #R27381
C 27468,3 Update Magic Knight's current frame based on x-coordinate
C 27471,3 Store frame number at #R65528
C 27474,3 Handle Magic Knight's fall, preserving x-velocity
C 27477,3 Loop back to start of keyboard check routine
C 27480,1 Set Magic Knight's x-velocity to zero...
C 27481,3 ...
C 27484,3 Prepare to set Magic Knight's x-velocity to zero
C 27487,3 Jump back to #R27439
c 27490 Handle Magic Knight's Fall, Preserving x-Velocity
D 27490 Used by the routine at #R27176.
C 27490,3 Load Magic Knight's stored x-velocity
C 27493,2 Handle Magic Knight's fall
c 27495 Handle Magic Knight's Falls
D 27495 Used by the routine at #R27176.
C 27495,1 Set A to zero
N 27496 This entry point is used by the routine at #R27490.
C 27496,3 Prepare to set Magic Knight's x-velocity to A
C 27499,3 Point HL at end of table of y-velocities sequence for jumping and falling
C 27502,3 Store current position at 41857
C 27505,3 If Magic Knight's movement flags are unset...
C 27508,1 ...
C 27509,2 ...then skip ahead to #R27515
C 27511,1 Prepare to set Magic Knight's x-velocity to zero...
C 27512,3 ...
C 27515,3 Load current position in y-velocities table into HL
C 27518,1 Load current y-velocity from table into A
C 27519,2 If velocity is 7...
C 27521,2 ...then skip ahead to #R28527
C 27523,1 Step pointer back one byte in y-velocities table
C 27524,3 Store pointer
C 27527,3 Load last y-velocity read from table into Magic Knight's y-velocity
N 27530 The operand of the instruction at #R27530 represents the x-velocity value stored previously. This is modified by the instructions at #R27496, #R27512 and #R27660.
C 27530,2 Set Magic Knight's x-velocity...
C 27532,3 ...
C 27535,3 Load Magic Knight's current x-coordinate into A
C 27538,2 Add 4 to x-coordinate
C 27540,3 Divide x-coordinate by eight, rounding down to nearest integer
C 27543,1 Load result (Magic Knight's x-coordinate in characters) into C, setting B to zero...
C 27544,2 ...
C 27546,3 Load Magic Knight's current y-coordinate into A
C 27549,2 If y-coordinate is a multiple of eight...
C 27551,2 ...then skip ahead to #R27555
C 27553,2 Set B to 8, as we need to look one character block lower due to Magic Knight spanning five, rather than four, characters [y-coordinate is not a multiple of eight]
C 27555,3 Load Magic Knight's current y-coordinate into A
C 27558,1 Add B to current y-coordinate (i.e. y-coordinate of highest full character block spanned by Magic Knight)
C 27559,2 Add 32 (as Magic Knight is 32 pixels high, so now y-coordinate of highest full character block not occupied by Magic Knight)
C 27561,1 Divide result by 8, removing remainder...
C 27562,1 ...
C 27563,1 ...
C 27564,2 ...
C 27566,1 Load result (y-coordinate in characters) into B
C 27567,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B (block that Magic Knight is "falling through")
C 27570,2 If block cannot be passed vertically (i.e. Magic Knight has landed)...
C 27572,3 ...then skip ahead to #R27627
C 27575,1 Advance to next block right (as Magic Knight is two character blocks wide) in Terrain Interaction Table
C 27576,2 If block cannot be passed vertically (i.e. Magic Knight has landed)...
C 27578,3 ...then skip ahead to #R27627
C 27581,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 27584,3 Load Magic Knight's x-velocity into B...
C 27587,1 ...
C 27588,3 Load Magic Knight's movement flags into A
C 27591,1 Check:
C 27592,2 If x-velocity is -2 (left), and Magic Knight can't move left...
C 27594,3 ...then jump ahead to #R27656
C 27597,2 If x-velocity is -2 (left), and Magic Knight can't move left or right...
C 27599,3 ...then jump ahead to #R27656
C 27602,2 If x-velocity is +2 (right), and Magic Knight can't move left or right...
C 27604,3 ...then jump ahead to #R27656
C 27607,1 If x-velocity is +2 (right), and Magic Knight can't move right...
C 27608,3 ...then jump ahead to #R27656
C 27611,3 Update Magic Knight's current frame based on x-coordinate
C 27614,3 Store frame number at 65528
C 27617,1 Set A to zero (index for Magic Knight) and...
C 27618,3 ...draw Magic Knight (erase old frame and draw new frame)
C 27621,3 Run checks and updates (Magic Knight's current room and room-specific routines)
C 27624,3 Loop back to #R27505
C 27627,3 Load Magic Knight's current y-coordinate into A (e.g. 105)
C 27630,2 Retain only pixel-within-two-characters component (e.g. 9 pixels down the pair of character blocks)
C 27632,2 Negate (i.e. -9 pixels)
C 27634,2 Retain only pixel-within-two-characters component (e.g. 7 pixels up the pair of character blocks, or 7 pixels down to the ground)
C 27636,3 Set Magic Knight's y-velocity so that it will take his feet to the ground
C 27639,3 Set Magic Knight's frame number to match stored value...
C 27642,3 ...
C 27645,1 Set A to zero (Magic Knight) and...
C 27646,3 ...draw Magic Knight (erase old frame and draw new frame)
C 27649,3 Set Magic Knight's x- and y-velocities to zero...
C 27652,3 ...
C 27655,1 Return (Magic Knight has landed)
C 27656,1 Set Magic Knight's x-velocity to zero...
C 27657,3 ...
C 27660,3 Prepare to set Magic Knight's x-velocity to zero
C 27663,3 Jump back to #R27611
c 27666 Kill Magic Knight's x-Velocity if he Cannot Horizontally Pass Through a Block Beside Him
D 27666 Used by the routines at #R27176 and #R27495.
C 27666,3 Load B with Magic Knight's "temporary store" movement flags...
C 27669,1 ...
C 27670,3 Load Magic Knight's x-coordinate into A
C 27673,2 If x-coordinate is less than 5...
C 27675,3 ...then jump ahead to #R27685
C 27678,2 If x-coordinate is greater than 229...
C 27680,3 ...then jump ahead to #R27685
C 27683,2 Set B (Magic Knight's Temporary Store Movement Flags) to zero (i.e. Magic Knight is not at the outer edges of his current room, so can move both left and right)
C 27685,1 Load Magic Knight's Temporary Store Movement Flags into A
C 27686,3 Set Magic Knight's movement flags
C 27689,3 Load Magic Knight's y-coordinate into A
C 27692,1 Copy into B
C 27693,3 Add Magic Knight's y-velocity to y-coordinate in A...
C 27696,1 ...
C 27697,3 Store this new (predicted) y-coordinate at 23479
C 27700,2 Set C to 4 (as Magic Knight is normally four characters tall)
C 27702,2 If predicted y-coordinate is divisible by eight...
C 27704,2 ...then skip ahead to #R27707...
C 27706,1 ...else Magic Knight must be airborne and at non-integer y-coordinate, and so spans five character blocks rather than four
C 27707,1 Load A with number of vertical characters spanned by Magic Knight...
C 27708,3 ...and update instructions at 27739...
C 27711,3 ...and 27780 with this value
C 27714,3 Load Magic Knight's current x-coordinate into C...
C 27717,1 ...
C 27718,3 Add Magic Knight's x-velocity to x-coordinate in A...
C 27721,1 ...
C 27722,3 Store this new (predicted) x-coordinate at 23478
C 27725,3 Divide predicted x-coordinate by eight, rounding down to nearest integer...
C 27728,1 ...and load into C
C 27729,3 Load predicted y-coordinate into A...
C 27732,3 ...divide it by eight, rounding down to nearest integer...
C 27735,3 ...store back at 23479...
C 27738,1 ...and load into B
N 27739 The operand of the instruction at #R27739 represents the number of character blocks to check. This is modified by the instruction at #R27708.
C 27739,2 Load number of characters (vertically) to check for impassibility
C 27741,1 Store remaining number of character blocks spanned by Magic Knight vertically to check
C 27742,1 Store predicted x- and y-coordinates (characters)
C 27743,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B
C 27746,1 Restore predicted x- and y-coordinates (characters)
C 27747,2 If bit 5 of terrain data is set (i.e. Magic Knight cannot pass block horizontally)...
C 27749,2 ...then jump ahead to #R27758
C 27751,1 Advance check to next character down
C 27752,1 Restore remaining number of character blocks spanned by Magic Knight vertically to check
C 27753,1 Decrease count of remaining character blocks by one
C 27754,2 Loop back to 27741 to check next block down
C 27756,2 Skip over setting Magic Knight's Cannot Move Left Flag as there are no obstructions to the left
C 27758,1 Restore AF
C 27759,3 Set "Magic Knight Cannot Move Left" flag...
C 27762,2 ...
C 27764,3 ...
C 27767,3 Load Magic Knight's predicted x-coordinate (pixels) into A...
C 27770,2 ...and add 15
C 27772,3 Divide A by eight, rounding down to nearest integer...
C 27775,1 ...and load into C
C 27776,3 Load Magic Knight's predicted y-coordinate (characters) into B...
C 27779,1 ...
N 27780 The operand of the instruction at #R27780 represents the number of character blocks to check. This is modified by the instruction at #R27711.
C 27780,2 Load number of characters (vertically) to check for impassibility
C 27782,1 Store AF (remaining number of vertical characters to check for impassibility)
C 27783,1 Store BC (predicted y- and x-coordinates in characters)
C 27784,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B
C 27787,1 Restore predicted coordinates
C 27788,2 If bit 5 is set (i.e. Magic Knight cannot pass block horizontally)...
C 27790,2 ...jump ahead to #R27799
C 27792,1 Increase y-coordinate by one character
C 27793,1 Restore AF
C 27794,1 Decrease number of remaining blocks to check
C 27795,2 If number of remaining blocks to check is not zero then loop back to #R27782
C 27797,2 Exit routine
C 27799,1 Restore AF
C 27800,3 Set "Magic Knight Cannot Move Right" flag...
C 27803,2 ...
C 27805,3 ...
C 27808,1 Return
c 27809 Kill Magic Knight's Jump if he Cannot Vertically Pass Through a Block Above Him
D 27809 Used by the routine at #R27176. Output: A  0 (if Magic Knight's jump was not impeded) or 1 (if the jump was impeded)
C 27809,3 Load Magic Knight's current y-coordinate into B...
C 27812,1 ...
C 27813,3 Load A with Magic Knight's y-velocity
C 27816,1 Add y-velocity to y-coordinate in A
C 27817,3 Divide A by eight, rounding down to nearest integer
C 27820,1 Load Magic Knight's y-coordinate (characters) into B
C 27821,3 Load Magic Knight's current x-coordinate into A
C 27824,2 Add 4 to x-coordinate (to get point roughly quarter of the way through Magic Knight's total width)
C 27826,3 Divide A by eight, rounding down to nearest integer
C 27829,1 Load Magic Knight's current x-coordinate (characters) into C
C 27830,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B
C 27833,2 If bit 7 of Magic Knight's current position's terrain data (block is impassable vertically) is set then...
C 27835,2 ...kill Magic Knight's y-velocity and exit routine
C 27837,1 Advance to next character block along in Terrain Interaction Data
C 27838,2 If bit 7 of this position's terrain data (block is impassable vertically) is set then...
C 27840,2 ...kill Magic Knight's y-velocity and exit routine
C 27842,1 Advance y-coordinate by one character (to get point roughly three quarters of the way through Magic Knight's total width)
C 27843,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B
C 27846,2 If bit 7 of this position's terrain data (block is impassable vertically) is set then...
C 27848,2 ...kill Magic Knight's y-velocity and exit routine
C 27850,1 Advance to next character block along in Terrain Interaction Data
C 27851,2 If bit 7 of this position's terrain data (block is impassable vertically) is set then...
C 27853,2 ...kill Magic Knight's y-velocity and exit routine
C 27855,1 Set A to zero, as jump was not impeded
C 27856,1 Return
C 27857,1 Set Magic Knight's y-velocity to zero...
C 27858,3 ...
C 27861,2 Set A to one
C 27863,1 Reset zero flag
C 27864,1 Return
c 27865 Move Magic Knight into Room A, Initialise Room-Specific Data and Draw Room
D 27865 Used by the routines at #R26906, #R27168 and #R29514. Input:  A  Room index
C 27865,3 Update Magic Knight's current room to be room index passed to this routine in A
C 27868,3 Decrease Magic Knight's current strength by one...
C 27871,1 ...
C 27872,3 ...
C 27875,1 Set zero flag if strength is zero
C 27876,3 Point HL to "YOU DIED OF EXHAUSTION" text...
C 27879,3 ...and if strength is zero, jump to "Game over" window routine and exit
C 27882,2 Load 32 into "frame number" property of...
C 27884,3 ...odd ball 1...
C 27887,3 ...odd ball 2...
C 27890,3 ...odd ball 3...
C 27893,3 ...and odd ball 4
C 27896,3 Indent "SPELLBOUND" text in bottom window to indicate Magic Knight's current floor
C 27899,3 Flag Magic Knight's current room as visited for scoring purposes...
C 27902,1 ...
C 27903,2 ...
C 27905,3 ...
C 27908,1 ...
C 27909,2 ...
C 27911,2 Set system variable BORDCR to 7...
C 27913,3 ...
C 27916,1 Set A to zero
C 27917,2 Set border to black and reset speaker state
C 27919,2 Set current Terrain Interaction Parameter to "impassable horizontally", "impassable vertically" and "preserve attribute"...
C 27921,3 ...
C 27924,2 Set system variable ATTR T to 71 (white INK, black PAPER, BRIGHT)...
C 27926,3 ...
C 27929,3 Load game progress flags into A
C 27932,1 Set A to 2 if Armouris Photonicus has been cast, else set A to zero...
C 27933,2 ...
C 27935,2 ...add A to 69 (attribute value for cyan INK, black PAPER, BRIGHT, i.e. Magic Knight's initial attribute)
C 27937,3 Load this value into Magic Knight's current attribute slot
C 27940,1 Set brickwork direction flag to zero (horizontal mode for floor and ceiling)...
C 27941,3 ...
C 27944,3 Point HL at start of Terrain Interaction Data...
C 27947,3 ...and set 640 bytes from there onwards to 0, clearing data...
C 27950,3 ...
C 27953,1 ...
C 27954,2 ...
C 27956,3 Clear table of glowing Attribute File addresses...
C 27959,3 ...
C 27962,3 ...
C 27965,1 ...
C 27966,2 ...
C 27968,3 Set Magic Knight's current frame to erase to zero (frame 0 is blank graphic data) so Magic Knight is drawn but not erased
C 27971,3 Set Magic Knight's frame number to zero
C 27974,3 Set "Display File address to print character to" to beginning of Display File...
C 27977,3 ...
C 27980,3 Point attribute cursor to beginning of Attribute File...
C 27983,3 ...
C 27986,3 Set Terrain Interaction Table Cursor to point to start of Terrain Interaction Table...
C 27989,3 ...
C 27992,3 Load Magic Knight's current room into A...
C 27995,1 ...and double the value (as room entries are 2 bytes wide)
C 27996,2 Load into DE...
C 27998,1 ...
C 27999,3 ...and add to position of start of table of room data addresses...
C 28002,1 ...into HL
C 28003,1 Read address of room data for this room into HL...
C 28004,1 ...
C 28005,1 ...
C 28006,1 ...
N 28007 Room data is read here
C 28007,1 Load byte from room data into A
C 28008,1 If data is a zero...
C 28009,3 ...then draw bottom in-game window + room name and animate entry (Puff of Smoke) of a character if required and return
C 28012,2 If data is less than 160...
C 28014,3 ...then skip ahead to #R28038
C 28017,1 Store HL (pointer to current position in current room data)
C 28018,2 Subtract 230 from current data
C 28020,1 Double the remaining value...
C 28021,1 ...and load into DE...
C 28022,2 ...
C 28024,3 Point HL at table of addresses of room feature drawing routines
C 28027,1 Add doubled index value as offset to pointer to table of room feature drawing routine addresses
C 28028,1 Load room feature drawing address into HL...
C 28029,1 ...
C 28030,1 ...
C 28031,1 ...
C 28032,1 Transfer room feature drawing address into IX...
C 28033,2 ...
C 28035,1 Restore HL (pointer to current position in current room data)
C 28036,2 Jump to room feature drawing routine address
N 28038 Data is less than 160
C 28038,1 Copy byte of room data into B (repeat counter for drawing brickwork / architecture)
C 28039,1 Advance pointer to current room data by one byte
C 28040,1 Load next byte of room data into A...
C 28041,1 ...and copy into C
C 28042,1 If this value is zero...
C 28043,2 ...then skip ahead to #R28050
C 28045,1 Advance HL by one byte
C 28046,1 Load data into system variable ATTR T...
C 28047,3 ...
C 28050,1 Copy C into A
C 28051,3 Draw a 2-by-2 block of brickwork, depending upon brickwork drawing mode, with architecture style A
C 28054,2 Loop back to draw next block of brickwork if counter is not zero
N 28056 This entry point is used by the routines at #R28064, #R29396 and #R29414.
C 28056,1 Set brickwork drawing mode to two rows...
C 28057,3 ...
N 28060 This entry point is used by the routines at #R28651, #R28659, #R28667, #R28675, #R28683, #R28747, #R28841, #R28882, #R28960, #R29032, #R29089, #R29150, #R29184, #R29205, #R29225, #R29291, #R29356 and #R29375.
C 28060,1 Advance room data pointer by one byte...
C 28061,3 ...and repeat routine for this new data
c 28064 Set Brickwork Direction Mode to Vertical and Reset Pointers to Beginning of Display
C 28064,1 Store HL (pointer to current position in current room data)
C 28065,2 Set brickwork direction flag to 1 (vertical mode for walls)...
C 28067,3 ...
C 28070,3 Point HL to start of Display File
C 28073,3 Load HL into "memory location to start printing character" in character printing routine
C 28076,3 Point HL to start of Attribute File
C 28079,3 Update virtual text cursor (attribute) position to 0, 0
C 28082,3 Set Terrain Interaction Table Cursor to point to start of Terrain Interaction Data...
C 28085,3 ...
C 28088,1 Restore HL (pointer to current position in current room data)
C 28089,3 Return to room drawing routine, setting brickwork drawing mode to two rows (so walls don't have holes in them!)
c 28092 Draw Bottom in-Game Window + Room Name and Animate Entry (Puff of Smoke) of a Character if Required
D 28092 Used by the routine at #R27865. Output: A  Magic Knight's current room
C 28092,3 Print Magic Knight's current room name to top of screen
C 28095,2 Prepare to draw window 15 (window at bottom of screen)
C 28097,1 Wait for interrupt
C 28098,3 Draw window 15
C 28101,3 Point HL to "SPELLBOUND COPYRIGHT..." text (shown in window at bottom of in-game screen when Magic Knight is not carrying the Mirror)
C 28104,1 Store HL
C 28105,2 Load A with object index of 35 (Mirror)
C 28107,3 Set Zero Flag if Magic Knight is carrying the Mirror
C 28110,1 Restore HL
C 28111,2 If Magic Knight is not carrying the Mirror, then skip to #R28116
C 28113,3 Point to " * STRENGTH *  1  2  3  4  5" text
C 28116,3 Print text at HL to screen
C 28119,3 Draw health bar at bottom of screen
C 28122,3 Draw objects in Magic Knight's inventory to bottom of screen if he is carrying mirror
C 28125,3 Set Magic Knight's action flags and prepare to execute room-specific routine for his current room
C 28128,3 Set Terrain Interaction Data for all objects in Magic Knight's current room
C 28131,3 Draw lift doors if Magic Knight is at Lift entrance on a different floor to the Lift
C 28134,1 Set Magic Knight's current frame to erase to zero (frame 0 is blank graphic data) so Magic Knight is drawn but not erased...
C 28135,3 ...
C 28138,3 Update Magic Knight's current frame based on x-coordinate
C 28141,3 Store frame number at 65528
C 28144,3 Set Magic Knight's current frame
C 28147,1 Set A to zero (Magic Knight) and...
C 28148,3 ...draw Magic Knight (erase old frame and draw new frame)
C 28151,3 Draw all characters in current room and animate arrival of any new character
C 28154,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 28156,3 ...
C 28159,4 Reset "Disable In-Game Glow" flag
C 28163,4 Reset "Characters Can't Move" flag
C 28167,3 If "Animate Magic Knight's Puff of Smoke Appearance on Next Room Redraw" flag is reset...
C 28170,1 ...
C 28171,2 ...then jump ahead to #R28264
C 28173,3 Load Magic Knight's current frame number into A
C 28176,1 Store AF (A = Magic Knight's current frame number)
C 28177,1 Set Magic Knight's current frame number to zero...
C 28178,3 ...
C 28181,3 ...draw Magic Knight (erase old frame and draw new frame)
C 28184,3 Load Magic Knight's current attribute into system variable ATTR T...
C 28187,3 ...
C 28190,3 Load Magic Knight's current x-coordinate into A
C 28193,1 Divide x-coordinate by eight, rounding down to nearest integer...
C 28194,1 ...
C 28195,1 ...
C 28196,2 ...
C 28198,1 Copy x-coordinate (characters) into C
C 28199,3 Load Magic Knight's current y-coordinate into A
C 28202,1 Divide y-coordinate by eight, rounding down to nearest integer...
C 28203,1 ...
C 28204,1 ...
C 28205,2 ...
C 28207,1 Copy y-coordinate (characters) into B
C 28208,2 Load E with 63 (index of Puff of Smoke frame 1)
C 28210,1 Store DE (E = index of current Puff of Smoke animation frame)
C 28211,1 Store BC (Magic Knight's x- and y-coordinates in characters)
C 28212,1 Copy index of first Puff of Smoke animation frame into A
C 28213,3 Draw Puff of Smoke frame 1 in XOR mode
C 28216,1 Restore BC (Magic Knight's x- and y-coordinates in characters)
C 28217,1 Restore DE (E = index of current Puff of Smoke animation frame)
C 28218,2 Load D with 5 (as there are five frames of the Puff of Smoke animation to draw)
C 28220,1 Wait for interrupts (delay between frames)...
C 28221,1 ...
C 28222,1 ...
C 28223,1 ...
C 28224,1 ...
C 28225,1 ...
C 28226,1 Store DE (D = count of frames to draw, E = graphic lookup index)
C 28227,1 Store BC (Magic Knight's x- and y-coordinates in characters)
C 28228,1 Copy E into A (index of current frame of Puff of Smoke animation)
C 28229,3 Redraw current frame of Puff of Smoke animation in XOR mode, erasing it
C 28232,1 Restore BC (Magic Knight's x- and y-coordinates in characters)
C 28233,1 Restore DE (D = count of frames to draw, E = graphic lookup index)
C 28234,1 Advance index E to next Puff of Smoke frame
C 28235,1 Store DE (D = count of frames to draw, E = graphic lookup index)
C 28236,1 Store BC (Magic Knight's x- and y-coordinates in characters)
C 28237,1 Copy E into A (index of current frame of Puff of Smoke animation)
C 28238,3 Draw current frame of Puff of Smoke animation in XOR mode
C 28241,1 Restore BC (Magic Knight's x- and y-coordinates in characters)
C 28242,1 Restore DE (D = count of frames to draw, E = graphic lookup index)
C 28243,1 Decrease D (count of frames to draw)
C 28244,2 Loop back to draw next frame if there are any remaining
C 28246,1 Wait for interrupts...
C 28247,1 ...
C 28248,1 ...
C 28249,1 ...
C 28250,1 ...
C 28251,1 ...
C 28252,1 Draw final frame in XOR mode, erasing it...
C 28253,3 ...
C 28256,1 Restore AF (A = Magic Knight's current frame number)
C 28257,3 Restore Magic Knight's current frame number
C 28260,1 Set A to zero (Magic Knight) and...
C 28261,3 ...draw Magic Knight (erase old frame and draw new frame)
C 28264,1 Reset "Animate Magic Knight's Puff of Smoke Appearance on Next Room Redraw" flag...
C 28265,3 ...
C 28268,3 Load Magic Knight's current room into A
C 28271,1 Return
c 28272 Print Magic Knight's Current Room Name to Top of Screen
D 28272 Used by the routine at #R28092.
C 28272,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 28274,3 ...
C 28277,3 Point HL to start of list of room names
C 28280,3 Load index of Magic Knight's current room into A...
C 28283,1 ...and transfer to B (countdown for search loop)
C 28284,1 Copy value back into A
C 28285,1 If B is zero then...
C 28286,2 ...skip ahead to #R28293
C 28288,3 Advance HL to start of next zero-terminated string
C 28291,2 Repeat until HL points to entry with index same as Magic Knight's current room
C 28293,1 Get string length data...
C 28294,1 ...
C 28295,1 ...and exit if string is zero-length
C 28296,1 Move to first character
C 28297,1 Store HL (points to Magic Knight's current room name text data)
C 28298,2 Add 8 to length (to get total length including **   and   **)
C 28300,1 Store length in B
C 28301,2 Subtract string length from total screen width (32 characters)...
C 28303,1 ...
C 28304,1 ...and divide by two to obtain number of blank characters to leave before writing room name
C 28305,2 Ensure value is limited to range 0-31
C 28307,1 Load BC with number of blank characters to leave before printing start of string...
C 28308,2 ...
C 28310,3 ...and add it to 16384 (start of screen data)
C 28313,1 HL now points to first Display File byte to modify in printing room name
C 28314,3 Store this at 36488
C 28317,3 Load HL with pointer to **   text
C 28320,3 Print text at location HL to screen
C 28323,1 Restore HL (actual room name)
C 28324,3 Print text at location HL to screen
C 28327,3 Load HL with pointer to   ** text
C 28330,3 Print text at location HL to screen
C 28333,1 Return
b 28334 Text Data Used in Room Titles as Printed at Top of Screen
T 28334,4,4 Prefix to room name
T 28338,1,B1 End Marker
T 28339,4,4 Suffix to room name
T 28343,1,B1 End Marker
c 28344 Room Drawing Draw a 2-by-2 Block of Brickwork, then Move Cursor Right or Down, Depending Upon Wall Direction Flag
D 28344 Used by the routines at #R27865, #R29396 and #R29414. Input:  A  Architecture style index (e.g. A = C = 19, or 0)
C 28344,1 Switch BC, DE and HL with BC', DE' and HL'
C 28345,1 Load architecture style index into L
C 28346,1 If architecture style index is not zero...
C 28347,3 ...then jump ahead to #R28360
C 28350,3 If brickwork direction flag is zero (horizontal mode for floor and ceiling)...
C 28353,1 ...
C 28354,3 ...then skip ahead to #R28510 (blank out bitmap and set attribute to current value for 2-by-2 character block)
C 28357,3 Move location to print and Terrain Interaction Cursor down two character rows observing y-wrap, then return
C 28360,2 Load four times Architecture Style Index into HL, as entries are four bytes wide...
C 28362,1 ...
C 28363,1 ...
C 28364,1 ...
C 28365,1 ...
C 28366,3 Point DE at Architecture Styles Lookup Table
C 28369,1 Add HL (4 times Architecture Style Index) as offset to this, in HL (as each entry is 4 bytes wide)
C 28370,4 Load "memory location to start printing character" in character printing routine into DE...
C 28374,4 ...and store at 23296
C 28378,1 Load first architecture style element (top-left) into A
C 28379,3 Draw a single character block part of a wall, ceiling or floor
C 28382,4 Load "memory location to start printing character" in character printing routine into DE...
C 28386,1 Advance DE by one byte...
C 28387,4 ...and load into "memory location to start printing character"
C 28391,1 Advance HL to next architecture style element (top-right)
C 28392,1 Load next architecture style element into A
C 28393,3 Draw a single character block part of a wall, ceiling or floor
C 28396,1 Advance HL to next architecture style index (bottom-left)
C 28397,1 Switch HL and DE (HL now Display File address to print to and DE now pointer to architecture style)
C 28398,3 Advance this pointer down a character row (32 bytes from original stored value)...
C 28401,3 ...
C 28404,1 ...
C 28405,3 Load new position into "memory location to start printing character"
C 28408,1 Switch DE and HL back (HL now pointer to architecture style and DE now Display File address to print to)
C 28409,3 Load brickwork drawing mode into A
C 28412,2 If this is 1 [only draw one row of "bricks"]...
C 28414,2 ...then jump ahead to #R28441
C 28416,2 If it is not 2 [draw row of bricks and blank row beneath]...
C 28418,2 ...then jump ahead to #R28423...
C 28420,3 ...else point HL at first entry (blank, i.e. no brickwork)
C 28423,1 Load brickwork graphic index into A
C 28424,3 Draw a single character block part of a wall, ceiling or floor
C 28427,4 Load "memory location to start printing character" in character printing routine into DE...
C 28431,1 Advance DE by one byte...
C 28432,4 ...and load into "memory location to start printing character"
C 28436,1 Advance HL to next brickwork graphic index...
C 28437,1 ...and load into A
C 28438,3 Draw a single character block part of a wall, ceiling or floor
C 28441,3 Load previously stored "memory location to start printing character" into HL...
C 28444,3 ...and place back in character drawing routine
C 28447,3 Load stored, "current" Terrain Interaction Parameter into A
C 28450,3 Load current Terrain Interaction Table Cursor position into HL
C 28453,1 Set this and the following character blocks to have the current Terrain Interaction Flags...
C 28454,1 ...
C 28455,1 ...
C 28456,3 Load brickwork drawing mode into A
C 28459,1 If brickwork drawing mode is not zero (draw two rows)...
C 28460,3 ...then skip ahead to #R28471 (move location to print and Terrain Interaction Cursor down two character rows observing y-wrap, then return)
C 28463,1 Load last written Terrain Interaction Parameter back into A
C 28464,3 Advance Terrain Interaction Table Cursor by 31 bytes (to character below starting position)...
C 28467,1 ...
C 28468,1 Set this and the following character blocks to have the current Terrain Interaction Flags...
C 28469,1 ...
C 28470,1 ...
N 28471 Mode 1 or 2, Draw one row of bricks This entry point is used by the routine at #R28510.
C 28471,3 If brickwork direction flag is not zero (horizontal mode for floor and ceiling)...
C 28474,1 ...
C 28475,2 ...then skip ahead to #R28561 (move location to print and Terrain Interaction Cursor down two character rows with y-wrap, as in vertical mode)
C 28477,3 Advance Display File pointer by two characters
C 28480,3 Update current Terrain Interaction Table Cursor position onwards by two characters...
C 28483,1 ...
C 28484,1 ...
C 28485,3 ...
C 28488,3 Load LSB of "memory location to start printing character" into A
C 28491,2 If this is not a multiple of 32 (i.e. not at start of a pixel row)...
C 28493,2 ...then skip ahead to #R28508
C 28495,3 Move virtual text cursor down to start of next text row (as 2-by-2 blocks are 2 characters high so we need to move down another character)
C 28498,3 Update current Terrain Interaction Table Cursor position onwards by 32 characters (i.e. down one row)...
C 28501,3 ...
C 28504,1 ...
C 28505,3 ...
C 28508,1 Switch BC, DE and HL with BC', DE' and HL', restoring values as at input
C 28509,1 Return
c 28510 Blank Out Bitmap and Set Attribute to Current Value (ATTR T) for 2-by-2 Character Block
D 28510 Used by the routine at #R28344.
C 28510,3 Load HL with Display File address to draw character
C 28513,4 Load DE with Display File address to draw character
C 28517,1 Advance DE by one byte
C 28518,1 Set A to zero
C 28519,2 Load loop counter with 8
C 28521,1 Draw blank space to Display File addresses HL...
C 28522,1 ...and DE
C 28523,1 Advance HL and DE down one pixel row (by adding 256 to Display File address), drawing down from top...
C 28524,1 ...
C 28525,2 Repeat loop for remaining pixel rows
C 28527,1 Add 32 to HL and DE to move them both down by eight pixel rows...
C 28528,2 ...
C 28530,1 ...
C 28531,1 ...
C 28532,1 ...
C 28533,1 Set A to zero
C 28534,2 Load loop counter with 8
C 28536,1 Advance HL and DE up one pixel row (by subtracting 256 from Display File address), drawing up from bottom...
C 28537,1 ...
C 28538,1 Draw blank space to Display File addresses HL...
C 28539,1 ...and DE
C 28540,2 Repeat loop for remaining pixel rows
C 28542,3 Store and point HL at Attribute File address for character just printed
C 28545,3 Load system variable ATTR T into A...
C 28548,1 ...and set attribute of four character block just rendered to match this value...
C 28549,1 ...
C 28550,1 ...
C 28551,3 ...
C 28554,1 ...
C 28555,1 ...
C 28556,1 ...
C 28557,1 ...
C 28558,3 Move location to print and Terrain Interaction Cursor down two character rows observing y-wrap, then return
c 28561 Move Location to Print and Terrain Interaction Cursor Down Two Character Rows with y-Wrap
D 28561 Instructions from 28609 onwards can only be executed if, after moving down two character blocks, the next location to draw to is beneath the (two-character deep) floor, on the same character row as the "SPELLBOUND" text in the bottom window which shows either the copyright message if Magic Knight doesn't hold the mirror, or Magic Knight's strength and inventory if he does. Input:  HL  Points to Terrain Interaction Table data for bottom-right character block of 2-by-2 brickwork block just drawn
C 28561,3 Load HL with Display File address to draw character
C 28564,1 Clear all but least significant five bits (i.e. x-coordinate)...
C 28565,2 ...
C 28567,1 ...
C 28568,2 ...
C 28570,1 Store HL (x-coordinate to draw character)
C 28571,3 Move virtual text cursor to beginning of character row two rows below current position
C 28574,3 Load HL with Display File address to draw character (as just updated)
C 28577,1 Restore DE (new location to draw character, previously in HL)
C 28578,1 Add x-coordinate as offset to updated location to draw character
C 28579,3 Store the new location (now two characters below position upon entering this routine)
C 28582,3 Update current Terrain Interaction Table Cursor position onwards by 64 characters (i.e. down two rows)...
C 28585,3 ...
C 28588,1 ...
C 28589,3 ...
C 28592,3 Load HL with new Display File address to draw character
C 28595,1 If memory location to draw character is not in the bottom third of the display...
C 28596,2 ...
C 28598,2 ...
C 28600,2 ...then return
C 28602,1 If memory location to draw character is not in the fifth character row (any of the 8 pixel rows)...
C 28603,2 ...(which is the row two rows beneath the floor level, in line with "SPELLBOUND" text in bottom window)...
C 28605,2 ...
C 28607,2 ...then return
C 28609,2 Load 64 into MSB of Display File address to print character, wrapping from bottom of display back up to top...
C 28611,3 ...
C 28614,3 Increase LSB by two characters (moving right by two characters upon bottom-to-top wrap)...
C 28617,1 ...
C 28618,1 ...
C 28619,2 Cap value to maximum of 31 to ensure that new position is in top character row of display (i.e. y-coordinate = 0)...
C 28621,3 ...and store
C 28624,3 Point BC at Terrain Interaction Table
C 28627,1 Set A to zero (and clear carry flag)
C 28628,3 Load HL with Terrain Interaction Table Cursor
C 28631,2 Load HL with position of Terrain Interaction Table Cursor relative (i.e. offset) to beginning of the table
C 28633,1 Advance cursor x-coordinate offset by two character blocks...
C 28634,1 ...
C 28635,1 ...
C 28636,2 ...and cap value to maximum of 31 to ensure that new position is in top character row of display (i.e. y-coordinate = 0)...
C 28638,1 Place new x-coordinate in HL along with y-coordinate of zero...
C 28639,2 ...
C 28641,1 Add this new offset to start of Terrain Interaction Data
C 28642,3 Store the updated Terrain Interaction Table cursor
C 28645,1 Switch registers
C 28646,1 Return
c 28647 Room Drawing Prepare to Draw One Row of Bricks Only
C 28647,2 Prepare to draw one row of bricks only
C 28649,2 Set drawing mode and return to room drawing routine to process next data
c 28651 Room Drawing Prepare to Draw One Row of Bricks with Blank Row Beneath
C 28651,2 Prepare to draw one row of bricks, and one blank row beneath it
N 28653 This entry point is used by the routine at #R28647.
C 28653,3 Set the mode
C 28656,3 Return to room drawing routine and process next data
c 28659 Room Drawing Set Terrain Interaction Parameter to Preserve Attribute / impassable Vertically
C 28659,2 Set current Terrain Interaction Parameter to "preserve attribute" and "impassable vertically"...
C 28661,3 ...
C 28664,3 Return to room drawing routine and process next data
c 28667 Room Drawing Set Terrain Interaction Parameter to Preserve Attribute / impassable Vertically and Horizontally
C 28667,2 Set current Terrain Interaction Parameter to "impassable horizontally", "preserve attribute" and "impassable vertically"...
C 28669,3 ...
C 28672,3 Return to room drawing routine and process next data
c 28675 Room Drawing Set Terrain Interaction Parameter to Preserve Attribute
C 28675,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 28677,3 ...
C 28680,3 Return to room drawing routine and process next data
c 28683 Room Drawing Draw Right-Facing Wall-Candle
C 28683,3 Read two bytes AFTER HL position into BC (i.e. y- and x-coordinates respectively), advancing HL before both reads
C 28686,1 Store HL
C 28687,1 Store BC
C 28688,2 Load system variable ATTR T with 68 (green INK, black PAPER, BRIGHT)...
C 28690,3 ...
C 28693,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 28695,3 ...
C 28698,2 Draw right-facing wall-candle wall bracket plate...
C 28700,3 ...
C 28703,1 Restore BC
C 28704,1 Store BC
C 28705,1 Increase y-coordinate by three...
C 28706,1 ...
C 28707,1 ...
C 28708,2 Draw right-facing wall-candle wall bracket...
C 28710,3 ...
C 28713,1 Restore BC
C 28714,1 Store BC
C 28715,1 Decrease y-coordinate by one
C 28716,1 Increase x-coordinate by one
C 28717,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 28719,3 ...
C 28722,2 Draw wall-candle...
C 28724,3 ...
C 28727,1 Restore BC
C 28728,1 Decrease y-coordinate
C 28729,1 Increase x-coordinate
C 28730,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 28733,3 Add a glowing character block to the current room (left part of the flame)
C 28736,1 Advance HL to next character to the right (i.e. rest of flame)
C 28737,3 Add another glowing character block to the current room (right part of the flame)...
C 28740,3 ...
C 28743,1 Restore HL
C 28744,3 Return to room drawing routine and process next data
c 28747 Room Drawing Draw Left-Facing Wall-Candle
C 28747,3 Read two bytes AFTER HL position into BC (i.e. y- and x-coordinates respectively), advancing HL before both reads
C 28750,1 Store HL
C 28751,1 Store BC
C 28752,2 Load system variable ATTR T with 68 (green INK, black PAPER, BRIGHT)...
C 28754,3 ...
C 28757,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 28759,3 ...
C 28762,2 Draw left-facing wall-candle wall bracket plate...
C 28764,3 ...
C 28767,1 Restore BC
C 28768,1 Store BC
C 28769,1 Increase y-coordinate by three...
C 28770,1 ...
C 28771,1 ...
C 28772,1 Decrease x-coordinate by two
C 28773,1 ...
C 28774,2 Draw left-facing wall-candle wall bracket...
C 28776,3 ...
C 28779,1 Restore BC
C 28780,1 Store BC
C 28781,1 Decrease y-coordinate by one
C 28782,1 Decrease x-coordinate by two
C 28783,1 ...
C 28784,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 28786,3 ...
C 28789,2 Draw wall-candle...
C 28791,3 ...
C 28794,1 Restore BC
C 28795,1 Decrease y-coordinate
C 28796,1 Decrease x-coordinate
C 28797,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 28800,3 Add a glowing character block to the current room (should be left part of the flame, but is actually right part, i.e. a bug!)
C 28803,1 Advance HL to next character to the right (i.e. what should be rest of flame but is in fact empty space - bug!)
C 28804,3 Add another glowing character block to the current room (right part of the flame)...
C 28807,3 ...
C 28810,1 Restore HL
C 28811,3 Return to room drawing routine and process next data
c 28814 Add a Glowing Character Block to the Current Room
D 28814 Used by the routines at #R28683, #R28747, #R28841, #R29184 and #R29291. Input:  HL  Points to a memory address in Attribute File Output: IX  Points to entry in the table created on the last pass of this routine
C 28814,4 Point IX at table of Attribute File addresses of glowing characters in current room
C 28818,2 Move IX back two bytes...
C 28820,2 ...
C 28822,2 Advance IX by two bytes...
C 28824,2 ...
C 28826,3 If two bytes at IX are non-zero...
C 28829,3 ...
C 28832,2 ...then loop back to check next two bytes
C 28834,3 Store HL at first empty pair of bytes after 23383...
C 28837,3 ...
C 28840,1 Return
c 28841 Room Drawing Set Attributes, Including Glow, on Lift Control Panel
C 28841,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 28844,1 Store HL
C 28845,1 Store BC
C 28846,3 Load A with index of currently illuminated light on Lift control panel (showing current floor)
C 28849,1 To this, add y-coordinate...
C 28850,1 ...and place back into B
C 28851,1 Increase new y-coordinate by one
C 28852,1 Increase x-coordinate by one
C 28853,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 28856,3 Add a glowing character block to the current room for lift indicator panel
C 28859,1 Restore BC
C 28860,1 Increase x-coordinate by two...
C 28861,1 ...
C 28862,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 28865,3 Set DE to 31 (to advance current attribute cursor down one row and left one character)
C 28868,2 Set B to 7 to repeat loop 8 times
C 28870,1 Advance HL down one character and left one character (to point to next lift panel indicator, e.g. [R])...
C 28871,2 Set attribute of current lift panel light to 68 (green INK, black PAPER, BRIGHT)
C 28873,1 Advance to the right one character
C 28874,2 Set attribute of current lift panel light label (i.e. "R", "5", "4", "3", "2", "1", "G", or "B") to 70 (yellow INK, black PAPER, BRIGHT)
C 28876,2 Repeat for next indicator down
C 28878,1 Restore HL
C 28879,3 Return to room drawing routine and process next data
c 28882 Room Drawing Draw Picture in Frame (59748)
C 28882,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 28885,1 Store HL
C 28886,1 Store BC
C 28887,2 Load system variable ATTR T with 7 (white INK, black PAPER)...
C 28889,3 ...
C 28892,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 28894,3 ...
C 28897,2 Draw Picture in Frame (2) [graphic data at #R59748]...
C 28899,3 ...
C 28902,1 Restore BC
C 28903,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 28906,1 Transfer memory address of attribute cursor...
C 28907,2 ...into  IX
C 28909,4 Set attribute of sun in picture to 70 (yellow INK, black PAPER, BRIGHT) (34 bytes, or 1 character down and 2 characters right from top-left corner of picture)
C 28913,2 Set attribute to 67 (magenta INK, black PAPER, BRIGHT) for...
C 28915,3 ...magenta castle in picture (six characters, 3 x 2)...
C 28918,3 ...
C 28921,3 ...
C 28924,3 ...
C 28927,3 ...
C 28930,3 ...
C 28933,2 Set attribute to 70 (yellow INK, black PAPER, BRIGHT) for...
C 28935,3 ...sand / yellow land (7 characters, 7 x 1)...
C 28938,3 ...
C 28941,3 ...
C 28944,3 ...
C 28947,3 ...
C 28950,3 ...
C 28953,3 ...
C 28956,1 Restore HL
C 28957,3 Return to room drawing routine and process next data
c 28960 Room Drawing Draw Picture in Frame (59748) and Replace Picture with Alternative (60156)
C 28960,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 28963,1 Store HL
C 28964,1 Store BC
C 28965,2 Load system variable ATTR T with 6 (yellow INK, black PAPER)...
C 28967,3 ...
C 28970,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 28972,3 ...
C 28975,2 Draw Picture in Frame (2) [graphic data at #R59748]...
C 28977,3 ...
C 28980,1 Restore BC
C 28981,1 Store BC
C 28982,1 Increase y-coordinate by one
C 28983,1 Increase x-coordinate by one
C 28984,2 Load system variable ATTR T with 4 (green INK, black PAPER)...
C 28986,3 ...
C 28989,2 Draw Landscape from picture (2) [graphic data at #R60156]...
C 28991,3 ...
C 28994,1 Restore BC
C 28995,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 28998,1 Transfer memory address of attribute cursor...
C 28999,2 ...into  IX
C 29001,4 Set attribute of sun in picture to 70 (yellow INK, black PAPER, BRIGHT) (34 bytes, or 1 character down and 2 characters right from top-left corner of picture)
C 29005,2 Set attribute to 69 (cyan INK, black PAPER, BRIGHT) for...
C 29007,3 ...sea / ocean in picture (7 characters, 7 x 1)...
C 29010,3 ...
C 29013,3 ...
C 29016,3 ...
C 29019,3 ...
C 29022,3 ...
C 29025,3 ...
C 29028,1 Restore HL
C 29029,3 Return to room drawing routine and process next data
c 29032 Room Drawing Draw Picture in Frame (59548)
C 29032,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29035,1 Store HL
C 29036,1 Store BC
C 29037,2 Load system variable ATTR T with 7 (white INK, black PAPER)...
C 29039,3 ...
C 29042,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 29044,3 ...
C 29047,2 Draw Picture in Frame (1) [graphic data at #R59548]...
C 29049,3 ...
C 29052,1 Restore BC
C 29053,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 29056,1 Transfer memory address of attribute cursor...
C 29057,2 ...into  IX
C 29059,4 Set attribute of sun in picture to 70 (yellow INK, black PAPER, BRIGHT) (34 bytes, or 1 character down and 2 characters right from top-left corner of picture)
C 29063,2 Set attribute to 7 (white INK, black PAPER) for...
C 29065,3 ...mountain peak in picture (3 characters, 3 x 1)...
C 29068,3 ...
C 29071,3 ...
C 29074,2 Set attribute to 68 (green INK, black PAPER, BRIGHT) for...
C 29076,3 ...grassland in picture (3 characters, 3 x 1)...
C 29079,3 ...
C 29082,3 ...
C 29085,1 Restore HL
C 29086,3 Return to room drawing routine and process next data
c 29089 Room Drawing Draw Picture in Frame (59548) and Replace Picture with Alternative (60108)
C 29089,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29092,1 Store HL
C 29093,1 Store BC
C 29094,2 Load system variable ATTR T with 7 (white INK, black PAPER)...
C 29096,3 ...
C 29099,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 29101,3 ...
C 29104,2 Draw Picture in Frame (1) [graphic data at #R59548]...
C 29106,3 ...
C 29109,1 Restore BC
C 29110,1 Store BC
C 29111,1 Increase y-coordinate by 2...
C 29112,1 ...
C 29113,1 Increase x-coordinate by 1
C 29114,2 Load system variable ATTR T with 4 (green INK, black PAPER)...
C 29116,3 ...
C 29119,2 Draw Landscape 1 from picture [graphic data at #R60108]...
C 29121,3 ...
C 29124,1 Restore BC
C 29125,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 29128,1 Transfer memory address of attribute cursor...
C 29129,2 ...into  IX
C 29131,4 Set attribute of sun in picture to 70 (yellow INK, black PAPER, BRIGHT) (34 bytes, or 1 character down and 2 characters right from top-left corner of picture)
C 29135,2 Set attribute to 69 (cyan INK, black PAPER, BRIGHT) for...
C 29137,3 ...sea / ocean in picture (3 characters, 3 x 1)...
C 29140,3 ...
C 29143,3 ...
C 29146,1 Restore HL
C 29147,3 Return to room drawing routine and process next data
c 29150 Room Drawing Draw Goblet Picture or Character Portrait and Corresponding Picture Frame
D 29150 Draw Goblet Picture or Character Portrait and Corresponding Picture Frame Input:  B  y-coordinate of picture C x-coordinate of picture
C 29150,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29153,1 Read index of graphic to draw into D...
C 29154,1 ...
C 29155,1 Read attribute for this graphic into E...
C 29156,1 ...
C 29157,1 Store HL
C 29158,1 Store BC (x- and y-coordinates of top left)
C 29159,1 Store DE (index of graphic in graphic lookup table to draw in window is in D)
C 29160,3 Draw window frame for character portraits (2nd floor) and Goblet Picture in Florin's Room
C 29163,1 Restore DE
C 29164,1 Restore BC
C 29165,1 Increase y-coordinate
C 29166,1 Increase x-coordinate
C 29167,1 Load system variable ATTR T with attribute for graphic to be drawn...
C 29168,3 ...
C 29171,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 29173,3 ...
C 29176,1 Draw graphic (e.g. the Goblet in Florin's Room's picture, or a character for their portrait on 2nd Floor)...
C 29177,3 ...
C 29180,1 Restore HL
C 29181,3 Return to room drawing routine and process next data
c 29184 Room Drawing Read Data for and Display Glowing Blocks
C 29184,1 Read next parameter into A...
C 29185,1 ...
C 29186,2 If parameter is 244...
C 29188,3 ...then return to room drawing routine and process next data
C 29191,1 Move pointer back a byte as this was more data, not an end marker
C 29192,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29195,1 Store current position of pointer to room data
C 29196,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 29199,3 Add a glowing character block to the current room
C 29202,1 Restore pointer to HL
C 29203,2 Loop back for next data
c 29205 Room Drawing Read Data for and Paint Attributes
C 29205,1 Read next parameter into A...
C 29206,1 ...
C 29207,2 If parameter is 245...
C 29209,3 ...then return to room drawing routine and process next data
C 29212,1 Switch AF
C 29213,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29216,1 Store HL
C 29217,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 29220,1 Switch AF
C 29221,1 Paint attribute data at coordinates in BC
C 29222,1 Restore HL
C 29223,2 Jump back to start of this routine
c 29225 Room Drawing Draw Wall Axes
C 29225,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29228,1 Store HL
C 29229,1 Store BC
C 29230,2 Load system variable ATTR T with 70 (yellow INK, black PAPER, BRIGHT)...
C 29232,3 ...
C 29235,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 29237,3 ...
C 29240,2 Draw Wall Axes...
C 29242,3 ...
C 29245,1 Restore BC
C 29246,1 Increase y-coordinate by two...
C 29247,1 ...
C 29248,1 Increase x-coordinate by three...
C 29249,1 ...
C 29250,1 ...
C 29251,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 29254,2 Set attribute at this location to 69 (cyan INK, black PAPER, BRIGHT) for top of axe handles...
C 29256,1 ...
C 29257,1 Transfer memory address of attribute cursor...
C 29258,2 ...into  IX
C 29260,3 Set attribute of rest of handles to 69 (cyan INK, black PAPER, BRIGHT)...
C 29263,3 ...
C 29266,3 ...
C 29269,3 ...
C 29272,3 ...
C 29275,3 ...
C 29278,3 ...
C 29281,3 ...
C 29284,3 ...
C 29287,1 Restore HL
C 29288,3 Return to room drawing routine and process next data
c 29291 Room Drawing Draw Ceiling Candles
C 29291,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29294,1 Store HL
C 29295,1 Store BC
C 29296,2 Load system variable ATTR T with 7 (white INK, black PAPER)...
C 29298,3 ...
C 29301,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 29303,3 ...
C 29306,2 Draw ceiling candles...
C 29308,3 ...
C 29311,1 Restore BC
C 29312,1 Increase y-coordinate by two...
C 29313,1 ...
C 29314,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 29317,1 Store HL (memory address of attribute cursor)
C 29318,3 Add a glowing character block to the current room (left-hand candle)
C 29321,3 Advance Attribute File pointer down a row and to the right by two characters...
C 29324,1 ...
C 29325,3 Add a glowing character block to the current room (right-hand candle)
C 29328,2 Set attribute at this location to 70 (yellow INK, black PAPER, BRIGHT) (candles)...
C 29330,2 Restore memory address of attribute cursor to IX
C 29332,3 Set attribute of left-hand candle...
C 29335,3 ...
C 29338,3 ...and right-hand candle to 70 (yellow INK, black PAPER, BRIGHT)
C 29341,2 Set attribute at this location to 71 (white INK, black PAPER, BRIGHT) (base - 3 bytes, 3 x 1)...
C 29343,3 ...
C 29346,3 ...
C 29349,3 ...
C 29352,1 Restore HL
C 29353,3 Return to room drawing routine and process next data
c 29356 Room Drawing Point Bitmap Virtual Cursor and Terrain Interaction Cursor to Coordinates x=C, y=B
D 29356 Point Bitmap Virtual Cursor and Terrain Interaction Cursor to Coordinates x=C, y=B Input:  B  y-coordinate (characters) C  x-coordinate (characters)
C 29356,3 Read two bytes AFTER HL position into BC, advancing HL before both reads
C 29359,1 Store HL
C 29360,1 Store BC
C 29361,3 Move Virtual Bitmap Cursor to Display File address for coordinates x=C, y=B
C 29364,1 Restore BC
C 29365,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B
C 29368,3 ...and store this pointed-to location
C 29371,1 Restore HL
C 29372,3 Return to room drawing routine and process next data
c 29375 Room Drawing Draw a Graphic to Screen Reading Parameters from Room Layout Data
C 29375,3 Load x- and y-coordinates of graphic to draw into BC
C 29378,1 Advance HL to attribute data
C 29379,1 Load attribute data into system variable ATTR T...
C 29380,3 ...
C 29383,1 Advance HL to Terrain Interaction Parameter
C 29384,1 Read Terrain Interaction Parameter and store at #R23483...
C 29385,3 ...
C 29388,1 Advance HL to graphic lookup index data...
C 29389,1 ...and load this data into A
C 29390,3 Draw the graphic in OR mode
C 29393,3 Return to room drawing routine and process next data
c 29396 Room Drawing Read Sequence of Architecture Styles and Draw Appropriate 2-by-2 Blocks of Brickwork
C 29396,1 Read data into system variable ATTR T...
C 29397,1 ...
C 29398,3 ...
C 29401,1 Advance HL
C 29402,1 Read next data (architecture style)...
C 29403,2 ...and if this is 254...
C 29405,3 ...then return to room drawing routine, setting brickwork drawing mode to two rows
C 29408,3 Draw a 2-by-2 block of brickwork, depending upon brickwork drawing mode, with architecture style A
C 29411,3 Repeat loop for next data byte
c 29414 Room Drawing Read Sequence of Architecture Styles and Attributes and Draw Appropriate 2-by-2 Blocks of Brickwork
C 29414,1 Set system variable ATTR T to 0 (black INK, black PAPER)...
C 29415,3 ...
C 29418,1 Advance HL
C 29419,1 Read next data (architecture style)...
C 29420,2 ...and if this is 255...
C 29422,3 ...then return to room drawing routine, setting brickwork drawing mode to two rows
C 29425,1 Copy architecture style into C
C 29426,1 If this is zero...
C 29427,2 ...then skip ahead to #R29434 (i.e. draw a blank block)
C 29429,1 Advance HL
C 29430,1 Read next data...
C 29431,3 ...into system variable ATTR T
C 29434,1 Load architecture style back into A
C 29435,3 Draw a 2-by-2 block of brickwork, depending upon brickwork drawing mode, with architecture style A
C 29438,3 Repeat loop for next data byte
c 29441 Read Two Bytes After HL Position into C and B Respectively, Advancing HL Before Both Reads
D 29441 Used by the routines at #R28683, #R28747, #R28841, #R28882, #R28960, #R29032, #R29089, #R29150, #R29184, #R29205, #R29225, #R29291, #R29356 and #R29375. Input:  HL  Pointer to current position in data (before reads) Output: B Second byte AFTER input HL position C  First byte AFTER input HL position HL  Two bytes after input HL position
C 29441,1 Advance HL
C 29442,1 Load byte into C
C 29443,1 Advance HL
C 29444,1 Load byte into B
C 29445,1 Return
c 29446 Set Magic Knight's Action Flags and Prepare to Execute Room-Specific Routine for his Current Room
D 29446 Used by the routine at #R28092.
C 29446,3 Load double Magic Knight's current room index into BC...
C 29449,1 ...
C 29450,2 ...
C 29452,1 ...
C 29453,3 Add as offset to address of start of table of room-specific routine addresses and load this result into HL...
C 29456,1 ...
C 29457,1 Load WORD value at this address into HL...
C 29458,1 ...
C 29459,1 ...
C 29460,1 ...
C 29461,3 Update jump in routine at 29763 to execute room-specific routine
C 29464,3 Set Magic Knight's available action flags
C 29467,1 Return
c 29468 Check Whether Magic Knight is Moving into a New Room and React if so
D 29468 Used by the routine at #R29763.
C 29468,3 Load Magic Knight's current x-coordinate into A
C 29471,2 If less than 3...
C 29473,3 ...then skip to #R29514
C 29476,2 If 231 or more...
C 29478,3 ...then skip to #R29546
C 29481,1 Return
c 29482 Change Magic Knight's Current Room if Possible
D 29482 Used by the routines at #R29514 and #R29546. Input:  A  Magic Knight's new x-coordinate upon entering new room DE Exit that Magic Knight is leaving old room from; either 0 (left exit) or 1 (right exit) Output: F  Zero Flag set if Magic Knight can't leave his current room, reset otherwise
C 29482,1 Store new x-coordinate for later
C 29483,1 Set Magic Knight's Temporary Movement Flags to zero (new room, so Magic Knight can move both left and right)...
C 29484,3 ...
C 29487,3 Point HL to room connectivity data table
C 29490,3 Load Magic Knight's current room's index into A...
C 29493,1 ...double it...
C 29494,1 ...and load into BC...
C 29495,2 ...
C 29497,1 Add BC as offset to HL
C 29498,1 Point to left or right exit from current room, as determined by DE
C 29499,1 Load new room number into A...
C 29500,2 ...and if this is 255 (i.e. Magic Knight can't leave his current room)...
C 29502,2 ...set Zero Flag and exit routine...
C 29504,3 ...else update Magic Knight's current room to be this new room index
C 29507,1 Restore new x-coordinate to B...
C 29508,1 ...and load back into A
C 29509,1 Reset Zero Flag
C 29510,1 Return
C 29511,1 Restore AF to BC...
C 29512,1 ...and load A with contents of B to restore to what it was on entering this routine
C 29513,1 Return
c 29514 Move Magic Knight One Room to the Left if Possible
D 29514 Used by the routine at #R29468. Input:  A  (Entry at #R29530 only) Magic Knight's new x-coordinate
C 29514,3 Set DE to zero (dealing with current room's left exit)
C 29517,2 Load A with Magic Knight's new coordinate when he arrives in new room (230 is near right-hand side of room)
C 29519,3 Change Magic Knight's current room (if possible) based upon left exit of his current room
C 29522,2 If Magic Knight can't leave his current room then jump to #R29540
C 29524,3 Set instruction at #R34821 to jump to #R34824 (left-facing version of update Magic Knight's current frame routine)...
C 29527,3 ...
N 29530 This entry point is used by the routine at #R29546.
C 29530,3 Set Magic Knight's x-coordinate
C 29533,3 Load Magic Knight's current room into A
C 29536,3 Move Magic Knight into room A, initialise room-specific data and draw room
C 29539,1 Return
C 29540,2 Set Magic Knight's Temporary Movement Flags to 1 (Magic Knight can't move left because he can't leave his current room)...
C 29542,3 ...
C 29545,1 Return
c 29546 Move Magic Knight One Room to the Right if Possible
D 29546 Used by the routine at #R29468.
C 29546,3 Set instruction at 34821 to jump to 34838 (right-facing version of update Magic Knight's current frame routine)...
C 29549,3 ...
C 29552,3 Set DE to one (dealing with current room's right exit)
C 29555,2 Load A with Magic Knight's new coordinate when he arrives in new room (4 is near left-hand side of room)
C 29557,3 Change Magic Knight's current room (if possible) based upon right exit of his current room
C 29560,2 If Magic Knight's can't leave his current room then jump to #R29570
C 29562,3 Set instruction at #R34821 to jump to #R34824 (right-facing version of update Magic Knight's current frame routine)...
C 29565,3 ...
C 29568,2 Set Magic Knight's x-coordinate and new room, draw the room and return
C 29570,2 Set Magic Knight's Temporary Movement Flags to 2 (Magic Knight can't move right because he can't leave his current room)...
C 29572,3 ...
C 29575,1 Return
c 29576 Draw All Characters in Current Room and Animate Arrival of Any New Character
D 29576 Used by the routine at #R28092.
C 29576,2 Load ATTR T system variable with 71 (white INK, black PAPER, BRIGHT)
C 29578,3 ...
C 29581,2 Set current Terrain Interaction Parameter to "preserve attribute"...
C 29583,3 ...
C 29586,4 Point IX at Thor's entry in characters' current positions table
C 29590,3 Load B with 6 and C with 1
C 29593,3 If Banshee is not released...
C 29596,2 ...
C 29598,2 ...then skip ahead to #R29601...
C 29600,1 ...else increase B by one
C 29601,3 If Gimbal is not released...
C 29604,2 ...
C 29606,2 ...then skip ahead to #R29614...
C 29608,1 ...else increase B by one...
C 29609,1 ...decrease C...
C 29610,4 ...and point IX at Gimbal's entry in characters' current positions table
C 29614,3 Load A with Magic Knight's current room
C 29617,3 Compare current character's room with Magic Knight's...
C 29620,3 ...and if they're the same, draw the character to the screen
C 29623,1 Increase C by one
C 29624,2 Advance to entry for next character
C 29626,2 ...
C 29628,2 ...
C 29630,2 ...and repeat the loop for the next character
C 29632,4 Point IX at Thor's entry in characters' current positions table
C 29636,3 Load B with 6 (as there are initially 6 characters to consider) and C with 1
C 29639,3 If Banshee is not released...
C 29642,2 ...
C 29644,2 ...then skip ahead to #R29647...
C 29646,1 ...else increase B by one (Banshee)
C 29647,3 If Gimbal is not released...
C 29650,2 ...
C 29652,2 ...then skip ahead to #R29660...
C 29654,1 ...else increase B by one (Gimbal)...
C 29655,1 ...decrease C...
C 29656,4 ...and point IX at Gimbal's entry in characters' current positions table
C 29660,3 Load A with Magic Knight's current room
C 29663,4 If high bit of character's current room (pointed to by IX) is set...
C 29667,3 ...then animate puff of smoke then draw character in position
C 29670,1 Increase C by one
C 29671,2 Advance to room of next character
C 29673,2 ...
C 29675,2 ...
C 29677,2 ...and repeat the loop for the next character
C 29679,1 Return
c 29680 Load Character's Coordinates into BC and Graphic Lookup Index into A and Draw to Screen
D 29680 Used by the routines at #R29576 and #R29709. Input:  C  Index of character to draw IX  Pointer to position data for this character (3 bytes: Screen number, x-coordinate, y-coordinate)
C 29680,1 Store BC
C 29681,2 Store IX
C 29683,1 Store AF
C 29684,1 Copy index of current character into A...
C 29685,2 ...and add 69 to this (as the characters' entries in the graphics data lookup table start at entry number 69)
C 29687,1 Copy this index into C
C 29688,2 Skip to preparation routine below
c 29690 Load Object's coordinates into BC and Graphic Lookup Index into A and Draw to Screen
D 29690 Used by the routine at #R29709. Input:  C  Index (in graphics lookup data table at #R42642) of object to draw IX Pointer to position data for this object (3 bytes: Screen number, x-coordinate, y-coordinate)
C 29690,1 Store BC
C 29691,2 Store IX
C 29693,1 Store AF
N 29694 This entry point is used by the routine at #R29680.
C 29694,1 Copy index of object to draw (as it appears in the  graphics data lookup table at 42642) into A
C 29695,3 Load x-coordinate of object into C
C 29698,3 Load y-coordinate of object into B
C 29701,3 Draw graphic in XOR mode
C 29704,1 Restore AF
C 29705,2 Restore IX
C 29707,1 Restore BC
C 29708,1 Return
c 29709 Animate Puff of Smoke then Draw a Character in Position
D 29709 Only called if high bit of Magic Knight's current room is set Input:  A  Magic Knight's current room IX  Pointer to position data for this character (3 bytes: Screen number, x-coordinate, y-coordinate)
C 29709,3 Load character's room index into E
C 29712,2 Reset the most significant bit
C 29714,1 If new room index is different from Magic Knight's then...
C 29715,1 ...return...
C 29716,4 ...else reset high bit of character's room index
C 29720,1 Store BC
C 29721,2 Load C with 63 (index of first frame of puff of smoke animation)
C 29723,1 Store BC (C = index of puff of smoke)
C 29724,3 Load character's coordinates into BC and graphic lookup index into A and draw to screen
C 29727,1 Restore BC (C = index of puff of smoke)
C 29728,2 Set B to 5 (as there are six frames we need to loop 5 times)
C 29730,1 Store BC (C = index of puff of smoke)
C 29731,1 Wait for interrupts...
C 29732,1 ...
C 29733,1 ...
C 29734,1 ...
C 29735,1 ...
C 29736,1 ...
C 29737,3 Load object's coordinates into BC and graphic lookup index into A and draw to screen
C 29740,1 Restore BC (C = index of puff of smoke)
C 29741,1 Advance C by one (to point to next frame of puff of smoke animation)
C 29742,1 Store BC (C = index of puff of smoke)
C 29743,3 Load object's coordinates into BC and graphic lookup index into A and draw to screen
C 29746,1 Restore BC (C = index of puff of smoke)
C 29747,2 Decrease B and loop back for next frame
C 29749,1 Wait for interrupts...
C 29750,1 ...
C 29751,1 ...
C 29752,1 ...
C 29753,1 ...
C 29754,1 ...
C 29755,3 Load object's coordinates into BC and graphic lookup index into A and draw to screen
C 29758,1 Restore BC
C 29759,3 Draw character to screen
C 29762,1 Return
c 29763 Run Checks and Updates (Magic Knight's Current Room and Room-Specific Routines)
D 29763 Used by the routines at #R27176 and #R27495.
C 29763,3 Set Magic Knight's current x- and y-velocities to zero...
C 29766,3 ...
C 29769,3 Check whether Magic Knight is moving into a new room and react if so
N 29772 The operand of the instruction at #R29772 represents the address of the appropriate room-specific routine. This is modified by the instruction at #R29461.
C 29772,3 Execute room-specific routine
c 29775 Room-Specific Routine Do Nothing (Return) 1
D 29775 Used by the routine at #R29763.
C 29775,1 Return
c 29776 Room-Specific Routine Update Positions of 4 Odd-Balls and Display
D 29776 Used by the routine at #R29911.
C 29776,1 Ball 0
C 29777,3 Update position of Odd Ball 0, display, and decrease Magic Knight's strength if in contact
C 29780,2 Ball 1
C 29782,3 Update position of Odd Ball 1, display, and decrease Magic Knight's strength if in contact
C 29785,2 Ball 2
C 29787,3 Update position of Odd Ball 2, display, and decrease Magic Knight's strength if in contact
C 29790,2 Ball 3
C 29792,3 Update position of Odd Ball 3, display, and decrease Magic Knight's strength if in contact
C 29795,1 Return
c 29796 Room-Specific Routine Do Nothing (Return) 2
C 29796,1 Return
c 29797 Room-Specific Routine Jump to "Kill Magic Knight if he is in a Dark Room Without Illumination"
C 29797,2 Jump to "Kill Magic Knight if he is in a Dark Room Without Illumination" routine
c 29799 Room-Specific Routine Do Nothing (Return) 3
C 29799,1 Return
c 29800 Room-Specific Routine Kill Magic Knight if he is in a Dark Room Without Illumination
D 29800 Used by the routine at #R29797.
C 29800,3 If "Armouris Photonicus cast" flag is set...
C 29803,2 ...
C 29805,1 ...then return
C 29806,2 Load A with index of Glowing Bottle
C 29808,3 Check to see if this object is in Magic Knight's inventory...
C 29811,1 ...and if so, return
C 29812,3 Get current "screen" location of Glowing Bottle
C 29815,2 If Glowing Bottle is in "The Little Bottle" room, then... (Bug. See also trivia)
C 29817,1 ...return as room is lit (although not sure how bottle can actually get here!)
C 29818,2 Load A with index of Engraved Candle
C 29820,3 Check to see if this object is in Magic Knight's inventory...
C 29823,2 ...and if so, skip ahead to #R29832 (to check if it is lit)
C 29825,3 Get current "screen" location of Engraved Candle
C 29828,2 If Engraved Candle is NOT in "The Little Bottle" room then...
C 29830,2 ...skip ahead to "You have died" section of routine
C 29832,3 If the Engraved Candle is lit...
C 29835,2 ...
C 29837,1 ...then return
C 29838,4 Reset "Update Game Time and Locate Arrow Glow" flag
C 29842,3 Point to start of Attribute File...
C 29845,3 ...
C 29848,3 ...
C 29851,1 L is zero as HL is 22528
C 29852,2 Fill top 19 (i.e. 608 / 32) rows of Attribute File with zeroes (i.e. make the room black dark!)
C 29854,2 Draw window 31 ("Death info" window, i.e. have entered a dark room without illumination)...
C 29856,3 ...
C 29859,3 Point to "Somebody switched off the light..." text
C 29862,3 Print the text
C 29865,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 29868,3 Point HL at "YOU HURT YOURSELF MOVING AROUND IN THE DARK" text
C 29871,3 Jump to "Game over" window routine and exit
c 29874 Room-Specific Routine Update Position of 1 Odd-Ball and Display
C 29874,1 Set A to zero
C 29875,3 Update position of Odd Ball 0, display, and decrease Magic Knight's strength if in contact
C 29878,1 Return
c 29879 Room-Specific Routine Do Nothing (Return) 4
C 29879,1 Return
c 29880 Room-Specific Routine Kill Magic Knight if he is in the Gas Room Without Protection
C 29880,3 Check Magic Knight spell flags...
C 29883,2 ...
C 29885,1 ...and return if bit 2 is set (i.e. Fumaticus Protectium has been successfully cast)
C 29886,4 Reset "Update Game Time and Locate Arrow Glow" flag
C 29890,2 Draw window 31 ("Death info" window, i.e. have entered the Gas Room without Fumaticus Protectium)...
C 29892,3 ...
C 29895,3 Point to "CHOKE... CHOKE..." text
C 29898,3 Print the text
C 29901,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 29904,3 Point HL at "THE GAS GOT YOU" text
C 29907,3 Jump to "Game over" window routine and exit
c 29910 Room-Specific Routine Do Nothing (Return) 5
C 29910,1 Return
c 29911 Room-Specific Routine Jump to "Update Positions of 4 Odd-Balls and Display"
C 29911,3 Update positions of 4 Odd-Balls and display
c 29914 Room-Specific Routine Do Nothing (Return) 6
C 29914,1 Return
c 29915 Room-Specific Routine Kill Magic Knight if he has Fallen into the Pit of Destruction
C 29915,3 Load Magic Knight's current y-coordinate into A...
C 29918,2 ...and if this is less than 112...
C 29920,1 ...then return...
C 29921,3 ...else point HL at "YOU FELL INTO THE PIT OF DESTRUCTION..." text...
C 29924,3 ...display related GAME OVER window and return to main menu
c 29927 Room-Specific Routine Do Nothing (Return) 7
C 29927,1 Return
c 29928 Room-Specific Routine Draw Whited-Out Gimbal if he has not Been Freed
C 29928,3 Load A with Game Progress Flags (2)
C 29931,2 If Gimbal is free...
C 29933,1 ...then return
C 29934,2 Set x-coordinate to 6
C 29936,2 Set y-coordinate to 2
C 29938,2 Set system variable ATTR T to 127 (white INK, white PAPER, BRIGHT)...
C 29940,3 ...
C 29943,2 Draw Gimbal the Wizard (whited-out)...
C 29945,3 ...
C 29948,1 Return
c 29949 Room-Specific Routine Do Nothing (Return) 8
C 29949,1 Return
c 29950 Draw a Graphic (in XOR Mode)
D 29950 Used by the routines at #R28092 and #R29690. Input:  A  Index of graphic to draw in graphic data lookup table at #R42642 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item
C 29950,1 Switch register AF
C 29951,2 Prepare to modify instruction at #R30043 to "XOR (HL)"
C 29953,2 Jump into graphic drawing routine
c 29955 Draw a Graphic (in OR Mode)
D 29955 Used by the routines at #R29375 and #R38539. Input:  A  Index of graphic to draw in graphic data lookup table at #R42642 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item
C 29955,1 Switch register AF
C 29956,2 Prepare to modify instruction at #R30043 to "OR (HL)"
C 29958,2 Jump into graphic drawing routine
c 29960 Draw a Graphic (in NOP Mode)
D 29960 Used by the routines at #R28683, #R28747, #R28882, #R28960, #R29032, #R29089, #R29150, #R29225, #R29291, #R29928, #R30129, #R31370, #R32035 and #R36275. Input:  A  Index of graphic to draw in graphic data lookup table at #R42642 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item
C 29960,1 Switch register AF
C 29961,1 Prepare to modify instruction at #R30043 to "NOP" (i.e. A=0)
N 29962 This entry point is used by the routines at #R29950 and #R29955.
C 29962,3 Modify instruction at #R30043 with new opcode in A
C 29965,1 Switch back
C 29966,1 Store HL, BC and AF...
C 29967,1 ...
C 29968,1 ...
C 29969,1 Load x-coordinate to draw item into instruction at #R30037
C 29970,3 ...
C 29973,1 Multiply y-coordinate by 8...
C 29974,1 ...
C 29975,1 ...
C 29976,1 ...
C 29977,1 ...and load into HL...
C 29978,2 ...
C 29980,1 Double again (so now 16 times y-coordinate, as 8 pixels in a character block, and two bytes per entry in data at 26064)
C 29981,3 Point DE at table of Display File addresses of starts of each pixel row
C 29984,1 Advance by 16 times y-coordinate to point HL at entry for start of item's current pixel row
C 29985,1 Transfer this value into IX...
C 29986,2 ...
C 29988,1 Restore A (graphic index of item to draw)...
C 29989,1 ...and load into HL...
C 29990,2 ...
C 29992,1 Multiply by four...
C 29993,1 ...
C 29994,3 Point BC at start of graphics data lookup table...
C 29997,1 ...and add offset to point to entry for item of interest
C 29998,1 Load graphic width into C
C 29999,1 Advance to height
C 30000,1 Load graphic height into B
C 30001,1 Advance to graphic address
C 30002,1 Load graphic address into HL...
C 30003,1 ...
C 30004,1 ...
C 30005,1 ...
C 30006,1 Load graphic width into A
C 30007,2 If width is not set to 255, then...
C 30009,2 ...skip to #R30014...
C 30011,3 ...else set both height and width to 2
C 30014,1 Store width and height
C 30015,1 Swap graphic address into DE
C 30016,1 Load height into A...
C 30017,1 ...and multiply by eight...
C 30018,1 ...
C 30019,1 ...
C 30020,1 ...and load into L
C 30021,1 Load H with graphic width
C 30022,1 Load A with graphic width
C 30023,3 Load graphic width into instruction at #R30040
C 30026,1 Transfer width (H) and eight times height (L) from HL to...
C 30027,1 ...B (width) and C (eight times height)
C 30028,1 Store B (width) and C (x times height, where x decreases through loop)
C 30029,3 Load HL with Display File address to draw item data to screen (stored in IX) from table at #R26064...
C 30032,3 ...
C 30035,2 Set B to zero
N 30037 The operand of the instruction at #R30037 represents the x-coordinate value stored previously. This is modified by the instruction at #R29970.
C 30037,2 Load C with x-coordinate of item to draw
C 30039,1 Increase Display File offset with x-coordinate (characters)
N 30040 The operand of the instruction at #R30040 represents the width value stored previously. This is modified by the instruction at #R30023.
C 30040,2 Load B with width of graphic to draw
C 30042,1 Load a byte of graphic data into A
N 30043 The instruction at #R30043 represents the graphic blending mode, and can be NOP, XOR (HL) or OR (HL). This is modified by the instruction at #R29962.
C 30043,1 Blend with graphic data already in Display File
C 30044,1 Write resultant graphic data to Display File
C 30045,1 Advance Display File pointer to draw second column
C 30046,1 Advance to next graphic data byte
C 30047,2 Repeat loop (for second column of graphic)
C 30049,2 Advance IX by two (as it is pointing to a table of two-byte addresses)...
C 30051,2 ...
C 30053,1 Restore width and eight times height to BC...
C 30054,1 ...and decrease C (eight times height) to move to next pixel row
C 30055,2 Repeat loop for next pixel row
C 30057,1 Restore height (D) and width (E) (characters)
C 30058,1 Load width into A
C 30059,3 Modify instruction at #R30068 with width
C 30062,1 Restore y- and x-coordinates for item being drawn
C 30063,1 Store this again
C 30064,1 Store width and height
C 30065,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
N 30068 The operand of the instruction at #R30068 represents the width value stored previously. This is modified by the instruction at #R30059.
C 30068,2 Load B with width of item being drawn
C 30070,3 Load ATTR T system variable into A (this is set by instructions prior to this routine being called)
C 30073,1 Write attribute to current virtual cursor location
C 30074,1 Store current virtual cursor location
C 30075,1 Set A to zero
C 30076,3 Point DE to start of Attribute File
C 30079,2 Load HL with address of Virtual Attribute Cursor location, relative to start of Attribute File
C 30081,3 Point DE at Terrain Interaction Data
C 30084,1 Add relative address of virtual cursor (attribute) as offset
C 30085,3 Load stored Terrain Interaction Parameter into Terrain Interaction Table for this Attribute File address...
C 30088,1 ...
C 30089,1 Restore current virtual cursor location
C 30090,1 Advance cursor to the right one character
C 30091,2 Repeat loop for rest of width
C 30093,1 Restore height (D) and width (E)
C 30094,1 Restore y (B) and x (C) coordinates for item being drawn
C 30095,1 Increase y-coordinate
C 30096,1 Decrease "remaining" height
C 30097,2 If there is some remaining height to colour, then loop back
C 30099,1 Restore HL
C 30100,1 Return
c 30101 Indent "SPELLBOUND" Text in Bottom Window to Indicate Magic Knight's Current Floor
D 30101 Used by the routine at #R27865.
C 30101,2 Load A with 158...
C 30103,3 ...and place into formatting data at 43138
C 30106,3 Load A with Magic Knight's current room
C 30109,1 Return if room number is zero (i.e. Magic Knight is in the Lift)...
C 30110,1 ...
C 30111,1 ...else...
C 30112,1 ...subtract one and divide by eight...
C 30113,1 ...
C 30114,1 ...
C 30115,2 ...to give floor number
C 30117,2 Add floor number to 158
C 30119,3 Load into formatting data at 43138
C 30122,1 Return
c 30123 Divide A by Eight, Rounding Down to Nearest Integer
D 30123 Used by the routines at #R27495, #R27666, #R27809, #R34385, #R37333 and #R37571.
C 30123,1 Divide by eight...
C 30124,1 ...
C 30125,1 ...
C 30126,2 ...and remove remainder
C 30128,1 Return
c 30129 Draw Lift Doors if Magic Knight is at Lift Entrance on a Different Floor to the Lift
D 30129 Used by the routine at #R28092.
C 30129,3 Load Magic Knight's current room into A
C 30132,1 If room number is not a multiple of 8...
C 30133,2 ...(i.e. not a room from which the lift can be called)...
C 30135,1 ...then return
C 30136,3 Load Magic Knight's current room into A...
C 30139,1 ...double it...
C 30140,1 ...and copy into BC...
C 30141,2 ...
C 30143,3 Point HL at room connectivity data table
C 30146,1 Add BC as offset
C 30147,1 Load index of room to left of current room...
C 30148,2 ...and if this is not set to 255 (i.e. the Lift is here)...
C 30150,1 ...return...
C 30151,2 ...else set system variable ATTR T to 69 (cyan INK, black PAPER, BRIGHT)...
C 30153,3 ...
C 30156,2 Set Terrain Interaction Parameter ("impassable horizontally", "impassable vertically", and "preserve attribute")...
C 30158,3 ...
C 30161,3 Set coordinates and...
C 30164,2 ...draw a graphic #83 (lift doors)
C 30166,3 ...
C 30169,1 Return
b 30170 Addresses of room feature drawing routines
W 30170,2,2 230 - Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
W 30172,2,2 231 - Set brickwork drawing mode 1 (one row of bricks only)
W 30174,2,2 232 - Set brickwork drawing mode 2 (one row of bricks with blank row beneath)
W 30176,2,2 233 - Set Terrain Interaction Parameter to "impassable vertically" and "preserve attribute"
W 30178,2,2 234 - Set Terrain Interaction Parameter to "impassable horizontally", "impassable vertically" and "preserve attribute"
W 30180,2,2 235 - Set Terrain Interaction Parameter to "preserve attribute"
W 30182,2,2 236 - Draw right-facing wall-candle
W 30184,2,2 237 - Draw left-facing wall-candle
W 30186,2,2 238 - Set attributes, including glow, on Lift control panel
W 30188,2,2 239 - Draw picture in frame (59748)
W 30190,2,2 240 - Draw picture in frame (59748) and replace picture with alternative (60156)
W 30192,2,2 241 - Draw picture in frame (59548)
W 30194,2,2 242 - Draw picture in frame (59548) and replace picture with alternative (60108)
W 30196,2,2 243 - Draw Goblet Picture (Florin's Room) or character portrait and corresponding picture frame
W 30198,2,2 244 - Read data for and display glowing blocks
W 30200,2,2 245 - Paint attributes
W 30202,2,2 246 - Draw wall axes
W 30204,2,2 247 - Draw ceiling candles
W 30206,2,2 248 - Unused
W 30208,2,2 249 - Unused
W 30210,2,2 250 - Room Drawing: Point Terrain Interaction and Bitmap Virtual Cursors to coordinates x=C, y=B
W 30212,2,2 251 - Draw a graphic (x, y, attribute, Terrain Interaction Parameter, graphic lookup index)
W 30214,2,2 252 - Unused
W 30216,2,2 253 - Unused
W 30218,2,2 254 - Read sequence of architecture styles and draw appropriate 2-by-2 blocks of brickwork
W 30220,2,2 255 - Read sequence of architecture styles and attributes and draw appropriate 2-by-2 blocks of brickwork
c 30222 Process Command to Pick Up an Object
C 30222,3 Play upward scale sound
C 30225,3 Display / update command summary window at bottom of screen
C 30228,3 Point DE at "PICK UP" text...
C 30231,3 ...and print in Command Summary Window at bottom of screen
C 30234,4 Point IX at Objects' Current Positions Table
C 30238,3 Load B with 12 and C with 128 [bug: Should be Load B with 50 and C with 0, or LD BC, 12800]
C 30241,3 Load A with Magic Knight's current room
C 30244,3 If current object's room is not the same as Magic Knight's then...
C 30247,2 ...skip ahead to #R30250
C 30249,1 Increase C (count of objects in Magic Knight's current room)
C 30250,2 Advance IX to next object's position...
C 30252,2 ...
C 30254,2 ...
C 30256,2 Decrease B and loop back for next object
C 30258,1 Copy total number of objects into A...
C 30259,1 ...and if this value is zero... [can't actually happen because of bug at #R30238]
C 30260,3 ...display "THERE IS NOTHING IN THIS ROOM" message and return to game
C 30263,4 Point IX at Objects' Current Positions Table
C 30267,3 Load A with Magic Knight's current room...
C 30270,1 ...and copy into C
C 30271,3 Load Magic Knight's coordinates (in characters) into DE
C 30274,1 Set A to zero
C 30275,1 Switch A register
C 30276,2 Load B with 50 (as there are 50 objects)
C 30278,1 Load Magic Knight's current room into A
C 30279,3 If room of current object is not the same as Magic Knight's current room then...
C 30282,2 ...skip ahead to #R30327 (advance to next object)
C 30284,1 Copy Magic Knight's y-coordinate into A
C 30285,3 If y-coordinate of object is not the same as Magic Knight's y-coordinate then...
C 30288,2 ...skip ahead to #R30327 (advance to next object)
C 30290,1 Load Magic Knight's x-coordinate into A
C 30291,1 Decrease x-coordinate by two...
C 30292,1 ...
C 30293,3 If x-coordinate of object is the same as Magic Knight's x-coordinate minus two...
C 30296,3 ...skip ahead to #R30341
C 30299,1 Increase x-coordinate by one
C 30300,3 If x-coordinate of object is the same as Magic Knight's x-coordinate minus one then...
C 30303,3 ...skip ahead to #R30341
C 30306,1 Increase x-coordinate by one
C 30307,3 If x-coordinate of object is the same as Magic Knight's x-coordinate then...
C 30310,3 ...skip ahead to #R30341
C 30313,1 Increase x-coordinate by one
C 30314,3 If x-coordinate of object is the same as Magic Knight's x-coordinate plus one then...
C 30317,3 ...skip ahead to #R30341
C 30320,1 Increase x-coordinate by one
C 30321,3 If x-coordinate of object is the same as Magic Knight's x-coordinate plus two then...
C 30324,3 ...skip ahead to #R30341
C 30327,2 Advance IX by three bytes to move to next object...
C 30329,2 ...
C 30331,2 ...
C 30333,1 Switch A register back (so now contains the index of the object to test next)
C 30334,1 Increase A (index of current object to test)
C 30335,1 Switch A register
C 30336,2 Loop back to 30278 for next object
C 30338,3 Display "THERE IS NOTHING NEAR ENOUGH" message and return to game
N 30341 An object has been found within Magic Knight's reach so make this the Current Object
C 30341,1 Switch A register (so now contains index of first object that is within Magic Knight's reach)
C 30342,3 Load index of this object into instruction at #R30466 (i.e. set as Current Object)
C 30345,3 Point HL at table of object names
C 30348,1 Load B with index of object that is within Magic Knight's reach
C 30349,3 Advance HL to B-th entry in object names table
C 30352,1 Swap DE and HL (so DE now contains pointer to name of Current Object)
C 30353,3 ...and print in Command Summary Window at bottom of screen
C 30356,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 30359,3 Load A with index of Current Object...
C 30362,2 ...and if it is not object 34 (Strange Liquid) then...
C 30364,2 ...jump to #R30369
C 30366,3 Display "THE LIQUID IS STUCK TO THE FLOOR (IT'S A VERY THICK LIQUID)" window and exit
C 30369,3 Load A with object at Magic Knight's fifth inventory slot...
C 30372,1 ...
C 30373,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 30374,3 ...then display "YOUR HANDS ARE FULL" window and return to game
C 30377,3 Check whether object has a weight greater than Magic Knight's surplus strength...
C 30380,3 ...and if it does, display "THAT OBJECT IS TOO HEAVY" message and return to game
C 30383,3 Load A with index of Current Object...
C 30386,1 ...and into C
C 30387,2 Load B with 5 (as 5 inventory slots)
C 30389,3 Point HL at start of Magic Knight's inventory
C 30392,3 Load object in C into Magic Knight's first empty inventory slot
C 30395,3 Load A with index of Current Object...
C 30398,1 ...and into C
C 30399,1 Multiply index by three in A...
C 30400,1 ...
C 30401,2 Load B with zero
C 30403,1 Load three times object index into C (as position data is three bytes wide)
C 30404,3 Point HL at Objects' Current Positions Table
C 30407,1 Add BC as offset to point HL at position data for Current Object
C 30408,2 Set object's room to 99
N 30410 This entry point is used by the routines at #R30439, #R30602 and #R30880.
C 30410,4 Point IX at Magic Knight's current inventory
C 30414,2 Load B with 5 (as five inventory slots)
C 30416,3 Point HL at "YOU ARE NOW CARRYING" text
C 30419,3 Display "Magic Knight's current inventory" window as an information window
C 30422,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 30425,3 Set Magic Knight's available action flags
N 30428 This entry point is used by the routines at #R31153, #R31370, #R32035, #R32194, #R32258, #R32655, #R33932, #R34350, #R34768, #R35141 and #R38725.
C 30428,3 Reset Gimbal-White-Out Safe Flag...
C 30431,2 ...
C 30433,3 ...
C 30436,3 Redraw current room and return to game
c 30439 Process Command to Drop an Object
C 30439,3 Play upward scale sound
C 30442,4 Point IX at start of Magic Knight's inventory
C 30446,2 Load B with 5, as there are five inventory slots to check
C 30448,3 Point HL at "DROP WHICH OBJECT?" text
C 30451,3 Point DE at "DROP" text
C 30454,3 Show list of objects (window or menu) and handle selection if a menu
C 30457,3 Point HL at start of Magic Knight's current inventory
C 30460,3 Point DE at name of a selected object in object names table and print in command summary window
C 30463,3 Display Execute / Reject Command window and return if Execute chosen, else exit
N 30466 The operand of the instruction at #R30466 represents the index of the Current Object used in multiple routines. This is modified by the instructions at #R30342 and #R34871.
C 30466,2 Load A with index of Current Object
C 30468,2 Load E with 1 (Drop status)
C 30470,3 Point HL to drop status of object A
C 30473,2 If drop status is not zero, i.e. object can't be dropped then...
C 30475,3 ...jump to #R34442 (display "YOU CAN'T DROP THAT OBJECT" window and return to game)
C 30478,3 Load A with index of Current Object
C 30481,2 If not object 16 (i.e. not Glowing Bottle)...
C 30483,2 ...skip ahead to #R30490...
C 30485,3 ...else smash Glowing Bottle and release Banshee...
C 30488,2 ...and skip ahead to #R30504
C 30490,3 Load A with index of Current Object
C 30493,1 Copy into C
C 30494,1 Store BC
C 30495,2 Load B with 5
C 30497,3 Point HL at start of Magic Knight's current inventory
C 30500,3 Remove object C from Magic Knight's inventory (and tidy up remainder of slots)
C 30503,1 Restore BC
C 30504,1 Load Current Object's index into A
C 30505,1 Multiply object index by 3...
C 30506,1 ...
C 30507,1 ...and load back into C
C 30508,2 Load B with zero
C 30510,3 Point HL at start of Objects' Current Positions Table at #R25464
C 30513,1 Add three times Current Object's index as offset to point HL at position data of Current Object
C 30514,3 Load A with Magic Knight's current room
C 30517,1 Set object's current room to be same as Magic Knight's
C 30518,1 Advance HL to x-coordinate of object
C 30519,2 Set B to zero
C 30521,3 Load Magic Knight's current x-coordinate into A
C 30524,2 Get x-coordinate in terms of pixels within current character block (i.e. lowest 3 bits of x-coordinate)
C 30526,2 If this is zero (i.e. Magic Knight at left-most pixel in character block) then skip ahead to #R30529...
C 30528,1 ...else increase B
C 30529,3 Load Magic Knight's coordinates (in characters) into DE
C 30532,1 Load B into A
C 30533,1 Add Magic Knight's x-coordinate to A
C 30534,1 Set this as object's x-coordinate
C 30535,1 Advance HL to y-coordinate of object
C 30536,1 Set this to same as Magic Knight's y-coordinate
C 30537,3 Display Magic Knight's current inventory and return to game
c 30540 Smash Glowing Bottle
D 30540 Used by the routines at #R30439 and #R32390. Input:  C  16 (Item index of Glowing Bottle) Output: C  14 (Item index of Broken Glass)
C 30540,2 Remove Glowing Bottle from Magic Knight's inventory...
C 30542,2 ...
C 30544,3 ...
C 30547,3 ...
C 30550,3 Display "YOU DROPPED THE BOTTLE TO THE GROUND..." window (window 26)...
C 30553,2 ...
C 30555,3 ...
C 30558,3 ...
C 30561,3 ...
C 30564,3 Set "Banshee is released" flag...
C 30567,2 ...
C 30569,3 ...
C 30572,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 30575,2 Set B to 7 (index of Banshee)
C 30577,3 Load A with Magic Knight's current room...
C 30580,1 ...and copy into C
C 30581,3 Assign a slot in room C to character B and get x- and y-coordinates in BC
C 30584,2 If assigned slot number is 4 (i.e. already three characters in current room)...
C 30586,2 ...then skip ahead to #R30599
C 30588,3 Point HL at Banshee's current location
C 30591,3 Load Magic Knight's current room index into A
C 30594,1 Set Banshee's current room as Magic Knight's current room
C 30595,1 Point HL at Banshee's current x-coordinate...
C 30596,1 ...and set to match assigned slot
C 30597,1 Point HL at Banshee's current y-coordinate
C 30598,1 ...and set to match assigned slot
C 30599,2 Load C with index of Broken Glass (as this will be replacing the Glowing Bottle in the world)
C 30601,1 Return
c 30602 Process Command to Take an Object
C 30602,3 Play upward scale sound
C 30605,3 Point HL at "TAKE AN OBJECT FROM ?" text
C 30608,3 Point DE at "TAKE SOMETHING FROM" text
C 30611,3 Display and process input for character selection menu (current room's characters only), setting Current Character
N 30614 The operand of the instruction at #R30614 represents the index of the Current Character used in multiple routines. This is modified by the instructions at #R31430, #R34893, #R35258, #R35349, #R35383 and #R55462.
C 30614,2 Load A with index of Current Character
C 30616,3 Point IX at current inventory of character in A
C 30619,3 Load character's first inventory object into A
C 30622,1 If first object is zero (i.e. character's hands are empty)...
C 30623,3 ...display "[CHARACTER]'S HANDS ARE EMPTY" window and exit
C 30626,2 Store IX (pointer to current inventory of Current Character)
C 30628,2 Load B with 5 (as there are 5 inventory slots)
C 30630,3 Point HL at "TAKE WHICH OBJECT?" text
C 30633,3 Set DE to zero so Command Summary Window is not updated upon selecting a character
C 30636,3 Show list of objects (window or menu) and handle selection, loading ASCII index code of chosen object into A
C 30639,1 Store AF (A = ASCII code of letter of chosen object, e.g. A = first object, B = second, etc.)
C 30640,3 Display / update command summary window at bottom of screen
C 30643,3 Point DE at "TAKE" text...
C 30646,3 ...and print in Command Summary Window at bottom of screen
C 30649,1 Restore AF (ASCII code of index of selected object)
C 30650,1 Restore HL (previously IX, pointer to current inventory of Current Character)
C 30651,3 Point DE at name of a selected object in object names table and print in command summary window
C 30654,3 Point DE at "FROM" text...
C 30657,3 ...and print in Command Summary Window
C 30660,3 Load A with index of Current Character
C 30663,3 Print short name of Current Character in command summary window
C 30666,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 30669,3 Point HL at Magic Knight's fifth inventory slot...
C 30672,1 ...and if this is not empty...
C 30673,1 ...
C 30674,3 ...then display "YOUR HANDS ARE FULL" window and return to game
C 30677,3 Check whether object has a weight greater than Magic Knight's surplus strength...
C 30680,3 ...and if it is, display "THAT OBJECT IS TOO HEAVY" message and return to game
C 30683,3 Load happiness of Current Character into A
C 30686,2 If character's happiness is less than 30...
C 30688,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30691,3 Load B with index of Current Object...
C 30694,1 ...
C 30695,3 Load index of Current Character into A
C 30698,1 If character index is not zero (i.e. not Gimbal)...
C 30699,3 ...then skip ahead to #R30705 (Thor's section)
C 30702,3 Skip ahead to #R30847 (transfer object from Gimbal's inventory to Magic Knight's and return to game)
C 30705,2 If character index is not 1 (i.e. not Thor)...
C 30707,3 ...then skip ahead to #R30745 (Florin's section)
C 30710,1 Load index of selected object into B
C 30711,2 If selected object is not Miolnir...
C 30713,2 ...then skip ahead to #R30742
C 30715,3 Point HL at "THOR IS ANGRY..." text
C 30718,1 Load text height (rows) into A...
C 30719,3 ...and then into stored bottom y-coordinate of window #13
C 30722,1 Advance HL to start of actual text data
C 30723,1 Store HL
C 30724,2 Draw window 13...
C 30726,3 ...
C 30729,1 Restore HL (pointer to text)
C 30730,3 Print text into window
C 30733,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 30736,3 Point HL at "THOR KILLED YOU" text
C 30739,3 Jump to "Game over" window routine and exit
C 30742,3 Skip ahead to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30745,2 If character index is not 2 (i.e. not Florin)...
C 30747,3 ... then skip ahead to #R30784 (Orik's section)
C 30750,1 Load index of selected object into B
C 30751,2 If selected object is the Sticky Bun...
C 30753,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30756,2 If selected object is the Broken Talisman...
C 30758,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30761,2 If selected object is the Tube of Glue...
C 30763,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30766,2 If selected object is the Gold Bar...
C 30768,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30771,2 If object is not Bottle of Liquid...
C 30773,3 ...then skip ahead to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30776,2 Set Magic Knight's strength to 96...
C 30778,3 ...
C 30781,3 Jump to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30784,2 If character index is not 3 (i.e. not Orik)...
C 30786,3 ...then skip ahead to #R30798 (Samsun's section)
C 30789,1 Load index of selected object into B
C 30790,2 If selected object is the Book of Shadows...
C 30792,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30795,3 Skip ahead to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30798,2 If character index is not 4 (i.e. not Samsun)...
C 30800,3 ...then skip ahead to #R30817 (Elrand's section)
C 30803,1 Load index of selected object into B
C 30804,2 If selected object is the Javelin...
C 30806,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30809,2 If selected object is the Platform...
C 30811,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30814,3 Skip ahead to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30817,2 If character index is not 5 (i.e. not Elrand)...
C 30819,3 ...then skip ahead to #R30831 (Rosmar's section)
C 30822,1 Load index of selected object into B
C 30823,2 If selected object is the Trumpet...
C 30825,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30828,3 Skip ahead to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30831,2 If character index is not 6 (i.e. not Rosmar)...
C 30833,3 ...then skip ahead to #R30847 (transfer object from Current Character's inventory to Magic Knight's and return to game)
C 30836,1 Load index of selected object into B
C 30837,2 If selected object is the Pocket Laser...
C 30839,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30842,2 If selected object is the Fast Blow Fuse...
C 30844,3 ...then display "[CHARACTER] WANTS TO KEEP THAT" window and return to game
C 30847,3 Load A with index of Current Character
C 30850,3 Point IX at current inventory of character in A
C 30853,2 Transfer pointer to current inventory of Current Character from IX to HL...
C 30855,1 ...
C 30856,3 Load C with index of Current Object...
C 30859,1 ...
C 30860,2 Load B with 5 (as five inventory slots)
C 30862,3 Remove current (selected) object from character's inventory
C 30865,3 Load C with index of Current Object...
C 30868,1 ...
C 30869,2 Load B with 5 (as five inventory slots)
C 30871,3 Point HL at start of Magic Knight's inventory
C 30874,3 Load current (selected) object into Magic Knight's first empty inventory slot
C 30877,3 Display Magic Knight's current inventory and return to game
c 30880 Process Command to Give an Object
C 30880,3 Play upward scale sound
C 30883,4 Point IX at Magic Knight's inventory
C 30887,2 Load B with 5 (as there are five inventory slots)
C 30889,3 Point HL at "GIVE WHICH OBJECT?" text
C 30892,3 Point DE at "GIVE" text
C 30895,3 Show list of objects (window or menu) and handle selection if a menu
C 30898,3 Point HL at Magic Knight's inventory
C 30901,3 Point DE at name of a selected object in object names table and print in command summary window
C 30904,3 Point DE at "TO" text...
C 30907,3 ...and print in Command Summary Window at bottom of screen
C 30910,3 Point HL to "GIVE AN OBJECT TO ?" text
C 30913,3 Set DE to zero so Command Summary Window is not updated with additional text
C 30916,3 Display and process input for character selection menu (current room's characters only), setting Current Character
C 30919,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 30922,3 Load A with index of Current Character
C 30925,3 Point IX at current inventory of character in A
C 30928,3 Load A with contents of character's last inventory slot
C 30931,1 If inventory slot is not empty...
C 30932,3 ...then display "[CHARACTER]'S HANDS ARE FULL" window and return to game
C 30935,3 Load B (number of inventory slots) with 5 and C (running total of character's carried weight) with 0
C 30938,3 Load index of object in character's current inventory slot into A
C 30941,1 If object index is zero (i.e. there is nothing in this slot and we have reached the end of the inventory)...
C 30942,2 ...then jump ahead to #R30953 (IX now points to first empty inventory slot)
C 30944,3 Load A with weight of object A
C 30947,1 Add weight of object to C...
C 30948,1 ...
C 30949,2 Advance to next inventory slot
C 30951,2 Decrease B and loop back for next slot
C 30953,3 Load A with index of Current Object
C 30956,3 Load A with weight of object A
C 30959,1 Add weight of Current Object to total weight currently held by the character...
C 30960,1 ...in C
C 30961,3 Load A with index of Current Character
C 30964,2 Point HL at strength of character whose index is A...
C 30966,3 ...
C 30969,1 Load character's strength into A
C 30970,1 If total weight in C is greater than character's strength in A...
C 30971,3 ...then display "[CHARACTER] IS NOT STRONG ENOUGH" window and return to game
C 30974,3 Load happiness of Current Character into A
C 30977,2 If character's happiness is less than 25...
C 30979,3 ...then display "[CHARACTER] DOES NOT WANT THAT" window and return to game
C 30982,3 Load B with index of Current Object...
C 30985,1 ...
C 30986,3 Load A with index of Current Character
C 30989,1 If Current Character is not 0 (Gimbal)...
C 30990,3 ...then skip ahead to #R31009
C 30993,1 Load index of Current Object into A...
C 30994,2 If Current Object is not the Willow Rod...
C 30996,2 ...then skip ahead to #R31006
C 30998,3 Set Gimbal's "can help" flag...  (see trivia)
C 31001,2 ...
C 31003,3 ...
C 31006,3 Skip ahead to #R31135
C 31009,2 If Current Character is not Thor...
C 31011,3 ...then skip ahead to #R31038
C 31014,1 Load index of Current Object into A
C 31015,2 If Current Object is not Miolnir...
C 31017,2 ...then skip ahead to #R31035
C 31019,3 Set Thor's "can help" flag...
C 31022,2 ...
C 31024,3 ...
C 31027,2 Change Thor's "current status" text to 10 (ready to help)...
C 31029,3 ...
C 31032,3 Skip ahead to #R31135
C 31035,3 Skip ahead to #R31135 [bug]
C 31038,2 If Current Character is not Florin...
C 31040,3 ...then skip ahead to #R31059
C 31043,1 Load index of Current Object into A
C 31044,2 If object is not the Broken Talisman...
C 31046,2 ...then skip ahead to #R31056
C 31048,3 Set Florin's "can help" flag...
C 31051,2 ...
C 31053,3 ...
C 31056,3 Skip ahead to #R31135
C 31059,2 If Current Character is not Orik...
C 31061,3 ...then skip ahead to #R31068
C 31064,1 Load index of Current Object into A
C 31065,3 Skip ahead to #R31135
C 31068,2 If Current Character is not Samsun...
C 31070,3 ...then skip ahead to #R31092
C 31073,1 Load index of Current Object into A
C 31074,2 If object is not 8 (Javelin)...
C 31076,2 ...then skip ahead to #R31089
C 31078,3 Set Samsun's "can help" flag...
C 31081,2 ...
C 31083,3 ...
C 31086,3 Skip ahead to #R31135
C 31089,3 Skip ahead to #R31135 [bug]
C 31092,2 If Current Character is not Elrand...
C 31094,3 ...then skip ahead to #R31111
C 31097,1 Load index of Current Object into A
C 31098,2 [bug - missing JP NZ instruction - should check for presence of object 40, Trumpet, in Elrand's inventory but there is no conditional jump following this check]
C 31100,3 Set Elrand's "can help" flag...
C 31103,2 ...
C 31105,3 ...
C 31108,3 Skip ahead to #R31135
C 31111,2 If Current Character is not Rosmar...
C 31113,3 ...then skip ahead to #R31135
C 31116,1 Load index of Current Object into A
C 31117,2 If object is not 36 (Pocket Laser)...
C 31119,2 ...then skip ahead to #R31132
C 31121,3 Set Rosmar's "can help" flag...
C 31124,2 ...
C 31126,3 ...
C 31129,3 Skip ahead to #R31135
C 31132,3 Skip ahead to #R31135 [bug]
C 31135,3 Load index of Current Object into first empty inventory slot of character...
C 31138,3 ...
C 31141,1 ...and into C
C 31142,2 Load B with 5 (as there are 5 inventory slots to check)
C 31144,3 Point HL at Magic Knight's inventory
C 31147,3 Remove object C from Magic Knight's inventory (and tidy up remainder of slots)
C 31150,3 Display Magic Knight's current inventory and return to game
c 31153 Display and Handle Main In-Game Menu (When Fire is Pressed)
D 31153 Used by the routine at #R27176.
C 31153,3 Set parameters for and play downward scale sound
C 31156,3 Set B = 8 (eight action flags) and C = 0 (count of set flags)
C 31159,3 Load Magic Knight's action flags part 1 into A
C 31162,1 Pop a flag into carry flag
C 31163,2 If Magic Knight action flag is not set then skip ahead to #R31166 to repeat loop for next flag...
C 31165,1 ...else increase count of set flags
C 31166,2 Loop back for next flag until all eight are done
C 31168,2 Set B = 8 (another eight action flags)
C 31170,3 Load Magic Knight's action flags part 2 into A
C 31173,1 Pop a flag into carry flag
C 31174,2 If Magic Knight action flag is not set then skip ahead to #R31177 to repeat loop for next flag...
C 31176,1 ...else increase count of set flags
C 31177,2 Loop back for next flag until all eight are done
C 31179,2 Load A with 9 (as minimal command window has bottom y-coordinate of 9)
C 31181,1 Increase A by number of extra commands available
C 31182,1 Load value back into C
C 31183,3 Load A with y-coordinate (characters) of top of menu window
C 31186,1 Update y-coordinate of bottom of window according to number of extra commands...
C 31187,3 ...
C 31190,1 Display main in-game menu window (window number zero)...
C 31191,3 ...
C 31194,3 Print "COMMANDS AVAILABLE:-" followed by first five commands (Pick up, drop, etc.) that are always available...
C 31197,3 ...
C 31200,3 Set "memory location to start printing character" in character printing routine to start of last character row of permanent (yellow) menu options...
C 31203,3 ...(i.e. "E  EXAMINE") in preparation for printing conditional (white) ones, which are [CR]-prefixed so will print to next line down
C 31206,3 Load A with Magic Knight's action flags part 1
C 31209,2 If Command a Character flag is not set then...
C 31211,2 ...skip ahead to next flag's check
C 31213,3 Else print "C COMMAND A CHARACTER" text...
C 31216,3 ...
C 31219,3 Load A with Magic Knight's action flags part 1
C 31222,2 If Locate a Character flag is not set then...
C 31224,2 ...skip ahead to next flag's check
C 31226,3 Print "L LOCATE A CHARACTER" text...
C 31229,3 ...
C 31232,3 Load A with Magic Knight's action flags part 1
C 31235,2 If Teleport flag is not set then...
C 31237,2 ...skip ahead to next flag's check
C 31239,3 Print "X TELEPORT" text...
C 31242,3 ...
C 31245,3 Load A with Magic Knight's action flags part 1
C 31248,2 If Read flag is not set then...
C 31250,2 ...skip ahead to next flag's check
C 31252,3 Print "R READ SOMETHING" text...
C 31255,3 ...
C 31258,3 Load A with Magic Knight's action flags part 1
C 31261,2 If Throw flag is not set then...
C 31263,2 ...skip ahead to next flag's check
C 31265,3 Print "Y THROW SOMETHING" text...
C 31268,3 ...
C 31271,3 Load A with Magic Knight's action flags part 1
C 31274,2 If Cast a spell flag is not set then...
C 31276,2 ...skip ahead to next flag's check
C 31278,3 Print "S CAST A SPELL" text...
C 31281,3 ...
C 31284,3 Load A with Magic Knight's action flags part 1
C 31287,2 If Blow flag is not set then...
C 31289,2 ...skip ahead to next flag's check
C 31291,3 Print "B BLOW SOMETHING" text...
C 31294,3 ...
C 31297,3 Load A with Magic Knight's action flags part 1
C 31300,2 If Call Lift flag is not set then...
C 31302,2 ...skip ahead to next flag's check
C 31304,3 Print "W CALL LIFT" text...
C 31307,3 ...
C 31310,3 Load A with Magic Knight's action flags part 2
C 31313,2 If Move Lift flag is not set then...
C 31315,2 ...skip ahead to next menu object
C 31317,3 Print "V MOVE LIFT" text...
C 31320,3 ...
C 31323,3 Print "Z EXIT MENU" text...
C 31326,3 ...
C 31329,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 31332,2 If "Z" was pressed...
C 31334,3 ...reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
C 31337,3 Point HL at start of string of keyboard shortcuts for commands
C 31340,1 Load ASCII code of key pressed into B
C 31341,2 Set C (selected command number) to zero
C 31343,1 Load keyboard shortcut pointed to by HL into A
C 31344,1 If key pressed matches currently-pointed-at shortcut...
C 31345,3 ...then jump ahead to #R31352
C 31348,1 Increase C (advance to next command to check if that was selected instead)
C 31349,1 Advance to next entry in list of command shortcuts
C 31350,2 Loop back to #R31343 to test next command
C 31352,1 Load double index of selected command into BC...
C 31353,1 ...
C 31354,2 ...
C 31356,1 ...
C 31357,3 Point HL at table of routine start addresses for Magic Knight's main menu commands
C 31360,1 Add double index of selected command as offset
C 31361,1 Load address of appropriate command processing routine into HL...
C 31362,1 ...
C 31363,1 ...
C 31364,1 ...
C 31365,1 Set last key pressed to null...
C 31366,3 ...
C 31369,1 Jump to routine to process selected command
c 31370 Process Command to Examine an Object, a Character or Magic Knight
C 31370,3 Play upward scale sound
C 31373,3 Set Gimbal-White-Out Safe Flag...
C 31376,2 ...
C 31378,3 ...
C 31381,3 Display / update command summary window at bottom of screen
C 31384,3 Point DE at "EXAMINE" text...
C 31387,3 ...and print in Command Summary Window at bottom of screen
C 31390,2 Display "EXAMINE WHAT?" menu window...
C 31392,3 ...
C 31395,3 Print "EXAMINE WHAT? ... O OBJECT ... C CHARACTER ... S YOURSELF" text...
C 31398,3 ...
C 31401,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 31404,2 If "O" pressed (i.e. EXAMINE OBJECT)...
C 31406,3 ...then skip ahead to #R31548
C 31409,2 If "C" pressed (i.e. EXAMINE CHARACTER)...
C 31411,3 ...then skip ahead to #R31452
N 31414 Examine Yourself
C 31414,3 Point DE at "YOURSELF" text...
C 31417,3 ...and print in Command Summary Window at bottom of screen
C 31420,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 31423,2 Draw window 18...
C 31425,3 ...
C 31428,2 Store 14 in current character memory slot...
C 31430,3 ...as 14 is the position of "MAGIC KNIGHT" text relative to start of characters' short names in common words table
C 31433,3 Point HL at percentage completion text
C 31436,3 Point DE at time left text
C 31439,3 Insert current time and score into "TIME LEFT" and "PERCENTAGE COMPLETION" texts
C 31442,3 Point HL at Magic Knight's current stats
C 31445,1 Load 0 (index of Magic Knight Frame 1 [right] in Graphics Lookup Data table at #R42642) into instruction at #R31537...
C 31446,3 ...
C 31449,3 Skip ahead to #R31484
N 31452 Examine Character
C 31452,3 Point HL at "EXAMINE ?" text
C 31455,3 Set DE to zero so Command Summary Window is not updated with additional text
C 31458,3 Display and process input for character selection menu (current room's characters only), setting Current Character
C 31461,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 31464,2 Draw window 18...
C 31466,3 ...
C 31469,3 Load A with index of Current (selected) Character
C 31472,2 Add 69 to index of selected character (as 69 is index of first character in Graphics Lookup Data table at #R42642)...
C 31474,3 ...and load into instruction at #R31537
C 31477,2 Subtract 69 to revert to index of character
C 31479,2 Point HL at strength of the character...
C 31481,3 ...
C 31484,3 Insert numeric stats (at HL) of a character into "EXAMINE CHARACTER" window text
C 31487,1 Store HL (points to start of character's current stats)
C 31488,3 Print Examine Character window text (i.e. "EXAMINE [CHARACTER] ... STRENGTH XX..." text)...
C 31491,3 ...
C 31494,2 Restore IX (points to start of character's current stats)
C 31496,3 If character's Asleep Flag is set...
C 31499,2 ...
C 31501,3 ...then skip ahead to #R31507
C 31504,3 Load A with index of character's Current Status Text
C 31507,2 Reset bit 7 of A (if character is asleep, then A holds the value from IX+6 with bit 7 set. Resetting bit 7 leaves 12, index of "[CHARACTER] IS ASLEEP" text)
C 31509,1 ...and load into B
C 31510,3 Point HL at start of characters' "current status" texts
C 31513,3 Advance HL to B-th entry in list of zero-terminated strings
C 31516,3 Print text at HL
C 31519,2 Draw window 19...
C 31521,3 ...
C 31524,3 Load C with x-coordinate of left edge of current window to draw (characters)...
C 31527,1 ...
C 31528,3 Load B with y-coordinate of top edge of current window to draw (characters)...
C 31531,1 ...
C 31532,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 31534,3 ...
N 31537 The operand of the instruction at #R31537 represents the graphic index of the selected character. This is modified by the instructions at #R31446 and #R31474.
C 31537,2 Draw the selected character...
C 31539,3 ...
C 31542,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 31545,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
N 31548 Examine Object
C 31548,4 Point IX at Magic Knight's inventory
C 31552,2 Load B with 5 (as there are 5 inventory slots)
C 31554,3 Point HL at "EXAMINE WHICH OBJECT?" text
C 31557,3 Set DE to zero so Command Summary Window is not updated with additional text
C 31560,3 Show list of objects (window or menu) and handle selection if a menu
C 31563,3 Point HL at Magic Knight's inventory
C 31566,3 Point DE at name of a selected object in object names table and print in command summary window
C 31569,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 31572,3 Load A with index of Current Object
C 31575,2 Load E with 0 (Weight)
C 31577,3 Point HL to weight of object A
C 31580,3 Insert numeric / text stats of an object into "EXAMINE OBJECT" window text
C 31583,2 Draw window 20...
C 31585,3 ...
C 31588,3 Print "      EXAMINE" text...
C 31591,3 ...
C 31594,3 Load B with index of Current Object...
C 31597,1 ...
C 31598,3 Advance HL to B-th entry in object names table
C 31601,3 Print the object's name
C 31604,3 Print " EXAMINE" text...
C 31607,3 ...
C 31610,2 Draw window 21...
C 31612,3 ...
C 31615,3 Load C with x-coordinate of left edge of current window to draw (characters)...
C 31618,1 ...
C 31619,3 Load B with y-coordinate of top edge of current window to draw (characters)...
C 31622,1 ...
C 31623,1 Increase y-coordinate so object is drawn within the window rather than overlapping the upper frame
C 31624,3 Load A with index of Current Object
C 31627,3 Set Terrain Interaction Data for character blocks spanned by the object and draw the object
C 31630,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 31633,3 reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 31636 Process and Execute Command to Command a Character
C 31636,3 Check Magic Knight's action flags...
C 31639,2 ...and if he can't command...
C 31641,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 31644,3 Play upward scale sound
C 31647,3 Point HL at "COMMAND ?" text
C 31650,3 Point DE at "COMMAND" text
C 31653,3 Display and process input for character selection menu (current room's characters only), setting Current Character
C 31656,3 Point DE at "TO" text...
C 31659,3 ...and print in Command Summary Window at bottom of screen
C 31662,2 Display "WHICH COMMAND DO YOU WANT TO USE" (Command [CHARACTER] to...) menu window...
C 31664,3 ...
C 31667,3 Print "WHICH COMMAND DO YOU WANT TO USE" + "A GO TO SLEEP ... B WAKE UP ..." etc. text...
C 31670,3 ...
C 31673,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 31676,2 Subtract 65 (ASCII code for "A") to leave index of selected command
C 31678,3 Set index of "Command a character" routine to jump to later
C 31681,1 Copy into B
C 31682,3 Advance HL to the B-th entry in list of option texts from "Command a character" menu
C 31685,1 Swap DE (now points to selected command's "Command a character" menu text) and HL (now undefined)
C 31686,3 ...and print in Command Summary Window at bottom of screen
C 31689,3 Load A with index of Current Character [bug]
C 31692,3 Display Execute / Reject Command window and return if Execute chosen, else exit
N 31695 The operand of the instruction at #R31695 represents the index of the "Command a Character" routine to jump to as stored previously. This is modified by the instruction at #R31678.
C 31695,2 Load A with index of "Command a Character" routine to jump to...
C 31697,1 ...double it (as entries are two bytes wide)...
C 31698,1 ...and load it into DE...
C 31699,2 ...
C 31701,3 Point HL to start of "Magic Knight command a character to..." routines table
C 31704,1 Add offset to obtain entry of interest
C 31705,1 Load address at this location into HL...
C 31706,1 ...
C 31707,1 ...
C 31708,1 ...
C 31709,1 ...and jump to it
b 31710 Table of Routine Addresses for Magic Knight Commanding Characters
W 31710,2,2 Go to sleep routine
W 31712,2,2 Wake up routine
W 31714,2,2 Go away routine
W 31716,2,2 Help routine
W 31718,2,2 Eat & Drink
W 31720,2,2 Be happy routine
c 31722 Send Current Character to Sleep if Possible
C 31722,3 Load A with index of Current Character
C 31725,2 Point HL at strength...
C 31727,3 ...of character whose index is A
C 31730,1 Switch pointer from HL to IX...
C 31731,2 ...
C 31733,4 If "Character is Asleep" flag is set...
C 31737,3 ...then display "[CHARACTER] IS ALREADY ASLEEP" window and exit
C 31740,3 Load A with stamina of Current Character...
C 31743,2 ...and if this is at least 70...
C 31745,3 ...then display "[CHARACTER] IS TOO WAKEFUL TO SLEEP" window and exit
C 31748,3 Load A with the happiness of Current Character...
C 31751,2 ...and if this is anything up to 30...
C 31753,3 ...then display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" window and exit
C 31756,4 Set the character's "asleep flag"
C 31760,3 Display "[CHARACTER] HAS GONE TO SLEEP" window and exit
c 31763 Wake Current Character Up if Possible
C 31763,3 Load A with index of Current Character
C 31766,2 Point HL at strength...
C 31768,3 ...of character whose index is A
C 31771,1 Switch pointer from HL to IX...
C 31772,2 ...
C 31774,4 If "Character is Asleep" flag is not set...
C 31778,3 ...then display "[CHARACTER] IS ALREADY AWAKE" window and exit
C 31781,3 Load A with stamina of Current Character...
C 31784,2 ...and if this is anything up to 30...
C 31786,3 ...then display "[CHARACTER] IS TOO TIRED TO WAKE UP" window and exit
C 31789,3 Load A with the happiness of Current Character...
C 31792,2 ...and if this is anything up to 30...
C 31794,3 ...then display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" window and exit
C 31797,4 Reset the character's "asleep flag"
C 31801,3 Display "[CHARACTER] HAS WOKEN UP" window and exit
c 31804 Make Current Character Go Away if Possible
C 31804,3 Check if Current Character is asleep and display "[CHARACTER] IS ASLEEP" window if so
C 31807,3 Load A with index of Current Character
C 31810,2 Point HL at strength...
C 31812,3 ...of character whose index is A
C 31815,1 Switch pointer from HL to IX...
C 31816,2 ...
C 31818,3 Load A with stamina of Current Character...
C 31821,2 ...and if this is anything less than 20...
C 31823,3 ...then display "[CHARACTER] IS TOO TIRED TO GO AWAY" window and exit
C 31826,3 Load A with the happiness of Current Character...
C 31829,2 ...and if this is anything up to 20...
C 31831,3 ...then display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" window and exit
C 31834,3 Point HL at current position data for Current Character
C 31837,2 Change current room number for Current Character to 99
C 31839,3 Display "[CHARACTER] HAS GONE AWAY" window
c 31842 Execute Current Character's Help Routine if Possible
C 31842,3 Check if Current Character is asleep and display "[CHARACTER] IS ASLEEP" window if so
C 31845,2 Set last character of "[CHARACTER] CANNOT HELP YOU..." text to a space (32)...
C 31847,3 ...
C 31850,3 Load A with index of Current Character
C 31853,2 If character is 7 (Banshee)...
C 31855,2 ...jump ahead to #R31888 (overriding following section, as Banshee always has zero strength)
C 31857,2 Point HL at strength...
C 31859,3 ...of character whose index is A
C 31862,1 Switch pointer from HL to IX...
C 31863,2 ...
C 31865,3 Load A with character's "can help" flag
C 31868,1 If "can help" flag is reset...
C 31869,3 ...then display "[CHARACTER] CANNOT HELP YOU" window and return to game
C 31872,3 Load A with stamina of Current Character...
C 31875,2 ...and if this is anything up to 20...
C 31877,3 ...then display "[CHARACTER] IS TOO TIRED TO HELP YOU" window and exit
C 31880,3 Load A with the happiness of Current Character...
C 31883,2 ...and if this is anything up to 10...
C 31885,3 ...then display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" window and exit
C 31888,3 Load DE with double the index of the Current Character...
C 31891,1 ...
C 31892,1 ...
C 31893,2 ...
C 31895,3 Point HL at table of help routine addresses
C 31898,1 ...and add double the character index to get specific entry for that character
C 31899,1 Load the routine's address into HL...
C 31900,1 ...
C 31901,1 ...
C 31902,1 ...
C 31903,1 ...and jump to it
b 31904 Table of Start Addresses of Routines for Characters Being Commanded to Help
W 31904,2,2 Gimbal help routine
W 31906,2,2 Thor help routine
W 31908,2,2 Florin help routine
W 31910,2,2 Orik help routine
W 31912,2,2 Samsun help routine
W 31914,2,2 Elrand help routine
W 31916,2,2 Rosmar help routine
W 31918,2,2 Banshee help routine
c 31920 Make Current Character Eat & Drink if Possible
C 31920,3 Check if Current Character is asleep and display "[CHARACTER] IS ASLEEP" window if so
C 31923,3 Load A with index of Current Character
C 31926,2 Point HL at strength...
C 31928,3 ...of character whose index is A
C 31931,1 Switch pointer from HL to IX...
C 31932,2 ...
C 31934,3 Load A with food level of Current Character
C 31937,1 If food level is zero...
C 31938,3 ...then display "[CHARACTER] HAS NO FOOD LEFT" window and exit
C 31941,3 Load A with stamina of Current Character...
C 31944,2 ...and if this is anything up to 20...
C 31946,3 ...then display "[CHARACTER] IS TOO TIRED TO EAT OR DRINK" window and exit
C 31949,3 Load A with the happiness of Current Character...
C 31952,2 ...and if this is anything up to 30...
C 31954,3 ...then display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" window and exit
C 31957,3 Load A with the strength of Current Character...
C 31960,2 ...and if this is equal to 100...
C 31962,3 ...then display "[CHARACTER] HAS TAKEN REFRESHMENT" window and exit
C 31965,3 Decrease food level by one
C 31968,3 Increase strength by one
C 31971,3 If food level is not zero...
C 31974,1 ...
C 31975,2 ...then loop back to #R31957
C 31977,3 ...then display "[CHARACTER] HAS TAKEN REFRESHMENT" window and exit
c 31980 Make Current Character Be Happy if Possible
C 31980,3 Check if Current Character is asleep and display "[CHARACTER] IS ASLEEP" window if so
C 31983,3 Load A with index of Current Character
C 31986,2 Point HL at strength...
C 31988,3 ...of character whose index is A
C 31991,1 Switch pointer from HL to IX...
C 31992,2 ...
C 31994,3 Load A with stamina of Current Character...
C 31997,2 ...and if this is anything up to 30...
C 31999,3 ...then display "[CHARACTER] IS TOO TIRED TO BE HAPPY" window and exit
C 32002,3 Load A with the happiness of Current Character...
C 32005,2 ...and if this is anything up to 5...
C 32007,3 ...then display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" window and exit
C 32010,3 Load A with index of Current Character...
C 32013,1 ...and copy into DE...
C 32014,2 ...
C 32016,3 Point HL to table of default happiness levels...
C 32019,1 ...and add character index as offset
C 32020,1 Load entry into A...
C 32021,3 ...and set happiness of Current Character to this value
C 32024,3 Display "[CHARACTER] WILL TRY TO BE HAPPY" window
b 32027 Table of Characters' Default Happiness Levels
B 32027,1,1 Gimbal's default happiness
B 32028,1,1 Thor's default happiness
B 32029,1,1 Florin's default happiness
B 32030,1,1 Orik's default happiness
B 32031,1,1 Samsun's default happiness
B 32032,1,1 Elrand's default happiness
B 32033,1,1 Rosmar's default happiness
B 32034,1,1 Banshee's default happiness
c 32035 Process and Execute Command to Locate a Character
C 32035,3 If "Magic Knight Can Locate" flag is not set...
C 32038,2 ...
C 32040,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 32043,3 Play upward scale sound
C 32046,3 Display / update command summary window at bottom of screen
C 32049,3 Point DE at "LOCATE" text...
C 32052,3 ...and print in Command Summary Window at bottom of screen
C 32055,3 Point HL at "LOCATE ?" text
C 32058,1 Store HL
C 32059,3 Display and handle full character selection menu
C 32062,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 32065,2 Draw window 22...
C 32067,3 ...
C 32070,3 Load A with x-coordinate of left-hand edge of window...
C 32073,2 ...add 2...
C 32075,1 ...and load into C
C 32076,3 Load A with y-coordinate of top edge of window...
C 32079,2 ...add 3...
C 32081,1 ...and load into B
C 32082,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 32084,3 ...
C 32087,2 Draw "Locate a Character" compass...
C 32089,3 ...
C 32092,3 Print "LOCATED [CHARACTER]" text...
C 32095,3 ...
C 32098,3 Point HL at current position data for Current Character
C 32101,3 Set DE to zero so Command Summary Window is not updated with additional text
C 32104,1 Load room of Current Character
C 32105,1 If room is zero (i.e. character is in the Lift)...
C 32106,3 ...then skip ahead to #R32183
C 32109,1 Discard floor information and set A to represent room number 0-7 (starting at zero for room next to Lift), i.e. room's x-coordinate...
C 32110,2 ...
C 32112,1 ...and load into B
C 32113,3 Load Magic Knight's current room into A
C 32116,1 Discard floor information and set A to represent room number 0-7 (starting at zero for room next to Lift), i.e. room's x-coordinate...
C 32117,2 ...
C 32119,1 Compare character's room x-coordinate to Magic Knight's
C 32120,2 If character's room and Magic Knight's room are at the same x-coordinate, then skip ahead to #R32131
C 32122,3 If character's room is to the right of Magic Knight's, then skip ahead to #R32129
N 32125 Character's room is to the left of Magic Knight's
C 32125,2 Load E with 254 (-2)
C 32127,2 Skip ahead to #R32131
C 32129,2 Load E with 2
C 32131,1 Load A with character's current room
C 32132,1 Decrease by one
C 32133,2 Clear all but floor information (i.e. y-coordinate)
C 32135,1 Load into B
C 32136,3 Load Magic Knight's current room into A
C 32139,1 Decrease by one
C 32140,2 Clear all but floor information (i.e. y-coordinate)
C 32142,1 Compare character's room y-coordinate to Magic Knight's
C 32143,2 If character's room and Magic Knight's room are at the same y-coordinate, then skip ahead to #R32154
C 32145,3 If character's room is below Magic Knight's, then skip ahead to #R32152
N 32148 Character's room is above Magic Knight's
C 32148,2 Load D with 254 (-2)
C 32150,2 Skip ahead to #R32154
C 32152,2 Load D with 2
C 32154,3 Load A with y-coordinate of top edge of current window to draw (characters)  (typically 1)
C 32157,2 Add 5 to y-coordinate (now pointing at top row of middle "origin" square of "locate compass")
C 32159,1 Add D (which is either +/-2 to point to top half or bottom half of "locate compass")
C 32160,1 Load this y-coordinate into H
C 32161,3 Load A with x-coordinate of left edge of current window (typically 1)
C 32164,2 Add 4 to y-coordinate (now pointing at left column of middle "origin" square of "locate compass")
C 32166,1 Add E (which is either +/-2 to point to left half or right half of "locate compass")
C 32167,1 Load x-coordinate into L
C 32168,3 Store HL at 23462
C 32171,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 32174,3 Set word at 23462 to zero...
C 32177,3 ...
C 32180,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
C 32183,3 Print "IN THE LIFT" text...
C 32186,3 ...
C 32189,3 Set H to 6 and L to 3 (as Lift is always left of Magic Knight's current room when he's not in the Lift!)
C 32192,2 Skip back to display the compass
c 32194 Process and Execute Command to Teleport
C 32194,3 If "Magic Knight Can Teleport" flag is not set then...
C 32197,2 ...
C 32199,3 ...jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 32202,3 Play upward scale sound
C 32205,3 Display / update command summary window at bottom of screen
C 32208,3 Point DE at "TELEPORT" text...
C 32211,3 ...and print in Command Summary Window at bottom of screen
C 32214,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 32217,3 Get current location (room) of Teleport Pad...
C 32220,2 ...and if this is set to 99...
C 32222,3 ...Display "IT IS NOT SAFE TO TELEPORT TRY AGAIN LATER" window and exit
C 32225,3 Point HL to current position data of Teleport Pad
C 32228,1 Load A with current location (room) of Teleport Pad...
C 32229,3 ...then update Magic Knight's current room to match
C 32232,1 Advance HL to x-coordinate of Teleport Pad...
C 32233,1 ...and load this into A
C 32234,1 Multiply x-coordinate by eight...
C 32235,1 ...
C 32236,1 ...
C 32237,3 ...and update Magic Knight's current x-coordinate to match
C 32240,1 Advance HL to y-coordinate of Teleport Pad...
C 32241,1 ...and load this into A
C 32242,2 Subtract three (because Magic Knight is four character blocks tall)...
C 32244,1 ...then multiply by eight...
C 32245,1 ...
C 32246,1 ...
C 32247,3 ...then update Magic Knight's current y-coordinate to match
C 32250,2 Set "Animate Magic Knight's Puff of Smoke Appearance on Next Room Redraw" flag...
C 32252,3 ...
C 32255,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 32258 Process and Execute Command to Read an Object
C 32258,3 If "Magic Knight Can Read" flag is not set...
C 32261,2 ...
C 32263,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 32266,3 Play upward scale sound
C 32269,4 Point IX at start of Magic Knight's inventory
C 32273,2 Load B with 5 (as there are five inventory slots)
C 32275,3 Point HL at "READ WHICH OBJECT?" text
C 32278,3 Point DE at "READ" text
C 32281,3 Show list of objects (window or menu) and handle selection if a menu
C 32284,3 Point HL at Magic Knight's inventory
C 32287,3 Point DE at name of a selected object in object names table and print in command summary window
C 32290,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 32293,3 Load A with index of Current Object
C 32296,2 If Current Object is 41 (Instruction Book)...
C 32298,3 ...then display instructions
C 32301,2 If Current Object is not 1 (Ancient Scroll)...
C 32303,2 ...then skip ahead to #R32326
C 32305,3 If the Engraved Candle is not lit...
C 32308,2 ...
C 32310,3 ...then skip ahead to #R32361 (display normal read-text)
C 32313,2 Load A with index of object 33 (Engraved Candle)
C 32315,3 Check whether Magic Knight is carrying the Engraved Candle...
C 32318,3 ...and if not, skip to #R32361 (display normal read-text)
C 32321,2 Set text index to 8 (full Ancient Scroll text)
C 32323,3 Point HL at this text, then return
C 32326,2 If Current Object is not 33 (Engraved Candle)...
C 32328,3 ... then skip ahead to #R32344
C 32331,2 Load A with index of object 14 (Broken Glass)
C 32333,3 Check whether Magic Knight is carrying the Broken Glass...
C 32336,3 ...and if not, skip to #R32361
C 32339,2 Set text index to 9 (Engraved Candle text)
C 32341,3 Point HL at this text, then return
C 32344,2 If Current Object is not 13 (Runestone)...
C 32346,2 ...then skip ahead to #R32361
C 32348,2 Load A with index of object 15 (Book of Runes)
C 32350,3 Check whether Magic Knight is carrying the Book of Runes...
C 32353,3 ...and if not, skip to #R32361
C 32356,2 Set text index to 10 (full Runestone text)
C 32358,3 Point HL at this text, then return
C 32361,3 Load A with index of Current Object
C 32364,2 Load E with 2 (Read text)
C 32366,3 Point HL to read text property of object A
C 32369,2 If bit 7 is reset (i.e. value at HL is less than 128 so the object can't be read)...
C 32371,3 ...then jump to #R34576 (display "THERE IS NO WRITING FOR ME TO READ" window and return to game)
C 32374,1 Load value into B...
C 32375,2 ...resetting bit 7 to leave index of text required...
C 32377,1 ...
C 32378,3 Advance HL to B-th entry in list of readable objects' texts at 47322 then return
C 32381,3 Display window showing read-text window
C 32384,3 Display instructions
C 32387,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 32390 Process and Execute Command to Throw an Object
C 32390,3 If "Magic Knight Can Throw" flag is not set...
C 32393,2 ...
C 32395,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 32398,3 Play upward scale sound
C 32401,3 Set Gimbal-White-Out Safe Flag...
C 32404,2 ...
C 32406,3 ...
C 32409,4 Point IX at Magic Knight's inventory
C 32413,2 Load B with 5 (as 5 inventory slots)
C 32415,3 Point HL at "THROW WHICH OBJECT" text
C 32418,3 Point DE at "THROW" text
C 32421,3 Show list of objects (window or menu) and handle selection if a menu
C 32424,3 Point HL at Magic Knight's inventory
C 32427,3 Point DE at name of a selected object in object names table and print in command summary window
C 32430,3 Point DE at "AT" text...
C 32433,3 ...and print in Command Summary Window at bottom of screen
C 32436,3 Point HL at "THROW AN OBJECT AT ?" text
C 32439,3 Set DE to zero so Command Summary Window is not updated with additional text
C 32442,3 Display and process input for character selection menu (current room's characters only), setting Current Character
C 32445,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 32448,3 Load A with index of Current Object
C 32451,2 Load E with 0 (Weight)
C 32453,3 Point HL to weight of object A
C 32456,1 Copy HL...
C 32457,2 ...into IX
C 32459,3 Load A with object's weight
C 32462,2 If object has weight greater than 12...
C 32464,3 ...then kill Magic Knight and end game
C 32467,4 If bit 4 (object is lethal if thrown) of object's use status is set...
C 32471,3 ...then kill the character who object was thrown at and end game
C 32474,4 If bit 5 (object is a crystal) of object's use status is not set...
C 32478,2 ...then skip ahead to #R32487
C 32480,3 If target of throw is Gimbal...
C 32483,1 ...
C 32484,3 ...then skip ahead to #R32555
C 32487,3 If object thrown is not the Glowing Bottle...
C 32490,2 ...
C 32492,3 ...then skip ahead to #R32499
C 32495,3 Remove Glowing Bottle from Magic Knight's inventory, smash it and release Banshee
C 32498,1 Load index of Broken Glass into A (Current Object)
C 32499,1 Load index of Current Object into C
C 32500,1 Store BC (C=Current Object)
C 32501,2 Load B with 5
C 32503,3 Point HL at Magic Knight's inventory
C 32506,3 Remove object C from Magic Knight's inventory (and tidy up remainder of slots)
C 32509,1 Restore BC (C=Current Object)
C 32510,1 Copy index of Current Object into A...
C 32511,1 ...and multiply by three...
C 32512,1 ...
C 32513,1 Transfer into BC...
C 32514,2 ...
C 32516,3 Point HL to Objects' Current Positions Table
C 32519,1 Add three times Current Object's index as offset
C 32520,3 Set object's room to be Magic Knight's current room...
C 32523,1 ...
C 32524,1 Advance HL to object's x-coordinate
C 32525,1 Store HL (pointer to x-coordinate)
C 32526,3 Load BC with three times index of character who was target of throw...
C 32529,1 ...
C 32530,1 ...
C 32531,1 ...
C 32532,2 ...
C 32534,1 ...
C 32535,3 Point HL at x-coordinate of first entry in characters' current positions table
C 32538,1 Add BC (three times character index) as offset
C 32539,1 Swap DE (now pointer to Current Character's x-coordinate) and HL (now undefined)
C 32540,1 Restore HL (pointer to object's x-coordinate)
C 32541,1 Copy character's x-coordinate...
C 32542,1 ...into object's x-coordinate
C 32543,1 Advance to character's y-coordinate
C 32544,1 Advance to object's y-coordinate
C 32545,1 Copy character's y-coordinate plus three...
C 32546,2 ...
C 32548,1 ...into object's y-coordinate
C 32549,3 Set Magic Knight's available action flags
C 32552,3 Display "THE [OBJECT] LANDED ON THE FLOOR BY [CHARACTER]" window and return to game
C 32555,3 If "Crystallium Spectralis cast" score flag is not set...
C 32558,2 ...
C 32560,3 ...then display "YOU HEAR A SHORT-RANGE TELEPATHIC WHISPER..." message and return to game
C 32563,3 Load A with index of Current Object
C 32566,2 Set Blue and Red Crystal Flags, reset Green Crystal Flag in mask
C 32568,2 If object is the Green Crystal...
C 32570,2 ...then skip ahead to #R32580
C 32572,2 Set Green and Blue Crystal Flags, reset Red Crystal Flag in mask
C 32574,2 If object is the Red Crystal...
C 32576,2 ...then skip ahead to #R32580
C 32578,2 Set Green and Red Crystal Flags, reset Blue Crystal Flag in mask
C 32580,3 Load Gimbal's current attribute into A...
C 32583,1 ...apply mask...
C 32584,3 ...and store again
C 32587,1 Store AF (A=Gimbal's current attribute)
C 32588,3 Load C with index of Current Object...
C 32591,1 ...
C 32592,2 Load B with 5 as there are 5 inventory slots
C 32594,3 Point HL at Magic Knight's inventory
C 32597,3 Remove Current Object from Magic Knight's inventory and tidy up slots
C 32600,1 Restore AF (A=current R, G and B Crystal Flags)
C 32601,2 If R, G and B PAPER bits of Gimbal's attribute are not all reset...
C 32603,2 ...skip ahead to #R32624
C 32605,3 Set Gimbal is Free game progress flag...
C 32608,2 ...
C 32610,3 ...
C 32613,2 Set Gimbal's "Examine Character" descriptive text to...
C 32615,3 ...
C 32618,3 Flash border and screen (as in cast a spell)
C 32621,3 Display "SUCCESS! GIMBAL IS FREE AT LAST!" window and return to game
C 32624,3 Flash border and screen (as in cast a spell)
C 32627,3 Load A with index of Current Object
C 32630,2 If object is the Blue Crystal...
C 32632,3 ...then display "THE BLUE CRYSTAL FLEW AT GIMBAL AND BURST..." window and return to game
C 32635,2 If object is the Red Crystal...
C 32637,3 ...then display "THE RED CRYSTAL FLEW STRAIGHT AT GIMBAL AND TURNED INTO A GAS..." window and return to game
C 32640,3 Display "THE GREEN CRYSTAL FLEW AT GIMBAL AND SUCKED..." window and return to game
C 32643,3 Point HL at "YOU KILLED YOURSELF TRYING TO THROW SOMETHING AT [CHARACTER]" text
C 32646,3 Jump to "Game over" window routine and exit
C 32649,3 Point HL at "YOU THREW SOMETHING AND KILLED [CHARACTER]" text
C 32652,3 Jump to "Game over" window routine and exit
c 32655 Process and Execute Command to Cast a Spell
C 32655,3 If "Magic Knight Can Cast a Spell" flag is not set...
C 32658,2 ...
C 32660,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 32663,3 Play upward scale sound
C 32666,3 Display / update command summary window at bottom of screen
C 32669,3 Point DE at "CAST A SPELL" text...
C 32672,3 ...and print in Command Summary Window at bottom of screen
C 32675,3 Point HL at byte before "WHICH SPELL DO YOU WANT TO CAST?" full menu text
C 32678,1 Load data into position of right edge of window data for "Cast a Spell" window...
C 32679,3 ...
C 32682,1 Advance HL to start of actual text
C 32683,1 Store HL (pointer to menu text)
C 32684,2 Draw the "Cast a Spell" window...
C 32686,3 ...
C 32689,1 Restore HL (pointer to menu text)
C 32690,3 Print the text
C 32693,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 32696,2 Subtract ASCII value of "A" to get numeric index of option selected
C 32698,3 Store index of spell selected in this routine at #R32725
C 32701,2 If spell number 4 (Project Physical Body) is selected...
C 32703,2 ...then skip ahead to #R32725 (as command summary window shows "PROJECT PHYSICAL BODY TO..." rather than "CAST..." as with all other spells)
C 32705,3 Display / update command summary window at bottom of screen
C 32708,3 Point HL at "CAST CRYSTALLIUM SPECTRALIS" text (i.e. first in list of "CAST [SPELL]" strings)
C 32711,3 Load index of spell selected into B...
C 32714,1 ...
C 32715,3 Advance HL to B-th entry in list of zero-terminated strings
C 32718,1 Swap DE (now points to "CAST [SPELL]" text) and HL (now points to "CAST A SPELL" text)
C 32719,3 ...and print in Command Summary Window at bottom of screen
C 32722,3 Display Execute / Reject Command window and return if Execute chosen, else exit
N 32725 The operand of the instruction at #R32725 represents the index of the spell to cast. This is modified by the instruction at #R32698.
C 32725,2 Load A with index of spell to cast
C 32727,1 If spell is Crystallium Spectralis...
C 32728,3 ...then cast Crystallium Spectralis if possible, else display failure message
C 32731,2 If spell is Candelium Illuminatus...
C 32733,3 ...then jump to #R32823
C 32736,2 If spell is Armouris Photonicus...
C 32738,3 ...then jump to #R32903
C 32741,2 If spell is Fumaticus Protectium...
C 32743,3 ...then jump to #R32982
C 32746,2 If spell is Project Physical Body...
C 32748,3 ...then jump to #R33036
C 32751,2 If spell is Release Spell...
C 32753,3 ...then jump to #R33129
C 32756,2 If spell is Quiticus Gamus...
C 32758,3 ...then jump to #R33269
C 32761,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 32764 Cast Crystallium Spectralis if Possible, else Display Failure Message
D 32764 Used by the routine at #R32655.
C 32764,3 If "Gimbal is free" flag is set...
C 32767,2 ...
C 32769,3 ...then display "GIMBAL IS ALREADY FREE..." window and exit
C 32772,3 ...else load A with Magic Knight's current room
C 32775,1 Copy into B
C 32776,3 Load A with Gimbal's current room
C 32779,1 Check if Gimbal and Magic Knight are in the same room...
C 32780,3 ...and if they aren't then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32783,3 Load A with Orik's current room
C 32786,1 Check if Orik and Magic Knight are in the same room...
C 32787,3 ...and if they aren't then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32790,2 Load A with 6 (index for Crystal Ball)
C 32792,3 Point HL at Orik's current inventory
C 32795,3 If Orik is not carrying the Crystal Ball then...
C 32798,3 ...display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32801,2 Load A with index of object 32 (White Gold Ring)
C 32803,3 Check whether Magic Knight is carrying the White Gold Ring...
C 32806,3 ...and if not, display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32809,3 Flash border and screen (as in cast a spell)
C 32812,3 Set bit 0 of score progress flags...
C 32815,2 ...
C 32817,3 ...
C 32820,3 Display "THE SPELL HAS WORKED!  GIMBAL IS NEARLY FREE" window and return to game
c 32823 Cast Candelium Illuminatus if Possible, else Display Failure Message
D 32823 Used by the routine at #R32655.
C 32823,3 If Engraved Candle is lit (i.e. Candelium Illuminatus has been cast)...
C 32826,2 ...
C 32828,3 ...then display "THE CANDLE IS ALREADY ALIGHT" message and exit
C 32831,3 Load A with the current screen containing the Four Leaf Clover
C 32834,1 Copy into C
C 32835,3 Load A with Magic Knight's current room...
C 32838,1 ...and if Magic Knight is not in the same room as the Four Leaf Clover...
C 32839,3 ...then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32842,2 Load A with index of object 33 (Engraved Candle)
C 32844,3 Check whether Magic Knight is carrying the Engraved Candle...
C 32847,3 ...and if not, display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32850,3 Flash border and screen (as in cast a spell)
C 32853,2 Load A with index of object 47 (Shield)
C 32855,3 Check whether Magic Knight is carrying the Shield...
C 32858,2 ...and if not then kill Magic Knight with exploding candle, exiting to Game Over routine...
C 32860,3 ...else...
C 32863,2 ...set the "Engraved Candle lit" flag
C 32865,3 Set bit 1 of score progress flags...
C 32868,2 ...
C 32870,3 ...
C 32873,3 Display "WELL DONE, THE CANDLE IS NOW GLOWING..." window and return to game
c 32876 Kill Magic Knight with Exploding Candle
D 32876 Used by the routine at #R32823.
C 32876,3 Load number of rows spanned by "BOOM! THE CANDLE BLEW UP..." text into A...
C 32879,1 ...
C 32880,3 ...and adjust height of window 35 accordingly
C 32883,1 Advance HL to start of actual text
C 32884,2 Prepare to draw window 35
C 32886,1 Store HL (pointer to text)
C 32887,3 Draw window 35
C 32890,1 Restore HL (pointer to text)
C 32891,3 Print the text in the window
C 32894,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 32897,3 Point HL at "YOU BLEW YOURSELF UP" text
C 32900,3 Jump to "Game over" window routine and exit
c 32903 Cast Armouris Photonicus if Possible, else Display Failure Message
D 32903 Used by the routine at #R32655.
C 32903,3 If "Armouris Photonicus cast" flag is set...
C 32906,2 ...
C 32908,3 ...then display "YOUR ARMOUR IS ALREADY GLOWING" message and return to game
C 32911,3 Else load Magic Knight's current room into B...
C 32914,1 ...
C 32915,3 Load current room of Strange Liquid into A
C 32918,1 If the rooms are different...
C 32919,3 ...then display "THAT SPELL CANNOT YET BE CAST..." message and return to game
C 32922,3 Load Magic Knight's coordinates (in characters) into DE
C 32925,3 Compare y-coordinates of Magic Knight and Strange Liquid...
C 32928,1 ...
C 32929,3 ...and if they are different then display "THAT SPELL CANNOT YET BE CAST..." message and return to game
C 32932,3 Compare x-coordinates of Magic Knight and Strange Liquid...
C 32935,1 ...
C 32936,1 ...
C 32937,2 ...and if x-coordinate of Strange Liquid is one more than Magic Knight's x-coordinate then skip ahead to #R32950
C 32939,1 If x-coordinate of Strange Liquid is the same as Magic Knight's x-coordinate...
C 32940,1 ...
C 32941,2 ...then skip ahead to #R32950
C 32943,1 If x-coordinate of Strange Liquid is one less than Magic Knight's x-coordinate...
C 32944,1 ...
C 32945,2 ...then skip ahead to #R32950
C 32947,3 Display "THAT SPELL CANNOT YET BE CAST..." message and return to game
C 32950,3 Set "Armouris Photonicus cast" flag...
C 32953,2 ...
C 32955,3 Flash border and screen (as in cast a spell)
C 32958,3 Set bit 2 of score progress flags...
C 32961,2 ...
C 32963,3 ...
C 32966,2 Set room of Strange Liquid to 99 (i.e. remove it from the game)...
C 32968,3 ...
C 32971,2 Load A with 71 (white INK, black PAPER, BRIGHT)...
C 32973,3 ...and apply this attribute to Broken Glass...
C 32976,3 ...and Teleport Pad
C 32979,3 Display "THE LIQUID TURNED INTO A VAPOUR..." window and return to game
c 32982 Cast Fumaticus Protectium if Possible, else Display Failure Message
D 32982 Used by the routine at #R32655.
C 32982,3 If "Fumaticus Protectium cast" flag is set then...
C 32985,2 ...
C 32987,3 Jump to #R34682
C 32990,3 Load current time left (hours) into A
C 32993,2 Compare to 48
C 32995,3 If time left is 48 hours, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 32998,2 Load A with index of object 46 (Power-Pong Plant)
C 33000,3 Check whether Magic Knight is holding the Power-Pong Plant...
C 33003,3 ...and if not, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 33006,2 Load A with index of object 19 (Red Herring)
C 33008,3 Check whether Magic Knight is holding the Red Herring...
C 33011,3 ...and if not, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 33014,3 Flash border and screen (cast spell effect)
C 33017,3 Set "Fumaticus Protectium has been cast" flag...
C 33020,2 ...
C 33022,3 ...
C 33025,3 Set bit 3 of score progress flags...
C 33028,2 ...
C 33030,3 ...
C 33033,3 Display Fumaticus Protectium successful window
c 33036 Cast Project Physical Body if Possible, else Display Failure Message
D 33036 Used by the routine at #R32655.
C 33036,3 Display / update command summary window at bottom of screen
C 33039,3 Point DE at "PROJECT PHYSICAL BODY TO" text...
C 33042,3 ...and print in Command Summary Window at bottom of screen
C 33045,3 Point HL at "TRAVEL TO ?" text
C 33048,1 Store HL
C 33049,3 Display and handle full character selection menu
C 33052,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 33055,2 Load A with index of object 6 (Crystal Ball)
C 33057,3 Check whether Magic Knight is holding the Crystal Ball...
C 33060,3 ...and if not, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 33063,2 Load A with index of object 12 (Magic Talisman)
C 33065,3 Check whether Magic Knight is holding the Magic Talisman...
C 33068,3 ...and if not, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 33071,3 Load A with index of Current Character...
C 33074,1 ...and copy into B
C 33075,1 Multiply index by three...
C 33076,1 ...
C 33077,2 ...and load into BC...
C 33079,1 ...
C 33080,3 Point HL at characters' current locations table
C 33083,1 Add three times index of Current Character as offset to this address (as entries are three bytes wide)
C 33084,3 If Magic Knight's current room...
C 33087,1 ...is the same as the Current Character's current room...
C 33088,3 ...then display the "THAT SPELL CANNOT YET BE CAST..." window and return to game
C 33091,1 If Current Character's room is set to 99...
C 33092,2 ...
C 33094,3 ...then display the "THAT SPELL CANNOT YET BE CAST..." window and return to game
C 33097,2 If Current Character's room is set to 100...
C 33099,3 ...then display the "THAT SPELL CANNOT YET BE CAST..." window and return to game
C 33102,3 Make Magic Knight's current room same as that for Current Character
C 33105,1 Advance to next byte
C 33106,1 Load Current Character's x-coordinate into A
C 33107,1 Add two...
C 33108,1 ...
C 33109,1 ...and multiply by eight...
C 33110,1 ...
C 33111,1 ...
C 33112,3 ...and set as Magic Knight's x-coordinate
C 33115,1 Advance to next byte
C 33116,1 Load Current Character's y-coordinate into A
C 33117,1 Multiply this by eight...
C 33118,1 ...
C 33119,1 ...
C 33120,3 ...and set as Magic Knight's y-coordinate
C 33123,3 Flash border and screen (as in cast a spell)
C 33126,3 Display Project Physical Body successful window and return to game
c 33129 Cast Release Spell if Possible, else Display Failure Message
D 33129 Used by the routine at #R32655.
C 33129,3 If any of Crystallium Spectralis, Candelium Illuminatus, Armouris Photonicus or Fumaticus Protectium have not been cast...
C 33132,2 ...
C 33134,3 ...then display "THAT SPELL CANNOT YET BE CAST" message and return to game
C 33137,3 If Gimbal is not free...
C 33140,2 ...
C 33142,3 ...then display "THAT SPELL CANNOT YET BE CAST" message and return to game
C 33145,2 Load A with index of object 12 (Magic Talisman)
C 33147,3 Check whether Magic Knight is holding the Magic Talisman...
C 33150,3 ...and if not, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 33153,2 Load A with index of object 32 (White Gold Ring)
C 33155,3 Check whether Magic Knight is holding the White Gold Ring...
C 33158,3 ...and if not, then display "THAT SPELL CANNOT YET BE CAST..." window and exit
C 33161,3 Set bit 4 of score progress flags...
C 33164,2 ...
C 33166,3 ...
C 33169,3 Flash border and screen (as in cast a spell)
C 33172,2 Display "GIMBAL WILL NOW SEND EACH CHARACTER BACK TO THEIR HOMES..." window...
C 33174,3 ...
C 33177,3 ...and return to game
c 33180 Show "WELL DONE MAGIC KNIGHT" Screen with Animated Starfield, Jumping to Game Over on Key-Press
D 33180 Used by the routine at #R33312.
C 33180,2 Set interrupt mode 1
C 33182,3 Increase "characters sent home" score...
C 33185,1 ...
C 33186,3 ...
C 33189,3 Flash border and screen (as in cast a spell)
C 33192,2 Draw window 36...
C 33194,3 ...
C 33197,3 Print "WELL DONE MAGIC KNIGHT..." text...
C 33200,3 ...
C 33203,3 Blank out top two thirds of Display File...
C 33206,3 ...
C 33209,3 ...
C 33212,1 ...
C 33213,2 ...
C 33215,2 Load system variable ATTR T with 71 (white INK, black PAPER, BRIGHT)...
C 33217,3 ...
C 33220,3 ...and flood top two thirds of Attribute File with this attribute...
C 33223,3 ...
C 33226,3 ...
C 33229,3 ...
C 33232,1 ...
C 33233,2 ...
C 33235,3 Set Magic Knight's x- and y-velocities to zero...
C 33238,3 ...
C 33241,3 Set Magic Knight's x-coordinate to 120 and y-coordinate to 75...
C 33244,3 ...
C 33247,1 Set Magic Knight's current frame to erase to zero (frame 0 is blank graphic data) so Magic Knight is drawn but not erased...
C 33248,3 ...
C 33251,2 Set Magic Knight's current frame to 1...
C 33253,3 ...
C 33256,1 Set A to zero (Magic Knight) and...
C 33257,3 ...draw Magic Knight (erase old frame and draw new frame)
C 33260,3 Animate starfield until a key is pressed
C 33263,3 Point HL at "YOU HAVE SUCCEEDED IN YOUR TASK..." text
C 33266,3 Jump to "Game over" window routine and exit
c 33269 Cast Quiticus Gamus Spell and Jump to Game Over
D 33269 Used by the routine at #R32655.
C 33269,3 Flash border and make sound
C 33272,3 Index of "Quiticus Gamus" game over text
C 33275,3 Jump to "Game over" window routine and exit
c 33278 Flash Border and Screen (as in Cast a Spell)
D 33278 Used by the routines at #R32390, #R32764, #R32823, #R32903, #R32982, #R33036, #R33129, #R33180, #R33269 and #R33312.
C 33278,2 Load B with 96 (number of times to repeat routine)
C 33280,3 Load DE with 608 (number of bytes to modify - i.e. top 19 rows)
C 33283,3 Point HL at start of Attribute File
C 33286,1 Load attribute byte into A
C 33287,2 Clear three lowest bits (i.e. INK colour) preserving only PAPER, BRIGHT and FLASH bits
C 33289,1 Place modified value into C
C 33290,1 Get original attribute from screen again
C 33291,1 Increase by one
C 33292,2 Clear all bits except the lowest three (i.e. INK colour)
C 33294,2 Set border colour to A
C 33296,1 Combine other bits back in
C 33297,2 Update border / speaker state
C 33299,1 Load modified value back into Attribute File
C 33300,1 Move to next byte in Attribute File
C 33301,1 Reduce DE (reducing number of attribute bytes left to modify)
C 33302,1 If DE is not zero (i.e. there are more attribute bytes to modify)...
C 33303,1 ...
C 33304,2 ...then loop back to #R33286
C 33306,2 Loop back for another pass
C 33308,1 Set A to zero
C 33309,2 Reset border to black and reset speaker state
C 33311,1 Return
c 33312 Process Command to Blow an Object
C 33312,3 Load Magic Knight's current action flags into A
C 33315,2 If "Magic Knight Can Blow" flag is unset...
C 33317,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 33320,3 Play upward scale sound
C 33323,4 Point IX at Magic Knight's current inventory
C 33327,2 Set B to 5 (as there are 5 inventory slots)
C 33329,3 Point HL at "BLOW WHICH OBJECT?" text
C 33332,3 Point DE at "BLOW" text
C 33335,3 Display list of objects in Magic Knight's inventory and wait for one to be selected. Load its index into A
C 33338,3 Point DE at name of a selected object in object names table and print in command summary window...
C 33341,3 ...
C 33344,3 If selected object is not the Elf Horn...
C 33347,2 ...
C 33349,3 ...then confirm and process blow command (create dust or racket!) then return to game
C 33352,4 Set "Characters Can't Move" flag
C 33356,3 Display / update command summary window at bottom of screen
C 33359,3 Point DE at "SUMMON" text...
C 33362,3 ...and print in Command Summary Window at bottom of screen
C 33365,3 Point HL at "SUMMON ?" text...
C 33368,1 ...and store
C 33369,3 Display and handle full character selection menu
C 33372,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 33375,3 Point HL at current position data for Current Character
C 33378,3 Load Magic Knight's current room into A
C 33381,1 If character is in the same room as Magic Knight...
C 33382,3 ...then display "[CHARACTER] IS ALREADY HERE!" message and return to game
C 33385,1 Load character's current room into A
C 33386,3 Point HL at "[CHARACTER] IS NO LONGER AROUND" text
C 33389,2 If character's current room is 100...
C 33391,3 ...then display "[CHARACTER] IS NO LONGER AROUND" window then return to game
C 33394,3 Load A with index of Current Character
C 33397,2 If character is The Banshee...
C 33399,2 ...skip over asleep / tiredness check as Banshee never sleeps or gets tired
C 33401,3 Load A with index of Current Character
C 33404,2 Point HL at property 0 (strength) of character...
C 33406,3 ...
C 33409,1 Copy location from HL to IX...
C 33410,2 ...
C 33412,4 If character is asleep (bit 7 of the byte 6 bytes forward)...
C 33416,3 ...then display "[CHARACTER] IS ASLEEP" message and return to game
C 33419,3 Load A with happiness of Current Character
C 33422,2 If happiness is less than 40...
C 33424,3 ...
C 33427,3 ...then display "[CHARACTER] DOES NOT WANT TO BE SUMMONED" message and return to game
C 33430,2 If happiness is less than 30...
C 33432,3 ...then display "[CHARACTER] IS TOO TIRED TO BE SUMMONED" message and return to game
C 33435,3 Point HL at current position data for Current Character
C 33438,1 Store HL
C 33439,2 Store IX
C 33441,3 Load Magic Knight's current room into C...
C 33444,1 ...
C 33445,3 Load B with index of Current Character...
C 33448,1 ...
C 33449,3 Assign a slot in room C to character B and get x- and y-coordinates in BC
C 33452,2 Restore IX
C 33454,1 Restore HL
C 33455,2 If assigned slot number is 4 (i.e. already three characters in this room)...
C 33457,3 ...then display "[CHARACTER] DOES NOT WANT TO COME TO SUCH A CROWDED ROOM" message and return to game
C 33460,1 Store HL (current position data for Current Character)
C 33461,1 Load x-coordinate of character into C...
C 33462,1 ...
C 33463,1 Load y-coordinate of character into B...
C 33464,1 ...
C 33465,1 Restore HL (start of current position data for Current Character)
C 33466,3 Load Magic Knight's current room into A
C 33469,2 Set bit 7 of room index data if it is not already set to denote that this character's entry needs to be animated (puff of smoke)
C 33471,1 Load data into current room of Current Character
C 33472,3 Load A with index of Current Character
C 33475,2 If character is The Banshee...
C 33477,3 ...then skip over section dealing with decreasing summoned characters stats as Banshee's stats never change (see trivia)
C 33480,3 Decrease character's strength by 10...
C 33483,2 ...
C 33485,3 ...
C 33488,3 Decrease character's happiness by 5...
C 33491,2 ...
C 33493,3 ...
C 33496,3 Decrease character's stamina by 12...
C 33499,2 ...
C 33501,3 ...
C 33504,3 Decrease Magic Knight's spell power by 3...
C 33507,2 ...
C 33509,3 ...
C 33512,3 If Release Spell score flag is not set...
C 33515,2 ...
C 33517,3 ...then display "[CHARACTER] APPEARS IN A THICK PUFF OF SMOKE" window and return to game
C 33520,4 Else load IX with address of index of next character to send home from table at #R33565
C 33524,3 Load A with index of Current Character
C 33527,3 If data at IX does not match Current Character...
C 33530,3 ...then  display "[CHARACTER] APPEARS IN A THICK PUFF OF SMOKE" window and return to game (character is not to be sent home yet)
C 33533,2 Set character's current room to 100
C 33535,2 Advance IX to next character in sequence...
C 33537,4 ...and store this new pointer
C 33541,2 If index of next character to go home is 255...
C 33543,3 ...
C 33546,3 ...then jump to "Well Done" (i.e. game complete) routine
C 33549,3 Flash border and screen (as in cast a spell)
C 33552,3 Add one to "characters sent home" score...
C 33555,1 ...
C 33556,3 ...
C 33559,3 Display "[CHARACTER] APPEARS IN SPIRIT FORM AS GIMBAL..." window and return to game...
C 33562,3 ...
b 33565 Summoning Sequence to Send Everyone Home After Release Spell is Cast
B 33565,1,1 Elrand Halfelven
B 33566,1,1 Samsun the Strong
B 33567,1,1 Thor
B 33568,1,1 Lady Rosmar
B 33569,1,1 The Banshee
B 33570,1,1 Florin the Dwarf
B 33571,1,1 Orik the Cleric
B 33572,1,1 Gimbal the Wizard
B 33573,1,1 End marker
c 33574 Confirm and Process Blow Command (Create Dust or Racket!) then Return to Game
D 33574 Used by the routine at #R33312.
C 33574,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 33577,3 Load A with index of Current Object
C 33580,2 Load E with 4 (use properties of object)
C 33582,3 Point HL at use properties of object A
C 33585,2 If bit zero is set (Blow status) then...
C 33587,3 ...display "WHAT A RACKET..." window and return to game...
C 33590,3 ...else display "WHAT A LOT OF DUST..." window and return to game
c 33593 Process Command to Call Lift
C 33593,3 If "Magic Knight Can Call Lift" flag is not set...
C 33596,2 ...
C 33598,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 33601,3 Play upward scale sound
C 33604,3 Print command summary window at bottom of screen
C 33607,3 Point DE to "CALL LIFT" text...
C 33610,3 ...and print in Command Summary Window at bottom of screen
C 33613,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 33616,3 Set the Lift as not being at any floor at all
C 33619,3 Load A with Magic Knight's current room
C 33622,1 Decrease index by one...
C 33623,1 ...divide by eight...
C 33624,1 ...
C 33625,1 ...
C 33626,2 ...and leave number 0-7 (0=Roof, 1=4th Floor, ..., 6=Basement)
C 33628,3 Update light on Lift control panel to show current floor
C 33631,3 Load A with Magic Knight's current room...
C 33634,1 ...and double the value
C 33635,3 Point HL at room connectivity data table
C 33638,1 Load double the room number into DE...
C 33639,2 ...
C 33641,1 Add DE to HL as offset so HL now points to room connectivity entry for current room
C 33642,1 Set left-hand exit of current room to lead to The Lift
C 33643,3 Set the right-hand exit of "The Lift" screen to be Magic Knight's current room
C 33646,3 ...
C 33649,3 Play "LIFT HAS ARRIVED" sound
C 33652,3 Reset "Magic Knight Can't Move Left" Temporary Movement Flag, as the room's left exit has opened...
C 33655,2 ...
C 33657,3 ...
C 33660,3 Display "THE LIFT IS HERE" window
c 33663 Process Command to Move Lift
C 33663,3 If Magic Knight can't move Lift...
C 33666,2 ...
C 33668,3 ...then jump into Main Game Loop (process keyboard input and move Magic Knight, enter menus or execute other command)
C 33671,3 Play upward scale sound
C 33674,3 Display / update command summary window at bottom of screen
C 33677,3 Point DE at "MOVE LIFT" text...
C 33680,3 ...and print in Command Summary Window at bottom of screen
C 33683,2 Draw the "TAKE LIFT TO..." window...
C 33685,3 ...
C 33688,3 Print "TAKE LIFT TO" + "A ROOF ... B 4TH FLOOR... etc." text ...
C 33691,3 ...
C 33694,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 33697,2 Subtract 65 (ASCII code for A) to leave index of floor selected
C 33699,3 Load selected floor into instruction at #R33739
C 33702,3 Point HL at start of first entry in list of floor names
C 33705,1 Load selected floor number into B
C 33706,3 Advance HL to B-th entry in list of zero-terminated strings
C 33709,1 Swap DE (now points to name of floor of interest) and HL (now undefined)
C 33710,3 ...and print in Command Summary Window at bottom of screen
C 33713,3 Display Execute / Reject Command window and return if Execute chosen, else exit
C 33716,3 If "Lift fixed" flag is set...
C 33719,2 ...
C 33721,2 ...then skip over "Lift is broken" section of routine
C 33723,3 Load selected floor from instruction at #R33739 into A
C 33726,2 If Ground Floor is selected then...
C 33728,3 ...display "THE LIFT IS BROKEN" message and exit
C 33731,2 If Basement is selected then...
C 33733,3 ...display "THE LIFT IS BROKEN" message and exit
C 33736,3 Set the lift as not being at any floor at all
N 33739 The operand of the instruction at #R33739 represents the selected floor index stored previously. This is modified by the instruction at #R33699.
C 33739,2 Set Lift control panel to show...
C 33741,3 ...Lift as being at "current" floor
C 33744,1 Multiply current floor number by eight...
C 33745,1 ...
C 33746,1 ...
C 33747,1 ...and add one to give index of room that the Lift's exit will lead into
C 33748,3 Set this room as the one connected to the Lift's right-exit
C 33751,1 Double this room index...
C 33752,2 ...and load into DE to give offset of room's left-exit in room connectivity table at 41711...
C 33754,1 ...
C 33755,3 Point HL at room connectivity table at #R41711
C 33758,1 Add offset in DE to pointer HL
C 33759,2 Set the room referred to by the pointed-to entry to be the Lift (i.e. set the room's left-exit to lead into the Lift)
C 33761,3 Flash border and make sound (as in Move Lift)
C 33764,3 Play "LIFT HAS ARRIVED" sound
C 33767,3 Display "THE LIFT HAS ARRIVED" window
c 33770 Set the Lift as Not Being at Any Floor at all
D 33770 Used by the routines at #R33593, #R33663 and #R55349.
C 33770,3 Point HL to room connectivity table entry for left-hand exit of left-most room in Roof Garden
C 33773,3 Set DE to 16 (as each floor takes up 16 bytes in that table, except the basement of course!)
C 33776,2 Set A to 255 (value that makes an exit of a room non-traversable)
C 33778,2 Load B with 7 (as there are 8 floors)
C 33780,1 Set left-most exit of current floor to be inaccessible
C 33781,1 Advance by 16 bytes to next floor down
C 33782,2 Repeat for next floor
C 33784,3 Set right-hand exit of the Lift to be inaccessible
C 33787,1 Return
c 33788 Flash Border and Make Sound (as in Move Lift)
D 33788 Used by the routine at #R33663.
C 33788,3 Load HL with 600
C 33791,1 Set A to zero
C 33792,2 Set bits on port 254
C 33794,2 Load B with 250 (length of pause)
C 33796,1 Pause by doing nothing...
C 33797,1 ...
C 33798,2 Loop back for next part of pause
C 33800,2 Invert bits 0, 1 and 2
C 33802,1 Decrease HL by one
C 33803,1 Set various bits of A...
C 33804,1 ...
C 33805,2 While HL is not zero, repeat loop
C 33807,1 Return
c 33808 Display "[CHARACTER] CANNOT HELP YOU" Window and Return to Game (Jump)
c 33811 "Command Character to Help" Routine for Thor
C 33811,2 Set last character of "[CHARACTER] CANNOT HELP YOU..." text to 169 ("HERE")...
C 33813,3 ...
C 33816,3 If Magic Knight is not in the Lift...
C 33819,1 ...
C 33820,2 ...then skip ahead to #R33846
C 33822,3 If "Lift fixed" flag is set...
C 33825,2 ...
C 33827,3 ...then display "THERE IS NOTHING MORE THAT THOR CAN DO TO HELP HERE" window and exit
C 33830,3 Set "Lift fixed" flag
C 33833,2 ...
C 33835,3 ...
C 33838,3 Display "THOR SMASHED THE LIFT CONTROL BOX..." window and return to game
C 33841,2 ...
C 33843,3 ...
C 33846,2 If Magic Knight is not at The Tower...
C 33848,3 ...then display "THOR CANNOT HELP YOU" window and exit
C 33851,3 If "Tower zapped by Thor" flag is set...
C 33854,2 ...
C 33856,3 ...then display "THERE IS NOTHING MORE THAT THOR CAN DO TO HELP HERE" window and exit
C 33859,3 Set "Tower zapped by Thor" flag...
C 33862,2 ...
C 33864,3 ...
C 33867,3 Display "THE TOWER SHOOK AS THOR SENT A BOLT OF HIS BEST LIGHTNING AT IT..." window and return to game
C 33870,2 ...
C 33872,3 ...
N 33875 This entry point is used by the routines at #R33935, #R33993 and #R34062.
C 33875,3 Display "THERE IS NOTHING MORE THAT THOR CAN DO TO HELP HERE" window...
C 33878,2 ...
C 33880,3 ...and return to game
c 33883 "Command Character to Help" Routine for Florin
C 33883,3 Check whether Florin is carrying the Tube of Glue...
C 33886,2 ...
C 33888,3 ...
C 33891,3 ...and if he isn't, display "[CHARACTER] CANNOT HELP YOU" window and exit
C 33894,3 Check whether Florin is carrying the Broken Talisman...
C 33897,2 ...
C 33899,3 ...
C 33902,3 ...and if he isn't, display "[CHARACTER] CANNOT HELP YOU" window and exit
C 33905,3 Point HL to start of Florin's current inventory...
C 33908,1 ...and store
C 33909,2 Remove Broken Talisman from Florin's inventory
C 33911,2 ...
C 33913,3 ...
C 33916,1 Restore HL (points to start of Florin's inventory again)
C 33917,2 Load the Magic Talisman into Florin's first available inventory slot...
C 33919,2 ...
C 33921,3 ...
C 33924,3 Display the "FLORIN HAS MENDED THE TALISMAN..." window...
C 33927,2 ...
C 33929,3 ...and return to game
c 33932 "Command Character to Help" Routine for Orik
C 33932,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 33935 "Command Character to Help" Routine for Samsun
C 33935,2 Set last character of "[CHARACTER] CANNOT HELP YOU..." text to 169 ("HERE")...
C 33937,3 ...
C 33940,3 If Magic Knight is not at The Pit...
C 33943,2 ...
C 33945,3 ...then display "SAMSUN CANNOT HELP YOU" window and exit
C 33948,3 If "Platform thrown into Pit" flag is set...
C 33951,2 ...
C 33953,3 ...then display "THERE IS NOTHING MORE THAT SAMSUN CAN DO TO HELP YOU HERE" window and exit
C 33956,3 Set "Platform thrown into Pit" flag...
C 33959,2 ...
C 33961,3 ...
C 33964,3 Point HL to start of Samsun's current inventory...
C 33967,2 Remove Platform from Samsun's inventory...
C 33969,2 ...
C 33971,3 ...
C 33974,3 Set the Platform's current location...
C 33977,2 ...as being at The Pit...
C 33979,1 ...
C 33980,2 ...at x = 15...
C 33982,1 ...
C 33983,2 ...y = 11
C 33985,3 Display "GOOD OLD SAMSUN HAS THROWN A PLATFORM..." window...
C 33988,2 ...
C 33990,3 ...and return to game
c 33993 "Command Character to Help" Routine for Elrand
C 33993,2 Set last character of "[CHARACTER] CANNOT HELP YOU..." text to 169 ("HERE")...
C 33995,3 ...
C 33998,3 If Magic Knight is not at The Wall...
C 34001,2 ...
C 34003,3 ...then display "ELRAND CANNOT HELP YOU" window and exit
C 34006,2 Set last character of "[CHARACTER] CANNOT HELP YOU..." text to 170 ("YET")...
C 34008,3 ...
C 34011,3 If "Wall broken" flag is set...
C 34014,2 ...
C 34016,3 ...then display "THERE IS NOTHING MORE THAT ELRAND CAN DO TO HELP YOU HERE" window and exit
C 34019,3 If "Tower zapped by Thor" flag is not set...
C 34022,2 ...
C 34024,3 ...then display "ELRAND CANNOT HELP YOU" window and exit
C 34027,3 Set "Wall broken" flag...
C 34030,2 ...
C 34032,3 ...
C 34035,3 Change room data pointer for The Wall from 53289 (original version) to 53317 (Wall broken version)...
C 34038,1 ...
C 34039,3 ...
C 34042,1 ...
C 34043,3 ...
C 34046,2 Set both Lumps of Brickwork to be at The Wall...
C 34048,3 ...
C 34051,3 ...
C 34054,3 Display "THE TRUMPET BLOWS AND THE WALL COMES A-TUMBLING DOWN !!" window...
C 34057,2 ...
C 34059,3 ...and return to game
c 34062 "Command Character to Help" Routine for Rosmar
C 34062,2 Set last character of "[CHARACTER] CANNOT HELP YOU..." text to 169 ("HERE")...
C 34064,3 ...
C 34067,3 If Magic Knight is not at The Secret Tunnel Entrance...
C 34070,2 ...
C 34072,3 ...then display "ROSMAR CANNOT HELP YOU" window and exit
C 34075,3 If height of right-wall in Secret Tunnel Entrance is 7 (i.e. not full height of room)...
C 34078,2 ...
C 34080,3 ...then display "THERE IS NOTHING MORE THAT ROSMAR CAN DO TO HELP HERE" window and exit
C 34083,2 Make right-wall in Secret Tunnel Entrance height 7 (i.e. Magic Knight-sized gap at bottom)...
C 34085,3 ...
C 34088,2 Remove Fast Blow Fuse (C=18) from Banshee's inventory (HL=#R25435)... [bug! Should be removed from Rosmar's inventory, HL=#R25430]
C 34090,2 ...
C 34092,3 ...
C 34095,3 ...
C 34098,3 Display "ROSMAR PLACED THE FUSE IN THE LASER..." window...
C 34101,2 ...
C 34103,3 ...and return to game
c 34106 "Command Character to Help" Routine for the Banshee
C 34106,3 Load A with middle byte of FRAMES system variable...
C 34109,1 ...divide by eight...
C 34110,1 ...
C 34111,1 ...
C 34112,2 ...
C 34114,1 ...and copy into B
C 34115,3 Point HL at first text entry corresponding to Banshee help quotes
C 34118,3 Advance HL by B entries in list of zero-terminated strings (i.e. Banshee quotes) at 44796...
C 34121,2 ...display the quote in a window...
C 34123,3 ...and return to game
c 34126 Get the Weight of an Object
D 34126 Used by the routines at #R30880 and #R34224. Input:  A  Index of an object Output: A  Weight of that object
C 34126,1 Store HL
C 34127,1 Store DE
C 34128,2 Point HL to property zero (i.e. weight) of object A...
C 34130,3 ...
C 34133,1 ...and load this into A
C 34134,1 Restore DE
C 34135,1 Restore HL
C 34136,1 Return
c 34137 Load Happiness of Current Character into A
D 34137 Used by the routines at #R30602 and #R30880. Output: A  Happiness
C 34137,3 Load A with index of Current Character
C 34140,1 Store HL
C 34141,1 Store DE
C 34142,2 Point HL to...
C 34144,3 ...happiness (E=1) of Current Character...
C 34147,1 ...and load into A
C 34148,1 Restore DE
C 34149,1 Restore HL
C 34150,1 Return
c 34151 Load an Object into the First Empty Inventory Slot of a Character
D 34151 Used by the routines at #R30222, #R30602 and #R33883. Input:  HL  Points to inventory slots of a character B Number of inventory slots to process C  Index of object to add to this character's inventory
C 34151,1 Load A with index of object at character's current inventory slot...
C 34152,1 ...and if this is zero (i.e. empty)...
C 34153,2 ...skip ahead to #R34158
C 34155,1 Advance to next inventory slot
C 34156,2 Repeat for next slot
C 34158,1 Load object into this (i.e. first empty) slot
C 34159,1 Return
c 34160 Point HL to Property (Given by E) of Object Whose Index is A
D 34160 Used by the routines at #R30439, #R31370, #R32258, #R32390, #R33574, #R34126, #R35629, #R35669, #R35709, #R35749 and #R36275. Input:  A  Index of an object E  Required property from properties table at #R42242 (e.g. E = 0 for weight) Output: HL  Property E of object A
C 34160,1 Multiply index by eight...
C 34161,1 ...
C 34162,1 ...
C 34163,2 ...
C 34165,1 ...and load into HL
C 34166,2 Add value of E (e.g. 6 for attribute)...
C 34168,1 ...
C 34169,3 Point DE at start of object properties table...
C 34172,1 ...and add into HL to point to property "E"
C 34173,1 Return
c 34174 Point HL at Property (Given by E) of Character Whose Index is A
D 34174 Used by the routines at #R30880, #R31370, #R31722, #R31763, #R31804, #R31842, #R31920, #R31980, #R33312, #R34137, #R34211, #R34350 and #R55233. Input:  A  Character index E  Property of interest (e.g. 0 = Strength, 1 = Happiness, etc.) Output: HL  Points to property E of character A
C 34174,1 Multiply A by 8...
C 34175,1 ...
C 34176,1 ...
C 34177,1 ...and add E...
C 34178,2 Load this offset into DE...
C 34180,1 ...
C 34181,3 Point HL at start of characters' stats table...
C 34184,1 ...and add DE to point HL to property E of character A
C 34185,1 Return
c 34186 Point IX at Current Inventory of Character A
D 34186 Used by the routines at #R30602, #R30880 and #R34211. Input:  A  Index of a character Output: IX  Points to current inventory of character A
C 34186,1 Store DE
C 34187,1 Multiply character index by five (as each character has five inventory slots)...
C 34188,1 ...
C 34189,1 ...
C 34190,1 ...
C 34191,1 ...and load into DE...
C 34192,2 ...
C 34194,4 Point IX at start of characters' current inventories table (i.e. Gimbal's entry)
C 34198,2 Add five times character index to this as offset
C 34200,1 Restore DE
C 34201,1 Return
c 34202 Prepare to Check Whether Magic Knight Can Pick Up an Object
D 34202 Used by the routines at #R30222 and #R30602.
C 34202,4 Point IX to start of Magic Knight's current inventory
C 34206,3 Load Magic Knight's current strength into A
C 34209,2 Jump ahead to #R34224 (test whether object to pick up is too heavy for Magic Knight)
c 34211 Unused routine
C 34211,3 Load A with index of Current Character
C 34214,3 Point IX at current inventory of character in A
C 34217,3 Load A with index of Current Character
C 34220,3 Point HL at property (given by E) of character whose index is A
C 34223,1 Load property into A
c 34224 Test Whether Current Object is too Heavy for A Character to Pick Up
D 34224 Used by the routine at #R34202. Input:  A  Character's current strength IX  Points to Character's current inventory Output: F  S Flag set if object is light enough to be picked up, reset otherwise
C 34224,1 Store AF (A = Character's current strength)
C 34225,3 Load B with 5 (as five inventory slots to check) and C (total weight carried) with zero
C 34228,3 Load object in current inventory slot
C 34231,1 If no object present...
C 34232,2 ...skip ahead to #R34243...
C 34234,3 Load A with weight of object A
C 34237,1 Add C to this...
C 34238,1 ...and load result into C (total weight so far)
C 34239,2 Advance to next inventory slot
C 34241,2 Loop back for next inventory slot
C 34243,1 Restore AF (A = Character's current strength)
C 34244,2 Ensure that strength is capped at 127 and that Sign Flag is reset (in reality, Magic Knight's strength can only go as high as 96)
C 34246,1 Subtract total weight of character's carried objects from his/her strength to get "surplus" strength...
C 34247,1 ...and load into C
C 34248,3 Load A with index of Current Object (e.g. object character is trying to receive)
C 34251,3 Load A with weight of object A
C 34254,1 Set Sign Flag if surplus strength exceeds weight of object, otherwise reset
C 34255,1 Return
c 34256 Check Whether Magic Knight is Carrying an Object
D 34256 Used by the routines at #R28092, #R29800, #R32258, #R32764, #R32823, #R32982, #R33036, #R33129, #R36215 and #R36275. Input:  A  Index of an object HL  (Entry at #R34259) Pointer to start of a character's inventory Output: F  Zero Flag set if object is present in inventory, reset otherwise
C 34256,3 Point HL at start of Magic Knight's current Inventory
N 34259 This entry point is used by the routines at #R32764 and #R33883.
C 34259,2 Load B with 5 (as characters have five inventory slots)
C 34261,1 If object at current inventory slot is the object of interest...
C 34262,1 ...then return with zero flag set
C 34263,1 Advance HL to next inventory slot
C 34264,2 Decrease B (remaining number of inventory slots to check) and loop back to #R34261
C 34266,1 Reset zero flag, as object is not present
C 34267,1 Return
c 34268 Insert Current Time and Score into "TIME LEFT" and "PERCENTAGE COMPLETION" Texts
D 34268 Used by the routines at #R31370 and #R35101. Input:  HL  Points to percentage completion text (#R43230 or #R46117) DE  Points to time left text (#R43253 or #R46132)
C 34268,1 Store DE
C 34269,1 Store HL
C 34270,3 Point HL at Visited Rooms table
C 34273,3 Set B=50, C=0
C 34276,1 Load A with value at HL
C 34277,1 Add this to C...
C 34278,1 ...
C 34279,1 Advance to next byte
C 34280,2 Loop back to 34276 (adding together 50 values from 23412 onwards to get score for exploring rooms)
C 34282,1 Decrease exploration score by one (due to no score for The Start Room)
C 34283,3 Add four percent if "Engraved Candle lit" score flag is set...
C 34286,2 ...
C 34288,1 ...
C 34289,1 ...
C 34290,1 ...
C 34291,3 Add four percent if "Armouris Photonicus spell cast" score flag is set...
C 34294,2 ...
C 34296,1 ...
C 34297,1 ...
C 34298,3 Add four percent if "Fumaticus Protectium spell cast" score flag is set...
C 34301,2 ...
C 34303,1 ...
C 34304,1 ...
C 34305,1 ...
C 34306,3 Add eight percent if "Crystallium Spectralis spell cast" score flag is set...
C 34309,2 ...
C 34311,1 ...
C 34312,1 ...
C 34313,1 ...
C 34314,1 ...
C 34315,1 ...
C 34316,3 Add sixteen percent if "Release Spell cast" score flag is set...
C 34319,2 ...
C 34321,1 ...
C 34322,1 ...
C 34323,3 If "Crystallium Spectralis spell cast" score flag is not set...
C 34326,2 ...
C 34328,2 ...then skip ahead to #R34334
C 34330,2 Add seven percent to current score...
C 34332,1 ...
C 34333,1 ...
C 34334,3 Add "characters sent home" score...
C 34337,1 ...
C 34338,1 Restore HL (percentage completion text)
C 34339,3 Splice numeric data A as a string into "PERCENTAGE COMPLETION" text
C 34342,3 Load A with current number of hours left
C 34345,1 Restore HL (originally DE, time left text)
C 34346,3 Splice numeric data A as a string into "TIME LEFT" text
C 34349,1 Return
c 34350 Check if Current Character is Asleep and Display "[CHARACTER] IS ASLEEP" Window if So
D 34350 Used by the routines at #R31804, #R31842, #R31920 and #R31980.
C 34350,1 Store HL
C 34351,3 Load A with index of Current Character
C 34354,2 Point HL at...
C 34356,3 ...Current Character's asleep flag
C 34359,2 If character is awake...
C 34361,2 ...then exit routine
C 34363,2 Draw window 34...
C 34365,3 ...
C 34368,3 Point HL at "[CHARACTER] IS ASLEEP" text...
C 34371,3 ...and print the text
C 34374,3 Display "PRESS SPACE OR FIRE TO CONTINUE" Window and wait for SPACE / Fire
C 34377,1 Restore HL
C 34378,1 Restore HL again, removing return address of calling "command a character to" routine, so a RET will return to the routine that called THAT routine
C 34379,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
C 34382,1 Restore HL
C 34383,1 Set A to zero
C 34384,1 Return
c 34385 Load Magic Knight's Coordinates (in Characters) into DE
D 34385 Used by the routines at #R30222, #R30439 and #R32903. Output: D  y-coordinate (characters) E  x-coordinate (characters)
C 34385,3 Load Magic Knight's current y-coordinate into A
C 34388,3 Divide by eight, rounding down to nearest integer
C 34391,2 Add 3 (as Magic Knight is four characters tall)
C 34393,1 And load result into D
C 34394,3 Load Magic Knight's current x-coordinate into A
C 34397,3 Divide by eight, rounding down to nearest integer
C 34400,1 Load result into E
C 34401,1 Return
c 34402 Point HL to Current Position Data for Current Character
D 34402 Used by the routines at #R31804, #R32035 and #R33312. Output: HL  Points to entry for Current Character in current character positions table at #R25440
C 34402,1 Store BC
C 34403,3 Load A with index of Current Character...
C 34406,1 ...copy into C...
C 34407,1 ...and multiply by 3 (as there are three bytes per entry in character positions table; screen, x- and y-coordinates)...
C 34408,1 ...
C 34409,1 Load new value back into BC...
C 34410,2 ...
C 34412,3 Point HL at table of characters' current positions
C 34415,1 Add offset so that HL points to position entry for Current Character
C 34416,1 Restore BC
C 34417,1 Return
c 34418 Display "YOUR HANDS ARE FULL" Window and Return to Game
D 34418 Used by the routines at #R30222 and #R30602.
C 34418,3 Point HL at "YOUR HANDS ARE FULL" text
C 34421,3 Draw window (index 13) with text pointed to by HL
c 34424 Display "THAT OBJECT IS TOO HEAVY" Window and Return to Game
D 34424 Used by the routines at #R30222 and #R30602.
C 34424,3 Point HL at "THAT OBJECT IS TOO HEAVY" text
C 34427,3 Draw window (index 13) with text pointed to by HL
c 34430 Display "THERE IS NOTHING NEAR ENOUGH" Window and Return to Game
D 34430 Used by the routine at #R30222.
C 34430,3 Point HL at "THERE IS NOTHING NEAR ENOUGH" text
C 34433,3 Draw window (index 13) with text pointed to by HL
c 34436 Display "THERE IS NOTHING IN THIS ROOM" Window and Return to Game
D 34436 Used by the routine at #R30222.
C 34436,3 Point HL at "THERE IS NOTHING IN THIS ROOM" text
C 34439,3 Draw window (index 13) with text pointed to by HL
c 34442 Display "YOU CANNOT DROP THAT OBJECT" Window and Return to Game
D 34442 Used by the routine at #R30439.
C 34442,3 Point HL at "YOU CANNOT DROP THAT OBJECT" text
C 34445,3 Draw window (index 13) with text pointed to by HL
c 34448 Display "[CHARACTER]'S HANDS ARE EMPTY" Window and Return to Game
D 34448 Used by the routine at #R30602.
C 34448,3 Point HL at "[CHARACTER]'S HANDS ARE EMPTY" text
C 34451,3 Draw window (index 13) with text pointed to by HL
c 34454 Display "[CHARACTER] WANTS TO KEEP THAT" Window and Return to Game
D 34454 Used by the routine at #R30602.
C 34454,3 Point HL at "[CHARACTER] WANTS TO KEEP THAT" text
C 34457,3 Draw window (index 13) with text pointed to by HL
c 34460 Display "[CHARACTER]'S HANDS ARE FULL" Window and Return to Game
D 34460 Used by the routine at #R30880.
C 34460,3 Point HL at "[CHARACTER]'S HANDS ARE FULL" text
C 34463,3 Draw window (index 13) with text pointed to by HL
c 34466 Display "[CHARACTER] IS NOT STRONG ENOUGH" Window and Return to Game
D 34466 Used by the routine at #R30880.
C 34466,3 Point HL at "[CHARACTER] IS NOT STRONG ENOUGH" text
C 34469,3 Draw window (index 13) with text pointed to by HL
c 34472 Display "[CHARACTER] DOES NOT WANT THAT" Window and Return to Game
D 34472 Used by the routine at #R30880.
C 34472,3 Point HL at "[CHARACTER] DOES NOT WANT THAT" text
C 34475,3 Draw window (index 13) with text pointed to by HL
c 34478 Display "[CHARACTER] IS ALREADY ASLEEP" Window and Return to Game
D 34478 Used by the routine at #R31722.
C 34478,3 Point HL at "[CHARACTER] IS ALREADY ASLEEP" text
C 34481,3 Draw window (index 29) with text pointed to by HL
c 34484 Display "[CHARACTER] IS TOO WAKEFUL TO SLEEP" Window and Return to Game
D 34484 Used by the routine at #R31722.
C 34484,3 Point HL at "[CHARACTER] IS TOO WAKEFUL TO SLEEP" text
C 34487,3 Draw window (index 29) with text pointed to by HL
c 34490 Display "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" Window and Return to Game
D 34490 Used by the routines at #R31722, #R31763, #R31804, #R31842, #R31920 and #R31980.
C 34490,3 Point HL at "[CHARACTER] DOES NOT WANT TO BE COMMANDED BY YOU" text
C 34493,3 Draw window (index 29) with text pointed to by HL
c 34496 Display "[CHARACTER] IS ALREADY AWAKE" Window and Return to Game
D 34496 Used by the routine at #R31763.
C 34496,3 Point HL at "[CHARACTER] IS ALREADY AWAKE" text
C 34499,3 Draw window (index 29) with text pointed to by HL
c 34502 Display "[CHARACTER] IS TOO TIRED TO WAKE UP" Window and Return to Game
D 34502 Used by the routine at #R31763.
C 34502,3 Point HL at "[CHARACTER] IS TOO TIRED TO WAKE UP" text
C 34505,3 Draw window (index 29) with text pointed to by HL
c 34508 Display "[CHARACTER] IS TOO TIRED TO GO AWAY" Window and Return to Game
D 34508 Used by the routine at #R31804.
C 34508,3 Point HL at "[CHARACTER] IS TOO TIRED TO GO AWAY" text
C 34511,3 Draw window (index 29) with text pointed to by HL
c 34514 Display "[CHARACTER] CANNOT HELP YOU" Window and Return to Game
D 34514 Used by the routines at #R31842, #R33808, #R33811, #R33883, #R33935, #R33993 and #R34062.
C 34514,3 Point HL at "[CHARACTER] CANNOT HELP YOU" text
C 34517,3 Draw window (index 29) with text pointed to by HL
c 34520 Display "[CHARACTER] IS TOO TIRED TO HELP YOU" Window and Return to Game
D 34520 Used by the routine at #R31842.
C 34520,3 Point HL at "[CHARACTER] IS TOO TIRED TO HELP YOU" text
C 34523,3 Draw window (index 29) with text pointed to by HL
c 34526 Display "[CHARACTER] HAS NO FOOD LEFT" Window and Return to Game
D 34526 Used by the routine at #R31920.
C 34526,3 Point HL at "[CHARACTER] HAS NO FOOD LEFT" text
C 34529,3 Draw window (index 29) with text pointed to by HL
c 34532 Display "[CHARACTER] IS TOO TIRED TO EAT OR DRINK" Window and Return to Game
D 34532 Used by the routine at #R31920.
C 34532,3 Point HL at "[CHARACTER] IS TOO TIRED TO EAT OR DRINK" text
C 34535,3 Draw window (index 29) with text pointed to by HL
c 34538 Display "[CHARACTER] IS TOO TIRED TO BE HAPPY" Window and Return to Game
D 34538 Used by the routine at #R31980.
C 34538,3 Point HL at "[CHARACTER] IS TOO TIRED TO BE HAPPY" text
C 34541,3 Draw window (index 29) with text pointed to by HL
c 34544 Display "THE LIFT IS HERE" Window and Return to Game
D 34544 Used by the routine at #R33593.
C 34544,3 Point HL at "THE LIFT IS HERE" text
C 34547,2 Draw window (index 24) with text pointed to by HL...
C 34549,3 ...and return to game
c 34552 Display "THE LIFT HAS ARRIVED" Window and Return to Game
D 34552 Used by the routine at #R33663.
C 34552,3 Point HL at "THE LIFT HAS ARRIVED" text
C 34555,2 Draw window (index 24) with text pointed to by HL...
C 34557,3 ...and return to game
c 34560 Display "WHAT A RACKET..." Window and Return to Game
D 34560 Used by the routine at #R33574.
C 34560,3 Point HL at "WHAT A RACKET! APART FROM THE NOISE, NOTHING HAPPENED" text
C 34563,2 Draw window (index 27) with text pointed to by HL...
C 34565,3 ...and return to game
c 34568 Display "WHAT A LOT OF DUST..." Window and Return to Game
D 34568 Used by the routine at #R33574.
C 34568,3 Point HL at "WHAT A LOT OF DUST. DOESN'T ANYBODY CLEAN THIS PLACE?" text
C 34571,2 Draw window (index 27) with text pointed to by HL...
C 34573,3 ...and return to game
c 34576 Display "THERE IS NO WRITING FOR ME TO READ" Window and Return to Game
D 34576 Used by the routine at #R32258.
C 34576,2 Draw window (index 12) with text pointed to by HL
C 34578,3 Point HL at "THERE IS NO WRITING FOR ME TO READ" text...
C 34581,3 ...and return to game
c 34584 Display "IT IS NOT SAFE TO TELEPORT..." Window and Return to Game
D 34584 Used by the routine at #R32194.
C 34584,3 Point HL at "IT IS NOT SAFE TO TELEPORT TRY AGAIN LATER" text
C 34587,2 Draw window (index 17) with text pointed to by HL...
C 34589,3 ...and return to game
c 34592 Display "THE LIQUID IS STUCK TO THE FLOOR..." Window and Return to Game
D 34592 Used by the routine at #R30222.
C 34592,3 Point HL at "THE LIQUID IS STUCK TO THE FLOOR (IT'S A VERY THICK LIQUID)" text
C 34595,3 Draw window (index 13) with text pointed to by HL
c 34598 Display "[CHARACTER] IS ASLEEP" window and return to game
D 34598 Used by the routine at #R33312.
C 34598,3 Point HL at "[CHARACTER] IS ASLEEP" text
C 34601,3 Draw window (index 28) with text pointed to by HL
c 34604 Display "[CHARACTER] DOES NOT WANT TO BE SUMMONED" window and return to game
D 34604 Used by the routine at #R33312.
C 34604,3 Point HL at "[CHARACTER] DOES NOT WANT TO BE SUMMONED" text
C 34607,3 Draw window (index 28) with text pointed to by HL
c 34610 Display "[CHARACTER] IS TOO TIRED TO BE SUMMONED" window and return to game
D 34610 Used by the routine at #R33312.
C 34610,3 Point HL at "[CHARACTER] IS TOO TIRED TO BE SUMMONED" text
C 34613,3 Draw window (index 28) with text pointed to by HL
c 34616 Display "[CHARACTER] IS ALREADY HERE!" window and return to game
D 34616 Used by the routine at #R33312.
C 34616,3 Point HL at "[CHARACTER] IS ALREADY HERE!" text
C 34619,3 Draw window (index 28) with text pointed to by HL
c 34622 Display "[CHARACTER] DOES NOT WANT TO COME TO SUCH A CROWDED ROOM!" window and return to game
D 34622 Used by the routine at #R33312.
C 34622,3 Point HL at "[CHARACTER] DOES NOT WANT TO COME TO SUCH A CROWDED ROOM!" text
C 34625,3 Draw window (index 28) with text pointed to by HL
c 34628 Display "[CHARACTER] APPEARS IN A THICK PUFF OF SMOKE" window and return to game
D 34628 Used by the routine at #R33312.
C 34628,3 Point HL at "[CHARACTER] APPEARS IN A THICK PUFF OF SMOKE" text
C 34631,3 Draw window (index 28) with text pointed to by HL
c 34634 Display "THAT SPELL CANNOT YET BE CAST..." window and return to game
D 34634 Used by the routines at #R32764, #R32823, #R32903, #R32982, #R33036 and #R33129.
C 34634,3 Point HL at "THAT SPELL CANNOT YET BE CAST. SOMETHING HAS NOT BEEN DONE OR MAYBE THE TIME IS NOT YET SUITABLE" text
C 34637,3 Draw window (index 35) with text pointed to by HL
c 34640 Display "THE SPELL HAS WORKED!  GIMBAL IS NEARLY FREE" window and return to game
D 34640 Used by the routine at #R32764.
C 34640,3 Point HL at "THE SPELL HAS WORKED!  GIMBAL IS NEARLY FREE" text
C 34643,3 Draw window (index 35) with text pointed to by HL
c 34646 Display "SUCCESS ! GIMBAL IS FREE AT LAST" window and return to game
D 34646 Used by the routine at #R32390.
C 34646,3 Point HL at "SUCCESS ! GIMBAL IS FREE AT LAST" text
C 34649,3 Draw window (index 35) with text pointed to by HL
c 34652 Display Candelium Illuminatus successful window and return to game
D 34652 Used by the routine at #R32823.
C 34652,3 Point HL at "WELL DONE, THE CANDLE IS NOW GLOWING WITH A COOL YELLOW LIGHT THAT HAS MAGIC POWER" text
C 34655,3 Draw window (index 35) with text pointed to by HL
c 34658 Display Armouris Photonicus successful window and return to game
D 34658 Used by the routine at #R32903.
C 34658,3 Point HL at Armouris Photonicus successful text
C 34661,3 Draw window (index 35) with text pointed to by HL
c 34664 Display "GIMBAL IS ALREADY FREE" window and return to game
D 34664 Used by the routine at #R32764.
C 34664,3 Point HL at "GIMBAL IS ALREADY FREE" text
C 34667,3 Draw window (index 35) with text pointed to by HL
c 34670 Display "THE CANDLE IS ALREADY ALIGHT" window and return to game
D 34670 Used by the routine at #R32823.
C 34670,3 Point HL at "THE CANDLE IS ALREADY ALIGHT" text
C 34673,3 Draw window (index 35) with text pointed to by HL
c 34676 Display "YOUR ARMOUR IS GLOWING ALREADY" window and return to game
D 34676 Used by the routine at #R32903.
C 34676,3 Point HL at "YOUR ARMOUR IS GLOWING ALREADY" text
C 34679,3 Draw window (index 35) with text pointed to by HL
c 34682 Display "YOU HAVE ALL THE PROTECTION YOU NEED AGAINST GAS ALREADY" window and return to game
D 34682 Used by the routine at #R32982.
C 34682,3 Point HL at "YOU HAVE ALL THE PROTECTION YOU NEED AGAINST GAS ALREADY" text
C 34685,3 Draw window (index 35) with text pointed to by HL
c 34688 Display Fumaticus Protectium successful window and return to game
D 34688 Used by the routine at #R32982.
C 34688,3 Point HL at Fumaticus Protectium successful text
C 34691,3 Draw window (index 35) with text pointed to by HL
c 34694 Display Project Physical Body successful window and return to game
D 34694 Used by the routine at #R33036.
C 34694,3 Point HL at "YOUR SPIRIT FLOWS THROUGH THE GATES OF MAGICAL-SPACE-TIME AND THE SPELL CARRIES YOUR BODY ALONG" text
C 34697,3 Draw window (index 35) with text pointed to by HL
c 34700 Display Gimbal's telepathic whisper window and return to game
D 34700 Used by the routine at #R32390.
C 34700,3 Point HL at "YOU HEAR A SHORT RANGE TELEPATHIC WHISPER FROM GIMBAL. 'KEEP THE CRYSTAL FOR LATER - IT IS OF NO USE HERE YET'" text
C 34703,3 Draw window (index 35) with text pointed to by HL
c 34706 Display Blue Crystal used successfully window and return to game
D 34706 Used by the routine at #R32390.
C 34706,3 Point HL at "THE BLUE CRYSTAL FLEW AT GIMBAL AND BURST INTO A SPARKLING POWDER ON CONTACT. THE BLUE PORTION THE WHITE-OUT AURA SURROUNDING GIMBAL IS DESTROYED" text
C 34709,3 Draw window (index 35) with text pointed to by HL
c 34712 Display Red Crystal used successfully window and return to game
D 34712 Used by the routine at #R32390.
C 34712,3 Point HL at "THE RED CRYSTAL FLEW STRAIGHT AT GIMBAL AND TURNED INTO A GAS SURROUNDING HIM. THE STENCH WAS ALMOST UNBEARABLE BUT NOW THE RED ELEMENT OF THE WHITE-OUT SPELL TRAPPING GIMBAL IS REMOVED" text
C 34715,3 Draw window (index 35) with text pointed to by HL
c 34718 Display Green Crystal used successfully window and return to game
D 34718 Used by the routine at #R32390.
C 34718,3 Point HL at "THE GREEN CRYSTAL FLEW AT GIMBAL AND SUCKED UP ALL OF THE GREEN PARTS OF THE WHITE-OUT SPELL BEFORE IT BURNED UP IN A BRIGHT FLARE." text
C 34721,3 Draw window (index 35) with text pointed to by HL
c 34724 Display "THE [OBJECT] LANDED ON THE FLOOR BY [CHARACTER]" window and return to game
D 34724 Used by the routine at #R32390.
C 34724,3 Point HL at "THE [OBJECT] LANDED ON THE FLOOR BY [CHARACTER]" text
C 34727,3 Draw window (index 35) with text pointed to by HL
c 34730 Display "THE LIFT IS BROKEN..." window and return to game
D 34730 Used by the routine at #R33663.
C 34730,3 Point HL at "THE LIFT IS BROKEN AND CANNOT BE MOVED TO THAT FLOOR YET. A GOOD BASH IN THE CONTROL BOX WILL PROBABLY FIX IT" text
C 34733,2 Draw window (index 24) with text pointed to by HL...
C 34735,3 ...and return to game
c 34738 Display "[CHARACTER] HAS GONE TO SLEEP" window and return to game
D 34738 Used by the routine at #R31722.
C 34738,3 Point HL at "[CHARACTER] HAS GONE TO SLEEP" text
C 34741,3 Draw window (index 29) with text pointed to by HL
c 34744 Display "[CHARACTER] HAS WOKEN UP" window and return to game
D 34744 Used by the routine at #R31763.
C 34744,3 Point HL at "[CHARACTER] HAS WOKEN UP" text
C 34747,3 Draw window (index 29) with text pointed to by HL
c 34750 Display "[CHARACTER] HAS GONE AWAY" window and return to game
D 34750 Used by the routine at #R31804.
C 34750,3 Point HL at "[CHARACTER] HAS GONE AWAY" text
C 34753,3 Draw window (index 29) with text pointed to by HL
c 34756 Display "[CHARACTER] HAS TAKEN REFRESHMENT" window and return to game
D 34756 Used by the routine at #R31920.
C 34756,3 Point HL at "[CHARACTER] HAS TAKEN REFRESHMENT" text
C 34759,3 Draw window (index 29) with text pointed to by HL
c 34762 Display "[CHARACTER] WILL TRY TO BE HAPPY" window and return to game
D 34762 Used by the routine at #R31980.
C 34762,3 Point HL at "[CHARACTER] WILL TRY TO BE HAPPY" text
C 34765,3 Draw window (index 29) with text pointed to by HL
c 34768 Adjust the Height and Display a Message Window, then Return to Game
D 34768 Used by the routines at #R33129, #R33811, #R33883, #R33935, #R33993, #R34062, #R34106, #R34544, #R34552, #R34560, #R34568, #R34576, #R34584, #R34730, #R34799, #R34803, #R34808, #R34812, #R34816, #R34914 and #R35393. Input:  A Window index HL  Points to text to show in window
C 34768,1 Store HL
C 34769,1 Load index A into HL...
C 34770,2 ...
C 34772,1 Exchange AF
C 34773,1 Multiply HL by 8...
C 34774,1 ...
C 34775,1 ...
C 34776,3 Point DE at bottom position of first window in window data table...
C 34779,1 ...then add this to HL to obtain bottom position of window A location
C 34780,1 Restore pointer to text to show in window
C 34781,1 Load the first character of the text (a height value) into A...
C 34782,1 ...and from there into window table, thereby adjusting the height of the window!
C 34783,1 Move to next character (which should be the true start of the text)
C 34784,1 Store this pointer
C 34785,1 Switch back to restore window index to A
C 34786,3 Draw the window with index A
C 34789,1 Restore pointer to text to HL
C 34790,3 Print the text into the window
C 34793,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 34796,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 34799 Draw Window (Index 2) with Text at HL
D 34799 Used by the routine at #R32258. Input:  HL  Points to text to write in window
C 34799,2 Draw window (index 2) with text pointed to by HL...
C 34801,2 ...and return to game
c 34803 Draw Window (Index 13) with Text at HL
D 34803 Used by the routines at #R34418, #R34424, #R34430, #R34436, #R34442, #R34448, #R34454, #R34460, #R34466, #R34472 and #R34592. Input:  HL  Points to text to write in window
C 34803,2 Draw window (index 13) with text pointed to by HL...
C 34805,3 ...and return to game
c 34808 Draw Window (Index 28, Summoning Messages) with Text at HL
D 34808 Used by the routines at #R33312, #R34598, #R34604, #R34610, #R34616, #R34622 and #R34628. Input:  HL  Points to text to write in window
C 34808,2 Draw window (index 28) with text pointed to by HL...
C 34810,2 ...and return to game
c 34812 Draw Window (Index 29) with Text at HL
D 34812 Used by the routines at #R34478, #R34484, #R34490, #R34496, #R34502, #R34508, #R34514, #R34520, #R34526, #R34532, #R34538, #R34738, #R34744, #R34750, #R34756 and #R34762. Input:  HL  Points to text to write in window
C 34812,2 Draw window (index 29) with text pointed to by HL...
C 34814,2 ...and return to game
c 34816 Draw Window (Index 35) with Text at HL
D 34816 Used by the routines at #R34634, #R34640, #R34646, #R34652, #R34658, #R34664, #R34670, #R34676, #R34682, #R34688, #R34694, #R34700, #R34706, #R34712, #R34718 and #R34724. Input:  HL  Points to text to write in window
C 34816,2 Draw window (index 35) with text pointed to by HL...
C 34818,3 ...and return to game
c 34821 Update Magic Knight's Current Frame Based on x-Coordinate (Walking Left)
D 34821 Used by the routines at #R27176, #R27495 and #R28092. Output: A  Frame number The operand of the instruction at #R34821 represents the address of the appropriate "walking" routine to jump to (either #R34824 for walking left or #R34838 for walking right). This is modified by the instructions at #R27327, #R29527, #R29549 and #R29565.
C 34821,3 Jump to walking left or walking right version of routine
C 34824,2 Load B with 5 (as first graphic frame of Magic Knight walking left is frame number 5)
N 34826 This entry point is used by the routine at #R34838.
C 34826,3 Point HL at Magic Knight's current data (x- and y-coordinates, etc.)
C 34829,1 Load A with Magic Knight's x-coordinate
C 34830,1 Divide Magic Knight's x-coordinate by 2...
C 34831,2 ...and take lowest two bits (0 - 3)
C 34833,1 Add result to B (1 for walking right frames or 5 for walking left frames) to get current required frame
C 34834,3 Load frame number into Magic Knight's properties
C 34837,1 Return
c 34838 Update Magic Knight's Current Frame Based on x-Coordinate (Walking Right)
C 34838,2 Load B with 1 (as first graphic frame of Magic Knight walking right is frame number 1)
C 34840,2 Return to routine at #R34821
c 34842 Advance HL to B-th Entry in List of Zero-Terminated Strings (e.g. Object Names Table)
D 34842 Used by the routines at #R30222, #R31370, #R34864 and #R34914. Input:  B  Index of required text string Output: HL Points to string of index B (input)
C 34842,3 Point HL at start of object names table
N 34845 This entry point is used by the routines at #R31370, #R32655, #R33663, #R34106, #R34854 and #R34859.
C 34845,1 Load string index into A
C 34846,1 Return if index is zero...
C 34847,1 ...
C 34848,3 Advance HL to start of next zero-terminated string
C 34851,2 Decrease B and repeat loop
C 34853,1 Return
c 34854 Advance HL to the B-th Entry in List of Readable Objects' Texts at 47322 then Return
D 34854 Used by the routine at #R32258. Input:  B  Index of required text string
C 34854,3 Point HL at start of list of readable objects' texts
C 34857,2 Jump to routine that iterates through list of zero-terminated strings to get B-th entry then return
c 34859 Advance HL to the B-th Entry in List of Option Texts from "Command a Character" Menu then Return
D 34859 Used by the routine at #R31636. Input:  B  Index of required text string
C 34859,3 Point HL at list of option texts from "COMMAND A CHARACTER" menu
C 34862,2 Jump to routine that iterates through list of zero-terminated strings to get B-th entry then return
c 34864 Point DE at Name of a Selected Object in Object Names Table and Print in Command Summary Window
D 34864 Used by the routines at #R30439, #R30602, #R30880, #R31370, #R32258, #R32390 and #R33312. Input:  A  ASCII code of letter corresponding to an inventory slot (e.g. "B" is second inventory slot) HL  Points to start of a character's inventory
C 34864,2 Convert A from ASCII code to inventory slot number
C 34866,1 Load inventory slot number into DE...
C 34867,2 ...
C 34869,1 Add to HL as offset
C 34870,1 Load index of object in that slot into A
C 34871,3 Set this object as the Current Object
C 34874,1 Also load index into B
C 34875,3 Point HL at name of object in object names table
C 34878,1 Switch registers so DE points to object name and HL contains inventory slot number
C 34879,3 ...and print in Command Summary Window at bottom of screen
C 34882,1 Return
c 34883 Update Current Character Based Upon Selection Made in Menu
D 34883 Used by the routine at #R35141. Input:  A  ASCII code of letter corresponding to a character listed in a character-selection menu (e.g. "B" is second character)
C 34883,3 Point HL at table of indices of characters in current room
C 34886,2 Subtract 65 (ASCII code for "A")
C 34888,1 Load remainder (i.e. index of selected item in menu) into DE...
C 34889,2 ...
C 34891,1 Add this as offset to table of characters in current room to identify one of those as the character of interest
C 34892,1 Load index of this character into A
C 34893,3 Modify instruction at #R30614 to set the Current Character
N 34896 This entry point is used by the routines at #R30602 and #R35293.
C 34896,3 Point DE to code to print short name of Current Character...
C 34899,3 ...and print in Command Summary Window at bottom of screen
C 34902,1 Return
b 34903 Code for Printing Routine to Display Short Name of Current Character
T 34903,2,B2 short name of Current Character
b 34905 Code for Printing Routine to Display Full Name of Current Character
T 34905,2,B2 full name of Current Character
c 34907 Display a Character's Inventory Window as an Information Window
D 34907 Used by the routine at #R30222. Input:  IX  Points to a character's inventory (usually Magic Knight)
C 34907,2 Modify instruction at 34989 to display as information window, rather than menu window...
C 34909,3 ...
C 34912,2 Jump into inventory window drawing routine
c 34914 Show List of Objects (Window or Menu) and Handle Selection if a Menu
D 34914 Used by the routines at #R30439, #R30602, #R30880, #R31370, #R32258, #R32390 and #R33312. Input:  B  Number of inventory slots to check DE  Points to summary command text (e.g. "BLOW"), or 0 for no summary text HL  Points to full command text (e.g. "BLOW WHICH OBJECT?", or "YOU ARE NOW CARRYING") IX  Points to a character's inventory Output: A  ASCII code for letter of selected menu item
C 34914,1 Store BC (B = number of inventory slots)
C 34915,1 Store DE
C 34916,1 Store HL
C 34917,2 Store IX
C 34919,3 Set parameters for and play downward scale sound
C 34922,2 Restore IX
C 34924,1 Restore HL
C 34925,1 Restore DE
C 34926,1 Restore BC (B = number of inventory slots)
C 34927,3 Load first object in character's inventory into A
C 34930,1 If nothing in first slot...
C 34931,3 ...jump ahead to #R35069 (display "YOU ARE NOT CARRYING ANYTHING" message and return to game)
C 34934,2 Modify instruction at #R34989 with 105, denoting window as a menu rather than information window...
C 34936,3 ...
C 34939,1 Store BC (B = number of inventory slots)
C 34940,1 Store HL
C 34941,2 Store IX
C 34943,1 If DE is zero (i.e. summary command text unset)...
C 34944,1 ...
C 34945,2 ...jump ahead to #R34955
C 34947,1 Store DE
C 34948,3 Display / update command summary window at bottom of screen
C 34951,1 Restore DE
C 34952,3 ...and print in Command Summary Window at bottom of screen
C 34955,2 Restore IX
C 34957,1 Restore HL
C 34958,1 Restore BC (B = number of inventory slots)
N 34959 This entry point is used by the routine at #R34907.
C 34959,2 Load C (object counter) with zero
C 34961,1 Store BC (B = number of inventory slots)
C 34962,2 Store IX
C 34964,3 Load object from character's inventory (slot number C) into A
C 34967,1 If nothing in this slot...
C 34968,2 ...then jump ahead to #R34975
C 34970,1 Increase count of objects in inventory
C 34971,2 Advance IX to next slot
C 34973,2 Repeat for next slot
C 34975,2 Restore IX (points to start of inventory)
C 34977,1 Copy number of objects into A
C 34978,1 If number of objects is zero... (see trivia)
C 34979,3 ...then jump ahead to #R35078
C 34982,1 Copy number of objects into A
C 34983,2 Add 3 to this (menu window padding)
C 34985,3 Modify height of window 4 to accommodate list of C objects
C 34988,1 Store HL (pointer to full command text)
N 34989 The operand of the instruction at #R34989 represents the "Draw Hand Menu Cursor" Flag. This is modified by the instruction at #R34936.
C 34989,2 Load A with "Draw Hand Menu Cursor" Flag
C 34991,2 If this is not 105 (i.e. window is not a menu, but a simple information window)...
C 34993,2 ...then jump ahead to #R35002
C 34995,2 Draw a menu window...
C 34997,3 ...
C 35000,2 ...and skip over "draw an information window" section
C 35002,2 Draw window 4...
C 35004,3 ...
C 35007,2 Set character at 43221 (letter preceding menu items) to "@" (i.e. the character immediately before "A")...
C 35009,3 ...
C 35012,1 Restore HL (pointer to full command text)...
C 35013,3 ...and print the text
C 35016,1 Restore BC (B = number of remaining inventory slots)
C 35017,1 Store BC (B = number of remaining inventory slots)
C 35018,3 Load index of first object in inventory into A
C 35021,1 If index is zero (i.e. if nothing in inventory)...
C 35022,3 ...then skip ahead to #R35064
C 35025,1 Copy index into B
C 35026,2 Store IX (pointer to start of inventory)
C 35028,3 Point HL to letter shortcut (currently set to "@" as at instruction #R35007)...
C 35031,1 ...
C 35032,1 ...
C 35033,1 ...and increase index by one to change to "A"
C 35034,3 Point HL to 43220
C 35037,1 Store BC (B = index of an object)
C 35038,3 Print text (i.e. "A] ") to screen
C 35041,1 Restore BC (B = index of an object)
C 35042,3 Point HL to B-th entry in list of object names
C 35045,3 Print object name to screen
C 35048,2 Restore IX (pointer to start of inventory)
C 35050,2 Advance IX to next inventory slot
C 35052,1 Restore BC (B = number of remaining inventory slots)
C 35053,2 Repeat loop for next object in inventory, decreasing B (number of remaining inventory slots)
C 35055,3 If window is a menu, rather than information window...
C 35058,2 ...
C 35060,3 ...then process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A...
C 35063,1 ...and return
C 35064,1 Restore BC
C 35065,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 35068,1 Return
C 35069,2 Display "YOU ARE NOT CARRYING ANYTHING" window...
C 35071,1 ...restoring HL...
C 35072,3 ...
C 35075,3 ...and return to game
C 35078,1 Store HL (points to full command text, e.g. "BLOW WHICH OBJECT?", or "YOU ARE NOW CARRYING")
C 35079,2 Modify height of window 4...
C 35081,3 ...
C 35084,2 Draw window 4...
C 35086,3 ...
C 35089,1 Restore HL (points to window title line, e.g. "BLOW WHICH OBJECT?", or "YOU ARE NOW CARRYING")
C 35090,3 Print the text
C 35093,3 Point HL at NOTHING AT ALL  text...
C 35096,3 ...and print
C 35099,1 Restore BC
C 35100,1 Return
c 35101 Display Cyan "Game Over" Window and Return to Pre-Game Menu
D 35101 Used by the routines at #R27176, #R27865, #R29800, #R29880, #R29915, #R30602, #R32390, #R32876, #R33180, #R33269, #R35993, #R55461 and #R55478. Input:  HL  Points to location of a string (e.g. "YOU DIED OF EXHAUSTION...")
C 35101,4 Reset "Update Game Time and Locate Arrow Glow" flag
C 35105,1 Set height of window to accommodate text...
C 35106,3 ...
C 35109,1 Advance to first character of message...
C 35110,1 ...and store for later use
C 35111,2 Draw window 33 ("Game Over" window with modified height, as above)...
C 35113,3 ...
C 35116,3 Point to string for percentage completion
C 35119,3 Point to string for time left
C 35122,3 Insert current time and score into "TIME LEFT" and "PERCENTAGE COMPLETION" texts
C 35125,3 Point HL at "GAME OVER / TOTAL COMPLETION XX% / TIME LEFT XX HOURS" text...
C 35128,3 ...and print it to screen
C 35131,1 Restore HL (pointer to first character of message pointed to on entry to routine)...
C 35132,3 ...and print it to screen
C 35135,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 35138,3 Jump back to pre-game menu (select input device, view instructions, play game, etc.)
c 35141 Display and Process Input for Character Selection Menu (Current Room's Characters Only)
D 35141 Used by the routines at #R30602, #R30880, #R31370, #R31636 and #R32390. Input:  HL  Pointer to primary text DE Pointer to secondary text
C 35141,1 Store HL
C 35142,1 Store BC
C 35143,2 Store IX
C 35145,1 Store DE
C 35146,3 Play short downward scale sound
C 35149,1 Restore DE
C 35150,1 If DE is zero...
C 35151,1 ...
C 35152,2 ...then skip ahead to #R35162
C 35154,1 Store DE
C 35155,3 Display / update command summary window at bottom of screen
C 35158,1 Restore DE
C 35159,3 ...and print in Command Summary Window at bottom of screen
C 35162,3 Load A with Magic Knight's current room
C 35165,3 Load number of characters in this room into C and load their indices into table at 23464
C 35168,2 If there are characters present then jump to #R35199
C 35170,3 Point HL at "THERE IS NOBODY IN THIS ROOM" text
C 35173,1 Load text height (rows) into A...
C 35174,3 ...and then into stored bottom y-coordinate of window #13
C 35177,1 Advance HL to next byte (start of actual text)
C 35178,1 Store HL
C 35179,2 Draw window 13...
C 35181,3 ...
C 35184,1 Restore HL
C 35185,3 Print "THERE IS NOBODY IN THIS ROOM" text to screen
C 35188,3 Display "PRESS SPACE OR FIRE TO CONTINUE" window and wait for space / fire
C 35191,2 Restore IX
C 35193,1 Restore BC
C 35194,1 Restore HL
C 35195,1 Restore HL again (as this routine was CALLed, but we are not RETurning from it, so need to keep stack tidy!)
C 35196,3 Reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
C 35199,2 Add four to number of characters in current room (for menu size padding)
C 35201,3 Load value into "bottom position (characters)" field of fourth window in windows data table at #R41874 (i.e. adjust window's height to accommodate all the characters present)
C 35204,2 Restore IX
C 35206,1 Restore BC
C 35207,2 Draw "WHO DO YOU WANT TO COMMAND?" menu window...
C 35209,3 ...
C 35212,3 Point HL at "WHO DO YOU WANT TO COMMAND?" text
C 35215,3 Print text in window
C 35218,1 Restore HL (primary text, as at beginning of this routine)
C 35219,3 Print text in window
C 35222,3 Point HL at "0]" text (i.e. letters corresponding to menu items)
C 35225,2 Set this character to ASCII code 64 (character immediately before "A")...
C 35227,1 ...
C 35228,4 Point IX at table of indices of characters in current room
C 35232,2 Load 3 into B (as we can have up to three characters in this room)
C 35234,1 Store BC
C 35235,3 Load index of next character in room...
C 35238,2 ...compare with 255 (i.e. empty slot)...
C 35240,3 ...and if this is an empty slot (i.e. no more characters) then jump to #R35282
C 35243,3 Point HL at "0]" text (i.e. letters corresponding to menu items)
C 35246,1 Load the first text character into A...
C 35247,1 ...increment...
C 35248,1 ...and write back to location HL (i.e. advance to next letter, as menu choices are labelled A, B, C, etc.)
C 35249,3 Point to beginning of this modified string...
C 35252,3 ...and print it to screen
C 35255,3 Load index of character into A again...
C 35258,3 ...and set this as the Current Character
C 35261,3 Point HL to code to print full name of Current Character...
C 35264,3 ...and print it to screen
C 35267,2 Advance IX to next character
C 35269,1 Restore BC
C 35270,2 Repeat loop if we have not yet reached the third character
C 35272,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 35275,3 Update Current Character based upon selection made in menu
C 35278,3 Display warning and abort if command is not safe while Gimbal whited-out
C 35281,1 Return
C 35282,1 Restore BC
C 35283,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 35286,3 Update Current Character based upon selection made in menu
C 35289,3 Display warning and abort if command is not safe while Gimbal whited-out
C 35292,1 Return
c 35293 Display and Process Input for Character Selection Menu for "Travel To", "Summon" or "Locate"
D 35293 Used by the routines at #R32035, #R33036 and #R33312. Input:  HL  (On stack) Pointer to text ("TRAVEL TO", "SUMMON" or "LOCATE") pushed onto stack before call to this routine
C 35293,3 Set parameters for and play short downward scale sound...
C 35296,3 ...twice
C 35299,3 Load A with 1 if Banshee is released, else load with 0...
C 35302,2 ...
C 35304,2 Set height of character selection menu window according to whether or not Banshee is free...
C 35306,3 ...
C 35309,2 Display character selection menu...
C 35311,3 ...
C 35314,3 Print "WHO DO YOU WANT TO..." text...
C 35317,3 ...
C 35320,1 Restore HL (address to return to upon RET instruction)...
C 35321,1 ...and swap with next value on stack (pointer to text that was PUSHed before this routine was called)
C 35322,3 Print the text
C 35325,3 Set character at 43221 (letter preceding menu items) to "@" (i.e. the character immediately before "A")...
C 35328,2 ...
C 35330,1 ...
C 35331,2 Load B with 7 as there are initially 7 characters
C 35333,3 If Banshee is not released...
C 35336,2 ...
C 35338,2 ...then skip ahead to #R35341
C 35340,1 Add one as with Banshee free there are 8 characters
C 35341,1 Load number of characters into A...
C 35342,3 ...and use to modify instruction at #R35374
C 35345,1 Set B to zero...
C 35346,1 ...
C 35347,1 Store AF
C 35348,1 Store BC
C 35349,3 Change Current Character to value in A
C 35352,1 Copy B into A
C 35353,2 Set character at 43221 (letter preceding menu items) to ASCII code of "A", plus index of character...
C 35355,3 ...
C 35358,3 Point HL at this prefix text...
C 35361,3 ...and print it
C 35364,3 Point HL to code to print full name of Current Character...
C 35367,3 ...and print it
C 35370,1 Restore BC (B=current character number)
C 35371,1 Increase B for next character
C 35372,1 Restore AF
C 35373,1 Increase A to count number characters printed in menu
N 35374 The operand of the instruction at #R35374 represents the number of currently active characters in the game (excluding Magic Knight). This is modified by the instruction at #R35342.
C 35374,2 If number of characters printed is not equal to number of characters to print...
C 35376,2 ...then loop back to #R35347 for next character
C 35378,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A
C 35381,2 Subtract ASCII code of "A" from letter of character chosen to get index of selected character in A
C 35383,3 Set this to be the Current Character
C 35386,3 Print short name of Current Character in command summary window at bottom of screen
C 35389,3 Display warning and abort if command is not safe while Gimbal whited-out
C 35392,1 Return
c 35393 Display Warning and Abort if Command is not Safe While Gimbal is Whited-Out
D 35393 Used by the routines at #R35141 and #R35293.
C 35393,3 Load index of Current Character into A
C 35396,1 If not zero (Gimbal)...
C 35397,1 ...then return
C 35398,3 If Gimbal-White-Out Safe Flag is set...
C 35401,2 ...
C 35403,1 ...then return
C 35404,3 If Gimbal is released...
C 35407,2 ...
C 35409,1 ...then return
C 35410,1 Restore HL
C 35411,1 Restore HL
C 35412,2 Display "GIMBAL IS NOT YET RELEASED..." window and return to game...
C 35414,3 ...
C 35417,3 ...
c 35420 Select Magic Knight's Room (Cheat / Debug Routine)
D 35420 Used by the routine at #R27236.
C 35420,3 Play Cheat Routine Sound
C 35423,3 Wait for a key-press then beep, loading index of pressed key into A
C 35426,2 If "X" is pressed...
C 35428,3 ...then return to BASIC
C 35431,2 If a key with an index lower than "0" is pressed then exit this routine...
C 35433,3 ...
C 35436,2 If a key with an index equal to or higher than "5" is pressed then exit this routine...
C 35438,3 ...
C 35441,2 Subtract 48 (ASCII code for "0") from index of key pressed to convert to a number
C 35443,1 Multiply number by 10 in A...
C 35444,1 ...
C 35445,1 ...
C 35446,1 ...
C 35447,1 ...
C 35448,3 Set Magic Knight's current room to this value
C 35451,3 Wait for a key-press then beep, loading index of pressed key into A
C 35454,2 If "X" is pressed...
C 35456,3 ...then return to BASIC
C 35459,2 If a key with an index lower than "0" is pressed then exit this routine...
C 35461,3 ...
C 35464,2 If a key with an index equal to or higher than ":" (one immediately after "9") is pressed then exit this routine...
C 35466,3 ...
C 35469,2 Subtract 48 (ASCII code for "0") from index of key pressed to convert to a number
C 35471,1 Add value of this second digit to value in Magic Knight's current room...
C 35472,3 ...
C 35475,1 ...
C 35476,3 ...
C 35479,1 Set Magic Knight's current frame to erase to zero (frame 0 is blank graphic data) so Magic Knight is drawn but not erased...
C 35480,3 ...
C 35483,3 Set parameters for and play downward scale sound
C 35486,3 Redraw current room and return to game
C 35489,3 Play Cheat Routine Sound
C 35492,3 Jump to start of Main Game Loop
c 35495 Set Magic Knight's Available Action Flags
D 35495 Used by the routines at #R26906, #R29446, #R30222 and #R32390.
C 35495,3 Set the "Magic Knight Can Command" flag if he is carrying the wand of command
C 35498,3 Set the "Magic Knight Can Locate" flag if he is carrying the crystal ball
C 35501,3 Set the "Magic Knight Can Teleport" flag if he is carrying the teleport key
C 35504,3 Set the "Magic Knight Can Read" flag if he is carrying a readable object
C 35507,3 Set the "Magic Knight Can Throw" flag if he is carrying a throwable object
C 35510,3 Set the "Magic Knight Can Cast a spell" flag if he is carrying a magic object
C 35513,3 Set the "Magic Knight Can Blow" flag if he is carrying a blowable object
C 35516,3 Set the "Magic Knight Can Call Lift" flag if he is in the first room of a floor
C 35519,3 Set the "Magic Knight Can Move Lift" flag if he is in the Lift
C 35522,3 Load A with Magic Knight's current room...
C 35525,1 ...and if he is not in the Lift...
C 35526,1 ...then return
C 35527,3 If he IS in the lift...
C 35530,2 ...reset the "Magic Knight Can Locate" flag (i.e. false)...
C 35532,3 ...
C 35535,1 Return
c 35536 Set the "Magic Knight Can Command" Flag if he is Carrying the Wand of Command
D 35536 Used by the routine at #R35495.
C 35536,3 Reset "Magic Knight Can Command" flag (i.e. false)...
C 35539,2 ...
C 35541,3 ...
C 35544,3 Point HL to start of Magic Knight's current inventory
C 35547,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35549,1 Load index of object carried by Magic Knight into A
C 35550,2 And if this is the Wand of Command (object 7)...
C 35552,2 ...then skip to #R35558...
C 35554,1 ...else advance to next inventory slot...
C 35555,2 ...and repeat
C 35557,1 If this was last slot, then return with "Magic Knight Can Command" flag unset
C 35558,3 Set "Magic Knight Can Command" flag (i.e. true)...
C 35561,2 ...
C 35563,3 ...
C 35566,1 Return
c 35567 set the "Magic Knight Can Locate" Flag if he is Carrying the Crystal Ball
D 35567 Used by the routine at #R35495.
C 35567,3 Reset "Magic Knight Can Locate" flag (i.e. false)...
C 35570,2 ...
C 35572,3 ...
C 35575,3 Point HL to start of Magic Knight's current inventory
C 35578,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35580,1 Load index of object carried by Magic Knight into A
C 35581,2 And if this is the Crystal Ball (object 6)...
C 35583,2 ...then skip to #R35589...
C 35585,1 ...else advance to next inventory slot...
C 35586,2 ...and repeat
C 35588,1 If this was last slot, then return with "Magic Knight Can Locate" flag unset
C 35589,3 Set "Magic Knight Can Locate" flag (i.e. true)...
C 35592,2 ...
C 35594,3 ...
C 35597,1 Return
c 35598 Set the "Magic Knight Can Teleport" Flag if he is Carrying the Teleport Key
D 35598 Used by the routine at #R35495.
C 35598,3 Reset "Magic Knight Can Teleport" flag (i.e. false)...
C 35601,2 ...
C 35603,3 ...
C 35606,3 Point HL to start of Magic Knight's current inventory
C 35609,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35611,1 Load index of object carried by Magic Knight into A
C 35612,2 And if this is the Teleport Key (object 48)...
C 35614,2 ...then skip to #R35620...
C 35616,1 ...else advance to next inventory slot...
C 35617,2 ...and repeat
C 35619,1 If this was last slot, then return with "Magic Knight Can Teleport" flag unset
C 35620,3 Set "Magic Knight Can Teleport" flag (i.e. true)...
C 35623,2 ...
C 35625,3 ...
C 35628,1 Return
c 35629 Set the "Magic Knight Can Read" Flag if he is Carrying a Readable Object
D 35629 Used by the routine at #R35495.
C 35629,3 Reset "Magic Knight Can Read" flag (i.e. false)...
C 35632,2 ...
C 35634,3 ...
C 35637,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35639,4 Point IX to start of Magic Knight's current inventory
C 35643,3 Load index of object carried by Magic Knight into A
C 35646,2 Point HL to property 2 ("Read Text") of this object (in table at #R42242)...
C 35648,3 ...
C 35651,1 ...and load into A
C 35652,1 If "Read Text" property is not zero (i.e. if object can be read)...
C 35653,2 ...then skip to #R35660...
C 35655,2 ...else advance to next inventory slot...
C 35657,2 ...and repeat
C 35659,1 If this was last slot, then return with "Magic Knight Can Read" flag unset
C 35660,3 Set "Magic Knight Can Read" flag (i.e. true)...
C 35663,2 ...
C 35665,3 ...
C 35668,1 Return
c 35669 Set the "Magic Knight Can Throw" Flag if he is Carrying a Throwable Object
D 35669 Used by the routine at #R35495.
C 35669,3 Reset "Magic Knight Can Throw" flag (i.e. false)...
C 35672,2 ...
C 35674,3 ...
C 35677,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35679,4 Point IX to start of Magic Knight's current inventory
C 35683,3 Load index of object carried by Magic Knight into A
C 35686,2 Point HL to property 4 ("use status") of this object (in table at #R42242)...
C 35688,3 ...
C 35691,2 ...and if bit 1 (Throw status) of this is set...
C 35693,2 ...then skip to #R35700...
C 35695,2 ...else advance to next inventory slot...
C 35697,2 ...and repeat
C 35699,1 If this was last slot, then return with "Magic Knight Can Throw" flag unset
C 35700,3 Set "Magic Knight Can Throw" flag (i.e. true)...
C 35703,2 ...
C 35705,3 ...
C 35708,1 Return
c 35709 Set the "Magic Knight Can Cast a Spell" Flag if he is Carrying a Magic Object
D 35709 Used by the routine at #R35495.
C 35709,3 Reset "Magic Knight Can Cast a Spell" flag (i.e. false)...
C 35712,2 ...
C 35714,3 ...
C 35717,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35719,4 Point IX to start of Magic Knight's current inventory
C 35723,3 Load index of object carried by Magic Knight into A
C 35726,2 Point HL to property 3 ("Magic Power") of this object (in table at #R42242)...
C 35728,3 ...
C 35731,1 ...and load into A
C 35732,1 If "Magic Power" property is not zero (i.e. if object is magic)...
C 35733,2 ...then skip to #R35740...
C 35735,2 ...else advance to next inventory slot...
C 35737,2 ...and repeat
C 35739,1 If this was last slot, then return with "Magic Knight Can Cast a Spell" flag unset
C 35740,3 Set "Magic Knight Can Cast a Spell" flag (i.e. true)...
C 35743,2 ...
C 35745,3 ...
C 35748,1 Return
c 35749 Set the "Magic Knight Can Blow" Flag if he is Carrying a Blowable Object
D 35749 Used by the routine at #R35495.
C 35749,3 Reset "Magic Knight Can Blow" flag (i.e. false)...
C 35752,2 ...
C 35754,3 ...
C 35757,2 Set counter to 5 (as Magic Knight can carry 5 objects)
C 35759,4 Point IX to start of Magic Knight's current inventory
C 35763,3 Load index of object carried by Magic Knight into A
C 35766,2 Point HL to property 4 ("Use Status") of this object (in table at #R42242)...
C 35768,3 ...
C 35771,2 ...and if bit 0 (Blow status) of this is set...
C 35773,2 ...then skip to #R35780...
C 35775,2 ...else advance to next inventory slot...
C 35777,2 ...and repeat
C 35779,1 If this was last slot, then return with "Magic Knight Can Blow" flag unset
C 35780,3 Set "Magic Knight Can Blow" flag (i.e. true)...
C 35783,2 ...
C 35785,3 ...
C 35788,1 Return
c 35789 Set the "Magic Knight Can Call Lift" Flag if he is in the First Room of a Floor
D 35789 Room numbers from which lift can be called:
C 35789,3 Reset "Magic Knight Can Call Lift" flag (i.e. false)...
C 35792,2 ...
C 35794,3 ...
C 35797,3 Load A with Magic Knight's current room
C 35800,1 If room number is zero (i.e. "The Lift")...
C 35801,1 ...then return with flag unset
C 35802,1 Decrease room number by one
C 35803,2 If this value is not a multiple of eight (i.e. a room from which the lift can be called)...
C 35805,1 ...then return with flag unset
C 35806,3 Set "Magic Knight Can Call Lift" flag (i.e. true)...
C 35809,2 ...
C 35811,3 ...
C 35814,1 Return
c 35815 Set the "Magic Knight Can Move Lift" Flag if he is in the Lift
D 35815 Used by the routine at #R35495.
C 35815,3 Reset "Magic Knight Can Move Lift" flag (i.e. false)...
C 35818,2 ...
C 35820,3 ...
C 35823,3 Load A with Magic Knight's current room
C 35826,1 If room number is not zero (i.e. not "The Lift")...
C 35827,1 ...then return with flag unset
C 35828,3 Set "Magic Knight Can Move Lift" flag (i.e. true)...
C 35831,2 ...
C 35833,3 ...
C 35836,1 Return
c 35837 Insert Numeric Stats (at HL) of a Character into "Examine Character" Window Text
D 35837 Used by the routine at #R31370. Input:  HL  Points to strength of a character
C 35837,1 Store HL (pointer to strength)
C 35838,1 Load strength into A
C 35839,1 Store HL (pointer to strength)
C 35840,3 Point HL at "strength" 99 in "EXAMINE [CHARACTER]" window text
C 35843,3 Splice numeric data A as a string into a string at HL
C 35846,1 Restore HL (pointer to strength)
C 35847,1 Advance HL to happiness
C 35848,1 Load happiness into A
C 35849,1 Store HL (pointer to happiness)
C 35850,3 Point HL at "happiness" 99 in "EXAMINE [CHARACTER]" window text
C 35853,3 Splice numeric data A as a string into a string at HL
C 35856,1 Restore HL (pointer to happiness)
C 35857,1 Advance HL to stamina
C 35858,1 Load stamina into A
C 35859,1 Store HL (pointer to stamina)
C 35860,3 Point HL at "stamina" 99 in "EXAMINE [CHARACTER]" window text
C 35863,3 Splice numeric data A as a string into a string at HL
C 35866,1 Restore HL (pointer to stamina)
C 35867,1 Advance HL to spell power
C 35868,1 Load spell power into A
C 35869,1 Store HL (pointer to spell power)
C 35870,3 Point HL at "spell power" 99 in "EXAMINE [CHARACTER]" window text
C 35873,3 Splice numeric data A as a string into a string at HL
C 35876,1 Restore HL (pointer to spell power)
C 35877,1 Advance HL to food level
C 35878,1 Load food level into A
C 35879,3 Point HL at "food level" 99 in "EXAMINE [CHARACTER]" window text
C 35882,3 Splice numeric data A as a string into a string at HL
C 35885,1 Restore HL (original pointer to strength)
C 35886,1 Return
c 35887 Insert Numeric / Text Stats of an Object into "Examine Object" Window Text
D 35887 Used by the routine at #R31370. Input:  HL  Points to weight of an object
C 35887,1 Load A with weight of the object
C 35888,1 Store HL (pointer to weight of object)
C 35889,3 Point HL at numeric part of "WEIGHT     XXX#" string
C 35892,3 Splice numeric data A as a string into a string at HL
C 35895,1 Restore HL (pointer to weight of object)
C 35896,1 Advance HL to Drop Status
C 35897,2 Load B with (index for text "YES")
C 35899,1 Load A with Drop Status
C 35900,1 If drop status is zero (i.e. object can be dropped)...
C 35901,2 ...then skip ahead to #R35904
C 35903,1 Increase B to 148 (index for text "NO")
C 35904,1 Load B into A...
C 35905,3 ...and insert this text into the string "DROP STATUS X"
C 35908,1 Advance HL to "Read Text" index
C 35909,2 Load B with (index for text "YES")
C 35911,1 Load A with "Read Text" index
C 35912,1 If "Read Text" index is not zero (i.e. object can be read)...
C 35913,2 ...then skip ahead to #R35904
C 35915,1 Increase B to 148 (index for text "NO")
C 35916,1 Load B into A...
C 35917,3 ...and insert this text into the string "READ STATUS X"
C 35920,1 Advance HL to "Magic Power" value
C 35921,1 Load A with "Magic Power" value
C 35922,1 Store HL (pointer to Magic Power value)
C 35923,3 Point HL at numeric part of "MAGIC POWER     XXX#" string
C 35926,3 Splice numeric data A as a string into a string at HL
C 35929,1 Restore HL (pointer to object's Magic Power value)
C 35930,1 Return
c 35931 Get Number of Characters in a Room, and Load Their Indices into Table at 23464
D 35931 Used by the routine at #R35141. Input:  A  Room number Output: A  number of characters in room A (input) C  number of characters in room A (input) F  Zero Flag reset if characters are present in room, set otherwise
C 35931,3 Store room index in instruction at #R35966
C 35934,1 Store HL
C 35935,1 Store BC
C 35936,1 Store DE
C 35937,2 Store IX
C 35939,2 Load A with 255
C 35941,3 Clear "characters in current room" data table at #R23464...
C 35944,1 ...
C 35945,1 ...
C 35946,1 ...
C 35947,1 ...
C 35948,1 ...
C 35949,4 Point IX at characters' current positions table
C 35953,2 Set D to zero
C 35955,3 Set B to 7 (as we have seven characters, excluding Banshee so loop back seven times) and C to 0
C 35958,3 If Banshee has not been released, then...
C 35961,2 ...
C 35963,2 ...skip ahead to #R35966...
C 35965,1 ...else increase B by one to take into account presence of Banshee
N 35966 The operand of the instruction at #R35966 represents the appropriate room index. This is modified by the instruction at #R35931.
C 35966,2 Load A with room number
C 35968,3 Compare to room number of current character...
C 35971,2 ...and if not the same, then jump to #R35976 (i.e. move onto next character)
C 35973,1 Increase C (number of characters in current room) by one
C 35974,1 Store character index in table at #R23464
C 35976,2 Advance IX by three bytes, to next character's entry...
C 35978,2 ...
C 35980,2 ...
C 35982,1 Increase D (index of current character)
C 35983,2 Loop back for next character
C 35985,1 Load A with number of characters in current room
C 35986,1 Set zero flag if no characters present
C 35987,2 Restore IX
C 35989,1 Restore DE
C 35990,1 Restore BC
C 35991,1 Restore HL
C 35992,1 Return
c 35993 Update Position of Odd Ball, Display, and Decrease Magic Knight's Strength if in Contact
D 35993 Used by the routines at #R29776 and #R29874. Input:  A  Ball number (0, 1, 2 or 3)
C 35993,1 Multiply value of A by eight...
C 35994,1 ...
C 35995,1 ...
C 35996,1 Store in C
C 35997,2 Set B to zero
C 35999,4 Set IX to point to data for balls
C 36003,2 Add eight times ball number as offset to IX pointer
C 36005,3 Load ball's x-coordinate into C
C 36008,3 Load ball's y-coordinate into B
C 36011,1 Store BC
C 36012,4 Load BC into system variable "COORDS"
C 36016,3 Load A with ball's current frame number
C 36019,2 Store IX
C 36021,3 Draw Odd Ball to screen
C 36024,2 Restore IX
C 36026,1 Restore BC
C 36027,3 Load x-velocity into A
C 36030,1 Add x-coordinate to A
C 36031,1 Load new x-coordinate back into C
C 36032,3 Load y-velocity into A
C 36035,1 Add y-coordinate to A
C 36036,1 Load new y-coordinate back into B
C 36037,3 Update data with new x-...
C 36040,3 ...and y-coordinates
C 36043,4 Update "COORDS" system variable
C 36047,3 Load A with Odd Ball frame data
C 36050,2 Subtract 116 (i.e. frame number of first Odd Ball frame) to get "absolute frame number" (see trivia)
C 36052,1 Advance absolute frame number by one
C 36053,2 Cap absolute frame number to 3, and wrap round from 3 to 0 as there are only four frames
C 36055,2 Add 116 to absolute frame number to give relative frame number again
C 36057,3 Store new frame number
C 36060,2 Store IX
C 36062,3 Draw Odd Ball to screen
C 36065,2 Restore IX
C 36067,3 Load x-coordinate of ball
C 36070,1 If x-coordinate is zero...
C 36071,3 ...multiply x "velocity" by minus one
C 36074,2 If x-coordinate is 244...
C 36076,3 ...multiply x "velocity" by minus one
C 36079,2 Temporarily advance IX pointer to work with y "velocities"
C 36081,3 Load y-coordinate of ball
C 36084,2 If y-coordinate is 172...
C 36086,3 ...multiply y "velocity" by minus one
C 36089,2 If y-coordinate is 40...
C 36091,3 ...multiply y "velocity" by minus one
C 36094,2 Move IX back one again (reversing instruction at #R36079)
C 36096,3 Load A with Magic Knight's current x-coordinate
C 36099,1 Copy into B
C 36100,3 Load A with x-coordinate of ball
C 36103,2 Add 6 to x-coordinate of ball
C 36105,1 Subtract B to get x-distance between Magic Knight and the ball, plus 6
C 36106,2 If this value is not less than 21 then...
C 36108,3 ...return
C 36111,3 Else, load B with Magic Knight's y-coordinate...
C 36114,1 ...
C 36115,3 Load A with y-coordinate of ball (uses same coordinate system as PLOT command, i.e. y=0 is at bottom of screen)
C 36118,2 Subtract y-coordinate from 175 to change y-origin to top of screen...
C 36120,2 ...and have y-coordinate increase downwards rather than upwards
C 36122,2 Add 6 to y-coordinate of ball
C 36124,1 Subtract B to get y-distance between Magic Knight and the ball, plus 6
C 36125,2 If this value is not less than 39 then...
C 36127,3 ...return
C 36130,3 Else, decrease Magic Knight's current strength by one...
C 36133,1 ...
C 36134,3 ...
C 36137,3 Draw health bar at bottom of screen
C 36140,3 Load Magic Knight's current strength into A...
C 36143,1 If Magic Knight's strength is zero...
C 36144,3 ...point HL to "YOU DIED OF EXHAUSTION" text...
C 36147,3 ...and jump to "Game over" window routine and exit
C 36150,2 Set C to 32 (number of times to repeat loop below)
C 36152,2 Set speaker bit...
C 36154,2 ...
C 36156,2 Load A with random number between 0 - 15 (as R register increases with each instruction executed)...
C 36158,2 ...
C 36160,1 Load value into B
C 36161,2 Pause by repeating this line B times
C 36163,1 Set A to zero
C 36164,2 Reset speaker bit
C 36166,1 Decrease C...
C 36167,2 ...and repeat loop if C is not zero
C 36169,1 Reset speaker bit...
C 36170,2 ...
C 36172,1 Return
c 36173 Multiply x or y Velocity of Odd-Ball by Minus One
D 36173 Used by the routine at #R35993. Input:  IX  Address of x or y "velocity" of Odd-Ball minus two
C 36173,3 Load A with x "velocity" of ball
C 36176,2 Multiply velocity by minus one
C 36178,3 Load back into data block
C 36181,1 Set A to zero
C 36182,1 Return
b 36183 Properties of the Odd-Balls
D 36183 Up to four balls may exist in a room, therefore there are four entries in this table. Each ball's properties are encoded in eight bytes with the following meanings:
B 36183,8,8 Ball 1
B 36191,8,8 Ball 2
B 36199,8,8 Ball 3
B 36207,8,8 Ball 4
c 36215 Draw Strength Bar at Bottom of Screen
D 36215 Used by the routines at #R28092 and #R35993.
C 36215,2 Load A with index of object 35 (Mirror)
C 36217,3 Check whether Magic Knight is carrying the Mirror...
C 36220,1 ...and if not, return
C 36221,3 Point HL to position of start of health bar in Display File
C 36224,3 Load A with Magic Knight's strength
C 36227,1 Divide strength by eight, rounding down to nearest integer...
C 36228,1 ...
C 36229,1 ...
C 36230,2 ...and if lowest four bits are reset (i.e. don't need to draw part of a character block)...
C 36232,2 ...then skip ahead to #R36251
C 36234,1 Load number of full character blocks to draw into B
C 36235,2 Place 255 into A
C 36237,1 Store HL (Display File position of start of health bar block)
C 36238,1 Store BC (B = number of full character blocks to draw)
C 36239,2 Load B with 4 (health bar has 4 stripes)
C 36241,1 Draw a byte (i.e. a "block" of 8 health units) to health bar
C 36242,1 Advance HL two rows down (as bar is made of alternating horizontal stripes)...
C 36243,1 ...
C 36244,2 And if there's another stripe of the 4 to draw, then loop back and draw it
C 36246,1 Restore BC (B = number of full character blocks to draw)
C 36247,1 Restore HL (Display File position of start of health bar)
C 36248,1 Advance HL (horizontally) one character to draw next full block, if applicable
C 36249,2 If there's another block to draw, then loop back to draw it
C 36251,3 Load A with Magic Knight's strength
C 36254,2 Get fractional part (i.e. amount by which strength is more than a multiple of eight)
C 36256,2 If it is not zero, then skip ahead to #R36261
C 36258,1 Set A to zero
C 36259,2 Skip ahead to draw the blank rows (see trivia)
C 36261,1 Load fractional part of strength into B
C 36262,1 Set A to zero
C 36263,1 Set the Carry Flag
C 36264,1 Move carry Flag bit into MSB of A
C 36265,2 Decrease B and loop back if not zero (i.e. place a bit at the LHS of A for each unit of strength that is left!)
C 36267,2 Load B with 4 (health bar has 4 stripes)
C 36269,1 Draw a byte (i.e. a "block" of 8 health units) to health bar
C 36270,1 Advance HL two rows down (as bar is made of alternating horizontal stripes)...
C 36271,1 ...
C 36272,2 Loop back to draw next row
C 36274,1 Return
c 36275 Draw Objects in Magic Knight's Inventory to Bottom of Screen if he is Carrying the Mirror
D 36275 Used by the routine at #R28092.
C 36275,2 Load A with index of object 35 (Mirror)
C 36277,3 Check whether Magic Knight is carrying the Mirror...
C 36280,1 ...and if not, return
C 36281,3 Point HL to Magic Knight's inventory
C 36284,2 Set counter to 5 (as inventory has 5 slots)
C 36286,3 Load DE with x- and y-coordinates respectively to start drawing object graphics (D, or x = 21, E, or y = 16)
C 36289,1 Store BC, HL and DE...
C 36290,1 ...
C 36291,1 ...
C 36292,1 Load index of object at current slot in Magic Knight's inventory into A
C 36293,1 If this is zero...
C 36294,2 ...then return
C 36296,2 Load 6 into E
C 36298,3 Point HL to property 6 (attribute) of this object in properties table...
C 36301,1 ...and load value of property into A...
C 36302,3 ...then into system variable ATTR T
C 36305,1 Advance HL to point to graphic index property...
C 36306,1 ...and load into A
C 36307,1 Restore BC...
C 36308,1 ...and store again
C 36309,3 Draw the object at the current inventory slot
C 36312,1 Restore coordinates
C 36313,1 Add 1 character of horizontal space between this and the next object (objects are 2 characters wide, plus one of space makes three)...
C 36314,2 ...
C 36316,1 ...
C 36317,1 Advance to next inventory slot...
C 36318,1 ...
C 36319,1 ...
C 36320,2 Repeat loop for next inventory slot
C 36322,1 Return
C 36323,1 Restore BC, HL and DE...
C 36324,1 ...
C 36325,1 ...
C 36326,1 Return
c 36327 Assign a Slot in Room C to Character B
D 36327 Used by the routines at #R26906, #R30540, #R33312 and #R55233. Input:  B  Index of a character C  Room number Output: A  Number of slot assigned (4 if room is full) B  y-coordinate (characters) of slot C  x-coordinate (characters) of slot
C 36327,1 Load room number into A
C 36328,3 Point HL at start of table of current characters' locations (i.e. Gimbal, Thor etc.)
C 36331,3 Point DE at table of characters' slots in their current rooms
C 36334,4 Point IX at 36472 list of occupied slots...
C 36338,4 ...and set three bytes there to zeroes...
C 36342,4 ...
C 36346,4 ...
C 36350,1 Store BC
C 36351,2 Load B with 8
C 36353,1 Compare a character's current screen number with room number passed to this routine (in A)...
C 36354,2 ...and if they're not the same then skip ahead to #R36364 (move onto next character, if applicable)
C 36356,1 Swap registers
C 36357,1 Load character's slot (i.e. order of arrival in the room) into A
C 36358,3 Copy slot into table at 36472
C 36361,2 Advance IX to next entry in this table
C 36363,1 Exchange registers
C 36364,1 Advance HL by three bytes (i.e. skip over x- and y-coordinates to get to screen number of next character)...
C 36365,1 ...
C 36366,1 ...
C 36367,1 Advance DE by one byte to get slot of next character
C 36368,2 Loop back if previous character was not the last
C 36370,1 Restore BC
C 36371,4 Point IX at list of occupied slots
C 36375,2 If one of the characters in room C has a slot of 1...
C 36377,3 ...then jump ahead to #R36394...
C 36380,2 ...
C 36382,3 ...
C 36385,2 ...
C 36387,3 ...
C 36390,2 ...
C 36392,2 ...else jump to #R36435
C 36394,2 If one of the characters in room C has a slot of 2...
C 36396,3 ...then jump ahead to #R36413...
C 36399,2 ...
C 36401,3 ...
C 36404,2 ...
C 36406,3 ...
C 36409,2 ...
C 36411,2 ...else jump to #R36435
C 36413,2 If one of the characters in room C has a slot of 3...
C 36415,3 ...then jump ahead to #R36432...
C 36418,2 ...
C 36420,3 ...
C 36423,2 ...
C 36425,3 ...
C 36428,2 ...
C 36430,2 ...else jump to #R36435
C 36432,2 Return with A=4...
C 36434,1 ...
C 36435,1 Load highest slot among characters plus one in room into E
C 36436,1 Store DE (E=lowest empty slot)
C 36437,1 Store BC (B=Character index, C=Room number)
C 36438,1 Decrease A to get index of lowest empty slot...
C 36439,1 ...double it...
C 36440,1 ...and load into DE...
C 36441,2 ...
C 36443,2 Set B to zero
C 36445,1 Copy BC into HL...
C 36446,1 ...so that HL contains room number passed to this routine initially
C 36447,1 Double room number...
C 36448,1 ...add room number again (now three times)...
C 36449,1 ...and double again to get six times original room number in HL
C 36450,3 Point BC at table of coordinates of character positions in rooms
C 36453,1 Add to six times room number into HL
C 36454,1 Add to this double (slot - 1) from DE
C 36455,1 Load x- and y-coordinates into BC
C 36456,1 ...
C 36457,1 ...
C 36458,1 Exchange all registers
C 36459,1 Restore BC (B=Character index, C=Room number)
C 36460,3 Point HL at table of characters' slots in their current rooms
C 36463,2 Load input character index into DE...
C 36465,1 ...
C 36466,1 Add as offset to HL
C 36467,1 Restore (E=lowest empty slot)
C 36468,1 Set this character's slot to be lowest empty slot in this room
C 36469,1 Set A to slot number just filled
C 36470,1 Exchange all registers
C 36471,1 Return
b 36472 List of Occupied Slots in a Room
D 36472 Used by routine at #R36327
B 36472,3,3
c 36475 Print a Character (e.g. Letter in the Current Room Name, or a Block of a Window Border)
D 36475 Used by the routines at #R36725, #R36908 and #R37147. Input:  A  Index of character to print
C 36475,1 Store HL
C 36476,3 Point to graphic (Magic Knight, frame 1, facing left)
C 36479,1 Load index of character into HL and multiply by 8...
C 36480,2 ...
C 36482,1 ...
C 36483,1 ...
C 36484,1 ...
C 36485,1 ...and add to DE to obtain memory location of required character in the character set
C 36486,1 Swap values (DE now holds memory location of character to print and HL holds 63732)
N 36487 The operand of the instruction at #R36487 represents the Display File address to print to. This is modified by the instructions at #R28272 and #R36551.
C 36487,3 Load HL with the Display File address to print character to
C 36490,2 For eight bytes (i.e. full height of character)...
C 36492,1 ...get graphic data from character set...
C 36493,1 ...and load into Display File...
C 36494,1 ...move to next pixel row in character set...
C 36495,1 ...and move to next pixel row in Display File
C 36496,2 (End loop)
C 36498,3 Load memory location 23487 (and HL) with memory location of attribute data (Attribute File) for character just printed
C 36501,3 Obtain attribute data stored previously in system variable ATTR T (71 = white INK, black PAPER, BRIGHT)
C 36504,1 Apply attribute to character just printed
C 36505,3 Advance Display File pointer to next location (for printing room name)
C 36508,1 Restore HL
C 36509,1 Return
c 36510 Draw a Single Character Block Part of a Wall, Ceiling or Floor
D 36510 Used by the routine at #R28344. Input:  A  Index of brickwork graphic to draw (from lookup table #R54617)
C 36510,1 Store HL
C 36511,3 Point DE at start of brickwork (architecture) graphic data
C 36514,1 Double architecture style index
C 36515,2 Load brickwork graphic index into HL...
C 36517,1 ...
C 36518,1 Multiply by 4 (to give 8 times original value)...
C 36519,1 ...
C 36520,1 Add to DE as offset
C 36521,1 Switch DE and HL (so HL points to start of brickwork graphic data and DE points graphic data for required brickwork block)
C 36522,3 Load "memory location to start printing character" in character printing routine into HL...
C 36525,2 Set loop repeat counter to 8
C 36527,1 Load a byte of graphic data into A...
C 36528,1 ...and draw to display
C 36529,1 Advance to next data to read
C 36530,1 Move HL down one pixel row
C 36531,2 Repeat loop for next pixel row
C 36533,3 Load "bitmap memory location to start printing character" in character printing routine into HL...
C 36536,1 Advance HL to attribute memory location corresponding to this Display File address...
C 36537,2 ...
C 36539,1 ...
C 36540,1 ...
C 36541,1 ...
C 36542,2 ...
C 36544,1 ...
C 36545,3 Load value in system variable ATTR T into this memory location (i.e. apply attribute)...
C 36548,1 ...
C 36549,1 Restore HL
C 36550,1 Return
c 36551 Move Bitmap Virtual Cursor to Display File address for Coordinates x=C, y=B
D 36551 Used by the routines at #R29356, #R36987, #R37147, #R37333, #R37552 and #R38417. Input:  B  y-coordinate (characters) C  x-coordinate (characters) Output: HL  Virtual Bitmap Cursor Display File address
C 36551,1 Load y-coordinate into A
C 36552,2 AND 24 to determine which third of the bitmap memory we are in (A = 0, 8 or 16. Can't be 24 as this is greater than y-resolution in characters, 0-23)
C 36554,2 Load HL with Display File address of start of appropriate third of display...
C 36556,1 ...(16,384, 18,432 or 20,480)
C 36557,1 Load y-coordinate back into A
C 36558,2 AND 7 to determine which of the 8 character rows within the third we are interested in
C 36560,1 Multiply by 8 to get pixel row required...
C 36561,1 ...
C 36562,1 ...
C 36563,1 Add x-coordinate
C 36564,1 Add to value currently in HL
C 36565,3 Set (video) memory location to start printing character
C 36568,1 Return
c 36569 Update Virtual Attribute Cursor to Attribute File for Coordinates x=C, y=B
D 36569 Used by the routines at #R26673, #R28683, #R28747, #R28841, #R28882, #R28960, #R29032, #R29089, #R29184, #R29205, #R29225, #R29291, #R29960, #R37571, #R38242, #R54853 and #R54955. Input:  B  y-coordinate (characters) C y-coordinate (characters) Output: HL  Virtual Attribute Cursor Attribute File address
C 36569,1 Copy y-coordinate into A
C 36570,1 Multiply by 8...
C 36571,1 ...
C 36572,1 ...
C 36573,1 Load HL with value...
C 36574,2 ...
C 36576,1 Multiply by four...
C 36577,1 ...now HL holds 32 times original y-coordinate
C 36578,2 Load DE with position of start of attribute data, plus x-coordinate...
C 36580,1 ...
C 36581,1 Add 32 times y-coordinate
C 36582,3 Store this in memory (virtual attribute cursor storage)
C 36585,1 Return
c 36586 Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
D 36586 Used by the routines at #R27495, #R27666, #R27809, #R29356 and #R38539. Input:  B  y-coordinate (characters) C y-coordinate (characters) Output: HL  Points to entry in "Terrain Interaction Data" at #R24539
C 36586,1 Store AF
C 36587,1 Load y-coordinate into A
C 36588,1 Multiply this by 8...
C 36589,1 ...
C 36590,1 ...
C 36591,1 Copy 8 times y-coordinate into HL...
C 36592,2 ...
C 36594,1 Multiply by 4...
C 36595,1 ...to give 32 times original y-coordinate in HL
C 36596,3 Point DE at start of "Terrain Interaction Data"
C 36599,1 Add 32 times y-coordinate as offset to HL
C 36600,2 Load x-coordinate into DE...
C 36602,1 ...
C 36603,1 Add x-coordinate as offset to HL
C 36604,1 Restore AF
C 36605,1 Return
c 36606 Advance Display File Pointer to Next Location (for Printing Room Name)
D 36606 Used by the routines at #R36475 and #R36875.
C 36606,3 Get Display File byte to modify...
C 36609,1 ...and increase (for next character)
C 36610,1 Load LSB of HL into A...
C 36611,1 ...and check whether it is zero
C 36612,2 If it is zero (i.e. advancing down a character row will take us into a different third of Display File) then skip to second part of routine...
C 36614,3 ...else store the updated (increased) Display File address for next character...
C 36617,1 ...and return
C 36618,1 Add 7 to MSB of Display File address...
C 36619,2 ...as advancing by one at 36609 took Display File pointer back up to 2nd pixel row of the current third of the display...
C 36621,1 ...when in fact we need to move to top pixel row of the NEXT third of the display (i.e. 7 x 32 x 8 = 7 x 256 bytes on from this!)...
C 36622,3 ...
C 36625,1 Return
c 36626 Advance Display File Pointer by Two Characters
D 36626 Used by the routine at #R28344.
C 36626,3 Get Display File byte to modify...
C 36629,1 ...and increase by two bytes...
C 36630,1 ...
C 36631,1 Load LSB of HL into A...
C 36632,1 ...and check whether it is zero
C 36633,2 If it is zero (i.e. advancing down a character row will take us into a different third of Display File) then skip to second part of routine...
C 36635,3 ...else store the updated (increased) Display File address for next character...
C 36638,1 ...and return
C 36639,1 Add 7 to MSB of Display File address...
C 36640,2 ...as advancing by one at #R36609 took Display File pointer back up to 2nd pixel row of the current third of the display...
C 36642,1 ...when in fact we need to move to top pixel row of the NEXT third of the display (i.e. 7 x 32 x 8 = 7 x 256 bytes on from this!)...
C 36643,3 ...
C 36646,1 Return
c 36647 Splice Numeric Data A as a String into a String at HL
D 36647 Used by the routines at #R34268, #R35837 and #R35887. Input:  A  Numeric data (e.g. percentage completion / character's strength) to be loaded into text at HL HL  Points to a "numeric" text (e.g. percentage completion / character's strength)
C 36647,1 Store HL (pointer to "numeric text")
C 36648,3 Point HL at destination location for ASCII string
C 36651,2 Load numeric value into BC...
C 36653,1 ...
C 36654,3 Convert numeric value in BC to ASCII string at location 23497
C 36657,3 Convert up to two (C=2) leading zeroes to spaces in last three digits (starting at #R23497) of the ASCII string number...
C 36660,2 ...
C 36662,3 ...
C 36665,1 Restore pointer to "numeric text" (originally in HL at start of this routine) into DE
C 36666,3 Point HL at string number just created
C 36669,3 Splice ASCII string number just generated into "numeric data" text (e.g. put the number XX into the "TIME LEFT XX HOURS" text)...
C 36672,2 ...
C 36674,1 Return
c 36675 Unused routine
C 36675,1 Transfer HL into BC...
C 36676,1 ...
C 36677,2 Store IX
C 36679,2 Transfer IX into HL...
C 36681,1 ...
C 36682,3 Convert numeric value in BC to ASCII string at location HL
C 36685,1 Restore HL (was originally in IX)
C 36686,2 Convert leading zeroes to spaces in a string number as 4 digit value...
C 36688,3 ...
C 36691,1 Return
c 36692 Convert Leading Zeroes to Spaces in a String Number
D 36692 Used by the routines at #R36647 and #R36675. Input:  C  Number of required digits in string (e.g. 2) HL  Pointer to location within ASCII string
C 36692,1 Load ASCII character at HL into A
C 36693,2 If character is not a zero ("0")...
C 36695,1 ...then return
C 36696,2 Replace the zero character with a space (i.e. remove leading zeroes from number)
C 36698,1 Advance to next character in string
C 36699,1 Decrease C (number of remaining digits to process)
C 36700,1 Return if last digit has been processed
C 36701,2 Loop back for next digit
c 36703 Get Start of Next Zero-Terminated String
D 36703 Used by the routines at #R28272, #R34842 and #R36830. Input:  HL  Current position in a list of zero-terminated strings Output: HL  Byte immediately after the first zero byte following HL (input) address
C 36703,1 Get byte at HL
C 36704,1 Advance HL
C 36705,1 Is byte value from old HL position zero?
C 36706,1 If so then exit
C 36707,2 If not, then restart this loop with new HL
c 36709 Store and Point HL at Attribute File Address for Character Just Printed
D 36709 Used by the routines at #R28510, #R36475, #R36725, #R36800 and #R36810.
C 36709,3 Load HL with Display File address for drawing character
C 36712,1 Load H into A...
C 36713,2 ...and cap at 31, to give screen third of interest (H=0-7, top third; H=8-15, middle third; H=16-23, bottom third)
C 36715,1 Divide by eight to get character row within the third...
C 36716,1 ...
C 36717,1 ...
C 36718,2 Add 22,528 to HL to move into Attribute File
C 36720,1 L still contains offset of x characters, so points to start of attributes for area where room name was just printed
C 36721,3 Store memory location for later use
C 36724,1 Return
c 36725 Print Text at Location HL to Screen
D 36725 Used by the routines at #R26747, #R26788, 27118, #R28092, #R28272, #R29800, #R29880, #R30540, #R30602, #R31153, #R31370, #R31636, #R32035, #R32655, #R32876, #R33180, #R33663, #R34350, #R34768, #R34914, #R35101, #R35141, #R35293, #R36830, #R37654, #R38693, #R38725 and #R38749. Input:  HL  Points to text data to print
C 36725,1 Store AF
C 36726,1 Store HL
C 36727,3 Update stored location of start of attribute data
C 36730,1 Retrieve HL
C 36731,1 Prepare for loop
N 36732 This entry point is used by the routines at #R36800 and #R36830.
C 36732,1 Start of loop - advance to next character to be printed
C 36733,1 Get character from string at location HL (e.g. "**  " text)
C 36734,1 Check against various values...
C 36735,3 If character is a null character, exit routine (via RET at #R36798)
C 36738,2 If character is a "9" (move right)...
C 36740,3 ...then move virtual text cursor right by one character
C 36743,2 If the character is a "13" ("ENTER" - carriage return + line feed)...
C 36745,3 ...then move Virtual Text Cursor down to start of next row
C 36748,2 If the character is a "14"...
C 36750,3 ...then move Virtual Text Cursor down to start of next row within current window
C 36753,2 If the character is a "16" (change of INK colour)...
C 36755,3 ...then go to change INK colour routine
C 36758,2 If the character is a "17" (change of PAPER colour)...
C 36760,3 ...then go to change PAPER colour routine
C 36763,2 If the character is a "18" (change of FLASH status)...
C 36765,3 ...go to change FLASH status routine
C 36768,2 If the character is a "19" (change of BRIGHT status)...
C 36770,3 ...then go to change BRIGHT status routine
C 36773,2 If the character is a "29" (print name of Current Object)...
C 36775,3 ...then go to the print Current Object name routine
C 36778,2 If the character is a "30" (print full name of Current Character)...
C 36780,3 ...then print the Current Character's full name
C 36783,2 If the character is a "31" (print short name of Current Character)...
C 36785,3 ...then print the Current Character's short name
C 36788,2 If value is 91 or greater (i.e. special character)...
C 36790,3 ...then print special character or change text attribute
C 36793,3 Print character to screen
C 36796,2 Loop back to #R36732 to print next character
C 36798,1 Restore AF and return
C 36799,1 Return
c 36800 Move Virtual Text Cursor Down to Start of Next Row
D 36800 Used by the routine at #R36725.
C 36800,1 Store HL
C 36801,3 Move virtual text cursor down to start of next text row
C 36804,3 Update stored location of start of attribute data
N 36807 This entry point is used by the routines at #R36810, #R36830 and #R36875.
C 36807,1 Restore HL
C 36808,2 Move onto next character
c 36810 Move Virtual Text Cursor Down to Start of Next Row Within Current Window
D 36810 Used by the routine at #R36725.
C 36810,1 Store HL
C 36811,3 Move virtual text cursor down to start of next text row
C 36814,3 Get position of virtual text cursor
C 36817,3 Load A with x-coordinate of left edge of current window (in characters)
C 36820,1 Offset the text cursor based upon left-edge of current window to prepare to print text starting at left edge of this window...
C 36821,1 ...
C 36822,3 Update virtual text cursor location
C 36825,3 Update stored location of start of attribute data
C 36828,2 Go to #R36807 for next character
c 36830 Print Special Character or Change Text Attribute
D 36830 Used by the routines at #R36725, #R36892 and #R36900.
C 36830,1 Store HL
C 36831,3 Point HL at start of common words table
C 36834,2 Subtract 91 from A to get index of special character
N 36836 This entry point is used by the routine at #R36882.
C 36836,2 If first string is required (i.e. index is zero), then jump straight to print commands
C 36838,1 Load index into B
C 36839,3 Get start of next zero-terminated string...
C 36842,2 ...and repeat until the B-th string is found (e.g. 20th)...
C 36844,3 ...then print this string to screen
C 36847,2 Jump to #R36807 (i.e. we have printed the common word, so go back to printing rest of original string)
N 36849 This entry point is used by the routine at #R36725.
C 36849,2 PAPER bits
C 36851,2 Update attribute
N 36853 This entry point is used by the routine at #R36725.
C 36853,2 BRIGHT bit
C 36855,2 Update attribute
N 36857 This entry point is used by the routine at #R36725.
C 36857,2 FLASH bit
C 36859,2 Update attribute
N 36861 This entry point is used by the routine at #R36725.
C 36861,2 INK bits
C 36863,1 Advance to next character
C 36864,3 Get system variable ATTR T
C 36867,1 Clear bits
C 36868,1 Update bits with value from HL
C 36869,3 Set system variable ATTR T (i.e. change INK / PAPER colour of text)
C 36872,3 Move onto next character
c 36875 Move Virtual Text Cursor Right by One Character
D 36875 Used by the routine at #R36725.
C 36875,1 Store HL
C 36876,3 Advance to next character location (Display File)
C 36879,3 Loop back
c 36882 Print the Current Object's Name
D 36882 Used by the routine at #R36725.
C 36882,1 Store HL
C 36883,3 Set HL to start of object names table
C 36886,3 Load A with index of Current Object
C 36889,1 (Re)Set zero flag
C 36890,2 Jump back to print this object's name
c 36892 Print the Current Character's Full Name
D 36892 Used by the routine at #R36725.
C 36892,3 Load index of Current Character into A
C 36895,2 Add as offset to 117 (index of first of characters' names)
C 36897,3 Jump into the text printing routine to display the text
c 36900 Print the Current Character's Short Name
D 36900 Used by the routine at #R36725.
C 36900,3 Load index of Current Character into A
C 36903,2 Add as offset to 130 (index of first of characters' names)
C 36905,3 Jump into the text printing routine to display the text
c 36908 Draw an Edge of Frame of a Window
D 36908 Used by the routines at #R37147 and #R37782. Input:  HL  Width of window (characters) minus 1 - used as a loop counter to print segments of window border
C 36908,1 Check whether remaining window's width is zero...
C 36909,1 ...and if it is...
C 36910,1 ...then return
N 36911 The operand of the instruction at #R36911 represents the border style (character index) to print. This is modified by the instructions at #R37028, #R37176 and #R37246.
C 36911,2 Load A with the border style (character index)...
C 36913,3 ...print the character...
C 36916,1 ...decrease the remaining width...
C 36917,2 ...and loop back to #R36908
c 36919 Draw Window Frame for Character Portraits (2nd Floor) and Goblet Picture in Florin's Room
D 36919 Used by the routine at #R29150. Input:  B  y-coordinate (characters) of picture C  x-coordinate (characters) of picture D  index of graphic to draw inside frame
C 36919,2 Load A with 10 (window index)
C 36921,1 Switch AF
C 36922,1 Store BC (x- and y-coordinates of top-left corner)
C 36923,2 Load HL with index of graphic to draw inside frame
C 36925,1 ...
C 36926,2 In preparation for drawing an object (object height + 1)
C 36928,1 Multiply HL by four...
C 36929,1 ...
C 36930,3 Point to start of graphic lookup data
C 36933,1 Add offset (now, for example, pointing to entry for Goblet from picture in Florin's room)
C 36934,1 Load width data into A
C 36935,2 If width data is 255 (i.e. we are drawing an object)...
C 36937,2 ...then jump ahead to #R36942
C 36939,1 Load height data into E...
C 36940,1 ...
C 36941,1 Increase height by one
C 36942,1 Restore BC (x- and y-coordinates of top-left corner)
C 36943,2 Set window / menu parameter to 112 (window, not menu) in window drawing routine...
C 36945,3 ...
C 36948,1 Load x-coordinate...
C 36949,3 ...into this window's "left position" entry in the window data table at #R41874
C 36952,2 Set window's "right position"...
C 36954,3 ...as three characters to the right (i.e. width of window is 4 characters)
C 36957,1 Load y-coordinate...
C 36958,3 ...into this window's "top position" entry in the window data table at #R41874
C 36961,1 Set window's "right position"...
C 36962,3 ...as top position plus height data
C 36965,3 Load Magic Knight's current attribute into A...
C 36968,3 ...and set window's border attribute to match
C 36971,3 Draw the window
C 36974,4 Reset "Disable In-Game Glow" flag
C 36978,1 Return
c 36979 Draw a Menu Window
D 36979 Used by the routines at #R26747, #R31153, #R31370, #R31636, #R32655, #R33663, #R34914, #R35141, #R35293 and #R38725. Input:  A  Index of window to draw
C 36979,1 Swap AF register (A holds index of window to draw)
C 36980,2 Load the value 105 into #R37083 (i.e. set "Draw Menu (Hand) Cursor" 'flag' to true)...
C 36982,3 ...
C 36985,2 Draw the window
c 36987 Draw a Window
D 36987 Used by the routines at #R26747, #R26788, #R28092, #R29800, #R29880, #R30540, #R30602, #R31370, #R32035, #R32876, #R33180, #R34350, #R34768, #R34914, #R35101, #R35141, #R37654 and #R38749. Input:  A  Index of window to draw (e.g. 14 for "PRESS SPACE OR FIRE TO CONTINUE" window)
C 36987,1 Switch AF and AF'
C 36988,2 Reset "Draw Hand Menu Cursor" Flag (later in this routine)...
C 36990,3 ...
N 36993 This entry point is used by the routines at #R36919 and #R36979.
C 36993,4 Set "Disable In-Game Glow" flag
C 36997,1 Restore original AF (with A being index of window)
C 36998,3 Set this index as the Current Window index
C 37001,1 Load HL with A value (index of required window, e.g. 14 for "PRESS SPACE OR FIRE TO CONTINUE" window)...
C 37002,2 ...
C 37004,1 Multiply index by eight (as each window's data takes up eight bytes in table at 41874)...
C 37005,1 ...
C 37006,1 ...
C 37007,3 Set BC to start of window data table
C 37010,1 Calculate location of start of required window's data
C 37011,1 Load E with x-coordinate of left edge (characters)
C 37012,1 Load C with x-coordinate of right edge (characters)...
C 37013,1 ...
C 37014,1 Load D with y-coordinate of top edge (characters)...
C 37015,1 ...
C 37016,1 Load B with y-coordinate of bottom edge (characters)...
C 37017,1 ...
C 37018,4 Store values for later use...
C 37022,4 ...
C 37026,1 Load A with window's upper edge border style...
C 37027,1 ...
C 37028,3 Store for later use
C 37031,1 Load A with window's border attribute...
C 37032,1 ...
C 37033,1 Exchange AF and AF'
C 37034,1 Load A with starting y-coordinate of hand cursor...
C 37035,1 ...
C 37036,3 Store for later use
C 37039,1 Load A with window's content attribute...
C 37040,1 ...
C 37041,3 Store for later use
C 37044,1 Exchange AF and AF' (restoring border attribute to A and putting background colour in A')
C 37045,3 Draw window frame
C 37048,3 Point HL at previously stored values
C 37051,1 Increase top-left x-coordinate
C 37052,1 Increase top-left y-coordinate...
C 37053,1 ...
C 37054,1 Decrease bottom-right x-coordinate...
C 37055,1 ...
C 37056,1 Decrease bottom-right y-coordinate...
C 37057,1 ...
C 37058,3 Load window background attribute into A
C 37061,3 Load this attribute into instruction in routine at #R38242 that sets attribute of window contents
C 37064,3 Update system variable ATTR T with window background attribute
C 37067,3 Fill the interior of the window with its specified attribute (i.e. background colour and colour of text within)
C 37070,3 Blank the interior of the window (bitmap area)
C 37073,3 Load x-coordinate of left of interior of window into C...
C 37076,1 ...
C 37077,1 Load y-coordinate of top of interior of window into B...
C 37078,1 ...
C 37079,3 Move virtual cursor (bitmap) to top-left of interior or window
C 37082,1 Store HL
N 37083 The operand of the instruction at #R37083 represents the "Draw Hand Menu Cursor" Flag. This is modified by the instructions at #R36945, #R36982 and #R36990.
C 37083,2 Load A with "Draw Hand Menu Cursor" Flag
C 37085,2 If value is not 105...
C 37087,3 ...then jump to #R37138 (i.e. don't draw the hand cursor)
N 37090 Window is a menu (105)
C 37090,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 37094,1 Increase x-coordinate by one
C 37095,3 Load A with starting y-coordinate of hand cursor
C 37098,1 Add y-coordinate of top of area to this...
C 37099,1 ...and place back into B
C 37100,1 Store Coordinates for later
C 37101,3 Move virtual cursor (bitmap) to coordinates in BC
C 37104,3 Load DE with pointer to "menu hand" graphic
C 37107,2 Loop over 8 pixel rows (drawing upper half of hand):
C 37109,1 Load a bitmap byte from hand graphic
C 37110,1 Place bitmap byte at virtual cursor (bitmap) location (i.e. draw it to screen)
C 37111,1 Advance DE
C 37112,1 Advance L (i.e. move right one character as hand graphic is 2-by-2 characters)
C 37113,1 Load a bitmap byte from hand graphic
C 37114,1 Place bitmap byte at virtual cursor (bitmap) location (i.e. draw it to screen)
C 37115,1 Move virtual cursor (bitmap) left one character again
C 37116,1 Advance DE
C 37117,1 Advance H (i.e. move down one pixel row, or 256 bytes)
C 37118,2 Repeat loop to draw next row
C 37120,1 Recover coordinates
C 37121,1 Increase y-coordinate as we are now drawing lower half of hand
C 37122,3 Move virtual cursor (bitmap) to coordinates in BC
C 37125,2 Loop over 8 pixel rows (drawing lower half of hand):
C 37127,1 Load a bitmap byte from hand graphic
C 37128,1 Place bitmap byte at virtual cursor (bitmap) location (i.e. draw it to screen)
C 37129,1 Advance DE
C 37130,1 Advance L (i.e. move right one character as hand graphic is 2-by-2 characters)
C 37131,1 Load a bitmap byte from hand graphic
C 37132,1 Place bitmap byte at virtual cursor (bitmap) location (i.e. draw it to screen)
C 37133,1 Move virtual cursor (bitmap) left one character again
C 37134,1 Advance DE
C 37135,1 Advance H (i.e. move down one pixel row, or 256 bytes)
C 37136,2 Repeat loop to draw next row
C 37138,1 Set A to zero
C 37139,3 Set hand cursor's current y-coordinate to zero (i.e. defaults to top of its movement range within current window)
C 37142,1 Restore HL
C 37143,3 Set memory location to start printing character in character printing routine
C 37146,1 Return
c 37147 Draw a Window Frame
D 37147 Used by the routine at #R36987. Input:  A  Window border attribute A'  Window background colour
C 37147,3 Store border attribute in system variable ATTR T
C 37150,3 Load A with x-coordinate of left of window
C 37153,1 Copy into C
C 37154,3 Load A with x-coordinate of right of window
C 37157,1 Get distance between left and right coordinates
C 37158,1 Subtract 1 to get width of window top-edge (not including corner pieces)
C 37159,1 Transfer this to BC...
C 37160,2 ...
C 37162,1 Store BC on stack
C 37163,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 37167,1 Increase C by one (as top edge strictly starts one to the right of this x-coordinate - the left-most is actually a corner piece, not an edge)
C 37168,3 Set position of virtual cursor for drawing
C 37171,1 Put width of top edge piece into HL...
C 37172,1 ...but retain it on stack also
C 37173,3 Draw the top edge of the window
C 37176,3 Get previously drawn window component character (i.e. top edge)...
C 37179,1 ...and increase to obtain next one (i.e. bottom edge)
C 37180,3 Place this new character into the drawing routine
C 37183,3 Load A with x-coordinate of left of window
C 37186,1 Copy into C
C 37187,3 Load A with y-coordinate of bottom of window
C 37190,1 Copy into B
C 37191,1 Increase C by one (as bottom edge strictly starts one to the right of this x-coordinate - the left-most is actually a corner piece, not an edge)
C 37192,3 Set position of virtual cursor for drawing
C 37195,1 Put width of bottom edge into HL...
C 37196,3 Draw the bottom edge of the window
C 37199,3 Get previously drawn window component character (i.e. bottom edge)...
C 37202,1 ...and increase to obtain next one (i.e. left edge)
C 37203,3 Place this new character into the drawing routine
C 37206,3 Load y-coordinate of top of window into A
C 37209,1 Copy into B
C 37210,3 Load y-coordinate of bottom of window into A
C 37213,1 Subtract B...
C 37214,1 ...and decrease by one to get length of left-edge (not including corner pieces)
C 37215,1 Store AF (A contains length of left / right edges)
C 37216,1 Store length in E
C 37217,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 37221,1 Add to get starting point of left edge
C 37222,1 Load into B
C 37223,1 Store DE
C 37224,3 Set position of virtual cursor for drawing
C 37227,3 Get character to draw
C 37230,3 Draw character
C 37233,1 Restore DE (length of edge in E)
C 37234,3 Load x-coordinate of right edge of window into A
C 37237,1 Copy to C
C 37238,3 Load y-coordinate of top edge of window into A
C 37241,1 Add to E to give y-coordinate of bottom of edge
C 37242,1 Copy to B
C 37243,3 Set position of virtual cursor for drawing
C 37246,3 Get character previously drawn (left edge)...
C 37249,1 ...and increase to give right edge
C 37250,3 Draw character
C 37253,1 Restore AF  (A contains length of left / right edges)
C 37254,1 Decrease A by one as we have drawn one character of both left and right edges
C 37255,3 If there is still some left and right edge to be drawn, loop back
N 37258 edges of window have been drawn
C 37258,3 Load x-coordinate of right edge into A
C 37261,1 Copy to C
C 37262,3 Load y-coordinate of top edge into A
C 37265,1 Copy to B
C 37266,3 Set position of virtual cursor for drawing
C 37269,3 Get character previously STORED (left edge)...
C 37272,1 ...and increase twice to get top-right corner piece...
C 37273,1 ...
C 37274,3 Update drawing routine with this character
C 37277,3 Draw character
C 37280,4 Load B with y-coordinate of bottom edge and C with x-coordinate of right edge
C 37284,3 Set position of virtual cursor for drawing
C 37287,3 Get character previously stored (top-right corner)...
C 37290,1 ...and increase to get bottom-right corner piece
C 37291,3 Place this character back into drawing routine
C 37294,3 Draw character
C 37297,3 Load x-coordinate of left edge into A
C 37300,1 Copy into C
C 37301,3 Load y-coordinate of bottom edge into A
C 37304,1 Copy into B
C 37305,3 Set position of virtual cursor for drawing
C 37308,3 Get character previously stored (bottom-right corner)...
C 37311,1 ...and increase to get bottom-left corner piece
C 37312,3 Place this character back into drawing routine
C 37315,3 Draw character
C 37318,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 37322,3 Set position of virtual cursor for drawing
C 37325,3 Get character previously stored (bottom-left corner)...
C 37328,1 ...and increase to get top-left corner piece
C 37329,3 Draw character
C 37332,1 Return
c 37333 Process Keyboard / Joystick Input on a Menu
D 37333 Used by the routines at #R26673, #R31153, #R31370, #R31636, #R32655, #R33663, #R34914, #R35141, #R35293 and #R38725. Output: A  ASCII code of letter shortcut that has been selected on menu
C 37333,3 Check whether to draw hand cursor on menu...
C 37336,2 ...and if not...
C 37338,1 ...return
C 37339,3 Load x-coordinate of current window's top-left corner into A
C 37342,1 Increase by one character...
C 37343,3 ...and store for later use
C 37346,3 Load starting y-coordinate of hand cursor into A...
C 37349,1 and copy into B
C 37350,3 Load y-coordinate of current window's top-left corner into A...
C 37353,1 ...add to B...
C 37354,1 ...and multiply by 8 to get y-coordinate of top of hand cursor in pixels...
C 37355,1 ...
C 37356,1 ...
C 37357,3 Then store for later use
C 37360,3 Load y-coordinate of current window's bottom edge into A...
C 37363,1 ...multiply by eight...
C 37364,1 ...
C 37365,1 ...
C 37366,2 ...then add 7 to get y-coordinate of absolute bottom of window in pixels
C 37368,3 ...and store for later
C 37371,3 Load y-coordinate of current window's top-left corner into A...
C 37374,1 ...and copy into B
C 37375,3 Load y-coordinate of current window's bottom-right corner into A...
C 37378,1 ...subtract B...
C 37379,1 ...then subtract one to get height of window, not including frame
C 37380,1 Copy this into B
C 37381,3 Load A with initial y-coordinate of hand cursor relative to current window...
C 37384,1 ...subtract B...
C 37385,2 ...and negate to give vertical distance available to hand cursor to move
C 37387,1 Multiply this by eight to convert from chars to pixels...
C 37388,1 ...
C 37389,1 ...
C 37390,3 ...and store at 23471
C 37393,3 Apply FLASH attribute to menu letter shortcut next to hand menu cursor
N 37396 This entry point is used by the routines at #R37497 and #R37523.
C 37396,1 Set A to zero
C 37397,3 Clear last pressed key
C 37400,1 Wait for interrupt / reset
C 37401,3 Capture keyboard input, or jump to joystick reading routine
C 37404,2 If "up" pressed then...
C 37406,3 ...jump to routine to move Hand Cursor up and update flashing menu shortcut
C 37409,2 If "down" pressed then...
C 37411,3 ...jump to routine to move Hand Cursor down and update flashing menu shortcut
C 37414,2 If "fire" pressed then...
C 37416,3 ...jump to routine to load A with ASCII code of shortcut for selected item in menu
C 37419,3 Load last pressed key (system variable) into A...
C 37422,1 ...and if this is zero (i.e. no key pressed)...
C 37423,2 ...loop back to #R37396
C 37425,3 Store pressed key further on in this routine
C 37428,3 Load A with y-coordinate of top of hand cursor (pixels)...
C 37431,3 ...and divide by eight to get top of cursor in characters
C 37434,1 Add one to this
C 37435,1 Copy into B
C 37436,3 Load A with x-coordinate of left edge of current window (characters)
C 37439,1 Copy into C
C 37440,3 Load A with y-coordinate of bottom of window (including frame) (pixels)
C 37443,3 Divide by eight to get coordinate in characters...
C 37446,1 ...and add one
C 37447,1 Switch A register
C 37448,1 Store B and C
C 37449,3 Move Virtual Bitmap Cursor to Display File address for coordinates (C,B)
C 37452,3 Load ASCII code of character in Display File address stored at 36488 into A (i.e. letter shortcut for command at current y-coordinate)
C 37455,1 Restore coordinates to BC
N 37456 The operand of the instruction at #R37456 represents the index of the key that was pressed. This is modified by the instruction at #R37425.
C 37456,2 If last-pressed key matches this letter shortcut...
C 37458,2 ...then jump to end of routine
C 37460,1 ...else increase y-coordinate by one (i.e. move onto next row of menu)
C 37461,1 Switch A register...
C 37462,1 ...and if current y-coordinate is less than this (i.e. we haven't yet reached the last command in this window)...
C 37463,2 ...then loop back to #R37447 for next row of text in window
C 37465,3 Repeat process for next key-press
C 37468,3 Wait for keyboard to be released
C 37471,1 Return
c 37472 Wait for Keyboard to be Released
D 37472 Used by the routines at #R26835, #R27176, #R37333 and #R38749.
C 37472,1 Store AF
C 37473,3 Read first byte of second keyboard map (system variable)...
C 37476,2 ...and if this is not 255 (i.e. not marked as "free")...
C 37478,2 ...loop back
C 37480,1 Set last key pressed to NULL...
C 37481,3 ...
C 37484,1 Restore AF
C 37485,1 Return
c 37486 Wait for Fire Button / Key to be Released
D 37486 Used by the routines at #R27176, #R37552 and #R38749.
C 37486,1 Store AF
C 37487,1 Wait for interrupt
C 37488,3 Capture keyboard / joystick input into A
C 37491,2 If fire button / key pressed...
C 37493,2 ...loop back
C 37495,1 Restore AF
C 37496,1 Return
c 37497 Move Hand Cursor Up and Update Flashing Menu Shortcut
D 37497 Used by the routine at #R37333.
C 37497,3 Remove FLASH attribute from menu letter shortcut next to hand menu cursor
C 37500,3 Load menu hand cursor's current y-coordinate into A
C 37503,1 If coordinate is zero...
C 37504,2 ...then skip ahead to end of this routine
C 37506,1 Decrease cursor's y-coordinate by two...
C 37507,1 ...
C 37508,3 Place new coordinate back into memory
C 37511,3 Scroll Hand Cursor up a unit
C 37514,3 Scroll Hand Cursor up a unit
C 37517,3 Apply FLASH attribute to menu letter shortcut next to hand menu cursor
C 37520,3 Jump back to input processing routine
c 37523 Move Hand Cursor Down and Update Flashing Menu Shortcut
D 37523 Used by the routine at #R37333.
C 37523,3 Remove FLASH attribute from menu letter shortcut next to hand menu cursor
C 37526,3 Load menu hand cursor's current y-coordinate into A
C 37529,3 Point HL at height available to hand cursor to move down...
C 37532,1 ...and if these are equal (i.e. hand cursor is as far down as it can go)...
C 37533,2 ...then skip ahead to end of this routine
C 37535,1 Increase cursor's y-coordinate by two...
C 37536,1 ...
C 37537,3 Place new coordinate back into memory
C 37540,3 Scroll Hand Cursor down a unit
C 37543,3 Scroll Hand Cursor down a unit
C 37546,3 Apply FLASH attribute to menu letter shortcut next to hand menu cursor
C 37549,3 Jump back to input processing routine
c 37552 Load A with ASCII Code of Shortcut for Selected Item in Menu
D 37552 Used by the routine at #R37333. Output: A  ASCII code of letter shortcut that has been selected on menu
C 37552,3 Wait for fire button / key to be released
C 37555,4 Load y-coordinate of Hand Cursor's finger and x-coordinate of left edge of interior of window into B and C respectively
C 37559,3 Move Virtual Bitmap Cursor to Display File address for coordinates x=C, y=B
C 37562,3 Load ASCII code of character in Display File address stored at 36488 into A
C 37565,1 Return
c 37566 Remove FLASH Attribute from Menu Letter Shortcut Next to Hand Menu Cursor
D 37566 Used by the routines at #R37497 and #R37523.
C 37566,3 Load HL with opcode for "AND 127" (remove FLASH attribute)
C 37569,2 Remove FLASH attribute on menu letter shortcut next to hand menu cursor
c 37571 Apply FLASH Attribute to Menu Letter Shortcut Next to Hand Menu Cursor
D 37571 Used by the routines at #R37333, #R37497 and #R37523.
C 37571,3 Load HL with opcode for "OR 128" (apply FLASH attribute)
N 37574 This entry point is used by the routine at #R37566.
C 37574,3 Modify attribute modification code below with opcode stored in HL
C 37577,3 Load A with x-coordinate of left edge of current window...
C 37580,1 ...and copy into C
C 37581,3 Load hand cursor's current y-coordinate into A
C 37584,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 37586,3 Divide this new y-coordinate by eight to get y-coordinate in characters
C 37589,1 Load this y-coordinate into B
C 37590,3 Load initial y-coordinate of top of hand cursor relative to current window, into A
C 37593,1 Add this to y-coordinate of "finger"
C 37594,1 Load this into B, so that B now contains y-coordinate of "finger" relative to top of window (characters)
C 37595,3 Load y-coordinate of top edge of current window into A
C 37598,1 Add...
C 37599,1 ...then add one (for window frame at top) so we now have y-coordinate of "finger" relative to screen
C 37600,1 Load into B
C 37601,4 Store coordinates at 23472
C 37605,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 37608,1 Load current attribute at this location into A
N 37609 The instruction at #R37609 represents the modification to make to the attribute value (either AND 127 which removes FLASH, or OR 128 which applies FLASH). This is modified by the instruction at #R37574.
C 37609,1 Update FLASH Flag as required...
C 37610,1 ...
C 37611,1 Load modified attribute back into Attribute File at coordinates X=C, Y=B
C 37612,1 Return
c 37613 Load ASCII Code of Character in Display File Address Stored at 36488 into A
D 37613 Used by the routines at #R37333 and #R37552. Output: A  ASCII code of character
C 37613,3 Point HL at start of letter A graphic in character set
C 37616,1 Swap into DE
C 37617,2 Load B with 26
C 37619,1 Store BC
C 37620,3 Load (video) memory location to start printing character into HL
C 37623,3 Load B with 8 and C with zero
C 37626,1 Read a byte of the character's graphic data...
C 37627,1 ...compare to what is already displayed in Display File at to-print location...
C 37628,2 ...and if they're the same, jump to #R37631
C 37630,1 Else increase C
C 37631,1 Move down one pixel row (advance by 256 bytes) in Display File
C 37632,1 Advance to next pixel row of character of interest
C 37633,2 Loop back for next row
C 37635,1 Copy C into A...
C 37636,1 ...and if it is zero (i.e. current character in character set is same as character at to-print location in Display File)...
C 37637,2 ...jump ahead to #R37645
C 37639,1 Restore BC
C 37640,2 Loop back for next character
C 37642,2 Load A with 48
C 37644,1 Return
C 37645,1 Character in Display File at to-print location is same as character with index (26 - B)...
C 37646,1 ...so load B into A...
C 37647,2 ...subtract 26...
C 37649,2 ...and negate to get index of character in A (e.g. A=0, B=1, C=2 ...)
C 37651,2 Add 65 to get ASCII index
C 37653,1 Return
c 37654 Print or Update Command Summary Window at Bottom of Screen
D 37654 Used by the routines at #R30222, #R30602, #R31370, #R32035, #R32194, #R32655, #R33036, #R33312, #R33593, #R33663, #R34914 and #R35141. The operand of the instruction at #R37654 represents the index of the window being drawn. This is modified by the instructions at #R36998 and #R37699.
C 37654,2 Load A with the index of the window being drawn
C 37656,1 Store AF
C 37657,3 Store current (video) memory location to start printing character...
C 37660,1 ...
C 37661,3 Store x- & y-coordinates of top-left of currently drawn window...
C 37664,1 ...
C 37665,3 Store y- & x-coordinates of top-right of currently drawn window...
C 37668,1 ...
C 37669,2 Draw window 1 (Command Summary Window at bottom of screen)...
C 37671,3 ...
C 37674,3 Point HL to ("COMMAND") text...
C 37677,3 ...and print text
C 37680,3 Copy current (video) memory location to start printing character into memory at 65530...
C 37683,3 ...
C 37686,1 Restore y- & x-coordinates of top-right of currently drawn window...
C 37687,3 ...
C 37690,1 Restore x- & y-coordinates of top-left of currently drawn window...
C 37691,3 ...
C 37694,1 Restore current (video) memory location to start printing character...
C 37695,3 ...
C 37698,1 Restore AF (A = index of window being drawn)...
C 37699,3 ...and store at 37654
C 37702,1 Return
c 37703 Move Virtual Text Cursor to Beginning of Character Row Below its Current Position
D 37703 Used by the routines at #R28344, #R36800 and #R36810.
C 37703,3 Load "memory location to start printing character" in character printing routine into HL
C 37706,1 Add 32 to LSB (i.e. move down a character row)...
C 37707,2 ...
C 37709,3 If overflows from A register (crossing between successive thirds of the bitmap display) then jump to #R37735
C 37712,2 Clear bits for 1, 2, 4, 8 and 16 (i.e. set to zero) to set cursor to beginning of new character row
C 37714,1 Place modified value back into HL...
C 37715,3 ...and update stored value accordingly
C 37718,1 Return
c 37719 Move Virtual Text Cursor to Beginning of Character Row Two Rows Below its Current Position
D 37719 Used by the routine at #R28561.
C 37719,3 Load "memory location to start printing character" in character printing routine into HL
C 37722,1 Add 64 to LSB (i.e. move down two rows)...
C 37723,2 ...
C 37725,3 If overflows from A register (crossing between successive thirds of the bitmap display) then jump to #R37735
C 37728,2 Clear bits for 1, 2, 4, 8 and 16 (i.e. set to zero) to set cursor to beginning of new character row
C 37730,1 Place modified value back into HL...
C 37731,3 ...and update stored value accordingly
C 37734,1 Return
c 37735 Move Virtual Text Cursor from One Third to Another in Display File
D 37735 Used by the routines at #R37703 and #R37719.
C 37735,2 Clear bits for 1, 2, 4, 8 and 16 (i.e. set to zero) to set cursor to beginning of new character row
C 37737,1 Put value back into L
C 37738,1 Get value of H
C 37739,2 Increase by 8 (as we're moving one text row, or EIGHT pixel rows down)
C 37741,1 Place modified value back into HL...
C 37742,3 ...and update stored value accordingly
C 37745,1 Return
c 37746 Convert Numeric Value BC to ASCII String at Location HL
D 37746 Used by the routines at #R36647 and #R36675. Input:  BC  A numeric value HL  Points to location to hold a five-character string, e.g. #R23497)
C 37746,1 Store DE
C 37747,3 Point DE at table of powers of ten
C 37750,1 Store BC (value)
C 37751,1 Store HL (location to hold string)
C 37752,1 Store HL (location to hold string)
C 37753,1 Load BC (value) into HL...
C 37754,1 ...
C 37755,1 Swap DE (now value) and HL (now pointer to table of powers of ten)
C 37756,1 Read WORD at HL (power of ten) into BC...
C 37757,1 ...and advance HL by two bytes...
C 37758,1 ...
C 37759,1 ...
C 37760,1 Swap DE (now pointer to next power of ten) and HL (now value)
C 37761,2 Load A with 47 (ASCII code immediately prior to that for zero, "0")
C 37763,1 Increase A to next ASCII character
C 37764,1 (Re)Set carry flag
C 37765,2 Subtract (BC [power of ten] + carry flag) from HL (value)
C 37767,2 If carry flag was not set then loop back to #R37763
C 37769,1 Add power of ten back to HL
C 37770,1 Swap value on top of stack (now remaining value) with HL (now location to hold string)
C 37771,1 Store ASCII code in table at #R23497 and advance HL to next slot...
C 37772,1 ...
C 37773,1 Swap value on top of stack (pointer to entry in table of ASCII characters at 23497) with HL (now remaining value)
C 37774,1 Decrease C to check if last power of ten (i.e. 1) has been reached...
C 37775,2 ...and if not, then loop back to #R37755 for next power of ten
C 37777,1 Restore HL
C 37778,1 Restore HL
C 37779,1 Restore BC
C 37780,1 Restore DE
C 37781,1 Return
c 37782 Clear Top Two Thirds of Display File and Draw Two Rows of [SPACE] Characters Below (UNUSED)
C 37782,3 Point HL two thirds of the way down Display File
C 37785,3 Store this address at 36488
C 37788,3 Set width to 64
C 37791,2 Set window border style character to 32 (a SPACE character)...
C 37793,3 ...
C 37796,3 Draw upper edge of frame of a window
C 37799,3 Load zero (all bits reset) into HL
C 37802,3 Load 0 into B and 8 into C to repeat outer loop 8 times
C 37805,1 Disable interrupts
C 37806,4 Store stack pointer at 37837
C 37810,3 Point stack pointer two thirds of the way down Display File
C 37813,3 Jump into clearing routine
c 37816 Clear Display File
D 37816 Used by the routines at #R26747 and #R26906.
C 37816,3 Load zero (all bits reset) into HL
C 37819,3 Load 0 into B and 12 into C to repeat outer loop 12 times
C 37822,1 Disable interrupts
C 37823,4 Store stack pointer at 37837
C 37827,3 Point stack pointer at start of Attribute File
N 37830 This entry point is used by the routine at #R37782.
C 37830,1 Decrease current stack pointer position by two and load two zeroes into it
C 37831,2 As B is already zero, this will "decrease" B to 255 and thus run through loop 256 times
C 37833,1 Decrease C...
C 37834,2 ...and repeat if C is still greater than zero
N 37836 The operand of the instruction at #R37836 represents the original value in SP stored previously. This is modified by the instructions at #R37806 and #R37823.
C 37836,3 Restore stack pointer to original value
C 37839,1 Enable interrupts
C 37840,1 Return
c 37841 Set Entire Attribute File to Colour Housed in ATTR T System Variable
D 37841 Used by the routines at #R26747 and #R26906.
C 37841,3 Load HL with start of Attribute File
C 37844,3 Load DE with next byte up
C 37847,3 Load BC with length of data to copy (767 bytes = length of Attribute File minus one)
C 37850,3 Load system variable ATTR T into A
C 37853,1 Load memory at HL with this attribute...
C 37854,2 ...and repeat 767 times
C 37856,1 Return
c 37857 Change Input Device (Keyboard / Joysticks)
D 37857 Used by the routines at #R26673 and #R26906. Input:  A  ASCII code of selected menu option from "A" to "E" (65 - 69)
C 37857,2 Subtract 65 (ASCII code for "A") to get index of menu item selected
C 37859,1 Double the value
C 37860,2 Load into HL...
C 37862,1 ...
C 37863,3 Point BC at start table of start addresses of input device reading routines
C 37866,1 Add double selected item index to BC in HL (HL now points to entry for selected input device)
C 37867,1 Load address into HL...
C 37868,1 ...
C 37869,1 ...
C 37870,1 ...
C 37871,3 Place in routine at 37882
C 37874,1 Reset A to zero
C 37875,1 Return
c 37876 Capture Keyboard Input, or Jump to Joystick Reading Routine
D 37876 Used by the routines at #R27176, #R37333, #R37486 and #R38749. Output: A  Stored key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 37876,3 Set stored keyboard / joystick action to zero...
C 37879,2 ...
N 37881 The operand of the instruction at #R37881 represents the address of the appropriate keyboard / joystick reading routine. This is modified by the instruction at #R37857.
C 37881,3 Jump to keyboard / joystick reading routine
C 37884,2 IN 65022 reads the half row A to G...
C 37886,2 ...
C 37888,2 Read keyboard
C 37890,2 "A" key pressed so...
C 37892,3 ...store an UP input from control device
C 37895,1 IN 65278 reads the half row CAPS SHIFT to V
C 37896,2 Read keyboard
C 37898,2 "Z" key pressed so...
C 37900,3 ...store a DOWN input from control device
C 37903,2 IN 32766 reads the half row SPACE to B
C 37905,2 Read keyboard
C 37907,2 "N" key pressed so...
C 37909,3 ...store a LEFT input from control device
C 37912,2 Read keyboard
C 37914,2 "M" key pressed so...
C 37916,3 ...store a RIGHT input from control device
C 37919,2 Read keyboard
C 37921,2 SPACE bar pressed so...
C 37923,3 ...store a FIRE input from control device
C 37926,1 Return stored key-press in A
C 37927,1 Return
c 37928 Capture Kempston Joystick Input Input:  HL  #R23485 (store for currently active keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 37928,2 Load 31 (Kempston port number) into A
C 37930,2 Read byte from port 31 (i.e. read state of joystick)
C 37932,2 If joystick moved right...
C 37934,3 ...store a RIGHT input from control device
C 37937,2 If joystick moved left...
C 37939,3 ...store a LEFT input from control device
C 37942,2 If joystick moved down...
C 37944,3 ...store a DOWN input from control device
C 37947,2 If joystick moved up...
C 37949,3 ...store an UP input from control device
C 37952,2 If fire button pressed...
C 37954,3 ...store a FIRE input from control device
C 37957,1 Return stored joystick movement in A
C 37958,1 Return
c 37959 Capture Fuller Joystick Input Input:  HL  #R23485 (store for currently active keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 37959,2 Load 127 (Fuller port number) into A
C 37961,2 Read byte from port 127 (i.e. read state of joystick)
C 37963,2 If joystick moved left...
C 37965,3 ...store a LEFT input from control device
C 37968,2 If joystick moved right...
C 37970,3 ...store a RIGHT input from control device
C 37973,2 If joystick moved down...
C 37975,3 ...store a DOWN input from control device
C 37978,2 If joystick moved up...
C 37980,3 ...store an UP input from control device
C 37983,2 If fire button pressed...
C 37985,3 ...store a FIRE input from control device
C 37988,1 Return stored joystick movement in A
C 37989,1 Return
c 37990 Capture Cursor Joystick Input Input:  HL  #R23485 (store for currently active keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 37990,2 IN 63486 reads the half row 1 to 5...
C 37992,2 ...
C 37994,2 Read keyboard/joystick
C 37996,2 If joystick moved left ("5" key pressed)...
C 37998,3 ...store a LEFT input from control device
C 38001,2 IN 61438 reads the half row O to 6
C 38003,2 Read keyboard/joystick
C 38005,2 If joystick moved right ("8" key pressed)...
C 38007,3 ...store a RIGHT input from control device
C 38010,2 If joystick moved down ("6" key pressed)...
C 38012,3 ...store a DOWN input from control device
C 38015,2 If joystick moved up ("7" key pressed)...
C 38017,3 ...store an UP input from control device
C 38020,2 If fire button pressed ("0" key pressed)...
C 38022,3 ...store a FIRE input from control device
C 38025,1 Return stored joystick movement in A
C 38026,1 Return
c 38027 Capture ZX Interface 2 Joystick 1 Input Input:  HL  #R23485 (store for currently active keyboard press / joystick action) Output: A  Stored key-press (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 38027,2 IN 61438 reads the half row O to 6...
C 38029,2 ...
C 38031,2 ...
C 38033,2 If joystick moved left ("6" key pressed)...
C 38035,3 ...store a LEFT input from control device
C 38038,2 If joystick moved right ("7" key pressed)...
C 38040,3 ...store a RIGHT input from control device
C 38043,2 If joystick moved down ("8" key pressed)...
C 38045,3 ...store a DOWN input from control device
C 38048,2 If joystick moved down ("9" key pressed)...
C 38050,3 ...store an UP input from control device
C 38053,2 If fire button pressed ("0" key pressed)...
C 38055,3 ...store a FIRE input from control device
C 38058,1 Return stored joystick movement in A
C 38059,1 Return
c 38060 Store a LEFT Input from Control Device
D 38060 Used by the routines at #R37876, #R37928, #R37959, #R37990 and #R38027. Input:  HL  #R23485 (store for currently active keyboard press / joystick action)
C 38060,2 Set Left Pressed Flag
C 38062,1 Return
c 38063 Store a RIGHT Input from Control Device
D 38063 Used by the routines at #R37876, #R37928, #R37959, #R37990 and #R38027. Input:  HL  #R23485 (store for currently active keyboard press / joystick action)
C 38063,2 Set Right Pressed Flag
C 38065,1 Return
c 38066 Store an UP Input from Control Device
D 38066 Used by the routines at #R37876, #R37928, #R37959, #R37990 and #R38027. Input:  HL  #R23485 (store for currently active keyboard press / joystick action)
C 38066,2 Set Up Pressed Flag
C 38068,1 Return
c 38069 Store a DOWN Input from Control Device
D 38069 Used by the routines at #R37876, #R37928, #R37959, #R37990 and #R38027. Input:  HL  #R23485 (store for currently active keyboard press / joystick action)
C 38069,2 Set Down Pressed Flag
C 38071,1 Return
c 38072 Store a FIRE Input from Control Device
D 38072 Used by the routines at #R37876, #R37928, #R37959, #R37990 and #R38027. Input:  HL  #R23485 (store for currently active keyboard press / joystick action)
C 38072,2 Set Fire Pressed Flag
C 38074,1 Return
c 38075 Set Parameters for and Play Upward Scale Sound
D 38075 The value of A (set to zero at the start of this routine, or set to 1 before jumps from other routines into #R38080) is a delay constant that determines the speed at which the sound is played. Input:  A  (Entry at #R38080 only) Delay constant
C 38075,1 Set A to 0
C 38076,2 Set B to 13 (DEC C)
C 38078,1 Set HL to 0...
C 38079,1 ...
N 38080 This entry point is used by the routines at #R38108 and #R38116.
C 38080,3 Modify instruction at #R38093 with value of delay constant
C 38083,1 Load B into A
C 38084,3 Set instruction at #R38102
C 38087,3 Set instructions at #R38103 and #R38104
C 38090,3 Load A with current border colour
N 38093 The operand of the instruction at #R38093 represents the value of the delay constant. This is modified by the instruction at #R38080.
C 38093,2 Load C with delay constant
C 38095,2 Set border colour, and reset ear/speaker
C 38097,2 Invert ear/speaker bit of A
C 38099,1 Load C (delay constant) into B...
C 38100,2 ...and delay
N 38102 The instructions at #R38102 - #R38104 represent the manipulation of the delay constant between iterations of this routine. These instructions may decrease C by one, increase C by three or do nothing. These instructions are modified by the instructions at #R38084 and #R38087.
C 38102,1 Decrease / increase delay constant for next pass, increasing / decreasing pitch of tone respectively
C 38103,1 Do nothing, or increase delay constant
C 38104,1 Do nothing, or increase delay constant
C 38105,2 If delay constant is not zero, then loop back to continue playing tone
C 38107,1 Return
c 38108 Set Parameters for and Play Downward Scale Sound
D 38108 Used by the routines at #R26747, #R31153, #R34914 and #R35420.
C 38108,1 Set parameters...
C 38109,2 ...(INC C)...
C 38111,1 ...
C 38112,1 ...
C 38113,1 ...
C 38114,2 ...and play sound
c 38116 Set Parameters for and Play Short Downward Scale Sound
D 38116 Used by the routines at #R35141 and #R35293.
C 38116,2 Set parameters...
C 38118,2 ...(INC C)...
C 38120,1 ...
C 38121,1 ...
C 38122,2 ...and play sound
c 38124 Play Hiss-Type Sound
D 38124 Used by the routines at #R38725 and #R38749.
c 38167 Set Parameters (for Unknown Sound) and Jump to Playing Routine (Unused)
C 38167,3 Load HL with bytecodes for instruction "XOR 128"
C 38170,3 Load D with 0 and E with 255
C 38173,2 Jump into sound playing routine
c 38175 Set Parameters (for "Lift has Arrived" Sound) and Jump to Playing Routine
D 38175 Used by the routines at #R33593 and #R33663.
C 38175,3 Load HL with bytecodes for instruction "ADD A,32"
C 38178,3 Load D with 0 and E with 255
C 38181,2 Jump into sound playing routine
c 38183 Set Parameters (for Cheat Routine Sound) and Play
D 38183 Used by the routine at #R35420.
C 38183,3 Load HL with bytecodes for instruction "ADD A,4"
C 38186,3 Load D with 0 and E with 0
N 38189 This entry point is used by the routines at #R38167 and #R38175.
C 38189,3 Load A with current border colour
C 38192,3 Set instruction at 38204 to "XOR 128", "ADD A,4" or "ADD A,32" depending upon value in HL
C 38195,2 Set current border colour and reset speaker state
C 38197,2 Flip "speaker" bit
C 38199,1 Copy E into B
C 38200,2 Delay for period determined by B
C 38202,1 Switch AF and AF'
C 38203,1 Copy E into A
N 38204 The instruction at #R38204 is modified by the instruction at #R38192, resulting in different sounds.
C 38204,2 Change E (delay constant)...
C 38206,1 ...
C 38207,1 Switch AF and AF' again
C 38208,1 Decrease D (initially zero)...
C 38209,2 ...and repeat loop (256 times)
C 38211,1 Return
c 38212 Get Current Border Colour
D 38212 Used by the routines at #R38075, #R38124 and #R38183. Output: A  Current border colour (0 - 7)
C 38212,3 Get border & BASIC cursor area attribute
C 38215,1 Clear bits for 1, 2 and 4 to leave (border colour * 8) only...
C 38216,1 ...
C 38217,1 ...
C 38218,2 Ensure all other bits are cleared
C 38220,1 Return
c 38221 Play "Beep" Sound (as in Moving Through Instructions Windows)
D 38221 Used by the routine at #R26835.
C 38221,1 Store AF
C 38222,1 Store BC
C 38223,2 Set B to zero
C 38225,1 Set A to zero
C 38226,2 Reset speaker and border colour to zero
C 38228,2 Do nothing for 100 "cycles"...
C 38230,1 ...
C 38231,2 ...
C 38233,2 Invert bit 4 (Ear / speaker bit)...
C 38235,2 ...and write to port 254 (inverting state of speaker, making a sound)
C 38237,2 Decrease B and loop back
C 38239,1 Restore BC
C 38240,1 Restore AF
C 38241,1 Return
c 38242 Fill the Interior of a Drawn Window With its Specified Attribute (i.e. Background Colour and Colour of Text Within)
D 38242 Used by the routine at #R36987.
C 38242,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge - these will become the current x- and y-coordinates of fill area
C 38246,3 Update virtual attribute cursor (memory location 23487 and in HL)
N 38249 The operand of the instruction at #R38249 represents the attribute value with which to paint the window. This is modified by the instruction at #R37061.
C 38249,2 Load A with attribute to paint with
C 38251,1 Paint attribute data to Attribute File at current virtual cursor (attribute) position
C 38252,3 Load A with x-coordinate of right side of area to fill
C 38255,1 Check if left and right edges are at same x-coordinate (i.e. zero width)...
C 38256,3 ... and if so, skip to #R38272
C 38259,1 Increase C
C 38260,1 Copy C into A
C 38261,2 Ensure current x-coordinate doesn't exceed 31 (i.e. width of screen)
C 38263,1 Place back into C
C 38264,1 Get LSB of Attribute File address (Virtual Attribute Cursor location)
C 38265,2 Decrease to nearest multiple of 32 (i.e. start of character row in Attribute File)
C 38267,1 Add x-offset (i.e. current x-coordinate, C)
C 38268,1 Update virtual attribute cursor position
C 38269,3 Loop back to print next attribute block
C 38272,3 Get x-coordinate of left of area to fill
C 38275,1 Store in C
C 38276,3 Get y-coordinate of bottom of area to fill
C 38279,1 Compare with y-coordinate of top of area to fill
C 38280,1 If no difference between current y-coordinate and y-coordinate of bottom of area to fill then exit function and return
C 38281,1 Move current y-coord down one unit
C 38282,1 Copy current y-coord into A...
C 38283,2 ...and ensure it doesn't exceed 24 (i.e. height of screen)...
C 38285,3 ...if it doesn't then skip ahead...
C 38288,2 ...else set current y-coord to zero (top of screen)
C 38290,3 Update virtual attribute cursor (memory location 23487 and in HL)
C 38293,3 Loop back to print next attribute block row
c 38296 Scroll Hand Cursor Up a Unit
D 38296 Used by the routine at #R37497.
C 38296,3 Load y-coordinate of top of hand cursor into A
C 38299,1 Copy into C
C 38300,3 Point DE at table of Display File addresses of starts of each pixel row
C 38303,2 Load y-coordinate into HL...
C 38305,1 ...
C 38306,1 Double it
C 38307,1 And add as offset to table of Display File addresses of starts of each pixel row
C 38308,1 Transfer value into IX...
C 38309,2 ...
C 38311,3 Load y-coordinate of bottom of window into A
C 38314,1 Subtract y-coordinate of top of hand cursor
C 38315,1 Decrease by one, so now holds distance between top of hand cursor and bottom of window
C 38316,1 Exchange A register
C 38317,3 Load x-coordinate of left of interior of window (characters) into A
C 38320,1 Copy into BC...
C 38321,2 ...
C 38323,1 Switch A register
C 38324,1 Switch A register (now holds y-coordinate of top of interior of window on first pass)
C 38325,2 Advance IX by two bytes...
C 38327,2 ...
C 38329,3 Load HL with Display File address of start of pixel row 1...
C 38332,3 ...
C 38335,3 Load DE with Display File address of start of pixel row 2...
C 38338,3 ...
C 38341,1 Add x-coordinate of left of interior of window to Display File address
C 38342,1 Swap addresses
C 38343,1 Add x-coordinate of left of interior of window to Display File address
C 38344,1 Swap addresses back (HL points to upper row and DE points to lower row)
C 38345,1 Read Display File data from lower row...
C 38346,1 ...and copy into upper row
C 38347,1 Increase DE and HL (as hand cursor is two characters wide)...
C 38348,1 ...
C 38349,1 Read Display File data from lower row...
C 38350,1 ...and copy into upper row
C 38351,1 Swap A register (holds remaining distance between top of hand cursor and bottom of window)
C 38352,1 Decrease A, as one less pixel row to scroll up
C 38353,2 Loop back to #R38324 for next pixel row
C 38355,1 Return
c 38356 Scroll Hand Cursor Down a Unit
D 38356 Used by the routine at #R37523.
C 38356,3 Load y-coordinate of bottom of window (pixels) into A
C 38359,1 Copy into C
C 38360,3 Point DE at table of Display File addresses of starts of each pixel row
C 38363,2 Load y-coordinate into HL...
C 38365,1 ...
C 38366,1 Double it
C 38367,1 And add as offset to table of Display File addresses of starts of each pixel row
C 38368,1 Transfer value into IX...
C 38369,2 ...
C 38371,3 Load y-coordinate of top of hand cursor (pixels) into A
C 38374,1 Subtract y-coordinate of bottom of window
C 38375,2 Negate, so A now holds distance between top of hand cursor and bottom of window
C 38377,1 Exchange A register
C 38378,3 Load x-coordinate of left of interior of window (characters) into A
C 38381,1 Copy into BC...
C 38382,2 ...
C 38384,1 Switch A register (A now holds distance between top of hand cursor and bottom of window)
C 38385,1 Switch A register (now holds x-coordinate of left of interior of window in characters on first pass)
C 38386,2 Move IX back by two bytes...
C 38388,2 ...
C 38390,3 Load HL with Display File address of start of pixel row 1...
C 38393,3 ...
C 38396,3 Load DE with Display File address of start of pixel row 2...
C 38399,3 ...
C 38402,1 Add x-coordinate of left of interior of window to Display File address
C 38403,1 Swap addresses
C 38404,1 Add x-coordinate of left of interior of window to Display File address
C 38405,1 Swap addresses back (HL points to upper row and DE points to lower row)
C 38406,1 Read Display File data from upper row...
C 38407,1 ...and copy into lower row
C 38408,1 Increase DE and HL (as hand cursor is two characters wide)...
C 38409,1 ...
C 38410,1 Read Display File data from upper row...
C 38411,1 ...and copy into lower row
C 38412,1 Swap A register (A now holds remaining distance between top of hand cursor and bottom of window)
C 38413,1 Decrease remaining distance in A
C 38414,2 Loop back to #R38385 for next pixel row
C 38416,1 Return
c 38417 Blank an Area of the Display File
D 38417 We write zeroes to the Display File in order to blank out a region, for example the interior of a window. The top-left and bottom-right coordinates of the area to be blanked by this routine are stored at #R23493).
C 38417,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 38421,3 Load HL with current virtual text cursor location...
C 38424,1 ...and store on the stack
C 38425,3 Set virtual cursor location (bitmap area)
C 38428,3 Load A with x-coordinate of right-edge
C 38431,1 Subtract x-coordinate of left-edge...
C 38432,1 ...and add one to obtain width
C 38433,1 Store width in D
C 38434,3 Load A with y-coordinate of bottom
C 38437,1 Subtract y-coordinate of top-edge...
C 38438,1 ...and add one to obtain height
C 38439,1 Store height in E
C 38440,1 Copy width and height...
C 38441,1 ...into BC
C 38442,1 Store (initial) HL on stack
C 38443,1 Copy width into A
C 38444,1 Exchange AF register (preserve width)
C 38445,1 Store width and height on stack
C 38446,1 Store (current) HL on stack
C 38447,1 Set A to zero
C 38448,2 Set B to 8
C 38450,1 Write zero to current Display File address
C 38451,1 Move down one pixel row (by adding 256 bytes to current Display File address)
C 38452,2 Repeat for other 7 pixel rows
C 38454,1 Recover previous (current) value of HL (start of previous character block)...
C 38455,1 ...and increase to obtain next block
C 38456,1 Restore width and height...
C 38457,2 ...reduce width by one and loop back to clear next block (until remaining width = 0)
C 38459,1 Recover (initial) value of HL
C 38460,1 Reduce remaining height by one...
C 38461,2 ...and if it is now zero, then exit loop...
C 38463,2 ...else...
C 38465,1 ...add 32 (screen width) to current Display File pointer to move down to next character row...
C 38466,1 ...
C 38467,3 If moving down a character row is valid (i.e. if we're not moving down one row from the bottom row of one of the three thirds of the bitmap area, which would actually wrap back up to the second pixel row of the top character row of the current third!) then skip ahead
C 38470,2 We need to move down from the bottom character row of one third of the screen to the top character row of the third below so...
C 38472,1 ...increase HL accordingly...
C 38473,1 ...
C 38474,1 Swap AF register
C 38475,1 Recover width (stored earlier, at instr. 38444) into B
C 38476,1 Preserve width again
C 38477,1 Store current Display File address on stack...
C 38478,3 ...and loop back to #R38445 to write another row of zeroes
C 38481,1 Restore virtual bitmap cursor location...
C 38482,3 ...and store
C 38485,1 Return
c 38486 Set New Random Seed
D 38486 Used by the routines at #R38505 and #R38795. Output: A  LSB of new random seed
C 38486,1 Store HL
C 38487,1 Store BC
C 38488,4 Load system variables Seed (hi) and Frames (1) into BC
C 38492,3 Load system variable Seed into HL
C 38495,1 Add these together
C 38496,1 Add together H and L in A...
C 38497,1 ...
C 38498,1 ...and load into L
C 38499,3 Place new HL back into system variable Seed
C 38502,1 Restore BC
C 38503,1 Restore HL
C 38504,1 Return
c 38505 Load A With a Random Number Less than or Equal to B
D 38505 Used by the routine at #R55349. Input:  B  Cap for random value Output: A  Random number less than or equal to B (input)
C 38505,3 Set new random seed and load LSB of this (random value) into A
C 38508,1 If random value is greater than B...
C 38509,2 ...then generate another
C 38511,1 Return
c 38512 Set Terrain Interaction Data for all Objects in Magic Knight's Current Room
D 38512 Used by the routine at #R28092.
C 38512,4 Point IX at start of Objects' Current Positions Table at #R25464
C 38516,2 Set current object to zero
C 38518,2 Set counter to 50 (as there are 50 objects, including "Nothing at All")
C 38520,3 Load A with Magic Knight's current room
C 38523,3 If object and Magic Knight are in the same room...
C 38526,3 ...then set Terrain Interaction Data for character blocks spanned by that object
C 38529,1 Increase C
C 38530,2 Advance to next object...
C 38532,2 ...
C 38534,2 ...
C 38536,2 ...and repeat
C 38538,1 Return
c 38539 Set Terrain Interaction Data for Character Blocks Spanned by an Object and Draw the Object
D 38539 Used by the routine at #R31370. Input:  A  Index of current object (call to #R38539 only) B  y-coordinate (call to #R38539 only) C  x-coordinate (call to #R38539 only) IX  Points at object's position data (call to #R38550 only)
C 38539,4 Store object's position data temporarily at 23296 - 23298...
C 38543,3 ...x-coordinate...
C 38546,3 ...y-coordinate...
C 38549,1 Load index of object of interest into C
N 38550 This entry point is used by the routine at #R38512.
C 38550,1 Store BC
C 38551,2 Store IX
C 38553,1 Load HL with eight times current object number...
C 38554,1 ...
C 38555,1 ...
C 38556,1 ...
C 38557,2 ...
C 38559,1 ...
C 38560,3 Point DE at last byte (graphic index) of "Nothing at All" properties
C 38563,1 Add eight times current object index as offset
C 38564,1 Load graphic index into A...
C 38565,1 ...and store
C 38566,1 Move pointer back one byte to point at attribute of object...
C 38567,1 ...
C 38568,3 ...and copy into system variable ATTR T
C 38571,3 Load C with x-coordinate of current object
C 38574,3 Load B with y-coordinate of current object
C 38577,1 Decrease y-coordinate by one
C 38578,1 Set A to zero
C 38579,3 Reset all Terrain Interaction Parameter flags
C 38582,1 Restore graphic index to A
C 38583,1 And store again
C 38584,2 Store IX (pointer to position data for current object)
C 38586,3 Draw the object in OR mode
C 38589,2 Restore IX
C 38591,1 Restore graphic index to A
C 38592,1 Load into HL...
C 38593,1 ...
C 38594,2 ...
C 38596,1 ...and multiply by four
C 38597,3 Point DE at height property of first object in graphics data lookup table...
C 38600,1 ...and add four times graphic index (as entries are 4 bytes wide) as offset to get entry for current object
C 38601,1 Load height property of current object into A...
C 38602,3 ...and modify later instruction with this data
C 38605,3 Load C with x-coordinate of current object
C 38608,3 Load B with y-coordinate of current object
C 38611,1 Decrease y-coordinate by one
C 38612,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B
N 38615 The operand of the instruction at #R38615 represents the height of the object. This is modified by the instruction at #R38602.
C 38615,2 Load A with "height" property of graphic of current object (x=height property of current object's graphic)
C 38617,2 Discard all but the two most significant bits
C 38619,1 Combine with Terrain Interaction Data already present for that block...
C 38620,1 ...
C 38621,1 Advance HL to next byte in Terrain Interaction Data
C 38622,3 Load A with height property of graphic of current object
C 38625,1 Next two bits correspond to next character block's Terrain Interaction Data...
C 38626,1 ...
C 38627,2 Discard all but the two most significant bits
C 38629,1 Combine with Terrain Interaction Data already present for that block...
C 38630,1 ...
C 38631,3 Advance HL by 31 bytes in Terrain Interaction Data (i.e. down a character row and to the left one character)...
C 38634,1 ...
C 38635,3 Load A with height property of graphic of current object
C 38638,1 Next two bits correspond to next character block's Terrain Interaction Data...
C 38639,1 ...
C 38640,1 ...
C 38641,1 ...
C 38642,2 Discard all but the two most significant bits
C 38644,1 Combine with Terrain Interaction Data already present for that block...
C 38645,1 ...
C 38646,1 Advance HL to next byte in Terrain Interaction Data
C 38647,3 Load A with height property of graphic of current object
C 38650,1 Next two bits correspond to next character block's Terrain Interaction Data...
C 38651,1 ...
C 38652,2 Discard all but the two most significant bits
C 38654,1 Combine with Terrain Interaction Data already present for that block...
C 38655,1 ...
C 38656,2 Restore IX
C 38658,1 Restore BC
C 38659,1 Return
c 38660 Get x- and y- Coordinates of Object A (Unused) Input:  A  Index of required object Output: B  y-coordinate C x-coordinate
C 38660,1 Multiply A by three...
C 38661,1 ...as entries in table at #R25464 are three bytes long...
C 38662,1 ...
C 38663,1 Load value into HL...
C 38664,2 ...
C 38666,3 Point BC at x-coordinate property of "Nothing at All" in table at #R25464
C 38669,1 Add HL as offset to BC (into HL)
C 38670,1 Load x-coordinate into C
C 38671,1 Advance by one byte
C 38672,1 Load y-coordinate into B
C 38673,1 Return
c 38674 Remove Object C from a Character's Inventory and Tidy Up Remaining Entries
D 38674 Used by the routines at #R30439, #R30540, #R30602, #R30880, #R32390, #R33883, #R33935 and #R34062. Input:  B Number of inventory slots to check C  Index of object to be removed HL  Pointer to a character's current inventory
C 38674,1 Load A with inventory object
C 38675,1 If this matches index in C...
C 38676,2 ...then skip ahead to #R38682
C 38678,1 Advance to next inventory slot...
C 38679,2 ...and repeat loop for next slot
C 38681,1 Return if object not found
C 38682,1 Advance to next inventory slot
C 38683,1 Load object at this slot into A
C 38684,1 Move back to previous slot again
C 38685,1 Place object from next slot into current one
C 38686,1 Advance to next slot again
C 38687,2 Repeat for all remaining slots
C 38689,1 Move back to previous slot (i.e. final slot for this character)...
C 38690,1 ...and set to empty...
C 38691,1 ...
C 38692,1 Return
c 38693 Print Command Summary in Command Summary Window at Bottom of Screen
D 38693 Used by the routines at #R30222, #R30602, #R30880, #R31370, #R31636, #R32035, #R32194, #R32390, #R32655, #R33036, #R33312, #R33593, #R33663, #R34864, #R34883, #R34914 and #R35141. Input:  DE  Points to command text
C 38693,1 Store DE
C 38694,2 Set system variable ATTR T to 78 (yellow INK, blue PAPER, BRIGHT)
C 38696,3 ...
C 38699,3 Load HL with (video) memory location to start printing character
C 38702,1 Swap registers so that HL points to text to be printed, and (SP) i.e. PUSHed value) contains Display File address to start printing character
C 38703,4 Load DE with new Display File address to print character...
C 38707,4 ...and update printing routine with this location
C 38711,3 Print text at location HL to screen
C 38714,3 Load Display File address just printed to into HL
C 38717,3 Store at 65530 (where it was just read from!)
C 38720,1 Restore original memory location that was replaced in printing routine...
C 38721,3 ...and put it back into the printing routine
C 38724,1 Return
c 38725 Display Execute / Reject Command Window and Return if Execute Chosen, Else Exit
D 38725 Used by the routines at #R30222, #R30439, #R30602, #R30880, #R31370, #R31636, #R32035, #R32194, #R32258, #R32390, #R32655, #R33036, #R33312, #R33574, #R33593 and #R33663.
C 38725,3 Play hiss-type sound
C 38728,2 Set window index to draw as 11...
C 38730,3 ...and draw
C 38733,3 Point to "E] EXECUTE COMMAND..." text
C 38736,3 Print the text
C 38739,3 Process keyboard / joystick input for menu, and load ASCII code of shortcut for selected (i.e. SPACE or fire pressed) item into A...
C 38742,2 ...and if this is "E" (i.e. Execute Command)...
C 38744,1 ...return...
C 38745,1 ...else restore HL and...
C 38746,3 ...reset Gimbal-White-Out Safe Flag, redraw current room and return to main game loop
c 38749 Display "PRESS SPACE OR FIRE TO CONTINUE" Window and Wait for Space / Fire
D 38749 Used by the routines at #R29800, #R29880, #R30222, #R30540, #R30602, #R31370, #R32035, #R32876, #R34350, #R34768, #R35101 and #R35141.
C 38749,3 Play hiss-type sound
C 38752,2 Draw window 14...
C 38754,3 ...
C 38757,3 Point HL at "PRESS SPACE OR FIRE" text string
C 38760,3 Print the text
C 38763,1 Clear key-press buffer...
C 38764,3 ...
C 38767,3 Capture keyboard / joystick input into A
C 38770,2 If "FIRE" button / key pressed...
C 38772,2 ...jump to #R38788
C 38774,3 Capture last key pressed
C 38777,2 If not a space then...
C 38779,2 Go back to start of loop
C 38781,3 Wait for keyboard to be released
C 38784,3 Play upward scale sound
C 38787,1 Return
C 38788,3 Wait for fire button / key to be released
C 38791,3 Play upward scale sound
C 38794,1 Return
c 38795 Reset Star to Point of Origin and Generate a New Direction and Movement Data
D 38795 Used by the routines at #R38884 and #R38961. Input:  IX  Points to an entry in table of stars' movement data at #R25614
C 38795,3 Set new random seed and load LSB of this into A
C 38798,2 Discard bits five to seven
C 38800,2 Subtract 15
C 38802,1 Load result into B (random number -15 to 16) (y-component of star's direction)
C 38803,3 Set new random seed and load LSB of this into A
C 38806,2 Discard bits five to seven
C 38808,2 Subtract 15
C 38810,1 Load result into C (random number -15 to 16) (x-component of star's direction)
C 38811,2 Add to 128 (set bit 7) in C...
C 38813,1 ...
C 38814,1 ...(random number 113 to 144)
C 38815,1 Add 87 to B...
C 38816,2 ...
C 38818,1 ...(random number 72 to 103)
C 38819,2 If A is not 87 (i.e. y-direction component is not zero)...
C 38821,2 ...skip ahead to #R38828
C 38823,1 If A (loaded into C) is 128... [bug: this instruction only executed if A is 87, so how could it ever be 128 here? This should actually be LD A,C, preventing stars having zero for both direction components]
C 38824,2 ...
C 38826,2 ...then restart this routine to generate two new random numbers/seeds
C 38828,2 Load D (initial y-coordinate) with 87
C 38830,2 Load E (initial x-coordinate) with 128
C 38832,1 Store DE
C 38833,3 Set up star's movement data based upon starting position and direction
C 38836,1 Restore DE
C 38837,3 Set star's initial coordinates as (128, 87)...
C 38840,3 ...
C 38843,1 Return
c 38844 Unused routine
D 38844 This routine plots the path of a star with point of origin (100,100) and direction (10,10).
C 38844,3 Load B with 10 (y-component of star's direction) and C with 10 (x-component of direction)
C 38847,3 Load D with 100 and E with 100 (initial coordinates of star)
C 38850,4 Point IX at start of table of stars' movement data
C 38854,1 Store DE
C 38855,3 Set up star's movement data based upon starting position and direction
C 38858,1 Restore DE
C 38859,3 Set initial x-coordinate of star
C 38862,3 Set initial y-coordinate of star
C 38865,2 Load B with 50 (as loop runs 50 times)
C 38867,1 Store BC
C 38868,3 Load BC with new (y,x) coordinates of a star depending upon the signs and magnitudes of its direction
C 38871,3 Load C (x-coordinate to PLOT) into star's x-coordinate
C 38874,3 Load B (y-coordinate to PLOT) into star's y-coordinate
C 38877,3 PLOT the pixel (x=C, y=B)
C 38880,1 Restore BC (B = remaining number of iterations)
C 38881,2 Decrease B by one and loop back to 38867
C 38883,1 Return
c 38884 Animate Starfield Until a Key is Pressed
D 38884 Used by the routines at 27118 and #R33180.
C 38884,1 Clear last pressed key...
C 38885,3 ...
C 38888,4 Set P-FLAG bit 0 (OVER 1)
C 38892,4 Set P-FLAG bit 1 (OVER 1)
C 38896,3 Reset all stars to point of origin and generate new velocities and movement data
C 38899,3 If last pressed key (system variable LAST-K) is not set to zero (i.e. a key has been pressed)...
C 38902,1 ...
C 38903,1 ...then return...
C 38904,4 ...else point IX at start of table of stars' movement data
C 38908,2 Load B with 50, as we are dealing with 50 "stars"
C 38910,1 Store BC (B = remaining number of stars to process)
C 38911,3 Load old y-coordinate from star's movement data into B
C 38914,3 Load old x-coordinate from star's movement data into C
C 38917,3 Un-PLOT the pixel (x=C, y=B - star's old position) (as "OVER" flag is set, so PLOTting an already PLOTted point removes it)
C 38920,3 Load BC with new (y,x) coordinates of a star depending upon the signs and magnitudes of its direction
C 38923,1 Load new y-coordinate into A
C 38924,2 If new y-coordinate is less than 48... (How far down the star goes)
C 38926,2 ...then skip ahead to #R38932
C 38928,2 If new y-coordinate is less than 175... (How far up the star goes)
C 38930,2 ...then skip ahead to #R38937
C 38932,3 Reset star to point of origin and generate a new direction and movement data
C 38935,2 Skip ahead to #R38950
C 38937,1 Load x-coordinate into A
C 38938,1 If x-coordinate is zero...
C 38939,2 ...then jump to #R38932
C 38941,3 Store new x- and y-coordinates in star's movement data table entry...
C 38944,3 ...
C 38947,3 PLOT the star's new position (x=C, y=B)
C 38950,1 Restore BC (B = remaining number of stars to process)
C 38951,3 Advance IX by nine bytes to next entry in table of star movement data...
C 38954,2 ...
C 38956,2 Loop back to #R38910 for next star
C 38958,3 Jump back to #R38899 to repeat routine again
c 38961 Reset All Stars to Point of Origin and Generate New Velocities and Movement Data
D 38961 Used by the routine at #R38884.
C 38961,4 Point IX at start of table of stars' movement data
C 38965,2 Load B with 50 (as there are 50 stars to process)
C 38967,1 Store BC (B = remaining number of stars to process)
C 38968,3 Reset star to point of origin and generate a new direction and movement data
C 38971,3 Load DE with 9
C 38974,2 Advance IX by 9 bytes
C 38976,1 Restore BC
C 38977,2 Decrease B and repeat loop
C 38979,1 Return
c 38980 Unused routine
D 38980 This routine draws a line from (C, B) to (E, D).
C 38980,4 Load contents of DE into system variable COORDS (start point of line)
C 38984,1 Subtract y-coordinate of start of line from y-coordinate of end of line...
C 38985,1 ...to get delta-y
C 38986,2 Set direction of vertical change to +1 (upward)
C 38988,2 If delta-y is positive (i.e. upward) then skip ahead to #R38994
C 38990,1 Multiply delta-y by -1 (downward) to get absolute magnitude...
C 38991,1 ...
C 38992,2 Set direction of vertical change to -1 (downward)
C 38994,1 Load B with magnitude of difference in y-coordinate between start and end of line
C 38995,1 Subtract x-coordinate of start of line from y-coordinate of end of line...
C 38996,1 ...to get delta-x
C 38997,2 Set direction of horizontal change to +1 (rightward)
C 38999,2 If delta-x is positive (i.e. rightward) then skip ahead to #R39005
C 39001,1 Multiply delta-x by -1 (leftward) to get absolute magnitude...
C 39002,1 ...
C 39003,2 Set direction of vertical change to -1 (leftward)
C 39005,1 Load C with magnitude of difference in x-coordinate between start and end of line
C 39006,1 Switch registers
C 39007,1 Store HL
C 39008,1 Switch registers
C 39009,3 Draw a line (ROM routine)
C 39012,1 Switch registers
C 39013,1 Restore HL
C 39014,1 Switch registers
C 39015,1 Return
c 39016 Set Up Star Movement Data Based Upon Starting Position and Direction
D 39016 Used by the routines at #R38795 and #R38844. Input:  B  y component of star direction added to initial y-coordinate (random number 72 to 103) C  x component of star direction added to initial x-coordinate (random number 113 to 144) D  Initial y-coordinate of star (87) (pixels) E  Initial x-coordinate of star (128) (pixels) IX Points to an entry in table of stars' movement data at #R25614
C 39016,1 Load (DIR-Y + INIT-Y) into A
C 39017,1 Subtract initial y-coordinate to leave y-component of direction in A
C 39018,2 Set D to 1 (because star is moving up)
C 39020,2 If y-component is positive (i.e. star is moving up) then skip ahead to #R39026
C 39022,1 Negate negative y-direction component...
C 39023,1 ...
C 39024,2 Set D to -1 (because star is moving down)
C 39026,1 Load magnitude of y-component into B
C 39027,1 Load (DIR-X + INIT-X) into A
C 39028,1 Subtract initial x-coordinate to leave x-component of direction in A
C 39029,2 Set D to 1 (because star is moving 1 pixel right)
C 39031,2 If x-component is positive (i.e. star is moving right) then skip ahead to #R39037
C 39033,1 Negate negative x-direction component...
C 39034,1 ...
C 39035,2 Set E to -1 (because star is moving 1 pixel left)
C 39037,1 Load magnitude of x-component into C
C 39038,3 Store y-direction at byte 4
C 39041,3 Store x-direction at byte 3
C 39044,3 Store y-direction at byte 6
C 39047,3 Store x-direction at byte 5
C 39050,1 Load magnitude of x-component into A
C 39051,1 If magnitude of y-component is less than or equal to magnitude of x-component...
C 39052,2 ...then skip ahead to #R39063
C 39054,3 Store magnitude of x-component at byte 9
C 39057,4 Set byte 3 to zero
C 39061,2 Skip ahead to #R39073
C 39063,1 If magnitude of x-component is zero...
C 39064,1 ...then return
C 39065,3 Store magnitude of y-component at byte 9
C 39068,1 Load magnitude of x-component into B
C 39069,4 Store zero at byte 4
C 39073,3 Store magnitude of x-/y-component at byte 8
C 39076,1 Load magnitude of x-/y-component into A...
C 39077,3 ...and store at byte 7
C 39080,1 Return
c 39081 Move a Star Depending Upon the Signs and Magnitudes of its "Direction"
D 39081 Each time this routine runs, we add the smaller of the x- and y-magnitudes to the running "ratio" value in (IX+6). Input:  IX  Points to entry in Star Data table at #R25614 Output: B  New y-coordinate to plot C  New x-coordinate to plot
C 39081,3 Load current "ratio" value into A
C 39084,3 Add smaller of x- and y-component magnitudes
C 39087,2 If result is crosses the 255-0 boundary then skip ahead to #R39094
C 39089,3 If result is less than larger of x- and y-component magnitudes...
C 39092,2 ...then skip ahead to #R39105 (move star only on axis with larger magnitude)
C 39094,3 Subtract larger of x- and y-magnitudes
C 39097,3 Load y-step into H...
C 39100,3 ...and x-step into H (moving star on BOTH axes)
C 39103,2 Skip ahead to #R39111
C 39105,3 Load 0 / y-step into H
C 39108,3 Load 0 / x-step into H
C 39111,3 Update "ratio" value
C 39114,3 Add previous y-coordinate...
C 39117,1 ...to y-step...
C 39118,1 ...in B
C 39119,3 Add previous x-coordinate...
C 39122,1 ...to x-step...
C 39123,1 ...in C
C 39124,1 Return
c 39125 Draw Odd Ball to Screen
D 39125 Used by the routine at #R35993. Input:  A  Frame Number (32, 116, 117, 118 or 119)
C 39125,1 Store HL
C 39126,3 Point DE at 64500
C 39129,1 Double A...
C 39130,2 ...Load into HL...
C 39132,1 ...
C 39133,1 ...Double again...
C 39134,1 ...and again to get 8 times original A value...
C 39135,1 ...and add DE to this to point to one of the five sets of Odd Ball frame graphic data (#R64756, #R65428, #R65436, #R65444 or #R65452)
C 39136,1 Swap so DE now points to an Odd Ball graphic and HL holds 64500
C 39137,1 Copy DE into IX...
C 39138,2 ...
C 39140,4 Load system variable COORDS into BC (holds x- and y-coordinates of Odd Ball)
C 39144,3 Call ROM routine (Get Pixel Address) - Loads HL with Display File address corresponding to pixel at coordinates BC, and A with the location of that pixel within the byte
C 39147,1 Load pixel-within-byte "address" into C
C 39148,2 Load 8 into B (as Odd Ball graphic data comprises 8 pixel rows)
C 39150,3 Load a byte of Odd Ball graphic data into D
C 39153,3 Shift Odd Ball graphic data right by C pixels and load into D (LHS) and A' (RHS)
C 39156,1 Load left part of Odd Ball graphic data into A
C 39157,1 Load E with graphic data currently at Odd Ball's position on screen
C 39158,1 Blend Odd Ball graphic data with what is already on screen at its position to make things look more natural...
C 39159,1 ...and write new graphic data back to screen
C 39160,1 Advance right one byte in Display File
C 39161,1 Switch registers to restore right part of Odd Ball graphic data to A
C 39162,1 Load E with graphic data currently at Odd Ball's position on screen
C 39163,1 Blend Odd Ball graphic data with what is already on screen at its position to make things look more natural...
C 39164,1 ...and write new graphic data back to screen
C 39165,1 Move left one byte in Display File
C 39166,2 Advance IX to next row of Odd Ball graphic data
C 39168,3 Advance HL down one pixel row in Display File
C 39171,2 Loop back to draw next row of Odd Ball data
C 39173,1 Restore HL
C 39174,1 Return
c 39175 Shift Odd Ball Graphic Data Right by C Pixels and Load into D (L.H.S.) and A' (R.H.S.)
D 39175 Used by the routine at #R39125. Input:  C  Pixel-within-byte "address" D  A byte of graphic data for an Odd Ball Output: D  (Right-shifted) partial byte of graphic data for an Odd Ball A'  Remainder of the graphic data for an Odd Ball (i.e. displaying D and A' side-by-side would show a complete row of Odd Ball graphic data, shifted right by C (input) pixels) E  Set bits represent number of pixels to the right that the Odd Ball graphic has been shifted
C 39175,1 Load pixel-within-byte "address" into A
C 39176,1 Check if we're dealing with pixel zero...
C 39177,2 ...and if so, skip ahead to #R39195
C 39179,1 Set A to zero
C 39180,1 Copy into E
C 39181,1 Store BC (B=graphic row counter, C=pixel-within-byte "address")
C 39182,1 Copy pixel-within-byte "address" into B
C 39183,2 Shift graphic data right one bit (rightmost bit goes into carry flag)
C 39185,1 Rotate carry flag into leftmost bit of A, shifting other bits right
C 39186,1 Set carry flag
C 39187,2 Rotate (set) carry flag into leftmost bit of E, shifting other bits right, and resetting carry flag
C 39189,2 Repeat loop to shift graphic right another pixel if necessary
C 39191,1 Switch AF registers
C 39192,1 Load A with value in E (set bits represent number of pixels by which Odd Ball graphic has been shifted right)
C 39193,1 Restore (B=graphic row counter, C=pixel-within-byte "address")
C 39194,1 Return
C 39195,1 Set A to zero
C 39196,1 Switch registers
C 39197,1 Set A to zero
C 39198,1 Set E to zero as Odd Ball graphic hasn't been shifted
C 39199,1 Return
c 39200 Advance HL Down One Pixel Row in Display File
D 39200 Used by the routine at #R39125. Input:  HL  Points to a byte in Display File Output: HL  Points to the byte in Display File below HL (input)
C 39200,1 Increase H by 1 (i.e. advance HL by 256)
C 39201,1 If at least one of the three rightmost bits of H are set (i.e. we haven't crossed over from one third of the display to the next third)...
C 39202,2 ...
C 39204,1 ...then return (as HL now points to next pixel row down)...
C 39205,1 ...else we must have been in the bottom pixel row of a character row, so decrease H by 8 (1 to go back up, then 7 pixel rows up to the top of that character row)...
C 39206,2 ...
C 39208,1 ...
C 39209,1 Advance L by 32 bytes to move down one character row, so now the top of the next character row down...
C 39210,2 ...
C 39212,1 ...
C 39213,1 If L hasn't gone over 256 (i.e. we haven't moved 32 bytes on from the top pixel row of the bottom character row of the third) then return...
C 39214,1 ...else move down by a third...
C 39215,2 ...
C 39217,1 ...
C 39218,2 If we have not reached the start of the Attribute File, then return...
C 39220,1 ...
C 39221,2 ...else wrap back round to the start of Display File again
C 39223,1 Return
c 39224 Draw Magic Knight (Erase Old Frame and Draw New Frame)
D 39224 Magic Knight is erased from his old position and redrawn at his new position. If Magic Knight has y-velocity (i.e. he is moving up or down with or without horizontal motion) then this is done in three stages, each depending on the magnitude of his y-velocity. If he is not moving up or down, then the three stages are still followed, but with zero y-velocity, stages 1 and 3 do nothing. The three stages are (with Y = magnitude of Magic Knight's y-velocity): Input:  A  Always zero
C 39224,2 Store IX
C 39226,1 Multiply A by eight...
C 39227,1 ...
C 39228,1 ...
C 39229,2 ...and load into BC...
C 39231,1 ...
C 39232,3 Point HL at Magic Knight's current data (x- and y-coordinates, etc.)
C 39235,1 Add eight times original A value as offset to this
C 39236,1 Store HL
C 39237,1 Load Magic Knight's x-coordinate into A...
C 39238,3 ...and copy to 23329...
C 39241,1 ...and C
C 39242,1 Advance HL to Magic Knight's y-coordinate
C 39243,1 Load Magic Knight's y-coordinate into A...
C 39244,3 ...and copy to 23330...
C 39247,1 ...and B
C 39248,1 Advance HL to Magic Knight's current frame to erase...
C 39249,1 ...
C 39250,3 ...and copy to 23328
C 39253,1 Advance HL by two bytes to Magic Knight's current x-velocity...
C 39254,1 ...
C 39255,1 Load Magic Knight's current x-velocity into E
C 39256,1 Advance HL to Magic Knight's current y-velocity...
C 39257,1 ...and load into D
C 39258,1 Advance HL to Magic Knight's attribute...
C 39259,1 ...and load into A
C 39260,3 Copy Magic Knight's attribute into 23337
C 39263,1 Advance HL to Magic Knight's "Update Attributes at Magic Knight's Predicted Position" flag (Reset is 255, any other value is set)...
C 39264,1 ...load into A...
C 39265,3 ...and copy into 23338
C 39268,1 Load Magic Knight's x-coordinate into A
C 39269,1 Add Magic Knight's x-velocity to give predicted x-coordinate
C 39270,3 Store at 23331
C 39273,1 Load Magic Knight's y-coordinate into A
C 39274,1 Add Magic Knight's y-velocity to give predicted y-coordinate
C 39275,3 Store at 23332
C 39278,3 Load Magic Knight's Update Attributes Mask flag (stored earlier) into A
C 39281,2 If this is not 255 (i.e. no components to override)...
C 39283,3 ...then update attributes at Magic Knight's predicted position
C 39286,1 Set bytes 23316 - 23318 to zero...
C 39287,3 ...
C 39290,3 ...
C 39293,3 ...
C 39296,1 Set three least significant bits of Magic Knight's x-coordinate to zero (i.e. set pixel-within-character to zero)...
C 39297,2 ...
C 39299,1 ...
C 39300,3 Load predicted x-coordinate (pixels) into A
C 39303,2 Set three least significant bits of Magic Knight's predicted x-coordinate to zero (i.e. set pixel-within-character to zero)
C 39305,1 Test:
C 39306,3 If x-coordinate and predicted x-coordinate are now the same (i.e. Magic Knight is not changing his position in characters) then skip ahead to #R39331
C 39309,3 If x-coordinate is smaller than predicted x-coordinate (i.e. Magic Knight is moving right) then skip ahead to #R39323
N 39312 [Magic Knight is moving left]
C 39312,2 Set...
C 39314,3 ..."Magic Knight is leaving his current character position and going left" flag and...
C 39317,3 ..."Magic Knight is leaving his current character position" flag
C 39320,3 Skip ahead to #R39331 (over Magic Knight is moving right section)
N 39323 [Magic Knight is moving right]
C 39323,2 Set...
C 39325,3 ..."Magic Knight is leaving his current character position and going right" flag and...
C 39328,3 ..."Magic Knight is leaving his current character position" flag
C 39331,3 Load predicted y-coordinate (pixels) into 23324...
C 39334,3 ...
C 39337,3 Load current y-coordinate (pixels) into 23325...
C 39340,3 ...
C 39343,3 Load predicted x-coordinate (pixels) into 23322...
C 39346,3 ...
C 39349,3 Load current x-coordinate (pixels) into 23323...
C 39352,3 ...
C 39355,3 Load Magic Knight's current frame into 23326...
C 39358,3 ...
C 39361,3 Load Magic Knight's current frame to erase into 23327...
C 39364,3 ...
C 39367,3 Load "Magic Knight is leaving his current character position and going right" flag into 23314...
C 39370,3 ...
C 39373,3 Load "Magic Knight is leaving his current character position and going left" flag into 23315...
C 39376,3 ...
C 39379,1 Load Magic Knight's current y-velocity into A
C 39380,1 If y-velocity is positive (Magic Knight moving downwards)...
C 39381,3 ...then jump ahead to #R39432
C 39384,3 Load current y-coordinate (pixels) into #R23324...
C 39387,3 ...
C 39390,3 Load predicted y-coordinate (pixels) into #R23325...
C 39393,3 ...
C 39396,3 Load current x-coordinate (pixels) into #R23322...
C 39399,3 ...
C 39402,3 Load predicted x-coordinate (pixels) into #R23323...
C 39405,3 ...
C 39408,3 Load Magic Knight's current frame to erase into #R23326...
C 39411,3 ...
C 39414,3 Load Magic Knight's current frame number into #R23327...
C 39417,3 ...
C 39420,3 Load "Magic Knight is leaving his current character position and going left" flag into #R23314...
C 39423,3 ...
C 39426,3 Load "Magic Knight is leaving his current character position and going right" flag into #R23315...
C 39429,3 ...
C 39432,1 Load Magic Knight's current y-velocity into A
C 39433,2 If y-velocity is positive (moving downwards)...
C 39435,3 ...then skip ahead to #R39440
C 39438,2 Negate negative velocity
C 39440,3 Load magnitude of y-velocity into 23319
C 39443,3 Load current / predicted y-coordinate into A
C 39446,2 Add 31 (as Magic Knight is 32 pixels high) to get current / predicted y-coordinate of bottom of Magic Knight's feet...
C 39448,3 ...and store back at 23325
C 39451,3 Load current / predicted y-coordinate into A
C 39454,2 Add 31 (as Magic Knight is 32 pixels high) to get current / predicted y-coordinate of bottom of Magic Knight's feet...
C 39456,3 ...and store back at 23324
C 39459,2 Also load into HL...
C 39461,1 ...
C 39462,1 Double value (to use as offset in WORD lookup table)
C 39463,3 Point DE at table of Display File addresses of starts of each pixel row
C 39466,1 Add double y-coordinate as offset to start of table of Display File addresses in HL
C 39467,3 Store at 23320
C 39470,1 Load memory address of start of this pixel row into DE...
C 39471,1 ...
C 39472,1 ...
C 39473,2 Load C with zero
C 39475,3 Load Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (pixels) into A
C 39478,2 Rotate three least significant bits (pixel-within-character) of x-coordinate out of A...
C 39480,2 ...and into three most significant bits of C...
C 39482,2 ...
C 39484,2 ...
C 39486,2 ...
C 39488,2 ...
C 39490,2 Load HL with remaining value in A (x-coordinate in characters)...
C 39492,1 ...
C 39493,3 Store at 23301
C 39496,3 If "Magic Knight is leaving his current character position" flag is reset...
C 39499,1 ...
C 39500,3 ...then skip ahead to #R39513
C 39503,3 If "Magic Knight changing character position to right" flag (Magic Knight moving down / horizontally) or "Magic Knight changing character position to left" flag (Magic Knight moving up) is set...
C 39506,1 ...
C 39507,3 ...then skip ahead to #R39513
C 39510,3 Load predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (pixels) into 23312
C 39513,1 Add x-coordinate (HL) as offset to Display File address of start of row (DE) in HL
C 39514,3 Store Display File address at 23296
C 39517,1 Load A with pixel-within-character coordinate (in 3 MS bits of C)
C 39518,1 Rotate left to get into least significant 3 bits of A...
C 39519,1 ...
C 39520,1 ...
C 39521,3 Store at 23300
C 39524,2 Load Magic Knight's current frame to draw (Magic Knight moving down / horizontally) or current frame to erase (Magic Knight moving up) into HL...
C 39526,3 ...
C 39529,1 ...
C 39530,1 Multiply A by four...
C 39531,1 ...
C 39532,1 Load into HL again (so now HL contains 4x original value)
C 39533,1 Multiply by 16...
C 39534,1 ...
C 39535,1 ...
C 39536,1 ...so now HL contains 4 x 16 (i.e. 64) times original value (as Magic Knight frame graphics are 64 bytes long)
C 39537,3 Point DE at last byte of "Magic Knight Frame 0" graphic data (this is blank as index of first frame is actually 1, with Magic Knight facing right)
C 39540,1 Add HL as offset (to point to last byte of required frame)
C 39541,3 Store at 23298
C 39544,2 Load C with zero
C 39546,3 Load Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (pixels) into A
C 39549,2 Rotate three least significant bits of predicted x-coordinate (pixel-within-character) out of A...
C 39551,2 ...and into most significant three bits of C...
C 39553,2 ...
C 39555,2 ...
C 39557,2 ...
C 39559,2 ...
C 39561,2 Load HL with remaining value in A (x-coordinate in characters)...
C 39563,1 ...
C 39564,3 Store this at 23308
C 39567,3 If "Magic Knight is leaving his current character position" flag is reset...
C 39570,1 ...
C 39571,3 ...then skip ahead to #R39584
C 39574,3 If "Magic Knight changing character position to left" flag (Magic Knight moving down / horizontally) or "Magic Knight changing character position to right" flag (Magic Knight moving up) is set...
C 39577,1 ...
C 39578,3 ...then skip ahead to #R39584
C 39581,3 Load predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters) into 23312
C 39584,1 Load A with pixel-within-character coordinate (in three most significant bits)
C 39585,1 Rotate data from most significant to least significant three bits...
C 39586,1 ...
C 39587,1 ...
C 39588,3 Store at 23307
C 39591,2 Load Magic Knight's current frame to erase (Magic Knight moving down / horizontally) or current frame to draw (Magic Knight moving up) into HL...
C 39593,3 ...
C 39596,1 ...
C 39597,1 Multiply A by four...
C 39598,1 ...
C 39599,1 Load into HL again (so now HL contains 4x original value)
C 39600,1 Multiply by 16...
C 39601,1 ...
C 39602,1 ...
C 39603,1 ...so now HL contains 4 x 16 (i.e. 64) times original value (as Magic Knight frame graphics are 64 bytes long)
C 39604,3 Point DE at last byte of "Magic Knight Frame 0" graphic data (this is blank as index of first frame is actually 1, with Magic Knight facing right)
C 39607,1 Add HL as offset (to point to last byte of required frame)
C 39608,3 Store at 23305
C 39611,3 If "Magic Knight is leaving his current character position" flag is set...
C 39614,1 ...
C 39615,3 ...then skip ahead to #R39624
C 39618,3 Load Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters) into HL...
C 39621,3 ...and store at 23312
C 39624,3 If magnitude of y-velocity is zero...
C 39627,1 ...
C 39628,2 ...then skip ahead to #R39696
C 39630,3 Load HL with pointer to last byte of Magic Knight graphic frame (Magic Knight's current frame to draw [Magic Knight moving down / horizontally] or current frame to erase [Magic Knight moving up])
C 39633,1 Load magnitude of y-velocity into B
N 39634 [This section draws / erases only bottom Y pixel rows, where Y is magnitude of Magic Knight's y-velocity. e.g. draw / erase 7 pixel rows if Magic Knight's y-velocity magnitude = 7]
C 39634,1 Store BC (B = magnitude of y-velocity)
C 39635,1 Load byte of graphic data (right-hand column) into D
C 39636,1 Move back to previous byte of graphic data
C 39637,1 Load byte of graphic data (left-hand column) into B
C 39638,1 Move back to previous byte of graphic data (right-hand column, row above)
C 39639,1 Store HL (pointer to current position in graphic data)
C 39640,2 Load C with zero (i.e. clear bits for loading of graphic data)
C 39642,3 Load A with Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (pixel-within-character) as stored previously
C 39645,1 If value is zero...
C 39646,3 ...then skip ahead to #R39658 (i.e. printing graphic data as-is with no need to shift bits for pixel-within-character offset)
C 39649,2 Move graphic data one pixel right through D and into C...
C 39651,2 ...
C 39653,2 ...
C 39655,1 Decrease A (as one less pixel space left to deal with)
C 39656,2 If A is not zero (i.e. not all pixels yet dealt with) then loop back to #R39649 for next one
C 39658,3 Load HL with Display File address of bottom of Magic Knight's feet: predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up)
C 39661,1 Print the three consecutive 8-pixel strips to Display File, XORring with what is already there...
C 39662,1 ...
C 39663,1 ...
C 39664,1 ...
C 39665,1 ...
C 39666,1 ...
C 39667,1 ...
C 39668,1 ...
C 39669,1 ...
C 39670,1 ...
C 39671,1 ...
C 39672,3 Point HL at entry for Display File address of start of pixel row at Magic Knight's feet: predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) in table at 26064
C 39675,1 Load Display File address of start of pixel row above this into DE...
C 39676,1 ...
C 39677,1 ...
C 39678,1 ...
C 39679,3 ...and place decreased pointer (y-coordinate offset, pixels) back at 23320
C 39682,3 Load Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters) into HL
C 39685,1 Add as offset to Display File address of start of relevant pixel row in HL
C 39686,3 Store as memory address to print next graphic data
C 39689,1 Restore HL (pointer to current position in graphic data)
C 39690,1 Restore BC (B = magnitude of y-velocity)
C 39691,2 Loop back to 39634
N 39693 [This section calculates remaining number of pixel rows to be drawn]
C 39693,3 Store current position in graphic data at 23298
C 39696,3 Point HL at entry for Display File address of start of pixel row current position (part-way through drawing Magic Knight) in table at 26064
C 39699,1 Load Display File address of start of this pixel row into DE...
C 39700,1 ...
C 39701,1 ...
C 39702,3 Load HL with Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters)
C 39705,1 Add to HL as offset
C 39706,3 Store at 23310 (Display File address of leftmost part of Magic Knight at current pixel row, mid-drawing)
C 39709,3 Load magnitude of y-velocity into A
C 39712,2 Subtract 32 (as Magic Knight is 32 pixels high)...
C 39714,2 ...and negate to get number of pixel rows still to draw (i.e. 32-n here, but drew other n in loop between 39634 - 39691)
N 39716 [This section loads the graphic data to draw / erase]
C 39716,1 Swap registers
C 39717,3 Load HL with current position in Magic Knight graphic data
C 39720,1 Load two bytes of graphic data into D and C, reading backwards...
C 39721,1 ...
C 39722,1 ...
C 39723,1 ...
C 39724,3 Store updated position in graphic data at 23298
C 39727,2 Blank out bitmap data in B
C 39729,2 Blank out bitmap data in L
C 39731,3 Load A Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (pixel-within-character)
C 39734,1 If this is zero...
C 39735,3 ...then skip ahead to #R39747
C 39738,2 Move graphic data one pixel right through D and into B...
C 39740,2 ...
C 39742,2 ...
C 39744,1 Decrease number of remaining pixels to shift
C 39745,2 If there are still pixels to shift, loop back to #R39738
C 39747,3 If "Magic Knight changing character position to right" flag (Magic Knight moving down / horizontally) or "Magic Knight changing character position to left" flag (Magic Knight moving up) is reset...
C 39750,1 ...
C 39751,3 ...then skip ahead to #R39759
C 39754,1 Move data from C, through D, then B to L...
C 39755,1 ...
C 39756,1 ...
C 39757,2 ...
N 39759 [This section loads the graphic data to erase / draw]
C 39759,1 Swap registers
C 39760,3 Point HL' at current position (initially last byte) of Magic Knight graphic frame (Magic Knight's current frame to erase [Magic Knight moving down / horizontally] or current frame to draw [Magic Knight moving up])
C 39763,1 Load two bytes of graphic data into D' and C', reading backwards...
C 39764,1 ...
C 39765,1 ...
C 39766,1 ...
C 39767,3 Store updated position in graphic data at 23305
C 39770,2 Blank out bitmap data in B'
C 39772,2 Blank out bitmap data in L'
C 39774,3 Load A Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (pixel-within-character)
C 39777,1 If this is zero...
C 39778,3 ...then skip ahead to #R39790
C 39781,2 Move graphic data one pixel right through D and into B...
C 39783,2 ...
C 39785,2 ...
C 39787,1 Decrease remaining number of pixels to shift
C 39788,2 If there are still pixels left to shift, then loop back to #R39781
C 39790,3 "Magic Knight changing character position to left" flag (Magic Knight moving down / horizontally) or "Magic Knight changing character position to right" flag (Magic Knight moving up) is reset...
C 39793,1 ...
C 39794,3 ...then skip ahead to #R39802
C 39797,1 Move data from C', through D', then B' to L'...
C 39798,1 ...
C 39799,1 ...
C 39800,2 ...
N 39802 At this point: [L,  B,  D,  C  contain graphic data to print, from current position in Magic Knight's current frame to draw [Magic Knight moving down / horizontally] or current frame to erase [Magic Knight moving up] [L', B', D', C' contain graphic data to print, from current position in Magic Knight's current frame to erase [Magic Knight moving down / horizontally] or current frame to draw [Magic Knight moving up]
C 39802,4 Load IX with Display File address of leftmost part of Magic Knight at current pixel row, mid-drawing
C 39806,1 XOR together values from C, C' and current location in Display File...
C 39807,1 ...erasing old and drawing new graphic data...
C 39808,1 ...
C 39809,1 ...
C 39810,3 ...
C 39813,3 ...and print at current location in Display File
C 39816,2 Advance right one character
C 39818,1 XOR together values from D, D' and current location in Display File...
C 39819,1 ...erasing old and drawing new graphic data...
C 39820,1 ...
C 39821,1 ...
C 39822,3 ...
C 39825,3 ...and print at current location in Display File
C 39828,2 Advance right one character
C 39830,1 XOR together values from B, B' and current location in Display File...
C 39831,1 ...erasing old and drawing new graphic data...
C 39832,1 ...
C 39833,1 ...
C 39834,3 ...
C 39837,3 ...and print at current location in Display File
C 39840,2 Advance right one character
C 39842,1 XOR together values from L, L' and current location in Display File...
C 39843,1 ...erasing old and drawing new graphic data...
C 39844,1 ...
C 39845,1 ...
C 39846,3 ...
C 39849,3 ...and print at current location in Display File
C 39852,3 Point HL' at entry for Display File address of start of pixel row current position (part-way through drawing Magic Knight) in table at 26064
C 39855,1 Load Display File address of start of pixel row above this into DE'...
C 39856,1 ...
C 39857,1 ...
C 39858,1 ...
C 39859,3 ...and place decreased pointer (y-coordinate offset, pixels) back at 23320
C 39862,3 Load HL' with Magic Knight's predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) x-coordinate (characters)
C 39865,1 Add x-coordinate (HL') as offset to Display File address of start of row (DE') in HL'
C 39866,3 Store at 23310 (Display File address of leftmost part of Magic Knight at current pixel row, mid-drawing)
C 39869,1 Swap registers (A = number of pixel rows still to draw)
C 39870,1 Decrease A by one, as there is now one less pixel row to draw
C 39871,3 If there are still more pixel rows to draw, then loop back to #R39716
C 39874,3 If magnitude of y-velocity is zero...
C 39877,1 ...
C 39878,2 ...then skip ahead to #R39973 (nothing more to draw / erase)
C 39880,3 Point HL at entry for Display File address of start of pixel row current position (part-way through drawing Magic Knight) in table at 26064
C 39883,1 Load memory address of start of this pixel row into DE...
C 39884,1 ...
C 39885,1 ...
C 39886,3 Load HL with Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (characters)
C 39889,1 Add as offset to Display File address of start of relevant pixel row in HL
C 39890,3 Store at 23303 (current position to print to)
C 39893,3 Load HL with current position in frame of Magic Knight graphic data, for Magic Knight's current frame to erase [Magic Knight moving down / horizontally] or current frame to draw [Magic Knight moving up]
C 39896,1 Load magnitude of y-velocity into B
N 39897 [This section draws / erases only top Y pixel rows, where Y is magnitude of Magic Knight's y-velocity. e.g. draw / erase 7 pixel rows if Magic Knight's y-velocity magnitude = 7)
C 39897,1 Store BC (B = magnitude of y-velocity)
C 39898,1 Load byte of graphic data (right-hand column) into D
C 39899,1 Move back to previous byte of graphic data
C 39900,1 Load byte of graphic data (right-hand column) into B
C 39901,1 Move back to previous byte of graphic data
C 39902,1 Store HL (pointer to current position in graphic data)
C 39903,2 Load C with zero (i.e. clear bits for loading of graphic data)
C 39905,2 Load L with zero (i.e. clear bits for loading of graphic data)
C 39907,3 Load A with Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (pixel-within-character) as stored previously
C 39910,1 If value is zero...
C 39911,3 ...then skip ahead to #R39923 (i.e. printing graphic data as-is with no need to shift bits for pixel-within-character offset)
C 39914,2 Move graphic data one pixel right through D and into C...
C 39916,2 ...
C 39918,2 ...
C 39920,1 Decrease A (as one less pixel space left to deal with)
C 39921,2 If A is not zero (i.e. not all pixels yet dealt with) then loop back to #R39649 for next one
C 39923,4 Load current position in bitmap Display File to print to into IX
C 39927,1 Print the three consecutive 8-pixel strips to Display File, XORring with what is already there...
C 39928,3 ...
C 39931,3 ...
C 39934,2 ...
C 39936,1 ...
C 39937,3 ...
C 39940,3 ...
C 39943,2 ...
C 39945,1 ...
C 39946,3 ...
C 39949,3 ...
C 39952,3 Point HL at entry for Display File address of start of pixel row for current mid-drawing position: predicted (Magic Knight moving down / horizontally) or current (Magic Knight moving up) in table at 26064
C 39955,1 Load Display File address of start of pixel row above this into DE...
C 39956,1 ...
C 39957,1 ...
C 39958,1 ...
C 39959,3 ...and place decreased pointer (y-coordinate offset, pixels) back at 23320
C 39962,3 Load HL with Magic Knight's current (Magic Knight moving down / horizontally) or predicted (Magic Knight moving up) x-coordinate (characters)
C 39965,1 Add as offset to Display File address of start of relevant pixel row in HL
C 39966,3 Store at 23303 (current position to print to)
C 39969,1 Restore HL (pointer to current position in graphic data)
C 39970,1 Restore BC (B = magnitude of y-velocity)
C 39971,2 Loop back to 39897 for next pixel row up
C 39973,1 Restore HL (pointer to Magic Knight's current data, stored at 39639)
C 39974,4 Load BC with Magic Knight's predicted x-coordinate (pixels)
C 39978,1 Set Magic Knight's current x-coordinate to be value in predicted x-coordinate
C 39979,1 Advance HL to Magic Knight's y-coordinate
C 39980,1 Set Magic Knight's current y-coordinate to be value in predicted y-coordinate
C 39981,1 Advance HL to Magic Knight's current frame to erase
C 39982,3 Set this to same as Magic Knight's current frame number (as it is now drawn, so on the next call to this routine it will be the one to be erased)...
C 39985,1 ...
C 39986,2 Restore IX
C 39988,1 Return
c 39989 Update Attributes at Magic Knight's Predicted Position
D 39989 Used by the routine at #R39224.
C 39989,2 Store IX
C 39991,1 Store BC
C 39992,1 Store DE
C 39993,3 Load Magic Knight's predicted x-coordinate into A
C 39996,1 Divide by eight, rounding down to nearest integer...
C 39997,1 ...
C 39998,1 ...
C 39999,2 ...
C 40001,3 ...and store at 23333
C 40004,3 Load three least significant bits of predicted x-coordinate into 23335...
C 40007,2 ...
C 40009,3 ...
C 40012,3 Load Magic Knight's predicted x-coordinate into A
C 40015,1 Divide by eight, rounding down to nearest integer...
C 40016,1 ...
C 40017,1 ...
C 40018,2 ...
C 40020,3 ...and store at 23333
C 40023,3 Load three least significant bits of predicted x-coordinate into 23336...
C 40026,2 ...
C 40028,3 ...
C 40031,3 Load predicted y-coordinate in characters into A
C 40034,1 Multiply by 8...
C 40035,1 ...
C 40036,1 ...
C 40037,2 Load into HL...
C 40039,1 ...
C 40040,1 Multiply by 4 (i.e. 32 times original value)...
C 40041,1 ...
C 40042,3 Load predicted x-coordinate in characters into A
C 40045,2 Load into DE...
C 40047,1 ...
C 40048,1 Add x-coordinate to 32 times y-coordinate (to get offset from, for example, start of Attribute File)
C 40049,1 Store HL (x + 32*y offset value)
C 40050,3 Point DE at start of Attribute File
C 40053,1 Add HL to address of start of Attribute File as offset
C 40054,1 Transfer updated Display File address (predicted attribute Display File address of Magic Knight) from HL to IX...
C 40055,2 ...
C 40057,1 Restore HL (x + 32*y offset value)
C 40058,3 Point DE at start of Terrain Interaction Data
C 40061,1 Add HL to DE as offset (in HL)
C 40062,2 Load BC with 30, as 30 characters have to be skipped when moving from right side of Magic Knight on one character row to left side on next row...
C 40064,2 ...
C 40066,3 Load pixel-within-character predicted x-coordinate of Magic Knight into A
C 40069,1 If this is zero...
C 40070,2 ...then skip ahead to #R40074...
C 40072,2 ...else load BC with 29, as Magic Knight is spans three characters rather than two
C 40074,4 Load Magic Knight's attribute and "Update Attributes at Magic Knight's Predicted Position" flag into DE
C 40078,1 Switch registers
C 40079,2 Load C with 4 (as Magic Knight is 4 characters tall)
C 40081,3 Load predicted pixel-within-character y-coordinate
C 40084,1 If this is zero...
C 40085,2 ...then skip ahead to #R40089...
C 40087,2 ...else add one, as Magic Knight is "between" characters, and therefore spans 5 characters tall
C 40089,2 Load B with 2 (as Magic Knight is 2 characters wide)
C 40091,3 Load predicted pixel-within-character x-coordinate
C 40094,1 If this is zero...
C 40095,2 ...then skip ahead to #R40099...
C 40097,2 ...else add one, as Magic Knight is "between" characters, and therefore spans 3 characters wide
C 40099,1 Load number of characters spanned by Magic Knight into A...
C 40100,3 ...and into instruction at 40103
N 40103 The operand of the instruction at #R40103 represents the number of characters spanned by Magic Knight horizontally. This is modified by the instruction at #R40100.
C 40103,2 Load B with number of characters spanned by Magic Knight horizontally
C 40105,1 Switch registers
C 40106,2 If bit 6 (i.e. preserve attribute) is set in Terrain Interaction Data for Magic Knight's predicted x- and y-coordinates...
C 40108,3 ...then skip ahead to #R40120
C 40111,3 Load attribute at Magic Knight's predicted x- and y-coordinates into A
C 40114,1 XOR with Magic Knight's current attribute
C 40115,1 Reset INK and BRIGHT bits, preserving only PAPER and FLASH
C 40116,1 XOR with Magic Knight's current attribute (Magic Knight's INK and BRIGHT bits override whatever was there before)
C 40117,3 Load processed attribute value at Magic Knight's predicted x- and y-coordinates back into Display File
C 40120,1 Advance by one byte in Terrain Interaction Data
C 40121,2 Advance by one byte in Display File
C 40123,1 Switch registers
C 40124,2 Loop back to 40105 for next character in Magic Knight's spanned characters
C 40126,1 Switch registers
C 40127,1 Advance pointer in Terrain Interaction Data by 29/30 bytes (down to next row, depending on how many characters Magic Knight spans)
C 40128,2 Advance pointer in Attribute File by 29/30 bytes (down to next row, depending on how many characters Magic Knight spans)
C 40130,1 Switch registers
C 40131,1 Decrease number of characters spanned by Magic Knight vertically...
C 40132,2 ...and if not zero (i.e. more to go) then loop back to #R40103
C 40134,1 Switch registers
C 40135,1 Restore DE
C 40136,1 Restore BC
C 40137,2 Restore IX
C 40139,1 Return
b 40140 Data - currently selected control device
B 40140,1,1
b 40141 Magic Knight's initial data
B 40141,1,1 x-coordinate (pixels)
B 40142,1,1 y-coordinate (pixels)
B 40143,1,1 Frame Number (frame to erase)
B 40144,1,1 Frame Number (frame to draw)
B 40145,1,1 x velocity (pixels) [walking / jumping sideways, usually 2 for right and 254 / -2 for left]
B 40146,1,1 y velocity (pixels) [jumping]
B 40147,1,1 Attribute
B 40148,1,1 Update Attributes Mask (zeroes BRIGHT and INK component of existing attribute so that Magic Knight's INK and BRIGHT bits override) (used by routine at 39989)
b 40149 Common Words Table
D 40149 This data block contains a list of zero-terminated (sub-)strings. Other text blocks reference this table when a particular string is required. This reduces the space requirements for storage of all of the game's text.
T 40149,3,B3 carriage return / line feed}{carriage return / line feed
T 40152,3,B3 change INK colour to cyan
T 40155,3,B3 move text cursor right by two characters
T 40158,4,B4 carriage return / line feed}{change INK colour to white
T 40162,12,11:B1 INSTRUCTION
T 40174,4,3:B1 =
T 40178,3,2:B1 A
T 40181,4,3:B1 AN
T 40185,4,3:B1 TO
T 40189,8,7:B1 COMMAND
T 40197,10,9:B1 CHARACTER
T 40207,6,5:B1 FROM
T 40213,8,7:B1 OBJECT
T 40221,5,4:B1 AND
T 40226,5,4:B1 YOU
T 40231,6,5:B1 GAME
T 40237,9,8:B1 EXAMINE
T 40246,5,4:B1 ANY
T 40251,4,3:B1 KEY
T 40255,4,3:B1
T 40259,5,4:B1 THE
T 40264,7,6:B1 WHICH
T 40271,6,5:B1 TAKE
T 40277,6,5:B1 GIVE
T 40283,8,7:B1 SUMMON
T 40291,7,6:B1 LOCATE
T 40298,11,B1:1:B1:7:B1 GIMBAL THE WIZARD
T 40309,2,B2 THOR
T 40311,10,B1:1:B1:6:B1 FLORIN THE DWARF
T 40321,11,B1:1:B1:7:B1 ORIK THE CLERIC
T 40332,11,B1:1:B1:7:B1 SAMSUN THE STRONG
T 40343,13,B1:11:B1 ELRAND HALFELVEN
T 40356,7,5:B2 LADY ROSMAR
T 40363,3,B3 THE BANSHEE
T 40366,11,10:B1 SOMETHING
T 40377,10,9:B1 TELEPORT
T 40387,11,10:B1 JOYSTICK
T 40398,6,5:B1 HELP
T 40404,12,11:B1 DAVID JONES
T 40416,7,6:B1 GIMBAL
T 40423,5,4:B1 THOR
T 40428,7,6:B1 FLORIN
T 40435,5,4:B1 ORIK
T 40440,7,6:B1 SAMSUN
T 40447,7,6:B1 ELRAND
T 40454,7,6:B1 ROSMAR
T 40461,8,7:B1 BANSHEE
T 40469,8,7:B1 CRYSTAL
T 40477,6,5:B1 THIS
T 40483,8,7:B1 NOTHING
T 40491,7,6:B1 THROW
T 40498,7,6:B1 THERE
T 40505,6,5:B1 THEIR
T 40511,13,12:B1 MAGIC KNIGHT
T 40524,5,4:B1 BOOK
T 40529,6,5:B1 READ
T 40535,4,3:B1 YES
T 40539,3,2:B1 NO
T 40542,7,6:B1 BOTTLE
T 40549,5,4:B1 OF
T 40554,5,4:B1 ROOF
T 40559,6,4:B2 4TH FLOOR
T 40565,6,4:B2 3RD FLOOR
T 40571,6,4:B2 2ND FLOOR
T 40577,6,4:B2 1ST FLOOR
T 40583,9,7:B2 GROUND FLOOR
T 40592,9,8:B1 BASEMENT
T 40601,26,1:B1,3:B1,B1:2:B1
T 40627,11,10:B1 SPELLBOUND
T 40638,11,10:B1 COPYRIGHT
T 40649,4,3:B1 IS TOO TIRED TO
T 40653,13,12:B1
T 40666,3,B3 name of Current Object} YE UNBINDE SPELL HOLD IN THY HAND A MOST MAGIC OBJECT YOU CAST THEE ONCE THY SPELL OF
T 40669,74,B1,11:B2,B1,22:B1,14:B2,14:B1:3:B2
T 40743,5,4:B1 HERE
T 40748,4,3:B1 YET
T 40752,13,B1:11:B1 THE ROOF GARDEN
T 40765,14,13:B1 SECRET TUNNEL
T 40779,15,14:B1 QUITICUS GAMUS
T 40794,5,4:B1 CAST
T 40799,6,5:B1 SPELL
T 40805,21,20:B1 FUMATICUS PROTECTIUM
T 40826,6,5:B1 FLOOR
T 40832,5,4:B1 ROOM
T 40837,23,22:B1 CRYSTALLIUM SPECTRALIS
T 40860,22,21:B1 CANDELIUM ILLUMINATUS
T 40882,20,19:B1 ARMOURIS PHOTONICUS
T 40902,22,21:B1 PROJECT PHYSICAL BODY
T 40924,10,8:B2 RELEASE SPELL
T 40934,6,5:B1 HAPPY
T 40940,5,4:B1 SAYS
T 40945,5,4:B1 YOUR
T 40950,7,6:B1 CANDLE
T 40957,8,7:B1 ALREADY
T 40965,18,17:B1 LUMP OF BRICKWORK
T 40983,14,13:B1 MASTERTRONIC
T 40997,5,4:B1 LIFT
T 41002,4,3:B1 IS
T 41006,5,4:B1 TIME
T 41011,6,5:B1 MAGIC
b 41017 Characters' Initial Inventories
D 41017 Nine groups of five bytes, one group per character (including Magic Knight). Each of the five bytes per group represents an inventory slot for that character. A value of zero indicates that the slot is empty. Non-zero values correspond to indices of objects (e.g. 3 = Miolnir)
B 41017,5,5 Magic Knight
B 41022,5,5 Gimbal the Wizard
B 41027,5,5 Thor
B 41032,5,5 Florin the Dwarf
B 41037,5,5 Orik the Cleric
B 41042,5,5 Samsun the Strong
B 41047,5,5 Elrand Halfelven
B 41052,5,5 Lady Rosmar
B 41057,5,5 The Banshee
b 41062 Characters' Initial Positions
D 41062 Eight groups of three bytes, one group per character (excluding Magic Knight). The values are:
B 41062,3,3 Gimbal the Wizard
B 41065,3,3 Thor
B 41068,3,3 Florin the Dwarf
B 41071,3,3 Orik the Cleric
B 41074,3,3 Samsun the Strong
B 41077,3,3 Elrand Halfelven
B 41080,3,3 Lady Rosmar
B 41083,3,3 The Banshee
b 41086 Objects' Initial Positions
D 41086 Fifty groups of three bytes, one group per object. The values are:
B 41086,3,3 "Nothing at All"
B 41089,3,3 Ancient Scroll
B 41092,3,3 Book of Shadows
B 41095,3,3 Miolnir
B 41098,3,3 Axe
B 41101,3,3 Sticky Bun
B 41104,3,3 Crystal Ball
B 41107,3,3 Wand of Command
B 41110,3,3 Javelin
B 41113,3,3 Cannon Ball
B 41116,3,3 Tube of Glue
B 41119,3,3 Broken Talisman
B 41122,3,3 Magic Talisman
B 41125,3,3 Runestone
B 41128,3,3 Broken Glass
B 41131,3,3 Book of Runes
B 41134,3,3 Glowing Bottle
B 41137,3,3 Gold Goblet
B 41140,3,3 Fast Blow Fuse
B 41143,3,3 Red Herring
B 41146,3,3 Brick
B 41149,3,3 Green Crystal
B 41152,3,3 Blue Crystal
B 41155,3,3 Red Crystal
B 41158,3,3 Willow Rod
B 41161,3,3 Lump of Brickwork
B 41164,3,3 Bottle of Liquid
B 41167,3,3 Four Leaf Clover
B 41170,3,3 Loaf of Elf-Bread
B 41173,3,3 Platform
B 41176,3,3 Gold Bar
B 41179,3,3 Pewter Tankard
B 41182,3,3 White Gold Ring
B 41185,3,3 Engraved Candle
B 41188,3,3 Strange Liquid
B 41191,3,3 Mirror
B 41194,3,3 Pocket Laser
B 41197,3,3 Prism
B 41200,3,3 Elf-Horn
B 41203,3,3 Saxophone
B 41206,3,3 Trumpet
B 41209,3,3 Instruction Book
B 41212,3,3 Key
B 41215,3,3 Advert
B 41218,3,3 Lump of Brickwork
B 41221,3,3 Empty Bottle
B 41224,3,3 Power-Pong Plant
B 41227,3,3 Shield
B 41230,3,3 Teleport Key
B 41233,3,3 Teleport Pad
b 41236 Object Names
T 41236,10,B1:8:B1 NOTHING AT ALL
T 41246,15,14:B1 ANCIENT SCROLL
T 41261,10,B2:7:B1 BOOK OF SHADOWS
T 41271,8,7:B1 MIOLNIR
T 41279,4,3:B1 AXE
T 41283,11,10:B1 STICKY BUN
T 41294,7,B1:5:B1 CRYSTAL BALL
T 41301,7,1:B1:3:B2 WAND OF COMMAND
T 41308,8,7:B1 JAVELIN
T 41316,12,11:B1 CANNON BALL
T 41328,10,4:B1:4:B1 TUBE OF GLUE
T 41338,16,15:B1 BROKEN TALISMAN
T 41354,11,B1:9:B1 MAGIC TALISMAN
T 41365,10,9:B1 RUNESTONE
T 41375,13,12:B1 BROKEN GLASS
T 41388,8,B2:5:B1 BOOK OF RUNES
T 41396,10,8:B2 GLOWING BOTTLE
T 41406,12,11:B1 GOLD GOBLET
T 41418,15,14:B1 FAST BLOW FUSE
T 41433,12,11:B1 RED HERRING
T 41445,6,5:B1 BRICK
T 41451,8,6:B2 GREEN CRYSTAL
T 41459,7,5:B2 BLUE CRYSTAL
T 41466,6,4:B2 RED CRYSTAL
T 41472,11,10:B1 WILLOW ROD
T 41483,2,B2 LUMP OF BRICKWORK
T 41485,9,B2:6:B1 BOTTLE OF LIQUID
T 41494,17,16:B1 FOUR LEAF CLOVER
T 41511,12,4:B1:5:B2 LOAF OF ELF-BREAD
T 41523,9,8:B1 PLATFORM
T 41532,9,8:B1 GOLD BAR
T 41541,15,14:B1 PEWTER TANKARD
T 41556,16,15:B1 WHITE GOLD RING
T 41572,11,9:B2 ENGRAVED CANDLE
T 41583,15,14:B1 STRANGE LIQUID
T 41598,7,6:B1 MIRROR
T 41605,13,12:B1 POCKET LASER
T 41618,6,5:B1 PRISM
T 41624,9,8:B1 ELF-HORN
T 41633,10,9:B1 SAXAPHONE [bug]
T 41643,8,7:B1 TRUMPET
T 41651,4,B1:1:B2 INSTRUCTION BOOK
T 41655,2,B2 KEY
T 41657,7,6:B1 ADVERT
T 41664,2,B2 LUMP OF BRICKWORK
T 41666,13,12:B1 EMPTY BOTTLE
T 41679,17,16:B1 POWER-PONG PLANT
T 41696,7,6:B1 SHIELD
T 41703,3,B3 TELEPORT KEY
T 41706,5,B1:3:B1 TELEPORT PAD
b 41711 Room Connectivity Data
D 41711 Two values per room:
B 41711,2,2 The Lift
B 41713,16,16 Roof
B 41729,16,16 4th Floor
B 41745,16,16 3rd Floor
B 41761,16,16 2nd Floor
B 41777,16,16 1st Floor
B 41793,16,16 Ground Floor
B 41809,2,2 Basement
b 41811 Keyboard Shortcuts for Commands
T 41811,15,15
B 41826,1,1
b 41827 Routine Start Addresses for Magic Knight's Commands (Main Menu)
W 41827,2,2 Process command to pick up an object
W 41829,2,2 Process command to drop an object
W 41831,2,2 Process command to take an object
W 41833,2,2 Process command to give an object
W 41835,2,2 Display and Handle Main In-Game Menu
W 41837,2,2 Process command to examine an object, a character or Magic Knight
W 41839,2,2 Process and Execute Command to Command a Character
W 41841,2,2 Process command to locate a character
W 41843,2,2 Process command to teleport
W 41845,2,2 Process and Execute Command to Read an Object
W 41847,2,2 Process command to throw an object
W 41849,2,2 Process command to cast a spell
W 41851,2,2 Process command to blow an object
W 41853,2,2 Process command to call Lift
W 41855,2,2 Process command to move Lift
b 41857 Store for address of current position in Magic Knight's y-velocities sequence table at 41857
W 41857,2,2
b 41859 Magic Knight's y-Velocities Sequence for Jumping and Falling
D 41859 This is the sequence of y-velocity increments / decrements applied to Magic Knight's y-coordinate when he is jumping or falling. The data is zero-terminated.
B 41859,15,8,7
b 41874 Window Data
D 41874 Eight bytes per window. The meaning of the data is:
B 41874,8,8 (00) Main (Game) Window
B 41882,8,8 (01) Command Summary Window
B 41890,8,8 (02) Window showing an object's read text (i.e. "READ OBJECT successful" window)
B 41898,8,8 (03) Character Selection Window
B 41906,8,8 (04) List of objects window (menu or info)
B 41914,8,8 (05) "SPELLBOUND A TRUE GRAPHIC ADVENTURE BY DAVID JONES COPYRIGHT 1985" window above Control Selection Window
B 41922,8,8 (06) Control Selection Window
B 41930,8,8 (07) Instructions Window (1/3)
B 41938,8,8 (08) Instructions Window (2/3)
B 41946,8,8 (09) Instructions Window (3/3)
B 41954,8,8 (10) 2nd Floor portraits and Florin's Room Picture frame
B 41962,8,8 (11) "EXECUTE / REJECT COMMAND" Window
B 41970,8,8 (12) "THERE IS NO WRITING FOR ME TO READ" window
B 41978,8,8 (13) Pick Up / Drop / Give / Take failed (including "THOR IS ANGRY...") messages window
B 41986,8,8 (14) "PRESS SPACE OR FIRE TO CONTINUE" window
B 41994,8,8 (15) In-game window at bottom of screen ("SPELLBOUND COPYRIGHT MASTERTRONIC..." / Magic Knight's strength and inventory if carrying mirror)
B 42002,8,8 (16) "EXAMINE WHAT?" Window
B 42010,8,8 (17) "IT IS NOT SAFE TO TELEPORT..." window
B 42018,8,8 (18) "EXAMINE YOURSELF" / "EXAMINE CHARACTER" Window
B 42026,8,8 (19) Frame around portrait of character on "EXAMINE CHARACTER" and "EXAMINE YOURSELF" windows
B 42034,8,8 (20) "EXAMINE OBJECT" Window
B 42042,8,8 (21) Frame around object in "EXAMINE OBJECT" Window
B 42050,8,8 (22) "LOCATE A CHARACTER" Window
B 42058,8,8 (23) "WHICH COMMAND DO YOU WANT TO USE?" ("COMMAND [CHARACTER] TO...") Window
B 42066,8,8 (24) "Command a character to help successful" window / Lift Messages Window
B 42074,8,8 (25) "TAKE LIFT TO:" Window
B 42082,8,8 (26) "YOU DROPPED THE BOTTLE TO THE GROUND..." Window
B 42090,8,8 (27) "WHAT A RACKET" / "WHAT A LOT OF DUST" Window
B 42098,8,8 (28) Summoning messages
B 42106,8,8 (29) "Result of commanding a character" Window
B 42114,8,8 (30) Spell Selection Window
B 42122,8,8 (31) Red death information window
B 42130,8,8 (32) Green "GIMBAL IS NOT YET RELEASED..." Window
B 42138,8,8 (33) Game Over Window
B 42146,8,8 (34) "[CHARACTER] IS ASLEEP" window
B 42154,8,8 (35) "Result of casting a spell (or failing)" Window
B 42162,8,8 (36) "WELL DONE MAGIC KNIGHT..." window
b 42170 Characters' Initial Stats
D 42170 Nine groups of eight bytes, one group per character (including Magic Knight). The values are:
B 42170,8,8 Magic Knight
B 42178,8,8 Gimbal the Wizard
B 42186,8,8 Thor
B 42194,8,8 Florin the Dwarf
B 42202,8,8 Orik the Cleric
B 42210,8,8 Samsun the Strong
B 42218,8,8 Elrand Halfelven
B 42226,8,8 Lady Rosmar
B 42234,8,8 The Banshee
b 42242 Object Properties
D 42242 Fifty groups of eight bytes, one group per object (including "Nothing at All"). The values are:
B 42242,8,8 "Nothing at All"
B 42250,8,8 Ancient Scroll
B 42258,8,8 Book of Shadows
B 42266,8,8 Miolnir
B 42274,8,8 Axe
B 42282,8,8 Sticky Bun
B 42290,8,8 Crystal Ball
B 42298,8,8 Wand of Command
B 42306,8,8 Javelin
B 42314,8,8 Cannon Ball
B 42322,8,8 Tube of Glue
B 42330,8,8 Broken Talisman
B 42338,8,8 Magic Talisman
B 42346,8,8 Runestone
B 42354,8,8 Broken Glass
B 42362,8,8 Book of Runes
B 42370,8,8 Glowing Bottle
B 42378,8,8 Gold Goblet
B 42386,8,8 Fast Blow Fuse
B 42394,8,8 Red Herring
B 42402,8,8 Brick
B 42410,8,8 Green Crystal
B 42418,8,8 Blue Crystal
B 42426,8,8 Red Crystal
B 42434,8,8 Willow Rod
B 42442,8,8 Lump of Brickwork
B 42450,8,8 Bottle of Liquid
B 42458,8,8 Four Leaf Clover
B 42466,8,8 Loaf of Elf-Bread
B 42474,8,8 Platform
B 42482,8,8 Gold Bar
B 42490,8,8 Pewter Tankard
B 42498,8,8 White Gold Ring
B 42506,8,8 Engraved Candle
B 42514,8,8 Strange Liquid
B 42522,8,8 Mirror
B 42530,8,8 Pocket Laser
B 42538,8,8 Prism
B 42546,8,8 Elf-Horn
B 42554,8,8 Saxophone
B 42562,8,8 Trumpet
B 42570,8,8 Instruction Book
B 42578,8,8 Key
B 42586,8,8 Advert
B 42594,8,8 Lump of Brickwork
B 42602,8,8 Empty Bottle
B 42610,8,8 Power-Pong Plant
B 42618,8,8 Shield
B 42626,8,8 Teleport Key
B 42634,8,8 Teleport Pad
b 42642 Graphic Lookup Table
D 42642 Three values per graphic. First two are BYTEs and third is a WORD. The values are:
B 42642,4,4 (000) - Graphics (#R63476) - Magic Knight Frame 1 (Right)
B 42646,4,4 (001) - Graphics (#R63124) - "Locate a Character" Compass
B 42650,4,4 (002) - Graphics (#R54701) - Menu Cursor (Hand)
B 42654,4,4 (003) - Graphics (#R62772) - Crystal (Object)
B 42658,4,4 (004) - Graphics (#R62804) - Shield (Object)
B 42662,4,4 (005) - Graphics (#R62836) - Cannon / Crystal Ball (Object)
B 42666,4,4 (006) - Graphics (#R62868) - Bottle (Object)
B 42670,4,4 (007) - Graphics (#R62900) - Ancient Scroll (Object)
B 42674,4,4 (008) - Graphics (#R62932) - Red Herring (Object)
B 42678,4,4 (009) - Graphics (#R62964) - Teleport Pad (Object)
B 42682,4,4 (010) - Graphics (#R62996) - Pool of Liquid (Object)
B 42686,4,4 (011) - Graphics (#R63028) - Loaf of Bread (Object)
B 42690,4,4 (012) - Graphics (#R63060) - (Teleport) Key (Object)
B 42694,4,4 (013) - Graphics (#R63092) - Brick / Gold Bar (Object)
B 42698,4,4 (014) - Graphics (#R62420) - Mirror (Object)
B 42702,4,4 (015) - Graphics (#R62452) - Axe (Object)
B 42706,4,4 (016) - Graphics (#R62484) - Miolnir (Object)
B 42710,4,4 (017) - Graphics (#R62516) - Runestone (Object)
B 42714,4,4 (018) - Graphics (#R62548) - Book (Object)
B 42718,4,4 (019) - Graphics (#R62580) - Pocket Laser (Object)
B 42722,4,4 (020) - Graphics (#R62612) - White Gold Ring (Object)
B 42726,4,4 (021) - Graphics (#R62644) - Pewter Tankard (Object)
B 42730,4,4 (022) - Graphics (#R62676) - Engraved Candle (Object)
B 42734,4,4 (023) - Graphics (#R62708) - Elf Horn (Object)
B 42738,4,4 (024) - Graphics (#R62740) - Broken Glass (Object)
B 42742,4,4 (025) - Graphics (#R62068) - Lump of Brickwork (Object)
B 42746,4,4 (026) - Graphics (#R62100) - Sticky Bun (Object)
B 42750,4,4 (027) - Graphics (#R62132) - Wand of Command (Object) [bug]
B 42754,4,4 (028) - Graphics (#R62164) - Javelin (Object)
B 42758,4,4 (029) - Graphics (#R62196) - Tube of Glue (Object)
B 42762,4,4 (030) - Graphics (#R62228) - Broken Talisman (Object)
B 42766,4,4 (031) - Graphics (#R62260) - Magic Talisman (Object) [bug]
B 42770,4,4 (032) - Graphics (#R62292) - Goblet (Object) [bug]
B 42774,4,4 (033) - Graphics (#R62324) - Willow Rod (Object)
B 42778,4,4 (034) - Graphics (#R62356) - Power Pong Plant (Object)
B 42782,4,4 (035) - Graphics (#R62388) - Saxophone (Object)
B 42786,4,4 (036) - Graphics (#R61716) - Trumpet
B 42790,4,4 (037) - Graphics (#R61748) - Four Leaf Clover
B 42794,4,4 (038) - Graphics (#R61780) - Advert
B 42798,4,4 (039) - Graphics (#R61812) - Prism
B 42802,4,4 (040) - Graphics (#R61844) - Plant Pot (1)
B 42806,4,4 (041) - Graphics (#R61876) - Plant Pot (2)
B 42810,4,4 (042) - Graphics (#R61892) - Plant Pot (3)
B 42814,4,4 (043) - Graphics (#R61924) - Goblet (from Picture in Florin's Room)
B 42818,4,4 (044) - Graphics (#R61972) - Plant Pot (4)
B 42822,4,4 (045) - Graphics (#R62020) - Plant (7)
B 42826,4,4 (046) - Unused
B 42830,4,4 (047) - Graphics (#R61396) - Tree Trunk (2)
B 42834,4,4 (048) - Graphics (#R60756) - Tree Top (2)
B 42838,4,4 (049) - Graphics (#R61076) - Tree Top (3)
B 42842,4,4 (050) - Graphics (#R60532) - Plant (3)
B 42846,4,4 (051) - Graphics (#R60612) - Plant (4)
B 42850,4,4 (052) - Graphics (#R60660) - Plant (5)
B 42854,4,4 (053) - Graphics (#R60708) - Plant (6)
B 42858,4,4 (054) - Graphics (#R60324) - Wall Bracketed Candle
B 42862,4,4 (055) - Graphics (#R60388) - Right-Facing Candle Wall Bracket
B 42866,4,4 (056) - Graphics (#R60436) - Right-Facing Candle Wall Bracket Plate
B 42870,4,4 (057) - Graphics (#R60460) - Left-Facing Candle Wall Bracket
B 42874,4,4 (058) - Graphics (#R60508) - Left-Facing Candle Wall Bracket Plate
B 42878,4,4 (059) - Graphics (#R59548) - Picture in Frame (1)
B 42882,4,4 (060) - Graphics (#R59748) - Picture in Frame (2)
B 42886,4,4 (061) - Graphics (#R60108) - Landscape 1 (from framed picture)
B 42890,4,4 (062) - Graphics (#R60156) - Landscape 2 (from framed picture)
B 42894,4,4 (063) - Graphics (#R59260) - Puff of Smoke Frame 1
B 42898,4,4 (064) - Graphics (#R59308) - Puff of Smoke Frame 2
B 42902,4,4 (065) - Graphics (#R59356) - Puff of Smoke Frame 3
B 42906,4,4 (066) - Graphics (#R59404) - Puff of Smoke Frame 4
B 42910,4,4 (067) - Graphics (#R59452) - Puff of Smoke Frame 5
B 42914,4,4 (068) - Graphics (#R59500) - Puff of Smoke Frame 6
B 42918,4,4 (069) - Graphics (#R58748) - Gimbal the Wizard
B 42922,4,4 (070) - Graphics (#R58812) - Thor
B 42926,4,4 (071) - Graphics (#R58876) - Florin the Dwarf
B 42930,4,4 (072) - Graphics (#R58940) - Orik the Cleric
B 42934,4,4 (073) - Graphics (#R59004) - Samsun the Strong
B 42938,4,4 (074) - Graphics (#R59068) - Elrand Halfelven
B 42942,4,4 (075) - Graphics (#R59132) - Lady Rosmar
B 42946,4,4 (076) - Graphics (#R59196) - The Banshee
B 42950,4,4 (077) - Graphics (#R58460) - Lift Control Panel
B 42954,4,4 (078) - Graphics (#R58260) - Mushroom (1)
B 42958,4,4 (079) - Graphics (#R58292) - Mushroom (2)
B 42962,4,4 (080) - Graphics (#R58324) - Mushroom (3)
B 42966,4,4 (081) - Graphics (#R58356) - Mushroom (4)
B 42970,4,4 (082) - Graphics (#R58388) - Large Mushroom
B 42974,4,4 (083) - Graphics (#R58196) - Lift Door
B 42978,4,4 (084) - Graphics (#R57844) - Tree Top (1)
B 42982,4,4 (085) - Graphics (#R58036) - Tree Trunk (1)
B 42986,4,4 (086) - Graphics (#R57524) - Wall axes
B 42990,4,4 (087) - Graphics (#R57252) - Unknown
B 42994,4,4 (088) - Graphics (#R57332) - Unknown
B 42998,4,4 (089) - Graphics (#R57364) - Plant (1)
B 43002,4,4 (090) - Graphics (#R57444) - Plant (2)
B 43006,4,4 (091) - Graphics (#R57012) - Wall clock
B 43010,4,4 (092) - Graphics (#R56676) - Stag's Head
B 43014,4,4 (093) - Graphics (#R56356) - Big Bottle Top
B 43018,4,4 (094) - Graphics (#R56484) - Big / Little Bottle Body
B 43022,4,4 (095) - Graphics (#R56612) - Little Bottle Top
B 43026,4,4 (096) - Graphics (#R56212) - Ceiling Candles
B 43030,4,4 (097) - Graphics (#R55812) - Books (1)
B 43034,4,4 (098) - Graphics (#R55892) - Books (2)
B 43038,4,4 (099) - Graphics (#R56012) - Books (3)
B 43042,4,4 (100) - Graphics (#R56132) - Books (4)
B 43046,4,4 (101) - Graphics (#R55716) - Right bookend
B 43050,4,4 (102) - Graphics (#R55764) - Left bookend
b 43054 "HELLO HACKER" text
T 43054,13,12:B1 HELLO HACKER FANCY MEETING YOU HERE !
T 43067,23,B1,14:B1:6,B1
b 43090 Miscellaneous Text (1)
T 43090,12,B1:1:B3:1:B1:4:B1 SPELLBOUND A TRUE GRAPHIC ADVENTURE BY DAVID JONES COPYRIGHT 1985
T 43102,34,18:B1,B3:3:B2,B2:4,B1
T 43136,5,B5 SPELLBOUND COPYRIGHT MASTERTRONIC 1985 BY DAVID JONES 1985
T 43141,25,B4:1:B2:4:B1,B2:4:B1:5,B1
T 43166,15,14:B1 PRESS SPACE OR FIRE TO CONTINUE
T 43181,15,5:B1:8,B1
T 43196,1,B1 E  EXECUTE COMMAND R  REJECT COMMAND
T 43197,23,1:B1:8:B2,1:B1:7:B1,B1
T 43220,1,B1 0
T 43221,3,1:B1,B1
T 43224,6,B1:4:B1 GAME OVER TOTAL COMPLETION 000 % TIME LEFT 48 HOURS
T 43230,41,22:B1,B1:14:B1,B1
T 43271,2,B2 COMMAND
T 43273,1,B1
T 43274,1,B1 Height = 10
T 43275,18,B1:1:B1:4:B1:9:B1 GIMBAL IS NOT YET RELEASED FROM THE WHITE-OUT SPELL THAT HE ACCIDENTALLY CAST UPON HIMSELF. A SPELL IS REQUIRED TO RELEASE HIM. IF HE IS NOT RELEASED SOON HIS SPIRIT WILL BE TOTALLY BLEACHED OUT (NASTY !!)
T 43293,157,5:B1:10:B1:5:B1,16:B1:5:B1,8:B1,B2:1:B1:9:B2,12:B1,6:B1:17:B1,1:B1:22:B1,23,B1
b 43450 Cyan "Game Over" Window Additional Texts
T 43450,1,B1 Height = 7
T 43451,15,6:B1:8 BREAK KEY PRESSED
T 43466,1,B1
T 43467,13,B2:5:B1:4:B1 YOU HURT YOURSELF MOVING AROUND IN THE DARK
T 43480,24,17:B2,4,B1
T 43504,1,B1 Height = 10
T 43505,14,B1:7:B1:4:B1 YOU KILLED YOURSELF TRYING TO THROW SOMETHING AT {short name of Current Character}
T 43519,20,7:B1:5:B1,B1:2:B1,B1
T 43539,1,B1 Height = 8
T 43540,9,B1:6:B2 YOU THREW SOMETHING AND KILLED {short name of Current Character}
T 43549,10,B1:7:B1,B1
T 43559,1,B1 Height = 12
T 43560,20,10:B1:8:B1 I SUPPOSE YOU REALISED THAT QUITICUS GAMUS IS A SPELL TO QUIT THE GAME BUT PRESSING THE BREAK KEY IS MUCH QUICKER !
T 43580,61,5:B1:3:B1,B2:1:B1:5:B2,B1:13:B2,6:B1:1:B1:4:B1,9,B1
b 43641 Miscellaneous Text (2)
T 43641,2,B2 short name of Current Character} IS ASLEEP
T 43643,8,B1:6,B1
T 43651,1,B1 Height = 7
T 43652,10,B1:8:B1 THE GAS GOT YOU
T 43662,1,B1
T 43663,14,10:B1:1:B2 WELL DONE MAGIC KNIGHT YOU HAVE COMPLETED YOUR TASK BUT THE LAST SPELL HAS THROWN YOU INTO A TIMESTREAM AND YOU WILL EMERGE SHORTLY IN KNIGHT-TYME ALSO FROM MASTERTRONIC
T 43677,112,15:B1:9:B1,B1:5:B1:15:B1,5:B2:7:B2:4:B1,29:B1,10:B1,B1
T 43789,1,B1 Height = 15
T 43790,19,B1:17:B1 YOU HAVE SUCCEEDED IN YOUR TASK BUT A MUCH GREATER CHALLENGE AWAITS YOU IN THE FAR FUTURE. CAN YOU ESCAPE BACK TO YOUR OWN TIME ? TO BE CONTINUED....
T 43809,104,B1:10:B1:4:B1,17:B1,7:B1:3:B1:3:B1,7:B1,1:B2:11:B1,B2:5:B1:2:B1,B1,B1:16,B1
T 43913,29,28:B1 * STRENGTH *  1  2  3  4  5
T 43942,18,1:B4:12,B1
T 43960,1,B1 Height = 10
T 43961,20,B1:18:B1 YOU DIED OF EXHAUSTION (YOU REALLY SHOULD BE MORE CAREFUL !)
T 43981,36,B1,1:B1:16:B1,15,B1
T 44017,17,B2:7:B1:5:B2 WHO DO YOU WANT TO
T 44034,1,B1
T 44035,1,B1 Height = 3
T 44036,9,B2:6:B1 THERE IS NOBODY IN THIS ROOM
T 44045,6,3:B2,B1
T 44051,6,B4:1:B1 TAKE AN OBJECT FROM ?
T 44057,1,B1
T 44058,6,B4:1:B1 GIVE AN OBJECT TO ?
T 44064,1,B1
T 44065,3,B1:1:B1 EXAMINE ?
T 44068,1,B1
T 44069,3,B1:1:B1 SUMMON ?
T 44072,1,B1
T 44073,4,B1:2:B1 COMMAND ?
T 44077,1,B1
T 44078,4,B1:2:B1 LOCATE ?
T 44082,1,B1
T 44083,8,B3:4:B1 THROW AN OBJECT AT ?
T 44091,1,B1
T 44092,10,7:B1:1:B1 TRAVEL TO ?
T 44102,1,B1
b 44103 Main In-Game Menu Strings
T 44103,18,B3:14:B1 COMMANDS AVAILABLE :- P  PICK UP OBJECT D  DROP OBJECT T  TAKE OBJECT G GIVE OBJECT E  EXAMINE
T 44121,38,B1,B2:1:B1:8:B2,1:B1:5:B2,1:B4*2,1:B2,B1
T 44159,1,B1 Z  EXIT MENU
T 44160,13,B1:1:B1:9,B1
T 44173,7,B1:1:B2:1:B2 C  COMMAND A CHARACTER
T 44180,1,B1
T 44181,7,B1:1:B2:1:B2 L  LOCATE A CHARACTER
T 44188,1,B1
T 44189,4,B1:1:B2 X  TELEPORT
T 44193,1,B1
T 44194,5,B1:1:B3 R  READ SOMETHING
T 44199,1,B1
T 44200,5,B1:1:B3 Y  THROW SOMETHING
T 44205,1,B1
T 44206,7,B1:1:B2:1:B2 S  CAST A SPELL
T 44213,1,B1
T 44214,9,B1:1:B1:5:B1 B  BLOW SOMETHING
T 44223,1,B1
T 44224,9,B1:1:B1:5:B1 W  CALL LIFT
T 44233,1,B1
T 44234,9,B1:1:B1:5:B1 V  MOVE LIFT
T 44243,1,B1
b 44244 "Command a Character to Help" Text Messages
T 44244,1,B1 Height = 4
T 44245,10,B2:7:B1 THERE IS NOTHING MORE THAT {short name of Current Character} CAN DO TO HELP HERE
T 44255,23,10:B1:4:B1,3:B3,B1
T 44278,1,B1 Height = 6
T 44279,12,B1:9:B2 THOR SMASHED THE LIFT CONTROL BOX WITH MIOLNIR. "THAT SHOULD DO THE TRICK" HE SAYS
T 44291,58,B1:12:B1,13:B1,B1:15:B2,5:B1:4:B1,B1
T 44349,1,B1 Height = 11
T 44350,16,B1:14:B1 THE TOWER SHOOK AS THOR SENT A BOLT OF HIS BEST LIGHTNING AT IT. THE TOWER STILL STANDS BUT HE HAS WEAKENED A WALL SOMEWHERE DUE TO ALL THE SHAKING AND NOISE
T 44366,122,B1:6:B1:7:B1,1:B1:14:B1,6:B1,B1:11:B1,17:B1,9:B1:4:B1,14:B1:3:B1,B1:8:B2,5,B1
T 44488,1,B1 Height = 8
T 44489,13,B1:11:B1 FLORIN HAS MENDED THE TALISMAN USING THE GLUE. THEN HE CAST AN OLD SPELL IN DWARVISH TO RESTORE IT TO FULL MAGIC POTENCY
T 44502,81,B1:14:B1,B1:5:B1,8:B1:1:B1:3:B1,B1:12:B1,B1:11:B2,5:B1:8,B1
T 44583,1,B1 Height = 5
T 44584,15,9:B1:4:B1 GOOD OLD SAMSUN HAS THROWN A PLATFORM INTO THE MIDDLE OF THE PIT FOR YOU
T 44599,44,7:B1:8:B1,5:B1:9:B1,B1:8:B1,B1
T 44643,1,B1 Height = 4
T 44644,15,B1:13:B1 THE TRUMPET BLOWS AND THE WALL COMES A-TUMBLING DOWN !!
T 44659,32,B2:10:B1,18,B1
T 44691,1,B1 Height = 8
T 44692,11,B1:8:B2 ROSMAR PLACED THE FUSE IN THE LASER AND MELTED A HOLE IN THE WALL. NOT THE MOST SUBTLE METHOD OF ENTRY BUT VERY EFFECTIVE !
T 44703,93,8:B1:5:B1,B1:7:B1:4:B1,3:B1:5:B1,4:B1:11:B1,19:B1,16,B1
b 44796 The Banshee's Help Texts
T 44796,1,B1 Height = 6
T 44797,5,B2:1:B2 THE BANSHEE SAYS "THEY THAT WOULD BE FIRST SHALL BE LAST AND THE LAST SHALL BE FIRST"
T 44802,63,B1:18:B1,19:B1,B2:10:B1,8:B1,B1
T 44865,1,B1 Height = 5
T 44866,5,B2:1:B2 THE BANSHEE SAYS "FLORIN THE DWARF IS GOOD AT MENDING THINGS"
T 44871,29,B2:2:B1:15:B1,6:B1,B1
T 44900,1,B1 Height = 4
T 44901,5,B2:1:B2 THE BANSHEE SAYS "BRING BACK LOST IN SPACE !"
T 44906,29,B1:15:B1,10:B1,B1
T 44935,1,B1 Height = 8
T 44936,5,B2:1:B2 THE BANSHEE SAYS "A DISTANT COUSIN OF MINE IS PRETENDING TO BE A POOL OF LIQUID. A SPELL COULD BE OF USE TO BOTH OF YOU  (bug)
T 44941,88,B2:17:B1,5:B1:10:B1,B1:3:B1:7:B1,7:B1,B2:12:B1,4:B1:8:B1,B1
T 45029,1,B1 Height = 4
T 45030,5,B2:1:B2 THE BANSHEE SAYS "RED HERRINGS ARE NOT ALWAYS FISH"
T 45035,35,B1:16:B1,15:B1,B1
T 45070,1,B1 Height = 8
T 45071,5,B2:1:B2 THE BANSHEE SAYS "THE PROOF IS IN THE BOTTLE. LEND IT TO FLORIN AND GAIN STRENGTH BY YOUR ACTIONS WHEN YOU CLAIM IT BACK"
T 45076,76,B2:6:B1:2:B1,B2:1:B1,8:B3,B1:16:B1,B1:13:B1*2,B1
T 45152,1,B1 Height = 9
T 45153,10,B2:7:B1 THE BANSHEE CHANTS "CANDLE LIGHT CANDLE BRIGHT FOUR LEAF CLOVER FROM THE NIGHT WITHOUT THE LOT YOUR CHANCE IS SLIGHT"
T 45163,79,B2:6:B1,B1:7:B1,16:B1,5:B1:5:B1,8:B1:3:B1,B1:8:B2,6:B1,B1
T 45242,1,B1 Height = 5
T 45243,5,B2:1:B2 THE BANSHEE SAYS "I THINK YOU HAVE HAD ENOUGH HELP FROM ME."
T 45248,37,B1:8:B1:4:B1,11:B1:4:B1,3:B1,B1
b 45285 Text Relating to "Pick Up" Command
T 45285,19,B2:16:B1 YOU ARE NOW CARRYING
T 45304,1,B1
T 45305,9,B1:8 PICK UP
T 45314,1,B1
T 45315,1,B1 Height = 3
T 45316,4,B4 THERE IS NOTHING IN THIS ROOM
T 45320,6,3:B2,B1
T 45326,1,B1 Height = 3
T 45327,4,B4 THERE IS NOTHING NEAR ENOUGH
T 45331,12,11,B1
T 45343,1,B1 Height = 3
T 45344,12,B1:10:B1 YOUR HANDS ARE FULL
T 45356,5,4,B1
T 45361,1,B1 Height = 3
T 45362,8,5:B3 THAT OBJECT IS TOO HEAVY
T 45370,10,9,B1
T 45380,1,B1 Height = 6
T 45381,10,B1:7:B2 THE LIQUID IS STUCK TO THE FLOOR. (IT'S A VERY THICK LIQUID)
T 45391,38,6:B3,B1:1:B1,6:B1:4:B1,13,B1
b 45429 Text Relating to "Drop" Command
T 45429,10,B1:5:B2:1:B1 DROP WHICH OBJECT ?
T 45439,1,B1
T 45440,6,B1:5 DROP
T 45446,1,B1
T 45447,1,B1 Height = 3
T 45448,9,B1:7:B1 YOU ARE NOT CARRYING ANYTHING
T 45457,18,17,B1
T 45475,1,B1 Height = 3
T 45476,8,B1:6:B1 YOU CANNOT DROP THAT OBJECT
T 45484,12,10:B1,B1
T 45496,14,B3:8:B3 YOU DROPPED THE BOTTLE TO THE GROUND AND NOW THERE IS A WAILING SOUND AN ANCIENT SPIRIT YOU WILL SEE FOR YOU HAVE RELEASED ...... BANSHEE
T 45510,99,B2:6:B1,B1:10:B1:1:B1,13:B1,B1,B1:14:B1,B1:8:B1,4:B1:13:B1,B15,B1
b 45609 Text Relating to "Take" Command
T 45609,6,B4:1:B1 TAKE WHICH OBJECT ?
T 45615,1,B1
T 45616,2,B2 TAKE
T 45618,1,B1
T 45619,3,B3 TAKE SOMETHING FROM
T 45622,1,B1
T 45623,3,1:B2 FROM
T 45626,1,B1
T 45627,1,B1 Height = 3
T 45628,4,B1:2:B1 short name of Current Character}'S HANDS ARE EMPTY
T 45632,16,15,B1
T 45648,1,B1 Height = 3
T 45649,8,B1:6:B1 short name of Current Character} WANTS TO KEEP THAT
T 45657,11,B1:9,B1
T 45668,1,B1 Height = 10
T 45669,10,B1:1:B1:6:B1 THOR IS ANGRY. A THUNDER STORM ERRUPTS FROM THE END OF HIS MIGHTY HAMMER MIOLNIR. "DIE MORTAL" CRIES THOR AND A BOLT OF LIGHTNING STRIKES YOU DEAD. [bug]
T 45679,119,B1:13:B1,13:B2,8:B1:6:B1,15:B1,B1:10:B2,6:B1:1:B1:1:B1,17:B1,8:B1:5,B1
T 45798,1,B1 Height = 7
T 45799,10,B1:8:B1 THOR KILLED YOU
T 45809,1,B1
b 45810 Text Relating to "Give" Command
T 45810,6,B4:1:B1 GIVE WHICH OBJECT ?
T 45816,1,B1
T 45817,2,B2 GIVE
T 45819,1,B1
T 45820,3,B3 TO
T 45823,1,B1
T 45824,1,B1 Height = 3
T 45825,10,B1:8:B1 short name of Current Character}'S HANDS ARE FULL
T 45835,9,8,B1
T 45844,1,B1 Height = 3
T 45845,7,B1:1:B1:3:B1 short name of Current Character} IS NOT STRONG ENOUGH
T 45852,14,13,B1
T 45866,1,B1 Height = 3
T 45867,11,B1:9:B1 short name of Current Character} DOES NOT WANT THAT YET
T 45878,12,10:B1,B1
b 45890 Text Relating to "Examine" Command
T 45890,6,B4:1:B1 EXAMINE WHICH OBJECT ?
T 45896,1,B1
T 45897,1,B1 EXAMINE
T 45898,1,B1
T 45899,8,B1:6:B1 EXAMINE WHAT ? O  OBJECT C  CHARACTER S  YOURSELF
T 45907,17,B1,1:B3*2,1:B2:4,B1
T 45924,3,B3 EXAMINE {short name of Current Character} STRENGTH    99 HAPPINESS   99 STAMINA     99 SPELL POWER 99 FOOD LEVEL 99
T 45927,106,B1,B2:8:B3:4:B3,B2:11:B2:4:B3,B2:6:B1:3:B2:4:B3,B3:6:B2:4:B3,B2:11:B2:4:B3,B1
T 46033,4,B4 EXAMINE
T 46037,1,B1
T 46038,1,B1 WEIGHT      99# DROP STATUS . READ STATUS . MAGIC POWER 99
T 46039,77,B1,B2:6:B1:2:B2:4:B3,B2:12:B2:1:B3,B3:7:B2:1:B3,B3:6:B2:4:B3,B1
b 46116 Characters' "Current Status" Texts
T 46116,1,B1 Unused
T 46117,15,14:B1 PROGRESS 000 % TIME LEFT 48 HOURS
T 46132,16,B1:14,B1
T 46148,14,B1:1:B1:10:B1 GIMBAL IS TRAPPED IN A WHITE-OUT SOMEWHERE
T 46162,21,B1:19,B1
T 46183,13,B1:11:B1 THOR WANT'S HIS HAMMER BACK (bug)
T 46196,12,11,B1
T 46208,16,B1:14:B1 FLORIN LIKES SINGING (ABOUT GOLD MOSTLY)
T 46224,20,19,B1
T 46244,12,B1:1:B1:8:B1 ORIK IS LEARNING MAGIC BY POST
T 46256,10,B1:8,B1
T 46266,11,B1:1:B2:6:B1 SAMSUN IS A LITTLE BIT STUPID
T 46277,11,10,B1
T 46288,8,B1:1:B1:4:B1 ELRAND IS VERY MUSICAL
T 46296,8,7,B1
T 46304,8,B1:1:B1:4:B1 LADY ROSMAR IS VERY CLEVER
T 46312,7,6,B1
T 46319,9,B1:1:B1:5:B1 THE BANSHEE IS QUIET AT THE MOMENT
T 46328,11,3:B1:6,B1
T 46339,11,B1:1:B1:6:B2 THOR IS READY TO HELP YOU WHEN YOU ASK
T 46350,12,B2:5:B1:3,B1
T 46362,11,B1:1:B1:6:B2 GIMBAL IS READY TO CAST A RELEASE SPELL
T 46373,13,B1:1:B1:8:B1,B1
T 46386,9,B1:1:B1:6 short name of Current Character} IS ASLEEP
T 46395,1,B1
b 46396 Miscellaneous Text (3)
T 46396,5,B1:4 YOURSELF
T 46401,1,B1
b 46402 Text Relating to "Command" Command
T 46402,2,B1:1 COMMAND
T 46404,1,B1
T 46405,15,6:B1:7:B1 WHICH COMMAND DO YOU WANT TO USE ? A  GO TO SLEEP B  WAKE UP C  GO AWAY D HELP E  EAT & DRINK F  BE HAPPY
T 46420,70,5:B1:5:B1,B1,1:B1:3:B1:5:B1,1:B1:7:B1*2,1:B3,1:B1:11:B1,1:B1:3:B1,B1
T 46490,9,3:B1:5 GO TO SLEEP
T 46499,1,B1
T 46500,7,7 WAKE UP
T 46507,1,B1
T 46508,7,7 GO AWAY
T 46515,1,B1
T 46516,1,B1 HELP
T 46517,1,B1
T 46518,11,11 EAT & DRINK
T 46529,1,B1
T 46530,4,3:B1 BE HAPPY
T 46534,1,B1
T 46535,1,B1 Height = 4
T 46536,11,B1:9:B1 short name of Current Character} DOES NOT WANT TO BE COMMANDED BY YOU
T 46547,20,5:B1:2:B1,B1:9,B1
T 46567,1,B1 Height = 3
T 46568,5,B1:3:B1 short name of Current Character} IS ALREADY ASLEEP
T 46573,9,B1:7,B1
T 46582,1,B1 Height = 4
T 46583,5,B1:3:B1 short name of Current Character} IS TOO WAKEFUL TO SLEEP
T 46588,20,12:B2,5,B1
T 46608,1,B1 Height = 3
T 46609,6,B1:4:B1 short name of Current Character} HAS GONE TO SLEEP
T 46615,12,5:B1:5,B1
T 46627,1,B1 Height = 3
T 46628,5,B1:3:B1 short name of Current Character} IS ALREADY AWAKE
T 46633,8,B1:6,B1
T 46641,1,B1 Height = 4
T 46642,3,B3 short name of Current Character} IS TOO TIRED TO WAKE UP
T 46645,8,7,B1
T 46653,1,B1 Height = 3
T 46654,6,B1:4:B1 short name of Current Character} HAS WOKEN UP
T 46660,9,8,B1
T 46669,1,B1 Height = 4
T 46670,3,B3 short name of Current Character} IS TOO TIRED TO GO AWAY
T 46673,8,7,B1
T 46681,1,B1 Height = 3
T 46682,6,B1:4:B1 short name of Current Character} HAS GONE AWAY
T 46688,10,9,B1
T 46698,1,B1 Height = 3
T 46699,9,B1:7:B1 short name of Current Character} CANNOT HELP YOU
T 46708,4,B2:1,B1
T 46712,1,B1 Height = 4
T 46713,3,B3 short name of Current Character} IS TOO TIRED TO HELP YOU   (bug - no end marker)
T 46716,2,B2
T 46718,1,B1 Height = 3
T 46719,6,B1:4:B1 short name of Current Character} HAS NO FOOD LEFT
T 46725,13,12,B1
T 46738,1,B1 Height = 4
T 46739,3,B3 short name of Current Character} IS TOO TIRED TO EAT OR DRINK
T 46742,13,12,B1
T 46755,1,B1 Height = 3
T 46756,6,B1:4:B1 short name of Current Character} HAS TAKEN REFRESHMENT
T 46762,18,17,B1
T 46780,1,B1 Height = 4
T 46781,3,B3 short name of Current Character} IS TOO TIRED TO BE HAPPY
T 46784,5,3:B1,B1
T 46789,1,B1 Height = 3
T 46790,7,B1:5:B1 short name of Current Character} WILL TRY TO BE HAPPY
T 46797,10,4:B1:3:B1,B1
b 46807 Text Relating to "Locate" Command
T 46807,2,B1:1 LOCATE
T 46809,1,B1
T 46810,3,B1:1:B1 LOCATED {short name of Current Character}
T 46813,2,B1
T 46815,4,3:B1 IN THE LIFT
T 46819,3,B2,B1
b 46822 Initial Control Selection Menu Text
T 46822,3,B3 A  KEYBOARD B  KEMPSTON JOYSTICK C  FULLER JOYSTICK D  CURSOR JOYSTICK E  ZX INTERFACE 2 JOYSTICK 1 F  INSTRUCTIONS G  PLAY GAME
T 46825,74,1:B2:5:B1,1:B1:8:B2,1:B1:6:B2*2,1:B1:14:B1:1:B1,1:B2:1:B1,1:B1:5:B1,B1
b 46899 Instructions Text
T 46899,10,B1:8:B1 GIMBAL THE WIZARD HAS BEEN MAKING A MESS OF HIS SPELLS AGAIN ! HE HAS MANAGED TO BIND YOU AND A NUMBER OF OTHER PEOPLE IN A SUMMON SPELL. YOU MUST RETURN EVERYBODY TO THEIR CORRECT TIME/SPACE ZONES BUT FIRST YOU HAVE TO RELEASE GIMBAL WHO HAS GOT HIMSELF TRAPPED IN A WHITE-OUT SPELL.
T 46909,206,7:B1:4:B1:1:B2:1:B1,23:B2,5:B3:6:B1:5:B1,10:B1:7:B1:2:B2,22:B3,8:B1:16:B1,6:B1:5:B1:7:B1,B1:20:B1,11:B1:10:B1:1,B1
T 47115,13,2:B2:8:B1 THE KEYS ARE :- N = LEFT     M = RIGHT A = JUMP/UP  Z = DOWN PRESS SPACE OR FIRE FOR MENU
T 47128,72,2:B1:6:B1:1:B1:5:B1,2:B1:10:B1:4:B1,2:B1:14:B1,2:B1:13,B1
T 47200,12,1:B2:8:B1 THIS GAME FEATURES WINDIMATION STARRING YOU AS MAGIC KNIGHT WITH GIMBAL THE WIZARD THOR FLORIN THE DWARF ORIK THE CLERIC SAMSUN THE STRONG ELRAND HALFELVEN LADY ROSMAR THE BANSHEE
T 47212,73,B1:12:B1,B5:8:B4,B2:7:B2,B2:4:B1,1:B2*7,1:B1,B1
T 47285,2,B1:1 INSTRUCTIONS
T 47287,1,B1
b 47288 Text Relating to "Read" Command
T 47288,6,B4:1:B1 READ WHICH OBJECT ?
T 47294,1,B1
T 47295,2,B2 READ
T 47297,1,B1
T 47298,1,B1 Height = 4
T 47299,5,B2:2:B1 THERE IS NO WRITING FOR ME TO READ
T 47304,18,14:B1,B2,B1
b 47322 List of Read-Texts of Readable Objects
T 47322,1,B1 Height = 11
T 47323,11,B1:9:B1 name of Current Object} YE UNBINDE SPELL HOLD IN THY HAND A MOST MAGIC OBJECT YOU CAST THEE ONCE THY SPELL OF CRY...... THE REST OF THE SCROLL IS UNREADABLE !
T 47334,33,B3:8:B1:6:B1,B1:12,B1
T 47367,1,B1 Height = 9
T 47368,3,B3 name of Current Object} CASTING SPELLS TO CAST THE SPELL OF FUMATICUS PROTECTIUM YOU WILL REQUIRE TWO VERY SMELLY OBJECTS.
T 47371,63,B1,B1:4:B1:1:B1,B1,B2:1:B2:3:B1,B1:4:B1,21:B1,15,B1
T 47434,1,B1 Height = 6
T 47435,3,B3 name of Current Object} THE RUNES CANNOT BE UNDERSTOOD WITHOUT THE BOOK TO EXPLAIN THEM
T 47438,55,B1,B1:15:B1,19:B2,B1:1:B1:12,B1
T 47493,1,B1 Height = 10
T 47494,3,B3 name of Current Object} ALL THE RUNES THAT YOU WILL FIND WERE WRITTEN BY THE ANCIENT GIANTS OF GORFLAND. THEY ARE OF NO USE TO YOU SINCE MOST ARE SIMPLY COOKING RECIPIES [bug]
T 47497,135,B1,4:B1:14:B1,22:B1,3:B1:14:B1,21:B1,3:B1:5:B2:5:B1,23:B1,8,B1
T 47632,1,B1 Height = 5
T 47633,3,B3 name of Current Object} IT IS ENGRAVED. IT SAYS GOOD LUCK ON YOUR QUEST
T 47636,41,B1,3:B1:13:B2,13:B1:6,B1
T 47677,1,B1 Height = 5
T 47678,3,B3 name of Current Object} THE WRITING IS FAR TOO SMALL TO READ
T 47681,28,B1,B1:8:B1:7:B1,6:B2,B1
T 47709,1,B1 Height = 8
T 47710,3,B3 name of Current Object} GAME CONCEPT AND PROGRAM BY DAVID JONES. WHY NOT GO OUT AND BUY MY LAST GAME CALLED FINDERS KEEPERS
T 47713,93,B1,B3:8:B1:7:B1,3:B5:1:B5,15:B1:3:B1,8:B1:6:B1,B4:15:B2,B1
T 47806,1,B1 Height = 6
T 47807,3,B3 name of Current Object} THE LABEL READS "RESTORATIVE FLUID 100% PROOF"
T 47810,45,B1,B1:11:B1,B1:17:B1,10:B1,B1
T 47855,1,B1 Height = 14
T 47856,4,B2:1:B1 name of Current Object} YE UNBINDE SPELL HOLD IN THY HAND A MOST MAGIC OBJECT YOU CAST THEE ONCE THY SPELL OF CRYSTALLIUM SPECTRALIS. THROW EACH OF THE CRYSTALS AT GIMBAL. SOMEBODY MUST HOLD YE CRYSTAL BALL FOR THY SPELL TO SUCCEED.
T 47860,74,14:B2,B1:5:B1:1:B1,18:B1,3:B1:9:B1,4:B1:1:B1:8,B1
T 47934,1,B1 Height = 13
T 47935,3,B3 name of Current Object} LIGHT CANDLE WITH CARE USING AN APPROPRIATE MAGIC SPELL. DISCLAIMER THE MANUFACTURER WILL NOT BE HELD RESPONSIBLE FOR ANY LOSS HOWSOEVER CAUSED RESULTING FROM THE USE OR MISUSE OF THIS CANDLE
T 47938,164,B1,6:B1:10:B1,6:B1:11:B1,B1:1:B1:1:B1,B2:10:B1,B3:17:B1,23:B1,4:B1:14:B1,21:B1,B1:16:B1,B2,B1
T 48102,1,B1 Height = 14
T 48103,3,B3 name of Current Object} TANGY WALDATE TART 300 LEMONS 30 KG CASTOR SUGAR 15 KG SEMOLINA 68 KG SHORTCRUST PASTRY MIX 15 KG WALNUTS 30 KG DATES 30 KG MARGARINE 300 EGGS ICING SUGAR
T 48106,158,B1,18:B1,B2:10:B1,6:B1:8:B1,14:B1,23:B1,6:B1,13:B1,11:B1,15:B1,8:B1,11,B1
T 48264,1,B1 Height = 7
T 48265,3,B3 name of Current Object} THE CRYSTAL BALL IS TOO CLOUDY AND THERE ARE NO IMAGES THAT CAN BE READ AT THIS TIME
T 48268,62,B1,B2:6:B1:3:B1,7:B1:12:B1,19:B2,3:B2,B1
T 48330,1,B1 Height = 6
T 48331,3,B3 name of Current Object} THE MIST CLEARS TO SHOW THOR HELPING YOU IN THE LIFT
T 48334,38,B1,B1:12:B1:4:B1,B1:9:B1:3:B2,B1
T 48372,1,B1 Height = 9
T 48373,3,B3 name of Current Object} IN THE MIDST OF THE MIST YOU CAN SEE A TAROT CARD WHICH MEANS DEATH AND DESTRUCTION OR THE DEMOLISHING OF HOPES AND PRIDE
T 48376,106,B1,3:B1:9:B1:4:B1,B1:8:B1:10:B1,18:B2,15:B2,20:B1,B1:5,B1
T 48482,1,B1 Height = 9
T 48483,3,B3 name of Current Object} YOU CAN SEE A WALL COME CRASHING TO THE GROUND. THERE  IS A NOISE AND AN IMAGE OF AN OLD RELIGIOUS BOOK WRITTEN IN HEBREW
T 48486,97,B1,B1:8:B1:9:B1,9:B2:7:B1,B1:1:B2:6:B2,B1:9:B1:3:B1,10:B1:8:B1,9,B1
T 48583,1,B1 Height = 7
T 48584,3,B3 name of Current Object} A SPIRIT APPEARS AND TELLS YOU THAT SAMSUN WILL BE OF USE IF YOU GIVE HIM THE JAVELIN
T 48587,75,B1,B1:18:B1,6:B1:5:B2,21:B1,9:B1:7,B1
T 48662,1,B1 Height = 7
T 48663,3,B3 name of Current Object} THE LABEL SAYS :- 240 V AC 50 HZ MAXIMUM RATING 1 WATT. USE CORRECT FUSE
T 48666,68,B1,B1:6:B1:3:B1,22:B1,14:B1,16,B1
T 48734,1,B1 Height = 15
T 48735,3,B3 name of Current Object} HERE ARE SOME CLUES TWO OF THE MOST USEFUL OBJECTS WILL START IN THE ROOF GARDEN A CERTAIN BOTTLE WILL BE USEFUL IF GIVEN TO FLORIN AND THEN TAKEN BACK (DUE TO FLORIN'S MAGICAL POWERS) NOW READ THE KEY
T 48738,165,B2:19:B3,B1,7:B1:11:B1,21:B1,B2,B1,B1:8:B1:8:B1,16:B2,B1:1:B1:10:B1,10:B2:2:B1,B1:10:B1,B1,B2:9:B1:3,B1
T 48903,1,B1 Height = 9
T 48904,3,B3 name of Current Object} THERE IS A LABEL FIXED TO THIS SAXAPHONE. IT READS "SID THE FISH WAS HERE". IT CERTAINLY DOESN'T SOUND LIKE A CLUE TO ME (bug)
T 48907,107,B1,6:B2:11:B1,B2:10:B1,9:B1:4:B1:4:B1,8:B1:1:B1,20:B1,11:B1:5:B1:2,B1
T 49014,1,B1 Height = 7
T 49015,3,B3 name of Current Object} THE TELEPORT PAD IS THE PROPERTY OF LAO TSE INC. ESTABLISHED 6000 BC. MADE IN CHINA.
T 49018,79,B1,B1:13:B3,24:B1,20:B1,14,B1
T 49097,1,B1 Height = 8
T 49098,3,B3 name of Current Object} THE LABEL READS "FIZZY POP LEMONADE WITH EXTRA ADDED RADIUM WILL MAKE YOU THE TALK OF ANY PARTY."
T 49101,90,B1,B1:12:B1:5:B1,23:B1,22:B1,B2:11:B1,6:B1,B1
T 49191,1,B1 Height = 5
T 49192,3,B3 name of Current Object} THERE IS A YIN-YANG SYMBOL ON THIS KEY.
T 49195,34,B1,6:B2:8:B1,10:B1:4,B1
T 49229,1,B1 Height = 6
T 49230,3,B3 name of Current Object} THE PLANT SAYS "FEED ME SYMORE !" HOW STRANGE !
T 49233,43,B1,B1:6:B2,B1:16:B2,13,B1
T 49276,1,B1 Height = 9
T 49277,3,B3 name of Current Object} MORE CLUES THE MAGIC TALISMAN CAN BE OF MUCH USE IF YOU CAN MEND IT. (OR GET SOMEBODY ELSE TO MEND IT)
T 49280,97,B2:10:B3,B1,B2:13:B1,18:B2,12:B1,21:B1,B1:8,B1
b 49377 Text Relating to "Cast a Spell" Command
T 49377,5,B2:1:B2 CAST A SPELL
T 49382,1,B1
T 49383,1,B1 Height = 11
T 49384,17,6:B1:4:B1:4:B1 WHICH SPELL DO YOU WANT TO CAST ? A  CRYSTALLIUM SPECTRALIS B CANDELIUM ILLUMINATUS C  ARMOURIS PHOTONICUS D  FUMATICUS PROTECTIUM E  PROJECT PHYSICAL BODY F  RELEASE SPELL G  QUITICUS GAMUS
T 49401,34,B2:2:B1,B1,1:B3*6,1:B2,B1
T 49435,1,B1 Height = 6
T 49436,16,5:B1:8:B2 THAT SPELL CANNOT YET BE CAST. SOMETHING HAS NOT BEEN DONE OR MAYBE THE TIME IS NOT YET SUITABLE
T 49452,53,3:B1:2:B1:3:B1,22:B1,B2:1:B1:4:B2,8,B1
T 49505,1,B1 Height = 6
T 49506,13,12:B1 BOOOOOMMM !! THE CANDLE BLEW UP IN YOUR FACE. SOME PROTECTION WOULD HAVE BEEN USEFUL.
T 49519,62,B2:11:B1,B1:6:B1,21:B1,17,B1
T 49581,1,B1 Height = 3
T 49582,16,B2:13:B1 THE SPELL HAS WORKED ! GIMBAL IS NEARLY FREE
T 49598,15,B1:1:B1:11,B1
T 49613,1,B1 Height = 3
T 49614,10,9:B1 SUCCESS ! GIMBAL IS FREE AT LAST
T 49624,16,B1:1:B1:12,B1
T 49640,1,B1 Height = 5
T 49641,14,11:B3 WELL DONE, THE CANDLE IS NOW GLOWING WITH A COOL YELLOW LIGHT THAT HAS MAGIC POWER
T 49655,54,B1:16:B1,B1:17:B1,9:B1:6,B1
T 49709,1,B1 Height = 10
T 49710,17,B1:14:B2 THE LIQUID TURNED TO A VAPOUR AND FORMED A CLOUD AROUND YOU, THEN IT STARTED TO GLOW. ALL OF A SUDDEN THE CLOUD DISAPPEARED AND YOU FOUND YOUR ARMOUR GLOWING BRILLIANTLY. (COULD BE USEFUL !)
T 49727,153,B1:7:B1:7:B2,22:B1,11:B1:5:B1,7:B1:7:B2,18:B2,B1:6:B1:7:B1,20:B1,19,B1
T 49880,1,B1 Height = 9
T 49881,14,B1:11:B2 THE FUMES FROM THE PLANT & FISH MINGLE UNDER THE INFLUENCE OF THE SPELL TO GIVE YOU A NASTY HEADACHE. IF THE SPELL WORKED YOU SHOULD BE IMMUNE FROM GAS NOW
T 49895,111,19:B1,6:B1:9:B1,3:B2:1:B1:4:B1,B2:15:B1,3:B2:7:B1,B1:9:B1,19,B1
T 50006,1,B1 Height = 6
T 50007,14,B1:12:B1 YOUR SPIRT FLOWS THROUGH THE GATES OF MAGICAL-SPACE-TIME AND THE SPELL CARRIES YOUR BODY ALONG (bug)
T 50021,55,8:B1:8:B1,B1:9:B2,B3:8:B1,B1:11,B1
T 50076,1,B1 Height = 3
T 50077,5,B1:1:B3 GIMBAL IS ALREADY FREE
T 50082,5,4,B1
T 50087,1,B1 Height = 3
T 50088,5,B2:1:B2 THE CANDLE IS ALREADY ALIGHT
T 50093,9,B1:7,B1
T 50102,1,B1 Height = 3
T 50103,11,B1:8:B2 YOUR ARMOUR IS GLOWING ALREADY
T 50114,10,8:B1,B1
T 50124,1,B1 Height = 4
T 50125,12,B1:9:B2 YOU HAVE ALL THE PROTECTION YOU NEED AGAINST GAS ALREADY
T 50137,31,11:B1:4:B1,12:B1,B1
T 50168,1,B1 Height = 7
T 50169,14,B1:5:B1:7 YOU BLEW YOURSELF UP
T 50183,1,B1
b 50184 Miscellaneous Text (4)
T 50184,4,B1:1:B2 CAST CRYSTALLIUM SPECTRALIS
T 50188,4,B1:1:B2 CAST CANDELIUM ILLUMINATUS
T 50192,4,B1:1:B2 CAST ARMOURIS PHOTONICUS
T 50196,4,B1:1:B2 CAST FUMATICUS PROTECTIUM
T 50200,5,B1:1:B3 PROJECT PHYSICAL BODY TO
T 50205,4,B1:1:B2 CAST RELEASE SPELL
B 50209,4,1:T1:2 CAST QUITICUS GAMUS
T 50213,1,B1 Height = 8
T 50214,21,B1:19:B1 GIMBAL WILL NOW SEND EACH CHARACTER BACK TO THEIR HOMES AS YOU SUMMON THEM. THE ORDER IS VERY IMPORTANT BUT GIMBAL THINKS YOU SHOULD HAVE THE PICTURE BY NOW.
T 50235,111,15:B1:5:B1,9:B1:12:B1,B1:6:B1:4:B1,14:B2,7:B1:11:B1,B1:15,B1
b 50346 Text Relating to "Teleport" Command
T 50346,1,B1 TELEPORT
T 50347,1,B1
T 50348,1,B1 Height = 4
T 50349,13,3:B1:8:B1 IT IS NOT SAFE TO TELEPORT TRY AGAIN LATER
T 50362,19,B3,15,B1
b 50381 Text Relating to "Throw" Command
T 50381,6,B4:1:B1 THROW WHICH OBJECT ?
T 50387,1,B1
T 50388,2,B2 THROW
T 50390,1,B1
T 50391,4,3:B1 AT
T 50395,1,B1
T 50396,1,B1 Height = 7
T 50397,19,B1:5:B1:11:B1 YOU HEAR A SHORT RANGE TELEPATHIC WHISPER FROM GIMBAL. "KEEP THE CRYSTAL FOR LATER - IT IS OF NO USE HERE YET"
T 50416,70,18:B1,5:B1:1:B1,B1:5:B2:4:B1,11:B1:5:B1,9:B2,B1
T 50486,1,B1 Height = 9
T 50487,13,B1:5:B1:5:B1 THE BLUE CRYSTAL FLEW AT GIMBAL AND BURST INTO A SPARKLING POWDER ON CONTACT. THE BLUE PORTION OF THE WHITE-OUT AURA SURROUNDING GIMBAL IS DESTROYED
T 50500,105,3:B1:1:B1:5:B1,5:B1:9:B1,18:B1,B1:15:B1,B1:14:B1,12:B2,B1:9,B1
T 50605,1,B1 Height = 11
T 50606,12,B1:4:B1:5:B1 THE RED CRYSTAL FLEW STRAIGHT AT GIMBAL AND TURNED INTO A GAS SURROUNDING HIM. THE STENCH WAS ALMOST UNBEARABLE BUT NOW THE RED ELEMENT OF THE WHITE-OUT SPELL TRAPPING GIMBAL IS REMOVED
T 50618,145,12:B1:4:B1,12:B1:3:B1,16:B1,B1:17:B1,22:B1,15:B2,10:B2,9:B1:3:B1,7,B1
T 50763,1,B1 Height = 8
T 50764,14,B1:6:B1:5:B1 THE GREEN CRYSTAL FLEW AT GIMBAL AND SUCKED UP ALL OF THE GREEN PARTS OF THE WHITE- OUT SPELL BEFORE IT BURNED UP IN A BRIGHT FLARE.
T 50778,91,3:B1:1:B1:6:B1,10:B1:5:B1,9:B1:6:B1,4:B1:10:B1,13:B1:6:B1,6,B1
T 50869,1,B1 Height = 4
T 50870,3,B3 THE {name of Current Object} LANDED ON THE FLOOR BY {short name of Current Character}
T 50873,18,10:B3,3:B1,B1
b 50891 Text Relating to "Blow" Command
T 50891,10,B1:5:B2:1:B1 BLOW WHICH OBJECT ?
T 50901,1,B1
T 50902,6,B1:5 BLOW
T 50908,1,B1
T 50909,1,B1 SUMMON
T 50910,1,B1
T 50911,1,B1 Height = 5
T 50912,14,5:B1:7:B1 WHAT A RACKET! APART FROM THE NOISE, NOTHING HAPPENED
T 50926,39,14:B1*2,8,B1
T 50965,1,B1 Height = 3
T 50966,2,B2 full name of Current Character} IS ASLEEP
T 50968,8,B1:6,B1
T 50976,1,B1 Height = 4
T 50977,2,B2 full name of Current Character} DOES NOT WANT TO BE SUMMONED
T 50979,27,14:B1:2:B1,8,B1
T 51006,1,B1 Height = 4
T 51007,2,B2 full name of Current Character} IS TOO TIRED TO BE SUMMONED
T 51009,24,B1:10:B1:2:B1,8,B1
T 51033,1,B1 Height = 3
T 51034,2,B2 full name of Current Character} IS ALREADY HERE!
T 51036,9,B2:6,B1
T 51045,1,B1 Height = 5
T 51046,2,B2 full name of Current Character} DOES NOT WANT TO COME TO SUCH A CROWDED ROOM!
T 51048,38,14:B1:4:B1,B1:5:B1:7:B1,B1:1,B1
T 51086,1,B1 Height = 5
T 51087,13,5:B1:6:B1 WHAT A LOT OF DUST. DOESN'T ANYBODY CLEAN THIS  PLACE ?
T 51100,38,13:B1*2,B1:8,B1
T 51138,1,B1 Height = 4
T 51139,2,B2 full name of Current Character} APPEARS IN A THICK PUFF OF SMOKE
T 51141,32,11:B1:5:B1,13,B1
T 51173,1,B1 Height = 3
T 51174,2,B2 full name of Current Character} IS NO LONGER AROUND
T 51176,18,B1:16,B1
T 51194,1,B1 Height = 8
T 51195,2,B2 full name of Current Character} APPEARS IN SPIRIT FORM AS GIMBAL UTTERS THE SPELL OF FINAL RETURN. {full name of Current Character} HAS ARRIVED HOME
T 51197,74,17:B1,8:B2,7:B2:3:B1,13:B1,B2,16,B1
b 51271 Text Relating to "Call Lift" Command
T 51271,6,5:B1 CALL LIFT
T 51277,1,B1
T 51278,1,B1 Height = 2
T 51279,10,2:B2:1:B1:4 THE LIFT IS HERE
T 51289,1,B1
b 51290 Text Relating to "Move Lift" Command
T 51290,9,5:B1:1:B2 MOVE LIFT TO THE
T 51299,1,B1
T 51300,9,5:B1:1:B2 TAKE LIFT TO A  ROOF B  4TH FLOOR C  3RD FLOOR D  2ND FLOOR E  1ST FLOOR F  GROUND FLOOR G  BASEMENT
T 51309,29,B1,1:B3*6,1:B2,B1
T 51338,1,B1 Height = 2
T 51339,14,B2:12 THE LIFT HAS ARRIVED
T 51353,1,B1
T 51354,2,B2 ROOF
T 51356,2,B2 4TH FLOOR
T 51358,2,B2 3RD FLOOR
T 51360,2,B2 2ND FLOOR
T 51362,2,B2 1ST FLOOR
T 51364,2,B2 GROUND FLOOR
T 51366,2,B2 BASEMENT
T 51368,1,B1 Height = 7
T 51369,11,B2:1:B1:6:B1 THE LIFT IS BROKEN AND CANNOT BE MOVED TO THAT FLOOR YET. A GOOD BASH IN THE CONTROL BOX WILL PROBABLY FIX IT
T 51380,77,B1:15:B1,B1:5:B1:1:B1:1:B1,B1:13:B2,16:B1,15,B1
b 51457 More "Game Over" Texts
T 51457,22,21:B1 SOMEBODY SWITCHED OUT THE LIGHT. YOU FALL AND INJURE YOURSELF FATALLY ON YOUR ARMOUR WHY NOT CARRY A TORCH OR SOMETHING SIMILAR NEXT TIME ? HARD LUCK MAGIC KNIGHT
T 51479,104,B1:7:B1:4:B1*2,11:B1:7:B1,B1,14:B1:5:B1,3:B1:7:B1,5:B1:2:B1,B1,10:B1,B1
T 51583,22,21:B1 CHOKE... CHOKE....... THIS ROOM IS FULL OF DEADLY KNIGHTSHADE GAS WHICH IS FATAL TO ALL WHO ATTEMPT TO LEARN AND MASTER THE SECRETS OF DEEP MAGIC. (THAT MEANS YOU !)
T 51605,118,B1,B2:1:B1:7:B1,22:B1,6:B1:6:B1:3:B1,12:B1:5:B1,B1:7:B1:7:B1,8:B1:1:B1,B1,12:B1:2,B1
T 51723,1,B1 Height = 10
T 51724,13,B1:10:B2 YOU FELL INTO THE PIT OF DESTRUCTION. MAYBE YOU NEED SOME HELP TO CROSS IT ?
T 51737,50,19:B1,6:B1:9:B1,B2:10,B1
T 51787,1,B1 Height = 14
T 51788,14,B1:12:B1 short name of Current Character} HAS STARVED TO DEATH. IT WAS YOUR JOB TO KEEP EVERYBODY ALIVE AND SEND THEM HOME SAFELY. NOT UP TO YOUR USUAL STANDARD MAGIC KNIGHT.
T 51802,96,B1:6:B1,7:B1:5:B2,20:B1,B1:14:B1,7:B1,7:B2:6:B1,9:B1:1,B1
T 51898,1,B1 Height = 7
T 51899,13,B1:11:B1 YOU RAN OUT OF TIME
T 51912,1,B1
b 51913 Room Layout Data Pointers
W 51913,2,2 (00) - The Lift
W 51915,2,2 (01) - Roof 1 (The Roof Garden)
W 51917,2,2 (02) - Roof 2 (The Roof Garden)
W 51919,2,2 (03) - Roof 3 (The Roof Garden)
W 51921,2,2 (04) - Roof 4 (The Roof Garden)
W 51923,2,2 (05) - Roof 5 (The Roof Garden)
W 51925,2,2 (06) - Roof 6 (The Roof Garden)
W 51927,2,2 (07) - Roof 7 (The Roof Garden)
W 51929,2,2 (08) - Roof 8 (The Roof Garden)
W 51931,2,2 (09) - 4th Floor 1 (The Tower)
W 51933,2,2 (10) - 4th Floor 2 (Beyond the Tower)
W 51935,2,2 (11) - 4th Floor 3 (Further Beyond the Tower)
W 51937,2,2 (12) - 4th Floor 4 (The Ballroom)
W 51939,2,2 (13) - 4th Floor 5 (The Tree of Karn)
W 51941,2,2 (14) - 4th Floor 6 (The Stalagmites)
W 51943,2,2 (15) - 4th Floor 7 (The Big Bottle)
W 51945,2,2 (16) - 4th Floor 8
W 51947,2,2 (17) - 3rd Floor 1 (The Library)
W 51949,2,2 (18) - 3rd Floor 2 (The Little Bottle)
W 51951,2,2 (19) - 3rd Floor 3 (The Odd-Ball)
W 51953,2,2 (20) - 3rd Floor 4 (Florin's room)
W 51955,2,2 (21) - 3rd Floor 5 (The Start Room)
W 51957,2,2 (22) - 3rd Floor 6 (The L-Shaped Room)
W 51959,2,2 (23) - 3rd Floor 7 (The Plant Room [Thor's room])
W 51961,2,2 (24) - 3rd Floor 8 (More Plant Room)
W 51963,2,2 (25) - 2nd Floor 1
W 51965,2,2 (26) - 2nd Floor 2
W 51967,2,2 (27) - 2nd Floor 3
W 51969,2,2 (28) - 2nd Floor 4
W 51971,2,2 (29) - 2nd Floor 5 (The Wall) (Originally #R53289, changed to #R53317 when Elrand blows the Trumpet at the Wall)
W 51973,2,2 (30) - 2nd Floor 6 (The Gallery)
W 51975,2,2 (31) - 2nd Floor 7 (The Gallery)
W 51977,2,2 (32) - 2nd Floor 8 (The Gallery)
W 51979,2,2 (33) - 1st Floor 1 (The Mush Room)
W 51981,2,2 (34) - 1st Floor 2 (The Gas Room)
W 51983,2,2 (35) - 1st Floor 3
W 51985,2,2 (36) - 1st Floor 4
W 51987,2,2 (37) - 1st Floor 5 (The Spare Ballroom)
W 51989,2,2 (38) - 1st Floor 6
W 51991,2,2 (39) - 1st Floor 7 (The Trophy Room)
W 51993,2,2 (40) - 1st Floor 8
W 51995,2,2 (41) - Ground Floor 1
W 51997,2,2 (42) - Ground Floor 2 (Secret Tunnel Entrance)
W 51999,2,2 (43) - Ground Floor 3 (Gimbal's Secret Study)
W 52001,2,2 (44) - Ground Floor 4 (The Secret Tunnel)
W 52003,2,2 (45) - Ground Floor 5 (More Secret Tunnel)
W 52005,2,2 (46) - Ground Floor 6 (The Pit)
W 52007,2,2 (47) - Ground Floor 7
W 52009,2,2 (48) - Ground Floor 8 (The Most Magic Room)
W 52011,2,2 (49) - The Basement
b 52013 Room Layout Data The Lift
B 52013,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52014,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52017,2,2 Draw 128 2-by-2 blocks of nothing
B 52019,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52020,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 52023,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52024,3,3 Point bitmap and terrain interaction pointers to 0, 0 (top-left of screen)
B 52027,3,3 Draw left wall (9 blocks, architecture style 19, attribute 7)
B 52030,3,3 Point bitmap and terrain interaction pointers to 30, 0 (top-right of screen)
B 52033,3,3 Draw right wall (7 blocks, architecture style 19, attribute 7)
B 52036,3,3 Draw right-facing wall-candle at coordinates (2, 5)
B 52039,3,3 Draw left-facing wall-candle at coordinates (29, 5)
B 52042,6,6 Draw Lift Control Panel (77) at (10, 4) with attribute of 69, preserve attribute
B 52048,3,3 Set attributes, including glow, on Lift control panel
B 52051,1,1 End of room data
b 52052 Room Layout Data Roof 1 (The Roof Garden)
B 52052,2,2 Draw 144 2x blocks of nothing
B 52054,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52055,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52058,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52059,3,3 Point bitmap and terrain interaction pointers to 0, 0 (top-left of screen)
B 52062,3,3 Draw left wall (7 blocks, architecture style 19, attribute 7)
B 52065,6,6 Draw Tree Top (2) at (10,  8) with attribute of 68, preserve attribute
B 52071,6,6 Draw Tree Trunk (2) at (10, 13) with attribute of 69, preserve attribute
B 52077,6,6 Draw Plant (5) at ( 6, 15) with attribute of 68, preserve attribute
B 52083,6,6 Draw Plant (5) at (25, 15) with attribute of 68, preserve attribute
B 52089,6,6 Draw Plant (3) at (26, 13) with attribute of 68, preserve attribute
B 52095,6,6 Draw Plant (5) at (27, 15) with attribute of 68, preserve attribute
B 52101,6,6 Draw Mushroom (1) at (10, 16) with attribute of 69, preserve attribute
B 52107,6,6 Draw Mushroom (2) at (16, 16) with attribute of 69, preserve attribute
B 52113,1,1 Begin attribute painting block
B 52114,3,3 Paint attribute 66 at (13,9)
B 52117,3,3 Paint attribute 66 at (10,13)
B 52120,3,3 Paint attribute 66 at (16,12)
B 52123,3,3 Paint attribute 66 at (14,11)
B 52126,3,3 Paint attribute 67 at (26,13)
B 52129,3,3 Paint attribute  2 at (27,13)
B 52132,1,1 End attribute painting block
B 52133,1,1 End of room data
b 52134 Room Layout Data Roof 2 (The Roof Garden)
B 52134,2,2 Draw 144 2-by-2 blocks of nothing
B 52136,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52137,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52140,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52141,6,6 Draw Tree Top (3) at ( 4, 8) with attribute of  4, preserve attribute
B 52147,6,6 Draw Tree Trunk (2) at ( 4,13) with attribute of 69, preserve attribute
B 52153,6,6 Draw Tree Top (3) at (19, 8) with attribute of  4, preserve attribute
B 52159,6,6 Draw Tree Trunk (1) at (21,13) with attribute of 69, preserve attribute
B 52165,1,1 End of room data
b 52166 Room Layout Data Roof 3 (The Roof Garden)
B 52166,2,2 Draw 144 2-by-2 blocks of nothing
B 52168,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52169,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52172,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52173,6,6 Draw Plant (3) at (16,13) with attribute of 68, preserve attribute
B 52179,6,6 Draw Plant (4) at (10,15) with attribute of 68, preserve attribute
B 52185,6,6 Draw Plant (5) at (11,15) with attribute of 68, preserve attribute
B 52191,6,6 Draw Plant (5) at (26,15) with attribute of 68, preserve attribute
B 52197,6,6 Draw Plant (6) at (20,15) with attribute of 68, preserve attribute
B 52203,1,1 Begin attribute painting block
B 52204,3,3 Paint attribute 70 at (16,13)
B 52207,3,3 Paint attribute 70 at (17,13)
B 52210,1,1 End attribute painting block
B 52211,1,1 End of room data
b 52212 Room Layout Data Roof 4 (The Roof Garden)
B 52212,2,2 Draw 144 2-by-2 blocks of nothing
B 52214,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52215,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52218,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52219,6,6 Draw Plant (6) at (10,15) with attribute of 68, preserve attribute
B 52225,6,6 Draw Plant (3) at (18,13) with attribute of 68, preserve attribute
B 52231,6,6 Draw Plant (3) at (20,13) with attribute of 68, preserve attribute
B 52237,6,6 Draw Plant (3) at (22,13) with attribute of 68, preserve attribute
B 52243,6,6 Draw Plant (3) at (23,13) with attribute of 68, preserve attribute
B 52249,1,1 Begin attribute painting block
B 52250,3,3 Paint attribute 66 at (18,13)
B 52253,3,3 Paint attribute 67 at (19,13)
B 52256,3,3 Paint attribute 67 at (20,13)
B 52259,3,3 Paint attribute 66 at (21,13)
B 52262,3,3 Paint attribute 69 at (22,13)
B 52265,3,3 Paint attribute 67 at (23,13)
B 52268,3,3 Paint attribute 66 at (24,13)
B 52271,1,1 End attribute painting block
B 52272,1,1 End of room data
b 52273 Room Layout Data Roof 5 (The Roof Garden)
B 52273,2,2 Draw 144 2-by-2 blocks of nothing
B 52275,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52276,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52279,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52280,6,6 Draw Plant (3) at (10,13) with attribute of 68, preserve attribute
B 52286,6,6 Draw Plant (4) at (15,15) with attribute of 68, preserve attribute
B 52292,6,6 Draw Plant (5) at (20,15) with attribute of 68, preserve attribute
B 52298,1,1 Begin attribute painting block
B 52299,3,3 Paint attribute 71 at (10,13)
B 52302,3,3 Paint attribute 71 at (11,13)
B 52305,1,1 End attribute painting block
B 52306,1,1 End of room data
b 52307 Room Layout Data Roof 6 (The Roof Garden)
B 52307,2,2 Draw 144 2-by-2 blocks of nothing
B 52309,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52310,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52313,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52314,6,6 Draw Plant (5) at (14,15) with attribute of 68, preserve attribute
B 52320,6,6 Draw Plant (5) at (18,15) with attribute of 68, preserve attribute
B 52326,6,6 Draw Mushroom (1) at ( 2,16) with attribute of 70, preserve attribute
B 52332,6,6 Draw Mushroom (2) at ( 5,16) with attribute of 71, preserve attribute
B 52338,1,1 End of room data
b 52339 Room Layout Data Roof 7 (The Roof Garden)
B 52339,2,2 Draw 144 2-by-2 blocks of nothing
B 52341,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52342,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52345,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52346,6,6 Draw Mushroom (3) at ( 8,16) with attribute of 70, preserve attribute
B 52352,6,6 Draw Mushroom (4) at (11,16) with attribute of 71, preserve attribute
B 52358,6,6 Draw Large Mushroom at (14,15) with attribute of 70, preserve attribute
B 52364,1,1 End of room data
b 52365 Room Layout Data Roof 8 (The Roof Garden)
B 52365,2,2 Draw 128 2-by-2 blocks of nothing
B 52367,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52368,3,3 Draw floor (16 blocks, architecture style 3, attribute 68)
B 52371,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52372,3,3 Point bitmap and terrain interaction pointers to 30, 0
B 52375,3,3 Draw right wall (9 blocks, architecture style 19, attribute 7)
B 52378,6,6 Draw Tree Top (2) at (20, 8) with attribute of 68, preserve attribute
B 52384,6,6 Draw Tree Trunk (2) at (20,13) with attribute of 69, preserve attribute
B 52390,6,6 Draw Tree Top (1) at ( 3, 9) with attribute of 69, preserve attribute
B 52396,6,6 Draw Tree Trunk (1) at ( 4,13) with attribute of 69, preserve attribute
B 52402,6,6 Draw Plant (5) at (18,15) with attribute of 68, preserve attribute
B 52408,1,1 Begin attribute painting block
B 52409,3,3 Paint attribute 66 at (23, 9)
B 52412,3,3 Paint attribute 66 at (20,13)
B 52415,3,3 Paint attribute 66 at (26,12)
B 52418,3,3 Paint attribute 66 at (24,11)
B 52421,1,1 End attribute painting block
B 52422,1,1 End of room data
b 52423 Room Layout Data 4th Floor 1 (The Tower)
B 52423,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52424,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52427,2,2 Draw 128 2-by-2 blocks of nothing
B 52429,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52430,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52433,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52434,3,3 Point bitmap and terrain interaction pointers to 14, 8
B 52437,3,3 Draw The Tower (5 blocks, architecture style 19, attribute 7)
B 52440,3,3 Point bitmap and terrain interaction pointers to 18, 12
B 52443,3,3 Draw platform to right of Tower (1 block, architecture style 19, attribute 7)
B 52446,3,3 Point bitmap and terrain interaction pointers to 0, 0 (top-left of screen)
B 52449,3,3 Draw left wall (7 blocks, architecture style 19, attribute 7)
B 52452,3,3 Draw right-facing wall-candle at coordinates (2, 5)
B 52455,1,1 End of room data
b 52456 Room Layout Data 4th Floor 2 (Beyond the Tower)
B 52456,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52457,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52460,2,2 Draw 51 2-by-2 blocks of nothing
B 52462,3,3 Draw plant shelf (10 blocks, architecture style 19, attribute 7)
B 52465,2,2 Draw 67 2-by-2 blocks of nothing
B 52467,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52468,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52471,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 52474,3,3 Draw ceiling candles at coordinates (27, 1)
B 52477,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52478,6,6 Draw Plant (4) at ( 7, 3) with attribute of 68, preserve attribute
B 52484,6,6 Draw Plant (6) at (10, 3) with attribute of 68, preserve attribute
B 52490,6,6 Draw Plant (3) at (19, 1) with attribute of 68, preserve attribute
B 52496,6,6 Draw Plant Pot (3) at ( 7, 6) with attribute of 66, preserve attribute
B 52502,6,6 Draw Plant Pot (3) at (10, 6) with attribute of 66, preserve attribute
B 52508,6,6 Draw Plant Pot (3) at (19, 6) with attribute of 66, preserve attribute
B 52514,6,6 Draw Plant (7) at (15, 3) with attribute of 68, preserve attribute
B 52520,6,6 Draw Plant Pot (3) at (15, 6) with attribute of 69, preserve attribute
B 52526,1,1 Begin attribute painting block
B 52527,3,3 Paint attribute 69 at (19, 1)
B 52530,3,3 Paint attribute 71 at (20, 1)
B 52533,1,1 End attribute painting block
B 52534,1,1 End of room data
b 52535 Room Layout Data 4th Floor 3 (Further Beyond the Tower) and 1st Floor 4
B 52535,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52536,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52539,2,2 Draw 128 2-by-2 blocks of nothing
B 52541,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52542,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52545,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 52548,3,3 Draw ceiling candles at coordinates (27, 1)
B 52551,3,3 Draw picture in frame (59748) at (5, 6)
B 52554,3,3 Draw picture in frame (59748) and replace picture with alternative (60156) at 18, 6
B 52557,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52558,1,1 End of room data
b 52559 Room Layout Data 4th Floor 4 (The Ballroom) and 3rd Floor 3 (The Odd-Ball)
B 52559,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52560,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52563,2,2 Draw 71 2-by-2 blocks of nothing
B 52565,3,3 Draw top row of "pyramid" (2 blocks, architecture style 19, attribute 7)
B 52568,2,2 Draw 13 2-by-2 blocks of nothing
B 52570,3,3 Draw second row of "pyramid" (4 blocks, architecture style 19, attribute 7)
B 52573,2,2 Draw 10 2-by-2 blocks of nothing
B 52575,3,3 Draw third row of "pyramid" (8 blocks, architecture style 19, attribute 7)
B 52578,2,2 Draw  6 2-by-2 blocks of nothing
B 52580,3,3 Draw fourth row of "pyramid" (12 blocks, architecture style 19, attribute 7)
B 52583,2,2 Draw  2 2-by-2 blocks of nothing
B 52585,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52586,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 52589,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52590,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 52593,3,3 Draw ceiling candles at coordinates (27, 1)
B 52596,1,1 End of room data
b 52597 Room Layout Data 4th Floor 5 (The Tree of Karn)
B 52597,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52598,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52601,2,2 Draw 128 2-by-2 blocks of nothing
B 52603,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52604,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52607,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52608,6,6 Draw Tree Top (2) at (12, 8) with attribute of 68, preserve attribute
B 52614,6,6 Draw Tree Trunk (2) at (12,13) with attribute of 69, preserve attribute
B 52620,1,1 Start painting glowing blocks
B 52621,2,2 (15, 9)
B 52623,2,2 (12,13)
B 52625,2,2 (18,12)
B 52627,2,2 (16,11)
B 52629,1,1 Stop painting glowing blocks
B 52630,1,1 End of room data
b 52631 Room Layout Data 4th Floor 6 (The Stalagmites)
B 52631,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52632,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52635,2,2 Draw 128 2-by-2 blocks of nothing
B 52637,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52638,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52641,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52642,3,3 Point bitmap and terrain interaction pointers to 4, 16
B 52645,3,3 Draw left column of left stalagmite (1 block, architecture style 19, attribute 7)
B 52648,3,3 Point bitmap and terrain interaction pointers to 6, 12
B 52651,3,3 Draw second column of left stalagmite (3 blocks, architecture style 19, attribute 7)
B 52654,3,3 Point bitmap and terrain interaction pointers to 8, 10
B 52657,3,3 Draw third column of left stalagmite (4 blocks, architecture style 19, attribute 7)
B 52660,3,3 Point bitmap and terrain interaction pointers to 10, 12
B 52663,3,3 Draw fourth column of left stalagmite (3 blocks, architecture style 19, attribute 7)
B 52666,3,3 Point bitmap and terrain interaction pointers to 12, 16
B 52669,3,3 Draw fifth column of left stalagmite (1 blocks, architecture style 19, attribute 7)
B 52672,3,3 Point bitmap and terrain interaction pointers to 18, 16
B 52675,3,3 Draw left column of right stalagmite (1 block, architecture style 19, attribute 7)
B 52678,3,3 Point bitmap and terrain interaction pointers to 20, 12
B 52681,3,3 Draw second column of right stalagmite (3 blocks, architecture style 19, attribute 7)
B 52684,3,3 Point bitmap and terrain interaction pointers to 22, 10
B 52687,3,3 Draw third column of right stalagmite (4 blocks, architecture style 19, attribute 7)
B 52690,3,3 Point bitmap and terrain interaction pointers to 24, 12
B 52693,3,3 Draw fourth column of right stalagmite (3 blocks, architecture style 19, attribute 7)
B 52696,3,3 Point bitmap and terrain interaction pointers to 26, 16
B 52699,3,3 Draw fifth column of right stalagmite (1 block, architecture style 19, attribute 7)
B 52702,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 52705,3,3 Draw ceiling candles at coordinates (27, 1)
B 52708,1,1 End of room data
b 52709 Room Layout Data 4th Floor 7 (The Big Bottle) and 1st Floor 6
B 52709,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52710,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52713,2,2 Draw 118 2-by-2 blocks of nothing
B 52715,3,3 Draw bottle's plinth (4 blocks, architecture style 19, attribute 7)
B 52718,2,2 Draw 6 2-by-2 blocks of nothing
B 52720,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52721,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52724,6,6 Draw Big Bottle Top at (14, 8) with attribute of 70, preserve attribute
B 52730,6,6 Draw Big Bottle Body at (14,12) with attribute of 70, preserve attribute
B 52736,3,3 Draw ceiling candles at coordinates ( 2, 1) [bug]
B 52739,3,3 Draw ceiling candles at coordinates (27, 1) [bug]
B 52742,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52743,1,1 End of room data
b 52744 Room Layout Data 4th Floor 8 and 1st Floor 8
B 52744,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52745,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52748,2,2 Draw 128 2-by-2 blocks of nothing
B 52750,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52751,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52754,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52755,3,3 Point bitmap and terrain interaction pointers to (30, 0)
B 52758,3,3 Draw right wall (9 blocks, architecture style 19, attribute 7)
B 52761,6,6 Draw Shield at ( 3, 8) with attribute of 70, preserve attribute
B 52767,6,6 Draw Shield at ( 8, 8) with attribute of 69, preserve attribute
B 52773,3,3 Draw wall axes at 12, 4
B 52776,6,6 Draw Shield at (22, 8) with attribute of 70, preserve attribute
B 52782,6,6 Draw Shield at (27, 8) with attribute of 68, preserve attribute
B 52788,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 52791,3,3 Draw ceiling candles at coordinates (27, 1)
B 52794,1,1 End of room data
b 52795 Room Layout Data 3rd Floor 1 (The Library) and Ground Floor 3 (Gimbal's Secret Study)
B 52795,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52796,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52799,2,2 Draw 52 2-by-2 blocks of nothing
B 52801,3,3 Draw book-shelf (10 blocks, architecture style 19, attribute 7)
B 52804,2,2 Draw 66 2-by-2 blocks of nothing
B 52806,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52807,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 52810,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52811,3,3 Point bitmap and terrain interaction pointers to (0, 0) (top-left of screen)
B 52814,3,3 Draw left wall (7 blocks, architecture style 19, attribute 7)
B 52817,3,3 Draw right-facing wall-candle at coordinates (2, 5)
B 52820,6,6 Draw Books (1) at (12, 6) with attribute of 68, preserve attribute
B 52826,6,6 Draw Books (2) at (17, 5) with attribute of 69, preserve attribute
B 52832,6,6 Draw Right Bookend at (22, 6) with attribute of 67, preserve attribute
B 52838,6,6 Draw Left Bookend at ( 9, 6) with attribute of 67, preserve attribute
B 52844,6,6 Draw Books (3) at (16,15) with attribute of 66, preserve attribute
B 52850,6,6 Draw Books (4) at (21,16) with attribute of 69, preserve attribute [bug - 70 is not a valid value]
B 52856,6,6 Draw Right Bookend at (26,16) with attribute of 67, preserve attribute
B 52862,6,6 Draw Left Bookend at (13,16) with attribute of 67, preserve attribute
B 52868,1,1 End of room data
b 52869 Room Layout Data 3rd Floor 2 (The Little Bottle)
B 52869,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52870,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52873,2,2 Draw 118 2-by-2 blocks of nothing
B 52875,3,3 Draw bottle's plinth (4 blocks, architecture style 19, attribute 7)
B 52878,2,2 Draw 6 2-by-2 blocks of nothing
B 52880,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52881,3,3 Draw floor (16 blocks, architecture style 19, attribute 86)
B 52884,6,6 Draw Little Bottle Top at (14,10) with attribute of 70, preserve attribute
B 52890,6,6 Draw Little Bottle Body at (14,12) with attribute of 70, preserve attribute
B 52896,3,3 Draw ceiling candles at coordinates ( 2, 1) [bug]
B 52899,3,3 Draw ceiling candles at coordinates (27, 1) [bug]
B 52902,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52903,1,1 End of room data
b 52904 Room Layout Data 3rd Floor 4 (Florin's room)
B 52904,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52905,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52908,2,2 Draw 128 2-by-2 blocks of nothing
B 52910,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52911,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 52914,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52915,5,5 Draw framed picture at ( 2, 6) with contents of graphic lookup index 43 (Goblet) and attribute 70
B 52920,3,3 Draw ceiling candles at coordinates (14, 1)
B 52923,3,3 Draw picture in frame (59548) and replace picture with alternative (60108) at 25, 6
B 52926,1,1 End of room data
b 52927 Room Layout Data 3rd Floor 5 (The Start Room) and 1st Floor 7 (The Trophy Room)
B 52927,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52928,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52931,2,2 Draw 128 2-by-2 blocks of nothing
B 52933,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52934,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 52937,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52938,6,6 Draw shield at    ( 2, 8) with attribute of 70, preserve attribute, and graphic lookup index  4 (shield)
B 52944,6,6 Draw shield at    ( 6, 8) with attribute of 69, preserve attribute, and graphic lookup index  4 (shield)
B 52950,6,6 Draw shield at    (10, 8) with attribute of 71, preserve attribute, and graphic lookup index  4 (shield)
B 52956,6,6 Draw stag head at (13, 6) with attribute of 69, preserve attribute, and graphic lookup index 92 (stag head)
B 52962,6,6 Draw shield at    (20, 8) with attribute of 69, preserve attribute, and graphic lookup index  4 (shield)
B 52968,6,6 Draw shield at    (24, 8) with attribute of 70, preserve attribute, and graphic lookup index  4 (shield)
B 52974,6,6 Draw shield at    (28, 8) with attribute of 68, preserve attribute, and graphic lookup index  4 (shield)
B 52980,1,1 End of room data
b 52981 Room Layout Data 3rd Floor 6 (The L-Shaped Room)
B 52981,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 52982,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 52985,2,2 Draw 56 2-by-2 blocks of nothing
B 52987,3,3 Draw horizontal platform holding plant (8 blocks, architecture style 19, attribute 7)
B 52990,2,2 Draw 64 2-by-2 blocks of nothing
B 52992,1,1 Set brickwork drawing mode 1 (draw one row only)
B 52993,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 52996,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 52997,3,3 Point bitmap and terrain interaction pointers to (16, 0) (top-left of screen)
B 53000,3,3 Draw wall at end of platform (4 blocks, architecture style 19, attribute 7)
B 53003,3,3 Draw wall axes at 4, 4
B 53006,6,6 Draw Plant (3) at (26, 1) with attribute of 68, preserve attribute
B 53012,6,6 Draw Plant Pot (3) at (26, 6) with attribute of 70, preserve attribute
B 53018,1,1 Begin attribute painting block
B 53019,3,3 Paint attribute 69 at (26,1)
B 53022,3,3 Paint attribute 70 at (27,1)
B 53025,1,1 End attribute painting block
B 53026,1,1 End of room data
b 53027 Room Layout Data 3rd Floor 7 (The Plant Room [Thor's room])
B 53027,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53028,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53031,2,2 Draw 48 2-by-2 blocks of nothing
B 53033,3,3 Draw horizontal platform holding plants (16 blocks, architecture style 19, attribute 7)
B 53036,2,2 Draw 64 2-by-2 blocks of nothing
B 53038,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53039,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53042,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53043,6,6 Draw Plant (4) at ( 5, 3) with attribute of 68, preserve attribute
B 53049,6,6 Draw Plant (6) at (10, 4) with attribute of 68, preserve attribute
B 53055,6,6 Draw Plant (3) at (19, 1) with attribute of 68, preserve attribute
B 53061,6,6 Draw Plant Pot (3) at ( 5, 6) with attribute of 66, preserve attribute
B 53067,6,6 Draw Plant Pot (2) at (10, 7) with attribute of 70, preserve attribute
B 53073,6,6 Draw Plant Pot (1) at (19, 6) with attribute of 66, preserve attribute
B 53079,6,6 Draw Plant (7) at (27, 2) with attribute of 68, preserve attribute
B 53085,6,6 Draw Plant Pot (4) at (27, 5) with attribute of 68, preserve attribute
B 53091,1,1 Begin attribute painting block
B 53092,3,3 Paint attribute 66 at (19, 1)
B 53095,3,3 Paint attribute 66 at (20, 1)
B 53098,1,1 End attribute painting block
B 53099,1,1 End of room data
b 53100 Room Layout Data 3rd Floor 8 (More Plant Room)
B 53100,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53101,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53104,2,2 Draw 48 2-by-2 blocks of nothing
B 53106,3,3 Draw horizontal platform holding plants (12 blocks, architecture style 19, attribute 7)
B 53109,2,2 Draw 68 2-by-2 blocks of nothing
B 53111,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53112,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53115,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53116,3,3 Point bitmap and terrain interaction pointers to (28, 14) (near bottom-right of screen)
B 53119,3,3 Draw wall protrusion / platform (9 blocks, architecture style 19, attribute 7) [bug! Should only be 2 blocks!]
B 53122,3,3 Point bitmap and terrain interaction pointers to (30, 0)
B 53125,3,3 Draw right wall (9 blocks, architecture style 19, attribute 7)
B 53128,3,3 Draw left-facing wall-candle at coordinates (29, 3)
B 53131,6,6 Draw Plant (5) at ( 6, 3) with attribute of 68, preserve attribute
B 53137,6,6 Draw Plant (5) at (10, 4) with attribute of 68, preserve attribute
B 53143,6,6 Draw Plant (3) at (14, 1) with attribute of 68, preserve attribute
B 53149,6,6 Draw Plant Pot (1) at ( 6, 6) with attribute of 70, preserve attribute
B 53155,6,6 Draw Plant Pot (2) at (10, 7) with attribute of 66, preserve attribute
B 53161,6,6 Draw Plant Pot (3) at (14, 6) with attribute of 69, preserve attribute
B 53167,6,6 Draw Plant (5) at (18, 2) with attribute of 68, preserve attribute
B 53173,6,6 Draw Plant Pot (4) at (18, 5) with attribute of 68, preserve attribute
B 53179,1,1 Begin attribute painting block
B 53180,3,3 Paint attribute 67 at (14, 1)
B 53183,3,3 Paint attribute 67 at (15, 1)
B 53186,1,1 End attribute painting block
B 53187,1,1 End of room data
b 53188 Room Layout Data 2nd Floor 1 and Ground Floor 1
B 53188,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53189,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53192,2,2 Draw 128 2-by-2 blocks of nothing
B 53194,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53195,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53198,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53199,3,3 Point bitmap and terrain interaction pointers to 0, 0 (top-left of screen)
B 53202,3,3 Draw left wall (7 blocks, architecture style 19, attribute 7)
B 53205,3,3 Draw right-facing wall-candle at 2, 5
B 53208,3,3 Draw wall axes at  8, 4
B 53211,3,3 Draw wall axes at 18, 4
B 53214,1,1 End of room data
b 53215 Room Layout Data 2nd Floor 2
B 53215,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53216,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53219,2,2 Draw 128 2-by-2 blocks of nothing
B 53221,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53222,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53225,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53226,3,3 Draw wall axes at  8, 4
B 53229,3,3 Draw wall axes at 18, 4
B 53232,1,1 End of room data
b 53233 Room Layout Data 2nd Floor 3
B 53233,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53234,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53237,2,2 Draw 128 2-by-2 blocks of nothing
B 53239,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53240,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53243,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53244,5,5 Draw framed picture at ( 8, 6) with contents of graphic lookup index 69 (Gimbal) and attribute 70
B 53249,5,5 Draw framed picture at (20, 6) with contents of graphic lookup index 72 (Orik) and attribute 71
B 53254,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 53257,3,3 Draw ceiling candles at coordinates (27, 1)
B 53260,1,1 End of room data
b 53261 Room Layout Data 2nd Floor 4
B 53261,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53262,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53265,2,2 Draw 128 2-by-2 blocks of nothing
B 53267,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53268,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53271,5,5 Draw framed picture at ( 8, 6) with contents of graphic lookup index 71 (Florin) and attribute 70
B 53276,5,5 Draw framed picture at (20, 6) with contents of graphic lookup index 76 (Banshee) and attribute 71
B 53281,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 53284,3,3 Draw ceiling candles at coordinates (27, 1)
B 53287,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53288,1,1 End of room data
b 53289 Room Layout Data 2nd Floor 5 (The Wall, original)
B 53289,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53290,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53293,2,2 Draw 128 2-by-2 blocks of nothing
B 53295,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53296,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53299,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53300,3,3 Point bitmap and terrain interaction pointers to 14, 0
B 53303,3,3 Draw The Wall (9 blocks, architecture style 19, attribute 7)
B 53306,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53307,3,3 Draw bottom block of The Wall (1 blocks, architecture style 19, attribute 7) (Unnecessary, as this is already part of the previously drawn floor -  (see trivia))
B 53310,3,3 Draw right-facing wall-candle at coordinates (16, 3)
B 53313,3,3 Draw picture in frame (59748) at (20, 6)
B 53316,1,1 End of room data
b 53317 Room Layout Data 2nd Floor 5 (The Wall, after Elrand has helped)
B 53317,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53318,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53321,2,2 Draw 128 2-by-2 blocks of nothing
B 53323,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53324,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53327,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53328,3,3 Point bitmap and terrain interaction pointers to 14, 0
B 53331,3,3 Draw top section of The Wall (4 blocks, architecture style 19, attribute 7)
B 53334,2,2 Draw 3 2-by-2 blocks of nothing
B 53336,3,3 Draw bottom section of The Wall (2 blocks, architecture style 19, attribute 7)
B 53339,3,3 Draw right-facing wall-candle at coordinates (16, 3)
B 53342,3,3 Draw picture in frame (59748) at (20, 6)
B 53345,5,5 Draw framed picture at ( 2, 6) with contents of graphic lookup index 71 (Florin) and attribute 70 [bug]
B 53350,5,5 Draw framed picture at ( 8, 6) with contents of graphic lookup index 76 (Banshee) and attribute 71 [bug]
B 53355,1,1 End of room data
b 53356 Room Layout Data 2nd Floor 6 (The Gallery)
B 53356,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53357,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53360,2,2 Draw 128 2-by-2 blocks of nothing
B 53362,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53363,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53366,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53367,3,3 Draw picture in frame (59748) at (2, 6)
B 53370,3,3 Draw picture in frame (59748) and replace picture with alternative (60156) at 12, 6
B 53373,3,3 Draw picture in frame (59548) at 24, 6
B 53376,1,1 End of room data
b 53377 Room Layout Data 2nd Floor 7 (The Gallery)
B 53377,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53378,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53381,2,2 Draw 128 2-by-2 blocks of nothing
B 53383,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53384,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53387,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53388,3,3 Draw picture in frame (59548) and replace picture with alternative (60108) at 4, 6
B 53391,3,3 Draw picture in frame (59548) at 14, 6
B 53394,3,3 Draw picture in frame (59748) and replace picture with alternative (60156) at 20, 6
B 53397,1,1 End of room data
b 53398 Room Layout Data 2nd Floor 8 (The Gallery)
B 53398,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53399,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53402,2,2 Draw 128 2-by-2 blocks of nothing
B 53404,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53405,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53408,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53409,3,3 Point bitmap and terrain interaction pointers to 30, 0
B 53412,3,3 Draw right wall (9 blocks, architecture style 19, attribute 7)
B 53415,3,3 Draw left-facing wall-candle at coordinates (29, 5)
B 53418,5,5 Draw framed picture at ( 2, 6) with contents of graphic lookup index 75 (Rosmar) and attribute 70
B 53423,5,5 Draw framed picture at ( 8, 6) with contents of graphic lookup index 70 (Thor) and attribute 71
B 53428,5,5 Draw framed picture at (14, 6) with contents of graphic lookup index 73 (Samsun) and attribute 69
B 53433,5,5 Draw framed picture at (20, 6) with contents of graphic lookup index 74 (Elrand) and attribute 68
B 53438,1,1 End of room data
b 53439 Room Layout Data 1st Floor 1 (The Mush Room)
B 53439,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53440,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53443,2,2 Draw 52 2-by-2 blocks of nothing
B 53445,3,3 Draw mushroom shelf (10 blocks, architecture style 19, attribute 7)
B 53448,2,2 Draw 66 2-by-2 blocks of nothing
B 53450,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53451,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53454,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53455,3,3 Point bitmap and terrain interaction pointers to 0, 0 (top-left of screen)
B 53458,3,3 Draw left wall (7 blocks, architecture style 19, attribute 7)
B 53461,3,3 Draw right-facing wall-candle at coordinates (2, 5)
B 53464,6,6 Draw Mushroom (1) at ( 8, 6) with attribute of 70, preserve attribute
B 53470,6,6 Draw Mushroom (2) at (11, 6) with attribute of 71, preserve attribute
B 53476,6,6 Draw Large Mushroom at (14, 5) with attribute of 70, preserve attribute
B 53482,6,6 Draw Mushroom (3) at (17, 6) with attribute of 70, preserve attribute
B 53488,6,6 Draw Mushroom (4) at (20, 6) with attribute of 71, preserve attribute
B 53494,6,6 Draw Large Mushroom at (24, 5) with attribute of 70, preserve attribute
B 53500,6,6 Draw Mushroom (3) at ( 5,16) with attribute of 70, preserve attribute
B 53506,6,6 Draw Mushroom (4) at (10,16) with attribute of 71, preserve attribute
B 53512,6,6 Draw Large Mushroom at (14,15) with attribute of 70, preserve attribute
B 53518,6,6 Draw Mushroom (3) at (19,16) with attribute of 70, preserve attribute
B 53524,6,6 Draw Mushroom (4) at (22,16) with attribute of 71, preserve attribute
B 53530,6,6 Draw Large Mushroom at (25,15) with attribute of 70, preserve attribute
B 53536,1,1 End of room data
b 53537 Room Layout Data 1st Floor 2 (The Gas Room)
B 53537,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53538,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53541,2,2 Draw 128 2-by-2 blocks of nothing
B 53543,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53544,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53547,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 53550,3,3 Draw ceiling candles at coordinates (27, 1)
B 53553,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53554,1,1 End of room data
b 53555 Room Layout Data 1st Floor 3
B 53555,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53556,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53559,2,2 Draw 128 2-by-2 blocks of nothing
B 53561,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53562,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53565,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53566,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 53569,3,3 Draw ceiling candles at coordinates (27, 1)
B 53572,6,6 Draw Wall Clock at (15, 5) with attribute of 69, preserve attribute
B 53578,1,1 End of room data
b 53579 Room Layout Data Ground Floor 2 (Secret Tunnel Entrance)
B 53579,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53580,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53583,2,2 Draw 51 2-by-2 blocks of nothing
B 53585,3,3 Draw plant shelf (10 blocks, architecture style 19, attribute 7)
B 53588,2,2 Draw 67 2-by-2 blocks of nothing
B 53590,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53591,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53594,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53595,3,3 Point bitmap and terrain interaction pointers to 30, 0
B 53598,3,3 Draw right wall (9 blocks, architecture style 19, attribute 7) [9 originally, becomes 7 after Rosmar helps]
B 53601,3,3 Draw left-facing wall-candle at coordinates (29, 5)
B 53604,6,6 Draw Plant (6) at (10, 4) with attribute of 68, preserve attribute
B 53610,6,6 Draw Plant (3) at (19, 1) with attribute of 68, preserve attribute
B 53616,6,6 Draw Plant Pot (2) at (10, 7) with attribute of 70, preserve attribute
B 53622,6,6 Draw Plant Pot (1) at (19, 6) with attribute of 66, preserve attribute
B 53628,6,6 Draw Plant (7) at (22, 2) with attribute of 68, preserve attribute
B 53634,6,6 Draw Plant Pot (4) at (22, 5) with attribute of 69, preserve attribute
B 53640,1,1 Begin attribute painting block
B 53641,3,3 Paint attribute 69 at (19, 1)
B 53644,3,3 Paint attribute 71 at (20, 1)
B 53647,1,1 End attribute painting block
B 53648,1,1 End of room data
b 53649 Room Layout Data Ground Floor 4 (The Secret Tunnel)
B 53649,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53650,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53653,2,2 Draw 128 2-by-2 blocks of nothing
B 53655,3,3 Point bitmap and terrain interaction pointers to 18, 10
B 53658,3,3 Draw top row of "floor" (7 blocks, architecture style 19, attribute 87)
B 53661,3,3 Point bitmap and terrain interaction pointers to (14,12)
B 53664,3,3 Draw second row of "floor" (9 blocks, architecture style 19, attribute 87)
B 53667,3,3 Point bitmap and terrain interaction pointers to (10,14)
B 53670,3,3 Draw third row of "floor" (11 blocks, architecture style 19, attribute 87)
B 53673,3,3 Point bitmap and terrain interaction pointers to ( 6,16)
B 53676,3,3 Draw fourth row of "floor" (13 blocks, architecture style 19, attribute 87)
B 53679,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53680,3,3 Draw floor (16 blocks, architecture style 19, attribute 87)
B 53683,3,3 Draw ceiling candles at coordinates (2, 1)
B 53686,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53687,1,1 End of room data
b 53688 Room Layout Data Ground Floor 5 (More Secret Tunnel)
B 53688,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53689,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53692,2,2 Draw 64 2-by-2 blocks of nothing
B 53694,3,3 Draw four rows of "floor" (64 blocks, architecture style 19, attribute 87)
B 53697,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53698,3,3 Draw floor (16 blocks, architecture style 19, attribute 87)
B 53701,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53702,1,1 End of room data
b 53703 Room Layout Data Ground Floor 6 (The Pit)
B 53703,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53704,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53707,2,2 Draw 128 2-by-2 blocks of nothing
B 53709,3,3 Point bitmap and terrain interaction pointers to 0, 10
B 53712,3,3 Draw top row of left "floor" (6 blocks, architecture style 19, attribute 87)
B 53715,3,3 Point bitmap and terrain interaction pointers to (20,10)
B 53718,3,3 Draw top row of right, and second row of left "floor" (12 blocks, architecture style 19, attribute 87)
B 53721,3,3 Point bitmap and terrain interaction pointers to (20,12)
B 53724,3,3 Draw second row of right, and third row of left "floor" (12 blocks, architecture style 19, attribute 87)
B 53727,3,3 Point bitmap and terrain interaction pointers to (20,14)
B 53730,3,3 Draw third row of right, and fourth row of left "floor" (12 blocks, architecture style 19, attribute 87)
B 53733,3,3 Point bitmap and terrain interaction pointers to (20,16)
B 53736,3,3 Draw fourth row of right "floor" (6 blocks, architecture style 19, attribute 87)
B 53739,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53740,3,3 Draw left section of floor (6 blocks, architecture style 19, attribute 87)
B 53743,3,3 Draw pit flames (4 blocks, architecture style 15, attribute 70) [bug]
B 53746,3,3 Draw right section of floor (6 blocks, architecture style 19, attribute 87) [bug]
B 53749,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53750,1,1 Start painting glowing blocks
B 53751,2,2 (12,18)
B 53753,2,2 (13,18)
B 53755,2,2 (14,18)
B 53757,2,2 (15,18)
B 53759,2,2 (16,18)
B 53761,2,2 (17,18)
B 53763,2,2 (18,18)
B 53765,2,2 (19,18)
B 53767,1,1 Stop painting glowing blocks
B 53768,1,1 End of room data
b 53769 Room Layout Data Ground Floor 7
B 53769,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53770,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53773,2,2 Draw 128 2-by-2 blocks of nothing
B 53775,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53776,3,3 Draw floor (16 blocks, architecture style 19, attribute 87)
B 53779,3,3 Point bitmap and terrain interaction pointers to 0, 10
B 53782,3,3 Draw top row of "floor" (2 blocks, architecture style 19, attribute 87)
B 53785,3,3 Point bitmap and terrain interaction pointers to ( 0,12)
B 53788,3,3 Draw second row of "floor" (4 blocks, architecture style 19, attribute 87)
B 53791,3,3 Point bitmap and terrain interaction pointers to ( 0,14)
B 53794,3,3 Draw third row of "floor" (6 blocks, architecture style 19, attribute 87)
B 53797,3,3 Point bitmap and terrain interaction pointers to ( 0,16)
B 53800,3,3 Draw fourth row of "floor" (8 blocks, architecture style 19, attribute 87)
B 53803,3,3 Draw ceiling candles at coordinates ( 2, 1)
B 53806,3,3 Draw ceiling candles at coordinates (27, 1)
B 53809,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53810,1,1 End of room data
b 53811 Room Layout Data Ground Floor 8 (The Most Magic Room)
B 53811,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53812,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53815,2,2 Draw 35 2-by-2 blocks of nothing
B 53817,3,3 Draw left platform (2 blocks, architecture style 19, attribute 7)
B 53820,2,2 Draw 16 2-by-2 blocks of nothing
B 53822,3,3 Draw right platform (3 blocks, architecture style 19, attribute 7)
B 53825,2,2 Draw 72 2-by-2 blocks of nothing
B 53827,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53828,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53831,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53832,3,3 Point bitmap and terrain interaction pointers to (10, 0)
B 53835,1,1 Start drawing 2-by-2 blocks of brickwork
B 53836,1,1 Set attribute to 68 (green INK, black PAPER, BRIGHT)
B 53837,1,1 Arch. style  2 (top green block)
B 53838,1,1 Arch. style  3 (2nd green block)
B 53839,1,1 Arch. style  4 (3rd green block)
B 53840,1,1 Arch. style  5 (4th green block)
B 53841,1,1 Stop drawing 2-by-2 blocks of brickwork
B 53842,1,1 Set Terrain Interaction Parameter to "preserve attribute"
B 53843,3,3 Point bitmap and terrain interaction pointers to ( 6, 2)
B 53846,1,1 Start drawing 2-by-2 blocks of brickwork
B 53847,1,1 Set attribute to 127 (white INK, white PAPER, BRIGHT)
B 53848,1,1 Arch. style  16 (top of white-out zone)
B 53849,1,1 Arch. style  16 (bottom of white-out zone)
B 53850,1,1 Stop drawing 2-by-2 blocks of brickwork
B 53851,3,3 Point bitmap and terrain interaction pointers to ( 6, 8)
B 53854,1,1 Start drawing 2-by-2 blocks of brickwork (left-hand column)
B 53855,1,1 Set attribute to 71 (white INK, black PAPER, BRIGHT)
B 53856,1,1 Arch. style 11 (top of column)
B 53857,1,1 Arch. style 13 (body of column, 2nd block)
B 53858,1,1 Arch. style 13 (body of column, 3rd block)
B 53859,1,1 Arch. style 13 (body of column, 4th block)
B 53860,1,1 Arch. style 12 (base of column)
B 53861,1,1 Stop drawing 2-by-2 blocks of brickwork
B 53862,3,3 Point bitmap and terrain interaction pointers to (14,10)
B 53865,1,1 Start drawing 2-by-2 blocks of brickwork (right-hand column)
B 53866,1,1 Set attribute to 71 (white INK, black PAPER, BRIGHT)
B 53867,1,1 Arch. style 11 (top of column)
B 53868,1,1 Arch. style 13 (body of column, 2nd block)
B 53869,1,1 Arch. style 13 (body of column, 3rd block)
B 53870,1,1 Arch. style 12 (base of column)
B 53871,1,1 Stop drawing 2-by-2 blocks of brickwork
B 53872,1,1 Set Terrain Interaction Parameter to "impassable horizontally", "impassable vertically" and "preserve attribute"
B 53873,3,3 Point bitmap and terrain interaction pointers to (30, 0)
B 53876,3,3 Draw right wall (9 blocks, architecture style 19, attribute 7)
B 53879,3,3 Draw left-facing wall-candle at coordinates (29, 5)
B 53882,1,1 End of room data
b 53883 Room Layout Data The Basement
B 53883,1,1 Set brickwork drawing mode 2 (draw one row and blank row beneath)
B 53884,3,3 Draw ceiling (16 blocks, architecture style 19, attribute 7)
B 53887,2,2 Draw 61 2-by-2 blocks of nothing
B 53889,3,3 Draw upper floor (3 blocks, architecture style 19, attribute 7)
B 53892,2,2 Draw 12 2-by-2 blocks of nothing
B 53894,3,3 Draw 4th step's row (2 blocks, architecture style 19, attribute 7)
B 53897,2,2 Draw 13 2-by-2 blocks of nothing
B 53899,3,3 Draw 3rd step's row (3 blocks, architecture style 19, attribute 7)
B 53902,2,2 Draw 12 2-by-2 blocks of nothing
B 53904,3,3 Draw 2nd step's row (4 blocks, architecture style 19, attribute 7)
B 53907,2,2 Draw 11 2-by-2 blocks of nothing
B 53909,3,3 Draw 1st step's row (5 blocks, architecture style 19, attribute 7)
B 53912,2,2 Draw 2 2-by-2 blocks of nothing
B 53914,1,1 Set brickwork drawing mode 1 (draw one row only)
B 53915,3,3 Draw floor (16 blocks, architecture style 19, attribute 7)
B 53918,1,1 Set Brickwork Direction Mode to vertical and reset pointers to beginning of display
B 53919,3,3 Point bitmap and terrain interaction pointers to ( 0, 0)
B 53922,3,3 Draw left wall (7 blocks, architecture style 19, attribute 7)
B 53925,3,3 Point bitmap and terrain interaction pointers to (30, 0)
B 53928,3,3 Draw cyan basement wall (4 blocks, architecture style 1, attribute 5)
B 53931,3,3 Draw right-facing wall-candle at coordinates ( 2,  5)
B 53934,3,3 Draw right-facing wall-candle at coordinates (28, 11)
B 53937,1,1 End of room data
b 53938 x- and y-Coordinates of Three Positions in Room that Characters Can Occupy
B 53938,6,6 The Lift
B 53944,6,6 Roof 1 (The Roof Garden)
B 53950,6,6 Roof 2 (The Roof Garden)
B 53956,6,6 Roof 3 (The Roof Garden)
B 53962,6,6 Roof 4 (The Roof Garden)
B 53968,6,6 Roof 5 (The Roof Garden)
B 53974,6,6 Roof 6 (The Roof Garden)
B 53980,6,6 Roof 7 (The Roof Garden)
B 53986,6,6 Roof 8 (The Roof Garden)
B 53992,6,6 4th Floor 1 (The Tower)
B 53998,6,6 4th Floor 2 (Beyond the Tower)
B 54004,6,6 4th Floor 3 (Further Beyond the Tower)
B 54010,6,6 4th Floor 4 (The Ballroom)
B 54016,6,6 4th Floor 5 (The Tree of Karn)
B 54022,6,6 4th Floor 6 (The Stalagmites)
B 54028,6,6 4th Floor 7 (The Big Bottle)
B 54034,6,6 4th Floor 8
B 54040,6,6 3rd Floor 1 (The Library)
B 54046,6,6 3rd Floor 2 (The Little Bottle)
B 54052,6,6 3rd Floor 3 (The Odd-Ball)
B 54058,6,6 3rd Floor 4 (Florin's room)
B 54064,6,6 3rd Floor 5 (The Start Room)
B 54070,6,6 3rd Floor 6 (The L-Shaped Room)
B 54076,6,6 3rd Floor 7 (The Plant Room [Thor's room])
B 54082,6,6 3rd Floor 8 (More Plant Room)
B 54088,6,6 2nd Floor 1
B 54094,6,6 2nd Floor 2
B 54100,6,6 2nd Floor 3
B 54106,6,6 2nd Floor 4
B 54112,6,6 2nd Floor 5 (The Wall) [bug]
B 54118,6,6 2nd Floor 6 (The Gallery)
B 54124,6,6 2nd Floor 7 (The Gallery)
B 54130,6,6 2nd Floor 8 (The Gallery)
B 54136,6,6 1st Floor 1 (The Mush Room)
B 54142,6,6 1st Floor 2 (The Gas Room)
B 54148,6,6 1st Floor 3
B 54154,6,6 1st Floor 4
B 54160,6,6 1st Floor 5 (The Spare Ballroom)
B 54166,6,6 1st Floor 6
B 54172,6,6 1st Floor 7 (The Trophy Room)
B 54178,6,6 1st Floor 8
B 54184,6,6 Ground Floor 1
B 54190,6,6 Ground Floor 2 (Secret Tunnel Entrance)
B 54196,6,6 Ground Floor 3 (Gimbal's Secret Study)
B 54202,6,6 Ground Floor 4 (The Secret Tunnel)
B 54208,6,6 Ground Floor 5 (More Secret Tunnel)
B 54214,6,6 Ground Floor 6 (The Pit)
B 54220,6,6 Ground Floor 7
B 54226,6,6 Ground Floor 8 (The Most Magic Room)
B 54232,6,6 The Basement
b 54238 Room names
D 54238 Strings are zero-terminated. For rooms without a name, the entry is a single zero byte. For rooms with names, the first byte of the entry is data, and the text string itself starts at the second byte. The data structure is:
T 54238,7,B2:4:B1 THE LIFT
T 54245,3,B3 THE ROOF GARDEN
T 54248,3,B3 THE ROOF GARDEN
T 54251,3,B3 THE ROOF GARDEN
T 54254,3,B3 THE ROOF GARDEN
T 54257,3,B3 THE ROOF GARDEN
T 54260,3,B3 THE ROOF GARDEN
T 54263,3,B3 THE ROOF GARDEN
T 54266,3,B3 THE ROOF GARDEN
T 54269,8,B2:5:B1 THE TOWER
T 54277,15,B1:7:B1:5:B1 BEYOND THE TOWER
T 54292,23,B1:15:B1:5:B1 FURTHUR BEYOND THE TOWER [bug]
T 54315,8,B2:4:B2 THE BALLROOM
T 54323,15,B2:12:B1 THE TREE OF KARN
T 54338,17,B1:15:B1 THE STALAGMITES
T 54355,13,B2:10:B1 THE BIG BOTTLE
T 54368,1,B1
T 54369,10,B2:7:B1 THE LIBRARY
T 54379,16,B2:13:B1 THE LITTLE BOTTLE
T 54395,11,B2:8:B1 THE ODD-BALL
T 54406,1,B1
T 54407,10,B2:6:B2 THE START ROOM
T 54417,13,B2:9:B2 THE L-SHAPED ROOM
T 54430,10,B2:6:B2 THE PLANT ROOM
T 54440,14,B1:11:B2 MORE PLANT ROOM
T 54454,4,B1
T 54458,7,B2:4:B1 THE WALL
T 54465,10,B2:7:B1 THE GALLERY
T 54475,10,B2:7:B1 THE GALLERY
T 54485,10,B2:7:B1 THE GALLERY
T 54495,9,B2:5:B2 THE MUSH ROOM
T 54504,8,B2:4:B2 THE GAS ROOM
T 54512,2,B1
T 54514,14,B2:10:B2 THE SPARE BALLROOM
T 54528,1,B1
T 54529,11,B2:7:B2 THE TROPHY ROOM
T 54540,2,B1
T 54542,12,B2:9:B1 SECRET TUNNEL ENTRANCE
T 54554,18,B2:15:B1 GIMBAL'S SECRET STUDY
T 54572,4,B4 THE SECRET TUNNEL
T 54576,8,B1:5:B2 MORE SECRET TUNNEL
T 54584,6,B2:3:B1 THE PIT
T 54590,1,B1
T 54591,15,B2:11:B2 THE MOST MAGIC ROOM
T 54606,11,B2:8:B1 THE BASEMENT
b 54617 Architecture Styles Lookup Table
D 54617 #TABLE(default,centre,:w) { =h Offset | =h Meaning } { 0 | Index of top-left UDG } { 1 | Index of top-right UDG } { 2 | Index of bottom-left UDG } { 3 | Index of bottom-right UDG } TABLE#
B 54617,24,4
B 54641,4,4 (unused)
B 54645,4,4 (unused)
B 54649,4,4 (unused)
B 54653,4,4 (unused)
B 54657,4,4 (unused)
B 54661,12,4
B 54673,4,4 (unused)
B 54677,8,4
B 54685,4,4 (unused)
B 54689,4,4 (unused)
B 54693,4,4
B 54697,4,4 (unused)
b 54701 Graphics (Hand Menu Cursor)
B 54701,32,8
b 54733 Table of Start Addresses of Input Device Reading Routines
W 54733,2,2 Address of keyboard reading routine
W 54735,2,2 Address of Kempston Joystick reading routine
W 54737,2,2 Address of Fuller Joystick reading routine
W 54739,2,2 Address of Cursor Joystick reading routine
W 54741,2,2 Address of ZX Interface 2 Joystick 1 reading routine
b 54743 Powers of Ten
D 54743 Used by the routine at #R37746 for Converting Numbers to ASCII Strings
W 54743,10,2
b 54753 Addresses of Room-Specific Routines
W 54753,2,2 The Lift
W 54755,2,2 Roof 1 (The Roof Garden)
W 54757,2,2 Roof 2 (The Roof Garden)
W 54759,2,2 Roof 3 (The Roof Garden)
W 54761,2,2 Roof 4 (The Roof Garden)
W 54763,2,2 Roof 5 (The Roof Garden)
W 54765,2,2 Roof 6 (The Roof Garden)
W 54767,2,2 Roof 7 (The Roof Garden)
W 54769,2,2 Roof 8 (The Roof Garden)
W 54771,2,2 4th Floor 1 (The Tower)
W 54773,2,2 4th Floor 2 (Beyond the Tower)
W 54775,2,2 4th Floor 3 (Further Beyond the Tower)
W 54777,2,2 Update positions of 4 Odd-Balls and display [4th Floor 4 (The Ballroom)]
W 54779,2,2 4th Floor 5 (The Tree of Karn)
W 54781,2,2 4th Floor 6 (The Stalagmites)
W 54783,2,2 4th Floor 7 (The Big Bottle)
W 54785,2,2 4th Floor 8
W 54787,2,2 3rd Floor 1 (The Library)
W 54789,2,2 3rd Floor 2 (The Little Bottle)
W 54791,2,2 Update position of 1 Odd-Ball and display [3rd Floor 3 (The Odd-Ball)]
W 54793,2,2 3rd Floor 4 (Florin's room)
W 54795,2,2 3rd Floor 5 (The Start Room)
W 54797,2,2 3rd Floor 6 (The L-Shaped Room)
W 54799,2,2 3rd Floor 7 (The Plant Room [Thor's room])
W 54801,2,2 3rd Floor 8 (More Plant Room)
W 54803,2,2 2nd Floor 1
W 54805,2,2 2nd Floor 2
W 54807,2,2 2nd Floor 3
W 54809,2,2 2nd Floor 4
W 54811,2,2 2nd Floor 5 (The Wall)
W 54813,2,2 2nd Floor 6 (The Gallery)
W 54815,2,2 2nd Floor 7 (The Gallery)
W 54817,2,2 2nd Floor 8 (The Gallery)
W 54819,2,2 1st Floor 1 (The Mush Room)
W 54821,2,2 1st Floor 2 (The Gas Room)
W 54823,2,2 1st Floor 3
W 54825,2,2 1st Floor 4
W 54827,2,2 Update positions of 4 Odd-Balls and display [1st Floor 5 (The Spare Ballroom)]
W 54829,2,2 1st Floor 6
W 54831,2,2 1st Floor 7 (The Trophy Room)
W 54833,2,2 1st Floor 8
W 54835,2,2 Ground Floor 1
W 54837,2,2 Ground Floor 2 (Secret Tunnel Entrance)
W 54839,2,2 Ground Floor 3 (Gimbal's Secret Study)
W 54841,2,2 Ground Floor 4 (The Secret Tunnel)
W 54843,2,2 Ground Floor 5 (More Secret Tunnel)
W 54845,2,2 Ground Floor 6 (The Pit)
W 54847,2,2 Ground Floor 7
W 54849,2,2 Ground Floor 8 (The Most Magic Room)
W 54851,2,2 The Basement
c 54853 Call Time-Dependent Routines [Main Interrupt Routine]
D 54853 Used by the routine at #R65524.
C 54853,3 Store all registers on the stack
C 54856,3 Load A with index of Current Window...
C 54859,2 ...and if this is 6 (Control Selection Window)...
C 54861,3 ...then skip ahead to #R54955
C 54864,4 If "Update Game Time and Locate Arrow Glow" flag is reset...
C 54868,3 ...then skip to end of interrupt routine
C 54871,3 Update game time, time left and (every minute) read-text of Crystal Ball
C 54874,4 Load x- & y- coordinate of top-left character of currently glowing "Locate Compass" component into BC
C 54878,1 If this is zero (i.e. compass not glowing because Magic Knight isn't "locating")...
C 54879,1 ...
C 54880,3 ...jump to #R54916...
C 54883,3 Else, load "Compass Glow Update Flag" into A
C 54886,1 Invert Compass Glow Update Flag
C 54887,2 Store back at 23408 and if Compass Glow Update Flag is set...
C 54889,3 ...
C 54892,2 ...then skip over glow attribute update section to #R54916 (don't update glowing attributes this time)
C 54894,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 54897,3 Update glowing blocks' attribute to next colour in sequence and load into E
C 54900,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 54903,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 54906,3 Advance Attribute File address (HL) down to next row, to the block immediately below the first one updated at instruction #R54900...
C 54909,1 ...
C 54910,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 54913,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 54916,4 If "Disable In-Game Glow" flag is set...
C 54920,3 ...then skip to end of interrupt routine
C 54923,4 Point IX at table of Attribute File addresses that are glowing
C 54927,3 Update glowing blocks' attribute to next colour in sequence and load into E
C 54930,3 Load a glowing Attribute File address into HL...
C 54933,3 ...
C 54936,1 If HL is zero...
C 54937,1 ...
C 54938,2 ...then jump to #R54949 (to exit loop)
C 54940,3 Write current attribute for a glowing block to Attribute File (HL) and advance HL
C 54943,2 Advance to next Attribute File address in list of glowing blocks...
C 54945,2 ...
C 54947,2 Jump back to #R54930 to update next block
N 54949 This entry point is used by the routine at #R54955.
C 54949,3 Restore all registers from the stack
C 54952,3 Jump to ROM maskable interrupt routine (update frame counter, read keyboard and then return to main game code where the interrupt was triggered)
c 54955 Interrupt Routine Update Glowing Character on Input Selection Menu
D 54955 Used by the routine at #R54853.
C 54955,3 Load input device selection into A
C 54958,2 Subtract 65 (minimum value it can be)
C 54960,2 Add 12
C 54962,1 Load coordinates of glowing square (control selection menu) into BC...
C 54963,2 ...
C 54965,3 Update Virtual Attribute Cursor storage location to coordinates x=C y=B and point HL to corresponding Attribute File address
C 54968,3 Update glowing blocks' attribute to next colour in sequence and load into E
C 54971,3 Write current attribute for a glowing block to Attribute File
C 54974,2 Exit interrupt routine
c 54976 Interrupt Routine Write Current Attribute for a Glowing Block to Attribute File
D 54976 Used by the routines at #R54853 and #R54955. Input:  HL  Attribute File address that is glowing E  Current attribute of glowing blocks Output: HL  Next Attribute File address on from that in HL on input
C 54976,1 Load current attribute of this memory location into A
C 54977,2 Reset all INK bits
C 54979,1 Set required INK bits for current colour
C 54980,1 Write data to Attribute File to display the colour
C 54981,1 Advance to next Attribute File address
C 54982,1 Return
c 54983 Interrupt Routine Update Glowing Blocks' Attribute to Next Colour in Sequence
D 54983 Used by the routines at #R54853 and #R54955. Output: E  New attribute of glowing blocks
C 54983,3 Load A with current INK colour of glowing blocks
C 54986,1 Advance to next colour in sequence
C 54987,2 Ensure that only INK attributes are used, rolling back over to zero (black) after seven (white)
C 54989,2 We don't want "black" light, so advance from zero (black) to one (blue) if black
C 54991,3 Place updated attribute back in memory
C 54994,1 Copy new attribute into E
C 54995,1 Return
c 54996 Update Game Time, Time Left and (Every Minute) Read-Text of Crystal Ball
D 54996 Used by the routine at #R54853.
C 54996,3 [EVERY 1/50 SECOND] Increase number of elapsed 1/50 seconds
C 54999,1 ...
C 55000,3 ...
C 55003,2 If new value isn't 50 then return...
C 55005,1 ...
C 55006,1 [EVERY 1 SECOND] Else, set the value to zero (start of next full second)...
C 55007,3 ...
C 55010,3 If character whose turn it is to move is free and awake, then update their current room if possible
C 55013,3 Increase number of seconds elapsed...
C 55016,1 ...
C 55017,3 ...
C 55020,2 If new value isn't 60 then return...
C 55022,1 ...
C 55023,1 [EVERY 1 MINUTE] Else, set the value to zero (start of next minute)...
C 55024,3 ...
C 55027,3 Update all characters' stats (deteriorate or regenerate) and wake up / send to sleep if required
C 55030,3 Move the Lift to a random floor if Magic Knight is not nearby
C 55033,3 Update read-text property of Crystal Ball...
C 55036,1 ...
C 55037,3 ...
C 55040,2 If read-text property is less than 144...
C 55042,2 ...skip ahead to #R55049...
C 55044,2 ...else set read-text property of Crystal Ball to 139...
C 55046,3 ...
C 55049,3 Increase number of minutes elapsed...
C 55052,1 ...
C 55053,3 ...
C 55056,2 If new value isn't 5 then return...
C 55058,1 ...
C 55059,1 [EVERY 5 MINUTES] Else, set the value to zero (start of next "hour")...
C 55060,3 ...
C 55063,3 Decrease number of hours left...
C 55066,1 ...
C 55067,3 ...
C 55070,3 If zero then jump to "Out of time" game over message
C 55073,3 Set parameters for and play upward scale sound
C 55076,1 Return
c 55077 Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send to Sleep if Required
D 55077 Used by the routine at #R54996.
C 55077,3 Load DE with 8 (as data is 8 bytes long)
C 55080,3 Point HL at Gimbal's stat regeneration data
C 55083,4 Point IX to Gimbal's current stats
C 55087,2 Load B with 7 (as there are 7 characters to which this routine applies - Banshee is excluded)
C 55089,3 If "Gimbal is free" flag is set...
C 55092,2 ...
C 55094,2 ...then jump ahead to #R55104
C 55096,3 Else point HL at Thor's stat regeneration data
C 55099,4 Point IX to Thor's current stats
C 55103,1 Decrease B to 6 as, since Gimbal is not free, he is not included in this routine's function
C 55104,4 If current character is awake...
C 55108,2 ...then skip ahead to #R55114
C 55110,1 Advance HL by four bytes to stat deterioration data...
C 55111,1 ...
C 55112,1 ...
C 55113,1 ...
C 55114,1 Load stat change value into C
C 55115,3 Load current character's strength into A
C 55118,3 Update character's strength as they tire (awake) or regenerate (asleep)...
C 55121,3 ...
C 55124,1 Advance HL to next (happiness) data
C 55125,1 Load stat change value into C
C 55126,3 Load current character's happiness into A
C 55129,3 Update character's happiness as they tire (awake) or regenerate (asleep)...
C 55132,3 ...
C 55135,1 Advance HL to next (stamina) data
C 55136,1 Load stat change value into C
C 55137,3 Load current character's stamina into A
C 55140,3 Update character's stamina as they tire (awake) or regenerate (asleep)...
C 55143,3 ...
C 55146,1 Advance HL to next (spell power) data
C 55147,1 Load stat change value into C
C 55148,3 Load current character's spell power into A
C 55151,3 Update character's spell power as they tire (awake) or regenerate (asleep)...
C 55154,3 ...
C 55157,1 Advance HL to next block of data
C 55158,4 If current character is asleep...
C 55162,2 ...then we have already moved into data for next character, so skip ahead to #R55168
C 55164,1 Else, we are now in same character's "asleep" data, so need to advance HL by four bytes to get to next character's data...
C 55165,1 ...
C 55166,1 ...
C 55167,1 ...
C 55168,2 Advance IX by eight bytes to next character's stats
C 55170,2 Loop back to 55104
C 55172,3 Load DE with 8
C 55175,4 Point IX to Gimbal's current stats
C 55179,2 Load B with 7 (as there are 7 characters to which this routine applies - Banshee is excluded)
C 55181,2 Load C with zero (to denote first character, Gimbal)
C 55183,3 Load current character's stamina into A
C 55186,1 If stamina is not zero...
C 55187,3 ...then skip ahead to #R55196
C 55190,4 Else send character to sleep
C 55194,2 Skip ahead to #R55205
C 55196,2 If stamina is not 100...
C 55198,3 ...then skip ahead to #R55205
C 55201,4 Else wake character up
C 55205,3 Load character's strength into A
C 55208,1 If strength is zero...
C 55209,3 ...then the character has starved to death, so jump to #R55461
C 55212,2 Advance IX to next character's stats
C 55214,1 Increase C for next character
C 55215,2 Loop back to 55183 for next character
C 55217,1 Return
b 55218 Index of Character Whose Turn it is to Move
B 55218,1,1
c 55219 Update Characters' Stats as They Tire (Awake) or Regenerate (Asleep)
D 55219 Used by the routine at #R55077. Input:  A  A character's stat (strength, stamina, happiness or spell power) C  An increment (while asleep) or decrement (while awake) for that stat Output: A  New value of stat
C 55219,1 Add stat and data together
C 55220,1 (Re)set sign flag
C 55221,3 If sign flag reset (i.e. MSB is reset and result is positive) then jump ahead to #R55226
C 55224,1 else stat must have dropped below zero, so set stat to zero (as it can't be less than 0)
C 55225,1 Return
C 55226,2 If new value of stat is less than or equal to 100...
C 55228,1 ...then return...
C 55229,1 ...
C 55230,2 ...else set stat to 100 (as it can't be greater than 100)
C 55232,1 Return
c 55233 Interrupt Routine If Character is Free and Awake, then Update Their Current Room if Possible
D 55233 Used by the routine at #R54996.
C 55233,4 If "Characters Can't Move" flag is set...
C 55237,1 ...then return without moving characters
C 55238,3 Load "character to move" index into A
C 55241,1 Increase by one, but cap at 31 and reset to zero if now above this...
C 55242,2 ...
C 55244,3 ...
C 55247,2 Return if value is over 7...
C 55249,1 ...
C 55250,3 Load "character to move" index into A
C 55253,1 If value is not zero...
C 55254,2 ...then skip ahead to #R55264
C 55256,3 If Gimbal is not free...
C 55259,2 ...
C 55261,1 ...then return
C 55262,2 Skip ahead to #R55274
C 55264,2 If value is not 7...
C 55266,2 ...then skip ahead to #R55274
C 55268,3 If Banshee not released...
C 55271,2 ...
C 55273,1 ...then return
C 55274,3 Load A with "character to move" index
C 55277,2 Point HL at character's "asleep flag"...
C 55279,3 ...
C 55282,2 ...and if character is asleep...
C 55284,1 ...then return
C 55285,3 Load "character to move" index into A
C 55288,1 Multiply by three (as data entries are three bytes wide)...
C 55289,1 ...
C 55290,1 ...
C 55291,1 Load into BC...
C 55292,2 ...
C 55294,3 Point HL at start of current character positions table
C 55297,1 Add BC as offset
C 55298,3 Load Magic Knight's current room into A
C 55301,1 If Magic Knight and the character are both in the same room...
C 55302,1 ...then return
C 55303,1 Copy Magic Knight's current room into B
C 55304,1 If character's current room is not 99...
C 55305,2 ...
C 55307,2 ...then jump to #R55319
C 55309,2 If character's current room is 100 (i.e. character has been sent home)... [bug: can't happen as won't reach this instruction if room is 100]
C 55311,1 ...then return
C 55312,3 Current room is 99 (character has been commanded to go away), so calculate the index of that character's "Go Away Base Room"...
C 55315,1 ...((4 x Character Index) + 5)...
C 55316,1 ...
C 55317,2 ...
C 55319,3 Load A with new room index for character to move into based upon current room
C 55322,2 If new room index is 255...
C 55324,1 ...then return
C 55325,1 If new room index is same as Magic Knight's current room...
C 55326,1 ...then return
C 55327,1 Store AF (A = new room index)
C 55328,1 Load new room index into C
C 55329,3 Load "character to move" index into B...
C 55332,1 ...
C 55333,1 Store HL (pointer to character's current room)
C 55334,3 Assign a slot in room C to character B and get x- and y-coordinates in BC
C 55337,1 Restore HL (pointer to character's current room)
C 55338,1 Restore DE (was AF, now D = new room index)
C 55339,2 If new room is full...
C 55341,1 ...then return
C 55342,1 Copy new room index into A
C 55343,1 Set character to be at coordinates (C, B) in room A...
C 55344,1 ...
C 55345,1 ...
C 55346,1 ...
C 55347,1 ...
C 55348,1 Return
c 55349 Move the Lift to a Random Floor if Magic Knight is not Nearby
D 55349 Used by the routine at #R54996.
C 55349,3 Load Magic Knight's current room into A
C 55352,1 Return is Magic Knight is in the Lift (room 0)...
C 55353,1 ...
C 55354,1 Return if Magic Knight is in a room that connects with the lift...
C 55355,2 ...
C 55357,1 ...
C 55358,2 Load A with a random number less than or equal to 6...
C 55360,3 ...
C 55363,1 Copy random number into B
C 55364,3 Load A with game progress flags
C 55367,2 If the Lift is fixed...
C 55369,2 ...then jump to #R55378
C 55371,1 Else copy random number back to A
C 55372,2 If random number is 5 or 6 then return...
C 55374,1 ...
C 55375,2 ...
C 55377,1 ...
C 55378,1 Store BC...
C 55379,3 ...set the Lift as not being at any floor at all...
C 55382,1 ...and restore BC value to AF
C 55383,3 Set Lift control panel light corresponding with previous randomly generated number to glow
C 55386,1 Multiply A by eight...
C 55387,1 ...
C 55388,1 ...
C 55389,1 ...and add one to get first room on "random" floor
C 55390,3 Set right-exit of Lift to first room on floor
C 55393,1 Double room number
C 55394,2 Load into DE...
C 55396,1 ...
C 55397,3 Point HL at start of room connectivity data
C 55400,1 Add offset for left-exit of first room on random floor...
C 55401,2 ...and set this exit to lead to the Lift
C 55403,1 Return
c 55404 Load A with New Room Index for a Character to Move into
D 55404 This routine causes a character to leave his / her current room and move to an adjacent room if that character has a current room index not equal to 99. In this case, the value of A upon entering this routine is the index of that character's current room. Input:  A  Character's current room index, or ((4 x character index) + 5) Output: A  New room index for character to move into
C 55404,1 Store HL
C 55405,1 Store DE
C 55406,1 Load double A (now either "character to move" index x 8 + 10, or double a room index) into E...
C 55407,1 ...
C 55408,3 Load "character to move" index into A
C 55411,2 Discard all but bit 0 (odd / even)
C 55413,1 Load 0 for even-numbered character (EC), or 1 for odd-numbered character (OC) into D
C 55414,3 Load A with number of hours left
C 55417,2 Set A to 0 for even number of hours left (EH), or 1 for odd number of hours left (OH)
C 55419,1 Set A to 0 for EH / EC or OH/OH, and 1 for EH / OC or OH / EC
C 55420,1 Add A (0 or 1, i.e. left or right) to double room index in DE...
C 55421,1 ...
C 55422,2 ...
C 55424,3 Point HL at table of room connectivity data
C 55427,1 Add DE as offset
C 55428,1 Load room index off current room's exit of interest
C 55429,2 If 255 (i.e. no exit from room)...
C 55431,2 ...return with A = 255
C 55433,2 If 34 (i.e. "The Gas Room")...
C 55435,2 ...return with A = 255
C 55437,2 If 18 (i.e. "The Little Bottle")...
C 55439,2 ...return with A = 255
C 55441,2 If 46 (i.e. "The Pit")...
C 55443,2 ...return with A = 255
C 55445,2 If 9 (i.e. "The Tower")...
C 55447,2 ...return with A = 255
C 55449,2 If 29 (i.e. "The Wall")...
C 55451,2 ...return with A = 255
C 55453,1 Restore DE
C 55454,1 Restore HL
C 55455,1 Return
C 55456,2 Set A to 255 (to denote that chosen room exit is impassable)
C 55458,1 Restore DE
C 55459,1 Restore HL
C 55460,1 Return
c 55461 Interrupt Routine End Game Due to a Character Starving to Death
D 55461 Used by the routine at #R55077. Input:  C  Index of character who has starved to death
C 55461,1 Set starved character to be Current Character...
C 55462,3 ...
C 55465,1 Restore HL (return address from call to "Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send to Sleep if Required" routine at 55077)
C 55466,1 Restore HL (return address from call to "Update Game Time, Time Left and (Every Minute) Read-Text of Crystal Ball" routine at #R54996)
C 55467,3 Restore all registers from stack
C 55470,1 Restore HL (return address from call to interrupt routine)
C 55471,3 Point HL at "[CHARACTER] HAS STARVED TO DEATH..." text
C 55474,1 Enable interrupts
C 55475,3 Jump to Game Over routine and return to pre-game menu
c 55478 Interrupt Routine End Game Due to Running Out of Time
D 55478 Used by the routine at #R54996.
C 55478,1 Restore HL (return address from call to "Update Game Time, Time Left and (Every Minute) Read-Text of Crystal Ball" routine at #R54996)
C 55479,3 Restore all registers from stack
C 55482,1 Restore HL (return address from call to interrupt routine)
C 55483,3 Point HL at "YOU RAN OUT OF TIME" text
C 55486,1 Enable interrupts
C 55487,3 Jump to Game Over routine and return to pre-game menu
b 55490 Characters' Rates of Stat Regeneration
D 55490 Stats are in order:
B 55490,8,8 Gimbal (-1, -1, -3, -4, 10, 8, 15, 10)
B 55498,8,8 Thor   (-6, -3, -1, -1,  5, 3,  4,  1)
B 55506,8,8 Florin (-3, -1, -4, -5,  3, 7,  4,  8)
B 55514,8,8 Orik   (-3, -2, -4, -4,  7, 8,  3,  9)
B 55522,8,8 Samsun (-1, -3, -3, -1, 10, 2, 10,  1)
B 55530,8,8 Elrand (-3, -2, -4, -6,  8, 4,  4,  8)
B 55538,8,8 Rosmar (-3, -2, -4, -4,  8, 4,  4,  3)
c 55546 Store All Registers on the Stack
D 55546 Used by the routine at #R54853.
C 55546,1 Place HL onto stack in place of top entry (the address of the CALL to this routine is now in HL)
C 55547,1 Store registers AF, BC & DE...
C 55548,1 ...
C 55549,1 ...
C 55550,1 Store shadow registers too...
C 55551,1 ...
C 55552,1 ...
C 55553,1 ...
C 55554,1 ...
C 55555,1 ...
C 55556,1 ...
C 55557,1 ...
C 55558,2 Store IX
C 55560,2 Store IY
C 55562,1 Store HL (address of call to this routine)
C 55563,1 Store AF
C 55564,3 Restore original value of HL (as switched with top of stack at beginning of this routine)...
C 55567,1 ...
C 55568,1 ...
C 55569,1 ...
C 55570,1 ...
C 55571,1 ...
C 55572,1 Restore AF
C 55573,1 Return
c 55574 Interrupt Routine Restore All Registers from the Stack
D 55574 Used by the routines at #R54853, #R55461 and #R55478.
C 55574,1 Restore registers HL, IY & IX (HL has address of call to this routine, i.e. 55574)...
C 55575,2 ...
C 55577,2 ...
C 55579,1 Restore shadow registers too...
C 55580,1 ...
C 55581,1 ...
C 55582,1 ...
C 55583,1 ...
C 55584,1 ...
C 55585,1 ...
C 55586,1 ...
C 55587,1 Restore AF, BC, DE...
C 55588,1 ...
C 55589,1 ...
C 55590,1 Put HL (address of call to 55574) back on stack in preparation for RET and take off original value of HL
C 55591,1 Return
b 55592 Source Code Fragment
D 55592 This source code fragment appears to be part of the routine at #R55077, dealing with characters' stat regeneration / deterioration
T 55592,124,1:B1,20:B1,16:B1,5:B1,19:B1,14:B1:5:B1,B1:6:B1,6:B1*4,1
b 55716 Graphics (Scenery Part 1) Right bookend (3 x 2)
B 55716,48,8
N 55764 Left bookend (3 x 2)
B 55764,48,8
N 55812 Books (1) (5 x 2)
B 55812,80,8
N 55892 Books (2) (5 x 3)
B 55892,120,8
N 56012 Books (3) (5 x 3)
B 56012,120,8
N 56132 Books (4) (5 x 2)
B 56132,80,8
N 56212 Ceiling Candles (3 x 6)
B 56212,144,8
N 56356 Big Bottle Top (4 x 4)
B 56356,128,8
N 56484 Big / Little Bottle Body (4 x 4)
B 56484,128,8
N 56612 Little Bottle Top (4 x 2)
B 56612,64,8
N 56676 Stag's Head (6 x 7)
B 56676,336,8
N 57012 Wall Clock (3 x 10)
B 57012,240,8
N 57252 Unknown (2 x 5)
B 57252,80,8
N 57332 Unknown (2 x 2)
B 57332,32,8
N 57364 Plant (1) (2 x 5)
B 57364,80,8
N 57444 Plant (2) (2 x 5)
B 57444,80,8
N 57524 Wall Axes (8 x 5)
B 57524,320,8
N 57844 Tree Top (1) (6 x 4)
B 57844,192,8
N 58036 Tree Trunk (1) (4 x 5)
B 58036,160,8
N 58196 Lift Door (2 x 4)
B 58196,64,8
N 58260 Mushroom (1) (2 x 2)
B 58260,32,8
N 58292 Mushroom (2) (2 x 2)
B 58292,32,8
N 58324 Mushroom (3) (2 x 2)
B 58324,32,8
N 58356 Mushroom (4) (2 x 2)
B 58356,32,8
N 58388 Large Mushroom (3 x 3)
B 58388,72,8
N 58460 Lift Control Panel (4 x 9) (see bug)
B 58460,288,8
b 58748 Graphics (Characters)
D 58748 All character graphics are (2 x 4). Gimbal the Wizard
B 58748,64,8
N 58812 Thor
B 58812,64,8
N 58876 Florin the Dwarf
B 58876,64,8
N 58940 Orik the Cleric
B 58940,64,8
N 59004 Samsun the Strong
B 59004,64,8
N 59068 Elrand Halfelven
B 59068,64,8
N 59132 Lady Rosmar
B 59132,64,8
N 59196 The Banshee
B 59196,64,8
b 59260 Graphics (Puff of Smoke)
D 59260 All Puff of Smoke frame graphics are (2 x 3). Frame 1
B 59260,48,8
N 59308 Frame 2
B 59308,48,8
N 59356 Frame 3
B 59356,48,8
N 59404 Frame 4
B 59404,48,8
N 59452 Frame 5
B 59452,48,8
N 59500 Frame 6
B 59500,48,8
b 59548 Graphics (Scenery Part 2) Picture in Frame (1) (5 x 5)
B 59548,200,8
N 59748 Picture in Frame (2) (9 x 5)
B 59748,360,8
N 60108 Alternative Picture Landscape (1) (3 x 2)
B 60108,48,8
N 60156 Alternative Picture Landscape (2) (7 x 3)
B 60156,168,8
N 60324 Wall Bracketed Candle (2 x 4)
B 60324,64,8
N 60388 Right-Facing Candle Wall Bracket (3 x 2)
B 60388,48,8
N 60436 Right-Facing Candle Wall Bracket Plate (1 x 3)
B 60436,24,8
N 60460 Left-Facing Candle Wall Bracket (3 x 2)
B 60460,48,8
N 60508 Left-Facing Candle Wall Bracket Plate (1 x 3)
B 60508,24,8
N 60532 Plant (3) (2 x 5)
B 60532,80,8
N 60612 Plant (4) (2 x 3)
B 60612,48,8
N 60660 Plant (5) (2 x 3)
B 60660,48,8
N 60708 Plant (6) (2 x 3)
B 60708,48,8
N 60756 Tree Top (2) (8 x 5)
B 60756,320,8
N 61076 Tree Top (3) (8 x 5)
B 61076,320,8
N 61396 Tree Trunk (2) (8 x 5)
B 61396,320,8
b 61716 Graphics (Objects Part 1)
D 61716 All object graphics are (2 x 2). Trumpet
B 61716,32,8
N 61748 Four Leaf Clover
B 61748,32,8
N 61780 Advert
B 61780,32,8
N 61812 Prism
B 61812,32,8
b 61844 Graphics (Scenery Part 3) Plant Pot (1) (2 x 2)
B 61844,32,8
N 61876 Plant Pot (2) (2 x 1)
B 61876,16,8
N 61892 Plant Pot (3) (2 x 2)
B 61892,32,8
N 61924 Goblet (from Picture) (2 x 3)
B 61924,48,8
N 61972 Plant Pot (4) (2 x 3)
B 61972,48,8
N 62020 Plant (7) (2 x 3)
B 62020,48,8
b 62068 Graphics (Objects Part 2)
D 62068 All object graphics are (2 x 2). Lump of Brickwork
B 62068,32,8
N 62100 Sticky Bun
B 62100,32,8
N 62132 Wand of Command
B 62132,32,8
N 62164 Javelin
B 62164,32,8
N 62196 Tube of Glue
B 62196,32,8
N 62228 Broken Talisman
B 62228,32,8
N 62260 Talisman
B 62260,32,8
N 62292 Goblet
B 62292,32,8
N 62324 Willow Rod
B 62324,32,8
N 62356 Power Pong Plant
B 62356,32,8
N 62388 Saxophone
B 62388,32,8
N 62420 Mirror
B 62420,32,8
N 62452 Axe
B 62452,32,8
N 62484 Miolnir
B 62484,32,8
N 62516 Runestone
B 62516,32,8
N 62548 Book
B 62548,32,8
N 62580 Pocket Laser
B 62580,32,8
N 62612 White Gold Ring
B 62612,32,8
N 62644 Pewter Tankard
B 62644,32,8
N 62676 Candle
B 62676,32,8
N 62708 Elf Horn
B 62708,32,8
N 62740 Broken Glass
B 62740,32,8
N 62772 Crystal
B 62772,32,8
N 62804 Shield
B 62804,32,8
N 62836 Cannon / Crystal Ball
B 62836,32,8
N 62868 Bottle
B 62868,32,8
N 62900 Ancient Scroll
B 62900,32,8
N 62932 Red Herring
B 62932,32,8
N 62964 Teleport Pad
B 62964,32,8
N 62996 Pool of Liquid
B 62996,32,8
N 63028 Loaf of Bread
B 63028,32,8
N 63060 (Teleport) Key
B 63060,32,8
N 63092 Brick / Gold Bar
B 63092,32,8
b 63124 Graphics - "Locate a Character" Compass (6 x 6)
B 63124,288,8
b 63412 Graphics (Magic Knight)
D 63412 All Magic Knight frame graphics are (2 x 4). Frame 0 (Blank) This "frame" is used when Magic Knight is to be drawn without a previously drawn frame waiting to be erased. The Draw / Erase Magic Knight routine at #R39224 first erases the previously drawn frame before drawing the new one. When Magic Knight enters a new room, however, there is no previously drawn frame to erase, so frame zero (blank) is used causing the erase phase of the routine to leave the display unchanged.
B 63412,64,8
N 63476 Frame 1 (Right)
B 63476,64,8
N 63540 Frame 2 (Right)
B 63540,64,8
N 63604 Frame 3 (Right)
B 63604,64,8
N 63668 Frame 4 (Right)
B 63668,64,8
N 63732 Frame 5 (Left)
B 63732,64,8
N 63796 Frame 6 (Left)
B 63796,64,8
N 63860 Frame 7 (Left)
B 63860,64,8
N 63924 Frame 8 (Left)
B 63924,64,8
b 63988 Graphics (Interface)
D 63988 The character set (font) used by the game. The index of the first entry is 32 (ASCII code for SPACE character), and runs through to Z (90). Characters 91 and 92 are unknown.
B 63988,472,8
N 64460 Unknown Character 1
B 64460,8,8
N 64468 Unknown Character 2
B 64468,8,8
N 64476 Window Border 1
B 64476,64,8
N 64540 Window Border 2
B 64540,64,8
N 64604 Window Border 3
B 64604,64,8
N 64668 Window Border 4
B 64668,64,8
N 64732 Character Set (Additional)
B 64732,24,8
b 64756 Graphics - Brickwork Blocks (Part 1)
D 64756 Referenced by Architecture Styles Table at #R54617
B 64756,8,8 00  Initial frame of odd ball and second, blank row in brickwork drawing
B 64764,8,8 01  Unused
B 64772,8,8 02  Top green block in Most Magic Room
B 64780,8,8 03  Top green block in Most Magic Room
B 64788,8,8 04  2nd green block in Most Magic Room
B 64796,8,8 05  2nd green block in Most Magic Room
B 64804,8,8 06  3rd green block in Most Magic Room
B 64812,8,8 07  3rd green block in Most Magic Room
B 64820,8,8 08  4th green block in Most Magic Room
B 64828,8,8 09  4th green block in Most Magic Room
B 64836,8,8 10  Unused
B 64844,8,8 11  Unused
B 64852,8,8 12  Unused
B 64860,8,8 13  Unused
B 64868,8,8 14  Unused
B 64876,8,8 15  Unused
B 64884,8,8 16  Unused
B 64892,8,8 17  Unused
B 64900,8,8 18  Unused
B 64908,8,8 19  Unused
B 64916,8,8 20  Unused
B 64924,8,8 21  Unused
B 64932,8,8 22  Unused
B 64940,8,8 23  Unused
B 64948,8,8 24  (Basement Wall)
B 64956,8,8 25  Unused
B 64964,8,8 26  Top green block in Most Magic Room
B 64972,8,8 27  Top green block in Most Magic Room
B 64980,8,8 28  2nd green block in Most Magic Room
B 64988,8,8 29  2nd green block in Most Magic Room
B 64996,8,8 30  3rd green block in Most Magic Room
B 65004,8,8 31  3rd green block in Most Magic Room
B 65012,8,8 32  4th green block in Most Magic Room
B 65020,8,8 33  4th green block in Most Magic Room
B 65028,8,8 34  Unused
B 65036,8,8 35  Unused
B 65044,8,8 36  Unused
B 65052,8,8 37  Unused
B 65060,8,8 38  Unused
B 65068,8,8 39  Unused
B 65076,8,8 40  Unused
B 65084,8,8 41  Unused
B 65092,8,8 42  Unused
B 65100,8,8 43  Unused
B 65108,8,8 44  Unused
B 65116,8,8 45  Unused
B 65124,8,8 46  Unused
B 65132,8,8 47  Unused
B 65140,8,8 48  Unused
B 65148,8,8 49  Unused
B 65156,8,8 50  Unused
B 65164,8,8 51  Unused
B 65172,8,8 52  Unused
B 65180,8,8 53  Unused
B 65188,8,8 54  Top of columns in Most Magic Room
B 65196,8,8 55  Top of columns in Most Magic Room
B 65204,8,8 56  Base of columns in Most Magic Room
B 65212,8,8 57  Base of columns in Most Magic Room
B 65220,8,8 58  Body of columns in Most Magic Room
B 65228,8,8 59  Body of columns in Most Magic Room
B 65236,8,8 60  Unused
B 65244,8,8 61  Unused
B 65252,8,8 62  Unused
B 65260,8,8 63  Unused
B 65268,8,8 64  Unused
B 65276,8,8 65  Unused
B 65284,8,8 66  Standard (used by most rooms in the game)
B 65292,8,8 67  Standard (used by most rooms in the game)
B 65300,8,8 68  Unused
B 65308,8,8 69  Unused
B 65316,8,8 70  Unused
B 65324,8,8 71  Unused
B 65332,8,8 72  Unused
B 65340,8,8 73  Unused
B 65348,8,8 74  Unused
B 65356,8,8 75  Unused
B 65364,8,8 76  Unused
B 65372,8,8 77  Unused
B 65380,8,8 78  Top of columns in Most Magic Room
B 65388,8,8 79  Top of columns in Most Magic Room
B 65396,8,8 80  Base of columns in Most Magic Room
B 65404,8,8 81  Base of columns in Most Magic Room
B 65412,8,8 82  Pit of Destruction flames
B 65420,8,8 83  Pit of Destruction flames
b 65428 Graphics (Odd Ball)
B 65428,8,8 Frame 1
B 65436,8,8 Frame 2
B 65444,8,8 Frame 3
B 65452,8,8 Frame 4
b 65460 Graphics - Brickwork Blocks (Part 2)
D 65460 Referenced by Architecture Styles Table at #R54617
B 65460,8,8 88  Unused
B 65468,8,8 89  Unused
B 65476,8,8 90  Standard (used by most rooms in the game)
B 65484,8,8 91  Standard (used by most rooms in the game)
b 65492 Unused
B 65492,32,8
c 65524 Interrupt Routine (Jump 2)
D 65524 Note - original values here are 16, 16, 16. These are modified to the JP instruction by instructions between 26653 and 26662
@ 65524 ssub=JP 54853
B 65524,3,3 Jump to main part of interrupt routine at #R54853
b 65527 Unused
B 65527,1,1
b 65528 Temporary store for Magic Knight's frame number (to draw)
B 65528,1,1
b 65529 Magic Knight's current room
B 65529,1,1
b 65530 Store for Display File Address to Print Text to in Command Summary Window
W 65530,2,2
b 65532 Magic Knight's Current Action Flags
D 65532 Bitwise flags which determine which commands appear in the main in-game menu. The bits are:
B 65532,1,1 Magic Knight's current action flags (1)
B 65533,1,1 Magic Knight's current action flags (2)
b 65534 Unused
B 65534,1,1
c 65535 Interrupt Routine (Jump 1)
D 65535 Note - original value at 65535 is 0. This is modified to the JR instruction by instruction at 26650. The operand comes from next byte (location 0 in ROM.)
@ 65535 ssub=JR 65524
C 65535,1 Jump to next part of interrupt routine
