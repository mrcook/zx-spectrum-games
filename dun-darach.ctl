> $5800 ; SkoolKit disassembly for Dun Darach
> $5800 ;
> $5800 ; Copyright (c) 2019 Lunysoft (this disassembly)
> $5800 ; Copyright (c) 1985 Carter Follis Software Associates / Gargoyle Games Ltd. (Dun Darach)
> $5800 @start=$6908
@ $5800 org
b $5800 ATTR
B $5800,166,8*20,6
@ $58A6 label=ATTR_Message
B $58A6,8,8 Message area
@ $5A81 label=ATTR_5a81
@ $5AD3 label=ATTR_AreaName1
@ $5AF3 label=ATTR_AreaName2
B $58AE,594,8*2,1,8*56,2,8*10,2,8,5,8*2,3,8,5
b $5B00 Spare memory for creating temprory data / bitmaps.
@ $5B00 label=ScratchPad
B $5B00,143,8*17,7
@ $5B8F label=ScratchPad_DoorBottom
B $5B8F,8,8 Bottom of door when copied to scatchpad.
B $5B97,73,8*9,1
@ $5BE0 label=Bitmap_temp
B $5BE0,6,6 Temporary memory for creating an 8x8 bitmap.
@ $5BE6 label=_5be6_PathEW
W $5BE6,2,2 Points to the roads on the E/W map
@ $5BE8 label=_5be8_PathNS
W $5BE8,2,2 Points to the roads on the N/S map
@ $5BEA label=Temp_PathPtr
@ $5BEC label=Temp_DistanceA
@ $5BEE label=Temp_DistanceB
W $5BEA,12,2
@ $5BF6 label=People_TempCoordNS
W $5BF6,2,2 Temporary N/S coord.
@ $5BF8 label=People_TempCoordEW
W $5BF8,2,2 Temporary E/W coord.
@ $5BFA label=Temp_DirCompass
B $5BFA,1,1 Temporary camera compass for person's direction.
B $5BFB,125,8*15,5
@ $5C78 label=GameTime_mins
B $5C78,1,1 $FF minutes in an hour.
@ $5C79 label=GameTime_hours
B $5C79,1,1 $40 hours a day. ($20 daytime, $20 nighttime).
B $5C7A,24,8
b $5C92 Temporary store which gets used for copy blocks.
@ $5C92 label=TempStore
B $5C92,401,8*50,1
b $5E23 Data block at 5E23
@ $5E23 label=Stack
B $5E23,1,1
b $5E24 Offscreen Attribute table.
@ $5E24 label=Offscreen_Attr
@ $5E25 label=Offscreen_Attr2
B $5E24,34,1,8*4,1
@ $5E46 label=Bg_ItemIndex
B $5E46,8,8 Index to background items relative to whats on the screen.
B $5E4E,8,8
@ $5E56 label=Bg_ItemIndexHero
B $5E56,8,8 Index to item that is directly behind hero.
B $5E5E,10,8,2
b $5E68 Offscreen
@ $5E68 label=Offscreen_Bitmap
B $5E68,1,1 First column of offscreen.
@ $5E69 label=Offscreen_TopLine
@ $5F79 label=Offscreen_Second
@ $6089 label=Offscreen_Third
B $5E69,626,8*78,2
N $60DB ??Bytes blitted to ATTR(5B00...)??
@ $60DB label=_60db
B $60DB,4,4 Four bytes to Attr, $1E bytes skipped.
B $60DF,30,8*3,6
N $60FD ??Bytes blitted to ATTR(5B00...)??
B $60FD,4,4 Four bytes to Attr, $1E bytes skipped.
B $6101,30,8*3,6
N $611F ??Bytes blitted to ATTR(5B00...)??
B $611F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6123,30,8*3,6
N $6141 ??Bytes blitted to ATTR(5B00...)??
B $6141,4,4 Four bytes to Attr, $1E bytes skipped.
B $6145,30,8*3,6
N $6163 ??Bytes blitted to ATTR(5B00...)??
B $6163,4,4 Four bytes to Attr, $1E bytes skipped.
B $6167,30,8*3,6
N $6185 ??Bytes blitted to ATTR(5B00...)??
B $6185,4,4 Four bytes to Attr, $1E bytes skipped.
B $6189,30,8*3,6
N $61A7 ??Bytes blitted to ATTR(5B00...)??
B $61A7,4,4 Four bytes to Attr, $1E bytes skipped.
B $61AB,30,8*3,6
N $61C9 ??Bytes blitted to ATTR(5B00...)??
B $61C9,4,4 Four bytes to Attr, $1E bytes skipped.
B $61CD,30,8*3,6
N $61EB ??Bytes blitted to ATTR(5B00...)??
B $61EB,4,4 Four bytes to Attr, $1E bytes skipped.
B $61EF,30,8*3,6
N $620D ??Bytes blitted to ATTR(5B00...)??
B $620D,4,4 Four bytes to Attr, $1E bytes skipped.
B $6211,30,8*3,6
N $622F ??Bytes blitted to ATTR(5B00...)??
B $622F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6233,30,8*3,6
N $6251 ??Bytes blitted to ATTR(5B00...)??
B $6251,4,4 Four bytes to Attr, $1E bytes skipped.
B $6255,30,8*3,6
N $6273 ??Bytes blitted to ATTR(5B00...)??
B $6273,4,4 Four bytes to Attr, $1E bytes skipped.
B $6277,30,8*3,6
N $6295 ??Bytes blitted to ATTR(5B00...)??
B $6295,4,4 Four bytes to Attr, $1E bytes skipped.
B $6299,30,8*3,6
N $62B7 ??Bytes blitted to ATTR(5B00...)??
B $62B7,4,4 Four bytes to Attr, $1E bytes skipped.
B $62BB,30,8*3,6
N $62D9 ??Bytes blitted to ATTR(5B00...)??
B $62D9,4,4 Four bytes to Attr, $1E bytes skipped.
B $62DD,30,8*3,6
N $62FB ??Bytes blitted to ATTR(5B00...)??
B $62FB,4,4 Four bytes to Attr, $1E bytes skipped.
B $62FF,30,8*3,6
N $631D ??Bytes blitted to ATTR(5B00...)??
B $631D,4,4 Four bytes to Attr, $1E bytes skipped.
B $6321,30,8*3,6
N $633F ??Bytes blitted to ATTR(5B00...)??
B $633F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6343,30,8*3,6
N $6361 ??Bytes blitted to ATTR(5B00...)??
B $6361,4,4 Four bytes to Attr, $1E bytes skipped.
B $6365,30,8*3,6
N $6383 ??Bytes blitted to ATTR(5B00...)??
B $6383,4,4 Four bytes to Attr, $1E bytes skipped.
B $6387,30,8*3,6
N $63A5 ??Bytes blitted to ATTR(5B00...)??
B $63A5,4,4 Four bytes to Attr, $1E bytes skipped.
B $63A9,30,8*3,6
N $63C7 ??Bytes blitted to ATTR(5B00...)??
B $63C7,4,4 Four bytes to Attr, $1E bytes skipped.
B $63CB,30,8*3,6
N $63E9 ??Bytes blitted to ATTR(5B00...)??
B $63E9,4,4 Four bytes to Attr, $1E bytes skipped.
B $63ED,30,8*3,6
N $640B ??Bytes blitted to ATTR(5B00...)??
B $640B,4,4 Four bytes to Attr, $1E bytes skipped.
B $640F,30,8*3,6
N $642D ??Bytes blitted to ATTR(5B00...)??
B $642D,4,4 Four bytes to Attr, $1E bytes skipped.
B $6431,30,8*3,6
N $644F ??Bytes blitted to ATTR(5B00...)??
B $644F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6453,30,8*3,6
N $6471 ??Bytes blitted to ATTR(5B00...)??
B $6471,4,4 Four bytes to Attr, $1E bytes skipped.
B $6475,30,8*3,6
N $6493 ??Bytes blitted to ATTR(5B00...)??
B $6493,4,4 Four bytes to Attr, $1E bytes skipped.
B $6497,30,8*3,6
N $64B5 ??Bytes blitted to ATTR(5B00...)??
B $64B5,4,4 Four bytes to Attr, $1E bytes skipped.
B $64B9,30,8*3,6
N $64D7 ??Bytes blitted to ATTR(5B00...)??
B $64D7,4,4 Four bytes to Attr, $1E bytes skipped.
B $64DB,30,8*3,6
N $64F9 ??Bytes blitted to ATTR(5B00...)??
B $64F9,4,4 Four bytes to Attr, $1E bytes skipped.
B $64FD,30,8*3,6
N $651B ??Bytes blitted to ATTR(5B00...)??
B $651B,4,4 Four bytes to Attr, $1E bytes skipped.
B $651F,30,8*3,6
N $653D ??Bytes blitted to ATTR(5B00...)??
B $653D,4,4 Four bytes to Attr, $1E bytes skipped.
B $6541,30,8*3,6
N $655F ??Bytes blitted to ATTR(5B00...)??
B $655F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6563,30,8*3,6
N $6581 ??Bytes blitted to ATTR(5B00...)??
B $6581,4,4 Four bytes to Attr, $1E bytes skipped.
B $6585,30,8*3,6
N $65A3 ??Bytes blitted to ATTR(5B00...)??
B $65A3,4,4 Four bytes to Attr, $1E bytes skipped.
B $65A7,30,8*3,6
N $65C5 ??Bytes blitted to ATTR(5B00...)??
B $65C5,4,4 Four bytes to Attr, $1E bytes skipped.
B $65C9,30,8*3,6
N $65E7 ??Bytes blitted to ATTR(5B00...)??
B $65E7,4,4 Four bytes to Attr, $1E bytes skipped.
B $65EB,30,8*3,6
N $6609 ??Bytes blitted to ATTR(5B00...)??
B $6609,4,4 Four bytes to Attr, $1E bytes skipped.
B $660D,30,8*3,6
N $662B ??Bytes blitted to ATTR(5B00...)??
B $662B,4,4 Four bytes to Attr, $1E bytes skipped.
B $662F,30,8*3,6
N $664D ??Bytes blitted to ATTR(5B00...)??
B $664D,4,4 Four bytes to Attr, $1E bytes skipped.
B $6651,30,8*3,6
N $666F ??Bytes blitted to ATTR(5B00...)??
B $666F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6673,30,8*3,6
N $6691 ??Bytes blitted to ATTR(5B00...)??
B $6691,4,4 Four bytes to Attr, $1E bytes skipped.
B $6695,30,8*3,6
N $66B3 ??Bytes blitted to ATTR(5B00...)??
B $66B3,4,4 Four bytes to Attr, $1E bytes skipped.
B $66B7,30,8*3,6
N $66D5 ??Bytes blitted to ATTR(5B00...)??
B $66D5,4,4 Four bytes to Attr, $1E bytes skipped.
B $66D9,30,8*3,6
N $66F7 ??Bytes blitted to ATTR(5B00...)??
B $66F7,4,4 Four bytes to Attr, $1E bytes skipped.
B $66FB,30,8*3,6
N $6719 ??Bytes blitted to ATTR(5B00...)??
B $6719,4,4 Four bytes to Attr, $1E bytes skipped.
B $671D,30,8*3,6
N $673B ??Bytes blitted to ATTR(5B00...)??
B $673B,4,4 Four bytes to Attr, $1E bytes skipped.
B $673F,30,8*3,6
N $675D ??Bytes blitted to ATTR(5B00...)??
B $675D,4,4 Four bytes to Attr, $1E bytes skipped.
B $6761,30,8*3,6
N $677F ??Bytes blitted to ATTR(5B00...)??
B $677F,4,4 Four bytes to Attr, $1E bytes skipped.
B $6783,30,8*3,6
N $67A1 ??Bytes blitted to ATTR(5B00...)??
B $67A1,4,4 Four bytes to Attr, $1E bytes skipped.
B $67A5,30,8*3,6
N $67C3 ??Bytes blitted to ATTR(5B00...)??
B $67C3,4,4 Four bytes to Attr, $1E bytes skipped.
B $67C7,30,8*3,6
N $67E5 ??Bytes blitted to ATTR(5B00...)??
B $67E5,4,4 Four bytes to Attr, $1E bytes skipped.
B $67E9,30,8*3,6
N $6807 ??Bytes blitted to ATTR(5B00...)??
B $6807,4,4 Four bytes to Attr, $1E bytes skipped.
B $680B,30,8*3,6
N $6829 ??Bytes blitted to ATTR(5B00...)??
B $6829,4,4 Four bytes to Attr, $1E bytes skipped.
B $682D,214,8*3,6,8
b $6903 Rooms Room structures.
D $6903 Details of each room, including outside.
@ $6903 label=Outside_DataCopy
B $6903,5,5 Blocks of 8
c $6908 Routine at 6908
@ $6908 label=Start
C $6908,3 This bit of code gets over written and is used as data.
b $690B Data block at 690B
@ $690B label=Room_outside_pathEW
@ $690D label=Room_outside_pathNS
W $690B,4,2
B $690F,4,4
N $6913 Seller
W $6913,4,2
B $6917,4,4
N $691B Broker
W $691B,4,2
B $691F,4,4
N $6923 Deposit
W $6923,4,2
B $6927,4,4
N $692B Castle Inner Room
W $692B,4,2
B $692F,4,4
N $6933 Gambling Room
W $6933,4,2
B $6937,4,4
N $693B Temple
W $693B,4,2
B $693F,4,4
N $6943 Gallery
W $6943,4,2
B $6947,4,4
N $694B Castle / Rats hole / Ladyos etc.
W $694B,4,2
B $694F,4,4
N $6953 Bank
W $6953,4,2
B $6957,4,4
N $695B Portal
W $695B,4,2
B $695F,4,4
N $6963 Strong Room
W $6963,4,2
B $6967,4,4
b $696B Areas  Data holding area positions and names.
@ $696B label=Area_Data
W $696B,2,2 Bounding box of area [NS1, EW1, NS2, EW2]
W $696D,6,2
B $6973,4,4 ["the", "castle",  " ",  " "] See #R$69F6 , #R$69D7 and #R$AE8D
W $6977,8,2
B $697F,4,4 "old quarter"
W $6983,8,2
B $698B,4,4 "greymarket mercer heath"
W $698F,8,2
B $6997,4,4 "greymarket thieves hill"
W $699B,8,2
@ $69A3 label=Area_DataArgot
B $69A3,4,4 "argot"
W $69A7,8,2
B $69AF,4,4 "Iomain"
W $69B3,8,2
B $69BB,4,4 "ratha de"
W $69BF,8,2
B $69C7,4,4 "the soke"
W $69CB,8,2
B $69D3,4,4 ""
b $69D7 Dictionary  Table of start addresses for each different word lengths. Groups words into their sizes.
@ $69D7 label=Dict_Groups
B $69D7,1,1 Index off set of word group.
W $69D8,2,2 Start address of group.
N $69DA Groups words into their sizes.
B $69DA,1,1 Index off set of word group.
W $69DB,2,2 Start address of group.
N $69DD Groups words into their sizes.
B $69DD,1,1 Index off set of word group.
W $69DE,2,2 Start address of group.
N $69E0 Groups words into their sizes.
B $69E0,1,1 Index off set of word group.
W $69E1,2,2 Start address of group.
N $69E3 Groups words into their sizes.
B $69E3,1,1 Index off set of word group.
W $69E4,2,2 Start address of group.
N $69E6 Groups words into their sizes.
B $69E6,1,1 Index off set of word group.
W $69E7,2,2 Start address of group.
N $69E9 Groups words into their sizes.
B $69E9,1,1 Index off set of word group.
W $69EA,2,2 Start address of group.
N $69EC Groups words into their sizes.
B $69EC,1,1 Index off set of word group.
W $69ED,2,2 Start address of group.
N $69EF Groups words into their sizes.
B $69EF,1,1 Index off set of word group.
W $69F0,2,2 Start address of group.
N $69F2 Groups words into their sizes.
B $69F2,1,1 Index off set of word group.
W $69F3,2,2 Start address of group.
B $69F5,1,1
b $69F6 Dictionary  Of names and places.
@ $69F6 label=Dictionary
T $69F6,1,1 [1]
@ $69F7 label=Dictionary_2w
@ $69FB label=Dictionary_3w
@ $6A0D label=Dictionary_4w
@ $6A71 label=Dictionary_5w
@ $6AD5 label=Dictionary_6w
@ $6B47 label=Dictionary_7w
T $69F7,406,2*2,3*6,4*25,5*20,6*19,7
@ $6B8D label=Dictionary_^w
B $6B8D,1,1
@ $6B8E label=Dictionary_8w
T $6B8E,31,8*3,7
b $6BAD Data block at 6BAD
@ $6BAD label=_6bad
B $6BAD,1,1
b $6BAE Paths  Data for paths running east / west.
D $6BAE Data for paths.
@ $6BAE label=Path_Data_EW
W $6BAE,2,2 Coordinate of path on E/W [X] Axis.
W $6BB0,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BB2,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BB4,2,2 Background description for east side.
W $6BB6,2,2 Background description for west side.
B $6BB8,2,2 String of indicies, representing words used to describe name.
N $6BBA North Gate.
W $6BBA,2,2 Coordinate of path on E/W [X] Axis.
W $6BBC,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BBE,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BC0,2,2 Background description for east side.
W $6BC2,2,2 Background description for west side.
B $6BC4,2,2 String of indicies, representing words used to describe name.
N $6BC6 Park Row.
W $6BC6,2,2 Coordinate of path on E/W [X] Axis.
W $6BC8,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BCA,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BCC,2,2 Background description for east side.
W $6BCE,2,2 Background description for west side.
B $6BD0,2,2 String of indicies, representing words used to describe name.
N $6BD2 Castle Walk
W $6BD2,2,2 Coordinate of path on E/W [X] Axis.
W $6BD4,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BD6,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BD8,2,2 Background description for east side.
W $6BDA,2,2 Background description for west side.
B $6BDC,2,2 String of indicies, representing words used to describe name.
N $6BDE Leaf Lane.
W $6BDE,2,2 Coordinate of path on E/W [X] Axis.
W $6BE0,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BE2,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BE4,2,2 Background description for east side.
W $6BE6,2,2 Background description for west side.
B $6BE8,2,2 String of indicies, representing words used to describe name.
N $6BEA The Parade.
W $6BEA,2,2 Coordinate of path on E/W [X] Axis.
W $6BEC,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BEE,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BF0,2,2 Background description for east side.
W $6BF2,2,2 Background description for west side.
B $6BF4,2,2 String of indicies, representing words used to describe name.
N $6BF6 High St.
W $6BF6,2,2 Coordinate of path on E/W [X] Axis.
W $6BF8,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6BFA,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6BFC,2,2 Background description for east side.
W $6BFE,2,2 Background description for west side.
B $6C00,2,2 String of indicies, representing words used to describe name.
N $6C02 Long Lane.
W $6C02,2,2 Coordinate of path on E/W [X] Axis.
W $6C04,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C06,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C08,2,2 Background description for east side.
W $6C0A,2,2 Background description for west side.
B $6C0C,2,2 String of indicies, representing words used to describe name.
N $6C0E Mead Square, north.
@ $6C0E label=Path_DataMeadSqu
W $6C0E,2,2 Coordinate of path on E/W [X] Axis.
W $6C10,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C12,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C14,2,2 Background description for east side.
W $6C16,2,2 Background description for west side.
B $6C18,2,2 String of indicies, representing words used to describe name.
N $6C1A West Way.
W $6C1A,2,2 Coordinate of path on E/W [X] Axis.
W $6C1C,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C1E,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C20,2,2 Background description for east side.
W $6C22,2,2 Background description for west side.
B $6C24,2,2 String of indicies, representing words used to describe name.
W $6C26,2,2 Coordinate of path on E/W [X] Axis.
W $6C28,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C2A,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C2C,2,2 Background description for east side.
W $6C2E,2,2 Background description for west side.
B $6C30,2,2 String of indicies, representing words used to describe name.
N $6C32 Hill St.
W $6C32,2,2 Coordinate of path on E/W [X] Axis.
W $6C34,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C36,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C38,2,2 Background description for east side.
W $6C3A,2,2 Background description for west side.
B $6C3C,2,2 String of indicies, representing words used to describe name.
N $6C3E Mead Square, south.
W $6C3E,2,2 Coordinate of path on E/W [X] Axis.
W $6C40,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C42,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C44,2,2 Background description for east side.
W $6C46,2,2 Background description for west side.
B $6C48,2,2 String of indicies, representing words used to describe name.
N $6C4A Silver St.
W $6C4A,2,2 Coordinate of path on E/W [X] Axis.
W $6C4C,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C4E,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C50,2,2 Background description for east side.
W $6C52,2,2 Background description for west side.
B $6C54,2,2 String of indicies, representing words used to describe name.
N $6C56 Heath Rd.
W $6C56,2,2 Coordinate of path on E/W [X] Axis.
W $6C58,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C5A,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C5C,2,2 Background description for east side.
W $6C5E,2,2 Background description for west side.
B $6C60,2,2 String of indicies, representing words used to describe name.
N $6C62 Myre St.
W $6C62,2,2 Coordinate of path on E/W [X] Axis.
W $6C64,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C66,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C68,2,2 Background description for east side.
W $6C6A,2,2 Background description for west side.
B $6C6C,2,2 String of indicies, representing words used to describe name.
N $6C6E The Calls.
W $6C6E,2,2 Coordinate of path on E/W [X] Axis.
W $6C70,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C72,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C74,2,2 Background description for east side.
W $6C76,2,2 Background description for west side.
B $6C78,2,2 String of indicies, representing words used to describe name.
N $6C7A Bird St.
W $6C7A,2,2 Coordinate of path on E/W [X] Axis.
W $6C7C,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C7E,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C80,2,2 Background description for east side.
W $6C82,2,2 Background description for west side.
B $6C84,2,2 String of indicies, representing words used to describe name.
N $6C86 Cross St.
W $6C86,2,2 Coordinate of path on E/W [X] Axis.
W $6C88,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C8A,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C8C,2,2 Background description for east side.
W $6C8E,2,2 Background description for west side.
B $6C90,2,2 String of indicies, representing words used to describe name.
N $6C92 Stone Rd.
W $6C92,2,2 Coordinate of path on E/W [X] Axis.
W $6C94,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6C96,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6C98,2,2 Background description for east side.
W $6C9A,2,2 Background description for west side.
B $6C9C,2,2 String of indicies, representing words used to describe name.
N $6C9E Claw Lane.
W $6C9E,2,2 Coordinate of path on E/W [X] Axis.
W $6CA0,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CA2,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CA4,2,2 Background description for east side.
W $6CA6,2,2 Background description for west side.
B $6CA8,2,2 String of indicies, representing words used to describe name.
@ $6CAA label=Path_Data_EW_End
B $6CAA,2,2 End of data.
b $6CAC Paths  Data for paths running north / south.
D $6CAC Data for paths.
@ $6CAC label=Path_Data_NS
W $6CAC,2,2 Coordinate of path on E/W [X] Axis.
W $6CAE,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CB0,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CB2,2,2 Background description for north side.
W $6CB4,2,2 Background description for south side.
B $6CB6,2,2 String of indicies, representing words used to describe name.
N $6CB8 Hern Hill.
W $6CB8,2,2 Coordinate of path on E/W [X] Axis.
W $6CBA,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CBC,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CBE,2,2 Background description for north side.
W $6CC0,2,2 Background description for south side.
B $6CC2,2,2 String of indicies, representing words used to describe name.
N $6CC4 Moss Lane.
W $6CC4,2,2 Coordinate of path on E/W [X] Axis.
W $6CC6,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CC8,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CCA,2,2 Background description for north side.
W $6CCC,2,2 Background description for south side.
B $6CCE,2,2 String of indicies, representing words used to describe name.
N $6CD0 Amber Way.
W $6CD0,2,2 Coordinate of path on E/W [X] Axis.
W $6CD2,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CD4,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CD6,2,2 Background description for north side.
W $6CD8,2,2 Background description for south side.
B $6CDA,2,2 String of indicies, representing words used to describe name.
N $6CDC Mead Square, west.
W $6CDC,2,2 Coordinate of path on E/W [X] Axis.
W $6CDE,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CE0,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CE2,2,2 Background description for north side.
W $6CE4,2,2 Background description for south side.
B $6CE6,2,2 String of indicies, representing words used to describe name.
N $6CE8 Mead Cross.
W $6CE8,2,2 Coordinate of path on E/W [X] Axis.
W $6CEA,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CEC,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CEE,2,2 Background description for north side.
W $6CF0,2,2 Background description for south side.
B $6CF2,2,2 String of indicies, representing words used to describe name.
N $6CF4 Downs Rd.
W $6CF4,2,2 Coordinate of path on E/W [X] Axis.
W $6CF6,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6CF8,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6CFA,2,2 Background description for north side.
W $6CFC,2,2 Background description for south side.
B $6CFE,2,2 String of indicies, representing words used to describe name.
N $6D00 Mead Square, east.
W $6D00,2,2 Coordinate of path on E/W [X] Axis.
W $6D02,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D04,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D06,2,2 Background description for north side.
W $6D08,2,2 Background description for south side.
B $6D0A,2,2 String of indicies, representing words used to describe name.
N $6D0C Baker St.
W $6D0C,2,2 Coordinate of path on E/W [X] Axis.
W $6D0E,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D10,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D12,2,2 Background description for north side.
W $6D14,2,2 Background description for south side.
B $6D16,2,2 String of indicies, representing words used to describe name.
N $6D18 Dice St.
W $6D18,2,2 Coordinate of path on E/W [X] Axis.
W $6D1A,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D1C,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D1E,2,2 Background description for north side.
W $6D20,2,2 Background description for south side.
B $6D22,2,2 String of indicies, representing words used to describe name.
N $6D24 West Castle.
W $6D24,2,2 Coordinate of path on E/W [X] Axis.
W $6D26,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D28,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D2A,2,2 Background description for north side.
W $6D2C,2,2 Background description for south side.
B $6D2E,2,2 String of indicies, representing words used to describe name.
N $6D30 King St.
W $6D30,2,2 Coordinate of path on E/W [X] Axis.
W $6D32,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D34,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D36,2,2 Background description for north side.
W $6D38,2,2 Background description for south side.
B $6D3A,2,2 String of indicies, representing words used to describe name.
N $6D3C Old Hill.
W $6D3C,2,2 Coordinate of path on E/W [X] Axis.
W $6D3E,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D40,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D42,2,2 Background description for north side.
W $6D44,2,2 Background description for south side.
B $6D46,2,2 String of indicies, representing words used to describe name.
N $6D48 Oak Rd.
W $6D48,2,2 Coordinate of path on E/W [X] Axis.
W $6D4A,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D4C,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D4E,2,2 Background description for north side.
W $6D50,2,2 Background description for south side.
B $6D52,2,2 String of indicies, representing words used to describe name.
N $6D54 Star St.
W $6D54,2,2 Coordinate of path on E/W [X] Axis.
W $6D56,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D58,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D5A,2,2 Background description for north side.
W $6D5C,2,2 Background description for south side.
B $6D5E,2,2 String of indicies, representing words used to describe name.
N $6D60 Marsh Gate.
W $6D60,2,2 Coordinate of path on E/W [X] Axis.
W $6D62,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D64,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D66,2,2 Background description for north side.
W $6D68,2,2 Background description for south side.
B $6D6A,2,2 String of indicies, representing words used to describe name.
N $6D6C New St.
W $6D6C,2,2 Coordinate of path on E/W [X] Axis.
W $6D6E,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D70,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D72,2,2 Background description for north side.
W $6D74,2,2 Background description for south side.
B $6D76,2,2 String of indicies, representing words used to describe name.
N $6D78 Cinder Bank.
W $6D78,2,2 Coordinate of path on E/W [X] Axis.
W $6D7A,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D7C,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D7E,2,2 Background description for north side.
W $6D80,2,2 Background description for south side.
B $6D82,2,2 String of indicies, representing words used to describe name.
N $6D84 Marsh St.
W $6D84,2,2 Coordinate of path on E/W [X] Axis.
W $6D86,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D88,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D8A,2,2 Background description for north side.
W $6D8C,2,2 Background description for south side.
B $6D8E,2,2 String of indicies, representing words used to describe name.
N $6D90 East Wall.
W $6D90,2,2 Coordinate of path on E/W [X] Axis.
W $6D92,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6D94,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6D96,2,2 Background description for north side.
W $6D98,2,2 Background description for south side.
B $6D9A,2,2 String of indicies, representing words used to describe name.
W $6D9C,2,2 Coordinate of path on E/W [X] Axis.
W $6D9E,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DA0,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DA2,2,2 Background description for north side.
W $6DA4,2,2 Background description for south side.
B $6DA6,2,2 String of indicies, representing words used to describe name.
W $6DA8,2,2 Coordinate of path on E/W [X] Axis.
W $6DAA,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DAC,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DAE,2,2 Background description for north side.
W $6DB0,2,2 Background description for south side.
B $6DB2,2,2 String of indicies, representing words used to describe name.
W $6DB4,2,2 Coordinate of path on E/W [X] Axis.
W $6DB6,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DB8,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DBA,2,2 Background description for north side.
W $6DBC,2,2 Background description for south side.
B $6DBE,2,2 String of indicies, representing words used to describe name.
W $6DC0,2,2 Coordinate of path on E/W [X] Axis.
W $6DC2,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DC4,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DC6,2,2 Background description for north side.
W $6DC8,2,2 Background description for south side.
B $6DCA,2,2 String of indicies, representing words used to describe name.
W $6DCC,2,2 Coordinate of path on E/W [X] Axis.
W $6DCE,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DD0,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DD2,2,2 Background description for north side.
W $6DD4,2,2 Background description for south side.
B $6DD6,2,2 String of indicies, representing words used to describe name.
W $6DD8,2,2 Coordinate of path on E/W [X] Axis.
W $6DDA,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DDC,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DDE,2,2 Background description for north side.
W $6DE0,2,2 Background description for south side.
B $6DE2,2,2 String of indicies, representing words used to describe name.
W $6DE4,2,2 Coordinate of path on E/W [X] Axis.
W $6DE6,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DE8,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DEA,2,2 Background description for north side.
W $6DEC,2,2 Background description for south side.
B $6DEE,2,2 String of indicies, representing words used to describe name.
W $6DF0,2,2 Coordinate of path on E/W [X] Axis.
W $6DF2,2,2 Coordinate for left hand end of path on N/S [Y] Axis.
W $6DF4,2,2 Coordinate for right hand end of path on N/S [Y] Axis.
W $6DF6,2,2 Background description for north side.
W $6DF8,2,2 Background description for south side.
B $6DFA,2,2 String of indicies, representing words used to describe name.
@ $6DFC label=_Path_Data_NS_End
B $6DFC,2,2 End of data.
b $6DFE Background  Description string.
D $6DFE Strings containing indicies to each item displayed in the background. Codes: $83 ~ $96 $97 ~ $DC $DD ~ $FE - Use sub string data. (String index is calculated by NN-$DD) $FF - Draw blank column.
@ $6DFE label=Bg_Str6dfe
W $6DFE,2,2 Axis position on map. Upper bit determines data structure size.
B $6E00,1,1 Half length of background. This creates an offset from the centre of the background when fully decoded.
B $6E01,1,1 Number of bytes in string of data.
B $6E02,8,8 String of data.
B $6E0A,1,1
W $6E0B,2,2 Next string (0000 is end of data)
@ $6E0D label=Bg_Str6e0d
@ $6E1B label=Bg_Str6e1b
@ $6E32 label=Bg_Str6e32
@ $6E3F label=Bg_Str6e3f
@ $6E52 label=Bg_Str6e52
@ $6E73 label=Bg_Str6e73
B $6E0D,121,8,6,8*2,7,8,5,8*2,3,8*4,1,8*2,3
@ $6E86 label=Bg_Str6e86
W $6E86,2,2
B $6E88,13,6,7
W $6E95,2,2
B $6E97,12,8,4
W $6EA3,2,2
B $6EA5,3,1,2
W $6EA8,2,2
@ $6ECD label=Bg_Str6ecd
@ $6EDE label=Bg_Str6ede
@ $6EF3 label=Bg_Str6ef3
@ $6F10 label=Bg_Str6f10
@ $6F1F label=Bg_Str6f1f
@ $6F29 label=Bg_Str6f29
@ $6F46 label=Bg_Str6f46
@ $6F5A label=Bg_Str6f5a
@ $6F79 label=Bg_Str6f79
@ $6F91 label=Bg_Str6f91
@ $6FB1 label=Bg_Str6fb1
@ $6FDF label=Bg_Str6fbf
@ $7000 label=Bg_Str7000
@ $7014 label=Bg_Str7014
@ $7028 label=Bg_Str7028
@ $7040 label=Bg_str7040
@ $7058 label=Bg_Str7058
@ $706D label=Bg_Str706d
@ $7080 label=Bg_Str7080
@ $70A1 label=Bg_Str70a1
@ $70BB label=Bg_Str70bb
@ $70FD label=Bg_Str70fd
@ $7107 label=Bg_Str7107
B $6EAA,625,6,8*3,5,8*2,1,8*2,5,8*3,5,8,7,8,2,8*3,5,8*2,4,8*3,7,8*8,6,8*8,1,8*2,4,8*2,4,8*8,5,8*2,3,8*4,1,8*3,2,8*8,2,8,2,8*2,4
N $711B Market St (example)
@ $711B label=Bg_Str711b
W $711B,8,2
@ $712E label=Bg_Str712e
@ $7141 label=Bg_Str7141
@ $7152 label=Bg_Str7152
@ $7166 label=Bg_Str7166
@ $717A label=Bg_Str717a
@ $7190 label=Bg_Str7190
@ $71A7 label=Bg_Str71a7
@ $71C4 label=Bg_Str71c4
@ $71F8 label=Bg_Str71f8
@ $7220 label=Bg_Str7220
@ $7243 label=Bg_Str7243
@ $7252 label=Bg_Str7252
@ $7287 label=Bg_Str7287
@ $7298 label=Bg_Str7298
@ $72BE label=Bg_Str72be
@ $72C8 label=Bg_Str72c8
@ $72D4 label=Bg_Str72d4
@ $72ED label=Bg_Str72ed
@ $72FE label=Bg_Str72fe
@ $7310 label=Bg_Str7310
@ $7327 label=Bg_Str7327
@ $7334 label=Bg_Str7334
@ $7348 label=Bg_Str7348
@ $7361 label=Bg_Str7361
@ $7380 label=Bg_Str7380
@ $7391 label=Bg_Str7391
@ $73A7 label=Bg_Str73a7
@ $73B3 label=Bg_Str73b3
@ $73D2 label=Bg_Str73d2
@ $73FF label=Bg_Str73ff
@ $7415 label=Bg_Str7415
@ $7424 label=Bg_Str7424
@ $7433 label=Bg_Str7433
@ $7442 label=Bg_Str7442
@ $7451 label=Bg_Str7451
@ $7460 label=Bg_Str7460
@ $746F label=Bg_Str746f
@ $747E label=Bg_Str747e
@ $748D label=Bg_Str748d
@ $749A label=Bg_Str749a
@ $74BC label=Bg_Str74bc
@ $74C3 label=Bg_Str74c3
@ $74ED label=Bg_Str74ed
@ $74FE label=Bg_Str74fe
@ $750A label=Bg_Str750a
@ $7523 label=Bg_Str7523
@ $7531 label=Bg_Str7531
@ $753D label=Bg_Str753d
@ $7559 label=Bg_Str7559
@ $756E label=Bg_Str756e
@ $7588 label=Bg_Str7588
@ $75A1 label=Bg_Str75a1
@ $75B9 label=Bg_Str75b9
@ $75CE label=Bg_Str75ce
@ $75DB label=Bg_Str75db
@ $75F2 label=Bg_Str75f2
@ $7618 label=Bg_Str7618
@ $7652 label=Bg_Str7652
@ $7668 label=Bg_Str7668
B $7123,1359,8,3,8*2,3,8*2,1,8*2,4,8*2,4,8*2,6,8*2,7,8*3,5,8*6,4,8*9,3,8,7,8*6,5,8*2,1,8*4,6,8,2,8,4,8*3,1,8*2,1,8*2,2,8*2,7,8,5,8*2,4,8*3,1,8*3,7,8*2,1,8*2,6,8,4,8*3,7,8*5,5,8*2,6,8,7,8,7,8,7,8,7,8,7,8,7,8,7,8,7,8,5,8*4,2,7,8*5,2,8*2,1,8,4,8*3,1,8,6,8,4,8*3,4,8*2,5,8*3,2,8*3,1,8*5,5,8,5,8*2,7,8*4,6,8*7,2,8*2,6,8,2
b $7672 Objects  Array of bitmap indices for the objects.
D $7672 Add 1 to index for value used in inventory.
@ $7672 label=Obj_IndexArray
B $7672,1,1 [00] Tokens
B $7673,1,1 [01] Moleskin
B $7674,1,1 [02] Gold
B $7675,1,1 [03] Barrel
B $7676,1,1 [04] Last
B $7677,1,1 [05] Wine
B $7678,1,1 [06] Needle
B $7679,1,1 [07] Sting
B $767A,1,1 [08] Broadaxe
B $767B,1,1 [09] Swatch
B $767C,1,1 [0A] Pepper
B $767D,1,1 [0B] Hemlock
B $767E,1,1 [0C] * unused *
B $767F,1,1 [0D] Arrow
B $7680,1,1 [0E] Book 'verit ghoom'
B $7681,1,1 [0F] Foil
B $7682,1,1 [10] Adze
B $7683,1,1 [11] Drysalt
B $7684,1,1 [12] Razor
B $7685,1,1 [13] License
B $7686,1,1 [14] Hammer
B $7687,1,1 [15] * unused *
B $7688,1,1 [16] Hoe
B $7689,1,1 [17] Telestone 'i offer a view'
B $768A,1,1 [18] Relic
B $768B,1,1 [19] Pile
B $768C,1,1 [1A] Rye
B $768D,1,1 [1B] * unused *
B $768E,1,1 [1C] Lyre
B $768F,1,1 [1D] Necklace
B $7690,1,1 [1E] Bracelet
B $7691,1,1 [1F] Brooch
B $7692,1,1 [20] Earings
B $7693,1,1 [21] Shield 'midir'
B $7694,1,1 [22] Shield 'belinus'
B $7695,1,1 [23] Shield 'danu'
B $7696,1,1 [24] Shield 'parthol'
B $7697,1,1 [25] M-key
B $7698,1,1 [26] D-key
B $7699,1,1 [27] Statue
B $769A,1,1 [28] Map 'gold in ashes'
B $769B,1,1 [29] Map 'galacia is far'
B $769C,1,1 [2A] Philtre
B $769D,1,1 [2B] book 'look for my rest'
B $769E,1,1 [2C] scrip 'skars a pearl!'
B $769F,1,1 [2D] scrip 'gods see all'
B $76A0,1,1 [2E] scrip 'rat are vain'
B $76A1,1,1 [2F] scrip 'art in order'
B $76A2,1,1 [30] Spell 'show the lady!'
B $76A3,1,1 [31] Pearl
B $76A4,1,1 [32] Scroll '2**25'
B $76A5,1,1 [33] Scrip 'eve'
B $76A6,1,1 [34] Scrip 'did'
B $76A7,1,1 [35] Scrip 'pop'
B $76A8,1,1 [36] Platina
B $76A9,1,1 [37] Lead
B $76AA,1,1 [38] Scrip '3 ks 4 keys, with love'
B $76AB,1,1 [39] Scrip 'call me to enter'
B $76AC,1,1 [3A] L-key
B $76AD,1,1 [3B] pyrite
b $76AE Objects  List of strings representing object nouns.
@ $76AE label=Object_nouns
B $76AE,1,1
T $76AF,5,5 [$00]
B $76B4,1,1
T $76B5,8,8
B $76BD,1,1
T $76BE,7,7
B $76C5,1,1
T $76C6,6,6
B $76CC,1,1
T $76CD,4,4
B $76D1,1,1
T $76D2,4,4
B $76D6,1,1
T $76D7,6,6
B $76DD,1,1
T $76DE,5,5
B $76E3,1,1
T $76E4,8,8 [$08]
B $76EC,1,1
T $76ED,6,6
B $76F3,1,1
T $76F4,6,6
B $76FA,1,1
T $76FB,7,7
B $7702,2,1
T $7704,5,5
B $7709,1,1
T $770A,16,16
B $771A,1,1
T $771B,4,4
B $771F,1,1
T $7720,4,4 [$10]
B $7724,1,1
T $7725,7,7
B $772C,1,1
T $772D,5,5
B $7732,1,1
T $7733,7,7 [$14]
B $773A,1,1
T $773B,6,6
B $7741,2,1
T $7743,3,3
B $7746,1,1
T $7747,24,24 [$18]
B $775F,1,1
T $7760,5,5
B $7765,1,1
T $7766,4,4
B $776A,1,1
T $776B,3,3
B $776E,2,1
T $7770,4,4
B $7774,1,1
T $7775,8,8
B $777D,1,1
T $777E,8,8
B $7786,1,1
T $7787,6,6 [$20]
B $778D,1,1
T $778E,6,6
B $7794,1,1
T $7795,12,12
B $77A1,1,1
T $77A2,14,14
B $77B0,1,1
T $77B1,11,11
B $77BC,1,1
T $77BD,14,14
B $77CB,1,1
T $77CC,5,5
B $77D1,1,1
T $77D2,5,5
B $77D7,1,1
T $77D8,6,6
B $77DE,1,1
T $77DF,18,18
B $77F1,1,1
T $77F2,18,18
B $7804,1,1
T $7805,7,7
B $780C,1,1
T $780D,21,21
B $7822,1,1
T $7823,20,20
B $7837,1,1
T $7838,18,18
B $784A,1,1
T $784B,19,19
B $785E,1,1
T $785F,18,18 [$30]
B $7871,1,1
T $7872,20,20
B $7886,1,1
T $7887,5,5
B $788C,1,1
T $788D,12,12
B $7899,1,1
T $789A,9,9
B $78A3,1,1
T $78A4,9,9
B $78AD,1,1
T $78AE,9,9
B $78B7,1,1
T $78B8,7,7
B $78BF,1,1
T $78C0,4,4 [$38]
B $78C4,1,1
T $78C5,28,28
B $78E1,1,1
T $78E2,22,22
B $78F8,1,1
T $78F9,5,5
B $78FE,1,1
T $78FF,6,6
B $7905,2,1
c $7907 JP (HL)
D $7907 Used by the routines at #R$7CD4, #R$7EED, #R$85AE and #R$8BF5.
@ $7907 label=JP_HL
c $7908 Offscreen  Blits part of offscreen.
D $7908 Used by the routine at #R$795E. Input:  HL  Offscreen Ptr (+1 skipping first column) DE  DF Ptr A  Number of rows to blit. Left and right columns are not blitted to allow for edge hiding on screen when scrolling.
@ $7908 label=Offscreen_BlitBlock
@ $790C label=Offscreen_BlitBlock_0
c $795E Offscreen  Blits offscreen and colours.
D $795E Used by the routines at #R$79B7 and #R$7F6F.
@ $795E label=Offscreen_Blit
c $798D Linked List  Create.
D $798D Used by the routine at #R$799E. Input:  B  Number of links C  Size of link in bytes. DE  Ptr to first link. Creates a linked list by storing the ptr to the next link in the first two bytes of the current link.
@ $798D label=LinkedList_Create
@ $798E label=LinkedList_Create_0
C $798E,1 Create ptr to next link using link size.
C $7993,1 Store ptr to next link in first 2 bytes of link.
C $7996,2 Next link.
C $7998,1 Terminate list with zeroes in last link.
c $799E Initialise _bee4 data.
D $799E Used by the routines at #R$79B7 and #R$7DA8.
@ $799E label=LinkList_bee4_setup
c $79B7 Handles main number keys, blits screen, moves onto main loop.
D $79B7 Used by the routine at #R$7A9E.
@ $79B7 label=_79b7
@ $79B8 label=_79b7_0
C $79CB,3 Frames
C $79D1,3 Frame counter
N $79D7 Loop
@ $79D7 label=_79b7_1
C $79F0,3 Row '6,7,8,9,0'
C $79F5,2 '6' - Return to menu.
@ $79F9 label=_79b7_2
C $79F9,3 Row '1,2,3,4,5'
N $79FE Pause
C $79FE,2 Check for '5' (PAUSE)
@ $7A03 label=_79b7_3
C $7A03,2 Wait for key up
@ $7A09 label=_79b7_4
C $7A09,2 Paused, Wait for key down again.
@ $7A0F label=_79b7_5
C $7A0F,2 Wait for key up to unpause.
N $7A16 Demo mode.
@ $7A16 label=_79b7_6
C $7A16,2 Check for '4' (DEMO)
C $7A1A,3 Toggle demo mode on/off.
@ $7A23 label=_79b7_7
C $7A23,2 Wait for key up.
@ $7A2A label=_79b7_8
b $7A48 People  Stores bit of background that requires redrawing for each actor.
@ $7A48 label=Actors_background
W $7A48,2,2 Address of offscreen, where to blit to.
B $7A4A,1,1 Width in bytes.
B $7A4B,1,1 Height in scans.
B $7A4C,8,8 Next actor...
B $7A54,24,8
b $7A6C Data block at 7A6C
@ $7A6C label=_7a6c
B $7A6C,50,8*6,2
c $7A9E Main Initialisation
D $7A9E Used by the routine at #R$6903. Input:  IY  $5c3a
@ $7A9E label=Init
@ $7AA7 label=Init_0
C $7AAC,4 Bitmaps : Create bitmap pointer table.
@ $7AB2 label=Init_1
C $7AC9,4 Correct masks.
@ $7ACF label=Init_2
@ $7AE0 label=Init_3
@ $7AE9 label=Init_4
@ $7AEF label=Init_5
C $7AF7,3 Create table.
C $7B02,3 Create table.
C $7B18,2 Set print channel.
C $7B20,3 If anything goes wrong reset Spectrum.
b $7B23 Data block at 7B23
B $7B23,353,8*44,1
b $7C84 Paths  Table of path offsets.
D $7C84 Each offset is used for calculating the coordinate of a column at the edge of the screen in direction of travel. Offset when moving left.
@ $7C84 label=Table_PathOffsets_Left
W $7C84,2,2 North
W $7C86,2,2
W $7C88,2,2 East
W $7C8A,2,2
W $7C8C,2,2 South
W $7C8E,2,2
W $7C90,2,2 West
W $7C92,2,2
N $7C94 Offset for moving right.
@ $7C94 label=Table_PathOffsets_Right
W $7C94,2,2 North
W $7C96,2,2
W $7C98,2,2 East
W $7C9A,2,2
W $7C9C,2,2 South
W $7C9E,2,2
W $7CA0,2,2 West
W $7CA2,2,2
c $7CA4 Move  jump vectors.
@ $7CA4 label=Coords_MoveVector
N $7CB4 Move coords east.
@ $7CB4 label=Coords_MoveEast
N $7CBC Move coords south.
@ $7CBC label=Coords_MoveSouth
N $7CC4 Move coords west.
@ $7CC4 label=Coords_MoveWest
N $7CCC Move coords north.
@ $7CCC label=Coords_MoveNorth
c $7CD4 Offscren  Scroll the offscreen in the direction of the player.
D $7CD4 Used by the routine at #R$8121.
@ $7CD4 label=BG_ScrollInDirection
N $7CDE Facing Right
C $7CDE,3 Get coordinates for axis based on camera compass.
@ $7CEB label=BG_ScrollInDirection_0
C $7CEE,3 Area on the offscreen bitmap. Right hand column, second scan down.
@ $7D12 label=BG_ScrollInDirection_1
@ $7D14 label=BG_ScrollInDirection_2
N $7D43 Facing Left
@ $7D43 label=BG_ScrollInDirection_3
@ $7D50 label=BG_ScrollInDirection_4
@ $7D77 label=BG_ScrollInDirection_5
@ $7D79 label=BG_ScrollInDirection_6
c $7DA8 Room  Puts back info, which was stored when entering.
D $7DA8 Used by the routines at #R$7DCB, #R$8544 and #R$871A. Input:  A  Index of bank to copy from.
@ $7DA8 label=Outside_DataRestore
c $7DCB Routine at 7DCB
D $7DCB Used by the routine at #R$79B7.
@ $7DCB label=_7dcb
c $7DD4 Path  Find path that player is on.
D $7DD4 Used by the routines at #R$7F6F and #R$8544.
@ $7DD4 label=Path_Find
N $7DD8 Get correct position based on compass.
C $7DDF,3 Check to E/W compass.
C $7DE6,4 N/W facing.
@ $7DEC label=Path_Find_0
C $7DEC,4 E/W facing, swap round coords.
@ $7DF1 label=Path_Find_1
@ $7E04 label=Path_Find_2
@ $7E0E label=Path_Find_3
N $7E11 Find path player is on.
@ $7E11 label=Path_Find_4
@ $7E13 label=Path_Find_5
C $7E14,3 Match path axis.
C $7E1D,2 Move not next path is not same position.
@ $7E2A label=Path_Find_6
@ $7E32 label=Path_Find_7
C $7E32,3 See if player is within the two ends of the path.
N $7E48 Next path.
@ $7E48 label=Path_Find_8
N $7E54 Path found, running in and out of screen.
@ $7E54 label=Path_Find_9
@ $7E64 label=Path_Find_10
N $7E83 Path found, running left and right of screen.
@ $7E83 label=Path_Find_11
@ $7EA7 label=Path_Find_12
@ $7EAA label=Path_Find_13
C $7EAA,3 Get the ends of the path and include a margin for the width of the screen to allow for overruns when drawing the screen.
N $7EC7 Get background data.
C $7EC7,2 Determine which background to use based on camera direction.
C $7ECB,3 North / East background.
@ $7ED3 label=Path_Find_14
C $7ED3,3 South / West background.
@ $7ED9 label=Path_Find_15
c $7EDD ATTR  Fills stage to area's colour.
D $7EDD Used by the routines at #R$7F6F and #R$8544.
@ $7EDD label=Stage_AreaColour
c $7EED Background  Draw all of the background.
D $7EED Used by the routines at #R$7F6F, #R$8544, #R$8F43, #R$9109 and #R$9132. Draws all of the background, column by column. The routine re-uses the column draw sub-routines so the players values are used.
@ $7EED label=Bg_DrawAll
C $7EED,3 Set of positions based on direction.
C $7EF4,2 Make even as there are two steps for each column.
C $7EF8,1 Store new values for reseting player.
C $7EFA,3 Determine which coordinate is left to right on the screen and shift to represent the left hand column of the screen.
C $7F06,2 North or South coordinates.
C $7F0A,1 Work on East to West coordinates.
@ $7F0B label=Bg_DrawAll_0
C $7F0B,3 Nort or East. Offset path postion by $42
C $7F12,3 South or West. Offset path position by -$42
@ $7F15 label=Bg_DrawAll_1
C $7F1A,1 North or South swap around coordinates again.
@ $7F1B label=Bg_DrawAll_2
C $7F1B,3 Use the players coordinates to keep track of the column to draw.
C $7F25,2 Number of columns to draw.
N $7F27 Draw each column.
@ $7F27 label=Bg_DrawAll_3
C $7F2D,3 Find and draw the item baed on the position of the column.
C $7F4E,3 Put player position back.
b $7F56 Compass text.
@ $7F56 label=Msg_nesw
T $7F56,8,8
@ $7F5E label=Msg_CompassPos
B $7F5E,1,1 Colour / position of compass bits.
B $7F5F,15,1
b $7F6E Data block at 7F6E
@ $7F6E label=_7f6e
B $7F6E,1,1
c $7F6F Handles door entry by hero.
D $7F6F Used by the routines at #R$7DCB, #R$8121, #R$8544 and #R$871A.
@ $7F6F label=Hero_DoorEntry
C $7F75,3 Clear door cache.
b $7F78 Data block at 7F78
W $7F78,2,2
B $7F7A,1,1
c $7F7B Return address.
@ $7FB3 label=Hero_DoorEntry_0
@ $7FCB label=Hero_DoorEntry_1
C $7FD7,2 Draw vertical border ornament bitmap.
C $7FE1,2 Draw horizontal border ornament bitmap.
C $7FEB,2 Draw compass ornament bitmap.
N $7FF5 Draw compass.
@ $8005 label=Hero_DoorEntry_2
N $8016 Display room specific messages.
b $8019 Data block at 8019
B $8019,10,1
c $8023 Routine at 8023
N $802A Seller
b $802D Data block at 802D
T $802D,8,8
B $8035,3,1
c $8038 Routine at 8038
N $803B This entry point is used by the routine at #R$8023.
@ $803B label=Hero_DoorEntry_3
N $8040 Broker
b $8043 Data block at 8043
T $8043,7,7
B $804A,4,1
c $804E Routine at 804E
C $804E,4 Print word at end of message.
N $805A This entry point is used by the routine at #R$8038.
@ $805A label=Hero_DoorEntry_4
b $805D Data block at 805D
B $805D,1,1 PRINT AT 2,6;
B $805E,3,1
c $8061 Routine at 8061
N $806A This entry point is used by the routine at #R$804E.
@ $806A label=Hero_DoorEntry_5
b $806D Data block at 806D
T $806D,6,6
B $8073,1,1
c $8074 Routine at 8074
b $807D Data block at 807D
T $807D,2,2
c $807F Routine at 807F
b $8083 Data block at 8083
@ $8083 label=Str_Deposit
T $8083,17,17
B $8094,1,1
c $8095 Routine at 8095
D $8095 Used by the routine at #R$8038.
@ $8095 label=Hero_DoorEntry_6
N $809A Deposit
@ $809F label=Hero_DoorEntry_7
N $80A3 Castle
N $80AD This entry point is used by the routines at #R$80D8 and #R$80F4.
@ $80AD label=Hero_DoorEntry_8
b $80B2 Data block at 80B2
@ $80B2 label=Str_DepositRate
T $80B2,37,37
B $80D7,1,1
c $80D8 Routine at 80D8
D $80D8 Used by the routine at #R$8095.
@ $80D8 label=Hero_DoorEntry_9
N $80DC Bank
b $80E1 Data block at 80E1
@ $80E1 label=Str_PortationFee
T $80E1,18,18
B $80F3,1,1
c $80F4 Routine at 80F4
D $80F4 Used by the routine at #R$80D8.
@ $80F4 label=Hero_DoorEntry_10
N $80F8 Portal
N $8106 This entry point is used by the routines at #R$807F and #R$8095.
@ $8106 label=Hero_DoorEntry_11
@ $8111 label=Hero_DoorEntry_12
@ $8117 label=Hero_DoorEntry_13
b $811A Data block at 811A
@ $811A label=_811a
B $811A,7,7
c $8121 Main game routine.
D $8121 Used by the routine at #R$79B7. Check for new day
@ $8121 label=Game_Main
C $8124,4 FRAMES + 1
C $812E,2 Reset to nighttime.
C $8130,3 Add 1% to bank account.
C $8139,3 Look for digit that is not zero.
b $813C Data for non-zero search, the address of which gets put onto stack in above call.
W $813C,2,2
B $813E,1,1
c $813F Above call returns to here.
C $813F,3 Display value if there is money in account.
N $8144 This entry point is used by the routine at #R$8121.
@ $8144 label=Game_Main_0
C $8144,2 Reset to daytime.
N $8146 Message display countdown.
@ $8146 label=Game_Main_1
C $8146,3 See if a message is still on display.
C $814C,1 Countdown and skip if not the end.
C $8152,3 Clear the message from the screen.
b $8155 Data block at 8155
W $8155,2,2 Parameters for block copy.
B $8157,1,1
c $8158 Routine at 8158
D $8158 Used by the routine at #R$813F.
@ $8158 label=Game_Main_2
C $8158,3 See if player is going through a door.
C $8160,3 See if an arrest is in progress.
C $8167,3 See if an offer is in progress and handle it.
C $816E,3 See if Skar is being viewed on the Telestone.
N $8178 Enter
@ $8191 label=Game_Main_3
N $81AD Rotate Camera
@ $81B7 label=Game_Main_4
@ $81BB label=Game_Main_5
N $81C3 Actions
@ $81C3 label=Game_Main_6
@ $81E4 label=Game_Main_7
@ $8208 label=Game_Main_8
@ $820D label=Game_Main_9
C $8213,3 Check for key frames
C $8221,3 Get coords for axis of movement along with offset for movement.
@ $8231 label=Game_Main_10
@ $8238 label=Game_Main_11
C $8238,3 Mask out movement keys, Making sure only one key is pressed.
@ $8242 label=Game_Main_12
C $825C,3 Get movement key pressed.
C $8260,3 Skip all if not key pressed.
C $8263,4 Last direction is the same as last key pressed.
N $826A Change of direction.
C $826A,3 See if 'standing' frame.
C $8271,2 Set to 'facing' camera frame.
@ $8281 label=Game_Main_13
@ $828D label=Game_Main_14
@ $828F label=Game_Main_15
@ $82B3 label=Game_Main_16
@ $82C1 label=Game_Main_17
@ $82D2 label=Game_Main_18
@ $82E0 label=Game_Main_19
@ $82F3 label=Game_Main_20
@ $8305 label=Game_Main_21
@ $8307 label=Game_Main_22
@ $8329 label=Game_Main_23
@ $8332 label=Game_Main_24
@ $8336 label=Game_Main_25
@ $8339 label=Game_Main_26
@ $8340 label=Game_Main_27
@ $834B label=Game_Main_28
N $834E This entry point is used by the routines at #R$8684 and #R$8997.
@ $834E label=Game_Main_29
c $8354 Start off the action 'offer'.
D $8354 Used by the routine at #R$8121.
@ $8354 label=Offer_Action
C $8354,3 See if an offer is already in place, if so do nothing.
C $8359,3 Set frame to 12 (Facing in).
C $836F,1 Change frame to facing front.
@ $8370 label=Offer_Action_0
C $8370,2 Start offer.
C $8375,3 Clear who we are offering to.
C $837B,3 Set the attribute of the offer character to flashing.
C $838B,3 See if offering iridi
b $8397 Data block at 8397
T $8397,6,6
B $839D,1,1
c $839E Routine at 839E
N $839F This entry point is used by the routine at #R$8354.
@ $839F label=Offer_Action_1
b $83A2 Data block at 83A2
B $83A2,1,1
c $83A3 Routine at 83A3
C $83A3,3 Get selected object index.
C $83B0,2 Is it the Telestone.
C $83B4,2 Start searching for Skar...
b $83BC Data block at 83BC
T $83BC,12,12
B $83C8,1,1
c $83C9 Routine at 83C9
N $83CA This entry point is used by the routine at #R$83A3.
@ $83CA label=Offer_Action_2
C $83CA,3 Offer the object.
C $83D0,2 Add '?' to the end, making it a question.
C $83D2,3 Do the print, then return.
c $83D5 Handle offer action if an offer is in place.
D $83D5 Used by the routine at #R$8121.
@ $83D5 label=Offer_Handle
b $83F8 Data block at 83F8
T $83F8,10,10
B $8402,1,1
c $8403 Routine at 8403
N $8405 This entry point is used by the routine at #R$83D5.
@ $8405 label=Offer_Handle_0
b $841F Data block at 841F
T $841F,9,9
B $8428,1,1
c $8429 This entry point is used by the routine at #R$8997.
D $8429 Used by the routines at #R$8403, #R$844B, #R$846B, #R$849A, #R$8512, #R$8541 and #R$89F6.
@ $8429 label=Offer_Handle_1
N $842F This entry point is used by the routine at #R$8403.
@ $842F label=Offer_Handle_2
N $8435 This entry point is used by the routines at #R$8B0E, #R$8B40, #R$8BA0 and #R$8BB2.
@ $8435 label=Offer_DontWantMessage
b $843E Data block at 843E
T $843E,12,12
B $844A,1,1
c $844B Routine at 844B
N $845B This entry point is used by the routine at #R$8429.
@ $845B label=Offer_Handle_3
b $845E Data block at 845E
T $845E,12,12
B $846A,1,1
c $846B Routine at 846B
N $846D This entry point is used by the routine at #R$8429.
@ $846D label=Offer_Handle_4
@ $847D label=Offer_Handle_5
N $848D This entry point is used by the routine at #R$849A.
@ $848D label=Offer_Handle_6
b $8490 Data block at 8490
T $8490,9,9
B $8499,1,1
c $849A Routine at 849A
N $849D This entry point is used by the routine at #R$8403.
@ $849D label=Offer_Handle_7
@ $84C9 label=Offer_Handle_8
b $84CC Offer Jump table.
W $84CC,2,2 Determines how each person reacts when being offered an object.
W $84CE,20,2
c $84E2 To a person
D $84E2 Used by the routine at #R$83D5.
@ $84E2 label=Offer_Handle_9
C $84E2,4 Get the address of the person being offered to and clear the pointer.
C $84EC,4 Check for the rat.
N $84F8 Give Iridi...
C $84F8,3 Clear all your money.
N $8501 This entry point is used by the routine at #R$8B0E.
@ $8501 label=Offer_Handle_10
C $8501,3 }
b $8504 Data block at 8504
T $8504,13,13
B $8511,1,1
c $8512 Routine at 8512
N $8515 Offer an object...
@ $8515 label=Offer_Handle_11
C $8515,1 Workout which pocket being offered (1~3)
C $851E,3 See who is being offered to
C $8524,3 Use the jump table to see how to handle it...
N $852D To the rat.
@ $852D label=Offer_Handle_12
b $8530 Data block at 8530
T $8530,16,16
B $8540,1,1
c $8541 Routine at 8541
c $8544 View Skar through the telestone.
D $8544 Used by the routines at #R$8121 and #R$83D5.
@ $8544 label=Skar_View
@ $8588 label=Skar_View_0
b $85A0 Rooms  Table of datasizes for each type. Each room data has a type. Based on that type the data is made up of different sizes.
@ $85A0 label=Room_DataSizes
B $85A0,12,1
@ $85AC label=Exit_SimpleData
B $85AC,2,2 Simple exit for leaving a room that doesn't define any other exits.
c $85AE Action  Handles the 'enter' action.
D $85AE Used by the routine at #R$8121.
@ $85AE label=Action_Enter
@ $85BB label=Action_Enter_0
@ $85BF label=Action_Enter_1
C $85BF,4 Data on possible exits.
C $85C3,2 Number of possible exits.
C $85C5,3 Bytes in data structure.
@ $85C8 label=Action_Enter_2
C $85C8,1 Get next exit and check distance from current coords allowing for an error of 4 units.
N $85DE Exit Found
@ $85DE label=Action_Enter_3
C $85DE,1 Store index of exit.
C $85DF,2 Make a copy of the exit data.
C $85E7,4 Get Room address based on room index held within exit found data.
@ $85F4 label=Action_Enter_4
@ $85FB label=Action_Enter_5
C $85FF,3 Get room's data flags.
C $8602,1 Get room type.
C $8609,1 Get the size of the data based on the type number.
C $8613,2 Skip the data(T) for the exits.
C $8615,1 Check the exit flags (lower half of data flags). If zero (no exits) use special exit data.
@ $861E label=Action_Enter_6
C $861E,4 Store the address for exit data.
C $8622,3 Flip the direction of the hero, to get the exit's true direction within the room being entered.
C $8629,1 Each bit (from the right) represents an exit. Shift through flags using the exit required as a index.
@ $862A label=Action_Enter_7
C $862E,3 If the exit has its bit set, it tells us the next piece of data if based on that exit. Skip that bit of data, size is based on the exit type, stored inthe first byte of exit data.
@ $8642 label=Action_Enter_8
@ $8644 label=Action_Enter_9
@ $8646 label=Action_Enter_10
C $8646,3 Does the door require a key?
C $864C,3 See if 'key' is being carried.
C $8656,3 If not display 'locked' on message line.
b $8659 Data block at 8659
T $8659,6,6
B $865F,1,1
c $8660 Routine at 8660
N $8661 Through door.
@ $8661 label=Action_Enter_11
c $8684 Handles door entry by the player.
D $8684 Used by the routine at #R$8121.
@ $8684 label=Door_HandleEntry
b $8695 Data block at 8695
@ $8695 label=Ptr_OutsideMidData
W $8695,8,2
@ $869D label=_869d
W $869D,2,2 Current Room
W $869F,6,2
@ $86A5 label=_86a5
W $86A5,2,2 Room Type 0
@ $86A9 label=_86a9
W $86A7,6,2
W $86AD,2,2 Room Type 1
W $86AF,6,2
W $86B5,2,2 Room Type 2
W $86B7,6,2
W $86BD,2,2 Room Type 3
W $86BF,6,2
W $86C5,2,2 Room Type 4
W $86C7,6,2
W $86CD,2,2 Room Type 5
W $86CF,6,2
W $86D5,2,2 Room Type 6
W $86D7,6,2
W $86DD,2,2 Room Type 7
W $86DF,6,2
W $86E5,2,2 Room Type 8
W $86E7,6,2
W $86ED,2,2 Room Type 9
W $86EF,6,2
W $86F5,2,2 Room Type A
W $86F7,6,2
W $86FD,2,2 Room Type B
W $86FF,6,2
b $8705 Positions used to locate person when goin through an exit, based on compass direction.
@ $8705 label=Exit_coords
W $8705,2,2 North exit position.
W $8707,2,2
W $8709,2,2 East exit position.
W $870B,2,2
W $870D,2,2 South exit position.
W $870F,2,2
W $8711,2,2 West exit position.
W $8713,2,2
N $8715 Each value marks a single exit and is used by rooms to create an exit for a room that doesn't have exits defined.
@ $8715 label=Exits_Predefined
B $8715,4,4 North, east, south, west.
@ $8719 label=Temp_RoomType
B $8719,1,1
c $871A Room  Initialise
D $871A Used by the routine at #R$8684.
@ $871A label=Room_Initialise
C $8725,3 Calculate room type.
N $8734 Room Type 00 (Outside)
C $8734,4 Get pointer to room info (midway pointer).
C $8738,3 With same info, get the last position when hero was outside, put back into hero's data.
N $8759 Handle rooms.
@ $8759 label=Room_Initialise_0
@ $8762 label=Room_Initialise_1
@ $876E label=Room_Initialise_2
C $8781,3 Based on the compass, get a predefined exit mask. This will hold just a single exist from the direction the player came from.
C $878B,3 Get room exit mask.
C $878E,2 If no exits are defined, then just create an exit based on direction player entered the room.
C $8792,1 Use defined exits.
@ $8793 label=Room_Initialise_3
N $87B0 Setup exits.
@ $87BA label=Room_Initialise_4
N $87BF No exit.
C $87C5,3 Clear number of bytes to skip, stays on same exit data for next check.
N $87CA Exit of some sort.
@ $87CA label=Room_Initialise_5
C $87CA,3 Get exit type.
N $87D1 Exit Type 0
C $87D9,3 Size of exit data.
C $87DC,2 Copy exit data across.
N $87E5 Check for exit type 2.
@ $87E5 label=Room_Initialise_6
N $87E9 Exit Type 1.
C $87EB,3 Size of exit data.
N $87F3 Exit Type 2.
@ $87F3 label=Room_Initialise_7
C $87FC,2 Get info required to put hero back outside.
N $881C Setup exit leading to outside.
@ $881C label=Room_Initialise_8
C $881C,3 Store info as exit data.
C $882B,3 Size of exit data.
N $882F _
@ $882F label=Room_Initialise_9
@ $883F label=Room_Initialise_10
C $8844,2 Move onto next exit data.
C $8846,1 Get exit count and count down.
N $884B _
C $8859,3 Copy exit coords into heros position.
C $886C,3 Base on room type,
C $8873,3 Beep!
N $8886 Handle room based on type.
N $888D Room Type 01 Seller
C $888D,3 Get object being sold and fill shelves with item.
C $8893,2 Number of shelves.
C $8895,2 Mark as stolen.
@ $8897 label=Room_Initialise_11
C $8897,1 Put onto next shelf.
C $889B,1 Clear.
N $889E This entry point is used by the routine at #R$88E7.
@ $889E label=Room_Initialise_12
C $88A4,3 Keep a copy of the object linked to room. (sold or bought)
C $88B0,3 Get price of object (sold or bought).
@ $88CC label=Room_Initialise_13
@ $88D2 label=Room_Initialise_14
N $88DD Room Type 02 Broker
@ $88DD label=Room_Initialise_15
C $88E1,3 Clear shelves.
b $88E4 Data block at 88E4
W $88E4,2,2
B $88E6,1,1
c $88E7 Routine at 88E7
N $88E9 This entry point is used by the routine at #R$871A.
@ $88E9 label=Room_Initialise_16
N $88F1 Room Type 03 Deposit, 0B
@ $88F1 label=Room_Initialise_17
C $88F1,3 Get index of bitmap to display in picture.
C $88F7,3 Clear picture.
C $8904,3 Store image index.
@ $8907 label=Room_Initialise_18
C $8907,3 Offset to info data in room data.
N $890F Room Type 04, 08 Castle, 09 Bank, 0A Portal, 05 Gambling
@ $890F label=Room_Initialise_19
N $8923 05 Gambling Room.
C $8923,3 Clear gambling room variables and data.
b $8926 Data block at 8926
W $8926,2,2
B $8928,1,1
c $8929 Routine at 8929
D $8929 Used by the routine at #R$88E7.
@ $8929 label=Room_Initialise_20
N $892F Initialise and Exit.
@ $892F label=Room_Initialise_21
C $892F,1 Offset to info data in room data and store it.
C $8933,3 Make a copy of items carried.
N $8941 Check room type.
@ $8941 label=Room_Initialise_22
N $8945 Room Type 06 Shield room
C $8945,3 Blank out the picture.
C $8952,3 Index of bitmap to display in picture.
C $895B,3 A zero means the shield has been placed, copy the text of the reward from the room data.
@ $896A label=Room_Initialise_23
N $896D Room Type 07 Gallery
@ $896D label=Room_Initialise_24
C $896D,3 Fill the Gallery's picture matrix with spaces.
C $897A,3 Starting with the byte that represent the first picture image.
C $897D,2 Repeat for 4 pictures.
@ $897F label=Room_Initialise_25
C $897F,3 Get the index of the image that represents the object to find.
C $8985,3 If its a zero, then use the image that represents the object has been found.
@ $8988 label=Room_Initialise_26
C $8988,1 Store the correct index into the part of the matrix that is the picture.
C $8989,3 Move onto the next picture matrix.
C $898D,3 Move onto next next item for the room.
c $8997 Handle being caught by the yoeman for theft.
D $8997 Used by the routine at #R$8121.
@ $8997 label=Hero_Arrest
b $89A1 Data block at 89A1
T $89A1,20,20 Halt for the yoemen
B $89B5,1,1
c $89B6 Routine at 89B6
@ $89C3 label=Hero_Arrest_0
N $89C5 This entry point is used by the routine at #R$8997.
@ $89C5 label=Hero_Arrest_1
b $89D1 Data block at 89D1
T $89D1,20,20 Thievery is costly
B $89E5,1,1
c $89E6 Routine at 89E6
C $89EA,3 Clear all pockets.
b $89ED Data block at 89ED
W $89ED,2,2
B $89EF,1,1
c $89F0 Routine at 89F0
b $89F3 Data block at 89F3
W $89F3,2,2
B $89F5,1,1
c $89F6 Routine at 89F6
c $89F9 Selects pocket 1 if current selection is on iridi.
D $89F9 Used by the routines at #R$8A04, #R$8AC4 and #R$8AF1.
@ $89F9 label=Inv_AutoSelect
@ $8A02 label=Inv_AutoSelect_0
c $8A04 Room  Checks inventory on exit.
@ $8A04 label=Exit_CheckInv
C $8A13,2 Check for stolen license.
C $8A18,2 Check for stolen platina.
N $8A1D Stop Thief.
b $8A20 Data block at 8A20
@ $8A20 label=Str_StopThief
T $8A20,11,11
B $8A2B,1,1
c $8A2C Routine at 8A2C
N $8A2E ?
@ $8A2E label=_8a2e
@ $8A3E label=Exit_CheckInv_0
@ $8A44 label=Exit_CheckInv_1
@ $8A4B label=Exit_CheckInv_2
@ $8A59 label=Exit_CheckInv_3
@ $8A5D label=Exit_CheckInv_4
C $8A64,3 Take away 50 iridi from cash.
N $8A6F This entry point is used by the routines at #R$83D5 and #R$8AC4.
@ $8A6F label=Exit_NotEnough
C $8A6F,3 Displays not enough.
b $8A72 Data block at 8A72
T $8A72,11,11
B $8A7D,1,1
c $8A7E Routine at 8A7E
N $8A81 This entry point is used by the routine at #R$8A2C.
@ $8A81 label=Exit_DepositTaken
b $8A84 Data block at 8A84
T $8A84,18,18 Deposit taken 50ir
B $8A96,1,1
c $8A97 Routine at 8A97
@ $8A9A label=Exit_8a9a
@ $8AA8 label=Exit_CheckInv_5
N $8AB7 This entry point is used by the routine at #R$8AF1.
@ $8AB7 label=Shop_Locked
b $8ABA Data block at 8ABA
T $8ABA,6,6 locked
B $8AC0,1,1
c $8AC1 Routine at 8AC1
c $8AC4 Takes 200 iridi from cash.
b $8ADB Data block at 8ADB
T $8ADB,18,18 Fee deducted 200ir
B $8AED,1,1
c $8AEE Routine at 8AEE
c $8AF1 Room  Checks to see if hero can leave strong room.
@ $8AF1 label=Shop_ChkLock
C $8AF1,3 Check to see if carrying a Pearl.
C $8AFB,3 If not then you can leave.
C $8AFE,3 Check to see if carrying the thieves license.
C $8B08,3 If so, then you can leave.
C $8B0B,3 If not then show room as locked.
c $8B0E Action  Handle Offer
D $8B0E Used by the routines at #R$8B40, #R$8B6F, #R$8B76, #R$8B7D, #R$8B84, #R$8B8B, #R$8B92, #R$8B99, #R$8BA0, #R$8BB2 and #R$8BD7. Input:  IX  Ptr to person being offered to. BC  Ptr to pocket holding object being offered. D  Index of object received if an exchange takes place. E  Index to an expected object.
@ $8B0E label=Action_HandleOffer
C $8B0E,1 Get object being offered.
C $8B11,1 Is it the same as object expected.
C $8B18,3 "I don't want..."
C $8B1B,1 Clear pocket.
C $8B1D,3 "How generous"
@ $8B20 label=Action_HandleOffer_0
C $8B20,1 If the object is expected, see if there is anything in exchange.
C $8B22,4 Clear flag.
C $8B26,3 Update the screen.
b $8B2C Data block at 8B2C
@ $8B2C label=Msg_FairExchange
T $8B2C,16,16 A fair exchange
B $8B3C,1,1
c $8B3D Routine at 8B3D
c $8B40 Person  Skar, handle an offer.
@ $8B40 label=Offer_HandleSkar
C $8B40,2 Offer 'Pearl'
C $8B42,2 Receive 'scroll' (2**25)
C $8B4A,1 Offer 'spell' (show the lady!)
C $8B52,1 Clear pocket.
C $8B53,4 Clear flag so that Skar is visible.
b $8B61 Data block at 8B61
T $8B61,10,10 I am seen
B $8B6B,1,1
c $8B6C Routine at 8B6C
c $8B6F Person  Ryde, handle an offer.
@ $8B6F label=Offer_HandleRyde
C $8B6F,2 Offer 'Map' (galacia is far)
C $8B71,2 Receive 'Shield' (belinus)
c $8B76 Person  Kara, handle an offer.
@ $8B76 label=Offer_HandleKara
C $8B76,2 Offer 'Philtre'
C $8B78,2 Receive 'scrip' (Eve)
c $8B7D Person  Keli, handle an offer.
@ $8B7D label=Offer_HandleKeli
C $8B7D,2 Offer 'Philtre'
C $8B7F,2 Receive 'scrip' (Did)
c $8B84 Person  Kahn, handle an offer.
@ $8B84 label=Offer_HandleKahn
C $8B84,2 Offer 'Philtre'
C $8B86,2 Receive 'scrip' (Pop)
c $8B8B Person  Dain, handle an offer.
@ $8B8B label=Offer_HandleDain
C $8B8B,2 Offer 'Lyre'
C $8B8D,2 Receive 'Shield' (Midir)
c $8B92 Person  Mhor, handle an offer.
@ $8B92 label=Offer_HandleMhor
C $8B92,2 Offer 'book' (Verit ghoom)
C $8B94,2 Receive 'book' (Look for my rest)
c $8B99 Person  Teth, handle an offer.
@ $8B99 label=Offer_HandleTeth
C $8B99,2 Offer 'statue'
C $8B9B,2 Receive 'd-key'
c $8BA0 Person  Pita, handle an offer.
@ $8BA0 label=Offer_HandlePita
C $8BA0,1 Offering 'Necklace', 'Bracelet', 'Brooch' or 'Earing' (1e ~ 22)
C $8BAB,1 Set as object being offered.
C $8BAE,1 Receive : 'Scrip'
c $8BB2 Person  Bren, handle an offer.
@ $8BB2 label=Offer_HandleBren
C $8BB2,1 See which object Bren is looking for.
C $8BB9,2 Offer : 'moleskin'
C $8BBC,3 Refuse offer.
C $8BBF,2 Receive : 'map' (gold in ashes)
@ $8BC8 label=Offer_HandleBren_0
C $8BC8,2 Offer : 'platina'
C $8BCB,3 Refuse offer.
C $8BCE,2 Receive : 'map' (galacia is far)
c $8BD7 Person  Loeg, handle an offer.
@ $8BD7 label=Offer_HandleLoeg
C $8BD7,2 Offer : 'l-key'
C $8BD9,1 Receive : 'l-key' back.
b $8BDD Rooms  Jump vector for each type. Called when entered.
@ $8BDD label=Room_TypeJumpVector
W $8BDD,2,2 [0] Outside
W $8BDF,2,2 [1] Seller
W $8BE1,2,2 [2] Broker
W $8BE3,2,2 [3] Deposit
W $8BE5,2,2 [4] Castle, combination lock room.
W $8BE7,2,2 [5] Iomain Ludum
W $8BE9,2,2 [6] Shield Room
W $8BEB,2,2 [7] Gallery
W $8BED,2,2 [8] Castle
W $8BEF,2,2 [9] Bank
W $8BF1,2,2 [A] Portal
W $8BF3,2,2 [B] Broker
c $8BF5 Room  Call all of the room events.
D $8BF5 Used by the routine at #R$9F13.
@ $8BF5 label=Room_Events
C $8BF5,3 Get current room's special function and call it.
C $8C06,4 Get ptr to link list.
@ $8C0A label=Room_Events_0
C $8C0A,3 Get address of next link.
C $8C10,1 check for null ptr, end of list.
C $8C13,1 Put address of link into IX, putting the previous address on the stack.
C $8C16,3 Check for unsed link and remove it if required.
C $8C1F,2 Next link.
@ $8C21 label=Room_Events_1
C $8C21,3 Call store special function.
C $8C2A,1 Remove old link address from stack.
C $8C2B,2 Next link.
c $8C2D Create a door opening / closing event.
D $8C2D Used by the routine at #R$85AE. Creates an event for opening the door which will be called.
@ $8C2D label=Event_CreateDoor
C $8C2D,3 Set up some memory
C $8C30,1 No memory left.
C $8C31,3 Increase door event count
C $8C35,3 Store the function to use.
C $8C3E,3 Store the type of door.
C $8C44,4 Set the coords based on position and camera.
@ $8C59 label=Event_CreateDoor_0
C $8C69,3 Store room (?)
C $8C6F,2 Return (true)
c $8C72 Create a door bitmap for opening / closing animation.
D $8C72 Used by the routine at #R$8CFE. Input:  A  Door animation frame index. IX  Door information Blits inner 'door' part of door image to memory. Memory image if shifted for 4 pixel animation.
@ $8C72 label=Door_CreateBitmap
C $8C73,3 Calculate address of bitmap info from index.
C $8C7E,1 Get address of bitmap.
C $8C81,3 Offset to miss out the door frame part of image.
C $8C85,3 Use spare memory for blitting to.
N $8C8C Door fully closed.
@ $8C8E label=Door_CreateBitmap_0
C $8C8E,2 Blit two columns
C $8C94,1 Skip two columns (door frame)
@ $8C9B label=Door_CreateBitmap_1
N $8C9F Door one third open.
@ $8CA3 label=Door_CreateBitmap_2
C $8CA4,2 Blit two columns
C $8CA8,1 Blit blank column
C $8CAA,1 Skip two columns
@ $8CB1 label=Door_CreateBitmap_3
N $8CB5 Door two thirds open.
@ $8CB9 label=Door_CreateBitmap_4
C $8CB9,1 Skip two columns
C $8CBB,2 Blit one column
C $8CBD,1 Blank two columns
C $8CC1,1 Skip two columns
N $8CC8 Door fully open.
@ $8CC8 label=Door_CreateBitmap_5
C $8CC8,3 Blank image.
N $8CD3 Determine inbetween frame.
@ $8CD3 label=Door_CreateBitmap_6
C $8CD3,1 Get back animation count
C $8CD4,2 If the frame index is even, finish.
C $8CD7,3 If the frame index is odd, shift the image 4 pixels.
N $8CDC Shift door by a nibble
@ $8CDC label=Door_CreateBitmap_7
@ $8CE9 label=Door_PreFrameTable
b $8CEA Door Table of animation frames for door.
@ $8CEA label=Door_FrameTable
B $8CEA,19,8*2,3
c $8CFD Routine at 8CFD
@ $8CFD label=_8cfd
c $8CFE Event  Door opening or closing.
@ $8CFE label=EventDoorOpenClose
C $8CFE,3 Door animation counter
C $8D01,3 Use counter as index to table for the next animation frames.
C $8D0A,1 Get frame
N $8D0F Event Complete
C $8D0F,4 Mark event object as finished.
@ $8D22 label=EventDoorOpenClose_0
C $8D26,3 Door fully open...
@ $8D34 label=EventDoorOpenClose_1
C $8D42,1 Keep a copy of the frame index table ptr.
@ $8D60 label=EventDoorOpenClose_2
@ $8D76 label=EventDoorOpenClose_3
C $8D86,1 Create bitmap based on animation count.
C $8D8A,3 Create a bitmap info for an animated door.
C $8D9A,2 Blit image.
c $8D9F Sets up and blits the flame, if required. Input:  IX  Address of torch data.
@ $8D9F label=Bg_TorchBlitFlame
C $8D9F,3 Make sure the camera is facing the torch, if not end routine.
@ $8DA7 label=Bg_TorchBlitFlame_0
C $8DA7,4 End.
@ $8DAC label=Bg_TorchBlitFlame_1
C $8DAC,3 Get correct coords of camera, along the expected axis (based on compass).
@ $8DB6 label=Bg_TorchBlitFlame_2
C $8DB6,3 Get coords of torch.
@ $8DC1 label=Bg_TorchBlitFlame_3
C $8DC1,1 Get difference between the two to see if torch is on screen.
C $8DCA,2 Not visible.
C $8DD8,2 Start with attributes and colour red.
C $8DE8,3 Only outside, room 0, displays torches that toggle for day and night. Indoors stay on all the time.
C $8DEE,3 Check for night time.
C $8DF4,3 Test for fire frame.
C $8DFB,2 Set to fire bitmap index.
@ $8DFF label=Bg_TorchBlitFlame_4
C $8DFF,2 Blank, no fire.
@ $8E03 label=Bg_TorchBlitFlame_5
C $8E03,3 Toggle fire frame
@ $8E08 label=Bg_TorchBlitFlame_6
C $8E0F,2 Set node data object type flag for blit function.
C $8E11,3 Blit...
b $8E14 Main text for the gambling room.
@ $8E14 label=Msg_DiceStake
T $8E14,26,26
B $8E2E,4,1
c $8E32 Displays text required based on amount staked.
D $8E32 Used by the routine at #R$8F43.
@ $8E32 label=Gamble_DisplayStakes
C $8E32,3 Display the main part of the text
C $8E38,3 See if there is any bets placed in 'A'.
C $8E44,3 If no bets, display the winning values for 'A'.
b $8E47 Data block at 8E47
T $8E47,20,20
B $8E5B,1,1
c $8E5C Routine at 8E5C
N $8E5E This entry point is used by the routine at #R$8E32.
@ $8E5E label=Gamble_DisplayStakes_0
C $8E5E,3 Else display how much has been placed on 'A'.
b $8E67 Data block at 8E67
T $8E67,4,4
B $8E6B,1,1
c $8E6C Routine at 8E6C
D $8E6C Used by the routine at #R$8E5C.
@ $8E6C label=Gamble_DisplayStakes_1
b $8E6F Data block at 8E6F
B $8E6F,4,1
c $8E73 Routine at 8E73
C $8E73,3 See if anything has been placed onto 'B'
C $8E7F,3 If no bets, display the winning values for 'B'.
b $8E82 Data block at 8E82
T $8E82,13,13
B $8E8F,1,1
c $8E90 Routine at 8E90
N $8E91 This entry point is used by the routine at #R$8E73.
@ $8E91 label=Gamble_DisplayStakes_2
C $8E91,3 Else display amount.
b $8E9A Data block at 8E9A
T $8E9A,4,4
B $8E9E,1,1
c $8E9F Routine at 8E9F
c $8EA0 Blit a character offset in the vertical axis.
D $8EA0 Used by the routines at #R$8EEE and #R$8F43. Input:  IX  Ptr to sprite info When offset, the blit continues onto the next character.
@ $8EA0 label=char_BlitScrolledVert
C $8EA0,3 See if visible based on camera direction.
C $8EA8,3 Get character to blit.
C $8EAB,2 Convert into bitmap address.
C $8EB0,3 Get scan offset
C $8EBA,3 Store in bitmap info scratchpad.
C $8EBD,3 Calculate position on screen and see if visible.
C $8EDF,2 Store bitmap size into scatchpad.
C $8EE7,3 Blit at correct position on screen.
@ $8EEA label=char_BlitScrolledVert_0
c $8EED Room handler, does nothing.
@ $8EED label=Room_Null
c $8EEE Room handler for the Castle combination lock room.
D $8EEE This is the room with the rotating letters that act as a comination lock in the Castle.
@ $8EEE label=Room_CastleLock
C $8EEE,3 Gets a pointer to the store holding the three characters being displayed.
C $8EF5,4 Get a pointer to the current room info.
C $8EF9,4 Data used to rotate and display the letters.
C $8EFD,2 Three roating letter locks to handle.
@ $8EFF label=Room_CastleLock_0
C $8F00,1 Move room pointer onto next object in the room.
C $8F01,3 Get counter
C $8F08,1 See if an object has been placed on a locks plinth.
N $8F0E No object on plinth.
@ $8F0E label=Room_CastleLock_1
C $8F0E,3 Increase counter if there is no object to stop the lock rotating.
C $8F14,2 Less than $14,
C $8F16,1 Get the next letter to rotate to.
C $8F18,2 check to see if we have reached 'Z'
C $8F1C,2 Reset to 'A' if reached.
@ $8F1E label=Room_CastleLock_2
C $8F1E,1 and store new letter value.
C $8F20,3 Reset bitmap offset counter.
N $8F25 Rotate letter image.
@ $8F25 label=Room_CastleLock_3
C $8F25,2 Only rotate letter if the counter if $11 or more.
C $8F29,3 Increase bitmap offset to rotate the letter image.
@ $8F2F label=Room_CastleLock_4
C $8F2F,3 Store new counter value.
C $8F32,1 Get current letter value, store in sprite info and draw the letter.
C $8F39,3 Shift onto next lock information.
c $8F43 Handle the dice in the gambling room.
@ $8F43 label=Room_jvGambling
N $8F54 Restart the game cycle.
b $8F67 Data block at 8F67
T $8F67,15,15
B $8F76,1,1
c $8F77 Update state counter.
D $8F77 Used by the routines at #R$8FC9, #R$9094, #R$90D6 and #R$9106.
@ $8F77 label=Room_jvGambling_0
N $8F7B Draw dice.
@ $8F7B label=Room_jvGambling_1
@ $8F81 label=Room_jvGambling_2
@ $8F9C label=Room_jvGambling_3
@ $8FA7 label=Room_jvGambling_4
N $8FB0 Game cycle.
@ $8FB0 label=Room_jvGambling_5
C $8FB2,2 < $50, "place bets" mode, just update.
C $8FB4,2 > $50,other modes
N $8FB9 No more bets mode.
b $8FBC Data block at 8FBC
T $8FBC,12,12
B $8FC8,1,1
c $8FC9 Routine at 8FC9
C $8FC9,3 Put random value into role countdown for both dice.
N $8FE6 This entry point is used by the routine at #R$8F77.
@ $8FE6 label=Room_jvGambling_6
C $8FEC,2 Two dice.
@ $8FEE label=Room_jvGambling_7
C $8FEE,3 Check countdown for dice.
C $8FF2,2 Skip if hit zero.
C $8FF4,3 Increase offset by 2
C $8FF9,2 Until it gets to 8, move onto the next character.
C $9001,3 Check to see if the current character is out of bounds and reset back to the first.
@ $9009 label=Room_jvGambling_8
C $9009,3 Update current character.
C $900C,3 Count down.
C $9011,1 Increase current mode to show this dice has stopped.
@ $9012 label=Room_jvGambling_9
C $9012,1 Reset bitmap offset so that full dice face is shown.
@ $9013 label=Room_jvGambling_10
@ $9016 label=Room_jvGambling_11
C $9016,3 Move onto next dice.
C $901D,2 Get first dice info address.
@ $9022 label=Room_jvGambling_12
N $9027 Display results
C $902B,2 Clear message line.
b $9030 Data block at 9030
B $9030,1,1
c $9031 Routine at 9031
C $9039,1 Display the value.
b $9043 Data block at 9043
T $9043,2,2
B $9045,1,1
c $9046 Routine at 9046
N $9057 Check for 'A' winning.
@ $9057 label=Room_Gambling_CheckA
C $9057,3 See if stake 'A' holds any money.
b $905A Data block at 905A
W $905A,2,2
B $905C,1,1
c $905D Routine at 905D
C $9060,3 '2:1' Add double the amount staked into winnings.
C $907D,3 Display message.
b $9080 Data block at 9080
T $9080,7,7
B $9087,1,1
c $9088 Routine at 9088
C $9088,3 Along with the new amount.
C $908E,3 Clear stake 'B'
b $9091 Data block at 9091
W $9091,2,2
B $9093,1,1
c $9094 Routine at 9094
C $9094,3 Update the background.
N $90A3 Check for 'B' winning.
@ $90A3 label=Room_Gambling_CheckB
C $90A3,3 See if stake 'B' is zero.
b $90A6 Data block at 90A6
W $90A6,2,2 Ptr to stake 'B'
B $90A8,1,1 number ofbytes to test.
c $90A9 Routine at 90A9
C $90AB,3 'evens' : Double the amount in the stake.
C $90BF,3 Display message.
b $90C2 Data block at 90C2
T $90C2,7,7
B $90C9,1,1
c $90CA Routine at 90CA
C $90CD,3 Display updated stake.
C $90D0,3 Clear stake 'A'.
b $90D3 Data block at 90D3
W $90D3,2,2
B $90D5,1,1
c $90D6 Routine at 90D6
C $90D6,3 Update the background.
N $90E4 House Wins
@ $90E4 label=Room_Gambling_HouseWins
C $90E4,3 Clear all stakes.
b $90E7 Data block at 90E7
W $90E7,2,2 Ptr to stake that lost.
B $90E9,1,1
c $90EA Routine at 90EA
C $90EA,3 Redraw the background.
C $90F8,3 Display the message.
b $90FB Data block at 90FB
T $90FB,10,10
B $9105,1,1
c $9106 Routine at 9106
c $9109 Room jump vector,
@ $9109 label=Room_jvC
c $9132 Room handler for Galleries.
@ $9132 label=Room_GalleryHandler
C $9132,4 Get data for current room.
C $9136,3 See if there is an object on the one object placement plinth.
C $9139,2 Do nothing if not.
C $913E,3 Address of pictures character matrix.
@ $9141 label=Room_GalleryHandler_0
C $9141,3 See if object on the plinth matches a picture's object.
C $9151,1 Object not found in pictures, ignore it.
N $9152 Object found.
@ $9152 label=Room_GalleryHandler_1
C $9152,3 Replace character being displayed.
C $9156,4 Reset character displayed in room data to show correct object has been placed.
C $915E,4 Clear object on plinth
C $9162,3 See if all objects have been placed.
C $9171,3 Get index of reward object and place on plinth.
c $917A Room jump vector, NULL
@ $917A label=Room_jvNull2
c $917B Background  Draw a single column of a furniture bitmap.
D $917B Used by the routine at #R$969A.
@ $917B label=Bg_DrawItemColumn
@ $91BE label=Bg_DrawItemColumn_0
N $91D1 Moving left.
C $91D1,1 Calculate which bit of bitmap if visible.
N $91DD Moving right.
@ $91DD label=Bg_DrawItemColumn_1
C $91DD,1 Calculate which bit of bitmap if visible.
@ $91E4 label=Bg_DrawItemColumn_2
N $91E9 Blit a single 8 pixel column of a bitmap, held in the bitmap info cache. #TABLE(default,centre,:w) { DE | Byte / Column offset of bitmap pixels, to start from. } TABLE#
@ $91E9 label=Bitmap_DrawColumn
C $91E9,4 Get the address of the bitmap and offset to the correct column for blitting.
C $91F2,3 Get the address of where to blit too.
C $91FA,1 Calculate number of bytes to skip for each bitmap row.
C $9203,3 Width of offscreen.
C $9206,1 Calculate height in pixels.
@ $920B label=Bg_DrawItemColumn_3
C $920C,3 Get byte and mask out shape from background.
C $9211,1 Next line down.
C $9212,2 Skip rest of bitmap for that row.
C $9215,1 Next row.
c $921B Routine at 921B
D $921B Used by the routine at #R$969A.
c $9240 Draws a pair of digits onto a door.
D $9240 Each bitmap holds two digits. Input:  A  Door number. L  Index of bitmap to blit digit too.
@ $9240 label=Door_DrawDigits
N $9244 Calculate 'unit' and 'tens' value of digit.
@ $9246 label=Door_DrawDigits_0
N $9257 Copy left hand digit into memory.
C $925F,2 Number of scans to copy.
@ $9261 label=Door_DrawDigits_1
C $9261,1 Get next scan in bitmap
C $9262,2 Odd character or even digit.
C $9266,1 Even characters need shift to the right half of character cell.
@ $926A label=Door_DrawDigits_2
C $926A,2 Only need right hand nibble of bitmap.
C $926C,3 Store result into memory
C $926F,1 Next scan down.
N $9274 Work out 'tens' digit.
C $9283,4 Copy right hand digit.
@ $928C label=Door_DrawDigits_3
C $928C,1 Get next bitmap scan.
C $928D,2 Check or odd or even digit.
C $9291,1 Shift od digits to left hand column.
@ $9295 label=Door_DrawDigits_4
C $9295,2 Only need left hand nibble.
C $9297,1 Adjust and merge with previous digit.
C $929E,1 Next scan.
@ $92A5 label=Door_DrawDigits_5
@ $92AA label=Door_DrawDigits_6
N $92B1 Copy digit to offset area of bitmap.
@ $92B1 label=Door_DrawDigits_7
C $92B8,3 Offset of bitmap, where to place the digits.
@ $92C5 label=Door_DrawDigits_8
b $92D2 Data block at 92D2
@ $92D2 label=Data_Stack
W $92D2,2,2 Temp store for SP (stack).
@ $92D4 label=Bg_DoorNumber
B $92D4,1,1 Next door number.
B $92D5,1,1
@ $92D6 label=Bg_ColumnsLeft
W $92D6,2,2 Number of columns left when running through background data. 1 columns = 8 pixels of an object.
@ $92D8 label=_92d8_ReverseBit
B $92D8,1,1
W $92D9,2,2
B $92DB,2,2
@ $92DD label=_NextBlock
W $92DD,2,2 Address of the extra data block for background data type '0'.
@ $92DF label=_NextSignText
W $92DF,2,2 Address of the next index for sign text.
W $92E1,4,2
c $92E5 BG Draw correct part of a background item at a given column.
D $92E5 Used by the routine at #R$969A. Input:  IX  5 byte data struct ptr. Prepares and Draws the background furniture by walking through the description string until it finds the correct item in the expected column. Any objects that require preperation is handle here, such as adding the street name to a sign.
@ $92E5 label=Bg_CalcAndDraw
@ $9300 label=Bg_CalcAndDraw_0
C $9308,2 Get start of next block.
@ $9322 label=Bg_CalcAndDraw_1
C $9322,3 Get map position of path.
C $932A,3 Based on compass get position for correct axis.
@ $9336 label=Bg_CalcAndDraw_2
@ $9339 label=Bg_CalcAndDraw_3
C $9339,2 Workout difference between hero and path start. Camera and direction set calculations.
@ $933E label=Bg_CalcAndDraw_4
@ $9346 label=Bg_CalcAndDraw_5
C $9349,3 Length?
@ $935E label=Bg_CalcAndDraw_6
@ $9365 label=Bg_CalcAndDraw_7
C $9365,2 Half the length to match 1 column of an item.
C $9379,2 Calculate number of items to scan through.
@ $9381 label=Bg_CalcAndDraw_8
C $9381,2 Calculate number of items to scan through.
C $9384,3 Calculate start of description string.
@ $939D label=Bg_CalcAndDraw_9
C $939D,2 Offset IX to start of description string.
C $939F,2 Set loop to draw 1 column.
N $93A3 _
@ $93A3 label=Bg_CalcAndDraw_10
N $93AB Walk description string.
@ $93AB label=Bg_CalcAndDraw_11
C $93AB,1 Get index of object to draw and run a function based on upper bit and value.
C $93AF,2 Handle if a control code.
C $93B9,2 Handle sub-string code.
N $93CC This entry point is used by the routines at #R$9588 and #R$959C.
@ $93CC label=Bg_CalcAndDraw_12
C $93CC,3 Get item index and calculate address for bitmap's width.
C $93D7,1 Get width and store.
C $93D9,2 Remove flag bit.
C $93DB,2 Convert into 16bit.
C $93DD,3 Decrease object width from columns left.
N $93E5 This entry point is used by the routines at #R$948C and #R$94A8.
@ $93E5 label=Bg_CalcAndDraw_13
N $93E9 This entry point is used by the routines at #R$94A8 and #R$9500.
@ $93E9 label=Bg_CalcAndDraw_14
N $93EB Entry point used by sub-string draw. #TABLE(default,centre,:w) { =h ENTRY | =h  } { C | Bytes in sub string } { IX | Ptr to sub-string } TABLE#
@ $93EB label=Bg_CalcAndDraw_15
C $93ED,1 Clear the reverse draw flag.
C $93F1,1 Decrease the number of bytes left in string, ending if done.
C $93F3,2 Move onto next byte in string.
N $93F7 __
@ $93F7 label=Bg_CalcAndDraw_16
C $93F8,3 See if bit needs reversing.
@ $9406 label=Bg_CalcAndDraw_17
C $9409,2 Shop window with a sign.
C $940E,2 Picture frame.
C $9413,2 Street sign.
C $9418,2 Basic object.
C $941C,2 Door.
C $9421,2 Shop-keeper.
C $9426,2 Torch.
C $942F,2 Shop counter.
c $9434 Blits a column of a background bitmap based on its index value.
D $9434 Used by the routines at #R$92E5, #R$952E, #R$95A8, #R$9625, #R$9641 and #R$9674. Input:  IX  Points to address of next item in background description string.
@ $9434 label=Bg_BlitItemColumn
C $9434,3 Based on index, calculate position in offcreen to blit object.
@ $945D label=Bg_BlitItemColumn_0
C $945D,1 Using bitmap index, calculate address of data, pointing to dimensions of bitmap.
C $9466,1 Get height in char cells.
@ $946D label=Bg_BlitItemColumn_1
C $947A,3 Get index of bitmap and copy info into memory.
C $9480,4 Get which column, of bitmap, to blit.
N $9487 This entry point is used by the routines at #R$948C and #R$94A8.
@ $9487 label=Bg_BlitItemEnd
c $948C Draw an empty black column.
D $948C Used by the routine at #R$92E5.
@ $948C label=Bg_DrawEmptyCol
C $948C,3 Only draw if outside of path range.
C $9498,3 Fill in column.
@ $94A2 label=Bg_DrawEmptyCol_0
c $94A8 Handle description string control values.
D $94A8 Used by the routine at #R$92E5. The follow are control codes that can exist within a description string.
@ $94A8 label=Bg_StrCtrlCodes
C $94A8,3 check for 'skip' value, if not check for other values.
C $94B1,3 String value means skip by the number of column units.
@ $94C1 label=Bg_StrCtrlCodes_0
C $94C1,2 Reverse image value.
@ $94D2 label=Bg_StrCtrlCodes_1
@ $94EA label=Bg_StrCtrlCodes_2
@ $94FD label=Bg_StrCtrlCodes_3
C $94FD,3 Ignore any unknown codes by ending the walking of string.
c $9500 Point to and draw description's sub-string.
D $9500 Used by the routine at #R$92E5. A description string can contain a reference to another inner sub-string. The draw engine will use this inner string until complete before returning to the original string.
@ $9500 label=Bg_UseInnerStr
C $9500,2 Offset reference value to true string index.
C $9502,1 convert into address within table.
C $950A,1 Get pointer, to string, from table.
c $952E Draws the picture for a gallery.
D $952E Used by the routine at #R$92E5.
@ $952E label=Gallery_DrawPicture
N $953A Blit characters into picture frame.
C $953A,3 Calculate address of array that holds the block images indicies.
C $954C,3 Get start position within picture frame. This is where the first char will be drawn to.
C $9553,2 Number of chars down.
@ $9555 label=Gallery_DrawPicture_0
C $9557,2 Number of chars across.
@ $9559 label=Gallery_DrawPicture_1
C $955C,1 Get index of next image and convert into address of bitmap.
N $9566 Draw one char block.
C $9566,3 8 scans, copying the image.
@ $9569 label=Gallery_DrawPicture_2
C $956B,1 Next scan down within bitmap.
N $9575 Next block along.
N $957C Next block down.
c $9588 Background  Next door number.
D $9588 Used by the routine at #R$92E5. Calculates the next door number and next block address.
@ $9588 label=Bg_NextDoorNumber
c $959C Background  Next sign text
D $959C Used by the routine at #R$92E5. Calculates the address of the next shop sign text within the background data.
@ $959C label=Bg_NextSignText
c $95A8 Set up and blit a door.
D $95A8 Used by the routine at #R$92E5. Input:  IX  Ptr current background door data.
@ $95A8 label=Bg_BlitDoor
C $95B0,3 Only door type $92 has a number, skip for rest.
C $95BD,3 Blit next door number to bitmap $92.
@ $95C3 label=Bg_BlitDoor_0
C $95C8,3 See if door already exists in list for current background.
@ $95CD label=Bg_BlitDoor_1
@ $95D7 label=Bg_BlitDoor_2
C $95DF,3 Is player facing left?
C $95E6,3 Shift existing doors down the list. New door will be added to the start of list.
@ $95F3 label=Bg_BlitDoor_3
C $95F3,3 Shift existing doors up the list. New door will be added to the end of the list.
@ $95FE label=Bg_BlitDoor_4
C $95FE,4 Store position and door type into slot.
c $9615 Blit a single word into a bitmap.
D $9615 Used by the routine at #R$92E5. Input:  IX  Ptr to data holding next item index.
@ $9615 label=Bg_BlitOneWord
c $961C Routine at 961C
D $961C Used by the routine at #R$92E5.
@ $961C label=Bg_BlitTwoWord
C $961C,3 Get ptr to text index string. (Words to draw).
C $9623,2 Length of string / number of words.
c $9625 Blit string.
D $9625 Used by the routine at #R$9615. Input:  HL  Ptr to string. B  Number of words.
@ $9625 label=Bg_BlitWordIntoBitmap
C $9625,3 Get index of bitmap to draw string into (sign or a window etc).
C $9628,3 Draw string into the bitmap.
c $9641 Adds a torch to the current background.
D $9641 Used by the routine at #R$92E5.
@ $9641 label=Bg_TorchAdd
C $9643,3 Create a new data node in IX, copying torch info into it.
C $9646,2 End if no more nodes left.
C $9648,3 Store some coords.
C $9658,3 Store address of related function to object being stored in node. In this case the blitting of the flame.
C $9661,2 Index for fire bitmap.
C $9669,3 Store compass in object.
@ $966F label=Bg_TorchAdd_0
C $9671,3 Blit the actual torch.
c $9674 Store item index number into background index table.
D $9674 Used by the routine at #R$92E5. The background index table holds values to easily tell which column holds which special items. Special items are things you can interact with. The Offscreen pointer holds the current column on the offscreen (top row) for which to store for. The table column will be matched.
@ $9674 label=BgTable_Store
N $9677 Store value of A into table.
@ $9677 label=BgTable_StoreA
C $9677,3 Table is offset just before the offscreen.
c $9685 Store the value for a shopkeeper at current column
D $9685 Used by the routine at #R$92E5.
@ $9685 label=BgTable_StoreShopKeeper
C $9685,2 Value for a shopkeeper.
b $9689 Data block at 9689
@ $9689 label=_9689_coordsA
@ $968B label=_968b_coordsB
W $9689,4,2
@ $968D label=Ptr_Offscreen
W $968D,2,2 Points to an offscreen row.
@ $968F label=Temp_BlitTo
W $968F,2,2
@ $9692 label=_9692
@ $9694 label=_9694
@ $9696 label=Bmp_IndexJunction
B $9691,9,1,2*2,3,1
c $969A Background  Draws a single column, including paths.
D $969A Used by the routines at #R$7CD4 and #R$7EED. Input:  HL  Ptr to offscreen IX  Ptr to table of path offsets
@ $969A label=Bg_DrawColumn
C $969D,3 Clear column of offscreen starting at supplied address in HL.
@ $96A6 label=Bg_DrawColumn_0
C $96B7,3 Get offset based on camera compass value.
C $96C2,4 Calculate which coordinate we need to work on.
@ $96D1 label=Bg_DrawColumn_1
C $96D1,1 Calculate correct position based on camera position offset to the correct end column of the stage.
b $96E7 Search for junctions.
@ $96E7 label=_969a_data
W $96E7,2,2 This bit gets modified by code later on...
@ $96E9 label=_969a_VectorMargin
W $96E9,2,2 Size of the margin when checking if the man is on a path's vector.
W $96EB,2,2
c $96ED Routine at 96ED
C $96F1,2 Set junction to draw bitmap index 'leading in'.
C $96F6,3 Set values to search for paths connecting from above current path.
@ $9701 label=Bg_DrawColumn_2
C $9717,3 Get correct path information based on camera compass.
C $971E,4 Information for E/W path.
@ $972C label=Bg_DrawColumn_3
C $972C,4 Information for N/S path.
@ $9738 label=Bg_DrawColumn_4
C $973D,2 Check camera compass.
C $9745,1 Offset position.
@ $974B label=Bg_DrawColumn_5
@ $974C label=Bg_DrawColumn_6
N $974D Find path crossing position.
@ $974D label=Bg_DrawColumn_7
C $974F,3 Get coordinate of path's axis.
C $9755,1 See if person is on the same vector within a margin.
C $975E,1 Path is to the left of position, see if within margin.
C $9764,2 Path is within position and its margin.
N $9766 Path found?
@ $9766 label=Bg_DrawColumn_8
C $9766,1 Path is either same position or further on.
C $9767,2 Check to see if further on...
@ $976B label=Bg_DrawColumn_9
C $976B,3 Get coordinates of right hand end of path and see if camera is within range.
N $9781 Found path crossing position.
C $9796,3 Draw junction bitmap.
N $979B Next Path
@ $979B label=Bg_DrawColumn_10
N $97A4 Search for junctions below path.
@ $97A4 label=Bg_DrawColumn_11
C $97A6,2 Set junction bitmap index to 'leading out'
C $97AB,3 Set values in order to seach paths conneting just below the current path.
@ $97CA label=Bg_DrawColumn_12
@ $97D2 label=Bg_DrawColumn_13
@ $97E0 label=Bg_DrawColumn_14
N $97E7 Draw bottom road edge.
@ $97E7 label=Bg_DrawColumn_15
C $97F7,1 ABS(hl)
C $980F,1 Using odd/even of the offset, decide which column of the path image is drawn.
C $981D,3 Get the ptr to the bitmap of the road edge.
C $9820,1 Offset to correct column to draw.
@ $982E label=Bg_DrawColumn_16
@ $983A label=Bg_DrawColumn_17
N $9851 Draw top road edge.
@ $9862 label=Bg_DrawColumn_18
@ $986F label=Bg_DrawColumn_19
N $987D Draw the road leading in and out of screen.
@ $987D label=Bg_DrawColumn_20
@ $9893 label=Bg_DrawColumn_21
@ $98AA label=Bg_DrawColumn_22
@ $98AF label=Bg_DrawColumn_23
C $98B3,4 Bitmap index for road leading in.
@ $98BD label=Bg_DrawColumn_24
@ $98C1 label=Bg_DrawColumn_25
@ $98DA label=Bg_DrawColumn_26
@ $98F4 label=Bg_DrawColumn_27
N $98F7 Draw object.
@ $98F7 label=Bg_DrawColumn_28
C $98F7,3 Get row above.
@ $993A label=Bg_DrawColumn_29
c $9955 Reverses the image of a bitmap.
D $9955 Used by the routines at #R$92E5, #R$9F13 and #R$A64B. Input:  L  Bitmap index.
@ $9955 label=Bitmap_Reverse
C $9955,2 Convert index into bitmap info address.
C $995D,1 Get bitmap address.
C $9961,1 Bitmap height.
C $9966,1 Bitmap width, toggling reverse bit.
C $9972,2 Store parity of width.
@ $9979 label=Bitmap_Reverse_0
@ $997B label=Bitmap_Reverse_1
@ $9986 label=Bitmap_Reverse_2
c $99AF Test for keyboard and store results.
D $99AF Used by the routine at #R$99C4.
@ $99AF label=Keyboard_Test
C $99B4,3 Bottom keyboard row, B ~ SPACE.
@ $99B7 label=Keyboard_Test_0
c $99C4 Tests keyboard and convert presses into command bit flag.
D $99C4 Used by the routine at #R$8121.
@ $99C4 label=Keyboard_Handle
@ $99E6 label=Keyboard_Handle_0
@ $99FA label=Keyboard_Handle_1
@ $9A0C label=Keyboard_Handle_2
@ $9A1E label=Keyboard_Handle_3
@ $9A30 label=Keyboard_Handle_4
@ $9A42 label=Keyboard_Handle_5
@ $9A4E label=Keyboard_Handle_6
@ $9A60 label=Keyboard_Handle_7
@ $9A76 label=Keyboard_Handle_8
c $9A7E Redraws an object, on stage. If the object is already there then it is Xor'd out.
D $9A7E Used by the routine at #R$9D73. The bitmap info cache holds info based on bitmap to draw.
@ $9A7E label=Obj_DrawOrClear
C $9AAC,4 B = width, C = height
@ $9AB0 label=Obj_DrawOrClear_0
N $9AB2 Blit mask
@ $9AB2 label=Obj_DrawOrClear_1
@ $9AC3 label=Obj_DrawOrClear_2
@ $9AC7 label=Obj_DrawOrClear_3
@ $9ACB label=Obj_DrawOrClear_4
c $9AEE Decode a word index string into a readable string.
D $9AEE Used by the routine at #R$9B21. Input:  HL  Address of word index string. B  Number of bytes in string. EXIT: #R$5B00 Holds string. A word index string holds a string of indices, each representing a string from the dictionary. Resulting string [Len, "string"] 0x7B is used as a space.
@ $9AEE label=Str_Decode
C $9AEE,3 Temp memory for storing expanded string.
C $9AF1,1 First byte holds the length, so clear.
@ $9AF2 label=Str_Decode_0
C $9AF3,1 Start of string content.
C $9AF5,1 Get next word index.
C $9AF7,2 Bit 7 set means we use the index as an ascii code
C $9AFB,2 which is stored directly into the string.
C $9AFF,3 Increase string length by one.
@ $9B06 label=Str_Decode_1
C $9B06,1 Get address and length of word using the index.
C $9B0A,3 Increase overall string count by the length of the current word.
C $9B12,2 Append word to string.
@ $9B14 label=Str_Decode_2
C $9B17,1 Next word.
C $9B19,1 Insert a gap betweens words using 0x7b char.
c $9B21 Draws a string, as a bitmap, into another bitmap, such as a sign.
D $9B21 Used by the routine at #R$9625. Input:  A  Bitmap to draw string into. HL  Ptr to text index string. B  Length of text index string, number of words to draw.
@ $9B21 label=Draw_StringIntoOther
C $9B24,3 Convert data into a string.
C $9B2D,1 Get string length
@ $9B39 label=Draw_StringIntoOther_0
@ $9B3D label=Draw_StringIntoOther_1
C $9B3D,1 String length.
C $9B44,1 Start of string.
C $9B45,2 Copy string.
@ $9B47 label=Draw_StringIntoOther_2
C $9B47,2 Add seven 0x7B chars to end of string copy.
@ $9B4B label=Draw_StringIntoOther_3
C $9B4F,1 Get index of bitmap to write string to.
C $9B51,3 Cache the info on the bitmap.
C $9B54,3 Offset bitmap address to start of area to draw string to.
C $9B5C,4 Start of string to draw as a bitmap.
@ $9B62 label=Draw_StringIntoOther_4
C $9B64,3 Get next character in sting and convert into bitmap.
C $9B76,2 Height if character bitmap.
@ $9B78 label=Draw_StringIntoOther_5
C $9B78,1 Get scan if bitmap.
C $9B7A,4 Each bitmap holds two lefts (left / right), so check if the left or right image is required.
C $9B80,1 Shift bits in order to left hand half of image.
@ $9B84 label=Draw_StringIntoOther_6
@ $9B99 label=Draw_StringIntoOther_7
c $9B9E Blits an character bitmap to memory.
D $9B9E Used by the routine at #R$A64B. Input:  HL  Address of bitmap to draw to. DE  Number of bytes offset within bitmap to draw to. BC  Number of bytes to skip after each scan line blit. A  Character index of letter to blit. The letters are either upper case ROM bitmap or lower case game defined bitmap. The memory is normally another bitmap and the letter is blitted to an offset.
@ $9B9E label=Char_BlitToMemory
C $9B9E,1 Offset bitmap address by given number of bytes.
C $9B9F,3 Use the ROM character set for upper case.
C $9BA6,3 Use the defined character set for lower case letters.
@ $9BA9 label=Char_BlitToMemory_0
C $9BAA,1 Convert letter index into bitmap address.
C $9BB4,2 Number of scans for a letter.
@ $9BB6 label=Char_BlitToMemory_1
C $9BB7,1 Blit letter bitmap into memory by shifting its bits so that the left of the letter appears in the left part of the badge and the right part of the letter in the right.
C $9BC6,1 Move onto the next scan down within the memory bitmap.
C $9BC7,1 Next scan for letter.
b $9BCD Data block at 9BCD
@ $9BCD label= Temp_blit_attr
B $9BCD,1,1
c $9BCE Blit bitmap, at (Y,X), aligning to nearest character position.
D $9BCE Used by the routines at #R$7F6F and #R$A64B. Input:  L  Index of bitmap. A  Attribute colour. B  Y position, in pixels. C  X position, in pixels.
@ $9BCE label=Bmp_BlitAtCharPos
C $9BD0,3 Store colour.
C $9BD3,1 Store Y position.
C $9BD7,1 Store X position.
C $9BDB,3 Cache info on bitmap being blitted.
C $9BDE,1 Store the width.
C $9BE5,1 Store the height.
C $9BF2,3 Height of bitmap in chars.
@ $9BF5 label=Bmp_BlitAtCharPos_0
C $9BF7,3 Get DF / ATTR address based on X/Y coords.
C $9BFA,1 Swap stack content (holds bitmap address) with DF.
C $9BFB,3 See if any colour is required.
C $9C01,3 Width.
@ $9C04 label=Bmp_BlitAtCharPos_1
C $9C04,1 Colour a single line, width of sprite in chars.
@ $9C08 label=Bmp_BlitAtCharPos_2
C $9C08,2 8 scans per one char.
C $9C0A,1 Get DF address.
@ $9C0B label=Bmp_BlitAtCharPos_3
C $9C0C,3 Width.
C $9C11,2 Blit next scan of bitmap.
C $9C13,1 Next scan down.
C $9C1A,3 Next character row down.
C $9C20,1 Next character row.
c $9C26 Clears the stage.
D $9C26 Used by the routine at #R$79B7.
@ $9C26 label=Stage_Clear
b $9C44 Holds the address of any extra string of the selected object.
@ $9C44 label=ObjectStringPtr
W $9C44,2,2
c $9C46 Updates the whole inventory text.
D $9C46 Used by the routines at #R$7DA8, #R$8121, #R$83D5, #R$8B0E, #R$8B40, #R$9D73, #R$9E51, #R$9EF6 and #R$A934.
@ $9C46 label=Inv_Update
C $9C46,3 Clear any extra object string.
C $9C4C,2 Print #1
@ $9C5A label=Inv_Update_0
@ $9C61 label=Inv_Update_1
@ $9C6A label=Inv_Update_2
@ $9C6F label=Inv_Update_3
@ $9C75 label=Inv_Update_4
@ $9C7A label=Inv_Update_5
N $9C8B Display bank account.
b $9C8E Data block at 9C8E
B $9C8E,1,1 INK $06, PAPER $00, BRIGHT $01
B $9C8F,6,1
c $9C95 Routine at 9C95
b $9C98 Data block at 9C98
W $9C98,2,2
B $9C9A,1,1
c $9C9B Routine at 9C9B
b $9CA0 Data block at 9CA0
B $9CA0,3,1
T $9CA3,6,6
B $9CA9,1,1
c $9CAA Routine at 9CAA
b $9CB3 Data block at 9CB3
T $9CB3,3,3
B $9CB6,1,1
c $9CB7 Routine at 9CB7
D $9CB7 Used by the routine at #R$9C9B.
@ $9CB7 label=Inv_Update_6
@ $9CC2 label=Inv_Update_7
C $9CC2,1 Select iridi.
b $9CC9 Data block at 9CC9
B $9CC9,1,1 INK $03
B $9CCA,2,1
c $9CCC Display number of iridi tokens held.
D $9CCC Used by the routine at #R$9CB7.
@ $9CCC label=Inv_Update_8
b $9CCF Data block at 9CCF
B $9CCF,1,1 AT 4,1
B $9CD0,3,1
c $9CD3 Routine at 9CD3
C $9CD3,2 '*'
C $9CD5,3 Check to see if iridi token are selected.
C $9CDB,2 If not just display a space character.
@ $9CDD label=Inv_Update_9
C $9CEA,2 Check for Bank or Ludum (gambling house).
@ $9CF2 label=Inv_Update_10
C $9CF2,3 Bank and Ludum display 'tokens' for the money...
b $9CF5 Data block at 9CF5
T $9CF5,7,7
B $9CFC,1,1
c $9CFD Routine at 9CFD
N $9CFF This entry point is used by the routine at #R$9CD3.
@ $9CFF label=Inv_Update_11
C $9CFF,3 Other places display 'iridi'
b $9D02 Data block at 9D02
T $9D02,6,6
B $9D08,3,1
c $9D0B Display objects in pockets.
D $9D0B Used by the routine at #R$9CFD.
@ $9D0B label=Inv_Update_12
C $9D11,4 Point to address just before pockets.
N $9D15 This entry point is used by the routine at #R$9D42.
@ $9D15 label=Inv_Update_13
C $9D15,2 Next pocket.
C $9D1D,3 Get object held in pocket.
C $9D20,1 Zero means nothing carried in pocket. Skip.
C $9D2A,2 PRINT AT e,0;
C $9D33,4 MSB of pocket value, flags as a stolen object.
b $9D3C Data block at 9D3C
B $9D3C,1,1 PRINT FLASH 1;"s"; FLASH 0;
B $9D3D,1,1
T $9D3E,1,1
B $9D3F,3,1
c $9D42 Routine at 9D42
N $9D44 This entry point is used by the routine at #R$9D0B.
@ $9D44 label=Inv_Update_14
C $9D44,2 If not stolen the just display a space.
@ $9D49 label=Inv_Update_15
C $9D4B,1 See if object is selected...
C $9D4E,2 print '*' for selected.
@ $9D55 label=Inv_Update_16
C $9D55,2 print ' ' if not.
@ $9D5A label=Inv_Update_17
C $9D5A,3 Print object's noun.
C $9D5D,2 Make sure sting has terminated and not stopped at a '+' character which means second line of info.
C $9D61,1 If the object is selected, store the address of the extra string.
N $9D6A Display object's extra string. (If any).
@ $9D6A label=Inv_Update_18
c $9D73 Redraws an object, on stage. If the object is already there then it is Xor'd out.
D $9D73 Used by the routines at #R$9DC1 and #R$9E51. Input:  A  Object index
@ $9D73 label=Obj_DrawOrClearByIndex
C $9D73,3 Get the bitmap index for object[A]
C $9D77,3 Copy details of bitmap into cache.
@ $9D7F label=Obj_DrawOrClearByIndex_0
C $9D7F,1 Find an empty slot
@ $9D88 label=Obj_DrawOrClearByIndex_1
@ $9DA5 label=Obj_DrawOrClearByIndex_2
@ $9DAD label=Obj_DrawOrClearByIndex_3
b $9DC0 Data block at 9DC0
@ $9DC0 label=_9dc0
B $9DC0,1,1
c $9DC1 Hero; Handle pick up an object / money.
D $9DC1 Used by the routine at #R$8121.
@ $9DC1 label=Hero_PickUp
C $9DC1,3 Get the index of the two interactive items behind player.
C $9DC4,1 Both must be of the same type to be a surface and be in range of 01 ~ 0F.
C $9DC9,1 Using the interaction index, check to see if an object is being held in that slot.
C $9DD1,1 A zero being held, means no object on the surface.
C $9DD3,3 Bank
@ $9DDF label=Hero_PickUp_0
C $9DDF,2 Gambling
@ $9DF0 label=Hero_PickUp_1
@ $9E09 label=Hero_PickUp_2
C $9E09,3 Check for carrying three objects.
b $9E13 Data block at 9E13
@ $9E13 label=Str_HandsFull
B $9E13,3,1
T $9E16,19,19
B $9E29,1,1
c $9E2A Routine at 9E2A
N $9E2B This entry point is used by the routine at #R$9DC1.
@ $9E2B label=Hero_PickUp_3
C $9E2B,1 Place object into pocket.
@ $9E41 label=Hero_PickUp_4
N $9E44 This entry point is used by the routine at #R$9DC1.
@ $9E44 label=Hero_PickUp_5
c $9E51 Hero; Handle dropping an object / money.
D $9E51 Used by the routine at #R$8121.
@ $9E51 label=Hero_Drop
C $9E51,3 Standard amount when adding to account.
C $9E57,2 Bank
C $9E5B,2 Gambling
N $9E5F Gambling
C $9E64,3 Get the cost of the object / amount per bet.
N $9E67 Bank / Gambling.
@ $9E67 label=Hero_Drop_0
C $9E67,3 Store amount of money to shift onto account.
C $9E6A,3 Check that we have something behind the hero to put the object onto.
C $9E72,4 Get difference between amount carried and the amount to put down.
C $9E7C,1 Not enough carried, do nothing.
C $9E7D,3 Deal wit the bank account if in a bank.
C $9E87,3 Workout which plinth the hero next to.
@ $9E95 label=Hero_Drop_1
C $9E95,4 Add amount to plinth.
N $9EA3 Other type of room.
@ $9EA3 label=Hero_Drop_2
C $9EA3,3 Check for money selected.
C $9EAA,1 Offset select index to pocket address.
C $9EB1,1 Get index of object being carried and check is valid.
@ $9EB4 label=Hero_Drop_3
C $9EB5,3 Calculate which plinth hero is near
C $9EBA,2 End if not near one.
C $9EBD,1 Get address of plinth within room data.
C $9EC4,1 See if plinth is empty.
C $9EC8,3 If not check for bank / gambling which can have money already on plinth.
C $9ED1,1 Any other type of room, just do nothing.
N $9ED2 Money drop.
@ $9ED2 label=Hero_Drop_4
C $9ED2,3 Beep.
N $9EDE Object drop.
@ $9EDE label=Hero_Drop_5
C $9EDF,1 Move the object (index value) from pocket onto plinth.
C $9EE4,2 Reset select to first object.
C $9EE9,3 Beep.
c $9EF6 Inventory  Select next pocket.
D $9EF6 Used by the routine at #R$8121.
@ $9EF6 label=Inv_SelectNext
b $9EFD Indices to bitmap data for the hero's masks.
@ $9EFD label=Bmp_HeroMaskIndices
B $9EFD,21,8*2,5
@ $9F12 label=Bmp_IndexTemp
B $9F12,1,1 Stores the index of which mask to use when drawing.
c $9F13 Stage Draw everyone including Cuchulain and everything on stage.
D $9F13 Used by the routines at #R$7F6F, #R$8121, #R$83D5, #R$8544, #R$8B0E and #R$8B40.
@ $9F13 label=Stage_Draw
C $9F13,3 This entry uses the current frame.
N $9F16 This entry point is used by the routines at #R$7F6F, #R$8121, #R$8544, #R$85AE and #R$8684.
@ $9F16 label=Stage_Draw_0
C $9F16,3 This entry uses a given frame in A.
C $9F19,3 Make sure all of the background things are updated.
C $9F1C,3 For South and West directions, draw people in front.
@ $9F26 label=Stage_Draw_1
@ $9F3B label=Stage_Draw_2
C $9F4A,3 Workout which mask to use.
C $9F57,3 See if mask needs reversing.
C $9F5A,2 Ignore these to bitmaps.
C $9F66,3 See if current graphic needs reversing.
@ $9F75 label=Stage_Draw_3
@ $9F8A label=Stage_Draw_4
@ $9FBE label=Stage_Draw_5
@ $9FC6 label=Stage_Draw_6
@ $9FC8 label=Stage_Draw_7
@ $9FDD label=Stage_Draw_8
c $9FE6 Update the backgrounds of actors / hero.
D $9FE6 Used by the routine at #R$79B7.
@ $9FE6 label=DF_UpdateBg
C $9FE6,3 Test for South / West facing.
C $9FEB,3 Update actors backgrounds first if so.
C $9FEE,3 Update hero's background.
@ $9FFD label=DF_UpdateBg_0
@ $A00E label=DF_UpdateBg_1
C $A00E,3 Test for North / East.
C $A014,3 Update backgrounds if so.
c $A017 Paths  Finds a path based on a given coordinates (Axis, Vector).
D $A017 Used by the routines at #R$A31E, #R$A3D0 and #R$A53D. Input:  IX  Path data DE  Axis position to test. BC  Vector position to test. (A19E)  Determines if test required when path found. EXIT  'C' flag : Set if failed to find path. EXIT  IX Points to path found. Both N/S and E/W paths can be tested. Coordinates should be switched to match the axis and vector for the paths required.
@ $A017 label=Path_FindByCoord
@ $A020 label=Path_FindByCoord_0
C $A020,3 Get axis of path.
C $A026,1 Get difference to coord.
N $A02B Next path.
@ $A02B label=Path_FindByCoord_1
C $A02B,3 Move onto next road
@ $A032 label=Path_FindByCoord_2
C $A032,3 Check value is within margin
N $A039 Path not found.
C $A039,1 IF greater than margin, just end.
@ $A03B label=Path_FindByCoord_3
C $A03F,3 Get end A of road.
C $A045,1 Difference
C $A04A,3 Get end B of road.
C $A050,1 Get difference
N $A055 Path found.
C $A055,3 Simply return with the result.
N $A05A Search through table.
C $A060,2 Loop
C $A062,2 Number of matches.
N $A064 _
@ $A064 label=Path_FindByCoord_4
C $A06D,1 Found, increase match counter.
@ $A06E label=Path_FindByCoord_5
C $A071,1 See if two or more have been found.
C $A074,1 If the result if less, return carry to indicate failed to find path.
b $A076 Data block at A076
@ $A076 label=DistanceA
@ $A078 label=DistanceB
W $A076,4,2
c $A07A Actor  Check distance of nearest junctions.
D $A07A Finds nearest junctions, both sides of actor, and calculates the distance. Input:  ($a195)  Address of actor #R$A195. A  Direction actor is facing. IX  Address of path actor is on.
@ $A07A label=Actor_NearestJunctions
C $A07A,2 Copy path axis / vector into temporary memory.
C $A085,4 Get address of current actor.
C $A089,2 Check compass
N $A08D Compass N/S
C $A08D,3 Get actors E/W coord.
C $A093,4 Check for paths running N/S.
N $A099 Compass E/W
@ $A099 label=Actor_NearestJunctions_0
C $A099,3 Get actors N/W coord.
C $A09F,4 Check for paths running E/W.
@ $A0A3 label=Actor_NearestJunctions_1
C $A0A3,3 Offset actors coords.
C $A0B5,4 Get end of path (A) being tested.
N $A0B9 See if a path's axis intersects the actors path.
@ $A0B9 label=Actor_NearestJunctions_2
C $A0B9,4 Get start of path (A) being tested.
C $A0BD,3 Get next path (B) axis to test with.
C $A0C3,1 See if axis is greater than path A start.
C $A0C6,2 No; move onto next path in list.
C $A0C8,1 See if axis is less than path A end.
C $A0CA,2 If not then all further paths will also be greater than path A's end.
C $A0CD,4 See if path (A) axis intersects with path (B) start and end.
C $A0E5,2 Paths intersect...
N $A0E7 Next path.
@ $A0E7 label=Actor_NearestJunctions_3
C $A0E7,3 Move onto next path in list.
N $A0EE Path found.
@ $A0EE label=Actor_NearestJunctions_4
C $A0EE,4 Get actors coords in direction of travel.
C $A0F2,3 Get axis for intersecting path.
C $A0F8,1 Calculate difference and position.
N $A0FD Path before actor.
N $A10A Path after actor.
@ $A10A label=Actor_NearestJunctions_5
c $A11A People  Get coordinate (Axis, Vector) for testing against paths.
D $A11A Used by the routines at #R$A3D0 and #R$A53D. Input:  IX  Person being handled. A  Direction.
@ $A11A label=Person_GetCoordsForTesting
N $A11E Direction E/W
C $A11E,3 Axis; Get E/W coord
C $A124,3 Vector; Get N/S coord
C $A12A,4 Get road (N/S map).
N $A12F Direction N/S
@ $A12F label=Person_GetCoordsForTesting_0
C $A12F,3 Axis; Get N/S coord
C $A135,3 Vectir; Get E/W coord
C $A13B,4 Get road (E/W map).
c $A140 Routine at A140
D $A140 Used by the routines at #R$A24A, #R$A25C, #R$A2B3, #R$A2FD, #R$A31E and #R$A352. Input:  IX  Ptr to person being handled.
@ $A140 label=_a140
C $A140,3 (IX[$10] * 6) + 13 + ($a195) => 5bf6(x6)
c $A15C Actor  Create a door event for a person.
D $A15C Used by the routine at #R$A25C.
@ $A15C label=Actor_CreateDoorEvent
C $A15C,3 Create data node for object.
C $A15F,1 No more nodes left.
C $A164,3 Store object handling function.
b $A193 Data block at A193
@ $A193 label=_a193
@ $A194 label=_a194
B $A193,2,1
@ $A195 label=Actor_CurrentPtr
W $A195,2,2 Pointer to the current actor being handled.
@ $A197 label=_a197
W $A197,6,2
b $A19D Data block at A19D
B $A19D,1,1
b $A19E Data block at A19E
@ $A19E label=_a19e
B $A19E,1,1
c $A19F Move a character forward by one step.
D $A19F Used by the routine at #R$A64B.
@ $A19F label=Person_MoveForward
C $A19F,4 Get address of character data node.
C $A1A3,4 Is character enabled?
N $A1A8 This entry point is used by the routine at #R$A4FF.
@ $A1A8 label=Person_MoveForward_0
C $A1A8,3 Action count down.
C $A1B4,3 See if character is standing still.
C $A1BA,3 If so then use the last frame, which is always the standing still frame.
@ $A1BF label=Person_MoveForward_1
C $A1BF,3 Get current frame and increase it.
C $A1C3,3 See if the last frame has been hit and reset it if it has.
@ $A1CB label=Person_MoveForward_2
C $A1CE,3 Get direction.
C $A1D5,3 Get E/W coords
@ $A1DD label=Person_MoveForward_3
C $A1DD,3 Get N/S coords
@ $A1E3 label=Person_MoveForward_4
C $A1E3,2 Facing north?
C $A1E7,2 Facing west?
C $A1EB,1 Move south or east by one step.
@ $A1EE label=Person_MoveForward_5
C $A1EE,1 Move north or west by one step.
@ $A1EF label=Person_MoveForward_6
C $A1EF,2 Put back in correct axis based on direction.
@ $A1FB label=Person_MoveForward_7
@ $A201 label=Person_MoveForward_8
b $A202 People action call table. Table of function pointers for people actions.
@ $A202 label=People_ActionTable
W $A202,32,2
c $A222 People  Determine persons next action.
D $A222 Used by the routine at #R$A19F. Input:  IX  Ptr to current person.
@ $A222 label=People_DecideAction
C $A222,3 See if person is still waiting.
C $A226,2 Waiting over, do next action.
C $A228,3 Wait.
N $A22C Get next action.
@ $A22C label=People_DecideAction_0
C $A23B,3 Get index of current action.
C $A23E,2 Work out address of function.
C $A245,1 Get address and jump to it.
c $A24A Action
D $A24A Used by the routines at #R$A352 and #R$A3B3. Input:  IX  Ptr to person.
@ $A24A label=Action_a
C $A24A,3 If the person is Ryde
N $A252 For anyone else.
@ $A252 label=Action_a_0
C $A252,4 Make next action be [01]
c $A25C Action
D $A25C Used by the routine at #R$A31E.
@ $A25C label=Action_b
@ $A2AB label=Action_b_0
c $A2B3 Action
@ $A2B3 label=Action_c
@ $A2DF label=Action_c_0
c $A2EF Action
@ $A2EF label=Action_d
c $A2FD Action
@ $A2FD label=Action_e
c $A31E Action
@ $A31E label=Action_f
@ $A33F label=Action_f_0
c $A352 Action
@ $A352 label=Action_g
C $A355,3 Copy current map coordinates.
N $A365 This entry point is used by the routine at #R$A25C.
@ $A365 label=Action_g_0
C $A386,3 }
c $A389 Routine at A389
D $A389 Used by the routine at #R$A24A.
@ $A389 label=Action_h
C $A389,3 See if hero is carrying anthing marked as stolen.
N $A394 This entry point is used by the routine at #R$A352.
@ $A394 label=Action_i
C $A394,3 Action:
N $A3A0 This entry point is used by the routines at #R$A3B6 and #R$A3CA.
@ $A3A0 label=Action_h_0
C $A3B1,2 }
c $A3B3 Action
@ $A3B3 label=Action_j
c $A3B6 Action
@ $A3B6 label=Action_k
c $A3B8 Action
@ $A3B8 label=Action_l
N $A3BA This entry point is used by the routine at #R$A3CC.
@ $A3BA label=Action_l_0
c $A3CA Action
@ $A3CA label=Action_m
c $A3CC Action
@ $A3CC label=Action_n
c $A3D0 Action
D $A3D0 Used by the routines at #R$A24A, #R$A2EF, #R$A2FD and #R$A389.
@ $A3D0 label=Action_a3d0
C $A3EA,3 value[Person type]
C $A3FB,3 Get the address of the path person is on.
C $A40D,4 Store address if path found.
C $A411,3 Get axis of path
C $A417,3 Stored coordinates.
C $A41E,3 Get direction
C $A425,1 Swap axis and vector for E/W
@ $A426 label=Action_a3d0_0
C $A42C,3 Check vector is between end 'A' of path...
C $A438,3 ...and end 'B' of path.
@ $A454 label=Action_a3d0_1
@ $A45A label=Action_a3d0_2
@ $A472 label=Action_a3d0_3
@ $A475 label=Action_a3d0_4
N $A480 This entry point is used by the routine at #R$A53D.
@ $A480 label=Action_a3d0_5
C $A489,2 Store path address.
C $A496,4 Store for current player as well.
C $A4A1,3 Return if no path found.
C $A4A6,1 Check person's camera / compass.
N $A4AB N/S facing.
C $A4AB,3 Store as E/W coord.
C $A4B1,3 Get N/S coord.
N $A4BD E/W facing.
@ $A4BD label=Action_a3d0_6
C $A4BD,3 Store as N/S coord.
C $A4C3,3 Get E/W coord.
N $A4CD Difference...
@ $A4CD label=Action_a3d0_7
C $A4CD,1 Passed the target?
C $A4D2,2 Yes, reverse direction.
@ $A4D4 label=Action_a3d0_8
C $A4DA,3 Clear flags (7) ?????
C $A4DF,2 Was previous temp direction same as current direction...
C $A4E4,3 And current action is (1)..
C $A4EB,2 Then set flag (7).
C $A4EE,3 If the same as current flags...
C $A4F3,4 Set next action as (A)
C $A4F7,2 and reset flag (7)
@ $A4F9 label=Action_a3d0_9
C $A4F9,3 Store new flags value.
c $A4FF Routine at A4FF
D $A4FF Used by the routine at #R$A222. Input:  IX  Pointer to current person. HL
@ $A4FF label=_a4ff_People
C $A4FF,3 Get action index
@ $A50A label=_a4ff_People_0
C $A50A,4 Wait for one cycle.
@ $A50E label=_a4ff_People_1
C $A50E,3 Use time for random number.
C $A515,1 If new value is less than existing, use it.
C $A518,1 If existing is not zero, use that instead.
@ $A519 label=_a4ff_People_2
C $A51C,2 Else default to $20
@ $A51E label=_a4ff_People_3
C $A51E,3 Set as action countdown.
C $A529,3 If using action other than $0a, set waiting time.
@ $A534 label=_a4ff_People_4
c $A53D Routine at A53D
D $A53D Used by the routine at #R$A3D0.
@ $A53D label=_a53d
@ $A553 label=_a53d_0
@ $A565 label=_a53d_1
@ $A56F label=_a53d_2
C $A578,3 See if coordinats is on a path.
C $A584,2 Skip if test failed.
C $A586,4 Store address of path found.
N $A58A Get the distance of the junctions either side.
C $A58A,3 Convert camera compass into direction.
C $A58F,3 Calculate distances of junctions.
@ $A5A5 label=_a53d_3
@ $A5C0 label=_a53d_4
N $A5C7 Calculate distant of junctions.
@ $A5E4 label=_a53d_5
@ $A5FD label=_a53d_6
@ $A610 label=_a53d_7
b $A623 Data block at A623
B $A623,13,8,5
b $A630 Data block at A630
B $A630,5,5
b $A635 Data block at A635
B $A635,3,3
b $A638 Data block at A638
@ $A638 label=_a638
B $A638,4,4
b $A63C Pointers to the characters currently visible on screen.
@ $A63C label=CharPtr_Current
W $A63C,2,2
b $A63E Data block at A63E
B $A63E,1,1
b $A63F Table of attributes values to use when colouring an identity badge.
@ $A63F label=Table_BadgeCols
B $A63F,12,8,4
c $A64B Handle all actors.
D $A64B Used by the routine at #R$9F13.
@ $A64B label=People_Main
C $A64F,4 Get address to the start of person data link list.
@ $A653 label=People_Main_0
C $A653,3 Get address of next node in list.
C $A659,1 Check for end of list.
C $A65E,3 Store address and..
C $A664,4 Get node address back.
C $A668,3 Check to see on the same path as the player.
N $A676 Next person.
@ $A676 label=People_Main_1
C $A676,4 Not near enough, clear action flag.
@ $A67C label=People_Main_2
C $A684,3 Based on compass, get the coords of both player and person along the path axis.
@ $A696 label=People_Main_3
@ $A69F label=People_Main_4
@ $A6A4 label=People_Main_5
C $A6A4,3 Store players position.
C $A6A7,3 Get difference between the two.
C $A6AA,1 If difference is larger than $FF, go onto next person in list.
@ $A6C0 label=People_Main_6
@ $A6FC label=People_Main_7
@ $A73A label=People_Main_8
@ $A74C label=People_Main_9
@ $A753 label=People_Main_10
@ $A75A label=People_Main_11
@ $A789 label=People_Main_12
@ $A792 label=People_Main_13
@ $A79A label=People_Main_14
@ $A7BC label=People_Main_15
@ $A7CD label=People_Main_16
@ $A7D8 label=People_Main_17
@ $A7E0 label=People_Main_18
@ $A7EA label=People_Main_19
@ $A80D label=People_Main_20
N $A81F Draw a symbol
C $A81F,3 Get the first letter in the character's name.
C $A822,2 Make sure it is within the range of the ASCII letters.
C $A824,3 Get the address of the bitmap for the badge sprite from its bitmap information.
C $A827,3 Create an offset, this is within the bitmap and is where the letter is drawn to.
C $A82D,3 Blit the letter into the middle of the badge.
N $A831 Draw identity badge for character.
C $A831,3 Get index for person type.
C $A834,2 Use as an offset to get the colour to use from the badge colour table.
C $A83B,2 Index for the information on the badge.
@ $A844 label=People_Main_21
@ $A84A label=People_Main_22
N $A857 Print names of characters visible on screen.
@ $A857 label=People_Main_23
C $A857,2 Set channel 1 for output stream.
C $A85C,3 Colour name displayed on screen using the values in the temporary store.
C $A867,3 Do same for next line down.
C $A86F,3 PRINT PAPER BLACK, INK WHITE, BRIGHT ON
b $A872 Data block at A872
B $A872,7,1
c $A879 Routine at A879
C $A879,4 Table of pointers to characters on screen.
C $A87D,2 Limited to two other characters on screen.
@ $A87F label=People_Main_24
C $A880,3 Get address of character
C $A88A,2 PRINT AT (B+2), 16
C $A894,3 Get address of name from character's data and display it.
@ $A89A label=People_Main_25
@ $A8A1 label=People_Main_26
b $A8A9 Replies from people.
@ $A8A9 label=Msg_GoodEvening
T $A8A9,12,12
B $A8B5,1,1
@ $A8B6 label=Msg_GoodDay
T $A8B6,8,8
B $A8BE,1,1
@ $A8BF label=Msg_MapForFur
T $A8BF,15,15
B $A8CE,1,1
@ $A8CF label=Msg_MapForPlatinum
T $A8CF,18,18
B $A8E1,1,1
c $A8E2 Decides if a visible person should greet the player.
D $A8E2 Used by the routine at #R$A64B. Input:  IX  Pre to person data.
@ $A8E2 label=Person_Greet
C $A8E7,3 If set the person has already done an action.
C $A8F1,4 Set person, so no other action occurs.
C $A8FA,3 Do not display any messages if player has just been arrested.
C $A900,3 Set up printed area. (AT $05, $0a )
b $A903 Data block at A903
B $A903,4,1
c $A907 Routine at A907
C $A90E,3 Decide on morning or evening.
@ $A91A label=Person_Greet_0
C $A91A,3 print the message chosen.
N $A91F Bren's messages.
@ $A91F label=Person_Greet_1
C $A91F,3 Set up for the map message.
C $A922,4 But check for the platinum message flag.
b $A92D Indices to objects that cannot be stolen.
@ $A92D label=Obj_NotStealIndicies
B $A92D,1,1 Thiefs License.
B $A92E,1,1 Telestone.
B $A92F,1,1 Philtre.
B $A930,1,1 Scrip "eve".
B $A931,1,1 Scrip "did".
B $A932,1,1 Scrip "pop".
B $A933,1,1 L-Key.
c $A934 Check to see if thief can steal from player.
D $A934 Used by the routine at #R$A64B.
@ $A934 label=Thief_TryToSteal
C $A934,3 See if thief has bumped into player.
@ $A940 label=Thief_TryToSteal_0
C $A94D,3 See if money is selected.
C $A950,1 If not check to see what is.
C $A953,3 Clear any money being carried.
b $A956 Data block at A956
W $A956,2,2
B $A958,1,1
c $A959 Routine at A959
D $A959 Used by the routine at #R$A968.
@ $A959 label=Thief_TryToSteal_1
C $A959,3 Display the message to let the player know they have been robbed.
b $A95C Data block at A95C
@ $A95C label=Msg_YourPardon
T $A95C,11,11
B $A967,1,1
c $A968 Routine at A968
C $A968,3 Update the inventory screen.
@ $A96B label=Thief_TryToSteal_2
N $A96F This entry point is used by the routine at #R$A934.
@ $A96F label=Thief_TryToSteal_3
C $A96F,1 Offset selected index to the address of the pocket it represents.
C $A977,1 Get index of the object selected.
C $A97A,3 Compare to the table of objects that cannot be stolen.
C $A983,2 Done if found.
C $A985,2 Make object stolen by clearing pocket.
C $A987,2 Select money.
b $A98E Blit Shift data.
@ $A98E label=_a98e
W $A98E,2,2
B $A990,1,1
@ $A991 label=ObjNode_BlitType
B $A991,1,1 Type of object / blit required for method.
c $A992 Blit an object (from object data node), correctly on screen adjusting for compass and position.
D $A992 Used by the routines at #R$8CFE, #R$8D9F, #R$8EA0 and #R$A64B. Input:  IX  Address of object data node
@ $A992 label=ObjNode_BlitShft
@ $A9A7 label=ObjNode_BlitShft_0
C $A9A7,3 Cache the bitmap info
C $A9AD,1 Get the width
C $A9BA,1 Get the height in pixels and convert into cells.
C $A9C4,3 Get the bitmap address.
N $A9C8 Calculate position on screen.
C $A9CB,2 Test for E/W facing camera.
C $A9CF,3 Based on players position N/S
@ $A9DA label=ObjNode_BlitShft_1
C $A9DA,3 Based on players position E/W
@ $A9E3 label=ObjNode_BlitShft_2
C $A9E3,2 Test for E/S facing camera.
C $A9E7,1 Swap around values for calculating difference.
@ $A9E8 label=ObjNode_BlitShft_3
C $A9E9,2 Difference will give offset, left or right, of camera.
@ $AA20 label=ObjNode_BlitShft_4
@ $AA46 label=ObjNode_BlitShft_5
@ $AA4A label=ObjNode_BlitShft_6
@ $AA77 label=ObjNode_BlitShft_7
@ $AA7D label=ObjNode_BlitShft_8
@ $AA8D label=ObjNode_BlitShft_9
@ $AA98 label=ObjNode_BlitShft_10
@ $AAB1 label=ObjNode_BlitShft_11
@ $AAC5 label=ObjNode_BlitShft_12
@ $AADC label=ObjNode_BlitShft_13
@ $AAEF label=ObjNode_BlitShft_14
@ $AAF9 label=ObjNode_BlitShft_15
@ $AAFE label=ObjNode_BlitShft_16
@ $AB21 label=ObjNode_BlitShft_17
@ $AB2C label=ObjNode_BlitShft_18
@ $AB3D label=ObjNode_BlitShft_19
@ $AB49 label=ObjNode_BlitShft_20
@ $AB6C label=ObjNode_BlitShft_21
@ $AB82 label=ObjNode_BlitShft_22
@ $AB9C label=ObjNode_BlitShft_23
@ $ABA6 label=ObjNode_BlitShft_24
@ $ABBE label=ObjNode_BlitShft_25
@ $ABC4 label=ObjNode_BlitShft_26
@ $ABDD label=ObjNode_BlitShft_27
@ $ABF1 label=ObjNode_BlitShft_28
@ $ABFE label=ObjNode_BlitShft_29
@ $AC10 label=ObjNode_BlitShft_30
c $AC13 Blits a block of data onto the offscreen.
D $AC13 Used by the routine at #R$AC2D.
@ $AC13 label=Background_Blit
C $AC13,1 Offscreen address.
C $AC17,1 Width in characters
C $AC19,1 Height in scans.
@ $AC1D label=Background_Blit_0
C $AC1D,1 Blit.
c $AC2D Replaces the background for a moving (onscreen) actor.
D $AC2D Used by the routine at #R$9FE6.
@ $AC2D label=Actor_UpdateBg
C $AC30,2 Counts number of blocks to blit.
@ $AC32 label=Actor_UpdateBg_0
C $AC32,1 Add address of offscreen, where stored background is blitted.
C $AC34,1 If set to zero, end of data.
C $AC37,1 Put start of data on stack.
C $AC38,1 Get width, height.
@ $AC3F label=Actor_UpdateBg_1
C $AC3F,1 Calculate address of next block of background data.
N $AC45 Blit eaach block onto DF screen.
@ $AC45 label=Actor_UpdateBg_2
@ $AC46 label=Actor_UpdateBg_3
C $AC49,1 Get address of next background data.
C $AC4C,3 Blit.
C $AC4F,1 Next.
@ $AC53 label=Actor_UpdateBg_4
C $AC53,3 Clear store data.
c $AC5A ABS(hl-de)
D $AC5A Used by the routines at #R$85AE, #R$8CFE, #R$8EA0, #R$917B, #R$A3D0 and #R$A64B.
@ $AC5A label=sub_abs
c $AC66 Translate stored x,y position into screen and attribute address.
D $AC66 Used by the routine at #R$9BCE. Input:  IX  Data Ptr {Y, X, ...} EXIT  HL DF(y,x) EXIT  DE ATTR(y,x) X,Y is aligned to nearest character position.
@ $AC66 label=YX_toAddr
C $AC66,3 Get x position in pixels and convert into columns / bytes.
C $AC6F,3 Get y position and translate into character rows, scans etc to create address.
C $AC89,3 Offset for attribute address.
C $AC8E,3 Offset for screen adress.
c $AC93 Creates a new node, copies the content of 'TempStore' into it and adds to Bg Link List.
D $AC93 Used by the routines at #R$8C2D, #R$9641 and #R$A15C. Input:  TempStore  Holds data to be copied into new list. EXIT  IX = address of new node. Returns with Z set if no more nodes.
@ $AC93 label=LinkList_CreateNewBg
C $AC93,3 If high byte of link list ptr is zero, then ignore.
C $AC98,4 Get address of first spare node.
C $ACA0,3 Detach from list
C $ACA9,3 Copy required data into new node.
C $ACB2,3 Add node to background link list.
c $ACC0 Remove a link from a link list.
D $ACC0 Used by the routine at #R$8BF5. Input:  IX  Address of link to remove stack  Holds address of previous link to the one being removed.
@ $ACC0 label=List_RemoveLink
C $ACC0,3 Get ptr the next link in list.
C $ACC6,3 Get ptr to first of the empty links.
C $ACC9,3 Move removed link to top of empty link list.
C $ACD3,1 Get return address.
C $ACD4,2 Get addres of previous link in main list.
C $ACD6,3 Connect existing links together.
C $ACDC,1 Jump to return address found on stack.
c $ACDD Copies bitmap info into cache.
D $ACDD Used by the routines at #R$917B, #R$9240, #R$9434, #R$969A, #R$9B21, #R$9BCE, #R$9D73, #R$9F13, #R$A64B and #R$A992. Input:  L  Bitmap frame index.
@ $ACDD label=Bitmap_CopyFrame
C $ACDD,2 Convert of address of bitmap table.
C $ACE5,3 Copy data into cache.
c $ACF1 Retrieves the bitmap index of an object.
D $ACF1 Used by the routines at #R$969A and #R$9D73. Input:  A  object index EXIT  HL Ptr array holding bitmap index.
@ $ACF1 label=Obj_GetBmpIndex
c $ACFC Searches for start of object noun string.
D $ACFC Used by the routines at #R$7F6F, #R$8354, #R$83D5 and #R$9C46. Input:  A  Object index. EXIT  HL = Noun address. Limited to 0x7F objects.
@ $ACFC label=Object_GetNounAddr
@ $AD07 label=Object_GetNounAddr_0
c $AD0D Prints a string.
D $AD0D Used by the routines at #R$7F6F, #R$8354, #R$83D5, #R$9C46, #R$A8E2 and #R$AD1A. Input:  HL  String Ptr
@ $AD0D label=Print_String
C $AD0D,1 Get next character.
C $AD0F,2 End of string.
C $AD12,2 End of string.
c $AD1A Prints a string taking ptr from the stack.
D $AD1A Used by the routines at #R$7F6F, #R$8354, #R$8E32, #R$8F43, #R$9C46, #R$A64B, #R$AD1F, #R$AD4B, #R$AD54, #R$AE8D, #R$AF3C and #R$B0A6. Input:  Stack  Holds ptr to string.
@ $AD1A label=Print_StrFromStack
C $AD1A,1 Take return address off from stack, this points to text directly after prevous function.
c $AD1F Displays message above stage.
D $AD1F Used by the routines at #R$8354, #R$85AE, #R$8A04, #R$8AC4, #R$8F43, #R$9DC1, #R$A8E2, #R$A934 and #R$AD4B.
@ $AD1F label=Message_Display
C $AD21,3 Blank out message, by colouring black.
b $AD24 Data for copy routine.
W $AD24,2,2 ATTR for message line.
B $AD26,1,1 Number of bytes to copy.
c $AD27 Return address from copy routine.
C $AD27,3 Beeper
b $AD3D Data block at AD3D
B $AD3D,1,1 PRINT AT 5,6; PAPER 0; INK 7; BRIGHT 1;
B $AD3E,9,1
c $AD47 Routine at AD47
C $AD49,2 Print text pointed to by return address.
c $AD4B Prints message above stage at (5,10)
D $AD4B Used by the routines at #R$83D5, #R$8997, #R$8A04, #R$8B0E and #R$8B40. Overrides the base call which prints at (5,6)
@ $AD4B label=Message_DisplayAt
b $AD4E Data block at AD4E
B $AD4E,1,1 PRINT AT 5,10; (Used by above routine.)
B $AD4F,3,1
c $AD52 Routine at AD52
c $AD54 Displays object extra string in correct place.
D $AD54 Used by the routines at #R$7F6F, #R$8E32 and #R$9C46. Input:  HL  Ptr to string. String can be multi lined by putting + in place of newline.
@ $AD54 label=Object_StringExtraDisplay
C $AD58,2 PRINT #2
@ $AD62 label=Object_StringExtraDisplay_0
b $AD75 Data block at AD75
B $AD75,1,1 PRINT INK 6; PAPER 0; BRIGHT 1;
B $AD76,6,1
c $AD7C Routine at AD7C
C $AD7C,1 String ptr.
@ $AD7F label=Object_StringExtraDisplay_1
C $AD7F,2 PRINT AT e,6;
C $AD87,1 Increase line count.
@ $AD88 label=Object_StringExtraDisplay_2
C $AD88,1 Next character.
C $AD8A,2 Newline.
C $AD8E,2 End of string.
@ $AD97 label=Object_StringExtraDisplay_3
c $AD9B Prints a character with char. set selection.
D $AD9B Used by the routines at #R$7F6F, #R$8354, #R$83D5, #R$9C46, #R$A64B, #R$AD0D, #R$AD54, #R$ADFB, #R$AE74 and #R$AE8D.
@ $AD9B label=Print_SelectChar
C $AD9B,1 Preserve 'next character' pointer.
C $AD9C,2 Select character set.
@ $ADA5 label=Print_SelectChar_0
@ $ADA8 label=Print_SelectChar_1
C $ADAB,1 Print character.
c $ADAE Add two values together and adjust for BCD.
D $ADAE Used by the routines at #R$ADBA and #R$ADC7. Input:  HL  8 digit BCD value to add to. DE  8 digit BCD value to add.
@ $ADAE label=ValueAddAsBCD
@ $ADB1 label=ValueAddAsBCD_0
c $ADBA Add to values together, with carry, and adjust to BCD.
D $ADBA Used by the routines at #R$8121, #R$83D5, #R$8F43, #R$9DC1 and #R$ADE1. Input:  HL  8 digit BCD value to add to. DE  8 digit BCD value to add.
@ $ADBA label=ValueAddAsBCDCarry
@ $ADC2 label=ValueAddAsBCDCarry_0
c $ADC7 BCD Subtract (hl,4) from (de,4).
D $ADC7 Used by the routines at #R$83D5 and #R$ADEA. Input:  HL  Points to 4 byte BCD number. DE  Points to 4 byte BCD number to subtract. Sets carry flag if difference is greater than value.
@ $ADC7 label=BCD_Subtract
@ $ADCD label=BCD_Subtract_0
b $ADDD Data block at ADDD
@ $ADDD label=BCD_diff.
B $ADDD,4,4 Temp store for BCD number.
c $ADE1 BCD adds DE from (HL)
D $ADE1 Used by the routine at #R$9E51. Input:  Points  to HL BCD number. DE  BCD number to add.
@ $ADE1 label=BCD_AddDE
c $ADEA BCD Subtracts DE from (HL)
D $ADEA Used by the routines at #R$8A04, #R$8AC4 and #R$9E51. Input:  Points  to HL BCD number. DE  BCD number to subtract.
@ $ADEA label=BCD_SubDE
b $ADF3 Data block at ADF3
@ $ADF3 label=_adf3
B $ADF3,8,8
c $ADFB Prints a decimal BCD string onto screen.
D $ADFB Used by the routines at #R$7F6F, #R$8E32, #R$8F43, #R$9C46 and #R$AE2C. Input:  HL  Ptr to BCD number.
@ $ADFB label=Display_DecimalValue.
C $ADFB,2 Number of bytes that make up decimnal value.
C $ADFE,3 Start with the most significant digit.
@ $AE05 label=Display_DecimalValue._0
C $AE05,1 Copy BCD value for each digit in overall number.
C $AE17,2 Set C so that leading zero check is used. Once C is set, check will stop.
@ $AE19 label=Display_DecimalValue._1
C $AE19,1 Get decimal value.
C $AE1A,1 Skip leading zeros.
C $AE1D,2 Convert into ascii equivalent and print.
@ $AE23 label=Display_DecimalValue._2
C $AE23,1 Next digit.
C $AE26,1 Print final zero.
c $AE2C Displays a decimal held in DE as BCD.
@ $AE2C label=Display_DecimalFromDE
c $AE36 Clears a block of memory, ptr held in data {ptr, len}, by copying from $5c92.
D $AE36 Used by the routines at #R$7F6F, #R$8121, #R$871A, #R$8997, #R$8F43, #R$A934, #R$AD1F and #R$AE80. Ptr to data is stored directly after call (return address on stack).
@ $AE36 label=Block_ClearMem
C $AE36,1 Get address of data.
C $AE37,1 Get pointer to copy to.
C $AE3B,1 Number of bytes to copy.
C $AE3D,1 Store address after data as return address.
C $AE40,3 Address to copy from.
c $AE46 Search through data looking for first non zero byte.
D $AE46 Used by the routines at #R$8121, #R$8F43 and #R$9C46. Input:  STACK  Ptr to data [Ptr to Data, size]
@ $AE46 label=Search_NonZero
C $AE46,1 Get return address from stack. This holds data.
C $AE47,1 Get pointer.
C $AE4B,1 Get Byte count.
C $AE4F,1 Look for the first byte that is not zero.
@ $AE50 label=Search_NonZero_0
c $AE56 Finds the address of a word using an index.
D $AE56 Used by the routines at #R$9AEE and #R$AE74. Input:  A  Index of word. EXIT  HL holds ptr to word text. EXIT  C Word length. Words are grouped into letter length, in order starting from one.
@ $AE56 label=Dict_GetWord
C $AE56,3 Start with address of 1 letter word.
C $AE59,3 Number of bytes in the group data structure.
C $AE5C,1 Index of group.
@ $AE5E label=Dict_GetWord_0
C $AE5E,1 See if index is within the current word group.
C $AE61,1 if not move onto next group.
C $AE62,1 Increase the number of letters for group.
@ $AE65 label=Dict_GetWord_1
C $AE66,2 Get difference between index and start of group index.
C $AE6A,1 Get start address of words in group.
C $AE6E,1 If first word in list, just return as we have the correct address.
@ $AE6F label=Dict_GetWord_2
C $AE6F,1 Offset address by words size until correct word is found using original index.
c $AE74 Prints dictionary word
D $AE74 Used by the routines at #R$7F6F and #R$AE8D. Input:  A  Word index.
@ $AE74 label=Dict_Print
@ $AE77 label=Dict_Print_0
c $AE80 Hide area name text.
D $AE80 Used by the routines at #R$7F6F and #R$AE8D.
@ $AE80 label=Area_HideName
b $AE83 Data block at AE83
W $AE83,2,2
B $AE85,1,1
c $AE86 Routine at AE86
b $AE89 Data block at AE89
W $AE89,2,2
B $AE8B,1,1
c $AE8C Routine at AE8C
c $AE8D Checks for area and displays name.
D $AE8D Used by the routines at #R$7CD4 and #R$7DA8.
@ $AE8D label=Area_Check
@ $AE9A label=Area_Check_0
@ $AEA5 label=Area_Check_1
@ $AEAC label=Area_Check_2
N $AEE0 Display area name.
b $AEEF Data block at AEEF
B $AEEF,1,1 AT 6,19; PAPER $00; INK $04; BRIGHT $01
B $AEF0,9,1
c $AEF9 Return address from print.
C $AEFC,2 Number of lines.
@ $AEFE label=Area_Check_3
C $AF05,2 Print space.
C $AF0A,1 next word
C $AF11,2 PRINT AT 7,19;
C $AF1E,3 Beep (Loop, Delay)
b $AF27 Save / Load file data.
@ $AF27 label=IO_StartAddr
W $AF27,2,2 Start address of IO file.
@ $AF29 label=IO_Length
W $AF29,2,2 Number of bytes in IO file.
N $AF2B IO lead / header data.
@ $AF2B label=IO_Lead
B $AF2B,1,1 File Type
T $AF2C,3,3 File name
@ $AF2F label=IO_Letter
T $AF2F,1,1 ASCII value of load/save letter chosen.
T $AF30,6,6 Padding for filename.
W $AF36,2,2 Length of data block.
W $AF38,2,2 Parameters.
W $AF3A,2,2
c $AF3C Menu, display and handle.
D $AF3C Used by the routine at #R$79B7.
@ $AF3C label=Menu
C $AF55,3 Clear DF
C $AF66,1 Black border.
C $AF69,3 Return address will hold menu string.
b $AF6C Menu Text.
@ $AF6C label=Text_Menu
B $AF6C,1,1 menu.
B $AF6D,6,1
T $AF73,7,7
B $AF7A,3,1
T $AF7D,19,19
B $AF90,3,1
T $AF93,12,12
B $AF9F,3,1
T $AFA2,15,15
B $AFB1,3,1
T $AFB4,12,12
B $AFC0,1,1
c $AFC1 Return from print.
@ $AFC1 label=Menu_0
C $AFC1,4 Clear LAST_K (last key pressed.)
@ $AFC5 label=Menu_1
C $AFC5,3 Check LAST_K, wait for a key.
C $AFCB,2 '1'
C $AFCF,2 '2'
C $AFD3,2 '3'
C $AFD7,2 '4'
C $AFD9,2 Ignore any other key.
C $AFDB,2 Set for demo mode.
N $AFE0 Enter Dun Darach
@ $AFE0 label=_Menu_Enter
N $AFE5 Save.
@ $AFE5 label=_Menu_Save
b $AFEB Data block at AFEB
B $AFEB,3,1
T $AFEE,27,27
B $B009,1,1
c $B00A Routine at B00A
@ $B00E label=Menu_2
@ $B024 label=Menu_3
N $B03A Restore
@ $B03A label=Menu_Restore
@ $B03D label=Menu_4
@ $B052 label=Menu_5
@ $B06D label=Menu_6
@ $B072 label=Menu_7
@ $B07E label=Menu_8
@ $B08C label=Menu_9
N $B08D Abort
@ $B08D label=Menu_Abort
b $B090 Data block at B090
B $B090,3,1
T $B093,9,9
B $B09C,1,1
c $B09D Routine at B09D
@ $B09F label=Menu_10
c $B0A6 Asks save / load letter from user.
D $B0A6 Used by the routine at #R$AF3C.
@ $B0A6 label=IO_GetLetter
b $B0A9 Data block at B0A9
B $B0A9,3,1
T $B0AC,20,20
B $B0C0,1,1
c $B0C1 Routine at B0C1
@ $B0C5 label=IO_GetLetter_0
C $B0CA,2 From 'A'
C $B0CE,2 To 'Z'
b $B0D6 Main stats and variables.
@ $B0D6 label=Flag_dayNight
B $B0D6,1,1 0 = night, 1 = day.
@ $B0D7 label=BankAccountLow
B $B0D7,1,1 Units and Tens of bank account (BCD)
@ $B0D8 label=BankAccountMid
B $B0D8,1,1 Hundreds and Thousands of bank account (BCD)
@ $B0D9 label=BankAccountHigh
B $B0D9,1,1 Upper values of bank account (BCD)
@ $B0DC label=Offer_Count
B $B0DA,3,2,1
@ $B0DD label=Offer_ObjIndex
B $B0DD,1,1 Index of object offered during offer action.
@ $B0DE label=Shop_ObjIndex
B $B0DE,4,4 Index of object's noun (in shop).
@ $B0E2 label=Offer_PersonPtr
W $B0E2,2,2 Pointer to person hero is currently offering to.
@ $B0E4 label=Obj_Price
B $B0E4,2,2 Cost of an object (in shop) in BCD.
W $B0E6,2,2
@ $B0E8 label=Hero_ArrestCount
B $B0E8,1,1
@ $B0E9 label=Skar_ShowCount
B $B0E9,1,1 Runs through the revealing Skar routine when set. Starts from $c3 and counts down.
@ $B0EA label=Event_NumDoors
B $B0EA,1,1 Gets increased whenever a door event occurs.
@ $B0EB label=Gamble_Counter
B $B0EB,1,1 Counter for the gambling room. Runs as follows: Value State 0 Place your bets. $01 ~ $50 Wait to start $51 Place your bets, roll both dice $52 Right hand dice stopped $53 ~ $FF Display result and wait
@ $B0EC label=Account_Cost
B $B0EC,2,2 Holds the amount dropped when adding to an account or the cost of a bet.
@ $B0EE label=Gamble_leftValue
B $B0EE,4,4 Holds the amount of money on plinth A for the gambling.
@ $B0F2 label=Gamble_rightValue
B $B0F2,4,4 Holds the amount of money on plinth B for the gambling.
B $B0F6,3,3
@ $B0F9 label=PictureMatrix_Gallery
B $B0F9,4,4 Holds an array of indices representing the char bitmaps drawn within a gallery's picture frame.
@ $B0FD label=PictureMatrix_Gallery_Image1
B $B0FD,5,1,4
@ $B102 label=PictureMatrix_Deposit
B $B102,4,4 Picture matrix start for a deposit room. The picture is stored as a matrix of character indices.
@ $B106 label=PictureMatrix_Deposit_Image
B $B106,1,1 This byte represents the index used for the pictures clue.
B $B107,22,4,8,1,8,1
@ $B11D label=Room_Flags
B $B11D,1,1 Set to $50 when 'no more bets' is on, $00 hero can place bets.
@ $B11E label=_b11e
B $B11E,1,1
@ $B11F label=_frames
B $B11F,1,1 Frames counter.
@ $B120 label=Mode_Demo
B $B120,1,1 2 = Demo mode.
@ $B121 label=KeyStore
B $B121,7,7 Bytes holding last key press.
@ $B128 label=KeyStoreN
B $B128,1,1
@ $B129 label=KeyCmd
B $B129,1,1 Holds bit flags representing which commands to act on due to a key press. Bit Description 0 Right 1 Left 2 Rotate CW 3 Rotate CCW 4 Offer 5 Pick up 6 Drop
@ $B12A label=KeyCmd_Enter
B $B12A,1,1 Bit 1 is set when ENTER is pressed.
@ $B12B label=LinkList_Spare_Ptr
W $B12B,2,2 Ptr to spare node link list.
N $B12D Cache of bitmap data
@ $B12D label=Bitmap_InfoCache
W $B12D,2,2 Address
@ $B12F label=Bitmap_InfoCache_Height
B $B12F,1,1 Height
@ $B130 label=Bitmap_InfoCache_Width
B $B130,1,1 Width
@ $B131 label=Hero_FrameCount
B $B131,1,1 Some sort of frame count
B $B132,1,1
@ $B133 label=LinkList_Bg_Ptr
W $B133,2,2 Ptr to background link list.
@ $B135 label=Ptr_PersonLinkList
W $B135,2,2 Pointer to the start of the person link list.
W $B137,22,2
@ $B14E label=_b14e
B $B14D,2,1
@ $B14F label=Inv_Pocket1
B $B14F,1,1 Pocket 1, holds index to object being carried.
@ $B150 label=Inv_Pocket2
B $B150,1,1 Pocket 2, holds index to object being carried.
@ $B151 label=Inv_Pocket3
B $B151,1,1 Pocket 3, holds index to object being carried.
@ $B152 label=Inv_Select
B $B152,1,1 Index value of item selected (0 = iridi tokens).
@ $B153 label=IridiValue
B $B153,4,4 Number of tokens held as a BCD string.
@ $B157 label=PathFound_IndexCount
B $B157,1,1 Paths counted during a path found search.
@ $B158 label=Room_CurrentStore
B $B158,1,1 Room type (+1) for which to store saved info when entering / leaving.
B $B159,1,1
@ $B15A label=Coords_NS
@ $B15C label=Coords_EW
W $B15A,4,2
@ $B15E label=Hero_Frame
B $B15E,2,2 Current bitmap frame of hero.
@ $B160 label=Camera_Compass
B $B160,2,2 Direction compass, camera is facing. [0 North, 1 East, 2 South, 3 West]
@ $B162 label=Hero_LastDirection
B $B162,1,1 Last direction of travel. 1 Right 2 Left
@ $B163 label=Hero_CompassFacing
B $B163,2,2 Compass direction that hero is facing.
@ $B165 label=Hero_PathPtr
W $B165,2,2 Pointer to path data.
@ $B167 label=PathFound_Compass
B $B167,1,1 The compass when a path is found.
@ $B168 label=PathFound_PathPtr
W $B168,2,2 Pointer to a path when found.
B $B16A,3,3
@ $B16D label=Room_CurrentIndex
B $B16D,1,1 Index of current room (0 - outside)
W $B16E,2,2
@ $B170 label=Room_CurrentInfoDataPtr
W $B170,2,2 Stored ptr to room main data chunk. differs for each room type.
@ $B172 label=PathFound_BackgroundPtr
W $B172,2,2 Pointer to the background description of a path found.
N $B174 Next 8 bytes... Copied from _6903 + (a * 8), see _7da8
@ $B174 label=Ptr_Path_EW
W $B174,2,2 Pointer to E/W path data.
@ $B176 label=Ptr_Path_NS
W $B176,2,2 Pointer to N/S path data.
@ $B178 label=Room_Type
B $B178,1,1 Type of room hero is in. 0 outside 1 Seller 2 Broker 3 Deposit 5 Iomain Ludum 7 Gallery 8 Castle 9 Bank A Portal B String Room
@ $B179 label=JP_Vector
W $B179,2,2 Holds vector address for JP (HL).
@ $B17B label=AreaColour
B $B17B,1,1 Colour of area used to draw stage.
@ $B17C label=_AreaNamePtr
W $B17C,2,2 Points to address holding place name sentence.
@ $B17E label=ExitFound_Coords
W $B17E,2,2 Copy of exit that was found when entering.
@ $B180 label=ExitFound_A
B $B180,1,1
@ $B181 label=ExitFound_RoomIndex
B $B181,1,1 Index of room hero would like to enter (0 - Outside).
N $B182 Holds info on doorways. Added as more road is revealed.
@ $B182 label=Door_cache
W $B182,2,2 Coords along road's axis. This is used for positioning when entering and drawing doors.
B $B184,2,2
W $B186,2,2
B $B188,2,2
W $B18A,2,2
B $B18C,2,2
W $B18E,2,2
B $B190,2,2
W $B192,2,2
B $B194,2,2
W $B196,2,2
B $B198,2,2
@ $B19A label=Flag_DoorEntry
B $B19A,1,1 0 None 1 Door entry 3 Door closing
@ $B19B label=Msg_CountDown
B $B19B,1,1 Counts down when a message is being displayed on screen. The message is cleared when the counter hits zero.
@ $B19C label=PathFound_InOut_Axis
W $B19C,2,2 Data for path leading in/out of screen.
@ $B19E label=PathFound_InOut_Start
W $B19E,2,2 Start of path found.
@ $B1A0 label=PathFound_InOut_End
W $B1A0,2,2 End of path found.
W $B1A2,4,2
B $B1A6,2,2
@ $B1A8 label=Path_InOutDescr
B $B1A8,2,2 Description for path leading in / out of screen.
@ $B1AA label=PathFound_StartMargin
W $B1AA,2,2 Value used to calculate any part of the screen the path isn't on.
B $B1AC,7,1,6
b $B1B3 Paths  Paths and descriptions for rooms.
D $B1B3 Data for the rooms.
@ $B1B3 label=Path_InsideEW
B $B1B3,1,1
@ $B1B4 label=PathFound_EndMargin
W $B1B4,2,2 Value used to calculate any part of the screen the path isn't on.
B $B1B6,8,8
N $B1BE Path
@ $B1BE label=_b1be_path
W $B1BE,10,2
B $B1C8,2,2
@ $B1CA label=_b1ca_path
W $B1CA,10,2
B $B1D4,2,2
W $B1D6,2,2
@ $B1D8 label=_b1d8_descr
@ $B1E2 label=_b1e2_descr
@ $B1E9 label=_b1e9_descr
@ $B1F0 label=_b1f8_descr
B $B1D8,34,8,2,7*2,8,2
N $B1FA Path
@ $B1FA label=_b1fa_path
W $B1FA,14,2
@ $B208 label=_b208_descr
@ $B212 label=_b212_descr
B $B208,20,8,2,8,2
N $B21C Path
@ $B21C label=_b21c_path
W $B21C,10,2
@ $B22A label=_b22a_descr
@ $B234 label=_b234_descr
B $B226,24,2*2,8,2,8,2
N $B23E Path
@ $B23E label=_b234_path
W $B23E,10,2
@ $B24C label=_b24c_descr
@ $B256 label=_b256_descr
B $B248,24,2*2,8,2,8,2
N $B260 Path
@ $B260 label=_b260_path
W $B260,10,2
B $B26A,2,2
W $B26C,2,2
@ $B26E label=_b26e_descr
B $B26E,10,8,2
@ $B278 label=_b278_path
W $B278,14,2
@ $B286 label=_b286_descr
B $B286,10,8,2
N $B290 Path
@ $B290 label=_b290_path
W $B290,10,2
B $B29A,2,2
W $B29C,2,2
@ $B29E label=_b29e_descr
B $B29E,10,8,2
N $B2A8 Path
@ $B2A8 label=_b2a8_path
W $B2A8,10,2
B $B2B2,2,2
W $B2B4,2,2
@ $B2B6 label=_b2b6_descr
B $B2B6,10,8,2
N $B2C0 Path
@ $B2C0 label=_b2c0_path
W $B2C0,10,2
B $B2CA,2,2
W $B2CC,2,2
b $B2CE Table of pointers to all of the background description strings. Each string describes the furniture displayed in the background.
@ $B2CE label=PtrTble_BgStr
W $B2CE,68,2
b $B312 Background description strings
@ $B312 label=BgStr_b312
B $B312,5,5 [No. of bytes (incl.), item, item, item]
@ $B317 label=BgStr_b317
@ $B31D label=BgStr_b31d
@ $B32B label=BgStr_b32b
@ $B33E label=BgStr_b33e
@ $B350 label=BgStr_b350
@ $B364 label=BgStr_b364
@ $B368 label=BgStr_b368
@ $B36E label=BgStr_b36e
@ $B374 label=BgStr_b374
@ $B385 label=BgStr_b385
@ $B38A label=BgStr_b38a
@ $B39A label=BgStr_b39a
@ $B3AB label=BgStr_b3ab
@ $B3BE label=BgStr_b3be
@ $B3D0 label=BgStr_b3d0
@ $B3DC label=BgStr_b3dc
@ $B3E5 label=BgStr_b3e5
@ $B405 label=BgStr_b405
@ $B40F label=BgStr_b40f
@ $B41F label=BgStr_b41f
@ $B44A label=BgStr_b44a
@ $B46A label=BgStr_b46a
@ $B483 label=BgStr_b483
@ $B489 label=BgStr_b489
@ $B4A4 label=BgStr_b4a4
@ $B4AD label=BgStr_b4ad
@ $B4C3 label=BgStr_b4c3
@ $B4D7 label=BgStr_b4d7
@ $B4DC label=BgStr_b4dc
@ $B4F8 label=BgStr_d4f8
@ $B504 label=BgStr_b504
@ $B524 label=BgStr_b524
@ $B52A label=BgStr_b52a
@ $B534 label=BgStr_b534
@ $B538 label=BgStr_b538
B $B317,550,6,8,6,8*2,3,8*2,2,8*2,4*2,6*2,8*2,1,5,8*4,1,8*2,3,8*2,2,8,4,8,1,8*5,2,8*7,3,8*7,1,6,8*3,3,8,1,8*2,6,8*2,4,5,1,8*3,3,8,4,8*4,6,8,2,4,5
b $B53D Data block at B53D
B $B53D,135,8*16,7
b $B5C4 Rooms  Main Data. See also #R$8BDD and #R$85A0 Outside info.
@ $B5C4 label=Room_MainData
B $B5C4,1,1 Size of data in bytes (including this one).
B $B5C5,1,1 [Room type (0), Exit mask (F)]
B $B5C6,7,7 North exit [, type (0) (7 bytes)]
B $B5CD,7,7
@ $B5D4 label=Outside_SouthExitData
B $B5D4,3,3 South exit [, type (0)]
W $B5D7,2,2 Position of hero when last outside.
W $B5D9,2,2
B $B5DB,7,7
N $B5E2 Room [1, Castle]
B $B5E2,1,1 Size of data in bytes.
B $B5E3,1,1 [Room type, Exits ( _ S _ N )]
B $B5E4,3,1
B $B5E7,1,1 North Exit [ , type 0 (7 bytes) ]
B $B5E8,6,6
B $B5EE,1,1 South Exit [ , type 1 (3 bytes) ]
B $B5EF,1,1 Object index for key [D Key]
B $B5F0,1,1
N $B5F1 Room [2. ]
B $B5F1,5,5 [02]
B $B5F6,8,8 [03]
B $B5FE,8,8
B $B606,5,5 [04]
B $B60B,7,7 [05]
B $B612,5,5 [06]
B $B617,5,5 [07]
N $B61C Broker, 1 Long Lane.
B $B61C,7,7 [08]
N $B623 Deposit, 3 Long Lane.
B $B623,5,5 [09]
B $B628,6,6 [0A]
B $B62E,6,6 [0B]
B $B634,5,5 [0C]
B $B639,6,6 [0D]
B $B63F,6,6 [0E]
B $B645,7,7 [0F]
B $B64C,6,6 [10]
B $B652,6,6 [11]
B $B658,6,6 [12]
N $B65E Room [13, Gallery, Herne Hill] 1 Herne Hill.
B $B65E,1,1 Number of bytes in data.
B $B65F,1,1 Room type (7)
B $B660,1,1 White background.
B $B661,1,1 Plinth, Where to place the object for matching.
B $B662,1,1 Index of reward object (Brooch)
B $B663,1,1 Arrow character displayed in picture.
B $B664,1,1 Object (Arrow) required.
B $B665,1,1 'tick' character used when correct object placed.
B $B666,1,1 '+z' character.
B $B667,1,1 Object (Adze) required.
B $B668,1,1
B $B669,1,1 'o' character.
B $B66A,1,1 Object (Hoe) required.
B $B66B,1,1
B $B66C,1,1 'eye' character.
B $B66D,1,1 Object (needle) required.
B $B66E,1,1
N $B66F Room [14]
B $B66F,6,6 [14]
B $B675,6,6 [15]
B $B67B,29,6*3,5,6
N $B698 4 Herne Hill
B $B698,87,8*2,1,5,6*4,7,5,7,8*2,1,5
N $B6EF Room [  ]
B $B6EF,60,8,2,5*2,8
N $B72B Argot Bank.
B $B72B,56,8
N $B763 Portal, 2 Herne Hill
B $B763,93,8*11,5
N $B7C0 Room [ , Ladyos]
B $B7C0,6,5,1
B $B7C6,1,1 Key $31 (spell "show the lady")
B $B7C7,50,8*6,2
N $B7F9 Room [ ,Thieves Guild]
B $B7F9,252,6,8*30,6
N $B8F5 Secret room, Park Row.
B $B8F5,1,1 Size
B $B8F6,1,1 [Type (8), no exit data]
B $B8F7,3,3 3 bytes of data.
N $B8FA 28 Park Row
B $B8FA,1,1
B $B8FB,1,1 [Type 3, no exit data]
B $B8FC,3,3
N $B8FF Strong room, north wall.
B $B8FF,1,1 Size
B $B900,1,1 [Type (8), no exit data]
B $B901,3,3 3 bytes of data.
N $B904 Gallery, north wall.
B $B904,1,1 Size
B $B905,1,1 [Type (1), blank exit mask]
B $B906,4,4
N $B90A 85 Leaf lane.
B $B90A,5,5
N $B90F 86 Leaf Lane.
B $B90F,5,5
N $B914 59 West Wall
B $B914,49,1,8
b $B945 People Data, Skar
@ $B945 label=People_Skar
W $B945,2,2 [00] Ptr to next person in list.
B $B947,1,1 [02] Compass.
B $B948,1,1 [03] Start frame.
B $B949,1,1 [04] End frame.
W $B94A,2,2 [05] N/S coord.
W $B94C,2,2 [07] E/W coord.
B $B94E,1,1 [09]
B $B94F,1,1 [0A] Current action countdown.
B $B950,1,1 [0B] Current bitmap frame index.
B $B951,1,1 [0C]
B $B952,1,1 [0D] Waiting for next action countdown.
B $B953,1,1 [0E] Identifier
B $B954,1,1 [0F]
B $B955,1,1 [10]
B $B956,1,1 [11] Current path ptr.
B $B957,1,1 [12]
B $B958,1,1 [13] Bit flags
B $B959,1,1 [14]
B $B95A,1,1 [15]
B $B95B,1,1 [16] Subroutine index. See #R$A202
B $B95C,1,1 [17] Action flags
B $B95D,1,1 [18]
W $B95E,4,2
B $B962,2,2
W $B964,4,2
B $B968,2,2
T $B96A,4,4
b $B96E People Data, Ryde
@ $B96E label=People_Ryde
W $B96E,2,2
B $B970,35,8*4,3
T $B993,4,4
b $B997 People Data, Kara
@ $B997 label=People_Kara
W $B997,2,2
B $B999,35,8*4,3
T $B9BC,4,4
b $B9C0 People Data, Keli
@ $B9C0 label=People_Keli
W $B9C0,2,2
B $B9C2,35,8*4,3
T $B9E5,4,4
b $B9E9 People Data, Kahn
@ $B9E9 label=People_Kahn
W $B9E9,2,2
B $B9EB,35,8*4,3
T $BA0E,4,4
b $BA12 People Data, Dain
@ $BA12 label=People_Dain
W $BA12,2,2
B $BA14,35,8*4,3
T $BA37,4,4
b $BA3B People Data, Mhor
@ $BA3B label=People_Mhor
W $BA3B,2,2
B $BA3D,35,8*4,3
T $BA60,4,4
b $BA64 People Data, Teth
@ $BA64 label=People_Teth
W $BA64,2,2
B $BA66,35,8*4,3
T $BA89,4,4
b $BA8D People Data, Pita
@ $BA8D label=People_Pita
W $BA8D,2,2
B $BA8F,35,8*4,3
T $BAB2,4,4
b $BAB6 People Data, Bren
@ $BAB6 label=People_Bren
W $BAB6,2,2
B $BAB8,35,8*4,3
T $BADB,4,4
b $BADF People Data, Loeg
@ $BADF label=People_Loeg
W $BADF,2,2
B $BAE1,35,8*4,3
T $BB04,4,4
b $BB08 People Data, rat
@ $BB08 label=People_rat
W $BB08,2,2 End of link
B $BB0A,1,1 Compass
B $BB0B,1,1 Start frame
B $BB0C,1,1 End frame
W $BB0D,2,2 Coords N/S
W $BB0F,2,2 Coords E/W
B $BB11,29,8*3,5
@ $BB2E label=Hero_LastStepFrame
B $BB2E,1,1 Keeps track of which frame was used when a full step was taken.
b $BB2F Data block at BB2F
@ $BB2F label=Room_CurrentPtr
W $BB2F,2,2 Pointer to current room.
@ $BB31 label=Ptr_CurrentExitData
W $BB31,2,2 Address of new room's exit data / Basic exit at $85AC
@ $BB33 label=Room_CurrentDataPtr
W $BB33,2,2 Points to data within the current room data.
W $BB35,2,2
@ $BB37 label=Shop_InfoData
B $BB37,1,1 Used by shop as info data, see s#R$B170
@ $BB38 label=Shop_Shelves
B $BB38,2,2 Holds index of items on shop shelves.
@ $BB3B label=_bb3b
B $BB3A,4,1,3
b $BB3E Data block at BB3E
@ $BB3E label=_bb3e
B $BB3E,1,1 [0]
B $BB3F,1,1 [1]
B $BB40,1,1 [2]
B $BB41,1,1 [3]
B $BB42,1,1 [4]
B $BB43,31,8*3,7
b $BB62 Information for each of the dice.
@ $BB62 label=Gamble_Dice1
B $BB62,1,1 [0] Character index to blit.
B $BB63,1,1 [1] First charater index.
B $BB64,1,1 [2] End character index. (Not inclusive)
B $BB65,1,1 [3] Count down to end of roll.
B $BB66,1,1 [4] Start offset for when blitting character.
W $BB67,2,2 [5] E/W coordinate.
W $BB69,2,2 [7] N/S coordinate.
B $BB6B,29,8*3,5
b $BB88 Data block at BB88
@ $BB88 label=TempAl
@ $BB89 label=TempAh
@ $BB8A label=TempBl
@ $BB8B label=TempBh
B $BB88,4,1
b $BB8C Table of pointers for bitmaps. All dimensions are in 8x8 character cells.
@ $BB8C label=Bitmap_PtrTable
W $BB8C,2,2 [Address]
@ $BB8E label=Bitmap_PtrTableOffHeight
B $BB8E,1,1 [Height]
@ $BB8F label=Bitmap_PtrTableOffWidth
B $BB8F,1,1 [Width]
W $BB90,2,2
B $BB92,2,2
W $BB94,2,2
B $BB96,2,2
W $BB98,2,2
B $BB9A,2,2
W $BB9C,2,2
B $BB9E,2,2
W $BBA0,2,2
B $BBA2,2,2
W $BBA4,2,2
B $BBA6,2,2
W $BBA8,2,2
B $BBAA,2,2
W $BBAC,2,2
B $BBAE,2,2
W $BBB0,2,2
B $BBB2,2,2
W $BBB4,2,2
B $BBB6,2,2
W $BBB8,2,2
B $BBBA,2,2
W $BBBC,2,2
B $BBBE,2,2
W $BBC0,2,2
B $BBC2,2,2
W $BBC4,2,2
B $BBC6,2,2
W $BBC8,2,2
B $BBCA,2,2
W $BBCC,2,2
B $BBCE,2,2
W $BBD0,2,2
@ $BBD2 label=_bbd2
B $BBD2,2,2
W $BBD4,2,2
B $BBD6,2,2
W $BBD8,2,2
B $BBDA,2,2
W $BBDC,2,2
B $BBDE,2,2
W $BBE0,2,2
B $BBE2,2,2
W $BBE4,2,2
B $BBE6,2,2
W $BBE8,2,2
B $BBEA,2,2
W $BBEC,2,2
B $BBEE,2,2
W $BBF0,2,2
B $BBF2,2,2
W $BBF4,2,2
B $BBF6,2,2
W $BBF8,2,2
B $BBFA,2,2
W $BBFC,2,2
B $BBFE,2,2
W $BC00,2,2
B $BC02,2,2
W $BC04,2,2
B $BC06,2,2
@ $BC08 label=Bitmap_HeroMaskPtr
W $BC08,2,2
B $BC0A,2,2
W $BC0C,2,2
B $BC0E,2,2
W $BC10,2,2
B $BC12,2,2
W $BC14,2,2
B $BC16,2,2
W $BC18,2,2
B $BC1A,2,2
W $BC1C,2,2
B $BC1E,2,2
W $BC20,2,2
B $BC22,2,2
W $BC24,2,2
B $BC26,2,2
W $BC28,2,2
B $BC2A,2,2
@ $BC2C label=BmpInfo29_Woman
W $BC2C,2,2
B $BC2E,2,2
W $BC30,2,2
B $BC32,2,2
W $BC34,2,2
B $BC36,2,2
W $BC38,2,2
B $BC3A,2,2
W $BC3C,2,2
B $BC3E,2,2
W $BC40,2,2
B $BC42,2,2
W $BC44,2,2
B $BC46,2,2
W $BC48,2,2
B $BC4A,2,2
W $BC4C,2,2
B $BC4E,2,2
W $BC50,2,2
B $BC52,2,2
W $BC54,2,2
B $BC56,2,2
W $BC58,2,2
B $BC5A,2,2
W $BC5C,2,2
B $BC5E,2,2
@ $BC60 label=BmpInfo35_Woman
W $BC60,2,2
B $BC62,2,2
W $BC64,2,2
B $BC66,2,2
W $BC68,2,2
B $BC6A,2,2
W $BC6C,2,2
B $BC6E,2,2
W $BC70,2,2
B $BC72,2,2
W $BC74,2,2
B $BC76,2,2
W $BC78,2,2
B $BC7A,2,2
W $BC7C,2,2
B $BC7E,2,2
W $BC80,2,2
B $BC82,2,2
W $BC84,2,2
B $BC86,2,2
W $BC88,2,2
B $BC8A,2,2
W $BC8C,2,2
B $BC8E,2,2
W $BC90,2,2
B $BC92,2,2
W $BC94,2,2
B $BC96,2,2
W $BC98,2,2
B $BC9A,2,2
W $BC9C,2,2
B $BC9E,2,2
W $BCA0,2,2
B $BCA2,2,2
W $BCA4,2,2
B $BCA6,2,2
W $BCA8,2,2
B $BCAA,2,2
W $BCAC,2,2
B $BCAE,2,2
W $BCB0,2,2
B $BCB2,2,2
W $BCB4,2,2
B $BCB6,2,2
W $BCB8,2,2
B $BCBA,2,2
W $BCBC,2,2
B $BCBE,2,2
W $BCC0,2,2
B $BCC2,2,2
W $BCC4,2,2
B $BCC6,2,2
@ $BCC8 label=BmpPtr_Objects
W $BCC8,2,2
B $BCCA,2,2
W $BCCC,2,2
B $BCCE,2,2
W $BCD0,2,2
B $BCD2,2,2
W $BCD4,2,2
B $BCD6,2,2
W $BCD8,2,2
B $BCDA,2,2
W $BCDC,2,2
B $BCDE,2,2
W $BCE0,2,2
B $BCE2,2,2
W $BCE4,2,2
B $BCE6,2,2
W $BCE8,2,2
B $BCEA,2,2
W $BCEC,2,2
B $BCEE,2,2
W $BCF0,2,2
B $BCF2,2,2
W $BCF4,2,2
B $BCF6,2,2
W $BCF8,2,2
B $BCFA,2,2
W $BCFC,2,2
B $BCFE,2,2
W $BD00,2,2
B $BD02,2,2
W $BD04,2,2
B $BD06,2,2
W $BD08,2,2
B $BD0A,2,2
W $BD0C,2,2
B $BD0E,2,2
W $BD10,2,2
B $BD12,2,2
W $BD14,2,2
B $BD16,2,2
W $BD18,2,2
B $BD1A,2,2
W $BD1C,2,2
B $BD1E,2,2
W $BD20,2,2
B $BD22,2,2
W $BD24,2,2
B $BD26,2,2
W $BD28,2,2
B $BD2A,2,2
W $BD2C,2,2
B $BD2E,2,2
W $BD30,2,2
B $BD32,2,2
W $BD34,2,2
B $BD36,2,2
W $BD38,2,2
B $BD3A,2,2
W $BD3C,2,2
B $BD3E,2,2
W $BD40,2,2
B $BD42,2,2
W $BD44,2,2
B $BD46,2,2
b $BD48 Message at BD48
@ $BD48 label=Dictionary_10w
T $BD48,50,B1:1:B3:1:B3:1,B3:1:B3:1:B2,B1:1:B3:1:B3:1,B3:1:B3:1:B2,B1:1:B3:1:B3:1
b $BD7A Furniture bitmap table of pointers.
@ $BD7A label=BmpPtr_FurnitureA
B $BD7A,2,2
W $BD7C,2,2
B $BD7E,2,2
W $BD80,2,2
B $BD82,2,2
W $BD84,2,2
B $BD86,2,2
W $BD88,2,2
B $BD8A,2,2
W $BD8C,2,2
B $BD8E,2,2
W $BD90,2,2
B $BD92,2,2
@ $BD94 label=BmpInfo82_PictureFrame
W $BD94,2,2
B $BD96,2,2
W $BD98,2,2
B $BD9A,2,2
W $BD9C,2,2
B $BD9E,2,2
W $BDA0,2,2
B $BDA2,2,2
W $BDA4,2,2
B $BDA6,2,2
W $BDA8,2,2
B $BDAA,2,2
W $BDAC,2,2
B $BDAE,2,2
W $BDB0,2,2
B $BDB2,2,2
W $BDB4,2,2
B $BDB6,2,2
W $BDB8,2,2
B $BDBA,2,2
W $BDBC,2,2
B $BDBE,2,2
W $BDC0,2,2
B $BDC2,2,2
W $BDC4,2,2
B $BDC6,2,2
@ $BDC8 label=BmpInfo8F_Sign
W $BDC8,2,2
B $BDCA,2,2
@ $BDCC label=BmpInfo90_Arch
W $BDCC,2,2
B $BDCE,2,2
@ $BDD0 label=BmpInfo91_
W $BDD0,2,2
B $BDD2,2,2
@ $BDD4 label=BmpInfo92_DoorNumbered
W $BDD4,2,2
B $BDD6,2,2
@ $BDD8 label=BmpInfo93_DoorInner
W $BDD8,2,2
B $BDDA,2,2
@ $BDDC label=BmpInfo94
W $BDDC,2,2
B $BDDE,2,2
W $BDE0,2,2
B $BDE2,2,2
W $BDE4,2,2
B $BDE6,2,2
W $BDE8,2,2
B $BDEA,2,2
W $BDEC,2,2
B $BDEE,2,2
W $BDF0,2,2
B $BDF2,2,2
W $BDF4,2,2
B $BDF6,2,2
W $BDF8,2,2
B $BDFA,2,2
W $BDFC,2,2
B $BDFE,2,2
W $BE00,2,2
B $BE02,2,2
@ $BE04 label=BmpInfo9E_ShopKeeper
W $BE04,2,2
B $BE06,2,2
W $BE08,2,2
B $BE0A,2,2
W $BE0C,2,2
B $BE0E,2,2
W $BE10,2,2
B $BE12,2,2
W $BE14,2,2
B $BE16,2,2
W $BE18,2,2
B $BE1A,2,2
@ $BE1C label=BmpInfoA4_CounterLeft
W $BE1C,2,2
B $BE1E,2,2
@ $BE20 label=BmpInfoA5_CounterCentre
W $BE20,2,2
B $BE22,2,2
@ $BE24 label=BmpInfoA6_CounterRight
W $BE24,2,2
B $BE26,2,2
W $BE28,2,2
B $BE2A,2,2
b $BE2C Data block at BE2C
@ $BE2C label=Dictionary_w9
T $BE2C,36,B1:1:B3:1:B3,1:B3:1:B3:1,B3:1:B3:1:B1,B2:1:B3:1:B2
b $BE50 Furniture bitmap table of pointers.
@ $BE50 label=BmpPtr_FurnitureB
W $BE50,2,2 [Address]
B $BE52,2,2 [Height (0x7F only), Width]
W $BE54,2,2 [Address]
B $BE56,2,2 [Height (0x7F only), Width]
W $BE58,2,2 [Address]
B $BE5A,2,2 [Height (0x7F only), Width]
W $BE5C,2,2 [Address]
B $BE5E,2,2 [Height (0x7F only), Width]
W $BE60,2,2 [Address]
B $BE62,2,2 [Height (0x7F only), Width]
W $BE64,2,2 [Address]
B $BE66,2,2 [Height (0x7F only), Width]
W $BE68,2,2 [Address]
B $BE6A,2,2 [Height (0x7F only), Width]
W $BE6C,2,2 [Address]
B $BE6E,2,2 [Height (0x7F only), Width]
W $BE70,2,2 [Address]
B $BE72,2,2 [Height (0x7F only), Width]
W $BE74,2,2 [Address]
B $BE76,2,2 [Height (0x7F only), Width]
W $BE78,2,2 [Address]
B $BE7A,2,2 [Height (0x7F only), Width]
W $BE7C,2,2 [Address]
B $BE7E,2,2 [Height (0x7F only), Width]
W $BE80,2,2 [Address]
B $BE82,2,2 [Height (0x7F only), Width]
W $BE84,2,2 [Address]
B $BE86,2,2 [Height (0x7F only), Width]
W $BE88,2,2 [Address]
B $BE8A,2,2 [Height (0x7F only), Width]
W $BE8C,2,2 [Address]
B $BE8E,2,2 [Height (0x7F only), Width]
W $BE90,2,2 [Address]
B $BE92,2,2 [Height (0x7F only), Width]
W $BE94,2,2 [Address]
B $BE96,2,2 [Height (0x7F only), Width]
W $BE98,2,2 [Address]
B $BE9A,2,2 [Height (0x7F only), Width]
W $BE9C,2,2 [Address]
B $BE9E,2,2 [Height (0x7F only), Width]
W $BEA0,2,2 [Address]
B $BEA2,2,2 [Height (0x7F only), Width]
@ $BEA4 label=BmpInfoC6_Torch
W $BEA4,2,2 [Address]
B $BEA6,2,2 [Height (0x7F only), Width]
W $BEA8,2,2 [Address]
B $BEAA,2,2 [Height (0x7F only), Width]
W $BEAC,2,2 [Address]
B $BEAE,2,2 [Height (0x7F only), Width]
W $BEB0,2,2 [Address]
B $BEB2,2,2 [Height (0x7F only), Width]
W $BEB4,2,2 [Address]
B $BEB6,2,2 [Height (0x7F only), Width]
@ $BEB8 label=BmpPtr_RoadLeadingIn
W $BEB8,2,2 [Address]
B $BEBA,2,2 [Height (0x7F only), Width]
W $BEBC,2,2 [Address]
B $BEBE,2,2 [Height (0x7F only), Width]
@ $BEC0 label=BmpPtr_RoadEdgeTop
W $BEC0,2,2 [Address]
B $BEC2,2,2 [Height (0x7F only), Width]
@ $BEC4 label=BmpPtr_RoadEdgeBottom
W $BEC4,2,2 [Address]
B $BEC6,2,2 [Height (0x7F only), Width]
W $BEC8,2,2 [Address]
B $BECA,2,2 [Height (0x7F only), Width]
W $BECC,2,2 [Address]
B $BECE,2,2 [Height (0x7F only), Width]
W $BED0,2,2 [Address]
B $BED2,2,2 [Height (0x7F only), Width]
W $BED4,2,2 [Address]
B $BED6,2,2 [Height (0x7F only), Width]
@ $BED8 label=BmpPtr_DigitSet
W $BED8,2,2 [Address]
B $BEDA,2,2 [Height (0x7F only), Width]
W $BEDC,2,2 [Address]
B $BEDE,2,2 [Height (0x7F only), Width]
@ $BEE0 label=BmpPtr_LettersThin
W $BEE0,2,2 [Address]
B $BEE2,2,2 [Height (0x7F only), Width]
b $BEE4 Link List
D $BEE4 Start of link list. $0A links of $0F bytes.
@ $BEE4 label=LinkList_bee4
W $BEE4,2,2
B $BEE6,13,8,5
W $BEF3,2,2
B $BEF5,13,8,5
W $BF02,2,2
B $BF04,13,8,5
W $BF11,2,2
B $BF13,13,8,5
W $BF20,2,2
B $BF22,13,8,5
W $BF2F,2,2
B $BF31,13,8,5
W $BF3E,2,2
B $BF40,13,8,5
W $BF4D,2,2
B $BF4F,13,8,5
W $BF5C,2,2
B $BF5E,13,8,5
W $BF6B,2,2
B $BF6D,33,8,5,8*2,4
b $BF8E Bitmap scratchpad.
@ $BF8E label=_bf8e
B $BF8E,8,8
b $BF96 Hero's bitmaps.
@ $BF96 label=Bmp_Hero1
@ $C076 label=Bmp_Hero2
@ $C156 label=Bmp_Hero3
@ $C236 label=Bmp_Hero4
@ $C316 label=Bmp_Hero5
@ $C3F6 label=Bmp_Hero6
@ $C4D6 label=Bmp_Hero7
@ $C5B6 label=Bmp_Hero8
@ $C696 label=Bmp_Hero9
@ $C776 label=Bmp_Hero10
@ $C856 label=Bmp_Hero11
@ $C936 label=Bmp_Hero12
@ $CA16 label=Bmp_HeroSide
@ $CA86 label=Bmp_HeroBack
@ $CB66 label=Bmp_HeroFwd
@ $CC46 label=Bmp_BlankTile
B $BF96,3256,8
b $CC4E Hero's mask.
@ $CC4E label=Bmp_HeroMask1
@ $CD2E label=Bmp_HeroMask2
@ $CE0E label=Bmp_HeroMask3
@ $CEEE label=Bmp_HeroMask4
@ $CFCE label=Bmp_HeroMask5
@ $D0AE label=Bmp_HeroMask6
@ $D18E label=Bmp_HeroMaskSide
@ $D1FE label=Bmp_HeroMaskFacing
B $CC4E,1680,8*179,3,8*2,5,8
b $D2DE Women bitmap
@ $D2DE label=Bmp_Woman1
@ $D3BE label=Bmp_Woman2
@ $D49E label=Bmp_Woman3
@ $D57E label=Bmp_Woman4
@ $D65E label=Bmp_Woman5
@ $D73E label=Bmp_Woman6
@ $D7EE label=Bmp_Woman7
@ $D81E label=Bmp_Woman8
@ $D8FE label=Bmp_Woman9
@ $D9DE label=Bmp_Woman10
@ $DABE label=Bmp_Woman11
@ $DB9E label=Bmp_Woman12
@ $DC7E label=Bmp_woman13
@ $DD5E label=Bmp_WomanStanding
B $D2DE,2800,8
b $DDCE [36] Rat
@ $DDCE label=Bmp_Rat1
B $DDCE,32,8
N $DDEE [37]
@ $DDEE label=Bmp_Rat2
B $DDEE,32,8
N $DE0E [38]
@ $DE0E label=Bmp_Rat3
B $DE0E,32,8
b $DE2E Block
@ $DE2E label=Bmp_Block
B $DE2E,32,8
b $DE4E Man bitmap
@ $DE4E label=Bmp_Man1
@ $DF2E label=Bmp_Man2
@ $E00E label=Bmp_Man3
@ $E0EE label=Bmp_man4
@ $E1CE label=Bmp_Man5
@ $E2AE label=Bmp_Man6
@ $E38E label=Bmp_Man7
@ $E46E label=Bmp_Man8
@ $E54E label=Bmp_Man9
@ $E62E label=Bmp_Man10
@ $E70E label=Bmp_Man11
@ $E7EE label=Bmp_Man12
@ $E8CE label=Bmp_ManStanding
B $DE4E,2800,8
b $E93E Object bitmaps
@ $E93E label=Bmp_Bottle
@ $E94E label=Bmp_Brooch
@ $E96E label=Bmp_Tokens
@ $E976 label=Bmp_Barrel
@ $E9BE label=Bmp_Axe
@ $E9EE label=Bmp_Moleskin
@ $EA36 label=Bmp_Swatch
@ $EA56 label=Bmp_Token
@ $EA5E label=Bmp_Key
@ $EA6E label=Bmp_Script
@ $EA8E label=Bmp_Thing
@ $EA9E label=Bmp_Needle
@ $EAAE label=Bmp_Bullion
@ $EABE label=Bmp_Last
@ $EADE label=Bmp_Pepper
@ $EAFE label=Bmp_Arrow
@ $EB0E label=Bmp_Book
@ $EB1E label=Bmp_Foil
@ $EB36 label=Bmp_Adze
@ $EB56 label=Bmp_Salt
@ $EB76 label=Bmp_Razor
@ $EB96 label=Bmp_BlankA
@ $EB9E label=Bmp_Hammer
@ $EBBE label=Bmp_Q
@ $EBDE label=Bmp_Hoe
@ $EBF6 label=Bmp_Stone
@ $EC16 label=Bmp_Relic
@ $EC26 label=Bmp_Shield
@ $EC46 label=Bmp_Rue
@ $EC66 label=Bmp_Lyre
@ $EC86 label=Bmp_L
B $E93E,872,8
b $ECA6 Bitmap of the shop window with sign.
@ $ECA6 label=Bmp_WindowWithSign
B $ECA6,320,8
b $EDE6 Bitmap of the shop triple window with sign.
@ $EDE6 label=BmpTripleWindowWithSign
B $EDE6,320,8
b $EF26 Bitmap of the picture frames found in galleries.
@ $EF26 label=Bmp_PictureFrame
B $EF26,224,8
b $F006 Skinny window
@ $F006 label=Bmp_WindowSkinny
B $F006,64,8
b $F046 Brick
@ $F046 label=Bmp_Brick1
B $F046,32,8
b $F066 Edging
@ $F066 label=Bmp_Edging
B $F066,8,8
b $F06E Secure Grid Window
@ $F06E label=Bmp_WindowGrid
B $F06E,64,8
b $F0AE Left hand of large window
@ $F0AE label=Bmp_WindowLeftLarge
B $F0AE,96,8
b $F10E Left hand of medium window
@ $F10E label=Bmp_WindowLeftMid
B $F10E,96,8
b $F16E Half of roundel
@ $F16E label=Bmp_Roundel
B $F16E,64,8
b $F1AE Patterned glass window
@ $F1AE label=Bmp_WindowGlass
B $F1AE,64,8
b $F1EE Bitmap of sign.
@ $F1EE label=Bmp_Sign
B $F1EE,64,8
b $F22E Left hand side of Arch.
@ $F22E label=Bmp_ArchLeft
B $F22E,48,8
b $F25E Numbered door
@ $F25E label=Bmp_DoorNumbered
B $F25E,240,8
@ $F34E label=Bmp_DoorNumberPanel
B $F34E,8,8 Door panel that holds number.
B $F356,32,8
b $F376 Inner Door
@ $F376 label=Bmp_DoorInner
B $F376,280,8
b $F48E Secret Door
@ $F48E label=Bmp_SecretDoor
B $F48E,40,8
b $F4B6 Portal
@ $F4B6 label=Bmp_DoorPortal
B $F4B6,280,8
b $F5CE Data block at F5CE
B $F5CE,128,8
b $F64E Left hand edge of wall.
@ $F64E label=Bmp_WallEdgeLeft
B $F64E,112,8
b $F6BE Data block at F6BE
B $F6BE,16,8
b $F6CE Left hand edge of wall when looking in.
@ $F6CE label=Bmp_WallAngledLeft
B $F6CE,160,8
b $F76E [9E] Left Half of shopkeeper.
@ $F76E label=Bmp_ShopKeeperHalf
B $F76E,152,8
b $F806 Data block at F806
@ $F806 label=_Bmp_Fire1
@ $F80E label=_Bmp_Fire2
B $F806,16,8
b $F816 [A4] Left handside of counter.
@ $F816 label=Bmp_CounterLeft
B $F816,48,8
b $F846 [A5] Centre of counter.
@ $F846 label=Bmp_CounterCentre
B $F846,24,8
b $F85E [A6] Left hand of Shelf.
@ $F85E label=Bmp_ShelfLeft
B $F85E,72,8
b $F8A6 Bitmap of chair.
@ $F8A6 label=Bmp_Chair1
B $F8A6,120,8
b $F91E Data block at F91E
@ $F91E label=Bmp_Blank
B $F91E,8,8
b $F926 Data block at F926
@ $F926 label=Bmp_BrickSingle
B $F926,32,8
b $F946 Data block at F946
@ $F946 label=Bmp_Shrub
B $F946,80,8
b $F996 Data block at F996
@ $F996 label=Bmp_BlankAgain
B $F996,8,8
b $F99E Data block at F99E
@ $F99E label=Bmp_FlagA
B $F99E,80,8
b $F9EE Data block at F9EE
@ $F9EE label=Bmp_Brick
B $F9EE,232,8
b $FAD6 [C6] Torch.
@ $FAD6 label=Bmp_Torch
B $FAD6,80,8
b $FB26 (C9) Bitmap of compass
@ $FB26 label=Bmp_Compass
B $FB26,200,8
b $FBEE Bitmap of road leading into screen.
@ $FBEE label=Bmp_JunctionIn
B $FBEE,16,8
b $FBFE Bitmap of road leading into screen.
@ $FBFE label=Bmp_RoadIn
B $FBFE,2,2
@ $FC00 label=Charset_Start
B $FC00,8,8 No bitmaps here, but start address is here to allow for char($20) onwards.
B $FC08,22,8*2,6
b $FC1E Bitmap of road leading out of screen.
@ $FC1E label=BMP_JunctionOut
B $FC1E,32,8
b $FC3E Bitmap of road edge.
@ $FC3E label=BMP_RoadEdgeTop
B $FC3E,16,8
b $FC4E Bitmap of road edge.
@ $FC4E label=BMP_RoadEdgeBottom
B $FC4E,16,8
b $FC5E (D0) Vertical border ornament
@ $FC5E label=Bmp_BorderOrnamentV
B $FC5E,48,8
b $FC8E (D1) Horizontal border ornament
@ $FC8E label=BmpBorderOrnamentH
B $FC8E,152,8
b $FD26 Digit character set.
D $FD26 Each digit takes up a nibble and requires copying and shifting when bein used.
@ $FD26 label=Bmp_DigitSet
B $FD26,40,8
b $FD4E Identifier used for people
@ $FD4E label=Bmp_PersonLabel
B $FD4E,32,8
b $FD6E Bitmaps  8x8 bitmaps and letters.
@ $FD6E label=Bmp_LettersThin
B $FD6E,626,8*14,2,8
N $FFE0 [7C]
B $FFE0,32,8
