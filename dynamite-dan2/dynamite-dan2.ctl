> $5AC0 ; SkoolKit disassembly for Dynamite Dan 2
> $5AC0 ; Version: 25th September 2008
> $5AC0 ;
> $5AC0 ; Copyright (c) 2019 Michael R. Cook (Skoolkit conversion)
> $5AC0 ; Copyright (c) 2008 bad_beard (annotated disassembly)
> $5AC0 ; Copyright (c) 1985 Mirrorsoft (Dynamite Dan 2)
> $5AC0 ; Dynamite Dan 2 was originally programmed by Rod Bowkett
> $5AC0 ;
> $5AC0 ; Errors or additions to: bad_beard@hotmail.com
> $5AC0 ; Many thanks to the authors of the tools usedDynamite Dan 2 during this project, namely :-
> $5AC0 ; Woody (SpecEmu), Dunny (BASin), Spin Team (especially Marko for the best debugger) (Spin)
> $5AC0 ; Extra big thanks to big D (Dunny) for sorting a comment formatting problem out
> $5AC0 @start=$6C90
> $5AC0
> $5AC0 ; room layout
> $5AC0 ; ===========
> $5AC0 ;
> $5AC0 ; Island 1
> $5AC0 ; --------
> $5AC0 ; B8,B9,BA,BB,BC,BD,BE,BF
> $5AC0 ; 78,79,7A,7B,7C,7D,7E,7F
> $5AC0 ; 38,39,3A,3B,3C,3D,3E,3F
> $5AC0 ;
> $5AC0 ; Island 2
> $5AC0 ; --------
> $5AC0 ; B0,B1,B2,B3,B4,B5,B6,B7
> $5AC0 ; 70,71,72,73,74,75,76,77
> $5AC0 ; 30,31,32,33,34,35,36,37
> $5AC0 ;
> $5AC0 ; Island 3
> $5AC0 ; --------
> $5AC0 ; A8,A9,AA,AB,AC,AD,AE,AF
> $5AC0 ; 68,69,6A,6B,6C,6D,6E,6F
> $5AC0 ; 28,29,2A,2B,2C,2D,2E,2F
> $5AC0 ;
> $5AC0 ; Island 4
> $5AC0 ; --------
> $5AC0 ; A0,A1,A2,A3,A4,A5,A6,A7
> $5AC0 ; 60,61,62,63,64,65,66,67
> $5AC0 ; 20,21,22,23,24,25,26,27
> $5AC0 ;
> $5AC0 ; Island 5
> $5AC0 ; --------
> $5AC0 ; 98,99,9A,9B,9C,9D,9E,9F
> $5AC0 ; 58,59,5A,5B,5C,5D,5E,5F
> $5AC0 ; 18,19,1A,1B,1C,1D,1E,1F
> $5AC0 ;
> $5AC0 ; Island 6
> $5AC0 ; --------
> $5AC0 ; 90,91,92,93,94,95,96,97
> $5AC0 ; 50,51,52,53,54,55,56,57
> $5AC0 ; 10,11,12,13,14,15,16,17
> $5AC0 ;
> $5AC0 ; Island 7
> $5AC0 ; --------
> $5AC0 ; 88,89,8A,8B,8C,8D,8E,8F
> $5AC0 ; 48,49,4A,4B,4C,4D,4E,4F
> $5AC0 ; 08,09,0A,0B,0C,0D,0E,0F
> $5AC0 ;
> $5AC0 ; Island 8
> $5AC0 ; --------
> $5AC0 ; 80,81,82,83,84,85,86,87
> $5AC0 ; 40,41,42,43,44,45,46,47
> $5AC0 ; 00,01,02,03,04,05,06,07
> $5AC0 ;
> $5AC0 ; list of items found in the game
> $5AC0 ; ===============================
> $5AC0 ; #TABLE(default,centre,:w)
> $5AC0 ; { =h Value | =h Name | =h Description }
> $5AC0 ; { $64 |  fuel          | refuel blimp }
> $5AC0 ; { $65 |  record        | play on jukebox }
> $5AC0 ; { $66 |  bomb          | blow open doors }
> $5AC0 ; { $67 |  goggles       | immune from blitzen }
> $5AC0 ; { $68 |  mike          | keeps Blitzen away (level 8 only) }
> $5AC0 ; { $69 |  camera        | opens secret passages }
> $5AC0 ; { $6a |  time bomb     | won't lose bomb when door blown }
> $5AC0 ; { $6b |  fan           | score + energy boost when hit by enemy, instead of losing energy }
> $5AC0 ; { $6c |  mandolin      | opens secret passages }
> $5AC0 ; { $6d |  scissors      | when going thro' a secret passage dan will get a bomb if carrying scissors }
> $5AC0 ; { $6e |  snips         | walk straight through doors }
> $5AC0 ; { $6f |  pump          | opens secret passages }
> $5AC0 ; { $70 |  engine        | stops fuel theft, removes all fuel from inventory bar 1 }
> $5AC0 ; { $71 |  dumbbell      | double height jumps }
> $5AC0 ; { $72 |  jack          | opens secret passages }
> $5AC0 ; { $73 |  boots         | walk on water }
> $5AC0 ; { $74 |  crossbow      | shoot enemies }
> $5AC0 ; { $75 |  feather       | opens secret passages }
> $5AC0 ; { $76 |  corkscrew     | skip level 5 }
> $5AC0 ; { $77 |  gem           | can't walk up steps }
> $5AC0 ; { $78 |  mask          | opens secret passages }
> $5AC0 ; { $79 |  snake         | play record remotely }
> $5AC0 ; { $7a |  skull         | immunity }
> $5AC0 ; { $7b |  shell         | opens secret passages }
> $5AC0 ; { $7c |  aqualung      | prevents drowning }
> $5AC0 ; { $7d |  torch         | stops item theft }
> $5AC0 ; { $7e |  drill         | opens secret passages }
> $5AC0 ; { $7f |  food mixer    | food items will never disappear }
> $5AC0 ; { $80 |  grapes        | replenishes energy }
> $5AC0 ; { $81 |  magenta glass | replenishes energy }
> $5AC0 ; { $82 |  white glass   | replenishes energy }
> $5AC0 ; { $83 |  chicken leg   | replenishes energy }
> $5AC0 ; { $84 |  cherries      | replenishes energy }
> $5AC0 ; { $85 |  ice cream     | replenishes energy }
> $5AC0 ; { $86 |  mushroom      | replenishes energy }
> $5AC0 ; { $87 |  cup of tea    | replenishes energy }
> $5AC0 ; TABLE#
> $5AC0
> $5AC0 @org
b $5AC0 attribute for musical note above number of records played
B $5AC0,1,1
i $5AC1
b $5B00 room item data ($5b00-$5bff)
D $5B00 #TABLE(default,centre,:w) { =h Bit(n) | =h Block # | =h Description } { 7 | block 1 | +$80 food item } { 6 |         | +$40 third special item } { 5 | block 2 | +$20 second special item } { 4 |         | +$10 first special item } { 3 | block 3 | +$08 goggles } { 2 |         | +$04 bomb } { 1 | block 4 | +$02 record } { 0 |         | +$01 fuel } TABLE#
S $5B00,192,$40
W $5BC0,2,2 points to current screen data 2 (not including blimp room)
W $5BC2,2,2 $5bxx where xx is the current room number
B $5BC4,1,1 jukebox column (activated when in room with jukebox)
B $5BC5,1,1 jukebox row (activated when in room with jukebox)
N $5BC6 door coordinates
B $5BC6,1,1 column
B $5BC7,1,1 row
N $5BC8 room items
B $5BC8,1,1 column
B $5BC9,1,1 row
B $5BCA,1,1 item   (initial value 0)
B $5BCB,1,1 which bit set for this item
B $5BCC,1,1 column
B $5BCD,1,1 row
B $5BCE,1,1 item (initial value 0)
B $5BCF,1,1 which bit set for this item
B $5BD0,1,1 column
B $5BD1,1,1 row
B $5BD2,1,1 item (initial value 0)
B $5BD3,1,1 which bit set for this item
B $5BD4,1,1 column
B $5BD5,1,1 row
B $5BD6,1,1 item (initial value 0)
B $5BD7,1,1 which bit set for this item
B $5BD8,1,1 counter (0-ff then starts at 0 again)
B $5BD9,1,1 screen number
B $5BDA,1,1 8 minus THIS BYTE=current level
W $5BDB,2,2 amount to add to score
B $5BDD,1,1 score 1st digit (ten thousands)
B $5BDE,1,1 score 2nd digit (thousands)
B $5BDF,1,1 score 3rd digit (hundreds)
B $5BE0,1,1 score 4th digit (tens)
B $5BE1,1,1 score 5th digit (units)
B $5BE2,1,1 amount to add to energy
B $5BE3,1,1 amount to subtract from energy
B $5BE4,1,1 energy
B $5BE5,1,1 c=column AND row (used as lookup for placing enemies)
B $5BE6,1,1 cycles through values 1-4 (used as offset to locate sprite in buffer)
B $5BE7,1,1 dan attributes bit 0 (+1)   dan direction (0=facing right, 1=facing left) bit 1 (+2)   set dan jumping (straight up, left or right) (stays set during the whole jump, climbing and falling) bit 2 (+4)   dan jumping left bit 3 (+8)   dan jumping right bit 4 (+16)  set dan jumping 2 (this flag varies slightly to bit 1 in that it will be set when dan starts a jump but will not reset again until dan manages to reach his maximum jump height either on the current jump or one subsequent thus ensuring his fall will be normal. If he fails to reach his maximum jump height (bangs his head on scenery or jumping up a ladder) then he will enter freefall state, immediately so in the case of banging his head or if he then say, fell off a ladder) Example: Dan jumps left and manages to reach his maximum jump height. His fall back down will therefore be normal. However, when reaching the same row he started his jump from there is no collision under his feet (nothing there!). He will therefore now enter freefall state and his fall will be twice as quick. bit 5 (+32)  dan in freefall state (collided with scenery, walked off a platform, moved down a ladder or jumped left/right and at the end of his jump (same row he started on), there is nothing under his feet!) bit 6 (+64)  dan walking up a step (rising 1 chararacter square up and 1 chararacter square left/right) bit 7 (+128) on a ladder
B $5BE8,1,1 dan attributes bit 0 set (+1)   =unused bit 1 set (+2)   =stops fuel theft bit 2 set (+4)   =walk on water bit 3 set (+8)   =open secret passages bit 4 set (+16)  =dan has been hit bit 5 set (+32)  =clear dan buffer/redraw dan bit 6 set (+64)  =hypnotised bit 7 set (+128) =immune from blitzen
B $5BE9,1,1 dan column
B $5BEA,1,1 dan row
B $5BEB,1,1 dan line (0,2,4,6,8) (0 and 8 are same (row boundary) except 0=dan moved up to position, 8=dan moved down to position)
B $5BEC,1,1 dan sprite (0,1,2,3)
B $5BED,1,1 dan freefalling/freeclimbing counter (increments by 1 each time dan falls 2 or 4 lines) (counter also used when dan jumps straight up, increments by 1 each time dan climbs 2 lines)
B $5BEE,1,1 dan jump height
B $5BEF,1,1 time hypnotised by blitzen
B $5BF0,1,1 time until door blows open
B $5BF1,1,1 door blows open room number
B $5BF2,1,1 blitzen attributes bit 0 +1   blitzen active bit 1 +2   firing ray gun bit 2 +4   direction (unset=travelling right, set=travelling left) bit 3 +8   firing ray gun shot type (unset=inbound shot,set=outbound shot) bit 4 +16  reverse blitzen direction bit 5 +32  blitzen hit dan with a shot from the ray gun bit 6 +64  unused bit 7 +128 unused
B $5BF3,1,1 blitzen sprite (0,1,2,3)
B $5BF4,1,1 blitzen column
B $5BF5,1,1 blitzen row
B $5BF6,1,1 blitzen room
B $5BF7,1,1 blitzen ray gun shot length
B $5BF8,1,1 level info. bit 0 set (+1)   =level complete bit 1 set (+2)   =draw ladder from airship bit 2 set (+4)   =entering new level bit 3 set (+8)   =airship moving bit 4 set (+16)  =record played on jukebox bit 5 set (+32)  =unused bit 6 set (+64)  =unused bit 7 set (+128) =unused
B $5BF9,1,1 incoming item
B $5BFA,1,1 special abilities bit 0 set (+1)   =stops item theft bit 1 set (+2)   =double height jumps bit 2 set (+4)   =immunity (note: not immune from Blitzen) bit 3 set (+8)   =can't walk up steps bit 4 set (+16)  =shoot enemies bit 5 set (+32)  =keep blitzen away bit 6 set (+64)  =walk straight through doors bit 7 set (+128) =score + energy boost when hit by enemy instead of energy depletion
B $5BFB,1,1 timer
B $5BFC,1,1 control method 0=keyboard, 1=kempston
B $5BFD,1,1 keyboard/joystick movement $00=none,$01=right,$02=left,$04=down,$08=up,$10=jump (000FUDLR)
B $5BFE,1,1 max. lines attributes
B $5BFF,1,1 value of 'c' register after call to beeper
i $5C00
b $6000 enemy sprite buffer (landing area graphics when a level is completed)
S $6000,1280,$0500
b $6500 dan background/sprite buffer
S $6500,416,$0200
b $66A0 graphics buffer around where dan is standing
D $66A0 3 columns, 4 rows (1*32)
R $66A0 column 1
B $66A0,4,4 row 1
B $66A4,4,4
B $66A8,4,4 row 2
B $66AC,4,4
B $66B0,4,4 row 3
B $66B4,4,4
B $66B8,4,4 row 4
B $66BC,4,4
N $66C0 column 2
B $66C0,4,4 row 1
B $66C4,4,4
B $66C8,4,4 row 2
B $66CC,4,4
B $66D0,4,4 row 3
B $66D4,4,4
B $66D8,4,4 row 4
B $66DC,4,4
N $66E0 column 3
B $66E0,4,4 row 1
B $66E4,4,4
B $66E8,4,4 row 2
B $66EC,4,4
B $66F0,4,4 row 3
B $66F4,4,4
B $66F8,4,4 row 4
B $66FC,4,4
c $6700 calculate screen address
R $6700 Input:H row
R $6700 L column
R $6700 Output:HL is the screen address
R $6700 A register is destroyed by this call
C $6702,2 and %11111000
C $6708,2 and %00000111
c $6710 calculate attribute address
R $6710 Input:H row
R $6710 L column
R $6710 Output:HL is the attribute address
R $6710 A register is destroyed by this call
C $6710,1 preserve row and column
C $6711,1 row
C $6716,2 shift right 3 times to get which third of the screen
C $671A,1 high byte now in right third of screen
C $671B,1 restore row and column
C $671C,2 mask off 3 lowest bits (which row in third of screen)
C $6720,1 rotate right 3 times to get which row
C $6721,1 move to the correct column on the row
c $6724 get graphic size
R $6724 Input:A first byte of graphic data
R $6724 Output:B width (number of columns 1-8)
R $6724 C height (number of rows 1-8)
C $6724,1 preserve original number
C $6725,2 bits 0,1,2 (1,2,4)
C $6727,1 gives a number between 1-8
C $6728,1 store in 'c' reg
C $6729,1 start again with original number
C $672D,2 bits 3,4,5 (8,16,32)
C $672F,1 gives a number between 1-8
C $6730,1 store in 'b' reg
c $6732 get address from lookup table
R $6732 Output:A contains the graphic number we want
R $6732 DE contains the address where the graphic is stored
c $673D clear screen
R $673D Input:B contains the number of lines to clear
C $6740,1 value of 'c' register after call to beeper (always 8)
C $6741,2 set black border and mic OFF
C $6747,2 no. of lines now in hl
C $674C,1 *32 (for each line we want to do every column on that line also)
C $6752,3 start of attribute area
C $6758,1 clear attribute area
c $675B clear the screen
C $675C,1 hl=0
C $675D,1 restore no. of lines
C $6760,3 calculate screen address
C $6763,2 no. of rows
C $6766,2 no. of columns
C $6769,1 clear screen address
C $676B,2 next column
C $6770,2 next row
C $6775,2 next line
c $6778 create mirror image of graphic data (not attributes)
C $677C,2 create mirror image of graphic data only
c $677E create mirror image of graphic and attribute data OR graphic data only
C $6782,3 graphic lookup table
C $6785,3 get address from lookup table
C $6789,3 get graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $678C,1 preserve graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $678E,1 de now points to either start of attribute data or start of graphic data
C $678F,2 draw graphic data only?
C $6791,2 yes
N $6793 no, draw draw graphics AND attributes
C $6793,2 same attribute for whole graphic?
C $6795,2 no
N $6797 yes
C $6797,1 de now points to start of graphic data
c $679A create mirror image of attribute data
R $679A Input:DE points to start of graphic attribute data
C $679A,1 preserve graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $679B,1 a=0
C $679D,2 add up total number of rows in each column
N $679F 'a' register now contains total attribute locations for this graphic
C $67A0,1 hl now points to first location of graphic attribute data
C $67A1,1 c=total attribute locations
C $67A2,1 hl now points to first location of graphic byte data
C $67A3,1 restore graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $67A4,1 preserve start of graphic byte data (POPped by DE at $67bf)
N $67A5 swapping column TO column so only need to perform routine half the total amount of columns (swapping from 1 column to another column=TWO columns swapped)
C $67A5,2 divide graphic width(columns) by 2
C $67A9,1 round up odd numbers
C $67AA,1 amount of times to perform routine
C $67AB,2 b=0
C $67AD,1 clear carry flag
C $67AE,2 subtract the number of rows in the graphic to position to the correct column of attribute data
N $67B0 hl now points to correct location of the graphic attribute data we are going to swap
C $67B0,1 preserve the current location(start of a column) of the graphic attribute data
N $67B1 perform the swap
C $67B1,1 a=first location of graphic attribute data we want to swap
C $67B2,1 store in 'b' register
C $67B3,1 a=second location of graphic attribute data we want to swap
C $67B5,1 swap them
C $67B7,1 move to next location
C $67B9,2 repeat for the number of rows in the graphic
N $67BB one column has now been swapped at this point de already points to start of next column hl restored($67bb) and moves backwards by amount of rows($67ae)
C $67BB,1 restore the current location(start of a column) of the graphic attribute data
C $67BD,2 repeat until all values swapped
C $67BF,1 restore start of graphic byte data
C $67C0,1 restore graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
N $67C1 create mirror image of graphic data
C $67C1,1 number of rows in graphic
C $67C4,1 multiply by 8 to get the number of lines
C $67C5,1 c=total number of lines to swap
C $67D3,1 hl now points to start of graphic data in last column
N $67D5 swapping column TO column so only need to perform routine half the total amount of columns (swapping from 1 column to another column=TWO columns swapped)
C $67D5,2 divide graphic width(columns) by 2
C $67D9,1 round up odd numbers
C $67DB,1 b=total number of lines to swap
C $67DD,1 a=first location of graphic data we want to swap
C $67E4,2 mirror the first byte into 'c' register
C $67E6,1 preserve it
C $67E7,1 a=second location of graphic data we want to swap
C $67EE,2 mirror the second byte into 'c' register
N $67F0 now swap their locations
C $67F0,1 byte from the second location
C $67F1,1 store in first location
C $67F2,1 restore the first byte from the first location
C $67F3,1 store in second location
C $67F5,1 move to next location
C $67F7,2 repeat for each line
C $67F9,1 clear the carry flag
C $67FC,2 move backwards to start of next column of graphic data
C $67FF,2 repeat until all values swapped
b $6806 store for the graphic, colour of graphic or graphic coordinate lookup value
D $6806 (only of importance when storing the colour. graphic/coordinate lookup value is superfluous)
B $6806,1,1
c $6807 display graphic
R $6807 Input:A graphic
R $6807 C graphic, colour or coordinate lookup value
C $680B,1 temporarily store the graphic to be drawn in 'b' register
C $680D,3 store the graphic, colour or coordinate lookup value (only the colour is important here when drawing doors ($681c) the graphic and coordinate lookup value is superfluous data)
C $6810,1 restore the graphic
C $6811,3 graphic lookup table
C $6814,3 get address from lookup table
C $6817,1 get graphic info.
C $6818,2 draw graphics AND attributes?
C $681A,2 yes
N $681C no, draw graphic data only (note - only when drawing doors should the program drop through $681c-$6827)
C $681D,2 set same attribute for whole graphic
C $681F,3 set hl to where we stored the graphic, colour or coordinate lookup value
C $6823,1 de now points to start of graphic data
C $6824,3 get graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $6829,1 de now points to start of attribute data
C $682C,1 hl now points to start of attribute data
C $682D,1 d=graphic info.
C $682E,3 get graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $6832,2 a=1 (move to next location if same attribute for whole graphic)
C $6834,2 same attribute for whole graphic?
C $6836,2 yes
N $6838 no
C $6838,1 a=0
C $683A,2 add up total number of rows for each column
C $683D,1 hl now points to start of attribute data
C $6841,1 hl now points to start of graphic data
C $6842,1 de now points to start of graphic data
C $6843,1 restore graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $6847,1 get atrribute (hl pointing to attribute data)
C $6848,1 hl now contains h=row, l=column to display graphic (coordinate)
C $6849,3 display character
C $684D,2 same attribute for whole graphic?
C $684F,2 yes
C $6851,1 move to next attribute location
C $6853,1 row=row+1
C $6855,2 repeat for each row in the graphic
C $6857,1 restore coordinate
C $6858,1 restore graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
C $6859,1 column=column+1
C $685A,2 repeat for each column in the graphic
c $6861
C $6861,3 control method (0 keyboard, 1 kempston attached)
C $6867,2 jump if keyboard
C $686C,2 no joystick movement so try keyboard
C $686E,1 update joystick movement 1=right,2=left,4=down,$10=jump (000FUDLR)
c $6870
C $6870,1 c=0 ('c' register will store the key(s) pressed)
C $6871,2 b,n,m,sym shift,space
C $6876,2 space key not pressed
C $6878,2 we pressed the space (jump) key (c=$10)
C $687A,2 v,c,x,z,caps shift
C $687F,2 jump if caps shift pressed (using a cursor joystick)
C $6882,1 c=0? (we didn't press the space (jump) key)
C $6883,2 yes
C $6885,1 update keyboard movement 0=none,1=right,2=left,4=down,$10=jump (000FUDLR) - in this case 'a' register will always contain $10
c $6887 cursor joystick
C $6887,2 5,4,3,2,1
C $688B,2 '5' key pressed?
C $688D,2 no
C $688F,2 yes, we pressed the left key (c=$02)
C $6891,2 6,7,8,9,0
C $6895,2 '6' key pressed?
C $6897,2 no
C $6899,2 yes, we pressed the down key (c=$04)
C $689B,2 '7' key pressed?
C $689D,2 no
C $689F,2 yes, we pressed the up key (c=$08) (*** think this line should be set 4,c (c=$10))
C $68A1,2 '8' key pressed
C $68A3,2 no, so check left/right, down/up keys not pressed together and store key pressed
C $68A5,2 yes, we pressed the right key (c=$01)
C $68A7,2 check left/right, down/up keys not pressed together and store key pressed
c $68A9 right sinclair joystick
C $68A9,2 6,7,8,9,0 (6,7 l/r 8,0 d/u)
C $68AD,1 all 0s to 1s, all 1s to 0s
C $68AE,2 pressed any key?
C $68B0,2 no
C $68C0,1 6 left    pressed c=$02 7 right   pressed c=$01 8 down    pressed c=$04 9         pressed c=$08 0 up/jump pressed c=$10
C $68C1,2 check left/right, down/up keys not pressed together and store key pressed
c $68C3 left sinclair joystick
C $68C3,2 5,4,3,2,1
C $68C7,1 all 0s to 1s, all 1s to 0s
C $68C8,2 pressed any key?
C $68CA,2 no
C $68D9,1 1 left    pressed c=$02 2 right   pressed c=$01 3 down    pressed c=$04 4 up      pressed c=$08 5 jump    pressed c=$10
C $68DA,2 check left/right, down/up keys not pressed together and store key pressed
c $68DC
C $68DC,2 v,c,x,z,   b,n,m,sym shift
C $68E0,1 all 0s to 1s, all 1s to 0s
C $68E3,2 jump if not one of above keys
C $68E5,2 c=$10 (we pressed the jump key)
C $68E7,2 g,f,d,s,a
C $68EF,2 h,j,k,l,enter
C $68F7,2 t,r,e,w,q
C $68FF,2 y,u,i,o,p
C $6907,2 bits 0+1 pressed at same time (left+right together)
C $690C,2 bits 2+3 pressed at same time (down+up together)
C $6911,1 store the key pressed
c $6913
C $6913,1 keys pressed
C $6914,1 all 0s to 1s, all 1s to 0s
C $6915,1 did we press either left/right or down/up at the same time?
C $6916,1 no
N $6917 yes, so cancel the key presses
C $6919,1 'c' will always=0 (no key pressed)
c $691B
C $691B,2 read keyboard
C $691D,1 all 0s to 1s, all 1s to 0s
C $691F,2 any key pressed?
C $6921,1 no, so exit
C $6923,2 and %00010101 GFDSA HJKL[ENTER] TREWQ YUIOP
C $6925,2 jump if we didn't press A,D,G,[ENTER],K,H,Q,E,T,P,I,Y
C $6929,1 c=$01 if [ENTER],K,H pressed c=$02 if A,D,G pressed c=$04 if I,Y pressed c=$08 if E,T pressed
C $692B,2 and %00001010 GFDSA HJKL[ENTER] TREWQ YUIOP
C $692D,1 exit if we didn't press S,F,L,J,W,R,O,U
C $6930,1 c=$01 if S,F pressed c=$02 if L,J pressed c=$04 if W,R pressed c=$08 if O,U pressed
c $6932 display character
R $6932 Input:H row
R $6932 L column
C $6934,1 c=attribute (colour)
C $6935,2 max. column value
C $6937,1 valid column?
C $6938,2 no
C $693A,3 attribute lines
C $693D,1 valid row?
C $693E,2 yes
C $6940,2 delay
C $6944,1 set h=0 (we will write to ROM as invalid coordinate)
C $6947,1 temporarily store the row in 'b' register
C $6948,1 row
C $694D,2 shift right 3 times to get which third of the screen
C $6951,1 high byte now in right third of screen
C $6952,1 restore the row from 'b' register
C $6953,2 mask off 3 lowest bits (which row in third of screen)
C $6957,1 rotate right 3 times to get which row
C $6958,1 move to the correct column on the row
C $695A,1 write the attribute
C $695B,1 high byte of attribute address ($58,$59 or $5a)
C $695C,2 mask off 3 lowest bits
C $6960,1 rotate left 3 times to get the correct third of screen
C $6961,2 add $40 to get the correct screen address
C $6963,1 hl now points to correct screen address l (column) was already in correct place from the attribute location
N $6964 write 8 bytes
c $696F
C $696F,2 number of digits in score
C $6971,1 'c' now holds the colour of the score digits
C $6973,1 de points to current score digit $5bdd-$5be1 (ten thousands-units)
C $6974,3 display number
C $697A,2 repeat for all 5 digits
b $697D number graphics used for score
B $697D,8,8 '0'
B $6985,8,8 '1'
B $698D,8,8 '2'
B $6995,8,8 '3'
B $699D,8,8 '4'
B $69A5,8,8 '5'
B $69AD,8,8 '6'
B $69B5,8,8 '7'
B $69BD,8,8 '8'
B $69C5,8,8 '9'
c $69CD clear graphic from screen
C $69D2,3 calculate screen address
C $69EC,3 calculate attribute address
c $69FF shift graphics (shift pixels to right)
R $69FF Input:A number of pixels to shift
R $69FF B columns
R $69FF C rows
C $6A03,2 multiply by 8 to get number of lines
C $6A07,1 de now contains number of lines to process
C $6A08,1 temporarily use the sprite number we are dealing with (1-4)
C $6A09,1 preserve buffer position
C $6A0A,1 preserve columns and lines
C $6A0B,1 preserve buffer position
C $6A0C,1 preserve columns and lines
C $6A0D,1 clear carry flag
C $6A0E,2 now shift one pixel to right
C $6A10,1 move the carry into the sprite number
C $6A12,1 move any carry that was moved into the sprite number back out and into the carry
C $6A13,2 next column
C $6A15,1 restore columns and lines
C $6A16,1 restore buffer position
C $6A17,1 hl now points to next line
C $6A18,1 process next line
C $6A1B,1 restore columns and lines
C $6A1C,1 restore buffer position
C $6A1E,1 right shift another pixel
c $6A22 clear trailing attribute square
R $6A22 Input:D is the colour
R $6A22 H row
R $6A22 L column
C $6A24,2 valid column?
C $6A26,2 no
C $6A28,3 max. attribute lines
C $6A2B,1 valid row?
C $6A2C,2 no
C $6A2E,3 calculate attribute address
C $6A31,1 get the attribute
C $6A32,1 same?
C $6A33,2 no
C $6A35,2 yes, so clear attribute to black ink and paper
c $6A39 gradual pixel screen clear
R $6A39 Input:H row
R $6A39 L column
R $6A39 B columns to clear
R $6A39 C rows to clear
C $6A41,3 calculate screen address
c $6A6D clear character
D $6A6D (clears with black ink and a blank space)
R $6A6D Input:B holds the columns to clear
R $6A6D C holds the rows to clear
C $6A70,3 calculate attribute address
C $6A77,2 jump if ink already black
C $6A79,1 set black ink
C $6A7A,3 start of character set (space)
C $6A7D,3 display character
c $6A8A display number
R $6A8A Input:A number
C $6A8D,1 multiply by 8 to locate correct number (as there are 8 bytes per number graphic)
C $6A91,3 base of number graphics 0-9
C $6A94,1 hl now points to correct number
C $6A97,1 c holds the colour
C $6A98,3 display character (number)
c $6A9C set sound affect
R $6A9C Input:A sound affect
C $6A9F,2 3 sounds affects
C $6AA1,3 sound affect table
C $6AA5,2 anything there? ($30=default)
C $6AA7,2 no
C $6AA9,1 check next slot
C $6AAE,1 place sound affect
c $6AB2 set up tune
R $6AB2 Input:A incoming tune
C $6AB5,3 note attribute on screen
C $6AB8,2 is there a tune already playing? 5ac0 is the attribute above the records played so flashing +$80 = playing
C $6ABA,2 yes, so exit
C $6ABC,1 d=sound affect
C $6ABD,3 tune data table
C $6AC0,1 sound affect=0?
C $6AC1,2 yes
C $6AC8,1 reached correct sound affect?
C $6AC9,2 no
N $6ACB hl now points to correct sound affect
C $6AD7,1 pointer to sound affect
b $6AED tune table
B $6AED,12,4
b $6AF9 sound affect table
B $6AF9,3,3
B $6AFC,1,1 sound affect counter (0,1,2 then start at 0 again)
c $6AFD used to grab data from $6af9, $6afa and $6afb
C $6B0F,1 anything there?
C $6B10,2 no
C $6B15,2 jump if counter>0
C $6B19,2 end of the tune?
C $6B1B,2 no
C $6B1D,3 note attribute on screen
C $6B20,2 stop flashing
C $6B22,4 clear the tune
C $6B38,3 get the sound affect
C $6B3C,1 place it
C $6B41,2 check next slot
C $6B48,2 3 sound affects
C $6B4A,3 sound affect counter
C $6B4D,1 get counter
C $6B4E,1 add 1
C $6B4F,2 does counter=3?
C $6B51,2 no
C $6B53,1 yes, so reset counter to zero
C $6B56,3 sound affect table
C $6B5A,1 grab a sound affect
C $6B5D,1 <$30?
C $6B5E,2 no
N $6B60 reset the sound affect table
C $6B60,3 sound affect table
N $6B6C delay
C $6B7A,3 note data for beeper table
c $6B91 START OF QUOTING FROM SPECTRUM ROM DISASSEMBLY by Dr. Ian Logan and Dr. Frank O'Hara. This subroutine is entered with the DE register pair holding the value 'f*t', where a note of given frequency 'f' is to have a duration of 't' seconds, and the HL register pair holding a value equal to the number of T states in the 'timing loop' divided by '4'. i.e. For the note 'middle C' to be produced for one second DE holds +0105 (INT(261.3 * 1)) and HL holds +066A (derived from 6,689/4 - 30.125). END OF QUOTING
C $6B91,3 call beeper
c $6B94
C $6B95,1 'c' always 8
C $6B9B,2 and %00011111
C $6BA4,2 and %11100000
b $6BAF note data for beeper
B $6BAF,96,4
c $6C0F
C $6C0F,3 screen number
C $6C12,2 is dan on the bottom row of screens on a level?
C $6C14,2 set max. attribute lines=18
C $6C16,2 no, not on bottom row of screens
C $6C18,2 32 columns
C $6C1A,3 attribute at LHS of play area
C $6C1D,2 64+8+7= bright, blue paper, white ink
C $6C20,2 place attribute in every column at bottom of play area
C $6C26,2 will be 0,1,2 or 3
C $6C29,1 multiply by 5
C $6C2C,3 start of 'surf' graphics on water
C $6C30,1 move to correct graphics in sequence
C $6C32,2 5 rows of graphics
C $6C34,3 screen location to start at LHS of screen
C $6C3B,1 write graphic in every column (32 times)
C $6C43,2 repeat for all 5 rows
C $6C47,3 set max. attribute lines=17 due to water
b $6C4B 'surf' graphics for water
B $6C4B,20,5
c $6C5F clear sound affects
C $6C62,3 clear area $6aed-$6af8 (12 bytes)
C $6C6F,1 $6af9-$6afb = $30 (3 bytes)
c $6C73 initialise tune
C $6C76,3 note attribute on screen
C $6C79,2 jukebox tune already playing? 5ac0 is the attribute above the records played so flashing +$80=playing
C $6C7B,2 yes, jukebox tune playing so exit
C $6C7D,1 preserve sound affect
C $6C7E,3 clear sound affects
C $6C81,1 restore sound affect
C $6C82,1 b=sound affect
C $6C83,3 set up tune
C $6C88,3 set up tune
b $6C8F
c $6C90 START
C $6C93,2 start at attribute 7 (white)
C $6C96,3 starting position (h=row, l=column)
C $6C99,3 b=columns to clear, c=rows to clear
C $6C9C,3 gradual pixel screen clear
C $6CA6,3 clear attributes in current colour
C $6CAD,2 next attribute
C $6CAF,3 initialise
c $6CB2 main game loop
C $6CB2,3 control
C $6CB5,3 level completed
C $6CB8,3 dan
C $6CBB,3 energy
C $6CBE,3 music
C $6CC1,3 add water graphics if on bottom of screens
C $6CC4,3 enemies
C $6CC7,3 item management
C $6CCA,3 check if blowing a door open
C $6CCD,3 blitzen
C $6CD0,3 secret passages
C $6CD8,2 jump if we didn't press the p(ause) key
C $6CEC,2 jump if we didn't press the Q(uit) key
C $6CEE,2 Q(uit) key pressed so restart game
c $6CF0
b $6CF9 unused bytes
c $6D00 draw/initialise new room
C $6D03,1 new screen number
C $6D05,2 blimp room?
C $6D07,2 yes
C $6D0E,1 hl=5bda (8- [$5bda]=current level)
C $6D0F,1 update level (8- this byte=current level)
C $6D10,3 screen data table
C $6D13,1 room number
C $6D14,1 zero?
C $6D15,2 yes
C $6D17,2 end of data marker(byte to search for)
C $6D19,1 length of search will be also $ff
C $6D1A,2 search for $ff
C $6D1D,2 repeat until at correct screen data for room
N $6D1F hl now points to correct screen data 2
C $6D1F,1 get 1st byte
C $6D20,2 bits 0,1 (number of ladders 0-3)
C $6D22,1 e=number of ladders in room
C $6D23,1 get 1st byte
C $6D24,2 bits 2,3,7 (4,8,128) bit 2 set=there are ladders in the room bit 3 set=there's a jukebox in the room bit 7 set=there's a door in the room
C $6D27,2 check bits 8,7,6,5,4,3
C $6D29,1 to see if they're set
C $6D2A,2 not set
C $6D2C,1 set, so add 1 to total for each bit set
C $6D31,1 add 4 to total
C $6D35,2 iy now points to correct screen data
C $6D37,2 no. of lines to clear
C $6D39,3 clear screen (19 lines)
C $6D3C,3 add water graphics if on bottom of screens
C $6D3F,3 draw screen
C $6D42,3 screen no.
C $6D46,2 is dan in the blimp room?
C $6D48,2 no
C $6D4D,2 entering a new level?
C $6D4F,2 yes
C $6D51,1 hl now points to current level (8- this byte=current level)
C $6D53,2 add level to minimum value $dd ($dd=start of landing area graphics)
C $6D55,3 row 16, column 10
C $6D58,3 display graphic
C $6D5B,3 create mirror image of both graphic and attribute data OR graphic data only
C $6D5F,3 display graphic
C $6D62,3 create mirror image of both graphic and attribute data OR graphic data only (back to normal)
C $6D65,3 row 7, column 14
C $6D6A,3 display graphic
C $6D71,3 display graphic
C $6D79,2 iy points to 1 less than start of current room data
C $6D7C,1 hl now points to start of current room data 2
C $6D7D,3 preserve pointer to start of current room data 2
C $6D81,2 get the quantity 0-3
C $6D83,1 add one 1-4
C $6D87,2 are there ladders in the room?
C $6D89,2 no
C $6D8D,3 look up coordinate
C $6D90,2 ladder graphic
C $6D92,3 draw ladder graphic
C $6D95,1 next ladder graphic
C $6D96,2 draw five of second ladder graphic
C $6D99,3 draw ladder graphic
C $6DA0,1 draw next ladder
C $6DA3,2 is there a jukebox in the room?
C $6DA5,2 no
C $6DA9,3 look up coordinate
C $6DB1,3 draw normal graphic and mirror image of graphic side by side
C $6DB6,2 is there a door in the room?
C $6DB8,2 no
C $6DBC,3 look up coordinate
C $6DC2,2 is the door still active? (not blown)
C $6DC4,2 no
C $6DC7,2 graphic
C $6DC9,2 set door colour=red
C $6DCB,3 display graphic
C $6DD0,1 a=$3f
C $6DD1,2 set door handle colour=yellow
C $6DD3,3 display graphic
c $6DD6 get the coordinates of 4 items for the room (even if not 4 items in room)
C $6DD9,1 bc now points to start of item placement coordinate lookup values
C $6DDA,3 room items
C $6DDE,2 4 coordinates per room
C $6DE2,3 look up coordinate
C $6DE6,1 set column
C $6DE8,1 set row
C $6DEA,2 set item clear
C $6DF1,1 repeat for all 4 coordinates
C $6DF4,3 screen number
C $6DF9,2 hl now points to current room item data
C $6DFE,1 room item data now in 'd' register
C $6DFF,2 set the bit we are dealing with (bit 0 at start)
C $6E01,2 first item number (fuel)
C $6E03,3 location of first item in a room
C $6E06,3 place item if bit 0 or 1 set (block 4 fuel and record)
C $6E09,3 place item if bit 2 or 3 set (block 3 bomb and goggles)
C $6E0C,3 level ; 8- this byte=current level
C $6E11,1 a=a*3
C $6E12,2 pending level, will point to either torch, skull, gem, crossbow, dumbbell, snips, fan or mike, ie. 1st item of 3 special items for the level
C $6E14,3 place item if bit 4 or 5  set (first or second special item)
C $6E17,3 place item if bit 6 set (third special item)
C $6E1A,1 screen number
C $6E20,2 'a' register now contains a food item $80-$87
C $6E22,3 place item if bit 7 set (food)
c $6E25 draw any items in current room
C $6E26,2 check each item
C $6E28,1 get column
C $6E2A,1 get row
C $6E2D,1 anything there?
C $6E2E,2 no
N $6E30 yes, so draw it
C $6E31,3 display graphic
C $6E36,1 move to next item
N $6E39 enemy table starts $7330
C $6E3C,2 4 sprites
C $6E3E,2 set initialise
C $6E43,1 next sprite
C $6E4A,3 place item
C $6E4D,3 place item
C $6E53,1 hl now points to next item
c $6E55 place an item if particular bit set
R $6E55 Input:D contains room item data
C $6E57,2 nothing there
C $6E59,1 store the item
C $6E5B,1 store the bit set
C $6E5E,2 move to next bit we are dealing with
c $6E61 draw screen
C $6E61,3 coordinate lookup value
C $6E64,3 look up coordinate
C $6E67,3 graphic
C $6E6E,1 exit if a=$ff (end of data marker)
C $6E70,2 draw horizontally ($fe)
C $6E73,2 draw vertically ($fd)
C $6E76,2 draw mirror image of graphic ($fc)
C $6E79,2 draw normal graphic and mirror image of graphic side by side ($fb)
C $6E7C,2 draw universal screen data ($fa)
C $6E7E,2 restore coordinate lookup value
C $6E80,3 look up coordinate
C $6E83,3 coordinate lookup value
C $6E86,3 display graphic
C $6E8D,2 next graphic data
c $6E91 draw horizontally
C $6E91,3 get length and gap, output d=length, e=gap
C $6E94,1 graphic to be drawn
C $6E95,3 find appropriate graphic data and get graphic size
C $6E98,1 temp store graphic
C $6E99,1 a=graphic size (columns)
C $6E9A,1 b=length
C $6E9D,1 add the gap onto the size
C $6E9F,1 restore graphic
C $6EA0,3 display graphic
C $6EA3,1 add size+gap onto coordinate to get new coordinate (column)
C $6EA6,2 move to next graphic data
c $6EAA draw vertically
C $6EAA,3 get length and gap, output d=length, e=gap
C $6EAD,1 graphic to be drawn
C $6EAE,3 find appropriate graphic data and get graphic size
C $6EB1,1 temp store graphic
C $6EB2,1 a=graphic size (rows)
C $6EB3,1 temp store length
C $6EB4,1 add the gap onto the size
C $6EB8,1 restore graphic
C $6EB9,1 restore length
C $6EBA,2 display it
c $6EBC draw mirror image of graphic
C $6EBC,1 graphic
C $6EBD,3 create mirror image of both graphic and attribute data OR graphic data only
C $6EC0,3 display graphic
C $6EC3,3 create mirror image of both graphic and attribute data OR graphic data only (back to normal)
c $6ECA draw normal graphic and mirror image of graphic side by side
C $6ECB,3 draw normal graphic and mirror image of graphic side by side
c $6ED0 draw universal screen data
C $6EE7,3 draw screen
C $6EF0,3 graphic lookup table
C $6EF3,3 get address from lookup table
C $6EF6,1 de now points to correct graphic
C $6EF7,3 get graphic size (b=width (number of columns 1-8), c=height (number of rows 1-8))
c $6EFD look up coordinate
R $6EFD Input:A incoming
R $6EFD Output:H row coordinate
R $6EFD L column coordinate
C $6F02,3 coordinate lookup table
c $6F0C calculate the number of times to draw a graphic and the gap to leave between each instance
D $6F0C get length (number of times to draw graphic) (bits 0-4) and gap (bits 5-7)
R $6F0C Output:D length (number of times to draw graphic)
R $6F0C E gap
C $6F0C,3 gap+length
C $6F10,2 get the length
C $6F12,1 add 1 to length
C $6F16,1 multiply by 8
C $6F18,2 mask off the gap we want before drawing
N $6F1A next instance of graphic
c $6F1C draw normal graphic and mirror image of graphic side by side
C $6F1C,3 display graphic
C $6F1F,3 find appropriate graphic data and get graphic size
C $6F26,3 create mirror image of both graphic and attribute data OR graphic data only
C $6F29,3 display graphic
C $6F2C,3 create mirror image of both graphic and attribute data OR graphic data only (back to normal)
c $6F30
C $6F30,3 time until door blows open
C $6F34,1 is dan blowing a door open?
C $6F35,1 no
C $6F36,1 yes, so decrease the counter by 1
C $6F37,1 exit if zero
C $6F38,3 room no.
C $6F3C,3 door blows open room no.
C $6F3F,1 in the same room as the door that dan set for blowing?
C $6F40,1 no, so exit
C $6F41,3 counter
C $6F44,2 mask bits 0..2 (this will be the ink colour for the door)
C $6F46,1 ink colour
C $6F47,2 jump if zero (black)
C $6F49,2 black paper+cyan ink? (ladder colour)
C $6F4B,2 no
C $6F4D,1 add 1 to ink colour (occurs if black or cyan (ladder colour))
C $6F4E,3 time until door blows open, first pass value=$2f (47)
C $6F51,3 get the door coordinates
C $6F56,2 jump if time less than 28
C $6F58,1 add 1 to column
C $6F59,2 graphic
C $6F5B,3 draw graphic
C $6F5E,1 subtract 1 from column
C $6F5F,1 add 1 to row
C $6F60,1 graphic =$3f
c $6F63 first pass time=$1b (27)
C $6F65,2 jump if time less than 10
C $6F67,1 preserve door coordinates
C $6F6D,3 door blowing open graphic table
C $6F73,3 draw graphic
C $6F76,3 b=columns to clear, c=rows to clear
C $6F7A,3 gradual pixel screen clear
C $6F7F,3 copy background graphics around dan to screen
C $6F84,3 clear x character squares b=columns to clear, c=rows to clear
b $6F8A graphics for door blowing open 'BOOM'
D $6F8A #TABLE(default,centre,:w) { =h Value(n) | =h Description } { $11 | large 'BOOM' } { $10 | small 'BOOM' } { $0F | very small explosion } TABLE#
B $6F8A,18,9
b $6F9C unused - line at 6f54 may meant to be 'cp $1d' to read this value
B $6F9C,1,1
c $6F9D
C $6F9D,2 check all 32 secret passage rooms
C $6F9F,3 secret passage table
C $6FA2,3 screen number
C $6FA6,2 jump if match
C $6FAB,1 check next room
C $6FAF,1 hl now points to required column for dan to be standing in
C $6FB0,3 dan column
C $6FB4,1 is dan in the correct column?
C $6FB5,1 no, so exit
C $6FB6,3 dan attributes
C $6FB9,2 got the 'open secret passages' attribute?
C $6FBB,1 no, so exit
C $6FBC,1 hl now points to the required row for dan to be standing in
C $6FBD,1 de now points to dan row
C $6FBF,1 is dan on the correct row?
C $6FC0,2 yes
C $6FC2,1 no, so try the next row down
C $6FC3,1 is dan on the correct row?
C $6FC4,1 no, still not so exit
C $6FC6,1 hl now points to $5beb
C $6FC7,2 dan line=8
C $6FCC,1 update dan's row to where starting in new room
C $6FD0,1 b now holds dan's column where starting in new room
C $6FD4,1 is dan facing right?
C $6FD5,2 yes
C $6FD7,1 column in new room=column in new room-1
C $6FD8,1 update dan's column to where starting in new room
C $6FDA,1 get the room that dan will be transported to
C $6FDB,3 draw/initialise new room
C $6FE0,3 is dan carrying the scissors?
C $6FE3,1 exit if no
C $6FE6,3 give dan a bomb
b $6FEA secret passage table
D $6FEA #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { 1 | room no. that dan is currently in } { 2 | dan column } { 3 | dan row } { 4 | dan new row (new room) } { 5 | dan new column (new room) } { 6 | room no. that dan will be transported to } TABLE#
B $6FEA,6,6 level 1
B $6FF0,18,6
B $7002,6,6 level 2
B $7008,18,6
B $701A,6,6 level 3
B $7020,18,6
B $7032,6,6 level 4
B $7038,18,6
B $704A,6,6 level 5
B $7050,12,6
B $705C,6,6 level 6
B $7068,24,6
B $707A,6,6 level 7
B $7080,18,6
B $7092,6,6 level 8
B $7098,18,6
B $70AA,6,6 blank
c $70B0 amount to add to score
C $70B4,1 score to add
C $70B5,3 get any score already waiting to be added
C $70B8,1 add it
C $70B9,3 update it
c $70BF add or subtract to/from energy
D $70BF incoming 'a' register holds the amount to add/subtract
C $70C0,3 add to energy
C $70C6,3 subtract from energy
C $70C9,1 cumulative amount to add/subtract
C $70CA,2 jump if total <=255
C $70CC,2 if total was >255 then total=255
C $70CE,1 store new amount at either 5be2 (adding) or 5be3 (subtracting)
c $70D1
C $70D1,3 counter
C $70D4,1 counter=counter+1
C $70D8,2 jump if counter<>127
N $70DA dan will lose 1 energy unit everytime counter=127
C $70DC,3 subtract from energy (energy=energy-1)
C $70DF,2 set the 'right arrow outline' graphic (appears after word 'score')
C $70E1,1 hl=5bd8 (counter)
C $70E2,1 as counter increases by 1 on each pass there will be a carry every other pass
C $70E3,2 this jump will occur 1 time out of every 2 passes
C $70E5,3 amount to add to score
C $70E9,1 anything there?
C $70EA,2 no
C $70EC,1 graphic now set to 'right arrow' (alternates between right arrow outline/right arrow)
C $70ED,1 subtract 1 from amount to add
C $70EE,3 store it back
C $70F3,3 set sound affect
c $70F6 update score
C $70F6,3 start at 5th digit (units)
C $70F9,2 check each digit
C $70FB,1 current digit=current digit+1
C $70FD,2 >10
C $70FF,2 no
C $7101,2 yes, so reset digit to 0
C $7103,1 move to next digit
C $7104,2 repeat the check for all digits
C $7108,3 max. lines attributes
C $710B,1 current graphic (right arrow outline or right arrow)
C $710C,3 row 20, column 5
C $710F,3 display the right arrow outline or right arrow graphic
C $7112,1 column 6
C $7113,3 de now points to first digit of score
C $7116,2 colour the score digits will appear (magenta)
C $7118,3 display the score
C $711B,1 d=0 (b will always be zero after DJNZ)
C $711C,3 amount to add to energy
C $7121,1 amount to subtract from energy
C $7123,1 amounts are equal?
C $7124,2 no
c $7126 amounts equal
C $7126,1 (hl)=0
C $7128,1 (hl)=0
C $712A,1 hl points to energy
C $712D,2 jump if amount to subtract from energy is less than amount to add to energy
c $712F subtract amount>add amount
c $7139 add amount>subtract amount
C $7139,1 (hl)=0 ; hl pointing to subtract amount
C $713A,1 add amount=add amount-subtract amount
C $713B,1 add amount=add amount-1
C $713C,1 hl points to add amount
C $713D,1 store new add amount
C $713F,1 hl points to energy
C $7140,1 energy=energy+1 (just subtracted 1 from add amount at 713b so now add it to energy)
C $7141,1 energy
C $7142,2 energy<$31? (49)
C $7144,2 yes
C $7146,2 no, so energy will have max value of $30 (48)
C $714A,1 does dan have any energy left?
C $714B,2 yes
C $714E,3 no, so restart game
C $7151,1 energy hl=$5be4
C $7152,3 set sound affect
C $7155,1 energy hl=$5be4
C $7156,2 double energy bar graphic (when energy even number)
C $7158,2 is the energy an odd number?
C $715A,2 no, it's an even number
C $715C,1 single energy bar graphic (when energy odd number)
C $715F,3 h=row, l=column (draw energy graphic starting at row 22, column 7)
C $7163,1 draw either the single or double energy graphic
C $7164,3 display graphic
C $7167,1 next column
C $7168,3 clear one column, 2 rows to right of graphic if needed (single)
C $716B,3 clear x character squares b=columns to clear, c=rows to clear
C $716E,3 attributes for the word 'energy' on screen d=green(04), e=cyan(05)
C $7172,2 is the column>=13
C $7174,2 yes
c $7176 no column <13 and energy is getting low
C $7176,3 amount to add to energy
C $7179,1 anything there?
C $717A,2 yes
C $717E,3 set sound affect
C $7183,3 set sound affect
C $7186,3 counter
C $718A,2 jump every other pass
C $718D,1 de=0 attributes will be blanked out to give flashing affect on word 'energy'
C $718E,3 top left of word 'energy'
C $7191,2 7 attribute squares
C $7193,1 fill the top row with cyan
C $7197,2 bottom left of word 'energy'
C $7199,2 7 attribute squares
C $719B,1 fill the bottom row with green
c $71A0 blitzen attributes
C $71A4,2 keep the direction blitzen was travelling at game over
C $71A7,2 no. of lines to clear
C $71A9,3 clear screen (24 lines)
C $71AC,2 set attribute lines (23 lines)
C $71B1,4 iy now points to 'any key to play' screen data
C $71B5,3 draw screen
C $71B8,3 clear sound affects
C $71BF,3 set up tune
C $71CF,3 clear sound affects
c $71D2 set control method
C $71D4,3 hl now points to control method
C $71D7,2 $00 kempston, $ff keyboard
C $71D9,2 and %11100000
C $71DB,2 control is keyboard (c=0)
C $71DF,1 control is kempston (c=1)
C $71E2,3 set black border
C $71E5,3 clear timer
C $71E9,3 copy startup data
C $71EC,3 level ; 8- this byte=current level
c $71F4 clear item table and graphic removal table
C $7202,3 set airship moving + entering new level (8+4)
C $7205,3 set special abilities to none
C $7209,3 clear memory area $5b00-$5bbf
c $7215 place items on level
D $7215 items in each block will NEVER appear in a room together
D $7215 #TABLE(default,centre,:w) { =h Bit(n) | =h Block # | =h Description } { 7 | block 1 | +$80 food item } { 6 |         | +$40 third special item } { 5 | block 2 | +$20 second special item } { 4 |         | +$10 first special item } { 3 | block 3 | +$08 goggles } { 2 |         | +$04 bomb } { 1 | block 4 | +$02 record } { 0 |         | +$01 fuel } TABLE#
C $7215,1 e=0 (start at level 8)
C $7217,2 for each of the 8 levels
C $7219,3 h=%11000000, l=%10000000
> $721C ; h=items in block check
> $721C ;
> $721C ; moves  11000000
> $721C ;        00110000
> $721C ;        00001100
> $721C ;        00000011
> $721C ;
> $721C ; if an item in the current block has already been placed in the chosen room,
> $721C ; then try again and place it in another room
> $721C ;
> $721C ; l=item type (starts at $80=food item)
c $721C
C $721C,3 item quantity table
C $721F,2 process the 4 blocks
C $7222,1 get amount of items to place
C $7223,3 place items in room (food, second special item, goggles, record)
C $7226,2 move to next item
C $7228,1 move to next position in item quantity table
C $7229,1 get amount of items to place
C $722A,3 place items in room (third special item, first special item, bomb, fuel)
C $722D,2 move next item
C $7231,2 move h register 2 bits to right (move to next block)
C $7233,1 move to next position in item quantity table
C $7235,2 process next block
C $7239,2 next level rooms (starts at level 8 and works backwards)
C $723D,1 process next level
N $7240 check all rooms for doors and set status
C $7240,3 start of screen data
C $7243,2 check all 193 rooms
C $724B,2 is there a door in this room?
C $724D,2 no
C $724F,2 yes, there's a door so set active status (not blown)
C $7253,3 row 19, column 0
C $7256,3 draw upper red surround graphics for score
C $725A,2 'items' graphic
C $725C,3 display graphic
C $725F,2 column 0
C $7261,2 'score' graphic
C $7263,1 next row (20)
C $7264,3 display graphic
C $7267,1 next row (21)
C $7268,3 draw lower red surround graphics for score
C $726B,1 next column
C $726C,2 'held' graphic
C $726E,3 display graphic
C $7271,3 row 22, column 0
C $7274,2 musical note graphic
C $7276,3 display graphic
C $7279,1 level number to display=0
C $727A,1 next row
C $727B,2 colour (magenta)
C $727D,3 display number (level)
C $7281,2 lower 'energy' graphic
C $7283,3 display graphic
C $7287,1 upper 'energy' graphic
C $7288,3 display graphic
C $728B,2 room a new game will start in
C $728D,3 draw/initialise new room
c $7291 place items in room
R $7291 Input:A amount of items to place
C $7291,1 b=amount of items to place
C $7293,3 get random number
C $7296,2 'a' register now holds 0,1,2,3
C $7298,2 if zero then get another random number (number must be 1,2 or 3)
C $729A,1 'a' register now holds 0,1,2
C $729D,1 'l' register will be $00(0) bottom row of rooms, $40(1) middle row of rooms, or $80(2) top row of rooms
C $729E,3 get random number
C $72A1,2 gives a number 0-7
C $72A3,1 select a room on the chosen row
C $72A4,1 add level offset (e starts at 0 and increases by 8 on each call)
C $72A5,1 hl now points to chosen room
C $72A6,1 get any items that have been placed in the room already
C $72A8,1 c=items already in the room
C $72A9,1 has one of items in the current block already been placed in the room?
C $72AA,2 yes, so get another room to place item
N $72AC no, so place the item in the chosen room
C $72AC,1 a=items already in the room
C $72AD,1 merge whatever is in room already with current item
C $72AF,1 store in room slot $5bxx
C $72B1,2 next item
c $72B4 draw red surround graphics around 'score'
C $72B4,2 left edge of red surround graphics
C $72B6,3 display graphic
C $72B9,1 we want 9 of the red middle sections
C $72BA,2 middle section of red surround graphics
C $72BC,1 next column
C $72BD,3 display graphic
C $72C2,1 next column
C $72C3,1 right edge of red surround graphics
C $72C4,3 display graphic
b $72C8 startup data
B $72C8,1,1 9- this byte=start level ; 5bda
B $72C9,7,1
B $72D0,1,1 dan starting energy
B $72D1,5,1
B $72D6,1,1 set clear dan buffer/redraw dan flag
B $72D7,1,1 dan starting column
B $72D8,1,1 dan starting row
B $72D9,3,1
B $72DC,1,1 dan jump height
B $72DD,3,1
b $72E0 item quantity table
D $72E0 items in a block will NEVER appear in a room together 
D $72E0 items in a block must therefore NEVER total more than 24 (rooms per level)
R $72E0 block 1
B $72E0,1,1 number of food items to place
B $72E1,1,1 number of 3rd special item to place
N $72E2 block 2
B $72E2,1,1 number of 2nd special item to place
B $72E3,1,1 number of 1st special item to place
N $72E4 block 3
B $72E4,1,1 number of goggles to place
B $72E5,1,1 number of bombs to place
N $72E6 block 4
B $72E6,1,1 number of records to place
B $72E7,1,1 number of fuels to place
b $72EC 'any key to play' screen data
D $72EC #TABLE(default,centre,:w) { =h Byte(n) | =h value >= $fa } { 1 | $fe=draw horizontally } {   | $fd=draw vertically } {   | $fc=draw mirror image of graphic } {   | $fb=draw normal graphic and mirror image of graphic side by side } { 1 | $fa=draw universal screen data } { 2 | coordinate lookup value } { 3 | graphic } { 4 | gap+length (number of times to draw graphic) } {   | bits 0-4 =length (number of times to draw graphic) } {   | bits 5,6,7 = gap to leave before drawing again } {   | eg. 5,6,7 all unset = draw continuous line } {   | bit 5 set = draw every other column } {   | all set draw graphic every 7th column } TABLE#
D $72EC #TABLE(default,centre,:w) { =h Byte(n) | =h value < $fa } { 1 | coordinate lookup value } { 2 | graphic } TABLE#
B $72EC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $72F0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $72F4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $72F8,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $72FC,2,2 coordinate lookup value, graphic
B $72FE,2,2 coordinate lookup value, graphic
B $7300,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $7304,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $7308,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $730B,2,2 coordinate lookup value, graphic
B $730D,2,2 coordinate lookup value, graphic
B $730F,2,2 coordinate lookup value, graphic
B $7311,1,1 eod marker
B $F72E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
b $7312 RNG seed data
B $7312,1,1 previous random number
W $7313,2,2 seed
c $7315 random number generator
D $7315 Ouput:A containing random number HL is preserved
C $7316,3 get seed
C $731B,2 limit to ROM
C $731E,3 store seed
C $7321,2 get 'r' (refresh) register value
C $7323,1 add the contents of the ROM address as pointed to by the seed
C $7324,3 previous random number
C $7327,1 is the number the same as last time?
C $7328,2 yes, so try again
C $732A,1 no, it's different so store it for the next check
C $732C,1 exit with random number
b $732D unused bytes
B $732D,2,1
B $732F,1,1 unused bytes
> $7330 ; enemy table
> $7330 ;
> $7330 ; max. 4 enemies on screen at once
> $7330 ;
> $7330 ; #TABLE(default,centre,:w)
> $7330 ; { =h Byte(n) | =h value < $fa }
> $7330 ; { 1,2   | jump address $7676,$7625,$75fe,$75d4 }
> $7330 ; { 3     | sprite action }
> $7330 ; {       | bit 0 +1 enemy death }
> $7330 ; {       | bit 1 +2 copy sprite data }
> $7330 ; {       | bit 2 +4 enable sprite collision detection/movement }
> $7330 ; {       | bit 3 +8 enemy direction (travelling left set, travelling right unset) }
> $7330 ; {       | bit 4 +16  enemy direction has just changed }
> $7330 ; {       | bit 5 +32  sprite selector }
> $7330 ; {       | bit 6 +64 }
> $7330 ; {       | bit 7 +128 set initialise }
> $7330 ; { 4     | row }
> $7330 ; { 5     | column }
> $7330 ; { 6     | line offset (0-8) - 0 and 8 are same (row boundary) except 0=enemy moved up to position, 8=enemy moved down to position }
> $7330 ; { 7     | sprite offset ($00,$50,$a0,$f0) }
> $7330 ; { 8     | passes until next movement }
> $7330 ; { 9     | speed }
> $7330 ; { 10    | counter used to write/shift sprite data into buffer/update sprite (various sprite related activities) }
> $7330 ; { 11    | attribute }
> $7330 ; {       | enemy 1 attr=$42=bright red }
> $7330 ; {       | enemy 2 attr=$43=bright magenta }
> $7330 ; {       | enemy 3 attr=$44=bright green }
> $7330 ; {       | enemy 4 attr=$47=bright white }
> $7330 ; { 12,13 | buffer }
> $7330 ; {       | enemy 1 $6000 }
> $7330 ; {       | enemy 2 $6140 }
> $7330 ; {       | enemy 3 $6280 }
> $7330 ; {       | enemy 4 $63c0 }
> $7330 ; { 14    | time until enemy changes direction }
> $7330 ; {       | bit 7 set full speed }
> $7330 ; TABLE#
b $7330 enemy #1
W $7330,2,2 routine jump address
B $7332,1,1 sprite action
B $7333,1,1 row
B $7334,1,1 column
B $7335,1,1 line offset
B $7336,1,1 sprite offset
B $7337,1,1 passes until next movement
B $7338,1,1 speed (value does not change)
B $7339,1,1 counter to write/shift sprite data into buffer/update sprite (various sprite related activities)
B $733A,1,1 attribute (bright red)
W $733B,2,2 buffer position
B $733D,1,1 time until enemy changes direction
N $733E enemy #2
W $733E,2,2 routine jump address
B $7340,1,1 sprite action
B $7341,1,1 row
B $7342,1,1 column
B $7343,1,1 line offset
B $7344,1,1 sprite offset
B $7345,1,1 passes until next movement
B $7346,1,1 speed (value does not change)
B $7347,1,1 counter to write/shift sprite data into buffer/update sprite (various sprite related activities)
B $7348,1,1 attribute (bright magenta)
W $7349,2,2 buffer position
B $734B,1,1 time until enemy changes direction
N $734C enemy #3
W $734C,2,2 routine jump address
B $734E,1,1 sprite action
B $734F,1,1 row
B $7350,1,1 column
B $7351,1,1 line offset
B $7352,1,1 sprite offset
B $7353,1,1 passes until next movement
B $7354,1,1 speed (value does not change)
B $7355,1,1 counter to write/shift sprite data into buffer/update sprite (various sprite related activities)
B $7356,1,1 attribute (bright green)
W $7357,2,2 buffer position
B $7359,1,1 time until enemy changes direction
N $735A enemy #4
W $735A,2,2 routine jump address
B $735C,1,1 sprite action
B $735D,1,1 row
B $735E,1,1 column
B $735F,1,1 line offset
B $7360,1,1 sprite offset
B $7361,1,1 passes until next movement
B $7362,1,1 speed (value does not change)
B $7363,1,1 counter to write/shift sprite data into buffer/update sprite (various sprite related activities)
B $7364,1,1 attribute (bright white)
W $7365,2,2 buffer position
B $7366,1,1 time until enemy changes direction
c $7368 enemies
C $736B,2 is dan on the blimp screen?
C $736D,2 no
C $7372,2 is airship moving?
C $7374,1 yes, so exit
C $7375,4 start of enemy table
C $7379,2 counter (4 enemies)
C $737B,1 preserve counter
C $737C,3 row
C $737F,3 column
C $7382,3 get what action to take with sprite
C $7387,2 initialise a new sprite
C $738A,2 sprite death
C $738D,2 copy sprite data
C $7390,3 place an enemy
C $7393,3 sprite collision detection/movement (bit 2 of iy+2 has been set)
c $7396 sprite death
C $7396,3 sprite offset
C $7399,3 line offset
C $739E,3 locate sprite in buffer
C $73A1,2 d=%11111110
C $73A3,1 e=%11111110
C $73A4,2 repeat 36 times (clear sprite from screen)
C $73A7,1 anything there?
C $73A8,2 no
C $73AA,2 pattern rotates right  $fe, $7f, $bf, $df, $ef, $f7, $fb, $fd
C $73AD,1 bits same as pattern?
C $73AE,2 yes, so try again
C $73B1,1 next line
C $73B3,1 anything there?
C $73B4,2 no
C $73B6,2 pattern rotates left $fe, $fd, $fb, $f7, $ef, $df, $bf, $7f
C $73B9,1 bits same as pattern?
C $73BA,2 yes, so try again
C $73BD,1 next line
C $73C4,1 sound affect based on sprite action counter
C $73C5,3 set sound affect
C $73C8,3 sprite action counter=0?
C $73CB,2 no
C $73CD,4 set new sprite
C $73D5,3 clear x character squares b=columns to clear, c=rows to clear
C $73D9,3 process next enemy
C $73DE,3 display sprite
c $73E1 initialise a new sprite
C $73E1,3 get current action to take (initialise)
N $73E4 now update it with next action to take after initialising a sprite
C $73E4,2 and %0111 0010 (114), reset bits 7,3,2,0. bit 7 initialise, bit 3 enemy direction, bit 2 sprite collision detection/movement,bit 0 sprite death
C $73E6,2 or  %0000 0010 (copy sprite data)
C $73E8,2 change sprite (alternate between the 2 sprites for each colour on a particular level)
C $73EA,3 preserve next action
C $73ED,4 set counter to write/shift sprite data into buffer correctly
C $73F1,3 buffer
C $73F4,3 hl=$6000,$6140,$6280 or $63c0 depending on which enemy we are dealing with
C $73FA,2 clear memory 320 ($13f) bytes ready for new sprite
C $7401,3 process next enemy
> $7404 ; start value (iy+9)=$0a
> $7404 ;
> $7404 ; +4 for 4 different frames per sprite
> $7404 ; +6 for shifting the graphics
> $7404 ; 4+6=10 ($0a)
> $7404 ;
> $7404 ; buffer example
> $7404 ;
> $7404 ; first sprite written thus (squint to see zx chip!) :-
> $7404 ;
> $7404 ;6000 6018 6030   000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;                 000000000000000000000000
> $7404 ;6008 6020 6038   000000000000000000000000
> $7404 ;                 000000000010110000000000
> $7404 ;                 000000000001111000000000
> $7404 ;                 000000001011011100000000
> $7404 ;                 000000000111011110000000
> $7404 ;                 000000101100000011000000
> $7404 ;                 000000011111011110000000
> $7404 ;                 000010110111011100000000
> $7404 ;6010 6028 6040   000001100111011010000000
> $7404 ;                 000011010111110010000000
> $7404 ;                 000011110101101000000000
> $7404 ;                 000001110011001000000000
> $7404 ;                 000000110110100000000000
> $7404 ;                 000000011100100000000000
> $7404 ;                 000000001010000000000000
> $7404 ;                 000000000010000000000000
> $7404 ;
> $7404 ; 1st pass zx spec sprite written to
> $7404 ; iy+2=9 sp4 6110 24848 left, 6128 24872 right
> $7404 ; 2nd pass zx spec sprite written to
> $7404 ; iy+2=8 sp3 60a8 24744 left, 60c0 24768 right
> $7404 ; 3rd pass zx spec sprite written to
> $7404 ; iy+2=7 sp2 6058 24664 left, 6070 24688 right
> $7404 ; 4th pass zx spec sprite written to
> $7404 ; iy+2=6 sp1 6008 24584 left, 6020 24608 right
> $7404 ;
> $7404 ; 1st pass clock sprite written to
> $7404 ; iy+2=9 sp4 6250 25168 left, 6268 25192 right
> $7404 ; 2nd pass clock sprite written to
> $7404 ; iy+2=8 sp3 61e8 25064 left, 6200 25088 right
> $7404 ; 3rd pass clock sprite written to
> $7404 ; iy+2=7 sp2 6198 24984 left, 61b0 25008 right
> $7404 ; 4th pass clock sprite written to
> $7404 ; iy+2=6 sp1 6148 24904 left, 6160 24928 right
> $7404 ;
> $7404 ; 1st pass robot sprite written to
> $7404 ; iy+2=9 sp4 6390 25488 left, 63a8 25512 right
> $7404 ; 2nd pass robot sprite written to
> $7404 ; iy+2=8 sp3 6328 25384 left, 6340 25408 right
> $7404 ; 3rd pass robot sprite written to
> $7404 ; iy+2=7 sp2 62d8 25304 left, 62f0 25328 right
> $7404 ; 4th pass robot sprite written to
> $7404 ; iy+2=6 sp1 6288 25224 left, 62a0 25248 right
> $7404 ;
> $7404 ; 1st pass bubble head sprite written to
> $7404 ; iy+2=9 sp4 64d0 25808 left, 64e8 25832 right
> $7404 ; 2nd pass bubble head sprite written to
> $7404 ; iy+2=8 sp3 6468 25704 left, 6480 25728 right
> $7404 ; 3rd pass bubble head sprite written to
> $7404 ; iy+2=7 sp2 6418 25624 left, 6430 25648 right
> $7404 ; 4th pass bubble head sprite written to
> $7404 ; iy+2=6 sp1 63c8 25544 left, 63e0 25568 right
> $7404 ;
> $7404 ; 5 shift 2 bits to right no.6
> $7404 ;
> $7404 ; 4 shift 2 bits to right no.7
> $7404 ; 3 shift 2 bits to right no.7
> $7404 ;
> $7404 ; 2 shift 2 bits to right no.8
> $7404 ; 1 shift 2 bits to right no.8
> $7404 ; 0 shift 2 bits to right no.8
c $7404
C $7404,3 buffer
C $7407,3 hl=$6000,$6140,$6280 or $63c0
C $740D,3 for final pass
C $7410,2 jump if not final pass
N $7412 final pass
C $7412,4 reset copy sprite data flag
N $7416 (after this pass all 4 frames of current sprite data now copied and shifted!)
C $7416,2 shift pixels to right
C $741C,2 shift pixels to right
C $741F,2 shift pixels to right
C $7424,2 shift pixels to right
C $7427,2 shift pixels to right
C $742C,2 still copying sprite data into buffer
N $742E shift pixels to right
C $742F,3 b=columns, c=rows
C $7432,2 number of pixels to shift right
C $7434,3 shift pixels to right
C $7437,3 process next enemy
C $743A,1 hl pointing to correct place in buffer
C $743B,1 preserve iy+9 counter
C $743C,3 level ; 8- this byte=current level
C $743F,1 multiply by 2 (2 sprites per colour per level eg. get correct set 1 or 2)
C $7440,4 change to next sprite?
C $7444,2 no
C $7446,1 next sprite
C $7447,2 sprite range $f0-$ff
C $7449,3 graphic lookup table
C $744C,3 get address from lookup table (de now points to start of set of sprites we are dealing with)
C $744F,1 swap buffer to de and start of set of sprites to hl
C $7450,1 hl now points to actual start of graphics in this set
C $7452,1 get the sprite we are dealing with (1-4)
C $7457,2 multiply by 16
C $745B,2 c will be one of :- 0 if dealing with 4th enemy 16 if dealing with 3rd enemy 32 if dealing with 2nd enemy 48 if dealing with 1st enemy
C $745F,1 hl now points to base of current sprite data we are dealing with
C $7463,1 de=0
C $7464,1 restore iy+9 counter
C $747C,1 hl now points to current sprite we are dealing with
C $747E,1 restore buffer pointer
C $7481,3 copy the left sprite data into the buffer (16 bytes)
C $7488,1 second half of sprite
C $7490,2 copy the right sprite data into the buffer (16 bytes)
C $7492,3 process next enemy
> $7495 ; sprite collision check
> $7495 ;
> $7495 ; below diagram shows bit collision points
> $7495 ; eg.  bit 4 set indicates a hit at bottom right corner
> $7495 ; bit 7 set indicates a hit on the top row
> $7495 ;
> $7495 ; single check in 'e' register, results OR'd into 'd' register
> $7495 ;
> $7495 ; $01 $80 $80 $80 $40
> $7495 ; $02             $20
> $7495 ; $02             $20
> $7495 ; $02             $20
> $7495 ; $04 $08 $08 $08 $10
> $7495 ;
> $7495 ; bit 0  +1    top left corner
> $7495 ; bit 1  +2    left column
> $7495 ; bit 2  +4    bottom left corner
> $7495 ; bit 3  +8    bottom row
> $7495 ; bit 4  +16   bottom right corner
> $7495 ; bit 5  +32   right column
> $7495 ; bit 6  +64   top right corner
> $7495 ; bit 7  +128  top row
c $7495 check top row
C $7495,3 e=$80
C $749A,1 row=row-1
C $749B,1 check 3 columns
C $749C,3 check sprite collision
C $749F,1 next column
N $74A2 check top right corner
C $74A2,2 e=$40
C $74A4,3 check sprite collision
N $74A7 check right column
C $74A7,2 e=$20
C $74A9,1 next row
C $74AA,1 check 3 rows
C $74AB,3 check sprite collision
N $74B1 check bottom right corner
C $74B1,2 e=$10
C $74B3,3 check sprite collision
N $74B6 check bottom row
C $74B6,2 e=$08
C $74B9,1 check 3 columns
C $74BA,3 check sprite collision
N $74C0 check bottom left corner
C $74C0,2 e=$04
C $74C2,3 check sprite collision
N $74C5 check left column
C $74C5,2 e=$02
C $74C8,1 check 3 rows
C $74C9,3 check sprite collision
N $74CF check top left corner
C $74CF,2 e=$01
C $74D1,3 check sprite collision
C $74D5,1 has there been a collision?
C $74D6,2 no
N $74D8 yes
C $74D8,3 special abilities
C $74DB,2 has dan got the 'shoot enemies' special ability?
C $74DD,2 no
C $74DF,4 set enemy death flag
C $74E3,4 set sprite action #08
C $74E7,2 +1 onto score
N $74EC restore row and column (as they were before collision check)
C $74EC,1 row=row+1
C $74ED,1 column=column+1
C $74EE,1 a=column
C $74F1,2 column>=35
C $74F3,3 yes, so initialise a new sprite (gone off screen)
C $74F6,1 a=row
C $74F9,2 row>=22
C $74FB,3 yes, so initialise a new sprite (gone off screen)
C $74FE,3 enemy movement
C $7501,4 b=counter 1-4 (used as offset to locate sprite in buffer), c=column (column used as lookup for placing enemies)
C $7507,2 'a' register will be in range 1-4, path is 1,2,3,4,1,2,3,4 and so on
C $750B,2 reset 'a' register to 1
C $7511,2 jump when 'a' register=1 (enemy appears from top of screen)
C $7514,2 jump when 'a' register=2 (enemy appears from right of screen)
C $7517,2 jump when 'a' register=3 (enemy appears from bottom of screen), 'a' register=4 (enemy appears from left of screen)
C $7519,1 d=0
C $751A,2 'd' register already zero, so de =$0020 (next attribute location will be one down (next row) (see $78c8))
C $751D,2 row<17
C $751F,2 no, it's invalid so we will write to ROM
N $7521 ALL enemies can appear from left of screen
C $7522,1 h=row, l=column (0)
C $7523,3 check if anything in 3 attribute locations
C $7526,2 jump if something already there (write to ROM)
C $7529,1 l=$fe
C $752A,3 e into iy+9
C $752F,2 'd' register already zero, so de =$0020 (next attribute location will be one down (next row) (see $78c8))
C $7532,2 row<17
C $7534,2 no, it's invalid so we will write to ROM
N $7536 ALL enemies can appear from right of screen
C $7537,2 h=row, l=column (31)
C $7539,3 check if anything in 3 attribute locations
C $753C,2 jump if something already there (write to ROM)
C $753E,3 e into iy+9
C $7543,2 'd' register already zero, so de =$0001 (next attribute location will be one to right (see $78c8))
C $7545,1 get which enemy we are dealing with
C $7546,2 are we processing 2nd enemy (magenta)? (4,3,2,1 therefore 'cp 3'=2nd)
C $7548,2 yes, so write to ROM (magenta enemies CANNOT appear from top of screen), red, green and white enemies can ONLY appear from top of screen
C $754B,1 add 1 to column
C $754C,2 column >=30?
C $754E,2 yes, it's invalid so we will write to ROM
C $7551,1 h=row (0), l=column
C $7552,3 check if anything in 3 attribute locations
C $7555,2 jump if something already there (write to ROM)
C $7558,1 h=$fe
C $7559,2 e into sprite action counter
C $755D,2 'd' register already zero, so de =$0001 (next attribute location will be one to right (see $78c8))
C $7560,2 enemy 2(magenta) or 3(green)?
C $7562,2 yes, so write to ROM (magenta or green enemies CANNOT appear from bottom of screen), red or white enemies can ONLY appear from bottom of screen
C $7566,2 column >=30?
C $7568,2 yes, it's invalid so we will write to ROM
C $756B,2 h=row (18), l=column
C $756D,3 check if anything in 3 attribute locations
C $7570,2 jump if something already there (write to ROM)
C $7572,3 e into sprite action counter
C $7575,1 c=column/row
C $7576,4 b=counter 1-4 (used as offset to locate sprite in buffer), c=column (column used as lookup for placing enemies)
C $757A,3 set sprite action counter
C $7580,4 set enable sprite collision detection/movement
C $7584,4 time until enemy changes direction
C $7589,4 is the enemy travelling left
C $758D,2 yes
N $758F no, enemy travelling right
C $7591,2 jump if enemy coming from right or bottom of screen
N $7593 enemy coming from left or top of screen
C $7597,2 jump if enemy coming from right or bottom of screen
N $7599 enemy coming from left or top of screen
C $7599,3 create mirror images of all 4 frames of current sprite, change direction
C $759C,3 display sprite
C $75A0,2 column/row <30
C $75A2,2 yes
C $75A4,1 reset the column
C $75A5,1 c=column/row
C $75A6,4 b=counter 1-4 (used as offset to locate sprite in buffer), c=column (column used as lookup for placing enemies)
C $75AA,2 set invalid colum (we will write to ROM)
N $75AC hl=$0020 (h=row, l=column for attribute lookup address (=$5820))
C $75AF,3 line offset
C $75B2,3 sprite offset
C $75B5,4 has the enemy direction just changed?
C $75B9,2 no
C $75BB,4 yes, so reset enemy direction has just changed flag
C $75C1,3 passes until next movement
C $75C4,2 jump if not ready to move
C $75C6,3 enemy speed
C $75C9,3 restore passes until next movement
C $75D0,3 hl now points to specific enemy routine
C $75D3,1 jump to routine $7676,$7625,$75fe or $75d4 (red, magenta, green, white)
c $75D4 white enemy routine
C $75D5,1 a=line offset
C $75D6,1 top line?
C $75D7,2 no
N $75D9 yes
C $75D9,2 set line offset=bottom line
C $75DB,3 display sprite
c $75DE d=sprite collision data
C $75DE,2 a collision on the bottom row? (enemy sprite has hit the bottom)
C $75E0,2 yes, so time to stop the vertical fall and start to move horizontally
C $75E2,4 set speed (falling vertically)
C $75E6,1 row=row+1
C $75E9,1 sound affect relative to enemy row
C $75EA,3 set sound affect
C $75ED,3 display sprite
C $75F0,4 set speed (moving horizontally)
C $75F4,4 is the enemy travelling left?
C $75F8,3 yes (move to next sprite (left)/check for collision)
N $75FB no, enemy travelling right
C $75FB,3 move to next sprite (right)/check for collision/display sprite
c $75FE green enemy routine
C $75FF,2 speed=$01
C $7604,2 sprite action counter=4,5,6 or 7?
C $7606,2 yes
C $7608,1 no, so speed=$02
C $7609,3 set speed
C $760C,3 time until enemy changes direction
C $760F,2 continue in same direction
C $7611,2 sprite action counter=#08?
C $7613,2 yes
C $7615,2 sprite action counter=#02?
C $7617,2 no
C $761B,2 set sprite action #04
C $761D,2 set sprite action #06
C $7622,3 perform universal sprite action
c $7625 magenta enemy routine
C $7626,4 is enemy going full speed?
C $762A,2 no
C $762C,4 is the enemy travelling left?
C $7630,2 yes
N $7632 no, enemy travelling right d=sprite collision data
C $7632,2 a collision on the right column?
C $7634,2 yes
N $7636 no, so enemy going fast to right
C $7636,1 column=column+1
C $7638,2 sound affect relative to enemy column
C $763A,3 set sound affect
C $763D,2 display sprite
N $763F d=sprite collision data
C $763F,2 a collision on the left column?
C $7641,2 yes
N $7643 enemy going fast to left
C $7643,1 column=column-1
C $7646,1 sound affect relative to enemy column
C $7647,3 set sound affect
C $764A,2 display sprite
C $764C,4 is the enemy travelling left?
C $7650,2 yes
N $7652 no, enemy travelling right
C $7652,1 a=sprite offset
C $7653,2 sprite offset=f0?
C $7655,3 no, must be $00,$50 or $a0
N $7658 d=sprite collision data
C $7658,2 a collision on the right column?
C $765A,3 no
C $765F,1 a=sprite offset
C $7660,2 sprite offset=f0?
C $7662,3 no, must be $00,$50 or $a0
N $7665 d=sprite collision data
C $7665,2 a collision on the left column?
C $7667,3 no
C $766A,4 set enemy full speed
C $766E,3 create mirror images of all 4 frames of current sprite, change direction
C $7671,2 set sprite offset=$f0
C $7673,3 display sprite
c $7676 red enemy routine
C $7677,3 time until enemy changes direction
C $767C,2 time until enemy changes direction
C $767F,1 was there a collision?
C $7680,2 yes
N $7682 no
C $7682,3 counter
C $7687,2 will jump if counter=0,32,64 or 128
C $7689,2 time until enemy changes direction
C $768B,3 time until enemy changes direction, either $02 or $10
C $768E,3 sprite action=sprite action+1
C $7694,2 sprite action counter=2?
C $7696,2 no
C $7698,4 is the enemy travelling right?
C $769C,2 yes
N $769E no, enemy travelling left
C $769E,3 create mirror images of all 4 frames of current sprite, change direction
C $76A1,2 display sprite
C $76A3,2 sprite action counter=6?
C $76A5,2 no
C $76A7,4 is the enemy travelling left?
C $76AB,2 yes
N $76AD no, enemy travelling right
C $76AD,3 create mirror images of all 4 frames of current sprite, change direction
C $76B0,3 display sprite
C $76B3,2 perform universal sprite action
C $76B5,2 sprite action counter=9? (maximum value reached)
C $76B7,2 no
C $76B9,4 yes, so reset to 1
N $76BD universal sprite actions
C $76BD,3 sprite action counter
C $76C1,2 1 ; move to next line (up)/check for collision/display sprite
C $76C4,3 2 ; move to next sprite (right)/check for collision move to next line (up)/check for collision/display sprite OR create mirror images of all 4 frames of current sprite, change direction/display sprite
C $76C8,3 3 ; move to next sprite (right)/check for collision/display sprite
C $76CC,2 4 ; move to next sprite (right)/check for collision move to next line (down)/check for collision/display sprite OR create mirror images of all 4 frames of current sprite, change direction/display sprite
C $76CF,2 5 ; move to next line (down)/check for collision/display sprite
C $76D2,2 6 ; move to next sprite (left)/check for collision move to next line (down)/check for collision/display sprite OR create mirror images of all 4 frames of current sprite, change direction/display sprite
C $76D5,3 7 ; move to next sprite (left)/check for collision/display sprite
> $76D8 ; 8 ; move to next sprite (left)/check for collision
> $76D8 ; move to next line (up)/check for collision
> $76D8 ; display sprite
> $76D8 ; OR
> $76D8 ; create mirror images of all 4 frames of current sprite, change direction
c $76D8 display sprite
C $76D8,1 a=sprite offset
C $76D9,2 sprite offset=f0?
C $76DB,2 no, must be $00,$50 or $a0
C $76DD,1 a=line offset
C $76DE,1 at top?
C $76DF,2 no
C $76E1,1 d=sprite collision data
C $76E2,2 and %10000011 (bits 0 (top left corner),1 (left column),7 (top row))
C $76E4,2 of those 3 bits, is just bit 0 (a hit at top left corner) set?
C $76E6,2 no
N $76E8 yes
C $76E8,4 set sprite action #04
C $76EC,3 create mirror images of all 4 frames of current sprite, change direction
C $76EF,2 sound affect
C $76F1,2 set sound affect/display sprite
C $76F3,3 move to next sprite (left)/check for collision
C $76F6,3 move to next line (up)/check for collision
C $76F9,3 display sprite
C $76FC,1 a=sprite offset
C $76FD,2 sprite offset=f0?
C $76FF,2 no, must be $00,$50 or $a0
C $7701,1 a=line offset
C $7702,2 on the bottom line?
C $7704,2 no
C $7706,1 d=sprite collision data
C $7707,2 and %00001110 (bits 1 (left column),2 (bottom left corner),3 (bottom row))
C $7709,2 of those 3 bits, is just bit 2 (a hit at bottom left corner) set?
C $770B,2 no
N $770D yes
C $770D,4 set sprite action #02
C $7711,3 create mirror images of all 4 frames of current sprite, change direction
C $7714,2 sound affect
C $7716,2 set sound affect, display sprite
C $7718,3 move to next sprite (left)/check for collision
C $771B,3 move to next line (down)/check for collision
C $771E,2 display sprite
C $7720,1 a=sprite offset
C $7721,2 sprite offset=f0?
C $7723,2 no, must be $00,$50 or $a0
C $7725,1 a=line offset
C $7726,2 on the bottom line?
C $7728,2 no
C $772A,1 d=sprite collision data
C $772B,2 and %00111000 (bits 3 (bottom row),4 (bottom right corner),5 (right column))
C $772D,2 of those 3 bits, is just bit 4 (a hit at bottom right corner) set?
C $772F,2 no
N $7731 yes
C $7731,4 set sprite action #08
C $7735,3 create mirror images of all 4 frames of current sprite, change direction
C $7738,2 sound affect
C $773A,4 time until enemy changes direction
C $773E,2 set sound affect/display sprite
C $7740,3 move to next sprite (right)/check for collision
C $7743,2 update sprite line/display sprite
C $7745,3 move to next sprite (right)/check for collision
C $7748,2 display sprite
C $774A,1 a=sprite offset
C $774B,2 sprite offset=f0?
C $774D,2 no, must be $00,$50 or $a0
C $774F,1 a=line offset
C $7750,1 at the top?
C $7751,2 no
C $7753,1 d=sprite collision data
C $7754,2 and %11100000 (bits 5 (right column),6 (top right corner),7 (top row))
C $7756,2 of those 3 bits, is just bit 6 (a hit at top right corner) set?
C $7758,2 no
N $775A yes
C $775A,4 set sprite action #06
C $775E,3 create mirror images of all 4 frames of current sprite, change direction
C $7763,3 set sound affect
C $7766,2 display sprite
C $7768,3 move to next sprite (right)/check for collision
C $776B,3 move to next line (up)/check for collision/display sprite
C $776E,3 move to next sprite (left)/check for collision
c $7771 display sprite
C $7771,3 enemy row
C $7774,3 enemy column
C $7777,3 line offset
C $777A,3 sprite offset
C $777D,4 enemy direction has just changed?
C $7781,2 yes, so process next enemy
C $7784,3 locate sprite in buffer
C $7788,2 columns
C $778A,2 rows
N $778C (we will display 3*3 characters)
C $778E,3 calculate attribute address
C $7791,1 get attribute
C $7792,1 restore coordinate lookup
C $7793,1 anything there?
C $7794,2 no
C $7796,2 check if any ink 1-7 there
C $7798,2 yes
C $779A,2 set invalid column (we will write to ROM)
C $779C,3 enemy colour
C $779F,3 display character
C $77A3,1 next row
C $77A9,1 row=row-3 (back to row we started at)
C $77AA,1 next column
c $77AD clear trailing attribute squares around sprite
C $77AD,1 row=row-1 (back to row we started at MINUS 1)
C $77AE,2 check 4 rows
C $77B0,3 enemy colour
C $77B3,1 check 4 rows forwards
C $77B5,3 clear trailing attribute square if required
C $77BA,1 check 4 columns backwards
C $77BC,3 clear trailing attribute square if required
C $77C1,1 check 4 rows backwards
C $77C3,3 clear trailing attribute square if required
C $77C8,1 check 4 columns forwards
C $77CA,3 clear trailing attribute square if required
N $77CF process next enemy
C $77D2,2 next enemy in table
C $77D4,1 restore counter
C $77D5,1 processed all 4 enemies?
C $77D6,3 no
C $77D9,1 yes, so exit
c $77DA check sprite collision
C $77DA,3 max.lines attributes
C $77DD,1 h=row, is it in valid area of screen?
C $77DE,1 no, so exit
C $77DF,1 column
C $77E0,2 valid column <32?
C $77E2,1 no, so exit
C $77E4,3 calculate attribute address
C $77E8,1 black ink and paper (nothing there)?
C $77E9,2 yes, so ignore
C $77EB,2 bright black paper and cyan ink (dan)?
C $77ED,2 yes, so ignore
C $77EF,2 anything there? enemy or ink based graphic
C $77F1,2 no, so ignore
C $77F5,1 preserve bits where collision occurred
c $77F8 create mirror images of all 4 frames of current sprite, change direction
C $77FB,3 buffer
C $77FE,3 de=$6000,$6140,$6280 or $63c0
C $7801,3 b=columns, c=rows
C $7804,2 each enemy has 4 frames
C $7806,3 create mirror image of graphic data (not attributes)
C $780C,1 hl now points to next sprite
C $780F,2 repeat for all sprites
C $7814,2 flip bit 3, change enemy direction (opposite to what it was)
C $7816,2 set  bit 4, direction has just changed
C $7820,1 old sprite offset
C $7821,1 new sprite offset ($00>>$f0, $50>>$a0 $a0>>$50, $f0>>$00)
c $7823 move to next line (up)/check for collision
C $7824,1 line offset=line offset-2
C $7825,1 exit if line offset still positive
C $7827,1 line offset=line offset+2
N $7828 d=sprite collision data
C $7828,2 a collision on the top row?
C $782A,2 yes
N $782C no
C $782C,1 row=row-1
C $782D,2 line offset=6
C $7833,2 sprite action=#05
C $7835,1 sprite action counter=1,3,5 or 7?
C $7836,2 yes
N $7838 no
C $7838,1 sprite action=#04
C $7839,1 sprite action counter originally 2?
C $783A,2 yes
C $783C,2 sprite action=#06
C $783E,3 set sprite action counter
C $7843,3 set sound affect
c $7847 move to next line (down)/check for collision
C $7847,1 line offset
C $7848,2 is enemy on bottom line?
C $784A,2 yes
C $784D,1 no, so line=line+2
N $784F d=sprite collision data
C $784F,2 a collision on the bottom row?
C $7851,2 yes
N $7853 no
C $7853,2 line offset=2
C $7855,1 row=row+1
C $785A,2 sprite action=#02
C $785C,2 sprite action counter=4? (move to next sprite/display sprite)
C $785E,2 yes
N $7860 no
C $7860,1 sprite action=#01
C $7861,1 sprite action counter=5? (update sprite line/display sprite)
C $7862,2 yes
N $7864 no
C $7864,2 sprite action=#08
C $7866,3 set sprite action counter (#02,#01 or #08)
C $7869,4 time until enemy changes direction
C $786E,3 set sound affect
c $7872 move to next sprite (right)/check for collision
C $7872,1 sprite offset
C $7875,2 jump if sprite offset=$f0 (end of cycle)
C $7879,1 otherwise sprite offset =next one up $00>>$50, $50>>$a0, $a0>>$f0
N $787B d=sprite collision data
C $787B,2 a collision on the right column?
C $787D,2 yes
N $787F no
C $787F,2 set sprite offset=$00
C $7881,1 column=column+1
C $7883,3 create mirror images of all 4 frames of current sprite, change direction
C $7889,2 sprite action=#08
C $788C,1 sprite action counter=2?
C $788D,2 yes
N $788F no
C $788F,1 sprite action=#07
C $7890,1 sprite action counter=3?
C $7891,2 yes
N $7893 no
C $7893,1 sprite action=#06
C $7894,3 set sprite action counter (#08, #07, or #06)
C $7899,3 set sound affect
c $789D move to next sprite (left)/check for collision
C $789D,1 sprite offset
C $78A0,2 jump if sprite offset=$f0
C $78A4,1 otherwise sprite offset =next one up $00>>$50, $50>>$a0, $a0>>$f0
N $78A6 d=sprite collision data
C $78A6,2 a collision on the left column?
C $78A8,2 yes
N $78AA no
C $78AA,2 sprite offset=$00
C $78AC,1 column=column-1
C $78AE,3 create mirror images of all 4 frames of current sprite, change direction
C $78B4,2 sprite action=#04
C $78B6,2 sprite action counter=$06?
C $78B8,2 yes
N $78BA no
C $78BA,1 sprite action=#03
C $78BB,1 sprite action counter was $07?
C $78BC,2 yes
N $78BE no
C $78BE,1 sprite action=#02
C $78BF,3 set sprite action counter (#04,#03 or #02)
C $78C4,3 set sound affect
c $78C8 check if anything in 3 attribute locations
R $78C8 Input:HL coordinate (h=row, l=column)
R $78C8 Output:Z zero flag set if nothing already in attribute square, reset if something already in attribute square
C $78C8,1 preserve coordinate
C $78C9,1 preserve column
C $78CA,3 calculate attribute address
C $78CD,2 check 3 attribute squares
C $78D0,2 anything there? checking the ink colour 1-7
C $78D2,2 yes
C $78D4,1 hl now points to next attribute location
C $78D5,1 process next attribute location
N $78D8 zero flag will be set if there was nothing in any of the 3 attribute squares
C $78D8,1 restore the column (af into hl)
C $78D9,1 a=column again
C $78DA,1 enemy coordinate
c $78DC locate sprite in buffer
R $78DC Input:B sprite offset C line offset
R $78DC Output:HL points to correct sprite location
C $78DC,3 buffer
C $78DF,3 hl=$6000,$6140,$6280 or $63c0 (base of enemy sprites in buffer)
C $78E5,1 c=line offset
C $78E9,1 add line offset
C $78EB,1 add sprite offset
c $78ED
C $78F1,3 dan attributes
C $78F4,2 clear dan buffer/redraw dan?
C $78F6,2 no
C $78FB,4 b=dan sprite, c=dan line
C $78FF,3 h=dan row, l=dan column
C $7908,4 are we pressing 'down'?
C $790C,2 no
C $790E,4 clear dan on a ladder flag
C $7912,3 counter
C $7916,2 jump if even number (every other pass)
C $7918,3 timer for special ability
C $791B,1 active?
C $791C,2 no
C $791E,3 yes, so decrement timer
C $7921,2 jump if we reached zero
C $7925,2 jump if timer>=50
C $7929,3 set sound affect
C $792E,3 level ; 8- this byte=current level
C $7933,1 a=a*3
C $7934,2 pending level, will point to either torch, skull, gem, crossbow, dumbbell, snips, fan or mike, ie. 1st item of 3 special items for the level
C $7936,3 remove the special ability item
C $7939,3 was dan carrying another of this item?
C $793C,2 no
C $793E,4 yes, so reset the timer=255
C $7944,4 cancel any special abilities
C $7948,4 set clear dan buffer/redraw dan flag
C $794C,2 dan jump height (normal)
C $794E,4 has dan got double height jump ability?
C $7952,2 no
C $7954,2 yes, so give dan double jump height
C $7958,3 energy
C $795B,2 less than 10 energy?
C $795D,2 no
C $795F,2 yes, so jump height = energy+4
C $7962,3 store jump height
C $7965,4 h=dan row, l=dan column
C $796A,3 screen number
C $796D,2 in the blimp room?
C $796F,3 yes
C $7972,3 current room data
C $7978,3 is dan carrying the record?
C $797B,2 no
C $797F,3 is dan carrying the snake?
C $7982,2 yes, so remote play the record
C $7984,2 is there a jukebox in the room?
C $7986,2 no
C $7988,4 b=jukebox row, c=jukebox column
C $798C,3 jukebox dimensions h=columns, l=rows
C $798F,3 check dan is in range of object (jukebox)
C $7996,3 remove record from inventory
C $7999,4 set 'record played on jukebox'
C $799D,3 level ; 8- this byte=current level
C $79A1,1 a:=a*2
C $79A2,2 a:=a+10
C $79A4,3 initialise tune
C $79A7,3 note attribute on screen
C $79AA,2 set flashing
C $79AC,3 max. attribute lines
C $79AF,1 temporarily store max. attribute lines value
C $79B0,2 max. attribute lines=24
C $79B3,2 number we are going to display
C $79B5,1 8-level (level 1=7, level 8=0)
C $79B6,3 h=row, l=column
C $79B9,2 set colour to magenta
C $79BB,3 display number (level)
C $79BE,1 hl=$5bfe (max. attribute lines)
C $79BF,1 restore original value of max. attribute lines
C $79C0,1 hl=current room data
C $79C1,2 is there a door in the current room?
C $79C3,2 no
C $79C6,4 get the door coordinates
C $79CA,3 door dimensions h=columns, l=rows
C $79CD,3 check dan is in range of object (door)
C $79D3,4 dan has walk straight through doors special ability?
C $79D7,2 no
C $79DA,1 hl=door coordinates (h=row, l=column)
C $79DB,1 add 1 to column
C $79DC,2 door graphic code
C $79DE,2 set new door colour (cyan)
C $79E0,3 display graphic
C $79E5,1 graphic code now=$3f
C $79E6,3 display graphic
C $79ED,3 is dan carrying a bomb?
C $79F0,2 no
C $79F2,2 set door is blown (inactive)
C $79F7,2 set time until door blows open
C $79FA,3 get current room number
C $79FD,1 store it ($5bf1)
C $7A00,3 +100 onto score
C $7A05,3 is dan carrying the time bomb?
C $7A08,2 yes, so dan won't lose the bomb from inventory
C $7A0C,3 remove bomb from inventory
C $7A0F,3 room items
C $7A12,2 upto 4 items per room
C $7A15,1 item column
C $7A17,1 item row
C $7A19,1 item
C $7A1A,1 anything there?
C $7A1B,2 no
C $7A1E,3 item dimensions h=columns, l=rows
C $7A21,3 check dan is in range of object (item)
C $7A25,2 jump if dan in range
C $7A28,1 hl now points to start of next item
C $7A2A,1 check next item
C $7A2D,2 no item was touched
C $7A2F,1 item touched
C $7A31,2 remove the item
C $7A33,3 add as incoming item
C $7A36,1 is it a food item?
C $7A37,2 no
C $7A3B,3 is dan carrying the food mixer?
C $7A3E,2 no
C $7A40,2 jump if dan is carrying the food mixer
c $7A42 find a spare slot in the inventory
C $7A43,3 item table
C $7A46,2 8 slots
C $7A49,1 anything there?
C $7A4A,2 no
C $7A4C,1 yes, so try next slot
C $7A53,1 hl now points to which bit set for this item
C $7A54,1 get the bit set
C $7A55,3 hl=$5bxx where xx is the current room number
C $7A59,1 remove the item from the room
C $7A5B,1 h=item row
C $7A5C,1 l=item column
C $7A5D,1 a=graphic
C $7A5E,3 graphic lookup table
C $7A61,3 get address from lookup table
C $7A65,1 graphic has a single attribute?
C $7A66,2 yes
C $7A6C,1 de now points to start of actual graphic
C $7A6D,3 b=columns, c=rows
C $7A70,3 clear graphic from screen
> $7A77 ; dan collision
> $7A77 ;
> $7A77 ; single check in 'e' register, results OR'd into 'd' register
> $7A77 ;
> $7A77 ; $01 $80 $80 $40
> $7A77 ; $02         $20
> $7A77 ; $02         $20
> $7A77 ; $02         $20
> $7A77 ; $04 $08 $08 $10
> $7A77 ;
> $7A77 ; bit 0  +1    top left corner
> $7A77 ; bit 1  +2    left column
> $7A77 ; bit 2  +4    bottom left corner
> $7A77 ; bit 3  +8    bottom row
> $7A77 ; bit 4  +16   bottom right corner
> $7A77 ; bit 5  +32   right column
> $7A77 ; bit 6  +64   top right corner
> $7A77 ; bit 7  +128  top row
c $7A77
C $7A77,1 h=dan row, l=dan column
C $7A78,4 b=dan sprite, c=dan line
C $7A7F,2 is dan on line 2,4 or 6?
C $7A81,2 yes, not on a row boundary
C $7A84,2 dan on line 8? (moved down to position)
C $7A86,2 yes
N $7A88 no, so dan line=0 (moved up to position)
C $7A88,1 row=row-1
C $7A89,2 2nd or 3rd sprite?
C $7A8B,2 no
C $7A8E,4 is dan facing right?
C $7A92,2 yes
N $7A94 dan facing left
C $7A96,3 check for dan collision at top left corner
C $7A9C,1 row=row+4
C $7A9F,3 check for dan collision at bottom left corner
C $7AA5,1 column=column+2
C $7AA8,3 check for dan collision at top right corner
C $7AAE,1 row=row+4
C $7AB1,3 check for dan collision at bottom right corner
C $7AB8,3 check for dan collision on top row
C $7AC1,1 row=row+4
C $7AC2,3 check for dan collision on bottom row
C $7AC5,4 is dan on a ladder?
C $7AC9,2 no
C $7ACB,2 yes, so d=OR $08 (set dan collision on bottom row)
C $7ACD,1 restore original dan coordinates before the dan collision check
C $7ACF,2 2nd sprite?
C $7AD1,2 no
C $7AD4,2 dan collision check value for left column
C $7AD6,4 is dan facing left?
C $7ADA,2 yes
N $7ADC no, dan facing right
C $7ADC,2 dan collision check value for right column
C $7ADF,1 column=column+2
N $7AE0 check for dan collision on either left or right column
C $7AE0,2 check 3 rows
C $7AE2,1 dan line
C $7AE3,1 moved up to position? (line=0)
C $7AE4,2 yes
C $7AE6,1 row=row+1
C $7AE7,2 moved down to position? (line=8)
C $7AE9,2 yes
N $7AEB no, line=2,4 or 6 (not on row boundary)
C $7AEB,1 so row=row-1
C $7AEC,1 and check 4 rows, not 3
C $7AED,3 dan collision check
C $7AF0,1 row=row+1
C $7AF3,2 set sprite #02
C $7AF6,3 screen number
C $7AF9,2 on the bottom row screens of a level?
C $7AFB,2 no
C $7AFD,1 dan row
C $7AFE,2 is row<15?
C $7B00,2 yes
N $7B02 no, so dan must be on the water
C $7B02,4 does dan have the 'walk on water' attribute?
C $7B06,2 no
C $7B08,2 yes, so d=OR $08 (set dan collision on bottom row)
C $7B0A,4 can dan walk up steps?
C $7B0E,2 yes
C $7B10,4 pressed up?
C $7B14,2 no
C $7B16,3 level ; 8- this byte=current level
C $7B19,2 is dan on level 3?
C $7B1B,2 no
C $7B1D,3 screen number
C $7B20,2 is dan on top row of screens on level 3?
C $7B22,2 no
C $7B24,3 dan row
C $7B27,2 is row<6?
C $7B29,2 yes
C $7B2B,2 no, so d=OR $08 (set dan collision on bottom row) (will always end up stood on a platform at this position on level 3!)
C $7B2D,3 dan attributes
C $7B30,4 has dan been hit?
C $7B34,2 no
N $7B36 yes
C $7B36,3 amount to subtract from energy
C $7B39,1 anything there?
C $7B3A,2 yes
C $7B3C,4 clear dan hit flag
C $7B40,4 set clear dan buffer/redraw dan flag
C $7B44,2 is dan jumping? (straight up, left or right)
C $7B46,3 yes
C $7B49,2 is dan walking up a step?
C $7B4B,3 yes
C $7B4E,2 dan collision on the bottom row?
C $7B50,2 yes
C $7B52,4 dan hypnotised?
C $7B56,2 no
C $7B58,3 time hynotised=time hypnotised-1
C $7B5B,2 jump if still hypnotised
C $7B5D,3 time hynotised=1 (so dan will not stop on a ladder)
C $7B60,2 dan line=2 or 6?
C $7B62,2 yes, so just move down 2 lines
N $7B64 no, dan line=0 or 8 so move down 4 lines
C $7B64,3 move dan down
C $7B67,3 move dan down
N $7B6A dan line will now be either 4 or 8
C $7B6A,2 is dan in freefall state?
C $7B6C,2 yes
C $7B6E,2 no, so set dan in freefall state
C $7B70,4 clear dan freefalling counter
C $7B74,3 add 1 to dan freefalling counter
C $7B77,1 a=dan line (4 or 8)
C $7B7A,2 divide by 4 (result can be 1 or 2)
C $7B7C,1 result into 'd' register
C $7B7F,1 a=20-dan row (lowest dan row can be $00, highest dan row can be $11(17) eg. under water) (gives range 3-20)
C $7B80,1 multiply result by 2 (range=6-40)
C $7B81,1 subtract either 1 or 2 from result
N $7B82 value will now be in range 4-39 (the sound affect!)
C $7B82,3 set sound affect
C $7B87,2 is dan in freefall state?
C $7B89,2 no
N $7B8B yes
C $7B8B,2 clear dan in freefall state
C $7B8D,3 dan freefalling counter
C $7B90,4 clear dan freefalling counter
C $7B94,2 $10 is the limit (8 rows) for freefalling before dan will lose energy due to the height of fall
C $7B96,2 jump if freefalling counter <$11(17), so dan will not lose energy after this fall
N $7B98 amount of energy to lose=(fall height-$11)/2+1
C $7B98,2 divide by 2
C $7B9A,1 add 1 (dan will lose a MINIMUM of 1 energy unit)
C $7B9B,3 deplete energy, set flags
C $7B9E,4 dan hypnotised?
C $7BA2,2 no
C $7BA4,3 time hynotised=time hypnotised-1
C $7BA7,2 jump if still hypnotised
C $7BA9,4 cancel hypnotised
C $7BAD,4 set clear dan buffer/redraw dan flag
C $7BB4,2 is dan facing left?
C $7BB6,2 yes
C $7BB8,2 dan collision on right column?
C $7BBA,2 no
N $7BBC yes
C $7BBC,2 create mirror image of dan
C $7BBE,2 dan collision on left column?
C $7BC0,3 no
N $7BC3 yes
C $7BC3,3 create mirror image of dan
C $7BC9,3 keyboard/joystick movement $00=none,$01=right,$02=left,$04=down,$08=up,$10=jump (000FUDLR)
C $7BCC,2 jump key pressed?
C $7BCE,2 no
N $7BD0 yes, jump key pressed
C $7BD0,2 dan collision on top row?
C $7BD2,2 yes
C $7BD4,2 set dan is jumping (straight up, left or right)
C $7BD6,2 set dan is jumping 2 flag
C $7BD8,1 is dan jumping left or straight up?
C $7BD9,2 yes
N $7BDB no, dan is jumping right
C $7BDB,1 a=dan collision data
C $7BDC,2 and %01100000, dan collision on top right corner or right column?
C $7BDE,2 yes
N $7BE0 no
C $7BE0,2 set dan jumping right
C $7BE4,1 is dan jumping straight up?
C $7BE5,2 yes
N $7BE7 no, dan is jumping left
C $7BE7,1 a=dan collision data
C $7BE8,2 and %00000011, dan collision on top left corner or left column?
C $7BEA,2 yes
N $7BEC no
C $7BEC,2 set dan jumping left
C $7BF3,1 right pressed?
C $7BF4,2 no
C $7BF6,1 a=dan collision data
C $7BF7,2 and %00101000
C $7BF9,2 dan collision on both bottom row and right column?
C $7BFB,2 no
C $7BFF,1 column=column+2
C $7C00,3 dan walking up a step
C $7C0B,1 left pressed?
C $7C0C,2 no
C $7C0E,1 a=dan collision data
C $7C0F,2 and %00001010
C $7C11,2 dan collision on both bottom row and left column?
C $7C13,2 no
C $7C16,3 dan walking up a step
C $7C24,3 h=dan row, l=dan column
C $7C27,4 b=dan sprite, c=dan line
C $7C2B,3 store dan attributes
C $7C34,3 dan background graphics left column
C $7C3A,3 calculate attribute address
C $7C3D,3 next attribute position= +32 (1 row down)
C $7C40,2 we will check 3 columns
C $7C42,2 we will check 4 rows, checking is around dan sprite
C $7C47,3 max. attribute lines
C $7C4B,2 jump if out of range
C $7C4D,3 calculate screen address
C $7C53,2 bright+black paper+cyan ink? (dan)
C $7C55,2 yes
N $7C57 no
C $7C57,1 anything else there?
C $7C58,2 yes
N $7C5A no
C $7C5B,2 set attribute to bright+black paper+cyan ink
N $7C5D (dan sprite)
C $7C60,2 check if bright set (there is an enemy there)
C $7C62,2 jump if bright, dan has been hit
N $7C64 ink or paper?
C $7C64,2 mask off ink
C $7C66,2 jump if not black ink
N $7C68 it's paper (dan moving behind scenery)
C $7C68,2 if black ink then write to ROM (don't display)
N $7C6A copy dan sprite, merge with background display on screen
C $7C79,1 dan position h=row, l=column
C $7C7A,1 next row
C $7C8E,3 temporarily store colour of enemy that has hit dan
C $7C94,1 dan sprite data
C $7C95,1 is it the same as on screen?
C $7C96,2 yes, so no collision has occurred
N $7C98 no
C $7C98,3 enemy colour
C $7C9B,2 set collision +$80
C $7CA0,1 dan sprite data
C $7CA1,1 merge it with the enemy on screen
C $7CA7,1 next line
C $7CAA,3 enemy colour
C $7CAD,1 bit 7 set? (collision)
C $7CAE,2 no
C $7CB0,1 yes, so restore the byte
C $7CB1,2 get the ink
C $7CB3,2 jump if ink 1-7 (enemy, scenery)
N $7CB5 if ink is black then it must be a hit off blitzens zapper
C $7CB5,4 is dan already in a hypnotised state?
C $7CB9,3 yes
N $7CBC no
C $7CBD,3 blitzen attributes
C $7CC0,2 reset firing the ray gun (inbound shot)
C $7CC2,2 set blitzen hit dan with a shot from the ray gun
C $7CC5,4 immune from blitzen set? (wearing the goggles)
C $7CC9,3 yes
C $7CCC,4 set dan hypnotised
C $7CD0,4 set the time dan will be hypnotised for
C $7CD4,4 set clear dan buffer/redraw dan flag
C $7CDA,3 initialise tune
C $7CDF,4 does dan have immunity?
C $7CE3,2 yes
C $7CE5,3 colour of enemy that has hit dan
C $7CE8,2 reset to 'no collision'
C $7CEA,3 set enemy death
C $7CED,2 jump if enemy death already set
C $7CEF,4 has dan got the stop item theft special ability?
C $7CF3,2 yes
C $7CF5,2 is the enemy that has hit dan bright magenta?
C $7CF7,2 no
C $7CF9,4 has dan got the stop fuel theft attribute?
C $7CFD,2 yes
C $7CFF,2 fuel
C $7D01,3 remove fuel from inventory if carried
C $7D06,2 is the enemy that has hit dan bright red?
C $7D08,2 no
C $7D0A,2 goggles
C $7D0C,3 remove goggles from inventory if carried
C $7D0F,2 goggles
C $7D11,3 is dan still carrying a pair of goggles? (was dan carrying more than one pair?)
C $7D14,2 yes
C $7D16,4 reset the 'immune from blitzen' attribute
C $7D1A,4 set clear dan buffer/redraw dan flag
C $7D20,2 is the enemy that has hit dan bright white?
C $7D22,2 no
C $7D24,2 bomb
C $7D26,3 remove bomb from inventory if carried
C $7D2B,2 is the enemy that has hit dan bright green?
C $7D2D,2 no
C $7D2F,2 gem
C $7D31,3 remove gem from inventory if carried
C $7D34,3 is dan still carrying a gem? (was dan carrying more than one?)
C $7D37,2 yes
C $7D39,4 remove the 'can't walk up steps' ability
C $7D3D,4 score and energy boost ability set?
C $7D41,2 no
C $7D45,3 energy=energy+8
C $7D48,2 +25 onto score
C $7D4F,2 amount to subtract from energy
C $7D51,3 deplete energy, set flags
C $7D55,3 clear colour of enemy that has hit dan
C $7D5B,3 h=dan row, l=dan column
C $7D5E,2 dan colour (bright+black paper+cyan ink)
N $7D60 check 3 attribute squares horizontally above dan
C $7D63,3 clear trailing attribute square if required
N $7D69 check 4 attribute squares vertically to right of dan
C $7D6C,3 clear trailing attribute square if required
N $7D72 check 3 attribute squares horizontally below dan
C $7D75,3 clear trailing attribute square if required
N $7D7B check 4 attribute squares vertically to left of dan
C $7D7E,3 clear trailing attribute square if required
b $7D85 colour of enemy that has hit dan
B $7D85,1,1
c $7D86
C $7D86,3 h=dan row, l=dan column
C $7D89,4 b=dan sprite, c=dan line
C $7D8D,1 dan attributes
C $7D8E,2 dan hit or hypnotised?
C $7D90,2 yes
C $7D93,2 is dan on line 2,4 or 6?
C $7D95,1 yes, so exit (not on row boundary)
C $7D96,2 dan line=8? (moved down to position)
C $7D98,2 no
N $7D9A dan line must=0 (moved up to position)
C $7D9B,1 either row=row+3 or row=row+4
C $7D9E,1 dan sprite (0,1,2,3)
C $7DA1,4 is dan facing right?
C $7DA5,2 yes
C $7DA7,2 no, facing left. Jump if dan sprite=3
N $7DA9 dan is facing left and dan sprite=0,1 or 2
C $7DAB,2 jump if dan sprite=0,1 or 2
C $7DAD,1 column=column+1
C $7DAE,3 calculate attribute address
C $7DB1,1 attribute location UNDER dan's feet
C $7DB2,2 black paper+cyan ink? (ladder)
C $7DB4,2 no, not a ladder
N $7DB6 yes, it's a ladder
C $7DB6,1 column=column+1 (check next attribute location)
C $7DB8,2 black paper+cyan ink? (ladder)
C $7DBA,2 no, not a ladder
N $7DBC yes, it's a ladder
C $7DBF,1 clear carry flag
C $7DC0,2 hl now points to attribute location 1 row up (AT dan's feet)
C $7DC2,1 attribute location AT dan's feet
C $7DC3,2 black paper+cyan ink? (ladder)
C $7DC5,2 no
C $7DC7,3 dan attributes
C $7DCA,2 and %11110001 (clear dan jumping flags)
C $7DCC,2 set bit 7, on a ladder
C $7DCE,3 store attributes
C $7DD1,3 b always 0 here so clear dan freefalling counter
C $7DD5,4 clear dan is on ladder flag
c $7DDA dan walking up a step
C $7DDA,4 can't walk up steps ability set?
C $7DDE,1 yes, so exit as dan can't walk up steps
C $7DDF,3 check if dan can walk up a step
b $7DE2 unused bytes
B $7DE2,6,1
c $7DE8 copy background graphics around dan to screen
C $7DE8,3 dan background graphics left column
C $7DEB,3 b=columns, c=rows
C $7DEE,3 h=dan row, l=dan column
C $7DF4,3 calculate screen address
C $7E0D,3 h=dan row, l=dan column
C $7E13,3 calculate attribute address
C $7E17,4 b=dan sprite, c=dan line
C $7E1E,3 dan background graphics left column
C $7E2C,2 dan there?
C $7E2E,2 no
C $7E30,2 bright set (enemy)?
C $7E32,2 yes
c $7E50 dan collision check
C $7E51,3 max. attribute lines
C $7E55,2 exit routine if out of range
C $7E57,3 calculate attribute address
C $7E5A,1 get the attribute
C $7E5B,2 bright+black paper+yellow ink? (70) (blitzen top)
C $7E5D,2 yes
C $7E5F,2 bright+black paper+blue ink? (65) (blitzen bottom)
C $7E61,2 yes
C $7E63,2 bright set? (enemy, dan, blitzen middle)
C $7E65,2 yes, ignore
C $7E67,2 black paper+cyan ink? (ladder)
C $7E69,2 yes, ignore
C $7E6B,2 get the ink colour
C $7E6D,2 ignore if black ink
C $7E71,1 preserve bits where dan collision occurred
c $7E74 check either 1 or 2 columns for dan collision
C $7E74,2 sprite check number
C $7E76,4 is dan facing left?
C $7E7A,2 yes
N $7E7C no, he's facing right
C $7E7C,1 3rd sprite?
C $7E7D,2 no
C $7E7F,2 yes
C $7E81,1 3rd sprite?
C $7E82,2 yes
C $7E84,1 column=column+1
C $7E85,3 dan collision check
C $7E88,1 column=column+1
C $7E89,3 dan collision check
c $7E8D copy background graphics around dan to buffer
C $7E8E,3 calculate attribute address
C $7E95,2 dan attribute? bright cyan
C $7E97,2 yes
C $7E99,2 bright set? an enemy there?
C $7E9B,2 yes
C $7E9D,3 calculate screen address
c $7EAD remove item from inventory
R $7EAD Input:A item to be removed
C $7EB0,3 graphic removal table
C $7EB5,3 item table
C $7EB8,1 found the item?
C $7EB9,2 yes
C $7EBD,2 check next item
c $7EC1
C $7EC1,2 delete the item
C $7EC4,2 set graphic removal
c $7ECA
C $7ECA,3 h=dan row, l=dan column
C $7ECD,3 dan background graphics left column
C $7ED0,2 3 columns
C $7ED2,2 4 rows
C $7ED7,3 copy background graphics around dan
c $7EE5 create mirror image of dan
C $7EEC,3 b=columns, c=rows
C $7EEF,3 create mirror image of graphic data (not attributes)
c $7F07 locate dan sprite in buffer
C $7F07,1 dan sprite
C $7F15,1 dan line
C $7F18,3 dan sprite buffer
c $7F1D check dan is in range of object
R $7F1D Input:D dan row
R $7F1D E dan column
R $7F1D B object row
R $7F1D C object column
R $7F1D HL object dimensions: h=columns, l=rows
C $7F1D,1 get dan column
C $7F1E,2 add 2 to column
C $7F20,1 object column
C $7F21,1 exit if not in range
C $7F22,1 get object column
C $7F23,1 add object width
C $7F24,1 subtract 1
C $7F25,1 dan column
C $7F26,1 exit if not in range
C $7F27,1 object row
C $7F28,1 object rows
C $7F29,1 subtract 1
C $7F2A,1 dan row
C $7F2B,1 exit if not in range
C $7F2C,1 dan row
C $7F2D,2 add 4 to row
C $7F2F,1 object row
C $7F30,1 exit if not in range
N $7F31 now in range of object
C $7F31,2 jump if not approaching from above item
C $7F33,3 dan line
C $7F36,2 check if dan on the correct line (row boundary moving down to position)
C $7F39,3 dan sprite
C $7F3C,2 2nd sprite?
c $7F3F deplete energy/set flags
C $7F3F,3 subtract from energy (energy depletion)
C $7F42,4 set dan hit flag
C $7F46,4 set clear dan buffer/redraw dan flag
c $7F4B is dan carrying a particular item?
R $7F4B Input:A item to check
R $7F4B Output:Z zero flag set if carrying, reset if not carrying
C $7F4D,2 check all 8 pockets
C $7F4F,3 start of items
C $7F52,1 is dan carrying this item?
C $7F53,2 yes
C $7F56,2 check next item
C $7F58,1 unnecessary instruction (djnz does not affect flags)
c $7F5C check if dan can walk up a step
C $7F5C,3 dan line
C $7F5F,1 dan has moved UP to his current position?
C $7F60,2 yes
C $7F62,1 row=row+1
C $7F63,3 calculate attribute address
C $7F67,2 bright+black paper+cyan ink? (dan)
C $7F69,2 yes, clear for dan to move to
C $7F6B,2 black paper+cyan ink? (ladder)
C $7F6D,2 yes, clear for dan to move to
C $7F6F,2 anything there? enemy or ink based graphic
C $7F71,1 exit if yes (not clear, dan can't walk up a step)
C $7F76,1 next attribute down
C $7F79,2 bright+black paper+cyan ink? (dan)
C $7F7B,2 yes, clear for dan to move to
C $7F7D,2 black paper+cyan ink? (ladder)
C $7F7F,2 yes, clear for dan to move to
C $7F81,2 anything there? enemy or ink based graphic
C $7F83,1 exit if yes (not clear, dan can't walk up a step)
C $7F84,2 dan collision on top row?
C $7F86,1 exit if yes
C $7F87,2 set dan walking up a step flag
C $7F89,1 a=0
C $7F8A,1 d=0 (clear dan collision data)
c $7F8C set enemy death
R $7F8C Input:A holds the enemy colour
C $7F90,4 enemy table data
C $7F94,2 check all 4 enemies on screen
C $7F96,3 check the colour (is it this enemy we are dealing with?)
C $7F99,2 yes
C $7F9E,2 check next enemy
C $7FA4,4 enemy death flag set?
C $7FA8,2 yes
C $7FAA,4 no, so set the enemy death flag
C $7FAE,4 set sprite action counter
c $7FB7
C $7FB7,2 dan collision on right column?
C $7FB9,1 exit if yes
C $7FBA,2 is dan facing left?
C $7FBC,3 yes, so create mirror image of dan
N $7FBF no
C $7FBF,1 next sprite
C $7FC0,2 is this what would be the 4th sprite? (doesn't exist)
C $7FC2,1 no, so exit
C $7FC3,2 yes, it's what would be the 4th sprite so reset the sprite to 0
C $7FC5,1 column=column+1
C $7FC7,2 is this column 30?
C $7FC9,2 no, so update background graphics (moving right) as still on same screen
N $7FCB yes, so move to next screen to right
C $7FCB,1 set column=0
C $7FCC,3 screen number
C $7FCF,1 screen number=screen number+1
C $7FD0,3 set up new room
N $7FD3 update background graphics (moving right)
C $7FD4,3 dan background graphics middle column
C $7FD7,3 dan background graphics left column
C $7FDD,2 middle column copied to left column
C $7FDF,3 dan background graphics right column
C $7FE2,3 dan background graphics middle column
C $7FE7,2 right column copied to middle column
C $7FED,2 4 rows
C $7FF1,3 right column
C $7FF5,3 copy background graphics into right column
c $7FFF
C $7FFF,2 dan collision on bottom row?
C $8001,2 no
C $8003,2 clear dan walking up a step flag
c $8006
C $8006,2 clear dan collision data
C $8008,3 move dan up
C $800B,2 is dan facing right?
C $800D,2 yes
C $800F,2 dan collision on left column?
C $8011,1 exit if yes
C $8012,2 is dan facing right?
C $8014,3 yes, so create mirror image of dan
N $8017 no
C $8017,1 next sprite
C $8018,2 is this what would be the 4th sprite? (doesn't exist)
C $801A,1 no, so exit
C $801B,2 yes, it's what would be the 4th sprite so reset the sprite to 0
C $801D,1 column=column-1
C $801E,3 update background graphics (moving left) if still on same screen
N $8021 move to next screen to left
C $8021,2 set column=29
C $8023,3 screen number
C $8026,1 screen number=screen number-1
C $8027,2 set up new room
N $8029 update background graphics (moving left)
C $802A,3 dan background graphics middle column
C $802D,3 dan background graphics right column
C $8033,2 middle column copied to right column
C $8035,3 dan background graphics left column
C $8038,3 dan background graphics middle column
C $803D,2 left column copied to middle column
C $8043,2 4 rows
C $8045,3 dan background graphics left column
C $8049,3 copy background graphics into left column
N $8053 set up new room
C $8056,3 h=dan row, l=dan column
C $8059,4 b=dan sprite, c=dan line
C $805D,3 draw/initialise new room
c $8064
C $8064,2 dan is jumping 2 flag set?
C $8066,2 no
C $8068,2 dan collision on top row?
C $806A,2 yes
C $806C,3 move dan up
C $806F,3 add 1 to dan freefalling counter (freeclimbing in this instance)
C $8072,3 dan freefalling counter (freeclimbing in this instance)
C $8076,1 add 1 (MINIMUM value will be 2 here due to line $806f)
C $8077,1 multiply by 2, result will be the sound affect (range will be 4-30)
C $8078,3 set sound affect
C $807B,1 restore dan freefalling counter (freeclimbing in this instance)
C $807C,3 has dan reached his maximum jump height?
C $807F,2 no
C $8081,2 reset dan is jumping 2 flag
C $8085,2 dan collision on bottom row?
C $8087,2 yes
C $8089,3 move dan down
C $808C,3 dan freefalling counter
C $808F,1 add 1
C $8090,1 multiply by 2, result will be the sound affect, (range will be 4-30)
C $8091,3 set sound affect
C $8094,3 subtract 1 from dan freefalling counter
C $8097,2 jump if not zero
C $8099,1 dan sprite (0,1,2,3)
C $809A,1 is it sprite 0?
C $809B,2 yes, the jump has finished
N $809D sprite=1,2 or 3 so continue
C $809D,3 add 1 to dan freefalling counter (dan freefalling counter ALWAYS=1 here)
C $80A0,2 is dan jumping right?
C $80A2,2 no
C $80A4,2 dan collision on right column?
C $80A6,2 yes
C $80A8,2 dan is jumping 2 flag set?
C $80AA,2 yes
C $80AC,2 dan collision on bottom right corner?
C $80AE,2 yes
C $80B0,2 dan collision on top right corner?
C $80B2,2 yes
C $80B8,2 is dan jumping left?
C $80BA,1 exit if no
N $80BB yes, dan is jumping left
C $80BB,2 dan collision on left column?
C $80BD,2 yes
C $80BF,2 dan is jumping 2 flag set?
C $80C1,2 yes
C $80C3,2 dan collision on bottom left corner?
C $80C5,2 yes
C $80C7,2 dan collision on top left corner?
C $80C9,2 yes
C $80CF,1 dan attributes
C $80D0,2 and %11110001 (clear dan jumping flags)
C $80D3,4 clear dan freefalling counter
c $80D8 move dan up
C $80D8,2 dan collision on top row?
C $80DA,1 exit if yes
N $80DB no, so dan can move up!
C $80DC,1 dan line=dan line-2
C $80DD,1 exit if still positive (0,2,4)
N $80DE dan line went down to $fe (0 minus 2)
C $80DE,2 set dan line=6
C $80E0,1 row=row-1
C $80E1,3 update background graphics (moving up) if still on same screen
N $80E4 dan has gone through top of screen, move to new screen (dan row has dipped below 0 to $ff, gone out of play area)
C $80E4,3 screen number
C $80E7,2 move up a screen
C $80E9,2 out of play area?
C $80EB,2 no
C $80ED,2 yes, so set screen to blimp room
C $80EF,2 set row=15
C $80F1,3 set up new room
N $80F4 update background graphics (moving up)
C $80FE,2 copy rows 3,2,1 into row 4,3,2
C $8106,3 dan background graphics left column
C $810A,3 copy 1st row background graphics
c $811A move dan down
C $811B,1 dan line=dan line+2
C $811D,2 has dan line reached 10?
C $811F,1 no, so exit
C $8120,2 set dan line=2
C $8122,1 row=row+1
C $8124,2 gone off bottom of screen? (out of play area)
C $8126,2 no, so update background graphics (moving down)
C $8128,3 room no.
C $812B,2 is dan in the blimp room?
C $812D,2 no
N $812F set room to go to after leaving blimp room
C $812F,3 level ; 8- this byte=current level
C $8133,3 room to go to after leaving blimp room table
C $813A,1 get room to go to
C $813E,2 is dan already on the bottom row of screens on a level?
C $8140,2 no, so dan can move to next screen down
C $8143,2 18th row? (under the water)
C $8145,2 no, so update background graphics (moving down)
C $8149,3 is dan carrying the aqualung? (only available on level 2)
C $814C,2 no
C $814E,2 room number dan will go to
C $8150,3 h=dan row, l=dan column
C $8157,3 restart game
C $815A,2 go to next room down
C $815C,2 row=0
C $815E,3 set up new room
N $8161 update background graphics (moving down)
C $8162,3 dan background graphics left column
C $816B,2 copy rows 4,3,2 into row 3,2,1
C $8171,2 3 columns
C $8176,3 dan background graphics bottom left row
C $817A,3 copy 4th row background graphics
C $8181,1 next column 4th row
b $818A room to go to after leaving blimp room table
D $818A first room that dan will start in after the leaving the blimp room for each level
B $818A,1,1 level 8
B $818B,1,1 level 7
B $818C,1,1 level 6
B $818D,1,1 level 5
B $818E,1,1 level 4
B $818F,1,1 level 3
B $8190,1,1 level 2
B $8191,1,1 level 1
c $8192 blitzen
C $8192,4 iy points to blitzen attributes
C $8196,3 h=blitzen row, l=blitzen column
C $8199,4 e=blitzen attributes, d=blitzen graphic
C $819D,3 screen number
C $81A0,3 blitzen screen number
N $81A3 is dan on the same screen as blitzen?
C $81A3,3 no
C $81A6,2 is blitzen active?
C $81A8,3 no
C $81AC,2 mask blitzen hit dan with a shot from the ray gun (bit 5) and firing ray gun (bit 1)
C $81AE,2 has blitzen hit dan with a shot from the ray gun already but still firing?
C $81B0,2 yes
N $81B2 no, blitzen has hit dan but has now finished firing
C $81B2,2 clear blitzen hit dan with a shot from the ray gun
C $81B4,3 turn blitzen around and send him back in the direction he came
C $81B9,2 blitzen travelling left?
C $81BB,2 yes
C $81BE,1 blitzen travelling right
C $81C1,2 column at least 32 (invalid)?
C $81C3,3 yes, column value is too high (>32)
C $81C6,3 calculate attribute address
C $81CA,2 firing the ray gun?
C $81D0,3 yes
C $81D3,3 check 3 attribute squares (vertically)
C $81D6,2 is dan or an enemy already at this location? (bright set)
C $81D8,2 yes, dan or an enemy is already there
C $81DA,1 get the attribute
C $81DB,1 black paper, black ink? (nothing there)
C $81DC,2 yes
C $81DE,2 mask the ink colour
C $81E0,2 jump if black ink (jump if clear)
N $81E2 there is a paper attribute(1-7) or ink attribute(1-7) at location
C $81E2,2 c will now equal 1 as set to zero at $81d3 (setting flag, paper(1-7) or ink(1-7) there) flag checked at $8243
C $81E6,1 check next attribute location
C $81EA,1 point hl to middle attribute location
C $81EC,3 blitzen column
C $81EF,2 less than 30?
C $81F1,2 no
C $81F4,2 blitzen sprite 3?
C $81F6,2 no, so he is not in position to contemplate firing a shot
N $81F8 yes, so check whether blitzen will fire a shot
C $81F8,2 check 12 attribute locations (deciding whether blitzen will fire or not) blitzen will fire if dan or an enemy is in his line of fire
C $81FB,2 bright+black paper+cyan ink? (dan)
C $81FD,2 yes
C $81FF,2 is bright set (an enemy there)?
C $8201,2 yes
C $8203,2 mask the ink colour
C $8205,2 jump if not black ink (jump if not clear)
C $8207,2 is blitzen travelling right?
C $8209,2 yes
N $820B no, blitzen travelling left
C $820B,1 column=column-1
C $820F,2 column=31?
C $8211,2 yes, crossed screen boundary onto previous attribute line, so exit
C $8215,1 column=column+1
C $8217,2 column=0?
C $8219,2 yes, crossed screen boundary onto next attribute line, so exit
C $821F,4 is dan hypnotised?
C $8223,2 yes
C $8225,4 set blitzen ray gun shot length to zero
C $8229,3 screen number
C $822C,3 copy the current screen number to blitzen screen number
C $822F,1 blitzen attributes
C $8230,2 set bits 1+3 (firing ray gun and shot type=outbound)
C $8232,3 $5bf2
C $8236,2 graphic
C $823B,1 restore blitzen coordinates
C $823C,1 next sprite
C $823D,2 is this what would be the 4th sprite? (doesn't exist)
C $823F,2 no
C $8241,2 yes, it's what would be the 4th sprite so reset blitzen sprite to 0
C $8243,2 did we set the paper(1-7) or ink(1-7) there flag at $81e2?
C $8245,2 no
N $8247 yes, so blitzen needs to turn around
C $8247,2 $be=1st blitzen graphic in graphic lookup table
C $8249,2 5 blitzen graphics
C $824B,3 create mirror image of both graphic and attribute data OR graphic data only
C $824E,1 next graphic
C $8252,2 flip bit 2, change blitzen direction (opposite to what it was)
C $8254,2 set  bit 4, direction has just changed
C $8257,1 d=0
C $825A,2 is blitzen travelling left?
C $825C,2 yes
N $825E no, blitzen travelling right
C $825E,1 column=column+1
C $8260,2 blitzen gone off right of screen?
C $8262,2 yes
C $8266,1 column=column-1
C $8268,2 blitzen gone off left of screen?
C $826A,2 no
C $826C,2 set blitzen inactive
C $826E,2 set ray gun not firing
C $8277,4 is dan hypnotised?
C $827B,2 yes
C $827D,3 level ; 8- this byte=current level
C $8281,2 jump if not on level 8
N $8283 level 8 only
C $8283,4 does dan have the keep blitzen away ability? (carrying the mike)
C $8287,2 yes
C $8289,3 counter
C $828E,2 will jump unless counter=0 or $80
N $8292 levels 1-7
C $8292,3 counter
C $8296,2 do not start blitzen UNLESS counter=0
N $8298 initialise blitzen
C $8298,3 dan row
C $829B,1 blitzen start row=current dan row+1
C $829C,4 is dan column at least 16?
C $82A0,2 yes, so start blitzen from left
N $82A2 no, column<16 so start blitzen from right start blitzen from right
C $82A2,2 column=31
C $82A4,3 search for an attribute location clear of ink
C $82A7,2 jump if we didn't find one
N $82A9 we found one, so set blitzen active
C $82A9,3 screen number
C $82AC,3 blitzen room
C $82AF,1 column=32
C $82B0,2 blitzen active (from right of screen)
C $82B2,2 is blitzen travelling right?
C $82B4,2 yes, so turn blitzen around
N $82B6 no, blitzen travelling left
N $82B8 start blitzen from left
C $82B8,1 column=0
C $82B9,3 search for an attribute location clear of ink
C $82BC,2 jump if we didn't find one
N $82BE we found one, so set blitzen active
C $82BE,3 screen number
C $82C1,3 blitzen room
C $82C4,2 column=$fd
C $82C6,2 blitzen active (from left of screen)
C $82C8,2 is blitzen travelling left?
C $82CA,3 yes, so turn blitzen around
N $82CD no, blitzen travelling right
C $82CF,2 column=32
C $82D1,3 h=blitzen row, l=blitzen column
C $82D4,4 e=blitzen attributes, d=blitzen graphic
C $82D9,2 blitzen graphic
C $82DE,4 has blitzen just direction just changed?
C $82E2,2 no
N $82E4 yes, the direction just changed
C $82E4,4 clear direction has just changed flag
C $82E8,1 exit
C $82E9,4 is blitzen travelling left?
C $82ED,2 yes
N $82EF no, travelling right
N $82F3 blitzen attributes
C $82F3,2 bright+yellow ink
C $82F5,3 clear trailing attribute square if required
C $82F8,1 next row
C $82F9,2 bright+magenta ink
C $82FB,3 clear trailing attribute square if required
C $82FE,1 next row
C $82FF,2 bright+blue ink
C $8301,3 clear trailing attribute square if required
C $8305,3 h=blitzen row, l=blitzen column
C $8308,2 graphic
C $830D,3 counter
C $8310,1 temporarily store counter in 'b' register
C $8311,2 bits 0,1,2 this will be the paper colour, ink value will be 0 (black)
C $8315,2 if value was 0 (black) then make it 7 (white)
C $8318,1 multiply by 8 to get the paper colur
C $831A,2 set bright ON
C $831C,3 blitzen ray gun firing attribute
C $8323,1 point hl to the middle attribute location
C $8325,1 restore the counter value
C $8329,1 multiply by 8
C $832C,3 start of blitzen ray gun firing graphics
C $832F,1 hl now points to correct graphic
C $8332,3 blitzen ray gun shot length
C $8335,2 is it an outbound shot?
C $8337,2 yes
N $8339 no it's an inbound shot
C $8339,1 shot length=shot length-1
C $833A,2 jump if length>0
C $833C,3 shot has ended so clear it
C $8340,4 stop firing the ray gun
C $8346,1 shot length=shot length+1
C $8349,2 jump if length<14
C $834B,4 set ray gun shot type to inbound
C $8350,3 blitzen ray gun shot length
C $8355,2 blitzen travelling left?
C $8357,2 yes
C $8359,3 draw the ray gun firing
C $835C,1 next attribute location (to left)
C $8360,2 jump if crossed screen boundary onto next attribute line
C $8366,3 draw the ray gun firing
C $8369,1 next attribute location (to right)
C $836F,2 jump if crossed screen boundary onto previous attribute line
C $8373,2 is the shot an outbound shot?
C $8375,2 no, shot was inbound so clear it
N $8377 yes, shot is outbound so check if we hit anything
C $8377,1 get the attribute
C $8378,2 mask the ink
C $837A,1 exit if shot didn't hit anything
C $837B,1 get the attribute again
C $837C,2 is bright set? (hit dan or enemy)
C $837E,2 yes
C $8380,4 set ray gun shot type to inbound
C $8385,2 hit dan?
C $8387,1 exit if yes
N $8388 no, it's an enemy
C $8388,3 set enemy death
C $838B,3 blitzen ray gun shot length
C $838E,4 set ray gun shot type to inbound
C $8394,3 start of character set (space)
C $8398,3 clear blitzen ray gun firing attribute
N $839B draw the ray gun firing
C $839C,1 anything there?
C $839D,2 no, so draw the gun firing
N $839F yes
C $83A1,2 is it the current colour of the ray gun zapping?
C $83A3,2 yes, so draw the gun firing
N $83A5 no
C $83A6,2 ink based object there (dan, enemy)?
C $83A8,1 no, so exit. (a hit has been made so cease firing)
C $83AC,3 blitzen ray gun firing attribute
C $83AF,1 hl points to attribute address
C $83B8,1 hl now points to screen address
C $83BF,2 copy the current ray gun firing graphic to screen
c $83C5 search for an attribute location clear of ink
C $83C7,3 calculate attribute address
C $83CD,2 check 3 attribute locations vertically
C $83CF,1 get attribute
C $83D0,2 ink based object there?
C $83D2,2 no
C $83D4,1 next attribute location down
C $83D5,2 check again
C $83D7,1 unnecessary instruction (djnz does not affect flags)
c $83DB
C $83DB,3 graphic lookup table
C $83DE,3 get address from lookup table
C $83EC,3 calculate attribute address
C $83F7,2 set column invalid (write will be to ROM)
C $83F9,3 display character
c $8402
C $8407,3 display character
b $8415 blitzen ray gun firing attribute
B $8415,1,1
b $8416 item table
B $8416,8,8
b $841E graphic removal table
B $841E,8,8
c $8426
C $8426,3 graphic removal table
C $8429,2 8 items
C $842E,1 anything to remove?
C $842F,2 no
N $8432 calculate correct column
C $8432,2 a-b = correct item 0-7
C $8435,1 multiply by 2
C $8436,2 and add 16 to get correct column
C $8439,2 row 20
C $843B,3 b=columns to clear, c=rows to clear
C $843E,3 gradual pixel clear
C $8446,3 hl=incoming item
C $844A,1 anything there?
C $844B,1 no, so exit
C $844C,2 set incoming item to nothing again
C $844E,1 the item
C $8451,2 jump if not food item
N $8453 it's a food item
C $8455,3 initialise tune
C $845A,3 energy=energy+48
C $845F,3 is dan carrying the food mixer?
C $8462,1 yes
C $8463,2 +25 onto score
C $846A,2 jump if not fuel
C $846C,3 is dan already carrying fuel?
C $846F,2 no
C $8471,4 got the stop fuel theft attribute?
C $8475,2 yes, so dan can carry only one fuel
C $8477,3 graphic table
C $847A,3 item table
C $8480,1 is there an item in this spot?
C $8481,2 no, so we can place it
C $8487,1 exit if no space for item
C $8488,1 place the item
C $848A,2 clear graphic removal
C $848C,2 a-b = correct item 0-7
C $848F,1 multiply by 2
C $8490,2 and add 16 to get correct column
C $8493,2 row 20
C $8496,3 max. lines attributes
C $8499,1 temp store max. lines attributes
C $849A,2 set max. lines attributes=21
C $849C,1 graphic to draw
C $849E,3 display graphic
C $84A2,1 restore max. lines attributes
C $84A6,2 jump if not fuel, record, bomb or goggles (items 64-67)
C $84A8,2 +50 onto score
C $84B0,3 set up tune
C $84B5,2 +150 onto score
C $84BC,3 initialise tune
C $84C5,3 get address from lookup table
C $84CD,1 jump to item routine
b $84D2 jump table when dan collects an item
D $84D2 856d=RET (do nothing)
W $84D2,2,2 fuel
W $84D4,2,2 record
W $84D6,2,2 bomb
W $84D8,2,2 goggles    ; immune from blitzen
W $84DA,2,2 mike       ; keeps blitzen away (level 8 only)
W $84DC,2,2 camera     ; opens secret passages
W $84DE,2,2 time bomb
W $84E0,2,2 fan        ; score + energy boost when hit by enemy, instead of losing energy
W $84E2,2,2 mandolin   ; opens secret passages
W $84E4,2,2 scissors
W $84E6,2,2 snips      ; walk straight through doors
W $84E8,2,2 pump       ; opens secret passages
W $84EA,2,2 engine     ; stops fuel theft, removes all fuel from inventory bar 1
W $84EC,2,2 dumbbell   ; double height jumps
W $84EE,2,2 jack       ; opens secret passages
W $84F0,2,2 boots      ; walk on water
W $84F2,2,2 crossbow   ; shoot enemies
W $84F4,2,2 feather    ; opens secret passages
W $84F6,2,2 corkscrew
W $84F8,2,2 gem        ; can't walk up steps
W $84FA,2,2 mask       ; opens secret passages
W $84FC,2,2 snake
W $84FE,2,2 skull      ; immunity (but not from blitzen)
W $8500,2,2 shell      ; opens secret passages
W $8502,2,2 aqualung
W $8504,2,2 torch      ; stops item theft
W $8506,2,2 drill      ; opens secret passages
W $8508,2,2 food mixer
c $850A immunity
C $850A,2 5bfa=5bfa+$04, 5bfb(timer)=$ff (immunity)
C $850C,4 5be8=5be8+$20 (set clear dan buffer/redraw dan flag)
c $8512 walk straight through doors
C $8512,2 5bfa=5bfa+$40
c $8516 score + energy boost when hit by enemy
C $8516,2 5bfa=5bfa+$80, 5bfb(timer)=$ff
c $851A
C $851A,4 5be8=5be8+$04
c $851F stops fuel theft
C $851F,4 5be8=5be8+$02
C $8523,2 fuel
C $8525,3 item table
C $8528,3 b=check all 8 items, c=counter
C $852B,1 is dan carrying fuel?
C $852C,2 no
C $852E,1 yes, so increase counter
C $852F,1 check next item
C $8530,2 repeat for all items
C $8533,1 exit if dan wasn't carrying any fuel
C $8534,1 exit if carrying just one fuel
C $8535,3 remove all fuel carried
C $8538,1 apart from one
c $853C can't walk up steps
C $853C,2 5bfa=5bfa+$08, 5bfb(timer)=$ff
c $8540 shoot enemies
C $8540,2 5bfa=5bfa+$10, 5bfb(timer)=$ff
c $8544 keeps blitzen away
C $8544,2 5bfa=5bfa+$20, 5bfb(timer)=$ff
c $8548 opens secret passages
C $8548,4 5be8=5be8+$08
C $854D,3 ix+1 pointing to $5be8
C $8550,2 set bit 5 (clear dan buffer/redraw dan flag)
N $8552 set bit 7 (immune from blitzen)
C $8552,2 reset bit 6 of 5be8 (no longer hypnotised)
C $8554,3 5be8
C $8557,4 5bef time hypnotised by blitzen
c $855C double height jumps
C $855C,2 5bfa=5bfa+2, 5bfb(timer)=$ff
c $8560 stops item theft
C $8560,2 5bfa=5bfa+1, 5bfb(timer)=$ff
C $8566,3 5bfa
C $8569,4 5bfb timer
c $856E clear dan buffer/redraw dan
C $856E,4 cancel 'clear dan buffer/redraw dan' flag
C $857D,2 clear dan background/sprite buffer 416 bytes
N $8582 only go invisible if dan has been hit (1 pass) OR immunity special ability is set
C $8582,4 been hit?
C $8586,2 yes, so we will draw dan outline
C $8588,4 does dan have immunity?
C $858C,2 no
N $858E draw dan outline
C $858E,3 dan invisible head
C $8597,3 dan invisible legs 1
C $85A0,3 dan invisible body
C $85A3,4 dan hypnotised?
C $85A7,2 no
C $85A9,3 invisible body/ arm outstretched
c $85B1 draw dan normal
C $85B1,3 normal dan head
C $85B4,4 immune from blitzen set? (wearing the goggles)
C $85B8,2 no
C $85BA,3 normal dan, wearing goggles
C $85C3,4 dan hypnotised?
C $85C7,2 no
C $85C9,3 dan normal body/arm pointing forward
C $85CF,3 dan legs hypnotised 1
C $85D4,3 dan normal body
C $85DA,3 dan normal legs 1
C $85E3,2 intial number of pixels to shift right
C $85E9,3 b=columns, c=rows
C $85EC,3 shift pixels to right
C $85F7,1 now shift 4 and 2 pixels to right
C $85FA,4 dan direction
C $85FE,3 create mirror image of dan if facing left
c $8602
c $860D
c $8616
b $862A Dan sprites, each size 2*8
D $862A dan head normal
N $863A dan normal wearing goggles
N $864A dan normal upper body
N $865A dan upper body
N $866A dan upper body
N $867A dan upper body
N $868A dan legs normal 1
N $869A dan legs normal 2
N $86AA dan legs normal 3
N $86BA dan legs normal 4
N $86CA dan normal body/arm pointing forward
N $86DA dan legs hypnotised 1
N $86EA dan legs hypnotised 2
N $86FA dan legs hypnotised 3
N $870A dan legs hypnotised 4
N $871A invisible body/ arm outstretched
N $872A dan invisible head
N $873A dan invisible body
N $874A dan invisible legs 1
N $875A dan invisible legs 2
N $876A dan invisible legs 3
N $877A dan invisible legs 4
b $878A universal screen data
D $878A template graphics for use on any screen
D $878A $00
B $878A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $878E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8792,1,1 eod marker
N $8793 $01
B $8793,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8797,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $879B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $879F,1,1 eod marker
N $87A0 $02
B $87A0,2,2 universal screen data $9e
B $87A2,2,2 coordinate lookup value, graphic
B $87A4,2,2 coordinate lookup value, graphic
B $87A6,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $87A9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87AD,2,2 coordinate lookup value, graphic
B $87AF,1,1 eod marker
N $87B0 $03
B $87B0,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $87B4,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $87B8,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $87BC,1,1 eod marker
N $87BD $04
B $87BD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87C1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87C5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87C9,1,1 eod marker
N $87CA $05
B $87CA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87CE,1,1 eod marker
N $87CF $06
B $87CF,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $87D2,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87D6,2,2 coordinate lookup value, graphic
B $87D8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87DC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87E0,1,1 eod marker
N $87E1 $07
B $87E1,2,2 coordinate lookup value, graphic
B $87E3,2,2 coordinate lookup value, graphic
B $87E5,2,2 coordinate lookup value, graphic
B $87E7,2,2 coordinate lookup value, graphic
B $87E9,2,2 coordinate lookup value, graphic
B $87EB,2,2 coordinate lookup value, graphic
B $87ED,2,2 coordinate lookup value, graphic
B $87EF,2,2 coordinate lookup value, graphic
B $87F1,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $87F5,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $87F9,1,1 eod marker
N $87FA $08
B $87FA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $87FE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8802,1,1 eod marker
N $8803 $09
B $8803,2,2 coordinate lookup value, graphic
B $8805,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8809,2,2 coordinate lookup value, graphic
B $880B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $880F,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8812,2,2 coordinate lookup value, graphic
B $8814,2,2 coordinate lookup value, graphic
B $8816,1,1 eod marker
N $8817 $0a
B $8817,2,2 coordinate lookup value, graphic
B $8819,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $881D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8821,1,1 eod marker
N $8822 $0b
B $8822,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8826,2,2 coordinate lookup value, graphic
B $8828,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $882C,1,1 eod marker
N $882D $0c
B $882D,2,2 coordinate lookup value, graphic
B $882F,2,2 coordinate lookup value, graphic
B $8831,2,2 coordinate lookup value, graphic
B $8833,1,1 eod marker
N $8834 $0d
B $8834,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8837,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $883A,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $883D,2,2 coordinate lookup value, graphic
B $883F,1,1 eod marker
N $8840 $0e
B $8840,2,2 universal screen data $05
B $8842,2,2 coordinate lookup value, graphic
B $8844,2,2 coordinate lookup value, graphic
B $8846,2,2 coordinate lookup value, graphic
B $8848,1,1 eod marker
N $8849 $0f
B $8849,2,2 coordinate lookup value, graphic
B $884B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $884F,2,2 coordinate lookup value, graphic
B $8851,2,2 coordinate lookup value, graphic
B $8853,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8856,2,2 coordinate lookup value, graphic
B $8858,1,1 eod marker
N $8859 $10
B $8859,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $885D,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8860,1,1 eod marker
N $8861 $11
B $8861,2,2 coordinate lookup value, graphic
B $8863,2,2 coordinate lookup value, graphic
B $8865,2,2 universal screen data $0a
B $8867,1,1 eod marker
N $8868 $12
B $8868,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $886B,2,2 coordinate lookup value, graphic
B $886D,2,2 coordinate lookup value, graphic
B $886F,2,2 universal screen data $0b
B $8871,1,1 eod marker
N $8872 $13
B $8872,2,2 universal screen data $0d
B $8874,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8877,1,1 eod marker
N $8878 $14
B $8878,2,2 coordinate lookup value, graphic
B $887A,2,2 coordinate lookup value, graphic
B $887C,2,2 coordinate lookup value, graphic
B $887E,2,2 coordinate lookup value, graphic
B $8880,2,2 coordinate lookup value, graphic
B $8882,1,1 eod marker
N $8883 $15
B $8883,2,2 coordinate lookup value, graphic
B $8885,2,2 coordinate lookup value, graphic
B $8887,2,2 coordinate lookup value, graphic
B $8889,1,1 eod marker
N $888A $16
B $888A,2,2 coordinate lookup value, graphic
B $888C,2,2 coordinate lookup value, graphic
B $888E,2,2 coordinate lookup value, graphic
B $8890,1,1 eod marker
N $8891 $17
B $8891,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8894,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8898,2,2 coordinate lookup value, graphic
B $889A,2,2 coordinate lookup value, graphic
B $889C,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $889F,2,2 coordinate lookup value, graphic
B $88A1,2,2 coordinate lookup value, graphic
B $88A3,2,2 coordinate lookup value, graphic
B $88A5,2,2 coordinate lookup value, graphic
B $88A7,1,1 eod marker
N $88A8 $18
B $88A8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $88AC,2,2 coordinate lookup value, graphic
B $88AE,2,2 coordinate lookup value, graphic
B $88B0,2,2 coordinate lookup value, graphic
B $88B0,2,2 universal screen data $42
B $88B2,2,2 coordinate lookup value, graphic
B $88B2,1,1 eod marker
B $88B4,2,2 coordinate lookup value, graphic
B $88B6,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $88B9,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $88BC,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $88BF,2,2 coordinate lookup value, graphic
B $88C1,2,2 coordinate lookup value, graphic
B $88C3,2,2 coordinate lookup value, graphic
B $88C5,1,1 eod marker
N $88C6 $19
B $88C6,2,2 universal screen data $1c
B $88C8,2,2 universal screen data $1d
B $88CA,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88CE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $88D2,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88D6,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88DA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $88DE,1,1 eod marker
N $88DF $1a
B $88DF,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88E3,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88E7,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88EB,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88EF,1,1 eod marker
N $88F0 $1b
B $88F0,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88F4,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88F8,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $88FC,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8900,1,1 eod marker
N $8901 $1c
B $8901,2,2 universal screen data $58
B $8903,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8907,1,1 eod marker
N $8908 $1d
B $8908,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $890C,2,2 universal screen data $5c
B $890E,2,2 universal screen data $5b
B $8910,1,1 eod marker
N $8911 $1e
B $8911,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8915,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8919,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $891D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8921,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8925,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8929,2,2 coordinate lookup value, graphic
B $892B,2,2 coordinate lookup value, graphic
B $892D,1,1 eod marker
N $892E $1f
B $892E,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8932,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8936,2,2 coordinate lookup value, graphic
B $8938,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $893C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8940,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8944,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8948,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $894C,2,2 coordinate lookup value, graphic
B $894E,1,1 eod marker
N $894F $20
B $894F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8953,1,1 eod marker
N $8954 $21
B $8954,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8958,1,1 eod marker
N $8959 $22
B $8959,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $895D,2,2 universal screen data $2d
B $895F,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8963,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8967,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $896B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $896F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8973,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8977,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $897B,2,2 universal screen data $27
B $897D,1,1 eod marker
N $897E $23
B $897E,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8982,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8986,2,2 coordinate lookup value, graphic
B $8988,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $898C,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8990,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8994,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8998,1,1 eod marker
N $8999 $24
B $8999,2,2 universal screen data $23
B $899B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $899F,2,2 coordinate lookup value, graphic
B $89A1,1,1 eod marker
N $89A2 $25
B $89A2,2,2 universal screen data $2b
B $89A4,2,2 coordinate lookup value, graphic
B $89A6,2,2 coordinate lookup value, graphic
B $89A8,2,2 universal screen data $2f
B $89AA,1,1 eod marker
N $89AB $26
B $89AB,2,2 universal screen data $23
B $89AD,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $89B0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $89B4,1,1 eod marker
N $89B5 $27
B $89B5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $89B9,1,1 eod marker
N $89BA $28
B $89BA,2,2 universal screen data $29
B $89BC,2,2 universal screen data $00
B $89BE,2,2 coordinate lookup value, graphic
B $89C0,2,2 coordinate lookup value, graphic
B $89C2,2,2 coordinate lookup value, graphic
B $89C4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $89C8,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $89CB,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $89CE,1,1 eod marker
N $89CF $29
B $89CF,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $89D3,1,1 eod marker
N $89D4 $2a
B $89D4,2,2 universal screen data $2b
B $89D6,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $89D9,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $89DC,1,1 eod marker
N $89DD $2b
B $89DD,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $89E0,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $89E3,1,1 eod marker
N $89E4 $2c
B $89E4,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $89E8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $89EC,2,2 universal screen data $39
B $89EE,2,2 coordinate lookup value, graphic
B $89F0,2,2 coordinate lookup value, graphic
B $89F2,2,2 coordinate lookup value, graphic
B $89F4,1,1 eod marker
N $89F5 $2d
B $89F5,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $89F9,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $89FD,1,1 eod marker
N $89FE $2e
B $89FE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A02,2,2 universal screen data $2d
B $8A04,2,2 universal screen data $10
B $8A06,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A0A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A0E,1,1 eod marker
N $8A0F $2f
B $8A0F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A13,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8A16,1,1 eod marker
N $8A17 $30
B $8A17,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A1B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A1F,2,2 universal screen data $35
B $8A21,1,1 eod marker
N $8A22 $31
B $8A22,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A26,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8A2A,1,1 eod marker
N $8A2B $32
B $8A2B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A2F,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8A32,1,1 eod marker
N $8A33 $33
B $8A33,2,2 coordinate lookup value, graphic
B $8A35,2,2 coordinate lookup value, graphic
B $8A37,2,2 coordinate lookup value, graphic
B $8A39,2,2 coordinate lookup value, graphic
B $8A3B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A3F,2,2 universal screen data $35
B $8A41,1,1 eod marker
N $8A42 $34
B $8A42,2,2 universal screen data $33
B $8A44,2,2 coordinate lookup value, graphic
B $8A46,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A4A,2,2 coordinate lookup value, graphic
B $8A4C,1,1 eod marker
N $8A4D $35
B $8A4D,2,2 universal screen data $37
B $8A4F,2,2 universal screen data $36
B $8A51,1,1 eod marker
N $8A52 $36
B $8A52,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8A56,1,1 eod marker
N $8A57 $37
B $8A57,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8A5B,1,1 eod marker
N $8A5C $38
B $8A5C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A60,2,2 coordinate lookup value, graphic
B $8A62,1,1 eod marker
N $8A63 $39
B $8A63,2,2 coordinate lookup value, graphic
B $8A65,2,2 coordinate lookup value, graphic
B $8A67,1,1 eod marker
N $8A68 $3a
B $8A68,2,2 universal screen data $2a
B $8A6A,2,2 universal screen data $38
B $8A6C,2,2 coordinate lookup value, graphic
B $8A6E,1,1 eod marker
N $8A6F $3b
B $8A6F,2,2 universal screen data $34
B $8A71,2,2 universal screen data $32
B $8A73,2,2 coordinate lookup value, graphic
B $8A75,1,1 eod marker
N $8A76 $3c
B $8A76,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A7A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A7E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A82,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A86,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A8A,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8A8E,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8A92,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A96,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8A9A,2,2 universal screen data $3d
B $8A9C,1,1 eod marker
N $8A9D $3d
B $8A9D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AA1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AA5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AA9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AAD,1,1 eod marker
N $8AAE $3e
B $8AAE,2,2 universal screen data $43
N $8AB3 $3f
B $8AB3,2,2 universal screen data $44
B $8AB5,2,2 universal screen data $45
B $8AB7,1,1 eod marker
N $8AB8 $40
B $8AB8,2,2 universal screen data $46
B $8ABA,2,2 universal screen data $47
B $8ABC,1,1 eod marker
N $8ABD $41
B $8ABD,2,2 universal screen data $48
B $8ABF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AC3,1,1 eod marker
N $8AC4 $42
B $8AC4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AC8,1,1 eod marker
N $8AC9 $43
B $8AC9,2,2 universal screen data $41
B $8ACB,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8ACF,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8AD3,1,1 eod marker
N $8AD4 $44
B $8AD4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AD8,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8ADC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AE0,1,1 eod marker
N $8AE1 $45
B $8AE1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AE5,1,1 eod marker
N $8AE6 $46
B $8AE6,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8AEA,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8AEE,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8AF2,1,1 eod marker
N $8AF3 $47
B $8AF3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AF7,1,1 eod marker
N $8AF8 $48
B $8AF8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8AFC,1,1 eod marker
N $8AFD $49
B $8AFD,2,2 universal screen data $48
B $8AFF,2,2 universal screen data $42
B $8B01,1,1 eod marker
N $8B02 $4a
B $8B02,2,2 universal screen data $49
B $8B04,2,2 universal screen data $44
B $8B06,1,1 eod marker
N $8B07 $4b
B $8B07,2,2 universal screen data $49
B $8B09,2,2 universal screen data $46
B $8B0B,1,1 eod marker
N $8B0C $4c
B $8B0C,2,2 coordinate lookup value, graphic
B $8B0E,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8B11,2,2 coordinate lookup value, graphic
B $8B13,2,2 coordinate lookup value, graphic
B $8B15,2,2 coordinate lookup value, graphic
B $8B17,1,1 eod marker
N $8B18 $4d
B $8B18,2,2 coordinate lookup value, graphic
B $8B1A,2,2 coordinate lookup value, graphic
B $8B1C,2,2 coordinate lookup value, graphic
B $8B1E,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
N $8B22 $4e
B $8B22,2,2 universal screen data $43
B $8B24,2,2 coordinate lookup value, graphic
B $8B26,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8B29,2,2 coordinate lookup value, graphic
B $8B2B,2,2 coordinate lookup value, graphic
B $8B2D,1,1 eod marker
N $8B2E $4f
B $8B2E,2,2 universal screen data $29
B $8B30,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8B33,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B37,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B3B,2,2 coordinate lookup value, graphic
B $8B3D,1,1 eod marker
N $8B3E $50
B $8B3E,2,2 universal screen data $29
B $8B40,2,2 coordinate lookup value, graphic
B $8B42,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B46,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8B49,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B4D,1,1 eod marker
N $8B4E $51
B $8B4E,2,2 coordinate lookup value, graphic
B $8B50,2,2 coordinate lookup value, graphic
B $8B52,2,2 coordinate lookup value, graphic
B $8B54,1,1 eod marker
N $8B55 $52
B $8B55,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B59,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B5D,1,1 eod marker
N $8B5E $53
B $8B5E,2,2 coordinate lookup value, graphic
B $8B60,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8B63,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8B66,1,1 eod marker
N $8B67 $54
B $8B67,2,2 universal screen data $08
B $8B69,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B6D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B71,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B75,1,1 eod marker
N $8B76 $55
B $8B76,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B7A,2,2 coordinate lookup value, graphic
B $8B7C,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8B80,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8B84,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B88,1,1 eod marker
N $8B89 $56
B $8B89,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8B8D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8B91,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B95,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8B99,2,2 coordinate lookup value, graphic
B $8B9B,1,1 eod marker
N $8B9C $57
B $8B9C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BA0,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8BA4,2,2 coordinate lookup value, graphic
B $8BA6,2,2 coordinate lookup value, graphic
B $8BA8,1,1 eod marker
N $8BA9 $58
B $8BA9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BAD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BB1,1,1 eod marker
N $8BB2 $59
B $8BB2,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BB6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BBA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BBE,2,2 universal screen data $5c
B $8BC0,2,2 universal screen data $5e
B $8BC2,1,1 eod marker
N $8BC3 $5a
B $8BC3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BC7,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BCB,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BCF,2,2 universal screen data $5b
B $8BD1,2,2 universal screen data $5d
B $8BD3,1,1 eod marker
N $8BD4 $5b
B $8BD4,2,2 coordinate lookup value, graphic
B $8BD6,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8BDA,2,2 coordinate lookup value, graphic
B $8BDC,1,1 eod marker
N $8BDD $5c
B $8BDD,2,2 coordinate lookup value, graphic
B $8BDF,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8BE3,2,2 coordinate lookup value, graphic
B $8BE5,1,1 eod marker
N $8BE6 $5d
B $8BE6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8BEA,2,2 coordinate lookup value, graphic
B $8BEC,1,1 eod marker
N $8BED $5e
B $8BED,2,2 coordinate lookup value, graphic
B $8BEF,2,2 coordinate lookup value, graphic
B $8BF1,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8BF4,1,1 eod marker
N $8BF5 $5f
B $8BF5,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8BF9,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8BFC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C00,2,2 coordinate lookup value, graphic
B $8C02,1,1 eod marker
N $8C03 $60
B $8C03,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C07,2,2 coordinate lookup value, graphic
B $8C09,2,2 coordinate lookup value, graphic
B $8C0B,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C0F,2,2 coordinate lookup value, graphic
B $8C11,1,1 eod marker
N $8C12 $61
B $8C12,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C16,2,2 coordinate lookup value, graphic
B $8C18,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C1C,2,2 coordinate lookup value, graphic
B $8C1E,1,1 eod marker
N $8C1F $62
B $8C1F,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C23,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8C26,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C2A,2,2 coordinate lookup value, graphic
B $8C2C,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C30,1,1 eod marker
N $8C31 $63
B $8C31,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C35,2,2 coordinate lookup value, graphic
B $8C37,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C3B,1,1 eod marker
N $8C3C $64
B $8C3C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C40,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8C43,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C47,2,2 coordinate lookup value, graphic
B $8C49,1,1 eod marker
N $8C4A $65
B $8C4A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C4E,2,2 coordinate lookup value, graphic
B $8C50,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C54,1,1 eod marker
N $8C55 $66
B $8C55,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C59,2,2 coordinate lookup value, graphic
B $8C5B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C5F,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C63,2,2 coordinate lookup value, graphic
B $8C65,1,1 eod marker
N $8C66 $67
B $8C66,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C6A,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C6E,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8C71,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C75,2,2 coordinate lookup value, graphic
B $8C77,1,1 eod marker
N $8C78 $68
B $8C78,2,2 universal screen data $86
B $8C7A,2,2 universal screen data $1d
B $8C7C,1,1 eod marker
N $8C7D $69
B $8C7D,2,2 universal screen data $87
B $8C7F,2,2 universal screen data $20
B $8C81,1,1 eod marker
N $8C82 $6a
B $8C82,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C86,2,2 coordinate lookup value, graphic
B $8C88,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C8C,2,2 coordinate lookup value, graphic
B $8C8E,2,2 coordinate lookup value, graphic
B $8C90,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C94,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8C98,1,1 eod marker
N $8C99 $6b
B $8C99,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8C9D,2,2 coordinate lookup value, graphic
B $8C9F,1,1 eod marker
N $8CA0 $6c
B $8CA0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CA4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CA8,1,1 eod marker
N $8CA9 $6d
B $8CA9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CAD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CB1,1,1 eod marker
N $8CB2 $6e
B $8CB2,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8CB6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CBA,2,2 coordinate lookup value, graphic
B $8CBC,1,1 eod marker
N $8CBD $6f
B $8CBD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CC1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CC5,1,1 eod marker
N $8CC6 $70
B $8CC6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CCA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CCE,1,1 eod marker
N $8CCF $71
B $8CCF,2,2 universal screen data $20
B $8CD1,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8CD5,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8CD9,1,1 eod marker
N $8CDA $72
B $8CDA,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8CDE,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8CE2,1,1 eod marker
N $8CE3 $73
B $8CE3,2,2 universal screen data $62
B $8CE5,2,2 coordinate lookup value, graphic
B $8CE7,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8CEA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CEE,1,1 eod marker
N $8CEF $74
B $8CEF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CF3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8CF7,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8CFB,1,1 eod marker
N $8CFC $75
B $8CFC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D00,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D04,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D08,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D0C,2,2 coordinate lookup value, graphic
B $8D0E,1,1 eod marker
N $8D0F $76
B $8D0F,2,2 universal screen data $69
B $8D11,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D15,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8D18,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D1C,1,1 eod marker
N $8D1D $77
B $8D1D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D21,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8D24,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D28,2,2 coordinate lookup value, graphic
B $8D2A,1,1 eod marker
N $8D2B $78
B $8D2B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D2F,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D33,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D37,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D3B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D3F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D43,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D47,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D4B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D4F,1,1 eod marker
N $8D50 $79
B $8D50,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D54,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D58,2,2 coordinate lookup value, graphic
B $8D5A,1,1 eod marker
N $8D5B $7a
B $8D5B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D5F,2,2 universal screen data $79
B $8D61,2,2 coordinate lookup value, graphic
B $8D63,1,1 eod marker
N $8D64 $7b
B $8D64,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D68,2,2 universal screen data $79
B $8D6A,2,2 coordinate lookup value, graphic
B $8D6C,1,1 eod marker
N $8D6D $7c
B $8D6D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D71,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D75,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D79,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D7D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D81,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D85,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8D89,2,2 coordinate lookup value, graphic
B $8D8B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D8F,1,1 eod marker
N $8D90 $7d
B $8D90,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D94,2,2 universal screen data $79
B $8D96,2,2 coordinate lookup value, graphic
B $8D98,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8D9B,1,1 eod marker
B $8D9C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DA0,1,1 eod marker
N $8DA1 $7e
B $8DA1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DA5,2,2 universal screen data $79
B $8DA7,2,2 coordinate lookup value, graphic
B $8DA9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DAD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DB1,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8DB4,1,1 eod marker
N $8DB5 $7f
B $8DB5,2,2 universal screen data $80
B $8DB7,2,2 universal screen data $81
B $8DB9,2,2 universal screen data $21
N $8DBC $80
B $8DBC,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8DC0,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8DC4,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8DC7,2,2 coordinate lookup value, graphic
B $8DC9,1,1 eod marker
N $8DCA $81
B $8DCA,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8DCE,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8DD1,2,2 coordinate lookup value, graphic
B $8DD3,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8DD7,1,1 eod marker
N $8DD8 $82
B $8DD8,2,2 universal screen data $81
B $8DDA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DDE,1,1 eod marker
N $8DDF $83
B $8DDF,2,2 universal screen data $80
B $8DE1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DE5,1,1 eod marker
N $8DE6 $84
B $8DE6,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8DEA,2,2 coordinate lookup value, graphic
B $8DEC,2,2 universal screen data $7c
B $8DEE,1,1 eod marker
N $8DEF $85
B $8DEF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DF3,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8DF7,2,2 universal screen data $7c
B $8DF9,1,1 eod marker
N $8DFA $86
B $8DFA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8DFE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E02,1,1 eod marker
N $8E03 $87
B $8E03,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E07,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E0B,1,1 eod marker
N $8E0C $88
B $8E0C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E10,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8E14,2,2 coordinate lookup value, graphic
B $8E16,2,2 coordinate lookup value, graphic
B $8E18,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8E1C,2,2 coordinate lookup value, graphic
B $8E1E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E20,2,2 coordinate lookup value, graphic
B $8E22,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8E26,1,1 eod marker
N $8E29 $89
B $8E29,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E2D,1,1 eod marker
N $8E2E $8a
B $8E2E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E32,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8E36,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E39,1,1 eod marker
N $8E3A $8b
B $8E3A,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E3D,2,2 coordinate lookup value, graphic
B $8E3F,1,1 eod marker
N $8E40 $8c
B $8E40,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E43,2,2 coordinate lookup value, graphic
B $8E45,1,1 eod marker
N $8E46 $8d
B $8E46,2,2 coordinate lookup value, graphic
B $8E48,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E4B,1,1 eod marker
N $8E4C $8e
B $8E4C,2,2 coordinate lookup value, graphic
B $8E4E,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E51,2,2 coordinate lookup value, graphic
B $8E53,1,1 eod marker
N $8E54 $8f
B $8E54,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E57,2,2 coordinate lookup value, graphic
B $8E59,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E5C,1,1 eod marker
N $8E5D $90
B $8E5D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E61,2,2 coordinate lookup value, graphic
B $8E63,2,2 coordinate lookup value, graphic
B $8E65,1,1 eod marker
N $8E66 $91
B $8E66,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E6A,2,2 coordinate lookup value, graphic
B $8E6C,2,2 coordinate lookup value, graphic
B $8E6E,1,1 eod marker
N $8E6F $92
B $8E6F,2,2 coordinate lookup value, graphic
B $8E71,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E74,2,2 coordinate lookup value, graphic
B $8E76,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E79,1,1 eod marker
N $8E7A $93
B $8E7A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E7E,2,2 coordinate lookup value, graphic
B $8E80,2,2 coordinate lookup value, graphic
B $8E82,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8E86,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E88,2,2 coordinate lookup value, graphic
N $8E8D $94
B $8E8D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E91,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8E95,2,2 universal screen data $68
B $8E97,2,2 universal screen data $6c
B $8E99,1,1 eod marker
B $8E9A,1,1 eod marker
N $8E9A $95
B $8E9A,2,2 coordinate lookup value, graphic
B $8E9C,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8E9F,2,2 coordinate lookup value, graphic
B $8EA1,1,1 eod marker
N $8EA2 $96
B $8EA2,2,2 coordinate lookup value, graphic
B $8EA4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8EA8,2,2 coordinate lookup value, graphic
B $8EAA,2,2 coordinate lookup value, graphic
B $8EAC,2,2 coordinate lookup value, graphic
B $8EAE,1,1 eod marker
N $8EAF $97
B $8EAF,2,2 coordinate lookup value, graphic
B $8EB1,2,2 coordinate lookup value, graphic
B $8EB3,2,2 coordinate lookup value, graphic
B $8EB5,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8EB8,2,2 coordinate lookup value, graphic
B $8EBA,2,2 coordinate lookup value, graphic
B $8EBC,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8EBF,1,1 eod marker
N $8EC0 $98
B $8EC0,2,2 coordinate lookup value, graphic
B $8EC2,2,2 coordinate lookup value, graphic
B $8EC4,2,2 coordinate lookup value, graphic
B $8EC6,2,2 coordinate lookup value, graphic
B $8EC8,2,2 coordinate lookup value, graphic
B $8ECA,2,2 coordinate lookup value, graphic
B $8ECC,2,2 coordinate lookup value, graphic
B $8ECE,2,2 coordinate lookup value, graphic
B $8ED0,1,1 eod marker
N $8ED1 $99
B $8ED1,2,2 coordinate lookup value, graphic
B $8ED3,2,2 coordinate lookup value, graphic
B $8ED5,2,2 coordinate lookup value, graphic
B $8ED7,1,1 eod marker
N $8ED8 $9a
B $8ED8,2,2 universal screen data $0d
B $8EDA,2,2 coordinate lookup value, graphic
B $8EDC,2,2 coordinate lookup value, graphic
B $8EDE,1,1 eod marker
N $8EDF $9b
B $8EDF,2,2 coordinate lookup value, graphic
B $8EE1,2,2 coordinate lookup value, graphic
B $8EE3,2,2 coordinate lookup value, graphic
B $8EE5,2,2 coordinate lookup value, graphic
B $8EE7,1,1 eod marker
N $8EE8 $9c
B $8EE8,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8EEB,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8EEE,2,2 coordinate lookup value, graphic
B $8EF0,2,2 coordinate lookup value, graphic
B $8EF2,2,2 coordinate lookup value, graphic
B $8EF4,2,2 coordinate lookup value, graphic
B $8EF6,1,1 eod marker
N $8EF7 $9d
B $8EF7,2,2 coordinate lookup value, graphic
B $8EF9,2,2 coordinate lookup value, graphic
B $8EFB,2,2 coordinate lookup value, graphic
B $8EFD,2,2 coordinate lookup value, graphic
B $8EFF,2,2 coordinate lookup value, graphic
B $8F01,1,1 eod marker
N $8F02 $9e
B $8F02,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F06,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F0A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F0E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F12,1,1 eod marker
N $8F13 $9f
B $8F13,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F16,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F19,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8F1D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8F21,1,1 eod marker
B $8F21,2,2 universal screen data $02
B $8F23,1,1 eod marker
N $8F24 $a0
B $8F24,2,2 universal screen data $06
B $8F26,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F2A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F2E,1,1 eod marker
N $8F2F $a1
B $8F2F,2,2 universal screen data $a0
B $8F31,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8F35,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8F39,2,2 coordinate lookup value, graphic
B $8F3B,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F3E,1,1 eod marker
N $8F3F $a2
B $8F3F,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8F43,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8F47,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F4A,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F4D,2,2 coordinate lookup value, graphic
B $8F4F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F53,2,2 universal screen data $01
B $8F55,1,1 eod marker
N $8F56 $a3
B $8F56,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F5A,2,2 coordinate lookup value, graphic
B $8F5C,2,2 coordinate lookup value, graphic
B $8F5E,2,2 coordinate lookup value, graphic
B $8F60,2,2 coordinate lookup value, graphic
B $8F62,1,1 eod marker
N $8F63 $a4
B $8F63,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F66,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $8F69,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F6D,1,1 eod marker
b $8F6E unused bytes
> $8F76 ; specific screen data
> $8F76 ;
> $8F76 ; screen data 1
> $8F76 ;
> $8F76 ; #TABLE(default,centre,:w)
> $8F76 ; { =h Byte(n) | =h value >= $fa }
> $8F76 ; { 1 | $fe=draw horizontally }
> $8F76 ; {   | $fd=draw vertically }
> $8F76 ; {   | $fc=draw mirror image of graphic }
> $8F76 ; {   | $fb=draw normal graphic and mirror image of graphic side by side }
> $8F76 ; {   | $fa=draw universal screen data }
> $8F76 ; { 2 | coordinate lookup value }
> $8F76 ; { 3 | graphic }
> $8F76 ; { 4 | gap+length }
> $8F76 ; {   | bits 0-4=length }
> $8F76 ; {   | bits 5,6,7= gap to leave before drawing again }
> $8F76 ; {   | eg. 5,6,7 all unset =draw continuous line }
> $8F76 ; {   | bit 5 set = draw every other column }
> $8F76 ; {   | all set draw graphic every 7th column }
> $8F76 ; TABLE#
> $8F76 ;
> $8F76 ; #TABLE(default,centre,:w)
> $8F76 ; { =h Byte(n) | =h value < $fa }
> $8F76 ; {  1 | coordinate lookup value }
> $8F76 ; {  2 | graphic }
> $8F76 ; TABLE#
> $8F76 ;
> $8F76 ;
> $8F76 ; screen data 2
> $8F76 ;
> $8F76 ; #TABLE(default,centre,:w)
> $8F76 ; { =h Byte(n) | =h value >= $fa }
> $8F76 ; { 1 | bits 0,1 (plus ONE)=no. of ladders (1-4) (0=1 ladder, 1=2 ladders, 2=3 ladders, 3=4 ladders) }
> $8F76 ; {   | bit 2 +4  = there are ladders in the room }
> $8F76 ; {   | bit 3 +8  = there's a jukebox in the room }
> $8F76 ; {   | bit 4 +16 = door status (blown/not blown) }
> $8F76 ; {   | bit 7 +128= there's a door in the room }
> $8F76 ; TABLE#
b $8F76 room $00 screen data 1
B $8F76,2,2 universal screen data $4c
B $8F78,2,2 universal screen data $7a
B $8F7A,2,2 coordinate lookup value, graphic
B $8F7C,2,2 coordinate lookup value, graphic
B $8F7E,1,1 eod marker
N $8F7F room $00 screen data 2
B $8F7F,1,1 jukebox
B $8F80,1,1 jukebox coordinate lookup value
B $8F81,4,4 item placement coordinate lookup values
N $8F85 room $01 screen data 1
B $8F85,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F89,2,2 coordinate lookup value, graphic
B $8F8B,2,2 universal screen data $78
B $8F8D,2,2 coordinate lookup value, graphic
B $8F8F,2,2 coordinate lookup value, graphic
B $8F91,1,1 eod marker
N $8F92 room $01 screen data 2
B $8F92,1,1 no ladders, jukebox or door
B $8F93,4,4 item placement coordinate lookup values
N $8F97 room $02 screen data 1
B $8F97,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8F9B,2,2 coordinate lookup value, graphic
B $8F9D,2,2 coordinate lookup value, graphic
B $8F9F,2,2 universal screen data $78
B $8FA1,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $8FA5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8FA9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8FAD,2,2 coordinate lookup value, graphic
B $8FAF,2,2 coordinate lookup value, graphic
B $8FB1,1,1 eod marker
N $8FB2 room $02 screen data 2
B $8FB2,1,1 no ladders, jukebox or door
B $8FB3,4,4 item placement coordinate lookup values
N $8FB7 room $03 screen data 1
B $8FB7,2,2 universal screen data $86
B $8FB9,2,2 universal screen data $7b
B $8FBB,2,2 universal screen data $4d
B $8FBD,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $8FC0,2,2 universal screen data $65
B $8FC2,2,2 coordinate lookup value, graphic
B $8FC4,1,1 eod marker
N $8FC5 room $03 screen data 2
B $8FC5,1,1 2 ladders
B $8FC6,2,2 ladder coordinate lookup values
B $8FC8,4,4 item placement coordinate lookup values
N $8FCC room $04 screen data 1
B $8FCC,2,2 universal screen data $86
B $8FCE,2,2 universal screen data $64
B $8FD0,2,2 universal screen data $7a
B $8FD2,1,1 eod marker
N $8FD3 room $04 screen data 2
B $8FD3,1,1 door + 1 ladder
B $8FD4,1,1 ladder coordinate lookup value
B $8FD5,1,1 door coordinate lookup value
B $8FD6,4,4 item placement coordinate lookup values
N $8FDA room $05 screen data 1
B $8FDA,2,2 universal screen data $86
B $8FDC,2,2 universal screen data $78
B $8FDE,1,1 eod marker
N $8FDF room $05 screen data 2
B $8FDF,1,1 no ladders, jukebox or door
B $8FE0,4,4 item placement coordinate lookup values
N $8FE4 room $06 screen data 1
B $8FE4,2,2 universal screen data $86
B $8FE6,2,2 universal screen data $78
B $8FE8,2,2 coordinate lookup value, graphic
B $8FEA,2,2 coordinate lookup value, graphic
B $8FEC,1,1 eod marker
N $8FED room $06 screen data 2
B $8FED,1,1 no ladders, jukebox or door
B $8FEE,4,4 item placement coordinate lookup values
N $8FF2 room $07 screen data 1
B $8FF2,2,2 coordinate lookup value, graphic
B $8FF4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8FF8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $8FFC,2,2 universal screen data $7b
B $8FFE,2,2 coordinate lookup value, graphic
B $9000,1,1 eod marker
N $9001 room $07 screen data 2
B $9001,1,1 no ladders, jukebox or door
B $9002,4,4 item placement coordinate lookup values
N $9006 room $08 screen data 1
B $9006,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $900A,2,2 universal screen data $26
B $900C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9010,2,2 coordinate lookup value, graphic
B $9012,2,2 coordinate lookup value, graphic
B $9014,1,1 eod marker
N $9015 room $08 screen data 2
B $9015,1,1 1 ladder
B $9016,1,1 ladder coordinate lookup value
B $9017,4,4 item placement coordinate lookup values
N $901B room $09 screen data 1
B $901B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $901F,2,2 coordinate lookup value, graphic
B $9021,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9025,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9029,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $902D,2,2 universal screen data $2c
B $902F,2,2 universal screen data $25
B $9031,1,1 eod marker
N $9032 room $09 screen data 2
B $9032,1,1 door + 3 ladders
B $9033,3,3 ladder coordinate lookup values
B $9036,1,1 door coordinate lookup value
B $9037,4,4 item placement coordinate lookup values
N $903B room $0a screen data 1
B $903B,2,2 universal screen data $22
B $903D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9041,1,1 eod marker
N $9042 room $0a screen data 2
B $9042,1,1 jukebox + 1 ladder
B $9043,1,1 ladder coordinate lookup value
B $9044,1,1 jukebox coordinate lookup value
B $9045,4,4 item placement coordinate lookup values
N $9049 room $0b screen data 1
B $9049,2,2 universal screen data $22
B $904B,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $904E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9052,2,2 coordinate lookup value, graphic
B $9054,1,1 eod marker
N $9055 room $0b screen data 2
B $9055,1,1 no ladders, jukebox or door
B $9056,4,4 item placement coordinate lookup values
N $905A room $0c screen data 1
B $905A,2,2 universal screen data $2e
B $905C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9060,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9064,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9068,2,2 universal screen data $27
B $906A,2,2 universal screen data $36
B $906C,2,2 coordinate lookup value, graphic
B $906D,1,1 eod marker
N $906F room $0c screen data 2
B $906F,1,1 no ladders, jukebox or door
B $9070,4,4 item placement coordinate lookup values
N $9074 room $0d screen data 1
B $9074,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9078,2,2 universal screen data $2f
B $907A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $907E,2,2 universal screen data $30
B $9080,2,2 coordinate lookup value, graphic
B $9082,1,1 eod marker
N $9083 room $0d screen data 2
B $9083,1,1 door + 2 ladders
B $9084,2,2 ladder coordinate lookup values
B $9086,1,1 door coordinate lookup value
B $9087,4,4 item placement coordinate lookup values
N $908B room $0e screen data 1
B $908B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $908F,2,2 universal screen data $26
B $9091,2,2 universal screen data $27
B $9093,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9097,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $909B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $909F,2,2 universal screen data $31
B $90A1,1,1
N $90A2 room $0e screen data 2
B $90A2,1,1 1 ladder
B $90A3,1,1 ladder coordinate lookup value
B $90A4,4,4 item placement coordinate lookup values
N $90A8 room $0f screen data 1
B $90A8,2,2 universal screen data $25
B $90AA,2,2 universal screen data $3c
B $90AC,1,1 eod marker
N $90AD room $0f screen data 2
B $90AD,1,1 1 ladder
B $90AE,1,1 ladder coordinate lookup value
B $90AF,4,4 item placement coordinate lookup values
N $90B3 room $10 screen data 1
B $90B3,2,2 universal screen data $46
B $90B5,2,2 universal screen data $4c
B $90B7,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $90BB,2,2 coordinate lookup value, graphic
B $90BD,1,1 eod marker
N $90BE room $10 screen data 2
B $90BE,1,1 no ladders, jukebox or door
B $90BF,4,4 item placement coordinate lookup values
N $90C3 room $11 screen data 1
B $90C3,2,2 universal screen data $43
B $90C5,2,2 coordinate lookup value, graphic
B $90C7,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $90CA,2,2 universal screen data $4d
B $90CC,2,2 coordinate lookup value, graphic
B $90CE,1,1 eod marker
N $90CF room $11 screen data 2
B $90CF,1,1 1 ladder
B $90D0,1,1 ladder coordinate lookup value
B $90D1,4,4 item placement coordinate lookup values
N $90D5 room $12 screen data 1
B $90D5,2,2 universal screen data $44
B $90D7,2,2 coordinate lookup value, graphic
B $90D9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $90DD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $90E1,2,2 universal screen data $46
B $90E3,2,2 coordinate lookup value, graphic
B $90E5,1,1 eod marker
N $90E6 room $12 screen data 2
B $90E6,1,1 1 ladder
B $90E7,1,1 ladder coordinate lookup value
B $90E8,4,4 item placement coordinate lookup values
N $90EC room $13 screen data 1
B $90EC,2,2 universal screen data $4e
B $90EE,2,2 coordinate lookup value, graphic
B $90F0,1,1 eod marker
N $90F1 room $13 screen data 2
B $90F1,1,1 no ladders, jukebox or door
B $90F2,4,4 item placement coordinate lookup values
N $90F6 room $14 screen data 1
B $90F6,2,2 universal screen data $44
B $90F8,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $90FB,2,2 coordinate lookup value, graphic
B $90FD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9101,2,2 universal screen data $46
B $9103,2,2 universal screen data $4c
B $9105,1,1 eod marker
N $9106 room $14 screen data 2
B $9106,1,1 1 ladder
B $9107,1,1 ladder coordinate lookup value
B $9108,4,4 item placement coordinate lookup values
N $910C room $15 screen data 1
B $910C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9110,2,2 universal screen data $43
B $9112,2,2 coordinate lookup value, graphic
B $9114,2,2 coordinate lookup value, graphic
B $9116,2,2 coordinate lookup value, graphic
B $9118,2,2 coordinate lookup value, graphic
B $911A,1,1 eod marker
N $911B room $15 screen data 2
B $911B,1,1 door + 1 ladder
B $911C,1,1 ladder coordinate lookup value
B $911D,1,1 door coordinate lookup value
B $911E,4,4 item placement coordinate lookup values
N $9122 room $16 screen data 1
B $9122,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9126,2,2 universal screen data $4e
B $9128,2,2 coordinate lookup value, graphic
B $912A,2,2 coordinate lookup value, graphic
B $912C,1,1 eod marker
N $912D room $16 screen data 2
B $912D,1,1 door + 2 ladders
B $912E,2,2 ladder coordinate lookup values
B $9130,1,1 door coordinate lookup value
B $9131,4,4 item placement coordinate lookup values
N $9135 room $17 screen data 1
B $9135,2,2 universal screen data $44
B $9137,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $913B,2,2 universal screen data $4d
B $913D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9141,2,2 universal screen data $1e
B $9143,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9147,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $914B,2,2 coordinate lookup value, graphic
B $914D,1,1 eod marker
N $914E room $17 screen data 2
B $914E,1,1 door, jukebox + 1 ladder
B $914F,1,1 ladder coordinate lookup value
B $9150,1,1 jukebox coordinate lookup value
B $9151,1,1 door coordinate lookup value
B $9152,4,4 item placement coordinate lookup values
N $9156 room $18 screen data 1
B $9156,2,2 universal screen data $92
B $9158,2,2 universal screen data $8e
B $915A,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $915D,1,1 eod marker
N $915E room $18 screen data 2
B $915E,1,1 2 ladders
B $915F,2,2 ladder coordinate lookup values
B $9161,4,4 item placement coordinate lookup values
N $9165 room $19 screen data 1
B $9165,2,2 universal screen data $8f
B $9167,2,2 coordinate lookup value, graphic
B $9169,2,2 coordinate lookup value, graphic
B $916B,2,2 coordinate lookup value, graphic
B $916D,2,2 coordinate lookup value, graphic
B $916F,2,2 coordinate lookup value, graphic
B $9171,1,1 eod marker
N $9172 room $19 screen data 2
B $9172,1,1 no ladders, jukebox or door
B $9173,4,4 item placement coordinate lookup values
N $9177 room $1a screen data 1
B $9177,2,2 universal screen data $8f
B $9179,2,2 coordinate lookup value, graphic
B $917B,2,2 coordinate lookup value, graphic
B $917D,2,2 universal screen data $8e
B $917F,2,2 coordinate lookup value, graphic
B $9181,1,1 eod marker
N $9182 room $1a screen data 2
B $9182,1,1 no ladders, jukebox or door
B $9183,4,4 item placement coordinate lookup values
N $9187 room $1b screen data 1
B $9187,2,2 universal screen data $90
B $9189,2,2 universal screen data $8d
B $918B,2,2 coordinate lookup value, graphic
B $918D,2,2 coordinate lookup value, graphic
B $918F,2,2 coordinate lookup value, graphic
B $9191,2,2 coordinate lookup value, graphic
B $9193,2,2 coordinate lookup value, graphic
B $9195,1,1 eod marker
N $9196 room $1b screen data 2
B $9196,1,1 door + 2 ladders
B $9197,2,2 ladder coordinate lookup values
B $9199,1,1 door coordinate lookup value
B $919A,4,4 item placement coordinate lookup values
N $919E room $1c screen data 1
B $919E,2,2 coordinate lookup value, graphic
B $91A0,2,2 coordinate lookup value, graphic
B $91A2,2,2 coordinate lookup value, graphic
B $91A4,2,2 coordinate lookup value, graphic
B $91A6,2,2 universal screen data $8f
B $91A8,2,2 coordinate lookup value, graphic
B $91AA,2,2 universal screen data $8c
B $91AC,1,1 eod marker
N $91AD room $1c screen data 2
B $91AD,1,1 door + 3 ladders
B $91AE,3,3 ladder coordinate lookup values
B $91B1,1,1 door coordinate lookup value
B $91B2,4,4 item placement coordinate lookup values
N $91B6 room $1d screen data 1
B $91B6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $91BA,2,2 coordinate lookup value, graphic
B $91BC,2,2 coordinate lookup value, graphic
B $91BE,2,2 universal screen data $8e
B $91C0,2,2 coordinate lookup value, graphic
B $91C2,2,2 coordinate lookup value, graphic
B $91C4,1,1 eod marker
N $91C5 room $1d screen data 2
B $91C5,1,1 no ladders, jukebox or door
B $91C6,4,4 item placement coordinate lookup values
N $91CA room $1e screen data 1
B $91CA,2,2 coordinate lookup value, graphic
B $91CC,2,2 coordinate lookup value, graphic
B $91CE,2,2 coordinate lookup value, graphic
B $91D0,2,2 coordinate lookup value, graphic
B $91D2,2,2 coordinate lookup value, graphic
B $91D4,2,2 coordinate lookup value, graphic
B $91D6,2,2 coordinate lookup value, graphic
B $91D8,2,2 coordinate lookup value, graphic
B $91DA,1,1 eod marker
N $91DB room $1e screen data 2
B $91DB,1,1 door
B $91DC,1,1 door coordinate lookup value
B $91DD,4,4 item placement coordinate lookup values
N $91DF room $1f screen data 1
B $91DF,2,2 coordinate lookup value, graphic
B $91E3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $91E7,1,1 eod marker
N $91E8 room $1f screen data 2
B $91E8,1,1 jukebox
B $91E9,1,1 jukebox coordinate lookup value
B $91EA,4,4 item placement coordinate lookup values
N $91EE room $20 screen data 1
B $91EE,2,2 coordinate lookup value, graphic
B $91F0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $91F4,2,2 universal screen data $52
B $91F6,2,2 universal screen data $53
B $91F8,1,1 eod marker
N $91F9 room $20 screen data 2
B $91F9,1,1 1 ladder
B $91FA,1,1 ladder coordinate lookup value
B $91FB,4,4 item placement coordinate lookup values
N $91FF room $21 screen data 1
B $91FF,2,2 universal screen data $28
B $9201,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9205,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9209,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $920D,2,2 coordinate lookup value, graphic
B $920F,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9213,2,2 coordinate lookup value, graphic
B $9215,1,1 eod marker
N $9216 room $21 screen data 2
B $9216,1,1 4 ladders
B $9217,4,4 ladder coordinate lookup values
B $921B,4,4 item placement coordinate lookup values
N $921F room $22 screen data 1
B $921F,2,2 universal screen data $56
B $9221,2,2 universal screen data $00
B $9223,1,1 eod marker
N $9224 room $22 screen data 2
B $9224,1,1 no ladders, jukebox or door
B $9225,4,4 item placement coordinate lookup values
N $9229 room $23 screen data 1
B $9229,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $922D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9231,2,2 coordinate lookup value, graphic
B $9233,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9237,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $923B,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $923F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9243,2,2 coordinate lookup value, graphic
B $9245,2,2 universal screen data $00
B $9247,1,1 eod marker
N $9248 room $23 screen data 2
B $9248,1,1 door + 1 ladder
B $9249,1,1 ladder coordinate lookup value
B $924A,1,1 door coordinate lookup value
B $924B,4,4 item placement coordinate lookup values
N $924F room $24 screen data 1
B $924F,2,2 universal screen data $57
B $9251,2,2 universal screen data $07
B $9253,2,2 universal screen data $00
B $9255,1,1 eod marker
N $9256 room $24 screen data 2
B $9256,1,1 1 ladder
B $9257,1,1 ladder coordinate lookup value
B $9258,4,4 item placement coordinate lookup values
N $925C room $25 screen data 1
B $925C,2,2 universal screen data $51
B $925E,2,2 universal screen data $52
B $9260,2,2 universal screen data $56
B $9262,2,2 universal screen data $53
B $9264,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9268,1,1 eod marker
N $9269 room $25 screen data 2
B $9269,1,1 door + 1 ladder
B $926A,1,1 ladder coordinate lookup value
B $926B,1,1 door coordinate lookup value
B $926C,4,4 item placement coordinate lookup values
N $9270 room $26 screen data 1
B $9270,2,2 universal screen data $57
B $9272,2,2 universal screen data $28
B $9273,1,1 eod marker
N $9275 room $26 screen data 2
B $9275,1,1 1 ladder
B $9276,1,1 ladder coordinate lookup value
B $9277,4,4 item placement coordinate lookup values
N $9279 room $57 screen data 2
B $9279,1,1 4 ladders
N $927B room $27 screen data 1
B $927B,2,2 coordinate lookup value, graphic
B $927D,2,2 coordinate lookup value, graphic
B $927F,2,2 coordinate lookup value, graphic
B $9281,2,2 universal screen data $51
B $9283,2,2 universal screen data $52
B $9285,1,1 eod marker
N $9286 room $27 screen data 2
B $9286,1,1 no ladders, jukebox or door
B $9287,4,4 item placement coordinate lookup values
N $928B room $28 screen data 1
B $928B,2,2 universal screen data $a4
B $928D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9291,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9295,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9299,2,2 coordinate lookup value, graphic
B $929B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $929F,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $92A2,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92A6,2,2 universal screen data $04
B $92A8,1,1 eod marker
N $92A9 room $28 screen data 2
B $92A9,1,1 1 ladder
B $92AA,1,1 ladder coordinate lookup value
B $92AB,4,4 item placement coordinate lookup values
N $92AF room $29 screen data 1
B $92AF,2,2 coordinate lookup value, graphic
B $92B1,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $92B4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92B8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92BC,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $92BF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92C3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92C7,2,2 coordinate lookup value, graphic
B $92C9,2,2 universal screen data $01
B $92CB,1,1 eod marker
N $92CC room $29 screen data 2
B $92CC,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $92CD,1,1 ladder coordinate lookup value
B $92CE,1,1 door coordinate lookup value
B $92CF,4,4 item placement coordinate lookup values
N $92D3 room $2a screen data 1
B $92D3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92D7,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92DB,2,2 universal screen data $a2
B $92DD,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $92E0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92E4,1,1 eod marker
N $92E5 room $2a screen data 2
B $92E5,1,1 jukebox + 1 ladder
B $92E6,1,1 ladder coordinate lookup value
B $92E7,1,1 jukebox coordinate lookup value
B $92E8,4,4 item placement coordinate lookup values
N $92EC room $2b screen data 1
B $92EC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92F0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92F4,2,2 coordinate lookup value, graphic
B $92F6,2,2 universal screen data $a3
B $92F8,2,2 universal screen data $04
B $92FA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $92FE,2,2 coordinate lookup value, graphic
B $9300,2,2 coordinate lookup value, graphic
B $9302,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9306,1,1 eod marker
N $9307 room $2b screen data 2
B $9307,1,1 2 ladders
B $9308,2,2 ladder coordinate lookup values
B $930A,4,4 item placement coordinate lookup values
N $930E room $2c screen data 1
B $930E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9312,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9316,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $931A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $931E,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9321,2,2 universal screen data $a2
B $9323,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9327,1,1 eod marker
N $9328 room $2c screen data 2
B $9328,1,1 2 ladders
B $9329,2,2 ladder coordinate lookup values
B $932B,4,4 item placement coordinate lookup values
N $932F room $2d screen data 1
B $932F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9333,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9336,2,2 coordinate lookup value, graphic
B $9338,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $933C,2,2 universal screen data $01
B $933E,2,2 coordinate lookup value, graphic
B $9340,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9343,2,2 coordinate lookup value, graphic
B $9345,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9348,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $934C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9350,2,2 coordinate lookup value, graphic
B $9352,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9356,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $935A,1,1 eod marker
N $935B room $2d screen data 2
B $935B,1,1 3 ladders
B $935C,3,3 ladder coordinate lookup values
B $935F,4,4 item placement coordinate lookup values
N $9363 room $2e screen data 1
B $9363,2,2 universal screen data $06
B $9365,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9369,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $936D,2,2 universal screen data $a3
B $936F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9373,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9377,2,2 universal screen data $04
B $9379,1,1 eod marker
N $937A room $2e screen data 2
B $937A,1,1 door + 1 ladder
B $937B,1,1 ladder coordinate lookup value
B $937C,1,1 door coordinate lookup value
B $937D,4,4 item placement coordinate lookup values
N $9381 room $2f screen data 1
B $9381,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9385,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9389,2,2 coordinate lookup value, graphic
B $938B,2,2 coordinate lookup value, graphic
B $938D,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9390,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9393,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9397,2,2 coordinate lookup value, graphic
B $9399,2,2 universal screen data $a3
B $939B,2,2 universal screen data $3c
B $939D,2,2 coordinate lookup value, graphic
B $939F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $93A3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $93A7,1,1 eod marker
N $93A8 room $2f screen data 2
B $93A8,1,1 2 ladders
B $93A9,2,2 ladder coordinate lookup values
B $93A9,4,4 item placement coordinate lookup values
B $93AB,4,4 item placement coordinate lookup values
N $93AD room $3a screen data 1
B $93AD,2,2 universal screen data $1c
N $93AF room $30 screen data 1
B $93AF,2,2 coordinate lookup value, graphic
B $93AF,2,2 universal screen data $68
B $93B1,2,2 coordinate lookup value, graphic
B $93B1,2,2 coordinate lookup value, graphic
B $93B3,2,2 coordinate lookup value, graphic
B $93B3,1,1 eod marker
B $93B5,2,2 coordinate lookup value, graphic
B $93B7,2,2 coordinate lookup value, graphic
B $93B9,2,2 coordinate lookup value, graphic
B $93BB,2,2 universal screen data $11
B $93BD,2,2 coordinate lookup value, graphic
B $93BF,1,1 eod marker
N $93C0 room $30 screen data 2
B $93C0,1,1 2 ladders
B $93C1,2,2 ladder coordinate lookup values
B $93C3,4,4 item placement coordinate lookup values
N $93C7 room $31 screen data 1
B $93C7,2,2 universal screen data $12
B $93C9,2,2 coordinate lookup value, graphic
B $93CB,2,2 coordinate lookup value, graphic
B $93CD,2,2 coordinate lookup value, graphic
B $93CF,2,2 coordinate lookup value, graphic
B $93D1,2,2 coordinate lookup value, graphic
B $93D3,2,2 coordinate lookup value, graphic
B $93D5,2,2 coordinate lookup value, graphic
B $93D7,2,2 coordinate lookup value, graphic
B $93D9,1,1 eod marker
N $93DA room $31 screen data 2
B $93DA,1,1 no ladders, jukebox or door
B $93DB,4,4 item placement coordinate lookup values
N $93DF room $32 screen data 1
B $93DF,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $93E2,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $93E6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $93EA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $93EE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $93F2,2,2 universal screen data $03
B $93F4,2,2 coordinate lookup value, graphic
B $93F6,1,1 eod marker
N $93F7 room $32 screen data 2
B $93F7,1,1 door + 2 ladders (bit 4 door not blown status also set but unnecessary)
B $93F8,2,2 ladder coordinate lookup values
B $93FA,1,1 door coordinate lookup value
B $93FB,4,4 item placement coordinate lookup values
N $93FF room $33 screen data 1
B $93FF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9403,2,2 coordinate lookup value, graphic
B $9405,2,2 coordinate lookup value, graphic
B $9407,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $940B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $940F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9413,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9417,2,2 universal screen data $03
B $9419,1,1 eod marker
N $941A room $33 screen data 2
B $941A,1,1 door + 2 ladders (bit 4 door not blown status also set but unnecessary)
B $941B,2,2 ladder coordinate lookup values
B $941D,1,1 door coordinate lookup value
B $941E,4,4 item placement coordinate lookup values
N $9422 room $34 screen data 1
B $9422,2,2 universal screen data $9a
B $9424,2,2 coordinate lookup value, graphic
B $9426,2,2 coordinate lookup value, graphic
B $9428,2,2 coordinate lookup value, graphic
B $942A,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $942E,2,2 universal screen data $0a
B $9430,2,2 universal screen data $9b
B $9432,2,2 coordinate lookup value, graphic
B $9434,1,1 eod marker
N $9435 room $34 screen data 2
B $9435,1,1 1 ladder
B $9436,1,1 ladder coordinate lookup value
B $9437,4,4 item placement coordinate lookup values
N $943B room $35 screen data 1
B $943B,2,2 universal screen data $98
B $943D,2,2 universal screen data $13
B $943F,2,2 universal screen data $11
B $9441,2,2 universal screen data $0b
B $9443,2,2 coordinate lookup value, graphic
B $9445,1,1 eod marker
N $9446 room $35 screen data 2
B $9446,1,1 1 ladder
B $9447,1,1 ladder coordinate lookup value
B $9448,4,4 item placement coordinate lookup values
N $944C room $36 screen data 1
B $944C,2,2 universal screen data $14
B $944E,2,2 universal screen data $12
B $9450,2,2 coordinate lookup value, graphic
B $9452,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9456,2,2 coordinate lookup value, graphic
B $9458,2,2 coordinate lookup value, graphic
B $945A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $945E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9462,1,1 eod marker
N $9463 room $36 screen data 2
B $9463,1,1 no ladders, jukebox or door
B $9464,4,4 item placement coordinate lookup values
N $9468 room $37 screen data 1
B $9468,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $946C,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $946F,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9472,2,2 coordinate lookup value, graphic
B $9474,2,2 universal screen data $9c
B $9476,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $947A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $947E,1,1 eod marker
N $947F room $37 screen data 2
B $947F,1,1 1 ladder
B $9480,1,1 ladder coordinate lookup value
B $9481,4,4 item placement coordinate lookup values
N $9485 room $38 screen data 1
B $9485,2,2 coordinate lookup value, graphic
B $9487,2,2 universal screen data $5a
B $9489,2,2 universal screen data $63
B $948B,2,2 universal screen data $66
B $948D,1,1 eod marker
N $948E room $38 screen data 2
B $948E,1,1 no ladders, jukebox or door
B $948F,4,4 item placement coordinate lookup values
N $9493 room $39 screen data 1
B $9493,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9497,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $949B,2,2 universal screen data $72
B $949D,2,2 universal screen data $73
B $949F,2,2 coordinate lookup value, graphic
B $94A1,2,2 universal screen data $19
B $94A3,2,2 universal screen data $61
B $94A5,1,1 eod marker
N $94A6 room $39 screen data 2
B $94A6,1,1 2 ladders
B $94A7,2,2 ladder coordinate lookup values
N $94B4 room $3a screen data 2
B $94B4,1,1 jukebox
B $94B5,1,1 jukebox coordinate lookup value
B $94B6,4,4 item placement coordinate lookup values
N $94BA room $3b screen data 1
B $94BA,2,2 universal screen data $59
B $94BC,2,2 universal screen data $67
B $94BE,2,2 universal screen data $5f
B $94C0,2,2 coordinate lookup value, graphic
B $94C2,2,2 universal screen data $5a
B $94C4,2,2 coordinate lookup value, graphic
B $94C6,1,1 eod marker
N $94C7 room $3b screen data 2
B $94C7,1,1 door + 1 ladder
B $94C8,1,1 ladder coordinate lookup value
B $94C9,1,1 door coordinate lookup value
B $94CA,4,4 item placement coordinate lookup values
N $94CE room $3c screen data 1
B $94CE,2,2 universal screen data $72
B $94D0,2,2 universal screen data $60
B $94D2,2,2 universal screen data $19
B $94D4,1,1 eod marker
N $94D5 room $3c screen data 2
B $94D5,1,1 door
B $94D6,1,1 door coordinate lookup value
B $94D7,4,4 item placement coordinate lookup values
N $94DB room $3d screen data 1
B $94DB,2,2 coordinate lookup value, graphic
B $94DD,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $94E1,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $94E5,2,2 universal screen data $58
B $94E7,2,2 universal screen data $1d
B $94E9,2,2 universal screen data $5e
B $94EB,2,2 universal screen data $5d
B $94ED,2,2 universal screen data $66
B $94EF,2,2 coordinate lookup value, graphic
B $94F1,2,2 universal screen data $6b
B $94F3,1,1 eod marker
N $94F4 room $3d screen data 2
B $94F4,1,1 2 ladders
B $94F5,2,2 ladder coordinate lookup values
B $94F7,4,4 item placement coordinate lookup values
N $94FB room $3e screen data 1
B $94FB,2,2 universal screen data $72
B $94FD,2,2 universal screen data $1c
B $94FF,2,2 universal screen data $5f
B $9501,2,2 universal screen data $1d
B $9503,2,2 universal screen data $1b
B $9505,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9509,1,1 eod marker
N $950A room $3e screen data 2
B $950A,1,1 door (bit 4 door not blown status also set but unnecessary)
B $950B,1,1 door coordinate lookup value
B $950C,4,4 item placement coordinate lookup values
N $9510 room $3f screen data 1
B $9510,2,2 universal screen data $60
B $9512,2,2 universal screen data $59
B $9514,2,2 universal screen data $1e
B $9516,2,2 coordinate lookup value, graphic
B $9518,1,1 eod marker
N $9519 room $3f screen data 2
B $9519,1,1 door + 2 ladders (bit 4 door not blown status also set but unnecessary)
B $951A,2,2 ladder coordinate lookup values
B $951C,1,1 door coordinate lookup value
B $951D,4,4 item placement coordinate lookup values
N $9521 room $40 screen data 1
B $9521,2,2 coordinate lookup value, graphic
B $9523,2,2 universal screen data $7d
B $9525,2,2 coordinate lookup value, graphic
B $9527,1,1 eod marker
N $9528 room $40 screen data 2
B $9528,1,1 no ladders, jukebox or door
B $9529,4,4 item placement coordinate lookup values
N $952D room $41 screen data 1
B $952D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9531,2,2 universal screen data $84
B $9533,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9537,1,1 eod marker
N $9538 room $41 screen data 2
B $9538,1,1 door
B $9539,1,1 door coordinate lookup value
B $953A,4,4 item placement coordinate lookup values
N $953E room $42 screen data 1
B $953E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9542,2,2 coordinate lookup value, graphic
B $9544,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9548,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $954C,2,2 coordinate lookup value, graphic
B $954E,2,2 coordinate lookup value, graphic
B $9550,2,2 universal screen data $84
B $9552,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9556,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $955A,1,1 eod marker
N $955B room $42 screen data 2
B $955B,1,1 door
B $955C,1,1 door coordinate lookup value
B $955D,4,4 item placement coordinate lookup values
N $9561 room $43 screen data 1
B $9561,2,2 universal screen data $87
B $9563,2,2 universal screen data $7e
B $9565,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9569,1,1 eod marker
N $956A room $43 screen data 2
B $956A,1,1 2 ladders
B $956B,2,2 ladder coordinate lookup values
B $956D,4,4 item placement coordinate lookup values
N $9570 room $44 screen data 1
B $9570,2,2 universal screen data $87
B $9572,2,2 universal screen data $7d
B $9574,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9578,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $957C,1,1 eod marker
N $957E room $44 screen data 2
B $957E,1,1 3 ladders
B $957F,3,3 ladder coordinate lookup values
B $9582,4,4 item placement coordinate lookup values
N $9586 room $45 screen data 1
B $9586,2,2 universal screen data $87
B $9588,2,2 universal screen data $85
B $958A,2,2 coordinate lookup value, graphic
B $958C,1,1 eod marker
N $958D room $45 screen data 2
B $958D,1,1 door + 2 ladders
B $958E,2,2 ladder coordinate lookup values
B $9590,1,1 door coordinate lookup value
B $9591,4,4 item placement coordinate lookup values
N $9595 room $46 screen data 1
B $9595,2,2 universal screen data $87
B $9597,2,2 universal screen data $85
B $9599,2,2 coordinate lookup value, graphic
B $959B,1,1 eod marker
N $959C room $46 screen data 2
B $959C,1,1 door + 1 ladder
B $959D,1,1 ladder coordinate lookup value
B $959E,1,1 door coordinate lookup value
B $959F,4,4 item placement coordinate lookup values
N $95A3 room $47 screen data 1
B $95A3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95A7,2,2 coordinate lookup value, graphic
B $95A9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95AD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95B1,2,2 universal screen data $7e
B $95B3,2,2 coordinate lookup value, graphic
B $95B5,2,2 coordinate lookup value, graphic
B $95B7,1,1 eod marker
N $95B8 room $47 screen data 2
B $95B8,1,1 door + 1 ladder
B $95B9,1,1 ladder coordinate lookup value
B $95BA,1,1 door coordinate lookup value
B $95BB,4,4 item placement coordinate lookup values
N $95BF room $48 screen data 1
B $95BF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95C3,2,2 universal screen data $24
B $95C5,2,2 coordinate lookup value, graphic
B $95C7,1,1 eod marker
N $95C8 room $48 screen data 2
B $95C8,5,1,4
N $95CD room $49 screen data 1
B $95CD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95D1,2,2 universal screen data $3a
B $95D3,2,2 coordinate lookup value, graphic
B $95D5,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $95D9,2,2 universal screen data $39
B $95DB,2,2 coordinate lookup value, graphic
B $95DD,2,2 coordinate lookup value, graphic
B $95DF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95E3,2,2 coordinate lookup value, graphic
B $95E5,1,1 eod marker
N $95E6 room $49 screen data 2
B $95E6,1,1 door + 3 ladders
B $95E7,3,3 ladder coordinate lookup values
B $95EA,1,1 door coordinate lookup value
B $95EB,4,4 item placement coordinate lookup values
N $95EF room $4a screen data 1
B $95EF,2,2 universal screen data $2d
B $95F1,2,2 universal screen data $10
B $95F3,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $95F7,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $95FA,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $95FE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9602,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9606,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $960A,2,2 universal screen data $36
B $960C,2,2 universal screen data $21
B $960E,1,1 eod marker
N $960F room $4a screen data 2
B $960F,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9610,1,1 ladder coordinate lookup value
B $9611,1,1 door coordinate lookup value
B $9612,4,4 item placement coordinate lookup values
N $9616 room $4b screen data 1
B $9616,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $961A,2,2 universal screen data $2c
B $961C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9620,2,2 universal screen data $37
B $9622,2,2 universal screen data $21
B $9624,1,1 eod marker
N $9625 room $4b screen data 2
B $9625,1,1 door + 1 ladder
B $9626,1,1 ladder coordinate lookup value
B $9627,1,1 door coordinate lookup value
B $9628,4,4 item placement coordinate lookup values
N $962C room $4c screen data 1
B $962C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9630,2,2 universal screen data $36
B $9632,2,2 universal screen data $2e
B $9634,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9638,2,2 coordinate lookup value, graphic
B $963A,2,2 universal screen data $32
B $963C,1,1 eod marker
N $963D room $4c screen data 2
B $963D,1,1 1 ladder
B $963E,1,1 ladder coordinate lookup value
B $963F,4,4 item placement coordinate lookup values
N $9643 room $4d screen data 1
B $9643,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9647,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $964B,2,2 universal screen data $30
B $964D,1,1 eod marker
N $964E room $4d screen data 2
B $964E,1,1 door + 2 ladders
B $964F,2,2 ladder coordinate lookup values
B $9651,1,1 door coordinate lookup value
B $9652,4,4 item placement coordinate lookup values
N $9656 room $4e screen data 1
B $9656,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $965A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $965E,2,2 universal screen data $31
B $9660,2,2 universal screen data $24
B $9662,2,2 coordinate lookup value, graphic
B $9664,1,1 eod marker
N $9665 room $4e screen data 2
B $9665,1,1 1 ladder
B $9666,1,1 ladder coordinate lookup value
B $9667,4,4 item placement coordinate lookup values
N $966B room $4f screen data 1
B $966B,2,2 universal screen data $2a
B $966D,2,2 universal screen data $3c
B $966F,2,2 coordinate lookup value, graphic
B $9671,1,1 eod marker
N $9672 room $4f screen data 2
B $9672,1,1 1 ladder
B $9673,1,1 ladder coordinate lookup value
B $9674,4,4 item placement coordinate lookup values
N $9678 room $50 screen data 1
B $9678,2,2 coordinate lookup value, graphic
B $967A,2,2 universal screen data $40
B $967C,2,2 coordinate lookup value, graphic
B $967E,2,2 coordinate lookup value, graphic
B $9680,2,2 coordinate lookup value, graphic
B $9682,2,2 coordinate lookup value, graphic
B $9684,1,1 eod marker
N $9685 room $50 screen data 2
B $9685,1,1 no ladders, jukebox or door
B $9686,4,4 item placement coordinate lookup values
N $968A room $51 screen data 1
B $968A,2,2 universal screen data $3e
B $968C,2,2 coordinate lookup value, graphic
B $968E,2,2 coordinate lookup value, graphic
B $9690,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9694,2,2 coordinate lookup value, graphic
B $9696,1,1 eod marker
N $9697 room $51 screen data 2
B $9697,1,1 door + 1 ladder
B $9698,1,1 ladder coordinate lookup value
B $9699,1,1 door coordinate lookup value
B $969A,4,4 item placement coordinate lookup values
N $969E room $52 screen data 1
B $969E,2,2 universal screen data $3f
B $96A0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $96A4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $96A8,2,2 universal screen data $40
B $96AA,2,2 coordinate lookup value, graphic
B $96AC,1,1 eod marker
N $96AD room $52 screen data 2
B $96AD,1,1 1 ladder
B $96AE,1,1 ladder coordinate lookup value
B $96AF,4,4 item placement coordinate lookup values
N $96B3 room $53 screen data 1
B $96B3,2,2 universal screen data $44
B $96B5,2,2 universal screen data $4b
B $96B7,2,2 coordinate lookup value, graphic
B $96B9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $96BD,2,2 coordinate lookup value, graphic
B $96BF,1,1 eod marker
N $96C0 room $53 screen data 2
B $96C0,1,1 3 ladders
B $96C1,3,3 ladder coordinate lookup values
B $96C4,4,4 item placement coordinate lookup values
N $96C8 room $54 screen data 1
B $96C8,2,2 universal screen data $3f
B $96CA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $96CE,2,2 coordinate lookup value, graphic
B $96D0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $96D4,2,2 coordinate lookup value, graphic
B $96D6,2,2 universal screen data $40
B $96D8,1,1 eod marker
N $96D9 room $54 screen data 2
B $96D9,1,1 door (bit 4 door not blown status also set but unnecessary)
B $96DA,1,1 door coordinate lookup value
B $96DB,4,4 item placement coordinate lookup values
N $96DF room $55 screen data 1
B $96DF,2,2 universal screen data $4a
B $96E1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $96E5,2,2 coordinate lookup value, graphic
B $96E7,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $96EB,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $96EF,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $96F3,1,1 eod marker
N $96F4 room $55 screen data 2
B $96F4,1,1 2 ladders
B $96F5,2,2 ladder coordinate lookup values
B $96F7,4,4 item placement coordinate lookup values
N $96FB room $56 screen data 1
B $96FB,2,2 universal screen data $4b
B $96FD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9701,2,2 coordinate lookup value, graphic
B $9703,2,2 coordinate lookup value, graphic
B $9705,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9709,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $970D,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9711,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9715,1,1 eod marker
N $9716 room $56 screen data 2
B $9716,1,1 1 ladder
B $9717,1,1 ladder coordinate lookup value
B $9718,4,4 item placement coordinate lookup values
N $971C room $57 screen data 1
B $971C,2,2 universal screen data $3f
B $971E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9722,2,2 universal screen data $1f
B $9724,2,2 coordinate lookup value, graphic
B $9726,2,2 coordinate lookup value, graphic
B $9728,1,1 eod marker
B $972A,4,4 ladder coordinate lookup values
B $972E,4,4 item placement coordinate lookup values
N $9732 room $58 screen data 1
B $9732,2,2 universal screen data $8d
B $9734,2,2 coordinate lookup value, graphic
B $9736,2,2 coordinate lookup value, graphic
B $9738,2,2 coordinate lookup value, graphic
B $973A,1,1 eod marker
N $973B room $58 screen data 2
B $973B,1,1 no ladders, jukebox or door
B $973C,4,4 item placement coordinate lookup values
N $9740 room $59 screen data 1
B $9740,2,2 universal screen data $90
B $9742,2,2 coordinate lookup value, graphic
B $9744,2,2 universal screen data $8c
B $9746,2,2 coordinate lookup value, graphic
B $9748,2,2 coordinate lookup value, graphic
B $974A,2,2 coordinate lookup value, graphic
B $974C,2,2 coordinate lookup value, graphic
B $974E,1,1 eod marker
N $974F room $59 screen data 2
B $974F,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9750,1,1 ladder coordinate lookup value
B $9751,1,1 door coordinate lookup value
B $9752,4,4 item placement coordinate lookup values
N $9756 room $5a screen data 1
B $9756,2,2 coordinate lookup value, graphic
B $9758,2,2 universal screen data $92
B $975A,2,2 coordinate lookup value, graphic
B $975C,2,2 coordinate lookup value, graphic
B $975E,2,2 coordinate lookup value, graphic
B $9760,1,1 eod marker
N $9761 room $5a screen data 2
B $9761,1,1 1 ladder
B $9762,1,1 ladder coordinate lookup value
B $9763,4,4 item placement coordinate lookup values
N $9767 room $5b screen data 1
B $9767,2,2 coordinate lookup value, graphic
B $9769,2,2 coordinate lookup value, graphic
B $976B,2,2 coordinate lookup value, graphic
B $976D,2,2 coordinate lookup value, graphic
B $976F,2,2 coordinate lookup value, graphic
B $9771,2,2 coordinate lookup value, graphic
B $9773,2,2 universal screen data $91
B $9775,1,1 eod marker
N $9776 room $5b screen data 2
B $9776,1,1 1 ladder
B $9777,1,1 ladder coordinate lookup value
B $9778,4,4 item placement coordinate lookup values
N $977C room $5c screen data 1
B $977C,2,2 coordinate lookup value, graphic
B $977E,2,2 coordinate lookup value, graphic
B $9780,2,2 coordinate lookup value, graphic
B $9782,2,2 coordinate lookup value, graphic
B $9784,2,2 coordinate lookup value, graphic
B $9786,1,1 eod marker
N $9787 room $5c screen data 2
B $9787,1,1 1 ladder
B $9788,1,1 ladder coordinate lookup value
B $9789,4,4 item placement coordinate lookup values
N $978D room $5d screen data 1
B $978D,2,2 universal screen data $92
B $978F,2,2 coordinate lookup value, graphic
B $9791,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9795,2,2 coordinate lookup value, graphic
B $9797,1,1 eod marker
N $9798 room $5d screen data 2
B $9798,1,1 3 ladders
B $9799,3,3 ladder coordinate lookup values
B $979C,4,4 item placement coordinate lookup values
N $97A0 room $5e screen data 1
B $97A0,2,2 coordinate lookup value, graphic
B $97A2,2,2 coordinate lookup value, graphic
B $97A4,2,2 coordinate lookup value, graphic
B $97A6,2,2 universal screen data $8d
B $97A8,2,2 coordinate lookup value, graphic
B $97AA,2,2 coordinate lookup value, graphic
B $97AC,2,2 coordinate lookup value, graphic
B $97AE,1,1 eod marker
N $97AF room $5e screen data 2
B $97AF,1,1 door
B $97B0,1,1 door coordinate lookup value
B $97B1,4,4 item placement coordinate lookup values
N $97B5 room $5f screen data 1
B $97B5,2,2 coordinate lookup value, graphic
B $97B7,2,2 universal screen data $8c
B $97B9,2,2 coordinate lookup value, graphic
B $97BB,1,1 eod marker
N $97BC room $5f screen data 2
B $97BC,1,1 1 ladder
B $97BD,1,1 ladder coordinate lookup value
B $97BE,4,4 item placement coordinate lookup values
N $97C2 room $60 screen data 1
B $97C2,2,2 coordinate lookup value, graphic
B $97C4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $97C8,2,2 universal screen data $55
B $97CA,2,2 coordinate lookup value, graphic
B $97CC,1,1 eod marker
N $97CD room $60 screen data 2
B $97CD,1,1 door + 1 ladder
B $97CE,1,1 ladder coordinate lookup value
B $97CF,1,1 door coordinate lookup value
B $97D0,4,4 item placement coordinate lookup values
N $97D4 room $61 screen data 1
B $97D4,2,2 coordinate lookup value, graphic
B $97D6,2,2 coordinate lookup value, graphic
B $97D8,2,2 coordinate lookup value, graphic
B $97DA,2,2 universal screen data $50
B $97DC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $97E0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $97E4,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $97E8,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $97EC,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $97F0,1,1 eod marker
N $97F1 room $61 screen data 2
B $97F1,1,1 door + 4 ladders
B $97F2,4,4 ladder coordinate lookup values
B $97F6,1,1 door coordinate lookup value
B $97F7,4,4 item placement coordinate lookup values
N $97FB room $62 screen data 1
B $97FB,2,2 universal screen data $08
B $97FD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9801,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9804,2,2 coordinate lookup value, graphic
B $9806,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $980A,1,1 eod marker
N $980B room $62 screen data 2
B $980B,1,1 1 ladder
B $980C,1,1 ladder coordinate lookup value
B $980D,4,4 item placement coordinate lookup values
N $9811 room $63 screen data 1
B $9811,2,2 universal screen data $08
B $9813,2,2 universal screen data $55
B $9815,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9819,1,1 eod marker
N $981A room $63 screen data 2
B $981A,1,1 door (bit 4 door not blown status also set but unnecessary)
B $981B,1,1 door coordinate lookup value
B $981C,4,4 item placement coordinate lookup values
N $9820 room $64 screen data 1
B $9820,2,2 coordinate lookup value, graphic
B $9822,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9826,2,2 universal screen data $07
B $9828,2,2 coordinate lookup value, graphic
B $982A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $982E,2,2 coordinate lookup value, graphic
B $9830,2,2 coordinate lookup value, graphic
B $9832,2,2 coordinate lookup value, graphic
B $9834,2,2 coordinate lookup value, graphic
B $9836,1,1 eod marker
N $9837 room $64 screen data 2
B $9837,1,1 2 ladders
B $9838,2,2 ladder coordinate lookup values
B $983A,4,4 item placement coordinate lookup values
N $983E room $65 screen data 1
B $983E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9842,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9846,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $984A,1,1 eod marker
N $984B room $65 screen data 2
B $984B,1,1 1 ladder
B $984C,1,1 ladder coordinate lookup value
B $984D,4,4 item placement coordinate lookup values
N $9851 room $66 screen data 1
B $9851,2,2 universal screen data $4f
B $9853,2,2 coordinate lookup value, graphic
B $9855,2,2 coordinate lookup value, graphic
B $9857,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $985B,1,1 eod marker
N $985C room $66 screen data 2
B $985C,1,1 1 ladder
B $985D,1,1 ladder coordinate lookup value
B $985E,4,4 item placement coordinate lookup values
N $9862 room $67 screen data 1
B $9862,2,2 coordinate lookup value, graphic
B $9864,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9868,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $986B,2,2 coordinate lookup value, graphic
B $986D,2,2 coordinate lookup value, graphic
B $986F,1,1 eod marker
N $9870 room $67 screen data 2
B $9870,1,1 jukebox + 3 ladders
B $9871,3,3 ladder coordinate lookup values
B $9874,1,1 jukebox coordinate lookup value
B $9875,4,4 item placement coordinate lookup values
N $9879 room $68 screen data 1
B $9879,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $987C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9880,2,2 coordinate lookup value, graphic
B $9882,2,2 coordinate lookup value, graphic
B $9884,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9888,2,2 coordinate lookup value, graphic
B $988A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $988E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9892,1,1 eod marker
N $9893 room $68 screen data 2
B $9893,1,1 2 ladders
B $9895,2,2 ladder coordinate lookup values
B $9896,4,4 item placement coordinate lookup values
N $989A room $69 screen data 1
B $989A,2,2 coordinate lookup value, graphic
B $989C,2,2 coordinate lookup value, graphic
B $989E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98A2,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98A6,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $98A9,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $98AC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98B0,2,2 coordinate lookup value, graphic
B $98B2,1,1 eod marker
N $98B3 room $69 screen data 2
B $98B3,1,1 door + 1 ladder
B $98B4,1,1 ladder coordinate lookup value
B $98B5,1,1 door coordinate lookup value
B $98B6,4,4 item placement coordinate lookup values
N $98BA room $6a screen data 1
B $98BA,2,2 universal screen data $a1
B $98BC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98C0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98C4,1,1 eod marker
N $98C5 room $6a screen data 2
B $98C5,1,1 door + 3 ladders
B $98C6,3,3 ladder coordinate lookup values
B $98C9,1,1 door coordinate lookup value
B $98CA,4,4 item placement coordinate lookup values
N $98CE room $6b screen data 1
B $98CE,2,2 universal screen data $a0
B $98D0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98D4,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98D8,1,1 eod marker
N $98D9 room $6b screen data 2
B $98D9,1,1 door + 2 ladders
B $98DA,2,2 ladder coordinate lookup values
B $98DC,1,1 door coordinate lookup value
B $98DD,4,4 item placement coordinate lookup values
N $98E1 room $6c screen data 1
B $98E1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98E5,2,2 universal screen data $a1
B $98E7,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98EB,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98EF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98F3,1,1 eod marker
N $98F4 room $6c screen data 2
B $98F4,1,1 2 ladders
B $98F5,2,2 ladder coordinate lookup values
B $98F7,4,4 item placement coordinate lookup values
N $98FB room $6d screen data 1
B $98FB,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $98FF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9903,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9907,2,2 coordinate lookup value, graphic
B $9909,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $990D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9911,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9914,2,2 coordinate lookup value, graphic
B $9916,2,2 coordinate lookup value, graphic
B $9918,2,2 coordinate lookup value, graphic
B $991A,2,2 coordinate lookup value, graphic
B $991C,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $991F,2,2 coordinate lookup value, graphic
B $9921,1,1 eod marker
N $9922 room $6d screen data 2
B $9922,1,1 door + 1 ladder
B $9923,1,1 ladder coordinate lookup value
B $9924,1,1 door coordinate lookup values
B $9925,4,4 item placement coordinate lookup values
N $9929 room $6e screen data 1
B $9929,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $992D,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9930,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9934,2,2 coordinate lookup value, graphic
B $9936,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $993A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $993E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9942,2,2 universal screen data $02
B $9944,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9947,1,1 eod marker
N $9948 room $6e screen data 2
B $9948,1,1 1 ladder
B $9949,1,1 ladder coordinate lookup value
B $994A,4,4 item placement coordinate lookup values
N $994E room $6f screen data 1
B $994E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9952,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9955,2,2 universal screen data $3c
B $9957,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $995B,2,2 coordinate lookup value, graphic
B $995D,1,1 eod marker
N $995E room $6f screen data 2
B $995E,1,1 2 ladders
B $995F,2,2 ladder coordinate lookup values
B $9961,4,4 item placement coordinate lookup values
N $9965 room $70 screen data 1
B $9965,2,2 universal screen data $13
B $9967,2,2 universal screen data $9c
B $9969,2,2 universal screen data $9b
B $996B,2,2 coordinate lookup value, graphic
B $996D,2,2 coordinate lookup value, graphic
B $996F,1,1 eod marker
N $9970 room $70 screen data 2
B $9970,1,1 4 ladders
B $9971,4,4 ladder coordinate lookup values
B $9975,4,4 item placement coordinate lookup values
N $9979 room $71 screen data 1
B $9979,2,2 universal screen data $14
B $997B,2,2 universal screen data $16
B $997D,2,2 universal screen data $99
B $997F,2,2 universal screen data $09
B $9981,2,2 coordinate lookup value, graphic
B $9983,2,2 coordinate lookup value, graphic
B $9985,2,2 coordinate lookup value, graphic
B $9987,1,1 eod marker
N $9988 room $71 screen data 2
B $9988,1,1 2 ladders
B $9989,2,2 ladder coordinate lookup values
B $998B,4,4 item placement coordinate lookup values
N $998F room $72 screen data 1
B $998F,2,2 universal screen data $13
B $9991,2,2 universal screen data $17
B $9993,2,2 universal screen data $11
B $9995,2,2 coordinate lookup value, graphic
B $9997,2,2 coordinate lookup value, graphic
B $9999,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $999C,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $999F,1,1 eod marker
N $99A0 room $72 screen data 2
B $99A0,1,1 door (bit 4 door not blown status also set but unnecessary)
B $99A1,1,1 door coordinate lookup value
B $99A2,4,4 item placement coordinate lookup values
N $99A6 room $73 screen data 1
B $99A6,2,2 universal screen data $14
B $99A8,2,2 universal screen data $16
B $99AA,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $99AE,2,2 coordinate lookup value, graphic
B $99B0,2,2 universal screen data $12
B $99B2,2,2 coordinate lookup value, graphic
B $99B4,2,2 coordinate lookup value, graphic
B $99B6,1,1 eod marker
N $99B7 room $73 screen data 2
B $99B7,1,1 2 ladders
B $99B8,2,2 ladder coordinate lookup values
B $99BA,4,4 item placement coordinate lookup values
N $99BE room $74 screen data 1
B $99BE,2,2 universal screen data $99
B $99C0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $99C4,2,2 coordinate lookup value, graphic
B $99C6,2,2 coordinate lookup value, graphic
B $99C8,2,2 coordinate lookup value, graphic
B $99CA,2,2 coordinate lookup value, graphic
B $99CC,2,2 coordinate lookup value, graphic
B $99CE,1,1 eod marker
N $99CF room $74 screen data 2
B $99CF,1,1 no ladders, jukebox or door
B $99D0,4,4 item placement coordinate lookup values
N $99D4 room $75 screen data 1
B $99D4,2,2 universal screen data $17
B $99D6,2,2 universal screen data $9a
B $99D8,2,2 coordinate lookup value, graphic
B $99DA,2,2 universal screen data $18
B $99DC,1,1 eod marker
N $99DD room $75 screen data 2
B $99DD,1,1 4 ladders
B $99DE,4,4 ladder coordinate lookup values
B $99E2,4,4 item placement coordinate lookup values
N $99E6 room $76 screen data 1
B $99E6,2,2 universal screen data $98
B $99E8,2,2 universal screen data $13
B $99EA,2,2 universal screen data $0c
B $99EC,2,2 universal screen data $0a
B $99EE,2,2 coordinate lookup value, graphic
B $99F0,2,2 coordinate lookup value, graphic
B $99F2,1,1 eod marker
N $99F3 room $76 screen data 2
B $99F3,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $99F4,1,1 ladder coordinate lookup value
B $99F5,1,1 door coordinate lookup value
B $99F6,4,4 item placement coordinate lookup values
N $99FA room $77 screen data 1
B $99FA,2,2 universal screen data $14
B $99FC,2,2 coordinate lookup value, graphic
B $99FE,2,2 coordinate lookup value, graphic
B $9A00,2,2 universal screen data $0b
B $9A02,2,2 coordinate lookup value, graphic
B $9A04,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9A07,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9A0A,1,1 eod marker
N $9A0B room $77 screen data 2
B $9A0B,1,1 jukebox + 2 ladders
B $9A0C,2,2 ladder coordinate lookup values
B $9A0E,1,1 jukebox coordinate lookup value
B $9A0F,4,4 item placement coordinate lookup values
N $9A11 room $78 screen data 1
B $9A11,2,2 coordinate lookup value, graphic
B $9A13,2,2 coordinate lookup value, graphic
B $9A15,2,2 universal screen data $75
B $9A17,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A1B,2,2 universal screen data $65
B $9A1D,2,2 coordinate lookup value, graphic
B $9A1F,1,1 eod marker
N $9A22 room $78 screen data 2
B $9A22,1,1 2 ladders
B $9A23,2,2 ladder coordinate lookup values
B $9A25,4,4 item placement coordinate lookup values
N $9A29 room $79 screen data 1
B $9A29,2,2 universal screen data $6d
B $9A2B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A2F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A33,2,2 coordinate lookup value, graphic
B $9A35,2,2 universal screen data $6b
B $9A37,2,2 universal screen data $71
B $9A39,2,2 universal screen data $77
B $9A3B,2,2 universal screen data $64
B $9A3D,2,2 universal screen data $65
B $9A3F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A43,1,1 eod marker
N $9A44 room $79 screen data 2
B $9A44,1,1 2 ladders
B $9A45,2,2 ladder coordinate lookup values
B $9A47,4,4 item placement coordinate lookup values
N $9A4B room $7a screen data 1
B $9A4B,2,2 universal screen data $6d
B $9A4D,2,2 universal screen data $6e
B $9A4F,2,2 universal screen data $89
B $9A51,2,2 coordinate lookup value, graphic
B $9A53,2,2 universal screen data $76
B $9A55,2,2 coordinate lookup value, graphic
B $9A57,1,1 eod marker
N $9A58 room $7a screen data 2
B $9A58,1,1 1 ladder
B $9A59,1,1 ladder coordinate lookup value
B $9A5A,4,4 item placement coordinate lookup values
N $9A5E room $7b screen data 1
B $9A5E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A62,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A66,2,2 universal screen data $63
B $9A68,2,2 universal screen data $73
B $9A6A,2,2 coordinate lookup value, graphic
B $9A6C,2,2 universal screen data $89
B $9A6E,2,2 universal screen data $6f
B $9A70,2,2 universal screen data $6a
B $9A72,2,2 coordinate lookup value, graphic
B $9A74,1,1 eod marker
N $9A75 room $7b screen data 2
B $9A75,1,1 3 ladders
B $9A76,3,3 ladder coordinate lookup values
B $9A79,4,4 item placement coordinate lookup values
N $9A7D room $7c screen data 1
B $9A7D,2,2 universal screen data $1b
B $9A7F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A83,2,2 universal screen data $64
B $9A85,2,2 universal screen data $68
B $9A87,2,2 universal screen data $71
B $9A89,1,1 eod marker
N $9A8A room $7c screen data 2
B $9A8A,1,1 1 ladder
B $9A8B,1,1 ladder coordinate lookup value
B $9A8C,4,4 item placement coordinate lookup values
N $9A90 room $7d screen data 1
B $9A90,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9A94,2,2 universal screen data $88
B $9A96,2,2 universal screen data $20
B $9A98,2,2 universal screen data $67
B $9A9A,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9A9E,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9AA2,2,2 universal screen data $75
B $9AA4,2,2 coordinate lookup value, graphic
B $9AA6,1,1 eod marker
N $9AA7 room $7d screen data 2
B $9AA7,1,1 2 ladders
B $9AA8,2,2 ladder coordinate lookup values
B $9AAA,4,4 item placement coordinate lookup values
N $9AAE room $7e screen data 1
B $9AAE,2,2 universal screen data $8a
B $9AB0,2,2 universal screen data $6d
B $9AB2,2,2 universal screen data $6e
B $9AB4,2,2 universal screen data $1b
B $9AB6,2,2 universal screen data $63
B $9AB8,2,2 universal screen data $71
B $9ABA,2,2 universal screen data $65
B $9ABC,2,2 universal screen data $1a
B $9ABE,1,1 eod marker
N $9ABF room $7e screen data 2
B $9ABF,1,1 no ladders, jukebox or door
B $9AC0,4,4 item placement coordinate lookup values
N $9AC4 room $7f screen data 1
B $9AC4,2,2 universal screen data $6f
B $9AC6,2,2 universal screen data $61
B $9AC8,2,2 universal screen data $64
B $9ACA,2,2 coordinate lookup value, graphic
B $9ACC,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9AD0,2,2 universal screen data $1f
B $9AD2,2,2 coordinate lookup value, graphic
B $9AD4,2,2 coordinate lookup value, graphic
B $9AD6,2,2 coordinate lookup value, graphic
B $9AD8,1,1 eod marker
N $9AD9 room $7f screen data 2
B $9AD9,1,1 4 ladders
B $9ADA,4,4 ladder coordinate lookup values
B $9ADE,4,4 item placement coordinate lookup values
N $9AE2 room $80 screen data 1
B $9AE2,2,2 universal screen data $82
B $9AE4,2,2 coordinate lookup value, graphic
B $9AE6,1,1 eod marker
N $9AE7 room $80 screen data 2
B $9AE7,1,1 no ladders, jukebox or door
B $9AE8,4,4 item placement coordinate lookup values
N $9AEC room $81 screen data 1
B $9AEC,2,2 universal screen data $7f
B $9AEE,1,1 eod marker
N $9AEF room $81 screen data 2
B $9AEF,1,1 no ladders, jukebox or door
B $9AF0,4,4 item placement coordinate lookup values
N $9AF4 room $82 screen data 1
B $9AF4,2,2 universal screen data $7f
B $9AF6,1,1 eod marker
N $9AF7 room $82 screen data 2
B $9AF7,1,1 no ladders, jukebox or door
B $9AF8,4,4 item placement coordinate lookup values
N $9AFC room $83 screen data 1
B $9AFC,2,2 coordinate lookup value, graphic
B $9AFE,2,2 universal screen data $83
B $9B00,1,1 eod marker
N $9B01 room $83 screen data 2
B $9B01,1,1 1 ladder
B $9B02,1,1 ladder coordinate lookup value
B $9B03,4,4 item placement coordinate lookup values
N $9B07 room $84 screen data 1
B $9B07,2,2 universal screen data $82
B $9B09,2,2 coordinate lookup value, graphic
B $9B0B,1,1 eod marker
N $9B0C room $84 screen data 2
B $9B0C,1,1 1 ladder
B $9B0D,1,1 ladder coordinate lookup value
B $9B0E,4,4 item placement coordinate lookup values
N $9B12 room $85 screen data 1
B $9B12,2,2 coordinate lookup value, graphic
B $9B14,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9B17,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B1B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B1F,2,2 coordinate lookup value, graphic
B $9B21,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B25,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B29,2,2 universal screen data $9e
B $9B2B,2,2 universal screen data $21
B $9B2D,1,1 eod marker
N $9B2E room $85 screen data 2
B $9B2E,1,1 2 ladders
B $9B2F,2,2 ladder coordinate lookup values
B $9B31,4,4 item placement coordinate lookup values
N $9B35 room $86 screen data 1
B $9B35,2,2 universal screen data $7f
B $9B37,1,1 eod marker
N $9B38 room $86 screen data 2
B $9B38,1,1 1 ladder
B $9B39,1,1 ladder coordinate lookup value
B $9B3A,4,4 item placement coordinate lookup values
N $9B3E room $87 screen data 1
B $9B3E,2,2 universal screen data $83
B $9B40,2,2 coordinate lookup value, graphic
B $9B42,2,2 coordinate lookup value, graphic
B $9B44,1,1 eod marker
N $9B45 room $87 screen data 2
B $9B45,1,1 no ladders, jukebox or door
B $9B46,4,4 item placement coordinate lookup values
N $9B4A room $88 screen data 1
B $9B4A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B4E,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9B52,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9B56,2,2 coordinate lookup value, graphic
B $9B58,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9B5B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B5F,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B63,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B67,2,2 coordinate lookup value, graphic
B $9B69,1,1 eod marker
N $9B6A room $88 screen data 2
B $9B6A,1,1 2 ladders
B $9B6B,2,2 ladder coordinate lookup values
B $9B6D,4,4 item placement coordinate lookup values
N $9B71 room $89 screen data 1
B $9B71,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B75,2,2 universal screen data $36
B $9B77,2,2 universal screen data $38
B $9B79,2,2 coordinate lookup value, graphic
B $9B7B,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9B7E,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9B81,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B85,1,1 eod marker
N $9B86 room $89 screen data 2
B $9B86,1,1 1 ladder
B $9B87,1,1 ladder coordinate lookup value
B $9B88,4,4 item placement coordinate lookup values
N $9B8C room $8a screen data 1
B $9B8C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B90,2,2 universal screen data $3b
B $9B92,1,1 eod marker
N $9B93 room $8a screen data 2
B $9B93,1,1 1 ladder
B $9B94,1,1 ladder coordinate lookup value
B $9B95,4,4 item placement coordinate lookup values
N $9B99 room $8b screen data 1
B $9B99,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9B9D,2,2 universal screen data $34
B $9B9F,2,2 universal screen data $38
B $9BA1,2,2 coordinate lookup value, graphic
B $9BA3,1,1 eod marker
N $9BA4 room $8b screen data 2
B $9BA4,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9BA5,1,1 ladder coordinate lookup value
B $9BA6,1,1 door coordinate lookup value
B $9BA7,4,4 item placement coordinate lookup values
N $9BAB room $8c screen data 1
B $9BAB,2,2 universal screen data $3b
B $9BAD,1,1 eod marker
N $9BAE room $8c screen data 2
B $9BAE,1,1 1 ladder
B $9BAF,1,1 ladder coordinate lookup value
B $9BB0,4,4 item placement coordinate lookup values
N $9BB4 room $8d screen data 1
B $9BB4,2,2 universal screen data $33
B $9BB6,2,2 coordinate lookup value, graphic
B $9BB8,1,1 eod marker
N $9BB9 room $8d screen data 2
B $9BB9,1,1 no ladders, jukebox or door
B $9BBA,4,4 item placement coordinate lookup values
N $9BBE room $8e screen data 1
B $9BBE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9BC2,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9BC6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9BCA,2,2 universal screen data $24
B $9BCC,2,2 coordinate lookup value, graphic
B $9BCE,2,2 coordinate lookup value, graphic
B $9BD0,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9BD4,2,2 coordinate lookup value, graphic
B $9BD6,1,1 eod marker
N $9BD7 room $8e screen data 2
B $9BD7,1,1 no ladders, jukebox or door
B $9BD8,4,4 item placement coordinate lookup values
N $9BDC room $8f screen data 1
B $9BDC,2,2 universal screen data $2a
B $9BDE,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9BE2,2,2 coordinate lookup value, graphic
B $9BE4,2,2 universal screen data $3d
B $9BE6,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9BE9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9BED,1,1 eod marker
N $9BEE room $8f screen data 2
B $9BEE,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9BEF,1,1 ladder coordinate lookup value
B $9BF0,1,1 door coordinate lookup value
B $9BF1,4,4
N $9BF5 room $90 screen data 1
B $9BF5,2,2 universal screen data $40
B $9BF7,2,2 coordinate lookup value, graphic
B $9BF9,2,2 coordinate lookup value, graphic
B $9BFB,2,2 coordinate lookup value, graphic
B $9BFD,2,2 coordinate lookup value, graphic
B $9BFF,2,2 coordinate lookup value, graphic
B $9C01,1,1 eod marker
N $9C02 room $90 screen data 2
B $9C02,1,1 no ladders, jukebox or door
B $9C03,4,4 item placement coordinate lookup values
N $9C07 room $91 screen data 1
B $9C07,2,2 universal screen data $44
B $9C09,2,2 universal screen data $42
B $9C0B,2,2 coordinate lookup value, graphic
B $9C0D,2,2 coordinate lookup value, graphic
B $9C0F,2,2 coordinate lookup value, graphic
B $9C11,1,1 eod marker
N $9C12 room $91 screen data 2
B $9C12,1,1 2 ladders
B $9C13,2,2 ladder coordinate lookup values
B $9C15,4,4 item placement coordinate lookup values
N $9C19 room $92 screen data 1
B $9C19,2,2 universal screen data $45
B $9C1B,2,2 coordinate lookup value, graphic
B $9C1D,2,2 universal screen data $47
B $9C1F,2,2 coordinate lookup value, graphic
B $9C21,1,1 eod marker
N $9C22 room $92 screen data 2
B $9C22,1,1 no ladders, jukebox or door
B $9C23,4,4 item placement coordinate lookup values
N $9C27 room $93 screen data 1
B $9C27,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9C2B,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9C2F,2,2 coordinate lookup value, graphic
B $9C31,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9C34,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9C38,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9C3C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9C40,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9C44,2,2 coordinate lookup value, graphic
B $9C46,2,2 universal screen data $42
B $9C48,2,2 coordinate lookup value, graphic
B $9C4A,2,2 coordinate lookup value, graphic
B $9C4C,1,1 eod marker
N $9C4D room $93 screen data 2
B $9C4D,1,1 4 ladders
B $9C4E,4,4 ladder coordinate lookup values
B $9C52,4,4 item placement coordinate lookup values
N $9C56 room $94 screen data 1
B $9C56,2,2 coordinate lookup value, graphic
B $9C58,2,2 universal screen data $45
B $9C5A,2,2 coordinate lookup value, graphic
B $9C5C,2,2 coordinate lookup value, graphic
B $9C5E,2,2 universal screen data $47
B $9C60,1,1 eod marker
N $9C61 room $94 screen data 2
B $9C61,1,1 no ladders, jukebox or door
B $9C62,4,4 item placement coordinate lookup values
N $9C66 room $95 screen data 1
B $9C66,2,2 universal screen data $46
B $9C68,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9C6C,2,2 universal screen data $42
B $9C6E,2,2 coordinate lookup value, graphic
B $9C70,1,1 eod marker
N $9C71 room $95 screen data 2
B $9C71,1,1 1 ladder
B $9C72,1,1 ladder coordinate lookup value
B $9C73,4,4 item placement coordinate lookup values
N $9C77 room $96 screen data 1
B $9C77,2,2 universal screen data $3e
B $9C79,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9C7D,2,2 coordinate lookup value, graphic
B $9C7F,1,1 eod marker
N $9C80 room $96 screen data 2
B $9C80,1,1 door + 1 ladder
B $9C81,1,1 ladder coordinate lookup value
B $9C82,1,1 door coordinate lookup value
B $9C83,4,4 item placement coordinate lookup values
N $9C87 room $97 screen data 1
B $9C87,2,2 universal screen data $3f
B $9C89,2,2 universal screen data $93
B $9C8B,2,2 coordinate lookup value, graphic
B $9C8D,2,2 coordinate lookup value, graphic
B $9C8F,1,1 eod marker
N $9C90 room $97 screen data 2
B $9C90,1,1 1 ladder
B $9C91,1,1 ladder coordinate lookup value
B $9C92,4,4 item placement coordinate lookup values
N $9C96 room $98 screen data 1
B $9C96,2,2 universal screen data $8b
B $9C98,2,2 universal screen data $90
B $9C9A,2,2 coordinate lookup value, graphic
B $9C9C,1,1 eod marker
N $9C9D room $98 screen data 2
B $9C9D,1,1 no ladders, jukebox or door
B $9C9E,4,4 item placement coordinate lookup values
N $9CA2 room $99 screen data 1
B $9CA2,2,2 coordinate lookup value, graphic
B $9CA4,2,2 universal screen data $91
B $9CA6,2,2 coordinate lookup value, graphic
B $9CA8,1,1 eod marker
N $9CA9 room $99 screen data 2
B $9CA9,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9CAA,1,1 ladder coordinate lookup value
B $9CAB,1,1 door coordinate lookup value
B $9CAC,4,4 item placement coordinate lookup values
N $9CB0 room $9a screen data 1
B $9CB0,2,2 coordinate lookup value, graphic
B $9CB2,2,2 coordinate lookup value, graphic
B $9CB4,2,2 coordinate lookup value, graphic
B $9CB6,2,2 coordinate lookup value, graphic
B $9CB8,2,2 coordinate lookup value, graphic
B $9CBA,1,1 eod marker
N $9CBB room $9a screen data 2
B $9CBB,1,1 1 ladder
B $9CBC,1,1 ladder coordinate lookup value
B $9CBD,4,4 item placement coordinate lookup values
N $9CC1 room $9b screen data 1
B $9CC1,2,2 universal screen data $95
B $9CC3,2,2 coordinate lookup value, graphic
B $9CC5,2,2 coordinate lookup value, graphic
B $9CC7,2,2 coordinate lookup value, graphic
B $9CC9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9CCD,2,2 coordinate lookup value, graphic
B $9CCF,2,2 coordinate lookup value, graphic
B $9CD1,1,1 eod marker
N $9CD2 room $9b screen data 2
B $9CD2,1,1 door + 1 ladder
B $9CD3,1,1 ladder coordinate lookup value
B $9CD4,1,1 door coordinate lookup value
B $9CD5,4,4 item placement coordinate lookup values
N $9CD9 room $9c screen data 1
B $9CD9,2,2 coordinate lookup value, graphic
B $9CDB,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9CDE,2,2 coordinate lookup value, graphic
B $9CE0,2,2 coordinate lookup value, graphic
B $9CE2,2,2 coordinate lookup value, graphic
B $9CE4,1,1 eod marker
N $9CE5 room $9c screen data 2
B $9CE5,1,1 1 ladder
B $9CE6,1,1 ladder coordinate lookup value
B $9CE7,4,4 item placement coordinate lookup values
N $9CEB room $9d screen data 1
B $9CEB,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9CEF,2,2 coordinate lookup value, graphic
B $9CF1,2,2 coordinate lookup value, graphic
B $9CF3,2,2 universal screen data $8b
B $9CF5,2,2 coordinate lookup value, graphic
B $9CF7,1,1 eod marker
N $9CF8 room $9d screen data 2
B $9CF8,1,1 2 ladders
B $9CF9,2,2 ladder coordinate lookup values
B $9CFB,4,4 item placement coordinate lookup values
N $9CFF room $9e screen data 1
B $9CFF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9D03,2,2 coordinate lookup value, graphic
B $9D05,2,2 universal screen data $8d
B $9D07,2,2 coordinate lookup value, graphic
B $9D09,2,2 coordinate lookup value, graphic
B $9D0B,2,2 coordinate lookup value, graphic
B $9D0D,1,1 eod marker
N $9D0E room $9e screen data 2
B $9D0E,1,1 no ladders, jukebox or door
B $9D0F,4,4 ladder coordinate lookup values
N $9D13 room $9f screen data 1
B $9D13,2,2 coordinate lookup value, graphic
B $9D15,2,2 universal screen data $90
B $9D17,2,2 universal screen data $8c
B $9D19,2,2 coordinate lookup value, graphic
B $9D1B,2,2 coordinate lookup value, graphic
B $9D1D,2,2 coordinate lookup value, graphic
B $9D1F,1,1 eod marker
N $9D20 room $9f screen data 2
B $9D20,1,1 door + 2 ladders
B $9D21,2,2 ladder coordinate lookup values
B $9D23,1,1 door coordinate lookup value
B $9D24,4,4 item placement coordinate lookup values
N $9D28 room $a0 screen data 1
B $9D28,2,2 universal screen data $08
B $9D2A,2,2 coordinate lookup value, graphic
B $9D2C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9D30,2,2 coordinate lookup value, graphic
B $9D32,2,2 coordinate lookup value, graphic
B $9D34,2,2 coordinate lookup value, graphic
B $9D36,1,1 eod marker
N $9D37 room $a0 screen data 2
B $9D37,1,1 no ladders, jukebox or door
B $9D38,4,4 item placement coordinate lookup values
N $9D3C room $a1 screen data 1
B $9D3C,2,2 coordinate lookup value, graphic
B $9D3E,2,2 coordinate lookup value, graphic
B $9D40,2,2 universal screen data $08
B $9D42,2,2 universal screen data $4f
B $9D44,2,2 coordinate lookup value, graphic
B $9D46,2,2 coordinate lookup value, graphic
B $9D48,2,2 coordinate lookup value, graphic
B $9D4A,2,2 coordinate lookup value, graphic
B $9D4C,2,2 coordinate lookup value, graphic
B $9D4E,1,1 eod marker
N $9D4F room $a1 screen data 2
B $9D4F,1,1 1 ladder
B $9D50,1,1 ladder coordinate lookup value
B $9D51,4,4 item placement coordinate lookup values
N $9D55 room $a2 screen data 1
B $9D55,2,2 universal screen data $54
B $9D57,2,2 universal screen data $55
B $9D59,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9D5C,1,1 eod marker
N $9D5D room $a2 screen data 2
B $9D5D,1,1 door
B $9D5E,1,1 door coordinate lookup value
B $9D5F,4,4 item placement coordinate lookup values
N $9D63 room $a3 screen data 1
B $9D63,2,2 universal screen data $54
B $9D65,1,1 eod marker
N $9D66 room $a3 screen data 2
B $9D66,1,1 no ladders, jukebox or door
B $9D67,4,4 item placement coordinate lookup values
N $9D6B room $a4 screen data 1
B $9D6B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9D6F,2,2 coordinate lookup value, graphic
B $9D71,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9D74,2,2 coordinate lookup value, graphic
B $9D76,2,2 universal screen data $07
B $9D78,2,2 coordinate lookup value, graphic
B $9D7A,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9D7D,2,2 coordinate lookup value, graphic
B $9D7F,2,2 coordinate lookup value, graphic
B $9D81,1,1 eod marker
N $9D82 room $a4 screen data 2
B $9D82,1,1 3 ladders
B $9D83,3,3 ladder coordinate lookup values
B $9D86,4,4 item placement coordinate lookup values
N $9D8A room $a5 screen data 1
B $9D8A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9D8E,2,2 universal screen data $08
B $9D90,2,2 universal screen data $55
B $9D92,1,1 eod marker
N $9D93 room $a5 screen data 2
B $9D93,1,1 door
B $9D94,1,1 door coordinate lookup value
B $9D95,4,4 item placement coordinate lookup values
N $9D99 room $a6 screen data 1
B $9D99,2,2 universal screen data $08
B $9D9B,2,2 universal screen data $50
B $9D9D,1,1 eod marker
N $9D9E room $a6 screen data 2
B $9D9E,1,1 no ladders, jukebox or door
B $9D9F,4,4 item placement coordinate lookup values
N $9DA3 room $a7 screen data 1
B $9DA3,2,2 universal screen data $08
B $9DA5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9DA9,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9DAC,2,2 coordinate lookup value, graphic
B $9DAE,1,1 eod marker
N $9DAF room $a7 screen data 2
B $9DAF,1,1 2 ladders
B $9DB0,2,2 ladder coordinate lookup values
B $9DB2,4,4 item placement coordinate lookup values
N $9DB6 room $a8 screen data 1
B $9DB6,2,2 universal screen data $a4
B $9DB8,2,2 universal screen data $08
B $9DBA,2,2 coordinate lookup value, graphic
B $9DBC,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9DBF,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9DC3,2,2 coordinate lookup value, graphic
B $9DC5,2,2 coordinate lookup value, graphic
B $9DC7,2,2 coordinate lookup value, graphic
B $9DC9,2,2 coordinate lookup value, graphic
B $9DCB,2,2 coordinate lookup value, graphic
B $9DCD,1,1 eod marker
N $9DCE room $a8 screen data 2
B $9DCE,1,1 1 ladder
B $9DCF,1,1 ladder coordinate lookup value
B $9DD0,4,4 item placement coordinate lookup values
N $9DD4 room $a9 screen data 1
B $9DD4,2,2 universal screen data $08
B $9DD6,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9DD9,2,2 coordinate lookup value, graphic
B $9DDB,2,2 coordinate lookup value, graphic
B $9DDD,2,2 coordinate lookup value, graphic
B $9DDF,2,2 coordinate lookup value, graphic
B $9DE1,2,2 coordinate lookup value, graphic
B $9DE3,1,1 eod marker
N $9DE4 room $a9 screen data 2
B $9DE4,1,1 no ladders, jukebox or door
B $9DE5,4,4 item placement coordinate lookup values
N $9DE9 room $aa screen data 1
B $9DE9,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9DEC,2,2 universal screen data $9f
B $9DEE,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9DF1,1,1 eod marker
N $9DF2 room $aa screen data 2
B $9DF2,1,1 1 ladder
B $9DF3,1,1 ladder coordinate lookup value
B $9DF4,4,4 item placement coordinate lookup values
N $9DF8 room $ab screen data 1
B $9DF8,2,2 coordinate lookup value, graphic
B $9DFA,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9DFD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E01,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E05,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E09,2,2 universal screen data $02
B $9E0B,2,2 coordinate lookup value, graphic
B $9E0D,1,1 eod marker
N $9E0E room $ab screen data 2
B $9E0E,1,1 2 ladders
B $9E0F,2,2 ladder coordinate lookup values
B $9E11,4,4 item placement coordinate lookup values
N $9E15 room $ac screen data 1
B $9E15,2,2 coordinate lookup value, graphic
B $9E17,2,2 universal screen data $9f
B $9E19,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9E1C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E20,1,1 eod marker
N $9E21 room $ac screen data 2
B $9E21,1,1 no ladders, jukebox or door
B $9E22,4,4 item placement coordinate lookup values
N $9E26 room $ad screen data 1
B $9E26,2,2 universal screen data $08
B $9E28,2,2 coordinate lookup value, graphic
B $9E2A,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E2E,2,2 coordinate lookup value, graphic
B $9E30,1,1 eod marker
N $9E31 room $ad screen data 2
B $9E31,1,1 no ladders, jukebox or door
B $9E32,4,4 item placement coordinate lookup values
N $9E36 room $ae screen data 1
B $9E36,2,2 universal screen data $08
B $9E38,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9E3B,2,2 coordinate lookup value, graphic
B $9E3D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E41,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E45,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E49,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9E4C,2,2 coordinate lookup value, graphic
B $9E4E,2,2 coordinate lookup value, graphic
B $9E50,1,1 eod marker
N $9E51 room $ae screen data 2
B $9E51,1,1 1 ladder
B $9E52,1,1 ladder coordinate lookup value
B $9E53,4,4 item placement coordinate lookup values
N $9E57 room $af screen data 1
B $9E57,2,2 universal screen data $08
B $9E59,3,3 draw normal graphic and mirror image of graphic side by side, coordinate lookup value, graphic
B $9E5C,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E60,2,2 universal screen data $3d
B $9E62,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9E66,2,2 coordinate lookup value, graphic
B $9E68,1,1 eod marker
N $9E69 room $af screen data 2
B $9E69,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9E6A,1,1 ladder coordinate lookup value
B $9E6B,1,1 door coordinate lookup value
B $9E6C,4,4 item placement coordinate lookup values
N $9E70 room $b0 screen data 1
B $9E70,2,2 universal screen data $96
B $9E72,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9E75,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9E78,2,2 universal screen data $9c
B $9E7A,1,1 eod marker
N $9E7B room $b0 screen data 2
B $9E7B,1,1 2 ladders
B $9E7C,2,2 ladder coordinate lookup values
B $9E7E,4,4 item placement coordinate lookup values
N $9E82 room $b1 screen data 1
B $9E82,2,2 universal screen data $0e
B $9E84,2,2 universal screen data $9d
B $9E86,2,2 universal screen data $15
B $9E88,2,2 coordinate lookup value, graphic
B $9E8A,2,2 coordinate lookup value, graphic
B $9E8C,1,1 eod marker
N $9E8D room $b1 screen data 2
B $9E8D,1,1 door + 1 ladder
B $9E8E,1,1 ladder coordinate lookup value
B $9E8F,1,1 door coordinate lookup values
B $9E90,4,4 item placement coordinate lookup values
N $9E94 room $b2 screen data 1
B $9E94,2,2 universal screen data $0e
B $9E96,2,2 universal screen data $0f
B $9E98,1,1 eod marker
N $9E99 room $b2 screen data 2
B $9E99,1,1 door
B $9E9A,1,1 door coordinate lookup value
B $9E9B,4,4 item placement coordinate lookup values
N $9E9F room $b3 screen data 1
B $9E9F,2,2 universal screen data $97
B $9EA1,2,2 coordinate lookup value, graphic
B $9EA3,2,2 coordinate lookup value, graphic
B $9EA5,2,2 coordinate lookup value, graphic
B $9EA7,2,2 coordinate lookup value, graphic
B $9EA9,2,2 universal screen data $9d
B $9EAB,1,1 eod marker
N $9EAC room $b3 screen data 2
B $9EAC,1,1 2 ladders
B $9EAD,2,2 ladder coordinate lookup values
B $9EAF,4,4 item placement coordinate lookup values
N $9EB3 room $b4 screen data 1
B $9EB3,2,2 coordinate lookup value, graphic
B $9EB5,2,2 coordinate lookup value, graphic
B $9EB7,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9EBA,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9EBD,2,2 universal screen data $09
B $9EBF,2,2 coordinate lookup value, graphic
B $9EC1,2,2 coordinate lookup value, graphic
B $9EC3,2,2 coordinate lookup value, graphic
B $9EC5,1,1 eod marker
N $9EC6 room $b4 screen data 2
B $9EC6,1,1 1 ladder
B $9EC7,1,1 ladder coordinate lookup value
B $9EC8,4,4 item placement coordinate lookup values
N $9ECC room $b5 screen data 1
B $9ECC,2,2 universal screen data $96
B $9ECE,2,2 coordinate lookup value, graphic
B $9ED0,2,2 coordinate lookup value, graphic
B $9ED2,2,2 universal screen data $0f
B $9ED4,2,2 universal screen data $15
B $9ED6,1,1 eod marker
N $9ED7 room $b5 screen data 2
B $9ED7,1,1 door + 2 ladders
B $9ED8,2,2 ladder coordinate lookup values
B $9EDA,1,1 door coordinate lookup value
B $9EDB,4,4 item placement coordinate lookup values
N $9EDF room $b6 screen data 1
B $9EDF,2,2 universal screen data $05
B $9EE1,2,2 universal screen data $18
B $9EE3,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9EE6,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9EEA,1,1 eod marker
N $9EEB room $b6 screen data 2
B $9EEB,1,1 door + 2 ladders
B $9EEC,2,2 ladder coordinate lookup values
B $9EEE,1,1 door coordinate lookup value
B $9EEF,4,4 item placement coordinate lookup values
N $9EF3 room $b7 screen data 1
B $9EF3,2,2 universal screen data $97
B $9EF5,2,2 universal screen data $0c
B $9EF7,2,2 coordinate lookup value, graphic
B $9EF9,2,2 coordinate lookup value, graphic
B $9EFB,1,1 eod marker
N $9EFC room $b7 screen data 2
B $9EFC,1,1 door + 1 ladder (bit 4 door not blown status also set but unnecessary)
B $9EFD,1,1 ladder coordinate lookup value
B $9EFE,1,1 door coordinate lookup value
B $9EFF,4,4 item placement coordinate lookup values
N $9F03 room $b8 screen data 1
B $9F03,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F07,2,2 coordinate lookup value, graphic
B $9F09,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9F0D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F11,2,2 universal screen data $5b
B $9F13,2,2 universal screen data $74
B $9F15,2,2 universal screen data $73
B $9F17,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F1B,2,2 coordinate lookup value, graphic
B $9F1D,2,2 coordinate lookup value, graphic
B $9F1F,1,1 eod marker
N $9F20 room $b8 screen data 2
B $9F20,1,1 1 ladder
B $9F21,1,1 ladder coordinate lookup value
B $9F22,4,4 item placement coordinate lookup values
N $9F26 room $b9 screen data 1
B $9F26,2,2 universal screen data $94
B $9F28,2,2 universal screen data $6b
B $9F2A,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9F2E,2,2 coordinate lookup value, graphic
B $9F30,2,2 coordinate lookup value, graphic
B $9F32,1,1 eod marker
N $9F33 room $b9 screen data 2
B $9F33,1,1 2 ladders
B $9F34,2,2 ladder coordinate lookup values
B $9F36,4,4 item placement coordinate lookup values
N $9F3A room $ba screen data 1
B $9F3A,2,2 universal screen data $94
B $9F3C,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9F40,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9F44,2,2 coordinate lookup value, graphic
B $9F46,1,1 eod marker
N $9F47 room $ba screen data 2
B $9F47,1,1 1 ladder
B $9F48,1,1 ladder coordinate lookup value
B $9F49,4,4 item placement coordinate lookup values
N $9F4D room $bb screen data 1
B $9F4D,2,2 universal screen data $70
B $9F4F,2,2 universal screen data $88
B $9F51,2,2 coordinate lookup value, graphic
B $9F53,2,2 universal screen data $67
B $9F55,2,2 universal screen data $77
B $9F57,2,2 coordinate lookup value, graphic
B $9F59,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F5D,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F61,2,2 coordinate lookup value, graphic
B $9F63,4,4 draw vertical, coordinate lookup value, graphic, gap+length
B $9F67,2,2 universal screen data $5c
B $9F69,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F6D,1,1 eod marker
N $9F6E room $bb screen data 2
B $9F6E,1,1 2 ladders
B $9F6F,2,2 ladder coordinate lookup values
B $9F71,4,4 item placement coordinate lookup values
N $9F75 room $bc screen data 1
B $9F75,2,2 universal screen data $89
B $9F77,2,2 universal screen data $1b
B $9F79,2,2 universal screen data $76
B $9F7B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F7F,1,1 eod marker
N $9F80 room $bc screen data 2
B $9F80,1,1 door (bit 4 door not blown status also set but unnecessary)
B $9F81,1,1 door coordinate lookup value
B $9F82,4,4 item placement coordinate lookup values
N $9F86 room $bd screen data 1
B $9F86,2,2 universal screen data $8a
B $9F88,2,2 universal screen data $65
B $9F8A,2,2 universal screen data $6a
B $9F8C,2,2 universal screen data $74
B $9F8E,1,1 eod marker
N $9F8F room $bd screen data 2
B $9F8F,1,1 door + 1 ladder
B $9F90,1,1 ladder coordinate lookup value
B $9F91,1,1 door coordinate lookup value
B $9F92,4,4 item placement coordinate lookup values
N $9F96 room $be screen data 1
B $9F96,2,2 coordinate lookup value, graphic
B $9F98,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9F9B,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9F9F,2,2 universal screen data $8a
B $9FA1,2,2 universal screen data $65
B $9FA3,2,2 universal screen data $6c
B $9FA5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9FA9,2,2 universal screen data $1a
B $9FAB,1,1 eod marker
N $9FAC room $be screen data 2
B $9FAC,1,1 door + 3 ladders
B $9FAD,3,3 ladder coordinate lookup values
B $9FB0,1,1 door coordinate lookup value
B $9FB1,4,4 item placement coordinate lookup values
N $9FB5 room $bf screen data 1
B $9FB5,2,2 universal screen data $64
B $9FB7,2,2 universal screen data $70
B $9FB9,2,2 universal screen data $93
B $9FBB,2,2 coordinate lookup value, graphic
B $9FBD,2,2 coordinate lookup value, graphic
B $9FBF,1,1 eod marker
N $9FC0 room $bf screen data 2
B $9FC0,1,1 door + 3 ladders
B $9FC1,8,3,1,4
N $9FC9 room $c0 screen data 1
B $9FC9,2,2 coordinate lookup value, graphic
B $9FCB,2,2 coordinate lookup value, graphic
B $9FCD,2,2 coordinate lookup value, graphic
B $9FCF,2,2 coordinate lookup value, graphic
B $9FD1,2,2 coordinate lookup value, graphic
B $9FD3,2,2 coordinate lookup value, graphic
B $9FD5,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9FD9,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9FDD,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9FE1,2,2 coordinate lookup value, graphic
B $9FE3,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9FE6,2,2 coordinate lookup value, graphic
B $9FE8,2,2 coordinate lookup value, graphic
B $9FEA,3,3 draw mirrored image of graphic, coordinate lookup value, graphic
B $9FED,2,2 coordinate lookup value, graphic
B $9FEF,2,2 coordinate lookup value, graphic
B $9FF1,4,4 draw horizontal, coordinate lookup value, graphic, gap+length
B $9FF5,2,2 coordinate lookup value, graphic
B $9FF7,2,2 coordinate lookup value, graphic
B $9FF9,2,2 coordinate lookup value, graphic
B $9FFB,1,1 eod marker
b $9FFC unused bytes
b $A000 graphic lookup table
W $A000,2,2 $00  ; points to buffer (various)
W $A002,2,2 $01  ; 5*8  ; 'SCORE'
W $A004,2,2 $02  ; 1*8  ; right arrow (solid)
W $A006,2,2 $03  ; 1*8  ; right arrow (outline)
W $A008,2,2 $04  ; 7*8  ; top half 'energy'
W $A00A,2,2 $05  ; 7*8  ; bottom half 'energy'
W $A00C,2,2 $06  ; 5*8  ; 'HELD'
W $A00E,2,2 $07  ; 1*16 ; single energy bar graphic (when energy odd number)
W $A010,2,2 $08  ; 1*16 ; double energy bar graphic (when energy even number)
W $A012,2,2 $09  ; 1*8  ; red score border left edge
W $A014,2,2 $0a  ; 1*8  ; red score border
W $A016,2,2 $0b  ; 1*8  ; red score border right edge
W $A018,2,2 $0c         ; unused
W $A01A,2,2 $0d  ; 1*16 ; red jetty post (as found on island 2 and 7)
W $A01C,2,2 $0e  ; 1*8  ; green jetty platform (as found on island 2 and 7)
W $A01E,2,2 $0f  ; 2*32 ; door blowing open 1
W $A020,2,2 $10  ; 2*32 ; door blowing open 2
W $A022,2,2 $11  ; 2*32 ; door blowing open 3
W $A024,2,2 $12  ; 2*32 ; door blowing open 4 (BOOM!)
W $A026,2,2 $13  ; 3*48 ; gargoyle LHS (used in rooms $28,$2c,$2d,$6d,$a8)
W $A028,2,2 $14  ; 7*24 ; 'MIRR' (MIRRORSOFT)
W $A02A,2,2 $15  ; 7*24 ; 'RORS' (MIRRORSOFT)
W $A02C,2,2 $16  ; 7*24 ; 'SOFT' (MIRRORSOFT)
W $A02E,2,2 $17  ; 2*8  ; small green graphic on blimp
W $A030,2,2 $18  ; 3*48 ; RHS of airship (position= after 'MIRRORSOFT')
W $A032,2,2 $19  ; 3*56 ; RHS of airship (position= furthestmost right)
W $A034,2,2 $1a  ; 1*16 ; airship edging (appears under the 'M' and 'T' in 'MIRRORSOFT')
W $A036,2,2 $1b  ; 1*16 ; airship edging (appears under the 'IR' and 'OF' in 'MIRRORSOFT')
W $A038,2,2 $1c  ; 1*16 ; airship edging (appears under the 'RORS' in 'MIRRORSOFT')
W $A03A,2,2 $1d  ; 5*40 ; LHS of airship (position= to left of 'MIRRORSOFT')
W $A03C,2,2 $1e  ; 4*8  ; top LHS of airship pod (position= left of ladder)
W $A03E,2,2 $1f  ; 4*8  ; bottom LHS of airship pod (position= left of ladder)
W $A040,2,2 $20  ; 4*8  ; top RHS of airship pod (position= left of propellor)
W $A042,2,2 $21  ; 4*8  ; bottom RHS of airship pod (position= left of propellor)
W $A044,2,2 $22  ; 2*16 ; pod support beam upper
W $A046,2,2 $23  ; 2*8  ; pod support beam lower
W $A048,2,2 $24  ; 1*16 ; middle section of airship pod
W $A04A,2,2 $25  ; 2*32 ; yellow pillar (found on island 3)
W $A04C,2,2 $26  ; 2*8  ; marble paving (also on top of 3 pillars) (found on island 3)
W $A04E,2,2 $27  ; 1*24 ; magenta gargoyle
W $A050,2,2 $28  ; 1*48 ; upper 2 face carvings (used in rooms $2a,$2c,$6a,$6c)
W $A052,2,2 $29  ; 1*48 ; lower 2 face carvings (used in rooms $2a,$2c)
W $A054,2,2 $2a  ; 1*16 ; pillar outer LHS (used in rooms $2a,$2c,$6a,$6c)
W $A056,2,2 $2b  ; 1*16 ; pillar outer RHS (used in rooms $2a,$2c,$6a,$6c)
W $A058,2,2 $2c  ; 4*16 ; face carvings pillar top/bottom decoration (found on island 3)
W $A05A,2,2 $2d  ; 8*8  ; grass
W $A05C,2,2 $2e        ; unused
W $A05E,2,2 $2f        ; unused
W $A060,2,2 $30  ; 2*16 ; japanese writing graphic (used in rooms $2c,$2d,$2e,$2f,$6c,$6d,$6e)
W $A062,2,2 $31  ; 1*8  ; steps (as found on island 3 and as platforms at RHS of island 6)
W $A064,2,2 $32  ; 8*40 ; yellow earth cliff top (found on island 2)
W $A066,2,2 $33  ; 8*24 ; yellow earth bottom
W $A068,2,2 $34        ; unused
W $A06A,2,2 $35        ; unused
W $A06C,2,2 $36  ; 8*8  ; chalk earth (found under grass on island 3)
W $A06E,2,2 $37  ; 2*48 ; jukebox LHS
b $A070 propeller graphics
W $A070,2,2 $38  ; 1*40 ; propeller
W $A072,2,2 $39  ; 1*40 ; propeller
W $A074,2,2 $3a  ; 1*24 ; propeller housing
W $A076,2,2 $3b  ; 1*24 ; propeller
W $A078,2,2 $3c  ; 2*8  ; ladder section
W $A07A,2,2 $3d  ; 2*8  ; ladder section
W $A07C,2,2 $3e  ; 2*8  ; green platforms (found on island 3)
W $A07E,2,2 $3f  ; 1*16 ; door handle (red doors)
W $A080,2,2 $40  ; 1*32 ; door (red doors)
W $A082,2,2 $41  ; 2*8  ; brick wall
W $A084,2,2 $42  ; 1*8  ; tightrope
W $A086,2,2 $43  ; 3*56 ; LHS yellow earth vertical section
W $A088,2,2 $44  ; 1*40 ; LHS yellow earth section
W $A08A,2,2 $45  ; 1*16 ; LHS yellow earth section
W $A08C,2,2 $46  ; 2*16 ; LHS yellow earth section
W $A08E,2,2 $47  ; 2*16 ; RHS yellow earth section
W $A090,2,2 $48  ; 8*16 ; yellow earth platform
W $A092,2,2 $49  ; 2*16 ; flame torch
W $A094,2,2 $4a  ; 2*48 ; black/white face with headdress (found on island 3)
W $A096,2,2 $4b  ; 2*56 ; white/black '88' decoration (found on island 3)
W $A098,2,2 $4c  ; 4*8  ; green platform (found on island 4)
W $A09A,2,2 $4d  ; 2*48 ; cyan statue clutching babies (found on island 3)
W $A09C,2,2 $4e  ; 4*8  ; white platform resting on grass (found on island 3)
W $A09E,2,2 $4f  ; 1*24 ; red post (found on island 2)
W $A0A0,2,2 $50  ; 7*32 ; tree foliage
W $A0A2,2,2 $51  ; 7*32 ; tree foliage
W $A0A4,2,2 $52  ; 3*32 ; tree foliage (berries) (found on level 3)
W $A0A6,2,2 $53  ; 1*24 ; yellow earth platform
W $A0A8,2,2 $54  ; 1*32 ; yellow earth stalactite (found on island 2)
W $A0AA,2,2 $55  ; 6*8  ; yellow earth weak bridge
W $A0AC,2,2 $56  ; 2*24 ; skeleton
W $A0AE,2,2 $57  ; 2*16 ; tall grass
W $A0B0,2,2 $58        ; unused
W $A0B2,2,2 $59  ; 1*24 ; yellow stripe roof (found on island 3)
W $A0B4,2,2 $5a  ; 1*24 ; yellow stripe roof LHS edge (found on island 3)
W $A0B6,2,2 $5b  ; 8*24 ; red earth platform (found on island 1)
W $A0B8,2,2 $5c  ; 1*24 ; white platform support (found on island 1)
W $A0BA,2,2 $5d  ; 1*8  ; white platform
W $A0BC,2,2 $5e  ; 1*8  ; vertical girder support
W $A0BE,2,2 $5f  ; 3*8  ; girder base
W $A0C0,2,2 $60  ; 1*8  ; girder cap
W $A0C2,2,2 $61  ; 1*8  ; horizontal girder platform
W $A0C4,2,2 $62  ; 1*24 ; LHS earth section (found on island 1)
W $A0C6,2,2 $63  ; 3*8  ; magenta and yellow graphic (found on island 1)
W $A0C8,2,2 $64  ; 2*16 ; fuel
W $A0CA,2,2 $65  ; 2*16 ; record
W $A0CC,2,2 $66  ; 2*16 ; bomb
W $A0CE,2,2 $67  ; 2*16 ; goggles
W $A0D0,2,2 $68  ; 2*16 ; mike
W $A0D2,2,2 $69  ; 2*16 ; camera
W $A0D4,2,2 $6a  ; 2*16 ; time bomb
W $A0D6,2,2 $6b  ; 2*16 ; fan
W $A0D8,2,2 $6c  ; 2*16 ; mandolin
W $A0DA,2,2 $6d  ; 2*16 ; scissors
W $A0DC,2,2 $6e  ; 2*16 ; snips
W $A0DE,2,2 $6f  ; 2*16 ; pump
W $A0E0,2,2 $70  ; 2*16 ; engine
W $A0E2,2,2 $71  ; 2*16 ; dumbbell
W $A0E4,2,2 $72  ; 2*16 ; jack
W $A0E6,2,2 $73  ; 2*16 ; boots
W $A0E8,2,2 $74  ; 2*16 ; crossbow
W $A0EA,2,2 $75  ; 2*16 ; feather
W $A0EC,2,2 $76  ; 2*16 ; corkscrew
W $A0EE,2,2 $77  ; 2*16 ; gem
W $A0F0,2,2 $78  ; 2*16 ; mask
W $A0F2,2,2 $79  ; 2*16 ; snake
W $A0F4,2,2 $7a  ; 2*16 ; skull
W $A0F6,2,2 $7b  ; 2*16 ; shell
W $A0F8,2,2 $7c  ; 2*16 ; aqualung
W $A0FA,2,2 $7d  ; 2*16 ; torch
W $A0FC,2,2 $7e  ; 2*16 ; drill
W $A0FE,2,2 $7f  ; 2*16 ; food mixer
W $A100,2,2 $80  ; 2*16 ; grapes
W $A102,2,2 $81  ; 2*16 ; magenta glass
W $A104,2,2 $82  ; 2*16 ; white glass
W $A106,2,2 $83  ; 2*16 ; chicken leg
W $A108,2,2 $84  ; 2*16 ; cherries
W $A10A,2,2 $85  ; 2*16 ; ice cream
W $A10C,2,2 $86  ; 2*16 ; mushroom
W $A10E,2,2 $87  ; 2*16 ; cup of tea
W $A110,2,2 $88  ; 1*8  ; horizontal pipe
W $A112,2,2 $89  ; 2*24 ; yellow hanging decorations (found on island 7)
W $A114,2,2 $8a  ; 1*8  ; vertical pipe 1 (mirror of vertical pipe 2)
W $A116,2,2 $8b  ; 1*8  ; bright blue girder type decoration (found under yellow japanese roofs)
W $A118,2,2 $8c  ; 2*16 ; lower RHS pipe bend
W $A11A,2,2 $8d  ; 3*16 ; pipe valve
W $A11C,2,2 $8e  ; 2*16 ; stop tap
W $A11E,2,2 $8f  ; 1*8  ; vertical bright red air duct (found on island 1)
W $A120,2,2 $90  ; 7*32 ; red roof with green dragon LHS (tail) (found on island 7)
W $A122,2,2 $91  ; 1*8  ; LHS lower bright red air duct corner piece (found on island 1)
W $A124,2,2 $92  ; 1*8  ; horizontal bright red air duct (found on island 1)
W $A126,2,2 $93  ; 5*24 ; blue power guages (found on island 1)
W $A128,2,2 $94  ; 1*24 ; yellow vertical bamboo (found on island 7)
W $A12A,2,2 $95  ; 3*8  ; yellow horizontal bamboo (found on island 7)
W $A12C,2,2 $96  ; 7*32 ; red roof with green dragon RHS (body/head) (found on island 7)
W $A12E,2,2 $97  ; 5*32 ; white moster head (facing left) (found on island 7)
W $A130,2,2 $98  ; 4*8  ; yellow/red weak bridge
W $A132,2,2 $99  ; 1*24 ; LHS section japanese umbrellas
W $A134,2,2 $9a  ; 1*8  ; vertical pipe 2 (mirror of vertical pipe 1)
W $A136,2,2 $9b  ; 2*16 ; upper LHS pipe bend
W $A138,2,2 $9c  ; 1*8  ; helter skelter pillar
W $A13A,2,2 $9d  ; 1*8  ; RHS lower bright red air duct corner piece (found on island 1)
W $A13C,2,2 $9e  ; 2*24 ; japanese umbrellas
W $A13E,2,2 $9f  ; 3*24 ; blitzen flag
W $A140,2,2 $a0  ; 1*24 ; RHS section japanese umbrellas
W $A142,2,2 $a1  ; 1*8  ; musical note (above number of records played)
W $A144,2,2 $a2  ; 2*24 ; green statue (found on island 7)
W $A146,2,2 $a3  ; 5*16 ; red car
W $A148,2,2 $a4  ; 7*32 ; green/yellow car, blue truck and white volkswagen
W $A14A,2,2 $a5  ; 6*16 ; magenta car
W $A14C,2,2 $a6  ; 5*8  ; 'NO SMOKING'
W $A14E,2,2 $a7  ; 1*40 ; parking meter
W $A150,2,2 $a8  ; 2*24 ; blue/white parking sign
W $A152,2,2 $a9  ; 2*24 ; traffic cone
W $A154,2,2 $aa  ; 1*16 ; black and white chevrons
W $A156,2,2 $ab  ; 2*32 ; petrol pump
W $A158,2,2 $ac  ; 1*24 ; traffic light
W $A15A,2,2 $ad  ; 2*24 ; blue/white up arrow
W $A15C,2,2 $ae  ; 3*16 ; blue/white left and right arrows
W $A15E,2,2 $af  ; 2*8  ; red platforms (found at far left of island 6)
W $A160,2,2 $b0  ; 4*16 ; cloud
W $A162,2,2 $b1  ; 3*16 ; eye (found on island 5)
W $A164,2,2 $b2  ; 5*24 ; black/white dotted platforms (found on island 6)
W $A166,2,2 $b3  ; 2*40 ; white pillar (found on level 8)
W $A168,2,2 $b4  ; 4*16 ; 'EXIT' sign
W $A16A,2,2 $b5  ; 4*32 ; red/yellow picture (found on island 5)
W $A16C,2,2 $b6  ; 4*32 ; blue/white picture (found on island 5)
W $A16E,2,2 $b7  ; 6*32 ; hand graphic (pointing left)
W $A170,2,2 $b8        ; unused
W $A172,2,2 $b9  ; 3*40 ; man and child with umbrellas
W $A174,2,2 $ba  ; 2*56 ; finger
W $A176,2,2 $bb  ; 4*48 ; hand (pointing down) (found on level 5)
W $A178,2,2 $bc        ; unused
W $A17A,2,2 $bd  ; 3*24 ; tuba
b $A17C blitzen
W $A17C,2,2 $be  ; 3*24 ; blitzen sprite 0
W $A17E,2,2 $bf  ; 3*24 ; blitzen sprite 1
W $A180,2,2 $c0  ; 3*24 ; blitzen sprite 2
W $A182,2,2 $c1  ; 3*24 ; blitzen sprite 3
W $A184,2,2 $c2  ; 3*24   ; blitzen firing (sprite #5)
W $A186,2,2 $c3  ; 2*32 ; tree branch trunk connecting section (found on island 4)
W $A188,2,2 $c4  ; 3*32 ; thatched roof (found on island 4)
W $A18A,2,2 $c5  ; 4*48 ; end of branch twigs/leaves
W $A18C,2,2 $c6        ; unused
W $A18E,2,2 $c7  ; 4*16 ; tree branch
W $A190,2,2 $c8  ; 2*16 ; jetty winch
W $A192,2,2 $c9  ; 2*16 ; multi coloured platform
W $A194,2,2 $ca  ; 2*32 ; tree roots
W $A196,2,2 $cb  ; 4*32 ; tree trunk
W $A198,2,2 $cc  ; 7*8  ; tree base roots LHS
W $A19A,2,2 $cd  ; 6*8  ; tree base roots RHS
W $A19C,2,2 $ce  ; 6*8  ; tree base
W $A19E,2,2 $cf  ; 2*8  ; steps (found on island 7)
W $A1A0,2,2 $d0  ; 3*16 ; red decorative floor/roof (found on island 7)
W $A1A2,2,2 $d1  ; 3*24 ; yellow roof section (found on island 7)
W $A1A4,2,2 $d2  ; 2*24 ; LHS red/white decoration (found on level 7)
W $A1A6,2,2 $d3  ; 4*24 ; yellow roof left edge (found on island 7)
W $A1A8,2,2 $d4  ; 1*56 ; magenta japanese writing flag (found on island 7)
W $A1AA,2,2 $d5  ; 2*24 ; red table (found on island 7)
W $A1AC,2,2 $d6  ; 1*16 ; magenta/white walkway (as found on island 8)
W $A1AE,2,2 $d7  ; 2*8  ; yellow/red pillar (as found on island 8)
W $A1B0,2,2 $d8  ; 4*8  ; column platform supports (as found on island 8)
W $A1B2,2,2 $d9  ; 6*16 ; pillar base (found on island 8)
W $A1B4,2,2 $da  ; 5*16 ; 'blitzen' sign
W $A1B6,2,2 $db  ; 2*24 ; gold disc
W $A1B8,2,2 $dc  ; 1*16 ; factory whistle
b $A1BA landing area graphics LHS
W $A1BA,2,2 $dd  ; 4*24 level 8
W $A1BC,2,2 $de  ; 4*24 level 7
W $A1BE,2,2 $df  ; 4*24 level 6
W $A1C0,2,2 $e0  ; 4*24 level 5
W $A1C2,2,2 $e1  ; 4*24 level 4
W $A1C4,2,2 $e2  ; 4*24 level 3
W $A1C6,2,2 $e3  ; 4*24 level 2
W $A1C8,2,2 $e4  ; 4*24 level 1
W $A1CA,2,2 $e5  ; 5*16 ; 'items' graphic
W $A1CC,2,2 $e6  ; 1*16 ; vertical barrel
W $A1CE,2,2 $e7  ; 2*16 ; RHS top horizontal and pipe bends down barrel
W $A1D0,2,2 $e8  ; 6*8  ; 'ANY KEY'
W $A1D2,2,2 $e9  ; 5*8  ; 'TO PLAY'
W $A1D4,2,2 $ea  ; 2*16 ; RHS bottom horizontal and pipe bends up barrel
W $A1D6,2,2 $eb        ; unused
W $A1D8,2,2 $ec        ; unused
W $A1DA,2,2 $ed  ; 3*16 ; caves sign
W $A1DC,2,2 $ee  ; 1*8  ; signpost post
W $A1DE,2,2 $ef  ; 2*8  ; bird nest
b $A1E0 enemy sprites, each size 2*16
D $A1E0 level 8
W $A1E0,2,2 $f0
W $A1E2,2,2 $f1
N $A1E4 level 7
W $A1E4,2,2 $f2
W $A1E6,2,2 $f3
N $A1E8 level 6
W $A1E8,2,2 $f4
W $A1EA,2,2 $f5
N $A1EC level 5
W $A1EC,2,2 $f6
W $A1EE,2,2 $f7
N $A1F0 level 4
W $A1F0,2,2 $f8
W $A1F2,2,2 $f9
N $A1F4 level 3
W $A1F4,2,2 $fa
W $A1F6,2,2 $fb
N $A1F8 level 2
W $A1F8,2,2 $fc
W $A1FA,2,2 $fd
N $A1FC level 1
W $A1FC,2,2 $fe
W $A1FE,2,2 $ff
> $A200 ; GRAPHIC INFO.
> $A200 ;
> $A200 ; first byte=graphic info.
> $A200 ;
> $A200 ; bits 0,1,2   PLUS 1=graphic height (rows)
> $A200 ; bits 3,4,5   PLUS 1=graphic width (columns)
> $A200 ; bit 6 set    draw graphic data only
> $A200 ; bit 6 reset  draw graphics AND attributes
> $A200 ; bit 7 set    same attribute for whole graphic
> $A200 ; bit 7 reset  graphic has different attributes
b $A200 $01 'SCORE', size 5*8
B $A200,1,1 graphic info.
B $A201,1,1 attribute for 'SCORE' (black paper, yellow ink)
N $A202 'S'
B $A202,8,b1
N $A20A 'C'
B $A20A,8,b1
N $A212 'O'
B $A212,8,b1
N $A21A 'R'
B $A21A,8,b1
N $A222 'E'
B $A222,8,b1
b $A22A $08 double energy bar (when energy even number) size 1*16
B $A22A,1,1 graphic info.
B $A22B,1,1 attribute upper half of energy bar
B $A22C,1,1 attribute lower half of energy bar
B $A22D,16,b1
b $A23D $07 single energy bar (when energy odd number) size 1*16
B $A23D,1,1 graphic info.
B $A23E,1,1 attribute upper half of energy bar
B $A23F,1,1 attribute lower half of energy bar
B $A240,16,b1
b $A250 $14 'MIRR' (MIRRORSOFT) size 7*24
B $A250,1,1 graphic info.
B $A251,1,1 attribute (bright, red paper, white ink)
b $A2FA $15 'RORS' (MIRRORSOFT) size 7*24
B $A2FA,1,1 graphic info
B $A2FB,1,1 attribute (bright, red paper, white ink)
b $A3A4 $16 'SOFT' (MIRRORSOFT) size 7*24
B $A3A4,1,1 graphic info
B $A3A5,1,1 attribute (bright, red paper, white ink)
b $A44E $18 RHS of airship (position= after 'MIRRORSOFT') size 3*48
B $A44E,1,1 graphic info.
B $A44F,1,1 attribute (black paper, red ink)
b $A4E0 $19 RHS of airship (position= furthestmost right) size 3*56
B $A4E0,1,1 graphic info.
B $A4E1,1,1 attribute (black paper, red ink)
b $A58A $1d LHS of airship (position= to left of 'MIRRORSOFT') size 5*40
B $A58A,1,1 graphic info.
B $A58B,1,1 attribute (black paper, red ink)
b $A654 $1a airship edging (appears under the 'M' and 'T' in 'MIRRORSOFT') size 1*16
B $A654,1,1 graphic info.
B $A655,1,1 attribute (black paper, red ink)
b $A666 $1b airship edging (appears under the 'IR' and 'OF' in 'MIRRORSOFT') size 1*16
B $A666,1,1 graphic info.
B $A667,1,1 attribute (black paper, red ink)
b $A678 $1c airship edging (appears under the 'RORS' in 'MIRRORSOFT') size 1*16
B $A678,1,1 graphic info.
B $A679,1,1 attribute (black paper, red ink)
b $A68A $1e top LHS of airship pod (position= left of ladder) size 4*8
B $A68A,1,1 graphic info.
B $A68B,1,1 attribute (black paper, white ink)
b $A6AC $20 top RHS of airship pod (position= left of propellor) size 4*8
B $A6AC,1,1 graphic info.
B $A6AD,1,1 attribute (black paper, red ink)
b $A6CE $1f bottom LHS of airship pod (position= left of ladder) size 4*8
B $A6CE,1,1 graphic info.
B $A6CF,1,1 attribute (black paper, yellow ink)
b $A6F0 $21 bottom RHS of airship pod (position= left of propellor) size 4*8
B $A6F0,1,1 graphic info.
B $A6F1,1,1 attribute (black paper, yellow ink)
b $A712 $24 middle section of airship pod size 1*16
B $A712,1,1 graphic info.
B $A713,1,1 upper half attribute (black paper, white ink)
B $A714,1,1 lower half attribute (black paper, yellow ink)
b $A725 $02 right arrow (solid) size 1*8
B $A725,1,1 graphic info.
B $A726,1,1 attribute (black paper, cyan ink)
b $A72F $03 right arrow (outline) size 1*8
B $A72F,1,1 graphic info.
B $A730,1,1 attribute (black paper, cyan ink)
b $A739 $06 'HELD' size 5*8
B $A739,1,1 graphic info.
B $A73A,1,1 attribute (bright, black paper, white ink)
b $A763 $28 upper 2 face carvings (used in rooms $2a,$2c,$6a,$6c) size 1*48
B $A763,1,1 graphic info.
B $A764,1,1 attribute (black paper, white ink)
b $A795 $29 lower 2 face carvings (used in rooms $2a,$2c) size 1*48
B $A795,1,1 graphic info.
B $A796,1,1 attribute (black paper, white ink)
b $A7C7 $13 gargoyle LHS (used in rooms $28,$2c,$2d,$6d,$a8) size 3*48
B $A7C7,1,1 graphic info.
B $A7C8,1,1 attribute (black paper, white ink)
b $A859 $2a pillar outer LHS (used in rooms $2a,$2c,$6a,$6c) size 1*16
B $A859,1,1 graphic info.
B $A85A,1,1 attribute (black paper, yellow ink)
b $A86B $31 steps (as found on island 3 and as platforms at RHS of island 6) size 1*8
B $A86B,1,1 graphic info.
B $A86C,1,1 attribute (black paper, white ink)
b $A875 $2d grass size 8*8
B $A875,1,1 graphic info.
B $A876,1,1 attribute (black paper, green ink)
b $A8B7 $36 chalk earth (found under grass on island 3) size 8*8
B $A8B7,1,1 graphic info.
B $A8B8,1,1 attribute (black paper, white ink)
b $A8F9 $39 propeller size 1*40
B $A8F9,1,1 graphic info.
N $A8FA attributes top-bottom
B $A8FA,1,1 attribute (black paper, magenta ink)
B $A8FB,1,1 attribute (black paper, magenta ink)
B $A8FC,1,1 attribute (black paper, red ink)
B $A8FD,1,1 attribute (black paper, magenta ink)
B $A8FE,1,1 attribute (black paper, magenta ink)
b $A927 $38 propeller size 1*40
B $A927,1,1 graphic info.
N $A928 attributes top-bottom
B $A928,1,1 attribute (black paper, magenta ink)
B $A929,1,1 attribute (black paper, magenta ink)
B $A92A,1,1 attribute (black paper, red ink)
B $A92B,1,1 attribute (black paper, magenta ink)
B $A92C,1,1 attribute (black paper, magenta ink)
b $A955 $41 brick wall size 2*8
B $A955,1,1 graphic info.
B $A956,1,1 attribute (black paper, white ink)
b $A967 $64 fuel size 2*16
B $A967,1,1 graphic info.
B $A968,1,1 attribute
b $A989 $30 japanese writing (used in rooms $2c,$2d,$2e,$2f,$6c,$6d,$6e) size 2*16
B $A989,1,1 graphic info.
B $A98A,1,1 attribute (black paper, white ink)
b $A9AB $3a propeller housing size 1*24
B $A9AB,1,1 graphic info.
B $A9AC,1,1 attribute (black paper, red ink)
b $A9C5 $3b propeller size 1*24
B $A9C5,1,1 graphic info.
B $A9C6,1,1 upper attribute (black paper, magenta ink)
B $A9C7,1,1 middle attribute (black paper, red ink)
B $A9C8,1,1 lower attribute (black paper, magenta ink)
b $A9E1 $66 bomb size 2*16
B $A9E1,1,1 graphic info.
B $A9E2,1,1 attribute (black paper, white ink)
b $AA03 $65 record size 2*16
B $AA03,1,1 graphic info.
B $AA04,1,1 attribute (black paper, white ink)
b $AA25 $42 tightrope size 1*8
B $AA25,1,1 graphic info.
B $AA26,1,1 attribute (black paper, white ink)
b $AA2F $4c green platform (found on island 4) size 4*8
B $AA2F,1,1 graphic info.
B $AA30,1,1 attribute (black paper, green ink)
b $AA51 $4e white platform resting on grass (found on island 3) size 4*8
B $AA51,1,1 graphic info.
B $AA52,1,1 attribute (black paper, white ink)
b $AA73 $4f red post (found on island 2) size 1*24
B $AA73,1,1 graphic info.
B $AA74,1,1 attribute (red paper, black ink)
b $AA8D $45 LHS yellow earth section size 1*16
B $AA8D,1,1 graphic info.
B $AA8E,1,1 attribute (black paper, yellow ink)
b $AA8F
b $AA9F $50 tree foliage size 7*32
B $AA9F,1,1 graphic info.
N $AAA0 column 1 attributes top-bottom
B $AAA0,1,1 attribute (black paper, cyan ink)
B $AAA1,1,1 attribute (black paper, cyan ink)
B $AAA2,1,1 attribute (black paper, cyan ink)
B $AAA3,1,1 attribute (black paper, cyan ink)
N $AAA4 column 2 attributes top-bottom
B $AAA4,1,1 attribute (black paper, cyan ink)
B $AAA5,1,1 attribute (black paper, cyan ink)
B $AAA6,1,1 attribute (black paper, cyan ink)
B $AAA7,1,1 attribute (black paper, red ink)
N $AAA8 column 3 attributes top-bottom
B $AAA8,1,1 attribute (bright, black paper, green ink)
B $AAA9,1,1 attribute (bright, black paper, green ink)
B $AAAA,1,1 attribute (black paper, green ink)
B $AAAB,1,1 attribute (black paper, red ink)
N $AAAC column 4 attributes top-bottom
B $AAAC,1,1 attribute (bright, black paper, green ink)
B $AAAD,1,1 attribute (bright, black paper, green ink)
B $AAAE,1,1 attribute (black paper, green ink)
B $AAAF,1,1 attribute (black paper, white ink)
N $AAB0 column 5 attributes top-bottom
B $AAB0,1,1 attribute (black paper, green ink)
B $AAB1,1,1 attribute (bright, black paper, green ink)
B $AAB2,1,1 attribute (bright, black paper, green ink)
B $AAB3,1,1 attribute (black paper, white ink)
N $AAB4 column 6 attributes top-bottom
B $AAB4,1,1 attribute (black paper, white ink)
B $AAB5,1,1 attribute (black paper, white ink)
B $AAB6,1,1 attribute (bright, black paper, green ink)
B $AAB7,1,1 attribute (black paper, white ink)
N $AAB8 column 7 attributes top-bottom
B $AAB8,1,1 attribute (black paper, magenta ink)
B $AAB9,1,1 attribute (black paper, magenta ink)
B $AABA,1,1 attribute (black paper, magenta ink)
B $AABB,1,1 attribute (black paper, magenta ink)
b $AB9C $51 tree foliage size 7*32
B $AB9C,1,1 graphic info.
N $AB9D column 1 attributes top-bottom
B $AB9D,1,1 attribute (black paper, blue ink)
B $AB9E,1,1 attribute (bright, black paper, yellow ink)
B $AB9F,1,1 attribute (black paper, yellow ink)
B $ABA0,1,1 attribute (black paper, magenta ink)
N $ABA1 column 2 attributes top-bottom
B $ABA1,1,1 attribute (black paper, blue ink)
B $ABA2,1,1 attribute (bright, black paper, yellow ink)
B $ABA3,1,1 attribute (black paper, yellow ink)
B $ABA4,1,1 attribute (black paper, yellow ink)
N $ABA5 column 3 attributes top-bottom
B $ABA5,1,1 attribute (black paper, green ink)
B $ABA6,1,1 attribute (black paper, white ink)
B $ABA7,1,1 attribute (black paper, white ink)
B $ABA8,1,1 attribute (black paper, yellow ink)
N $ABA9 column 4 attributes top-bottom
B $ABA9,1,1 attribute (bright, black paper, green ink)
B $ABAA,1,1 attribute (black paper, green ink)
B $ABAB,1,1 attribute (black paper, white ink)
B $ABAC,1,1 attribute (black paper, white ink)
N $ABAD column 5 attributes top-bottom
B $ABAD,1,1 attribute (black paper, red ink)
B $ABAE,1,1 attribute (black paper, green ink)
B $ABAF,1,1 attribute (black paper, green ink)
B $ABB0,1,1 attribute (black paper, green ink)
N $ABB1 column 6 attributes top-bottom
B $ABB1,1,1 attribute (black paper, green ink)
B $ABB2,1,1 attribute (black paper, red ink)
B $ABB3,1,1 attribute (black paper, green ink)
B $ABB4,1,1 attribute (black paper, green ink)
N $ABB5 column 7 attributes top-bottom
B $ABB5,1,1 attribute (black paper, green ink)
B $ABB6,1,1 attribute (black paper, green ink)
B $ABB7,1,1 attribute (black paper, red ink)
B $ABB8,1,1 attribute (black paper, red ink)
b $AC99 $53 yellow earth platform size 1*24
B $AC99,1,1 graphic info.
B $AC9A,1,1 attribute (black paper, yellow ink)
b $ACB3 $32 yellow earth cliff top (found on island 2) size 8*40
B $ACB3,1,1 graphic info.
B $ACB4,1,1 attribute (black paper, yellow ink)
b $ADF5 $7a skull size 2*16
B $ADF5,1,1 graphic info.
B $ADF6,1,1 attribute (black paper, white ink)
b $AE17 $54 yellow earth stalactite (found on island 2) size 1*32
B $AE17,1,1 graphic info.
B $AE18,1,1 attribute (yellow paper, black ink)
b $AE39 $33 yellow earth bottom size 8*24
B $AE39,1,1 graphic info.
B $AE3A,1,1 attribute (black paper, yellow ink)
b $AEFB $48 yellow earth platform size 8*16
B $AEFB,1,1 graphic info.
B $AEFC,1,1 attribute (black paper, yellow ink)
b $AF7D $56 skeleton size 2*24
B $AF7D,1,1 graphic info.
B $AF7E,1,1 attribute (black paper, white ink)
b $AFAF $57 tall grass size 2*16
B $AFAF,1,1 graphic info.
B $AFB0,1,1 attribute (green paper, black ink)
b $AFD1 $5c white platform support (found on island 1) size 1*24
B $AFD1,1,1 graphic info.
B $AFD2,1,1 attribute (black paper, white ink)
b $AFEB $5d white platform size 1*8
B $AFEB,1,1 graphic info.
B $AFEC,1,1 attribute (black paper, white ink)
b $AFF5 $5e vertical girder support size 1*8
B $AFF5,1,1 graphic info.
B $AFF6,1,1 attribute (green paper, black ink)
b $AFFF $5f girder base size 3*8
B $AFFF,1,1 graphic info.
B $B000,1,1 attribute (black paper, green ink)
b $B019 $61 horizontal girder platform size 1*8
B $B019,1,1 graphic info.
B $B01A,1,1 attribute (black paper, green ink)
b $B023 $62 LHS earth section (found on island 1) size 1*24
B $B023,1,1 graphic info.
B $B024,1,1 attribute (black paper, red ink)
b $B03D $5b red earth platform (found on island 1) size 8*24
B $B03D,1,1 graphic info.
B $B03E,1,1 attribute (black paper, red ink)
b $B0FF $09 red score border left edge size 1*8
B $B0FF,1,1 graphic info.
B $B100,1,1 attribute (black paper, red ink)
b $B109 $0a red score border size 1*8
B $B109,1,1 graphic info.
B $B10A,1,1 attribute (black paper, red ink)
b $B113 $0b red score border right edge size 1*8
B $B113,1,1 graphic info.
B $B114,1,1 attribute (black paper, red ink)
b $B11D $99 LHS section japanese umbrellas size 1*24
B $B11D,1,1 graphic info.
B $B11E,1,1 attribute (black paper, magenta ink)
b $B137 $a0 RHS section japanese umbrellas size 1*24
B $B137,1,1 graphic info.
B $B138,1,1 attribute (black paper, magenta ink)
b $B151 $90 red roof with green dragon LHS (tail) (found on island 7) size 7*32
B $B151,1,1 graphic info.
N $B152 column 1 attributes top-bottom
B $B152,1,1 attribute (black paper, red ink)
B $B153,1,1 attribute (black paper, green ink)
B $B154,1,1 attribute (black paper, green ink)
B $B155,1,1 attribute (black paper, red ink)
N $B156 column 2 attributes top-bottom
B $B156,1,1 attribute (black paper, red ink)
B $B157,1,1 attribute (black paper, green ink)
B $B158,1,1 attribute (black paper, red ink)
B $B159,1,1 attribute (black paper, red ink)
N $B15A column 3 attributes top-bottom
B $B15A,1,1 attribute (black paper, red ink)
B $B15B,1,1 attribute (black paper, green ink)
B $B15C,1,1 attribute (black paper, green ink)
B $B15D,1,1 attribute (black paper, red ink)
N $B15E column 4 attributes top-bottom
B $B15E,1,1 attribute (black paper, red ink)
B $B15F,1,1 attribute (black paper, green ink)
B $B160,1,1 attribute (black paper, green ink)
B $B161,1,1 attribute (black paper, red ink)
N $B162 column 5 attributes top-bottom
B $B162,1,1 attribute (black paper, red ink)
B $B163,1,1 attribute (black paper, green ink)
B $B164,1,1 attribute (black paper, green ink)
B $B165,1,1 attribute (black paper, red ink)
N $B166 column 6 attributes top-bottom
B $B166,1,1 attribute (black paper, red ink)
B $B167,1,1 attribute (black paper, green ink)
B $B168,1,1 attribute (black paper, red ink)
B $B169,1,1 attribute (black paper, red ink)
N $B16A column 7 attributes top-bottom
B $B16A,1,1 attribute (black paper, red ink)
B $B16B,1,1 attribute (black paper, green ink)
B $B16C,1,1 attribute (black paper, green ink)
B $B16D,1,1 attribute (black paper, red ink)
b $B24E $96 red roof with green dragon RHS (body/head) (found on island 7) size 7*32
B $B24E,1,1 graphic info.
N $B24F column 1 attributes top-bottom
B $B24F,1,1 attribute (black paper, green ink)
B $B250,1,1 attribute (black paper, green ink)
B $B251,1,1 attribute (black paper, green ink)
B $B252,1,1 attribute (black paper, red ink)
N $B253 column 2 attributes top-bottom
B $B253,1,1 attribute (black paper, green ink)
B $B254,1,1 attribute (black paper, green ink)
B $B255,1,1 attribute (black paper, green ink)
B $B256,1,1 attribute (black paper, red ink)
N $B257 column 3 attributes top-bottom
B $B257,1,1 attribute (black paper, green ink)
B $B258,1,1 attribute (black paper, green ink)
B $B259,1,1 attribute (black paper, green ink)
B $B25A,1,1 attribute (black paper, red ink)
N $B25B column 4 attributes top-bottom
B $B25B,1,1 attribute (black paper, green ink)
B $B25C,1,1 attribute (black paper, green ink)
B $B25D,1,1 attribute (black paper, green ink)
B $B25E,1,1 attribute (black paper, red ink)
N $B25F column 5 attributes top-bottom
B $B25F,1,1 attribute (black paper, green ink)
B $B260,1,1 attribute (black paper, green ink)
B $B261,1,1 attribute (black paper, green ink)
B $B262,1,1 attribute (black paper, red ink)
N $B263 column 6 attributes top-bottom
B $B263,1,1 attribute (black paper, green ink)
B $B264,1,1 attribute (black paper, green ink)
B $B265,1,1 attribute (black paper, green ink)
B $B266,1,1 attribute (black paper, red ink)
N $B267 column 7 attributes top-bottom
B $B267,1,1 attribute (black paper, red ink)
B $B268,1,1 attribute (black paper, green ink)
B $B269,1,1 attribute (black paper, green ink)
B $B26A,1,1 attribute (black paper, red ink)
b $B34B $0e green jetty platform (as found on island 2 and 7) size 1*8
B $B34B,1,1 graphic info.
B $B34C,1,1 attribute (black paper, green ink)
b $B355 $60 girder cap size 1*8
B $B355,1,1 graphic info.
B $B356,1,1 attribute (white paper, black ink)
b $B35F $c9 multi coloured platform size 2*16
B $B35F,1,1 graphic info.
B $B360,1,1 upper left  attribute (black paper, green ink)
B $B361,1,1 lower left  attribute (magenta paper, black ink)
B $B362,1,1 upper right attribute (black paper, yellow ink)
B $B363,1,1 lower right attribute (cyan paper, black ink)
b $B384 $ca tree roots size 2*32
B $B384,1,1 graphic info.
B $B385,1,1 attribute (black paper, red ink)
b $B3C6 $ce tree base size 6*8
B $B3C6,1,1 graphic info.
B $B3C7,1,1 attribute (black paper, red ink)
b $B3F8 $cc tree base roots LHS size 7*8
B $B3F8,1,1 graphic info.
B $B3F9,1,1 attribute (black paper, red ink)
b $B432 $cd tree base roots RHS size 6*8
B $B432,1,1 graphic info.
B $B433,1,1 attribute (black paper, red ink)
b $B464 $d1 yellow roof section (found on island 7) size 3*24
B $B464,1,1 graphic info.
B $B465,1,1 attribute (black paper, yellow ink)
b $B4AE $9c helter skelter pillar size 1*8
B $B4AE,1,1 graphic info.
B $B4AF,1,1 attribute (cyan paper, black ink)
b $B4B8 $d0 red decorative floor/roof (found on island 7) size 3*16
B $B4B8,1,1 graphic info.
B $B4B9,1,1 attribute (black paper, red ink)
b $B4EA $d2 LHS red/white decoration (found on level 7) size 2*24
B $B4EA,1,1 graphic info.
N $B4EB left attributes top-bottom
B $B4EB,1,1 attribute (black paper, red ink)
B $B4EC,1,1 attribute (black paper, red ink)
B $B4ED,1,1 attribute (black paper, red ink)
N $B4EE right attributes top-bottom
B $B4EE,1,1 attribute (black paper, white ink)
B $B4EF,1,1 attribute (black paper, white ink)
B $B4F0,1,1 attribute (black paper, white ink)
b $B521 $d4 magenta japanese writing flag (found on island 7) size 1*56
B $B521,1,1 graphic info.
B $B522,1,1 attribute (magenta paper, black ink)
b $B55B $8b bright blue girder type decoration (found under yellow japanese roofs) size 1*8
B $B55B,1,1 graphic info.
B $B55C,1,1 attribute (bright, black paper, blue ink)
b $B565 $cf steps (found on island 7) size 2*8
B $B565,1,1 graphic info.
B $B566,1,1 attribute (black paper, white ink)
b $B577 $9e japanese umbrellas size 2*24
B $B577,1,1 graphic info.
N $B578 lhs attributes top bottom
B $B578,1,1 attribute (black paper, magenta ink)
B $B579,1,1 attribute (black paper, red ink)
B $B57A,1,1 attribute (black paper, magenta ink)
N $B57B rhs attributes top-bottom
B $B57B,1,1 attribute (black paper, magenta ink)
B $B57C,1,1 attribute (black paper, magenta ink)
B $B57D,1,1 attribute (black paper, magenta ink)
b $B5AE $94 ; yellow vertical bamboo (found on island 7) size 1*24
B $B5AE,1,1 graphic info.
B $B5AF,1,1 attribute (yellow paper, black ink)
b $B5C8 $a2 green statue (found on island 7) size 2*24
B $B5C8,1,1 graphic info.
B $B5C9,1,1 attribute (green paper, black ink)
b $B5FA $67 goggles size 2*16
B $B5FA,1,1 graphic info.
B $B5FB,1,1 upper left  attribute (black paper, green ink)
B $B5FC,1,1 lower left  attribute (black paper, red ink)
B $B5FD,1,1 upper right attribute (black paper, green ink)
B $B5FE,1,1 lower right attribute (black paper, red ink)
b $B61F $3c ladder section size 2*8
B $B61F,1,1 graphic info.
B $B620,1,1 attribute (black paper, cyan ink)
b $B631 $3d ladder section size 2*8
B $B631,1,1 graphic info.
B $B632,1,1 attribute (black paper, cyan ink)
b $B643 $97 white moster head (facing left) (found on island 7) size 5*32
B $B643,1,1 graphic info.
N $B644 column 1 attributes top-bottom
B $B644,1,1 attribute (black paper, black ink)
B $B645,1,1 attribute (black paper, white ink)
B $B646,1,1 attribute (black paper, white ink)
B $B647,1,1 attribute (black paper, white ink)
N $B648 column 2 attributes top-bottom
B $B648,1,1 attribute (black paper, black ink)
B $B649,1,1 attribute (black paper, white ink)
B $B64A,1,1 attribute (black paper, white ink)
B $B64B,1,1 attribute (black paper, white ink)
N $B64C column 3 attributes top-bottom
B $B64C,1,1 attribute (black paper, black ink)
B $B64D,1,1 attribute (black paper, white ink)
B $B64E,1,1 attribute (black paper, white ink)
B $B64F,1,1 attribute (black paper, white ink)
N $B650 column 4 attributes top-bottom
B $B650,1,1 attribute (black paper, white ink)
B $B651,1,1 attribute (black paper, white ink)
B $B652,1,1 attribute (black paper, white ink)
B $B653,1,1 attribute (black paper, white ink)
N $B654 column 5 attributes top-bottom
B $B654,1,1 attribute (black paper, black ink)
B $B655,1,1 attribute (black paper, white ink)
B $B656,1,1 attribute (black paper, white ink)
B $B657,1,1 attribute (black paper, white ink)
b $B6F8 $89 yellow hanging decorations (found on island 7) 2*24
B $B6F8,1,1 graphic info.
B $B6F9,1,1 attribute (black paper, yellow ink)
b $B72A $0d red jetty post (as found on island 2 and 7) size 1*16
B $B72A,1,1 graphic info.
B $B72B,1,1 attribute (red paper, black ink)
b $B73C $4d cyan statue clutching babies (found on island 3) size 2*48
B $B73C,1,1 graphic info.
N $B73D left attributes top-bottom
B $B73D,1,1 attribute (black paper, white ink)
B $B73E,1,1 attribute (black paper, white ink)
B $B73F,1,1 attribute (cyan paper, black ink)
B $B740,1,1 attribute (cyan paper, black ink)
B $B741,1,1 attribute (cyan paper, black ink)
B $B742,1,1 attribute (green paper, black ink)
N $B743 right attributes top-bottom
B $B743,1,1 attribute (black paper, white ink)
B $B744,1,1 attribute (black paper, white ink)
B $B745,1,1 attribute (cyan paper, black ink)
B $B746,1,1 attribute (cyan paper, black ink)
B $B747,1,1 attribute (cyan paper, black ink)
B $B748,1,1 attribute (green paper, black ink)
b $B7A9 $ad blue/white up arrow size 2*24
B $B7A9,1,1 graphic info.
B $B7AA,1,1 attribute (blue paper, white ink)
b $B7DB $ae blue/white left and right arrows size 3*16
B $B7DB,1,1 graphic info.
B $B7DC,1,1 attribute (blue paper, white ink)
b $B80D $b4 'EXIT' sign size 4*16
B $B80D,1,1 graphic info.
B $B80E,1,1 attribute (green paper, black ink)
b $B84F $b3 white pillar (found on level 8) size 2*40
B $B84F,1,1 graphic info.
B $B850,1,1 attribute (white paper, black ink)
b $B8A1 $a3 red car size 5*16
B $B8A1,1,1 graphic info.
B $B8A2,1,1 attribute (black paper, red ink)
b $B8F3 $a5 magenta car size 6*16
B $B8F3,1,1 graphic info.
B $B8F4,1,1 attribute (black paper, magenta ink)
b $B955 $a4 green/yellow car, blue truck and white volkswagen size 7*32
B $B955,1,1 graphic info.
N $B956 column 1 attributes top-bottom
B $B956,1,1 attribute (black paper, green ink)
B $B957,1,1 attribute (black paper, green ink)
B $B958,1,1 attribute (black paper, green ink)
B $B959,1,1 attribute (black paper, green ink)
N $B95A column 2 attributes top-bottom
B $B95A,1,1 attribute (black paper, yellow ink)
B $B95B,1,1 attribute (black paper, yellow ink)
B $B95C,1,1 attribute (black paper, yellow ink)
B $B95D,1,1 attribute (black paper, yellow ink)
N $B95E column 3 attributes top-bottom
B $B95E,1,1 attribute (black paper, yellow ink)
B $B95F,1,1 attribute (black paper, blue ink)
B $B960,1,1 attribute (black paper, white ink)
B $B961,1,1 attribute (black paper, white ink)
N $B962 column 4 attributes top-bottom
B $B962,1,1 attribute (black paper, yellow ink)
B $B963,1,1 attribute (black paper, blue ink)
B $B964,1,1 attribute (black paper, white ink)
B $B965,1,1 attribute (black paper, white ink)
N $B966 column 5 attributes top-bottom
B $B966,1,1 attribute (black paper, magenta ink)
B $B967,1,1 attribute (black paper, blue ink)
B $B968,1,1 attribute (black paper, white ink)
B $B969,1,1 attribute (black paper, white ink)
N $B96A column 6 attributes top-bottom
B $B96A,1,1 attribute (black paper, magenta ink)
B $B96B,1,1 attribute (black paper, blue ink)
B $B96C,1,1 attribute (black paper, blue ink)
B $B96D,1,1 attribute (black paper, white ink)
N $B96E column 7 attributes top-bottom
B $B96E,1,1 attribute (black paper, magenta ink)
B $B96F,1,1 attribute (black paper, blue ink)
B $B970,1,1 attribute (black paper, blue ink)
B $B971,1,1 attribute (black paper, black ink)
b $BA52 $98 yellow/red weak bridge size 4*8
B $BA52,1,1 graphic info.
B $BA53,1,1 attribute (black paper, yellow ink)
B $BA54,1,1 attribute (black paper, red ink)
B $BA55,1,1 attribute (yellow paper, black ink)
B $BA56,1,1 attribute (red paper, black ink)
b $BA77 $aa black and white chevrons size 1*16
B $BA77,1,1 graphic info.
B $BA78,1,1 attribute (black paper, white ink)
b $BA89 $b2 black/white dotted platforms (found on island 6) size 5*24
B $BA89,1,1 graphic info.
B $BA8A,1,1 attribute (black paper, white ink)
b $BB03 $a8 blue/white parking sign size 2*24
B $BB03,1,1 graphic info.
B $BB04,1,1 attribute (blue paper, white ink)
b $BB35 $a7 parking meter size 1*40
B $BB35,1,1 graphic info.
B $BB36,1,1 attribute (black paper, white ink)
b $BB5F $a9 traffic cone size 2*24
B $BB5F,1,1 graphic info.
N $BB60 left attributes top-bottom
B $BB60,1,1 attribute (black paper, red ink)
B $BB61,1,1 attribute (black paper, white ink)
B $BB62,1,1 attribute (black paper, red ink)
N $BB63 right attributes top-botto
B $BB63,1,1 attribute (black paper, red ink)
B $BB64,1,1 attribute (black paper, white ink)
B $BB65,1,1 attribute (black paper, red ink)
b $BB96 $ac traffic light size 1*24
B $BB96,1,1 graphic info.
B $BB97,1,1 attribute (red paper, black ink)
B $BB98,1,1 attribute (yellow paper, black ink)
B $BB99,1,1 attribute (green paper, black ink)
b $BBB2 $c7 tree branch size 4*16
B $BBB2,1,1 graphic info.
B $BBB3,1,1 attribute (black paper, red ink)
b $BBF4 $c3 tree branch trunk connecting section (found on island 4) size 2*32
B $BBF4,1,1 graphic info.
B $BBF5,1,1 attribute (black paper, red ink)
b $BC36 $71 dumbbell size 2*16
B $BC36,1,1 graphic info.
B $BC37,1,1 attribute (black paper, green ink)
b $BC58 $82 white glass size 2*16
B $BC58,1,1 graphic info.
B $BC59,1,1 attribute (black paper, white ink)
b $BC7A $87 cup of tea size 2*16
B $BC7A,1,1 graphic info.
B $BC7B,1,1 attribute (black paper, white ink)
b $BC9C $83 chicken leg size 2*16
B $BC9C,1,1 graphic info.
B $BC9D,1,1 upper left  attribute (black paper, red ink)
B $BC9E,1,1 lower left  attribute (black paper, red ink)
B $BC9F,1,1 upper right attribute (black paper, yellow ink)
B $BCA0,1,1 lower right attribute (black paper, red ink)
b $BCC1 $81 magenta glass size 2*16
B $BCC1,1,1 graphic info.
B $BCC2,1,1 upper left  attribute (black paper, white ink)
B $BCC3,1,1 lower left  attribute (black paper, magenta ink)
B $BCC4,1,1 upper right attribute (black paper, white ink)
B $BCC5,1,1 lower right attribute (black paper, magenta ink)
b $BCE6 $c4 thatched roof (found on island 4) size 3*32
B $BCE6,1,1 graphic info.
B $BCE7,1,1 attribute (black paper, yellow ink)
b $BD48 $40 door (red doors) size 1*32
B $BD48,1,1 graphic info.
b $BD69 $3f door handle (red doors) size 1*16
B $BD69,1,1 graphic info.
b $BD7A $0f door blowing open 1 size 2*32
B $BD7A,1,1 graphic info.
b $BDBB $10 door blowing open 2 size 2*32
B $BDBB,1,1 graphic info.
b $BDFC $11 door blowing open 3 size 2*32
B $BDFC,1,1 graphic info.
b $BE3D $12 door blowing open 4 size 2*32
B $BE3D,1,1 graphic info.
b $BE7E $80 grapes size 2*16
B $BE7E,1,1 graphic. info
B $BE7F,1,1 attribute (black paper, magenta ink)
b $BEA0 $be blitzen sprite 0 size 3*24
B $BEA0,1,1 graphic info.,
b $BEE9 $bf blitzen sprite 1 size 3*24
B $BEE9,1,1 graphic info.
b $BF32 $c0 blitzen sprite 2 size 3*24
b $BF7B $c0 blitzen sprite 3 size 3*24
B $BF7B,1,1 graphic info.
b $BFC4 $88 horizontal pipe size 1*8
B $BFC4,1,1 graphic info.
B $BFC5,1,1 attribute (black paper, white ink)
b $BFCE $8a vertical pipe 1 size 1*8
B $BFCE,1,1 graphic info.
B $BFCF,1,1 attribute (white paper, black ink)
b $BFD8 $8c lower RHS pipe bend size 2*16
B $BFD8,1,1 graphic info.
B $BFD9,1,1 attribute (black paper, white ink)
b $BFFA $8e stop tap size 2*16
B $BFFA,1,1 graphic info.
B $BFFB,1,1 attribute (black paper, white ink)
b $C01C $8f vertical bright red air duct (found on island 1) size 1*8
B $C01C,1,1 graphic info.
B $C01D,1,1 attribute (red paper, black ink)
b $C026 $91 LHS lower bright red air duct corner piece (found on island 1) size 1*8
B $C026,1,1 graphic info.
B $C027,1,1 attribute (black paper, red ink)
b $C030 $92 horizontal bright red air duct (found on island 1) size 1*8
B $C030,1,1 graphic info.
B $C031,1,1 attribute (black paper, red ink)
b $C03A $8d pipe valve size 3*16
B $C03A,1,1 graphic info.
B $C03B,1,1 attribute (black paper, white ink)
b $C06C $9a vertical pipe 2 size 1*8
B $C06C,1,1 graphic info.
B $C06D,1,1 attribute (white paper, black ink)
b $C076 $9b upper LHS pipe bend size 2*16
B $C076,1,1 graphic info.
B $C077,1,1 attribute (black paper, white ink)
b $C098 $63 magenta and yellow graphic (found on island 1) size 3*8
B $C098,1,1 graphic info
B $C099,1,1 left   attribute (magenta paper, black ink)
B $C09A,1,1 middle attribute (yellow paper, black ink)
B $C09B,1,1 right  attribute (magenta paper, black ink)
b $C0B4 $93 blue power guages (found on island 1) size 5*24
B $C0B4,1,1 graphic info.
B $C0B5,1,1 attribute (black paper, blue ink)
b $C12E $9d RHS lower bright red air duct corner piece (found on island 1) size 1*8
B $C12E,1,1 graphic info.
B $C12F,1,1 attribute (black paper, red ink)
b $C138 level 6 enemy sprites set #1
B $C138,1,1
N $C139 weightlifter sprite 1 left 49465-49480
B $C139,16,4
N $C149 wooly hat sprite 1 left 49481-49496
B $C149,16,4
N $C159 spaceman sprite 1 left 49497-49512
B $C159,16,4
N $C169 coach sprite 1 left 49513-49528
B $C169,16,4
N $C179 weightlifter sprite 1 right 49529-49544
B $C179,16,4
N $C189 wooly hat sprite 1 right 49545-49560
B $C189,16,4
N $C199 spaceman sprite 1 right 49561-49576
B $C199,16,4
N $C1A9 coach sprite 1 right 49577-49592
B $C1A9,16,4
N $C1B9 weightlifter sprite 2 left 49593-49608
B $C1B9,16,4
N $C1C9 wooly hat sprite 2 left 49609-49624
B $C1C9,16,4
N $C1D9 spaceman sprite 2 left 49625-49640
B $C1D9,16,4
N $C1E9 coach sprite 2 left 49641-49656
B $C1E9,16,4
N $C1F9 weightlifter sprite 2 right 49657-49672
B $C1F9,16,4
N $C209 wooly hat sprite 2 right 49673-49688
B $C209,16,4
N $C219 spaceman sprite 2 right 49689-49704
B $C219,16,4
N $C229 coach sprite 2 right 49705-49720
B $C229,16,4
N $C239 weightlifter sprite 3 left 49721-49736
B $C239,16,4
N $C249 wooly hat sprite 3 left 49737-49752
B $C249,16,4
N $C259 spaceman sprite 3 left 49753-49768
B $C259,16,4
N $C269 coach sprite 3 left 49769-49784
B $C269,16,4
N $C279 weightlifter sprite 3 right 49785-49800
B $C279,16,4
N $C289 wooly hat sprite 3 right 49801-49816
B $C289,16,4
N $C299 spaceman sprite 3 right 49817-49832
B $C299,16,4
N $C2A9 coach sprite 3 right 49833-49848
B $C2A9,16,4
N $C2B9 weightlifter sprite 4 left 49849-49864
B $C2B9,16,4
N $C2C9 wooly hat sprite 4 left 49865-49880
B $C2C9,16,4
N $C2D9 spaceman sprite 4 left 49881-49896
B $C2D9,16,4
N $C2E9 coach sprite 4 left 49897-49912
B $C2E9,16,4
N $C2F9 weightlifter sprite 4 right 49913-49928
B $C2F9,16,4
N $C309 wooly hat sprite 4 right 49929-49944
B $C309,16,4
N $C319 spaceman sprite 4 right 49945-49960
B $C319,16,4
N $C329 coach sprite 4 right 49961-49976
B $C329,16,4
b $C339 level 5 enemy sprites set #1
B $C339,1,1
N $C33A hat shoes sprite 1 left 49978-49993
B $C33A,16,4
N $C34A umbrella sprite 1 left 49994-50009
B $C34A,16,4
N $C35A expander sprite 1 left 50010-50025
B $C35A,16,4
N $C36A man apple sprite 1 left 50026-50041
B $C36A,16,4
N $C37A hat shoes sprite 1 right 50042-50057
B $C37A,16,4
N $C38A umbrella sprite 1 right 50058-50073
B $C38A,16,4
N $C39A expander sprite 1 right 50074-50089
B $C39A,16,4
N $C3AA man apple sprite 1 right 50090-50105
B $C3AA,16,4
N $C3BA hat shoes sprite 2 left 50106-50121
B $C3BA,16,4
N $C3CA umbrella sprite 2 left 50122-50137
B $C3CA,16,4
N $C3DA expander sprite 2 left 50138-50153
B $C3DA,16,4
N $C3EA man apple sprite 2 left 50154-50169
B $C3EA,16,4
N $C3FA hat shoes sprite 2 right 50170-50185
B $C3FA,16,4
N $C40A umbrella sprite 2 right 50186-50201
B $C40A,16,4
N $C41A expander sprite 2 right 50202-50217
B $C41A,16,4
N $C42A man apple sprite 2 right 50218-50233
B $C42A,16,4
N $C43A hat shoes sprite 3 left 50234-50249
B $C43A,16,4
N $C44A umbrella sprite 3 left 50250-50265
B $C44A,16,4
N $C45A expander sprite 3 left 50266-50281
B $C45A,16,4
N $C46A man apple sprite 3 left 50282-50297
B $C46A,16,4
N $C47A hat shoes sprite 3 right 50298-50313
B $C47A,16,4
N $C48A umbrella sprite 3 right 50314-50329
B $C48A,16,4
N $C49A expander sprite 3 right 50330-50345
B $C49A,16,4
N $C4AA man apple sprite 3 right 50346-50361
B $C4AA,16,4
N $C4BA hat shoes sprite 4 left 50362-50377
B $C4BA,16,4
N $C4CA umbrella sprite 4 left 50378-50393
B $C4CA,16,4
N $C4DA expander sprite 4 left 50394-50409
B $C4DA,16,4
N $C4EA man apple sprite 4 left 50410-50425
B $C4EA,16,4
N $C4FA hat shoes sprite 4 right 50426-50441
B $C4FA,16,4
N $C50A umbrella sprite 4 right 50442-50457
B $C50A,16,4
N $C51A expander sprite 4 right 50458-50473
B $C51A,16,4
N $C52A man apple sprite 4 right 50474-50489
B $C52A,16,4
b $C53A level 4 enemy sprites set #1
B $C53A,1,1
N $C53B snake sprite 1 left 50491-50506
B $C53B,16,4
N $C54B dragon sprite 1 left 50507-50522
B $C54B,16,4
N $C55B flower sprite 1 left 50523-50538
B $C55B,16,4
N $C56B hornet sprite 1 left 50539-50554
B $C56B,16,4
N $C57B snake sprite 1 right 50555-50570
B $C57B,16,4
N $C58B dragon sprite 1 right 50571-50586
B $C58B,16,4
N $C59B flower sprite 1 right 50587-50602
B $C59B,16,4
N $C5AB hornet sprite 1 right 50603-50618
B $C5AB,16,4
N $C5BB snake sprite 2 left 50619-50634
B $C5BB,16,4
N $C5CB dragon sprite 2 left 50635-50650
B $C5CB,16,4
N $C5DB flower sprite 2 left 50651-50666
B $C5DB,16,4
N $C5EB hornet sprite 2 left 50667-50682
B $C5EB,16,4
N $C5FB snake sprite 2 right 50683-50698
B $C5FB,16,4
N $C60B dragon sprite 2 right 50699-50714
B $C60B,16,4
N $C61B flower sprite 2 right 50715-50730
B $C61B,16,4
N $C62B hornet sprite 2 right 50731-50746
B $C62B,16,4
N $C63B snake sprite 3 left 50747-50762
B $C63B,16,4
N $C64B dragon sprite 3 left 50763-50778
B $C64B,16,4
N $C65B flower sprite 3 left 50779-50794
B $C65B,16,4
N $C66B hornet sprite 3 left 50795-50810
B $C66B,16,4
N $C67B snake sprite 3 right 50811-50826
B $C67B,16,4
N $C68B dragon sprite 3 right 50827-50842
B $C68B,16,4
N $C69B flower sprite 3 right 50843-50858
B $C69B,16,4
N $C6AB hornet sprite 3 right 50859-50874
B $C6AB,16,4
N $C6BB snake sprite 4 left 50875-50890
B $C6BB,16,4
N $C6CB dragon sprite 4 left 50891-50906
B $C6CB,16,4
N $C6DB flower sprite 4 left 50907-50922
B $C6DB,16,4
N $C6EB hornet sprite 4 left 50923-50938
B $C6EB,16,4
N $C6FB snake sprite 4 right 50939-50954
B $C6FB,16,4
N $C70B dragon sprite 4 right 50955-50970
B $C70B,16,4
N $C71B flower sprite 4 right 50971-50986
B $C71B,16,4
N $C72B hornet sprite 4 right 50987-51002
B $C72B,16,4
b $C73B level 4 enemy sprites set #2
B $C73B,1,1
N $C73C frog hog sprite 1 left 51004-51019
B $C73C,16,4
N $C74C bear sprite 1 left 51020-51035
B $C74C,16,4
N $C75C fish sprite 1 left 51036-51051
B $C75C,16,4
N $C76C bird sprite 1 left 51052-51067
B $C76C,16,4
N $C77C frog hog sprite 1 right 51068-51083
B $C77C,16,4
N $C78C bear sprite 1 right 51084-51099
B $C78C,16,4
N $C79C fish sprite 1 right 51100-51115
B $C79C,16,4
N $C7AC bird sprite 1 right 51116-51131
B $C7AC,16,4
N $C7BC frog hog sprite 2 left 51132-51147
B $C7BC,16,4
N $C7CC bear sprite 2 left 51148-51163
B $C7CC,16,4
N $C7DC fish sprite 2 left 51164-51179
B $C7DC,16,4
N $C7EC bird sprite 2 left 51180-51195
B $C7EC,16,4
N $C7FC frog hog sprite 2 right 51196-51211
B $C7FC,16,4
N $C80C bear sprite 2 right 51212-51227
B $C80C,16,4
N $C81C fish sprite 2 right 51228-51243
B $C81C,16,4
N $C82C bird sprite 2 right 51244-51259
B $C82C,16,4
N $C83C frog hog sprite 3 left 51260-51275
B $C83C,16,4
N $C84C bear sprite 3 left 51276-51291
B $C84C,16,4
N $C85C fish sprite 3 left 51292-51307
B $C85C,16,4
N $C86C bird sprite 3 left 51308-51323
B $C86C,16,4
N $C87C frog hog sprite 3 right 51324-51339
B $C87C,16,4
N $C88C bear sprite 3 right 51340-51355
B $C88C,16,4
N $C89C fish sprite 3 right 51356-51371
B $C89C,16,4
N $C8AC bird sprite 3 right 51372-51387
B $C8AC,16,4
N $C8BC frog hog sprite 4 left 51388-51403
B $C8BC,16,4
N $C8CC bear sprite 4 left 51404-51419
B $C8CC,16,4
N $C8DC fish sprite 4 left 51420-51435
B $C8DC,16,4
N $C8EC bird sprite 4 left 51436-51451
B $C8EC,16,4
N $C8FC frog hog sprite 4 right 51452-51467
B $C8FC,16,4
N $C90C bear sprite 4 right 51468-51483
B $C90C,16,4
N $C91C fish sprite 4 right 51484-51499
B $C91C,16,4
N $C92C bird sprite 4 right 51500-51515
B $C92C,16,4
b $C93C level 1 enemy sprites set #1
B $C93C,1,1
N $C93D bubble head sprite 1 left 51517-51532
B $C93D,16,4
N $C94D robot sprite 1 left 51533-51548
B $C94D,16,4
N $C95D clock sprite 1 left 51549-51564
B $C95D,16,4
N $C96D zx chip sprite 1 left 51565-51580
B $C96D,16,4
N $C97D bubble head sprite 1 right 51581-51596
B $C97D,16,4
N $C98D robot sprite 1 right 51597-51612
B $C98D,16,4
N $C99D clock sprite 1 right 51613-51628
B $C99D,16,4
N $C9AD zx chip sprite 1 right 51629-51644
B $C9AD,16,4
N $C9BD bubble head sprite 2 left 51645-51660
B $C9BD,16,4
N $C9CD robot sprite 2 left 51661-51676
B $C9CD,16,4
N $C9DD clock sprite 2 left 51677-51692
B $C9DD,16,4
N $C9ED zx chip sprite 2 left 51693-51708
B $C9ED,16,4
N $C9FD bubble head sprite 2 right 51709-51724
B $C9FD,16,4
N $CA0D robot sprite 2 right 51725-51740
B $CA0D,16,4
N $CA1D clock sprite 2 right 51741-51756
B $CA1D,16,4
N $CA2D zx chip sprite 2 right 51757-51772
B $CA2D,16,4
N $CA3D bubble head sprite 3 left 51773-51788
B $CA3D,16,4
N $CA4D robot sprite 3 left 51789-51804
B $CA4D,16,4
N $CA5D clock sprite 3 left 51805-51820
B $CA5D,16,4
N $CA6D zx chip sprite 3 left 51821-51836
B $CA6D,16,4
N $CA7D bubble head sprite 3 right 51837-51852
B $CA7D,16,4
N $CA8D robot sprite 3 right 51853-51868
B $CA8D,16,4
N $CA9D clock sprite 3 right 51869-51884
B $CA9D,16,4
N $CAAD zx chip sprite 3 right 51885-51900
B $CAAD,16,4
N $CABD bubble head sprite 4 left 51901-51916
B $CABD,16,4
N $CACD robot sprite 4 left 51917-51932
B $CACD,16,4
N $CADD clock sprite 4 left 51933-51948
B $CADD,16,4
N $CAED zx chip sprite 4 left 51949-51964
B $CAED,16,4
N $CAFD bubble head sprite 4 right 51965-51980
B $CAFD,16,4
N $CB0D robot sprite 4 right 51981-51996
B $CB0D,16,4
N $CB1D clock sprite 4 right 51997-52012
B $CB1D,16,4
N $CB2D zx chip sprite 4 right 52013-52028
B $CB2D,16,4
b $CB3D level 1 enemy sprites set #2
B $CB3D,1,1
N $CB3E mouse sprite 1 left 52030-52045
B $CB3E,16,4
N $CB4E robot sprite 1 left 52046-52061
B $CB4E,16,4
N $CB5E helicap sprite 1 left 52062-52077
B $CB5E,16,4
N $CB6E rotating sprite 1 left 52078-52093
B $CB6E,16,4
N $CB7E mouse sprite 1 right 52094-52109
B $CB7E,16,4
N $CB8E robot sprite 1 right 52110-52125
B $CB8E,16,4
N $CB9E helicap sprite 1 right 52126-52141
B $CB9E,16,4
N $CBAE rotating sprite 1 right 52142-52157
B $CBAE,16,4
N $CBBE mouse sprite 2 left 52158-52173
B $CBBE,16,4
N $CBCE robot sprite 2 left 52174-52189
B $CBCE,16,4
N $CBDE helicap sprite 2 left 52190-52205
B $CBDE,16,4
N $CBEE rotating sprite 2 left 52206-52221
B $CBEE,16,4
N $CBFE mouse sprite 2 right 52222-52237
B $CBFE,16,4
N $CC0E robot sprite 2 right 52238-52253
B $CC0E,16,4
N $CC1E helicap sprite 2 right 52254-52269
B $CC1E,16,4
N $CC2E rotating sprite 2 right 52270-52285
B $CC2E,16,4
N $CC3E mouse sprite 3 left 52286-52301
B $CC3E,16,4
N $CC4E robot sprite 3 left 52302-52317
B $CC4E,16,4
N $CC5E helicap sprite 3 left 52318-52333
B $CC5E,16,4
N $CC6E rotating sprite 3 left 52334-52349
B $CC6E,16,4
N $CC7E mouse sprite 3 right 52350-52365
B $CC7E,16,4
N $CC8E robot sprite 3 right 52366-52381
B $CC8E,16,4
N $CC9E helicap sprite 3 right 52382-52397
B $CC9E,16,4
N $CCAE rotating sprite 3 right 52398-52413
B $CCAE,16,4
N $CCBE mouse sprite 4 left 52414-52429
B $CCBE,16,4
N $CCCE robot sprite 4 left 52430-52445
B $CCCE,16,4
N $CCDE helicap sprite 4 left 52446-52461
B $CCDE,16,4
N $CCEE rotating sprite 4 left 52462-52477
B $CCEE,16,4
N $CCFE mouse sprite 4 right 52478-52493
B $CCFE,16,4
N $CD0E robot sprite 4 right 52494-52509
B $CD0E,16,4
N $CD1E helicap sprite 4 right 52510-52525
B $CD1E,16,4
N $CD2E rotating sprite 4 right 52526-52541
B $CD2E,16,4
b $CD3E $84 cherries size 2*16
B $CD3E,1,1 graphic info.
B $CD3F,1,1 upper left  attribute (black paper, red ink)
B $CD40,1,1 lower left  attribute (black paper, red ink)
B $CD41,1,1 upper right attribute (black paper, green ink)
B $CD42,1,1 lower right attribute (black paper, red ink)
b $CD63 $85 ice cream size 2*16
B $CD63,1,1 graphic info.
B $CD64,1,1 upper left  attribute (black paper, red ink)
B $CD65,1,1 lower left  attribute (black paper, white ink)
B $CD66,1,1 upper right attribute (black paper, white ink)
B $CD67,1,1 lower right attribute (black paper, cyan ink)
b $CD88 $86 mushroom size 2*16
B $CD88,1,1 graphic info.
B $CD89,1,1 upper left  attribute (black paper, white ink)
B $CD8A,1,1 lower left  attribute (black paper, white ink)
B $CD8B,1,1 upper right attribute (black paper, yellow ink)
B $CD8C,1,1 lower right attribute (black paper, yellow ink)
b $CDAD $c2 blitzen firing (sprite #5)
B $CDAD,1,1 graphic info.
b $CDF6 $7d torch size 2*16
B $CDF6,1,1 graphic info.
B $CDF7,1,1 upper left  attribute (black paper, white ink)
B $CDF8,1,1 lower left  attribute (black paper, magenta ink)
B $CDF9,1,1 upper right attribute (black paper, white ink)
B $CDFA,1,1 lower right attribute (black paper, magenta ink)
b $CE1B $7e drill size 2*16
B $CE1B,1,1 graphic info.
B $CE1C,1,1 upper left  attribute (black paper, cyan ink)
B $CE1D,1,1 lower left  attribute (black paper, magenta ink)
B $CE1E,1,1 upper right attribute (black paper, green ink)
B $CE1F,1,1 lower right attribute (black paper, yellow ink)
b $CE40 $7f food mixer size 2*16
B $CE40,1,1 graphic info.
B $CE41,1,1 upper left  attribute (black paper, yellow ink)
B $CE42,1,1 lower left  attribute (black paper, white ink)
B $CE43,1,1 upper right attribute (black paper, yellow ink)
B $CE44,1,1 lower right attribute (black paper, red ink)
b $CE65 $6e snips size 2*16
B $CE65,1,1 graphic info.
B $CE66,1,1 attribute (black paper, magenta ink)
b $CE87 $d6 magenta/white walkway (as found on island 8) size 1*16
B $CE87,1,1 graphic info.
B $CE88,1,1 upper attribute (black paper, magenta ink)
B $CE89,1,1 lower attribute (black paper, white ink)
b $CE9A $d7 yellow/red pillar (as found on island 8) size 2*8
B $CE9A,1,1 graphic info.
B $CE9B,1,1 LHS attribute (yellow paper, black ink)
B $CE9C,1,1 RHS attribute (red paper, black ink)
b $CEAD $da 'blitzen' sign size 5*16
B $CEAD,1,1 graphic info.
N $CEAE column 1 attributes top-bottom
B $CEAE,1,1 attribute (magenta paper, black ink)
B $CEAF,1,1 attribute (blue paper, black ink)
N $CEB0 column 2 attributes top-bottom
B $CEB0,1,1 attribute (magenta paper, black ink)
B $CEB1,1,1 attribute (blue paper, black ink)
N $CEB2 column 3 attributes top-bottom
B $CEB2,1,1 attribute (magenta paper, black ink)
B $CEB3,1,1 attribute (blue paper, black ink)
N $CEB4 column 4 attributes top-bottom
B $CEB4,1,1 attribute (magenta paper, black ink)
B $CEB5,1,1 attribute (blue paper, black ink)
N $CEB6 column 5 attributes top-bottom
B $CEB6,1,1 attribute (magenta paper, black ink)
B $CEB7,1,1 attribute (blue paper, black ink)
b $CF08 $db gold disc size 2*24
B $CF08,1,1 graphic info.
B $CF09,1,1 attribute (yellow paper, black ink)
b $CF3A $dc factory whistle size 1*16
B $CF3A,1,1 graphic info.
B $CF3B,1,1 attribute (black paper, white ink)
b $CF4C $9f blitzen flag size 3*24
B $CF4C,1,1 graphic info.
N $CF4D left column top-bottom
B $CF4D,1,1 attribute (black paper, green ink)
B $CF4E,1,1 attribute (black paper, green ink)
B $CF4F,1,1 attribute (black paper, green ink)
N $CF50 middle column top-bottom
B $CF50,1,1 attribute (black paper, magenta ink)
B $CF51,1,1 attribute (black paper, magenta ink)
B $CF52,1,1 attribute (black paper, yellow ink)
N $CF53 right column top-bottom
B $CF53,1,1 attribute (black paper, cyan ink)
B $CF54,1,1 attribute (black paper, cyan ink)
B $CF55,1,1 attribute (black paper, magenta ink)
b $CF9E $d9 pillar base (found on island 8) size 6*16
B $CF9E,1,1 graphic info.
N $CF9F column 1
B $CF9F,1,1 attribute (black paper, yellow ink)
B $CFA0,1,1 attribute (black paper, yellow ink)
N $CFA1 column 2
B $CFA1,1,1 attribute (black paper, red ink)
B $CFA2,1,1 attribute (black paper, red ink)
N $CFA3 column 3
B $CFA3,1,1 attribute (black paper, red ink)
B $CFA4,1,1 attribute (black paper, red ink)
N $CFA5 column 4
B $CFA5,1,1 attribute (black paper, red ink)
B $CFA6,1,1 attribute (black paper, red ink)
N $CFA7 column 5
B $CFA7,1,1 attribute (black paper, red ink)
B $CFA8,1,1 attribute (black paper, red ink)
N $CFA9 column 6
B $CFA9,1,1 attribute (black paper, red ink)
B $CFAA,1,1 attribute (black paper, red ink)
b $D00B $c8 jetty winch size 2*16
B $D00B,1,1 graphic info.
B $D00C,1,1 upper left  attribute (black paper, green ink)
B $D00D,1,1 lower left  attribute (black paper, cyan ink)
B $D00E,1,1 upper right attribute (black paper, green ink)
B $D00F,1,1 lower right attribute (black paper, green ink)
b $D030 $6d scissors size 2*16
B $D030,1,1 graphic info.
B $D031,1,1 attribute (black paper, yellow ink)
b $D052 $d8 column platform supports (as found on island 8) size 4*8
B $D052,1,1 graphic info
B $D053,1,1 attribute (black paper, yellow ink)
B $D054,1,1 attribute (black paper, red ink)
B $D055,1,1 attribute (black paper, red ink)
B $D056,1,1 attribute (black paper, red ink)
b $D077 level 8 enemy sprites set #1
B $D077,1,1
N $D078 glasses sprite 1 left 53368-53383
B $D078,16,4
N $D088 television sprite 1 left 53384-53399
B $D088,16,4
N $D098 french horn sprite 1 left 53400-53415
B $D098,16,4
N $D0A8 headphones sprite 1 left 53416-53431
B $D0A8,16,4
N $D0B8 glasses sprite 1 right 53432-53447
B $D0B8,16,4
N $D0C8 television sprite 1 right 53448-53463
B $D0C8,16,4
N $D0D8 french horn sprite 1 right 53464-53479
B $D0D8,16,4
N $D0E8 headphones sprite 1 right 53480-53495
B $D0E8,16,4
N $D0F8 glasses sprite 2 left 53496-53511
B $D0F8,16,4
N $D108 television sprite 2 left 53512-53527
B $D108,16,4
N $D118 french horn sprite 2 left 53528-53543
B $D118,16,4
N $D128 headphones sprite 2 left 53544-53559
B $D128,16,4
N $D138 glasses sprite 2 right 53560-53575
B $D138,16,4
N $D148 television sprite 2 right 53576-53591
B $D148,16,4
N $D158 french horn sprite 2 right 53592-53607
B $D158,16,4
N $D168 headphones sprite 2 right 53608-53623
B $D168,16,4
N $D178 glasses sprite 3 left 53624-53639
B $D178,16,4
N $D188 television sprite 3 left 53640-53655
B $D188,16,4
N $D198 french horn sprite 3 left 53656-53671
B $D198,16,4
N $D1A8 headphones sprite 3 left 53672-53687
B $D1A8,16,4
N $D1B8 glasses sprite 3 right 53688-53703
B $D1B8,16,4
N $D1C8 television sprite 3 right 53704-53719
B $D1C8,16,4
N $D1D8 french horn sprite 3 right 53720-53735
B $D1D8,16,4
N $D1E8 headphones sprite 3 right 53736-53751
B $D1E8,16,4
N $D1F8 glasses sprite 4 left 53752-53767
B $D1F8,16,4
N $D208 television sprite 4 left 53768-53783
B $D208,16,4
N $D218 french horn sprite 4 left 53784-53799
B $D218,16,4
N $D228 headphones sprite 4 left 53800-53815
B $D228,16,4
N $D238 glasses sprite 4 right 53816-53831
B $D238,16,4
N $D248 television sprite 4 right 53832-53847
B $D248,16,4
N $D258 french horn sprite 4 right 53848-53863
B $D258,16,4
N $D268 headphones sprite 4 right 53864-53879
B $D268,16,4
b $D278 $37 jukebox LHS size 2*48
B $D278,1,1 graphic info.
N $D279 left attributes top-bottom
B $D279,1,1 attribute (black paper, yellow ink)
B $D27A,1,1 attribute (black paper, yellow ink)
B $D27B,1,1 attribute (black paper, red ink)
B $D27C,1,1 attribute (white paper, black ink)
B $D27D,1,1 attribute (white paper, black ink)
B $D27E,1,1 attribute (white paper, black ink)
N $D27F right attributes top-bottom
B $D27F,1,1 attribute (black paper, yellow ink)
B $D280,1,1 attribute (black paper, white ink)
B $D281,1,1 attribute (black paper, green ink)
B $D282,1,1 attribute (magenta paper, black ink)
B $D283,1,1 attribute (magenta paper, black ink)
B $D284,1,1 attribute (red paper, black ink)
b $D2E5 $a6 'NO SMOKING' size 5*8
B $D2E5,1,1 graphic info.
B $D2E6,1,1 attribute (magenta paper, black ink)
b $D30F $04 top half 'energy' size 7*8
B $D30F,1,1 graphic info.
B $D310,1,1 attribute (black paper, cyan ink)
b $D349 $05 bottom half 'energy' size 7*8
B $D349,1,1 graphic info.
B $D34A,1,1 attribute (black paper, green ink)
b $D383 $a1 musical note (above number of records played) size 1*8
B $D383,1,1 graphic info.
B $D384,1,1 attribute (black paper, yellow ink)
b $D38D $b9 man and child with umbrellas size 3*40
B $D38D,1,1 graphic info.
B $D38E,1,1 attribute (black paper, magenta ink)
b $D407 $ba finger size 2*56
B $D407,1,1 graphic info.
N $D408 left attributes top-bottom
B $D408,1,1 attribute (black paper, yellow ink)
B $D409,1,1 attribute (yellow paper, black ink)
B $D40A,1,1 attribute (yellow paper, black ink)
B $D40B,1,1 attribute (yellow paper, black ink)
B $D40C,1,1 attribute (yellow paper, black ink)
B $D40D,1,1 attribute (yellow paper, black ink)
B $D40E,1,1 attribute (yellow paper, black ink)
N $D40F right attributes top-bottom
B $D40F,1,1 attribute (black paper, yellow ink)
B $D410,1,1 attribute (yellow paper, black ink)
B $D411,1,1 attribute (yellow paper, black ink)
B $D412,1,1 attribute (yellow paper, black ink)
B $D413,1,1 attribute (yellow paper, black ink)
B $D414,1,1 attribute (yellow paper, black ink)
B $D415,1,1 attribute (yellow paper, black ink)
b $D486 $d3 yellow roof left edge (found on island 7) size 4*24
B $D486,1,1 graphic info.
B $D487,1,1 attribute (black paper, yellow ink)
b $D4E8 $6f pump size 2*16
B $D4E8,1,1 graphic info.
B $D4E9,1,1 upper left  attribute (black paper, white ink)
B $D4EA,1,1 lower left  attribute (black paper, red ink)
B $D4EB,1,1 upper right attribute (black paper, yellow ink)
B $D4EC,1,1 lower right attribute (black paper, red ink)
b $D50D $af red platforms (found at far left of island 6) size 2*8
B $D50D,1,1 graphic info.
B $D50E,1,1 attribute (black paper, red ink)
b $D51F $ab petrol pump size 2*32
B $D51F,1,1 graphic info.
N $D520 left top to bottom
B $D520,1,1 attribute (black paper, white ink)
B $D521,1,1 attribute (yellow paper, black ink)
B $D522,1,1 attribute (red paper, black ink)
B $D523,1,1 attribute (red paper, black ink)
N $D524 right top to bottom
B $D524,1,1 attribute (black paper, white ink)
B $D525,1,1 attribute (yellow paper, black ink)
B $D526,1,1 attribute (red paper, black ink)
B $D527,1,1 attribute (red paper, black ink)
b $D568 $70 engine size 2*16
b $D58A $b0 cloud size 4*16
B $D58A,1,1 graphic info.
B $D58B,1,1 attribute (black paper, white ink)
b $D5CC $73 boots size 2*16
B $D5CC,1,1 graphic info.
B $D5CD,1,1 attribute (black paper, magenta ink)
b $D5EE $b5 red/yellow picture (found on island 5) size 4*32
B $D5EE,1,1 graphic info.
B $D5EF,1,1 attribute (black paper, red ink)
B $D5F0,1,1 attribute (black paper, red ink)
B $D5F1,1,1 attribute (black paper, red ink)
B $D5F2,1,1 attribute (black paper, red ink)
B $D5F3,1,1 attribute (black paper, red ink)
B $D5F4,1,1 attribute (black paper, yellow ink)
B $D5F5,1,1 attribute (black paper, yellow ink)
B $D5F6,1,1 attribute (black paper, red ink)
B $D5F7,1,1 attribute (black paper, red ink)
B $D5F8,1,1 attribute (black paper, yellow ink)
B $D5F9,1,1 attribute (black paper, yellow ink)
B $D5FA,1,1 attribute (black paper, red ink)
B $D5FB,1,1 attribute (black paper, red ink)
B $D5FC,1,1 attribute (black paper, red ink)
B $D5FD,1,1 attribute (black paper, red ink)
B $D5FE,1,1 attribute (black paper, red ink)
b $D67F $b6 blue/white picture (found on island 5) size 4*32
B $D67F,1,1 graphic info.
B $D680,1,1 attribute (blue paper, black ink)
B $D681,1,1 attribute (blue paper, black ink)
B $D682,1,1 attribute (blue paper, black ink)
B $D683,1,1 attribute (blue paper, black ink)
B $D684,1,1 attribute (blue paper, black ink)
B $D685,1,1 attribute (white paper, black ink)
B $D686,1,1 attribute (white paper, black ink)
B $D687,1,1 attribute (blue paper, black ink)
B $D688,1,1 attribute (blue paper, black ink)
B $D689,1,1 attribute (white paper, black ink)
B $D68A,1,1 attribute (white paper, black ink)
B $D68B,1,1 attribute (blue paper, black ink)
B $D68C,1,1 attribute (blue paper, black ink)
B $D68D,1,1 attribute (blue paper, black ink)
B $D68E,1,1 attribute (blue paper, black ink)
B $D68F,1,1 attribute (blue paper, black ink)
b $D710 $b1 eye (found on island 5) size 3*16
B $D710,1,1 graphic info.
N $D711 left attributes
B $D711,1,1 attribute (black paper, green ink)
B $D712,1,1 attribute (black paper, white ink)
N $D713 middle attributes
B $D713,1,1 attribute (black paper, green ink)
B $D714,1,1 attribute (black paper, white ink)
N $D715 right attributes
B $D715,1,1 attribute (black paper, green ink)
B $D716,1,1 attribute (black paper, white ink)
b $D747 $23 pod support beam lower size 2*8
B $D747,1,1 graphic info.
B $D748,1,1 attribute (black paper, green ink)
b $D759 $22 pod support beam upper size 2*16
B $D759,1,1 graphic info.
B $D75A,1,1 attribute (black paper, green ink)
b $D77B $e4 landing area graphics LHS level 1 size 4*24
B $D77B,1,1 graphic info.
N $D77C column 1 attributes top-bottom
B $D77C,1,1 attribute (black paper, green ink)
B $D77D,1,1 attribute (black paper, white ink)
B $D77E,1,1 attribute (black paper, white ink)
N $D77F column 2 attributes top-bottom
B $D77F,1,1 attribute (black paper, green ink)
B $D780,1,1 attribute (black paper, white ink)
B $D781,1,1 attribute (black paper, white ink)
N $D782 column 3 attributes top-bottom
B $D782,1,1 attribute (black paper, green ink)
B $D783,1,1 attribute (black paper, white ink)
B $D784,1,1 attribute (black paper, white ink)
N $D785 column 4 attributes top-bottom
B $D785,1,1 attribute (black paper, green ink)
B $D786,1,1 attribute (black paper, white ink)
B $D787,1,1 attribute (black paper, white ink)
b $D7E8 $e5 'items' size 5*16
B $D7E8,1,1 graphic info.
B $D7E9,1,1 attribute (black paper, green ink)
b $D83A $e1 landing area graphics LHS level 4 size 4*24
B $D83A,1,1 graphic info.
N $D83B column 1 attributes top-bottom
B $D83B,1,1 attribute (black paper, green ink)
B $D83C,1,1 attribute (black paper, magenta ink)
B $D83D,1,1 attribute (black paper, magenta ink)
N $D83E column 2 attributes top-bottom
B $D83E,1,1 attribute (black paper, green ink)
B $D83F,1,1 attribute (black paper, magenta ink)
B $D840,1,1 attribute (black paper, magenta ink)
N $D841 column 3 attributes top-bottom
B $D841,1,1 attribute (black paper, green ink)
B $D842,1,1 attribute (black paper, magenta ink)
B $D843,1,1 attribute (black paper, magenta ink)
N $D844 column 4 attributes top-bottom
B $D844,1,1 attribute (black paper, green ink)
B $D845,1,1 attribute (black paper, magenta ink)
B $D846,1,1 attribute (black paper, magenta ink)
b $D8A7 $cb tree trunk size 4*32
B $D8A7,1,1 graphic info.
B $D8A8,1,1 attribute (black paper, red ink)
B $D8A9,1,1 attribute (red paper, black ink)
B $D8AA,1,1 attribute (red paper, black ink)
B $D8AB,1,1 attribute (red paper, black ink)
B $D8AC,1,1 attribute (black paper, red ink)
B $D8AD,1,1 attribute (red paper, black ink)
B $D8AE,1,1 attribute (red paper, black ink)
B $D8AF,1,1 attribute (red paper, black ink)
B $D8B0,1,1 attribute (black paper, red ink)
B $D8B1,1,1 attribute (red paper, black ink)
B $D8B2,1,1 attribute (red paper, black ink)
B $D8B3,1,1 attribute (red paper, black ink)
B $D8B4,1,1 attribute (black paper, red ink)
B $D8B5,1,1 attribute (red paper, black ink)
B $D8B6,1,1 attribute (red paper, black ink)
B $D8B7,1,1 attribute (red paper, black ink)
b $D938 $c5 end of branch twigs/leaves size 4*48
B $D938,1,1 graphic info.
N $D939 column 1 attributes top-bottom
B $D939,1,1 attribute (black paper, red ink)
B $D93A,1,1 attribute (black paper, green ink)
B $D93B,1,1 attribute (black paper, red ink)
B $D93C,1,1 attribute (black paper, green ink)
B $D93D,1,1 attribute (black paper, green ink)
B $D93E,1,1 attribute (black paper, green ink)
N $D93F column 2 attributes top-bottom
B $D93F,1,1 attribute (black paper, green ink)
B $D940,1,1 attribute (black paper, red ink)
B $D941,1,1 attribute (black paper, red ink)
B $D942,1,1 attribute (black paper, green ink)
B $D943,1,1 attribute (black paper, red ink)
B $D944,1,1 attribute (black paper, green ink)
N $D945 column 3 attributes top-bottom
B $D945,1,1 attribute (black paper, green ink)
B $D946,1,1 attribute (black paper, red ink)
B $D947,1,1 attribute (black paper, red ink)
B $D948,1,1 attribute (black paper, red ink)
B $D949,1,1 attribute (black paper, green ink)
B $D94A,1,1 attribute (black paper, green ink)
N $D94B column 4 attributes top-bottom
B $D94B,1,1 attribute (black paper, red ink)
B $D94C,1,1 attribute (black paper, red ink)
B $D94D,1,1 attribute (black paper, red ink)
B $D94E,1,1 attribute (black paper, green ink)
B $D94F,1,1 attribute (black paper, green ink)
B $D950,1,1 attribute (black paper, green ink)
b $DA11 $ef bird nest size 2*8
B $DA11,1,1 graphic info.
B $DA12,1,1 attribute (black paper, green ink)
b $DA23 $d5 red table (found on island 7) size 2*24
B $DA23,1,1 graphic info.
B $DA24,1,1 attribute (red paper, black ink)
b $DA55 $6c mandolin size 2*16
B $DA55,1,1 graphic info.
B $DA56,1,1 upper left  attribute (black paper, red ink)
B $DA57,1,1 lower left  attribute (black paper, red ink)
B $DA58,1,1 upper right attribute (black paper, magenta ink)
B $DA59,1,1 lower right attribute (black paper, red ink)
b $DA7A $dd landing area graphics LHS level 7 size 4*24
B $DA7A,1,1 graphic info.
N $DA7B column 1 attributes top-bottom
B $DA7B,1,1 attribute (black paper, magenta ink)
B $DA7C,1,1 attribute (black paper, magenta ink)
B $DA7D,1,1 attribute (black paper, green ink)
N $DA7E column 2 attributes top-bottom
B $DA7E,1,1 attribute (black paper, magenta ink)
B $DA7F,1,1 attribute (black paper, magenta ink)
B $DA80,1,1 attribute (black paper, green ink)
N $DA81 column 3 attributes top-bottom
B $DA81,1,1 attribute (black paper, magenta ink)
B $DA82,1,1 attribute (black paper, magenta ink)
B $DA83,1,1 attribute (black paper, green ink)
N $DA84 column 4 attributes top-bottom
B $DA84,1,1 attribute (black paper, magenta ink)
B $DA85,1,1 attribute (black paper, magenta ink)
B $DA86,1,1 attribute (black paper, green ink)
b $DAE7 $95 yellow horizontal bamboo (found on island 7) size 3*8
B $DAE7,1,1 graphic info.
B $DAE8,1,1 attribute (black paper, yellow ink)
b $DB01 $6b fan size 2*16
B $DB01,1,1 graphic info.
B $DB02,1,1 upper left  attribute (black paper, cyan ink)
B $DB03,1,1 lower left  attribute (black paper, magenta ink)
B $DB04,1,1 upper right attribute (black paper, cyan ink)
B $DB05,1,1 lower right attribute (black paper, cyan ink)
b $DB26 level 8 enemy sprites set #1
B $DB26,1,1
N $DB27 toothbrush sprite 1 left 56103-56118
B $DB27,16,4
N $DB37 8track sprite 1 left 56119-56134
B $DB37,16,4
N $DB47 radio sprite 1 left 56135-56150
B $DB47,16,4
N $DB57 walkman sprite 1 left 56151-56166
B $DB57,16,4
N $DB67 toothbrush sprite 1 right 56167-56182
B $DB67,16,4
N $DB77 8track sprite 1 right 56183-56198
B $DB77,16,4
N $DB87 radio sprite 1 right 56199-56214
B $DB87,16,4
N $DB97 walkman sprite 1 right 56215-56230
B $DB97,16,4
N $DBA7 toothbrush sprite 2 left 56231-56246
B $DBA7,16,4
N $DBB7 8track sprite 2 left 56247-56262
B $DBB7,16,4
N $DBC7 radio sprite 2 left 56263-56278
B $DBC7,16,4
N $DBD7 walkman sprite 2 left 56279-56294
B $DBD7,16,4
N $DBE7 toothbrush sprite 2 right 56295-56310
B $DBE7,16,4
N $DBF7 8track sprite 2 right 56311-56326
B $DBF7,16,4
N $DC07 radio sprite 2 right 56327-56342
B $DC07,16,4
N $DC17 walkman sprite 2 right 56343-56358
B $DC17,16,4
N $DC27 toothbrush sprite 3 left 56359-56374
B $DC27,16,4
N $DC37 8track sprite 3 left 56375-56390
B $DC37,16,4
N $DC47 radio sprite 3 left 56391-56406
B $DC47,16,4
N $DC57 walkman sprite 3 left 56407-56422
B $DC57,16,4
N $DC67 toothbrush sprite 3 right 56423-56438
B $DC67,16,4
N $DC77 8track sprite 3 right 56439-56454
B $DC77,16,4
N $DC87 radio sprite 3 right 56455-56470
B $DC87,16,4
N $DC97 walkman sprite 3 right 56471-56486
B $DC97,16,4
N $DCA7 toothbrush sprite 4 left 56487-56502
B $DCA7,16,4
N $DCB7 8track sprite 4 left 56503-56518
B $DCB7,16,4
N $DCC7 radio sprite 4 left 56519-56534
B $DCC7,16,4
N $DCD7 walkman sprite 4 left 56535-56550
B $DCD7,16,4
N $DCE7 toothbrush sprite 4 right 56551-56566
B $DCE7,16,4
N $DCF7 8track sprite 4 right 56567-56582
B $DCF7,16,4
N $DD07 radio sprite 4 right 56583-56598
B $DD07,16,4
N $DD17 walkman sprite 4 left 56599-56614
B $DD17,16,4
b $DD27 level 7 enemy sprites set #1
B $DD27,1,1
N $DD28 angry duck sprite 1 left 56616-56631
B $DD28,16,4
N $DD38 cup saucer sprite 1 left 56632-56647
B $DD38,16,4
N $DD48 monster head sprite 1 left 56648-56663
B $DD48,16,4
N $DD58 chinese sprite 1 left 56664-56679
B $DD58,16,4
N $DD68 angry duck sprite 1 right 56680-56695
B $DD68,16,4
N $DD78 cup saucer sprite 1 right 56696-56711
B $DD78,16,4
N $DD88 monster head sprite 1 right 56712-56727
B $DD88,16,4
N $DD98 chinese sprite 1 right 56728-56743
B $DD98,16,4
N $DDA8 angry duck sprite 2 left 56744-56759
B $DDA8,16,4
N $DDB8 cup saucer sprite 2 left 56760-56775
B $DDB8,16,4
N $DDC8 monster head sprite 2 left 56776-56791
B $DDC8,16,4
N $DDD8 chinese sprite 2 left 56792-56807
B $DDD8,16,4
N $DDE8 angry duck sprite 2 right 56808-56823
B $DDE8,16,4
N $DDF8 cup saucer sprite 2 right 56824-56839
B $DDF8,16,4
N $DE08 monster head sprite 2 right 56840-56855
B $DE08,16,4
N $DE18 chinese sprite 2 right 56856-56871
B $DE18,16,4
N $DE28 angry duck sprite 3 left 56872-56887
B $DE28,16,4
N $DE38 cup saucer sprite 3 left 56888-56903
B $DE38,16,4
N $DE48 monster head sprite 3 left 56904-56919
B $DE48,16,4
N $DE58 chinese sprite 3 left 56920-56935
B $DE58,16,4
N $DE68 angry duck sprite 3 right 56936-56951
B $DE68,16,4
N $DE78 cup saucer sprite 3 right 56952-56967
B $DE78,16,4
N $DE88 monster head sprite 3 right 56968-56983
B $DE88,16,4
N $DE98 chinese sprite 3 right 56984-56999
B $DE98,16,4
N $DEA8 angry duck sprite 4 left 57000-57015
B $DEA8,16,4
N $DEB8 cup saucer sprite 4 left 57016-57031
B $DEB8,16,4
N $DEC8 monster head sprite 4 left 57032-57047
B $DEC8,16,4
N $DED8 chinese sprite 4 left 57048-57063
B $DED8,16,4
N $DEE8 angry duck sprite 4 right 57064-57079
B $DEE8,16,4
N $DEF8 cup saucer sprite 4 right 57080-57095
B $DEF8,16,4
N $DF08 monster head sprite 4 right 57096-57111
B $DF08,16,4
N $DF18 chinese sprite 4 right 57112-57127
B $DF18,16,4
b $DF28 level 7 enemy sprites set #2
B $DF28,1,1
N $DF29 rowing boat sprite 1 left 57129-57144
B $DF29,16,4
N $DF39 masked ball sprite 1 left 57145-57160
B $DF39,16,4
N $DF49 origami sprite 1 left 57161-57176
B $DF49,16,4
N $DF59 kite sprite 1 left 57177-57192
B $DF59,16,4
N $DF69 rowing boat sprite 1 right 57193-57208
B $DF69,16,4
N $DF79 masked ball sprite 1 right 57209-57224
B $DF79,16,4
N $DF89 origami sprite 1 right 57225-57240
B $DF89,16,4
N $DF99 kite sprite 1 right 57241-57256
B $DF99,16,4
N $DFA9 rowing boat sprite 2 left 57257-57272
B $DFA9,16,4
N $DFB9 masked ball sprite 2 left 57273-57288
B $DFB9,16,4
N $DFC9 origami sprite 2 left 57289-57304
B $DFC9,16,4
N $DFD9 kite sprite 2 left 57305-57320
B $DFD9,16,4
N $DFE9 rowing boat sprite 2 right 57321-57336
B $DFE9,16,4
N $DFF9 masked ball sprite 2 right 57337-57352
B $DFF9,16,4
N $E009 origami sprite 2 right 57353-57368
B $E009,16,4
N $E019 kite sprite 2 right 57369-57384
B $E019,16,4
N $E029 rowing boat sprite 3 left 57385-57400
B $E029,16,4
N $E039 masked ball sprite 3 left 57401-57416
B $E039,16,4
N $E049 origami sprite 3 left 57417-57432
B $E049,16,4
N $E059 kite sprite 3 left 57433-57448
B $E059,16,4
N $E069 rowing boat sprite 3 right 57449-57464
B $E069,16,4
N $E079 masked ball sprite 3 right 57465-57480
B $E079,16,4
N $E089 origami sprite 3 right 57481-57496
B $E089,16,4
N $E099 kite sprite 3 right 57497-57512
B $E099,16,4
N $E0A9 rowing boat sprite 4 left 57513-57528
B $E0A9,16,4
N $E0B9 masked ball sprite 4 left 57529-57544
B $E0B9,16,4
N $E0C9 origami sprite 4 left 57545-57560
B $E0C9,16,4
N $E0D9 kite sprite 4 left 57561-57576
B $E0D9,16,4
N $E0E9 rowing boat sprite 4 right 57577-57592
B $E0E9,16,4
N $E0F9 masked ball sprite 4 right 57593-57608
B $E0F9,16,4
N $E109 origami sprite 4 right 57609-57624
B $E109,16,4
N $E119 kite sprite 4 right 57625-57640
B $E119,16,4
b $E129 level 2 enemy sprites set #1
B $E129,1,1
N $E12A worm sprite 1 left 57642-57657
B $E12A,16,4
N $E13A boulder sprite 1 left 57658-57673
B $E13A,16,4
N $E14A bat sprite 1 left 57674-57689
B $E14A,16,4
N $E15A skull and crossbones sprite 1 left 57690-57705
B $E15A,16,4
N $E16A worm sprite 1 right 57706-57721
B $E16A,16,4
N $E17A boulder sprite 1 right 57722-57737
B $E17A,16,4
N $E18A bat sprite 1 right 57738-57753
B $E18A,16,4
N $E19A skull and crossbones sprite 1 right 57754-57769
B $E19A,16,4
N $E1AA worm sprite 2 left 57770-57785
B $E1AA,16,4
N $E1BA boulder sprite 2 left 57786-57801
B $E1BA,16,4
N $E1CA bat sprite 2 left 57802-57817
B $E1CA,16,4
N $E1DA skull and crossbones sprite 2 left 57818-57833
B $E1DA,16,4
N $E1EA worm sprite 2 right 57834-57849
B $E1EA,16,4
N $E1FA boulder sprite 2 right 57850-57865
B $E1FA,16,4
N $E20A bat sprite 2 right 57866-57881
B $E20A,16,4
N $E21A skull and crossbones sprite 2 right 57882-57897
B $E21A,16,4
N $E22A worm sprite 3 left 57898-57913
B $E22A,16,4
N $E23A boulder sprite 3 left 57914-57929
B $E23A,16,4
N $E24A bat sprite 3 left 57930-57945
B $E24A,16,4
N $E25A skull and crossbones sprite 3 left 57946-57961
B $E25A,16,4
N $E26A worm sprite 3 right 57962-57977
B $E26A,16,4
N $E27A boulder sprite 3 right 57978-57993
B $E27A,16,4
N $E28A bat sprite 3 right 57994-58009
B $E28A,16,4
N $E29A skull and crossbones sprite 3 right 58010-58025
B $E29A,16,4
N $E2AA worm sprite 4 left 58026-58041
B $E2AA,16,4
N $E2BA boulder sprite 4 left 58042-58057
B $E2BA,16,4
N $E2CA bat sprite 4 left 58058-58073
B $E2CA,16,4
N $E2DA skull and crossbones sprite 4 left 58074-58089
B $E2DA,16,4
N $E2EA worm sprite 4 right 58090-58105
B $E2EA,16,4
N $E2FA boulder sprite 4 right 58106-58121
B $E2FA,16,4
N $E30A bat sprite 4 right 58122-58137
B $E30A,16,4
N $E31A skull and crossbones sprite 4 right 58138-58153
B $E31A,16,4
b $E32A level 3 enemy sprites set #2
B $E32A,1,1
N $E32B bird sprite 1 left 58155-58170
B $E32B,16,4
N $E33B evil eye sprite 1 left 58171-58186
B $E33B,16,4
N $E34B beetle sprite 1 left 58187-58202
B $E34B,16,4
N $E35B parrot sprite 1 left 58203-58218
B $E35B,16,4
N $E36B bird sprite 1 right 58219-58234
B $E36B,16,4
N $E37B evil eye sprite 1 right 58235-58250
B $E37B,16,4
N $E38B beetle sprite 1 right 58251-58266
B $E38B,16,4
N $E39B parrot sprite 1 right 58267-58282
B $E39B,16,4
N $E3AB bird sprite 2 left 58283-58298
B $E3AB,16,4
N $E3BB evil eye sprite 2 left 58299-58314
B $E3BB,16,4
N $E3CB beetle sprite 2 left 58315-58330
B $E3CB,16,4
N $E3DB parrot sprite 2 left 58331-58346
B $E3DB,16,4
N $E3EB bird sprite 2 right 58347-58362
B $E3EB,16,4
N $E3FB evil eye sprite 2 right 58363-58378
B $E3FB,16,4
N $E40B beetle sprite 2 right 58379-58394
B $E40B,16,4
N $E41B parrot sprite 2 right 58395-58410
B $E41B,16,4
N $E42B bird sprite 3 left 58411-58426
B $E42B,16,4
N $E43B evil eye sprite 3 left 58427-58442
B $E43B,16,4
N $E44B beetle sprite 3 left 58443-58458
B $E44B,16,4
N $E45B parrot sprite 3 left 58459-58474
B $E45B,16,4
N $E46B bird sprite 3 right 58475-58490
B $E46B,16,4
N $E47B evil eye sprite 3 right 58491-58506
B $E47B,16,4
N $E48B beetle sprite 3 right 58507-58522
B $E48B,16,4
N $E49B parrot sprite 3 right 58523-58538
B $E49B,16,4
N $E4AB bird sprite 4 left 58539-58554
B $E4AB,16,4
N $E4BB evil eye sprite 4 left 58555-58570
B $E4BB,16,4
N $E4CB beetle sprite 4 left 58571-58586
B $E4CB,16,4
N $E4DB parrot sprite 4 left 58587-58602
B $E4DB,16,4
N $E4EB bird sprite 4 right 58603-58618
B $E4EB,16,4
N $E4FB evil eye sprite 4 right 58619-58634
B $E4FB,16,4
N $E50B beetle sprite 4 right 58635-58650
B $E50B,16,4
N $E51B parrot sprite 4 right 58651-58666
B $E51B,16,4
b $E52B $df landing area graphics LHS level 6 size 4*24
B $E52B,1,1 graphic info.
N $E52C column 1 attributes top-bottom
B $E52C,1,1 attribute (black paper, red ink)
B $E52D,1,1 attribute (black paper, magenta ink)
B $E52E,1,1 attribute (black paper, cyan ink)
N $E52F column 2 attributes top-bottom
B $E52F,1,1 attribute (black paper, red ink)
B $E530,1,1 attribute (black paper, magenta ink)
B $E531,1,1 attribute (black paper, cyan ink)
N $E532 column 3 attributes top-bottom
B $E532,1,1 attribute (black paper, red ink)
B $E533,1,1 attribute (black paper, magenta ink)
B $E534,1,1 attribute (black paper, cyan ink)
N $E535 column 4 attributes top-bottom
B $E535,1,1 attribute (black paper, red ink)
B $E536,1,1 attribute (black paper, magenta ink)
B $E537,1,1 attribute (black paper, cyan ink)
b $E598 $44 LHS yellow earth section size 1*40
B $E598,1,1 graphic info.
B $E599,1,1 attribute (black paper, yellow ink)
b $E5C2 $ee signpost post size 1*8
B $E5C2,1,1 graphic info.
B $E5C3,1,1 attribute (red paper, black ink)
b $E5CC $ed caves sign size 3*16
B $E5CC,1,1 graphic info.
b $E5CD left attributes
B $E5CD,1,1 attribute (green paper, black ink)
B $E5CE,1,1 attribute (green paper, black ink)
b $E5CF middle attributes
B $E5CF,1,1 attribute (green paper, black ink)
B $E5D0,1,1 attribute (green paper, black ink)
b $E5D1 right attributes
B $E5D1,1,1 attribute (green paper, black ink)
B $E5D2,1,1 attribute (black paper, black ink)
b $E603 $43 LHS yellow earth vertical section size 3*56
B $E603,1,1 graphic info.
B $E604,1,1 attribute (yellow paper, black ink)
b $E6AD $46 LHS yellow earth section size 2*16
B $E6AD,1,1 graphic info.
B $E6AE,1,1 upper left  attribute (black paper, yellow ink)
B $E6AF,1,1 lower left  attribute (black paper, black ink)
B $E6B0,1,1 upper right attribute (black paper, yellow ink)
B $E6B1,1,1 lower right attribute (yellow paper, black ink)
b $E6D2 $47 RHS yellow earth section size 2*16
B $E6D2,1,1 graphic info.
B $E6D3,1,1 upper left  attribute (black paper, yellow ink)
B $E6D4,1,1 lower left  attribute (yellow paper, black ink)
B $E6D5,1,1 upper right attribute (black paper, yellow ink)
B $E6D6,1,1 lower right attribute (black paper, black ink)
b $E6F7 $55 yellow earth weak bridge size 6*8
B $E6F7,1,1 graphic info.
B $E6F8,1,1 attribute (black paper, yellow ink)
B $E6F9,1,1 attribute (black paper, yellow ink)
B $E6FA,1,1 attribute (yellow paper, black ink)
B $E6FB,1,1 attribute (yellow paper, black ink)
B $E6FC,1,1 attribute (black paper, yellow ink)
B $E6FD,1,1 attribute (black paper, yellow ink)
b $E72E $e3 landing area graphics LHS level 2 size 4*24
B $E72E,1,1 graphic info.
N $E72F column 1 attributes top-bottom
B $E72F,1,1 attribute (black paper, green ink)
B $E730,1,1 attribute (black paper, yellow ink)
B $E731,1,1 attribute (black paper, yellow ink)
N $E732 column 2 attributes top-bottom
B $E732,1,1 attribute (black paper, green ink)
B $E733,1,1 attribute (black paper, yellow ink)
B $E734,1,1 attribute (black paper, yellow ink)
N $E735 column 3 attributes top-bottom
B $E735,1,1 attribute (black paper, green ink)
B $E736,1,1 attribute (black paper, yellow ink)
B $E737,1,1 attribute (black paper, yellow ink)
N $E738 column 4 attributes top-bottom
B $E738,1,1 attribute (black paper, green ink)
B $E739,1,1 attribute (black paper, yellow ink)
B $E73A,1,1 attribute (black paper, yellow ink)
b $E79B $77 gem size 2*16
B $E79B,1,1 graphic info.
B $E79C,1,1 attribute (black paper, cyan ink)
b $E7BD $79 snake size 2*16
B $E7BD,1,1 graphic info.
B $E7BE,1,1 attribute (black paper, red ink)
b $E7DF $75 feather size 2*16
B $E7DF,1,1 graphic info.
B $E7E0,1,1 attribute (black paper, magenta ink)
b $E801 $7c aqualung size 2*16
B $E801,1,1 graphic info.
B $E802,1,1 attribute (black paper, white ink)
b $E823 $49 flame torch size 2*16
B $E823,1,1 graphic info.
B $E824,1,1 upper left  attribute (black paper, cyan ink)
B $E825,1,1 lower left  attribute (black paper, white ink)
B $E826,1,1 upper right attribute (black paper, red ink)
B $E827,1,1 lower right attribute (black paper, black ink)
b $E848 $dd landing area graphics LHS level 8 size 4*24
B $E848,1,1 graphic info.
N $E849 column 1 attributes top-bottom
B $E849,1,1 attribute (black paper, red ink)
B $E84A,1,1 attribute (black paper, red ink)
B $E84B,1,1 attribute (black paper, red ink)
N $E84C column 2 attributes top-bottom
B $E84C,1,1 attribute (black paper, red ink)
B $E84D,1,1 attribute (black paper, red ink)
B $E84E,1,1 attribute (black paper, red ink)
N $E84F column 3 attributes top-bottom
B $E84F,1,1 attribute (black paper, red ink)
B $E850,1,1 attribute (black paper, red ink)
B $E851,1,1 attribute (black paper, red ink)
N $E852 column 4 attributes top-bottom
B $E852,1,1 attribute (black paper, red ink)
B $E853,1,1 attribute (black paper, red ink)
B $E854,1,1 attribute (black paper, red ink)
b $E8B5 $68 mike size 2*16
B $E8B5,1,1 graphic info.
B $E8B6,1,1 upper left  attribute (black paper, cyan ink)
B $E8B7,1,1 lower left  attribute (black paper, green ink)
B $E8B8,1,1 upper right attribute (black paper, magenta ink)
B $E8B9,1,1 lower right attribute (black paper, red ink)
b $E8DA $69 camera size 2*16
B $E8DA,1,1 graphic info.
B $E8DB,1,1 attribute (black paper, yellow ink)
b $E8FC $6a time bomb size 2*16
B $E8FC,1,1 graphic info.
B $E8FD,1,1 upper left  attribute (black paper, magenta ink)
B $E8FE,1,1 lower left  attribute (black paper, green ink)
B $E8FF,1,1 upper right attribute (black paper, yellow ink)
B $E900,1,1 lower right attribute (black paper, red ink)
b $E921 $7b shell size 2*16
B $E921,1,1 graphic info.
B $E922,1,1 attribute (black paper, red ink)
b $E943 $25 yellow pillar (found on island 3) size 2*32
B $E943,1,1 graphic info.
B $E944,1,1 attribute (yellow paper, black ink)
b $E985 $26 marble paving (also on top of 3 pillars) (found on island 3) size 2*8
B $E985,1,1 graphic info.
B $E986,1,1 attribute (black paper, white ink)
b $E997 $e2 landing area graphics LHS level 3 size 4*24
B $E997,1,1 graphic info.
N $E998 column 1 attributes top-bottom
B $E998,1,1 attribute (black paper, yellow ink)
B $E999,1,1 attribute (black paper, cyan ink)
B $E99A,1,1 attribute (black paper, magenta ink)
N $E99B column 2 attributes top-bottom
B $E99B,1,1 attribute (black paper, yellow ink)
B $E99C,1,1 attribute (black paper, cyan ink)
B $E99D,1,1 attribute (black paper, magenta ink)
N $E99E column 3 attributes top-bottom
B $E99E,1,1 attribute (black paper, yellow ink)
B $E99F,1,1 attribute (black paper, cyan ink)
B $E9A0,1,1 attribute (black paper, magenta ink)
N $E9A1 column 4 attributes top-bottom
B $E9A1,1,1 attribute (black paper, yellow ink)
B $E9A2,1,1 attribute (black paper, cyan ink)
B $E9A3,1,1 attribute (black paper, magenta ink)
b $EA04 $3e green platforms (found on island 3) size 2*8
B $EA04,1,1 graphic info.
B $EA05,1,1 attribute (black paper, green ink)
b $EA16 $27 magenta gargoyle size 1*24
B $EA16,1,1 graphic info.
B $EA17,1,1 attribute (magenta paper, black ink)
b $EA30 $59 yellow stripe roof (found on island 3) size 1*24
B $EA30,1,1 graphic info.
B $EA31,1,1 attribute (black paper, yellow ink)
b $EA4A $5a yellow stripe roof LHS edge (found on island 3) size 1*24
B $EA4A,1,1 graphic info.
B $EA4B,1,1 attribute (black paper, yellow ink)
b $EA64 $2b pillar outer RHS (used in rooms $2a,$2c,$6a,$6c) size 1*16
B $EA64,1,1 graphic info.
B $EA65,1,1 attribute (black paper, yellow ink)
b $EA76 $2c face carvings pillar top/bottom decoration (found on island 3) size 4*16
B $EA76,1,1 graphic info.
B $EA77,1,1 attribute (black paper, yellow ink)
b $EAB8 $4a black/white face with headdress (found on island 3) size 2*48
B $EAB8,1,1 graphic info.
N $EAB9 left attributes top-bottom
B $EAB9,1,1 attribute (black paper, white ink)
B $EABA,1,1 attribute (white paper, black ink)
B $EABB,1,1 attribute (white paper, black ink)
B $EABC,1,1 attribute (white paper, black ink)
B $EABD,1,1 attribute (white paper, black ink)
B $EABE,1,1 attribute (black paper, white ink)
N $EABF right attributes top-bottom
B $EABF,1,1 attribute (black paper, white ink)
B $EAC0,1,1 attribute (white paper, black ink)
B $EAC1,1,1 attribute (white paper, black ink)
B $EAC2,1,1 attribute (white paper, black ink)
B $EAC3,1,1 attribute (white paper, black ink)
B $EAC4,1,1 attribute (black paper, white ink)
b $EB25 $4b white/black '88' decoration (found on island 3) size 2*56
B $EB25,1,1 graphic info.
B $EB26,1,1 attribute (white paper, black ink)
b $EB97 $17 small green graphic on blimp size 2*8
B $EB97,1,1 graphic info.
B $EB98,1,1 attribute (black paper, green ink)
b $EBA9 $52 tree foliage (berries) (found on level 3) size 3*32
B $EBA9,1,1 graphic info.
N $EBAA column 1 attributes top-bottom
B $EBAA,1,1 attribute (black paper, magenta ink)
B $EBAB,1,1 attribute (black paper, magenta ink)
B $EBAC,1,1 attribute (yellow paper, black ink)
B $EBAD,1,1 attribute (yellow paper, black ink)
N $EBAE column 2 attributes top-bottom
B $EBAE,1,1 attribute (black paper, green ink)
B $EBAF,1,1 attribute (black paper, green ink)
B $EBB0,1,1 attribute (black paper, magenta ink)
B $EBB1,1,1 attribute (yellow paper, black ink)
N $EBB2 column 3 attributes top-bottom
B $EBB2,1,1 attribute (black paper, magenta ink)
B $EBB3,1,1 attribute (black paper, magenta ink)
B $EBB4,1,1 attribute (black paper, magenta ink)
B $EBB5,1,1 attribute (yellow paper, black ink)
b $EC16 level 2 enemy sprites set #2
B $EC16,1,1
N $EC17 scorpion sprite 1 left 60439-60454
B $EC17,16,4
N $EC27 caveman sprite 1 left 60455-60470
B $EC27,16,4
N $EC37 devil sprite 1 left 60471-60486
B $EC37,16,4
N $EC47 axe sprite 1 left 60487-60502
B $EC47,16,4
N $EC57 scorpion sprite 1 right 60503-60518
B $EC57,16,4
N $EC67 caveman sprite 1 right 60519-60534
B $EC67,16,4
N $EC77 devil sprite 1 right 60535-60550
B $EC77,16,4
N $EC87 axe sprite 1 right 60551-60566
B $EC87,16,4
N $EC97 scorpion sprite 2 left 60567-60582
B $EC97,16,4
N $ECA7 caveman sprite 2 left 60583-60598
B $ECA7,16,4
N $ECB7 devil sprite 2 left 60599-60614
B $ECB7,16,4
N $ECC7 axe sprite 2 left 60615-60630
B $ECC7,16,4
N $ECD7 scorpion sprite 2 right 60631-60646
B $ECD7,16,4
N $ECE7 caveman sprite 2 right 60647-60662
B $ECE7,16,4
N $ECF7 devil sprite 2 right 60663-60678
B $ECF7,16,4
N $ED07 axe sprite 2 right 60679-60694
B $ED07,16,4
N $ED17 scorpion sprite 3 left 60695-60710
B $ED17,16,4
N $ED27 caveman sprite 3 left 60711-60726
B $ED27,16,4
N $ED37 devil sprite 3 left 60727-60742
B $ED37,16,4
N $ED47 axe sprite 3 left 60743-60758
B $ED47,16,4
N $ED57 scorpion sprite 3 right 60759-60774
B $ED57,16,4
N $ED67 caveman sprite 3 right 60775-60790
B $ED67,16,4
N $ED77 devil sprite 3 right 60791-60806
B $ED77,16,4
N $ED87 axe sprite 3 right 60807-60822
B $ED87,16,4
N $ED97 scorpion sprite 4 left 60823-60838
B $ED97,16,4
N $EDA7 caveman sprite 4 left 60839-60854
B $EDA7,16,4
N $EDB7 devil sprite 4 left 60855-60870
B $EDB7,16,4
N $EDC7 axe sprite 4 left 60871-60886
B $EDC7,16,4
N $EDD7 scorpion sprite 4 right 60887-60902
B $EDD7,16,4
N $EDE7 caveman sprite 4 right 60903-60918
B $EDE7,16,4
N $EDF7 devil sprite 4 right 60919-60934
B $EDF7,16,4
N $EE07 axe sprite 4 right 60935-60950
B $EE07,16,4
b $EE17 $e6 vertical barrel (used to make up 'DDII' on 'any key to play' screen (60953-60968)) size 1*16
B $EE17,1,1 graphic info.
B $EE18,1,1 attribute (black paper, cyan ink)
b $EE29 $e7 RHS top horizontal and pipe bends down barrel (used to make up 'DDII' on 'any key to play' screen (60971-61002)) size 2*16
B $EE29,1,1
B $EE2A,1,1 attribute
b $EE4B $ea RHS bottom horizontal and pipe bends up barrel used to make up 'DDII' on 'any key to play' screen (61005-61036) size 2*16
B $EE4B,1,1
B $EE4C,1,1 attribute
b $EE6D $74 crossbow size 2*16
B $EE6D,1,1 graphic info.
B $EE6E,1,1 attribute (black paper, yellow ink)
b $EE8F $76 corkscrew size 2*16
B $EE8F,1,1 graphic info.
B $EE90,1,1 upper left  attribute (black paper, magenta ink)
B $EE91,1,1 lower left  attribute (black paper, green ink)
B $EE92,1,1 upper right attribute (black paper, cyan ink)
B $EE93,1,1 lower right attribute (black paper, yellow ink)
b $EEB4 $78 mask size 2*16
B $EEB4,1,1 graphic info.
B $EEB5,1,1 upper left  attribute (black paper, red ink)
B $EEB6,1,1 lower left  attribute (black paper, red ink)
B $EEB7,1,1 upper right attribute (black paper, yellow ink)
B $EEB8,1,1 lower right attribute (black paper, yellow ink)
b $EED9 $bb hand (pointing down) (found on level 5) size 4*48
B $EED9,1,1 graphic info.
N $EEDA column 1 attributes top-bottom
B $EEDA,1,1 attribute (black paper, white ink)
B $EEDB,1,1 attribute (black paper, red ink)
B $EEDC,1,1 attribute (black paper, red ink)
B $EEDD,1,1 attribute (black paper, red ink)
B $EEDE,1,1 attribute (black paper, red ink)
B $EEDF,1,1 attribute (black paper, red ink)
N $EEE0 column 2 attributes top-bottom
B $EEE0,1,1 attribute (black paper, white ink)
B $EEE1,1,1 attribute (black paper, red ink)
B $EEE2,1,1 attribute (black paper, red ink)
B $EEE3,1,1 attribute (black paper, red ink)
B $EEE4,1,1 attribute (black paper, red ink)
B $EEE5,1,1 attribute (black paper, red ink)
N $EEE6 column 3 attributes top-bottom
B $EEE6,1,1 attribute (black paper, white ink)
B $EEE7,1,1 attribute (black paper, red ink)
B $EEE8,1,1 attribute (black paper, red ink)
B $EEE9,1,1 attribute (black paper, red ink)
B $EEEA,1,1 attribute (black paper, red ink)
B $EEEB,1,1 attribute (black paper, black ink)
N $EEEC column 4 attributes top-bottom
B $EEEC,1,1 attribute (black paper, white ink)
B $EEED,1,1 attribute (black paper, red ink)
B $EEEE,1,1 attribute (black paper, red ink)
B $EEEF,1,1 attribute (black paper, red ink)
B $EEF0,1,1 attribute (black paper, black ink)
B $EEF1,1,1 attribute (black paper, black ink)
b $EFB2 $e0 landing area graphics LHS level 5 size 4*24
B $EFB2,1,1 graphic info.
N $EFB3 column 1 attributes top-bottom
B $EFB3,1,1 attribute (black paper, white ink)
B $EFB4,1,1 attribute (black paper, white ink)
B $EFB5,1,1 attribute (black paper, yellow ink)
N $EFB6 column 2 attributes top-bottom
B $EFB6,1,1 attribute (black paper, white ink)
B $EFB7,1,1 attribute (black paper, white ink)
B $EFB8,1,1 attribute (black paper, yellow ink)
N $EFB9 column 3 attributes top-bottom
B $EFB9,1,1 attribute (black paper, white ink)
B $EFBA,1,1 attribute (black paper, white ink)
B $EFBB,1,1 attribute (black paper, yellow ink)
N $EFBC column 4 attributes top-bottom
B $EFBC,1,1 attribute (black paper, white ink)
B $EFBD,1,1 attribute (black paper, white ink)
B $EFBE,1,1 attribute (black paper, yellow ink)
b $F01F $bd tuba size 3*24
B $F01F,1,1 graphic info.
N $F020 left column top-bottom
B $F020,1,1 attribute (black paper, yellow ink)
B $F021,1,1 attribute (yellow paper, black ink)
B $F022,1,1 attribute (yellow paper, black ink)
N $F023 middle column top-bottom
B $F023,1,1 attribute (black paper, yellow ink)
B $F024,1,1 attribute (yellow paper, black ink)
B $F025,1,1 attribute (yellow paper, black ink)
N $F026 right column top-bottom
B $F026,1,1 attribute (black paper, yellow ink)
B $F027,1,1 attribute (yellow paper, black ink)
B $F028,1,1 attribute (yellow paper, black ink)
b $F071 $72 jack size 2*16
B $F071,1,1 graphic info.
B $F072,1,1 upper left  attribute (black paper, cyan ink)
B $F073,1,1 lower left  attribute (black paper, green ink)
B $F074,1,1 upper right attribute (black paper, magenta ink)
B $F075,1,1 lower right attribute (black paper, green ink)
b $F096 level 6 enemy sprites set #2
B $F096,1,1
N $F097 schoolboy sprite 1 left 61591-61606
B $F097,16,4
N $F0A7 police hat sprite 1 left 61607-61622
B $F0A7,16,4
N $F0B7 temp guage sprite 1 left 61623-61638
B $F0B7,16,4
N $F0C7 walking chassis sprite 1 left 61639-61654
B $F0C7,16,4
N $F0D7 schoolboy sprite 1 right 61655-61670
B $F0D7,16,4
N $F0E7 police hat sprite 1 right 61671-61686
B $F0E7,16,4
N $F0F7 temp guage sprite 1 right 61687-61702
B $F0F7,16,4
N $F107 walking chassis sprite 1 right 61703-61718
B $F107,16,4
N $F117 schoolboy sprite 2 left 61719-61734
B $F117,16,4
N $F127 police hat sprite 2 left 61735-61750
B $F127,16,4
N $F137 temp guage sprite 2 left 61751-61766
B $F137,16,4
N $F147 walking chassis sprite 2 left 61767-61782
B $F147,16,4
N $F157 schoolboy sprite 2 right 61783-61798
B $F157,16,4
N $F167 police hat sprite 2 right 61799-61814
B $F167,16,4
N $F177 temp guage sprite 2 right 61815-61830
B $F177,16,4
N $F187 walking chassis sprite 2 right 61831-61846
B $F187,16,4
N $F197 schoolboy sprite 3 left 61847-61862
B $F197,16,4
N $F1A7 police hat sprite 3 left 61863-61878
B $F1A7,16,4
N $F1B7 temp guage sprite 3 left 61879-61894
B $F1B7,16,4
N $F1C7 walking chassis sprite 3 left 61895-61910
B $F1C7,16,4
N $F1D7 schoolboy sprite 3 right 61911-61926
B $F1D7,16,4
N $F1E7 police hat sprite 3 right 61927-61942
B $F1E7,16,4
N $F1F7 temp guage sprite 3 right 61943-61958
B $F1F7,16,4
N $F207 walking chassis sprite 3 right 61959-61974
B $F207,16,4
N $F217 schoolboy sprite 4 left 61975-61990
B $F217,16,4
N $F227 police hat sprite 4 left 61991-62006
B $F227,16,4
N $F237 temp guage sprite 4 left 62007-62022
B $F237,16,4
N $F247 walking chassis sprite 4 left 62023-62038
B $F247,16,4
N $F257 schoolboy sprite 4 right 62039-62054
B $F257,16,4
N $F267 police hat sprite 4 right 62055-62070
B $F267,16,4
N $F277 temp guage sprite 4 right 62071-62086
B $F277,16,4
N $F287 walking chassis sprite 4 right 62087-62102
B $F287,16,4
b $F297 level 3 enemy sprites set #1
B $F297,1,1
N $F298 snail sprite 1 left 62104-62119
B $F298,16,4
N $F2A8 native sprite 1 left 62120-62135
B $F2A8,16,4
N $F2B8 diamond sprite 1 left 62136-62151
B $F2B8,16,4
N $F2C8 ghost sprite 1 left 62152-62167
B $F2C8,16,4
N $F2D8 snail sprite 1 right 62168-62183
B $F2D8,16,4
N $F2E8 native sprite 1 right 62184-62199
B $F2E8,16,4
N $F2F8 diamond sprite 1 right 62200-62215
B $F2F8,16,4
N $F308 ghost sprite 1 right 62216-62231
B $F308,16,4
N $F318 snail sprite 2 left 62232-62247
B $F318,16,4
N $F328 native sprite 2 left 62248-62263
B $F328,16,4
N $F338 diamond sprite 2 left 62264-62279
B $F338,16,4
N $F348 ghost sprite 2 left 62280-62295
B $F348,16,4
N $F358 snail sprite 2 right 62296-62311
B $F358,16,4
N $F368 native sprite 2 right 62312-62327
B $F368,16,4
N $F378 diamond sprite 2 right 62328-62343
B $F378,16,4
N $F388 ghost sprite 2 right 62344-62359
B $F388,16,4
N $F398 snail sprite 3 left 62360-62375
B $F398,16,4
N $F3A8 native sprite 3 left 62376-62391
B $F3A8,16,4
N $F3B8 diamond sprite 3 left 62392-62407
B $F3B8,16,4
N $F3C8 ghost sprite 3 left 62408-62423
B $F3C8,16,4
N $F3D8 snail sprite 3 right 62424-62439
B $F3D8,16,4
N $F3E8 native sprite 3 right 62440-62455
B $F3E8,16,4
N $F3F8 diamond sprite 3 right 62456-62471
B $F3F8,16,4
N $F408 ghost sprite 3 right 62472-62487
B $F408,16,4
N $F418 snail sprite 4 left 62488-62503
B $F418,16,4
N $F428 native sprite 4 left 62504-62519
B $F428,16,4
N $F438 diamond sprite 4 left 62520-62535
B $F438,16,4
N $F448 ghost sprite 4 left 62536-62551
B $F448,16,4
N $F458 snail sprite 4 right 62552-62567
B $F458,16,4
N $F468 native sprite 4 right 62568-62583
B $F468,16,4
N $F478 diamond sprite 4 right 62584-62599
B $F478,16,4
N $F488 ghost sprite 4 right 62600-62615
B $F488,16,4
b $F498 level 5 enemy sprites set #2
B $F498,1,1
N $F499 big nose sprite 1 left 62617-62632
B $F499,16,4
N $F4A9 man stick sprite 1 left 62633-62648
B $F4A9,16,4
N $F4B9 submarine sprite 1 left 62649-62664
B $F4B9,16,4
N $F4C9 camera sprite 1 left 62665-62680
B $F4C9,16,4
N $F4D9 big nose sprite 1 right 62681-62696
B $F4D9,16,4
N $F4E9 man stick sprite 1 right 62697-62712
B $F4E9,16,4
N $F4F9 submarine sprite 1 right 62713-62728
B $F4F9,16,4
N $F509 camera sprite 1 right 62729-62744
B $F509,16,4
N $F519 big nose sprite 2 left 62745-62760
B $F519,16,4
N $F529 man stick sprite 2 left 62761-62776
B $F529,16,4
N $F539 submarine sprite 2 left 62777-62792
B $F539,16,4
N $F549 camera sprite 2 left 62793-62808
B $F549,16,4
N $F559 big nose sprite 2 right 62809-62824
B $F559,16,4
N $F569 man stick sprite 2 right 62825-62840
B $F569,16,4
N $F579 submarine sprite 2 right 62841-62856
B $F579,16,4
N $F589 camera sprite 2 right 62857-62872
B $F589,16,4
N $F599 big nose sprite 3 left 62873-62888
B $F599,16,4
N $F5A9 man stick sprite 3 left 62889-62904
B $F5A9,16,4
N $F5B9 submarine sprite 3 left 62905-62920
B $F5B9,16,4
N $F5C9 camera sprite 3 left 62921-62936
B $F5C9,16,4
N $F5D9 big nose sprite 3 right 62937-62952
B $F5D9,16,4
N $F5E9 man stick sprite 3 right 62953-62968
B $F5E9,16,4
N $F5F9 submarine sprite 3 right 62969-62984
B $F5F9,16,4
N $F609 camera sprite 3 right 62985-63000
B $F609,16,4
N $F619 big nose sprite 4 left 63001-63016
B $F619,16,4
N $F629 man stick sprite 4 left 63017-63032
B $F629,16,4
N $F639 submarine sprite 4 left 63033-63048
B $F639,16,4
N $F649 camera sprite 4 left 63049-63064
B $F649,16,4
N $F659 big nose sprite 4 right 63065-63080
B $F659,16,4
N $F669 man stick sprite 4 right 63081-63096
B $F669,16,4
N $F679 submarine sprite 4 right 63097-63112
B $F679,16,4
N $F689 camera sprite 4 right 63113-63128
B $F689,16,4
b $F699 $b7 hand on 'any key to play' screen size 6*32
B $F699,1,1 graphic info.
N $F69A column 1 (from the LHS) (when mirrored column is from the RHS)
B $F69A,1,1 attribute (black paper, magenta ink)
B $F69B,1,1 attribute (black paper, magenta ink)
B $F69C,1,1 attribute (black paper, black ink)
B $F69D,1,1 attribute (black paper, black ink)
N $F69E column 2
B $F69E,1,1 attribute (black paper, magenta ink)
B $F69F,1,1 attribute (black paper, magenta ink)
B $F6A0,1,1 attribute (black paper, magenta ink)
B $F6A1,1,1 attribute (black paper, black ink)
N $F6A2 column 3
B $F6A2,1,1 attribute (black paper, magenta ink)
B $F6A3,1,1 attribute (black paper, magenta ink)
B $F6A4,1,1 attribute (black paper, magenta ink)
B $F6A5,1,1 attribute (black paper, magenta ink)
N $F6A6 column 4
B $F6A6,1,1 attribute (black paper, magenta ink)
B $F6A7,1,1 attribute (black paper, magenta ink)
B $F6A8,1,1 attribute (black paper, magenta ink)
B $F6A9,1,1 attribute (black paper, magenta ink)
N $F6AA column 5
B $F6AA,1,1 attribute (black paper, magenta ink)
B $F6AB,1,1 attribute (black paper, magenta ink)
B $F6AC,1,1 attribute (black paper, magenta ink)
B $F6AD,1,1 attribute (black paper, magenta ink)
N $F6AE column 6
B $F6AE,1,1 attribute (black paper, white ink)
B $F6AF,1,1 attribute (black paper, white ink)
B $F6B0,1,1 attribute (black paper, white ink)
B $F6B1,1,1 attribute (black paper, white ink)
b $F772 $e8 'ANY KEY' size 6*8
B $F772,1,1 graphic info.
B $F773,1,1 attribute (bright, green paper, black ink)
b $F7A4 $e9 'TO PLAY' size 5*8
B $F7A4,1,1 graphic info
B $F7A5,1,1 attribute (bright, green paper, black ink)
b $F7CE unused bytes
c $F7D0
C $F7D4,3 screen number
C $F7D7,2 is dan in the blimp room?
C $F7D9,1 no, so exit
N $F7DA yes
C $F7DA,3 get level info.
C $F7DD,3 hl points to address which contains airship ladder row
C $F7E1,2 level complete (bit 0 set)
C $F7E4,3 draw ladder from airship (bit 1 set)
C $F7E8,3 entering new level (bit 2 set)
C $F7EC,3 scroll base graphics (bit 3 set airship moving)
C $F7EF,3 dan row
C $F7F2,2 row less than 8?
C $F7F4,1 no, so exit
C $F7F5,3 dan column
C $F7F8,2 column more than 15?
C $F7FA,1 no, so exit
C $F7FD,3 is dan carrying fuel?
C $F800,1 no, so exit
C $F801,4 has dan played the record on the jukebox?
C $F805,1 no, so exit
N $F806 dan is stood in the correct position, has some fuel and has played the record on the jukebox
C $F806,4 got the stop fuel theft attribute?
C $F80A,2 yes
C $F80C,3 no, so remove fuel from inventory
C $F80F,4 clear 'played record on jukebox'
C $F813,4 remove 'open secret passages' attribute
C $F817,4 remove 'walk on water' attribute
C $F81B,4 enemy table
C $F822,2 for each enemy
C $F824,4 set enemy death
C $F828,4 set sprite action counter (number of times to run death routine)
C $F830,4 set level complete
C $F834,3 attribute directly behind dan's legs
N $F837 (top right of ladder)
C $F837,2 set paper 0, ink 7
C $F83B,1 airship ladder row
C $F83C,2 7th row? (down to the last ladder section? (opposite dan's legs))
C $F83E,2 no
N $F840 yes
C $F840,4 clear level complete flag
C $F844,4 set airship moving
N $F848 fill in the airship graphics
C $F848,3 h=row, l=column
C $F84B,2 graphic=middle section of airship pod
C $F84D,3 display graphic
C $F850,1 column=column+1
C $F851,3 display graphic
C $F855,1 hl=$070e (h=row, l=column)
C $F856,2 graphic=ladder section
C $F858,3 graphic lookup table
C $F85B,3 get address from lookup table
C $F85F,1 de now points to start of actual graphic data
C $F863,3 clear graphic from screen
C $F86B,3 initialise tune
C $F86E,3 write background graphics to buffer
C $F871,1 hl points to airship ladder row
C $F872,1 airship ladder row
C $F873,2 column
C $F878,3 clear x character squares b=columns to clear, c=rows to clear (rolling up the ladder)
C $F87B,1 restore hl pointing to airship ladder row
C $F87C,1 airship ladder row=airship ladder row-1
C $F87F,3 current propeller graphic
C $F88C,4 clear draw ladder from airship flag
C $F895,3 display graphic
C $F898,3 airship ladder row
C $F89D,3 set sound affect
C $F8A0,1 create another sound affect
C $F8A3,3 set sound affect
C $F8A6,4 clear entering a new world flag
C $F8AA,2 column to start drawing base graphics (negative number off screen)
C $F8AF,3 8- this byte=current level
C $F8B2,1 last level?
C $F8B3,3 yes, so restart game
C $F8B6,1 b=current level, a=current level
C $F8B8,1 a=a*3
C $F8B9,2 pending level, will point to either torch, skull, gem, crossbow, dumbbell, snips, fan or mike, ie. 1st item of 3 special items for the level
c $F8BB
C $F8BE,3 is dan carrying the corkscrew?
C $F8C1,2 no
C $F8C3,3 advance 1 (additional) level if dan is carrying the corkscrew (proceed from level 4 to level 6)
c $F8C6 remove special items at start of new level
D $F8C6 On commencement of a new level, pending the level, if carried, dan will lose 3 of first item, 1 of second item and 1 of third item. #TABLE(default,centre,:w) { =h Level | =h Item 1 | =h Item 2 | =h Item 2 } { 1 | $80 food     | $81 food     | $82 food } { 2 | $7d torch    | $7e drill    | $7f food mixer } { 3 | $7a skull    | $7b shell    | $7c aqualung } { 4 | $77 gem      | $78 mask     | $79 snake } { 5 | $74 crossbow | $75 feather  | $76 corkscrew } { 6 | $71 dumbbell | $72 jack     | $73 boots } { 7 | $6e snips    | $6f pump     | $70 engine } { 8 | $6b fan      | $6c mandolin | $6d scissors } TABLE#
C $F8C9,3 remove 3 of first item if carried
C $F8CF,3 remove 1 of next item if carried
C $F8D3,3 remove 1 of next item if carried
C $F8D6,3 advance 1 level
C $F8D9,3 write background graphics to buffer
C $F8DC,3 draw propeller graphics+alter mirrorsoft attributes
C $F8E2,4 d=base graphics column, e=shifted graphics amount
C $F8E7,2 e=4?
C $F8E9,2 no
C $F8EC,1 column=column+1
C $F8EE,2 10th column?
C $F8F0,2 no
C $F8F2,4 airship no longer moving
C $F8FA,4 set draw ladder from airship
C $F8FE,3 copy background graphics around dan to screen
C $F901,3 h=row, l=column
C $F904,2 top of ladder graphic
C $F906,3 draw graphic
C $F909,1 next graphic
C $F90A,1 row=row+1
C $F90B,3 display graphic
C $F90F,3 store airship ladder row
C $F912,3 h=row, l=column
C $F918,3 clear x character squares b=columns to clear, c=rows to clear
C $F921,2 33rd column? (off screen) (when dan has left a world)
C $F923,2 no
C $F925,4 set entering a new world flag
C $F93F,3 display graphic
C $F951,3 display graphic
C $F95F,3 clear x character squares b=columns to clear, c=rows to clear
N $F962 draw propeller graphics+alter mirrorsoft attributes
C $F962,3 counter
C $F966,1 will give same number for 2 passes (pattern: $38,$38,$39,$39,$3a,$3a,$3b,$3b)
C $F967,2 mask bits 0+1
C $F969,2 propeller graphic, possible outcome: $38,$39,$3a,$3b
C $F96B,3 store current propeller graphic
C $F96E,3 h=row, l=column
C $F973,2 will be zero every 4 passes
C $F975,1 row=row+1
C $F976,3 display propeller graphic
C $F979,3 top left attribute of word 'mirrorsoft'
C $F97C,3 amount to add at end of a row to start at correct column on next line
C $F982,1 ink will go up in 2s (blue, magenta, cyan, white)
C $F983,2 paper always red and ink always at least blue
C $F985,2 3 rows
C $F987,2 21 columns
C $F989,1 set attribute
C $F98A,1 next column
C $F98D,1 hl points to start of next row
C $F98E,1 next row
c $F992 write background graphics to buffer clear buffer $6000-643f (24576-25663)
C $F99A,3 clear 1088 bytes
C $F99F,3 current level
C $F9A2,2 $dd=start of landing area graphics lookup values
N $F9A4 'a' register now contains correct graphic lookup pending the level
C $F9A4,3 graphic lookup table
C $F9A7,3 get address from lookup table
N $F9AA de now points to start of landing area graphics for this level
C $F9AA,1 ignore the normal graphic info. for this graphic and move to start of attribute data
C $F9AB,1 hl=$6000 (start of buffer)
C $F9AC,2 ($6000)=$22  (set graphic info.) %00100010 bits 0,1,2 PLUS ONE=height(rows), bits 3,4,5 PLUS ONE=width(columns)
N $F9AE therefore, set 3 rows and 5 columns (5*24)
C $F9AE,1 hl=$6001
C $F9AF,1 preserve start location of landing area graphic attribute data
N $F9B0 copy 3 attributes
C $F9B0,2 number of attributes to copy
C $F9B3,1 copy attributes into buffer ($d77c-$d77e copied to $6001-6003)
N $F9B8 copy additional 4 sets (4*3 bytes) of attribute pattern now at $6001-$6003 to $6004-$6006, $6007-$6009, $600a-$600c and $600d-$600f
N $F9C0 copy actual graphic data into buffer
C $F9C0,1 hl pointing to start of landing area graphic attribute data
C $F9C3,1 hl now points to landing area graphic actual graphic data
C $F9C4,2 copy 96 bytes (original size= 4*24)
N $F9C8 make a copy of the data now at $6000-$606f(111 bytes) to $6088-$60f7(111 bytes)
C $F9C9,1 hl=$6000
C $F9CA,2 de=$6088
C $F9CC,2 copy 136 bytes
C $F9D0,1 de=$6110
C $F9D1,3 b=columns, c=rows
C $F9D7,3 create mirror image of graphic data (not attributes)
C $F9DE,3 816 bytes
N $F9E3 de=$6440
C $F9EA,1 a=2 number of pixels to shift right
C $F9EB,3 b=columns, c=rows
C $F9EE,3 shift pixels to right
C $F9F6,1 a=2 number of pixels to shift right
C $F9F8,3 b=columns, c=rows
C $F9FB,3 shift pixels to right
b $FA08
B $FA08,1,1 shifted graphics amount
B $FA09,1,1 base graphics column
B $FA0A,1,1 airship ladder row
B $FA0B,1,1 current propeller graphic
b $FA0C coordinate lookup table
D $FA0C #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { 1 | row } { 2 | column } TABLE#
B $FA0C,2,2 $00
B $FA0E,2,2 $01
B $FA10,2,2 $02
B $FA12,2,2 $03
B $FA14,2,2 $04
B $FA16,2,2 $05
B $FA18,2,2 $06
B $FA1A,2,2 $07
B $FA1C,2,2 $08
B $FA1E,2,2 $09
B $FA20,2,2 $0a
B $FA22,2,2 $0b
B $FA24,2,2 $0c
B $FA26,2,2 $0d
B $FA28,2,2 $0e
B $FA2A,2,2 $0f
B $FA2C,2,2 $10
B $FA2E,2,2 $11
B $FA30,2,2 $12
B $FA32,2,2 $13
B $FA34,2,2 $14
B $FA36,2,2 $15
B $FA38,2,2 $16
B $FA3A,2,2 $17
B $FA3C,2,2 $18
B $FA3E,2,2 $19
B $FA40,2,2 $1a
B $FA42,2,2 $1b
B $FA44,2,2 $1c
B $FA46,2,2 $1d
B $FA48,2,2 $1e
B $FA4A,2,2 $1f
B $FA4C,2,2 $20
B $FA4E,2,2 $21
B $FA50,2,2 $22
B $FA52,2,2 $23
B $FA54,2,2 $24
B $FA56,2,2 $25
B $FA58,2,2 $26
B $FA5A,2,2 $27
B $FA5C,2,2 $28
B $FA5E,2,2 $29
B $FA60,2,2 $2a
B $FA62,2,2 $2b
B $FA64,2,2 $2c
B $FA66,2,2 $2d
B $FA68,2,2 $2e
B $FA6A,2,2 $2f
B $FA6C,2,2 $30
B $FA6E,2,2 $31
B $FA70,2,2 $32
B $FA72,2,2 $33
B $FA74,2,2 $34
B $FA76,2,2 $35
B $FA78,2,2 $36
B $FA7A,2,2 $37
B $FA7C,2,2 $38
B $FA7E,2,2 $39
B $FA80,2,2 $3a
B $FA82,2,2 $3b
B $FA84,2,2 $3c
B $FA86,2,2 $3d
B $FA88,2,2 $3e
B $FA8A,2,2 $3f
B $FA8C,2,2 $40
B $FA8E,2,2 $41
B $FA90,2,2 $42
B $FA92,2,2 $43
B $FA94,2,2 $44
B $FA96,2,2 $45
B $FA98,2,2 $46
B $FA9A,2,2 $47
B $FA9C,2,2 $48
B $FA9E,2,2 $49
B $FAA0,2,2 $4a
B $FAA2,2,2 $4b
B $FAA4,2,2 $4c
B $FAA6,2,2 $4d
B $FAA8,2,2 $4e
B $FAAA,2,2 $4f
B $FAAC,2,2 $50
B $FAAE,2,2 $51
B $FAB0,2,2 $52
B $FAB2,2,2 $53
B $FAB4,2,2 $54
B $FAB6,2,2 $55
B $FAB8,2,2 $56
B $FABA,2,2 $57
B $FABC,2,2 $58
B $FABE,2,2 $59
B $FAC0,2,2 $5a
B $FAC2,2,2 $5b
B $FAC4,2,2 $5c
B $FAC6,2,2 $5d
B $FAC8,2,2 $5e
B $FACA,2,2 $5f
B $FACC,2,2 $60
B $FACE,2,2 $61
B $FAD0,2,2 $62
B $FAD2,2,2 $63
B $FAD4,2,2 $64
B $FAD6,2,2 $65
B $FAD8,2,2 $66
B $FADA,2,2 $67
B $FADC,2,2 $68
B $FADE,2,2 $69
B $FAE0,2,2 $6a
B $FAE2,2,2 $6b
B $FAE4,2,2 $6c
B $FAE6,2,2 $6d
B $FAE8,2,2 $6e
B $FAEA,2,2 $6f
B $FAEC,2,2 $70
B $FAEE,2,2 $71
B $FAF0,2,2 $72
B $FAF2,2,2 $73
B $FAF4,2,2 $74
B $FAF6,2,2 $75
B $FAF8,2,2 $76
B $FAFA,2,2 $77
B $FAFC,2,2 $78
B $FAFE,2,2 $79
B $FB00,2,2 $7a
B $FB02,2,2 $7b
B $FB04,2,2 $7c
B $FB06,2,2 $7d
B $FB08,2,2 $7e
B $FB0A,2,2 $7f
B $FB0C,2,2 $80
B $FB0E,2,2 $81
B $FB10,2,2 $82
B $FB12,2,2 $83
B $FB14,2,2 $84
B $FB16,2,2 $85
B $FB18,2,2 $86
B $FB1A,2,2 $87
B $FB1C,2,2 $88
B $FB1E,2,2 $89
B $FB20,2,2 $8a
B $FB22,2,2 $8b
B $FB24,2,2 $8c
B $FB26,2,2 $8d
B $FB28,2,2 $8e
B $FB2A,2,2 $8f
B $FB2C,2,2 $90
B $FB2E,2,2 $91
B $FB30,2,2 $92
B $FB32,2,2 $93
B $FB34,2,2 $94
B $FB36,2,2 $95
B $FB38,2,2 $96
B $FB3A,2,2 $97
B $FB3C,2,2 $98
B $FB3E,2,2 $99
B $FB40,2,2 $9a
B $FB42,2,2 $9b
B $FB44,2,2 $9c
B $FB46,2,2 $9d
B $FB48,2,2 $9e
B $FB4A,2,2 $9f
B $FB4C,2,2 $a0
B $FB4E,2,2 $a1
B $FB50,2,2 $a2
B $FB52,2,2 $a3
B $FB54,2,2 $a4
B $FB56,2,2 $a5
B $FB58,2,2 $a6
B $FB5A,2,2 $a7
B $FB5C,2,2 $a8
B $FB5E,2,2 $a9
B $FB60,2,2 $aa
B $FB62,2,2 $ab
B $FB64,2,2 $ac
B $FB66,2,2 $ad
B $FB68,2,2 $ae
B $FB6A,2,2 $af
B $FB6C,2,2 $b0
B $FB6E,2,2 $b1
B $FB70,2,2 $b2
B $FB72,2,2 $b3
B $FB74,2,2 $b4
B $FB76,2,2 $b5
B $FB78,2,2 $b6
B $FB7A,2,2 $b7
B $FB7C,2,2 $b8
B $FB7E,2,2 $b9
B $FB80,2,2 $ba
B $FB82,2,2 $bb
B $FB84,2,2 $bc
B $FB86,2,2 $bd
B $FB88,2,2 $be
B $FB8A,2,2 $bf
B $FB8C,2,2 $c0
B $FB8E,2,2 $c1
B $FB90,2,2 $c2
B $FB92,2,2 $c3
B $FB94,2,2 $c4
B $FB96,2,2 $c5
B $FB98,2,2 $c6
B $FB9A,2,2 $c7
B $FB9C,2,2 $c8
B $FB9E,2,2 $c9
B $FBA0,2,2 $ca
B $FBA2,2,2 $cb
B $FBA4,2,2 $cc
B $FBA6,2,2 $cd
B $FBA8,2,2 $ce
B $FBAA,2,2 $cf
B $FBAC,2,2 $d0
B $FBAE,2,2 $d1
B $FBB0,2,2 $d2
B $FBB2,2,2 $d3
B $FBB4,2,2 $d4
B $FBB6,2,2 $d5
B $FBB8,2,2 $d6
B $FBBA,2,2 $d7
B $FBBC,2,2 $d8
B $FBBE,2,2 $d9
B $FBC0,2,2 $da
B $FBC2,2,2 $db
B $FBC4,2,2 $dc
B $FBC6,2,2 $dd
B $FBC8,2,2 $de
B $FBCA,2,2 $df
B $FBCC,2,2 $e0
B $FBCE,2,2 $e1
B $FBD0,2,2 $e2
B $FBD2,2,2 $e3
B $FBD4,2,2 $e4
B $FBD6,2,2 $e5
B $FBD8,2,2 $e6
B $FBDA,2,2 $e7
B $FBDC,2,2 $e8
B $FBDE,2,2 $e9
B $FBE0,2,2 $ea
B $FBE2,2,2 $eb
B $FBE4,2,2 $ec
B $FBE6,2,2 $ed
B $FBE8,2,2 $ee
B $FBEA,2,2 $ef
B $FBEC,2,2 $f0
B $FBEE,2,2 $f1
B $FBF0,2,2 $f2
B $FBF2,2,2 $f3
B $FBF4,2,2 $f4
B $FBF6,2,2 $f5
B $FBF8,2,2 $f6
B $FBFA,2,2 $f7
B $FBFC,2,2 $f8
B $FBFE,2,2 $f9
b $FC00 blitzen ray gun firing graphics (size 1*8)
D $FC00 ray gun firing graphic 1
N $FC08 ray gun firing graphic 2
N $FC10 ray gun firing graphic 3
N $FC18 ray gun firing graphic 4
b $FC20 blitzen sprite attributes
D $FC20 left column attributes (top to bottom)
B $FC20,1,1 attribute (bright, black paper, yellow ink)
B $FC21,1,1 attribute (bright, black paper, magenta ink)
B $FC22,1,1 attribute (bright, black paper, blue ink)
N $FC23 middle column attributes (top to bottom)
B $FC23,1,1 attribute (bright, black paper, yellow ink)
B $FC24,1,1 attribute (bright, black paper, magenta ink)
B $FC25,1,1 attribute (bright, black paper, blue ink)
N $FC26 right column attributes (top to bottom)
B $FC26,1,1 attribute (bright, black paper, yellow ink)
B $FC27,1,1 attribute (bright, black paper, magenta ink)
B $FC28,1,1 attribute (bright, black paper, blue ink)
b $FC29 tune data
B $FC29,723,10,18,12,9,15*2,32,23,8*2,24,23,14,25,20*2,25,21,10,13,18,20,27,16,15,34,84,80,84
s $FEFC
i $FF14 remains of tape loader
i $FFFF
