> 23296 ; SkoolKit disassembly for Knight Tyme (48k)
> 23296 ;
> 23296 ; Copyright (c) 2017 Philip M. Anderson (this disassembly)
> 23296 ; Copyright (c) 1986 David Jones / Mastertronic (Knight Tyme)
> 23296 @start=26624
@ 23296 org
b 23296 Space for Calculations / Storage (e.g. Scrolling Graphics)
B 23296,101,8*12,5
b 23397 Miscellaneous Data 1
B 23397,1,1 Bonus Score
W 23398,2,2 Temporary storage used by the routine at #R54647 (Redefine Keyboard Controls)
b 23400 Unused
B 23400,2,2
b 23402 Unknown / Unused Flag 1
B 23402,1,1 Unknown and unused flag in Bit 0, set in routine at #R32055, but otherwise unused.
b 23403 Score / Progress Flags (1)
D 23403 Bitwise flags which record Magic Knight's achievements, and are used in calculating percentage completion. Flags are initially reset, and each one is set when the corresponding action is performed.
B 23403,1,1
b 23404 Table of Characters in Room of Interest
D 23404 List of characters in a particular room, as set by the routine at #R34512
B 23404,16,8
b 23420 Miscellaneous Data 2
W 23420,2,2 Pointer to entry in Table of Display File Addresses for pixel row at Magic Knight's current y-coordinate
B 23422,1,1 Temporary store for Magic Knight's x-coordinate in characters
B 23423,1,1 Temporary store for Magic Knight's x-coordinate in characters (stored by instruction at #R53173 but otherwise unused)
B 23424,1,1 Temporary store for Magic Knight's y-coordinate in pixels (stored by instruction at #R53179 but otherwise unused)
B 23425,1,1 Magic Knight Facing Left Flag
b 23426 Miscellaneous Data 3
B 23426,1,1 Temporary store for x-coordinate of left edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23427,1,1 Temporary store for y-coordinate of top edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23428,1,1 Temporary store for x-coordinate of right edge (of frame, or of interior) of current window to draw (characters), x+1 for current graphic (room drawing)
B 23429,1,1 Temporary store for y-coordinate of bottom edge (of frame, or of interior) of current window to draw (characters), y+1 for current graphic (room drawing)
b 23430 Unused
B 23430,4,4
b 23434 Miscellaneous Data 4
B 23434,1,1 Set to index of Current Character (S3 E3 / Klink help routine) but otherwise unused (see trivia)
B 23435,1,1 Remaining amount of star drive fuel in current "unit" (each unit divided into 256 portions)
b 23436 Currently Available Destinations for "MOVE STARSHIP" Command
D 23436 Eight slots, populated by the routine at #R31688 and used by that routine to display the content of the "WHERE TO ?" menu.
B 23436,8,1
b 23444 Miscellaneous Data 5
B 23444,1,1 x-coordinate of graphic to draw
B 23445,1,1 y-coordinate of graphic to draw
B 23446,1,1 Store for room attribute, set at #R27953 but otherwise unused
W 23447,2,2 Store for address of graphic data
B 23449,1,1 Store for pixel row counter
b 23450 Vertical and Horizontal Mirror Flags
D 23450 Used by the routines at #R52513, #R52535, #R52566, #R52596, #R52635, #R52717 and #R52820 in graphic / room drawing. When the Vertical Mirror Flag is set, the graphic is reflected in a vertical mirror (i.e. left and right are swapped). When the Horizontal Mirror Flag is set, the graphic is reflected in a horizontal mirror (i.e. top and bottom are swapped).
B 23450,1,1
b 23451 Score / Progress Flags (2)
D 23451 Bitwise flags which record Magic Knight's achievements, and are used in calculating percentage completion. Flags are initially reset, and each one is set when the corresponding action is performed.
B 23451,1,1
b 23452 Unused
B 23452,3,3
b 23455 Miscellaneous Data 6
B 23455,1,1 Index of character whose turn it is to be updated
B 23456,1,1 Initial y-coordinate of top of hand cursor relative to current window (characters)
b 23457 Time Data
D 23457 Data related to Magic Knight's time left, and also elapsed game time.
B 23457,1,1 Current Time Left - game days (5 real-time minutes per game day)
B 23458,1,1 Minute Counter (Time Elapsed since last "day")
B 23459,1,1 Second Counter (Time Elapsed since last minute)
B 23460,1,1 1/50 Second Counter (Time Elapsed since last second)
b 23461 Miscellaneous Data 7
B 23461,1,1 Draw Communicate Window / Face Flag (0 = reset, any other value = set)
b 23462 Unused
B 23462,1,1
b 23463 Miscellaneous Data 8
B 23463,1,1 Magic Knight's temporary movement flags
B 23464,5,5 Storage space for ASCII string converted from numeric value
b 23469 Unused
B 23469,2,2
b 23471 Miscellaneous Data 9
B 23471,1,1 Index of previous "Consult Oracle" text shown
b 23472 Tyme Guardians Flags
D 23472 Bitwise flags. The bits are as follows:
B 23472,1,1
b 23473 Miscellaneous Data 10
B 23473,1,1 Temporary store for an object's Terrain Interaction Parameter
b 23474 Magic Knight Movement Flags
D 23474 Bitwise flags which determine which direction(s) Magic Knight cannot currently move (i.e. set means can't move). The bits are as follows:
B 23474,1,1
b 23475 Miscellaneous Data 11
B 23475,1,1 Height available to Menu Hand Cursor to move down (pixels)
B 23476,1,1 x-coordinate of left-most character in a row of menu text (characters)
B 23477,1,1 y-coordinate of "finger" on hand-cursor (characters)
B 23478,1,1 Menu hand-cursor's y-coordinate (pixels)
B 23479,1,1 Current y-coordinate of hand cursor relative to its starting position (pixels)
b 23480 Unknown / Unused Flag 2
B 23480,1,1
b 23481 Miscellaneous Data 12
B 23481,1,1 Attribute of interior of current window, i.e. background / foreground colours of contents
B 23482,1,1 Magic Knight's predicted x-coordinate (used in routine at #R27508)
B 23483,1,1 Magic Knight's predicted y-coordinate (used in routine at #R27508)
B 23484,1,1 Store for selected starship speed index
b 23485 Unused
B 23485,2,2
b 23487 Miscellaneous Data 13
B 23487,1,1 Store for currently active keyboard press / joystick action
N 23488 The following byte keeps track of the number of times the text printing routine calls itself, in printing common words as part of a higher-level string.
B 23488,1,1 Text Printing Routine Recursion Depth Counter
B 23489,1,1 x-coordinate of left edge of region to scroll (characters)
B 23490,1,1 x-coordinate of right edge of region to scroll (characters)
B 23491,1,1 y-coordinate of top of region to scroll (pixels)
B 23492,1,1 y-coordinate of bottom of region to scroll (pixels)
B 23493,1,1 x-coordinate of left edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23494,1,1 y-coordinate of top edge (of frame, or of interior) of current window to draw (characters) / graphic (room drawing)
B 23495,1,1 x-coordinate of right edge (of frame, or of interior) of current window to draw (characters), x+1 for current graphic (room drawing)
B 23496,1,1 y-coordinate of bottom edge (of frame, or of interior) of current window to draw (characters), y+1 for current graphic (room drawing)
b 23497 Unused
B 23497,1,1
b 23498 Attribute File address for Virtual Text Cursor
W 23498,2,2
b 23500 Unused
B 23500,2,2
b 23502 Visited Room Flags
D 23502 Fifty bytes, one for each room in the game. At the start of the game, these are all reset (i.e. zero). Each time Magic Knight enters a room for the first time, the flag corresponding to that room is set (to 1). These flags are used in calculating percentage completion.
B 23502,1,1 (00) - USS Pisces, 0 (The Recreation Room)
B 23503,1,1 (01) - USS Pisces, 1 (The Bridge)
B 23504,1,1 (02) - USS Pisces, 2 (The Transporter Room)
B 23505,1,1 (03) - USS Pisces, 3 (The Transputer Room)
B 23506,1,1 (04) - USS Pisces, 4 (Cargo Hold)
B 23507,1,1 (05) - USS Pisces, 5 (The Airlock)
B 23508,1,1 (06) - USS Pisces, 6 (The Life Boat)
B 23509,1,1 (07) - Retreat, 0 (Murphy's Moon)
B 23510,1,1 (08) - Retreat, 1
B 23511,1,1 (09) - Retreat, 2
B 23512,1,1 (10) - Retreat, 3
B 23513,1,1 (11) - Starbase 1, 0 (The Transporter Room)
B 23514,1,1 (12) - Starbase 1, 1 (McTablet Takeaway Food)
B 23515,1,1 (13) - Starbase 1, 2
B 23516,1,1 (14) - Starbase 1, 3
B 23517,1,1 (15) - Starbase 1, 4 (Fuel and Cargo Area)
B 23518,1,1 (16) - Outpost, 0 (Ye Olde Transporter)
B 23519,1,1 (17) - Outpost, 1 (The Main Defence System)
B 23520,1,1 (18) - Outpost, 2
B 23521,1,1 (19) - Outpost, 3 (The Proof of Power)
B 23522,1,1 (20) - Outpost, 4 (The Tyme Guardians)
B 23523,1,1 (21) - Monopole, 0 (Hooper's Emergency Exit)
B 23524,1,1 (22) - Monopole, 1 (This Way to Hooper ==>>)
B 23525,1,1 (23) - Monopole, 2 (Here is Hooper)
B 23526,1,1 (24) - USS Pisces, 6A (The Control Column)
N 23527 The following are unused, but still counted by the routine at #R33657 (see trivia).
B 23527,100,8*3,1,8*9,3
b 23627 VARS system variable
@ 23627 ssub=DEFW 23856
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
b 23700 USS Pisces' Current Location
B 23700,1,1
b 23701 Magic Knight's current room
B 23701,2,1
b 23703 Store for Display File Address to Print Text to in Command Summary Window
W 23703,2,2
b 23705 Player Attribute Update Flag
D 23705 #TABLE(default,centre,:w) { =h Value | =h Effect } { 0 | Player Attribute Ignore Mode } { Any other value | Player Attribute Update Mode } TABLE#
B 23705,23,1,8*2,6
b 23728 Cheat Mode Enabled Flag
D 23728 See trivia
B 23728,1,1 Cheat Mode Enabled Flag / NMIADD (LSB)
B 23729,5,5
b 23734 System Data / BASIC Program
B 23734,79,8*9,7
b 23813 Table of Bitmap Data for Magic Knight at his Current Location
D 23813 Used by the routines at #R52937, #R53019 and #R53073
B 23813,96,8
b 23909 Table of Background Bitmap Data
D 23909 Used by the routines at #R52937 and #R53115
B 23909,96,8
b 24005 Temporary Text Buffer
D 24005 Used by the routines at #R34762 and #R36602
B 24005,32,8
b 24037 Table of Background Attribute Data
D 24037 Attribute values for region behind Magic Knight, stored here so that they can be restored when Magic Knight moves on in Player Attribute Update mode.
B 24037,12,3
b 24049 Unused
B 24049,15,8,7
b 24064 Terrain Interaction Data Table
D 24064 Table comprised of 32 x 24 entries, each one corresponding to a character block in Magic Knight's current room. Each entry is a set of bitwise flags with the following effects:
B 24064,768,32
b 24832 Movement Data Table for Starfield Routine
D 24832 Twenty groups of nine bytes, one group per star. The values are:
B 24832,180,9
b 25012 USS Pisces' Current Stats
D 25012 See also USS Pisces' Initial Stats at #R37329.
B 25012,1,1 Life Support (%)
B 25013,1,1 Star Drive Fuel
B 25014,1,1 Impulse Drive (%)
B 25015,1,1 Shields (%)
B 25016,1,1 Transputer (%)
B 25017,1,1 Unused
B 25018,1,1 Unused
B 25019,1,1 Unused
b 25020 Characters' Current Stats
D 25020 Nine groups of eight bytes, one group per character (including Magic Knight). The values are capped at 100:
B 25020,8,8 Magic Knight
B 25028,8,8 Gordon
B 25036,8,8 Sarab
B 25044,8,8 Klink
B 25052,8,8 S3 E3
B 25060,8,8 Hooper
B 25068,8,8 Murphy
B 25076,8,8 Sharon
B 25084,8,8 Forbin
B 25092,8,8 Derby IV
B 25100,8,8 Swiftfoot
B 25108,8,8 Julie 8
B 25116,8,8 Hectorr
b 25124 Unused
B 25124,32,8
b 25156 Magic Knight's Current Data
D 25156 See also #R36797 for Magic Knight's Initial Data
B 25156,1,1 x-coordinate (pixels)
B 25157,1,1 y-coordinate (pixels)
B 25158,1,1 Unused (set to zero by instruction at #R31522)
B 25159,1,1 Index of current frame
B 25160,1,1 x-velocity (pixels) [walking / jumping sideways, usually 2 for right and 254 / -2 for left]
B 25161,1,1 y-velocity (pixels) [jumping]
B 25162,1,1 Attribute
B 25163,1,1 Unused
b 25164 Characters' Current Inventories
D 25164 See also #R36805 for Characters' Initial Inventories
B 25164,5,5 Magic Knight (carrying)
B 25169,5,5 Magic Knight (wearing)
B 25174,5,5 Gordon
B 25179,5,5 Sarab
B 25184,5,5 Klink
B 25189,5,5 S3 E3
B 25194,5,5 Hooper
B 25199,5,5 Murphy
B 25204,5,5 Sharon
B 25209,5,5 Forbin
B 25214,5,5 Derby IV
B 25219,5,5 Swiftfoot
B 25224,5,5 Julie 8
B 25229,5,5 Hectorr
b 25234 Unused
D 25234 (See trivia)
B 25234,10,5
b 25244 Characters' Current Positions
D 25244 Twelve groups of three bytes, one group per character (excluding Magic Knight). The values are:
B 25244,3,3 Gordon
B 25247,3,3 Sarab
B 25250,3,3 Klink
B 25253,3,3 S3 E3
B 25256,3,3 Hooper
B 25259,3,3 Murphy
B 25262,3,3 Sharon
B 25265,3,3 Forbin
B 25268,3,3 Derby IV
B 25271,3,3 Swiftfoot
B 25274,3,3 Julie 8
B 25277,3,3 Hectorr
b 25280 Unused
D 25280 (See trivia)
B 25280,6,6
b 25286 Objects' Current Positions
D 25286 Thirty-seven groups of three bytes, one group per object. The values are:
B 25286,3,3 (00) - Nothing at all
B 25289,3,3 (01) - Cloak of Invisibility
B 25292,3,3 (02) - Blank I.D. Card
B 25295,3,3 (03) - Valid I.D. Card
B 25298,3,3 (04) - Instant Film
B 25301,3,3 (05) - Photograph (of Magic Knight)
B 25304,3,3 (06) - Star Map
B 25307,3,3 (07) - Gadget X
B 25310,3,3 (08) - Camera
B 25313,3,3 (09) - Photograph (of inside of starship)
B 25316,3,3 (10) - Pot of Glue
B 25319,3,3 (11) - 5W Resistor
B 25322,3,3 (12) - Magic Talisman
B 25325,3,3 (13) - Golden Sundial of Alpha
B 25328,3,3 (14) - McTablet Food
B 25331,3,3 (15) - Broken Glass
B 25334,3,3 (16) - Quark Bomb
B 25337,3,3 (17) - Advert
B 25340,3,3 (18) - Part of a Sundial (1)
B 25343,3,3 (19) - Part of a Sundial (2)
B 25346,3,3 (20) - Part of a Sundial (3)
B 25349,3,3 (21) - Brass Ankh
B 25352,3,3 (22) - Pair of Boots
B 25355,3,3 (23) - Chocolate Heart
B 25358,3,3 (24) - Starfleet Manual
B 25361,3,3 (25) - Ancient Scroll
B 25364,3,3 (26) - Tower Fish
B 25367,3,3 (27) - Gas Mask
B 25370,3,3 (28) - Shield
B 25373,3,3 (29) - Bag of Runes
B 25376,3,3 (30) - Bag of Potatoes
B 25379,3,3 (31) - Pewter Tankard
B 25382,3,3 (32) - Axe
B 25385,3,3 (33) - Wrist Terminal
B 25388,3,3 (34) - Torch
B 25391,3,3 (35) - Mirror
B 25394,3,3 (36) - 10MW Laser
b 25397 Current Planetary Data
D 25397 Two bytes per location. The bytes' meanings are:
B 25397,2,2 (00) - Unused
B 25399,2,2 (01) - Deneb
B 25401,2,2 (02) - Gath
B 25403,2,2 (03) - Monopole
B 25405,2,2 (04) - Porthos
B 25407,2,2 (05) - Starbase 1
B 25409,2,2 (06) - Lynx
B 25411,2,2 (07) - Nirvana
B 25413,2,2 (08) - Limbo
B 25415,2,2 (09) - Eden
B 25417,2,2 (10) - Herschell
B 25419,2,2 (11) - Trantore
B 25421,2,2 (12) - Plop Plop
B 25423,2,2 (13) - Brightstar
B 25425,2,2 (14) - Outpost
B 25427,2,2 (15) - Polaris
B 25429,2,2 (16) - Bingo
B 25431,2,2 (17) - Retreat
B 25433,2,2 (18) - Dragon Egg
B 25435,2,2 (19) - Aridia
B 25437,2,2 (20) - Gangrole
B 25439,2,2 (21) - Naff
B 25441,2,2 (22) - Reef
B 25443,2,2 (23) - Menopausia
B 25445,2,2 (24) - Plinkit
b 25447 Unused
D 25447 This block loaded with zeroes by routine at #R26997, but otherwise unused.
B 25447,16,8
b 25463 Temporary Storage Region for Bitmap Data used in Viewscreen Scrolling Effect
D 25463 Used by the routines at #R32065 and #R32124
B 25463,432,8
b 25895 System Data and Stack Space
B 25895,345,8*43,1
b 26240 Table of Display File Addresses of Start of Each Pixel Row
D 26240 Addresses are in sequence, from top to bottom of display
W 26240,384,2
c 26624 Initialise Interrupt Code then Display and Handle Input Device Selection Menu
C 26624,4 Set P-FLAG bits 0 and 1 (OVER 1) (IY = 23610)
C 26628,3 Load HL with address of graphic data for Advert's mask...
C 26631,3 ...and store at 56082 (graphic data for graphic 33)
C 26634,3 Load HL with address of Unknown Mask Data...
C 26637,3 ...and store at 56084 (mask data for graphic 33)
C 26640,3 If Cheat Mode Enabled Flag is reset (see trivia)...
C 26643,1 ...
C 26644,2 ...then skip ahead to #R26650
C 26646,1 Set initial room of Valid I.D. Card to USS Pisces, 0, "The Recreation Room" (00)...
C 26647,3 ...
C 26650,2 Put JR instruction at 65535 for jumping to interrupt routine...
C 26652,3 ...
C 26655,2 Load first byte of interrupt routine with 195...
C 26657,3 ...representing "JP"
C 26660,3 Load following two bytes of interrupt routine with 53479...
C 26663,3 ...to make "JP 53479"
C 26666,2 Load I register with 57 (for interrupt routine)...
C 26668,2 ...
c 26670 Display input device selection menu
D 26670 Used by the routine at #R55685.
C 26670,1 Enable Interrupts
C 26671,1 Wait for interrupt
C 26672,3 Set Stack Pointer to 26240
C 26675,1 Reset all Interrupt Routine flags...
C 26676,3 ... (IY = 23610)
C 26679,2 Set Interrupt Mode 2
C 26681,3 Set border to black and clear temporary storage area of memory
C 26684,3 Draw Input Device Selection Menu and update currently selected input device
C 26687,3 Process keyboard / joystick input on a menu and load A with selected item index
C 26690,2 If "CHANGE GAME OPTIONS" selected...
C 26692,3 ...then skip ahead to #R26739
C 26695,2 If "INSTRUCTIONS" selected...
C 26697,2 ...then skip ahead to #R26734
C 26699,2 If "PLAY GAME" selected...
C 26701,3 ...then jump to #R26997 (initialise data and start a new game)
C 26704,1 Store AF (A = index of selected menu item)
C 26705,3 Load A with index of currently selected input device (see trivia)
C 26708,1 Store AF (A = index of currently selected input device)
C 26709,1 Load C with index of currently selected input device
C 26710,3 Load A with y-coordinate of top edge of Window 6 (Control Selection Window)
C 26713,1 Add index of currently selected input device...
C 26714,2 ...and add two more to get y-coordinate of menu item for currently selected input device
C 26716,1 Load value into B
C 26717,2 Load C with 3
C 26719,3 Load HL with Attribute File address for coordinates (C, B)
C 26722,2 Set attribute at this location to 71 (white INK, black PAPER, BRIGHT) (see trivia)
C 26724,1 Restore DE (D = index of currently selected input device, previously in AF)
C 26725,1 Store AF (A = index of selected menu item)
C 26726,3 Set new selected input device index at #R54560
C 26729,3 Update currently selected input device...
C 26732,2 ...and loop back to #R26687
C 26734,3 Display Instructions windows
C 26737,2 Jump back to #R26684 to capture next menu selection
C 26739,3 Display and handle Gadget X Menu
C 26742,3 Jump back to #R26684 to capture next menu selection
c 26745 Display and Handle Gadget X Menu
D 26745 Used by the routines at #R26670 and #R30968.
C 26745,2 Load A with index of "REDEFINE THE GAME" Window
C 26747,3 Point HL at Gadget X menu text
C 26750,1 Store HL (pointer to Gadget X menu text)
C 26751,3 Draw "REDEFINE THE GAME" Menu Window
C 26754,1 Restore HL (pointer to Gadget X menu text)
C 26755,3 Print text
C 26758,3 Play upward scale sound
C 26761,3 Process keyboard / joystick input on a menu and load A with selected item index
C 26764,1 If REDEFINE KEYBOARD selected...
C 26765,3 ...then skip ahead to #R26816
C 26768,2 If PLAYER ATTRIBUTE IGNORE selected...
C 26770,2 ...then skip ahead to #R26807
C 26772,2 If PLAYER ATTRIBUTE UPDATE selected...
C 26774,2 ...then skip ahead to #R26812
C 26776,4 If Game In Progress Flag is reset... (IY = 23610)
C 26780,2 ...then skip ahead to #R26790
C 26782,2 If SAVE THE GAME selected...
C 26784,2 ...then skip ahead to #R26833
C 26786,2 If LOAD AN OLD GAME selected...
C 26788,2 ...then skip ahead to #R26840
C 26790,2 Draw Window 5...
C 26792,3 ...
C 26795,3 Point HL at "SAVE & LOAD ARE NOT ALLOWED HERE..." text...
C 26798,3 ...and print to screen
C 26801,3 Play upward scale sound
C 26804,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed and return
C 26807,1 Reset Player Attribute Update Flag (Player Attribute Ignore mode)...
C 26808,3 ...
C 26811,1 Return
C 26812,2 Set Player Attribute Update Flag (Player Attribute Update mode)...
C 26814,2 ...and return
C 26816,3 Play upward scale sound
C 26819,2 Draw Window 8...
C 26821,3 ...
C 26824,3 Point HL at "Redefine Keys Window" text...
C 26827,3 ...and print to screen
C 26830,3 Redefine keyboard controls
C 26833,3 Clear Stack and Prepare to Save Data
C 26836,3 Jump to ROM routine to save game data
C 26839,1 Return (to start of Main Game Loop - see PUSH at #R26862)
C 26840,3 Clear Stack and Prepare to Load Data
C 26843,1 Set Carry Flag as we are LOADing, not VERIFYing
C 26844,3 Set Stack Pointer to 22528
C 26847,3 Jump to ROM routine to load game data
C 26850,4 Restore Stack Pointer from 23613 (set to 26240 in routine at #R26855)
C 26854,1 Return (to start of Main Game Loop - see PUSH at #R26862)
c 26855 Clear Stack and Prepare to Load Data
D 26855 Used by the routine at #R26745.
C 26855,1 Remove return address of calling routine from top of Stack
C 26856,3 Set Stack Pointer to 26240
C 26859,3 Load HL with start address of Main Game Loop routine
C 26862,1 Store HL (address of Main Game Loop)
C 26863,4 Store Stack Pointer address at 23613 (System Variable ERR SP)
C 26867,1 Store HL (return address in routine that called this routine)
C 26868,3 Play upward scale sound
C 26871,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 26874,4 Set base address for load to 23296
C 26878,3 Set data length to 23808
C 26881,2 Load A with 255 to denote a data block
C 26883,1 Return
c 26884 Draw Input Device Selection Menu and Update Currently Selected Input Device
D 26884 Used by the routine at #R26670.
C 26884,3 Clear Display File
C 26887,2 Load system variable ATTR T with 70 (yellow INK, black PAPER, BRIGHT)...
C 26889,3 ...
C 26892,3 ...and flood Attribute File with this attribute
C 26895,2 Draw Window 5 ("KNIGHT-TYME A NEW GRAPHIC ADVENTURE...")...
C 26897,3 ...
C 26900,3 Point HL at "KNIGHT-TYME A NEW GRAPHIC ADVENTURE..." text...
C 26903,3 ...and print to screen
C 26906,2 Draw Control Selection Menu Window...
C 26908,3 ...
C 26911,3 Point HL at Initial Control Selection Menu text...
C 26914,3 ...and print to screen
C 26917,3 Play downward scale sound
C 26920,3 Load index of currently selected input device into A
C 26923,3 Update currently selected input device and return
c 26926 Display Instructions Windows
D 26926 Used by the routines at #R26670 and #R30968.
C 26926,2 Load A with 7 (index of window to draw)
C 26928,3 Point HL at Instructions Text
C 26931,3 Print text at HL in Window 07
C 26934,2 Draw Window 8...
C 26936,3 ...
C 26939,3 Point HL at "THE KEYS ARE :-..." text...
C 26942,3 ...and print to screen
C 26945,3 Print current control keys to screen
C 26948,3 Play upward scale sound
C 26951,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 26954,2 Prepare to draw Window 9
C 26956,3 Point HL at Cast of Characters text
C 26959,3 Skip ahead to #R26962 (see trivia)
C 26962,1 Store HL (pointer to text to print)
C 26963,3 Draw current Instructions Window
C 26966,1 Restore HL (pointer to text to print)
C 26967,3 Print text
C 26970,3 Play upward scale sound
C 26973,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed and return
c 26976 Set Border to Black and Clear Temporary Storage Area of Memory
D 26976 Used by the routine at #R26670.
C 26976,2 Set System Variable BORDCR to 7 (black BORDER, white INK, black PAPER)...
C 26978,3 ...
C 26981,1 Set border to black and reset EAR and MIC bits...
C 26982,2 ...
C 26984,3 Load memory addresses from #R23296 to 23551 with zeroes...
C 26987,3 ...
C 26990,3 ...
C 26993,1 ...
C 26994,2 ...
C 26996,1 Return
c 26997 Initialise Data and Start a New Game
D 26997 Used by the routine at #R26670.
C 26997,2 Set Current Starship Location in " LOCATION : [name of Current Starship Location]" text at #R38298...
C 26999,3 ...to the name of the Current Starship Location (28)
C 27002,3 Play upward scale sound
C 27005,2 Set ATTR T system variable to 70 (yellow INK, black PAPER, BRIGHT)...
C 27007,3 ...
C 27010,3 Copy data from #R37329 - 37472 (USS Pisces' Initial Stats, Characters' Initial Stats, Table of Object Properties for first four objects)...
C 27013,3 ...to #R25012 - 25155 (USS Pisces' Current Stats, Characters' Current Stats, Unused Data Block)...
C 27016,3 ...
C 27019,2 ...
C 27021,3 Copy data from #R36797 - 36804 (Magic Knight's Initial Data)...
C 27024,3 ...to #R25156 - 25163 (Magic Knight's Current Data)...
C 27027,2 ...
C 27029,3 Copy data from #R36805 - 36884 (Characters' Initial Inventories and part of Characters' Initial Positions)... (see trivia)
C 27032,3 ...to #R25164 - 25243 (Characters' Current Inventories and Unused Data Block)...
C 27035,2 ...
C 27037,3 Copy data from #R36875 - 36916 (Characters' Initial Positions and first two entries in Objects' Initial Positions)... (see trivia)
C 27040,3 ...to #R25244 - 25285 (Characters' Current Positions and Unused Data Block)...
C 27043,2 ...
C 27045,3 Copy data from #R36911 - 37021 (Objects' Initial Positions)...
C 27048,3 ...to #R25286 - 25396 (Objects' Current Positions)...
C 27051,2 ...
C 27053,3 Copy data from #R53361 - 53410 (Initial Planetary Data)...
C 27056,3 ...to #R25397 - 25446 (Current Planetary Data)...
C 27059,2 ...
C 27061,1 Load HL with value in DE (25447)...
C 27062,1 ...
C 27063,1 Advance DE by one byte
C 27064,3 Load memory locations at #R25447 - 25462 with zeroes...
C 27067,2 ...
C 27069,2 ...
C 27071,3 Set Magic Knight's available action flags and validate I.D. Card if appropriate
C 27074,1 Load A and HL with zero...
C 27075,1 ...
C 27076,1 ...
C 27077,3 Interrupt Routine Flags
C 27080,3 Set system variable FRAMES to zero...
C 27083,3 ...
C 27086,1 Set Unknown / Unused Flag 2 to 1...
C 27087,3 ...
C 27090,2 Set number of days left to 30...
C 27092,3 ...
C 27095,2 Set USS Pisces' location to Brightstar (13)...
C 27097,3 ...
C 27100,1 Load BC with 26 (A x 2)...
C 27101,1 ...
C 27102,2 ...
C 27104,3 Point HL at first attribute entry in Table of Current Planetary Data...
C 27107,1 ...and add BC as offset to point to data for Brightstar
C 27108,1 Load A with attribute of Brightstar planet...
C 27109,3 ...and set colour of planet on viewscreen accordingly
C 27112,3 Set right exit from USS Pisces, 5 (The Airlock) to USS Pisces, 6 (The Life Boat)...
C 27115,3 ...and left exit from USS Pisces, 6 (The Life Boat) to USS Pisces, 5 (The Airlock)
C 27118,3 Set Room Layout Data Pointer address for Retreat, 2 to address of "With Barrier" version of Room 09 (#R50956)...
C 27121,3 ...
C 27124,2 Move Magic Knight into USS Pisces, 2 (The Transporter Room), draw room and initialise room-specific data...
C 27126,3 ...
C 27129,4 Set Game In Progress Flag (IY = 23610)
C 27133,3 Jump into Main Game Loop (process keyboard input and move Magic Knight or enter menus)
c 27136 Main Game Loop - Process Keyboard Input and Move Magic Knight or Enter Menus
D 27136 Used by the routines at #R29330 and #R55887.
C 27136,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
N 27139 This entry point is used by the routine at #R26997.
C 27139,3 Set Magic Knight's velocity to zero, if appropriate move to new room, execute room-specific routine
C 27142,3 Handle Magic Knight's fall
C 27145,2 Reset Bit 7 in A to select the keyboard half-row SPACE - B
C 27147,2 Read the keyboard
C 27149,1 Reset Carry Flag if SPACE pressed, else set it
C 27150,2 SPACE was not pressed, so skip ahead to #R27163
C 27152,2 Reset bit 0 in A to select the keyboard half-row SHIFT - V
C 27154,2 Read the keyboard
C 27156,1 Reset Carry Flag if SHIFT pressed, else set it
C 27157,3 Point HL at "BREAK KEY PRESSED" text
C 27160,3 If SHIFT was pressed (i.e. SHIFT-SPACE, or BREAK) jump to "Game over" window routine and return to Control Selection Menu
C 27163,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 27166,3 Capture keyboard or joystick input loading result into A
C 27169,2 If "left" pressed then...
C 27171,2 Skip ahead to "move left" subroutine
C 27173,2 If "right" pressed then...
C 27175,2 Skip ahead to "move right" subroutine
C 27177,2 If "up" pressed then...
C 27179,3 Skip ahead to "jump" subroutine
C 27182,2 If "down" pressed then...
C 27184,3 ...select Magic Knight's Room and USS Pisces' Current Location if Cheat / Debug Mode is enabled
C 27187,2 If "fire" pressed then...
C 27189,3 ...display and handle main in-game menu
C 27192,3 Erase Magic Knight from display, advance his current position then redraw
C 27195,3 Loop back for next key / control press
N 27198 Left Pressed
C 27198,3 If "Magic Knight Can't Move Left" flag is set...
C 27201,2 ...
C 27203,2 ...then loop back to start of keyboard check routine
C 27205,1 Switch AF and AF'
C 27206,2 Set Magic Knight Facing Left Flag...
C 27208,3 ...
C 27211,2 Set Magic Knight's x-velocity to minus 2...
C 27213,3 ...
C 27216,3 Prepare to set Magic Knight's x-velocity to minus 2
C 27219,1 Switch AF and AF' (A now holds pressed controls bitmap)
C 27220,2 If "up" was also pressed...
C 27222,2 ...then skip ahead to #R27256 (jumping subroutine)
C 27224,1 Set Magic Knight's current y-velocity to zero...
C 27225,3 ...
C 27228,3 Erase Magic Knight from display, advance his current position then redraw
C 27231,3 Handle Magic Knight's fall
C 27234,2 Loop back for next key / control press
N 27236 Right Pressed
C 27236,3 If "Magic Knight Can't Move Right" flag is set...
C 27239,2 ...
C 27241,2 ...then loop back to start of keyboard check routine
C 27243,1 Switch AF and AF'
C 27244,1 Reset Magic Knight Facing Left Flag...
C 27245,3 ...
C 27248,2 Jump to #R27213, setting Magic Knight's x-velocity to 2...
C 27250,2 ...
N 27252 Up Pressed
C 27252,1 Prepare to set Magic Knight's x-velocity to zero...
C 27253,3 ...
C 27256,3 Point HL at start of Magic Knight's y-velocities sequence table
C 27259,3 Store current position in Magic Knight's y-velocities sequence table at 37072
C 27262,3 Load A with Magic Knight's current y-coordinate (pixels)
C 27265,2 If y-coordinate is less than 8...
C 27267,3 ...then jump to #R27336 (exit loop as Magic Knight can't get any higher!)
C 27270,3 Load HL with current position in Magic Knight's y-velocities sequence table
C 27273,1 Load the current y-velocity in the sequence into A
C 27274,2 Negate (as Magic Knight is jumping upwards)
C 27276,1 If A is zero...
C 27277,2 ...jump to #R27336 (exit loop as we have reached the end of the sequence)
C 27279,3 Load A into Magic Knight's y-velocity
N 27282 The operand of the instruction at #R27282 represents the x-velocity value stored previously. This is modified by the instruction at #R27253.
C 27282,2 Set Magic Knight's x-velocity...
C 27284,3 ...
C 27287,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 27290,3 Load Magic Knight's x-velocity into B...
C 27293,1 ...
C 27294,3 Load Magic Knight movement flags into A
C 27297,1 Check:
C 27298,2 If x-velocity is -2 (left), and Magic Knight can't move left...
C 27300,3 ...then jump ahead to #R27342
C 27303,2 If x-velocity is -2 (left), and Magic Knight can't move left or right...
C 27305,3 ...then jump ahead to #R27342
C 27308,2 If x-velocity is +2 (right), and Magic Knight can't move left or right...
C 27310,3 ...then jump ahead to #R27342
C 27313,1 If x-velocity is +2 (right), and Magic Knight can't move right...
C 27314,3 ...then jump ahead to #R27342
C 27317,3 Kill Magic Knight's jump if he cannot vertically pass through a block above him
C 27320,1 Store AF (A = "MK's jump was impeded" flag)
C 27321,3 Erase Magic Knight from display, advance his current position then redraw
C 27324,1 Restore AF (A = "MK's jump was impeded" flag)
C 27325,2 If Magic Knight's jump was impeded by a block above him then jump to #R27336
C 27327,3 Set Magic Knight's velocity to zero, if appropriate move to new room, execute room-specific routine
C 27330,3 Load HL with current position in Magic Knight's y-velocities sequence table
C 27333,1 Advance to next y-velocity in the sequence
C 27334,2 Loop back to #R27259
C 27336,3 Handle Magic Knight's fall, preserving x-velocity
C 27339,3 Loop back to start of keyboard check routine
C 27342,1 Set Magic Knight's x-velocity to zero...
C 27343,3 ...
C 27346,3 Prepare to set Magic Knight's x-velocity to zero
C 27349,3 Jump back to #R27317
c 27352 Handle Magic Knight's Fall, Preserving x-Velocity
D 27352 Used by the routine at #R27136.
C 27352,3 Load Magic Knight's stored x-velocity
C 27355,2 Handle Magic Knight's fall
c 27357 Handle Magic Knight's Falls
D 27357 Used by the routine at #R27136.
C 27357,1 Set A to zero
N 27358 This entry point is used by the routine at #R27352.
C 27358,3 Prepare to set Magic Knight's x-velocity to A
C 27361,3 Point HL at end of table of y-velocities sequence for jumping and falling
C 27364,3 Store current position at #R37072
C 27367,3 If Magic Knight's movement flags are reset...
C 27370,1 ...
C 27371,2 ...then skip ahead to #R27377
C 27373,1 Prepare to set Magic Knight's x-velocity to zero...
C 27374,3 ...
C 27377,3 Load current position in y-velocities table into HL
C 27380,1 Load current y-velocity from table into A
C 27381,2 If velocity is 7...
C 27383,2 ...then skip ahead to #R27389
C 27385,1 Step pointer back one byte in y-velocities table
C 27386,3 Store pointer
C 27389,3 Load last y-velocity read from table into Magic Knight's y-velocity
N 27392 The operand of the instruction at #R27392 represents the x-velocity value stored previously. This is modified by the instructions at #R27358, #R27374 and #R27502.
C 27392,2 Set Magic Knight's x-velocity...
C 27394,3 ...
C 27397,3 Load A with Magic Knight's current x-coordinate (pixels)
C 27400,2 Add 4 to x-coordinate
C 27402,3 Divide x-coordinate by eight, rounding down to nearest integer
C 27405,1 Load result (Magic Knight's x-coordinate in characters) into C, setting B to zero...
C 27406,2 ...
C 27408,3 Load A with Magic Knight's current y-coordinate (pixels)
C 27411,2 If y-coordinate is a multiple of eight...
C 27413,2 ...then skip ahead to #R27417
C 27415,2 Set B to 8, as we need to look one character block lower due to Magic Knight spanning five, rather than four, characters [y-coordinate is not a multiple of eight]
C 27417,3 Load A with Magic Knight's current y-coordinate (pixels)
C 27420,1 Add B to current y-coordinate (i.e. y-coordinate of highest full character block spanned by Magic Knight)
C 27421,2 Add 32 (as Magic Knight is 32 pixels high, so now y-coordinate of highest full character block not occupied by Magic Knight)
C 27423,3 Divide A by eight, rounding down to nearest integer
C 27426,1 Load result (y-coordinate in characters) into B
C 27427,3 Point HL at Terrain Interaction Data for character coordinates x=C, y=B (block that Magic Knight is "falling through")
C 27430,1 If this block, or the one to the right of it cannot be passed vertically (downwards)...
C 27431,1 ...(i.e. Magic Knight has landed)...
C 27432,1 ...
C 27433,2 ...
C 27435,2 ...then skip ahead to #R27476
C 27437,3 Kill Magic Knight's x-velocity if he cannot horizontally pass through a block beside him
C 27440,3 Load Magic Knight's x-velocity into B...
C 27443,1 ...
C 27444,3 Load Magic Knight's movement flags into A
C 27447,1 Check:
C 27448,2 If x-velocity is -2 (left), and Magic Knight can't move left...
C 27450,3 ...then jump ahead to #R27498
C 27453,2 If x-velocity is -2 (left), and Magic Knight can't move left or right...
C 27455,3 ...then jump ahead to #R27498
C 27458,2 If x-velocity is +2 (right), and Magic Knight can't move left or right...
C 27460,3 ...then jump ahead to #R27498
C 27463,1 If x-velocity is +2 (right), and Magic Knight can't move right...
C 27464,3 ...then jump ahead to #R27498
C 27467,3 Erase Magic Knight from display, advance his current position then redraw
C 27470,3 Set Magic Knight's velocity to zero, if appropriate move to new room, execute room-specific routine
C 27473,3 Loop back to #R27367
C 27476,3 Load A with Magic Knight's current y-coordinate (pixels)
C 27479,2 Retain only pixel-within-character component (e.g. 5 pixels down the pair of character blocks)
C 27481,2 Negate (i.e. -5 pixels)
C 27483,2 Retain only pixel-within-character component (e.g. 3 pixels up the pair of character blocks, or 3 pixels down to the ground)
C 27485,3 Set Magic Knight's y-velocity so that it will take his feet to the ground
C 27488,3 Erase Magic Knight from display, advance his current position then redraw
C 27491,3 Set Magic Knight's x- and y-velocities to zero...
C 27494,3 ...
C 27497,1 Return (Magic Knight has landed)
C 27498,1 Set Magic Knight's x-velocity to zero...
C 27499,3 ...
C 27502,3 Prepare to set Magic Knight's x-velocity to zero
C 27505,3 Loop back to #R27467
c 27508 Kill Magic Knight's x-Velocity if he Cannot Horizontally Pass Through a Block Beside Him
D 27508 Used by the routines at #R27136 and #R27357.
C 27508,3 Load B with Magic Knight's "temporary store" movement flags...
C 27511,1 ...
C 27512,3 Load Magic Knight's x-coordinate into A
C 27515,2 If x-coordinate is less than 5...
C 27517,3 ...then jump ahead to #R27527
C 27520,2 If x-coordinate is greater than 230...
C 27522,3 ...then jump ahead to #R27527
C 27525,2 Set B (Magic Knight's Temporary Store Movement Flags) to zero (i.e. Magic Knight is not at the outer edges of his current room, so can move both left and right)
C 27527,1 Load Magic Knight's Temporary Store Movement Flags into A
C 27528,3 Set Magic Knight's movement flags
C 27531,3 Load Magic Knight's y-coordinate into B
C 27534,1 ...
C 27535,3 Add Magic Knight's y-velocity to y-coordinate in A...
C 27538,1 ...
C 27539,3 Store this new (predicted) y-coordinate at #R23483
C 27542,2 Set C to 4 (as Magic Knight is normally four characters tall)
C 27544,2 If predicted y-coordinate is divisible by eight...
C 27546,2 ...then skip ahead to #R27549...
C 27548,1 ...else Magic Knight must be airborne and at non-integer y-coordinate, and so spans five character blocks rather than four
C 27549,1 Load A with number of vertical characters spanned by Magic Knight...
C 27550,3 ...and update instructions at #R27581...
C 27553,3 ...and #R27620 with this value
C 27556,3 Load Magic Knight's current x-coordinate into C...
C 27559,1 ...
C 27560,3 Add Magic Knight's x-velocity to x-coordinate in A...
C 27563,1 ...
C 27564,3 Store this new (predicted) x-coordinate at #R23482
C 27567,3 Divide predicted x-coordinate by eight, rounding down to nearest integer...
C 27570,1 ...and load into C
C 27571,3 Load predicted y-coordinate into A...
C 27574,3 ...divide it by eight, rounding down to nearest integer...
C 27577,3 ...store back at #R23483...
C 27580,1 ...and load into B
N 27581 The operand of the instruction at #R27581 represents number of characters spanned by Magic Knight, vertically. This is modified by the instruction at #R27550.
C 27581,2 Load number of characters (vertically) to check for impassibility
C 27583,1 Store remaining number of character blocks spanned by Magic Knight vertically to check
C 27584,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 27587,2 If Bit 6 of terrain data is set (i.e. Magic Knight cannot pass block horizontally)...
C 27589,2 ...then jump ahead to #R27598
C 27591,1 Advance check to next character down
C 27592,1 Restore remaining number of character blocks spanned by Magic Knight vertically to check
C 27593,1 Decrease count of remaining character blocks by one
C 27594,2 Loop back to #R27583 to check next block down
C 27596,2 Skip over setting Magic Knight's Cannot Move Left Flag as there are no obstructions to the left
C 27598,1 Restore AF
C 27599,3 Set "Magic Knight Cannot Move Left" Flag...
C 27602,2 ...
C 27604,3 ...
C 27607,3 Load Magic Knight's predicted x-coordinate (pixels) into A...
C 27610,2 ...and add 15...
C 27612,3 ...divide by eight, rounding down to nearest integer...
C 27615,1 ...and load into C
C 27616,3 Load Magic Knight's predicted y-coordinate (chars) into B...
C 27619,1 ...
N 27620 The operand of the instruction at #R27620 represents number of characters spanned by Magic Knight, vertically. This is modified by the instruction at #R27553.
C 27620,2 Load number of characters (vertically) to check for impassibility
C 27622,1 Store AF (remaining number of vertical characters to check for impassibility)
C 27623,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 27626,2 If Bit 6 is set (i.e. Magic Knight cannot pass block horizontally)...
C 27628,2 ...jump ahead to #R27637
C 27630,1 Increase y-coordinate by one character
C 27631,1 Restore AF
C 27632,1 Decrease number of remaining blocks to check
C 27633,2 If number of remaining blocks to check is not zero then loop back to 27622
C 27635,2 Exit routine
C 27637,1 Restore AF
C 27638,3 Set "Magic Knight Cannot Move Right" flag...
C 27641,2 ...
C 27643,3 ...
C 27646,1 Return
c 27647 Kill Magic Knight's Jump if he Cannot Vertically Pass Through a Block Above Him
D 27647 Used by the routine at #R27136. Output: A  Zero (if Magic Knight's jump was not impeded) or 1 (if the jump was impeded)
C 27647,3 Load Magic Knight's current y-coordinate into B...
C 27650,1 ...
C 27651,3 Load A with Magic Knight's y-velocity
C 27654,1 Add y-velocity to y-coordinate in A
C 27655,3 Divide A by eight, rounding down to nearest integer
C 27658,1 Load Magic Knight's y-coordinate (CHARS) into B
C 27659,3 Load Magic Knight's current x-coordinate into A
C 27662,2 Add 4 to x-coordinate (to get point roughly quarter of the way through Magic Knight's total width)
C 27664,3 Divide A by eight, rounding down to nearest integer
C 27667,1 Load Magic Knight's current x-coordinate (CHARS) into C
C 27668,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 27671,2 If Bit 4 of Magic Knight's current position's terrain data (block is impassable vertically, upwards) is set then...
C 27673,2 ...kill Magic Knight's y-velocity and exit routine
C 27675,1 Advance to next character block along in "terrain interaction data"
C 27676,2 If Bit 4 of this position's terrain data (block is impassable vertically, upwards) is set then...
C 27678,2 ...kill Magic Knight's y-velocity and exit routine
C 27680,1 Advance y-coordinate by one character (to get point roughly three quarters of the way through Magic Knight's total width)
C 27681,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 27684,2 If Bit 4 of this position's terrain data (block is impassable vertically, upwards) is set then...
C 27686,2 ...kill Magic Knight's y-velocity and exit routine
C 27688,1 Advance to next character block along in "terrain interaction data"
C 27689,2 If Bit 4 of this position's terrain data (block is impassable vertically, upwards) is set then...
C 27691,2 ...kill Magic Knight's y-velocity and exit routine
C 27693,1 Set A to zero, as jump was not impeded
C 27694,1 Return
C 27695,1 Set Magic Knight's y-velocity to zero...
C 27696,3 ...
C 27699,2 Set A to one
C 27701,1 Reset zero flag
C 27702,1 Return
c 27703 Draw Top In-Game Window
D 27703 Used by the routines at #R27762 and #R31688.
C 27703,2 Check if Magic Knight is carrying the Mirror (35)...
C 27705,3 ...
C 27708,3 Point HL at Info Window Text (not carrying Mirror version)
C 27711,2 If Magic Knight is not carrying the Mirror then skip ahead to #R27716
C 27713,3 Point HL at Info Window Text (carrying Mirror version)
C 27716,1 Store HL (pointer to text to print)
C 27717,2 Draw Window 1...
C 27719,3 ...
C 27722,3 Load HL with Display File address corresponding to (10, 5) (characters)...
C 27725,3 ...and move Bitmap Virtual Text Cursor here
C 27728,3 Point HL at "KNIGHT-TYME" text...
C 27731,3 ...and print to screen
C 27734,3 Load HL with Display File address corresponding to (1, 1) (characters)...
C 27737,3 ...and move Bitmap Virtual Text Cursor here
C 27740,1 Store HL (pointer to text to print)
C 27741,3 Print window text
C 27744,3 Draw Strength Bar at top of screen
C 27747,3 Draw objects in Magic Knight's inventory if he is carrying the Mirror then return
c 27750 Print "KNIGHT-TYME" Text at Bottom of Command Summary Window
D 27750 Used by the routine at #R54333.
C 27750,3 Load HL with Display File address corresponding to (10, 5) (characters)...
C 27753,3 ...and move Bitmap Virtual Text Cursor here
C 27756,3 Point HL at "KNIGHT-TYME" text...
C 27759,3 ...and print to screen, then return
c 27762 Move Magic Knight into Room A, Draw Room, Objects and Characters and Initialise Room-Specific Data
D 27762 Used by the routines at #R26997 and #R32252. Input:  A  (entry at #R27762 only) Index of room to move Magic Knight into
C 27762,3 Update Magic Knight's current room to be room index passed to this routine in A
N 27765 This entry point is used by the routines at #R27136, #R28323, #R28506, #R28554, #R31688, #R32252, #R32895 and #R55814.
C 27765,3 Load Magic Knight's current strength into A...
C 27768,1 ...and if not zero...
C 27769,2 ...then skip ahead to #R27813
C 27771,2 If Magic Knight is carrying the McTablet Food (14)...
C 27773,3 ...
C 27776,2 ...then skip ahead to #R27784
C 27778,3 Point HL at "YOU DIED OF EXHAUSTION" text
C 27781,3 If Magic Knight is not carrying the McTablet Food then jump to "Game over" window routine and return to Control Selection Menu
C 27784,3 Point HL at "YOU HAD TO EAT SOME OF YOUR OWN MCTABLETS..." text
C 27787,3 Adjust height of window 13 to accommodate text...
C 27790,3 ...
C 27793,1 Store HL (pointer to start of actual text)
C 27794,2 Draw Window 13...
C 27796,3 ...
C 27799,1 Restore HL (pointer to start of actual text)
C 27800,3 Print text at HL
C 27803,2 Set Magic Knight's current strength to 100...
C 27805,3 ...
C 27808,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 27811,2 Skip ahead to #R27817
C 27813,1 Decrease Magic Knight's current strength by one...
C 27814,3 ...
C 27817,3 Draw Top In-Game Window
C 27820,3 Load A with Magic Knight's current room
C 27823,2 Clear all but the lowest two bits to leave a value 0-3...
C 27825,2 ...add this to 68...
C 27827,3 ...and set the border attribute of Window 1 to this value
C 27830,3 Load A with Magic Knight's current room...
C 27833,1 ...increase by one...
C 27834,2 ...clear all but the lowest two bits to leave a value 0-3...
C 27836,2 ...add this to 68...
C 27838,3 ...and set the border attribute of Window 15 to this value
C 27841,3 Load character rows 0-5 in Terrain Interaction Table with 254...
C 27844,3 ...i.e. prevent Magic Knight jumping above ceilings...
C 27847,3 ...
C 27850,2 ...
C 27852,2 ...
C 27854,3 Load character rows 6-22 in Terrain Interaction Table with 0...
C 27857,2 ...i.e. allow Magic Knight to pass through freely...
C 27859,2 ...
C 27861,3 Load character row 23 in Terrain Interaction Table with 254...
C 27864,2 ...i.e. prevent Magic Knight falling through floors...
C 27866,2 ...
C 27868,3 Load A with Magic Knight's current room
C 27871,3 Point HL at start of Table of Room Layout Data Pointers
C 27874,3 Load address of layout data for Magic Knight's current room into HL
C 27877,1 Store HL (pointer to room layout data for Magic Knight's current room)
C 27878,3 Clear Display File Below 7th Character Row (Play Area)
C 27881,1 Set ATTR T system variable into 0 (black INK, black PAPER)...
C 27882,3 ...
C 27885,1 Copy this attribute into both bytes of HL...
C 27886,1 ...
C 27887,3 ...wait for interrupt then flood 7th - 23rd rows of Attribute File with this attribute
C 27890,1 Restore HL (pointer to room layout data for Magic Knight's current room)
C 27891,3 Store address of start of room layout data by modifying instruction at #R27985
N 27894 This entry point is used by the routines at #R27934, #R28730, #R28753, #R28766 and #R28785.
C 27894,1 Read byte of room layout data
C 27895,1 If byte is a zero (i.e. marker for end of layout data)...
C 27896,3 ...then draw floor, paint attributes / Terrain Interaction Data, draw MK, characters and objects then return
C 27899,2 If byte is less than 251...
C 27901,3 ...then skip ahead to #R27934 (read layout parameters and draw graphic in place, then jump back to #R27894)
C 27904,2 If byte is 255 (print run of UDG)...
C 27906,3 ...then jump to #R28730 (read start co-ordinates, repeat count and UDG code, print run of UDGs, then jump back to #R27894)
C 27909,2 If byte is 254 (print a single UDG)...
C 27911,3 ...then jump to #R28753 (read co-ordinates and UDG code, print the UDG, then jump back to #R27894)
C 27914,2 If byte is 253 (draw a line)...
C 27916,3 ...then jump to #R28766 (draw a line, then jump back to #R27894)
C 27919,2 If byte is 252 (draw a horizontal line)...
C 27921,3 ...then jump to #R28785 (draw a horizontal line, then jump back to #R27894)
C 27924,2 If byte is not 251 (used to draw walls)...
C 27926,2 ...then skip ahead to #R27934 (read layout parameters and draw graphic in place, then jump back to #R27894)
C 27928,3 Advance HL by six bytes to next entry in room layout data...
C 27931,1 ...
C 27932,2 Loop back to #R27894 for next byte of room layout data
c 27934 Room Drawing (001 - 250) - Read Layout Parameters and Draw Graphic in Place
D 27934 Used by the routine at #R27762. Input:  A  Index of graphic to draw HL Current position in Room Layout Data
C 27934,1 Advance HL by three bytes to x- and y-coordinates...
C 27935,1 ...
C 27936,1 ...
C 27937,1 Load x- and y-coordinates (characters) for graphic into DE...
C 27938,1 ...
C 27939,1 ...
C 27940,1 Advance HL to Mirror Options...
C 27941,1 ...and load into C
C 27942,1 Advance HL to next byte (start of next entry) in Room Layout Data
C 27943,1 Store HL (current position in Room Layout Data)
C 27944,1 Swap DE (now current position in Room Layout Data) and HL (x- and y-coordinates of graphic to draw)
C 27945,3 Read Graphic Definition from Room Layout Data and Draw
C 27948,1 Restore HL (current position in Room Layout Data)
C 27949,2 Loop back to #R27894 for next byte of room layout data
c 27951 Room Drawing (000) - Draw Floor, Paint Attributes / Terrain Interaction Data, Draw MK, Characters and Objects then Return
D 27951 Floods 7th - 23rd rows of Attribute File with attribute value in byte at HL+1.
C 27951,1 Advance HL to room attribute...
C 27952,1 ...load into A...
C 27953,3 ...and store at #R23446
C 27956,1 Advance HL to floor attribute
C 27957,1 Store HL (points to floor attribute data)
C 27958,1 Load room attribute into both bytes of HL...
C 27959,1 ...
C 27960,3 Wait for interrupt then flood 7th - 23rd rows of Attribute File with attribute in HL
C 27963,3 Load HL with Display File address corresponding to (0, 23) (characters)...
C 27966,3 ...and move Bitmap Virtual Text Cursor here
C 27969,1 Restore HL (points to floor attribute data)
C 27970,1 Load floor attribute into A...
C 27971,3 ...and set ATTR T system variable to this value
C 27974,1 Advance HL to floor UDG code...
C 27975,1 ...load into A...
C 27976,3 ...and also load into operand of instruction at #R54234
C 27979,3 Load HL with 32 as we need to draw across 32 character blocks
C 27982,3 Draw run of 32 characters (i.e. draw the room's floor)
N 27985 The operand of the instruction at #R27985 represents the address of start of room layout data for the current room. This is modified by the instruction at #R27891.
C 27985,4 Load IX with start address of room layout data for current room
N 27989 This entry point is used by the routines at #R28095 and #R29060.
C 27989,3 Load first byte of room layout data instruction
C 27992,1 If this byte is zero (i.e. last entry so no more painting to do)...
C 27993,3 ...then draw all objects and characters in current room, draw Magic Knight, set action flags and validate I.D. card, then return
C 27996,2 If this byte is 252 or more...
C 27998,3 ...then skip IX over current Room Layout Data entry and jump back to #R27989 for next one
C 28001,2 Advance to RLE Attribute Data index and load into L...
C 28003,3 ...
C 28006,2 Advance to RLE Terrain Interaction Data index and load into E...
C 28008,3 ...
C 28011,2 Advance to x-coordinate...
C 28013,3 ...
C 28016,3 ...and store at #R23493
C 28019,2 Advance to y-coordinate...
C 28021,3 ...
C 28024,3 ...and store at #R23494
C 28027,2 Load H with zero (RLE Attribute Data index already in L)...
C 28029,1 ...and multiply by four...
C 28030,1 ...
C 28031,3 Point BC at start of Lookup Table for RLE Attribute Data (Room Layout Graphics)...
C 28034,1 ...and add HL as offset, loading result into HL
C 28035,1 Swap DE (now points to entry in RLE Attribute Lookup Table at #R51997) and HL (L now RLE Terrain Interaction Data index)
C 28036,2 Load H with zero (RLE Terrain Interaction Data index already in L)...
C 28038,1 ...and multiply by four...
C 28039,1 ...
C 28040,3 Point BC at start of Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics)...
C 28043,1 ...and add HL as offset, loading result into HL
C 28044,1 Swap DE (now points to entry in RLE Terrain Interaction Lookup Table at #R52397) and HL (now points to entry in RLE Attribute Lookup Table at #R51997)
C 28045,1 Store DE (pointer to required entry in RLE Terrain Interaction Lookup Table)
C 28046,2 Advance to Mirror Options...
C 28048,3 ...and load into A
C 28051,2 Store IX (current position in room layout data)
C 28053,1 If both mirror options are off...
N 28054 The following jumps handle the painting of the current room layout data entry's attribute and terrain interaction data. After this painting is completed, IX is advanced to the start of the next room layout data entry and a jump back to #R27989 occurs to process this next entry.
C 28054,3 ...then paint room layout data entry's attributes and terrain interaction data then process next entry
C 28057,2 If Apply Vertical Mirror selected...
C 28059,3 ...then paint room layout data entry's attributes and terrain interaction data applying vertical mirror, then process next entry
C 28062,2 If Apply Horizontal Mirror selected...
C 28064,3 ...then paint room layout data entry's attributes and terrain interaction data applying horizontal mirror, then process next entry
C 28067,3 Otherwise, paint room layout data entry's attributes and terrain interaction data applying horizontal and vertical mirrors, then process next entry
c 28070 Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint Attributes
D 28070 This routine is jumped to only by the routine at #R28938, which in turn is only jumped to by the routine at #R27951. In this latter routine, the instruction at #R28045 pushes DE (pointer to required entry in RLE Terrain Interaction Lookup Table) onto the stack, and then the instruction at #R28051 pushes IX (current position in room layout data) onto the stack.
C 28070,2 Restore IX (current position in room layout data)
C 28072,1 Restore HL (pointer to required entry in RLE Terrain Interaction Lookup Table, PUSHed by instruction at #R28045)
C 28073,3 Load Mirror Options into A
C 28076,2 Store IX (current position in room layout data)
C 28078,1 If both mirror options are off...
C 28079,3 ...then paint room layout data entry's Terrain Interaction Parameters, then advance to next entry
C 28082,2 If Apply Vertical Mirror selected...
C 28084,3 ...then paint room layout data entry's Terrain Interaction Parameters, applying vertical mirror, then advance to next entry
C 28087,2 If Apply Horizontal Mirror selected...
C 28089,3 ...then paint room layout data entry's Terrain Interaction Parameters, applying horizontal mirror, then advance to next entry
C 28092,3 Otherwise, paint room layout data entry's Terrain Interaction Parameters, applying horizontal and vertical mirrors, then advance to next entry
c 28095 Room Drawing Advance IX to Start of Next Room Layout Data Entry and Paint Terrain Interaction Data
D 28095 Used by the routine at #R29174.
C 28095,2 Restore IX (current position in room layout data, PUSHed by instruction at #R28076)
C 28097,2 Advance IX by one byte to start of next room layout data entry
C 28099,2 Process next room layout instruction (jump to #R27989)
c 28101 Draw All Objects and Characters in Current Room, Draw Magic Knight, Set Action Flags and Validate I.D. Card
D 28101 Used by the routine at #R27951. Output: A  Index of Magic Knight's current room
C 28101,3 If Magic Knight is on the bridge and USS Pisces is not at Gangrole then draw viewscreen starfield
C 28104,3 Print Magic Knight's current room's name at top of screen
C 28107,3 Prepare to execute room-specific routine for Magic Knight's current room
C 28110,3 Draw all objects in Magic Knight's current room
C 28113,3 Draw all characters in Magic Knight's current room
C 28116,3 Flag Magic Knight's current room as visited for scoring purposes...
C 28119,1 ...
C 28120,2 ...
C 28122,3 ...
C 28125,1 ...
C 28126,2 ...
C 28128,2 Set system variable BORDCR to 7...
C 28130,3 ...
C 28133,1 Set border to black and reset speaker state...
C 28134,2 ...
C 28136,2 Set ATTR T system variable to 71 (white INK, black PAPER, BRIGHT)...
C 28138,3 ...
C 28141,4 Reset Characters Free to Move Flag (IY = 23610)
C 28145,4 Reset Unknown Flag (IY = 23610)
C 28149,3 If Unknown / Unused Flag 2 is zero...
C 28152,1 ...
C 28153,2 ...then jump to #R28155 (see trivia)
C 28155,3 Store background attributes if appropriate, then draw Magic Knight to display
C 28158,1 Set Unknown / Unused Flag 2 to zero...
C 28159,3 ...
C 28162,3 If Draw Communicate Window / Face Flag is set then draw Communicate Window / Face
C 28165,3 Set Magic Knight's available action flags and validate I.D. Card if appropriate
C 28168,3 Load A with Magic Knight's current room
C 28171,1 Return
c 28172 Print Magic Knight's Current Room's Name at Top of Screen
D 28172 The Room Name Bar displayed on the 7th character row defaults to an attribute value of 71 as per the instruction at #R28172. However in cases where the current room has a name record defined in the table at #R42765, the attribute defined in that record will override this default attribute. Therefore, the default attribute is only visible in rooms without names.
C 28172,2 Set ATTR T system variable to 71 (white INK, black PAPER, BRIGHT)...
C 28174,3 ...
C 28177,3 Load HL with Display File address corresponding to (0, 6) (characters)...
C 28180,3 ...and move Bitmap Virtual Text Cursor here
C 28183,3 Load HL (repeat counter) with 32
C 28186,2 Set character to be repeated to 93 (body of "Room Name Bar")...
C 28188,3 ...
C 28191,3 Print the character 32 times across width of screen
C 28194,3 Point HL at start of table of room names
C 28197,3 Load B with Magic Knight's current room...
C 28200,1 ...
C 28201,3 Advance HL to name entry for Magic Knight's current room
C 28204,1 Load first value (attribute) into A
C 28205,1 If attribute value is zero (i.e. no room name defined)...
C 28206,1 ...then return
C 28207,3 Load system variable ATTR T to required attribute value
C 28210,1 Advance HL to string length data...
C 28211,1 ...and load into A
C 28212,1 Advance HL to first byte of string
C 28213,1 Store HL (pointer to first byte of room name string)
C 28214,2 Add 4 to the string's length to accommodate space, and "bar cap" characters (chars. 35 and 36) before and after...
C 28216,1 ...and load value into B
C 28217,2 Load A with width of screen (characters) minus length of room name string, spaces and bar caps...
C 28219,1 ...
C 28220,1 Divide value by two...
C 28221,2 ...and cap at 31
C 28223,1 Load this value (length of one half of Room Name Bar) into BC...
C 28224,2 ...
C 28226,3 Point HL at top pixel row of character block at coordinates (0, 6)
C 28229,1 Add value in BC as offset...
C 28230,3 ...and load this address into Bitmap Virtual Text Cursor
C 28233,3 Point HL at Attribute File address for character coordinates (0, 6)
C 28236,3 Point DE at Attribute File address for character coordinates (1, 6)
C 28239,3 Set repeat count to 31
N 28242 ATTR T is initially 71 (as set by instruction at #R28174) and may have been changed to a new value as specified in room name entry in table at #R42765
C 28242,3 Load A with system variable ATTR T
C 28245,1 Fill entire row in Attribute File with this attribute value...
C 28246,2 ...
C 28248,3 Point HL at text code for SPACE followed by Room Name Bar End Cap (Right)
C 28251,3 Print text at location HL to screen using full screen width
C 28254,1 Restore HL (pointer to first byte of room name string)
C 28255,3 Print text at location HL to screen using full screen width
C 28258,3 Point HL at text code for Room Name Bar End Cap (Left) followed by SPACE
C 28261,3 Print text at location HL to screen using full screen width and return
c 28264 Prepare to Execute Room-Specific Routine for Magic Knight's Current Room
D 28264 Used by the routine at #R28101.
C 28264,3 Load A with Magic Knight's current room
C 28267,3 Point HL at start of Table of Room-Specific Routine Addresses
C 28270,3 Advance HL to entry for Magic Knight's current room and load into HL
C 28273,3 Update jump in routine at #R28457 to execute room-specific routine
C 28276,1 Return
c 28277 Check Whether Magic Knight is Moving into a New Room and React if so
D 28277 Used by the routine at #R28457.
C 28277,3 Load A with Magic Knight's current x-coordinate (pixels)
C 28280,2 If less than 3...
C 28282,3 ...then skip to #R28323 (move Magic Knight one room to the left if possible then return)
C 28285,2 If 230 or more...
C 28287,3 ...then skip to #R28346 (move Magic Knight one room to the right if possible then return)
C 28290,1 Return
c 28291 Change Magic Knight's Current Room if Possible
D 28291 Used by the routines at #R28323 and #R28346. Input:  A  Magic Knight's new x-coordinate upon entering new room DE  Exit that Magic Knight is leaving old room from; either 0 (left exit) or 1 (right exit) Output: F  Zero Flag set if Magic Knight can't leave his current room, reset otherwise
C 28291,1 Store new x-coordinate for later
C 28292,1 Set Magic Knight's Temporary Movement Flags to zero (new room, so Magic Knight can move both left and right)...
C 28293,3 ...
C 28296,3 Point HL to Room Connectivity Data Table
C 28299,3 Load Magic Knight's current room's index into A...
C 28302,1 ...double it...
C 28303,1 ...and load into BC...
C 28304,2 ...
C 28306,1 Add BC as offset to HL
C 28307,1 Point to left or right exit from current room, as determined by DE
C 28308,1 Load new room number into A...
C 28309,2 ...and if this is 255 (i.e. Magic Knight can't leave his current room)...
C 28311,2 ...set Zero Flag and exit routine...
C 28313,3 ...else update Magic Knight's current room to be this new room index
C 28316,1 Restore new x-coordinate to B...
C 28317,1 ...and load back into A
C 28318,1 Reset Zero Flag
C 28319,1 Return
C 28320,1 Restore AF to BC...
C 28321,1 ...and load A with contents of B to restore to what it was on entering this routine
C 28322,1 Return
c 28323 Move Magic Knight One Room to the Left if Possible
D 28323 Used by the routine at #R28277. Input:  A  (Entry at #R28333 only) Magic Knight's new x-coordinate (pixels)
C 28323,3 Set DE to zero (dealing with current room's left exit)
C 28326,2 Load A with Magic Knight's new x-coordinate when he arrives in new room (228 is near right-hand side of room)
C 28328,3 Change Magic Knight's current room (if possible) based upon left exit of his current room
C 28331,2 If Magic Knight can't leave his current room then jump to #R28340
N 28333 This entry point is used by the routine at #R28346.
C 28333,3 Set Magic Knight's x-coordinate
C 28336,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 28339,1 Return
C 28340,2 Set Magic Knight's Temporary Movement Flags to 1 (Magic Knight can't move left because he can't leave his current room)...
C 28342,3 ...
C 28345,1 Return
c 28346 Move Magic Knight One Room to the Right if Possible
D 28346 Used by the routine at #R28277.
C 28346,3 Set DE to one (dealing with current room's right exit)
C 28349,2 Load A with Magic Knight's new coordinate when he arrives in new room (5 is near left-hand side of room)
C 28351,3 Change Magic Knight's current room (if possible) based upon right exit of his current room
C 28354,2 If Magic Knight's can't leave his current room then jump to #R28358
C 28356,2 Set Magic Knight's x-coordinate, draw the room and return
C 28358,2 Set Magic Knight's Temporary Movement Flags to 2 (Magic Knight can't move right because he can't leave his current room)...
C 28360,3 ...
C 28363,1 Return
c 28364 Draw all Characters in Magic Knight's Current Room
D 28364 Used by the routine at #R28101.
C 28364,4 Point IX at start of Table of Characters' Current Positions at #R25244
C 28368,3 Load B with 16 and C (current character) with 0 (see trivia)
C 28371,3 Load A with Magic Knight's current room
C 28374,3 If Magic Knight and current character are in the same room...
C 28377,3 ...then draw character with index C
C 28380,1 Increase C to advance to next character
C 28381,2 Advance IX to entry for next character...
C 28383,2 ...
C 28385,2 ...
C 28387,2 Loop back to #R28371 for next character
C 28389,1 Return
c 28390 Draw a character
D 28390 Used by the routine at #R28364. Input:  C  A character index IX  That character's entry in Table of Characters' Current Positions at #R25244
C 28390,1 Store BC
C 28391,2 Store IX
C 28393,1 Load A with character's index...
C 28394,2 ...and point HL at this character's Magic Level / Attribute value (in Characters' Current Stats Table)...
C 28396,3 ...
C 28399,1 Load character's Magic Level / Attribute into A...
C 28400,3 ...and modify instruction at #R28441 with this value
C 28403,1 Advance HL to Character Graphic Index...
C 28404,1 ...and load value into A
C 28405,1 If this is zero...
C 28406,2 ...then skip ahead to #R28428 (i.e. don't draw the character)
C 28408,3 Load C with character's x-coordinate (characters)
C 28411,3 Load B with character's y-coordinate (characters)
C 28414,2 Store IX (pointer to character's entry in Table of Characters' Current Positions)
C 28416,3 Draw the graphic with lookup index A at character coordinates (C, B) with width = 2 characters and height = 4 characters
C 28419,2 Restore IX (pointer to character's entry in Table of Characters' Current Positions)
C 28421,3 If Player Attribute Update Flag is set (Player Attribute Update mode)...
C 28424,1 ...
C 28425,3 ...then paint the character's attributes
C 28428,2 Restore IX
C 28430,1 Restore BC
C 28431,1 Return
c 28432 Paint a character's attributes
D 28432 Used by the routine at #R28390. Input:  IX  A character's entry in Table of Characters' Current Positions at #R25244
C 28432,3 Load C with character's x-coordinate (characters)
C 28435,3 Load B with character's y-coordinate (characters)
C 28438,3 Load HL with Attribute File address for coordinates (C, B)
N 28441 The operand of the instruction at #R28441 represents the character's magic level / attribute value. This is modified by the instruction at #R28400.
C 28441,2 Load A with Magic Level / Attribute value
C 28443,2 Load B with 4 (as characters are four characters high)
C 28445,1 Store BC (B = remaining number of character rows to paint)
C 28446,1 Paint character's attribute at coordinates (C, B)...
C 28447,1 ...
C 28448,1 ...and at coordinates (C + 1, B)
C 28449,3 Advance down one character row, and left one character to coordinates (C, B + 1)...
C 28452,1 ...
C 28453,1 Restore BC (B = remaining number of character rows to paint)
C 28454,2 Decrease remaining number of character rows to paint and loop back to #R28445
C 28456,1 Return
c 28457 Set Magic Knight's Velocity to Zero, if Appropriate Move to New Room, Execute Room-Specific Routine
D 28457 Used by the routines at #R27136 and #R27357.
C 28457,3 Set Magic Knight's current x- and y-velocities to zero...
C 28460,3 ...
C 28463,3 Check whether Magic Knight is moving into a new room and react if so
N 28466 The operand of the instruction at #R28466 (jump destination) is the address of a room-specific routine. This is modified by the instruction at #R28273.
C 28466,3 Jump to room-specific routine
c 28469 Room-Specific Routine Do Nothing
D 28469 Used by the routine at #R28457.
C 28469,1 Return
c 28470 Room-Specific Routine Go to Game Over Routine if Magic Knight is not Wearing the Cloak of Invisibility
C 28470,2 If Magic Knight is wearing the Cloak of Invisibility (01)...
C 28472,3 ...
C 28475,1 ...then return
C 28476,3 Point HL at "SECURITY SAW YOU..." text
C 28479,3 Jump to "Game over" window routine and return to Control Selection Menu
c 28482 Room-Specific Routine Go to Game Over Routine if Magic Knight is not Wearing the Pair of Boots
C 28482,2 If Magic Knight is wearing the Pair of Boots (22)...
C 28484,3 ...
C 28487,1 ...then return
C 28488,3 Point HL at "SECURITY HEARD YOU..." text
C 28491,3 Jump to "Game over" window routine and return to Control Selection Menu
c 28494 Room-Specific Routine Go to Game Over Routine if Magic Knight is not Wearing the Gas Mask
C 28494,2 If Magic Knight is wearing the Gas Mask (27)...
C 28496,3 ...
C 28499,1 ...then return
C 28500,3 Point HL at "THE GAS PENETRATED YOUR ARMOUR..." text
C 28503,3 Jump to "Game over" window routine and return to Control Selection Menu
c 28506 Room-Specific Routine Show Tyme Guardians' Warning Message if not Already Shown
C 28506,3 If Tyme Guardians' Warning Message Shown Flag is set...
C 28509,2 ...
C 28511,1 ...then return
C 28512,2 Set Tyme Guardians' Warning Message Shown Flag...
C 28514,3 ...
C 28517,3 Point HL at "A LOUD BOOMING VOICE..." text
C 28520,3 Adjust height of window 13 to accommodate text...
C 28523,3 ...
C 28526,1 Store HL (pointer to start of text to print)
C 28527,2 Draw Window 13...
C 28529,3 ...
C 28532,1 Restore HL (pointer to start of text to print)
C 28533,3 Print text to screen
C 28536,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 28539,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data and return
c 28542 Room-Specific Routine Go to Game Over Routine if Magic Knight is not Carrying the Golden Sundial of Alpha
C 28542,2 If Magic Knight is carrying the Golden Sundial of Alpha (13)...
C 28544,3 ...
C 28547,1 ...then return
C 28548,3 Point HL at "THE AUTO DEFENCE SYSTEMS HAVE REMOVED YOU..." text
C 28551,3 Jump to "Game over" window routine and return to Control Selection Menu
c 28554 Room-Specific Routine Show Tyme Guardians' Messages and Install Tyme Machine on USS Pisces
C 28554,3 If Tyme Machine Installed Flag is set...
C 28557,2 ...
C 28559,1 ...then return
C 28560,2 Set Tyme Machine Installed Flag...
C 28562,3 ...
C 28565,3 Increase Bonus Score by 5...
C 28568,2 ...
C 28570,3 ...
C 28573,2 Set right exit from USS Pisces, 5 (The Airlock) to USS Pisces, 6A (The Control Column)...
C 28575,3 ...
C 28578,3 Point HL at "THE TYME GUARDIANS ARE SHOCKED AT YOUR ARRIVAL..." text
C 28581,3 Adjust height of window 13 to accommodate text...
C 28584,3 ...
C 28587,1 Store HL (pointer to start of text to print)
C 28588,2 Draw Window 13...
C 28590,3 ...
C 28593,1 Restore HL (pointer to start of text to print)
C 28594,3 Print text to screen
C 28597,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 28600,3 Point HL at "YOU MUST RETURN TO YOUR OWN TIME..." text
C 28603,3 Adjust height of window 29 to accommodate text...
C 28606,3 ...
C 28609,1 Store HL (pointer to start of text to print)
C 28610,2 Draw Window 29...
C 28612,3 ...
C 28615,1 Restore HL (pointer to start of text to print)
C 28616,3 Print text to screen
C 28619,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 28622,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data and return
c 28625 Divide A by Eight, Rounding Down to Nearest Integer
D 28625 Used by the routines at #R27357, #R27508, #R27647, #R33757, #R34567 and #R35525.
C 28625,1 Divide by eight...
C 28626,1 ...
C 28627,1 ...
C 28628,2 ...and remove remainder
C 28630,1 Return
c 28631 Room Drawing Read Graphic Definition from Room Layout Data and Draw
D 28631 Used by the routines at #R27934, #R28696 and #R30145. Input:  A  Index of graphic to draw C  Mirror options (bit 0 = apply vertical mirror, bit 1 = apply horizontal mirror) H  y-coordinate (characters) L  x-coordinate (characters)
C 28631,1 Store BC (C = horizontal / vertical mirror options)
C 28632,1 Store HL (H = y-coordinate, L = x-coordinate)
C 28633,1 Load four times index of graphic to draw into HL...
C 28634,2 ...
C 28636,1 ...
C 28637,1 ...
C 28638,3 ...and add (in HL) to address of start of Graphics Data Lookup Table at #R55950 as an offset...
C 28641,1 ...
C 28642,1 Load width & height at this location into BC...
C 28643,1 ...
C 28644,1 ...
C 28645,1 ...
C 28646,1 Load address of graphic data into HL...
C 28647,1 ...
C 28648,1 ...
C 28649,1 ...
C 28650,3 ...and store at #R23447
C 28653,1 Restore HL (H = y-coordinate, L = x-coordinate)...
C 28654,3 ...and store at #R23493
C 28657,1 Add width and height to get coordinates (x+1, y+1) of bottom right of graphic to draw...
C 28658,3 ...and store at #R23495
C 28661,1 Restore BC (C = horizontal / vertical mirror options)
C 28662,1 If both mirror options are switched off...
C 28663,2 ...
C 28665,3 ...then skip ahead to #R28684
C 28668,2 If only the "apply vertical mirror" option is switched on...
C 28670,3 ...then skip ahead to #R28687
C 28673,2 If only the "apply horizontal mirror" option is switched on...
C 28675,3 ...then skip ahead to #R28690
C 28678,2 If both mirror options are switched on...
C 28680,3 ...then skip ahead to #R28693
C 28683,1 Return
C 28684,3 Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode off, draw the graphic and return
C 28687,3 Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode off, draw the graphic and return
C 28690,3 Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode on, draw the graphic and return
C 28693,3 Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode on, draw the graphic and return
c 28696 If Draw Communicate Window / Face Flag is Set then Draw Communicate Window / Face
D 28696 Used by the routine at #R28101.
C 28696,3 If Draw Communicate Window / Face Flag is reset...
C 28699,1 ...
C 28700,1 ...then return
C 28701,2 Draw Window 26...
C 28703,3 ...
C 28706,2 Load C with zero (Mirror Options = no mirror)
C 28708,2 Load A with 62 (index of Viewscreen Face graphic)
C 28710,3 Load H with 11 and L with 17 (y- and x-coordinates to draw)
C 28713,3 Draw Viewscreen Face graphic and return
c 28716 Wait for Interrupt then Flood 7th - 22nd Rows of Attribute File with Attribute in HL
D 28716 Used by the routines at #R27762 and #R27951. Input:  HL  Attribute to use
C 28716,1 Wait for interrupt
C 28717,4 Store stack pointer at #R35669
C 28721,3 Point stack pointer at start of last row of Attribute File
C 28724,3 Load B with 16 (repeat inner loop 16 times) and C with 2 (repeat outer loop twice)
C 28727,3 Clear 7th to 23rd rows of Attribute File
c 28730 Room Drawing (255) - Read Start Co-Ordinates, Repeat Count and UDG Code and Print Run of Characters
D 28730 Used by the routine at #R27762.
C 28730,3 Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout Data
C 28733,1 Load repeat count into B...
C 28734,1 ...and advance HL to next parameter
C 28735,1 Load UDG code to print into A...
C 28736,1 ...and advance HL to next parameter
C 28737,1 Store HL (current position in room layout data)
C 28738,1 Store BC (B = remaining number of UDGs to print)
C 28739,1 Store AF (A = UDG code to print)
C 28740,1 Store HL (current position in room layout data)
C 28741,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 28744,1 Restore HL (current position in room layout data)
C 28745,1 Restore AF (A = UDG code to print)
C 28746,1 Restore BC (B = remaining number of UDGs to print)
C 28747,2 Decrease remaining number of UDGs to print and loop back to #R28738
C 28749,1 Restore HL (current position in room layout data)
C 28750,3 Jump back to #R27894 for next byte of room layout data
c 28753 Room Drawing (254) - Read Start Co-Ordinates and UDG Code and Print the UDG
D 28753 Used by the routine at #R27762.
C 28753,3 Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout Data
C 28756,1 Load UDG code to print into A...
C 28757,1 ...and advance HL to next parameter
C 28758,1 Store HL (current position in room layout data)
C 28759,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 28762,1 Restore HL (current position in room layout data)
C 28763,3 Jump back to #R27894 for next byte of room layout data
c 28766 Room Drawing (253) - Draw a Line
D 28766 Used by the routine at #R27762.
C 28766,1 Advance data pointer by three bytes...
C 28767,1 ...
C 28768,1 ...
C 28769,1 Load x-coordinate of start of line into C
C 28770,1 Advance HL to y-coordinate of start of line...
C 28771,1 ...and load into B
C 28772,1 Advance HL to x-coordinate of end of line...
C 28773,1 ...and load into E
C 28774,1 Advance HL to y-coordinate of end of line...
C 28775,1 ...and load into D
C 28776,1 Advance HL to start of next room layout data entry
C 28777,1 Store HL (current position in room layout data)
C 28778,3 Draw a line from (C, B) to (E, D)
C 28781,1 Restore HL (current position in room layout data)
C 28782,3 Jump back to #R27894 for next byte of room layout data
c 28785 Room Drawing (252) - Draw a Horizontal Line
D 28785 Used by the routine at #R27762.
C 28785,1 Advance data pointer by three bytes...
C 28786,1 ...
C 28787,1 ...
C 28788,1 Transfer current position in room layout data from HL to IX...
C 28789,2 ...
C 28791,3 Load HL with y-coordinate (pixels)...
C 28794,2 ...
C 28796,1 ...and double
C 28797,3 Point BC at Table of Display File Addresses of Start of Each Pixel Row...
C 28800,1 ...and add doubled y-coordinate as offset in HL
C 28801,3 Load address corresponding to start of pixel row at this coordinate into HL
C 28804,2 Advance layout data pointer to next byte
C 28806,3 Load BC with x-coordinate of start of line (characters)...
C 28809,2 ...
C 28811,1 ...and add to HL as offset
C 28812,2 Advance layout data pointer to next byte
C 28814,3 Load A with x-coordinate of end of line (characters)
C 28817,1 Subtract start coord. from end coord. and add one to get width...
C 28818,1 ...
C 28819,1 ...and load into B
C 28820,2 Load A with 255 (i.e. all bits set)
C 28822,1 Write a row of eight set pixels to the Display File...
C 28823,1 ...and advance to next character to the right
C 28824,2 Decrease B (remaining number of character blocks to draw to) and loop back to #R28822
C 28826,2 Transfer current position in room layout data from IX to HL...
C 28828,1 ...
C 28829,1 Advance room layout data pointer to next instruction in layout data
C 28830,3 Jump back to #R27894 for next byte of room layout data
c 28833 Room Drawing - Move Virtual Bitmap Cursor to Co-Ordinates Specified in Layout Data
D 28833 Used by the routines at #R28730 and #R28753. Input:  HL  Pointer to an instruction in room layout data Output: HL  Pointer to next instruction in room layout data
C 28833,1 Advance HL by three bytes...
C 28834,1 ...
C 28835,1 ...
C 28836,1 Load x- and y-coordinates into BC...
C 28837,1 ...
C 28838,1 ...
C 28839,1 ...advancing to next position in room layout data
C 28840,1 Store HL (current position in room layout data)
C 28841,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 28844,1 Restore HL (current position in room layout data)
C 28845,1 Return
c 28846 Paint Room Layout Data Entry's Attributes, Applying Horizontal and Vertical Mirrors (Room Drawing)
D 28846 Used by the routine at #R27951. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) (at #R51997) Output: B y-coordinate of graphic's bottom C  x-coordinate of graphic's right
C 28846,1 Store HL (current entry in Lookup Table for RLE Attribute Data)
C 28847,3 Modify instruction at #R28984 to load x-coordinate of graphic's left edge into A...
C 28850,3 ...i.e. set end x-coordinate for painting right-to-left
C 28853,3 Modify instruction at #R28988 to jump to #R29026...
C 28856,3 ...i.e. advance HL up one character row in Attribute File
C 28859,2 Modify instruction at #R28991 with opcode 43 (DEC HL)...
C 28861,3 ...
C 28864,1 Restore HL (current entry in Lookup Table for RLE Attribute Data)
C 28865,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 28868,4 Load BC with coordinates of graphic's bottom-right
C 28872,2 Jump to attribute painting routine
c 28874 Paint Room Layout Data Entry's Attributes, Applying Horizontal Mirror (Room Drawing)
D 28874 Used by the routine at #R27951. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) (at #R51997) Output: B y-coordinate of graphic's bottom C  x-coordinate of graphic's left
C 28874,1 Store HL (current entry in Lookup Table for RLE Attribute Data)
C 28875,3 Modify instruction at #R28984 to load x-coordinate of graphic's right edge into A...
C 28878,3 ...i.e. set end x-coordinate for painting left-to-right
C 28881,3 Modify instruction at #R28988 to jump to #R29026...
C 28884,3 ...i.e. advance HL up one character row in Attribute File
C 28887,2 Modify instruction at #R28991 with opcode 35 (INC HL)...
C 28889,3 ...
C 28892,1 Restore HL (current entry in Lookup Table for RLE Attribute Data)
C 28893,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 28896,3 Load C with x-coordinate of graphic's left edge...
C 28899,1 ...
C 28900,3 Load B with y-coordinate of graphic's bottom edge...
C 28903,1 ...
C 28904,2 Jump to attribute painting routine
c 28906 Paint Room Layout Data Entry's Attributes, Applying Vertical Mirror (Room Drawing)
D 28906 Used by the routine at #R27951. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) (at #R51997) Output: B y-coordinate of graphic's top C  x-coordinate of graphic's right
C 28906,1 Store HL (current entry in Lookup Table for RLE Attribute Data)
C 28907,3 Modify instruction at #R28984 to load x-coordinate of graphic's left edge into A...
C 28910,3 ...i.e. set end x-coordinate for painting right-to-left
C 28913,3 Modify instruction at #R28988 to jump to #R29005...
C 28916,3 ...i.e. advance HL down one character row in Attribute File
C 28919,2 Modify instruction at #R28991 with opcode 43 (DEC HL)...
C 28921,3 ...
C 28924,1 Restore HL (current entry in Lookup Table for RLE Attribute Data)
C 28925,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 28928,3 Load C with x-coordinate of graphic's right edge...
C 28931,1 ...
C 28932,3 Load B with y-coordinate of graphic's top edge...
C 28935,1 ...
C 28936,2 Jump to attribute painting routine
c 28938 Paint Room Layout Data Entry's Attributes (Room Drawing)
D 28938 Used by the routine at #R27951. Input:  HL  Points to entry in Lookup Table for RLE Attribute Data (Room Layout Graphics) at #R51997 DE  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) at #R52397
C 28938,1 Store HL (Pointer to entry in Lookup Table for RLE Attribute Data)
C 28939,3 Modify instruction at #R28984 to load x-coordinate of graphic's right edge into A...
C 28942,3 ...i.e. set end x-coordinate for painting left-to-right
C 28945,3 Modify instruction at #R28988 to jump to #R29005...
C 28948,3 ...i.e. advance HL down one character row in Attribute File
C 28951,2 Modify instruction at #R28991 with opcode 35 (INC HL)...
C 28953,3 ...
C 28956,1 Restore HL (Pointer to entry in Lookup Table for RLE Attribute Data)
C 28957,3 Store coordinates of area to be coloured and point IX at RLE Attribute Data
C 28960,4 Load BC with x- and y-coordinates (top-left) defined in current room layout data entry
N 28964 This entry point is used by the routines at #R28846, #R28874 and #R28906. At this point, BC holds the initial coordinates in characters, from which to start painting attributes. IX points to the required RLE attribute data.
C 28964,1 Store BC (B = current y-coordinate, C = initial x-coordinate)
C 28965,3 Point HL at Attribute File address for character coordinates (C, B)
C 28968,3 Load A with repeat count value
C 28971,1 If repeat count is zero...
C 28972,3 ...then jump to #R29001
C 28975,1 Load B with repeat count
C 28976,3 Load C with attribute to paint
C 28979,1 Apply attribute in C to current Attribute File location in HL
C 28980,1 Load E with x-coordinate (characters) of current Attribute File location...
C 28981,2 ...
C 28983,1 ...
N 28984 The operand of the instruction at #R28984 is modified by instructions at #R28850, #R28878, #R28910, #R28942, to #R23493 (x-coordinate of left edge), #R23495 (x-coordinate of right edge), #R23493 (x-coordinate of left edge), or #R23495 (x-coordinate of right edge) respectively.
C 28984,3 Load A with end x-coordinate for painting...
C 28987,1 ...and if this is the same as the x-coordinate...
N 28988 The operand of the instruction at #R28988 (i.e. the destination of the jump) is modified by the instructions at #R28856, #R28884, #R28916 and #R28948 to be #R29026 (move up one character row), #R29026 (move up one character row), #R29005 (move down one character row) or #R29005 (move down one character row) respectively.
C 28988,3 ...then jump to routine to move up or down one character row
N 28991 The instruction at #R28991 is modified by the instructions at #R28861, #R28889, #R28921 and #R28953 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL) respectively.
C 28991,1 Advance HL to next (or previous) byte in Attribute File
C 28992,2 Decrease B (repeat count) and loop back to #R28979 if not zero
C 28994,2 Advance IX by two bytes in RLE attribute data...
C 28996,2 ...
C 28998,3 Loop back to #R28968 for this new data
C 29001,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 29002,3 Advance to next Room Layout Data entry and paint its attributes
N 29005 Move down one character row
C 29005,1 Switch registers
C 29006,3 Load A with one more than y-coordinate of bottom edge of area to paint...
C 29009,1 ...
C 29010,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 29011,1 Increase B (i.e. move down a character row)
C 29012,1 Store BC (B = updated y-coordinate, C = initial x-coordinate)
C 29013,1 If B is the same as A (i.e. we are now outside the area to be painted)...
C 29014,3 ...then jump to #R29001
C 29017,3 Load HL with Attribute File address for coordinates (C, B) and load E with x-coordinate (characters)
C 29020,1 Store HL (new Attribute File Address)
C 29021,1 Switch registers
C 29022,1 Restore HL (new Attribute File Address)
C 29023,3 Jump back to #R28992 and continue painting
N 29026 Move up one character row
C 29026,1 Switch registers
C 29027,3 Load A with one less than y-coordinate of top edge of area to paint...
C 29030,1 ...
C 29031,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 29032,1 Increase B (i.e. move down a character row)
C 29033,3 Jump back to #R29012
c 29036 Store Coordinates of Area to be Coloured and Point IX at RLE Attribute (or Terrain Interaction) Data (Room Drawing)
D 29036 Used by the routines at #R28846, #R28874, #R28906, #R28938, #R29082, #R29110, #R29142 and #R29174. Input:  HL  Pointer to entry in Lookup Table for Attribute Data or Terrain Interaction Data Output: IX  Points to start of RLE attribute data
C 29036,4 Load BC with x- and y-coordinates (top-left) defined in current room layout data entry
C 29040,1 Load width as defined in attribute lookup data into A...
C 29041,1 ...add to x-coordinate...
C 29042,1 ...subtract one to get x-coordinate of right of graphic...
C 29043,3 ...and store at #R23495
C 29046,1 Advance HL to height value in attribute lookup data...
C 29047,1 ...load into A...
C 29048,1 ...add to y-coordinate...
C 29049,3 ...and store at #R23496
C 29052,1 Advance HL to address of attribute data...
C 29053,3 ...load this address into HL...
C 29056,1 ...and copy the address from HL to IX...
C 29057,2 ...
C 29059,1 Return
c 29060 Skip IX Over Room Layout Data Entry for Which Painting (Attribute / Terrain Interaction) is Inappropriate
D 29060 Used by the routine at #R27951. Input:  IX  Points to start of an instruction (252 - 255) in room layout data A  First byte of the instruction
C 29060,2 Advance by six bytes to start of next instruction...
C 29062,2 ...
C 29064,2 ...
C 29066,2 ...
C 29068,2 ...
C 29070,2 ...
C 29072,2 If instruction number is even (i.e. instruction 252 or 254, each of which have five parameters)...
C 29074,3 ...then process next room layout instruction (jump to #R27989)...
C 29077,2 ...otherwise, advance by one more byte to skip over sixth parameter (on instructions 253 or 255)...
C 29079,3 ...and process next room layout instruction (jump to #R27989)
c 29082 Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying Horizontal and Vertical Mirrors (Room Drawing)
D 29082 Used by the routine at #R28070. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) (at #R52397) Output: B  y-coordinate of graphic's bottom C  x-coordinate of graphic's right
C 29082,1 Store HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 29083,3 Modify instruction at #R29220 to load x-coordinate of graphic's left edge into A...
C 29086,3 ...i.e. set end x-coordinate for painting right-to-left
C 29089,3 Modify instruction at #R28988 to jump to #R29262...
C 29092,3 ...i.e. advance HL up one character row in Terrain Interaction Data Table at #R24064
C 29095,2 Modify instruction at #R29227 with opcode 43 (DEC HL)...
C 29097,3 ...
C 29100,1 Restore HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 29101,3 Store coordinates of area to be painted and point IX at RLE Terrain Interaction data
C 29104,4 Load BC with coordinates of graphic's bottom-right
C 29108,2 Jump to terrain interaction parameter painting routine
c 29110 Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying Horizontal Mirror (Room Drawing)
D 29110 Used by the routine at #R28070. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) (at #R51997) Output: B  y-coordinate of graphic's bottom C  x-coordinate of graphic's left
C 29110,1 Store HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 29111,3 Modify instruction at #R29220 to load x-coordinate of graphic's right edge into A...
C 29114,3 ...i.e. set end x-coordinate for painting left-to-right
C 29117,3 Modify instruction at #R29224 to jump to #R29262...
C 29120,3 ...i.e. advance HL up one character row in Terrain Interaction Data Table at #R24064
C 29123,2 Modify instruction at #R29227 with opcode 35 (INC HL)...
C 29125,3 ...
C 29128,1 Restore HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 29129,3 Store coordinates of area to be coloured and point IX at RLE Terrain Interaction Data
C 29132,3 Load C with x-coordinate of graphic's left edge...
C 29135,1 ...
C 29136,3 Load B with y-coordinate of graphic's bottom edge...
C 29139,1 ...
C 29140,2 Jump to terrain interaction data painting routine
c 29142 Paint Room Layout Data Entry's Terrain Interaction Parameters, Applying Vertical Mirror (Room Drawing)
D 29142 Used by the routine at #R28070. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) (at #R51997) Output: B  y-coordinate of graphic's top C  x-coordinate of graphic's right
C 29142,1 Store HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 29143,3 Modify instruction at #R29220 to load x-coordinate of graphic's left edge into A...
C 29146,3 ...i.e. set end x-coordinate for painting right-to-left
C 29149,3 Modify instruction at #R29224 to jump to #R29241...
C 29152,3 ...i.e. advance HL down one character row in Terrain Interaction Data Table at #R24064
C 29155,2 Modify instruction at #R29227 with opcode 43 (DEC HL)...
C 29157,3 ...
C 29160,1 Restore HL (current entry in Lookup Table for RLE Terrain Interaction Data)
C 29161,3 Store coordinates of area to be coloured and point IX at RLE Terrain Interaction Data
C 29164,3 Load C with x-coordinate of graphic's right edge...
C 29167,1 ...
C 29168,3 Load B with y-coordinate of graphic's top edge...
C 29171,1 ...
C 29172,2 Jump to terrain interaction data painting routine
c 29174 Paint Room Layout Data Entry's Terrain Interaction Parameters then Advance to Next Entry (Room Drawing)
D 29174 Used by the routine at #R28070. Input:  HL  Points to entry in Lookup Table for RLE Terrain Interaction Data (Room Layout Graphics) (at #R52397)
C 29174,1 Store HL (Pointer to entry in Lookup Table for RLE Terrain Interaction Data)
C 29175,3 Modify instruction at #R29220 to load x-coordinate of graphic's right edge into A...
C 29178,3 ...i.e. set end x-coordinate for painting left-to-right
C 29181,3 Modify instruction at #R29224 to jump to #R29241...
C 29184,3 ...i.e. advance HL down one character row in Terrain Interaction Data Table at #R24064
C 29187,2 Modify instruction at #R29227 with opcode 35 (INC HL)...
C 29189,3 ...
C 29192,1 Restore HL (Pointer to entry in Lookup Table for RLE Terrain Interaction Data)
C 29193,3 Store coordinates of area to be coloured and point IX at RLE Terrain Interaction Data
C 29196,4 Load BC with x- and y-coordinates (top-left) defined in current room layout data entry
N 29200 This entry point is used by the routines at #R29082, #R29110 and #R29142. At this point, BC holds the initial coordinates in characters, from which to start painting terrain interaction parameters. IX points to the required RLE terrain interaction data.
C 29200,1 Store BC (B = current y-coordinate, C = initial x-coordinate)
C 29201,3 Point HL at Terrain Interaction Data Table address for character coordinates x=C, y=B
C 29204,3 Load A with repeat count value
C 29207,1 If repeat count is zero...
C 29208,3 ...then jump to #R29237
C 29211,1 Load B with repeat count
C 29212,3 Load C with terrain interaction parameter to paint
C 29215,1 Apply terrain interaction parameter in C to current Terrain Interaction Data Table location in HL
C 29216,1 Load E with x-coordinate (characters) of current Terrain Interaction Data location...
C 29217,2 ...
C 29219,1 ...
N 29220 The operand of the instruction at #R29220 is modified by instructions at #R29086, #R29114, #R29146, #R29178, to #R23493 (x-coordinate of left edge), #R23495 (x-coordinate of right edge), #R23493 (x-coordinate of left edge), or #R23495 (x-coordinate of right edge) respectively.
C 29220,3 Load A with end x-coordinate for painting...
C 29223,1 ...and if this is the same as the x-coordinate...
N 29224 The operand of the instruction at #R29224 (i.e. the destination of the jump) is modified by the instructions at #R29092, #R29120, #R29152 and #R29184 to be #R29262 (move up one character row), #R29262 (move up one character row), #R29241 (move down one character row) or #R29241 (move down one character row) respectively.
C 29224,3 ...then jump to routine to move up or down one character row
N 29227 The instruction at #R29227 is modified by the instructions at #R29097, #R29125, #R29157 and #R29189 to 43 (DEC HL), 35 (INC HL), 43 (DEC HL) or 35 (INC HL) respectively.
C 29227,1 Advance HL to next (or previous) byte in Terrain Interaction Data Table
C 29228,2 Decrease B (repeat count) and loop back to #R29215 if not zero
C 29230,2 Advance IX by two bytes in RLE terrain interaction data...
C 29232,2 ...
C 29234,3 Loop back to #R29204 for this new data
C 29237,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 29238,3 Advance IX to start of next Room Layout Data entry and jump back to #R27989 to paint its attributes / terrain interaction data
N 29241 Move down one character row
C 29241,1 Switch registers
C 29242,3 Load A with one more than y-coordinate of bottom edge of area to paint...
C 29245,1 ...
C 29246,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 29247,1 Increase B (i.e. move down a character row)
C 29248,1 Store BC (B = updated y-coordinate, C = initial x-coordinate)
C 29249,1 If B is the same as A (i.e. we are now outside the area to be painted)...
C 29250,3 ...then jump to #R29237
C 29253,3 Load HL with Terrain Interaction Data Table address for coordinates (C, B) and load E with x-coordinate (characters)
C 29256,1 Store HL (new Terrain Interaction Data Table Address)
C 29257,1 Switch registers
C 29258,1 Restore HL (new Terrain Interaction Data Table Address)
C 29259,3 Jump back to #R29228 and continue painting
N 29262 Move up one character row
C 29262,1 Switch registers
C 29263,3 Load A with one less than y-coordinate of top edge of area to paint...
C 29266,1 ...
C 29267,1 Restore BC (B = current y-coordinate, C = initial x-coordinate)
C 29268,1 Increase B (i.e. move down a character row)
C 29269,3 Jump back to #R29248
c 29272 If Magic Knight is on The Bridge and USS Pisces is not at Gangrole then Draw Viewscreen Starfield
D 29272 Used by the routine at #R28101.
C 29272,3 If Magic Knight's current room is not 1 (USS Pisces, 1, The Bridge)...
C 29275,2 ...
C 29277,1 ...then return
C 29278,3 If the USS Pisces' current location is 20 (Gangrole)...
C 29281,2 ...
C 29283,1 ...then return
C 29284,2 Set MASK P and MASK T system variables to 255...
C 29286,3 ...to preserve attributes already on screen...
C 29289,3 ...
C 29292,3 Load the USS Pisces' current location into H and L...
C 29295,1 ...so that HL points to an address in ROM (pseudo-random data)...
C 29296,1 ...
C 29297,2 Load B with 50 (as we are PLOTting 50 stars)
C 29299,1 Store BC (remaining number of stars to PLOT)
C 29300,1 Advance HL by one byte
C 29301,1 Load A with byte at HL
C 29302,2 Clear bits 6 and 7
C 29304,2 If this y-coordinate value is 56 or more...
C 29306,3 ...then loop back to #R29300 to get next byte value
C 29309,1 Load this pseudo-random value (0-55) into B (y-coordinate)
C 29310,1 Advance HL by one byte
C 29311,1 Load A with byte at HL
C 29312,2 Clear bit 7
C 29314,1 Load this x-coordinate value (0-127) into C (x-coordinate)
C 29315,1 Store HL (current address in ROM)
N 29316 Stars are PLOTted as pixels using the ROM PLOT routine. Therefore, coordinates are relative to the bottom-left of the display. The x-coordinate increases towards the right of the display while the y-coordinate increases towards the top. Stars are always PLOTted ABOVE the planet rendered on the viewscreen, therefore the lower-left bound of the rectangular area for displaying stars ("Star Area") under this system is (64, 56) pixels. The upper-right bound is (191, 111) pixels.
C 29316,3 Load H and L with the y- and x-coordinates (56 and 64 pixels, respectively) of the lower-left of the viewscreen's "Star Area"
C 29319,1 Add B and C (pseudo-random values) to H and L respectively as offsets
C 29320,1 Transfer values from H (56-111) and L (64-191)...
C 29321,1 ...to B and C
C 29322,3 PLOT the pixel (x=C, y=B)
C 29325,1 Restore HL (current address in ROM)
C 29326,1 Restore BC (remaining number of stars to PLOT)
C 29327,2 Decrease remaining number of stars and loop back to #R29299
C 29329,1 Return
c 29330 Process Command to Pick Up an Object
C 29330,3 Print or update Command Summary Window at top of screen
C 29333,3 Point DE at "PICK UP THE" text...
C 29336,3 ...and print in Command Summary Window at top of screen
C 29339,3 Point HL at start of Objects' Current Positions Table
C 29342,3 Load B with 12 and C with 128 [bug: Should be Load B with 37 and C with 0, or LD BC, 9472]
C 29345,3 Load A with Magic Knight's current room
C 29348,1 If current object's room is not the same as Magic Knight's then...
C 29349,2 ...skip ahead to #R29352
C 29351,1 Increase C (count of objects in Magic Knight's current room)
C 29352,1 Advance HL to next object's position...
C 29353,1 ...
C 29354,1 ...
C 29355,2 Decrease B and loop back for next object
C 29357,1 Copy total number of objects into A...
C 29358,1 ...and if this value is zero... [can't actually happen because of bug at #R29342]
C 29359,3 ...then display "THERE IS NOTHING IN THIS ROOM" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29362,3 Point HL at start of Objects' Current Positions Table
C 29365,3 Load A with Magic Knight's current room
C 29368,1 ...and copy into C
C 29369,3 Load Magic Knight's coordinates (in characters) into DE
C 29372,1 Set A to zero
C 29373,1 Switch A register
C 29374,2 Load B with 50 (bug - should be 37 as there are only 37 objects)
C 29376,1 Load Magic Knight's current room into A
C 29377,1 If room of current object is not the same as Magic Knight's current room...
C 29378,2 ...then skip ahead to #R29401 [advance to next object]
C 29380,1 Copy Magic Knight's y-coordinate into A
C 29381,1 Advance HL to current object's y-coordinate...
C 29382,1 ...
C 29383,1 ...and if this is not the same as Magic Knight's y-coordinate...
C 29384,2 ...then skip ahead to #R29403 [advance to next object]
C 29386,1 Move HL back to object's x-coordinate
C 29387,1 Load Magic Knight's x-coordinate into A
C 29388,1 Decrease x-coordinate by two...
C 29389,1 ...
C 29390,1 Store BC
C 29391,2 Load B with 5 (as we are going to test 5 different x-coordinates)
C 29393,1 If x-coordinate of object is the same as current x-coordinate value...
C 29394,2 ...then skip ahead to #R29412
C 29396,1 Increase value of current x-coordinate (to test next x-coordinate in range -2 to +2)
C 29397,2 Decrease B (remaining number of x-coordinates to test) and loop back to #R29393
C 29399,1 Restore BC
C 29400,1 Move HL back one byte to start of position data for current object
C 29401,1 Advance HL by three bytes to move to next object...
C 29402,1 ...
C 29403,1 ...
C 29404,1 Switch A register back (so now contains the index of the object to test next)
C 29405,1 Increase A [index of current object to test]
C 29406,1 Switch A register
C 29407,2 Loop back to #R29376 for next object
C 29409,3 Display "THERE IS NOTHING NEAR ENOUGH" Window (13), wait for fire to be pressed then jump to Main Game Loop
N 29412 An object has been found within Magic Knight's reach so make this the current object
C 29412,1 Restore BC
C 29413,1 Switch A register (so now contains index of first object that is within Magic Knight's reach)
C 29414,3 Load index of this object into instruction at #R29525 (i.e. set as Current Object)
C 29417,3 Point DE at character code to print name of Current Object
C 29420,3 ...and print in Command Summary Window at top of screen
C 29423,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 29426,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 29429,1 ...
C 29430,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 29431,3 ...then display "YOUR HANDS ARE FULL" window, wait for fire to be pressed then jump to Main Game Loop
C 29434,3 Check whether object has a weight greater than Magic Knight's surplus strength...
C 29437,3 ...and if it does then display "THE [name of Current Object] IS TOO HEAVY FOR YOU" Window), wait for fire to be pressed then jump to Main Game Loop
C 29440,3 Load A with index of Current Object...
C 29443,1 ...and copy into C
C 29444,2 Load B with 5 (five inventory slots)
C 29446,3 Load object in C into Magic Knight's first empty inventory (carrying) slot...
C 29449,3 ...
C 29452,3 Load A with index of Current Object...
C 29455,1 ...and copy into C
C 29456,1 Multiply index by three in A...
C 29457,1 ...
C 29458,2 Load three times object index into BC...
C 29460,1 ...
C 29461,3 Point HL at start of Objects' Current Positions Table
C 29464,1 Add BC as offset to point HL at position data for current object
C 29465,2 Set object's room to 99
N 29467 This entry point is used by the routines at #R29488, #R29619, #R29756 and #R31537.
C 29467,4 Point IX at Magic Knight's current inventory (carrying)
C 29471,2 Load B with 5 (five inventory slots)
C 29473,3 Point HL at "YOU ARE NOW CARRYING" text
C 29476,3 Display "Magic Knight's current inventory" window as an information window
N 29479 This entry point is used by the routines at #R29756, #R30145, #R31188, #R31280, #R31312, #R32895, #R33338 and #R33725.
C 29479,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
N 29482 This entry point is used by the routines at #R29488, #R29619, #R29756, #R30145, #R30686, #R30968, #R31257, #R31537, #R55115 and #R55364.
C 29482,3 Set Magic Knight's available action flags and validate I.D. Card if appropriate
C 29485,3 Jump to start of Main Game Loop
c 29488 Process Command to Drop an Object
C 29488,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 29491,3 If MK's inventory (carrying) is empty then set his available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 29494,4 Point IX at start of Magic Knight's current inventory (carrying)
C 29498,2 Load B with 5 (five inventory slots)
C 29500,3 Point HL at "DROP WHICH OBJECT ?" text
C 29503,3 Point DE at "DROP THE " text
C 29506,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 29509,3 Point HL at start of Magic Knight's current inventory (carrying)
C 29512,3 Print name of selected object in Magic Knight's current inventory (carrying) in Command Summary Window
C 29515,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 29518,4 If "USE TRANSPORTER" command is enabled (i.e. Magic Knight is standing on a transporter pad)... (IY = 23610)
C 29522,3 ...then display "YOU CANNOT DROP THE [Object] HERE" Window (29), wait for fire to be pressed then jump to Main Game Loop
N 29525 The operand of the instruction at #R29525 represents the index of the Current Object used in multiple routines. This is modified by the instructions at #R29414 and #R33916.
C 29525,2 Load index of current object into A [Operand is index of Current Object]
C 29527,2 If object is Quark Bomb...
C 29529,3 ...then skip ahead to #R29613
C 29532,2 Load E with 1 (prepare to check Drop Status Flag)
C 29534,3 Point HL to byte 1 of the A-th record in Object Properties Table
C 29537,2 If object's Drop Status Flag is set...
C 29539,3 ...then display "YOU CANNOT DROP THE [object]" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29542,2 If object's Is Breakable Flag is set...
C 29544,3 ...then skip ahead to #R29597
C 29547,3 Load A with index of Current Object
C 29550,1 Copy into C
C 29551,1 Store BC (C = index of Current Object)
C 29552,2 Load B with 5 (five inventory slots)
C 29554,3 Point HL at start of Magic Knight's current inventory (carrying)
C 29557,3 Remove object C from Magic Knight's current inventory (carrying)
C 29560,1 Restore BC (C = index of Current Object)
C 29561,1 Load current object's index into A
C 29562,1 Multiply object index by 3...
C 29563,1 ...
C 29564,1 ...and load back into C
C 29565,2 Load B with zero
C 29567,3 Point HL at start of Objects' Current Positions Table at #R25286
C 29570,1 Add three times Current Object's index as offset to point HL at position data of current object
C 29571,3 Load A with Magic Knight's current room
C 29574,1 Set object's current room to be same as Magic Knight's
C 29575,1 Advance HL to x-coordinate of object
C 29576,2 Set B to zero
C 29578,3 Load A with Magic Knight's current x-coordinate (pixels)
C 29581,2 Get x-coordinate in terms of pixels within current character block (i.e. lowest 3 bits of x-coordinate)
C 29583,2 If this is zero (i.e. Magic Knight at left-most pixel in character block) then skip ahead to #R29586...
C 29585,1 ...else increase B
C 29586,3 Load Magic Knight's Coordinates (in Characters) into DE
C 29589,1 Load B into A
C 29590,1 Add Magic Knight's x-coordinate to A
C 29591,1 Set this as object's x-coordinate
C 29592,1 Advance HL to y-coordinate of object
C 29593,1 Set this to same as Magic Knight's y-coordinate
C 29594,3 Show Magic Knight's current inventory and jump back to Main Game Loop
C 29597,3 Load A with index of Current Object
C 29600,1 Copy into C
C 29601,2 Load B with 5 (five inventory slots)
C 29603,3 Point HL at start of Magic Knight's current inventory (carrying)
C 29606,3 Remove object C from Magic Knight's current inventory (carrying)
C 29609,2 Set object to drop to Broken Glass
C 29611,2 Jump back to #R29561 to drop the Broken Glass
C 29613,3 Point HL at "YOU HAVE DESTROYED YOURSELF BY DROPPING THE..." text
C 29616,3 Jump to "Game over" window routine and return to Control Selection Menu
c 29619 Process Command to Take an Object
C 29619,3 Point HL at "TAKE AN OBJECT FROM ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 29622,3 Point DE (Command Summary Text Pointer) at "TAKE SOMETHING FROM" text
C 29625,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 29628,3 If there are no characters in the room then set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
N 29631 The operand of the instruction at #R29631 represents the index of the Current Character used in multiple routines. This is modified by the instructions at #R30271, #R33804, #R33814, #R33934 and #R34226.
C 29631,2 Point IX at current inventory of Current Character...
C 29633,3 ...
C 29636,3 If the first inventory slot of the character is empty...
C 29639,1 ...
C 29640,3 ...then display "[Character]'S HANDS ARE EMPTY" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29643,2 Store IX (start of inventory)
C 29645,2 Load B with 5 (five inventory slots)
C 29647,3 Point HL at "TAKE WHICH OBJECT ?" text
C 29650,3 Load DE with zero (i.e. no Command Summary Text)
C 29653,3 Show list of objects in character's inventory as a menu and load A with selected item index
C 29656,1 Store AF (A = index of chosen object's inventory slot)
C 29657,3 Print or update Command Summary Window at top of screen
C 29660,3 Point DE at "TAKE THE" text...
C 29663,3 ...and print in Command Summary Window at top of screen
C 29666,1 Restore AF (A = index of chosen object's inventory slot)
C 29667,1 Restore HL (previously IX, pointer to current inventory of current character)
C 29668,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 29671,3 Point DE at " FROM" text...
C 29674,3 ...and print in Command Summary Window at top of screen
C 29677,3 Load A with index of Current Character
C 29680,3 Print character's name
C 29683,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 29686,2 Decrease Current Character's happiness by 3...
C 29688,3 ...
C 29691,4 Point IX at Table of Characters' Wanted Objects
C 29695,3 If Current Character wants Current Object...
C 29698,3 ...then display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29701,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 29704,1 ...
C 29705,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 29706,3 ...then display "YOUR HANDS ARE FULL" window, wait for fire to be pressed then jump to Main Game Loop
C 29709,3 Check whether object has a weight greater than Magic Knight's surplus strength...
C 29712,3 ...and if it does then display "THE [name of Current Object] IS TOO HEAVY FOR YOU" Window, wait for fire to be pressed then jump to Main Game Loop
C 29715,3 Load A with Current Character's Happiness Level...
C 29718,2 and if this is less than 30...
C 29720,3 ...then display "[Character] WANTS TO KEEP THE [Object]" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29723,3 Point IX at current inventory of Current Character...
C 29726,3 ...
C 29729,2 Copy value from IX...
C 29731,1 ...to HL
C 29732,3 Load C with index of Current Object...
C 29735,1 ...
C 29736,2 Load B with 5 (five inventory slots)
C 29738,3 Remove object C from Current Character's inventory
C 29741,3 Load C with index of Current Object...
C 29744,1 ...
C 29745,2 Load B with 5 (five inventory slots)
C 29747,3 Point HL at start of Magic Knight's current inventory (carrying)...
C 29750,3 ...and load object C into the first empty slot
C 29753,3 Show Magic Knight's current inventory and jump back to Main Game Loop
c 29756 Process Command to Give an Object
C 29756,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 29759,3 If MK's inventory (carrying) is empty then set his available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 29762,4 Point IX at Magic Knight's current inventory (carrying)
C 29766,2 Load B with 5 (five inventory slots)
C 29768,3 Point HL at "GIVE WHICH OBJECT ?" text
C 29771,3 Point DE at "GIVE THE " text
C 29774,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 29777,3 Point HL at start of Characters' Current Inventories Table
C 29780,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 29783,3 Point DE at "TO" text...
C 29786,3 ...and print in Command Summary Window at top of screen
C 29789,3 Point HL at "GIVE AN OBJECT TO ?" text
C 29792,3 Load DE with zero (i.e. no Command Summary Text)
C 29795,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 29798,3 If there are no characters in the room then set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 29801,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 29804,4 Point IX at Table of Characters' Unwanted Objects
C 29808,3 If Current Character does not want Current Object...
C 29811,3 ...then display "[Character] DOES NOT WANT THE [Object]" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29814,2 Increase Current Character's happiness by 4...
C 29816,3 ...
C 29819,3 Load A with index of Current Object
C 29822,2 If the selected object is the McTablet Food...
C 29824,3 ...then skip ahead to #R29907
C 29827,3 Point IX at current inventory of Current Character...
C 29830,3 ...
C 29833,3 If last inventory slot of character is not zero...
C 29836,1 ...(i.e. last inventory slot is occupied)...
C 29837,3 ...then display "[Character]'S HANDS ARE FULL" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29840,3 Load B with 5 (five inventory slots) and C with zero
C 29843,3 Load content of current inventory slot into A
C 29846,1 If this inventory slot is empty...
C 29847,2 ...then skip ahead to #R29858
C 29849,3 Load A with weight of object in current slot...
C 29852,1 ...and add to C (running total weight)...
C 29853,1 ...
C 29854,2 Advance to next inventory slot
C 29856,2 Loop back to #R29843 for next slot
C 29858,3 Load A with index of Current Object
C 29861,3 Load A with weight of object being given...
C 29864,1 ...and add this to total in C also...
C 29865,1 ...
C 29866,3 Load A with index of Current Character
C 29869,2 Point HL at character's current strength...
C 29871,3 ...
C 29874,1 Load strength into A...
C 29875,2 ...and reset Bit 7 (unused)
C 29877,1 If character's strength is less than total weight of objects...
C 29878,3 ...then display "[Character] IS NOT STRONG ENOUGH" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29881,3 Load A with Current Character's Happiness Level...
C 29884,2 ...and if this is less than 25...
C 29886,3 ...then display "[Character] DOES NOT WANT THE [Object]" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 29889,3 Load A with index of Current Object...
C 29892,3 ...and load this object into the character's first empty slot
C 29895,1 Load index of object into C
C 29896,2 Remove object C from Magic Knight's current inventory (carrying)...
C 29898,3 ...
C 29901,3 ...
C 29904,3 Show Magic Knight's current inventory and jump back to Main Game Loop
C 29907,3 Point IX at Current Character's current stats
C 29910,4 If character's Asleep Flag is reset...
C 29914,2 ...then skip ahead to #R29930
C 29916,2 Draw Window 28...
C 29918,3 ...
C 29921,3 Point HL at "[Current Character's name] IS ASLEEP" text...
C 29924,3 ...and print to screen
C 29927,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 29930,2 Set strength increment to 25
C 29932,3 Load character's current strength into A...
C 29935,2 ...
C 29937,3 Increase value by 25, up to maximum of 100
C 29940,1 Load updated strength value into C
C 29941,3 Load updated strength back into character's stats...
C 29944,2 ...preserving bit 7 (see trivia)
C 29946,1 ...
C 29947,3 ...
C 29950,2 Set stamina increment to 20
C 29952,3 Load character's current stamina into A...
C 29955,2 ...
C 29957,3 Increase value by 20, up to maximum of 100
C 29960,1 Load updated stamina value into C
C 29961,3 Load updated stamina back into character's stats...
C 29964,2 ...preserving bit 7 (see trivia)
C 29966,1 ...
C 29967,3 ...
C 29970,3 Load A with LSB of FRAMES System Variable (pseudo-random number)
C 29973,2 Discard all but lower two bits, leaving a random number between 0 - 3 (inclusive)
C 29975,1 Load this number into B
C 29976,3 Point HL at start of Character's Responses to McTablet Flavours
C 29979,3 Advance HL to B-th entry in list of zero-terminated strings starting at HL
C 29982,3 Adjust height of window 13 to accommodate text...
C 29985,3 ...
C 29988,1 Store HL (pointer to start of text to print)
C 29989,2 Draw Window 13...
C 29991,3 ...
C 29994,1 Restore HL (pointer to start of text to print)
C 29995,3 Print text to screen
C 29998,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 30001 Display and Handle Main In-Game Menu (When Fire is Pressed)
D 30001 Used by the routine at #R27136.
C 30001,3 Wait for Fire Button / Key to be Released
C 30004,3 Play downward scale sound
C 30007,3 Set Magic Knight's available action flags and validate I.D. Card if appropriate
C 30010,3 Set B = 8 (eight action flags) and C = 0 (count of set flags)
C 30013,3 Load A with Available In-Game Menu Command Flags (part 1)
C 30016,1 Pop a bit into Carry Flag
C 30017,2 If Magic Knight action flag is not set then skip ahead to #R30020 to repeat loop for next flag...
C 30019,1 ...else increase count of set flags
C 30020,2 Loop back for next bit until all eight are done
C 30022,2 Set B = 8 (another eight action flags)
C 30024,3 Load A with Available In-Game Menu Command Flags (part 2)
C 30027,1 Pop a bit into Carry Flag
C 30028,2 If Magic Knight action flag is not set then skip ahead to #R30031 to repeat loop for next flag...
C 30030,1 ...else increase count of set flags
C 30031,2 Loop back for next bit until all eight are done
C 30033,2 Load A with 8 (as minimal command window has bottom y-coordinate of 8)
C 30035,1 Increase A by number of extra commands available
C 30036,1 Load value back into C
C 30037,3 Load A with y-coordinate (characters) of top of menu window
C 30040,1 Update y-coordinate of bottom of window according to number of extra commands...
C 30041,3 ...
C 30044,2 Display main in-game menu window (window number zero)...
C 30046,3 ...
C 30049,3 Print "COMMANDS AVAILABLE:-" followed by first five commands (Pick up, drop, etc.) that are always available...
C 30052,3 ...
C 30055,3 Point HL at zero immediately preceding list of conditional entry (Main in-Game Menu) texts
C 30058,3 Load A with Available In-Game Menu Command Flags (part 1)
C 30061,3 Print currently available additional In-Game Menu command options (part 1)
C 30064,3 Load A with Available In-Game Menu Command Flags (part 2)
C 30067,3 Print currently available additional In-Game Menu command options (part 2)
C 30070,3 Process keyboard / joystick input on a menu and load A with selected item index
C 30073,2 If index of selected item is less than 5 (i.e. is a permanent, yellow entry)...
C 30075,2 ...then skip ahead to #R30097
C 30077,2 Subtract 4 from index to get index within currently available conditional entries...
C 30079,1 ...and load this value into B
C 30080,2 Load C with zero
C 30082,3 Load HL with Available In-Game Menu Command Flags
N 30085 At this point, B is initialised to the index of the selected menu option among the currently available conditional entries. The following loop loads C with the index of the selected action's Action Flag (bit) in the WORD value at #R23698.
C 30085,2 Perform 16-bit rotation (right) through HL and into Carry Flag...
C 30087,2 ...so that Carry Flag contains "current" Action Flag
C 30089,1 Increase C (index of current Action Flag)
C 30090,2 If current Action Flag is not set then loop back to #R30085...
C 30092,2 ...otherwise decrease B then loop back to #R30085
C 30094,1 Load index of appropriate Action Flag into A
C 30095,2 Add 4, to restore original index value (i.e. reverse of instruction at #R30077)
N 30097 At this point, A holds either the index of the appropriate Action Flag plus four, or the index of the originally selected menu item if less than 5. In either case, A contains the index of the command to initiate. Code between #R30097 and #R30105 is not necessary; see trivia.
C 30097,3 Point HL at List of Command Indices
C 30100,1 Load index of selected command into B, setting C to zero...
C 30101,2 ...
C 30103,1 If current entry in List of Command Indices is the same as the index of the selected command...
C 30104,1 ...
C 30105,2 ...then skip ahead to #R30111
C 30107,1 Increase C (index of command index)
C 30108,1 Advance HL to next command index in list
C 30109,2 Loop back to #R30103
C 30111,1 Store BC (B = selected command index, C = index of selected command index)
C 30112,3 Play upward scale sound
C 30115,1 Restore BC (B = selected command index, C = index of selected command index)
C 30116,1 Load index (of selected command index) into A
C 30117,3 Point HL at start of Table of Command Routine Addresses
C 30120,3 Advance HL by A words, load HL with word at location HL as address and jump to it
c 30123 Print Currently Available Additional In-Game Menu Command Options
D 30123 Used by the routine at #R30001. Input:  A  Available In-Game Menu Command Flags (part 1 or part 2) HL  Points to #R38734 if dealing with Flags part 1. Points to #R38777 if dealing with Flags part 2.
C 30123,2 Load B with 8 (as there are 8 flags)
C 30125,1 Store BC (B = remaining number of flags to process)
C 30126,1 Rotate least significant bit of A (i.e. current flag) into Carry Flag
C 30127,1 Store AF (current flag in Carry and remaining flags in A)
C 30128,3 Advance HL to byte after first zero from address in HL onwards
C 30131,1 Restore AF (current flag in Carry and remaining flags in A)
C 30132,2 If current flag is reset then skip ahead to #R30141
C 30134,1 Store HL (current position in Additional Menu Items texts)
C 30135,1 Store AF (current flag in Carry and remaining flags in A)
C 30136,3 Print text at HL (current additional menu item)
C 30139,1 Restore AF (current flag in Carry and remaining flags in A)
C 30140,1 Restore HL (current position in Additional Menu Items texts)
C 30141,1 Restore BC (B = remaining number of flags to process)
C 30142,2 Decrease B and loop back to #R30125 for next flag
C 30144,1 Return
c 30145 Process Command to Examine Yourself / A Character / An Object / USS Pisces
C 30145,3 Print or update Command Summary Window at top of screen
C 30148,3 Point DE at "EXAMINE"...
C 30151,3 ...and print in Command Summary Window at top of screen
C 30154,2 Draw "EXAMINE WHAT?" Menu Window...
C 30156,3 ...
C 30159,3 Point HL at "EXAMINE WHAT ?" menu text...
C 30162,3 ...and print to screen
C 30165,3 Process keyboard / joystick input on a menu and load A with selected item index
C 30168,1 If "OBJECT" selected...
C 30169,3 ...then skip ahead to #R30432
C 30172,2 If "CHARACTER" selected...
C 30174,3 ...then skip ahead to #R30300
C 30177,2 If "YOURSELF" selected...
C 30179,3 ...then skip ahead to #R30250
N 30182 Examine USS Pisces
C 30182,2 Set bottom edge of Window 20 to 17...
C 30184,3 ...
C 30187,3 Point DE at "USS PISCES" text...
C 30190,3 ...and print in Command Summary Window at top of screen
C 30193,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 30196,3 Load A with Magic Knight's current room...
C 30199,2 ...and if this is at least 12... [bug: Should be CP 11]
C 30201,3 ...then display "YOU CANNOT EXAMINE THE USS PISCES IF..." Window (29), wait for fire to be pressed then jump to Main Game Loop
C 30204,2 Draw Window 20 ("EXAMINE OBJECT" / "EXAMINE USS PISCES" Window)...
C 30206,3 ...
C 30209,3 Point HL at "      EXAMINE" text...
C 30212,3 ...and print to screen
C 30215,3 Point HL at USS Pisces' current stats
C 30218,3 Insert numeric stats (at HL) of USS Pisces into "Examine USS Pisces" window text
C 30221,3 Point HL at USS Pisces Stats text...
C 30224,3 ...and print to screen
C 30227,2 Load C with 0 (don't apply mirror)
C 30229,2 Load A with 64 (graphic index of left half of USS Pisces Picture)
C 30231,3 Load H (y-coordinate) with 8 and L (x-coordinate) with 13
C 30234,3 Draw the left half of the USS Pisces picture
C 30237,2 Load C with 1 (apply vertical mirror)
C 30239,2 Load A with 64 (graphic index of left half of USS Pisces Picture)
C 30241,3 Load H (y-coordinate) with 8 and L (x-coordinate) with 17
C 30244,3 Draw the right half of the USS Pisces picture
C 30247,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
N 30250 Examine Yourself
C 30250,2 Set left edge of Window 19 ("Examine Portrait Frame") to 16...
C 30252,3 ...
C 30255,3 Point DE at "YOURSELF"...
C 30258,3 ...and print in Command Summary Window at top of screen
C 30261,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 30264,2 Draw Window 18...
C 30266,3 ...
C 30269,2 Set Current Character index to 205 (i.e. -51)...
C 30271,3 ...as index of "MAGIC KNIGHT" text is -51 relative to start of characters' names at #R44088
C 30274,3 Point HL at percentage completion text
C 30277,3 Point DE at time left text
C 30280,3 Insert current time and score into "Time Left" and "Percentage Completion" texts
C 30283,3 Point HL at start of Magic Knight's Current Stats
C 30286,2 Set Graphic Index to 1...
C 30288,3 ...and store as operand to instruction at #R30411
C 30291,3 Load character's Magic Level / Attribute value into...
C 30294,3 ...content attribute slot of Window 19 (EXAMINE Portrait Frame)
C 30297,3 Skip ahead to #R30353 (display window as in Examine Character)
N 30300 Examine Character
C 30300,2 Set left edge of Window 19 ("Examine Portrait Frame") to 17...
C 30302,3 ...
C 30305,3 Point HL at "EXAMINE ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 30308,3 Load DE with zero (i.e. no Command Summary Text)
C 30311,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 30314,3 If there are no characters in the room then set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 30317,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 30320,2 Increase Current Character's happiness by 5...
C 30322,3 ...
C 30325,2 Draw Window 18...
C 30327,3 ...
C 30330,3 Load A with index of Current Character
C 30333,2 Point HL at start of character's stats...
C 30335,3 ...
C 30338,1 Transfer address from HL...
C 30339,2 ...into IX
C 30341,3 Load Character Graphic Index into A...
C 30344,3 ...and modify operand of instruction at #R30411 to match
C 30347,3 Load character's Magic Level / Attribute value into...
C 30350,3 ...content attribute slot of Window 19 (EXAMINE Portrait Frame)
C 30353,3 Insert numeric stats (at HL) of a character into "EXAMINE CHARACTER" window text
C 30356,1 Store HL (points to start of character's current stats)
C 30357,3 Print Examine Character window text (i.e. "EXAMINE [CHARACTER] ... STRENGTH XX..." text)...
C 30360,3 ...
C 30363,2 Restore IX (points to start of character's current stats)
C 30365,3 Load A with character's Asleep Flag (bit 7)...
C 30368,2 ...
C 30370,1 Divide value (0 for awake / 128 for asleep) by 8...
C 30371,1 ...
C 30372,1 ...to give 0 for awake / 16 for asleep
C 30373,1 Load this awake / asleep offset value into B
C 30374,3 Load A with index of character's Current Status Text...
C 30377,2 ...
C 30379,1 Add value in B to this index to select between "awake" and "asleep" versions...
C 30380,1 ...and place result back in B to get index of string required
C 30381,3 Point HL at start of characters' "current status" texts
C 30384,3 Advance HL to B-th entry in list of zero-terminated strings starting at HL...
C 30387,3 ...and print
C 30390,3 If Character Graphic Index is zero...
C 30393,1 ...
C 30394,3 ...then skip ahead to #R30420
C 30397,2 Draw Window 19 (EXAMINE Portrait Frame)...
C 30399,3 ...
C 30402,4 Load BC with top-left coordinate of current window
C 30406,2 Load ATTR T system variable with 71 (white INK, black PAPER, BRIGHT)...
C 30408,3 ...
N 30411 The operand of the instruction at #R30411 represents the Character's Graphic Index. This is modified by the instructions at #R30288 and #R30344.
C 30411,2 Load A with character's Graphic Index...
C 30413,2 ...and if this is 1 (i.e. Magic Knight)...
C 30415,2 ...then skip ahead to #R30423
C 30417,3 Draw the graphic with lookup index A at character coordinates (C, B) with width = 2 characters and height = 4 characters
C 30420,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 30423,1 Draw a Graphic with Lookup Index 0 at Character Coordinates (C, B) with width = 3 characters and height = 4 characters...
C 30424,3 ...(Magic Knight Facing Right, Frame 1)...
C 30427,3 ...
C 30430,2 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
N 30432 Examine Object
C 30432,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 30435,3 If MK's inventory (carrying) is empty then set his available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 30438,2 Set bottom edge of Window 20 to 15...
C 30440,3 ...
C 30443,4 Point IX at Magic Knight's current inventory (carrying)
C 30447,2 Load B with 5 (five inventory slots)
C 30449,3 Point HL at "EXAMINE WHICH OBJECT ?" text
C 30452,3 Load DE with zero (i.e. no Command Summary Text)
C 30455,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 30458,3 Point HL at start of Characters' Current Inventories Table
C 30461,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 30464,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 30467,3 Load A with index of Current Object
C 30470,2 Point HL to the start of the Current Object's record in Object Properties Table...
C 30472,3 ...
C 30475,1 Store HL (pointer to Current Object's properties)
C 30476,3 Insert numeric / text properties of the object into "Examine Object" Window Text
C 30479,2 Draw Window 20 ("EXAMINE OBJECT" / "EXAMINE USS PISCES" Window)...
C 30481,3 ...
C 30484,3 Point HL at "      EXAMINE" text...
C 30487,3 ...and print to screen
C 30490,3 Load B with index of Current Object...
C 30493,1 ...
C 30494,3 ...and point HL at its entry in Table of Object Names
C 30497,3 Print the Current Object's name
C 30500,3 Point HL at Object Properties text...
C 30503,3 ...and print to screen
C 30506,2 Restore IX (pointer to Current Object's properties)
C 30508,3 Set content attribute of Window 21 (frame around object in "EXAMINE OBJECT" Window)...
C 30511,3 ...to match attribute of object
C 30514,2 Draw Window 21...
C 30516,3 ...
C 30519,4 Load BC with top-left coordinate of current window
C 30523,1 Increase y-coordinate by 1 (as object positions are based upon their bottom-left corner)
C 30524,3 Load A with index of Current Object
C 30527,3 Set Terrain Interaction Data for character blocks spanned by object and draw the object
C 30530,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 30533 Insert Numeric Stats (at HL) of USS Pisces into "Examine USS Pisces" Window Text
D 30533 Used by the routine at #R30145. Input:  HL  Pointer to USS Pisces' Current Stats
C 30533,1 Store HL (pointer to start of USS Pisces' current stats)
C 30534,1 Load Life Support level into A
C 30535,1 Store HL (pointer to USS Pisces' current Life Support level)
C 30536,3 Point HL at position in USS Pisces Stats Text (at #R39359) at which to insert Life Support level...
C 30539,3 ...and splice the value in
C 30542,1 Restore HL (pointer to USS Pisces' current Life Support level)
C 30543,1 Advance HL to USS Pisces' current Star Drive Fuel level...
C 30544,1 ...and load value into A
C 30545,1 Store HL (pointer to USS Pisces' current Star Drive Fuel level)
C 30546,3 Point HL at position in USS Pisces Stats Text (at #R39359) at which to insert Star Drive Fuel level...
C 30549,3 ...and splice the value in
C 30552,1 Restore HL (pointer to USS Pisces' current Star Drive Fuel level)
C 30553,1 Advance HL to USS Pisces' current Impulse Drive level...
C 30554,1 ...and load value into A
C 30555,1 Store HL (pointer to USS Pisces' current Impulse Drive level)
C 30556,3 Point HL at position in USS Pisces Stats Text (at #R39359) at which to insert Impulse Drive level...
C 30559,3 ...and splice the value in
C 30562,1 Restore HL (pointer to USS Pisces' current Impulse Drive level)
C 30563,1 Advance HL to USS Pisces' current Shields level...
C 30564,1 ...and load value into A
C 30565,1 Store HL (pointer to USS Pisces' current Shields level)
C 30566,3 Point HL at position in USS Pisces Stats Text (at #R39359) at which to insert Shields level...
C 30569,3 ...and splice the value in
C 30572,1 Restore HL (pointer to USS Pisces' current Shields level)
C 30573,1 Advance HL to USS Pisces' current Transputer level...
C 30574,1 ...and load value into A
C 30575,3 Point HL at position in USS Pisces Stats Text (at #R39359) at which to insert Transputer level...
C 30578,3 ...and splice the value in
C 30581,1 Restore HL (pointer to start of USS Pisces' current stats)
C 30582,1 Return
c 30583 Insert Numeric Stats (at HL) of a Character into "Examine Character" Window Text
D 30583 Used by the routine at #R30145. Input:  HL  Address of start of a character's current stats
C 30583,1 Store HL (address of start of character's stats)
C 30584,1 Load character's Strength into A...
C 30585,2 ...and remove bit 7 (unused)
C 30587,1 Store HL (Strength position in character's stats)
C 30588,3 Point HL at start of " 99 " segment for Strength in Character's Stats Text at #R39187
C 30591,3 Splice numeric Strength data as a string into Character's Stats Text
C 30594,1 Restore HL (Strength position in character's stats)
C 30595,1 Advance HL to Happiness position
C 30596,1 Load character's Happiness into A...
C 30597,2 ...and remove bit 7 (unused)
C 30599,1 Store HL (Happiness position in character's stats)
C 30600,3 Point HL at start of " 99 " segment for Happiness in Character's Stats Text at #R39187
C 30603,3 Splice numeric Happiness data as a string into Character's Stats Text
C 30606,1 Restore HL (Happiness position in character's stats)
C 30607,1 Advance HL to Stamina position
C 30608,1 Load character's Stamina into A...
C 30609,2 ...and remove bit 7 (Characters Can't Move Flag [Gordon Only, see routine at #R53731])
C 30611,1 Store HL (Stamina position in character's stats)
C 30612,3 Point HL at start of " 99 " segment for Stamina in Character's Stats Text at #R39187
C 30615,3 Splice numeric Stamina data as a string into Character's Stats Text
C 30618,1 Restore HL (Stamina position in character's stats)
C 30619,1 Advance HL to Charisma position
C 30620,1 Load character's Charisma into A...
C 30621,2 ...and remove bit 7 (Can Help Flag)
C 30623,1 Store HL (Charisma position in character's stats)
C 30624,3 Point HL at start of " 99 " segment for Charisma in Character's Stats Text at #R39187
C 30627,3 Splice numeric Charisma data as a string into Character's Stats Text
C 30630,1 Restore HL (Charisma position in character's stats)
C 30631,1 Advance HL to Magic Level position
C 30632,1 Load character's Magic Level / attribute value into A...
C 30633,2 ...and remove bit 7 (FLASH Flag)
C 30635,3 Point HL at start of " 99 " segment for Magic Level in Character's Stats Text at #R39187
C 30638,3 Splice numeric Magic Level data as a string into Character's Stats Text
C 30641,1 Restore HL (address of start of character's stats)
C 30642,1 Return
c 30643 Insert Numeric / Text Stats of an Object into "Examine Object" Window Text
D 30643 Used by the routine at #R30145. Input:  HL  Address of start of an object's properties
C 30643,1 Load A with weight of the object...
C 30644,2 ...stripping out flag values
C 30646,1 Store HL (address of start of object's properties)
C 30647,3 Point HL at numeric part of "WEIGHT" string...
C 30650,3 ...and overwrite with weight value
C 30653,1 Restore HL (address of start of object's properties)
C 30654,2 Load A with (Common Word Index for text "YES")
C 30656,2 If Can Blow Flag is set...
C 30658,2 ...then skip ahead to #R30661
C 30660,1 Increase A to 148 (Common Word Index for text "NO")
C 30661,3 Insert Common Word Index in A into the "BLOW" field of the string
C 30664,2 Load A with (Common Word Index for text "YES")
C 30666,2 If Can Read Flag is set...
C 30668,2 ...then skip ahead to #R30671
C 30670,1 Increase A to 148 (Common Word Index for text "NO")
C 30671,3 Insert Common Word Index in A into the "READ" field of the string
C 30674,1 Advance HL to second byte in record
C 30675,2 Load A with (Common Word Index for text "YES")
C 30677,2 If Can Be Worn Flag is set...
C 30679,2 ...then skip ahead to #R30682
C 30681,1 Increase A to 148 (Common Word Index for text "NO")
C 30682,3 Insert Common Word Index in A into the "WEAR" field of the string
C 30685,1 Return
c 30686 Process Command to Command a Character
C 30686,3 Point HL at "COMMAND ?" text (end of sub-menu title, after "WHO DO YOU WANT TO ")
C 30689,3 Point DE (Command Summary Text Pointer) at "COMMAND " text
C 30692,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 30695,3 If there are no characters in the room then set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 30698,3 Point DE at "TO"...
C 30701,3 ...and print in Command Summary Window at top of screen
C 30704,2 Draw  "WHICH COMMAND DO YOU WANT TO USE?" Menu Window...
C 30706,3 ...
C 30709,3 Print "WHICH COMMAND DO YOU WANT TO USE" Menu text...
C 30712,3 ...
C 30715,3 Process keyboard / joystick input on a menu and load A with selected item index
C 30718,3 Load index of selected command into operand of instruction at #R30796...
C 30721,1 ...and into B
C 30722,3 Point HL at start of B-th entry in list of "COMMAND A CHARACTER" commands at #R39626
C 30725,1 Swap HL and DE (Command Summary Text Pointer, now at selected command string)
C 30726,3 Print text at DE in Command Summary Window at top of screen
C 30729,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 30732,2 Decrease Current Character's happiness by 6...
C 30734,3 ...
C 30737,2 If Magic Knight is wearing the Gas Mask (27)...
C 30739,3 ...
C 30742,3 ...then display "[Character] HEARS A MUFFLED VOICE..." Window (12), wait for fire to be pressed then jump to Main Game Loop
C 30745,3 Load A with index of Current Character
C 30748,2 Point HL at Current Character's Flags...
C 30750,3 ...
C 30753,1 Load Flags into A
C 30754,2 If Is Artificial Flag is set and Dislikes Starfleet Flag is reset...
C 30756,2 ...
C 30758,2 ...then skip ahead to #R30791
C 30760,1 Switch AF and AF' (character's "Is Artificial" and "Dislikes Starfleet" flags now in A')
C 30761,2 If Magic Knight is wearing the Cloak of Invisibility (01)...
C 30763,3 ...
C 30766,3 ...then display "[Character] HEARS A VOICE AND IGNORES IT" Window, and Jump to Main Game Loop
C 30769,1 Switch AF and AF' (character's "Is Artificial" and "Dislikes Starfleet" flags now in A)
C 30770,1 If character is not artificial, and likes Starfleet...
C 30771,2 ...then skip ahead to #R30783
C 30773,2 If Magic Knight is wearing the Valid I.D. Card (03)...
C 30775,3 ...
C 30778,3 ...then display "[Character] DOES NOT LIKE STARFLEET SO HE IGNORES YOU" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 30781,2 Skip ahead to #R30791
C 30783,2 If Magic Knight is not wearing the Valid I.D. Card (03)...
C 30785,3 ...
C 30788,3 ...then display "[Character] DOES NOT RECOGNISE YOUR AUTHORITY" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 30791,2 Increase Current Character's happiness by 7...
C 30793,3 ...
N 30796 The operand of the instruction at #R30796 is the index of the currently selected command from the "COMMAND A CHARACTER TO" menu. This is modified by the instruction at #R30718.
C 30796,2 Load A with index of selected "COMMAND A CHARACTER TO" command
C 30798,3 Point HL at start of Table of "Command a Character" Routine Addresses
C 30801,3 Advance HL by A words, load HL with word at location HL as address and jump to it
b 30804 Table of Routine Addresses for Magic Knight Commanding Characters
W 30804,2,2 Send Current Character to Sleep if Possible
W 30806,2,2 Wake Current Character Up if Possible
W 30808,2,2 Have a Character Help if Possible
c 30810 Send Current Character to Sleep if Possible
C 30810,3 Point IX at Current Character's current stats
C 30813,4 If character's Asleep Flag is set...
C 30817,3 ...then display "[Character] IS ALREADY ASLEEP" window (29), wait for fire to be pressed then jump to Main Game Loop
C 30820,3 If character's stamina is 70 or more...
C 30823,2 ...
C 30825,2 ...
C 30827,3 ...then display "[Character] IS TOO WAKEFUL TO SLEEP" window (29), wait for fire to be pressed then jump to Main Game Loop
C 30830,2 If character's happiness is less than 30 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 30832,3 ...
C 30835,4 Set character's Asleep Flag
C 30839,3 Display "[Character] HAS GONE TO SLEEP" Window (29), wait for fire to be pressed then jump to Main Game Loop
c 30842 Wake Current Character Up if Possible
C 30842,3 Point IX at Current Character's current stats
C 30845,4 If character's Asleep Flag is reset...
C 30849,3 ...then display "[Character] IS ALREADY AWAKE" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 30852,3 If character's stamina is less than 30...
C 30855,2 ...
C 30857,2 ...
C 30859,3 ...then display "[Character] IS TOO TIRED TO WAKE UP" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 30862,2 If character's happiness is less than 30 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 30864,3 ...
C 30867,4 Reset character's Asleep Flag
C 30871,3 Display "[Character] HAS WOKEN UP" Window (29), wait for fire to be pressed then jump to Main Game Loop
c 30874 Have a Character Help if Possible
C 30874,3 Display "[Character] IS ASLEEP" Window and jump to Main Game Loop if Current Character is asleep, else return here and continue
C 30877,2 Load A with 32 (ASCII code for SPACE)...
C 30879,3 ...and append onto end of "[Character] CANNOT HELP YOU" text at #R42166
C 30882,3 Point IX at Current Character's current stats
C 30885,4 If character's Can Help Flag is reset...
C 30889,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 30892,3 If character's stamina is less than 10...
C 30895,2 ...
C 30897,2 ...
C 30899,3 ...then display "[Character] IS TOO TIRED TO HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 30902,2 If character's happiness is less than 10 then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop...
C 30904,3 ...
C 30907,3 Load A with index of Current Character
C 30910,3 Point HL at start of Table of Addressed of Characters' Help Routines
C 30913,3 Advance HL by A words, load HL with word at location HL as address and jump to it
b 30916 Table of Start Addresses of Routines for Characters Being Commanded to Help
W 30916,2,2 Gordon
W 30918,2,2 Sarab
W 30920,2,2 Klink
W 30922,2,2 S3 E3
W 30924,2,2 Hooper
W 30926,2,2 Murphy
W 30928,2,2 Sharon
W 30930,2,2 Forbin
W 30932,2,2 Derby IV
W 30934,2,2 Swiftfoot
W 30936,2,2 Julie 8
W 30938,2,2 Hectorr
c 30940 Process Command to Launch Tyme Machine
C 30940,3 If USS Pisces' current location is Gangrole (20)...
C 30943,2 ...
C 30945,3 ...then skip ahead to #R30954
C 30948,3 Point HL at "YOU AND THE TYME MACHINE CRASHED TO THE SURFACE OF..." text
C 30951,3 Jump to "Game over" window routine and return to Control Selection Menu
C 30954,3 If Tyme Machine Charged Flag is set...
C 30957,2 ...
C 30959,3 ...then show "WELL DONE MAGIC KNIGHT" screen, jumping to Game Over on key-press
C 30962,3 Point HL at "AS YOU FELL TOWARDS GANGROLE THE TYME MACHINE OVERLOADED..." text
C 30965,3 Jump to "Game over" window routine and return to Control Selection Menu
c 30968 Process Command to Read an Object
C 30968,4 Point IX at Magic Knight's current inventory (carrying)
C 30972,2 Load B with 5 (five inventory slots)
C 30974,3 Point HL at "READ WHICH OBJECT ?" text
C 30977,3 Point DE at "READ THE " text
C 30980,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 30983,3 Point HL at start of Characters' Current Inventories Table
C 30986,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 30989,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 30992,3 Load A with index of Current Object
C 30995,2 If Current Object is the Starfleet Manual (24)...
C 30997,3 ...then skip ahead to #R31029
C 31000,2 If Current Object is the Gadget X (07)...
C 31002,3 ...then skip ahead to #R31035
C 31005,2 Point HL at start of record for object with index A in Object Properties Table...
C 31007,3 ...
C 31010,2 If Can Read Flag is reset...
C 31012,3 ...then display "THERE IS NO WRITING FOR ME TO READ" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
C 31015,1 Advance HL to read-text index for object...
C 31016,1 ...
C 31017,1 ...
C 31018,1 ...and load into A
C 31019,2 Clear bits 5, 6 and 7...
C 31021,1 ...and load index into B
C 31022,3 Point HL at start of B-th entry in List of Read-Texts of Readable Objects
C 31025,3 Display Window 02 with object's read-text, wait for fire to be pressed then jump to Main Game Loop...
b 31028 Data block at 31028
B 31028,1,1 ...
c 31029 Routine at 31029
D 31029 Used by the routine at #R30968.
C 31029,3 Display Instructions windows
C 31032,3 Set Magic Knight's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop
N 31035 This entry point is used by the routine at #R30968.
C 31035,3 Display and handle Gadget X Menu
C 31038,3 Set Magic Knight's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop
c 31041 Process Command to Cast a Spell
C 31041,3 Print or update Command Summary Window at top of screen
C 31044,3 Point DE at "CAST A SPELL"...
C 31047,3 ...and print in Command Summary Window at top of screen
C 31050,3 Point HL at byte before "WHICH SPELL DO YOU WANT TO CAST?" full menu text
C 31053,3 Adjust height of window 27 to accommodate text...
C 31056,3 ...
C 31059,1 Store HL (pointer to menu text to print)
C 31060,2 Draw Menu Window 27...
C 31062,3 ...
C 31065,1 Restore HL (pointer to menu text to print)
C 31066,3 Print text to screen
C 31069,3 Process keyboard / joystick input on a menu and load A with selected item index
C 31072,3 Store index of spell selected in this routine at #R31104
C 31075,3 Print or update Command Summary Window at top of screen
C 31078,3 Point HL at "CAST REMOVE BARRIERS" text (i.e. first in list of "CAST [SPELL]" strings)
C 31081,3 Load index of spell selected into B...
C 31084,1 ...
C 31085,3 ...and advance HL to relevant "CAST [SPELL]" string
C 31088,1 Swap DE (now points to "CAST [SPELL]" text) and HL...
C 31089,3 ...and print in Command Summary Window at top of screen
C 31092,3 Load index of spell selected into A
C 31095,2 If selected spell is 2 (FORTIFY CHARACTER)...
C 31097,2 ...then skip ahead to #R31104
C 31099,2 If selected spell is not 5 (or 2, i.e. any spell except FORTIFY CHARACTER)...
C 31101,3 ...then display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
N 31104 The operand of the instruction at #R31104 represents the index of the selected spell. This is modified by the instruction at #R31072.
C 31104,2 Load A with index of selected spell
C 31106,3 Point HL at table of Cast a Spell routine addresses
C 31109,3 Load HL with address of appropriate Cast a Spell Routine and jump to it
b 31112 Table of Cast a Spell Routine Addresses
W 31112,2,2 Remove Barriers
W 31114,2,2 Consult Oracle
W 31116,2,2 Fortify Character
W 31118,2,2 Fortify Yourself
W 31120,2,2 Lightning Bolt
c 31122 Cast Remove Barriers if Possible, else Display Failure Message
C 31122,3 If Barriers Removed Flag is set...
C 31125,2 ...
C 31127,3 ...then display "THERE ARE NO BARRIERS TO BE REMOVED HERE." Window (29), wait for fire to be pressed then jump to Main Game Loop
C 31130,3 If Magic Knight's current room is not 09 (Retreat, 2, Barrier Room)...
C 31133,2 ...
C 31135,3 ...then display "THERE ARE NO BARRIERS TO BE REMOVED HERE." Window (29), wait for fire to be pressed then jump to Main Game Loop
C 31138,2 If Magic Knight is not wearing the Magic Talisman (12)...
C 31140,3 ...
C 31143,3 ...then display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), wait for fire to be pressed then jump to Main Game Loop
C 31146,3 Load Magic Knight's current magic level into A...
C 31149,2 ...
C 31151,2 If this is less than 55...
C 31153,3 ...then display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), wait for fire to be pressed then jump to Main Game Loop
C 31156,2 Subtract 55 from Magic Level...
C 31158,1 ...and load into B
C 31159,3 Load A with unused bit...
C 31162,2 ...
C 31164,1 ...combine with remaining Magic Level value...
C 31165,3 ...and store
C 31168,3 Flash border and screen (as in cast a spell)
C 31171,3 Set Barriers Removed Flag...
C 31174,2 ...
C 31176,3 ...
C 31179,3 Set Room Layout Data Pointer address for Retreat, 2 to address of "Without Barrier" version of Room 09 (#R50956)...
C 31182,3 ...
C 31185,3 Display "THE BARRIER HAS FADED INTO NOTHINGNESS" Window (29), wait for fire to be pressed then jump to Main Game Loop
c 31188 Cast Consult Oracle if Possible, else Display Failure Message
C 31188,2 If Magic Knight is not carrying the Bag of Runes (29)...
C 31190,3 ...
C 31193,3 ...then display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), wait for fire to be pressed then jump to Main Game Loop
C 31196,3 Load Magic Knight's current magic level into A...
C 31199,2 ...
C 31201,2 If this is less than 30...
C 31203,3 ...then display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), wait for fire to be pressed then jump to Main Game Loop
C 31206,2 Subtract 30 from Magic Level...
C 31208,1 ...and load into B
C 31209,3 Load A with unused bit...
C 31212,2 ...
C 31214,1 ...combine with remaining Magic Level value...
C 31215,3 ...and store (see trivia)
C 31218,3 If index of previous "Consult Oracle" text shown is not 9...
C 31221,2 ...
C 31223,2 ...then skip ahead to #R31227
C 31225,2 Load A with 255 (will be "increased" to zero in next instruction)
C 31227,1 Increase value of A (index of next "Consult Oracle" text to show)...
C 31228,3 ...and store
C 31231,1 Load B with text index
C 31232,3 Point HL at start of list of "Consult Oracle" texts at #R45949
C 31235,3 Advance HL to B-th entry in this list
C 31238,3 Adjust height of window 29 to accommodate text...
C 31241,3 ...
C 31244,1 Store HL (pointer to start of text to print)
C 31245,2 Draw Window 29...
C 31247,3 ...
C 31250,1 Restore HL (pointer to start of text to print)
C 31251,3 Print the text
C 31254,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 31257 Cast Fortify Character if Possible, else Display Failure Message
C 31257,3 Point HL at "FORTIFY?" text (to append to title of Character Selection Menu)
C 31260,3 Point DE at "CAST FORTIFY SPELL ON " (Command Summary Text Pointer)
C 31263,3 Display and process input for Character Selection Menu (current room's characters only), setting Current Character
C 31266,3 If there are no characters in the room then set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 31269,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 31272,3 Point IX at Current Character's current stats...
C 31275,2 ...and copy address into HL...
C 31277,1 ...
C 31278,2 Jump to #R31283 (fortify stats at HL and return to Main Game Loop)
c 31280 Cast Fortify Yourself if Possible, else Display Failure Message Input:  HL (Entry at #R31283 only) Pointer to a character's current stats
C 31280,3 Point HL at Magic Knight's current stats
N 31283 This entry point is used by the routine at #R31257.
C 31283,2 Load B with 4 (as we are fortifying four stats)
C 31285,2 Load C with 25 (increment for stats)
C 31287,1 Load current stat into A...
C 31288,3 ...increment A by 25, capping at 100...
C 31291,1 ...and store
C 31292,1 Advance HL to next stat
C 31293,2 Decrease B (remaining number of stats to fortify) and loop back to #R31285
C 31295,3 Load B with unused bit...
C 31298,2 ...
C 31300,1 ...
C 31301,1 Set A (Magic Level) to zero (see trivia)
C 31302,1 Recombine unused bit...
C 31303,3 ...and store
C 31306,3 Flash border and screen (as in cast a spell)
C 31309,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 31312 Cast Lightning Bolt if Possible, else Display Failure Message
C 31312,3 Load Magic Knight's current magic level into A...
C 31315,2 ...
C 31317,2 If this is less than 65...
C 31319,3 ...then display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), wait for fire to be pressed then jump to Main Game Loop
C 31322,2 Subtract 65 from Magic Level...
C 31324,1 ...and load into B
C 31325,3 Load A with unused bit...
C 31328,2 ...
C 31330,1 ...combine with remaining Magic Level value...
C 31331,3 ...and store
C 31334,3 Flash border and screen (as in cast a spell)
C 31337,3 Point HL at "YOUR LIGHTNING BOLT HAS ALERTED THE SECURITY SYSTEM..." text
C 31340,3 Load A with Magic Knight's current room
C 31343,2 If Magic Knight's current room is Retreat, 0, "Murphy's Moon" (07)...
C 31345,3 ...then jump to "Game over" window routine and return to Control Selection Menu
C 31348,2 If Magic Knight's current room is Retreat, 1 (08)...
C 31350,3 ...then jump to "Game over" window routine and return to Control Selection Menu
C 31353,2 If Magic Knight's current room is Monopole, 0, "Hooper's Emergency Exit" (21)...
C 31355,3 ...then jump to "Game over" window routine and return to Control Selection Menu
C 31358,2 If Magic Knight's current room is Monopole, 1, "This Way to Hooper ==>>" (22)...
C 31360,3 ...then jump to "Game over" window routine and return to Control Selection Menu
C 31363,2 If Magic Knight's current room is not USS Pisces, 6A, "The Control Column" (24)...
C 31365,2 ...then skip ahead to #R31392
C 31367,3 If Tyme Machine Charged Flag is set...
C 31370,2 ...
C 31372,2 ...then skip ahead to #R31392
C 31374,2 Set Tyme Machine Charged and Barriers Removed flags... (bug)
C 31376,3 ...
C 31379,3 Increase Bonus Score by 10...
C 31382,2 ...
C 31384,3 ...
C 31387,3 Point HL at "YOUR LIGHTNING BOLT HAS HIT THE ANCIENT TYME MACHINE..." text
C 31390,2 Display text in message window and return to Main Game Loop
C 31392,3 Point HL at "YOU HAVE THROWN A LIGHTNING BOLT BUT..." text
C 31395,3 Load B with Magic Knight's current room...
C 31398,1 ...
C 31399,3 Load A with current room of Part of a Sundial (1)...
C 31402,1 ...and if this is not the same as Magic Knight's current room...
C 31403,2 ...then display text in message window and return to Main Game Loop
C 31405,3 Load A with current room of Part of a Sundial (2)...
C 31408,1 ...and if this is not the same as Magic Knight's current room...
C 31409,2 ...then display text in message window and return to Main Game Loop
C 31411,3 Load A with current room of Part of a Sundial (3)...
C 31414,1 ...and if this is not the same as Magic Knight's current room...
C 31415,2 ...then display text in message window and return to Main Game Loop
C 31417,2 Set current room of three Sundial parts to 99 (i.e. out of game area)...
C 31419,3 ...
C 31422,3 ...
C 31425,3 ...
C 31428,1 Load A with Magic Knight's current room...
C 31429,3 ...and set this as the current room of the Golden Sundial of Alpha
C 31432,3 Copy x- and y-coordinates of Part of a Sundial (2)...
C 31435,3 ...to Golden Sundial of Alpha
C 31438,3 Increase Bonus Score by 10...
C 31441,2 ...
C 31443,3 ...
C 31446,3 Point HL at "THE SEGMENTS OF THE GOLDEN SUNDIAL OF ALPHA..." text
C 31449,3 Adjust height of Window 29 to accommodate text...
C 31452,3 ...
C 31455,1 Store HL (pointer to start of text to print)
C 31456,2 Draw Window 29...
C 31458,3 ...
C 31461,1 Restore HL (pointer to start of text to print)...
C 31462,3 ...and print
C 31465,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 31468 Show "WELL DONE MAGIC KNIGHT" Screen, Jumping to Game Over on Key-Press
D 31468 Used by the routine at #R30940.
C 31468,2 Set Interrupt Mode 1
C 31470,3 Increase Bonus Score by 5...
C 31473,2 ...
C 31475,3 ...
C 31478,3 Flash border and screen (as in cast a spell)
C 31481,3 Blank out top two thirds of Display File...
C 31484,3 ...
C 31487,3 ...
C 31490,1 ...
C 31491,2 ...
C 31493,2 Load A with 71 (white INK, black PAPER, BRIGHT)...
C 31495,3 ...and flood Attribute File with this attribute
C 31498,2 Draw Window 22...
C 31500,3 ...
C 31503,3 Point HL at "WELL DONE..." text...
C 31506,3 ...and print to screen
C 31509,3 Set Magic Knight's x- and y-velocities to zero...
C 31512,3 ...
C 31515,3 Set Magic Knight's x-coordinate to 120 and y-coordinate to 75...
C 31518,3 ...
C 31521,1 Set unused data at #R25158 to zero...
C 31522,3 ...
C 31525,3 Store background attributes if appropriate, then draw Magic Knight to display
C 31528,3 If keypress was enqueued then load A with index of last key pressed, otherwise wait for keypress and load A with index
C 31531,3 Point HL at "YOU HAVE ESCAPED FROM THE FUTURE..." text
C 31534,3 Jump to "Game over" window routine and return to Control Selection Menu
c 31537 Process Command to Wear / Unwear an Object
C 31537,2 Draw Window 11...
C 31539,3 ...
C 31542,3 Point HL at Wear/Unwear Menu text...
C 31545,3 ...and print to screen
C 31548,3 Process keyboard / joystick input on a menu and load A with selected item index
C 31551,2 If UNWEAR selected then skip ahead to #R31627
C 31553,3 Display "YOU ARE NOT CARRYING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (carrying) is empty
C 31556,3 If MK's inventory (carrying) is empty then set his available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 31559,4 Point IX at Magic Knight's current inventory (carrying)
C 31563,2 Load B with 5 (five inventory slots)
C 31565,3 Point HL at "WEAR WHICH OBJECT ?" text
C 31568,3 Point DE at "WEAR THE " text
C 31571,3 Show list of objects in Magic Knight's inventory (carrying) as a menu and load A with selected item index
C 31574,3 Point HL at start of Magic Knight's current inventory (carrying)
C 31577,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 31580,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 31583,3 If last slot in Magic Knight's current inventory (wearing) is not empty...
C 31586,1 ...
C 31587,1 ...
C 31588,3 ...then display "YOU ARE WEARING TOO MUCH" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 31591,3 Load A with index of Current Object
C 31594,2 If object's Can Wear Flag is reset...
C 31596,3 ...
C 31599,2 ...
C 31601,3 ...then display "YOU CANNOT WEAR THAT" Window (13), wait for fire to be pressed then jump to Main Game Loop
C 31604,3 Load C with index of Current Object...
C 31607,1 ...
C 31608,2 Load B with 5 (five inventory slots)
C 31610,1 Store BC (B = number of slots to process, C = Current Object)
C 31611,3 Point HL at start of Magic Knight's current inventory (carrying)
C 31614,3 Remove object C from this inventory
C 31617,1 Restore BC (B = number of slots to process, C = Current Object)
C 31618,3 Point HL at Magic Knight's current inventory (wearing)...
C 31621,3 ...and load object C into the first empty slot
C 31624,3 Show Magic Knight's current inventory and jump back to Main Game Loop
C 31627,3 Display "YOU ARE NOT WEARING ANYTHING" Window and set Zero Flag if Magic Knight's inventory (wearing) is empty
C 31630,3 If MK's inventory (wearing) is empty then set his available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop (#R29482)
C 31633,4 Point IX at Magic Knight's current inventory (wearing)
C 31637,2 Load B with 5 (five inventory slots)
C 31639,3 Point HL at "UNWEAR WHICH OBJECT ?" text
C 31642,3 Point DE at "UNWEAR THE " text
C 31645,3 Show list of objects in Magic Knight's inventory (wearing) as a menu and load A with selected item index
C 31648,3 Point HL at Magic Knight's current inventory (wearing)
C 31651,3 Print name of object in inventory slot A of inventory data at HL in Command Summary Window
C 31654,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 31657,3 Load A with index of object in Magic Knight's fifth inventory slot (carrying)...
C 31660,1 ...
C 31661,1 If this is not zero (i.e. Magic Knight's hands are full)...
C 31662,3 ...then display "YOUR HANDS ARE FULL" window, wait for fire to be pressed then jump to Main Game Loop
C 31665,3 Load C with index of Current Object...
C 31668,1 ...
C 31669,2 Load B with 5 (five inventory slots)
C 31671,1 Store BC (B = number of slots to process, C = Current Object)
C 31672,3 Point HL at Magic Knight's current inventory (wearing)
C 31675,3 Remove object C from Magic Knight's current inventory (wearing)
C 31678,1 Restore BC (B = number of slots to process, C = Current Object)
C 31679,3 Point HL at start of Magic Knight's current inventory (carrying)...
C 31682,3 ...and load Object C into the first empty slot
C 31685,3 Show Magic Knight's current inventory and jump back to Main Game Loop
c 31688 Process Command to Move Starship
C 31688,2 Set MASK P and MASK T system variables to 255...
C 31690,3 ...to preserve attributes already on screen...
C 31693,3 ...
C 31696,3 Print or update Command Summary Window at top of screen
C 31699,3 Point DE at "MOVE THE STARSHIP TO"...
C 31702,3 ...and print in Command Summary Window at top of screen
C 31705,3 Load D with USS Pisces' Current Location...
C 31708,1 ...
C 31709,3 Point HL at Starship Location Connectivity Data
C 31712,3 Load B with 64 and C with zero
C 31715,1 Load current location index in Starship Location Connectivity Data into A...
C 31716,1 ...and if this is the same as the USS Pisces' Current Location...
C 31717,2 ...then skip ahead to #R31723
C 31719,1 Advance HL to next location index
C 31720,1 Increase C
C 31721,2 Loop back to #R31715
C 31723,1 Load C (index of index of USS Pisces' Current Location!) into instruction at #R31766 as operand...
C 31724,3 ...
C 31727,3 Load BC with 9
C 31730,1 Reset Carry Flag
C 31731,2 Move HL back nine bytes to cell to current location's north-west
C 31733,3 Point DE at the List of Currently Available Destinations
C 31736,2 Load B with 3
C 31738,1 Store BC (B = current repeat counter)
C 31739,1 Copy entry from Starship Location Connectivity Data to List of Currently Available Destinations...
C 31740,1 ...
C 31741,1 Advance List of Currently Available Destinations pointer
C 31742,1 Advance Starship Location Connectivity Data pointer east one unit
C 31743,1 If repeat counter is 2...
C 31744,2 ...
C 31746,2 ...then skip ahead to #R31751 (skip over current location as we are already here!)
C 31748,1 Copy entry from Starship Location Connectivity Data to List of Currently Available Destinations...
C 31749,1 ...
C 31750,1 Advance List of Currently Available Destinations pointer
C 31751,1 Advance Starship Location Connectivity Data pointer east one unit
C 31752,1 Copy entry from Starship Location Connectivity Data to List of Currently Available Destinations...
C 31753,1 ...
C 31754,1 Advance List of Currently Available Destinations pointer
C 31755,3 Advance Starship Location Connectivity Data pointer by 6 bytes (i.e. south one and west two units)...
C 31758,1 ...
C 31759,1 Restore BC (B = current repeat counter)
C 31760,2 Loop back to #R31738 for next iteration
C 31762,4 Point IX at start of List of Currently Available Destinations
C 31766,2 Load A with index of index of USS Pisces' Current Location as stored by instruction at #R31723
C 31768,2 If index is less than 8 (i.e. already on northern-most row of grid)...
C 31770,3 ...then remove starship destination entries for locations to the north-west, north and north-east
C 31773,2 If index is 24 or more (i.e. already on southern-most row of grid)...
C 31775,3 ...then remove starship destination entries for locations to the south-west, south and south-east
N 31778 This entry point is used by the routines at #R32200 and #R32213.
C 31778,3 Load A with index of index of USS Pisces' Current Location as stored by instruction at #R31723
C 31781,2 If lowest three bits are reset...
C 31783,1 ...(i.e. already on western-most column of grid)...
C 31784,3 ...then remove starship destination entries for locations to the north-west, west and south-west
C 31787,2 If lowest three bits are set (i.e. already on eastern-most column of grid)...
C 31789,3 ...then remove starship destination entries for locations to the north-east, east and south-east
N 31792 This entry point is used by the routines at #R32226 and #R32239. Code here compacts the List of Currently Available Destinations at #R23436 by removing mid-list zeroes.
C 31792,3 Point HL at start of List of Currently Available Destinations
C 31795,3 Point DE at start of List of Currently Available Destinations
C 31798,3 Set B = 8 (as List of Currently Available Destinations can have at most eight entries) and C = 0
C 31801,1 If current Available Destination List entry is zero...
C 31802,1 ...
C 31803,2 ...then skip ahead to #R31808 (advance HL to next list position)
C 31805,1 Set byte at DE to value read from HL
C 31806,1 Increase C (current number of entries in tidied list)
C 31807,1 Advance DE to next list position
C 31808,1 Advance HL to next list position
C 31809,2 Decrease B (remaining list entries to process) and loop back to #R31801
C 31811,2 Load A with 9...
C 31813,1 ...plus number of entries in List of Currently Available Destinations
C 31814,1 Store BC (C = number of available destinations)
C 31815,3 Set y-coordinate of bottom of "WHERE TO ?" Window (Window 25) to value stored in A
C 31818,2 Set Initial (and minimum allowed) y-coordinate of Hand Cursor to 1 for Window 25...
C 31820,3 ...
C 31823,2 Draw "WHERE TO?" Menu Window...
C 31825,3 ...
C 31828,3 Point HL at "WHERE TO ?" text...
C 31831,3 ...and print to screen
C 31834,1 Restore BC (C = number of available destinations)
N 31835 Print list of available destinations as options in "WHERE TO ?" Window
C 31835,3 Point HL at start of List of Currently Available Destinations
C 31838,1 Load B with number of available destinations
C 31839,1 Load location index from current position in List of Currently Available Destinations
C 31840,1 Store HL (current position in List of Currently Available Destinations)
C 31841,1 Store BC (B = remaining number of available destinations)
C 31842,1 Store AF (A = index of a location read from destinations list)
C 31843,3 Move cursor to start of next character row within window, then right by two characters...
C 31846,3 ...
C 31849,1 Restore AF (A = index of a location read from destinations list)
C 31850,1 Load B with location index...
C 31851,3 ...and point HL at that location's name
C 31854,3 Print the location's name in the menu window
C 31857,1 Restore BC (B = remaining number of available destinations)
C 31858,1 Restore HL (current position in List of Currently Available Destinations)
C 31859,1 Advance HL to next location in list
C 31860,2 Loop back to #R31839 to print next name in list
C 31862,3 Process keyboard / joystick input on a menu and load A with selected item index
C 31865,1 Load BC with index of selected destination...
C 31866,2 ...
C 31868,3 Point HL at start of List of Currently Available Destinations...
C 31871,1 ...and advance to entry for selected destination
C 31872,1 Store this location index as operand of instruction at #R32034...
C 31873,3 ...
C 31876,1 Load B with location's index
C 31877,3 Point HL at the location's name
C 31880,1 Switch HL and DE (DE now points to location's name)...
C 31881,3 ...and print in Command Summary Window at top of screen
C 31884,3 Point DE at "AT"...
C 31887,3 ...and print in Command Summary Window at top of screen
C 31890,3 Point DE at y-coordinate of top edge of Window 25...
C 31893,2 ...and set this window's height to 14...
C 31895,3 ...
C 31898,2 Set Initial (and minimum allowed) y-coordinate of Hand Cursor to 2 for Window 25...
C 31900,3 ...
C 31903,2 Draw Menu Window 25...
C 31905,3 ...
C 31908,3 Point HL at "MOVE STARSHIP" Speed Selection Menu Heading text...
C 31911,3 ...and print to screen
C 31914,3 Point HL at "MOVE STARSHIP" Speed Selection Menu Options text...
C 31917,3 ...and print to screen
C 31920,3 Process keyboard / joystick input on a menu and load A with selected item index
C 31923,3 Store selected speed index at #R23484
C 31926,3 Point HL at start of list of Speed Strings
C 31929,1 Load B with index of selected speed
C 31930,3 Advance HL to B-th entry in list of Speed Strings
C 31933,1 Switch HE and DE (DE now points to Speed String for selected speed)...
C 31934,3 ...and print in Command Summary Window at top of screen
C 31937,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 31940,3 If Gordon and Sarab are both asleep then reset Zero Flag, otherwise increase their happiness by five if not
C 31943,3 If Zero Flag is reset then display "GORDON AND SARAB ARE BOTH ASLEEP" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 31946,2 If Magic Knight is wearing the Gas Mask (27)...
C 31948,3 ...
C 31951,3 ...then display "GORDON AND SARAB CANNOT UNDERSTAND YOU" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 31954,3 Reset all stars to point of origin and generate new velocities and movement data
C 31957,2 Set Current Starship Location in " LOCATION : [name of Current Starship Location]" text at #R38298...
C 31959,3 ...to "IN TRANSIT" (189)
C 31962,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 31965,3 Scroll viewscreen content down 24 pixel rows then display acceleration / deceleration effect (i.e. leave orbit)
C 31968,3 Load A with selected speed index...
C 31971,2 ...multiply by minus one...
C 31973,2 ...and add 10 to give a delay constant between 1 (fastest) to 10 (slowest)
C 31975,3 Update operand to instruction at #R36349 to hold delay constant value
C 31978,3 Load A with selected speed index plus one...
C 31981,1 ...
C 31982,1 Load E with this value multiplied by eight...
C 31983,1 ...
C 31984,1 ...
C 31985,1 ...
C 31986,3 Load B with zero and C (remaining number of blocks of 256 timesteps to process) with 1
C 31989,1 Store BC (B = remaining number of timesteps to process)
C 31990,1 Store DE (E = eight times [speed index + 1])
C 31991,3 Advance positions of stars on viewscreen by one timestep
C 31994,1 Restore DE (E = eight times [speed index + 1])
C 31995,3 Load A with fraction remaining of current unit of star drive fuel
C 31998,1 Subtract E (eight times [speed index + 1])...
C 31999,3 ...and store
C 32002,2 If unit of star drive fuel was not completely depleted then skip ahead to #R32017
C 32004,3 Decrease USS Pisces' Star Drive Fuel by one...
C 32007,1 ...
C 32008,3 ...
C 32011,3 Point HL at "YOU RAN OUT OF STAR DRIVE FUEL..." text
C 32014,3 If no star drive fuel remains then jump to "Game over" window routine and return to Control Selection Menu
C 32017,1 Restore BC (B = remaining number of timesteps to process)
C 32018,2 Decrease remaining number of timesteps to process and loop back to #R31989 if not zero
C 32020,1 Decrease C (remaining number of blocks of 256 timesteps to process)
C 32021,2 If C is not zero (i.e. there are more blocks of timesteps to process) then loop back to #R31989
C 32023,3 Play "USS Pisces has Arrived" sound
C 32026,3 Display acceleration / deceleration effect then scroll viewscreen content up 24 pixel rows (i.e. enter orbit)
C 32029,2 Set Current Starship Location in " LOCATION : [name of Current Starship Location]" text at #R38298...
C 32031,3 ...to the name of the Current Starship Location (28)
N 32034 The operand of the instruction at #R32034 represents the selected destination from the "MOVE STARSHIP" command. This is modified by the instruction at #R31873.
C 32034,2 Load A with selected destination location index...
C 32036,3 ...and set this as the USS Pisces' current location
C 32039,2 If A is 5 (i.e. location is Starbase 1)...
C 32041,3 ...then set unknown flag and set A to zero
C 32044,2 If A is 27 (location index of Starbase 2 in 128k version)... (see trivia)
C 32046,3 ...then set unknown flag and set A to zero
C 32049,3 Draw Top In-Game Window
C 32052,3 Display "THE STARSHIP HAS ARRIVED AT [Starship Location]" Window (12), wait for fire to be pressed then jump to Main Game Loop
c 32055 Set Unknown Flag
D 32055 Used by the routine at #R31688. Output: A  Always zero
C 32055,3 Set Unknown / Unused Flag 1...
C 32058,2 ...
C 32060,3 ...
C 32063,1 Set A to zero
C 32064,1 Return
c 32065 Scroll Viewscreen Content Down 24 Pixel Rows then Display Acceleration / Deceleration Effect (i.e. Leave Orbit)
D 32065 Used by the routine at #R31688.
C 32065,3 Set left and right x-coordinates of region to scroll to 7 and 24 (characters) respectively...
C 32068,3 ...
C 32071,3 Set top and bottom y-coordinates of region to scroll to 64 and 142 (pixels) respectively...
C 32074,3 ...
C 32077,3 Point DE at end of temporary storage area (i.e. last pixel-row's data)
C 32080,2 Load B with 24 (number of pixels to scroll viewscreen content down)
C 32082,1 Store BC (B = remaining number of pixels to scroll viewscreen content down)
C 32083,1 Store DE (address of current position in temporary storage area)
C 32084,1 Wait for two interrupts...
C 32085,1 ...
C 32086,3 Scroll a region of the Display File down a pixel row without wrapping
C 32089,1 Restore DE (address of current position in temporary storage area)
C 32090,1 Store DE (address of current position in temporary storage area)
C 32091,3 Point HL at 7th pixel row of character block at 7, 17 (left-most byte of bottom pixel row of viewscreen contents)
C 32094,3 Load B with 18 (as viewscreen contents are 18 characters wide) and C with zero
C 32097,2 Copy bitmap data in bottom pixel row of viewscreen content to temporary storage area
C 32099,3 Point HL at Display File address for pixel row two above top of planet graphic (leftmost character in viewscreen content)
C 32102,3 Point DE at Display File address for top pixel row in viewscreen content (leftmost character block)
C 32105,3 Copy viewscreen content bitmap data from pixel row two above top of planet graphic to top pixel row in viewscreen content...
C 32108,2 ...
C 32110,1 Restore HL (address of current position in temporary storage area, was previously in DE)
C 32111,1 Reset Carry Flag
C 32112,3 Move HL back 18 bytes...
C 32115,2 ...
C 32117,1 Swap DE (now points to current position in temporary storage area) and HL
C 32118,1 Restore BC (B = remaining number of pixels to scroll viewscreen content down)
C 32119,2 Decrease remaining number of pixel rows to scroll viewscreen content down, and loop back to #R32082 if not zero
C 32121,3 Display acceleration / deceleration effect on USS Pisces viewscreen and return
c 32124 Display Acceleration / Deceleration Effect then Scroll Viewscreen Content Up 24 Pixel Rows (i.e. Enter Orbit)
D 32124 Used by the routine at #R31688.
C 32124,3 Display acceleration / deceleration effect on USS Pisces viewscreen
C 32127,3 Load A with selected destination
C 32130,3 Prepare viewscreen for USS Pisces' arrival at destination
C 32133,3 Point HL at start of temporary storage area
C 32136,2 Load B with 24 (number of pixels to scroll viewscreen content up)
C 32138,1 Store BC (B = remaining number of pixels to scroll viewscreen content up)
C 32139,1 Wait for two interrupts...
C 32140,1 ...
C 32141,3 Point DE at 7th pixel row of character block at 7, 17 (left-most byte of bottom pixel row of viewscreen contents)
C 32144,3 Load B with 18 (as viewscreen contents are 18 characters wide) and C with zero
C 32147,2 Copy bitmap data in temporary storage area to bottom pixel row of viewscreen content
C 32149,1 Store HL (current position in temporary storage area)
C 32150,3 Scroll viewscreen contents up a pixel row without wrapping
C 32153,1 Restore HL (current position in temporary storage area)
C 32154,1 Restore BC (B = remaining number of pixels to scroll viewscreen content up)
C 32155,2 Decrease B (remaining number of pixels to scroll viewscreen content up) and loop back to #R32138 if not zero
C 32157,1 Return
c 32158 Prepare Viewscreen for USS Pisces' Arrival at Destination
D 32158 Used by the routine at #R32124. Input:  A  A destination index
C 32158,1 Double destination index...
C 32159,1 ...and load into BC...
C 32160,2 ...
C 32162,3 Point HL at first attribute entry in Table of Current Planetary Data...
C 32165,1 ...and add BC as offset
C 32166,1 Load A with attribute of planet at new location
C 32167,3 Set colour of planet on viewscreen to this value
C 32170,3 Prepare to fill a region with the attribute in A
C 32173,3 Set left and right x-coordinates of region to scroll to 7 and 24 (characters) respectively...
C 32176,3 ...
C 32179,3 Set top and bottom y-coordinates of region to scroll to 64 and 142 (pixels) respectively...
C 32182,3 ...
C 32185,3 Set top-left of area to fill to (7, 8) (characters)...
C 32188,3 ...
C 32191,3 Set bottom-right of area to fill to (24, 17) (characters)...
C 32194,3 ...
C 32197,3 Fill a region of Attribute File with specified attribute and return
c 32200 Remove Starship Destination Entries for Locations to the North-West, North and North-East
D 32200 Used by the routine at #R31688.
C 32200,1 Set three bytes from IX onwards to zero...
C 32201,3 ...i.e. remove connectivity to the north-west...
C 32204,3 ...north...
C 32207,3 ...and north-east
C 32210,3 Return to "MOVE STARSHIP" routine
c 32213 Remove Starship Destination Entries for Locations to the South-West, South and South-East
D 32213 Used by the routine at #R31688.
C 32213,1 Set three bytes from IX+5 onwards to zero...
C 32214,3 ...i.e. remove connectivity to the south-west...
C 32217,3 ...south...
C 32220,3 ...and south-east
C 32223,3 Return to "MOVE STARSHIP" routine
c 32226 Remove Starship Destination Entries for Locations to the North-West, West and South-West
D 32226 Used by the routine at #R31688.
C 32226,1 Relative to IX, set bytes 0, 3 and 5 to zero...
C 32227,3 ...i.e. remove connectivity to the north-west...
C 32230,3 ...west...
C 32233,3 ...and south-west
C 32236,3 Return to "MOVE STARSHIP" routine
c 32239 Remove Starship Destination Entries for Locations to the North-East, East and South-East
D 32239 Used by the routine at #R31688.
C 32239,1 Relative to IX, set bytes 2, 4 and 7 to zero...
C 32240,3 ...i.e. remove connectivity to the north-east...
C 32243,3 ...east...
C 32246,3 ...and south-east
C 32249,3 Return to "MOVE STARSHIP" routine
c 32252 Process Command to Use Transporter
C 32252,3 Print or update Command Summary Window at top of screen
C 32255,3 Point DE at "SEND TRANSPORTER CONTENTS"...
C 32258,3 ...and print in Command Summary Window at top of screen
C 32261,3 Point DE at "TO"...
C 32264,3 ...and print in Command Summary Window at top of screen
C 32267,3 Point DE at y-coordinate of top edge of Window 17 in Window Data Table at #R37089...
C 32270,2 ...and set this window's height to 13...
C 32272,3 ...
C 32275,2 Draw Window 17...
C 32277,3 ...
C 32280,3 Point HL at "ENTER TRANSPORTER COORDINATES" Menu text...
C 32283,3 ...and print to screen
C 32286,2 Set ATTR T system variable to 127 (white INK, white PAPER, BRIGHT)...
C 32288,3 ...
C 32291,3 Load D with 72 (pixels) and E with 6 (characters)
C 32294,3 Handle vertical scrolling digit selection for x-coordinate and load A with selected digit's ASCII code
C 32297,3 Set x-coordinate value (as ASCII character code) in "YOU HAVE ARRIVED AT..." text at #R42171
C 32300,3 Load D with 72 (pixels) and E with 8 (characters)
C 32303,3 Handle vertical scrolling digit selection for x-coordinate and load A with selected digit's ASCII code
C 32306,3 Set y-coordinate value (as ASCII character code) in "YOU HAVE ARRIVED AT..." text at #R42171
C 32309,3 Load D with 72 (pixels) and E with 10 (characters)
C 32312,3 Handle vertical scrolling digit selection for x-coordinate and load A with selected digit's ASCII code
C 32315,3 Set z-coordinate value (as ASCII character code) in "YOU HAVE ARRIVED AT..." text at #R42171
C 32318,2 Set ATTR T system variable to 78 (yellow INK, blue PAPER, BRIGHT)...
C 32320,3 ...
C 32323,3 Point DE at "X.Y.Z."...
C 32326,3 ...and print in Command Summary Window at top of screen
C 32329,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 32332,3 If Transporter Repaired Flag is reset...
C 32335,2 ...
C 32337,3 ...then skip ahead to #R32521
C 32340,3 Point HL at Table of Transporter Pad Data
C 32343,3 Load BC with 8 (as each transporter pad entry is eight bytes wide)
C 32346,3 If current transporter pad is at the same location as the USS Pisces...
C 32349,1 ...
C 32350,2 ...then skip ahead to #R32360
C 32352,2 If current transporter pad's current location is 99 (end marker)...
C 32354,1 ...
C 32355,2 ...then skip ahead to #R32360
C 32357,1 Advance HL by eight bytes to next transporter pad entry
C 32358,2 Loop back to #R32346 for next transporter pad
C 32360,1 Advance HL to transporter pad's x-coordinate (ASCII)
C 32361,3 Load A with ASCII x-coordinate value from "YOU HAVE ARRIVED AT..." text at #R42171...
C 32364,2 ...and if this is 48 ("0", i.e. first digit in USS Pisces' transporter coordinates)...
C 32366,3 ...then skip ahead to #R32449
C 32369,1 If current transporter pad's ASCII x-coordinate is not the same as x-coordinate value in A...
C 32370,3 ...then skip ahead to #R32482
C 32373,3 Load A with ASCII y-coordinate value from "YOU HAVE ARRIVED AT..." text at #R42171
C 32376,1 Advance HL to transporter pad's ASCII y-coordinate
C 32377,1 If current transporter pad's ASCII y-coordinate is not the same as y-coordinate value in A...
C 32378,3 ...then skip ahead to #R32482
C 32381,3 Load A with ASCII z-coordinate value from "YOU HAVE ARRIVED AT..." text at #R42171
C 32384,1 Advance HL to transporter pad's ASCII z-coordinate
C 32385,1 If current transporter pad's ASCII z-coordinate is not the same as z-coordinate value in A...
C 32386,3 ...then skip ahead to #R32482
C 32389,1 Advance HL to transporter pad's room
C 32390,1 Set operand of instruction at #R32427 to index of pad's room...
C 32391,3 ...
C 32394,1 Advance HL to destination x-coordinate (for Magic Knight)
C 32395,1 Set operand of instruction at #R32417 to destination x-coordinate...
C 32396,3 ...
C 32399,1 Advance HL to destination y-coordinate (for Magic Knight)
C 32400,1 Set operand of instruction at #R32422 to destination y-coordinate...
C 32401,3 ...
C 32404,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 32407,3 Set top-left and bottom-right of area to cycle attributes (for transporter effect)
C 32410,1 Prepare to fill a region with attribute 0 (black INK, black PAPER)...
C 32411,3 ...
C 32414,3 Display transporter glow effect
N 32417 The operand of the instruction at #R32417 is Magic Knight's new x-coordinate. This is modified by the instructions at #R32396 and #R32472.
C 32417,2 Set Magic Knight's x-coordinate (pixels) to transporter pad arrival point
C 32419,3 ...
N 32422 The operand of the instruction at #R32422 is Magic Knight's new y-coordinate. This is modified by the instructions at #R32401 and #R32477.
C 32422,2 Set Magic Knight's y-coordinate (pixels) to transporter pad arrival point
C 32424,3 ...
N 32427 The operand of the instruction at #R32427 is the index of the room to move Magic Knight into. This is modified by the instructions at #R32391 and #R32467.
C 32427,2 Move Magic Knight into room A, draw room and initialise room-specific data...
C 32429,3 ...
C 32432,3 Set top-left and bottom-right of area to cycle attributes (for transporter effect)
C 32435,3 Display transporter glow effect
C 32438,2 Prepare to fill a region with attribute 7 (white INK, black PAPER)...
C 32440,3 ...
C 32443,3 Fill a region of Attribute File with specified attribute
C 32446,3 Display "YOU HAVE ARRIVED AT X.Y.Z." Window (17), wait for fire to be pressed then jump to Main Game Loop
C 32449,3 Load A with y-coordinate value (as ASCII character code) from "YOU HAVE ARRIVED AT..." text at #R42171...
C 32452,2 ...and if this is not 48 ("0")...
C 32454,3 ...then skip ahead to #R32482
C 32457,3 Load A with z-coordinate value (as ASCII character code) from "YOU HAVE ARRIVED AT..." text at #R42171
C 32460,2 ...and if this is not 48 ("0")...
C 32462,3 ...then skip ahead to #R32482
C 32465,2 Set operand of instruction at #R32427 to 2 (USS Pisces, 2, The Transporter Room)...
C 32467,3 ...
C 32470,2 Set operand of instruction at #R32417 to 120 (x-coordinate of middle of USS Pisces' transporter pad)...
C 32472,3 ...
C 32475,2 Set operand of instruction at #R32422 to 120 (y-coordinate of USS Pisces' transporter pad)...
C 32477,3 ...
C 32480,2 Jump back to #R32404 to beam Magic Knight back to USS Pisces
C 32482,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 32485,3 Set top-left and bottom-right of area to cycle attributes (for transporter effect)
C 32488,3 Display transporter glow effect
C 32491,3 Point HL at "IT WOULD MAKE MORE SENSE TO ENTER COORDINATES..." text
C 32494,1 Store HL (pointer to "IT WOULD MAKE MORE SENSE TO ENTER COORDINATES..." text)
C 32495,3 Prepare to adjust height of window 12 to accommodate text
C 32498,3 Point HL at "THE TRANSPORTER SENDS YOU TO SUFFOCATE..." text
C 32501,3 Adjust height of window 12 to accommodate text
C 32504,1 Store HL (pointer to "THE TRANSPORTER SENDS YOU TO SUFFOCATE..." / "THE TRANSPORTER IS BROKEN" text)
C 32505,2 Draw Window 12...
C 32507,3 ...
C 32510,1 Restore HL (pointer to "THE TRANSPORTER SENDS YOU TO SUFFOCATE..." / "THE TRANSPORTER IS BROKEN" text)
C 32511,3 Print text to screen
C 32514,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 32517,1 Restore HL (pointer to "IT WOULD MAKE MORE SENSE TO ENTER COORDINATES..." / "THE TRANSPORTER HAS MALFUNCTIONED..." text)
C 32518,3 Jump to "Game over" window routine and return to Control Selection Menu
N 32521 Magic Knight has used the transporter while it is broken
C 32521,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 32524,3 Set top-left and bottom-right of area to cycle attributes (for transporter effect)
C 32527,3 Display transporter glow effect
C 32530,3 Point HL at "THE TRANSPORTER HAS MALFUNCTIONED..." text
C 32533,1 Store HL (pointer to "THE TRANSPORTER HAS MALFUNCTIONED..." text)
C 32534,3 Prepare to adjust height of window 12 to accommodate text
C 32537,3 Point HL at "THE TRANSPORTER IS BROKEN" text
C 32540,3 Jump back to #R32501 (display GAME OVER message and return to Control Selection Menu)
b 32543 Table of Transporter Pad Data
D 32543 Eight values:
B 32543,8,8 Monopole, "1", "8", "4", Monopole, 0 (Hooper's Emergency Exit), (16, 120)
B 32551,8,8 Starbase 1, "1", "2", "3", Starbase 1, 0 (The Transporter Room), (16, 120)
B 32559,8,8 Outpost, "8", "9", "6", Outpost, 0 (Ye Olde Transporter), (16, 120)
B 32567,8,8 Retreat, "8", "4", "1", Retreat, 0 (Murphy's Moon), (16, 120)
B 32575,2,2 End Marker
b 32577 Table of Transporter Pad Locations
D 32577 In order to set the "USE TRANSPORTER" Menu Command Flag when Magic Knight is standing on a transporter pad, his coordinates need to be checked against a list of pad locations. For each pad, this list contains an entry specifying the pad's room number, the x-coordinates of its left and right edges and a y-coordinate. If, for any entry, Magic Knight's room number matches the value in byte 0, his x-coordinate is between the values specified in bytes 1 and 2, and his y-coordinate is the same as in byte 3 then the "USE TRANSPORTER" Menu Command Flag will be set.
B 32577,4,4 Unused / Start Marker
B 32581,4,4 USS Pisces, 2 (The Transporter Room)
B 32585,4,4 Retreat, 0 (Murphy's Moon)
B 32589,4,4 Starbase 1, 0 (The Transporter Room)
B 32593,4,4 Outpost, 0 (Ye Olde Transporter)
B 32597,4,4 Monopole, 0 (Hooper's Emergency Exit)
B 32601,1,1 End Marker
c 32602 Update and Increment Predefined Region's Attribute 64 Times (Transporter Effect)
D 32602 Used by the routine at #R32252.
C 32602,2 Load B with 64 as we are changing the attribute of the filled area 64 times
C 32604,1 Store BC (B = remaining number of attribute changes)
C 32605,1 Wait for interrupt
C 32606,3 Load A with old fill attribute
C 32609,2 Add 8 to increment PAPER colour
C 32611,2 Ensure that attribute value is capped at 120 (white PAPER, BRIGHT) and mask out INK and FLASH bits
C 32613,3 Store updated attribute value
C 32616,3 Fill a region of Attribute File with specified attribute
C 32619,1 Restore BC (B = remaining number of attribute changes)
C 32620,2 Decrease B and loop back to #R32604 if not zero
C 32622,1 Return
c 32623 Set Top-Left and Bottom-Right of Area to Cycle Attributes (for Transporter Effect)
D 32623 Used by the routine at #R32252.
C 32623,3 Set top-left of area for transporter effect to (11, 10) characters...
C 32626,3 ...
C 32629,3 Set bottom-right of area for transporter effect to (20, 18) characters...
C 32632,3 ...
C 32635,3 If Magic Knight's current room is 2 (USS Pisces, 2, The Transporter Room)...
C 32638,2 ...
C 32640,1 ...then return
C 32641,3 Set top-left of area for transporter effect to (1, 10) characters...
C 32644,3 ...
C 32647,3 Set bottom-right of area for transporter effect to (5, 18) characters...
C 32650,3 ...
C 32653,3 If Magic Knight's current room is not 36 (index of "YE OLDE TRANSPORTER" room in 128k version - see trivia)
C 32656,2 ...
C 32658,1 ...then return
C 32659,3 Set top-left of area for transporter effect to (6, 19) characters...
C 32662,3 ...
C 32665,3 Set bottom-right of area for transporter effect to (8, 22) characters...
C 32668,3 ...
C 32671,1 Return
b 32672 ASCII Digit Sequences for "Enter Transport Coordinates" Routine
B 32672,1,1
T 32673,20,10
B 32693,1,1
c 32694 Handle Vertical Scrolling Digit Selection (Use Transporter Menu) and Load Selected Digit's ASCII Code into A
D 32694 Used by the routine at #R32252. Input:  D  y-coordinate in pixels E x-coordinate in characters Output: A  ASCII code of selected digit
C 32694,4 Point IX at start of second ASCII digit sequence for transport coordinate selection
C 32698,1 Set x-coordinate of left and right of region to scroll to value in E (6, 8 or 10 characters depending upon value in E)...
C 32699,3 ...
C 32702,3 ...
C 32705,1 Set y-coordinate of top of region to scroll to value in D (72 pixels)...
C 32706,3 ...
C 32709,2 Set y-coordinate of bottom of region to scroll to value in D plus 39 (pixels)...
C 32711,3 ...
C 32714,3 Capture keyboard or joystick input loading result into A
C 32717,2 If up was pressed...
C 32719,2 ...then skip ahead to #R32761
C 32721,2 If down was pressed...
C 32723,2 ...then skip ahead to #R32814
C 32725,2 If fire was not pressed...
C 32727,2 ...then jump back to #R32714
C 32729,2 Store IX (current position in digit sequence)
C 32731,3 Load C with x-coordinate of left and right of region to scroll (characters)...
C 32734,1 ...
C 32735,3 Load A with y-coordinate of top of region to scroll (pixels)...
C 32738,2 ...plus 16
C 32740,1 Divide result by 8...
C 32741,1 ...
C 32742,1 ...
C 32743,1 ...and load result (y-coordinate of "selected" coordinate value in characters) into B
C 32744,3 Load HL with Attribute File address for coordinates (C, B)...
C 32747,2 ...and apply attribute 71 (white INK, black PAPER, BRIGHT)
C 32749,3 Play upward scale sound
C 32752,3 Play downward scale sound
C 32755,2 Restore IX (current position in digit sequence)
C 32757,3 Load (ASCII code of) currently selected digit into A
C 32760,1 Return
N 32761 Up pressed
C 32761,2 Load B with 8, as we are scrolling by eight pixels
C 32763,1 Store BC (B = remaining number of pixels to scroll)
C 32764,2 Store IX (current position in digit sequence)
C 32766,3 Make a click sound (reset Port 254 EAR Bit, wait for interrupt then set EAR Bit of Port 254)
C 32769,3 Scroll a region of the Display File up a pixel row with wrapping
C 32772,3 Make a click sound (reset Port 254 EAR Bit, wait for interrupt then set EAR Bit of Port 254)
C 32775,2 Restore IX (current position in digit sequence)
C 32777,1 Restore BC (B = remaining number of pixels to scroll)
C 32778,2 Decrease B (remaining number of pixels to scroll) and loop back to #R32763 if not zero
C 32780,2 Increase IX to point to next digit in sequence
C 32782,3 Load digit that is two after current one into A...
C 32785,1 ...and if this is zero (end marker)...
C 32786,3 ...then subtract ten from IX to wrap from 9 to 0
C 32789,3 Load C with x-coordinate of left and right of region to scroll (characters)...
C 32792,1 ...
C 32793,3 Load A with y-coordinate of bottom of region to scroll (pixels)...
C 32796,1 ...divide by 8...
C 32797,1 ...
C 32798,1 ...
C 32799,2 ...cap at 31 to give y-coordinate in characters, one character below bottom of the three visible "scrolling" digits...
C 32801,1 ...and load result into B
C 32802,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 32805,3 Load A with digit two after currently selected one
N 32808 By this point, the system variable ATTR T has been set to 127 (white INK, white PAPER, BRIGHT) by the instruction at #R32286, so the character is printed but is invisible.
C 32808,3 Print character in A
C 32811,3 Loop back to #R32714 for next keyboard / joystick input
N 32814 Down pressed
C 32814,2 Load B with 8, as we are scrolling by eight pixels
C 32816,1 Store BC (B = remaining number of pixels to scroll)
C 32817,2 Store IX (current position in digit sequence)
C 32819,3 Make a click sound (reset Port 254 EAR Bit, wait for interrupt then set EAR Bit of Port 254)
C 32822,3 Scroll a region of the Display File down a pixel row with wrapping
C 32825,3 Make a click sound (reset Port 254 EAR Bit, wait for interrupt then set EAR Bit of Port 254)
C 32828,2 Restore IX (current position in digit sequence)
C 32830,1 Restore BC (B = remaining number of pixels to scroll)
C 32831,2 Decrease B (remaining number of pixels to scroll) and loop back to #R32816 if not zero
C 32833,2 Decrease IX to point to previous digit in sequence
C 32835,3 Load digit that is two before current one into A...
C 32838,1 ...and if this is zero (end marker)...
C 32839,3 ...then add ten to IX to wrap from 0 to 9
C 32842,3 Load C with x-coordinate of left and right of region to scroll (characters)...
C 32845,1 ...
C 32846,3 Load A with y-coordinate of top of region to scroll (pixels)...
C 32849,1 ...divide by 8...
C 32850,1 ...
C 32851,1 ...
C 32852,2 ...cap at 31 to give y-coordinate in characters, one character above top of the three visible "scrolling" digits...
C 32854,1 ...and load result into B
C 32855,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 32858,3 Load A with digit two before currently selected one
N 32861 By this point, the system variable ATTR T has been set to 127 (white INK, white PAPER, BRIGHT) by the instruction at #R32286, so the character is printed but is invisible.
C 32861,3 Print character in A
C 32864,3 Loop back to #R32714 for next keyboard / joystick input
c 32867 Subtract Ten from IX
D 32867 Used by the routine at #R32694. Input:  IX  A value Output: IX  The input value minus 10
C 32867,3 Load B with 10
C 32870,1 Reset Carry Flag
C 32871,2 Transfer value from IX to HL...
C 32873,1 ...
C 32874,2 Subtract 10 from HL
C 32876,1 Transfer value from HL to IX...
C 32877,2 ...
C 32879,1 Return
c 32880 Add Ten to IX
D 32880 Used by the routine at #R32694. Input:  IX  A value Output: IX  The input value plus 10
C 32880,3 Load B with 10
C 32883,2 Add to IX
C 32885,1 Return
c 32886 Reset Port 254 EAR Bit, Wait for Interrupt then Set EAR Bit of Port 254
D 32886 Used by the routine at #R32694.
C 32886,1 Reset all bits of Port 254 (including EAR bit)...
C 32887,2 ...
C 32889,1 Wait for interrupt
C 32890,2 Set EAR bit of Port 254...
C 32892,2 ...
C 32894,1 Return
c 32895 Process Command to Communicate
C 32895,3 Load B with USS Pisces' current location...
C 32898,1 ...
C 32899,3 Point HL at start of Planets' "REQUEST HELP" Strings
C 32902,3 Advance HL to "REQUEST HELP" string for current location
C 32905,1 Load first byte of data (usually height of text) into A...
C 32906,1 ...and if this zero (i.e. the current location is not valid for communication)...
C 32907,3 ...then display "THERE IS NOBODY WITHIN SUB-SPACE COMMUNICATOR RANGE" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 32910,3 Print or update Command Summary Window at top of screen
C 32913,3 Point DE at "COMMUNICATE WITH"...
C 32916,3 ...and print in Command Summary Window at top of screen
C 32919,3 Point HL at "CHOOSE COMMUNICATION" menu text
C 32922,3 Adjust height of Main Menu (Game) / "Choose Communication" Window to accommodate text...
C 32925,3 ...
C 32928,1 Store HL (pointer to start of text to print)
C 32929,1 Draw "Choose Communication" Menu Window...
C 32930,3 ...
C 32933,1 Restore HL (pointer to start of text to print)
C 32934,3 Print text to screen
C 32937,3 Process keyboard / joystick input on a menu and load A with selected item index
C 32940,3 Store index of selected menu item as operand of instruction at #R32983...
C 32943,1 ...and load into B
C 32944,3 Point HL at "REQUEST HELP" text
C 32947,3 Advance HL to "REFUEL STARSHIP" text if refuel option was selected
C 32950,1 Swap HL and DE (DE now points to "REQUEST HELP" or "REFUEL STARSHIP" text)...
C 32951,3 ...and print in Command Summary Window at top of screen
C 32954,3 Display Execute / Reject Command window and return here if Execute chosen, else exit to Main Game Loop
C 32957,3 If Gordon and Sarab are both asleep then reset Zero Flag, otherwise increase their happiness by five if not
C 32960,3 If Zero Flag is reset then display "GORDON AND SARAB ARE BOTH ASLEEP" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 32963,2 If Magic Knight is wearing the Gas Mask (27)...
C 32965,3 ...
C 32968,3 ...then display "GORDON AND SARAB CANNOT UNDERSTAND YOU" Window (12), wait for fire to be pressed then jump to Main Game Loop
C 32971,2 Set Draw Communicate Window / Face Flag...
C 32973,3 ...
C 32976,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 32979,1 Reset Draw Communicate Window / Face Flag...
C 32980,3 ...
N 32983 The operand of the instruction at #R32983 represents the index of the option selected from "CHOOSE COMMUNICATION" menu. This is modified by the instruction at #R32940.
C 32983,2 Load A with selected menu option index
C 32985,2 If "REFUEL STARSHIP" was selected...
C 32987,3 ...then skip ahead to #R33019
N 32990 Request Help Option Selected
C 32990,3 Load B with index of USS Pisces' current location...
C 32993,1 ...
C 32994,3 Point HL at start of Planets' "REQUEST HELP" Strings
C 32997,3 Advance HL to B-th entry in this list
C 33000,3 Adjust height of Window 15 to accommodate text...
C 33003,3 ...
C 33006,1 Store HL (pointer to start of text to print)
C 33007,2 Draw Window 15...
C 33009,3 ...
C 33012,1 Restore HL (pointer to start of text to print)
C 33013,3 Print text to screen
C 33016,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
N 33019 Refuel Starship Option Selected
C 33019,2 Draw Window 1...
C 33021,3 ...
C 33024,3 Point HL at "REFUEL STARSHIP REQUESTED" text...
C 33027,3 ...and print to screen
C 33030,3 Load BC with double index of USS Pisces' current location...
C 33033,1 ...
C 33034,1 ...
C 33035,2 ...
C 33037,3 Point HL at start of Current Planetary Data...
C 33040,1 ...and add BC as offset
C 33041,2 Load B with 200 (as USS Pisces can hold 200 units of fuel)
C 33043,1 Load A with current location's available fuel level...
C 33044,1 ...and if this is zero...
C 33045,3 ...then skip ahead to #R33084
C 33048,2 If available fuel level is 255 (i.e. unlimited)...
C 33050,3 ...then skip ahead to #R33072
C 33053,1 Load B with current location's available fuel level
C 33054,3 Load A with USS Pisces' current Star Drive Fuel level
C 33057,2 If A is 200...
C 33059,2 ...then skip ahead to #R33067
C 33061,1 Increase A (USS Pisces' fuel) by one
C 33062,1 Decrease B (planet's fuel) by one
C 33063,2 If B is zero then skip ahead to #R33093
C 33065,2 Loop back to #R33057
C 33067,1 Store updated (i.e. reduced) value for planet's fuel
C 33068,1 Load B with USS Pisces' new fuel level
C 33069,3 Point HL at "THE USS PISCES IS FULLY REFUELED" text...
C 33072,3 ... (see trivia)
C 33075,1 Set USS Pisces' new fuel level...
C 33076,3 ...
C 33079,3 Print text to screen
C 33082,2 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 33084,3 Point HL at "SORRY MAGIC KNIGHT WE ARE OUT OF FUEL" text...
C 33087,3 ...and print to screen
C 33090,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 33093,1 Store updated (i.e. zero) value for planet's fuel
C 33094,3 Point HL at "...WE DO NOT HAVE ENOUGH FUEL..." text
C 33097,1 Load B with USS Pisces' new fuel level
C 33098,2 Jump back to #R33075
c 33100 "Command Character to Help" Routine for Gordon
C 33100,2 If Current Character is carrying the Pewter Tankard (31)...
C 33102,3 ...
C 33105,2 ...then skip ahead to #R33113
C 33107,3 Point HL at "I WOULD LIKE YOU TO FETCH MY TANKARD..." text
C 33110,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
C 33113,3 If the USS Pisces is not currently at Starbase 1 (05)...
C 33116,2 ...
C 33118,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33121,3 If Transporter Repaired Flag is set...
C 33124,2 ...
C 33126,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33129,2 Set Transporter Repaired Flag...
C 33131,3 ...
C 33134,3 Point HL at "I HAVE RE-ROUTED THE TRANSPORTER CONTROL SYSTEM..." text
C 33137,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33140 "Command Character to Help" Routine for Sarab
C 33140,3 If Gordon is carrying the Star Map...
C 33143,2 ...
C 33145,3 ...
C 33148,2 ...then skip ahead to #R33156
C 33150,3 Point HL at "GORDON WILL NEED THE STARMAP..." text
C 33153,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
C 33156,3 If Transporter Repaired Flag is set...
C 33159,2 ...
C 33161,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33164,3 Point HL at "REPAIRS ARE NEEDED..." text
C 33167,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33170 "Command Character to Help" Routine for Klink and S3 E3
C 33170,3 Load A with index of Current Character...
C 33173,3 ...and store at #R23434 (see trivia)
C 33176,2 If Magic Knight is wearing the Valid I.D. Card (03)...
C 33178,3 ...
C 33181,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33184,3 If I.D. Card Validated Flag is reset...
C 33187,2 ...
C 33189,3 ...then skip ahead to #R33195
C 33192,3 Display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33195,2 If Current Character is not carrying the Camera (8)...
C 33197,3 ...
C 33200,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33203,2 If Current Character is not carrying the Instant Film (4)...
C 33205,3 ...
C 33208,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33211,3 Load BC with five times index of Current Character...
C 33214,1 ...
C 33215,1 ...
C 33216,1 ...
C 33217,1 ...
C 33218,1 ...
C 33219,2 ...
C 33221,4 Point IX at start of Characters' Current Inventories Table...
C 33225,2 ...and add BC as offset to point to start of Current Character's inventory
C 33227,3 If this character has no free inventory slots...
C 33230,1 ...
C 33231,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33234,4 Modify operand of the instruction at #R33281 to address of start of Current Character's current inventory
C 33238,2 If Magic Knight is not wearing the Cloak of Invisibility (01)...
C 33240,3 ...
C 33243,2 ...then skip ahead to #R33259
C 33245,3 If Photograph of Inside of Starship Taken Flag is set...
C 33248,2 ...
C 33250,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33253,2 Load B with 2 (as Photograph of Inside of Starship Taken Flag is in bit 1)
C 33255,2 Load A with 9 (index of Photograph of inside of starship)
C 33257,2 Skip ahead to #R33271
C 33259,3 If Photograph of Magic Knight Taken Flag is set...
C 33262,2 ...
C 33264,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33267,2 Load B with 4 (as Photograph of Magic Knight Taken Flag is in bit 2)
C 33269,2 Load A with 5 (index of Photograph of Magic Knight)
C 33271,1 Load C with object index from A
C 33272,3 Load A with current Score Progress Flags
C 33275,1 Set Flag(s) according to value in B...
C 33276,3 ...
C 33279,2 Load B with 5 (five inventory slots)
N 33281 The operand of the instruction at #R33281 represents the address of the start of the current inventory of the Current Character. This is modified by the instruction at #R33234.
C 33281,3 Point HL at start of Current Character's current inventory as stored previously
C 33284,3 Load object C into the first empty inventory slot of Current Character
C 33287,3 Display "[Character] HAS TAKEN YOUR PHOTO" Window (10), wait for fire to be pressed then jump to Main Game Loop
c 33290 "Command Character to Help" Routine for Hooper
C 33290,2 If Current Character is not carrying the Bag of Runes (29)...
C 33292,3 ...
C 33295,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33298,3 Point HL at "I REMEMBER WHEN YOU COULD BUY..." text
C 33301,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33304 "Command Character to Help" Routine for Murphy
C 33304,2 If Current Character is not carrying the Bag of Potatoes (30)...
C 33306,3 ...
C 33309,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33312,3 Point HL at "THE GOLDEN SUNDIAL OF ALPHA WAS SPLIT..." text
C 33315,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33318 "Command Character to Help" Routine for Sharon
C 33318,2 If Current Character is not carrying the Chocolate Heart (23)...
C 33320,3 ...
C 33323,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33326,3 Point HL at "THANKS FOR THE HEART BIG BOY!..." text
C 33329,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33332 "Command Character to Help" Routine for Forbin
C 33332,3 Point "SHARONN WANTS TO KNOW..." text
C 33335,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33338 "Command Character to Help" Routine for Derby IV
C 33338,3 If Blank I.D. Card Obtained Flag is set...
C 33341,2 ...
C 33343,2 ...then skip ahead to #R33421
C 33345,2 Set Blank I.D. Card Obtained Flag...
C 33347,3 ...
C 33350,3 Point HL at current position of Blank I.D. Card...
C 33353,2 ...and set its room to 03 (USS Pisces, 3, The Transputer Room)
C 33355,3 Point DE at height data for Window 27
C 33358,3 Point HL at "HELLO MAGIC KNIGHT. AS A TEMPORALY MISPLACED..." text
C 33361,3 Adjust height of window (pointed to by DE) to accommodate text
C 33364,1 Store HL (pointer to start of text to print)
C 33365,2 Draw Window 27...
C 33367,3 ...
C 33370,1 Restore HL (pointer to start of text to print)
C 33371,3 Print text to screen
C 33374,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 33377,3 Load DE with address of y-coordinate of top edge of Window 17 in Window Data Table at #R37089
C 33380,3 Point HL at "FROM TIME TO TIME I WILL BE ABLE TO..." text
C 33383,3 Adjust height of 17 window to accommodate text
C 33386,1 Store HL (pointer to start of text to print)
C 33387,2 Draw Window 17...
C 33389,3 ...
C 33392,1 Restore HL (pointer to start of text to print)
C 33393,3 Print text to screen
C 33396,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 33399,3 Point DE at height data for Window 27
C 33402,3 Point HL at "WHIRRRRR........ PLOP !..." text
C 33405,3 Adjust height of 27 window to accommodate text
C 33408,1 Store HL (pointer to start of text to print)
C 33409,2 Draw Window 27...
C 33411,3 ...
C 33414,1 Restore HL (pointer to start of text to print)
C 33415,3 Print text to screen
C 33418,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 33421,2 If I.D. Card Validated Flag is set...
C 33423,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33426,3 Point DE at height data for Window 27
C 33429,3 Point HL at "[Character] SAYS 'STICK YOUR PHOTO ON THE I.D. CARD..." text
C 33432,3 Adjust height of Window 27 to accommodate text
C 33435,1 Store HL (pointer to start of text to print)
C 33436,2 Draw Window 27...
C 33438,3 ...
C 33441,1 Restore HL (pointer to start of text to print)
C 33442,3 Print text to screen
C 33445,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
c 33448 "Command Character to Help" Routine for Swiftfoot
C 33448,2 If Current Character is not carrying the Pair of Boots (22)...
C 33450,3 ...
C 33453,3 ...then display "[Character] CANNOT HELP YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
C 33456,3 Point HL at "MY BOOTS COULD BE USEFUL..." text
C 33459,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33462 "Command Character to Help" Routine for Julie 8
C 33462,3 Point HL at "[Character] SAYS 'HARK WHAT LIGHT THRU YONDER PORTHOLE..." text
C 33465,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33468 "Command Character to Help" Routine for Hectorr
C 33468,2 If Current Character is carrying the Pot of Glue (10)...
C 33470,3 ...
C 33473,2 ...then skip ahead to #R33481
C 33475,3 Point HL at "[Character] SAYS 'FORSOOTH THERE IS STICKY STUFF NEARBY..." text
C 33478,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
C 33481,3 Point HL at "[Character] SAYS 'COME ON THEN! COME ON THEN!..." text
C 33484,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 33487 Load A with weight of object A
D 33487 Used by the routines at #R29756 and #R33601. Input:  A  Index of object of interest Output: A  Weight of object of interest
C 33487,1 Store HL
C 33488,1 Store DE
C 33489,2 Point HL to the first byte of the A-th record in Object Properties Table...
C 33491,3 ...
C 33494,1 Load data at this location into A
C 33495,2 Discard all but the Weight bits
C 33497,1 Restore DE
C 33498,1 Restore HL
C 33499,1 Return
c 33500 Load A with Current Character's Happiness Level
D 33500 Used by the routines at #R29619 and #R29756. Output: A  Happiness of Current Character
C 33500,3 Load A with index of Current Character
C 33503,1 Store HL
C 33504,1 Store DE
C 33505,2 Point HL at Current Character's Happiness...
C 33507,3 ...
C 33510,1 ...and load Happiness into A
C 33511,2 Reset Bit 7 (unused)
C 33513,1 Restore DE
C 33514,1 Restore HL
C 33515,1 Return
c 33516 Load Object C into the First Empty Inventory Slot of a Character
D 33516 Used by the routines at #R29330, #R29619, #R31537, #R33170 and #R34265. Input:  B  Number of inventory slots to process C  Index of an object to load into a character's inventory HL  Points to (usually the start of) a record in the Characters' Current Inventories Table at #R25164
C 33516,1 If current inventory slot is empty...
C 33517,1 ...
C 33518,2 ...then skip ahead to 33523
C 33520,1 Advance to next inventory slot
C 33521,2 If there are still slots to process then loop back to #R33516
C 33523,1 Load item into current inventory slot
C 33524,1 Return
c 33525 Point HL to the E-th byte of the A-th record in Object Properties Table
D 33525 Used by the routines at #R29488, #R30145, #R30968, #R31537, #R33487, #R34484 and #R34627. Input:  A  Index of required record (i.e. table entry number), first is zero E  Index of required field within record (i.e. byte number), first is zero HL  (entry at #R33528 only) Points to Table of Characters' Current Stats (Gordon's entry, i.e. not including Magic Knight) Output: HL Points to required field within record of interest
C 33525,3 Point HL at start of Table of Object Properties
N 33528 This entry point is used by the routine at #R33541.
C 33528,1 Store HL (points to current position in a table of 8-byte-wide records)
C 33529,1 Multiply A (record number) by eight and load into HL...
C 33530,1 ...
C 33531,1 ...
C 33532,2 ...
C 33534,1 ...
C 33535,2 Set D to zero (DE = field number)
C 33537,1 Add field number to HL to give exact offset to record and field of interest
C 33538,1 Restore DE (points to current position in a table of 8-byte-wide records)...
C 33539,1 ...and add to offset value already in HL
C 33540,1 Return
c 33541 Point HL at E-th Byte on A-th Record of Characters' Current Stats Table (Excluding Magic Knight)
D 33541 Used by the routines at #R28390, #R29756, #R30145, #R30686, #R33500, #R33546, #R33725 and #R53731.
C 33541,3 Point HL at Table of Characters' Current Stats (Gordon's entry, i.e. not including Magic Knight)...
C 33544,2 ...and advance to the E-th byte of the A-th entry in this table of 8-byte-wide records, then return
c 33546 Point IX at Current Character's Current Stats
D 33546 Used by the routines at #R29756, #R30810, #R30842, #R30874, #R31257 and #R33569. Output: HL  Address of start of Current Character's stats IX Address of start of Current Character's stats
C 33546,3 Load A with index of Current Character
C 33549,2 Point HL at Current Character's current strength...
C 33551,3 ...
C 33554,1 Transfer address from HL...
C 33555,2 ...to IX
C 33557,1 Return
c 33558 If Character's Happiness is Lower than B then Show "[Character] DOES NOT WANT TO BE COMMANDED..." and Jump to Main Game Loop
D 33558 Used by the routines at #R30810, #R30842 and #R30874. Input:  IX  Pointer to start of a character's current stats B  Happiness threshold
C 33558,3 If character's current happiness is at or above the threshold value...
C 33561,2 ...
C 33563,1 ...
C 33564,1 ...then return
C 33565,1 Remove return value from top of stack as we are not RETurning
C 33566,3 Display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), wait for fire to be pressed then jump to Main Game Loop
c 33569 Increase Current Character's Happiness by Amount A
D 33569 Used by the routines at #R29619, #R29756, #R30145, #R30686 and #R33788. Input:  A  Value by which to change character's Happiness
C 33569,1 Store AF (A = increment value)
C 33570,3 Point IX at Current Character's current stats
C 33573,1 Restore AF (A = increment value)
C 33574,1 Load increment value into C
C 33575,3 Add increment value to Current Character's Happiness...
C 33578,3 ...
C 33581,3 ...and store
C 33584,1 Return
c 33585 Point IX at Current Inventory of Character A
D 33585 Used by the routines at #R29619, #R29756 and #R33896. Input:  A  Index of a character Output: IX  Points to current inventory of character A
C 33585,1 Store DE
C 33586,1 Multiply character index by five (as each character has five inventory slots)...
C 33587,1 ...
C 33588,1 ...
C 33589,1 ...
C 33590,1 ...and load into DE...
C 33591,2 ...
C 33593,4 Point IX at Gordon's entry in Characters' Current Inventories Table (i.e. first entry for non-player characters)
C 33597,2 Add five times character index to this as offset
C 33599,1 Restore DE
C 33600,1 Return
c 33601 Test Whether Current Object is too Heavy for Magic Knight to Pick Up (or Take)
D 33601 Used by the routines at #R29330 and #R29619. Output: F  S Flag set if object is light enough to be picked up, reset otherwise
C 33601,4 Point IX at start of Magic Knight's current inventory
C 33605,3 Load Magic Knight's current strength into A
C 33608,1 Store AF (A = Magic Knight's current strength)
C 33609,3 Load B with 5 (as five inventory slots to check) and C (total weight carried) with zero
C 33612,3 Load object in current inventory slot
C 33615,1 If no object present...
C 33616,2 ...skip ahead to #R33627...
C 33618,3 Load A with weight of object A
C 33621,1 Add C to this...
C 33622,1 ...and load result into C (total weight so far)
C 33623,2 Advance to next inventory slot
C 33625,2 Loop back for next inventory slot
C 33627,1 Restore AF (A = Magic Knight's current strength)
C 33628,2 Ensure that strength is capped at 127 and that Sign Flag is reset
C 33630,1 Subtract total weight of Magic Knight's carried objects from his strength to get "surplus" strength...
C 33631,1 ...and load into C
C 33632,3 Load A with index of Current Object (i.e. object Magic Knight is trying to pick up)
C 33635,3 Load A with weight of object A
C 33638,1 Set Sign Flag if surplus strength exceeds weight of object, otherwise reset
C 33639,1 Return
c 33640 Check Whether Magic Knight is Wearing an Object
D 33640 Used by the routines at #R28470, #R28482, #R28494, #R30686, #R31122, #R31688, #R32895, #R33170, #R34265 and #R53498. Input:  A  Index of an object Output: F  Zero Flag set if object is present in inventory, reset otherwise
C 33640,3 Point HL at start of Magic Knight's Inventory (Wearing)
C 33643,2 Jump to #R33648 (set Zero Flag if Magic Knight is wearing object A, reset otherwise)
c 33645 Check Whether Magic Knight is Carrying an Object
D 33645 Used by the routines at #R27703, #R27762, #R28542, #R31188, #R34265, #R34567 and #R34627. Input:  A  Index of an object HL  (entry at #R33648) Pointer to start of a character's inventory Output: F  Zero Flag set if object is present in inventory, reset otherwise
C 33645,3 Point HL at start of Magic Knight's current Inventory (carrying)
N 33648 This entry point is used by the routines at #R33140, #R33640, #R33896 and #R34265.
C 33648,2 Load B with 5 (as characters have five inventory slots)
C 33650,1 If object at current inventory slot is the object of interest...
C 33651,1 ...then return with zero flag set
C 33652,1 Advance HL to next inventory slot
C 33653,2 Decrease B (remaining number of inventory slots to check) and loop back to #R33650
C 33655,1 Reset zero flag, as object is not present
C 33656,1 Return
c 33657 Insert Current Time and Score into "Time Left" and "Percentage Completion" Texts
D 33657 Used by the routines at #R30145 and #R55685. Input:  HL  Points to percentage completion text (#R47492 or #R44506) DE  Points to time left text (#R47492 or #R44506)
C 33657,1 Store DE
C 33658,1 Store HL
C 33659,3 Point HL at Visited Rooms table
C 33662,3 Set B=50, C=0 (see trivia)
C 33665,1 Load A with value at HL
C 33666,1 Add this to C...
C 33667,1 ...
C 33668,1 Advance to next byte
C 33669,2 Loop back to #R33665 (adding together 50 values from #R23502 onwards to get score for exploring rooms)
C 33671,1 Decrease exploration score by one (due to no score for The Transporter Room)
C 33672,1 Double count of rooms visited...
C 33673,1 ...
C 33674,1 ...
C 33675,3 If I.D. Card Validated Flag is reset...
C 33678,2 ...
C 33680,3 ...then skip ahead to #R33687
C 33683,2 Add ten percent to score in C...
C 33685,1 ...
C 33686,1 ...
C 33687,3 If Transporter Repaired Flag is reset...
C 33690,2 ...
C 33692,2 ...then skip ahead to #R33698
C 33694,2 Add ten percent to score in C...
C 33696,1 ...
C 33697,1 ...
C 33698,3 If Barriers Removed Flag is reset...
C 33701,2 ...
C 33703,2 ...then skip ahead to #R33709
C 33705,2 Add two percent to score in C...
C 33707,1 ...
C 33708,1 ...
C 33709,3 Add Bonus Score to total...
C 33712,1 ...
C 33714,3 Splice numeric data A as a string into a string at HL
C 33717,3 Load A with number of days left
C 33720,1 Restore HL (originally DE, time left text)
C 33721,3 Splice numeric data A as a string into a string at HL
C 33724,1 Return
c 33725 Display "[Character] IS ASLEEP" Window and Jump to Main Game Loop if Current Character is Asleep, else Return
D 33725 Used by the routine at #R30874. Output: A  Zero if character is awake
C 33725,1 Store HL
C 33726,3 Load A with index of Current Character
C 33729,2 Point HL at character's Flags...
C 33731,3 ...
C 33734,2 If character is awake...
C 33736,2 ...then skip ahead to #R33754
C 33738,2 Draw Window 28...
C 33740,3 ...
C 33743,3 Point HL at "[Current Character's name] IS ASLEEP" text...
C 33746,3 ...and print to screen
C 33749,1 Restore HL
C 33750,1 Remove value from top of stack as we are not RETurning
C 33751,3 Display "PRESS FIRE TO CONTINUE" Window and wait for input and return to Main Game Loop
C 33754,1 Restore HL
C 33755,1 Set A to zero
C 33756,1 Return
c 33757 Load Magic Knight's Coordinates (in Characters) into DE
D 33757 Used by the routines at #R29330 and #R29488. Output: D  y-coordinate (characters) E  x-coordinate (characters)
C 33757,3 Load Magic Knight's current y-coordinate into A
C 33760,3 Divide A by eight, rounding down to nearest integer
C 33763,2 Add 3 (as Magic Knight is four characters tall)
C 33765,1 And load result into D
C 33766,3 Load Magic Knight's current x-coordinate into A
C 33769,3 Divide A by eight, rounding down to nearest integer
C 33772,1 Load result into E
C 33773,1 Return
c 33774 Adjust Height (at DE) of a Window to Accommodate Text
D 33774 Used by the routines at #R27762, #R28506, #R28554, #R29756, #R31041, #R31188, #R31312, #R32252, #R32895, #R33338, #R33834, #R34122, #R34265, #R55364 and #R55685. Input:  HL  Points to height byte preceding text data DE  Points to third byte of an entry in table at #R37089 (i.e. y-coordinate of top edge of a window) Output: HL  Points to first byte of text data (i.e. input HL value plus one)
C 33774,1 Load height data into C...
C 33775,1 ...
C 33776,1 Load y-coordinate in characters of window of interest into A
C 33777,1 Add height to window's top y-coordinate to get required bottom y-coordinate
C 33778,1 Advance DE to y-coordinate of bottom edge of window...
C 33779,1 ...and load calculated bottom y-coordinate into address in DE
C 33780,1 Advance HL to first byte of actual text data
C 33781,1 Return
c 33782 Set a Window's Height to A
D 33782 Used by the routines at #R31688 and #R32252. Input:  A  A window height DE Location of a window's top y-coordinate data
C 33782,1 Load window height into C
C 33783,1 Load window's top y-coordinate into A
C 33784,1 Add C to give bottom y-coordinate
C 33785,1 Advance DE to window's bottom y-coordinate data...
C 33786,1 ...and update with new height value in A
C 33787,1 Return
c 33788 Check Whether Gordon and Sarab are Both Asleep, and Increase Their Happiness by Five if Not
D 33788 Used by the routines at #R31688 and #R32895. Output: A  Non-zero if Gordon and Sarab are both asleep. Zero otherwise. F  Zero Flag reset if Gordon and Sarab are both asleep. Set otherwise.
C 33788,3 If Gordon's Asleep Flag is reset...
C 33791,2 ...
C 33793,2 ...then skip ahead to #R33803
C 33795,3 If Sarab's Asleep Flag is reset...
C 33798,2 ...
C 33800,2 ...then skip ahead to #R33803
C 33802,1 Return
C 33803,1 Set Current Character to Gordon...
C 33804,3 ...
C 33807,2 Increase Gordon's happiness by 5...
C 33809,3 ...
C 33812,2 Set Current Character to Sarab...
C 33814,3 ...
C 33817,2 Increase Gordon's happiness by 5...
C 33819,3 ...
C 33822,1 Set A to zero
C 33823,1 Return
c 33824 Display "YOU ARE NOT WEARING ANYTHING" Window and Set Zero Flag if Magic Knight's Inventory (Wearing) is Empty
D 33824 Used by the routine at #R31537.
C 33824,3 If Magic Knight's first inventory slot (wearing) is not empty...
C 33827,1 ...
C 33828,1 ...then return
C 33829,3 Point HL at "YOU ARE NOT WEARING ANYTHING" text
C 33832,2 Display "YOU ARE NOT WEARING ANYTHING" Window, wait for Fire to be pressed and return
c 33834 Display "YOU ARE NOT CARRYING ANYTHING" Window and Set Zero Flag if Magic Knight's Inventory (Carrying) is Empty
D 33834 Used by the routines at #R29488, #R29756, #R30145 and #R31537. Output: F Zero Flag set if Magic Knight's (first) inventory (slot) is empty. Reset otherwise
C 33834,3 Load A with index of first object in Magic Knight's (Carrying) inventory...
C 33837,1 ...and if this is zero...
C 33838,1 ...then return
C 33839,3 Point HL at "YOU ARE NOT CARRYING ANYTHING" text
N 33842 This entry point is used by the routine at #R33824.
C 33842,3 Adjust height of window 13 to accommodate text...
C 33845,3 ...
C 33848,1 Store HL (pointer to text to print)
C 33849,2 Draw Window 13...
C 33851,3 ...
C 33854,1 Restore HL (pointer to text to print)
C 33855,3 Print text to screen
C 33858,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 33861,1 Load A with zero
C 33862,1 Return
c 33863 Check Whether Current Object is Wanted / Unwanted by Current Character
D 33863 This routine checks whether the Current Object is associated with the Current Character in either the Table of Characters' Wanted Objects (IX = #R44238) or the Table of Characters' Unwanted Objects (IX = #R44251). Input:  IX  Points to Table of Characters' Wanted (IX = #R44238) or Unwanted (IX = #R44251) Objects Output: F  Zero Flag set if match found, reset otherwise
C 33863,1 Wait for interrupt
C 33864,3 If current entry's character index is 255 (End Marker)...
C 33867,2 ...
C 33869,3 ...then skip ahead to #R33894
C 33872,3 If current entry's character index is not the same as the Current Character...
C 33875,3 ...
C 33878,2 ...then skip ahead to #R33888 (advance to next character-object pair record)
C 33880,3 If current entry's object index is the same as Current Object...
C 33883,3 ...
C 33886,2 ... then return (with Zero Flag set)
C 33888,2 Advance to next character-object pair to check...
C 33890,2 ...
C 33892,2 Loop back to #R33864
C 33894,1 Reset Zero Flag as no match was found
C 33895,1 Return
c 33896 Check Whether Current Character is Carrying an Object
D 33896 Used by the routines at #R33100, #R33170, #R33290, #R33304, #R33318, #R33448 and #R33468. Input:  E  Index of an object Output: F  (via jumped-to routine at #R33645) Zero Flag set if object is present in inventory, reset otherwise
C 33896,3 Load A with index of Current Character
C 33899,1 Store DE (E = index of object to check for)
C 33900,3 Point IX at current inventory of character with index A...
C 33903,2 ...and copy into HL...
C 33905,1 ...
C 33906,1 Restore DE (E = index of object to check for)
C 33907,1 Load index of object to check for into A
C 33908,3 Check if object is in inventory data at HL and (re)set Zero Flag accordingly
c 33911 Print Name of Object in Inventory Slot A of Inventory Data at HL in Command Summary Window
D 33911 Used by the routines at #R29488, #R29619, #R29756, #R30145, #R30968 and #R31537. Input:  A  Index of an inventory slot, with first slot being zero HL Points to start of a character's inventory
C 33911,1 Load inventory slot number into DE...
C 33912,2 ...
C 33914,1 Add to HL as offset
C 33915,1 Load index of object in that slot into A
C 33916,3 Set this object as the Current Object
C 33919,3 Point DE at instruction to print name of Current Object...
C 33922,2 ...print in Command Summary Window at top of screen and return
b 33924 Code for Printing Routine to Display Name of Current Object
T 33924,2,B2 name of Current Object
c 33926 Update Current Character Based Upon Selection Made in Menu
D 33926 Used by the routine at #R34122. Input:  A  Index of selected character from a character-selection menu
C 33926,3 Point HL at list of characters in room of interest
C 33929,1 Load DE with index of selected item in menu...
C 33930,2 ...
C 33932,1 Add this as offset in table of characters in room to point to character of interest
C 33933,1 Load index of this character into A
C 33934,3 Modify operand of instruction at #R29631 to use this particular character (i.e. set Current Character)
N 33937 This entry point is used by the routine at #R29619.
C 33937,3 Point DE at instruction to print name of Current Character
N 33940 This entry point is used by the routine at #R33911.
C 33940,3 Print text at DE in Command Summary Window at top of screen and return
b 33943 Code for Printing Routine to Display Name of Current Character
T 33943,2,B2 name of Current Character
c 33945 Display a Character's Inventory Window as an Information Window
D 33945 Used by the routine at #R29330. Input:  IX  Points to a character's inventory (usually Magic Knight)
C 33945,2 Modify instruction at #R34017 to display as information window, rather than menu window...
C 33947,3 ...
C 33950,2 Jump into inventory window drawing routine
c 33952 Show List of Objects (Window or Menu) and Handle Selection if a Menu
D 33952 Used by the routines at #R29488, #R29619, #R29756, #R30145, #R30968 and #R31537. Input:  B  Number of inventory slots to check DE  Points to summary command text (i.e. "DROP THE ", "GIVE THE ", "READ THE ", "WEAR THE " or "UNWEAR THE "), or 0 for no summary text HL  (entry via #R33952) Points to full command text (e.g. "DROP WHICH OBJECT?", or "YOU ARE NOW CARRYING") HL (entry via #R33984) Points to "YOU ARE NOW CARRYING" text IX  Points to a character's inventory Output: A  Zero-based index of selected menu item
C 33952,3 Store all registers on the stack
C 33955,3 Play downward scale sound
C 33958,3 Restore all registers from the stack
C 33961,3 Load first object in character's inventory into A
C 33964,1 If nothing in first slot...
C 33965,3 ...jump ahead to #R34087 (unused code block - see trivia)
C 33968,2 Modify instruction at #R34017 with 105, denoting window as a menu rather than information window...
C 33970,3 ...
C 33973,1 Store BC (B = number of inventory slots)
C 33974,1 Store HL
C 33975,2 Store IX
C 33977,3 Print Command Summary Text at DE (e.g. "DROP THE ") in Command Summary Window
C 33980,2 Restore IX
C 33982,1 Restore HL
C 33983,1 Restore BC
N 33984 This entry point is used by the routine at #R33945.
C 33984,2 Load C (object counter) with zero
C 33986,1 Store BC (B = number of inventory slots)
C 33987,2 Store IX (points to start of inventory)
C 33989,3 Load object from character's inventory (slot number C) into A
C 33992,1 If nothing in this slot...
C 33993,2 ...then jump ahead to #R34000
C 33995,1 Increase count of objects in inventory
C 33996,2 Advance IX to next slot
C 33998,2 Loop back to #R33989 for next slot
C 34000,2 Restore IX (points to start of inventory)
C 34002,1 Copy number of objects into A
C 34003,1 If number of objects is zero...
C 34004,3 ...then jump ahead to #R34096
C 34007,3 Load A with y-coordinate of top edge of Window 04
C 34010,1 Add number of objects to this y-coordinate
C 34011,2 Add an additional 3 to this total (menu window padding)
C 34013,3 Set y-coordinate of bottom edge of Window 04 to accommodate list of C objects
C 34016,1 Store HL (e.g. pointer to "DROP WHICH OBJECT?" text)
N 34017 The operand of the instruction at #R34017 represents the "Draw Hand Menu Cursor" Flag. This is modified by the instructions at #R33947 and #R33970.
C 34017,2 Load A with menu / static window value
C 34019,2 If this is not 105 (i.e. window is not a menu, but a simple information window)...
C 34021,2 ...then skip ahead to #R34030
C 34023,2 Draw Window 4 as a menu window...
C 34025,3 ...
C 34028,2 ...and skip over "draw an information window" section
C 34030,2 Draw Window 4 as an information window...
C 34032,3 ...
C 34035,1 Restore HL (pointer to full command text)...
C 34036,2 Store IX (points to start of inventory)
C 34038,3 Print text to screen
C 34041,2 Restore IX (points to start of inventory)
C 34043,1 Restore BC (B = number of remaining inventory slots)
C 34044,1 Store BC (B = number of remaining inventory slots)
C 34045,3 Load index of object in current inventory into A
C 34048,1 If index is zero (i.e. inventory slot is empty)...
C 34049,3 ...then skip ahead to #R34077
C 34052,1 Copy index into B
C 34053,2 Store IX (pointer to start of inventory)
C 34055,3 Point HL to text printing instruction to move cursor to start of next character row within window, then right by two characters
C 34058,1 Store BC (B = index of an object)
C 34059,3 Print text to screen (i.e. move text printing cursor right by two characters)
C 34062,1 Restore BC (B = index of an object)
C 34063,3 Point HL at object B's name in Table of Object Names...
C 34066,3 ...and print to screen
C 34069,2 Restore IX (pointer to start of inventory)
C 34071,2 Advance IX to next inventory slot
C 34073,1 Restore BC (B = number of remaining inventory slots)
C 34074,2 Repeat loop for next object in inventory, decreasing B (number of remaining inventory slots)
C 34076,1 Store BC (B = 0)
C 34077,1 Restore BC (B = number of remaining inventory slots
C 34078,3 If window is a menu, rather than information window...
C 34081,2 ...
C 34083,3 ...process keyboard / joystick input on a menu and load A with selected item index
C 34086,1 ...and return
N 34087 This jump point can never be reached, as a separate routine already checks for an empty inventory before code execution reaches this routine - see trivia
C 34087,2 Prepare to display Window 13
C 34089,1 Remove RETurn address from stack (as we are not RETurning)
C 34090,3 Point HL at "YOU HAVE DESTROYED YOURSELF BY DROPPING THE..." text
C 34093,3 Display Window 13 with text at HL, wait for Fire to be pressed then jump to Main Game Loop
C 34096,1 Store HL (pointer to "YOU ARE NOW CARRYING" text)
C 34097,3 Load A with y-coordinate of top edge of Window 04
C 34100,2 Add 4 to this y-coordinate
C 34102,3 Set y-coordinate of bottom edge of Window 04 to accommodate three rows of text
C 34105,2 Draw Window 4...
C 34107,3 ...
C 34110,1 Restore HL (pointer to "YOU ARE NOW CARRYING" text)
C 34111,3 ...and print to screen
C 34114,3 Point HL at "NOTHING AT ALL" text...
C 34117,3 ...and print to screen
C 34120,1 Restore BC (number of inventory slots, PUSHed by instruction at #R33986)
C 34121,1 Return
c 34122 Display and Process Input for Character Selection Menu (Current Room's Characters Only)
D 34122 Used by the routines at #R29619, #R29756, #R30145, #R30686 and #R31257. Input:  HL  Pointer to text to append to menu's title string, after "WHO DO YOU WANT TO " DE  Command Summary Text Pointer (second row of text in Command Summary Window) Output: A  1 if there is at least one character in the room, zero otherwise F  Reset if there is at least one character in the room, set otherwise
C 34122,1 Store HL (pointer to text to append to menu's title string)
C 34123,1 Store BC
C 34124,2 Store IX
C 34126,1 Store DE (Command Summary Text Pointer)
C 34127,3 Play Short Downward Scale Sound
C 34130,1 Restore DE (Command Summary Text Pointer)
C 34131,3 Print text at Command Summary Text Pointer (e.g. "COMMAND ") in Command Summary Window
C 34134,3 Load A with Magic Knight's current room...
C 34137,3 ...and create list of characters in this room at #R23404, loading A with number of characters
C 34140,2 If there are characters in this room then skip ahead to #R34170
C 34142,3 Point HL at "THERE IS NOBODY IN THIS ROOM" text
C 34145,3 Adjust height of window 13 to accommodate text...
C 34148,3 ...
C 34151,1 Store HL (pointer to start of text to print)
C 34152,2 Draw Window 13...
C 34154,3 ...
C 34157,1 Restore HL (pointer to start of text to print)
C 34158,3 Print text at HL
C 34161,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 34164,2 Restore IX
C 34166,1 Restore BC
C 34167,1 Restore HL (pointer to text to append to menu's title string)
C 34168,1 Set A to zero and set Zero Flag
C 34169,1 Return
C 34170,2 Add four to number of characters in current room (for menu size padding)...
C 34172,1 ...and load value into C
C 34173,3 Load A with window's top y-coordinate
C 34176,1 Add 4 + number of characters...
C 34177,3 ...and set window's bottom y-coordinate to this value
C 34180,2 Restore IX
C 34182,1 Restore BC
C 34183,2 Draw Window 3 as a menu window...
C 34185,3 ...
C 34188,3 Point HL at "WHO DO YOU WANT TO " text...
C 34191,3 ...and print to screen
C 34194,1 Restore HL (pointer to text to append to menu's title string, as at beginning of this routine)
C 34195,3 Append this text to menu's title
C 34198,4 Point IX at list of characters in room
C 34202,2 Load B with 16 (16 characters) (see trivia)
C 34204,1 Store BC (B = remaining characters to process)
C 34205,3 Load A with index of current character in list...
C 34208,2 ...and if this is 255 (End Marker)...
C 34210,3 ...then skip ahead to #R34254
C 34213,3 Point HL at text printing instructions to move cursor to start of next character row within window, then right by two characters
C 34216,2 Store IX (current position in list of characters in room)
C 34218,3 Print text at HL to screen (i.e. move cursor)
C 34221,2 Restore IX (current position in list of characters in room)
C 34223,3 Load A with index of current character in list...
C 34226,3 Set this character as the Current Character
C 34229,3 Point HL at instruction to print name of Current Character
C 34232,2 Store IX (current position in list of characters in room)
C 34234,3 Print text to screen
C 34237,2 Restore IX (current position in list of characters in room)
C 34239,2 Advance IX to next character in list
C 34241,1 Restore BC (B = remaining characters to process)
C 34242,2 Decrease B and loop back to #R34204
C 34244,3 Process keyboard / joystick input on a menu and load A with selected item index
C 34247,3 Update Current Character based upon selection made in menu
C 34250,2 Load A with 1
C 34252,1 Reset Zero Flag
C 34253,1 Return
C 34254,1 Restore BC (B = remaining characters to process)
C 34255,3 Process keyboard / joystick input on a menu and load A with selected item index
C 34258,3 Update Current Character based upon selection made in menu
C 34261,2 Load A with 1
C 34263,1 Reset Zero Flag
C 34264,1 Return
c 34265 Set Magic Knight's Available Action Flags and Validate I.D. Card if Appropriate
D 34265 Used by the routines at #R26997, #R28101, #R29330 and #R30001.
C 34265,3 Reset all Available In-Game Menu Command Flags except "COMMAND A CHARACTER" which is always set...
C 34268,3 ...
C 34271,3 If Magic Knight's Magic Level is zero...
C 34274,1 ...
C 34275,2 ...then skip ahead to #R34281
C 34277,4 Set "CAST A SPELL" Menu Command Flag (IY = 23610)
C 34281,3 If Magic Knight's current room is not 1 (The Bridge, USS Pisces 1)...
C 34284,2 ...
C 34286,2 ...then skip ahead to #R34320
C 34288,2 If Magic Knight is wearing the Cloak of Invisibility (01)...
C 34290,3 ...
C 34293,2 ...then skip ahead to #R34320
C 34295,2 If Magic Knight is not wearing the Valid ID Card (03)...
C 34297,3 ...
C 34300,2 ...then skip ahead to #R34320
C 34302,4 Set "COMMUNICATE" Menu Command Flag (IY = 23610)
C 34306,3 If Gordon is not carrying the Star Map...
C 34309,2 ...
C 34311,3 ...
C 34314,2 ...then skip ahead to #R34320
C 34316,4 Set "MOVE STARSHIP" Menu Command Flag (IY = 23610)
C 34320,3 Load E with Magic Knight's current room...
C 34323,1 ...
C 34324,3 Load BC with 4 (as each Transporter Pad Location entry is composed of 4 bytes)
C 34327,3 Point HL at Table of Transporter Pad Locations (#R32577)
C 34330,1 Advance HL by four bytes to next entry
C 34331,1 If first byte (Room Number) is 255 (End Marker)...
C 34332,2 ...
C 34334,2 ...then skip ahead to #R34363 (end of data reached)
C 34336,1 If current transporter pad's room is not in the same room as Magic Knight...
C 34337,2 ...then loop back to #R34330 for next transporter pad
C 34339,1 Advance HL to pad's left x-coordinate
C 34340,3 If Magic Knight's current x-coordinate (pixels) is less than this...
C 34343,1 ...
C 34344,3 ...then skip ahead to #R34363 (Magic Knight not on a transporter pad)
C 34347,1 Advance HL to pad's right x-coordinate
C 34348,1 If Magic Knight's current x-coordinate (pixels) is not less than this...
C 34349,3 ...then skip ahead to #R34363 (Magic Knight not on a transporter pad)
C 34352,1 Advance HL to pad's y-coordinate
C 34353,3 If Magic Knight's current y-coordinate (pixels) is not the same as this...
C 34356,1 ...
C 34357,2 ...then skip ahead to #R34363 (Magic Knight not on a transporter pad)
C 34359,4 Set "USE TRANSPORTER" Menu Command Flag (IY = 23610)
C 34363,1 Load C with weights / flags of all Magic Knight's carried objects, OR-ed Together...
C 34364,3 ...
C 34367,2 ...and if Can Be Read Flag is not set for any of the objects...
C 34369,2 ...then skip ahead to #R34375
C 34371,4 Set "READ SOMETHING" Menu Command Flag (IY = 23610)
C 34375,2 Load C with flags (2) of all Magic Knight's carried objects, OR-ed Together...
C 34377,3 ...
C 34380,2 ...and if Can Be Worn Flag is set for at least one of the objects...
C 34382,2 ...then skip ahead to #R34390
C 34384,3 If Magic Knight's first inventory slot (wearing) is empty...
C 34387,1 ...
C 34388,2 ...then skip ahead to #R34394
C 34390,4 Set "WEAR/UNWEAR OBJECT" Menu Command Flag (IY = 23610)
C 34394,2 If Magic Knight is not carrying the Blank I.D. Card (02)...
C 34396,3 ...
C 34399,2 ...then skip ahead to #R34473
C 34401,2 If Magic Knight is not carrying the Pot of Glue (10)...
C 34403,3 ...
C 34406,2 ...then skip ahead to #R34473
C 34408,2 If Magic Knight is not carrying the Photograph (of Magic Knight) (05)...
C 34410,3 ...
C 34413,2 ...then skip ahead to #R34473
C 34415,2 Remove Photograph (of Magic Knight) from Magic Knight's current inventory (carrying)...
C 34417,2 ...
C 34419,3 ...
C 34422,1 ...storing HL (pointer to start of Magic Knight's current inventory)...
C 34423,3 ...
C 34426,1 ...and restoring HL (pointer to start of Magic Knight's current inventory)
C 34427,1 Store HL (pointer to start of Magic Knight's current inventory)
C 34428,2 Remove Blank ID Card from Magic Knight's current inventory...
C 34430,2 ...
C 34432,3 ...
C 34435,1 Restore HL (pointer to start of Magic Knight's current inventory)
C 34436,2 Load Valid ID Card into the first empty inventory slot of Magic Knight...
C 34438,2 ...
C 34440,3 ...
C 34443,3 Set I.D. Card Validated Flag...
C 34446,2 ...
C 34448,3 ...
C 34451,3 Point HL at "YOU HAVE HAD AN ACCIDENT WITH THE GLUE..." text
C 34454,3 Adjust height of window 17 to accommodate text...
C 34457,3 ...
C 34460,1 Store HL (pointer to start of text)
C 34461,2 Draw Window 17 as a Menu Window...
C 34463,3 ... (bug)
C 34466,1 Restore HL (pointer to start of text)
C 34467,3 Print text to screen
C 34470,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 34473,3 If Magic Knight's current room is not 24 (The Control Column, USS Pisces, 6A)...
C 34476,2 ...
C 34478,1 ...then return
C 34479,4 Set "LAUNCH TYME MACHINE" Menu Command Flag (IY = 23610)
C 34483,1 Return
c 34484 Load C with Property of Index A for All Magic Knight's Carried Objects, OR-ed Together
D 34484 Used by the routine at #R34265. Input:  A  Index of required property of objects Output: C  Flags of all objects held, OR-ed together
C 34484,3 Modify instruction at #R34499 with index of required property
C 34487,4 Point IX at Magic Knight's current inventory (carrying)
C 34491,3 Load B with 5 and C with 0 (i.e. reset all bits in C)
C 34494,3 If Magic Knight's current inventory slot is empty...
C 34497,1 ...
C 34498,1 ...then return
N 34499 The operand of the instruction at #R34499 represents the index of the required property. This is modified by the instruction at #R34484.
C 34499,2 Load E with index of required property
C 34501,3 Point HL to the E-th byte of the A-th record in Object Properties Table
C 34504,1 Load A with value of required property (flags)...
C 34505,1 ...and set corresponding bits of C...
C 34506,1 ...
C 34507,2 Advance IX to next inventory slot...
C 34509,2 ...and loop back to #R34494 for next object
C 34511,1 Return
c 34512 Create List of Characters in Room A at 23404 and Load A with Number of Characters
D 34512 Used by the routine at #R34122. Input:  A  Room index Output: A  Number of characters in room F  Zero Flag set if no characters in room, reset otherwise
C 34512,3 Modify instruction at #R34540 with room index
C 34515,1 Store HL
C 34516,1 Store BC
C 34517,1 Store DE
C 34518,2 Store IX
C 34520,2 Set A to 255 (End Marker)
C 34522,3 Point HL at end of Table of Characters in Room of Interest
C 34525,2 Load B with 15 (as we are clearing 15 entries in the list)
C 34527,1 Set value at address in HL to 255
C 34528,1 Move HL back one byte
C 34529,2 Loop back to #R34527
C 34531,4 Point IX at start of Table of Characters' Current Positions at #R25244
C 34535,2 Set D (index of current character) to zero
C 34537,1 Set C (count of characters in room of interest) to zero
C 34538,2 Load B with 12 (as there are 12 characters in the game)
N 34540 The operand of the instruction at #R34540 represents a room index. This is modified by the instruction at #R34512.
C 34540,2 Load A with room index
C 34542,3 If current character's current room is not the room of interest...
C 34545,2 ...then skip ahead to #R34550
C 34547,1 Increase C (count of number of characters in room of interest)
C 34548,1 Load index of current character into address in HL
C 34549,1 Advance HL by one byte
C 34550,2 Advance IX to next character's position data...
C 34552,2 ...
C 34554,2 ...
C 34556,1 Increase index of current character (i.e. advance to next character)
C 34557,2 Loop back to #R34540
C 34559,1 Load number of characters in room of interest into A
C 34560,1 Set zero flag is there are no characters in room, otherwise reset
C 34561,2 Restore IX
C 34563,1 Restore DE
C 34564,1 Restore BC
C 34565,1 Restore HL
C 34566,1 Return
c 34567 Draw Strength Bar at Top of Screen
D 34567 Used by the routine at #R27703.
C 34567,2 If Magic Knight is not carrying the Mirror (35)...
C 34569,3 ...
C 34572,1 ...then return
C 34573,3 Point HL at Display File Address for top pixel row of cell at (2, 3) (characters)
C 34576,3 Load A with Magic Knight's strength
C 34579,3 Divide A by eight, rounding down to nearest integer
C 34582,2 If lowest four bits are reset (i.e. don't need to draw part of a character block)...
C 34584,2 ...then skip ahead to #R34603
C 34586,1 Load number of full character blocks to draw into B
C 34587,2 Load A with 255 (draw row of eight pixels)
C 34589,1 Store HL (current Display File position in health bar block)
C 34590,1 Store BC (B = remaining number of full character blocks to draw)
C 34591,2 Load B with 4 (health bar has 4 stripes)
C 34593,1 Draw a byte (i.e. a "block" of 8 health units) to health bar
C 34594,1 Advance HL two rows down (as bar is made of alternating horizontal stripes)...
C 34595,1 ...
C 34596,2 Decrease B (number of stripes to draw) and loop back to #R34593 if not zero
C 34598,1 Restore BC (B = remaining number of full character blocks to draw)
C 34599,1 Restore HL (current Display File position in health bar block)
C 34600,1 Advance HL (horizontally) one character to draw next full block
C 34601,2 Decrease B (remaining number of full character blocks to draw) and loop back to #R34589 if not zero
C 34603,3 Load A with Magic Knight's strength
C 34606,2 Get fractional part (i.e. amount by which strength is more than a multiple of eight)
C 34608,2 If this is not zero, then skip ahead to #R34613
C 34610,1 Set A to zero
C 34611,2 Skip ahead to draw the blank rows (see trivia)
C 34613,1 Load fractional part of strength into B
C 34614,1 Set A to zero
C 34615,1 Set the Carry Flag
C 34616,1 Move carry Flag bit into MSB of A
C 34617,2 Decrease B and loop back if not zero (i.e. place a bit at the LHS of A for each unit of strength that is left!)
C 34619,2 Load B with 4 (health bar has 4 stripes)
C 34621,1 Draw a byte (i.e. a "block" of 8 health units) to health bar
C 34622,1 Advance HL two rows down (as bar is made of alternating horizontal stripes)...
C 34623,1 ...
C 34624,2 Loop back to #R34621 to draw next row
C 34626,1 Return
c 34627 Draw Objects in Magic Knight's Inventory if he is Carrying the Mirror
D 34627 Used by the routine at #R27703.
C 34627,2 If Magic Knight is not carrying the Mirror (35)...
C 34629,3 ...
C 34632,1 ...then return
C 34633,3 Point HL at start of Magic Knight's current inventory (carrying)
C 34636,2 Load B with 5 (five inventory slots)
C 34638,3 Load DE with x- and y-coordinates respectively to start drawing object graphics (D, or x = 3, E, or y = 16)
C 34641,1 Store BC (B = remaining number of inventory slots to process)
C 34642,1 Store HL (pointer to current position in Magic Knight's current inventory)
C 34643,1 Store DE (coordinates in characters to draw object)
C 34644,1 Load index of object in current slot in Magic Knight's inventory into A
C 34645,1 If this is zero...
C 34646,2 ...then restore registers and return
C 34648,2 Load 6 (index of objects' attribute property) into E
C 34650,3 Point HL at the attribute property of the object in the current inventory slot
C 34653,1 Load attribute into ATTR T system variable...
C 34654,3 ...
C 34657,1 Advance HL to point to graphic index property...
C 34658,1 ...and load into A
C 34659,1 Restore BC (coordinates in characters to draw object, was in DE)
C 34660,1 Store BC (coordinates in characters to draw object)
C 34661,1 Store BC (coordinates in characters to draw object)
C 34662,3 Draw an object with lookup index A at character coordinates (C, B)
C 34665,1 Restore BC (coordinates in characters to draw object)
C 34666,3 Load HL with Attribute File address for coordinates (C, B)
C 34669,3 Load A with value stored in ATTR T system variable...
C 34672,1 ...and apply this attribute to Attribute File at coordinates (C, B)...
C 34673,1 ...
C 34674,1 ...(C + 1, B)...
C 34675,3 ...
C 34678,1 ...
C 34679,1 ...(C, B + 1)...
C 34680,1 ...
C 34681,1 ...and (C + 1, B + 1)
C 34682,1 Restore DE (coordinates in characters to draw object)
C 34683,1 Advance right by three characters (i.e. add three to x-coordinate in E)...
C 34684,2 ...
C 34686,1 ...
C 34687,1 Restore HL (pointer to current position in Magic Knight's current inventory)
C 34688,1 Advance HL to next inventory slot
C 34689,1 Restore BC (B = remaining number of inventory slots to process)
C 34690,2 Decrease B, and loop back to #R34641 if not zero
C 34692,1 Return
C 34693,1 Restore DE (coordinates in characters to draw object)
C 34694,1 Restore HL (pointer to current position in Magic Knight's current inventory)
C 34695,1 Restore BC (B = remaining number of inventory slots to process)
C 34696,1 Return
c 34697 Splice Numeric Data A as a String into a String at HL
D 34697 Used by the routines at #R30533, #R30583, #R30643 and #R33657. Input:  A Numeric value to put into string HL  Address of string to modify
C 34697,1 Store HL (address of string to modify)
C 34698,3 Point HL at destination location for ASCII string
C 34701,2 Load numeric value into BC...
C 34703,1 ...
C 34704,3 Convert numeric value BC to ASCII string at address in HL (#R23464)
C 34707,3 Point HL at third digit in converted five-digit string
C 34710,2 Load C with 2 (as we can have up to two leading zeroes on a three-digit number)
C 34712,1 Load ASCII character at HL into A
C 34713,2 If character is not a zero ("0")...
C 34715,2 ...then skip ahead to #R34723
C 34717,2 Replace the zero character with a space (i.e. remove leading zeroes from number)
C 34719,1 Advance to next character in string
C 34720,1 Decrease C (number of remaining digits to process)
C 34721,2 Loop back to #R34712 if there are still digits to process
C 34723,1 Restore pointer to "numeric text" (originally in HL at start of this routine) into DE
C 34724,3 Point HL at string just created
C 34727,3 Splice ASCII string number just generated into "numeric data" text
C 34730,2 ...
C 34732,1 Return
c 34733 Print Text at Location HL to Screen Using Full Screen Width
D 34733 Used by the routines at #R28172 and #R54505. Input:  HL  Text to print
C 34733,3 Load A with x-coordinate of right edge of current window to draw (characters)
C 34736,1 Store AF (A = x-coordinate of right edge of current window)
C 34737,2 Set right-edge x-coordinate value at #R23495 to 31...
C 34739,3 ...
C 34742,3 Load A with x-coordinate of left edge of current window to draw (characters)
C 34745,1 Store AF (A = x-coordinate of left edge of current window)
C 34746,1 Set left-edge x-coordinate value at #R23493 to zero...
C 34747,3 ...
C 34750,3 Print text at location HL to screen
C 34753,1 Restore x-coordinate of left edge of current window...
C 34754,3 ...to #R23493
C 34757,1 Restore x-coordinate of right edge of current window...
C 34758,3 ...to #R23495
C 34761,1 Return
c 34762 Print Text at Location HL to Screen
D 34762 Used by the routines at #R26745, #R26884, #R26926, #R27703, #R27750, #R27762, #R28506, #R28554, #R29756, #R30001, #R30123, #R30145, #R30686, #R31041, #R31188, #R31312, #R31468, #R31537, #R31688, #R32252, #R32895, #R33338, #R33725, #R33834, #R33952, #R34122, #R34265, #R34733, #R54283, #R54333, #R55115, #R55138, #R55364 and #R55685. Input:  HL  Points to text data to print
C 34762,4 Point IX at start of Temporary Text Buffer
C 34766,2 Prepare Recursion Depth Counter for loop...
C 34768,3 ...
N 34771 This entry point is used by the routine at #R34887.
C 34771,3 Increase Recursion Depth Counter...
C 34774,1 ...
C 34775,3 ...
C 34778,1 Store HL
C 34779,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 34782,1 Restore HL
C 34783,1 Prepare pointer to text to print for loop
N 34784 This entry point is used by the routines at #R34858, #R34934 and #R36602.
C 34784,3 Start of loop - load Recursion Depth Counter into A...
C 34787,2 ...and if this is 255 (i.e. no more text to print)...
C 34789,1 ...then return
C 34790,1 Advance to next character to be printed
C 34791,1 Get character from string
C 34792,1 If character is a "0"...
C 34793,3 ...then return from current level of text printing
C 34796,2 If the character is a "32" (SPACE)...
C 34798,3 ...then print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R34784 to load next word
C 34801,2 If the character is a "31"...
C 34803,3 ...then print the Current Character's name
C 34806,2 If the character is a "29"...
C 34808,3 ...then print the Current Object's name
C 34811,2 If the character is a "28"...
C 34813,3 ...then print the Current Starship Location's name
C 34816,2 If the character is a "19"...
C 34818,3 ...then toggle BRIGHT Flag then loop back to #R34784 for next data
C 34821,2 If the character is a "18"...
C 34823,3 ...then toggle FLASH Flag then loop back to #R34784 for next data
C 34826,2 If the character is a "17"...
C 34828,3 ...then change PAPER colour based upon following data byte then loop back to #R34784 for next data
C 34831,2 If the character is a "16"...
C 34833,3 ...then change INK colour based upon following data byte then loop back to #R34784 for next data
C 34836,2 If the character is a "14" (Carriage return / line feed to start of next character row down within window)...
C 34838,3 ...then print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R34784 to load next word
C 34841,2 If the character is a "13" (Carriage return / line feed to start of next character row down)...
C 34843,3 ...then print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R34784 to load next word
C 34846,2 If value is 91 or greater (i.e. special character)...
C 34848,3 ...then print an entry from the Common Words Table
C 34851,3 Load character into temporary text buffer
C 34854,2 Advance to next position in temporary text buffer
C 34856,2 Loop back to #R34784
c 34858 Return from recursive text-printing
D 34858 Used by the routine at #R34887.
C 34858,1 Restore HL (pointer to current position in text to print)
C 34859,2 Jump back into text printing routine to process next character in parent string
c 34861 Text Printing Return from current level of text printing
D 34861 Used by the routine at #R34762.
C 34861,1 Store AF
C 34862,3 Load Recursion Depth Counter into B...
C 34865,1 ...
C 34866,1 Restore AF
C 34867,1 If Recursion Depth Counter is not zero (i.e. we are not at the end of the top-level string)...
C 34868,2 ...then skip ahead to 34879
C 34870,1 Decrease Recursion Depth Counter to 255, as we have reached the end of the top-level string...
C 34871,3 ...
C 34874,2 Load A with 255 (End Marker)
C 34876,3 Print word in Temporary Text Buffer to screen, wrapping text if necessary, then jump to #R34784 to return
C 34879,3 Decrease Recursion Depth Counter...
C 34882,1 ...
C 34883,3 ...
C 34886,1 Return
c 34887 Text Printing Print an entry from the Common Words Table
D 34887 Used by the routines at #R34762 and #R34968. Input:  A  (Entry at #R34887 only) 91 + Index of required entry in Common Words Table A  (Entry at #R34893 only) Index of required entry in list of texts HL  (Entry at #R34893 only) Start address of a list of texts
C 34887,1 Store HL (pointer to current position in text to print)
C 34888,3 Point HL at start of Common Words Table
C 34891,2 Subtract 91 to get absolute index of required entry in table
N 34893 This entry point is used by the routines at #R34948 and #R34958.
C 34893,2 If index is zero (i.e. first entry is required) then skip ahead to #R34913
C 34895,2 If index is at least 100...
C 34897,3 ...then advance HL to second part of Common Words Table and subtract 100 from required index (see trivia)
C 34900,2 If index is zero (i.e. first entry is required) then skip ahead to #R34913
C 34902,1 Load index into B
C 34903,1 Store BC (B = Remaining number of strings to skip, initially set to index of required entry in Common Words Table)
C 34904,3 Set BC to 65535 (repeat count for CPIR)
C 34907,1 Set A to zero
C 34908,2 Advance HL until (HL) = A, i.e. a zero (end of string) is found
C 34910,1 Restore BC (B = Remaining number of strings to skip)
C 34911,2 Loop back to 34903
C 34913,3 Call text printing routine recursively to print the common word
C 34916,2 Restore HL (pointer to current position in text to print) then jump back into text printing routine to process next character in parent string
c 34918 Text Printing Toggle BRIGHT Flag
D 34918 Used by the routine at #R34762.
C 34918,2 Load B with 64 (BRIGHT flag)
C 34920,2 Skip ahead to 34924 (toggle BRIGHT flag, store ATTR T system variable and jump back to start of text printing loop to process next data byte)
c 34922 Text Printing Toggle FLASH Flag
D 34922 Used by the routine at #R34762.
C 34922,2 Load B with 128 (FLASH flag)
N 34924 This entry point is used by the routine at #R34918.
C 34924,3 Load A with current ATTR T system variable value
C 34927,1 Toggle FLASH flag
C 34928,2 Store ATTR T system variable and jump back to start of text printing loop to process next data byte
c 34930 Text Printing Change PAPER Colour
D 34930 Used by the routine at #R34762.
C 34930,2 Load B with attribute mask (FLASH, BRIGHT and all INK bits set, all PAPER bits reset)
C 34932,2 Change PAPER colour then jump back to start of text printing loop to process next data byte
c 34934 Text Printing Change INK Colour
D 34934 Used by the routine at #R34762.
C 34934,2 Load B with attribute mask (FLASH, BRIGHT and all PAPER bits set, all INK bits reset)
N 34936 This entry point is used by the routine at #R34930.
C 34936,1 Advance HL pointer to next byte in text data
C 34937,3 Load ATTR T system variable value into A
C 34940,1 Apply mask to reset all INK bits
C 34941,1 Set INK bits as defined in next text data byte
N 34942 This entry point is used by the routine at #R34922.
C 34942,3 Store new value of ATTR T
C 34945,3 Jump back to start of text printing loop to process next data byte
c 34948 Print the Current Starship Location's Name
D 34948 Used by the routine at #R34762.
C 34948,1 Store HL (current position in text data)
C 34949,3 Point HL at start of Table of Starship Destination Names
C 34952,3 Load A with Current Starship Location
C 34955,1 Set Zero Flag if location index is zero
C 34956,2 Jump back to print this location's name
c 34958 Print the Current Object's Name
D 34958 Used by the routine at #R34762.
C 34958,1 Store HL (current position in text data)
C 34959,3 Point HL at start of Table of Object Names
C 34962,3 Load A with index of Current Object
C 34965,1 Set Zero Flag is object index is zero
C 34966,2 Jump back to print this object's name
c 34968 Print the Current Character's Name
D 34968 Used by the routine at #R34762.
C 34968,3 Load A with index of Current Character
C 34971,2 Add 195 (as 195 is the index of the first of the list of characters' names in the Common Words Table)
C 34973,3 Print an entry (A) from the Common Words Table
c 34976 Subtract 100 from Common Word Index and Jump to Second Part of Common Words Table
D 34976 This routine is redundant in that if it is skipped (via a RET at #R34976) the game continues to function normally. (See trivia) Input:  A  Index of common word required Output: A  Modified common word index (as input, minus 100)
C 34976,3 Advance to second part of Common Words Table
C 34979,2 Subtract 100 from index required
C 34981,1 Return
c 34982 Draw a Menu Window
D 34982 Used by the routines at #R26745, #R26884, #R30001, #R30145, #R30686, #R31041, #R31537, #R31688, #R32895, #R33952, #R34122, #R34265 and #R55115.
C 34982,1 Swap AF register (A holds index of window to draw)
C 34983,2 Load the value 105 into #R35086 (i.e. set "Draw Menu (Hand) Cursor" 'flag' to true)...
C 34985,3 ...
C 34988,2 Draw the window
c 34990 Draw a Window
D 34990 Used by the routines at #R26745, #R26884, #R26926, #R27703, #R27762, #R28506, #R28554, #R28696, #R29756, #R30145, #R31188, #R31312, #R31468, #R32252, #R32895, #R33338, #R33725, #R33834, #R33952, #R34122, #R54333, #R55138, #R55364 and #R55685. Input:  A  Index of window to draw
C 34990,1 Switch AF and AF'
C 34991,2 Reset "Draw Hand Menu Cursor" Flag (later in this routine)...
C 34993,3 ...
N 34996 This entry point is used by the routine at #R34982.
C 34996,4 Set Characters Free to Move Flag (IY = 23610)
C 35000,1 Restore original AF (with A being index of window)
C 35001,3 Set this index as the "current" window index
C 35004,1 Load HL with A value (index of required window)...
C 35005,2 ...
C 35007,1 Multiply index by eight (as each window's data takes up eight bytes in table at 37089)...
C 35008,1 ...
C 35009,1 ...
C 35010,3 Set BC to start of window data table
C 35013,1 Calculate location of start of required window's data
C 35014,1 Load E with x-coordinate of left edge (characters)
C 35015,1 Load C with x-coordinate of right edge (characters)...
C 35016,1 ...
C 35017,1 Load D with y-coordinate of top edge (characters)...
C 35018,1 ...
C 35019,1 Load B with y-coordinate of bottom edge (characters)...
C 35020,1 ...
C 35021,4 Store values for later use...
C 35025,4 ...
C 35029,1 Load A with window's upper edge border style...
C 35030,1 ...
C 35031,3 Store for later use in routine at #R54231
C 35034,1 Load A with window's border attribute...
C 35035,1 ...
C 35036,1 Exchange AF and AF'
C 35037,1 Load A with starting y-coordinate of hand cursor...
C 35038,1 ...
C 35039,3 Store for later use
C 35042,1 Load A with window's content attribute...
C 35043,1 ...
C 35044,3 Store for later use
C 35047,1 Exchange AF and AF' (restoring border attribute to A and putting background colour in A')
C 35048,3 Draw window frame
C 35051,3 Point HL at previously stored values
C 35054,1 Increase top-left x-coordinate
C 35055,1 Increase top-left y-coordinate...
C 35056,1 ...
C 35057,1 Decrease bottom-right x-coordinate...
C 35058,1 ...
C 35059,1 Decrease bottom-right y-coordinate...
C 35060,1 ...
C 35061,3 Load window content attribute into A
C 35064,3 Prepare to fill a region with the attribute in A
C 35067,3 Update ATTR T system variable with window content attribute
C 35070,3 Fill a region of Attribute File with specified attribute
C 35073,3 Blank the interior of the window (Display File)
C 35076,3 Load x-coordinate of left of interior of window into C...
C 35079,1 ...
C 35080,1 Load y-coordinate of top of interior of window into B...
C 35081,1 ...
C 35082,3 Move Bitmap Virtual Cursor (bitmap) to top-left of interior or window and load address into HL
C 35085,1 Store HL (address in Display File of top-left of interior of window)
N 35086 The operand of the instruction at #R35086 represents the "Draw Hand Menu Cursor" Flag. This is modified by the instructions at #R34985 and #R34993.
C 35086,2 Load A with "Draw Hand Menu Cursor" Flag
C 35088,2 If value is not 105...
C 35090,3 ...then jump to #R35114 (i.e. don't draw the hand cursor)
N 35093 Window is a menu (105)
C 35093,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 35097,3 Load A with starting y-coordinate of hand cursor
C 35100,1 Add y-coordinate of top of area to this...
C 35101,1 ...and place back into B
C 35102,2 Load A with 2 (graphic lookup index of Menu Hand Cursor graphic in table at #R55950)
C 35104,3 Load D (graphic width) with 2 and E (graphic height) with 2
C 35107,2 Store IX
C 35109,3 Draw a Graphic with Lookup Index A at Character Coordinates (C, B) with width = E characters and height = D characters
C 35112,2 Restore IX
C 35114,1 Set A to zero
C 35115,3 Set hand cursor's current y-coordinate to zero (i.e. defaults to top of its movement range within current window)
C 35118,1 Restore HL (address in Display File of top-left of interior of window)
C 35119,3 Set memory location to start printing character in character printing routine
C 35122,1 Return
c 35123 Draw a Window Frame
D 35123 Used by the routine at #R34990.
C 35123,3 Store border attribute in ATTR T system variable
C 35126,3 Load A with x-coordinate of left of window
C 35129,1 Copy into C
C 35130,3 Load A with x-coordinate of right of window
C 35133,1 Get distance between left and right coordinates
C 35134,1 Subtract 1 to get width of window top-edge (not including corner pieces)
C 35135,1 Transfer this to BC...
C 35136,2 ...
C 35138,1 Store BC (width of top edge of window, not including corner pieces)
C 35139,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 35143,1 Increase C by one (as top edge strictly starts one to the right of this x-coordinate - the left-most is actually a corner piece, not an edge)
C 35144,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35147,1 Restore HL (width of top edge of window, not including corner pieces)
C 35148,1 Store HL (width of top edge of window, not including corner pieces)
C 35149,1 Wait for interrupt
C 35150,3 Draw upper window frame edge then increment the border character index in routine at #R54231
C 35153,3 Load C with x-coordinate of left of window...
C 35156,1 ...
C 35157,3 Load B with y-coordinate of bottom of window...
C 35160,1 ...
C 35161,1 Increase C by one (as bottom edge strictly starts one to the right of this x-coordinate - the left-most is actually a corner piece, not an edge)
C 35162,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35165,1 Restore HL (width of bottom edge of window)...
C 35166,3 Draw lower window frame edge then increment the border character index in routine at #R54231
C 35169,3 Load y-coordinate of top of window into B...
C 35172,1 ...
C 35173,3 Load y-coordinate of bottom of window into A
C 35176,1 Subtract B...
C 35177,1 ...and decrease by one to get length of left-edge (not including corner pieces)
C 35178,1 Store AF (A = remaining length of left / right edges)
C 35179,4 Load B with y-coordinate of top edge and C with x-coordinate of left edge
C 35183,1 Add A and B to get y-coordinate of character to draw in left edge...
C 35184,1 ...and load into B
C 35185,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35188,3 Load A with index of character (left edge) to draw
C 35191,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 35194,3 Load HL with address of Bitmap Virtual Text Cursor
C 35197,1 Load A with LSB of Display File address (virtual attribute cursor location)
C 35198,2 Decrease to nearest multiple of 32 (i.e. start of character row)...
C 35200,1 ...and place back in L
C 35201,3 Load A with x-coordinate of right edge of window (characters)
C 35204,1 Add this x-coordinate to value in HL...
C 35205,1 ...
C 35206,3 ...and update address of Bitmap Virtual Text Cursor
C 35209,3 Load A with index of character (left edge) to draw...
C 35212,1 ...and increment index to get index of right-edge character
C 35213,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 35216,1 Restore AF (A = remaining length of left / right edges)
C 35217,1 Decrease remaining length
C 35218,3 If remaining length is not zero then loop back to #R35178
C 35221,3 Load C with x-coordinate of right edge of window (characters)...
C 35224,1 ...
C 35225,3 Load y-coordinate of top edge of window into B...
C 35228,1 ...
C 35229,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35232,3 Load A with index of character (left-edge) to draw...
C 35235,1 ...and increment (to get right-edge character)
C 35236,3 Increment index again (to get top-right corner character) and store at #R54234
C 35239,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 35242,4 Load B with y-coordinate of window's bottom edge and C with x-coordinate of window's right-edge
C 35246,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35249,3 Increment index of window frame character currently in use to get bottom-right corner character
C 35252,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 35255,3 Load C with x-coordinate of left edge of current window to draw (characters)...
C 35258,1 ...
C 35259,3 Load B with y-coordinate of window's bottom edge...
C 35262,1 ...
C 35263,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35266,3 Increment index of window frame character currently in use to get bottom-left corner character
C 35269,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 35272,4 Load B with y-coordinate of top-edge of window and C with x-coordinate of left-edge of window
C 35276,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 35279,3 Increment index of window frame character currently in use to get top-left corner character
C 35282,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor and return
c 35285 Draw an upper or lower window frame edge then increment the border character index
D 35285 Used by the routine at #R35123. Input:  A  (Input, #R35291) Previous border edge character index used HL  (Input, #R35285) Width of window edge to draw (characters, minus 1)
C 35285,3 Draw an Edge of Frame of a Window
N 35288 This entry point is used by the routine at #R35123.
C 35288,3 Load A with window edge border character previously used
N 35291 This entry point is used by the routine at #R35123.
C 35291,1 Increase index of window edge border character to use next...
C 35292,3 ...and store at #R54234
C 35295,1 Return
c 35296 Process Keyboard / Joystick Input on a Menu and Load A with Selected Item Index
D 35296 Used by the routines at #R26670, #R26745, #R30001, #R30145, #R30686, #R31041, #R31537, #R31688, #R32895, #R33952, #R34122 and #R55115. Output: A  Selected menu item index (zero-based)
C 35296,3 Check whether to draw hand cursor on menu...
C 35299,2 ...and if not...
C 35301,1 ...then return
C 35302,3 Load A with x-coordinate of left edge of current window to draw (characters)...
C 35305,3 ...and store at #R23489
C 35308,1 Increase by one character...
C 35309,3 ...and store for later use
C 35312,3 Load starting y-coordinate of hand cursor into A...
C 35315,1 and copy into B
C 35316,3 Load y-coordinate of current window's top-left corner into A...
C 35319,1 ...add to B...
C 35320,1 ...and multiply by 8 to get y-coordinate of top of hand cursor in pixels...
C 35321,1 ...
C 35322,1 ...
C 35323,3 Then store for later use
C 35326,3 Load y-coordinate of current window's bottom edge into A...
C 35329,1 ...multiply by eight...
C 35330,1 ...
C 35331,1 ...
C 35332,2 ...then add 7 to get y-coordinate of absolute bottom of window in pixels
C 35334,3 ...and store for later
C 35337,3 Load y-coordinate of current window's top-left corner into A...
C 35340,1 ...and copy into B
C 35341,3 Load y-coordinate of current window's bottom-right corner into A...
C 35344,1 ...subtract B...
C 35345,1 ...then subtract one to get height of window, not including frame
C 35346,1 Copy this into B
C 35347,3 Load A with initial y-coordinate of hand cursor relative to current window...
C 35350,1 ...subtract B...
C 35351,2 ...and negate to give vertical distance available to hand cursor to move
C 35353,1 Multiply this by eight to convert from characters to pixels...
C 35354,1 ...
C 35355,1 ...
C 35356,3 ...and store at 23475
C 35359,3 Load A with current y-coordinate of hand cursor relative to its starting position (pixels)...
C 35362,3 ...and invert INK and PAPER bits to highlight currently active menu item at this position
N 35365 This entry point is used by the routines at #R35397 and #R35459.
C 35365,3 Capture keyboard or joystick input loading result into A
C 35368,1 Wait for interrupt
C 35369,2 If "up" pressed then...
C 35371,3 ...jump to routine to move Hand Cursor up and update menu item highlighting
C 35374,2 If "down" pressed then...
C 35376,3 ...jump to routine to move Hand Cursor down and update menu item highlighting
C 35379,2 If "fire" has not been pressed then...
C 35381,2 Loop back to #R35365
C 35383,3 Load A with (zero-based) index of selected menu item and return
c 35386 Wait for Fire Button / Key to be Released
D 35386 Used by the routines at #R30001, #R35497 and #R55138.
C 35386,1 Store AF
C 35387,1 Wait for interrupt
C 35388,3 Capture keyboard or joystick input loading result into A
C 35391,2 If fire button / key pressed...
C 35393,2 ...loop back to #R35387
C 35395,1 Restore AF
C 35396,1 Return
c 35397 Move Hand Cursor Up and Update Menu Item Highlighting
D 35397 Used by the routine at #R35296.
C 35397,3 Load menu hand cursor's current y-coordinate into A
C 35400,1 If coordinate is zero...
C 35401,3 ...then jump to #R35365 (return to menu input handling routine)
C 35404,3 Store y-coordinate (pixels) at #R23478
C 35407,1 Store AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 35408,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 35410,1 Divide this new y-coordinate by eight to get y-coordinate in characters...
C 35411,1 ...
C 35412,1 ...
C 35413,2 ...
C 35415,1 Load this y-coordinate into C
C 35416,1 Restore AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 35417,1 Decrease y-coordinate (pixels) by two...
C 35418,1 ...
C 35419,3 Store new y-coordinate (in pixels)
C 35422,1 Store BC (C = y-coordinate, in characters and before move, of Menu Hand Cursor's finger)
C 35423,3 Scroll a region of the Display File up two pixel rows without wrapping...
C 35426,3 ...
N 35429 This entry point is used by the routine at #R35459.
C 35429,1 Restore BC (C = y-coordinate, in characters and before move, of Menu Hand Cursor's finger)
C 35430,3 Load menu hand cursor's new y-coordinate (in pixels) into A
C 35433,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 35435,1 Divide this new y-coordinate by eight to get y-coordinate in characters...
C 35436,1 ...
C 35437,1 ...
C 35438,2 ...
C 35440,1 If new y-coordinate of Menu Hand Cursor (in characters) is the same as its previous y-coordinate...
C 35441,3 ...then jump to #R35365 (return to menu input handling routine)
C 35444,3 Load A with previous y-coordinate in pixels...
C 35447,3 ...and invert INK and PAPER bits to remove highlighting at this location
C 35450,3 Load A with new y-coordinate in pixels...
C 35453,3 and invert INK and PAPER bits to apply highlighting at this location
C 35456,3 Jump to #R35365 (return to menu input handling routine)
c 35459 Move Hand Cursor Down and Update Menu Item Highlighting
D 35459 Used by the routine at #R35296.
C 35459,3 Load menu hand cursor's current y-coordinate into A
C 35462,3 If height available to Menu Hand Cursor to move down (in pixels, stored at #R23475) is the same as the cursor's current y-coordinate...
C 35465,1 ...i.e. the cursor cannot move any further down...
C 35466,3 ...then jump to #R35365 (return to menu input handling routine)
C 35469,3 Store y-coordinate (pixels) at #R23478
C 35472,1 Store AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 35473,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 35475,1 Divide this new y-coordinate by eight to get y-coordinate in characters...
C 35476,1 ...
C 35477,1 ...
C 35478,2 ...
C 35480,1 Load this y-coordinate into C
C 35481,1 Restore AF (A = Menu Hand Cursor's y-coordinate, in pixels)
C 35482,1 Increase y-coordinate (pixels) by two...
C 35483,1 ...
C 35484,3 Store new y-coordinate (in pixels)
C 35487,1 Store BC (C = y-coordinate, in characters and before move, of Menu Hand Cursor's finger)
C 35488,3 Scroll a region of the Display File down two pixel rows without wrapping...
C 35491,3 ...
C 35494,3 Jump to #R35429 (update menu highlighting as appropriate then jump to menu input handling routine)
c 35497 Load A with (Zero-Based) Index of Selected Menu Item
D 35497 Used by the routine at #R35296. Output: A  Selected menu item index (zero-based)
C 35497,3 Wait for Fire Button / Key to be Released
C 35500,4 Load BC with absolute coordinates (characters) of start of row of text of interest in menu
C 35504,3 Load C with initial y-coordinate of top of Hand Cursor relative to current window (characters)...
C 35507,1 ...
C 35508,3 Load A with y-coordinate of top edge of current window (characters)...
C 35511,1 ...add C...
C 35512,1 ...and add 1 to get absolute y-coordinate of first item in menu
C 35513,1 Store y-coordinate in C
C 35514,1 Load A with y-coordinate of row of text of interest in menu
C 35515,1 Subtract absolute y-coordinate of first item in menu to give zero-based index of selected item
C 35516,1 Store AF (A = selected item index)
C 35517,3 Load A with current y-coordinate of hand cursor relative to its starting position (pixels)...
C 35520,3 ...and use to de-highlight selected menu item
C 35523,1 Restore AF (A = selected item index)
C 35524,1 Return
c 35525 Invert INK and PAPER bits to (De-)Highlight Currently Active Menu Item
D 35525 Used by the routines at #R35296, #R35397 and #R35497. Input:  A  y-coordinate of Menu Hand Cursor (pixels)
C 35525,1 Store AF (A = y-coordinate of Menu Hand Cursor)
C 35526,3 Load A with x-coordinate of left edge of current window to draw (characters)
C 35529,2 Add 2, as Menu Hand Cursor is two characters wide...
C 35531,1 ...and load into C (x-coordinate of start of row of text in menu)
C 35532,1 Restore AF (A = y-coordinate of Menu Hand Cursor)
C 35533,2 Add five (as the "finger" of the cursor naturally points five pixels below the cursor's actual position)
C 35535,3 Divide this new y-coordinate by eight to get y-coordinate in characters
C 35538,1 Load this y-coordinate into B
C 35539,3 Load initial y-coordinate of top of hand cursor relative to current window, into A
C 35542,1 Add this to y-coordinate of "finger"
C 35543,1 Load this into B, so that B now contains y-coordinate of "finger" relative to top of window (characters)
C 35544,3 Load y-coordinate of top edge of current window into A
C 35547,1 Add...
C 35548,1 ...then add one (for window frame at top) so we now have absolute y-coordinate of "finger"
C 35549,1 Load into B
C 35550,4 Store coordinates at #R23476
C 35554,3 Point HL at Attribute File address for character coordinates x=C, y=B
C 35557,3 Load B with x-coordinate of left edge of current window to draw (characters)...
C 35560,1 ...
C 35561,3 Load A with x-coordinate of right edge of current window...
C 35564,1 ...and subtract x-coordinate of left edge to get width
C 35565,1 Decrease width by one to take into account window frame width...
C 35566,1 ...and load into B
C 35567,1 Load attribute at current position in Attribute File into A
C 35568,2 Reset INK, BRIGHT and FLASH bits, preserving PAPER only
C 35570,1 Shift PAPER bits into INK bit slots...
C 35571,1 ...
C 35572,1 ...
C 35573,1 Store this value (new INK colour) in C
C 35574,1 Load attribute at current position in Attribute File into A
C 35575,1 Shift all bits right by three (i.e. INK bits now contain former PAPER colour)...
C 35576,1 ...
C 35577,1 ...
C 35578,2 Reset INK, BRIGHT and FLASH bits, preserving PAPER only (i.e. PAPER bits now contain former INK colour)
C 35580,1 Merge modified PAPER value back in, to give new attribute (i.e. swapped INK and PAPER colours)...
C 35581,1 ...and load into C
C 35582,1 Load attribute at current position in Attribute File into A
C 35583,2 Reset INK and PAPER bits, preserving BRIGHT and FLASH only...
C 35585,1 ...and merge in swapped INK and PAPER values
C 35586,1 Write this new attribute value back to the Attribute File
C 35587,1 Advance HL to next byte in Attribute File
C 35588,2 Decrease B (remaining number of characters to invert) and loop back to #R35586 for next character block
C 35590,1 Return
c 35591 Convert Numeric Value BC to ASCII String at Location HL
D 35591 Used by the routine at #R34697. Input:  BC  A numeric value HL  Points to location to hold a five-character string
C 35591,1 Store DE
C 35592,3 Point DE at table of powers of ten
C 35595,1 Store BC (value)
C 35596,1 Store HL (location to hold string)
C 35597,1 Store HL (location to hold string)
C 35598,1 Load BC (value) into HL...
C 35599,1 ...
C 35600,1 Swap DE (now value) and HL (now pointer to table of powers of ten)
C 35601,1 Read WORD at HL (power of ten) into BC...
C 35602,1 ...and advance HL by two bytes...
C 35603,1 ...
C 35604,1 ...
C 35605,1 Swap DE (now pointer to next power of ten) and HL (now value)
C 35606,2 Load A with 47 (ASCII code immediately prior to that for zero, "0")
C 35608,1 Increase A to next ASCII character
C 35609,1 (Re)Set carry flag
C 35610,2 Subtract (BC [power of ten] + carry flag) from HL (value)
C 35612,2 If carry flag was not set then loop back to #R35608
C 35614,1 Add power of ten back to HL
C 35615,1 Swap value on top of stack (now remaining value) with HL (now location to hold string)
C 35616,1 Store ASCII code in string and advance HL to next slot...
C 35617,1 ...
C 35618,1 Swap value on top of stack (pointer to current position in string) with HL (now remaining value)
C 35619,1 Decrease C to check if last power of ten (i.e. 1) has been reached...
C 35620,2 ...and if not, then loop back to #R35600 for next power of ten
C 35622,1 Restore HL
C 35623,1 Restore HL
C 35624,1 Restore BC
C 35625,1 Restore DE
C 35626,1 Return
c 35627 Clear Display File Below 7th Character Row (Play Area)
D 35627 Used by the routine at #R27762.
C 35627,3 Load HL with Display File address corresponding to (0, 7) (characters)...
C 35630,3 ...and move Bitmap Virtual Text Cursor here
C 35633,3 Load HL (width parameter) with 32
C 35636,1 Load A with 32 (SPACE character code)...
C 35637,3 ...and modify instruction at #R54234 with this operand
C 35640,3 Draw 32 SPACE characters across the screen to clear bottom character row of top third of Display File, then set HL to zero
C 35643,3 Clear bottom two thirds of Display File...
C 35646,3 ...
c 35649 Clear Display File
D 35649 When this routine is entered via #R35649 and #R35656, B is set to zero. Upon reaching the DJNZ instruction (end of inner loop) at #R35664, B is already zero, so the loop will execute 256 times, clearing one twelfth of the Display File (two bytes cleared per PUSH, 256 PUSHes per loop).
C 35649,3 Load zero (all bits reset) into HL
C 35652,3 Load B with 0 (repeat inner loop 256 times) and C with 12 (repeat outer loop 12 times)
C 35655,1 Disable interrupts
N 35656 This entry point is used by the routine at #R35627.
C 35656,4 Store stack pointer at #R35669
C 35660,3 Point stack pointer at start of attribute section of video memory
N 35663 This entry point is used by the routine at #R28716.
C 35663,1 Decrease current stack pointer position by two and load two zeroes into it
C 35664,2 Loop back for next iteration
C 35666,1 Decrease C...
C 35667,2 ...and repeat if C is still greater than zero, to clear the remaining eleven twelfths of the Display File
C 35669,3 Restore stack pointer to original value [Operand set by instructions at #R28717 and #R35656]
C 35672,1 Enable interrupts
C 35673,1 Return
c 35674 Flood Attribute File with Value in ATTR T System Variable
D 35674 Used by the routine at #R26884. Input:  A  (Input, entry at #R35677) Attribute to flood Attribute File with
C 35674,3 Load ATTR T system variable into A
N 35677 This entry point is used by the routine at #R31468.
C 35677,3 Load HL with start of attribute section of video memory
C 35680,3 Load DE with next byte up
C 35683,3 Load BC with length of data to copy (767 bytes = length of attribute area of video memory minus one)
C 35686,1 Load memory at HL with this attribute...
C 35687,2 ...and repeat 767 times
C 35689,1 Return
c 35690 Set Parameters for and Play Upward Scale Sound
D 35690 The value of A (set to zero at the start of this routine, or set to 1 before jumps from other routines into #R35695) is a delay constant that determines the speed at which the sound is played. Input:  A  (Entry at #R35695 only) Delay constant
C 35690,1 Set A to 0
C 35691,2 Set B to 13 (DEC C)
C 35693,1 Set HL to 0...
C 35694,1 ...
N 35695 This entry point is used by the routines at #R35723 and #R35731.
C 35695,3 Modify instruction at #R35708 with value of delay constant
C 35698,1 Load B into A
C 35699,3 Set instruction at #R35717
C 35702,3 Set instructions at #R35718 and #R35719
C 35705,3 Load A with current border colour
N 35708 The operand of the instruction at #R35708 represents the value of the delay constant. This is modified by the instruction at #R35695.
C 35708,2 Load C with delay constant
C 35710,2 Set border colour, and reset ear/speaker
C 35712,2 Invert ear/speaker bit of A
C 35714,1 Load C (delay constant) into B...
C 35715,2 ...and delay
N 35717 The instructions at #R35717 - #R35719 represent the manipulation of the delay constant between iterations of this routine. These instructions may decrease C by one, increase C by three or do nothing. These instructions are modified by the instructions at #R35699 and #R35702.
C 35717,1 Decrease / increase delay constant for next pass, increasing / decreasing pitch of tone respectively
C 35718,1 Do nothing, or increase delay constant (modified by instruction at 35702)
C 35719,1 Do nothing, or increase delay constant (modified by instruction at 35702)
C 35720,2 If delay constant is not zero, then loop back to continue playing tone
C 35722,1 Return
c 35723 Set Parameters for and Play Downward Scale Sound
D 35723 Used by the routines at #R26884, #R30001, #R32694 and #R33952.
C 35723,1 Set parameters...
C 35724,2 ...(INC C)...
C 35726,1 ...
C 35727,1 ...
C 35728,1 ...
C 35729,2 ...and play sound
c 35731 Set Parameters for and Play Short Downward Scale Sound
D 35731 Used by the routine at #R34122.
C 35731,2 Set parameters...
C 35733,2 ...(INC C)...
C 35735,1 ...
C 35736,1 ...
C 35737,2 ...and play sound
c 35739 Play Hiss-Type Sound
D 35739 Used by the routines at #R55115 and #R55138.
c 35782 Set Parameters (for "USS Pisces has Arrived" sound) and Jump to Playing Routine
D 35782 Used by the routine at #R31688.
C 35782,3 Load HL with bytecodes for instruction "ADD A,32"
C 35785,3 Load D with 0 and E with 255
C 35788,2 Jump to audio playing routine
c 35790 Set Parameters (for Cheat / Debug Routine Sound) and Play
D 35790 Used by the routine at #R55768.
C 35790,3 Load HL with bytecodes for instruction "ADD A,4"
C 35793,3 Load D with 0 and E with 0
N 35796 This entry point is used by the routine at #R35782.
C 35796,3 Load A with current border colour
C 35799,3 Set instruction at #R35811 to "ADD A,4" or "ADD A,32" depending upon value in HL
C 35802,2 Set current border colour and reset speaker state
C 35804,2 Flip "speaker" bit
C 35806,1 Copy E into B
C 35807,2 Delay for period determined by B
C 35809,1 Switch AF and AF'
C 35810,1 Copy E into A
C 35811,2 Change E (delay constant)...
C 35813,1 ...
C 35814,1 Switch AF and AF' again
C 35815,1 Decrease D (initially zero)...
C 35816,2 ...and repeat loop (256 times)
C 35818,1 Return
c 35819 Get Current Border Colour in A
D 35819 Used by the routines at #R35690, #R35739 and #R35790. Output: A  Current border colour (0 - 7)
C 35819,3 Get border & BASIC cursor area attribute
C 35822,1 Clear bits for 1, 2 and 4 to leave (border colour * 8) only...
C 35823,1 ...
C 35824,1 ...
C 35825,2 Ensure all other bits are cleared
C 35827,1 Return
c 35828 Display Acceleration / Deceleration Effect on USS Pisces Viewscreen
D 35828 Used by the routines at #R32065 and #R32124.
C 35828,3 Set x- and y-coordinates of top-left of region to fill to (7, 8)...
C 35831,3 ...
C 35834,3 Set x- and y-coordinates of bottom-right of region to fill to (24, 17)...
C 35837,3 ...
C 35840,2 Set attribute to use in fill to 71 (white INK, black PAPER, BRIGHT)...
C 35842,3 ...
C 35845,1 Wait for interrupt
C 35846,3 Fill the defined region of Attribute File (i.e. viewscreen contents) with attribute 71
C 35849,3 Draw Viewscreen "tunnel" rectangles
C 35852,1 Set attribute to use in fill to 0 (black INK, black PAPER)...
C 35853,3 ...
C 35856,2 Load B with 16 (repeat counter)
C 35858,1 Store BC (B = remaining number of attribute updates)
C 35859,3 Add eight to attribute value used to fill viewscreen contents (i.e. increment PAPER component)...
C 35862,2 ...
C 35864,2 Ensure that INK, BRIGHT and FLASH bits are all reset
C 35866,2 Set INK component to WHITE and set BRIGHT flag
C 35868,3 Store updated attribute value
C 35871,1 Wait for interrupt
C 35872,3 Fill the defined region of Attribute File (i.e. viewscreen contents) with current attribute value
C 35875,1 Restore BC (B = remaining number of attribute updates)
C 35876,2 Decrease remaining number of attribute updates and loop back to #R35858 if not zero
C 35878,3 Draw Viewscreen "tunnel" rectangles
C 35881,1 Return
c 35882 Draw Viewscreen "Tunnel" Rectangles
D 35882 Used by the routine at #R35828.
C 35882,3 Point HL at Table of Definitions (Coordinates) of Viewscreen "Tunnel" Rectangles
C 35885,1 Load A with x-coordinate of right edge of rectangle...
C 35886,1 ...and if this is zero...
C 35887,1 ...then return
C 35888,1 Load E with x-coordinate of right edge of rectangle
C 35889,1 Advance HL to y-coordinate of bottom edge of rectangle...
C 35890,1 ...and load into D
C 35891,1 Advance HL to x-coordinate of left edge of rectangle...
C 35892,1 ...and load into C
C 35893,1 Advance HL to y-coordinate of top edge of rectangle...
C 35894,1 ...and load into B
C 35895,1 Store HL (current position in rectangle definition data)
C 35896,3 Draw a Rectangle with Opposite Vertices at (C, B) and (E, D) (Pixels)
C 35899,1 Restore HL (current position in rectangle definition data)
C 35900,1 Advance HL to start of next rectangle's definition data
C 35901,2 Loop back to #R35885 to draw next rectangle
b 35903 Table of Definitions (Coordinates) of Viewscreen "Tunnel" Rectangles
B 35903,36,4
B 35939,1,1 End Marker
c 35940 Fill a Region of Attribute File with Specified Attribute (e.g. Background Colour and Colour of Text Within)
D 35940 Used by the routines at #R32158, #R32252, #R32602, #R34990 and #R35828.
C 35940,4 Load BC with the coordinates of the top-left corner of the area to fill
C 35944,3 Load HL with Attribute File address for coordinates (C, B)
N 35947 The operand of the instruction at #R35947 is an attribute value. This is modified by the instructions at #R32170, #R32411, #R32440, #R32613, #R35064, #R35842, #R35853 and #R35868.
C 35947,2 Load attribute to place into A
C 35949,1 Apply attribute data to Attribute File address in HL
C 35950,3 Load A with x-coordinate of right side of area to fill
C 35953,1 Check if left and right edges are at same x-coordinate (i.e. zero width)...
C 35954,3 ...and if so, skip to #R35970
C 35957,1 Increase C
C 35958,1 Copy C into A
C 35959,2 Ensure current x-coordinate doesn't exceed 31 (i.e. width of screen)
C 35961,1 Place back into C
C 35962,1 Get LSB of Attribute File address
C 35963,2 Decrease to nearest multiple of 32 (i.e. start of character row in Attribute File)
C 35965,1 Add x-offset (i.e. current x-coordinate, C)
C 35966,1 Update HL with x-offset
C 35967,3 Loop back to #R35947 to print next attribute block
C 35970,3 Get x-coordinate of left of area to fill
C 35973,1 Store in C
C 35974,3 Get y-coordinate of bottom of area to fill
C 35977,1 Compare with y-coordinate of top of area to fill
C 35978,1 If no difference between current y-coordinate and y-coordinate of bottom of area to fill then exit function and return
C 35979,1 Advance current y-coordinate down one unit
C 35980,1 Copy current y-coordinate into A...
C 35981,2 ...and ensure it doesn't exceed 24 (i.e. height of screen)...
C 35983,3 ...if it doesn't then skip ahead to #R35988...
C 35986,2 ...else set current y-coord to zero (top of screen)
C 35988,3 Load HL with Attribute File address for coordinates (C, B)
C 35991,3 Loop back to print next attribute block row
c 35994 Blank the Interior of an Area of the Display File (i.e. Set Bytes to Zero)
D 35994 Used by the routine at #R34990.
C 35994,2 Store IX
C 35996,4 Load B with y-coordinate of top, and C with x-coordinate of left of area to fill
C 36000,4 Load D with y-coordinate of bottom, and E with x-coordinate of right of area to fill
C 36004,1 Load HL with x-coordinate of left of area to fill...
C 36005,2 ...
C 36007,3 ...and store as operand of instruction at #R36053
C 36010,1 Load A with y-coordinate of bottom of area to fill...
C 36011,1 ...subtract B (y-coordinate of top of area to fill)...
C 36012,1 ...and add one to give number of rows to fill
C 36013,1 Multiply A by eight to get number of pixel rows to fill...
C 36014,1 ...
C 36015,1 ...
C 36016,3 ...and store as operand of instruction at #R36044
C 36019,1 Load A with y-coordinate of top of area to fill (characters)...
C 36020,1 ...and multiply by eight to get y-coordinate in pixels...
C 36021,1 ...
C 36022,1 ...
C 36023,1 Load y-coordinate (pixels) into HL...
C 36024,2 ...
C 36026,1 Double HL (as entries in table at #R26240 are two bytes wide)
C 36027,1 Store DE (coordinates of bottom right of area to fill)
C 36028,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 36031,1 Add HL as offset, in HL
C 36032,1 Restore DE (coordinates of bottom right of area to fill)
C 36033,1 Copy pointer to entry in table of Display File addresses for start of pixel row at top of area to fill from HL to IX...
C 36034,2 ...
C 36036,1 Load A with x-coordinate of right of area to fill (characters)...
C 36037,1 ...subtract C (x-coordinate of left of area to fill)...
C 36038,1 ...and load into HL...
C 36039,2 ...
C 36041,3 ...and store as operand of instruction at #R36060
N 36044 The operand of the instruction at #R36044 represents the number of pixel rows to fill. This is modified by the instruction at #R36016.
C 36044,2 Load B with number of pixel rows to fill
C 36046,1 Store BC (B = remaining number of pixel rows to fill)
C 36047,3 Load HL with Display File address of start of current pixel row...
C 36050,3 ...
N 36053 The operand of the instruction at #R36053 represents the x-coordinate of the area to fill (characters). This is modified by the instruction at #R36007.
C 36053,3 Load BC with x-coordinate of area to fill (characters)...
C 36056,1 ...and add to HL as offset
C 36057,1 Copy Display File address of left-most byte of top pixel row of area to fill from HL to DE...
C 36058,1 ...
C 36059,1 Advance DE to next address in Display File
N 36060 The operand of the instruction at #R36060 represents the width, minus 1, of the area to fill (characters). This is modified by the instruction at #R36041.
C 36060,3 Load BC with width, minus 1, of area to fill (characters)
C 36063,2 Set content of this address to zero...
C 36065,2 ...and repeat for remaining BC addresses, clearing entire pixel row within specified x-coordinates
C 36067,1 Restore BC (B = remaining number of pixel rows to fill)
C 36068,2 Advance IX by two bytes to point to start address of next pixel row down in Display File...
C 36070,2 ...
C 36072,2 Decrease B (remaining number of pixel rows to fill) and loop back to #R36046 if not zero
C 36074,2 Restore IX
C 36076,1 Return
c 36077 Draw all Objects in Magic Knight's Current Room
D 36077 Used by the routine at #R28101.
C 36077,4 Point IX at start of Objects' Current Positions Table
C 36081,2 Set current object to zero
C 36083,2 Set counter to 36 (as there are 37 objects, including "Nothing at All", but the last, the "10 MW Laser" never appears outside Klink's inventory)
C 36085,3 Load A with Magic Knight's current room
C 36088,3 If object and Magic Knight are in the same room...
C 36091,3 ...then set Terrain Interaction Data for character blocks spanned by that object and draw
C 36094,1 Increase C
C 36095,2 Advance to next object...
C 36097,2 ...
C 36099,2 ...
C 36101,2 ...and loop back to #R36085 for next object
C 36103,1 Return
c 36104 Set Terrain Interaction Data for Character Blocks Spanned by an Object and Draw the Object
D 36104 Used by the routine at #R30145. Input:  A  Index of object to draw (entry at #R36104 only) B  y-coordinate (entry at #R36104 only) C  x-coordinate (entry at #R36104 only) IX  Position data for an object (entry at #R36115 only)
C 36104,4 Store object's position data temporarily at 23296 - 23298...
C 36108,3 ...x-coordinate...
C 36111,3 ...y-coordinate...
C 36114,1 Load index of object of interest into C
N 36115 This entry point is used by the routine at #R36077.
C 36115,1 Store BC
C 36116,2 Store IX
C 36118,1 Load HL with eight times current object index...
C 36119,1 ...
C 36120,1 ...
C 36121,1 ...
C 36122,2 ...
C 36124,1 ...
C 36125,3 Point DE at last byte (graphic index) of "Nothing at All" properties
C 36128,1 Add eight times current object index as offset
C 36129,1 Load graphic index into A
C 36130,1 Store AF (A = graphic index)
C 36131,1 Move pointer back one byte to point at attribute of object...
C 36132,1 ...
C 36133,3 ...and copy into System Variable ATTR T
C 36136,1 Move pointer back one byte to point at object's Terrain Interaction Parameter...
C 36137,1 ...and store at #R23473...
C 36138,3 ...
C 36141,1 Move pointer back one byte to point at object's Attribute Flags...
C 36142,1 ...load into A...
C 36143,2 ...clear upper four bits...
C 36145,3 ...and store as operand of instruction at #R36183
C 36148,3 Load C with x-coordinate of current object
C 36151,3 Load B with y-coordinate of current object
C 36154,1 Decrease y-coordinate by one to point to object's top-left character block
C 36155,1 Restore AF (A = graphic index)
C 36156,2 Store IX (pointer to position data for object)
C 36158,1 Store BC (x- and y-coordinates of object's top-left character block)
C 36159,3 Draw object with lookup index A at character coordinates (C, B)
C 36162,1 Restore BC (x- and y-coordinates of object's top-left character block)
C 36163,1 Store BC (x- and y-coordinates of object's top-left character block)
C 36164,1 If object's y-coordinate is 4 (i.e. drawn in window at top while carrying mirror)...
C 36165,2 ...
C 36167,2 ...then skip ahead to #R36176
C 36169,3 If Player Attribute Update Flag is reset (Player Attribute Ignore mode)...
C 36172,1 ...
C 36173,3 ...then skip ahead to #R36211
C 36176,3 Load HL with Attribute File address for coordinates (C, B)
C 36179,3 Load E with value of system variable ATTR T...
C 36182,1 ...
N 36183 The operand of the instruction at #R36183 represents the object's Attribute Flags. This is modified by the instruction at #R36145.
C 36183,2 Load A with object's Attribute Flags
C 36185,2 If Paint Top-Left Flag is reset...
C 36187,2 ...then skip ahead to #R36190
C 36189,1 Paint top-left character block of object with object attribute
C 36190,1 Increase HL to move to top-right character block
C 36191,2 If Paint Top-Right Flag is reset...
C 36193,2 ...then skip ahead to #R36196
C 36195,1 Paint top-right character block of object with object attribute
C 36196,3 Advance HL by 31 bytes...
C 36199,1 ...to point to bottom-left character block of object
C 36200,2 If Paint Bottom-Left Flag is reset...
C 36202,2 ...then skip ahead to #R36205
C 36204,1 Paint bottom-left character block of object with object attribute
C 36205,1 Increase HL to move to bottom-right character block
C 36206,2 If Paint Bottom-Right Flag is reset...
C 36208,2 ...then skip ahead to #R36211
C 36210,1 Paint bottom-right character block of object with object attribute
C 36211,1 Store BC (x- and y-coordinates of object's top-left character block)
C 36212,3 Point HL at terrain interaction data for character coordinates x=C, y=B
C 36215,3 Load E with object's Terrain Interaction Parameter...
C 36218,1 ...
C 36219,3 Load A with object's Attribute Flags
C 36222,2 If Paint Top-Left Flag is reset...
C 36224,2 ...then skip ahead to #R36227
C 36226,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for top-left character block
C 36227,1 Increase HL to move to top-right character block
C 36228,2 If Paint Top-Right Flag is reset...
C 36230,2 ...then skip ahead to #R36233
C 36232,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for top-right character block
C 36233,3 Advance HL by 31 bytes...
C 36236,1 ...to point to bottom-left character block of object
C 36237,2 If Paint Bottom-Left Flag is reset...
C 36239,2 ...then skip ahead to #R36242
C 36241,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for bottom-left character block
C 36242,1 Increase HL to move to bottom-right character block
C 36243,2 If Paint Bottom-Right Flag is reset...
C 36245,2 ...then skip ahead to #R36248
C 36247,1 "Paint" object's Terrain Interaction Parameter into Terrain Interaction Data Table for bottom-right character block
C 36248,2 Restore IX (pointer to position data for object)
C 36250,2 Restore IX
C 36252,1 Restore BC
C 36253,1 Return
c 36254 Remove Object C from a Character's Inventory and Tidy Up Remaining Entries
D 36254 Used by the routines at #R29488, #R29619, #R29756, #R31537 and #R34265. Input:  B  Number of inventory slots to check C  Index of object to be removed HL  Pointer to a character's current inventory
C 36254,1 Load A with inventory object
C 36255,1 If this matches index in C...
C 36256,2 ...then skip ahead to #R36262
C 36258,1 Advance to next inventory slot...
C 36259,2 ...and loop back to #R36254 for next slot
C 36261,1 Return if object not found
C 36262,1 Advance to next inventory slot
C 36263,1 Load object at this slot into A
C 36264,1 Move back to previous slot again
C 36265,1 Place object from next slot into current one
C 36266,1 Advance to next slot again
C 36267,2 Loop back to #R36262 (i.e. repeat for all remaining slots)
C 36269,1 Move back to previous slot (i.e. final slot for this character)...
C 36270,1 ...and set to empty...
C 36271,1 ...
C 36272,1 Return
c 36273 Reset Star to Point of Origin and Generate a New Direction and Movement Data
D 36273 Used by the routines at #R36321 and #R36415. Input:  IX  Points to an entry in table of stars' movement data at #R24832
C 36273,3 Set new random seed and load LSB of this (random value) into A and E
C 36276,2 Discard bits five to seven
C 36278,2 Subtract 15
C 36280,1 Load result into B (random number -15 to 16) (y-component of star's direction)
C 36281,3 Set new random seed and load LSB of this (random value) into A and E
C 36284,2 Discard bits five to seven
C 36286,2 Subtract 15
C 36288,1 Load result into C (random number -15 to 16) (x-component of star's direction)
C 36289,2 Add to 128 (set bit 7) in C...
C 36291,1 ...
C 36292,1 ...(random number 113 to 144)
C 36293,1 Add 70 to B...
C 36294,2 ...
C 36296,1 ...(random number 55 to 86)
C 36297,2 If A is not 70 (i.e. y-direction component is not zero)...
C 36299,2 ...skip ahead to #R36306
C 36301,1 If A (loaded into C) is 128... [bug: this instruction only executed if A is 87, so how could it ever be 128 here? This should actually be LD A,C, preventing stars having zero for both direction components]
C 36302,2 ...
C 36304,2 ...then restart this routine to generate two new random numbers/seeds
C 36306,3 Load D (initial y-coordinate) with 70 and E (initial x-coordinate) with 128
C 36309,1 Store DE
C 36310,3 Set up star's movement data based upon starting position and direction
C 36313,1 Restore DE
C 36314,3 Set star's initial coordinates as (128, 70)...
C 36317,3 ...
C 36320,1 Return
c 36321 Advance Positions of Stars on Viewscreen by One Timestep
D 36321 Used by the routine at #R31688.
C 36321,2 Load A with y-coordinate of viewscreen centre (pixels)
C 36323,1 Divide by 8 to get y-coordinate in characters...
C 36324,1 ...
C 36325,1 ...
C 36326,2 Negate and add 21...
C 36328,2 ...to adjust for fact that PLOT origin is at bottom-left of screen
C 36330,1 Load y-coordinate (characters) into B
C 36331,2 Load A with x-coordinate of viewscreen centre (pixels)
C 36333,1 Divide by 8 to get x-coordinate in characters...
C 36334,1 ...
C 36335,1 ...
C 36336,1 Load x-coordinate (characters) into C
C 36337,3 Load HL with Attribute File address for coordinates (C, B) (characters)
C 36340,2 Set attribute at this location to zero (black INK, black PAPER) to hide stars' origin
C 36342,4 Point IX at start of table of stars' movement data
C 36346,2 Load B with 20 (as there are 20 stars to process)
C 36348,1 Store BC (B = remaining number of stars to process)
N 36349 The operand of the instruction at #R36349 represents a delay constant. This is modified by the instruction at #R31975.
C 36349,2 Load C with delay constant, outer loop
C 36351,2 Load B with 30 (delay constant, inner loop)
C 36353,2 Pause for 30 cycles
C 36355,1 Decrease C by one
C 36356,2 If C is not zero then loop back to #R36351
C 36358,3 Load B with star's current y-coordinate
C 36361,3 Load C with star's current x-coordinate
C 36364,3 PLOT the star to remove it from display (x=C, y=B)
C 36367,3 Load BC with new (y,x) coordinates of a star depending upon the signs and magnitudes of its direction
C 36370,1 If new y-coordinate is less than 33...
C 36371,2 ...
C 36373,2 ...then reset star to point of origin and generate a new direction and movement data and jump ahead to #R36406
C 36375,2 If new y-coordinate is 112 or more...
C 36377,2 ...then reset star to point of origin and generate a new direction and movement data and jump ahead to #R36406
C 36379,1 If new x-coordinate is less than 56...
C 36380,2 ...
C 36382,2 ...then reset star to point of origin and generate a new direction and movement data and jump ahead to #R36406
C 36384,2 If new x-coordinate is less than 198...
C 36386,2 ...then skip ahead to #R36393
C 36388,3 Reset star to point of origin and generate a new direction and movement data
C 36391,2 Advance to next star
C 36393,1 If new x-coordinate is zero...
C 36394,1 ...
C 36395,2 ...then reset star to point of origin and generate a new direction and movement data and jump ahead to #R36406
C 36397,3 Update star's coordinates in table at #R24832 with new position data...
C 36400,3 ...
C 36403,3 PLOT the star to add it to display (x=C, y=B)
C 36406,1 Restore BC (B = remaining number of stars to process)
C 36407,3 Advance IX by nine bytes to data for next star...
C 36410,2 ...
C 36412,2 Decrease remaining number of stars to process and loop back to #R36348
C 36414,1 Return
c 36415 Reset All Stars to Point of Origin and Generate New Velocities and Movement Data
D 36415 Used by the routine at #R31688.
C 36415,4 Point IX at start of table of stars' movement data
C 36419,2 Load B with 20 (as there are 20 stars to process)
C 36421,1 Store BC (B = remaining number of stars to process)
C 36422,3 Reset star to point of origin and generate a new direction and movement data
C 36425,3 Load DE with 9
C 36428,2 Advance IX by 9 bytes
C 36430,1 Restore BC
C 36431,2 Decrease B and repeat loop
C 36433,1 Return
c 36434 Set Up Star Movement Data Based Upon Starting Position and Direction
D 36434 Used by the routine at #R36273. Input:  B  y component of star direction added to initial y-coordinate (random number 55 to 86) C  x component of star direction added to initial x-coordinate (random number 113 to 144) D  Initial y-coordinate of star (70) (pixels) E  Initial x-coordinate of star (128) (pixels) IX  Points to an entry in table of stars' movement data at #R24832
C 36434,1 Load (DIR-Y + INIT-Y) into A
C 36435,1 Subtract initial y-coordinate to leave y-component of direction in A
C 36436,2 Set D to 1 (because star is moving up)
C 36438,2 If y-component is positive (i.e. star is moving up) then skip ahead to #R36444
C 36440,1 Negate negative y-direction component...
C 36441,1 ...
C 36442,2 Set D to -1 (because star is moving down)
C 36444,1 Load magnitude of y-component into B
C 36445,1 Load (DIR-X + INIT-X) into A
C 36446,1 Subtract initial x-coordinate to leave x-component of direction in A
C 36447,2 Set D to 1 (because star is moving 1 pixel right)
C 36449,2 If x-component is positive (i.e. star is moving right) then skip ahead to #R36455
C 36451,1 Negate negative x-direction component...
C 36452,1 ...
C 36453,2 Set E to -1 (because star is moving 1 pixel left)
C 36455,1 Load magnitude of x-component into C
C 36456,3 Store y-direction at byte 4
C 36459,3 Store x-direction at byte 3
C 36462,3 Store y-direction at byte 6
C 36465,3 Store x-direction at byte 5
C 36468,1 Load magnitude of x-component into A
C 36469,1 If magnitude of y-component is less than or equal to magnitude of x-component...
C 36470,2 ...then skip ahead to #R36481
C 36472,3 Store magnitude of x-component at byte 9
C 36475,4 Set byte 3 to zero
C 36479,2 Skip ahead to #R36491
C 36481,1 If magnitude of x-component is zero...
C 36482,1 ...then return
C 36483,3 Store magnitude of y-component at byte 9
C 36486,1 Load magnitude of x-component into B
C 36487,4 Store zero at byte 4
C 36491,3 Store magnitude of x-/y-component at byte 8
C 36494,1 Load magnitude of x-/y-component into A...
C 36495,3 ...and store at byte 7
C 36498,1 Return
c 36499 Move a Star Depending Upon the Signs and Magnitudes of its "Direction"
D 36499 Each time this routine runs, we add the smaller of the x- and y-magnitudes to the running "ratio" value in (IX+6). Input:  IX  Points to entry in Star Data table at #R24832 Output: B  New y-coordinate to plot C  New x-coordinate to plot
C 36499,3 Load current "ratio" value into A
C 36502,3 Add smaller of x- and y-component magnitudes
C 36505,2 If result is crosses the 255-0 boundary then skip ahead to #R36512
C 36507,3 If result is less than larger of x- and y-component magnitudes...
C 36510,2 ...then skip ahead to #R36523 (move star only on axis with larger magnitude)
C 36512,3 Subtract larger of x- and y-magnitudes
C 36515,3 Load y-step into H...
C 36518,3 ...and x-step into H (moving star on BOTH axes)
C 36521,2 Skip ahead to #R36529
C 36523,3 Load 0 / y-step into H
C 36526,3 Load 0 / x-step into H
C 36529,3 Update "ratio" value
C 36532,3 Add previous y-coordinate...
C 36535,1 ...to y-step...
C 36536,1 ...in B
C 36537,3 Add previous x-coordinate...
C 36540,1 ...to x-step...
C 36541,1 ...in C
C 36542,1 Return
c 36543 Draw a Line From (C, B) to (E, D)
D 36543 Used by the routines at #R28766 and #R36573. Input:  B  y-coordinate of start of line C  x-coordinate of start of line D  y-coordinate of end of line E x-coordinate of end of line
C 36543,4 Load contents of DE into system variable COORDS (start point of line)
C 36547,1 Subtract y-coordinate of start of line from y-coordinate of end of line...
C 36548,1 ...to get delta-y
C 36549,2 Set direction of vertical change to +1 (upward)
C 36551,2 If delta-y is positive (i.e. upward) then skip ahead to #R36557
C 36553,1 Multiply delta-y by -1 (downward) to get absolute magnitude...
C 36554,1 ...
C 36555,2 Set direction of vertical change to -1 (downward)
C 36557,1 Load B with magnitude of difference in y-coordinate between start and end of line
C 36558,1 Subtract x-coordinate of start of line from y-coordinate of end of line...
C 36559,1 ...to get delta-x
C 36560,2 Set direction of horizontal change to +1 (rightward)
C 36562,2 If delta-x is positive (i.e. rightward) then skip ahead to #R36568
C 36564,1 Multiply delta-x by -1 (leftward) to get absolute magnitude...
C 36565,1 ...
C 36566,2 Set direction of vertical change to -1 (leftward)
C 36568,1 Load C with magnitude of difference in x-coordinate between start and end of line
C 36569,3 Draw the line (ROM routine)
C 36572,1 Return
c 36573 Draw a Rectangle with Opposite Vertices at (C, B) and (E, D) (Pixels)
D 36573 Used by the routine at #R35882. Input:  B  y-coordinate of vertex 1 C x-coordinate of vertex 1 D  y-coordinate of vertex 2 E  x-coordinate of vertex 2
C 36573,1 Draw a line from (E, B) to (E, D)...
C 36574,1 ...
C 36575,1 ...
C 36576,3 ...
C 36579,1 ...
C 36580,1 ...
C 36581,1 Draw a line from (C, D) to (E, D)...
C 36582,1 ...
C 36583,1 ...
C 36584,3 ...
C 36587,1 ...
C 36588,1 ...
C 36589,1 Draw a line from (C, B) to (E, B)...
C 36590,1 ...
C 36591,1 ...
C 36592,3 ...
C 36595,1 ...
C 36596,1 ...
C 36597,1 Draw a line from (C, B) to (C, D)...
C 36598,3 ...
C 36601,1 Return
c 36602 Print word in Temporary Text Buffer to screen, wrapping text if necessary, then process next word
D 36602 This routine prints the string of characters stored in the Temporary Text Buffer. If the string is longer than the available space to the right of the Virtual Text Cursor, then the cursor is wrapped, moving down to the next character row and to the left edge of the current window. Input:  A  A word-ending character (e.g. a SPACE) from a character string IX  Points to current position in Temporary Text buffer at #R24005
C 36602,3 Store character in temporary text buffer
C 36605,1 Store HL (pointer to current position in text to print)
C 36606,3 Load HL with address of Bitmap Virtual Text Cursor
C 36609,1 Load x-coordinate of the cursor into B, decreasing by one...
C 36610,1 ...
C 36611,2 ...
C 36613,1 ...
C 36614,3 Load x-coordinate of right edge of current window into A
C 36617,1 Subtract B to get distance to right-edge of window in A
C 36618,1 Store AF (A = distance to right-edge of window)
C 36619,3 Point HL at start of Temporary Text Buffer
C 36622,2 Set C to zero
C 36624,1 Load character from current position in Temporary Text Buffer into A
C 36625,2 If character is 32 (SPACE)...
C 36627,2 ...then skip ahead to 36645 as end of word reached
C 36629,2 If character is 13 (Carriage return / line feed to start of next character row down)...
C 36631,2 ...then skip ahead to 36645 as end of word reached
C 36633,2 If character is 14 (Carriage return / line feed to start of next character row down within window)...
C 36635,2 ...then skip ahead to 36645 as end of word reached
C 36637,2 If character is 255 (End Marker)...
C 36639,2 ...then skip ahead to 36645 as end of word reached
C 36641,1 Increase C (number of characters to print)
C 36642,1 Advance to next character in Temporary Text Buffer
C 36643,2 Loop back to 36624
C 36645,1 Restore AF (A = distance to right-edge of window)
C 36646,1 Subtract C (number of characters)
C 36647,3 If result is negative (i.e. more characters than space) then move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next row of window
C 36650,3 Point HL at byte before start of Temporary Text Buffer
C 36653,1 Advance to next byte in Temporary Text Buffer
C 36654,1 Load character from current position in Temporary Text Buffer into A
C 36655,2 If character is 255 (End Marker)...
C 36657,2 ...then skip ahead to 36723 (reset Temporary Text Buffer and load next word into it)
C 36659,2 If character is 32 (SPACE)...
C 36661,2 ...then skip ahead to 36704
C 36663,2 If character is 13 (Carriage return / line feed to start of next character row down)...
C 36665,3 ...then skip ahead to 36691
C 36668,2 If character is 14 (Carriage return / line feed to start of next character row down within window)...
C 36670,3 ...then skip ahead to 36699
C 36673,2 If character is 9 (Move Virtual Text Cursor right one character)...
C 36675,3 ...then skip ahead to 36683
C 36678,3 Print the character
C 36681,2 Loop back to #R36653
N 36683 Move Virtual Text Cursor right one character (9)
C 36683,1 Store HL (current position in Temporary Text Buffer)
C 36684,3 Advance Bitmap Virtual Text Cursor right by one character
C 36687,1 Restore HL (current position in Temporary Text Buffer)
C 36688,3 Jump to 36653 for next character
N 36691 Carriage return / line feed to start of next character row down (13)
C 36691,3 Advance Bitmap Virtual Text Cursor to start of next character row
C 36694,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 36697,2 Skip ahead to 36723 (reset Temporary Text Buffer and load next word into it)
N 36699 Carriage return / line feed to start of next character row down within window (14)
C 36699,3 Move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next row of window
C 36702,2 Skip ahead to 36723 (reset Temporary Text Buffer and load next word into it)
N 36704 Print a SPACE (32)
C 36704,3 Load HL with address of Bitmap Virtual Text Cursor
C 36707,1 Strip out higher-order bits in L to leave only x-coordinate component...
C 36708,2 ...
C 36710,1 ...
C 36711,3 Load A with x-coordinate of right edge of current window plus one...
C 36714,1 ...
C 36715,1 If this is the same as the x-coordinate of the Bitmap Virtual Text Cursor...
C 36716,2 ...then  skip ahead to 36723 (reset Temporary Text Buffer and load next word into it, i.e. no need to print a SPACE)
C 36718,2 Print a SPACE character (chr. 32)...
C 36720,3 ...
N 36723 End Marker (255)
C 36723,1 Restore HL (pointer to current position in text to print)
C 36724,4 Point IX at start of Temporary Text Buffer
C 36728,3 Jump back to #R34784 to load next word into Temporary Text Buffer
c 36731 Move Virtual Text Cursors (Attribute and Bitmap) down to left edge of next row of window
D 36731 Used by the routine at #R36602.
C 36731,3 Advance Bitmap Virtual Text Cursor to start of next character row
C 36734,3 Load HL with address of Bitmap Virtual Text Cursor
C 36737,3 Load A with x-coordinate of left edge of window
C 36740,1 Add this to address in HL to move cursor to left edge of window...
C 36741,1 ...
C 36742,3 ...and place the result back at #R54109
C 36745,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 36748,1 Return
b 36749 List of Command Indices
D 36749 See trivia
B 36749,16,8
b 36765 Routine Start Addresses for Magic Knight's Commands (Main Menu)
W 36765,2,2 (00) - Process Command to Pick Up an Object
W 36767,2,2 (01) - Process Command to Drop an Object
W 36769,2,2 (02) - Process Command to Take an Object
W 36771,2,2 (03) - Process Command to Give an Object
W 36773,2,2 (04) - Process Command to Examine Yourself / A Character / An Object / USS Pisces
W 36775,2,2 (05) - Process Command to Command a Character
W 36777,2,2 (06) - Process Command to Launch Tyme Machine
W 36779,2,2 (07) - Unused [Set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop]
W 36781,2,2 (08) - Process Command to Read an Object
W 36783,2,2 (09) - Unused [Set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop]
W 36785,2,2 (10) - Process Command to Cast a Spell
W 36787,2,2 (11) - Unused [Set MK's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop]
W 36789,2,2 (12) - Process Command to Wear / Unwear an Object
W 36791,2,2 (13) - Process Command to Move Starship
W 36793,2,2 (14) - Process Command to Use Transporter
W 36795,2,2 (15) - Process Command to Communicate
b 36797 Magic Knight's Initial Data
D 36797 See also #R25156 for Magic Knight's Current Data
B 36797,1,1 x-coordinate (pixels)
B 36798,1,1 y-coordinate (pixels)
B 36799,1,1 Unused
B 36800,1,1 Index of current frame
B 36801,1,1 x-velocity (pixels) [walking / jumping sideways, usually 2 for right and 254 / -2 for left]
B 36802,1,1 y-velocity (pixels) [jumping]
B 36803,1,1 Attribute
B 36804,1,1 Unused
b 36805 Characters' Initial Inventories
D 36805 See also #R25164 for Characters' Current Inventories
B 36805,5,5 Magic Knight (carrying)
B 36810,5,5 Magic Knight (wearing)
B 36815,5,5 Gordon
B 36820,5,5 Sarab
B 36825,5,5 Klink
B 36830,5,5 S3 E3
B 36835,5,5 Hooper
B 36840,5,5 Murphy
B 36845,5,5 Sharon
B 36850,5,5 Forbin
B 36855,5,5 Derby IV
B 36860,5,5 Swiftfoot
B 36865,5,5 Julie 8
B 36870,5,5 Hectorr
b 36875 Characters' Initial Positions
D 36875 Twelve groups of three bytes, one group per character (excluding Magic Knight). The values are:
B 36875,3,3 Gordon
B 36878,3,3 Sarab
B 36881,3,3 Klink
B 36884,3,3 S3 E3
B 36887,3,3 Hooper
B 36890,3,3 Murphy
B 36893,3,3 Sharon
B 36896,3,3 Forbin
B 36899,3,3 Derby IV
B 36902,3,3 Swiftfoot
B 36905,3,3 Julie 8
B 36908,3,3 Hectorr
b 36911 Objects' Initial Positions
D 36911 Thirty-seven groups of three bytes, one group per object. The values are:
B 36911,3,3 (00) - Nothing at all
B 36914,3,3 (01) - Cloak of Invisibility
B 36917,3,3 (02) - Blank I.D. Card
B 36920,3,3 (03) - Valid I.D. Card
B 36923,3,3 (04) - Instant Film
B 36926,3,3 (05) - Photograph (of Magic Knight)
B 36929,3,3 (06) - Star Map
B 36932,3,3 (07) - Gadget X
B 36935,3,3 (08) - Camera
B 36938,3,3 (09) - Photograph (of inside of starship)
B 36941,3,3 (10) - Pot of Glue
B 36944,3,3 (11) - 5W Resistor
B 36947,3,3 (12) - Magic Talisman
B 36950,3,3 (13) - Golden Sundial of Alpha
B 36953,3,3 (14) - McTablet Food
B 36956,3,3 (15) - Broken Glass
B 36959,3,3 (16) - Quark Bomb
B 36962,3,3 (17) - Advert
B 36965,3,3 (18) - Part of a Sundial (1)
B 36968,3,3 (19) - Part of a Sundial (2)
B 36971,3,3 (20) - Part of a Sundial (3)
B 36974,3,3 (21) - Brass Ankh
B 36977,3,3 (22) - Pair of Boots
B 36980,3,3 (23) - Chocolate Heart
B 36983,3,3 (24) - Starfleet Manual
B 36986,3,3 (25) - Ancient Scroll
B 36989,3,3 (26) - Tower Fish
B 36992,3,3 (27) - Gas Mask
B 36995,3,3 (28) - Shield
B 36998,3,3 (29) - Bag of Runes
B 37001,3,3 (30) - Bag of Potatoes
B 37004,3,3 (31) - Pewter Tankard
B 37007,3,3 (32) - Axe
B 37010,3,3 (33) - Wrist Terminal
B 37013,3,3 (34) - Torch
B 37016,3,3 (35) - Mirror
B 37019,3,3 (36) - 10MW Laser
b 37022 Room Connectivity Data
D 37022 Two values per room:
B 37022,2,2 (00) - USS Pisces, 0 (The Recreation Room)
B 37024,2,2 (01) - USS Pisces, 1 (The Bridge)
B 37026,2,2 (02) - USS Pisces, 2 (The Transporter Room)
B 37028,2,2 (03) - USS Pisces, 3 (The Transputer Room)
B 37030,2,2 (04) - USS Pisces, 4 (Cargo Hold)
B 37032,2,2 (05) - USS Pisces, 5 (The Airlock)
B 37034,2,2 (06) - USS Pisces, 6 (The Life Boat)
B 37036,2,2 (07) - Retreat, 0 (Murphy's Moon)
B 37038,2,2 (08) - Retreat, 1
B 37040,2,2 (09) - Retreat, 2 (Barrier Room)
B 37042,2,2 (10) - Retreat, 3
B 37044,2,2 (11) - Starbase 1, 0 (The Transporter Room)
B 37046,2,2 (12) - Starbase 1, 1 (McTablet Takeaway Food)
B 37048,2,2 (13) - Starbase 1, 2
B 37050,2,2 (14) - Starbase 1, 3
B 37052,2,2 (15) - Starbase 1, 4 (Fuel and Cargo Area)
B 37054,2,2 (16) - Outpost, 0 (Ye Olde Transporter)
B 37056,2,2 (17) - Outpost, 1 (The Main Defence System)
B 37058,2,2 (18) - Outpost, 2
B 37060,2,2 (19) - Outpost, 3 (The Proof of Power)
B 37062,2,2 (20) - Outpost, 4 (The Tyme Guardians)
B 37064,2,2 (21) - Monopole, 0 (Hooper's Emergency Exit)
B 37066,2,2 (22) - Monopole, 1 (This Way to Hooper ==>>)
B 37068,2,2 (23) - Monopole, 2 (Here is Hooper)
B 37070,2,2 (24) - USS Pisces, 6A (The Control Column)
b 37072 Store for address of current position in Magic Knight's y-velocities sequence table at 37074
W 37072,2,2
b 37074 Magic Knight's y-Velocities Sequence for Jumping and Falling
D 37074 This is the sequence of y-velocity increments / decrements applied to Magic Knight's y-coordinate when he is jumping or falling. The data is zero-terminated.
B 37074,15,2*7,1
b 37089 Window Data
D 37089 Eight bytes per window. The meaning of the data is:
B 37089,8,8 (00) Main Menu (Game) Window / "Choose Communication" Window
B 37097,8,8 (01) Starship Summary Window (top of screen)
B 37105,8,8 (02)
B 37113,8,8 (03)
B 37121,8,8 (04) List of objects window (menu or info)
B 37129,8,8 (05) "KNIGHT-TYME A NEW GRAPHIC ADVENTURE..." window below Control Selection Window
B 37137,8,8 (06) Control Selection Window
B 37145,8,8 (07) "REDEFINE THE GAME" Window
B 37153,8,8 (08)
B 37161,8,8 (09)
B 37169,8,8 (10)
B 37177,8,8 (11) "EXECUTE / REJECT COMMAND" Window
B 37185,8,8 (12)
B 37193,8,8 (13)
B 37201,8,8 (14)
B 37209,8,8 (15)
B 37217,8,8 (16) "EXAMINE WHAT?" Window
B 37225,8,8 (17)
B 37233,8,8 (18) "EXAMINE YOURSELF" / "EXAMINE CHARACTER" Window
B 37241,8,8 (19) Frame around portrait of character on "EXAMINE CHARACTER" and "EXAMINE YOURSELF" windows
B 37249,8,8 (20) "EXAMINE OBJECT" / "EXAMINE USS PISCES" Window
B 37257,8,8 (21) Frame around object in "EXAMINE OBJECT" Window
B 37265,8,8 (22)
B 37273,8,8 (23) "WHICH COMMAND DO YOU WANT TO USE?" ("COMMAND [CHARACTER] TO...") Window
B 37281,8,8 (24) Game Over Window
B 37289,8,8 (25) "WHERE TO ?" Window / Speed Selection Window
B 37297,8,8 (26)
B 37305,8,8 (27)
B 37313,8,8 (28)
B 37321,8,8 (29)
b 37329 USS Pisces' Initial Stats
D 37329 See also USS Pisces' Current Stats at #R25012.
B 37329,1,1 Life Support (%)
B 37330,1,1 Star Drive Fuel
B 37331,1,1 Impulse Drive (%)
B 37332,1,1 Shields (%)
B 37333,1,1 Transputer (%)
B 37334,1,1 Unused
B 37335,1,1 Unused
B 37336,1,1 Unused
b 37337 Characters' Initial Stats
D 37337 Nine groups of eight bytes, one group per character (including Magic Knight). The values are capped at 100:
B 37337,8,8 Magic Knight
B 37345,8,8 Gordon
B 37353,8,8 Sarab
B 37361,8,8 Klink
B 37369,8,8 S3 E3
B 37377,8,8 Hooper
B 37385,8,8 Murphy
B 37393,8,8 Sharon
B 37401,8,8 Forbin
B 37409,8,8 Derby IV
B 37417,8,8 Swiftfoot
B 37425,8,8 Julie 8 (see trivia)
B 37433,8,8 Hectorr
b 37441 Table of Object Properties
D 37441 Thirty seven groups of eight bytes, one group per object (including "Nothing at All"). The values are:
B 37441,8,8 (00) - Nothing at all
B 37449,8,8 (01) - Cloak of Invisibility
B 37457,8,8 (02) - Blank I.D. Card
B 37465,8,8 (03) - Valid I.D. Card
B 37473,8,8 (04) - Instant Film
B 37481,8,8 (05) - Photograph (of Magic Knight)
B 37489,8,8 (06) - Star Map
B 37497,8,8 (07) - Gadget X
B 37505,8,8 (08) - Camera
B 37513,8,8 (09) - Photograph (of inside of starship)
B 37521,8,8 (10) - Pot of Glue
B 37529,8,8 (11) - 5W Resistor
B 37537,8,8 (12) - Magic Talisman
B 37545,8,8 (13) - Golden Sundial of Alpha
B 37553,8,8 (14) - McTablet Food
B 37561,8,8 (15) - Broken Glass
B 37569,8,8 (16) - Quark Bomb
B 37577,8,8 (17) - Advert
B 37585,8,8 (18) - Part of a Sundial (1)
B 37593,8,8 (19) - Part of a Sundial (2)
B 37601,8,8 (20) - Part of a Sundial (3)
B 37609,8,8 (21) - Brass Ankh
B 37617,8,8 (22) - Pair of Boots
B 37625,8,8 (23) - Chocolate Heart
B 37633,8,8 (24) - Starfleet Manual
B 37641,8,8 (25) - Ancient Scroll
B 37649,8,8 (26) - Tower Fish
B 37657,8,8 (27) - Gas Mask
B 37665,8,8 (28) - Shield
B 37673,8,8 (29) - Bag of Runes
B 37681,8,8 (30) - Bag of Potatoes
B 37689,8,8 (31) - Pewter Tankard
B 37697,8,8 (32) - Axe
B 37705,8,8 (33) - Wrist Terminal
B 37713,8,8 (34) - Torch
B 37721,8,8 (35) - Mirror
B 37729,8,8 (36) - 10MW Laser
b 37737 Initial Control Selection Menu Text
T 37737,3,B3 KEYBOARD KEMPSTON JOYSTICK CURSOR JOYSTICK SINCLAIR JOYSTICK 1 CHANGE GAME OPTIONS INSTRUCTIONS PLAY GAME
T 37740,55,B3*4,B3:7:B1:8:B1,B4:10:B1,B1:5:B1,B1
b 37795 Instructions Text
T 37795,23,12:B1:8:B1:1 AFTER RELEASING GIMBAL THE WIZARD IN SPELLBOUND YOU FIND YOURSELF ABOARD THE USS PISCES A 25TH CENTURY STARSHIP ON A PEACEFUL TRADE MISSION. YOU MUST FIND A WAY TO RETURN TO YOUR OWN TIME. ** GOOD LUCK MAGIC KNIGHT  **
T 37818,133,7:B1:1:B2:2:B1:2,B1:13:B1:1:B1:1,B1:13:B1:4:B1,23:B1,B1:7:B1:2:B1:4:B1:7,B2:6:B1:1:B1,14:B1:4,B1
T 37951,14,B1:1:B1:6:B1:2:B2 THE KEYS ARE :- N = LEFT     M = RIGHT A = JUMP/UP  Z = DOWN - = MENU (FIRE)
T 37965,2,B1
T 37967,15,3:B2:9:B1 THIS GAME FEATURES WINDIMATION+ STARRING YOU AS MAGIC KNIGHT WITH GORDON    SARAB KLINK     S3 E3 HOOPER    MURPHY SHARON    FORBIN DERBY IV  SWIFTFOOT JULIE 8   HECTORR (see trivia)
T 37982,81,B1:1:B1:1:B1,B1:2:B3:6:B1:1:B3,B2:1:B1:4:B2,B2:2:B2:4:B1,B2:1:B2:1:B2,1:B2:2:B2,1:B2:1:B2*2,1:B1:2:B2,1:B3,B1
b 38063 "REDEFINE THE GAME" Window Text
T 38063,14,B2:5:B1:2:B1:1:B2 REDEFINE THE GAME REDEFINE KEYBOARD PLAYER ATTRIBUTE IGNORE PLAYER ATTRIBUTE UPDATE SAVE THE GAME LOAD AN OLD GAME
T 38077,59,B2,B3:5:B1:2:B2,B3:2:B1:2:B1,B3:6:B1,B3:5:B1:1:B2,B1:5:B1:4:B1,B1
N 38136 "Redefine Keys Window" Text
T 38136,21,20:B1 ENTER NEW KEY CHOICE OR PRESS ENTER TO EXIT N = LEFT     M = RIGHT A = JUMP/UP  Z = DOWN - = MENU (FIRE)
T 38157,23,15:B1:4:B1,B1
T 38180,16,12:B2:2 SAVE & LOAD ARE NOT ALLOWED HERE. START A GAME THEN READ GADGET X
T 38196,37,13:B1,6:B2:1:B1:2,B1:9,B1
b 38233 Miscellaneous Texts
T 38233,4,4 AT
T 38237,1,B1
T 38238,11,B1:1:B3:1:B1:3:B1 KNIGHT-TYME A NEW GRAPHIC ADVENTURE BY DAVID JONES COPYRIGHT 1986 (see trivia)
T 38249,49,18:B1,B3:9:B2,B1:14,B1
T 38298,1,B1 STARSHIP USS PISCES LOCATION : {name of Current Starship Location}
T 38299,10,B2:1:B1:1:B2,B2,B1
T 38309,19,11:B1:4:B1:2 PRESS FIRE TO CONTINUE
T 38328,1,B1
T 38329,1,B1 EXECUTE COMMAND REJECT COMMAND
T 38330,21,B1:8:B2,B1:7:B1,B1
T 38351,1,B1 carriage return / line feed}{move text cursor right by two characters
T 38352,2,B1
T 38354,2,B2 COMMAND
T 38356,1,B1
T 38357,3,B3 KNIGHT-TYME
T 38360,1,B1
T 38361,4,B1:1:B2 name of Current Character} IS ASLEEP
T 38365,1,B1
T 38366,26,10:B1:14:B1 WELL DONE YOU HAVE MANAGED TO ESCAPE THROUGH THE BLACK HOLE. BUT UPON REACHING HOME YOU FIND THAT THE OFF-WHITE KNIGHT HAS BEEN CAUSING HAVOC BY MESSING AROUND WITH THE WEATHER. PRESS ANY KEY TO CONTINUE
T 38392,152,15:B1:12:B1,14:B1:6:B1:1,1:B1:7:B1:18,B1:9:B1:10,4:B1:13:B1:1,3:B1:2:B1,B1:14:B1:4:B1:2,B1
T 38544,1,B1 STRENGTH     1  2  3 4 5
T 38545,37,10:B1:15:B1,1:B7:1,B1
T 38582,1,B1 Required height of window = 2 (3 - 1)
T 38583,14,B1:1:B2:7:B1:1:B1 YOU ARE NOT CARRYING ANYTHING
T 38597,1,B1
T 38598,1,B1 Height = 3
T 38599,6,B1:1:B2:2 YOU ARE NOT WEARING ANYTHING
T 38605,5,B2:1:B1,B1
T 38610,17,B2:7:B1:6:B1 WHO DO YOU WANT TO
T 38627,1,B1
T 38628,1,B1 Height = 2
T 38629,17,B1:3:B2:5:B1:3:B2 THERE IS NOBODY IN THIS ROOM
T 38646,1,B1
T 38647,10,B3:6:B1 TAKE AN OBJECT FROM ?
T 38657,1,B1
T 38658,6,B4:1:B1 GIVE AN OBJECT TO ?
T 38664,1,B1
T 38665,3,B1:1:B1 EXAMINE ?
T 38668,1,B1
T 38669,4,B1:2:B1 COMMAND ?
T 38673,1,B1
T 38674,10,9:B1 FORTIFY ?
T 38684,1,B1
b 38685 Main In-Game Menu Strings
D 38685 Permanent entries:
T 38685,18,B3:14:B1 COMMANDS AVAILABLE :- PICK UP AN OBJECT DROP AN OBJECT TAKE AN OBJECT GIVE AN OBJECT EXAMINE
T 38703,32,B3:8:B3,B5*3,B2,B1
N 38735 Conditional entries:
T 38735,15,B3:1:B1:9:B1 COMMAND A CHARACTER
T 38750,11,B2:7:B2 LAUNCH TYME MACHINE
T 38761,1,B1 Unused
T 38762,6,B3:1:B2 READ SOMETHING
T 38768,1,B1 Unused
T 38769,7,B3:1:B3 CAST A SPELL
T 38776,1,B1 Unused
T 38777,10,B3:3:B1:1:B2 WEAR/UNWEAR OBJECT
T 38787,9,B2:5:B2 MOVE STARSHIP
T 38796,8,B2:4:B2 USE TRANSPORTER
T 38804,5,B3:1:B1 COMMUNICATE
b 38809 Text Relating to "Pick Up" Command
T 38809,14,B2:1:B2:7:B2 YOU ARE NOW CARRYING
T 38823,1,B1
T 38824,11,B1:8:B1:1 PICK UP THE
T 38835,1,B1
T 38836,1,B1 Height = 3
T 38837,12,B1:3:B3:3:B2 THERE IS NOTHING IN THIS ROOM
T 38849,1,B1
T 38850,1,B1 Height = 3
T 38851,16,B1:3:B2:6:B1:3 THERE IS NOTHING NEAR ENOUGH
T 38867,1,B1
T 38868,1,B1 Height = 3
T 38869,12,B1:3:B1:2:B1:4 YOUR HANDS ARE FULL
T 38881,1,B1
T 38882,1,B1 Height = 4
T 38883,20,B1:1:B1:1:B1:14:B1 THE {name of Current Object} IS TOO HEAVY FOR YOU
T 38903,1,B1
b 38904 Text Relating to "Drop" Command
T 38904,11,B2:6:B1:1:B1 DROP WHICH OBJECT ?
T 38915,1,B1
T 38916,4,B3:1 DROP THE
T 38920,1,B1
T 38921,1,B1 Height = 3
T 38922,8,B1:1:B1:1:B2:1:B1 YOU CANNOT DROP THE {name of Current Object}
T 38930,1,B1
T 38931,1,B1 Height = 8
T 38932,5,B1:1:B1:1:B1 YOU CANNOT DROP THE {name of Current Object} HERE BECAUSE IT WOULD INTERFERE WITH THE TRANSPORTERS FLUX GENERATOR. (bug)
T 38937,61,B1:1:B1:6,17,B1:13:B1:1,B1:7,10,B1
b 38998 Text Relating to "Take" Command
T 38998,11,B2:6:B1:1:B1 TAKE WHICH OBJECT ?
T 39009,1,B1
T 39010,4,B3:1 TAKE THE
T 39014,1,B1
T 39015,7,B2:5 TAKE SOMETHING FROM
T 39022,1,B1
T 39023,6,6 FROM
T 39029,1,B1
T 39030,1,B1 Height = 3
T 39031,14,B1:4:B1:2:B1:5 name of Current Character}'S HANDS ARE EMPTY
T 39045,1,B1
T 39046,1,B1 Height = 4
T 39047,17,B1:7:B1:5:B1:1:B1 name of Current Character} WANTS TO KEEP THE {name of Current Object
T 39064,1,B1
b 39065 Text Relating to "Give" Command
T 39065,11,B2:6:B1:1:B1 GIVE WHICH OBJECT ?
T 39076,1,B1
T 39077,4,B3:1 GIVE THE
T 39081,1,B1
T 39082,2,1:B1 TO
T 39084,1,B1
T 39085,1,B1 Height = 3
T 39086,13,B1:4:B1:2:B1:4 name of Current Character}'S HANDS ARE FULL
T 39099,1,B1
T 39100,1,B1 Height = 3
T 39101,18,B1:1:B2:10:B1:3 name of Current Character} IS NOT STRONG ENOUGH
T 39119,1,B1
T 39120,1,B1 Height = 4
T 39121,18,B1:6:B1:7:B1:1:B1 name of Current Character} DOES NOT WANT THE {name of Current Object
T 39139,1,B1
b 39140 Text Relating to "Examine" Command
T 39140,11,B2:6:B1:1:B1 EXAMINE WHICH OBJECT ?
T 39151,1,B1
T 39152,1,B1 EXAMINE
T 39153,1,B1
T 39154,8,B1:6:B1 EXAMINE WHAT ? OBJECT CHARACTER YOURSELF USS PISCES
T 39162,25,B3,B1:9:B1,B2:5:B1,B2,B1
N 39187 Character's Stats Text
T 39187,3,B3 EXAMINE {name of Current Character} STRENGTH 99 HAPPINESS 99 STAMINA 99 CHARISMA 99 MAGIC LVL.  99
T 39190,93,8:B3:4:B3,4:B1:5:B2:4:B3,4:B1:1:B1:1:B2:4:B3,8:B3:4:B3,11:B2:4:B3,B1
T 39283,4,B4 EXAMINE
T 39287,1,B1
N 39288 Object's Stats Text
T 39288,21,B3:6:B1:1:B2:5:B3 WEIGHT 99 BLOW . READ . WEAR .
T 39309,43,B2:4:B2:1:B2:2:B3,B3:1:B4:2:B3,B5:1:B2:2:B3,B1
T 39352,6,B1:5 YOURSELF
T 39358,1,B1
N 39359 USS Pisces Stats Text
T 39359,12,B1:2:B6:2:B1 USS PISCES LIFE SUPPORT % STAR DRIVE FUEL IMPULSE DRIVE % SHIELDS % TRANSPUTER %
T 39371,153,B8:1:B6:1:B1*2,B10:2:B1,B4:12:B1:2:B2:4:B1,B2:11:B1:2:B2:4:B1,B2:13:B1:1:B2:4:B1,B2:7:B3:1:B2:4:B1,B5:1:B2:4,B1
T 39524,1,B1 USS PISCES
T 39525,1,B1
T 39526,1,B1 Height = 6
T 39527,5,B1:1:B1:1:B1 YOU CANNOT EXAMINE THE USS PISCES IF YOU ARE NOT ABOARD THE MAIN SECTION OF THE SHIP
T 39532,42,B1:1:B1:4,B1:1:B2:9,B1:3:B1:9,B2:5,B1
b 39574 Text Relating to "Command" Command
T 39574,2,B1:1 COMMAND
T 39576,1,B1
T 39577,26,6:B1:4:B1:6:B1:5:B2 WHICH COMMAND DO YOU WANT TO USE ? GO TO SLEEP WAKE UP HELP (see trivia)
T 39603,23,B1:3:B1:5:B1,B1:7:B1,B2,B1
T 39626,9,3:B1:5 GO TO SLEEP
T 39635,1,B1
T 39636,7,7 WAKE UP
T 39643,1,B1
T 39644,1,B1 HELP
T 39645,1,B1
T 39646,1,B1 Height = 4
T 39647,26,B1:7:B1:6:B1:3:B1:6 name of Current Character} HEARS A VOICE AND IGNORES IT
T 39673,1,B1
T 39674,1,B1 Height = 4
T 39675,32,B1:6:B1:12:B1:11 name of Current Character} DOES NOT RECOGNISE YOUR AUTHORITY
T 39707,1,B1
T 39708,1,B1 Height = 5
T 39709,31,B1:6:B1:7:B1:9:B1:4:B1 name of Current Character} DOES NOT LIKE STARFLEET SO HE IGNORES YOU
T 39740,1,B1
T 39741,1,B1 Height = 7
T 39742,9,B1:7:B1 name of Current Character} HEARS A MUFFLED VOICE BUT CANNOT UNDERSTAND WHAT YOU ARE TRYING TO SAY
T 39751,47,14,4:B1:1,7:B1:6,B1:1:B1:3:B1:1,B1:3,B1
T 39798,1,B1 Height = 4
T 39799,27,B1:6:B1:7:B1:3:B1:6:B1 name of Current Character} DOES NOT WANT TO BE COMMANDED BY YOU
T 39826,1,B1
T 39827,1,B1 Height = 3
T 39828,9,B1:1:B1:2:B1:2:B1 name of Current Character} IS ALREADY ASLEEP
T 39837,1,B1
T 39838,1,B1 Height = 4
T 39839,21,B1:1:B1:12:B1:5 name of Current Character} IS TOO WAKEFUL TO SLEEP
T 39860,1,B1
T 39861,1,B1 Height = 3
T 39862,14,B1:1:B1:5:B1:5 name of Current Character} HAS GONE TO SLEEP
T 39876,1,B1
T 39877,1,B1 Height = 3
T 39878,13,B1:1:B1:2:B1:7 name of Current Character} IS ALREADY AWAKE
T 39891,1,B1
T 39892,1,B1 Height = 3
T 39893,21,B1:1:B1:10:B1:7 name of Current Character} IS TOO TIRED TO WAKE UP
T 39914,1,B1
T 39915,1,B1 Height = 3
T 39916,11,B1:1:B1:8 name of Current Character} HAS WOKEN UP
T 39927,1,B1
T 39928,1,B1 Height = 4
T 39929,17,B1:1:B1:10:B2:1:B1 name of Current Character} IS TOO TIRED TO HELP YOU
T 39946,1,B1
T 39947,1,B1 Height = 6
T 39948,19,B1:1:B1:14:B1:1 name of Current Character} SAYS 'I WOULD LIKE YOU TO FETCH MY TANKARD FOR ME MAGIC KNIGHT'
T 39967,28,B1:24:B1:1,B1
T 39995,1,B1 Height = 8
T 39996,23,B1:1:B1:18:B1:1 name of Current Character} SAYS 'I HAVE RE-ROUTED THE TRANSPORTER CONTROL SYSTEM AS DIRECTED BY THE STARBASE OVERHAUL TRANSPUTER'
T 40019,48,B1:31:B1:1,B1:10:B1:1,B1
T 40067,1,B1 Height = 11
T 40068,3,B1:1:B1 name of Current Character} SAYS 'GORDON WILL NEED THE STARMAP BEFORE WE CAN MOVE THE STARSHIP ANYWHERE. YOU WILL NEED TO GET THE ADVERT BEFORE YOU CAN GET THE STARMAP.'
T 40071,109,1:B1:11,B1:9,7:B1:4,5:B1:1:B1:1,10:B1:1,10:B1:4,B1:15,B1:9:B1:1,9,B1
T 40180,1,B1 Height = 13
T 40181,9,B1:1:B1:6 name of Current Character} SAYS 'SOME REPAIRS ARE NEEDED. WE WILL NEED TO REACH A STARBASE BEFORE THEY CAN BE DONE. THE BROKEN EQUIPMENT WILL NOT CAUSE PROBLEMS WITH MOVING THE USS PISCES.'
T 40190,117,8:B1,8:B1:5,5:B1:6:B1,B1:8,B1:3:B1:9,B1:8,15,B1:8,14,3:B1:1:B1:1,B1:2,B1
T 40307,1,B1 Height = 3
T 40308,17,B1:1:B1:6:B1:7 name of Current Character} HAS TAKEN YOUR PHOTO
T 40325,1,B1
T 40326,1,B1 Height = 8
T 40327,6,B1:1:B1:3 name of Current Character} SAYS 'I REMEMBER WHEN YOU COULD BUY A LOAF OF BREAD FOR 5000 SOLAR CREDITS AND STILL HAVE CHANGE!'
T 40333,81,14:B1:1,10:B1:5,B1:1:B1:10,14:B1:1,11,8,B1
T 40414,1,B1 Height = 9
T 40415,6,B1:1:B1:1:B1:1 name of Current Character} SAYS 'THE GOLDEN SUNDIAL OF ALPHA. WAS SPLIT INTO THREE PARTS AND THEY WILL NEED A GREAT POWER TO JOIN THEM AGAIN' (bug)
T 40421,68,B1:1,10,B2:12,B1:1:B1:7,5:B1:6,6:B1:2:B1:1,B1:5:B1:1,B1
T 40489,1,B1 Height = 8
T 40490,3,B1:1:B1 name of Current Character} SAYS 'THANKS FOR THE HEART BIG BOY! THE GAS MASK WILL BE HANDY ON HOOPERS ASTEROID.' (bug)
T 40493,69,12:B1:1,15,B1:15,4:B1:5,B1:2,10,B1
T 40562,1,B1 Height = 5
T 40563,3,B1:1:B1 name of Current Character} SAYS 'SHARONN WANTS TO KNOW THAT YOU CARE FOR HER.' (bug)
T 40566,34,1:B1:8:B1,1:B1:7:B1:1,1:B1:9,B1
T 40600,1,B1 Height = 5
T 40601,7,B1:1:B1:4 name of Current Character} SAYS 'MY BOOTS COULD BE USEFUL IF YOU USE THEM WELL.'
T 40608,43,15,10:B1:5,11,B1
T 40651,1,B1 Height = 9
T 40652,9,B1:1:B1:6 name of Current Character} SAYS 'HARK WHAT LIGHT THRU YONDER PORTHOLE BREAKS. TIS THE GALACTIC EAST AND ROMIE 0 IS THE LOCAL STAR.'
T 40661,86,16*2,12:B1:1,14:B1:1,8:B2:1,12,B1
T 40747,1,B1 Height = 8
T 40748,3,B1:1:B1 name of Current Character} SAYS 'FORSOOTH THERE IS STICKY STUFF NEARBY. I WOULD TAKE IT FROM YOU MAGIC KNIGHT IF YOU WISH'
T 40751,68,10:B1:3,B1:13,16,B1:8:B1:1,B1:4,B1:6,B1
T 40819,1,B1 Height = 12
T 40820,9,B1:1:B1:6 name of Current Character} SAYS 'COME ON THEN! COME ON THEN!... {name of Current Character}! WHO'S A PRETTY BOY THEN? LUMPS OF NINETEEN. N.N.N...NINETEEN. I'M NOT REALLY SURE WHATS GOING ON!' (bug)
T 40829,114,3:B1:11,B1:6:B1:2,6:B1:7,4:B1:9,B1:1:B1:7,9:B1:7,4:B1:9,13:B1:1,4,B1
b 40943 Text Relating to "Read" Command
T 40943,12,B2:7:B1:1:B1 READ WHICH OBJECT ?
T 40955,1,B1
T 40956,5,B2:1:B1:1 READ THE
T 40961,1,B1
T 40962,1,B1 Height = 4
T 40963,7,B1:3:B2:1 THERE IS NO WRITING FOR ME TO READ
T 40970,16,4:B1:8,B2,B1
b 40986 List of Read-Texts of Readable Objects 00: Cloak of Invisibility (note: text is not in yellow INK here - perhaps because it isn't actually being read!)
T 40986,1,B1 Height = 4
T 40987,3,B3 name of Current Object} I SEE NO CLOAK
T 40990,14,6:B1:6,B1
N 41004 01: Blank I.D. Card
T 41004,1,B1 Height = 7
T 41005,3,B3 name of Current Object} STARFLEET COMMANDER ................... AUTHORIZED BY ...................
T 41008,10,B1:1:B1:2:B1,B1
N 41018 02: Valid I.D. Card
T 41018,1,B1 Height = 8
T 41019,3,B3 name of Current Object} STARFLEET COMMANDER ** MAGIC KNIGHT ** AUTHORIZED BY KING JONES OF THE GALACTIC FEDERATION
T 41022,34,B1:1:B1:2:B1,3:B1:3:B1,B1,1:B1:1:B1:1:B2:1,9:B1,B1
N 41056 03: Instant Film
T 41056,1,B1 Height = 4 (bug)
T 41057,3,B3 name of Current Object} 100 ASA. USE BEFORE APRIL 2485 AD
T 41060,34,20,13,B1
N 41094 04: Photograph (of Magic Knight)
T 41094,1,B1 Height = 7
T 41095,3,B3 name of Current Object} NO WRITING HERE. BUT THERE IS A VERY CUTE PICTURE OF A SHORT GUY IN ARMOUR
T 41098,63,B1:5:B1:11,B1:3:B2:10,8:B2:10,B1:7,B1
N 41161 05: Chocolate Heart
T 41161,1,B1 Height = 5
T 41162,3,B3 name of Current Object} THE LABEL READS 'ICH LIEBE DICH'
T 41165,28,B1:7:B1:7,11,B1
N 41193 06: Photograph (of inside of starship)
T 41193,1,B1 Height = 7
T 41194,3,B3 name of Current Object} NO WRITING HERE, IN FACT ALL THERE IS, IS A PHOTO OF THE INSIDE OF THE STARSHIP
T 41197,53,B1:5:B1:7:B1:6,4:B1:7:B2:3:B1,B2:1:B1:5:B2:1,B1
N 41250 07: Pot of Glue
T 41250,1,B1 Height = 6
T 41251,3,B3 name of Current Object} STICKY STUFF. FIND IT AND YOU WILL HAVE TO KEEP IT
T 41254,44,15:B1:5,B1:1:B1:11:B1,7,B1
N 41298 08: 5W Resistor
T 41298,1,B1 Height = 5
T 41299,3,B3 name of Current Object} COLOUR CODE READS 1.5K OHM
T 41302,24,12:B1:7,3,B1
N 41326 09: McTablet Food
T 41326,1,B1 Height = 10
T 41327,3,B3 name of Current Object} THE LABEL READS 'MCTABLET CONDENSED MEALS A COMPLETE NUTRIENT COURSE IN ONE HANDY TABLET' THERE IS A PICTURE OF A CLOWN HERE AS WELL !
T 41330,111,B1:7:B1:2,1:B1:11,6:B1:9,16:B1:5,1:B1:10:B1:3:B2,8:B2:11,9,B1
N 41441 10: Golden Sundial of Alpha
T 41441,1,B1 Height = 7
T 41442,3,B3 name of Current Object} THE {name of Current Object} HAS A MESSAGE INSCRIBED ON THE BASE. IT SAYS 'GOLDEN SUNDIAL OF ALPHA..' (bug)
T 41445,46,B1:1:B1:1,4:B1:8:B1:11:B1:1,9:B1:1,B1:2,B1
N 41491 11: Pair of Boots
T 41491,1,B1 Height = 5
T 41492,3,B3 name of Current Object} SIZE 10, CUSHION SOLE SPACE BOOT
T 41495,33,22,10,B1
N 41528 12: Advert
T 41528,1,B1 Height = 9
T 41529,3,B3 name of Current Object} GAME CONCEPT AND PROGRAM BY DAVID JONES. OTHER GAMES FROM MASTERTRONIC STARRING MAGIC KNIGHT ARE :-FINDERS KEEPERS AND SPELLBOUND
T 41532,85,B2,B1:9:B1:9,3,B3,6:B1:2,B3,1:B1:2,B1:7:B1:1,5:B1:1:B1:1,B1:3:B1:13,B1:1:B1,B1
N 41617 13: Wrist Terminal
T 41617,1,B1 Height = 7
T 41618,3,B3 name of Current Object} THERE IS A MESSAGE HERE. IT SAYS 'HOOPERS ASTEROID TRANSPORTER COORDINATES ARE X1Y8Z4.' (bug)
T 41621,50,B1:3:B2:14,3:B1:1:B1:2,9:B1:1,B2:8,B1
N 41671 14: Quark Bomb
T 41671,1,B1 Height = 5
T 41672,3,B3 name of Current Object} 250 GIGATON {name of Current Object}. BOMB ARMED
T 41675,30,12:B1:1:B1,B1:12:B1,B1
b 41705 Text Relating to "Cast a Spell" Command
T 41705,5,B2:1:B2 CAST A SPELL
T 41710,1,B1
T 41711,1,B1 Height = 9
T 41712,18,6:B1:4:B1:6 WHICH SPELL DO YOU WANT TO CAST ? REMOVE BARRIERS CONSULT ORACLE FORTIFY CHARACTER FORTIFY YOURSELF LIGHTNING BOLT
T 41730,20,B2:2:B1,B3*4,B2,B1
T 41750,1,B1 Height = 4
T 41751,11,B1:1:B1:1:B1:6 YOU CANNOT CAST THAT SPELL NOW. MAYBE YOU NEED MORE SPELL POWER
T 41762,32,B1:1:B1:9:B1:1,10:B1:6,B1
T 41794,4,B1:1:B2 CAST REMOVE BARRIERS
T 41798,4,B1:1:B2 CAST CONSULT ORACLE
T 41802,4,B1:1:B2 CAST FORTIFY CHARACTER
T 41806,4,B1:1:B2 CAST FORTIFY YOURSELF
T 41810,4,B1:1:B2 CAST LIGHTNING BOLT
T 41814,16,B1:9:B1:4:B1 CAST FORTIFY SPELL ON
b 41830 Text Relating to "WEAR/UNWEAR OBJECT" Command
T 41830,1,B1 WEAR UNWEAR
T 41831,8,B3,B1:2:B1,B1
T 41839,6,2:B1:1:B1:1 UNWEAR THE
T 41845,1,B1
T 41846,13,2:B1:7:B1:1:B1 UNWEAR WHICH OBJECT ?
T 41859,1,B1
T 41860,1,B1 Height = 3
T 41861,14,B1:1:B3:9 YOU ARE WEARING TOO MUCH
T 41875,1,B1
T 41876,1,B1 Height = 3
T 41877,10,B1:1:B1:1:B1:5 YOU CANNOT WEAR THAT
T 41887,1,B1
b 41888 Text Relating to "MOVE STARSHIP" Command
T 41888,10,5:B1:1:B1:1:B1 MOVE THE STARSHIP TO
T 41898,1,B1
T 41899,9,6:B1:1:B1 WHERE TO ?
T 41908,1,B1
T 41909,1,B1 Height = 4
T 41910,5,B1:1:B1:1:B1 THE STARSHIP HAS ARRIVED AT {name of Current Starship Location}
T 41915,13,11:B1,B1
N 41928 "MOVE STARSHIP" Speed Selection Menu Heading Text
T 41928,14,5:B1:7:B1 WHAT TYME DISTORT SPEED ?
T 41942,1,B1
N 41943 "MOVE STARSHIP" Speed Selection Menu Options Text
T 41943,4,B2:1:B1 TYME DISTORT 1 TYME DISTORT 2 TYME DISTORT 3 TYME DISTORT 4 TYME DISTORT 5 TYME DISTORT 6 TYME DISTORT 7 TYME DISTORT 8 TYME DISTORT 9 TYME DISTORT 10
T 41947,37,B2:1:B1*8,B2:2,B1
T 41984,3,B1:1:B1 TYME DISTORT 1
T 41987,3,B1:1:B1 TYME DISTORT 2
T 41990,3,B1:1:B1 TYME DISTORT 3
T 41993,3,B1:1:B1 TYME DISTORT 4
T 41996,3,B1:1:B1 TYME DISTORT 5
T 41999,3,B1:1:B1 TYME DISTORT 6
T 42002,3,B1:1:B1 TYME DISTORT 7
T 42005,3,B1:1:B1 TYME DISTORT 8
T 42008,3,B1:1:B1 TYME DISTORT 9
T 42011,4,B1:2:B1 TYME DISTORT 10
b 42015 Text Relating to "USE TRANSPORTER" Command
T 42015,16,5:B1:10 SEND TRANSPORTER CONTENTS
T 42031,1,B1
T 42032,10,6:B1:1:B2 ENTER TRANSPORTER COORDINATES 8 8 8 9 9 9 X0Y0Z0 1 1 1 2 2 2 MOVE THE REELS UP OR DOWN USING THE JOYSTICK AND PRESS FIRE TO CHOOSE.
T 42042,103,B4:5:B1*2,B1:8:B1,B2:5:B1,B4:5:B1,B2:5:B1:10,10:B1:1:B1:1,B2:1,11:B1,7,B1
T 42145,1,B1 TO
T 42146,1,B1
T 42147,1,B1 Height = 3
T 42148,4,B1:1:B1:1 THE TRANSPORTER IS BROKEN
T 42152,8,B1:6,B1
b 42160 Miscellaneous Text
T 42160,3,B1:1:B1 room name bar end cap (right)
T 42163,3,1:B2 room name bar end cap (left)
T 42166,1,B1 Height = 3
T 42167,3,B2:1 name of Current Character} CANNOT HELP YOU
T 42170,1,B1
T 42171,1,B1 Height = 3
T 42172,1,B1 YOU HAVE ARRIVED AT X.Y.Z.
T 42173,7,6,B1
b 42180 Text Relating to "COMMUNICATE" Command
T 42180,10,B1:7:B2 COMMUNICATE WITH {name of Current Starship Location}
T 42190,1,B1
T 42191,1,B1 Height = 5
T 42192,12,7:B1:3:B1 CHOOSE COMMUNICATION REQUEST HELP REFUEL STARSHIP
T 42204,12,B2:1:B2,B1:2:B1:1:B1,B1
T 42216,9,2:B1:1:B1:1:B1:2 REFUEL STARSHIP REQUESTED
T 42225,1,B1
T 42226,1,B1 SORRY MAGIC KNIGHT WE ARE OUT OF FUEL
T 42227,13,B1:1:B1:1:B2:4:B2,B1
T 42240,1,B1 Height = 14
T 42241,4,B1:1:B1:1 SORRY MAGIC KNIGHT WE DO NOT HAVE ENOUGH FUEL TO FILL UP YOUR TANK
T 42245,37,B1:3:B1:2,6:B1:4,B1:1:B1,8:B1:2,4,B1
T 42282,1,B1 Height = 14
T 42283,16,B1:1:B1:1:B1:8:B1:2 THE USS PISCES IS FULLY REFUELED
T 42299,1,B1
T 42300,4,B1:1:B2 REQUEST HELP
T 42304,6,2:B1:1:B2 REFUEL STARSHIP
T 42310,1,B1 Height = 6
T 42311,36,B1:3:B2:9:B1:11:B1:8 THERE IS NOBODY WITHIN SUB-SPACE COMMUNICATOR RANGE
T 42347,1,B1
b 42348 Text Relating to "MOVE STARSHIP" Command
T 42348,1,B1 Height = 4
T 42349,8,B2:5:B1 GORDON AND SARAB ARE BOTH ASLEEP
T 42357,1,B1
T 42358,1,B1 Height = 4
T 42359,13,B2:8:B1:1:B1 GORDON AND SARAB CANNOT UNDERSTAND YOU
T 42372,1,B1
b 42373 Object names
D 42373 Zero-terminated strings
T 42373,10,B2:7:B1 NOTHING AT ALL
T 42383,20,6:B1:12:B1 CLOAK OF INVISIBILITY
T 42403,16,15:B1 BLANK I.D. CARD
T 42419,16,15:B1 VALID I.D. CARD
T 42435,13,12:B1 INSTANT FILM
T 42448,11,10:B1 PHOTOGRAPH
T 42459,9,8:B1 STAR MAP
T 42468,9,8:B1 GADGET X
T 42477,7,6:B1 CAMERA
T 42484,11,10:B1 PHOTOGRAPH
T 42495,10,4:B1:4:B1 POT OF GLUE
T 42505,12,11:B1 5W RESISTOR
T 42517,15,14:B1 MAGIC TALISMAN
T 42532,15,14:B1 GOLDEN SUNDIAL
T 42547,7,B1:5:B1 MCTABLET FOOD
T 42554,13,12:B1 BROKEN GLASS
T 42567,11,10:B1 QUARK BOMB
T 42578,7,6:B1 ADVERT
T 42585,2,B2 PART OF A SUNDIAL
T 42587,2,B2 PART OF A SUNDIAL
T 42589,2,B2 PART OF A SUNDIAL
T 42591,11,10:B1 BRASS ANKH
T 42602,12,5:B1:5:B1 PAIR OF BOOTS
T 42614,16,15:B1 CHOCOLATE HEART
T 42630,9,B1:7:B1 STARFLEET MANUAL
T 42639,15,14:B1 ANCIENT SCROLL
T 42654,11,10:B1 TOWER FISH
T 42665,9,8:B1 GAS MASK
T 42674,7,6:B1 SHIELD
T 42681,11,4:B1:5:B1 BAG OF RUNES
T 42692,14,4:B1:8:B1 BAG OF POTATOES
T 42706,15,14:B1 PEWTER TANKARD
T 42721,4,3:B1 AXE
T 42725,15,14:B1 WRIST TERMINAL
T 42740,6,5:B1 TORCH
T 42746,7,6:B1 MIRROR
T 42753,12,11:B1 10 MW LASER
b 42765 Room names
D 42765 Strings are zero-terminated. For rooms without a name, the entry is a single zero byte. For rooms with names, the first two bytes of the entry are data, and the text string itself starts at the third byte. The data structure is:
T 42765,17,B3:12:B2 THE RECREATION ROOM
T 42782,11,B3:7:B1 THE BRIDGE
T 42793,8,B3:1:B1:1:B2 THE TRANSPORTER ROOM
T 42801,8,B3:1:B1:1:B2 THE TRANSPUTER ROOM
T 42809,13,B2:10:B1 CARGO HOLD
T 42822,12,B3:8:B1 THE AIRLOCK
T 42834,14,B3:10:B1 THE LIFE BOAT
T 42848,11,B3:7:B1 MURPHY'S MOON
T 42859,1,B1 Unused
T 42860,1,B1 Unused
T 42861,1,B1 Unused
T 42862,8,B3:1:B1:1:B2 THE TRANSPORTER ROOM
T 42870,18,B3:14:B1 MCTABLET TAKEAWAY FOOD
T 42888,1,B1 Unused
T 42889,1,B1 Unused
T 42890,17,B3:13:B1 FUEL & CARGO AREA
T 42907,12,B2:8:B2 YE OLDE TRANSPORTER
T 42919,23,B3:3:B1:15:B1 THE MAIN DEFENCE SYSTEM
T 42942,1,B1 Unused
T 42943,15,B3:4:B2:5:B1 THE PROOF OF POWER
T 42958,6,B3:1:B2 THE TYME GUARDIANS
T 42964,21,B3:17:B1 HOOPER'S EMERGENCY EXIT
T 42985,17,B2:2:B1:4:B2:5:B1 THIS WAY TO HOOPER ==>>
T 43002,10,B2:5:B3 HERE IS HOOPER
T 43012,19,B3:15:B1 THE CONTROL COLUMN
b 43031 Starship Destination Names
D 43031 Zero-terminated strings
T 43031,1,B1 Unused
T 43032,6,5:B1 DENEB
T 43038,5,4:B1 GATH
T 43043,2,B2 MONOPOLE
T 43045,8,7:B1 PORTHOS
T 43053,11,10:B1 STARBASE 1
T 43064,5,4:B1 LYNX
T 43069,8,7:B1 NIRVANA
T 43077,6,5:B1 LIMBO
T 43083,5,4:B1 EDEN
T 43088,2,B2 HERSCHELL
T 43090,9,8:B1 TRANTORE
T 43099,10,9:B1 PLOP PLOP
T 43109,11,10:B1 BRIGHTSTAR
T 43120,8,7:B1 OUTPOST
T 43128,8,7:B1 POLARIS
T 43136,4,1:B1:1:B1 BINGO
T 43140,2,B2 RETREAT
T 43142,11,10:B1 DRAGON EGG
T 43153,7,6:B1 ARIDIA
T 43160,9,8:B1 GANGROLE
T 43169,5,4:B1 NAFF
T 43174,5,4:B1 REEF
T 43179,10,2:B1:6:B1 MENOPAUSIA
T 43189,7,2:B1:3:B1 PLINKIT
b 43196 Common Words Table, Part 1
D 43196 This data block contains a list of zero-terminated (sub-)strings. Other text blocks reference this table when a particular string is required. This reduces the space requirements for storage of all of the game's text.
T 43196,3,B3 carriage return / line feed}{carriage return / line feed
T 43199,3,B3 change INK colour to yellow
T 43202,3,B3 move text cursor right by two characters
T 43205,4,B4 carriage return / line feed}{change INK colour to white
T 43209,3,2:B1 IN
T 43212,4,3:B1 =
T 43216,3,2:B1 A
T 43219,4,3:B1 AN
T 43223,4,3:B1 TO
T 43227,8,7:B1 COMMAND
T 43235,9,8:B1 EXAMINE
T 43244,6,5:B1 SAYS
T 43250,5,4:B1 GAME
T 43255,5,4:B1 HELP
T 43260,4,3:B1 YOU
T 43264,10,9:B1 HERSCHELL
T 43274,8,7:B1 RETREAT
T 43282,9,8:B1 MONOPOLE
T 43291,10,9:B1 ECCENTRIC
T 43301,4,3:B1
T 43305,4,3:B1 OF
T 43309,4,3:B1 AND
T 43313,4,3:B1 WE
T 43317,5,4:B1 READ
T 43322,4,3:B1 IS
T 43326,4,3:B1 THE
T 43330,6,5:B1 TAKE
T 43336,6,5:B1 GIVE
T 43342,5,4:B1 WEAR
T 43347,6,5:B1 DROP
T 43353,7,6:B1 CANNOT
T 43360,7,6:B1 ASLEEP
T 43367,10,9:B1 DREAMING
T 43377,7,6:B1 ABOUT
T 43384,5,4:B1 ARE
T 43389,11,10:B1 ASTRONOMER
T 43400,9,8:B1 ANYTHING
T 43409,7,6:B1 HELLO
T 43416,5,4:B1 TIME
T 43421,1,B1 Unused
T 43422,9,8:B1 SECURITY
T 43431,12,11:B1 SPELLBOUND
T 43443,13,12:B1 LOCATION :
T 43456,12,11:B1 WINDIMATION
T 43468,11,10:B1 ATTRIBUTE
T 43479,8,7:B1 PLAYER
T 43487,11,10:B1 GREETINGS
T 43498,14,13:B1 TYME DISTORT
T 43512,11,10:B1 SOMETHING
T 43523,11,10:B1 COMMUNICAT
T 43534,12,11:B1 TRANSPORTER
T 43546,12,11:B1 KNIGHT-TYME
T 43558,13,12:B1 MASTERTRONIC
T 43571,13,12:B1 MAGIC KNIGHT
T 43584,9,8:B1 STARSHIP
T 43593,11,10:B1 USS PISCES
T 43604,4,3:B1 YES
T 43608,3,2:B1 NO
T 43611,8,7:B1 OBJECT
T 43619,9,8:B1 NOTHING
T 43628,5,4:B1 HAS
T 43633,18,17:B1 PART OF A SUNDIAL
T 43651,1,B1 Unused
T 43652,1,B1 Unused
T 43653,1,B1 Unused
T 43654,1,B1 Unused
T 43655,1,B1 Unused
T 43656,1,B1 Unused
T 43657,1,B1 Unused
T 43658,1,B1 Unused
T 43659,1,B1 Unused
T 43660,23,15:B1:6:B1 GOLDEN SUNDIAL OF ALPHA. (bug)
T 43683,13,12:B1 COORDINATES
T 43696,31,B1:3:B2:12:B1:11:B1 THERE IS NOTHING USEFUL FROM THE ORACLE NOW
T 43727,21,19:B2 ...................
T 43748,13,12:B1 TYME MACHINE
T 43761,15,14:B1 TYME GUARDIANS
T 43776,12,11:B1 FEDERATION
T 43788,5,4:B1 HERE
T 43793,4,3:B1 YET
T 43797,9,8:B1 MCTABLET
T 43806,10,9:B1 STARFLEET
T 43816,6,5:B1 JONES
T 43822,5,4:B1 CAST
T 43827,6,5:B1 SPELL
T 43833,15,8:B1:5:B1 FORTIFY YOURSELF
T 43848,9,8:B1 STARBASE
T 43857,11,10:B1 TRANSPUTER
T 43868,16,15:B1 REMOVE BARRIERS
T 43884,15,14:B1 CONSULT ORACLE
T 43899,18,17:B1 FORTIFY CHARACTER
T 43917,15,13:B2 AUTHORIZED BY
T 43932,15,14:B1 LIGHTNING BOLT
T 43947,1,B1 Unused
T 43948,7,B1:1:B1:1:B1:1:B1 GORDON AND SARAB
T 43955,13,8:B1:1:B1:1:B1 CANNOT HELP YOU
T 43968,19,B1:17:B1 YOU HAVE ARRIVED AT
T 43987,11,10:B1 CONTROL :
T 43998,11,10:B1 IN TRANSIT
T 44009,18,2:B1:4:B1:3:B1:5:B1 N = LEFT M = RIGHT A = JUMP/UP  Z = DOWN - = MENU (FIRE)
T 44027,34,2:B1:10:B1:4:B1,2:B1:11:B1
b 44061 Common Words Table, Part 2
D 44061 This data block contains a list of zero-terminated (sub-)strings. Other text blocks reference this table when a particular string is required. This reduces the space requirements for storage of all of the game's text.
T 44061,8,7:B1 CITIZEN
T 44069,8,7:B1 REQUEST
T 44077,5,4:B1 FUEL
T 44082,6,5:B1 SORRY
T 44088,7,6:B1 GORDON
T 44095,6,5:B1 SARAB
T 44101,6,5:B1 KLINK
T 44107,6,5:B1 S3 E3
T 44113,7,6:B1 HOOPER
T 44120,7,6:B1 MURPHY
T 44127,7,6:B1 SHARON
T 44134,7,6:B1 FORBIN
T 44141,9,8:B1 DERBY IV
T 44150,10,9:B1 SWIFTFOOT
T 44160,8,7:B1 JULIE 8
T 44168,8,7:B1 HECTORR
T 44176,4,3:B1 ING
T 44180,5,4:B1 ROOM
T 44185,1,B1 Unused
T 44186,1,B1 Unused
T 44187,9,8:B1 KEYBOARD
T 44196,11,9:B2 KEMPSTON JOYSTICK
T 44207,9,7:B2 CURSOR JOYSTICK
T 44216,12,9:B1:1:B1 SINCLAIR JOYSTICK 1
T 44228,10,9:B1 JOYSTICK
b 44238 Table of Characters' Wanted Objects
D 44238 Each entry is comprised of two bytes. The End Marker is denoted by a value of 255 in the first byte.
B 44238,2,2 Gordon, Star Map
B 44240,2,2 Klink, 10MW Laser
B 44242,2,2 Hooper, Bag of Runes
B 44244,2,2 Murphy, Bag of Potatoes
B 44246,2,2 Sharon, Chocolate Heart
B 44248,2,2 Hectorr, Pot of Glue
B 44250,1,1 End Marker
b 44251 Table of Characters' Unwanted Objects
D 44251 Each entry is comprised of two bytes. The End Marker is denoted by a value of 255 in the first byte.
B 44251,2,2 Gordon, Pot of Glue
B 44253,2,2 Sarab, Star Map
B 44255,2,2 Sarab, Pot of Glue
B 44257,2,2 Klink, Pot of Glue
B 44259,2,2 S3 E3, Pot of Glue
B 44261,2,2 Hooper, Pot of Glue
B 44263,2,2 Murphy, Pot of Glue
B 44265,2,2 Sharon, Pot of Glue
B 44267,2,2 Forbin, Pot of Glue
B 44269,2,2 Derby IV, Pot of Glue
B 44271,2,2 Swiftfoot, Pot of Glue
B 44273,2,2 Julie 8, Pot of Glue
B 44275,1,1 End Marker
b 44276 Character's Responses to McTablet Flavours
T 44276,1,B1 Height = 6
T 44277,3,B1:1:B1 name of Current Character} SAYS 'GREAT ! CHEESE AND ONION FLAVOUR MCTABLET IS MY FAVOURITE'
T 44280,49,16,B1:15,B1:1:B1:3,10,B1
T 44329,1,B1 Height = 8
T 44330,9,B1:1:B1:6 name of Current Character} SAYS 'I DO NOT LIKE ORIGINAL SALTY FLAVOUR MCTABLET BUT AT LEAST IT CONTAINS NO ANIMAL PRODUCTS'
T 44339,75,B1:11:B1:3,14,B1:8,14:B1:2,B1:8,9,B1
T 44414,1,B1 Height = 4
T 44415,9,B1:1:B1:6 name of Current Character} SAYS 'BEEF AND ONION MCTABLET! YUK!!'
T 44424,18,B1:7,B1:8,B1
T 44442,1,B1 Height = 7
T 44443,3,B1:1:B1 name of Current Character} SAYS 'YUMMY ! YOU CAN ALMOST TASTE THE SIDE SALAD IN THIS T-BONE STEAK MCTABLET'
T 44446,60,9:B1:2:B1,13:B1:1,11:B1:1,2:B1:13,B1:1,B1
b 44506 Cyan "Game Over" Window Texts and Transporter Problem Messages
T 44506,7,B1:5:B1 GAME OVER TOTAL COMPLETION 000 % TIME LEFT 30 DAYS
T 44513,39,23,B1:13:B1,B1
T 44552,1,B1 Height = 6
T 44553,17,17 BREAK KEY PRESSED
T 44570,1,B1
T 44571,1,B1 Height = 11
T 44572,20,B1:19 YOU HAVE ESCAPED FROM THE FUTURE AND ARE HEADING BACK TO YOUR OWN TIME. TO BE CONTINUED....
T 44592,51,B1:8:B1:1:B1,4:B1:6:B2:2,4:B1:1:B1,B1:7:B1:7,B1
T 44643,1,B1 Height = 5
T 44644,18,B1:6:B1:10 YOU DIED OF EXHAUSTION
T 44662,1,B1
T 44663,1,B1 Height = 8
T 44664,12,B1:7:B1:1:B1:1 SECURITY HEARD YOU AND THREW YOU OUT OF THE AIRLOCK
T 44676,23,6:B1:5:B2:1,7,B1
T 44699,1,B1 Height = 8
T 44700,10,B1:5:B1:1:B1:1 SECURITY SAW YOU AND BLASTED YOU INTO SPACE DUST
T 44710,23,8:B1:1:B2:6,4,B1
T 44733,1,B1 Height = 8
T 44734,17,B1:16 THE GAS PENETRATED YOUR ARMOUR AND YOU DIED HORRIBLY.
T 44751,29,B1:9:B1:1:B1:1,14,B1
T 44780,1,B1 Height = 12
T 44781,13,B1:3:B1:8 THE AUTO DEFENCE SYSTEMS HAVE REMOVED YOU FROM THIS SPACE/TIME CONTINUUM. YOU NEEDED THE GOLDEN SUNDIAL OF ALPHA. TO PASS (bug)
T 44794,68,21,B1:8:B1,6:B1:5:B1:5,B1:8:B1:1,B1:1:B1:4,B1
T 44862,1,B1 Height = 11
T 44863,17,B1:16 YOU HAVE DESTROYED YOURSELF BY DROPPING THE {name of Current Object}. THERE IS UTTER CHAOS FOR 3.14 PARSECS IN ALL DIRECTIONS
T 44880,73,B1:14:B1:1,B1:1:B1:2,B1:3:B1:12,17:B1:1,14,B1
T 44953,1,B1 Height = 9
T 44954,14,B1:2:B1:4:B1:5 YOU RAN OUT OF STAR DRIVE FUEL AND HAVE STRANDED YOURSELF IN DEEP SPACE
T 44968,45,11:B1:6,3:B1:3:B1:6:B1:1,10,B1
T 45013,1,B1 Height = 6
T 45014,4,B1:1:B1:1 THE TRANSPORTER SENDS YOU TO SUFFOCATE IN THE COLD OF OUTER SPACE
T 45018,41,6:B1:1:B1,10:B1:1,B1:6:B1,11,B1
T 45059,1,B1 Height = 12
T 45060,5,B1:1:B1:1:B1 THE TRANSPORTER HAS MALFUNCTIONED AND SPREAD YOUR ATOMS ACROSS THE COSMOS IN THE SHAPE OF A BUTTERFLY. WHAT A PRETTY WAY TO DIE !
T 45065,92,14:B1:1,2:B1:1:B1:8,7:B1:8:B1:1,B1:7:B2,16:B1,11:B1:5,B1
T 45157,1,B1 Height = 10
T 45158,19,19 IT WOULD MAKE MORE SENSE TO ENTER COORDINATES THAT LAND YOU ON A TRANSPORTER PAD OF SOME SORT !
T 45177,47,6:B1:6,B1:6:B1:1,B1:4:B2:1,4:B1:11,B1
T 45224,1,B1 Height = 6
T 45225,10,B1:2:B1:4:B2 YOU RAN OUT OF TIME
T 45235,1,B1
b 45236 Derby IV Dialogue and I.D. Card Messages
T 45236,1,B1 Height = 11
T 45237,5,B1:1:B1:1:B1 name of Current Character} SAYS 'HELLO MAGIC KNIGHT. AS A TEMPORALY MISPLACED PERSON YOU ARE ALSO UNWITTINGLY A STOWAWAY ON THIS STARSHIP. FORTUNATELY FOR YOU MY PROGRAMMERS FORESAW YOUR ARRIVAL AND HAVE GIVEN ME A CHANCE TO HELP YOU. (bug)
T 45242,153,B1:5:B1,20,7:B1:1:B1:5,6:B1:3:B1:12,2:B2:2,16:B1:4,20:B1:2,8:B1:15,B1:7:B2:1:B1:1,B1
T 45395,1,B1 Height = 11
T 45396,10,5:B1:1:B2:1 FROM TIME TO TIME I WILL BE ABLE TO GIVE YOU ADVICE. FOR THE MOMENT THE ONLY HELP I CAN GIVE YOU IS THIS BLANK I.D. CARD WHICH YOU WILL HAVE TO GET AUTHORIZED'
T 45406,111,15:B1,B2:9,4:B1:8,B1:6:B1:3,1:B3:1:B1,2:B1:11,11:B1:1,10:B1:4,11,B1
T 45517,1,B1 Height = 7
T 45518,24,23:B1 WHIRRRRR........ PLOP ! A PIECE OF PLASTICARD HAS FALLEN FROM A SLOT IN THE TRANSPUTER. IT HAS A SECTION SAYING 'REGISTER YOUR I.D. HERE'
T 45542,87,B1:6:B1:11:B1,12:B1:5:B1:1:B1:1,B1:5:B2,11:B1:11,B1:12,B1
T 45629,1,B1 Height = 9
T 45630,13,B1:1:B1:7:B1:2 name of Current Character} SAYS 'STICK YOUR PHOTO ON THE I.D. CARD SO THAT THE NON-ELECTRONIC CREW WILL TAKE NOTICE OF YOU. I HAVE FIXED IT SO THAT YOU WILL BE QUITE AN IMPORTANT STARFLEET OFFICIAL.'
T 45643,128,3:B1:3:B1:14,5:B1:1:B1:13,10:B2:5:B1,B1:21,5:B1:15:B1,10:B1:1,10,B1
T 45771,1,B1 Height = 10
T 45772,16,9:B1:6 OOOPS!.. YOU HAVE HAD AN ACCIDENT WITH THE GLUE! THE PHOTO HAS BECOME STUCK TO THE BLANK I.D. CARD. IT WOULD SEEM THAT YOU HAVE BEEN QUITE LUCKY.
T 45788,111,4:B1:9,5:B1:7,B1:4:B2,13:B1,B1:12,15,10:B1:1,16,6,B1
b 45899 "Eat Own McTablets" Message
T 45899,1,B1 Height = 4
T 45900,11,B1:5:B1:4 YOU HAD TO EAT SOME OF YOUR OWN MCTABLETS TO KEEP YOUR STRENGTH UP.
T 45911,38,5:B2:6,B1:2:B1:5,B1:14,B1
b 45949 "CAST A SPELL" Messages Consult Oracle (00)
T 45949,1,B1 Height = 4
T 45950,13,B1:8:B2:2 THE ORACLE IS NOT ABLE TO HELP AT THE MOMENT
T 45963,20,5:B2:4,B1:7,B1
N 45983 Consult Oracle (01)
T 45983,1,B1 Height = 4
T 45984,1,B1 THERE IS NOTHING USEFUL FROM THE ORACLE NOW
T 45985,1,B1
N 45986 Consult Oracle (02)
T 45986,1,B1 Height = 4
T 45987,1,B1 THERE IS NOTHING USEFUL FROM THE ORACLE NOW
T 45988,1,B1
N 45989 Consult Oracle (03)
T 45989,1,B1 Height = 14
T 45990,2,B1:1 THE GOLDEN SUNDIAL OF ALPHA. WAS THE SYMBOL OF THE TYME GUARDIANS POWER. NOBODY KNOWS FOR CERTAIN WHERE IT IS NOWBUT THERE ARE RUMOURS THAT IT WAS BROKEN UP FOR SCRAP WHEN THE TYME GUARDIANS WERE OFFICIALLY DISBANDED. (bug)
T 45992,144,B1:5:B1:1,7:B2:1,B1:8,B1:6:B1:7,5:B1:10,B2:5:B1:3,B1:13,17,15:B1:1,B1:1,16,4:B1:3,B1
N 46136 Consult Oracle (04)
T 46136,1,B1 Height = 4
T 46137,1,B1 THERE IS NOTHING USEFUL FROM THE ORACLE NOW
T 46138,1,B1
N 46139 Consult Oracle (05)
T 46139,1,B1 Height = 10
T 46140,13,B1:12 THE ORACLE HAS LOCATED THE TYME GUARDIANS AT A PLACE CALLED OUTPOST. THEY HAVE BEEN THERE IN HIDING SINCE THE END OF THE 23RD CENTURY.
T 46153,90,8:B1:1,B1:1,3:B1:13,9:B1:7,5:B1:3:B1:1,3:B1:2:B1:3:B1:1,4:B2:6,8,B1
N 46243 Consult Oracle (06)
T 46243,1,B1 Height = 8
T 46244,14,B1:13 THE ORACLE SEES DANGER ON SOME PLANETS. SECURITY SYSTEMS MUST BE BYPASSED. SOME SILENT BOOTS COULD PROVE USEFUL.
T 46258,90,15,9:B1:1,16,15,19,13,B1
N 46348 Consult Oracle (07)
T 46348,1,B1 Height = 8
T 46349,14,B1:3:B2:8 THERE IS A SUNDIAL TO BE MENDED. YOU MUST APPLY A LARGE BURST OF ENERGY TO THE SEGMENTS BEFORE THEY WILL MERGE
T 46363,79,B1:11:B1:1,11:B1:6,6:B1:7:B1,B1:10,7:B1:7,5,B1
N 46442 Consult Oracle (08)
T 46442,1,B1 Height = 4
T 46443,10,3:B1:2:B1:3 IT HELPS TO BE UNSEEN IN SOME PLACES
T 46453,21,7:B1:6,6,B1
N 46474 Consult Oracle (09)
T 46474,1,B1 Height = 5
T 46475,15,B1:14 A GAS MASK WILL SAVE YOUR LIFE IF YOU USE IT IN THE RIGHT PLACE
T 46490,41,5:B1:10,B1:8:B1:1:B1:1,11,B1
T 46531,1,B1 Height = 4
T 46532,7,B1:3:B2:1 THERE ARE NO BARRIERS TO BE REMOVED HERE.
T 46539,27,9:B1:3,13,B1
T 46566,1,B1 Height = 4
T 46567,14,B1:13 THE BARRIER HAS FADED INTO NOTHINGNESS
T 46581,17,6:B2,B1:2:B1:4,B1
T 46598,1,B1 Height = 8
T 46599,15,B1:13:B1 YOU HAVE THROWN A LIGHTNING BOLT BUT THERE WAS NO OBVIOUS TARGET SO IT DISSIPATED HARMLESSLY IN THE AIR.
T 46614,68,B1:5,B1:7:B1:1,18,14,11:B1:1:B1:1,4,B1
T 46682,1,B1 Height = 12
T 46683,5,B1:2:B1:1 YOUR LIGHTNING BOLT HAS HIT THE ANCIENT TYME MACHINE AND GIVEN IT ENOUGH ENERGY TO TRAVEL ABOUT 1200 YEARS BACKWARD IN TIME. ALL YOU HAVE TO DO NOW IS TO FIND THE ROUTE HOME.
T 46688,116,8:B1:1*2,B1:7,4:B1:11,B1:7:B1,11,9:B1:1:B1:2,4:B1:6:B1:3,B1:2:B2:1:B1:2:B1:1,11,B1
T 46804,1,B1 Height = 11
T 46805,12,B1:10:B1 THE SEGMENTS OF THE GOLDEN SUNDIAL OF ALPHA. HAVE BEEN WELDED INTO ONE UNIT BY THE AWESOME POWER OF YOUR LIGHTNING BOLT. BEHOLD! HERE IS THE GOLDEN SUNDIAL OF ALPHA.. (bug)
T 46817,77,B1:1:B1:1,17:B2,12:B1:1,14:B1,B1:2:B1:2,13,B2:1,B1:1,B1
T 46894,1,B1 Height = 14 (bug)
T 46895,5,B1:2:B1:1 YOUR LIGHTNING BOLT HAS ALERTED THE SECURITY SYSTEM TO YOUR PRESENCE. A BIGGER LIGHTNING BOLT HAS JUST BLASTED YOU OUT OF MORTAL EXISTENCE.
T 46900,89,12,B1:1:B1:1,7:B2:2,10:B1:7,B1:5,13:B1:1,4:B1:7,10,B1
b 46989 Tyme Guardians Messages
T 46989,1,B1 Height = 12
T 46990,12,B1:9:B1:1 A LOUD BOOMING VOICE ECHOES ABOUT THE ROOM 'HAIL VISITOR! BE WARNED THAT THE GOLDEN SUNDIAL OF ALPHA. IS THE ONLY PASSPORT TO SAFETY IF YOU WISH TO TRAVEL FURTHER AND LIVE!' (bug)
T 47002,112,13,B2:1:B1:1,18,12:B1:1,B1,1:B2:1,14:B1,10:B1:1,5:B1:7,8:B1:1,6,B1
T 47114,1,B1 Height = 13
T 47115,4,B1:1:B1:1 THE TYME GUARDIANS ARE SHOCKED AT YOUR ARRIVAL AND AFTER THE PANIC HAS DIED DOWN THEY SAY 'MAGIC KNIGHT YOU HAVE PUT US ALL IN GRAVE DANGER THROUGH YOUR MISSUSE OF THE OLDE MAJICK. (bug)
T 47119,131,B1:11,B1:10:B1:1,6:B1:7,14:B1:2,5:B1:1,B1:13,4:B1:7,15,B1:10:B1,B1:13,B1
T 47250,1,B1 Height = 14
T 47251,15,B1:13:B1 YOU MUST RETURN TO YOUR OWN TIME BEFORE THE DAMAGE IS IRREVERSIBLE. OUR EMERGENCY TYME MACHINE IS BEING FITTED TO THE AIRLOCK OF THE USS PISCES AT THIS VERY MOMENT. GO QUICKLY THERE IS NO TIME OR TYME TO WASTE!'
T 47266,140,B1:6:B1:1,7:B1:8,B1:14,14:B1:1,B1:2:B1:1,7:B2:1,8:B2:1,B1:6:B1,16,8:B1:3:B1,B1:1:B1:9:B1,7,B1
b 47406 Tyme Machine-Related "Game Over" Texts
T 47406,1,B1 Height = 9
T 47407,18,3:B1:14 AS YOU FELL TOWARDS GANGROLE THE TYME MACHINE OVERLOADED AND BLEW UP.
T 47425,35,9:B1:1:B1:1,11:B1:1,8,B1
T 47460,1,B1 Height = 8
T 47461,8,B1:1:B1:1:B1:1:B1:1 YOU AND THE TYME MACHINE CRASHED TO THE SURFACE OF {name of Current Starship Location}
T 47469,22,8:B2:1,8:B2,B1
b 47491 Characters' "Current Status" Texts
D 47491 First group of texts are strings used when characters are awake. Second group are for characters that are asleep.
T 47491,1,B1 Unused
N 47492 (01) Magic Knight
T 47492,15,14:B1 PROGRESS 000 % TIME LEFT 30 DAYS
T 47507,15,B1:13,B1
N 47522 (02) Gordon (awake)
T 47522,20,B1:1:B1:3:B1:13 GORDON IS AT THE HELM CONTROL
T 47542,1,B1
N 47543 (03) Sarab (awake)
T 47543,18,B1:1:B1:15 SARAB IS DEPUTY HELMSMAN
T 47561,1,B1
N 47562 (04) Klink (awake)
T 47562,13,B1:1:B2:9 KLINK IS A ROBODROID
T 47575,1,B1
N 47576 (05) S3 E3 (awake)
T 47576,16,B1:1:B2:11:B1 S3 E3 HAS A FAMOUS COUSIN
T 47592,1,B1
N 47593 (06) Hooper (awake)
T 47593,22,B1:6:B1:1:B1:12 HOOPER USED TO MINE TRILITHIUM
T 47615,1,B1
N 47616 (07) Murphy (awake)
T 47616,16,B1:15 MURPHY LIKES POTATOES
T 47632,1,B1
N 47633 (08) Sharon (awake)
T 47633,21,B1:20 SHARON COMES FROM VALHALLA
T 47654,1,B1
N 47655 (09) Forbin (awake)
T 47655,15,B1:1:B1:12 FORBIN IS QUITE CLEVER
T 47670,1,B1
N 47671 (10) Derby IV (awake)
T 47671,17,B1:16 DERBY IV RUNS AT 200 GHZ
T 47688,1,B1
N 47689 (11) Swiftfoot (awake)
T 47689,24,B1:12:B1:4:B2:4 SWIFTFOOT FEELS LIKE A BIT OF A HEEL
T 47713,1,B1
N 47714 (12) Julie 8 (awake)
T 47714,27,B1:1:B1:18:B2:4 JULIE 8 IS VERY ROMANTIC FOR AN ANDROID
T 47741,1,B1
N 47742 (13) Hectorr (awake)
T 47742,19,B1:1:B2:15 HECTORR IS A FEATHERED ALIEN
T 47761,1,B1
N 47762 (14) Unused
T 47762,1,B1
N 47763 (15) Unused
T 47763,1,B1
N 47764 (16) Unused
T 47764,1,B1
N 47765 (17) Unused
T 47765,1,B1
N 47766 (18) Gordon (asleep)
T 47766,22,B1:1:B2:4:B1:13 GORDON IS ASLEEP AT THE HELM CONTROL
T 47788,1,B1
N 47789 (19) Sarab (asleep)
T 47789,24,B1:1:B2:1:B1:1:B1:16 SARAB IS A SNORING DEPUTY HELMSMAN
T 47813,1,B1
N 47814 (20) Klink (asleep)
T 47814,26,B1:1:B3:10:B1:10 KLINK IS A NON FUNCTIONING ROBODROID
T 47840,1,B1
N 47841 (21) S3 E3 (asleep)
T 47841,22,B1:1:B1:8:B3:2:B1:1:B2:2 S3 E3 HAS BLEEPED INTO THE LAND OF NODE
T 47863,1,B1
N 47864 (22) Hooper (asleep)
T 47864,8,B1:1:B3:1:B2 HOOPER IS DREAMING ABOUT MINING
T 47872,1,B1
N 47873 (23) Murphy (asleep)
T 47873,4,B1:1:B2 MURPHY IS ASLEEP
T 47877,1,B1
N 47878 (24) Sharon (asleep)
T 47878,13,B1:1:B3:8 SHARON IS DREAMING ABOUT VALHALLA
T 47891,1,B1
N 47892 (25) Forbin (asleep)
T 47892,21,B1:1:B1:18 FORBIN IS TOTALLY ZONKED OUT
T 47913,1,B1
N 47914 (26) Derby IV (asleep)
T 47914,43,B1:39:B1:2 DERBY IV RUNS AT 0 MHZ WHEN SWITCHED OFF (LIKE NOW) (bug)
T 47957,1,B1
N 47958 (27) Swiftfoot (asleep)
T 47958,20,B1:1:B2:1:B1:7:B2:5 SWIFTFOOT IS IN THE MIDST OF A DREAM
T 47978,1,B1
N 47979 (28) Julie 8 (asleep)
T 47979,12,B1:1:B3:7 JULIE 8 IS DREAMING ABOUT ROMIE 0
T 47991,1,B1
N 47992 (29) Hectorr (asleep)
T 47992,11,B1:1:B3:6 HECTORR IS DREAMING ABOUT RAVENS
T 48003,1,B1
b 48004 Planets' "REQUEST HELP" Strings (00) Unused
T 48004,1,B1
N 48005 (01) Deneb
T 48005,1,B1 Height = 6 (see trivia)
T 48006,23,2:B3:18 THIS IS A RECORDED MESSAGE. THE SPACE PLAGUE HAS STRUCK HERE. I AM THE LAST SURVIVOR. KEEP CLEAR THERE IS NO KNOWN CURE.
T 48029,80,B1:14:B1:7,11:B1:16,11:B1:3:B2:2:B1:3,5,B1
N 48109 (02) Gath
T 48109,1,B1 Height = 6
T 48110,15,5:B1:6:B2:1 HAIL STARSHIP, FABIAN THE HUMAN TRADER CLONE HERE. SORRY I CANNOT HELP YOU BUT MY BROTHER VESUVIUS MIGHT BE ABLE TO, HE IS ON EDEN
T 48125,83,3:B1:25,1:B1:7,3:B1:25,7:B1:7,B1
N 48208 (03) Monopole
T 48208,1,B1 Height = 5
T 48209,15,B1:1:B1:12 HOOPER SAYS 'GO AWAY !! STARFLEET ARE NOTHING BUT TROUBLE TO DECENT FOLKS' AND BREAKS COMMUNICATION
T 48224,45,B1:1:B2:4,8:B1:14:B1:1,7:B1:3,B1
N 48269 (04) Porthos
T 48269,1,B1 Height = 4
T 48270,15,B1:8:B1:2:B1:1:B1 HELLO EARTH BEING. {name of Current Starship Location} IS PLEASED TO WELCOME YOU BUT WE CANNOT HELP YOU
T 48285,26,8:B1:8:B1:5:B1,B1
N 48311 (05) Starbase 1
T 48311,1,B1 Height = 5
T 48312,16,5:B1:3:B1:6 AHOY THERE MAGIC KNIGHT, WHY NOT BEAM DOWN FOR SOME SHORE LEAVE ? COORDINATES ARE X1Y2Z3
T 48328,45,B1:27,7:B1,B2:6,B1
N 48373 (06) Lynx
T 48373,1,B1 Height = 8
T 48374,23,2:B2:6:B1:12 THIS IS RADIO {name of Current Starship Location} ON 234 KHZ AND 97.2 FM. AND HERE IS AN URGENT NEWSFLASH FOR MAGIC KNIGHT 'MURPHY THE ECCENTRIC LIVES ON RETREAT AND THE TRANSPORTER COORDINATES ARE X8Y4Z1.'
T 48397,78,B1:10:B1:6:B2,21:B1:1,1:B1:1:B1:1:B1:1,9:B1:1:B1:1:B1:1,B1:1:B2,8,B1
N 48475 (07) Nirvana
T 48475,1,B1 Height = 5
T 48476,8,B2:6 GREETINGS USS PISCES, MAY ALLAH GREET YOUR SPIRIT IN HEAVEN, I CANNOT HELP YOU MAGIC KNIGHT
T 48484,36,12:B1:9:B1:1,9:B1,B1
N 48520 (08) Limbo
T 48520,1,B1 Height = 5
T 48521,21,4:B1:14:B1:1 MAY THE FORD BE WITH YOU MAGIC KNIGHT. WE ARE TOLD THAT THE PLANET HERSCHELL IS FAMOUS FOR IT'S ASTRONOMERS (bug)
T 48542,46,B1:2:B2:10:B1:1,7:B1:1:B1:11,5:B1:1,B1
N 48588 (09) Eden
T 48588,1,B1 Height = 5
T 48589,25,B1:24 HELLO MATEY, DR VESUVIUS HERE ON PLANET {name of Current Starship Location} APPARENTLY HOOPER THE ECCENTRIC LIVES ON A PLANET CALLED 'NAFF'
T 48614,60,10:B1:12,B1:1:B1:1:B1:10,B1:20,B1
N 48674 (10) Herschell
T 48674,1,B1 Height = 7
T 48675,11,B2:9 GREETINGS MAGIC KNIGHT, I HAVE A MESSAGE FROM OUR CHIEF ASTRONOMER. SHE SAYS 'GANGROLE IS A BLACK HOLE WITH A HIGH RATE OF ROTATION AND A VERY STRONG MAGNETIC FIELD'
T 48686,112,B1:23,B1:6:B1:10,B2:16:B1:5,5:B1:9:B1:1:B1:5,22,B1
N 48798 (11) Trantore
T 48798,1,B1 Height = 10
T 48799,22,22 TRANSMISSION..... RE: TYME GUARDIANS TRANSPORTER COORDINATES . DO NOT BELIEVE THOSE GIVEN BY THE TYME GUARDIANS. THEY ARE A TRAP FOR THE UNWARY VISITOR. ADD 1 TO EACH DIGIT IN THE SEQUENCE ... XMIT FROM GALACTIC CITIZENS ADVICE CENTRE ... MSG END.
T 48821,157,B1:1:B1:1,B1:5:B1:10,15:B1:1,B1:2:B1:2:B2:9,B1:23:B1,11:B1:1:B1:14,19:B1:2,26,B1
N 48978 (12) Plop Plop
T 48978,1,B1 Height = 7
T 48979,23,2:B3:18 THIS IS A RECORDED MESSAGE. THIS PLANET IS INHABITED BY DOLPHINS WHO LEFT EARTH WAY BACK IN THE 22ND CENTURY WHEN IT WAS DESTROYED TO MAKE WAY FOR A MCTABLET MEGASTORE.
T 49002,122,2:B1:7:B2:11,5:B1:21,5:B1:1:B1:19,17:B1:9,4:B2:11,B1
N 49124 (13) Brightstar
T 49124,1,B1 Height = 8
T 49125,8,2:B3:1:B1:1 THIS IS THE {name of Current Starship Location} COMMUNICATION CENTRE, WE HAVE BEEN INFORMED OF YOUR SITUATION MAGIC KNIGHT. WE SUGGEST THAT YOU TRAVEL IMMEDIATELY TO HERSCHELL TO PICK UP VITAL INFORMATION
T 49133,113,B1:12:B1:5,5:B1:7:B2:2,10:B1:2:B1,13:B1:8,12:B2:1:B1,14:B1:9,B1
N 49246 (14) Outpost
T 49246,1,B1 Height = 4
T 49247,16,B1:1:B1:13 THE TYME GUARDIANS SLEEP HERE. ENTER AT YOUR PERIL. THE COORDINATES ARE Z5Y8X7.
T 49263,31,9:B1:9:B1:1,B2:7,B1
N 49294 (15) Polaris
T 49294,1,B1 Height = 6
T 49295,15,B2:13 HELLO MAGIC KNIGHT. APPARENTLY HOOPER USED TO BE A CITIZEN OF THE PERSONS REPUBLIC OF PLINKIT BEFORE HE BECAME AN ASTEROID MINER.
T 49310,76,B1:6:B1:5:B1:1:B1,B1:18:B1,2:B1:21:B1,10:B1:3,B1
N 49386 (16) Bingo
T 49386,1,B1 Height = 8
T 49387,23,2:B1:7:B2:10:B1 THIS PLANET IS THE PROPERTY OF ARTHUR SCRUNGE. THE WINNER OF THE DAILY SOLAR NEWSPAPER 20 BILLION CREDIT GAME. ARTHUR IS NOT AT HOME JUST NOW BUT THE SLAVE DROIDS ARE READY TO REFUEL YOUR STARSHIP. (bug)
T 49410,140,16:B1:2:B1:4:B1,B1:26,28:B1,B1:15:B1:6:B1:1,13:B1:6:B1,7:B1:2:B1:1,B1
N 49550 (17) Retreat
T 49550,1,B1 Height = 5
T 49551,21,2:B3:16 THIS IS MURPHY HERE.. GO AWAY MAGIC KNIGHT, I DO NOT HAVE ANY TRUCK WITH STARFLEET PEOPLE
T 49572,40,B1:7:B1:7,15:B1:1,6,B1
N 49612 (18) Dragon Egg
T 49612,1,B1 Height = 4
T 49613,24,4:B1:1:B1:17 WARNING TO ALL CARBON BASED LIFE FORMS. DO NOT BEAM DOWN HERE. THIS IS A NEUTRON STAR !
T 49637,54,15:B1:12,8:B3:14,B1
N 49691 (19) Aridia
T 49691,1,B1 Height = 6 (see trivia)
T 49692,24,2:B2:20 THIS IS A RECORDED MESSAGE. THE SPACE PLAGUE HAS STRUCK HERE. I AM THE LAST SURVIVOR. KEEP CLEAR THERE IS NO KNOWN CURE.
T 49716,80,B1:14:B1:7,11:B1:16,11:B1:3:B2:2:B1:3,5,B1
N 49796 (20) Gangrole
T 49796,1,B1
N 49797 (21) Naff
T 49797,1,B1 Height = 9
T 49798,15,B2:13 HELLO MAGIC KNIGHT I AM ZOBBF. I EXPECT YOU ARE LOOKING FOR HOOPER. HE MOVED ON AFTER HIS 'SECRET' BECAME KNOWN. THE RUMOURS SAY THAT HE FOUND A SECTION OF THE GOLDEN SUNDIAL OF ALPHA. WHILE MINING FOR QUARKANIUM. (bug)
T 49813,135,9:B1:1:B1:4:B1:5,B1:21:B1,17:B1:4:B1:1,26:B1,8:B2:1,B1:8:B2:5,11,B1
N 49948 (22) Reef
T 49948,1,B1
N 49949 (23) Menopausia
T 49949,1,B1 Height = 7
T 49950,12,2:B3:4:B1:2 THIS IS {name of Current Starship Location} WEATHER STATION. WE ARE EXPECTING PARTICLE STORMS IN THE REGION OF BRIGHTSTAR AND LIMBO. PLEASE ENSURE THAT YOUR SHIELDS ARE OPERATIONAL
T 49962,110,9:B2:6:B1:1,16:B1:1:B1:1:7,B1:11:B1:8,19:B1:2,8:B1:11,B1
N 50072 (24) Plinkit
T 50072,1,B1 Height = 5
T 50073,16,B1:5:B1:9 GREETINGS FROM THE PERSONS REPUBLIC OF {name of Current Starship Location}. OUR SPACE IS YOURS AND YOUR FRIENDSHIP IS VALUED MAGIC KNIGHT
T 50089,54,9:B2:12,B2:3:B1:1:B1:13,B1:7:B1,B1
b 50143 Room Layout Data Pointers
W 50143,2,2 (00) - USS Pisces, 0 (The Recreation Room)
W 50145,2,2 (01) - USS Pisces, 1 (The Bridge)
W 50147,2,2 (02) - USS Pisces, 2 (The Transporter Room)
W 50149,2,2 (03) - USS Pisces, 3 (The Transputer Room)
W 50151,2,2 (04) - USS Pisces, 4 (Cargo Hold)
W 50153,2,2 (05) - USS Pisces, 5 (The Airlock)
W 50155,2,2 (06) - USS Pisces, 6 (The Life Boat)
W 50157,2,2 (07) - Retreat, 0 (Murphy's Moon)
W 50159,2,2 (08) - Retreat, 1
W 50161,2,2 (09) - Retreat, 2
W 50163,2,2 (10) - Retreat, 3
W 50165,2,2 (11) - Starbase 1, 0 (The Transporter Room)
W 50167,2,2 (12) - Starbase 1, 1 (McTablet Takeaway Food)
W 50169,2,2 (13) - Starbase 1, 2
W 50171,2,2 (14) - Starbase 1, 3
W 50173,2,2 (15) - Starbase 1, 4 (Fuel and Cargo Area)
W 50175,2,2 (16) - Outpost, 0 (Ye Olde Transporter)
W 50177,2,2 (17) - Outpost, 1 (The Main Defence System)
W 50179,2,2 (18) - Outpost, 2
W 50181,2,2 (19) - Outpost, 3 (The Proof of Power)
W 50183,2,2 (20) - Outpost, 4 (The Tyme Guardians)
W 50185,2,2 (21) - Monopole, 0 (Hooper's Emergency Exit)
W 50187,2,2 (22) - Monopole, 1 (This Way to Hooper ==>>)
W 50189,2,2 (23) - Monopole, 2 (Here is Hooper)
W 50191,2,2 (24) - USS Pisces, 6A (The Control Column)
b 50193 Room Layout Data (00) - USS Pisces, 0 (The Recreation Room)
B 50193,6,6 Draw table (55) with attribute data index of 5, terrain interaction data index of 5 at (11, 19)
B 50199,6,6 Draw large chair (52) with attribute data index of 2, terrain interaction data index of 2 at ( 4, 16), and apply vertical mirror (1)
B 50205,6,6 Draw large chair (52) with attribute data index of 2, terrain interaction data index of 2 at (20, 16)
B 50211,6,6 Draw chandelier (54) with attribute data index of 12, terrain interaction data index of 0 at (13, 7)
B 50217,6,6 Draw left half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (20, 8)
B 50223,6,6 Draw right half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (24, 8), and apply vertical mirror (1)
B 50229,7,7 Draw line from (2, 119) to (2, 0)
B 50236,7,7 Draw line from (5, 119) to (5, 0)
B 50243,6,6 Draw wall at (0, 7)
B 50249,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 92
b 50253 Room Layout Data (01) - USS Pisces, 1 (The Bridge)
B 50253,6,6 Draw Left Half of Planet (50) with attribute data index of 6, terrain interaction data index of 17 at (7, 15)
B 50259,6,6 Draw Right Half of Planet (50) with attribute data index of 6, terrain interaction data index of 17 at (16, 15), and apply vertical mirror (1)
B 50265,6,6 Draw a horizontal line at y = 163 pixels, from x = 0 characters to x = 31 characters
B 50271,6,6 Draw Gordon (or Sarab) at Control Panel (40) with attribute data index of 1, terrain interaction data index of 0 at (5, 18)
B 50277,6,6 Draw Sarab (or Gordon) at Control Panel (40) with attribute data index of 1, terrain interaction data index of 0 at (16, 18), and apply vertical mirror (1)
B 50283,6,6 Draw Left Edge of Viewscreen (61) with attribute data index of 9, terrain interaction data index of 0 at (6, 7)
B 50289,6,6 Draw Right Edge of Viewscreen (61) with attribute data index of 9, terrain interaction data index of 0 at (25, 7), and apply vertical mirror (1)
B 50295,6,6 Draw a horizontal line at y = 56 pixels, from x = 0 characters to x = 31 characters
B 50301,6,6 Draw a horizontal line at y = 61 pixels, from x = 7 characters to x = 24 characters
B 50307,6,6 Draw a horizontal line at y = 62 pixels, from x = 7 characters to x = 24 characters
B 50313,6,6 Draw a horizontal line at y = 63 pixels, from x = 7 characters to x = 24 characters
B 50319,6,6 Draw Wall-Mounted Telephone (49) with attribute data index of 3, terrain interaction data index of 0 at (2, 14)
B 50325,6,6 Draw Balls Picture (68) with attribute data index of 0, terrain interaction data index of 0 at (28, 11)
B 50331,7,7 Start at (0, 22) and print run of 32 characters (char. code 91) (railings along floor)
B 50338,6,6 Move to (5, 21) and print character code 91
B 50344,6,6 Move to (7, 21) and print character code 91
B 50350,6,6 Move to (24, 21) and print character code 91
B 50356,6,6 Move to (26, 21) and print character code 91
B 50362,6,6 Draw (invisible) wall at (0, 7)
B 50368,4,4 Flood room with attribute 70 (yellow INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 92
b 50372 Room Layout Data (02) - USS Pisces, 2 (The Transporter Room)
B 50372,6,6 Draw left half of lower transporter pad (41) with attribute data index of 7, terrain interaction data index of 7 at (10, 18)
B 50378,6,6 Draw right half of lower transporter pad (41) with attribute data index of 7, terrain interaction data index of 7 at (16, 18), and apply vertical mirror (1)
B 50384,6,6 Draw left half of upper transporter pad (41) with attribute data index of 24, terrain interaction data index of 7 at (10, 6), and apply horizontal mirror (2)
B 50390,6,6 Draw right half of upper transporter pad (41) with attribute data index of 24, terrain interaction data index of 7 at (16, 6), and apply horizontal and vertical mirrors (3)
B 50396,7,7 Start at (10, 22) and print run of 12 characters (char. code 92) (base of transporter pad)
B 50403,6,6 Draw left half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (23, 8)
B 50409,6,6 Draw right half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (27, 8), and apply vertical mirror (1)
B 50415,6,6 Draw Wall-Mounted Telephone (49) with attribute data index of 3, terrain interaction data index of 0 at (5, 14)
B 50421,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 92
b 50425 Room Layout Data (03) - USS Pisces, 3 (The Transputer Room)
B 50425,6,6 Draw Left half of transputer panel (56) with attribute data index of 18, terrain interaction data index of 0 at (6, 10)
B 50431,6,6 Draw right half of transputer panel (56) with attribute data index of 18, terrain interaction data index of 0 at (9, 10), and apply vertical mirror (1)
B 50437,6,6 Draw left half of transputer panel (56) with attribute data index of 18, terrain interaction data index of 0 at (20, 10)
B 50443,6,6 Draw right half of transputer panel (56) with attribute data index of 18, terrain interaction data index of 0 at (23, 10), and apply vertical mirror (1)
B 50449,6,6 Draw left half of transputer panel base (65) with attribute data index of 0, terrain interaction data index of 0 at (6, 20)
B 50455,6,6 Draw right half of transputer panel base (65) with attribute data index of 0, terrain interaction data index of 0 at (9, 20), and apply vertical mirror (1)
B 50461,6,6 Draw left half of transputer panel base (65) with attribute data index of 0, terrain interaction data index of 0 at (20, 20)
B 50467,6,6 Draw right half of transputer panel base (65) with attribute data index of 0, terrain interaction data index of 0 at (23, 20), and apply vertical mirror (1)
B 50473,6,6 Draw left half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (12, 8)
B 50479,6,6 Draw right half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (16, 8), and apply vertical mirror (1)
B 50485,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 92
b 50489 Room Layout Data (04) - USS Pisces, 4 (Cargo Hold)
B 50489,6,6 Draw cargo container (57) with attribute data index of 8, terrain interaction data index of 16 at (1, 15)
B 50495,6,6 Draw cargo container (57) with attribute data index of 8, terrain interaction data index of 16 at (11, 15)
B 50501,6,6 Draw wall-mounted rifle (53) with attribute data index of 4, terrain interaction data index of 0 at (22, 10)
B 50507,6,6 Draw wall-mounted rifle (53) with attribute data index of 4, terrain interaction data index of 0 at (24, 10)
B 50513,6,6 Draw wall-mounted rifle (53) with attribute data index of 4, terrain interaction data index of 0 at (26, 10)
B 50519,6,6 Draw left half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (12, 8)
B 50525,6,6 Draw right half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (16, 8), and apply vertical mirror (1)
B 50531,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 86 (yellow INK, red PAPER, BRIGHT), and UDG 92 (bug)
b 50535 Room Layout Data (05) - USS Pisces, 5 (The Airlock)
B 50535,6,6 Draw left half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (23, 8)
B 50541,6,6 Draw right half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (27, 8), and apply vertical mirror (1)
B 50547,6,6 Draw plant (66) with attribute data index of 16, terrain interaction data index of 0 at (10, 16)
B 50553,6,6 Draw plant pot (67) with attribute data index of 0, terrain interaction data index of 0 at (12, 21)
B 50559,6,6 Draw table (55) with attribute data index of 5, terrain interaction data index of 5 at (16, 19)
B 50565,6,6 Draw table (55) with attribute data index of 5, terrain interaction data index of 5 at (23, 19)
B 50571,6,6 Draw table (55) with attribute data index of 5, terrain interaction data index of 5 at (19, 15)
B 50577,6,6 Draw cargo container (57) with attribute data index of 8, terrain interaction data index of 16 at (1, 15)
B 50583,7,7 Draw line from (253, 119) to (253, 24)
B 50590,7,7 Draw line from (250, 119) to (250, 24)
B 50597,6,6 Draw wall at (0, 7)
B 50603,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 92
b 50607 Room Layout Data (06) - USS Pisces, 6 (The Life Boat)
B 50607,6,6 Draw wall-mounted helmet (63) with attribute data index of 22, terrain interaction data index of 0 at (6, 12)
B 50613,6,6 Draw wall-mounted helmet (63) with attribute data index of 21, terrain interaction data index of 0 at (14, 12)
B 50619,6,6 Draw wall-mounted helmet (63) with attribute data index of 19, terrain interaction data index of 0 at (22, 12)
B 50625,6,6 Draw left half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (12, 8)
B 50631,6,6 Draw right half of USS Pisces picture (64) with attribute data index of 17, terrain interaction data index of 0 at (16, 8), and apply vertical mirror (1)
B 50637,7,7 Draw line from (2, 119) to (2, 24)
B 50644,7,7 Draw line from (5, 119) to (5, 24)
B 50651,6,6 Draw wall at (0, 7)
B 50657,6,6 Draw wall at (31, 7)
B 50663,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 111
b 50667 Room Layout Data (07) - Retreat, 0 (Murphy's Moon)
B 50667,6,6 Draw left half of lower transporter pad (41) with attribute data index of 7, terrain interaction data index of 7 at (1, 18), and apply vertical mirror (1)
B 50673,6,6 Draw left half of upper transporter pad (41) with attribute data index of 24, terrain interaction data index of 7 at (1, 6), and apply horizontal and vertical mirrors (3)
B 50679,7,7 Start at (1, 22) and print run of 6 characters (char. code 92) (base of transporter pad)
B 50686,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 50692,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (10, 7), and apply vertical mirror (1)
B 50698,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 7)
B 50704,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (16, 7), and apply vertical mirror (1)
B 50710,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (19, 7), and apply vertical mirror (1)
B 50716,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (22, 7), and apply vertical mirror (1)
B 50722,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (25, 7), and apply vertical mirror (1)
B 50728,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (29, 7)
B 50734,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 50740,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 50746,6,6 Draw security camera (51) with attribute data index of 29, terrain interaction data index of 0 at (27, 11)
B 50752,6,6 Draw wall at (0, 7)
B 50758,4,4 Flood room with attribute 68 (green INK, black PAPER, BRIGHT), draw floor with attribute 96 (black INK, green PAPER, BRIGHT), and UDG 100
b 50762 Room Layout Data (08) - Retreat, 1
B 50762,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (0, 7), and apply vertical mirror (1)
B 50768,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (2, 7)
B 50774,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (5, 7)
B 50780,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 50786,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (10, 7), and apply vertical mirror (1)
B 50792,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (12, 7), and apply vertical mirror (1)
B 50798,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (15, 7)
B 50804,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (17, 7), and apply vertical mirror (1)
B 50810,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (20, 7)
B 50816,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (24, 7), and apply vertical mirror (1)
B 50822,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (28, 7)
B 50828,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (29, 7)
B 50834,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 50840,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 50846,4,4 Flood room with attribute 68 (green INK, black PAPER, BRIGHT), draw floor with attribute 96 (black INK, green PAPER, BRIGHT), and UDG 100
b 50850 Room Layout Data (09) - Retreat, 2 (With Barrier)
B 50850,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (0, 7), and apply vertical mirror (1)
B 50856,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (2, 7)
B 50862,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (5, 7)
B 50868,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 50874,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (10, 7)
B 50880,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (12, 7)
B 50886,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 7)
B 50892,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (16, 7), and apply vertical mirror (1)
B 50898,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (19, 7)
B 50904,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (23, 7), and apply vertical mirror (1)
B 50910,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (27, 7)
B 50916,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (30, 7)
B 50922,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 17), and apply horizontal mirror (2)
B 50928,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (16, 17), and apply horizontal and vertical mirrors (3)
B 50934,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 50940,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 50946,6,6 Draw barrier at (15, 7)
B 50952,4,4 Flood room with attribute 68 (green INK, black PAPER, BRIGHT), draw floor with attribute 96 (black INK, green PAPER, BRIGHT), and UDG 100
b 50956 Room Layout Data (09A) - Retreat, 2 (Without Barrier)
B 50956,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (0, 7), and apply vertical mirror (1)
B 50962,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (2, 7)
B 50968,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (5, 7)
B 50974,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 50980,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (10, 7)
B 50986,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (12, 7)
B 50992,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 7)
B 50998,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (16, 7), and apply vertical mirror (1)
B 51004,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (19, 7)
B 51010,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (23, 7), and apply vertical mirror (1)
B 51016,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (27, 7)
B 51022,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (30, 7)
B 51028,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 17), and apply horizontal mirror (2)
B 51034,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (16, 17), and apply horizontal and vertical mirrors (3)
B 51040,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 51046,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 51052,4,4 Flood room with attribute 68 (green INK, black PAPER, BRIGHT), draw floor with attribute 96 (black INK, green PAPER, BRIGHT), and UDG 100
b 51056 Room Layout Data (10) - Retreat, 3
B 51056,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (0, 7), and apply vertical mirror (1)
B 51062,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (2, 7)
B 51068,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (5, 7)
B 51074,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 51080,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (10, 7), and apply vertical mirror (1)
B 51086,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (12, 7), and apply vertical mirror (1)
B 51092,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (15, 7)
B 51098,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (17, 7), and apply vertical mirror (1)
B 51104,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (20, 7)
B 51110,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (24, 7), and apply vertical mirror (1)
B 51116,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (28, 7)
B 51122,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (29, 7)
B 51128,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 51134,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 51140,6,6 Draw wall at (31, 7)
B 51146,4,4 Flood room with attribute 68 (green INK, black PAPER, BRIGHT), draw floor with attribute 96 (black INK, green PAPER, BRIGHT), and UDG 100
b 51150 Room Layout Data (11) - Starbase 1, 0 (The Transporter Room)
B 51150,6,6 Draw left half of lower transporter pad (41) with attribute data index of 7, terrain interaction data index of 7 at (1, 18), and apply vertical mirror (1)
B 51156,6,6 Draw left half of upper transporter pad (41) with attribute data index of 24, terrain interaction data index of 7 at (1, 6), and apply horizontal and vertical mirrors (3)
B 51162,7,7 Start at (1, 22) and print run of 6 characters (char. code 92) (base of transporter pad)
B 51169,6,6 Draw left half of transputer panel (56) with attribute data index of 18, terrain interaction data index of 0 at (20, 10)
B 51175,6,6 Draw right half of transputer panel (56) with attribute data index of 18, terrain interaction data index of 0 at (23, 10), and apply vertical mirror (1)
B 51181,6,6 Draw left half of transputer panel base (65) with attribute data index of 0, terrain interaction data index of 0 at (20, 20)
B 51187,6,6 Draw right half of transputer panel base (65) with attribute data index of 0, terrain interaction data index of 0 at (23, 20), and apply vertical mirror (1)
B 51193,6,6 Draw wall at (0, 7)
B 51199,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 108
b 51203 Room Layout Data (12) - Starbase 1, 1 (McTablet Takeaway Food)
B 51203,6,6 Draw control panel (75) with attribute data index of 26, terrain interaction data index of 0 at (2, 14)
B 51209,6,6 Draw control panel (75) with attribute data index of 26, terrain interaction data index of 0 at (10, 14)
B 51215,6,6 Draw control panel (75) with attribute data index of 26, terrain interaction data index of 0 at (18, 14)
B 51221,6,6 Draw control panel (75) with attribute data index of 26, terrain interaction data index of 0 at (26, 14)
B 51227,6,6 Draw picture 1 (84) with attribute data index of 0, terrain interaction data index of 0 at (6, 10)
B 51233,6,6 Draw picture 2 (85) with attribute data index of 0, terrain interaction data index of 0 at (21, 10)
B 51239,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 108
b 51243 Room Layout Data (13) - Starbase 1, 2
B 51243,6,6 Draw table (55) with attribute data index of 5, terrain interaction data index of 5 at (11, 19)
B 51249,6,6 Draw picture 1 (84) with attribute data index of 0, terrain interaction data index of 0 at (6, 10)
B 51255,6,6 Draw picture 2 (85) with attribute data index of 0, terrain interaction data index of 0 at (21, 10)
B 51261,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 108
b 51265 Room Layout Data (14) - Starbase 1, 3
B 51265,6,6 Draw picture 1 (84) with attribute data index of 0, terrain interaction data index of 0 at (4, 10)
B 51271,6,6 Draw picture 2 (85) with attribute data index of 0, terrain interaction data index of 0 at (23, 10)
B 51277,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 108
b 51281 Room Layout Data (15) - Starbase 1, 4 (Fuel and Cargo Area)
B 51281,6,6 Draw cargo container (57) with attribute data index of 8, terrain interaction data index of 16 at (1, 15)
B 51287,6,6 Draw patterned column (82) with attribute data index of 33, terrain interaction data index of 0 at (12, 17)
B 51293,6,6 Draw patterned column (82) with attribute data index of 33, terrain interaction data index of 0 at (18, 17), and apply vertical mirror (1)
B 51299,6,6 Draw cargo container (57) with attribute data index of 8, terrain interaction data index of 16 at (21, 15)
B 51305,6,6 Draw wall at (31, 7)
B 51311,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 108
b 51315 Room Layout Data (16) - Outpost, 0 (Ye Olde Transporter)
B 51315,6,6 Draw left half of lower transporter pad (41) with attribute data index of 7, terrain interaction data index of 7 at (1, 18), and apply vertical mirror (1)
B 51321,6,6 Draw left half of upper transporter pad (41) with attribute data index of 24, terrain interaction data index of 7 at (1, 6), and apply horizontal and vertical mirrors (3)
B 51327,7,7 Start at (1, 22) and print run of 6 characters (char. code 92) (base of transporter pad)
B 51334,6,6 Draw wall at (0, 7)
B 51340,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (13, 11)
B 51346,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (16, 11), and apply vertical mirror (1)
B 51352,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (29, 11)
B 51358,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 109
b 51362 Room Layout Data (17) - Outpost, 1 (The Main Defence System)
B 51362,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (13, 11), and apply horizontal mirror (2)
B 51368,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (16, 11), and apply horizontal and vertical mirrors (3)
B 51374,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (0, 11), and apply vertical mirror (1)
B 51380,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (29, 11)
B 51386,6,6 Draw left half of reel-to-reel tape device (87) with attribute data index of 0, terrain interaction data index of 0 at (7, 19)
B 51392,6,6 Draw right half of reel-to-reel tape device (87) with attribute data index of 0, terrain interaction data index of 0 at (10, 19), and apply vertical mirror (1)
B 51398,6,6 Draw left half of reel-to-reel tape device (87) with attribute data index of 0, terrain interaction data index of 0 at (13, 19)
B 51404,6,6 Draw right half of reel-to-reel tape device (87) with attribute data index of 0, terrain interaction data index of 0 at (16, 19), and apply vertical mirror (1)
B 51410,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 109
b 51414 Room Layout Data (18) - Outpost, 2
B 51414,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (13, 11)
B 51420,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (16, 11), and apply vertical mirror (1)
B 51426,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (0, 11), and apply vertical mirror (1)
B 51432,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (29, 11)
B 51438,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 109
b 51442 Room Layout Data (19) - Outpost, 3 (The Proof of Power)
B 51442,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (13, 11)
B 51448,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (16, 11), and apply vertical mirror (1)
B 51454,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (0, 11), and apply vertical mirror (1)
B 51460,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (29, 11)
B 51466,6,6 Draw Tyme Guardians' Symbol 2 (89) with attribute data index of 35, terrain interaction data index of 18 at (1, 20), and apply horizontal mirror (2)
B 51472,6,6 Draw Tyme Guardians' Symbol 2 (89) with attribute data index of 35, terrain interaction data index of 18 at (7, 20), and apply horizontal mirror (2)
B 51478,6,6 Draw Tyme Guardians' Symbol 2 (89) with attribute data index of 35, terrain interaction data index of 18 at (13, 20), and apply horizontal mirror (2)
B 51484,6,6 Draw Tyme Guardians' Symbol 2 (89) with attribute data index of 35, terrain interaction data index of 18 at (19, 20), and apply horizontal mirror (2)
B 51490,6,6 Draw Tyme Guardians' Symbol 2 (89) with attribute data index of 35, terrain interaction data index of 18 at (25, 20), and apply horizontal mirror (2)
B 51496,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 109
b 51500 Room Layout Data (20) - Outpost, 4 (The Tyme Guardians)
B 51500,6,6 Draw left half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (13, 11)
B 51506,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (16, 11), and apply vertical mirror (1)
B 51512,6,6 Draw right half of Tyme Guardians' Symbol 1 (88) with attribute data index of 34, terrain interaction data index of 0 at (0, 11), and apply vertical mirror (1)
B 51518,6,6 Draw wall at (31, 7)
B 51524,6,6 Draw Tyme Guardian (73) with attribute data index of 0, terrain interaction data index of 0 at (6, 18)
B 51530,6,6 Draw Tyme Guardian (73) with attribute data index of 0, terrain interaction data index of 0 at (11, 18)
B 51536,6,6 Draw Tyme Guardian (73) with attribute data index of 0, terrain interaction data index of 0 at (16, 18)
B 51542,6,6 Draw Tyme Guardian (73) with attribute data index of 0, terrain interaction data index of 0 at (21, 18)
B 51548,6,6 Draw Tyme Guardian (73) with attribute data index of 0, terrain interaction data index of 0 at (26, 18)
B 51554,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 109
b 51558 Room Layout Data (21) - Monopole, 0 (Hooper's Emergency Exit)
B 51558,6,6 Draw left half of lower transporter pad (41) with attribute data index of 7, terrain interaction data index of 7 at (1, 18), and apply vertical mirror (1)
B 51564,6,6 Draw left half of upper transporter pad (41) with attribute data index of 24, terrain interaction data index of 7 at (1, 6), and apply horizontal and vertical mirrors (3)
B 51570,7,7 Start at (1, 22) and print run of 6 characters (char. code 92) (base of transporter pad)
B 51577,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 51583,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (10, 7), and apply vertical mirror (1)
B 51589,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 7)
B 51595,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (16, 7), and apply vertical mirror (1)
B 51601,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (19, 7), and apply vertical mirror (1)
B 51607,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (22, 7), and apply vertical mirror (1)
B 51613,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (25, 7), and apply vertical mirror (1)
B 51619,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (29, 7)
B 51625,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 51631,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 51637,6,6 Draw security camera (51) with attribute data index of 29, terrain interaction data index of 0 at (27, 11)
B 51643,6,6 Draw wall at (0, 7)
B 51649,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 120 (black INK, white PAPER, BRIGHT), and UDG 100
b 51653 Room Layout Data (22) - Monopole, 1 (This Way to Hooper ==>>)
B 51653,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (0, 7), and apply vertical mirror (1)
B 51659,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (2, 7)
B 51665,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (5, 7)
B 51671,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 51677,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (10, 7), and apply vertical mirror (1)
B 51683,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (12, 7), and apply vertical mirror (1)
B 51689,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (15, 7)
B 51695,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (17, 7), and apply vertical mirror (1)
B 51701,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (20, 7)
B 51707,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (24, 7), and apply vertical mirror (1)
B 51713,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (28, 7)
B 51719,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (29, 7)
B 51725,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (0, 18), and apply horizontal mirror (2)
B 51731,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (3, 19), and apply horizontal mirror (2)
B 51737,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (4, 18), and apply horizontal mirror (2)
B 51743,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 18), and apply horizontal mirror (2)
B 51749,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (10, 17), and apply horizontal mirror (2)
B 51755,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 17), and apply horizontal and vertical mirrors (3)
B 51761,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (16, 17), and apply horizontal mirror (2)
B 51767,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (19, 17), and apply horizontal and vertical mirrors (3)
B 51773,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (22, 18), and apply horizontal mirror (2)
B 51779,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (26, 20), and apply horizontal mirror (2)
B 51785,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (28, 19), and apply horizontal mirror (2)
B 51791,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (29, 19), and apply horizontal mirror (2)
B 51797,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (31, 19), and apply horizontal mirror (2)
B 51803,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 51809,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 51815,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 120 (black INK, white PAPER, BRIGHT), and UDG 100
b 51819 Room Layout Data (23) - Monopole, 2 (Here is Hooper)
B 51819,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (0, 7)
B 51825,6,6 Draw cavern ceiling part 1 (42) with attribute data index of 0, terrain interaction data index of 0 at (2, 7)
B 51831,6,6 Draw cavern ceiling part 2 (43) with attribute data index of 0, terrain interaction data index of 0 at (5, 7)
B 51837,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (7, 7)
B 51843,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (10, 7)
B 51849,6,6 Draw cavern ceiling part 5 (46) with attribute data index of 0, terrain interaction data index of 0 at (12, 7)
B 51855,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (13, 7)
B 51861,6,6 Draw cavern ceiling part 6 (47) with attribute data index of 0, terrain interaction data index of 0 at (16, 7)
B 51867,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (19, 7)
B 51873,6,6 Draw cavern ceiling part 7 (48) with attribute data index of 0, terrain interaction data index of 0 at (23, 7)
B 51879,6,6 Draw cavern ceiling part 3 (44) with attribute data index of 0, terrain interaction data index of 0 at (27, 7)
B 51885,6,6 Draw cavern ceiling part 4 (45) with attribute data index of 0, terrain interaction data index of 0 at (30, 7)
B 51891,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (8, 13)
B 51897,6,6 Draw wall-mounted plaque (60) with attribute data index of 11, terrain interaction data index of 0 at (23, 13)
B 51903,6,6 Draw Hooper (59) with attribute data index of 27, terrain interaction data index of 0 at (20, 16)
B 51909,6,6 Draw wall at (31, 7)
B 51915,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 120 (black INK, white PAPER, BRIGHT), and UDG 100
b 51919 Room Layout Data (24) - USS Pisces, 6A (The Control Column)
B 51919,6,6 Draw Tyme Guardians' Symbol 2 (89) with attribute data index of 35, terrain interaction data index of 0 at (13, 11)
B 51925,6,6 Draw Tyme Machine Control Column block (67) with attribute data index of 0, terrain interaction data index of 0 at (8, 15)
B 51931,6,6 Draw Tyme Machine Control Column block (67) with attribute data index of 0, terrain interaction data index of 0 at (8, 17)
B 51937,6,6 Draw Tyme Machine Control Column block (67) with attribute data index of 0, terrain interaction data index of 0 at (8, 19)
B 51943,6,6 Draw Tyme Machine Control Column block (67) with attribute data index of 0, terrain interaction data index of 0 at (8, 21)
B 51949,6,6 Draw wall-mounted rifle (53) with attribute data index of 4, terrain interaction data index of 0 at (22, 10)
B 51955,6,6 Draw wall-mounted rifle (53) with attribute data index of 4, terrain interaction data index of 0 at (24, 10)
B 51961,6,6 Draw wall-mounted rifle (53) with attribute data index of 4, terrain interaction data index of 0 at (26, 10)
B 51967,7,7 Draw line from (2, 119) to (2, 24)
B 51974,7,7 Draw line from (5, 119) to (5, 24)
B 51981,6,6 Draw wall at (0, 7)
B 51987,6,6 Draw wall at (31, 7)
B 51993,4,4 Flood room with attribute 71 (white INK, black PAPER, BRIGHT), draw floor with attribute 94 (yellow INK, magenta PAPER, BRIGHT), and UDG 110
b 51997 Lookup Table for RLE Attribute Data (Room Layout Graphics)
D 51997 Each entry is comprised of four bytes:
B 51997,4,4 (00) - #R52141 - No colouring
B 52001,4,4 (01) - #R52142 - Gordon / Sarab at Helm
B 52005,4,4 (02) - #R52167 - Large Chair
B 52009,4,4 (03) - #R52184 - Wall-Mounted Telephone
B 52013,4,4 (04) - #R52187 - Wall-Mounted Rifle
B 52017,4,4 (05) - #R52192 - Table
B 52021,4,4 (06) - #R52195 - Half of Planet
B 52025,4,4 (07) - #R52198 - Lower Part of Transporter Pad
B 52029,4,4 (08) - #R52205 - Cargo Container
B 52033,4,4 (09) - #R52212 - Left / Right Edge of Viewscreen
B 52037,4,4 (10) - #R52221 - Unused
B 52041,4,4 (11) - #R52224 - Wall-Mounted Plaque
B 52045,4,4 (12) - #R52229 - Chandelier
B 52049,4,4 (13) - #R52254 - Barrier
B 52053,4,4 (14) - #R52261 - Wall (1, full-length)
B 52057,4,4 (15) - #R52261 - Wall (2, short)
B 52061,4,4 (16) - #R52264 - Plant
B 52065,4,4 (17) - #R52267 - Half of USS Pisces Picture
B 52069,4,4 (18) - #R52278 - Half of Transputer Panel
B 52073,4,4 (19) - #R52307 - Wall-Mounted Helmet (1)
B 52077,4,4 (20) - #R52310 - Unused
B 52081,4,4 (21) - #R52313 - Wall-Mounted Helmet (2)
B 52085,4,4 (22) - #R52316 - Wall-Mounted Helmet (3)
B 52089,4,4 (23) - #R52319 - Wall (3) (invisible, used to paint upper part of The Bridge)
B 52093,4,4 (24) - #R52322 - Upper Part of Transporter Pad
B 52097,4,4 (25) - Unused
B 52101,4,4 (26) - #R52329 - Control Panel
B 52105,4,4 (27) - #R52340 - Hooper
B 52109,4,4 (28) - Unused
B 52113,4,4 (29) - #R52367 - Security Camera
B 52117,4,4 (30) - #R52370 - Wall (4, full-length)
B 52121,4,4 (31) - #R52373 - Wall (5, full-length)
B 52125,4,4 (32) - Unused
B 52129,4,4 (33) - #R52376 - Patterned Column
B 52133,4,4 (34) - #R52379 - Half of Tyme Guardians' Symbol (1)
B 52137,4,4 (35) - #R52390 - Half of Tyme Guardians' Symbol (2)
b 52141 RLE Attribute Data (Room Layout Graphics)
D 52141 Run Length Encoded data used to paint attributes, with two bytes per entry (or a one-byte end marker represented by a zero). Records are comprised of: (00) - No colouring
B 52141,1,1 End Marker
N 52142 (01) - Gordon / Sarab at Helm
B 52142,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52144,2,2 10 x 69 (cyan INK, black PAPER, BRIGHT)
B 52146,2,2 4 x 70 (yellow INK, black PAPER, BRIGHT)
B 52148,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 52150,2,2 2 x 69 (cyan INK, black PAPER, BRIGHT)
B 52152,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 52154,2,2 6 x 70 (yellow INK, black PAPER, BRIGHT)
B 52156,2,2 4 x 71 (white INK, black PAPER, BRIGHT)
B 52158,2,2 3 x 78 (yellow INK, blue PAPER, BRIGHT)
B 52160,2,2 4 x 70 (yellow INK, black PAPER, BRIGHT)
B 52162,2,2 4 x 68 (green INK, black PAPER, BRIGHT)
B 52164,2,2 3 x 70 (yellow INK, black PAPER, BRIGHT)
B 52166,1,1 End Marker
N 52167 (02) - Large Chair
B 52167,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 52169,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 52171,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 52173,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 52175,2,2 3 x 71 (white INK, black PAPER, BRIGHT)
B 52177,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 52179,2,2 10 x 68 (green INK, black PAPER, BRIGHT)
B 52181,2,2 10 x 70 (yellow INK, black PAPER, BRIGHT)
B 52183,1,1 End Marker
N 52184 (03) - Wall-Mounted Telephone
B 52184,2,2 8 x 66 (red INK, black PAPER, BRIGHT)
B 52186,1,1 End Marker
N 52187 (04) - Wall-Mounted Rifle
B 52187,2,2 8 x 69 (cyan INK, black PAPER, BRIGHT)
B 52189,2,2 10 x 70 (yellow INK, black PAPER, BRIGHT)
B 52191,1,1 End Marker
N 52192 (05) - Table
B 52192,2,2 7 x 66 (red INK, black PAPER, BRIGHT)
B 52194,1,1 End Marker
N 52195 (06) - Half of Planet
B 52195,2,2 27 x 68 (green INK, black PAPER, BRIGHT)
B 52197,1,1 End Marker
N 52198 (07) - Half of Transporter Pad
B 52198,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 52200,2,2 5 x  7 (white INK, black PAPER)
B 52202,2,2 24 x 70 (yellow INK, black PAPER, BRIGHT)
B 52204,1,1 End Marker
N 52205 (08) - Cargo Container
B 52205,2,2 36 x 69 (cyan INK, black PAPER, BRIGHT)
B 52207,2,2 9 x 70 (yellow INK, black PAPER, BRIGHT)
B 52209,2,2 27 x 69 (cyan INK, black PAPER, BRIGHT)
B 52211,1,1 End Marker
N 52212 (09) - Left / Right Edge of Viewscreen
B 52212,2,2 5 x 69 (cyan INK, black PAPER, BRIGHT)
B 52214,2,2 1 x 101 (cyan INK, green PAPER, BRIGHT)
B 52216,2,2 1 x 93 (cyan INK, magenta PAPER, BRIGHT)
B 52218,2,2 4 x 69 (cyan INK, black PAPER, BRIGHT)
B 52220,1,1 End Marker
N 52221 (10) - Unused
B 52221,2,2 32 x 69 (cyan INK, black PAPER, BRIGHT)
B 52223,1,1 End Marker
N 52224 (11) - Wall-Mounted Plaque
B 52224,2,2 2 x 70 (yellow INK, black PAPER, BRIGHT)
B 52226,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 52228,1,1 End Marker
N 52229 (12) - Chandelier
B 52229,2,2 4 x 69 (cyan INK, black PAPER, BRIGHT)
B 52231,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52233,2,2 1 x 69 (cyan INK, black PAPER, BRIGHT)
B 52235,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52237,2,2 1 x 69 (cyan INK, black PAPER, BRIGHT)
B 52239,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52241,2,2 4 x 69 (cyan INK, black PAPER, BRIGHT)
B 52243,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52245,2,2 1 x 69 (cyan INK, black PAPER, BRIGHT)
B 52247,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52249,2,2 1 x 69 (cyan INK, black PAPER, BRIGHT)
B 52251,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52253,1,1 End Marker
N 52254 (13) - Barrier
B 52254,2,2 6 x 124 (green INK, white PAPER, BRIGHT)
B 52256,2,2 20 x 120 (black INK, white PAPER, BRIGHT)
B 52258,2,2 6 x 124 (green INK, white PAPER, BRIGHT)
B 52260,1,1 End Marker
N 52261 (14 / 15) - Wall (1, full-length / 2, short)
B 52261,2,2 17 x 112 (black INK, yellow PAPER, BRIGHT)
B 52263,1,1 End Marker
N 52264 (16) - Plant
B 52264,2,2 30 x 68 (green INK, black PAPER, BRIGHT)
B 52266,1,1 End Marker
N 52267 (17) - USS Pisces Picture
B 52267,2,2 5 x 67 (magenta INK, black PAPER, BRIGHT)
B 52269,2,2 3 x 68 (green INK, black PAPER, BRIGHT)
B 52271,2,2 1 x 67 (magenta INK, black PAPER, BRIGHT)
B 52273,2,2 3 x 68 (green INK, black PAPER, BRIGHT)
B 52275,2,2 4 x 67 (magenta INK, black PAPER, BRIGHT)
B 52277,1,1 End Marker
N 52278 (18) - Transputer Panel
B 52278,2,2 4 x 70 (yellow INK, black PAPER, BRIGHT)
B 52280,2,2 2 x 66 (red INK, black PAPER, BRIGHT)
B 52282,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52284,2,2 2 x 66 (red INK, black PAPER, BRIGHT)
B 52286,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52288,2,2 2 x 67 (magenta INK, black PAPER, BRIGHT)
B 52290,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52292,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 52294,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52296,2,2 2 x 66 (red INK, black PAPER, BRIGHT)
B 52298,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52300,2,2 2 x  7 (white INK, black PAPER)
B 52302,2,2 3 x 70 (yellow INK, black PAPER, BRIGHT)
B 52304,2,2 6 x 69 (cyan INK, black PAPER, BRIGHT)
B 52306,1,1 End Marker
N 52307 (19) - Wall-Mounted Helmet (1)
B 52307,2,2 20 x 71 (white INK, black PAPER, BRIGHT)
B 52309,1,1 End Marker
N 52310 (20) - Unused
B 52310,2,2 20 x 70 (yellow INK, black PAPER, BRIGHT)
B 52312,1,1 End Marker
N 52313 (21) - Wall-Mounted Helmet (2)
B 52313,2,2 20 x 69 (cyan INK, black PAPER, BRIGHT)
B 52315,1,1 End Marker
N 52316 (22) - Wall-Mounted Helmet (3)
B 52316,2,2 20 x 68 (green INK, black PAPER, BRIGHT)
B 52318,1,1 End Marker
N 52319 (23) - Wall (3) (invisible, used to paint upper part of The Bridge)
B 52319,2,2 32 x 69 (cyan INK, black PAPER, BRIGHT)
B 52321,1,1 End Marker
N 52322 (24) - Half of Transporter Pad
B 52322,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 52324,2,2 5 x  7 (white INK, black PAPER)
B 52326,2,2 18 x 70 (yellow INK, black PAPER, BRIGHT)
B 52328,1,1 End Marker
N 52329 (26) - Control Panel
B 52329,2,2 4 x 68 (green INK, black PAPER, BRIGHT)
B 52331,2,2 9 x 70 (yellow INK, black PAPER, BRIGHT)
B 52333,2,2 2 x 101 (cyan INK, green PAPER, BRIGHT)
B 52335,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52337,2,2 4 x 77 (cyan INK, blue PAPER, BRIGHT)
B 52339,1,1 End Marker
N 52340 (27) - Hooper
B 52340,2,2 2 x 71 (white INK, black PAPER, BRIGHT)
B 52342,2,2 3 x 70 (yellow INK, black PAPER, BRIGHT)
B 52344,2,2 1 x 68 (green INK, black PAPER, BRIGHT)
B 52346,2,2 5 x 71 (white INK, black PAPER, BRIGHT)
B 52348,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52350,2,2 5 x 71 (white INK, black PAPER, BRIGHT)
B 52352,2,2 1 x 70 (yellow INK, black PAPER, BRIGHT)
B 52354,2,2 2 x  7 (white INK, black PAPER)
B 52356,2,2 1 x 71 (white INK, black PAPER, BRIGHT)
B 52358,2,2 2 x 67 (magenta INK, black PAPER, BRIGHT)
B 52360,2,2 7 x 70 (yellow INK, black PAPER, BRIGHT)
B 52362,2,2 6 x 69 (cyan INK, black PAPER, BRIGHT)
B 52364,2,2 6 x 71 (white INK, black PAPER, BRIGHT)
B 52366,1,1 End Marker
N 52367 (29) - Security Camera
B 52367,2,2 15 x 71 (white INK, black PAPER, BRIGHT)
B 52369,1,1 End Marker
N 52370 (30) - Wall (4, full-length)
B 52370,2,2 17 x 127 (white INK, white PAPER, BRIGHT)
B 52372,1,1 End Marker
N 52373 (31) - Wall (5, full-length)
B 52373,2,2 17 x 100 (green INK, green PAPER, BRIGHT)
B 52375,1,1 End Marker
N 52376 (33) - Patterned Column
B 52376,2,2 18 x 66 (red INK, black PAPER, BRIGHT)
B 52378,1,1 End Marker
N 52379 (34) - Tyme Guardians' Symbol (1)
B 52379,2,2 8 x  2 (red INK, black PAPER)
B 52381,2,2 1 x 69 (cyan INK, black PAPER, BRIGHT)
B 52383,2,2 2 x  2 (red INK, black PAPER)
B 52385,2,2 1 x 69 (cyan INK, black PAPER, BRIGHT)
B 52387,2,2 3 x  2 (red INK, black PAPER)
B 52389,1,1 End Marker
N 52390 (35) - Tyme Guardians' Symbol (2)
B 52390,2,2 2 x 68 (green INK, black PAPER, BRIGHT)
B 52392,2,2 2 x 66 (red INK, black PAPER, BRIGHT)
B 52394,2,2 14 x 68 (green INK, black PAPER, BRIGHT)
B 52396,1,1 End Marker
b 52397 Lookup Table for RLE Terrain Interaction Parameter Data (Room Layout Graphics)
D 52397 Each entry is comprised of four bytes:
B 52397,4,4 (00) - #R52141 - No interaction
B 52401,4,4 (01) - #R52142 - Unused
B 52405,4,4 (02) - #R52473 - Large Chair
B 52409,4,4 (03) - #R52184 - Unused
B 52413,4,4 (04) - #R52187 - Unused
B 52417,4,4 (05) - #R52486 - Table
B 52421,4,4 (06) - #R52195 - Unused
B 52425,4,4 (07) - #R52489 - Half of Transporter Pad (Upper or Lower)
B 52429,4,4 (08) - #R52205 - Unused
B 52433,4,4 (09) - #R52212 - Unused
B 52437,4,4 (10) - #R52221 - Unused
B 52441,4,4 (11) - #R52224 - Unused
B 52445,4,4 (12) - #R52229 - Unused
B 52449,4,4 (13) - #R52494 - Barrier
B 52453,4,4 (14) - #R52497 - Wall (1, full-length)
B 52457,4,4 (15) - #R52497 - Wall (2, short)
B 52461,4,4 (16) - #R52500 - Cargo Container
B 52465,4,4 (17) - #R52505 - Half of Planet
B 52469,4,4 (18) - #R52508 - Tyme Guardians' Symbol (2)
b 52473 RLE Terrain Interaction Parameter Data (Room Layout Graphics)
D 52473 Run Length Encoded data used to paint terrain interaction parameters, with two bytes per entry (or a one-byte end marker represented by a zero). Records are comprised of: (02) - Large Chair
B 52473,2,2 9 x 0 (no interaction)
B 52475,2,2 1 x 255 (impassable horizontally, upwards and downwards / preserve attribute)
B 52477,2,2 3 x 0 (no interaction)
B 52479,2,2 2 x 255 (impassable horizontally, upwards and downwards / preserve attribute)
B 52481,2,2 5 x 0 (no interaction)
B 52483,2,2 5 x 128 (impassable downwards)
B 52485,1,1 End Marker
N 52486 (05) - Table
B 52486,2,2 7 x 128 (impassable downwards)
B 52488,1,1 End Marker
N 52489 (07) - Transporter Pad
B 52489,2,2 7 x 0 (no interaction)
B 52491,2,2 5 x 128 (impassable downwards)
B 52493,1,1 End Marker
N 52494 (13) - Barrier
B 52494,2,2 32 x 96 (impassable horizontally / preserve attribute)
B 52496,1,1 End Marker
N 52497 (14 / 15) - Wall (1, full-length) / Wall (2, short)
B 52497,2,2 17 x 96 (impassable horizontally / preserve attribute)
B 52499,1,1 End Marker
N 52500 (16) - Cargo Container
B 52500,2,2 3 x 0 (no interaction)
B 52502,2,2 3 x 128 (impassable downwards)
B 52504,1,1 End Marker
N 52505 (17) - Half of Planet
B 52505,2,2 27 x 127 (impassable horizontally and upwards / preserve attribute)
B 52507,1,1 End Marker
N 52508 (18) - Tyme Guardians' Symbol (2)
B 52508,2,2 12 x 0 (no interaction)
B 52510,2,2 6 x 128 (impassable downwards)
B 52512,1,1 End Marker
c 52513 Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode off and Draw a Graphic
D 52513 Used by the routine at #R28631.
C 52513,1 Load #R52672 with opcode for "NOP"...
C 52514,3 ...
C 52517,1 Load #R52672 and #R52672 with opcode for "NOP"
C 52518,1 ...
C 52519,3 ...
C 52522,3 Reset both Horizontal and Vertical Mirror Flags
C 52525,3 Set Pixel Row Counter to zero
C 52528,4 Load BC with x- and y-coordinates of graphic to draw
C 52532,3 Jump to #R52635 (draw the graphic then return)
c 52535 Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode off and Draw a Graphic
D 52535 Used by the routine at #R28631.
C 52535,2 Load #R52672 with opcode for "CALL"...
C 52537,3 ...
C 52540,3 Load #R52672 (i.e. operand of instruction at #R52672) with address of start of "Reverse the order of the bits in A" routine...
C 52543,3 ...
C 52546,1 Set Pixel Row Counter to zero...
C 52547,3 ...
C 52550,1 Set Apply Vertical Mirror Flag and reset Apply Horizontal Mirror Flag...
C 52551,3 ...
C 52554,3 Load B with y-coordinate of graphic to draw...
C 52557,1 ...
C 52558,3 Load C with x-coordinate of graphic to draw...
C 52561,1 ...and decrease by one...
C 52562,1 ...
C 52563,3 Jump to #R52635 (draw the graphic then return)
c 52566 Room Drawing Set "Apply Vertical Mirror" Mode off, "Apply Horizontal Mirror" Mode on and Draw a Graphic
D 52566 Used by the routine at #R28631.
C 52566,1 Load #R52672 with opcode for "NOP"...
C 52567,3 ...
C 52570,1 Load #R52672 and #R52672 with opcode for "NOP"
C 52571,1 ...
C 52572,3 ...
C 52575,2 Reset Apply Vertical Mirror Flag and set Apply Horizontal Mirror Flag...
C 52577,3 ...
C 52580,2 Set Pixel Row Counter to 7...
C 52582,3 ...
C 52585,3 Load C with x-coordinate of left edge of current graphic to draw...
C 52588,1 ...
C 52589,3 Load B with y-coordinate + 1 for current graphic...
C 52592,1 ...
C 52593,3 Jump to #R52622 (set coordinates, draw the graphic then return)
c 52596 Room Drawing Set "Apply Vertical Mirror" Mode on, "Apply Horizontal Mirror" Mode on and Draw a Graphic
D 52596 Used by the routine at #R28631.
C 52596,2 Load #R52672 with opcode for "CALL"...
C 52598,3 ...
C 52601,3 Load #R52672 (i.e. operand of instruction at #R52672) with address of start of "Reverse the order of the bits in A" routine...
C 52604,3 ...
C 52607,2 Set Pixel Row Counter to 7...
C 52609,3 ...
C 52612,2 Set both Horizontal and Vertical Mirror Flags...
C 52614,3 ...
C 52617,4 Load BC with coordinates (each +1) of bottom-right of graphic to draw
C 52621,1 Decrease x-coordinate by one
N 52622 This entry point is used by the routine at #R52566.
C 52622,4 Store coordinates at which to draw graphic at #R23444
C 52626,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 52629,2 Advance HL down to bottom pixel row in its current character block (as we are drawing up from the bottom)...
C 52631,1 ...
C 52632,1 ...
C 52633,2 Jump to #R52642 (draw the graphic then return)
c 52635 Room Drawing Draw a Graphic
D 52635 Used by the routines at #R52513 and #R52535. Input:  BC  x- and y-coordinates HL  (Entry at #R52642 only) Address in Display File to start drawing
C 52635,4 Store x- and y-coordinates of character block currently being drawn at #R23444
C 52639,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
N 52642 This entry point is used by the routine at #R52596.
C 52642,1 Store HL (address in Display File to print character)
C 52643,3 Load HL with 52717 (address of "Advance HL to next Display File Address to be drawn to (Apply Horizontal Mirror Flag reset)" routine)
C 52646,3 Load A with Apply Horizontal and Apply Vertical Mirror Flags
C 52649,2 If Apply Horizontal Mirror Flag is reset...
C 52651,2 ...then skip ahead to #R52656
C 52653,3 Load HL with 52820 (address of "Advance HL to next Display File Address to be drawn to (Apply Horizontal Mirror Flag set)" routine)
C 52656,3 Change destination for JP instruction at #R52714 to value in HL...
C 52659,1 Restore HL (address in Display File to print character)
C 52660,4 Load DE with graphic data address
N 52664 This entry point is used by the routine at #R52689.
C 52664,1 Load A with a byte of graphic data
C 52665,1 If data is zero...
C 52666,2 ...then read repeat counter value, x, and draw x rows of reset pixels
C 52668,2 If data is 255...
C 52670,2 ...then read repeat counter value, x, and draw x rows of set pixels
N 52672 The three-byte instruction at #R52672 is modified by the instructions at #R52514, #R52537, #R52567 and #R52598. Initially it is as shown below, however upon modification it can take the following forms: #TABLE(default,centre,:w) { =h Instruction | =h Mirror Options | =h Effect } { #R52514 | None | NOP / NOP / NOP (do nothing) } { #R52537 | Apply Vertical | CALL #R52924 (Reverse the order of the bits in A) } { #R52567 | Apply Horizontal | NOP / NOP / NOP (do nothing) } { #R52598 | Both | CALL #R52924 (Reverse the order of the bits in A) } TABLE#
C 52672,3 Reverse the order of the bits in A [This instruction is modified by the instructions at #R52514, #R52537, #R52567 and #R52598]
C 52675,3 Load byte of graphic data in A into Display File address in HL
C 52678,1 Advance DE to next byte of graphic data
C 52679,3 Advance HL to next location in Display File (up or down one pixel)...
C 52682,3 ...and if this new location is not outside dimensions of the graphic then loop back to #R52664
N 52685 This entry point is used by the routine at #R52689.
C 52685,1 Return
c 52686 Load Contents of A into Memory Location Pointed to by HL
D 52686 Used by the routines at #R52635 and #R52689. Input:  A  A byte of (e.g. graphic) data HL  An address (e.g. in Display File)
C 52686,1 Do nothing (see trivia)
C 52687,1 Load byte of graphic data into Display File address HL
C 52688,1 Return
c 52689 Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Reset Pixels
D 52689 Used by the routine at #R52635. Input:  DE  Current position in graphic data
C 52689,2 Set C to zero (all bits reset)
N 52691 This entry point is used by the routine at #R52710.
C 52691,1 Advance graphic data pointer
C 52692,1 Load next data byte (repeat counter) into A
C 52693,1 Advance graphic data pointer
C 52694,1 Load B (repeat counter) with value in A
C 52695,1 Load A with zero (i.e. all eight pixel bits reset)
C 52696,3 Load byte of graphic data in A into Display File address in HL
C 52699,3 Advance HL to next location in Display File (up or down one pixel)...
C 52702,3 ...and if this new location is outside dimensions of the graphic then jump to #R52685 (return)
C 52705,2 Decrease repeat counter and loop back to #R52695 if not zero
C 52707,3 Jump back to #R52664 to process next graphic data byte
c 52710 Read (From Graphic Data) Repeat Counter Value, x, and Draw x Rows of Set Pixels
D 52710 Used by the routine at #R52635.
C 52710,2 Load C with 255 (all bits set)
C 52712,2 Read repeat counter value, x, and draw x rows of set pixels
c 52714 Room Drawing Jump to routine to advance HL to next Display File address to be drawn to
D 52714 Destination of jump (i.e. WORD value at 52715) depends upon whether or not the Apply Horizontal Mirror Flag is set. If the flag is set, then the jump destination is #R52820, otherwise, the jump destination is #R52717. Input: HL A Display File address
C 52714,3 Advance HL to next Display File Address to be drawn to, depending upon state of Apply Horizontal Mirror Flag and return
c 52717 Room Drawing Advance HL to next Display File address to be drawn to (Apply Horizontal Mirror Flag reset)
D 52717 Used when Apply Horizontal Mirror Flag is reset Input:  HL  A Display File address Output: A  1 (if returning via #R52792, drawing complete), otherwise zero F  Zero Flag reset (if returning via #R52792, drawing complete)
C 52717,3 Increase Pixel Row Counter...
C 52720,1 ...
C 52721,2 ...and reset to zero if it exceeds 7...
C 52723,3 ...
C 52726,2 If new value of Pixel Row Counter is zero (i.e. we have rolled over to a new character block) then advance HL to next character block to be drawn and return
C 52728,1 Increase Display File address by 256 bytes (i.e. move to next pixel row down)
C 52729,1 Set A to zero
C 52730,1 Return
N 52731 This next section advances HL to next character block to be drawn
C 52731,3 Load A with Horizontal and Vertical Mirror Flags
C 52734,2 If Apply Vertical Mirror Flag is set...
C 52736,3 ...then skip ahead to #R52793
C 52739,1 Store BC
C 52740,3 Load x-coordinate of character block currently being drawn into A...
C 52743,1 ...increase by one...
C 52744,1 ...and load into B
C 52745,3 Load (x-coordinate + 1) of right of graphic being drawn into A
C 52748,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's right edge)...
C 52749,2 ...then jump to #R52765
C 52751,1 Store increased x-coordinate at #R23444...
C 52752,3 ...
C 52755,4 Load BC with coordinates of new character block to draw
C 52759,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 52762,1 Set A to zero
C 52763,1 Restore BC
C 52764,1 Return
N 52765 This next section advances HL to next character row to be drawn
C 52765,3 Load A with x-coordinate of left of graphic to draw...
C 52768,3 ...and set current x-coordinate to match
C 52771,3 Load current y-coordinate into C, increasing by one...
C 52774,1 ...
C 52775,1 ...
C 52776,3 Load (y-coordinate + 1) of bottom of graphic being drawn into A
C 52779,1 If both y-coordinates are the same (i.e. we have moved beyond graphic's bottom edge)...
C 52780,2 ...then skip ahead to #R52788
C 52782,1 Store increased y-coordinate at #R23445...
C 52783,3 ...
C 52786,2 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
N 52788 This entry point is used by the routine at #R52820.
C 52788,2 Load A with 1
C 52790,1 Reset Zero Flag
C 52791,1 Restore BC
C 52792,1 Return
N 52793 This next section advances HL to next character block to be drawn where the Apply Vertical Mirror Flag is set
C 52793,1 Store BC
C 52794,3 Load x-coordinate of character block currently being drawn into A...
C 52797,1 ...decrease by one...
C 52798,1 ...and load into B
C 52799,3 Load x-coordinate of left of graphic being drawn into A...
C 52802,1 ...and decrease by one
C 52803,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's left edge)...
C 52804,2 ...then jump to #R52813
C 52806,1 Store decreased x-coordinate at #R23444...
C 52807,3 ...
C 52810,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
C 52813,3 Load x-coordinate of right of graphic being drawn into A...
C 52816,1 ...
C 52817,3 Move current character position down one character row and return
c 52820 Room Drawing Advance HL to next Display File address to be drawn to (Apply Horizontal Mirror Flag set)
D 52820 Used when Apply Horizontal Mirror Flag is set Input:  HL  A Display File address Output: A  1 (if returning via #R52792, drawing complete), otherwise zero F  Zero Flag reset (if returning via #R52792, drawing complete)
C 52820,3 Increase Pixel Row Counter...
C 52823,1 ...
C 52824,2 ...and reset to 7 if it falls below zero...
C 52826,3 ...
C 52829,2 If new value of Pixel Row Counter is 7 (i.e. we have rolled over to a new character block)...
C 52831,2 ...then advance HL to next character block to be drawn and return
C 52833,1 Decrease Display File address by 256 bytes (i.e. move to next pixel row up)
C 52834,1 Set A to zero
C 52835,1 Return
N 52836 This next section advances HL to next character block to be drawn
C 52836,3 Load A with Horizontal and Vertical Mirror Flags
C 52839,2 If Apply Vertical Mirror Flag is set...
C 52841,3 ...then skip ahead to #R52897
C 52844,1 Store BC
C 52845,3 Load x-coordinate of character block currently being drawn into A...
C 52848,1 ...increase by one...
C 52849,1 ...and load into B
C 52850,3 Load (x-coordinate + 1) of right of graphic being drawn into A
C 52853,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's right edge)...
C 52854,2 ...then jump to #R52874
C 52856,1 Store increased x-coordinate at #R23444...
C 52857,3 ...
C 52860,4 Load BC with coordinates of new character block to draw
C 52864,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 52867,2 Advance HL down seven pixel rows to bottom of character block...
C 52869,1 ...
C 52870,1 ...
C 52871,1 Set A to zero
C 52872,1 Restore BC
C 52873,1 Return
N 52874 This next section advances HL to next character row to be drawn
C 52874,3 Load A with x-coordinate of left of graphic to draw...
C 52877,3 ...and set current x-coordinate to match
C 52880,3 Load current y-coordinate into C, decreasing by one...
C 52883,1 ...
C 52884,1 ...
C 52885,3 Load y-coordinate of top of graphic being drawn into A
C 52888,1 If both y-coordinates are the same (i.e. we have moved beyond graphic's top edge)...
C 52889,2 ...then jump to #R52788 (load A with 1, reset Zero Flag and return)
C 52891,1 Store increased y-coordinate at #R23445...
C 52892,3 ...
C 52895,2 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
N 52897 This next section advances HL to next character block to be drawn where the Apply Vertical Mirror Flag is set
C 52897,1 Store BC
C 52898,3 Load x-coordinate of character block currently being drawn into A...
C 52901,1 ...decrease by one...
C 52902,1 ...and load into B
C 52903,3 Load x-coordinate of left of graphic being drawn into A...
C 52906,1 ...and decrease by one
C 52907,1 If both x-coordinates are the same (i.e. we have moved beyond graphic's left edge)...
C 52908,2 ...then jump to #R52917
C 52910,1 Store decreased x-coordinate at #R23444...
C 52911,3 ...
C 52914,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL then return
C 52917,3 Load x-coordinate of right of graphic being drawn into A...
C 52920,1 ...
C 52921,3 Move current character position down one character row and return
c 52924 Reverse the order of the bits in A
D 52924 For example, if A is 3 (00000011) at input, then at output, A will be 192 (11000000). Input:  A  A bitmap Output: A  A vertically mirrored bitmap
C 52924,1 Store BC
C 52925,2 Load B with 8 (eight bits)
C 52927,2 Load C with zero
C 52929,1 Shift bit right out of A and into Carry Flag
C 52930,2 Shift bit left out of Carry Flag and into C
C 52932,2 Loop back to #R52929 for next bit
C 52934,1 Load modified bitmap back into A
C 52935,1 Restore BC
C 52936,1 Return
c 52937 Store Background Bitmap Data at Magic Knight's Current Location
D 52937 Used by the routine at #R53150.
C 52937,3 Point DE at Table of Bitmap Data for Magic Knight at his Current Location
C 52940,3 Load HL with double Magic Knight's current y-coordinate (pixels)...
C 52943,1 ...
C 52944,2 ...
C 52946,1 ...
C 52947,3 Point BC at Table of Display File Addresses of Start of Each Pixel Row
C 52950,1 Add double y-coordinate as offset in HL
C 52951,3 Store pointer to entry for pixel row at Magic Knight's current y-coordinate
C 52954,3 Load A with Magic Knight's current x-coordinate (pixels)
C 52957,1 Divide by two
C 52958,1 Store AF (A = Magic Knight's current x-coordinate in pixels, divided by two)
C 52959,2 Clear all but the lowest three bits...
C 52961,3 ...and store the remaining value as Magic Knight's current frame index
C 52964,1 Restore AF (A = Magic Knight's current x-coordinate in pixels, divided by two)
C 52965,1 Divide Magic Knight's current x-coordinate in pixels by eight and remove remainder...
C 52966,1 ...
C 52967,2 ...
C 52969,3 Store value (Magic Knight's current x-coordinate in characters) at #R23422...
C 52972,1 ...and load into C
C 52973,2 Load B with 32 (as Magic Knight is 32 pixels tall)
C 52975,4 Load IX with pointer to entry for pixel row at Magic Knight's current y-coordinate
C 52979,1 Store BC (B = remaining number of pixel rows to store, C = MK's x-coordinate in characters)
C 52980,3 Load Display File address of pixel row at IX into HL...
C 52983,2 ...and advance IX to entry for next pixel row down...
C 52985,3 ...
C 52988,2 ...
C 52990,2 Set B to zero (BC = Magic Knight's current x-coordinate in characters)
C 52992,1 Add BC to HL as offset
C 52993,1 Copy three bytes of graphic data from Display File address...
C 52994,1 ...into Table of Background Bitmap Data...
C 52995,1 ...as Magic Knight can only occupy three consecutive character blocks horizontally...
C 52996,1 ...
C 52997,1 ...
C 52998,1 ...
C 52999,1 ...
C 53000,1 ...
C 53001,1 ...
C 53002,1 ...
C 53003,1 ...
C 53004,1 Restore BC (B = remaining number of pixel rows to store, C = MK's x-coordinate in characters)
C 53005,2 Decrease B (remaining number of pixel rows to store) and loop back to #R52979 if non-zero for next pixel row
C 53007,3 Copy contents of Table of Bitmap Data for Magic Knight at his Current Location to Table of Background Bitmap Data #R23909...
C 53010,3 ...
C 53013,3 ...
C 53016,2 ...
C 53018,1 Return
c 53019 Overlay Graphic Data for MK's Current Frame on Table of Bitmap Data for MK at his Current Location
D 53019 Used by the routine at #R53150.
C 53019,3 Load Magic Knight's current frame index into A...
C 53022,1 ...multiply by 48...
C 53023,1 ...
C 53024,1 ...
C 53025,1 ...
C 53026,1 ...
C 53027,1 ...
C 53028,1 ...
C 53029,1 ...load into HL...
C 53030,2 ...
C 53032,1 ...and double again to give 96 times original value, as graphic data for MK's frames are 96 bytes each
C 53033,3 If Magic Knight Facing Left Flag is reset...
C 53036,1 ...
C 53037,2 ...then skip ahead to #R53043
C 53039,3 Advance HL by 384 bytes...
C 53042,1 ...i.e. prepare to use left-facing graphic data, rather than right-facing...
C 53043,1 Copy value in HL to IX...
C 53044,2 ...
C 53046,3 Point DE at start of graphic data for Magic Knight facing right, frame 1 (mask)
C 53049,1 Add HL as offset in HL (HL now points to start of graphic data for Magic Knight's current frame mask)
C 53050,3 Point DE at start of graphic data for Magic Knight facing right, frame 1
C 53053,2 Add IX as offset in IX (IX now points to start of graphic data for Magic Knight's current frame)
C 53055,3 Point DE at Table of Bitmap Data for Magic Knight at his Current Location
C 53058,2 Load B with 96, as Magic Knight's bitmap graphic data is 96 bytes per frame
C 53060,1 Load current background bitmap byte into A
C 53061,1 Apply mask to bitmap data
C 53062,3 Overlay Magic Knight bitmap graphic data
C 53065,1 Store result back into Table of Background Bitmap Data
C 53066,1 Advance HL to next byte in Magic Knight mask bitmap data
C 53067,1 Advance DE to next byte in background graphic bitmap data
C 53068,2 Advance IX to next byte in Magic Knight graphic bitmap data
C 53070,2 Decrease B (remaining number of bytes to process) and loop back to #R53060
C 53072,1 Return
c 53073 Draw Bitmap Data for Magic Knight Overlaid on Background to Display File
D 53073 Used by the routine at #R53150. Input:  DE  (Entry at #R53076 only) Address of Table of Background Bitmap Data (#R23909)
C 53073,3 Point DE at Table of Bitmap Data for Magic Knight at his Current Location
N 53076 This entry point is used by the routine at #R53115.
C 53076,4 Load IX with pointer to entry in Table of Display File Addresses for pixel row at Magic Knight's current y-coordinate
C 53080,3 Load C with Magic Knight's current x-coordinate (characters)...
C 53083,1 ...
C 53084,2 Load B with 32 (as Magic Knight is 32 pixels tall)
C 53086,1 Store BC (B = remaining number of pixel rows to draw, C = MK's x-coordinate in characters)
C 53087,3 Load Display File address of pixel row at IX into HL...
C 53090,2 ...and advance IX to entry for next pixel row down...
C 53092,3 ...
C 53095,2 ...
C 53097,2 Set B to zero (BC = Magic Knight's current x-coordinate in characters)
C 53099,1 Add BC to HL as offset
C 53100,1 Copy three bytes of graphic data from Table of Bitmap Data for Magic Knight at his Current Location...
C 53101,1 ...into Display File...
C 53102,1 ...as Magic Knight can only occupy three consecutive character blocks horizontally...
C 53103,1 ...
C 53104,1 ...
C 53105,1 ...
C 53106,1 ...
C 53107,1 ...
C 53108,1 ...
C 53109,1 ...
C 53110,1 ...
C 53111,1 Restore BC (B = remaining number of pixel rows to store, C = MK's x-coordinate in characters)
C 53112,2 Decrease B (remaining number of pixel rows to draw) and loop back to #R53086 if non-zero for next pixel row
C 53114,1 Return
c 53115 Erase Magic Knight from Display, Advance his Current Position then Redraw
D 53115 Used by the routines at #R27136 and #R27357.
C 53115,2 Store IX
C 53117,3 Point DE at Table of Background Bitmap Data
C 53120,1 Wait for interrupt
C 53121,3 Restore background bitmap data (i.e. remove Magic Knight bitmap data from display)
C 53124,3 If Player Attribute Update Flag is set...
C 53127,1 ...
C 53128,3 ...then restore background attribute data at Magic Knight's current location
C 53131,2 Restore IX
C 53133,3 Point HL at Magic Knight's current x-coordinate
C 53136,3 Load A with Magic Knight's current x-velocity...
C 53139,1 ...and add to this Magic Knight's current x-coordinate
C 53140,1 Set this as Magic Knight's new x-coordinate
C 53141,1 Advance HL to Magic Knight's y-coordinate
C 53142,3 Load A with Magic Knight's current y-velocity...
C 53145,1 ...and add to this Magic Knight's current y-coordinate
C 53146,1 Set this as Magic Knight's new y-coordinate
C 53147,1 Set A to zero (see trivia)
C 53148,2 Store background attributes if appropriate, then draw Magic Knight to display, then return
c 53150 Store Background Attributes if Appropriate, then Draw Magic Knight to Display
D 53150 Used by the routines at #R28101 and #R31468.
C 53150,2 Load A with 1 (see trivia)
N 53152 This entry point is used by the routine at #R53115.
C 53152,2 Store IX
C 53154,3 If Player Attribute Update Flag is set (Player Attribute Update mode)...
C 53157,1 ...
C 53158,3 ...then store background attribute data at Magic Knight's current location
C 53161,3 Store background bitmap data at Magic Knight's current location
C 53164,3 Overlay graphic data for MK's current frame on Table of Bitmap Data for MK at his Current Location
C 53167,3 Draw bitmap data for Magic Knight overlaid on background to Display File
C 53170,3 Store Magic Knight's current x-coordinate (characters) at #R23423...
C 53173,3 ...
C 53176,3 Store Magic Knight's current y-coordinate (pixels) at #R23424...
C 53179,3 ...
C 53182,2 Restore IX
C 53184,1 Return
c 53185 Store Background Attribute Data at Magic Knight's Current Location
D 53185 Used by the routine at #R53150.
C 53185,3 Point DE at Table of Background Attribute data
C 53188,3 Load A with Magic Knight's current y-coordinate (pixels)
C 53191,2 Clear lowest three bits to round down to nearest multiple of 8
C 53193,1 Load this value into HL...
C 53194,2 ...
C 53196,1 Multiply by four to obtain 32 x y-coordinate (characters)...
C 53197,1 ...
C 53198,3 Load A with Magic Knight's current x-coordinate (pixels)
C 53201,1 Divide this by eight, rounding down to nearest integer...
C 53202,1 ...to convert from pixels to characters...
C 53203,1 ...
C 53204,2 ...
C 53206,1 Load x-coordinate (characters) into BC...
C 53207,2 ...
C 53209,1 Add x-coordinate to 32 x y-coordinate in HL
C 53210,1 Store HL (32 x y-coordinate in characters)
C 53211,3 Add this to start address of Attribute File...
C 53214,1 ...so that HL points to required byte in Attribute File
C 53215,1 Put Attribute File address on top of stack and load HL with 32 x y-coordinate
C 53216,3 Point BC at start of Terrain Interaction Data Table...
C 53219,1 ...and add 32 x y-coordinate as offset in HL
C 53220,1 Restore Attribute File address to HL...
C 53221,2 ...and load IX with Terrain Interaction address
C 53223,3 Load C with Magic Knight's attribute...
C 53226,1 ...
C 53227,2 Load B with 4 as Magic Knight is four characters tall
C 53229,1 Store BC (B = remaining number of character rows)
C 53230,1 Copy byte from Attribute File...
C 53231,1 ...into Table of Background Attribute Data
C 53232,4 If Preserve Attribute Terrain Interaction Flag is set for this character...
C 53236,3 ...then skip ahead to #R53240
C 53239,1 Set current Attribute File byte to match Magic Knight's attribute
C 53240,1 Advance current position in Attribute File
C 53241,1 Advance current position in Table of Background Attribute Data
C 53242,1 Copy byte from Attribute File...
C 53243,1 ...into Table of Background Attribute Data
C 53244,4 If Preserve Attribute Terrain Interaction Flag is set for this character...
C 53248,3 ...then skip ahead to #R53252
C 53251,1 Set current Attribute File byte to match Magic Knight's attribute
C 53252,1 Advance current position in Attribute File
C 53253,1 Advance current position in Table of Background Attribute Data
C 53254,1 Copy byte from Attribute File...
C 53255,1 ...into Table of Background Attribute Data
C 53256,4 If Preserve Attribute Terrain Interaction Flag is set for this character...
C 53260,3 ...then skip ahead to #R53264
C 53263,1 Set current Attribute File byte to match Magic Knight's attribute
C 53264,1 Advance current position in Table of Background Attribute Data
C 53265,3 Advance current position in Attribute File by 30 bytes...
C 53268,1 ...i.e. down one character and left two characters
C 53269,3 Advance current position in Terrain Interaction Data Table by 32 bytes...
C 53272,2 ...i.e. down one character
C 53274,1 Restore BC (B = remaining number of character rows)
C 53275,2 If character rows remain then loop back to #R53229
C 53277,1 Return
c 53278 Restore Background Attribute Data at Magic Knight's Current Location
D 53278 Used by the routine at #R53115.
C 53278,3 Point DE at Table of Background Attribute Data
C 53281,3 Load A with Magic Knight's current y-coordinate (pixels)
C 53284,2 Clear lowest three bits to round down to nearest multiple of 8
C 53286,1 Load this value into HL...
C 53287,2 ...
C 53289,1 Multiply by four to obtain 32 x y-coordinate (characters)...
C 53290,1 ...
C 53291,3 Load A with Magic Knight's current x-coordinate (pixels)
C 53294,1 Divide this by eight, rounding down to nearest integer...
C 53295,1 ...to convert from pixels to characters...
C 53296,1 ...
C 53297,2 ...
C 53299,1 Load x-coordinate (characters) into BC...
C 53300,2 ...
C 53302,1 Add x-coordinate to 32 x y-coordinate in HL...
C 53303,3 ...then add this to start address of Attribute File...
C 53306,1 ...so that HL points to required byte in Attribute File
C 53307,2 Load B with 4 as Magic Knight is four characters tall
C 53309,1 Store BC (B = remaining number of character rows)
C 53310,1 Copy byte from Table of Background Attribute Data...
C 53311,1 ...into Attribute File
C 53312,1 Advance current position in Attribute File
C 53313,1 Advance current position in Table of Background Attribute Data
C 53314,1 Copy byte from Table of Background Attribute Data...
C 53315,1 ...into Attribute File
C 53316,1 Advance current position in Attribute File
C 53317,1 Advance current position in Table of Background Attribute Data
C 53318,1 Copy byte from Table of Background Attribute Data...
C 53319,1 ...into Attribute File
C 53320,1 Advance current position in Table of Background Attribute Data
C 53321,3 Advance current position in Attribute File by 30 bytes...
C 53324,1 ...i.e. down one character and left two characters
C 53325,1 Restore BC (B = remaining number of character rows)
C 53326,2 If character rows to be coloured remain then loop back to #R53309
C 53328,1 Return
b 53329 Starship Location Connectivity Data
D 53329 The various locations that the USS Pisces can travel to are laid out on a grid, eight units by four units. When the USS Pisces is at a given location on the grid, it can move only to the eight adjacent locations (north, north-east, east, south-east, south, south-west, west and north-west).
B 53329,8,8 Deneb,      Gath,    Monopole,   Porthos, Reef,      Lynx,     Nirvana, NULL
B 53337,8,8 Limbo,      Eden,    NULL,       Herschell, Plop Plop, Trantore, Outpost, Bingo
B 53345,8,8 Brightstar, Polaris, Starbase 1, NULL, NULL, Retreat,  Plinkit, NULL
B 53353,8,8 Dragon Egg, NULL,    Aridia,     Gangrole, Naff,      NULL,     NULL,    Menopausia
b 53361 Initial Planetary Data
D 53361 Two bytes per location. The bytes' meanings are:
B 53361,2,2 (00) - Unused
B 53363,2,2 (01) - Deneb
B 53365,2,2 (02) - Gath
B 53367,2,2 (03) - Monopole
B 53369,2,2 (04) - Porthos
B 53371,2,2 (05) - Starbase 1
B 53373,2,2 (06) - Lynx
B 53375,2,2 (07) - Nirvana
B 53377,2,2 (08) - Limbo
B 53379,2,2 (09) - Eden
B 53381,2,2 (10) - Herschell
B 53383,2,2 (11) - Trantore
B 53385,2,2 (12) - Plop Plop
B 53387,2,2 (13) - Brightstar
B 53389,2,2 (14) - Outpost
B 53391,2,2 (15) - Polaris
B 53393,2,2 (16) - Bingo
B 53395,2,2 (17) - Retreat
B 53397,2,2 (18) - Dragon Egg
B 53399,2,2 (19) - Aridia
B 53401,2,2 (20) - Gangrole
B 53403,2,2 (21) - Naff
B 53405,2,2 (22) - Reef
B 53407,2,2 (23) - Menopausia
B 53409,2,2 (24) - Plinkit
b 53411 Table of Start Addresses of Input Device Reading Routines
W 53411,2,2 Address of keyboard reading routine
W 53413,2,2 Address of Kempston Joystick reading routine
W 53415,2,2 Address of Cursor Joystick reading routine
W 53417,2,2 Address of Sinclair Joystick 1 reading routine
b 53419 Powers of Ten (Used by Routine at 35591) for Converting Numbers to ASCII String
W 53419,10,2
b 53429 Addresses of Room-Specific Routines
W 53429,2,2 (00) Do Nothing - USS Pisces, 0 (The Recreation Room)
W 53431,2,2 (01) Do Nothing - USS Pisces, 1 (The Bridge)
W 53433,2,2 (02) Do Nothing - USS Pisces, 2 (The Transporter Room)
W 53435,2,2 (03) Do Nothing - USS Pisces, 3 (The Transputer Room)
W 53437,2,2 (04) Do Nothing - USS Pisces, 4 (Cargo Hold)
W 53439,2,2 (05) Do Nothing - USS Pisces, 5 (The Airlock)
W 53441,2,2 (06) Do Nothing - USS Pisces, 6 (The Life Boat)
W 53443,2,2 (07) Go to Game Over Routine if Magic Knight is not Wearing the Cloak of Invisibility - Retreat, 0 (Murphy's Moon)
W 53445,2,2 (08) Go to Game Over Routine if Magic Knight is not Wearing the Pair of Boots - Retreat, 1
W 53447,2,2 (09) Do Nothing - Retreat, 2
W 53449,2,2 (10) Do Nothing - Retreat, 3
W 53451,2,2 (11) Do Nothing - Starbase 1, 0 (The Transporter Room)
W 53453,2,2 (12) Do Nothing - Starbase 1, 1 (McTablet Takeaway Food)
W 53455,2,2 (13) Do Nothing - Starbase 1, 2
W 53457,2,2 (14) Do Nothing - Starbase 1, 3
W 53459,2,2 (15) Do Nothing - Starbase 1, 4 (Fuel and Cargo Area)
W 53461,2,2 (16) Go to Game Over Routine if Magic Knight is not Wearing the Gas Mask - Outpost, 0 (Ye Olde Transporter)
W 53463,2,2 (17) Go to Game Over Routine if Magic Knight is not Wearing the Pair of Boots - Outpost, 1 (The Main Defence System)
W 53465,2,2 (18) Show Tyme Guardians' Warning Message if not Already Shown - Outpost, 2
W 53467,2,2 (19) Go to Game Over Routine if Magic Knight is not Carrying the Golden Sundial of Alpha - Outpost, 3 (The Proof of Power)
W 53469,2,2 (20) Show Tyme Guardians' Messages and Install Tyme Machine on USS Pisces - Outpost, 4 (The Tyme Guardians)
W 53471,2,2 (21) Go to Game Over Routine if Magic Knight is not Wearing the Cloak of Invisibility - Monopole, 0 (Hooper's Emergency Exit)
W 53473,2,2 (22) Go to Game Over Routine if Magic Knight is not Wearing the Gas Mask - Monopole, 1 (This Way to Hooper ==>>)
W 53475,2,2 (23) Do Nothing - Monopole, 2 (Here is Hooper)
W 53477,2,2 (24) Do Nothing - USS Pisces, 6A (The Control Column)
c 53479 Call Time-Dependent Routines [Main Interrupt Routine]
D 53479 Used by the routine at #R65524.
C 53479,3 Store all registers on the stack
C 53482,4 If Game In Progress Flag is reset... (IY = 23610)
C 53486,3 ...then skip ahead to #R53492
C 53489,3 Update game time, time left and move characters if appropriate
C 53492,3 Restore all registers from the stack
C 53495,3 Jump to ROM maskable interrupt routine (update frame counter, read keyboard and then return from interrupt routine)
c 53498 Update Game Time, Time Left and Move Characters if Appropriate
D 53498 Used by the routine at #R53479.
C 53498,3 If number of 1/50 seconds elapsed in current minute is divisible by eight...
C 53501,2 ...
C 53503,3 ...then move character whose turn it is to move, if allowed
C 53506,3 [EVERY 1/50 SECOND] Increase number of elapsed 1/50 seconds
C 53509,1 ...
C 53510,3 ...
C 53513,2 If new value isn't 50...
C 53515,1 ...then return
C 53516,1 [EVERY 1 SECOND] Else, set the value to zero (start of next full second)...
C 53517,3 ...
C 53520,3 Increase number of seconds elapsed...
C 53523,1 ...
C 53524,3 ...
C 53527,2 If new value isn't 60...
C 53529,1 ...then return
C 53530,1 [EVERY 1 MINUTE] Else, set the value to zero (start of next minute)...
C 53531,3 ...
C 53534,3 Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send to Sleep if Required
C 53537,3 Increase Magic Knight's current Magic Level by 10 (capped at 100)
C 53540,2 If Magic Knight is wearing the Magic Talisman (12)...
C 53542,3 ...
C 53545,3 ...then increase Magic Knight's current Magic Level by another 10 (capped at 100)
C 53548,3 Increase number of minutes elapsed...
C 53551,1 ...
C 53552,3 ...
C 53555,2 If new value isn't 5...
C 53557,1 ...then return
C 53558,1 [EVERY 5 MINUTES] Else, set the value to zero (start of next "day")...
C 53559,3 ...
C 53562,3 Decrease number of days left...
C 53565,1 ...
C 53566,3 ...
C 53569,3 If zero then show "Out of time" game over message and return to Control Selection Menu
C 53572,1 Return
c 53573 Increase Magic Knight's Current Magic Level by 10 (Up to Maximum of 100)
D 53573 Used by the routine at #R53498.
C 53573,3 Load A with Magic Knight's current Magic Level
C 53576,2 Add 10 to this value, capping at 100...
C 53578,3 ...
C 53581,3 Store updated value for Magic Level
C 53584,1 Return
c 53585 Update All Characters' Stats (Deteriorate or Regenerate) and Wake Up / Send to Sleep if Required
D 53585 Used by the routine at #R53498.
C 53585,3 Load DE with 8 (as data is 8 bytes long)
C 53588,3 Point HL at start of characters' Stat Regeneration Data Table
C 53591,4 Point IX at Gordon's current stats (2nd entry in Characters' Current Stats Table, as first is Magic Knight's)
C 53595,2 Load B with 16 (16 characters) (see trivia)
C 53597,4 If current character is awake...
C 53601,2 ...then skip ahead to 53607
C 53603,1 Advance HL by four bytes to stat deterioration data...
C 53604,1 ...
C 53605,1 ...
C 53606,1 ...
C 53607,1 Load stat change value into C
C 53608,3 Load current character's strength into A
C 53611,3 Update character's strength as they tire (awake) or regenerate (asleep)...
C 53614,3 ...
C 53617,1 Advance HL to next (happiness) data
C 53618,1 Load stat change value into C
C 53619,3 Load current character's happiness into A
C 53622,3 Update character's happiness as they tire (awake) or regenerate (asleep)...
C 53625,3 ...
C 53628,1 Advance HL to next (stamina) data
C 53629,1 Load stat change value into C
C 53630,3 Load current character's stamina into A
C 53633,3 Update character's stamina as they tire (awake) or regenerate (asleep)...
C 53636,3 ...
C 53639,1 Advance HL to next (charisma) data
C 53640,1 Load stat change value into C
C 53641,3 Load current character's charisma into A
C 53644,3 Update character's charisma as they tire (awake) or regenerate (asleep)...
C 53647,3 ...
C 53650,1 Advance HL to next block of data
C 53651,4 If current character is asleep...
C 53655,2 ...then we have already moved into data for next character, so skip ahead to 53661
C 53657,1 Else, we are now in same character's "asleep" data, so need to advance HL by four bytes to get to next character's data...
C 53658,1 ...
C 53659,1 ...
C 53660,1 ...
C 53661,2 Advance IX by eight bytes to next character's stats
C 53663,2 Loop back to 53597
C 53665,3 Load DE with 8
C 53668,4 Point IX to Gordon's current stats
C 53672,2 Load B with 16 (16 characters) (see trivia)
C 53674,2 Load C with zero (to denote first character, Gordon)
C 53676,3 Load current character's stamina into A
C 53679,2 If stamina (bits 0-6) is not zero...
C 53681,2 ...then skip ahead to 53689
C 53683,4 Else send character to sleep
C 53687,2 Skip ahead to 53697
C 53689,2 If stamina is not 100...
C 53691,2 ...then skip ahead to 53697
C 53693,4 Else wake character up
C 53697,2 Advance IX to next character's stats
C 53699,1 Increase C for next character
C 53700,2 Loop back to 53676 for next character
C 53702,1 Return
c 53703 Update Characters' Stats as They Tire (Awake) or Regenerate (Asleep)
D 53703 Used by the routines at #R29756, #R31280, #R33569, #R53573 and #R53585. Input:  A  A character's stat (strength, stamina, happiness or spell power) C An increment (while asleep) or decrement (while awake) for that stat Output: A  New value of stat
C 53703,1 Store AF (A = value of character's stat)
C 53704,2 Capture MSB in stat value and store in instruction at #R53728...
C 53706,3 ...
C 53709,1 Restore AF (A = value of character's stat)
C 53710,2 Discard MSB of stat value
C 53712,1 Add change value
C 53713,1 Check Sign Flag
C 53714,3 If sign flag reset (i.e. MSB of result is reset and result is positive) then jump ahead to #R53720
C 53717,1 else stat must have dropped below zero, so set stat to zero (as it can't be less than 0)
C 53718,2 Skip ahead to #R53728
C 53720,2 If new value of stat is less than or equal to 100...
C 53722,2 ...then skip ahead to #R53728...
C 53724,2 ...
C 53726,2 ...else set stat to 100 (as it can't be greater than 100)
N 53728 The operand of the instruction at #R53728 represents bit 7 of the input value in A. This is modified by the instruction at #R53706.
C 53728,2 Restore previously stored MSB state
C 53730,1 Return
c 53731 Move Character Whose Turn it is to Move, if Allowed
D 53731 Alternate characters move in opposite directions on alternate days.
C 53731,3 Update index of character whose turn it is to be updated and load into A
C 53734,2 Point HL at this character's flags...
C 53736,3 ...
C 53739,1 ...and load flags into A
C 53740,2 If character is asleep, or character can't move...
C 53742,1 ...then return
C 53743,2 Point HL at Gordon's stamina (A=0)... (see trivia)
C 53745,3 ...
C 53748,1 ...and load into A
C 53749,2 If Bit 7 of Gordon's stamina is set...
C 53751,1 ...then return
C 53752,3 Load BC with three times index of character whose turn it is to be updated...
C 53755,1 ...
C 53756,1 ...
C 53757,1 ...
C 53758,1 ...
C 53759,2 ...
C 53761,3 Point HL at start of Table of Characters' Current Positions at #R25244
C 53764,1 Add BC to HL as offset
C 53765,3 If Magic Knight is not in the same room as this character...
C 53768,1 ...
C 53769,3 ...then skip ahead to #R53777
C 53772,4 If Characters Free to Move Flag is reset (IY = 23610)...
C 53776,1 ...then return
C 53777,3 Load B with index of character whose turn it is to be updated...
C 53780,1 ...
C 53781,3 Load A with number of days left...
C 53784,1 ...and add index of character to be updated
C 53785,2 If result is even...
C 53787,3 ...then skip ahead to #R53824
N 53790 Move character left
C 53790,1 Load A with character's current room
C 53791,1 Store HL (pointer to character's current room)
C 53792,3 Point HL to left exit value of first entry in Room Connectivity Data Table
C 53795,3 Get index of destination room for character and load into A and instruction at #R53812
C 53798,3 Load value into instruction at #R53812 (see trivia)
C 53801,1 Restore HL (pointer to character's current room)
C 53802,1 Advance HL to character's x-coordinate
C 53803,1 Load x-coordinate into A...
C 53804,1 ...and decrease
C 53805,3 If character has a disallowed x-coordinate in the "Barrier Room" then return to routine that called this one
C 53808,1 If character's x-coordinate is not zero...
C 53809,3 ...then skip ahead to #R53859
N 53812 The operand of the instruction at #R53812 represents the character's destination room when moving left. This is modified by the instructions at #R53798 and #R53867.
C 53812,2 Load B with character's destination room...
C 53814,1 ...
C 53815,2 ...and if this is 255 (i.e. no room available)...
C 53817,1 ...then return
C 53818,2 Set character's x-coordinate to 29 (right-hand side of new room)...
C 53820,1 ...
C 53821,1 Move HL back to character's room
C 53822,1 Set current room to new room index
C 53823,1 Return
N 53824 Move character right
C 53824,1 Load A with character's current room
C 53825,1 Store HL (pointer to character's current room)
C 53826,3 Point HL to right exit value of first entry in Room Connectivity Data Table
C 53829,3 Get index of destination room for character and load into A and instruction at #R53812
C 53832,3 Load value into instruction at #R53847
C 53835,1 Restore HL (pointer to character's current room)
C 53836,1 Advance HL to character's x-coordinate
C 53837,1 Load x-coordinate into A...
C 53838,1 ...and increase
C 53839,3 If character has a disallowed x-coordinate in the "Barrier Room" then return to routine that called this one
C 53842,2 If character's x-coordinate is not 30...
C 53844,3 ...then skip ahead to #R53859
N 53847 The operand of the instruction at #R53847 represents the character's destination room when moving right. This is modified by the instruction at #R53832.
C 53847,2 Load B with character's destination room...
C 53849,1 ...
C 53850,2 ...and if this is 255 (i.e. no room available)...
C 53852,1 ...then return
C 53853,2 Set character's x-coordinate to 1 (left-hand side of new room)...
C 53855,1 ...
C 53856,1 Move HL back to character's room
C 53857,1 Set current room to new room index
C 53858,1 Return
C 53859,1 Store updated x-coordinate for character
C 53860,1 Return
c 53861 Get Index of Destination Room for a Character and Load into A and Instruction at 53812
D 53861 Used by the routine at #R53731. Input:  A  A room index HL  Points to one of the two bytes of the first entry of the Room Connectivity Data Table at #R37022 Output: A  New room index
C 53861,1 Load double room index into BC...
C 53862,1 ...
C 53863,2 ...
C 53865,1 Add BC to HL as offset
C 53866,1 Load A with room index at HL...
C 53867,3 ...and modify the instruction at #R53812 with this value
C 53870,1 Return
c 53871 Update Index of Character Whose Turn it is to be Updated
D 53871 Used by the routine at #R53731. Output: A  Updated index of character whose turn it is to be updated
C 53871,3 Increment index of character whose turn it is to be updated...
C 53874,1 ...
C 53875,3 ...
C 53878,2 If new character index is not 12...
C 53880,1 ...then return
C 53881,1 Set new character index to 0, as there are only 12 characters...
C 53882,3 ...
C 53885,1 Return
c 53886 If Character has a Disallowed x-Coordinate in the "Barrier Room" then Return Twice
D 53886 Used by the routine at #R53731. Input:  A  A character's x-coordinate HL Pointer to character's x-coordinate in Characters' Current Positions Table at #R25244 Output: A  A character's x-coordinate (same as input) HL  Pointer to character's x-coordinate in Characters' Current Positions Table at #R25244 (same as input)
C 53886,1 Store HL (pointer to character's x-coordinate)
C 53887,1 Store AF (A = character's x-coordinate)
C 53888,1 Load x-coordinate into A
C 53889,1 Move HL back to character's current room
C 53890,1 If character's room is not 9 (barrier room on Murphy's Moon)...
C 53891,2 ...
C 53893,3 ...then skip ahead to #R53922
C 53896,3 If Barriers Removed Flag is set...
C 53899,2 ...
C 53901,3 ...then skip ahead to #R53922
C 53904,3 Point HL at list of disallowed character x-coordinates in barrier room (Murphy's Moon)
C 53907,1 Load A with character's x-coordinate
C 53908,1 If character's x-coordinate is the same as the current disallowed x-coordinate...
C 53909,3 ...then skip ahead to #R53925
C 53912,1 Swap AF and AF'
C 53913,1 Load A with current x-coordinate entry...
C 53914,2 ...and if this is 255 (End Marker)...
C 53916,2 ...then skip ahead to #R53922
C 53918,1 Swap AF and AF'
C 53919,1 Advance HL to next x-coordinate entry
C 53920,2 Loop back to #R53908
C 53922,1 Restore AF (A = character's x-coordinate)
C 53923,1 Restore HL (pointer to character's x-coordinate)
C 53924,1 Return
C 53925,1 Restore AF (A = character's x-coordinate)
C 53926,1 Restore HL (pointer to character's x-coordinate)
C 53927,1 Remove return address from top of stack...
C 53928,1 ...and return to routine that called the routine that called this one
b 53929 List of Disallowed Character x-Coordinates in Barrier Room (Murphy's Moon)
B 53929,8,8
c 53937 End Game Due to Running Out of Time
D 53937 Used by the routine at #R53498.
C 53937,3 Point HL at "YOU RAN OUT OF TIME" text...
C 53940,3 ...and store as operand in instruction at #R53948
C 53943,1 Remove return address (call to this routine) from top of stack
C 53944,3 Restore all registers from the stack
C 53947,1 Remove return address (call to interrupt routine) from top of stack
N 53948 The operand of the instruction at #R53948 represents the address of the Game Over text to use. This is modified by the instruction at #R53940.
C 53948,3 Restore address of "YOU RAN OUT OF TIME" text to HL
C 53951,1 Enable interrupts
C 53952,3 Jump to "Game over" window routine and return to Control Selection Menu
b 53955 Characters' Rates of Stat Regeneration
D 53955 Stats are in order:
B 53955,8,8 Gordon    (-1, -1, -3, -4, 10, 8, 15, 10)
B 53963,8,8 Sarab     (-6, -1, -1, -1,  5, 3,  4, 1)
B 53971,8,8 Klink     (-3,  0, -4, -5,  3, 0,  4, 8)
B 53979,8,8 S3 E3     (-3,  0, -4, -4,  7, 0,  3, 9)
B 53987,8,8 Hooper    (-1, -1, -3, -1, 10, 2, 10, 1)
B 53995,8,8 Murphy    (-3, -1, -4, -6,  8, 4,  4, 8)
B 54003,8,8 Sharon    (-3, -1, -4, -4,  8, 4,  4, 3)
B 54011,8,8 Forbin    (-3, -1, -4, -4,  8, 4,  4, 3)
B 54019,8,8 Derby IV  (-3,  0, -4, -4,  8, 0,  4, 3)
B 54027,8,8 Swiftfoot (-3, -1, -4, -4,  8, 4,  4, 3)
B 54035,8,8 Julie 8   (-3, -1, -4, -4,  8, 4,  4, 3)
B 54043,8,8 Hectorr   (-3, -1, -4, -4,  8, 4,  4, 3)
c 54051 Store all Registers on the Stack
D 54051 Used by the routines at #R33952 and #R53479.
C 54051,1 Place HL onto stack in place of top entry (the address of the CALL to this routine is now in HL)
C 54052,1 Store registers AF, BC & DE...
C 54053,1 ...
C 54054,1 ...
C 54055,1 Store shadow registers too...
C 54056,1 ...
C 54057,1 ...
C 54058,1 ...
C 54059,1 ...
C 54060,1 ...
C 54061,1 ...
C 54062,1 ...
C 54063,2 Store IX
C 54065,2 Store IY
C 54067,1 Store HL (address of call to this routine)
C 54068,1 Store AF
C 54069,3 Restore original value of HL (as switched with top of stack at beginning of this routine)...
C 54072,1 ...
C 54073,1 ...
C 54074,1 ...
C 54075,1 ...
C 54076,1 ...
C 54077,1 Restore AF
C 54078,1 Return
c 54079 Restore All Registers from the Stack
D 54079 Used by the routines at #R33952, #R53479 and #R53937.
C 54079,1 Restore registers HL, IY & IX (HL has address of call to this routine, i.e. 54079)...
C 54080,2 ...
C 54082,2 ...
C 54084,1 Restore shadow registers too...
C 54085,1 ...
C 54086,1 ...
C 54087,1 ...
C 54088,1 ...
C 54089,1 ...
C 54090,1 ...
C 54091,1 ...
C 54092,1 Restore AF, BC, DE...
C 54093,1 ...
C 54094,1 ...
C 54095,1 Put HL (address of call to 54079) back on stack in preparation for RET and take off original value of HL
C 54096,1 Return
c 54097 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
D 54097 Used by the routines at #R28730, #R28753, #R32694, #R35123, #R36602, #R54231, #R54598 and #R54647. Input:  A  Index of character to print
C 54097,1 Store HL
C 54098,3 Point to (effective) start Character Set graphics
C 54101,1 Load index of character into HL and multiply by 8...
C 54102,2 ...
C 54104,1 ...
C 54105,1 ...
C 54106,1 ...
C 54107,1 ...and add to DE to obtain memory location of required character in the character set
C 54108,1 Swap values (DE now holds memory location of character to print and HL holds 64500)
N 54109 The operand of the instruction at #R54109 represents the address of the Bitmap Virtual Text Cursor. This is modified by the instructions at #R27725, #R27737, #R27753, #R27966, #R28180, #R28230, #R35119, #R35206, #R35630, #R36742, #R54188, #R54297, #R54532 and #R54549.
C 54109,3 Load (video) memory location to start printing character into HL
C 54112,2 For eight bytes (i.e. full height of character)...
C 54114,1 ...get graphic data from character set...
C 54115,1 ...and load into video memory...
C 54116,1 ...move to next pixel row in character set...
C 54117,1 ...and move to next pixel row in video memory
C 54118,2 Loop back to #R54114
C 54120,3 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
C 54123,3 Obtain attribute data stored previously (71 = bright white)
C 54126,1 Apply attribute to character just printed
C 54127,3 Advance Bitmap Virtual Text Cursor right by one character
C 54130,1 Restore HL
C 54131,1 Return
c 54132 Move Virtual Cursor (Bitmap) to Display File for Coordinates x=C, y=B and Load Address into HL
D 54132 Used by the routines at #R28833, #R32694, #R34990, #R35123, #R52596, #R52635, #R52717, #R52820, #R54598 and #R54647. Input:  B  y-coordinate (characters) C x-coordinate (characters) Output: HL  Virtual Cursor (Bitmap) Display File address
C 54132,1 Load y-coordinate into A
C 54133,2 AND 24 to determine which third of the bitmap memory we are in (A = 0, 8 or 16. Can't be 24 as this is greater than y-resolution in characters, 0-23)
C 54135,2 Load HL with bitmap Display File address of start of appropriate third of display...
C 54137,1 ...(16,384, 18,432 or 20,480)
C 54138,1 Load y-coordinate back into A
C 54139,2 AND 7 to determine which of the 8 character rows within the third we are interested in
C 54141,1 Multiply by 8 to get pixel row required...
C 54142,1 ...
C 54143,1 ...
C 54144,1 Add x-coordinate
C 54145,1 Add to value currently in HL
C 54146,2 Store the updated address of Bitmap Virtual Text Cursor and return
c 54148 Point HL at Terrain Interaction Data, or Attribute File address for Character Coordinates x=C, y=B
D 54148 The operand in the instruction at #R54157 is usually 88 (corresponding to a Attribute File lookup). It is only changed to 94 (corresponding to a Terrain Interaction Data lookup) by the routine at #R54162, and is returned to a value of 88 before that routine concludes. Input:  B  y-coordinate (chars) C x-coordinate (chars) Output: DE  points to entry in data table with coordinates (C, 0) HL  points to entry in data table with coordinates (C, B)
C 54148,1 Load y-coordinate into A
C 54149,1 Multiply this by 8...
C 54150,1 ...
C 54151,1 ...
C 54152,1 Copy 8 times y-coordinate into HL...
C 54153,2 ...
C 54155,1 Multiply by 4...
C 54156,1 ...to give 32 times original y-coordinate in HL
N 54157 The operand of the instruction at #R54157 determines whether we are dealing with the Attribute File (88), or the current Terrain Interaction Data (94). It is modified by the instructions at #R54164 and #R54172.
C 54157,2 Point DE at start of data, plus x-coordinate offset in C...
C 54159,1 ...
C 54160,1 Add 32 times y-coordinate as offset in HL
C 54161,1 Return
c 54162 Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
D 54162 Used by the routines at #R27357, #R27508, #R27647, #R29174 and #R36104. Input:  B  y-coordinate (chars) C  x-coordinate (chars) Output: HL  points to entry in Terrain Interaction Data
C 54162,2 Set most significant byte in Terrain Interaction Data / Attribute File lookup routine to 94 (Terrain Interaction Table)...
C 54164,3 ...
C 54167,3 Point HL at Terrain Interaction Data for Character Coordinates x=C, y=B
C 54170,2 Set most significant byte in Terrain Interaction Data / Attribute File lookup routine to 88, (Attribute File)...
C 54172,3 ...
C 54175,1 Return
c 54176 Advance Bitmap Virtual Text Cursor right by one character
D 54176 Used by the routines at #R36602 and #R54097.
C 54176,3 Load HL with address of Bitmap Virtual Text Cursor...
C 54179,1 ...and increase (for next character)
C 54180,1 Load LSB of HL into A...
C 54181,1 ...and check whether it is zero
C 54182,2 If it is not zero (i.e. advancing down a character row will not take us into a different third of bitmap video memory) then skip ahead to 54188
C 54184,1 Add 7 to MSB of video memory address...
C 54185,2 ...as advancing by one at 54179 took video memory pointer back up to 2nd pixel row of the current third of the display...
C 54187,1 ...when in fact we need to move to top pixel row of the NEXT third of the display (i.e. 7 x 32 x 8 = 7 x 256 bytes on from this!)
N 54188 This entry point is used by the routines at #R54132, #R54192, #R54283 and #R54333.
C 54188,3 Store the updated address of Bitmap Virtual Text Cursor
C 54191,1 Return
c 54192 Advance Bitmap Virtual Text Cursor to start of next character row
D 54192 Used by the routines at #R36602 and #R36731.
C 54192,3 Load HL with address of Bitmap Virtual Text Cursor
C 54195,1 Get LSB of video memory address in A
C 54196,2 Add 32 (i.e. move down one character row)
C 54198,3 If we have encountered the bottom of the current third of the display, then skip ahead to 54206
C 54201,2 Decrease to nearest multiple of 32 (i.e. start of a character row)
C 54203,1 Place modified address back into HL
C 54204,2 Store at 54110 and return
C 54206,2 Decrease to nearest multiple of 32 (i.e. start of a character row)
C 54208,1 Place modified address back into L
C 54209,1 Load MSB of video memory address into A
C 54210,2 Increase by 8 (as we're moving one text row, or EIGHT pixel rows down)
C 54212,1 Place modified address back into HL
C 54213,2 Store at 54110 and return
c 54215 Update Attribute Virtual Text Cursor based upon current Bitmap Virtual Text Cursor
D 54215 Used by the routines at #R34762, #R36602, #R36731 and #R54097.
C 54215,3 Load HL with address of Bitmap Virtual Text Cursor
C 54218,1 Load H into A...
C 54219,2 ...and cap at 31, to give screen third of interest (H=0-7, top third; H=8-15, middle third; H=16-23, bottom third)
C 54221,1 Divide by eight to get character row within the third...
C 54222,1 ...
C 54223,1 ...
C 54224,2 Add 22,528 to HL to move into attribute section of video memory
C 54226,1 L still contains offset of x characters, so points to start of attributes for area where room name was just printed
C 54227,3 Store memory location for later use
C 54230,1 Return
c 54231 Draw a Run of Characters (e.g. Edge of Frame of a Window)
D 54231 Used by the routines at #R27951, #R28172, #R35285, #R35627 and #R54505. Input:  HL  Repeat count for printing character (e.g. width of window in characters minus 1)
C 54231,1 Check whether remaining window's width is zero...
C 54232,1 ...and if it is...
C 54233,1 ...then return without doing anything
N 54234 The operand of the instruction at #R54234 represents the index of a character set character to draw. This is modified by the instructions at #R27976, #R28188, #R35031, #R35292, #R35637 and #R54537.
C 54234,2 Else, load A with the character index
C 54236,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor
C 54239,1 Decrease remaining width
C 54240,2 Loop back to #R54231
c 54242 Advance HL to Byte After First Zero From Address in HL Onwards
D 54242 Used by the routine at #R30123. Input:  HL  Pointer to search starting point Output: HL  Pointer to byte after first zero at or after HL input
C 54242,1 Store BC
C 54243,3 Set range to 65535
C 54246,1 Load A (value to search for) to zero
C 54247,2 Advance HL to byte after first zero found
C 54249,1 Restore BC
C 54250,1 Return
c 54251 Point HL at Start of B-th Entry in List of Read-Texts of Readable Objects
D 54251 Used by the routine at #R30968. Input:  B  Index of read-text required
C 54251,3 Point HL at start of List of Read-Texts of Readable Objects
C 54254,2 Advance HL to B-th entry in list of zero-terminated strings starting at HL and return
c 54256 Point HL at Start of B-th Entry in List of "COMMAND A CHARACTER" Commands at 39626
D 54256 Used by the routine at #R30686.
C 54256,3 Point HL at first of the "COMMAND A CHARACTER" commands (i.e. "GO TO SLEEP")
C 54259,2 Advance HL to B-th entry in list of zero-terminated strings starting at HL and return
c 54261 Point HL at Start of B-th Entry in List of Starship Destination Names at 43031
D 54261 Used by the routine at #R31688. Input:  B  Index of a location
C 54261,3 Point HL at start of Table of Starship Destination Names
C 54264,2 Advance HL to B-th entry in list of zero-terminated strings starting at HL and return
c 54266 Point HL at B-th Entry in Table of Object Names
D 54266 Used by the routines at #R30145 and #R33952. Input:  B  Index of required text string HL  (entry via #R54269) address of start of a table of zero-terminated strings Output: HL  Points to string of index B (input)
C 54266,3 Point HL at start of Table of Object Names
N 54269 This entry point is used by the routines at #R28172, #R29756, #R30145, #R31041, #R31188, #R31688, #R32895, #R54251, #R54256 and #R54261.
C 54269,1 Load string index into A
C 54270,1 Return if index is zero...
C 54271,1 ...
C 54272,1 Store BC
C 54273,3 Load BC (loop counter) with 65535
C 54276,1 Set A to zero
C 54277,2 Advance HL to start of next zero-terminated string
C 54279,1 Store BC
C 54280,2 Decrease B (remaining number of object names to skip over) and loop back to #R54272
C 54282,1 Return
c 54283 Print Text at DE (Command Summary) in Command Summary Window at Top of Screen
D 54283 Used by the routines at #R29330, #R29619, #R29756, #R30145, #R30686, #R31041, #R31688, #R32252, #R32895, #R33926 and #R54322. Input:  DE  Points to command text
C 54283,1 Store DE (Pointer to command text to print)
C 54284,2 Set ATTR T system variable to 70 (yellow INK, black PAPER, BRIGHT)...
C 54286,3 ...
C 54289,3 Load HL with address of Bitmap Virtual Text Cursor
C 54292,1 Swap registers so that HL points to text to be printed, and (SP) i.e. PUSHed value) contains Display File address to start printing character
C 54293,4 Load DE with new Display File address to print character...
C 54297,4 ...and update Bitmap Virtual Text Cursor with this location
C 54301,1 Store HL (pointer to text to be printed)
C 54302,3 Swap x- and y-coordinates of current window with those of Command Summary Window in temporary storage at #R23426
C 54305,1 Restore HL (pointer to text to be printed)
C 54306,3 Print text to screen
C 54309,3 Restore x- and y-coordinates of current window from temporary storage at #R23426
C 54312,3 Load HL with new address in Bitmap Virtual Text Cursor (i.e. after text just printed)...
C 54315,3 ...and store back at #R23703
C 54318,1 Restore HL (Display File address to start printing character as swapped by instruction at #R54292)
C 54319,3 Store the updated address of Bitmap Virtual Text Cursor and return
c 54322 Print Command Summary Text (Text at DE, e.g. "COMMAND ") in Command Summary Window
D 54322 Used by the routines at #R33952 and #R34122. Input:  DE  Pointer to text to print
C 54322,1 If DE is zero (i.e. no Command Summary Text)...
C 54323,1 ...
C 54324,1 ...then return
C 54325,1 Store DE (Command Summary Text Pointer)
C 54326,3 Print or update Command Summary Window at top of screen
C 54329,1 Restore DE (Command Summary Text Pointer)...
C 54330,3 ...and print in Command Summary Window at top of screen and return
c 54333 Print or Update Command Summary Window at Top of Screen
D 54333 Used by the routines at #R29330, #R29619, #R30145, #R31041, #R31688, #R32252, #R32895 and #R54322. The operand of the instruction at #R54333 represents the index of the window being drawn. This is modified by the instructions at #R35001 and #R54371.
C 54333,2 Load index of window being drawn into A
C 54335,1 Store AF (A = index of Current Window)
C 54336,3 Load HL with address of Bitmap Virtual Text Cursor...
C 54339,1 ...and store
C 54340,3 Store x- and y-coordinates of current window temporarily at #R23426
C 54343,2 Draw Window 1 (Command Summary Window at top of screen)...
C 54345,1 ...and wait for interrupt...
C 54346,3 ...
C 54349,3 Point HL to ("COMMAND") text...
C 54352,3 ...and print to screen
C 54355,3 Load HL with address of Bitmap Virtual Text Cursor
C 54358,1 Store HL (address of Bitmap Virtual Text Cursor)
C 54359,3 Print "KNIGHT-TYME" text at bottom of Command Summary Window
C 54362,1 Restore HL (address of Bitmap Virtual Text Cursor)
C 54363,3 Store this location as the location to print text to in the Command Summary Window
C 54366,3 Restore x- and y-coordinates of current window from #R23426
C 54369,1 Restore HL (address of Bitmap Virtual Text Cursor)
C 54370,1 Restore AF (A = index of Current Window)
C 54371,3 Restore index of Current Window to 54334 (was updated to 1 by call at #R54346)
C 54374,3 Store the updated address of Bitmap Virtual Text Cursor and return
c 54377 Swap x- and y-coordinates of current window / graphic with values in temporary storage (at 23426)
D 54377 This routine is used when there are two windows being updated (e.g. Command Summary Window at top of screen, and "EXAMINE" window). It is used to keep track of the dimensions of two windows simultaneously
C 54377,3 Swap x- and y-coordinates of top-left of window / graphic currently at #R23493 with values in temporary store at #R23426...
C 54380,4 ...
C 54384,4 ...
C 54388,3 ...
C 54391,3 Swap x- and y-coordinates of bottom-right of window / graphic currently at #R23495 with values in temporary store at #R23428...
C 54394,4 ...
C 54398,4 ...
C 54402,3 ...
C 54405,1 Return
c 54406 Draw a Graphic with Lookup Index A, Width of 2 and Height of 2 at Character Coordinates (C, B)
D 54406 Used by the routines at #R34627 and #R36104. Input:  A  Index of graphic to draw in graphic data lookup table at #R55950 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item
C 54406,3 Load D and E with 2
C 54409,2 Draw a Graphic with Lookup Index A at Character Coordinates (C, B) with width = 2 characters and height = 2 characters and return
c 54411 Draw a Graphic with Lookup Index A at Character Coordinates (C, B)
D 54411 Used by the routines at #R28390 and #R30145. Input:  A  Index of graphic to draw in graphic data lookup table at #R55950 B  y-coordinate (characters) for printing item C  x-coordinate (characters) for printing item D  (entry at #R54414) Graphic height (characters) E  (entry at #R54414) Graphic width (characters)
C 54411,3 Set D (height) to 4 and E to 2 (width)
N 54414 This entry point is used by the routines at #R30145, #R34990 and #R54406.
C 54414,1 Store HL
C 54415,1 Store DE
C 54416,1 Store AF
C 54417,1 Load x-coordinate to draw item into instruction at #R54477...
C 54418,3 ...
C 54421,1 Multiply y-coordinate by 8...
C 54422,1 ...
C 54423,1 ...
C 54424,1 ...
C 54425,1 ...and load into HL...
C 54426,2 ...
C 54428,1 Double again (so now 16 times y-coordinate, as 8 pixels in a character block, and two bytes per entry in data at #R26240)
C 54429,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 54432,1 Advance by 16 times y-coordinate to point HL at entry for start of item's current pixel row
C 54433,1 Transfer this value into IX...
C 54434,2 ...
C 54436,1 Restore A (graphic index of item to draw)...
C 54437,1 ...and load into HL...
C 54438,2 ...
C 54440,1 Multiply by four (as there are two WORD entries for each graphic in the table at #R55950)...
C 54441,1 ...
C 54442,3 Point BC at start of Graphics Data Lookup Table at #R55950...
C 54445,1 ...and add offset to point to entry for item of interest
C 54446,1 Load graphic data address for this graphic into DE...
C 54447,1 ...
C 54448,1 ...
C 54449,1 ...
C 54450,3 Load next value in table (address of graphic data for this object's mask) into HL
C 54453,1 Restore BC (B = height, C = width)
C 54454,1 Load height into A...
C 54455,1 ...and multiply by eight...
C 54456,1 ...
C 54457,1 ...
C 54458,1 Swap A and A'
C 54459,1 Copy graphic width into B...
C 54460,1 ...and A'...
C 54461,3 ...and modify instruction at #R54480 with this value also
C 54464,1 Swap A and A'
C 54465,1 Swap DE (now pointer to object's mask graphic data) and HL (now pointer to object's graphic data)
C 54466,1 Switch registers
C 54467,1 Load C with eight times graphic's height
C 54468,1 Store BC (C = remaining number of pixel rows to draw, initially eight times graphic's height)
C 54469,3 Load HL' with Display File address of start of pixel row at object's y-coordinate...
C 54472,3 ...
C 54475,2 Set B' to zero
N 54477 The operand of the instruction at #R54477 represents the x-coordinate at which to draw the item. This is modified by the instruction at #R54418.
C 54477,2 Set C' to x-coordinate of item
C 54479,1 Add x-coordinate as offset to address of start of pixel row in HL' (HL' now points at Display File address to begin drawing)
N 54480 The operand of the instruction at #R54480 represents the width of the graphic to draw. This is modified by the instruction at #R54461.
C 54480,2 Load B with graphic width
C 54482,1 Switch registers
C 54483,1 Load graphic data byte from graphic mask data into A
C 54484,1 Switch registers
C 54485,1 Modify mask data by AND-ing with data already present in Display File (to allow scenery in background to show as set pixels are transparent)
C 54486,1 Switch registers
C 54487,1 Modify modified mask data by OR-ing with object graphic data byte from graphic data
C 54488,1 Advance HL to next byte in object graphic data
C 54489,1 Advance DE to next byte in object graphic mask data
C 54490,1 Switch registers
C 54491,1 Load masked graphic data byte into Display File
C 54492,1 Advance HL to next byte in Display File
C 54493,2 Loop back to #R54482 for next column of object graphic data
C 54495,2 Advance IX by two bytes to next address in Table of Addresses of Starts of Pixel Rows...
C 54497,2 ...
C 54499,1 Restore BC (C = remaining number of pixel rows to draw)
C 54500,1 Decrease remaining number pixel rows to draw
C 54501,2 If not zero (i.e. still need to draw at least one more pixel row of graphic data) then loop back to #R54468
C 54503,1 Restore HL
C 54504,1 Return
c 54505 Update Currently Selected Input Device
D 54505 Used by the routines at #R26670 and #R26884. Input:  A  Index of currently selected input device D  Index of previously selected input device (valid for call at #R26729 only)
C 54505,1 Load B with index of currently selected input device...
C 54506,2 ...and if this is 1 (Kempston Joystick)...
C 54508,3 ...then if Kempston Joystick is not present, revert to previously selected input device
C 54511,1 Load A with currently selected input device
C 54512,3 Point HL at start of Table of Start Addresses of Input Device Reading Routines
C 54515,3 Load HL with A-th entry from table (i.e. the routine for the currently selected input device)...
C 54518,3 ...and update jump (at #R54947) in input reading routine to this address
C 54521,3 Load index of currently selected input device into A
C 54524,2 Add 211 (index in Common Words Table for first "control method" string)
C 54526,3 Store as text code at #R54561
C 54529,3 Load HL with Display File address corresponding to (12, 14) (characters)...
C 54532,3 ...and move Bitmap Virtual Text Cursor here
C 54535,2 Set character to be repeated to 32 (SPACE)...
C 54537,3 ...
C 54540,3 Load HL with 20 as we need to draw across 20 character blocks
C 54543,3 Draw run of 20 SPACE characters (i.e. clear old "CONTROL : ..." text)
C 54546,3 Load HL with Display File address corresponding to (2, 14) (characters)...
C 54549,3 ...and move Bitmap Virtual Text Cursor here
C 54552,3 Point HL at Current Control Text (Control Selection Screen)
C 54555,3 Print text at location HL to screen using full screen width
C 54558,1 Set A to zero
C 54559,1 Return
b 54560 Index of Currently Selected Input Device
B 54560,1,1
b 54561 Current Control Text (on Control Selection Screen)
T 54561,3,B3 CONTROL : KEMPSTON JOYSTICK
c 54564 If Kempston Joystick is Not Present then Revert to Previously Selected Input Device
D 54564 Used by the routine at #R54505. Input:  B  Index of currently selected input device D  Index of previously selected input device Output: B  Index of currently selected input device if Kempston Joystick is present, otherwise index of previously selected input device
C 54564,2 Load A with current Kempston Joystick state
C 54566,2 If bits 5, 6 and 7 (i.e. unused bits) are reset, indicating presence of Kempston Joystick...
C 54568,1 ...then return
C 54569,1 Load A with index of previously selected input device...
C 54570,3 ...set as currently selected input device...
C 54573,1 ...and load into B
C 54574,1 Return
c 54575 If Keypress Was Enqueued then Return Index of Last Key Pressed, Else Wait for Keypress and Return Index
D 54575 Used by the routines at #R31468 and #R54647. Output: A  Index of key pressed The operand of the instruction at #R54575 represents an enqueued keypress. This is modified by the instructions at #R54593 and #R54656.
C 54575,2 Load A with enqueued key index...
C 54577,1 ...and if not zero...
C 54578,2 ...then skip ahead to #R54584
C 54580,1 Clear last pressed key...
C 54581,3 ...
C 54584,1 Wait for interrupt
C 54585,3 Load last pressed key into A...
C 54588,1 ...and if this is zero (i.e. no key pressed)...
C 54589,2 ...then loop back to #R54584
C 54591,1 Switch AF and AF'
C 54592,1 Set enqueued key index to zero...
C 54593,3 ...
C 54596,1 Switch AF and AF'
C 54597,1 Return
c 54598 Print Current Control Keys to Screen
D 54598 Used by the routines at #R26926 and #R54647.
C 54598,3 Point HL at list of current keyboard control characters
C 54601,3 Print LEFT key at (5, 6)...
C 54604,3 ...
C 54607,3 Print RIGHT key at (18, 6)...
C 54610,3 ...
C 54613,3 Print JUMP/UP key at (5, 8)...
C 54616,3 ...
C 54619,3 Print DOWN key at (18, 8)...
C 54622,3 ...
C 54625,3 Print MENU (FIRE) key at (5, 10)...
C 54628,3 ... (see trivia)
C 54631,1 Store HL (current position in list of current keyboard control characters)
C 54632,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 54635,1 Restore HL (current position in Current Keyboard Controls)
C 54636,1 Load current keyboard control character into A
C 54637,1 Advance HL by one byte to next keyboard control
C 54638,2 If current keyboard control character is not 32 (SPACE)...
C 54640,2 ...then skip ahead to #R54644
C 54642,2 Load A with 127 (index of "SP" graphic in character set)
C 54644,3 Print text/graphic character in A and advance Bitmap Virtual Text Cursor and return
c 54647 Redefine Keyboard Controls
D 54647 Used by the routine at #R26745.
C 54647,3 Print current control keys to Screen
C 54650,3 If keypress was enqueued then load A with index of last key pressed, otherwise wait for keypress and load A with index
C 54653,2 If key pressed was 13 (ENTER)...
C 54655,1 ...then return
C 54656,3 Set enqueued key index to index of key pressed
C 54659,2 Load B with 5 (as there are five controls)
C 54661,3 Point HL at start of list of current keyboard control characters
C 54664,2 Set current keyboard control character to zero
C 54666,1 Advance to next keyboard control character
C 54667,2 Decrease B (remaining number of keyboard control characters to clear) and loop back to #R54664 if not zero
C 54669,3 Load B with 5 and C with zero
C 54672,3 Point HL at start of list of current keyboard control characters
C 54675,1 Store BC (B = remaining number of controls to define, C = number of controls defined)
C 54676,1 Store HL (current position in List of Keyboard Control Characters)
C 54677,1 Load number of controls defined (0, 1, 2, 3 or 4) into A
C 54678,2 Reset all but bits 1 and 2 (to give 0, 2 or 4)
C 54680,2 Add 6 (to give 6, 8 or 10, the y-coordinates in characters of displayed keyboard controls)...
C 54682,1 ...and load into B
C 54683,1 Load A with number of controls defined (0, 1, 2, 3 or 4)
C 54684,2 Reset all but bit 0 (to give 0 or 1)
C 54686,1 Store AF (A = bit 0 of number of controls defined)
C 54687,1 Double A (to give 0 or 2)...
C 54688,1 ...and load into C
C 54689,1 Restore AF (A = bit 0 of number of controls defined)
C 54690,1 Store AF (A = bit 0 of number of controls defined)
C 54691,1 Add C to A (to give 0 or 3)
C 54692,1 Multiply A by four...
C 54693,1 ...to give 0 or 12...
C 54694,1 ...and load into C
C 54695,1 Restore AF (A = bit 0 of number of controls defined)
C 54696,1 Add value in C to A (to give 0 or 13)
C 54697,2 Add 5 (to give 5 or 18, the x-coordinates in characters of displayed keyboard controls)...
C 54699,1 ...and load into C
C 54700,1 Store BC (coordinates in characters of current control being defined)
C 54701,3 Load HL with Attribute File address for coordinates (C, B)...
C 54704,1 ...and set the FLASH Flag for this address...
C 54705,2 ...
C 54707,1 ...
C 54708,1 Restore BC (coordinates in characters of current control being defined)
C 54709,1 Store BC (coordinates in characters of current control being defined)
C 54710,3 Move Virtual Cursor (Bitmap) to Display File address for Coordinates x=C, y=B and load address into HL
C 54713,3 If keypress was enqueued then load A with index of last key pressed, otherwise wait for keypress and load A with index
C 54716,2 If key pressed was SPACE...
C 54718,3 ...then skip ahead to #R54744
C 54721,2 If index of key pressed is less than 48 (i.e. below "0")...
C 54723,3 ...then jump back to #R54708 (i.e. wait for next key press and try again)
C 54726,2 If index of key pressed is 91 or higher (i.e. above "Z")...
C 54728,3 ...then jump back to #R54708 (i.e. wait for next key press and try again)
C 54731,2 If index of key pressed is less than 58 (i.e. "9" or below)...
C 54733,3 ...then skip ahead to #R54744
C 54736,2 If index of key pressed is 65 or higher (i.e. "A" or above)...
C 54738,3 ...then skip ahead to #R54744
C 54741,3 Jump back to #R54708 (i.e. wait for next key press and try again)
C 54744,3 Set Zero Flag if key pressed is already assigned to a control, otherwise reset
C 54747,3 If key pressed is already assigned then jump back to #R54708 (i.e. wait for next key press and try again)
C 54750,3 Store pressed key index at #R23398
C 54753,2 If key was not SPACE...
C 54755,2 ...then skip ahead to #R54759
C 54757,2 Load A with 127 (index in character set of "SP" UDG at #R65516)
C 54759,3 Print text character in A and advance Bitmap Virtual Text Cursor
C 54762,1 Restore BC (coordinates in characters of current control being defined)
C 54763,3 Load HL with Attribute File address for coordinates (C, B)...
C 54766,1 ...and reset the FLASH Flag for this address...
C 54767,2 ...
C 54769,1 ...
C 54770,1 Restore HL (current position in List of Keyboard Control Characters)
C 54771,3 Load A with index of previously defined key...
C 54774,1 ...and store in List of Keyboard Control Characters
C 54775,1 Advance HL to next entry in List of Keyboard Control Characters
C 54776,1 Restore BC (B = remaining number of controls to define, C = number of controls defined)
C 54777,1 Increase C (number of controls defined)
C 54778,2 Decrease B (remaining number of controls to define) and loop back to #R54675 if not zero
C 54780,2 Load B with 5 (as each keyboard half-row holds five keys)
C 54782,3 Load HL with address of operand of instruction at #R54952 (MSB of "input address" for keyboard half-row reading for LEFT)...
C 54785,3 ...and store at #R23398
C 54788,3 Point HL at start of list of current keyboard control characters
C 54791,1 Store BC (B = remaining number of control keys to check)
C 54792,1 Store HL (pointer to current position in list of current keyboard control characters)
C 54793,4 Point IX at Lists of Characters on Each Keyboard Half-Row
C 54797,1 Load A with current keyboard control character index
C 54798,2 Set C (index in list of half-rows) to zero
C 54800,3 If current keyboard control character index is the same as the current character in keyboard half-row groups...
C 54803,2 ...then skip ahead to #R54810
C 54805,1 Increase C (index in list of half-rows)
C 54806,2 Advance to next entry in list of half-rows
C 54808,2 Loop back to #R54800
C 54810,1 Load A with index of current control key in list of half-rows
N 54811 At this point we know the index of the current key in the list of half-rows. We now need to identify which half row it belongs to.
C 54811,2 Set B (keyboard half-row index) to zero
C 54813,2 If index of key in current half-row is less than 5 (i.e. key is in the current half-row)...
C 54815,3 ...then skip ahead to #R54821
C 54818,1 Increase B (keyboard half-row index)
C 54819,2 Loop back to #R54813
N 54821 The MSB in the "input address" for the various keyboard half-rows obeys the progression (254, 253, 251, 247, 239, 223, 191, 127).
C 54821,1 Load A with index of keyboard half-row containing current key
C 54822,1 Store BC (B = index of keyboard half-row, C = index of key in list of half-rows)
C 54823,1 Increase B
C 54824,3 Load HL with 128
C 54827,1 Double value in HL
C 54828,2 Decrease B (index of keyboard half-row) and loop back to #R54827 if not zero
N 54830 HL now contains the value (128 * 2^n) where n is the (1-based) index of the relevant half-row. H contains (2^m), where m is the (zero-based) index of the relevant half-row.
C 54830,2 Load A with 255
C 54832,1 Subtract H (2^m) to give MSB of input address for relevant half-row
C 54833,3 Load HL with address of operand of instruction to modify (#R54952)...
C 54836,1 ...and set operand to value in A
N 54837 Next we need to modify the second part of the opcode for the instruction that checks the set bit in A to determine which key in the half-row was pressed. The range of opcode values are: #TABLE(default,centre,:w) { =h Opcode Value | =h Instruction } { 71 | BIT 0,A } { 79 | BIT 1,A } { 87 | BIT 2,A } { 95 | BIT 3,A } { 103 | BIT 4,A } TABLE#
C 54837,1 Advance HL by four bytes to operand of instruction at #R54956...
C 54838,1 ...
C 54839,1 ...
C 54840,1 ...
C 54841,3 ...and store at #R23398
C 54844,1 Restore BC (B = index of keyboard half-row, C = index of key in list of half-rows)
C 54845,1 Load B with five times index of keyboard half-row (value currently in B)...
C 54846,1 ...
C 54847,1 ...
C 54848,1 ...
C 54849,1 ... (B is now 0, 5, 10, 15, 20, 25, 30 or 35)
C 54850,1 Load A with index of key in list of half-rows...
C 54851,1 ...and subtract B (5 times index of half-row) to give index of key within current half-row
C 54852,1 Multiply this index by 8 (opcode interval between successive "BIT n,A" and "BIT n+1,A" instructions)...
C 54853,1 ...
C 54854,1 ...
C 54855,2 ...and add 71 (opcode for "BIT 0,A")
C 54857,3 Load HL with address of operand / opcode for "BIT n,A" instruction...
C 54860,1 ...and set "n" accordingly
C 54861,3 Advance HL by five bytes to operand of next "LD B,x" instruction (i.e. MSB of "input address" for next control)...
C 54864,1 ...
C 54865,3 ...and store at #R23398
C 54868,1 Restore HL (pointer to current position in list of current keyboard control characters, PUSHed at #R54792)
C 54869,1 Advance HL to next keyboard control character
C 54870,1 Store BC (B = remaining number of control keys to check, PUSHed at #R54791)
C 54871,2 Decrease B (remaining number of control keys to check) and loop back to #R54791 for next control key if not zero
C 54873,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed and return
c 54876 Set Zero Flag if Key Pressed is Already Assigned to a Control, Otherwise Reset
D 54876 Used by the routine at #R54647. Input:  A  Index of key pressed Output: F Zero Flag set if pressed key is already assigned, otherwise reset
C 54876,1 Store BC
C 54877,1 Store HL
C 54878,3 Point HL at start of list of current keyboard control characters
C 54881,2 Load B with 5 (as there are five controls to process)
C 54883,1 If key pressed is the same as current control key index...
C 54884,2 ...then skip ahead to #R54891
C 54886,1 Advance HL to next entry in list of current keyboard control characters
C 54887,2 Decrease B (remaining number of control characters to process) and loop back to #R54883 if not zero
C 54889,2 Reset Zero Flag
C 54891,1 Restore HL
C 54892,1 Restore BC
C 54893,1 Return
b 54894 Current Keyboard Controls
B 54894,1,1 Left
B 54895,1,1 Right
B 54896,1,1 Jump / Up
B 54897,1,1 Down
B 54898,1,1 Menu (Fire)
B 54899,3,3 Unused
b 54902 Lists of Characters on Each Keyboard Half-Row
T 54902,5,B1:4 (00) - IN 65278 (B = 254, C = 254)
T 54907,5,5 (01) - IN 65022 (B = 253, C = 254)
T 54912,5,5 (02) - IN 64510 (B = 251, C = 254)
T 54917,5,5 (03) - IN 63486 (B = 247, C = 254)
T 54922,5,5 (04) - IN 61438 (B = 239, C = 254)
T 54927,5,5 (05) - IN 57342 (B = 223, C = 254)
T 54932,5,B1:4 (06) - IN 49150 (B = 191, C = 254)
T 54937,5,1:B1:3 (07) - IN 32766 (B = 127, C = 254)
c 54942 Capture Keyboard Input, or Jump to Joystick Reading Routine, Loading Result into A
D 54942 Used by the routines at #R27136, #R32694, #R35296, #R35386, #R55138 and #R55768. Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 54942,3 Point HL at input control flags and reset all
C 54945,2 ...
N 54947 The operand of the instruction at #R54947 represents the start address of the input reading routine for the currently selected input device. This is modified by the instruction at #R54518.
C 54947,3 Jump to appropriate keyboard / joystick reading routine
c 54950 Capture Keyboard Input
D 54950 Used by the routine at #R54942. Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 54950,2 Load C with 254 (as all keyboard half-row "input addresses" have C = 254)
N 54952 The operand of the instruction at #R54952 represents the MSB of the "input address" to use in reading the keyboard for the currently defined LEFT key. This is modified by the routine at #R54647.
C 54952,2 Load B with MSB of "input address"
C 54954,2 Read keyboard
N 54956 The operand of the instruction at #R54956 represents the index of the bit to use in reading the keyboard. It is modified by the routine at #R54647.
C 54956,2 "N" key pressed so...
C 54958,3 ...store a LEFT input from control device
C 54961,2 Load B with MSB of "input address"
C 54963,2 Read keyboard
C 54965,2 "M" key pressed so...
C 54967,3 ...store a RIGHT input from control device
C 54970,2 IN 65022 reads the half row A to G...
C 54972,2 Read keyboard
C 54974,2 "A" key pressed so...
C 54976,3 ...store an UP input from control device
C 54979,2 IN 65278 reads the half row CAPS SHIFT to V
C 54981,2 Read keyboard
C 54983,2 "Z" key pressed so...
C 54985,3 ...store a DOWN input from control device
C 54988,2 IN 32766 reads the half row SPACE to B
C 54990,2 Read keyboard
C 54992,2 SPACE bar pressed so...
C 54994,3 ...store a FIRE input from control device
C 54997,1 Load stored input into A
C 54998,1 Return
c 54999 Capture Kempston Joystick Input Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 54999,2 Load 31 (Kempston port number) into A
C 55001,2 Read byte from port 31 (i.e. read state of joystick)
C 55003,2 If joystick moved right...
C 55005,3 ...store a RIGHT input from control device
C 55008,2 If joystick moved left...
C 55010,3 ...store a LEFT input from control device
C 55013,2 If joystick moved down...
C 55015,3 ...store a DOWN input from control device
C 55018,2 If joystick moved up...
C 55020,3 ...store an UP input from control device
C 55023,2 If fire button pressed...
C 55025,3 ...store a FIRE input from control device
C 55028,1 Return stored joystick movement in A
C 55029,1 Return
c 55030 Capture Cursor Joystick Input Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 55030,2 IN 63486 reads the half row 1 to 5
C 55032,2 ...
C 55034,2 Read keyboard/joystick
C 55036,2 If joystick moved left ("5" key pressed)...
C 55038,3 ...store a LEFT input from control device
C 55041,2 IN 61438 reads the half row O to 6
C 55043,2 Read keyboard/joystick
C 55045,2 If joystick moved right ("8" key pressed)...
C 55047,3 ...store a RIGHT input from control device
C 55050,2 If joystick moved down ("6" key pressed)...
C 55052,3 ...store a DOWN input from control device
C 55055,2 If joystick moved up ("7" key pressed)...
C 55057,3 ...store an UP input from control device
C 55060,2 If fire button pressed ("0" key pressed)...
C 55062,3 ...store a FIRE input from control device
C 55065,1 Return stored joystick movement in A
C 55066,1 Return
c 55067 Capture Sinclair Joystick 1 Input Output: A  Stored keypress (bits: 0=LEFT, 1=RIGHT, 2=UP, 3=DOWN, 4=FIRE)
C 55067,2 IN 61438 reads the half row O to 6
C 55069,2 ...
C 55071,2 ...
C 55073,2 If joystick moved left ("6" key pressed)...
C 55075,3 ...store a LEFT input from control device
C 55078,2 If joystick moved right ("7" key pressed)...
C 55080,3 ...store a RIGHT input from control device
C 55083,2 If joystick moved down ("8" key pressed)...
C 55085,3 ...store a DOWN input from control device
C 55088,2 If joystick moved down ("9" key pressed)...
C 55090,3 ...store an UP input from control device
C 55093,2 If fire button pressed ("0" key pressed)...
C 55095,3 ...store a FIRE input from control device
C 55098,1 Return stored joystick movement in A
C 55099,1 Return
c 55100 Store a LEFT Input from Control Device
D 55100 Used by the routines at #R54950, #R54999, #R55030 and #R55067. Input:  HL Pointer to Input Control Flags (#R23487)
C 55100,2 Set Left Pressed Flag
C 55102,1 Return
c 55103 Store a RIGHT Input from Control Device
D 55103 Used by the routines at #R54950, #R54999, #R55030 and #R55067. Input:  HL Pointer to Input Control Flags (#R23487)
C 55103,2 Set Right Pressed Flag
C 55105,1 Return
c 55106 Store an UP Input from Control Device
D 55106 Used by the routines at #R54950, #R54999, #R55030 and #R55067. Input:  HL Pointer to Input Control Flags (#R23487)
C 55106,2 Set Up Pressed Flag
C 55108,1 Return
c 55109 Store a DOWN Input from Control Device
D 55109 Used by the routines at #R54950, #R54999, #R55030 and #R55067. Input:  HL Pointer to Input Control Flags (#R23487)
C 55109,2 Set Down Pressed Flag
C 55111,1 Return
c 55112 Store a FIRE Input from Control Device
D 55112 Used by the routines at #R54950, #R54999, #R55030 and #R55067. Input:  HL Pointer to Input Control Flags (#R23487)
C 55112,2 Set Fire Pressed Flag
C 55114,1 Return
c 55115 Display Execute / Reject Command Window and Return if Execute Chosen, Else Exit to Main Game Loop
D 55115 Used by the routines at #R29330, #R29488, #R29619, #R29756, #R30145, #R30686, #R30968, #R31041, #R31257, #R31537, #R31688, #R32252 and #R32895.
C 55115,3 Play Hiss-Type Sound
C 55118,2 Draw "EXECUTE / REJECT COMMAND" Window...
C 55120,3 ...
C 55123,3 Point to "EXECUTE COMMAND..." text...
C 55126,3 ...and print to screen
C 55129,3 Process keyboard / joystick input on a menu and load A with selected item index...
C 55132,1 ...and if this is 0 (i.e. Execute Command)...
C 55133,1 ...then return
C 55134,1 Remove return address from stack
C 55135,3 Set Magic Knight's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop
c 55138 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
D 55138 Used by the routines at #R26745, #R26855, #R26926, #R27762, #R28506, #R28554, #R29330, #R32252, #R33338, #R33834, #R34122, #R34265, #R54647, #R55364 and #R55685.
C 55138,3 Play Hiss-Type Sound
C 55141,2 Draw Window 14 ("PRESS FIRE TO CONTINUE")...
C 55143,3 ...
C 55146,3 Point HL at "PRESS FIRE TO CONTINUE" text string...
C 55149,3 ...and print to screen
C 55152,3 Capture keyboard or joystick input loading result into A
C 55155,2 If bit 4 (Fire Button Flag) is not set...
C 55157,2 ...then loop back to #R55152
C 55159,3 Wait for Fire Button / Key to be Released
C 55162,3 Play upward scale sound and return
c 55165 Display "YOUR HANDS ARE FULL" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55165 Used by the routines at #R29330, #R29619 and #R31537.
C 55165,3 Point HL at "YOUR HANDS ARE FULL" text
C 55168,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55170 Display "YOU ARE WEARING TOO MUCH" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55170 Used by the routine at #R31537. Input:  HL  (Entry at #R55173 only) Text to print in window
C 55170,3 Point HL at "YOU ARE WEARING TOO MUCH" text
N 55173 This entry point is used by the routines at #R33100, #R33140, #R33290, #R33304, #R33318, #R33332, #R33448, #R33462, #R33468, #R55165, #R55177, #R55182, #R55187, #R55192, #R55197, #R55202, #R55207, #R55212, #R55217 and #R55222.
C 55173,3 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop...
b 55176 Data block at 55176
B 55176,1,1 ...
c 55177 Display "THE [object] IS TOO HEAVY FOR YOU" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55177 Used by the routines at #R29330 and #R29619.
C 55177,3 Point HL at "THE [name of current object] IS TOO HEAVY FOR YOU" text
C 55180,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55182 Display "YOU CANNOT WEAR THAT" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55182 Used by the routine at #R31537.
C 55182,3 Point HL at "YOU CANNOT WEAR THAT" text
C 55185,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55187 Display "THERE IS NOTHING NEAR ENOUGH" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55187 Used by the routine at #R29330.
C 55187,3 Point HL at "THERE IS NOTHING NEAR ENOUGH" text
C 55190,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55192 Display "THERE IS NOTHING IN THIS ROOM" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55192 Used by the routine at #R29330.
C 55192,3 Point HL at "THERE IS NOTHING IN THIS ROOM" text
C 55195,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55197 Display "YOU CANNOT DROP THE [object]" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55197 Used by the routine at #R29488.
C 55197,3 Point HL at "YOU CANNOT DROP THE [name of current object]" text
C 55200,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55202 Display "[Character]'S HANDS ARE EMPTY" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55202 Used by the routine at #R29619.
C 55202,3 Point HL at "[Name of Current Character]'S HANDS ARE EMPTY" text
C 55205,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55207 Display "[Character] WANTS TO KEEP THE [Object]" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55207 Used by the routine at #R29619.
C 55207,3 Point HL at "[Name of Current Character] WANTS TO KEEP THE [name of Current Object]" text
C 55210,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55212 Display "[Character]'S HANDS ARE FULL" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55212 Used by the routine at #R29756.
C 55212,3 Point HL at "[Name of Current Character]'S HANDS ARE FULL" text
C 55215,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55217 Display "[Character] IS NOT STRONG ENOUGH" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55217 Used by the routine at #R29756.
C 55217,3 Point HL at "[Name of Current Character] IS NOT STRONG ENOUGH" text
C 55220,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55222 Display "[Character] DOES NOT WANT THE [Object]" Window (13), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55222 Used by the routine at #R29756.
C 55222,3 Point HL at "[Name of Current Character] DOES NOT WANT THE [name of Current Object]" text
C 55225,2 Display Window 13 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55227 Display "[Character] IS ALREADY ASLEEP" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55227 Used by the routine at #R30810.
C 55227,3 Point HL at "[Name of Current Character] IS ALREADY ASLEEP" text
C 55230,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55232 Display "[Character] IS TOO WAKEFUL TO SLEEP" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55232 Used by the routine at #R30810.
C 55232,3 Point HL at "[Name of Current Character] IS TOO WAKEFUL TO SLEEP" text
C 55235,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55237 Display "[Character] DOES NOT WANT TO BE COMMANDED BY YOU" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55237 Used by the routine at #R33558.
C 55237,3 Point HL at "[Name of Current Character] DOES NOT WANT TO BE COMMANDED BY YOU" text
C 55240,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55242 Display "[Character] IS ALREADY AWAKE" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55242 Used by the routine at #R30842.
C 55242,3 Point HL at "[Name of Current Character] IS ALREADY AWAKE" text
C 55245,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55247 Display "[Character] IS TOO TIRED TO WAKE UP" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55247 Used by the routine at #R30842.
C 55247,3 Point HL at "[Name of Current Character] IS TOO TIRED TO WAKE UP" text
C 55250,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55252 Display "[Character] CANNOT HELP YOU" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55252 Used by the routines at #R30874, #R33100, #R33140, #R33170, #R33290, #R33304, #R33318, #R33338 and #R33448.
C 55252,3 Point HL at "[Name of Current Character] CANNOT HELP YOU " text
C 55255,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55257 Display "[Character] IS TOO TIRED TO HELP YOU" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55257 Used by the routine at #R30874.
C 55257,3 Point HL at "[Name of Current Character] IS TOO TIRED TO HELP YOU" text
C 55260,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55262 Display "THERE ARE NO BARRIERS TO BE REMOVED HERE." Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55262 Used by the routine at #R31122.
C 55262,3 Point HL at "THERE ARE NO BARRIERS TO BE REMOVED HERE." text
C 55265,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55267 Display "YOU CANNOT EXAMINE THE USS PISCES IF..." Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55267 Used by the routine at #R30145.
C 55267,3 Point HL at "YOU CANNOT EXAMINE THE USS PISCES IF..." text
C 55270,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55272 Display "YOU HAVE ARRIVED AT X.Y.Z." Window (17), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55272 Used by the routine at #R32252.
C 55272,3 Point HL at "YOU HAVE ARRIVED AT X.Y.Z." text
C 55275,2 Display Window 17 with text at HL, wait for fire to be pressed then jump to Main Game Loop...
c 55277 Display "THE STARSHIP HAS ARRIVED AT [Starship Location]" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55277 Used by the routine at #R31688.
C 55277,3 Point HL at "THE STARSHIP HAS ARRIVED AT [name of Current Starship Location]" text
C 55280,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55282 Display "THERE IS NO WRITING FOR ME TO READ" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55282 Used by the routine at #R30968.
C 55282,3 Point HL at "THERE IS NO WRITING FOR ME TO READ" text...
C 55285,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55287 Display Window 17 with Text at HL, Wait for Fire to be Pressed then Jump to Main Game Loop
D 55287 Used by the routine at #R55272. Input:  HL  Text to print in window
C 55287,3 Display Window 17 with text at HL, wait for fire to be pressed then jump to Main Game Loop...
b 55290 Data block at 55290
B 55290,1,1 ...
c 55291 Display "GORDON AND SARAB ARE BOTH ASLEEP" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55291 Used by the routines at #R31688 and #R32895. Input:  HL  (Entry at #R55294 only) Text to print in window
C 55291,3 Point HL at "GORDON AND SARAB ARE BOTH ASLEEP" text
N 55294 This entry point is used by the routines at #R55277, #R55282, #R55298, #R55303, #R55312, #R55317, #R55322 and #R55327.
C 55294,3 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop...
b 55297 Data block at 55297
B 55297,1,1 ...
c 55298 Display "THERE IS NOBODY WITHIN SUB-SPACE COMMUNICATOR RANGE" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55298 Used by the routine at #R32895.
C 55298,3 Point HL at "THERE IS NOBODY WITHIN SUB-SPACE COMMUNICATOR RANGE" text
C 55301,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55303 Display "[Character] HEARS A VOICE AND IGNORES IT" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55303 Used by the routine at #R30686.
C 55303,3 Point HL at "[Name of Current Character] HEARS A VOICE AND IGNORES IT" text
C 55306,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55308 Display Window 29 with Text at HL, Wait for Fire to be Pressed then Jump to Main Game Loop
D 55308 Used by the routines at #R55227, #R55232, #R55237, #R55242, #R55247, #R55252, #R55257, #R55262, #R55267, #R55344, #R55349, #R55354 and #R55359. Input:  HL Text to print in window
C 55308,3 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop...
b 55311 Data block at 55311
B 55311,1,1 ...
c 55312 Display "[Character] DOES NOT RECOGNISE YOUR AUTHORITY" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55312 Used by the routine at #R30686.
C 55312,3 Point HL at "[Name of Current Character] DOES NOT RECOGNISE YOUR AUTHORITY" text
C 55315,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55317 Display "[Character] DOES NOT LIKE STARFLEET SO HE IGNORES YOU" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55317 Used by the routine at #R30686.
C 55317,3 Point HL at "[Name of Current Character] DOES NOT LIKE STARFLEET SO HE IGNORES YOU " text
C 55320,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55322 Display "[Character] HEARS A MUFFLED VOICE..." Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55322 Used by the routine at #R30686.
C 55322,3 Point HL at "[Name of Current Character] HEARS A MUFFLED VOICE..." text
C 55325,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55327 Display "GORDON AND SARAB CANNOT UNDERSTAND YOU" Window (12), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55327 Used by the routines at #R31688 and #R32895.
C 55327,3 Point HL at "GORDON AND SARAB CANNOT UNDERSTAND YOU" text
C 55330,2 Display Window 12 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55332 Display "YOU CANNOT CAST THAT SPELL NOW..." Window (10), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55332 Used by the routines at #R31122, #R31188 and #R31312. Input:  HL  (Entry at #R55335 only) Text to print in window
C 55332,3 Point HL at "YOU CANNOT CAST THAT SPELL NOW..." text
N 55335 This entry point is used by the routine at #R55339.
C 55335,3 Display Window 10 with text at HL, wait for fire to be pressed then jump to Main Game Loop...
b 55338 Data block at 55338
B 55338,1,1 ...
c 55339 Display "[Character] HAS TAKEN YOUR PHOTO" Window (10), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55339 Used by the routine at #R33170.
C 55339,3 Point HL at "[Name of Current Character] HAS TAKEN YOUR PHOTO" text
C 55342,2 Display Window 10 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55344 Display "THE BARRIER HAS FADED INTO NOTHINGNESS" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55344 Used by the routine at #R31122.
C 55344,3 Point HL at "THE BARRIER HAS FADED INTO NOTHINGNESS" text
C 55347,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55349 Display "YOU CANNOT DROP THE [Object] HERE" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55349 Used by the routine at #R29488.
C 55349,3 Point HL at "YOU CANNOT DROP THE [name of current object] HERE " text
C 55352,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55354 Display "[Character] HAS GONE TO SLEEP" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55354 Used by the routine at #R30810.
C 55354,3 Point HL at "[Name of Current Character] HAS GONE TO SLEEP" text
C 55357,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55359 Display "[Character] HAS WOKEN UP" Window (29), Wait for Fire to be Pressed then Jump to Main Game Loop
D 55359 Used by the routine at #R30842.
C 55359,3 Point HL at "[Name of Current Character] HAS WOKEN UP" text
C 55362,2 Display Window 29 with text at HL, wait for fire to be pressed then jump to Main Game Loop
c 55364 Display an Information Window with Text at HL, Wait for Fire to be Pressed then Jump to Main Game Loop
D 55364 This routine is CALLed by the instructions at #R31025, #R55173, #R55287, #R55294, #R55308 and #R55335. Immediately after each of these calls is a byte of data representing the index of the window to draw. This data is read in this routine by loading the RETurn address (where the data is held) into DE and then performing a LD A,(DE). Input:  HL  Points to text to print in the window
C 55364,1 Remove value on top of stack, as we are not RETurning to this address, but reading data from it
C 55365,1 Load A with window index data...
C 55366,3 ...and modify instruction at #R55386 with this index
C 55369,1 Store HL (pointer to text to print)
C 55370,1 Load eight times window index into HL...
C 55371,2 ...
C 55373,1 ...
C 55374,1 ...
C 55375,1 ...
C 55376,3 Point DE at y-coordinate of top of window in first entry of Window Data table at #R37089...
C 55379,1 ...and add HL as offset in HL
C 55380,1 Swap DE (now points to y-coordinate of top of required window) and HL (now points to first entry in Window Data table)
C 55381,1 Restore HL (pointer to text to print)
C 55382,3 Adjust height of window to accommodate text
C 55385,1 Store HL (pointer to start of text data)
N 55386 The operand of the instruction at #R55386 represents a window index. This is modified by the instruction at #R55366.
C 55386,2 Draw window with index specified in data previously...
C 55388,3 ...
C 55391,1 Restore HL (pointer to start of text data)
C 55392,3 Print text to screen
C 55395,3 Display "PRESS FIRE TO CONTINUE" Window and wait for fire to be pressed
C 55398,3 Set Magic Knight's available action flags, validate I.D. Card if appropriate and jump to start of Main Game Loop
c 55401 Scroll a Region of the Display File Up a Pixel Row Without Wrapping
D 55401 Used by the routines at #R32124 and #R35397.
C 55401,3 Load HL with address of routine at #R55407 (return)
C 55404,3 Jump to #R55470 (scroll a region of the Display File up a pixel row then return)
c 55407 Do Nothing (Return)
D 55407 Used by the routines at #R55470 and #R55559.
C 55407,1 Return
c 55408 Scroll a Region of the Display File Up a Pixel Row With Wrapping
D 55408 Used by the routine at #R32694.
C 55408,3 Load HL with address of routine at #R55414 (restore copied bitmap data from top of region to scroll to bottom of region to scroll)
C 55411,3 Jump to #R55470 (scroll a region of the Display File up a pixel row then return)
c 55414 Restore Copied Bitmap Data from Top of Region to Scroll to Bottom of Region to Scroll
D 55414 (See trivia) Input:  B  Width of region to scroll (characters) HL  Points to bottom pixel row (left-most character) of region to scroll
C 55414,3 Point DE at copied bitmap data at #R23296
C 55417,1 Swap DE (now points to bottom pixel row in region to scroll) and HL (now points to copied bitmap data at #R23296)
C 55418,2 Copy previously stored bitmap data into bottom pixel row of region to scroll
C 55420,1 Return
c 55421 Unused routine
D 55421 See trivia and functionally identical routine at #R55455.
c 55436 Scroll a Region of the Display File Down a Pixel Row Without Wrapping
D 55436 Used by the routines at #R32065 and #R35459.
C 55436,3 Load HL with address of routine at #R55407 (return)
C 55439,3 Jump to #R55559 (scroll a region of the Display File down a pixel row then return)
c 55442 Scroll a Region of the Display File Down a Pixel Row With Wrapping
D 55442 Used by the routine at #R32694.
C 55442,3 Load HL with address of routine at #R55448 (restore copied bitmap data from bottom of region to scroll to top of region to scroll)
C 55445,3 Jump to #R55559 (scroll a region of the Display File down a pixel row then return)
c 55448 Restore Copied Bitmap Data from Bottom of Region to Scroll to Top of Region to Scroll
D 55448 (See trivia) Input:  B  Width of region to scroll (characters) HL  Points to top pixel row (left-most character) of region to scroll
C 55448,3 Point DE at copied bitmap data at #R23296
C 55451,1 Swap DE (now points to bottom pixel row in region to scroll) and HL (now points to copied bitmap data at #R23296)
C 55452,2 Copy previously stored bitmap data into bottom pixel row of region to scroll
C 55454,1 Return
c 55455 Unused routine
D 55455 See trivia and functionally identical routine at #R55421.
c 55470 Scroll a Region of the Display File Up a Pixel Row
D 55470 Used by the routines at #R55401 and #R55408. Input:  HL  Address to jump to at the end of this routine (instruction at #R55556)
C 55470,3 Modify jump (at #R55556) destination to address stored in HL
C 55473,3 Load y-coordinate of top of region to scroll (pixels) into C...
C 55476,1 ...
C 55477,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 55480,2 Load HL with double y-coordinate of top of region to scroll...
C 55482,1 ...(as entries in table at #R26240 are two bytes wide)...
C 55483,1 ...
C 55484,1 ...and add to DE as offset in HL
C 55485,1 Load Display File address of pixel row of interest into DE...
C 55486,1 ...
C 55487,1 ...
C 55488,1 Swap HL (now Display File address of start of A-th pixel row) and DE (now points to entry in table at #R26240)
C 55489,3 Load y-coordinate of bottom of region to scroll (pixels) into A...
C 55492,1 ...and subtract C to get height of region to scroll (pixels)
C 55493,1 Swap AF and AF' (A' now holds height of region to scroll in pixels)
C 55494,3 Load C with x-coordinate of left edge of region to scroll (characters)...
C 55497,1 ...
C 55498,1 Add this x-coordinate value as offset (via OR) to HL...
C 55499,1 ...
C 55500,1 ...
C 55501,3 Load A with x-coordinate of right edge of region to scroll (characters)
C 55504,1 Subtract C...
C 55505,1 ...and add one to get width (characters) of region to scroll
C 55506,2 Load BC with width of region to scroll (characters)...
C 55508,1 ...
C 55509,1 Store BC (width of region to scroll in characters)
C 55510,1 Store HL (current position in Display File, at left edge of top pixel row in region to scroll)
C 55511,3 Point DE at #R23296
C 55514,2 Copy BC bytes of data from HL to DE
C 55516,1 Restore HL (current position in Display File, at left edge of top pixel row in region to scroll)
C 55517,1 Restore BC (width of region to scroll in characters)
C 55518,1 Swap all registers (B' = width of region to scroll in characters)
C 55519,1 Swap AF and AF' (A now holds height of region to scroll in pixels)
C 55520,3 If height of region to scroll in pixels is zero then skip ahead to #R55555
C 55523,1 Load B with height of region to scroll in pixels
C 55524,1 Swap all registers (B = width of region to scroll, B' = remaining number of pixel rows to scroll)
C 55525,1 Load D and A with H plus 1 and E with L...
C 55526,1 ...
C 55527,1 ...
C 55528,1 ...
C 55529,2 If any of three least significant bits in A are set (i.e. at least one of the three least significant bits in H were also set)...
C 55531,3 ...then skip ahead to #R55545
N 55534 At least one of the three least significant bits of H are set, meaning we could be at the top of a third of the display
C 55534,1 Move DE on by 32 bytes to move up one character row (eight rows of pixels)...
C 55535,2 ...
C 55537,1 ...
C 55538,3 If L hasn't gone over 256 (i.e. we haven't moved 32 bytes on from the top pixel row of the bottom character row of a third) then skip ahead to #R55545...
C 55541,1 ...else move up by a third...
C 55542,2 ...
C 55544,1 ...
C 55545,1 Swap DE (now points to start of upper pixel row) and HL (now points to start of lower pixel row)
C 55546,1 Store HL (pointer to lower pixel row)
C 55547,1 Store BC (B = width of region to scroll, in characters)
C 55548,2 Copy row of bitmap data up a row from HL to DE
C 55550,1 Restore BC (B = width of region to scroll, in characters)
C 55551,1 Store HL (pointer to upper pixel row)
C 55552,1 Swap all registers (B = remaining number of pixel rows to scroll, B' = width of region to scroll)
C 55553,2 Loop back to #R55524 to copy next row of pixels up
C 55555,1 Swap all registers
N 55556 The operand of the instruction at #R55556 is the address to jump to upon completion of this routine. This is modified by the instruction at #R55470, set to the value in HL at the start of this routine. The possible values are #R55407 (return) or #R55414 (restore copied bitmap data to bottom of region to scroll, then return).
C 55556,3 Jump to address that was in HL at start of this routine (return, or place copied bitmap data at bottom of scrolled region then return)
c 55559 Scroll a Region of the Display File Down a Pixel Row
D 55559 Used by the routines at #R55436 and #R55442. Input:  HL  Address to jump to at the end of this routine (instruction at #R55648)
C 55559,3 Modify jump (at #R55648) destination to address stored in HL
C 55562,3 Load y-coordinate of bottom of region to scroll (pixels) into A and C...
C 55565,1 ...
C 55566,3 Point DE at Table of Display File Addresses of Start of Each Pixel Row
C 55569,2 Load HL with double y-coordinate of bottom of region to scroll...
C 55571,1 ...(as entries in table at #R26240 are two bytes wide)...
C 55572,1 ...
C 55573,1 ...and add to DE as offset in HL
C 55574,1 Load Display File address of pixel row of interest into DE...
C 55575,1 ...
C 55576,1 ...
C 55577,1 Swap HL (now Display File address of start of A-th pixel row) and DE (now points to entry in table at #R26240)
C 55578,3 Load y-coordinate of top of region to scroll (pixels) into B...
C 55581,1 ...
C 55582,1 Load y-coordinate of bottom of region to scroll into A...
C 55583,1 ...and subtract B to get height of region to scroll (pixels)
C 55584,1 Swap AF and AF' (A' now holds height of region to scroll in pixels)
C 55585,3 Load C with x-coordinate of left edge of region to scroll (characters)...
C 55588,1 ...
C 55589,1 Add this x-coordinate value as offset (via OR) to HL...
C 55590,1 ...
C 55591,1 ...
C 55592,3 Load A with x-coordinate of right edge of region to scroll (characters)
C 55595,1 Subtract C...
C 55596,1 ...and add one to get width (characters) of region to scroll
C 55597,2 Load BC with width of region to scroll (characters)...
C 55599,1 ...
C 55600,1 Store BC (width of region to scroll in characters)
C 55601,1 Store HL (current position in Display File, at left edge of bottom pixel row in region to scroll)
C 55602,3 Point DE at #R23296
C 55605,2 Copy BC bytes of data from HL to DE
C 55607,1 Restore HL (current position in Display File, at left edge of bottom pixel row in region to scroll)
C 55608,1 Restore BC (width of region to scroll in characters)
C 55609,1 Swap all registers (B' = width of region to scroll in characters)
C 55610,1 Swap AF and AF' (A now holds height of region to scroll in pixels)
C 55611,3 If height of region to scroll in pixels is zero then skip ahead to #R55647
C 55614,1 Load B with height of region to scroll in pixels
C 55615,1 Swap all registers (B = width of region to scroll, B' = remaining number of pixel rows to scroll)
C 55616,1 Load D and A with H minus 1 and E with L...
C 55617,1 ...
C 55618,1 ...
C 55619,1 ...
C 55620,1 Invert all bits in A
C 55621,2 If any of three least significant bits in A are set (i.e. at least one of the three least significant bits in H were also set)...
C 55623,3 ...then skip ahead to #R55637
N 55626 At least one of the three least significant bits of H are set, meaning we could be at the top of a third of the display
C 55626,1 Move DE back by 32 bytes to move up one character row (eight rows of pixels)...
C 55627,2 ...
C 55629,1 ...
C 55630,3 If E hasn't gone under zero (i.e. we haven't moved 32 bytes back from the top character row of a third) then skip ahead to #R55637...
C 55633,1 ...else move down by a third...
C 55634,2 ...
C 55636,1 ...
C 55637,1 Swap DE (now points to start of lower pixel row) and HL (now points to start of upper pixel row)
C 55638,1 Store HL (pointer to upper pixel row)
C 55639,1 Store BC (B = width of region to scroll, in characters)
C 55640,2 Copy row of bitmap data down a row from HL to DE
C 55642,1 Restore BC (B = width of region to scroll, in characters)
C 55643,1 Store HL (pointer to upper pixel row)
C 55644,1 Swap all registers (B = remaining number of pixel rows to scroll, B' = width of region to scroll)
C 55645,2 Loop back to #R55615 to copy next row of pixels down
C 55647,1 Swap all registers
N 55648 The operand of the instruction at #R55648 is the address to jump to upon completion of this routine. This is modified by the instruction at #R55559, set to the value in HL at the start of this routine. The possible values are #R55407 (return) or #R55448 (restore copied bitmap data to top of region to scroll, then return).
C 55648,3 Jump to address that was in HL at start of this routine (return, or place copied bitmap data at top of scrolled region then return)
c 55651 Flash Border and Screen (as in Cast a Spell)
D 55651 Used by the routines at #R31122, #R31280, #R31312 and #R31468.
C 55651,2 Load B with 96 (number of times to repeat routine)
C 55653,3 Load DE with 576 (number of bytes to modify - i.e. bottom 18 rows)
C 55656,3 Point HL at start of 7th row in Attribute File
C 55659,1 Load attribute byte into A
C 55660,2 Clear three lowest bits (i.e. INK colour) preserving only PAPER, BRIGHT and FLASH bits
C 55662,1 Place modified value into C
C 55663,1 Get original attribute from screen again
C 55664,1 Increase by one
C 55665,2 Clear all bits except the lowest three (i.e. INK colour)
C 55667,2 Set border colour to A
C 55669,1 Combine other bits back in
C 55670,2 Update border / speaker state
C 55672,1 Load modified value back into Attribute File
C 55673,1 Move to next byte in Attribute File
C 55674,1 Reduce DE (reducing number of attribute bytes left to modify)
C 55675,1 If DE is not zero (i.e. there are more attribute bytes to modify)...
C 55676,1 ...
C 55677,2 ...then loop back to #R55659
C 55679,2 Loop back for another pass
C 55681,1 Set A to zero
C 55682,2 Reset border to black and reset speaker state
C 55684,1 Return
c 55685 Display Cyan "Game Over" Window and Return to Control Selection Menu
D 55685 Used by the routines at #R27136, #R27762, #R28470, #R28482, #R28494, #R28542, #R29488, #R30940, #R31312, #R31468, #R31688, #R32252 and #R53937. Input:  HL Points to location of a string
C 55685,4 Reset Game In Progress Flag (IY = 23610)
C 55689,3 Adjust height of window 24 ("Game Over" Window) to accommodate text...
C 55692,3 ...
C 55695,1 Store HL (points to first character of text to display)
C 55696,2 Draw Window 24 ("Game Over" Window)...
C 55698,3 ...
C 55701,3 Point to string for percentage completion
C 55704,3 Point to string for time left
C 55707,3 Insert current time and score into "Time Left" and "Percentage Completion" texts
C 55710,3 Point HL at "GAME OVER / TOTAL COMPLETION XX% / TIME LEFT XX DAYS" text...
C 55713,3 ...and print to screen
C 55716,1 Restore HL (points to first character of text to display)
C 55717,3 Print text to screen
C 55720,3 Display "PRESS FIRE TO CONTINUE" Window and Wait for Fire to be Pressed
C 55723,3 Display and handle Input Device Selection Menu
c 55726 Advance HL by A Words, Load HL with Word at Location HL as Address and Jump to it
D 55726 Used by the routines at #R30001, #R30686, #R30874 and #R31041. Input:  A  An index HL  First entry in list of addresses
C 55726,3 Load address with index A in a list of addresses at HL into HL
C 55729,1 Jump to address in HL
c 55730 Load address with index A in a list of addresses at HL into HL
D 55730 Used by the routines at #R27762, #R28264, #R54505 and #R55726. Input:  A Index of required entry in list (0 is first) HL  Address of start of list Output: HL  A-th address in list at HL (input)
C 55730,1 Double offset value...
C 55731,2 ...and load into DE...
C 55733,1 ...
C 55734,1 Add doubled offset to address in HL
N 55735 This entry point is used by the routines at #R28785, #R29036 and #R54411.
C 55735,1 Load address at HL into HL...
C 55736,1 ...
C 55737,1 ...
C 55738,1 ...
C 55739,1 Return
c 55740 Set New Random Seed and Load A and E with a Random Number
D 55740 Used by the routines at #R36273 and #R55760. Output: A  LSB of new random seed E  LSB of new random seed
C 55740,1 Store HL
C 55741,1 Store BC
C 55742,4 Load system variables Seed (hi) and Frames (1) into BC
C 55746,3 Load system variable Seed into HL
C 55749,1 Add these together
C 55750,1 Add together H and L in A...
C 55751,1 ...
C 55752,1 ...and load into L
C 55753,3 Place new HL back into system variable Seed
C 55756,1 Restore BC
C 55757,1 Restore HL
C 55758,1 Load LSB of new seed into E
C 55759,1 Return
c 55760 Unused routine
D 55760 This routine generates a random seed / random number up to B. Input:  B  Cap value
C 55760,3 Set new random seed and load A and E with a random number
C 55763,1 If random seed is greater than or equal to B...
C 55764,2 ...then loop back to #R55760
C 55766,1 Load value into E
C 55767,1 Return
c 55768 Select Magic Knight's Room and USS Pisces' Current Location (Cheat / Debug Routine)
D 55768 Used by the routine at #R27136. Input:  A  Keyboard / joystick input
C 55768,3 Store keyboard / joystick input at #R55775
C 55771,3 Set Zero Flag if Cheat Mode Enabled Flag is reset (see trivia)...
C 55774,1 ...
N 55775 The operand of the instruction at #R55775 represents the most recent keyboard / joystick input. This is modified by the instruction at #R55768.
C 55775,2 Restore keyboard / joystick input to A
C 55777,1 Return is Zero Flag was set
C 55778,1 Remove return address from top of Stack
C 55779,3 Set parameters (for Cheat Routine Sound) and play
N 55782 This entry point is used by the routine at #R55814.
C 55782,2 Set BORDER to red...
C 55784,2 ...
C 55786,3 Capture keyboard or joystick input loading result into A
C 55789,2 If left pressed...
C 55791,2 ...then jump to #R55819 (decrease Magic Knight's current room index, wrapping around to 24 if below zero)
C 55793,2 If right pressed...
C 55795,2 ...then jump to #R55836 (increase Magic Knight's current room index, wrapping around to zero if above 24)
C 55797,2 If up pressed...
C 55799,3 ...then jump to #R55869 (increase USS Pisces' current location index, wrapping around to 1 if above 24)
C 55802,2 If down pressed...
C 55804,3 ...then jump to #R55853 (decrease USS Pisces' current location index, wrapping around to 24 if below 1)
C 55807,2 If fire pressed...
C 55809,3 ...then jump to #R55887 (exit Cheat / Debug Mode)
C 55812,2 Loop back to #R55782
c 55814 Cheat / Debug Routine Draw Magic Knight's Current Room then Jump Back into Cheat Routine Main Loop
D 55814 Used by the routines at #R55819, #R55836, #R55853 and #R55869.
C 55814,3 Draw Magic Knight's current room, draw objects and characters and initialise room-specific data
C 55817,2 Jump back into Cheat Routine main loop
c 55819 Cheat / Debug Routine Decrease Magic Knight's Current Room Index, Wrapping Around to 24 if Below Zero
D 55819 Used by the routine at #R55768.
C 55819,3 Decrease index of Magic Knight's current room...
C 55822,1 ...
C 55823,3 ...
C 55826,3 If new room index is not less than zero then draw Magic Knight's current room then jump back into Cheat Routine Main Loop
C 55829,2 Set new room index to 24...
C 55831,3 ...
C 55834,2 Draw Magic Knight's current room then jump back into Cheat Routine Main Loop
c 55836 Cheat / Debug Routine Increase Magic Knight's Current Room Index, Wrapping Around to Zero if Above 24
D 55836 Used by the routine at #R55768.
C 55836,3 Increase index of Magic Knight's current room...
C 55839,1 ...
C 55840,3 ...
C 55843,2 If new room index is 25...
C 55845,2 ...then draw Magic Knight's current room then jump back into Cheat Routine Main Loop
C 55847,1 Set new room index to zero...
C 55848,3 ...
C 55851,2 Draw Magic Knight's current room then jump back into Cheat Routine Main Loop
c 55853 Cheat / Debug Routine Decrease USS Pisces' Current Location Index, Wrapping Around to 24 if Below 1
D 55853 Used by the routine at #R55768.
C 55853,3 Decrease index of USS Pisces' current location...
C 55856,1 ...
C 55857,3 ...
C 55860,2 If new location index is not zero then draw Magic Knight's current room then jump back into Cheat Routine Main Loop
C 55862,2 Set new location index to 24...
C 55864,3 ...
C 55867,2 Draw Magic Knight's current room then jump back into Cheat Routine Main Loop
c 55869 Cheat / Debug Routine Increase USS Pisces' Current Location Index, Wrapping Around to 1 if Above 24
D 55869 Used by the routine at #R55768.
C 55869,3 Increase index of USS Pisces' current location...
C 55872,1 ...
C 55873,3 ...
C 55876,2 If new location index is 25...
C 55878,2 ...then draw Magic Knight's current room then jump back into Cheat Routine Main Loop
C 55880,2 Set new location index to 1...
C 55882,3 ...
C 55885,2 Draw Magic Knight's current room then jump back into Cheat Routine Main Loop
c 55887 Cheat / Debug Routine Exit Cheat / Debug Mode
D 55887 Used by the routine at #R55768.
C 55887,1 Set BORDER to black...
C 55888,2 ...
C 55890,3 Play upward scale sound
C 55893,3 Jump to start of Main Game Loop
b 55896 Unused
B 55896,22,8*2,6
b 55918 Graphics (02 x 02) Unknown / Unused Mask
B 55918,32,8
b 55950 Graphic Lookup Data
D 55950 Table of addresses of start of graphic data for game graphics.
W 55950,4,4 (00) - Graphics (Standard): (03 x 04) Magic Knight Facing Right, Frame 1
W 55954,4,4 (01) - Unused
W 55958,4,4 (02) - Graphics (Standard): (02 x 02) Menu Hand Cursor
W 55962,4,4 (03) - Graphics (Standard): (02 x 02) Chocolate Heart and mask
W 55966,4,4 (04) - Graphics (Standard): (02 x 02) Advert and mask
W 55970,4,4 (05) - Graphics (Standard): (02 x 02) Mirror and mask
W 55974,4,4 (06) - Graphics (Standard): (02 x 02) Photograph (inside of starship) and mask
W 55978,4,4 (07) - Graphics (Standard): (02 x 02) Photograph (Magic Knight) and mask
W 55982,4,4 (08) - Graphics (Standard): (02 x 02) Star Map and mask
W 55986,4,4 (09) - Graphics (Standard): (02 x 02) Ancient Scroll and mask
W 55990,4,4 (10) - Graphics (Standard): (02 x 02) Starfleet Manual and mask
W 55994,4,4 (11) - Graphics (Standard): (02 x 02) Pair of Boots and mask
W 55998,4,4 (12) - Graphics (Standard): (02 x 02) Camera and mask
W 56002,4,4 (13) - Graphics (Standard): (02 x 02) Blank / Valid ID Card and mask
W 56006,4,4 (14) - Graphics (Standard): (02 x 02) Shield and mask
W 56010,4,4 (15) - Graphics (Standard): (02 x 02) Magic Talisman / 10MW Laser and mask
W 56014,4,4 (16) - Graphics (Standard): (02 x 02) Golden Sundial of Alpha and mask
W 56018,4,4 (17) - Graphics (Standard): (02 x 02) Tower Fish and mask
W 56022,4,4 (18) - Graphics (Standard): (02 x 02) Bag of Runes / Potatoes and mask
W 56026,4,4 (19) - Graphics (Standard): (02 x 02) Wrist Terminal and mask
W 56030,4,4 (20) - Graphics (Standard): (02 x 02) Instant Film and mask
W 56034,4,4 (21) - Graphics (Standard): (02 x 02) Pot of Glue and mask
W 56038,4,4 (22) - Graphics (Standard): (02 x 02) 5W Resistor and mask
W 56042,4,4 (23) - Graphics (Standard): (02 x 02) Brass Ankh and mask
W 56046,4,4 (24) - Graphics (Standard): (02 x 02) Pewter Tankard and mask
W 56050,4,4 (25) - Graphics (Standard): (02 x 02) Quark Bomb and mask
W 56054,4,4 (26) - Graphics (Standard): (02 x 02) Axe and mask
W 56058,4,4 (27) - Graphics (Standard): (02 x 02) McTablet Food and mask
W 56062,4,4 (28) - Graphics (Standard): (02 x 02) Broken Glass and mask
W 56066,4,4 (29) - Graphics (Standard): (02 x 02) Gadget X and mask
W 56070,4,4 (30) - Graphics (Standard): (02 x 02) Torch and mask
W 56074,4,4 (31) - Graphics (Standard): (02 x 02) Part of a Sundial and mask
W 56078,4,4 (32) - Graphics (Standard): (02 x 02) Gas Mask and mask
W 56082,4,4 (33) - Unknown / Unused (see trivia)
W 56086,4,4 (34) - Unknown / Unused (see trivia)
W 56090,4,4 (35) - Unknown / Unused (see trivia)
W 56094,4,4 (36) - Unknown / Unused (see trivia)
W 56098,4,4 (37) - Unknown / Unused (see trivia)
W 56102,4,4 (38) - Unknown / Unused (see trivia)
W 56106,4,4 (39) - Unknown / Unused (see trivia)
W 56110,4,4 (40) - Graphics (Compacted): (11 x 04) Gordon / Sarab at Control Panel
W 56114,4,4 (41) - Graphics (Compacted): (06 x 04) Transporter Pad
W 56118,4,4 (42) - Graphics (Compacted): (03 x 05) Cavern Ceiling Part (1)
W 56122,4,4 (43) - Graphics (Compacted): (02 x 03) Cavern Ceiling Part (2)
W 56126,4,4 (44) - Graphics (Compacted): (03 x 04) Cavern Ceiling Part (3)
W 56130,4,4 (45) - Graphics (Compacted): (02 x 02) Cavern Ceiling Part (4)
W 56134,4,4 (46) - Graphics (Compacted): (01 x 03) Cavern Ceiling Part (5)
W 56138,4,4 (47) - Graphics (Compacted): (03 x 05) Cavern Ceiling Part (6)
W 56142,4,4 (48) - Graphics (Compacted): (04 x 04) Cavern Ceiling Part (7)
W 56146,4,4 (49) - Graphics (Compacted): (02 x 04) Wall-Mounted Telephone
W 56150,4,4 (50) - Graphics (Compacted): (09 x 03) Left Half of Planet (as shown on viewscreen)
W 56154,4,4 (51) - Graphics (Compacted): (05 x 03) Security Camera
W 56158,4,4 (52) - Graphics (Compacted): (05 x 07) Large Chair
W 56162,4,4 (53) - Graphics (Compacted): (02 x 09) Wall-Mounted Rifle
W 56166,4,4 (54) - Graphics (Compacted): (03 x 07) Chandelier
W 56170,4,4 (55) - Graphics (Compacted): (07 x 04) Table
W 56174,4,4 (56) - Graphics (Compacted): (03 x 10) Half Transputer Panel
W 56178,4,4 (57) - Graphics (Compacted): (09 x 08) Cargo Container
W 56182,4,4 (58) - Unused
W 56186,4,4 (59) - Graphics (Compacted): (06 x 07) Hooper
W 56190,4,4 (60) - Graphics (Compacted): (02 x 02) Wall-Mounted Plaque
W 56194,4,4 (61) - Graphics (Compacted): (01 x 11) Left Edge of Viewscreen
W 56198,4,4 (62) - Graphics (Compacted): (06 x 05) Face (shown upon Communicate command)
W 56202,4,4 (63) - Graphics (Compacted): (04 x 05) Wall-Mounted Helmet
W 56206,4,4 (64) - Graphics (Compacted): (04 x 04) Left Half of USS Pisces Picture
W 56210,4,4 (65) - Graphics (Compacted): (03 x 03) Transputer Base (Left Half)
W 56214,4,4 (66) - Graphics (Compacted): (06 x 05) Plant
W 56218,4,4 (67) - Graphics (Compacted): (02 x 02) Plant Pot / Tyme Machine Control Column block
W 56222,4,4 (68) - Graphics (Compacted): (04 x 05) Balls Picture
W 56226,4,4 (69) - Graphics (Standard): (02 x 04) Sharon and mask
W 56230,4,4 (70) - Graphics (Standard): (02 x 04) S3 E3 / Klink and mask
W 56234,4,4 (71) - Graphics (Standard): (02 x 04) Swiftfoot and mask
W 56238,4,4 (72) - Graphics (Standard): (02 x 04) Murphy / Julie 8 and mask
W 56242,4,4 (73) - Graphics (Compacted): (04 x 05) Tyme Guardian
W 56246,4,4 (74) - Graphics (Compacted): (02 x 04) Middle Section of Planet (unused)
W 56250,4,4 (75) - Graphics (Compacted): (04 x 05) Control Panel
W 56254,4,4 (76) - Graphics (Compacted): (05 x 03) Unused
W 56258,4,4 (77) - Graphics (Compacted): (03 x 04) Wall-Mounted Device
W 56262,4,4 (78) - Graphics (Compacted): (02 x 09) Unused
W 56266,4,4 (79) - Graphics (Compacted): (03 x 07) Unused
W 56270,4,4 (80) - Graphics (Standard): (02 x 04) Forbin and mask
W 56274,4,4 (81) - Graphics (Standard): (02 x 04) Hectorr and mask
W 56278,4,4 (82) - Graphics (Compacted): (03 x 06) Patterned Column
W 56282,4,4 (83) - Unused
W 56286,4,4 (84) - Graphics (Compacted): (05 x 03) Picture (1)
W 56290,4,4 (85) - Graphics (Compacted): (05 x 03) Picture (2)
W 56294,4,4 (86) - Graphics (Compacted): (01 x 11) Unused
W 56298,4,4 (87) - Graphics (Compacted): (03 x 04) Left half of Reel-to-Reel Tape Device
W 56302,4,4 (88) - Graphics (Compacted): (03 x 05) Left half of Tyme Guardians' Symbol (1)
W 56306,4,4 (89) - Graphics (Compacted): (06 x 03) Tyme Guardians' Symbol (2)
b 56310 Graphics (02 x 02) Menu Hand Cursor
B 56310,32,8
b 56342 Graphics Objects
D 56342 All object graphics are (2 x 2). Chocolate Heart
B 56342,32,8
N 56374 Chocolate Heart (Mask)
B 56374,32,8
N 56406 Advert
B 56406,32,8
N 56438 Advert / Mirror / Photograph / Star Map / Ancient Scroll / Starfleet Manual (Mask)
B 56438,32,8
N 56470 Mirror
B 56470,32,8
N 56502 Photograph (Blank)
B 56502,32,8
N 56534 Photograph (Magic Knight)
B 56534,32,8
N 56566 Star Map
B 56566,32,8
N 56598 Ancient Scroll
B 56598,32,8
N 56630 Starfleet Manual
B 56630,32,8
N 56662 Pair of Boots
B 56662,32,8
N 56694 Pair of Boots (Mask)
B 56694,32,8
N 56726 Camera
B 56726,32,8
N 56758 Camera (Mask)
B 56758,32,8
N 56790 ID Card
B 56790,32,8
N 56822 Blank / Valid ID Card (Mask)
B 56822,32,8
N 56854 Shield
B 56854,32,8
N 56886 Shield (Mask)
B 56886,32,8
N 56918 Magic Talisman
B 56918,32,8
N 56950 Magic Talisman (Mask)
B 56950,32,8
N 56982 Golden Sundial of Alpha
B 56982,32,8
N 57014 Golden Sundial of Alpha (Mask)
B 57014,32,8
N 57046 Tower Fish
B 57046,32,8
N 57078 Tower Fish (Mask)
B 57078,32,8
N 57110 Bag of Runes / Potatoes
B 57110,32,8
N 57142 Bag of Runes / Potatoes (Mask)
B 57142,32,8
N 57174 Wrist Terminal
B 57174,32,8
N 57206 Wrist Terminal (Mask)
B 57206,32,8
N 57238 Instant Film
B 57238,32,8
N 57270 Instant Film (Mask)
B 57270,32,8
N 57302 Pot of Glue
B 57302,32,8
N 57334 Pot of Glue (Mask)
B 57334,32,8
N 57366 5W Resistor
B 57366,32,8
N 57398 5W Resistor (Mask)
B 57398,32,8
N 57430 Brass Ankh
B 57430,32,8
N 57462 Brass Ankh (Mask)
B 57462,32,8
N 57494 Pewter Tankard
B 57494,32,8
N 57526 Pewter Tankard (Mask)
B 57526,32,8
N 57558 Quark Bomb
B 57558,32,8
N 57590 Quark Bomb (Mask)
B 57590,32,8
N 57622 Axe
B 57622,32,8
N 57654 Axe (Mask)
B 57654,32,8
N 57686 McTablet Food
B 57686,32,8
N 57718 McTablet Food (Mask)
B 57718,32,8
N 57750 Broken Glass
B 57750,32,8
N 57782 Broken Glass (Mask)
B 57782,32,8
N 57814 Gadget X
B 57814,32,8
N 57846 Gadget X (Mask)
B 57846,32,8
N 57878 Torch
B 57878,32,8
N 57910 Torch (Mask)
B 57910,32,8
N 57942 Part of a Sundial
B 57942,32,8
N 57974 Part of a Sundial (Mask)
B 57974,32,8
N 58006 Gas Mask
B 58006,32,8
N 58038 Gas Mask (Mask)
B 58038,32,8
b 58070 Graphics (Compacted) Scenery Part 1 (11 x 04) Gordon / Sarab at Control Panel
B 58070,269,8*33,5
N 58339 (06 x 04) Transporter Pad
B 58339,66,8*8,2
N 58405 (03 x 05) Cavern Ceiling Part (1)
B 58405,92,8*11,4
N 58497 (02 x 03) Cavern Ceiling Part (2)
B 58497,31,8*3,7
N 58528 (03 x 04) Cavern Ceiling Part (3)
B 58528,70,8*8,6
N 58598 (02 x 02) Cavern Ceiling Part (4)
B 58598,24,8
N 58622 (01 x 03) Cavern Ceiling Part (5)
B 58622,22,8*2,6
N 58644 (03 x 05) Cavern Ceiling Part (6)
B 58644,63,8*7,7
N 58707 (04 x 04) Cavern Ceiling Part (7)
B 58707,86,8*10,6
N 58793 (02 x 04) Wall-Mounted Telephone
B 58793,56,8
N 58849 (09 x 03) Left Half of Planet (as shown on viewscreen)
B 58849,182,8*22,6
N 59031 (05 x 03) Security Camera
B 59031,118,8*12,4,8*2,2
N 59149 (05 x 07) Large Chair
B 59149,147,8*18,3
N 59296 (02 x 09) Wall-Mounted Rifle
B 59296,133,8*12,4,8*4,1
N 59429 (03 x 07) Chandelier
B 59429,156,8*12,4,8
N 59585 (07 x 04) Table
B 59585,92,8*11,4
N 59677 (03 x 10) Half Transputer Panel
B 59677,202,8*25,2
N 59879 (09 x 08) Cargo Container
B 59879,307,8*38,3
N 60186 (06 x 07) Hooper
B 60186,246,8*30,6
N 60432 (02 x 02) Wall-Mounted Plaque
B 60432,27,8*3,3
N 60459 (01 x 11) Left Edge of Viewscreen
B 60459,82,8*10,2
N 60541 (06 x 05) Face (shown upon Communicate command)
B 60541,194,8*2,2,8
N 60735 (04 x 05) Wall-Mounted Helmet
B 60735,136,8
N 60871 (04 x 04) Left Half of USS Pisces Picture
B 60871,99,8*12,3
N 60970 (03 x 03) Transputer Base (Left Half)
B 60970,51,8*6,3
N 61021 (06 x 05) Plant
B 61021,188,8*23,4
N 61209 (02 x 02) Plant Pot / Part of Control Column
B 61209,28,8*3,4
N 61237 (04 x 05) Balls Picture
B 61237,155,8*19,3
b 61392 Graphics Characters Part 1
D 61392 All character graphics are (2 x 4). Sharon
B 61392,64,8
N 61456 Sharon (Mask)
B 61456,64,8
N 61520 S3 E3 / Klink
B 61520,64,8
N 61584 S3 E3 / Klink (Mask)
B 61584,64,8
N 61648 Swiftfoot
B 61648,64,8
N 61712 Swiftfoot (Mask)
B 61712,64,8
N 61776 Murphy / Julie 8
B 61776,64,8
N 61840 Murphy / Julie 8 (Mask)
B 61840,64,8
b 61904 Graphics (Compacted) Scenery Part 2 (04 x 05) Tyme Guardian
B 61904,109,8*13,5
N 62013 (04 x 05) Control Panel
B 62013,168,8
N 62181 (03 x 04) Wall-Mounted Device
B 62181,97,8*12,1
b 62278 Graphics Characters Part 2
D 62278 All character graphics are (2 x 4). Forbin
B 62278,64,8
N 62342 Forbin (Mask)
B 62342,64,8
N 62406 Hectorr
B 62406,64,8
N 62470 Hectorr (Mask)
B 62470,64,8
b 62534 Graphics (Compacted) Scenery Part 3 (03 x 06) Patterned Column
B 62534,124,8*15,4
N 62658 (05 x 03) Picture (1)
B 62658,102,8*12,6
N 62760 (05 x 03) Picture (2)
B 62760,109,8*13,5
N 62869 (03 x 04) Left half of Reel-to-Reel Tape Device
B 62869,109,8*13,5
N 62978 (03 x 05) Left half of Tyme Guardians' Symbol (1)
B 62978,110,8*13,6
N 63088 (06 x 03) Tyme Guardians' Symbol (2)
B 63088,120,8
N 63208 (01 x 02 / 02 x 01) Unknown / Unused Graphic or
B 63208,12,8,4
b 63220 Graphics Magic Knight
D 63220 All Magic Knight frames are (3 x 4). Facing Right, Frame 1
B 63220,96,8
N 63316 Facing Right, Frame 2
B 63316,96,8
N 63412 Facing Right, Frame 3
B 63412,96,8
N 63508 Facing Right, Frame 4
B 63508,96,8
N 63604 Facing Left, Frame 4
B 63604,96,8
N 63700 Facing Left, Frame 3
B 63700,96,8
N 63796 Facing Left, Frame 2
B 63796,96,8
N 63892 Facing Left, Frame 1
B 63892,96,8
N 63988 Facing Right, Frame 1 (Mask)
B 63988,96,8
N 64084 Facing Right, Frame 2 (Mask)
B 64084,96,8
N 64180 Facing Right, Frame 3 (Mask)
B 64180,96,8
N 64276 Facing Right, Frame 4 (Mask)
B 64276,96,8
N 64372 Facing Left, Frame 4 (Mask)
B 64372,96,8
N 64468 Facing Left, Frame 3 (Mask)
B 64468,96,8
N 64564 Facing Left, Frame 2 (Mask)
B 64564,96,8
N 64660 Facing Left, Frame 1 (Mask)
B 64660,96,8
b 64756 Graphics (01 x 96) Character Set
B 64756,8,8 (032) - SPACE
B 64764,8,8 (033) - !
B 64772,8,8 (034) - "
B 64780,8,8 (035) - Room Name Bar Cap (right end)
B 64788,8,8 (036) - Room Name Bar Cap (left end)
B 64796,8,8 (037) - %
B 64804,8,8 (038) - &
B 64812,8,8 (039) - '
B 64820,8,8 (040) - (
B 64828,8,8 (041) - )
B 64836,8,8 (042) - *
B 64844,8,8 (043) - +
B 64852,8,8 (044) - ,
B 64860,8,8 (045) - -
B 64868,8,8 (046) - .
B 64876,8,8 (047) - /
B 64884,8,8 (048) - 0
B 64892,8,8 (049) - 1
B 64900,8,8 (050) - 2
B 64908,8,8 (051) - 3
B 64916,8,8 (052) - 4
B 64924,8,8 (053) - 5
B 64932,8,8 (054) - 6
B 64940,8,8 (055) - 7
B 64948,8,8 (056) - 8
B 64956,8,8 (057) - 9
B 64964,8,8 (058) - :
B 64972,8,8 (059) - ;
B 64980,8,8 (060) - <
B 64988,8,8 (061) - =
B 64996,8,8 (062) - >
B 65004,8,8 (063) - ?
B 65012,8,8 (064) - COPYRIGHT
B 65020,8,8 (065) - A
B 65028,8,8 (066) - B
B 65036,8,8 (067) - C
B 65044,8,8 (068) - D
B 65052,8,8 (069) - E
B 65060,8,8 (070) - F
B 65068,8,8 (071) - G
B 65076,8,8 (072) - H
B 65084,8,8 (073) - I
B 65092,8,8 (074) - J
B 65100,8,8 (075) - K
B 65108,8,8 (076) - L
B 65116,8,8 (077) - M
B 65124,8,8 (078) - N
B 65132,8,8 (079) - O
B 65140,8,8 (080) - P
B 65148,8,8 (081) - Q
B 65156,8,8 (082) - R
B 65164,8,8 (083) - S
B 65172,8,8 (084) - T
B 65180,8,8 (085) - U
B 65188,8,8 (086) - V
B 65196,8,8 (087) - W
B 65204,8,8 (088) - X
B 65212,8,8 (089) - Y
B 65220,8,8 (090) - Z
B 65228,8,8 (091) - Railings (USS Pisces Bridge)
B 65236,8,8 (092) - USS Pisces Floor / bottom of transporter pad
B 65244,8,8 (093) - Room Name Bar Body
B 65252,8,8 (094) - Unused
B 65260,8,8 (095) - Unused
B 65268,8,8 (096) - #
B 65276,8,8 (097) - Unused
B 65284,8,8 (098) - Unused
B 65292,8,8 (099) - Unused
B 65300,8,8 (100) - Floor (Retreat / Monopole)
B 65308,8,8 (101) - Unused
B 65316,8,8 (102) - Unused
B 65324,8,8 (103) - Unused
B 65332,8,8 (104) - Unused
B 65340,8,8 (105) - Unused
B 65348,8,8 (106) - Unused
B 65356,8,8 (107) - Unused
B 65364,8,8 (108) - Starbase 1 Floor
B 65372,8,8 (109) - Outpost Floor
B 65380,8,8 (110) - Control Column Floor
B 65388,8,8 (111) - Life Boat Floor
B 65396,8,8 (112) - Unused
B 65404,8,8 (113) - Unused
B 65412,8,8 (114) - Unused
B 65420,8,8 (115) - Unused
B 65428,8,8 (116) - Window border (top edge)
B 65436,8,8 (117) - Window border (bottom edge)
B 65444,8,8 (118) - Window border (left edge)
B 65452,8,8 (119) - Window border (right edge)
B 65460,8,8 (120) - Window border (top right corner)
B 65468,8,8 (121) - Window border (bottom right corner)
B 65476,8,8 (122) - Window border (bottom left corner)
B 65484,8,8 (123) - Window border (top left corner)
B 65492,8,8 (124) - Unused
B 65500,8,8 (125) - ^
B 65508,8,8 (126) - £
B 65516,8,8 (127) - SP (used to denote SPACE in Current Keyboard Controls text)
c 65524 Interrupt Routine (Jump 2)
D 65524 Note - original values here are 16, 16, 16. These are modified to the JP instruction by instructions between 26655 and 26663
@ 65524 ssub=JP 53479
B 65524,3,3 Jump to main part of interrupt routine at #R53479
b 65527 Unused
B 65527,8,8
c 65535 Interrupt Routine (Jump 1)
D 65535 Note - original value at 65535 is 0. This is modified to the JR instruction by instruction at 26652. The operand comes from next byte (location 0 in ROM.)
@ 65535 ssub=JR 65524
C 65535,1 Jump to next part of interrupt routine
