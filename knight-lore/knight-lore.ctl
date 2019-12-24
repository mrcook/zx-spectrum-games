> $5BA0 ; SkoolKit disassembly for Knight Lore
> $5BA0 ; v1.00rc7
> $5BA0 ;
> $5BA0 ; Copyright (c) 2019 Michael R. Cook (Skoolkit conversion)
> $5BA0 ; Copyright (c) 2017 tcdev (annotated disassembly)
> $5BA0 ; Copyright (c) 1984 Ultimate Play the Game (Knight Lore)
> $5BA0 ; Knight Lore was designed and developed by Tim Stamper and Chris Stamper
> $5BA0 ;
> $5BA0 ; Memory Map:
> $5BA0 ;
> $5BA0 ; $4000-$57FF - spectrum video memory
> $5BA0 ; $5800-$5AFF - spectrum attribute memory
> $5BA0 ;       $5B9F - stack
> $5BA0 ; $5BA0-$6107 - variables
> $5BA0 ; $6108-$D8F2 - code and data
> $5BA0 ; $D8F3-$F0F2 - video buffer
> $5BA0 ; $F100-$FFFF - bit-shift & bit-reverse lookup tables
> $5BA0 ;             - (built at run-time)
> $5BA0 @start=$AF6C
> $5BA0
> $5BA0 ; Video and Attribute RAM locations
> $5BA0 @equ=zx_vram=$4000
> $5BA0 @equ=zx_aram=$5800
> $5BA0
> $5BA0 @org
b $5BA0 Stack grows down from here
D $5BA0 Variables from here are zeroed at start of game
@ $5BA0 label=seed_1
B $5BA0,2,2
b $5BA2 Data block at 5BA2
@ $5BA2 label=seed_2
S $5BA2,2,$02
b $5BA4 #TABLE(default,centre,:w) { =h Bit(n) | =h Description } { 3 | directional } { 2-1 | 00=keybd, 01=kempston, 10=cursor, 11=i/f-ii } TABLE#
@ $5BA4 label=user_input_method
S $5BA4,1,$01
b $5BA5 Data block at 5BA5
@ $5BA5 label=seed_3
S $5BA5,1,$01
b $5BA6 Data block at 5BA6
@ $5BA6 label=old_input_method
S $5BA6,2,$01
b $5BA8 variables from here are zeroed each game
@ $5BA8 label=objs_wiped_cnt
S $5BA8,1,$01
b $5BA9 Data block at 5BA9
@ $5BA9 label=tmp_SP
B $5BA9,2,2
b $5BAB Data block at 5BAB
@ $5BAB label=room_size_X
S $5BAB,1,$01
b $5BAC Data block at 5BAC
@ $5BAC label=room_size_Y
S $5BAC,1,$01
b $5BAD Data block at 5BAD
@ $5BAD label=curr_room_attrib
S $5BAD,1,$01
b $5BAE Data block at 5BAE
@ $5BAE label=room_size_Z
S $5BAE,1,$01
b $5BAF Data block at 5BAF
@ $5BAF label=portcullis_moving
S $5BAF,1,$01
b $5BB0 Data block at 5BB0
@ $5BB0 label=portcullis_move_cnt
S $5BB0,1,$01
b $5BB1 Data block at 5BB1
@ $5BB1 label=transform_flag_graphic
S $5BB1,1,$01
b $5BB2 Data block at 5BB2
@ $5BB2 label=not_1st_screen
S $5BB2,1,$01
b $5BB3 Data block at 5BB3
@ $5BB3 label=pickup_drop_pressed
S $5BB3,1,$01
b $5BB4 Data block at 5BB4
@ $5BB4 label=objects_carried_changed
S $5BB4,1,$01
b $5BB5 #TABLE(default,centre,:w) { =h Bit(n) | =h Description } { b5 | ??? } { b4 | pickup/drop } { b3 | jump } { b2 | forward } { b1 | right } { b0 | left } TABLE#
@ $5BB5 label=user_input
S $5BB5,1,$01
b $5BB6 Data block at 5BB6
@ $5BB6 label=tmp_attrib
B $5BB6,1,1
b $5BB7 Data block at 5BB7
@ $5BB7 label=render_status_info
S $5BB7,1,$01
b $5BB8 Data block at 5BB8
@ $5BB8 label=suppress_border
B $5BB8,1,1
b $5BB9 Data block at 5BB9
@ $5BB9 label=days
S $5BB9,1,$01
b $5BBA Data block at 5BBA
@ $5BBA label=lives
B $5BBA,1,1
b $5BBB Data block at 5BBB
@ $5BBB label=objects_put_in_cauldron
S $5BBB,1,$01
b $5BBC Data block at 5BBC
@ $5BBC label=fire_seed
S $5BBC,1,$01
b $5BBD Data block at 5BBD
@ $5BBD label=ball_bounce_height
S $5BBD,1,$01
b $5BBE Data block at 5BBE
@ $5BBE label=rendered_objs_cnt
S $5BBE,1,$01
b $5BBF Data block at 5BBF
@ $5BBF label=is_spike_ball_dropping
S $5BBF,1,$01
b $5BC0 Data block at 5BC0
@ $5BC0 label=disable_spike_ball_drop
S $5BC0,1,$01
b $5BC1 Data block at 5BC1
@ $5BC1 label=tmp_dZ
S $5BC1,1,$01
b $5BC2 Data block at 5BC2
@ $5BC2 label=tmp_bouncing_ball_dZ
S $5BC2,1,$01
b $5BC3 Data block at 5BC3
@ $5BC3 label=all_objs_in_cauldron
S $5BC3,1,$01
b $5BC4 Data block at 5BC4
@ $5BC4 label=obj_dropping_into_cauldron
S $5BC4,1,$01
b $5BC5 Data block at 5BC5
@ $5BC5 label=rising_blocks_z
S $5BC5,1,$01
b $5BC6 Data block at 5BC6
@ $5BC6 label=num_scrns_visited
S $5BC6,1,$01
b $5BC7 Data block at 5BC7
@ $5BC7 label=gfxbase_8x8
B $5BC7,2,2
b $5BC9 Data block at 5BC9
@ $5BC9 label=percent_msw
S $5BC9,1,$01
b $5BCA Data block at 5BCA
@ $5BCA label=percent_lsw
S $5BCA,1,$01
b $5BCB Data block at 5BCB
@ $5BCB label=tmp_objects_to_draw
S $5BCB,2,$02
b $5BCD Data block at 5BCD
@ $5BCD label=render_obj_1
S $5BCD,2,$02
b $5BCF Data block at 5BCF
@ $5BCF label=render_obj_2
S $5BCF,2,$02
b $5BD1 Data block at 5BD1
@ $5BD1 label=audio_played
B $5BD1,1,1
b $5BD2 Data block at 5BD2
@ $5BD2 label=debounce_5
S $5BD2,1,$01
b $5BD3 Data block at 5BD3
@ $5BD3 label=cant_drop
S $5BD3,5,$01,$04
b $5BD8 Data block at 5BD8
@ $5BD8 label=inventory
S $5BD8,4,$04
b $5BDC Data block at 5BDC
@ $5BDC label=objects_carried
S $5BDC,7,$07
b $5BE3 Data block at 5BE3
@ $5BE3 label=unk_5BE3
S $5BE3,1,$01
b $5BE4 Data block at 5BE4
@ $5BE4 label=object_carried_2
S $5BE4,3,$01,$02
b $5BE7 Data block at 5BE7
@ $5BE7 label=end_of_objects_carried
S $5BE7,1,$01
b $5BE8 table of bits (flags) denoting room has been visited
D $5BE8 - used only in ratings calculations
@ $5BE8 label=scrn_visited
S $5BE8,32,$20
b $5C08 table of objects (40 max)
D $5C08 #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { 00,01 | player sprites (00=bottom, 01=top) } { 02,03 | special object sprites } { 04-39 | background, then foreground } TABLE#
D $5C08 #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { +0     | graphic_no. } { +1     | x (center) } { +2     | y (center) } { +3     | z (bottom) } { +4     | width (X radius) } { +5     | depth (Y radius) } { +6     | height } { +7     | flags } {        | - 7=vflip sprite } {        | - 6=hflip sprite } {        | - 5=wipe } {        | - 4=draw } {        | - 3=auto-adjust near arches (player only) } {        | - 2=moveable } {        | - 1=ignore in 3D calculations } {        | - 0=is near arch (player only) } { +8     | screen } { +9     | dX } { +10    | dY } { +11    | dZ } { +12    | counter and flags } {        | - 7-4=counter when entering screen } {        | - 3=jumping } {        | - 2=Z out-of-bounds } {        | - 1=Y out-of-bounds } {        | - 0=X out-of-bounds } { +13    | per-object info/flags } {        | - direction and counters for looking, turning } {        | - 7=deadly if object hits player } {        | - 6=dead } {        | - 5=deadly if player hits object } {        | - 4=(not used) } {        | - 3=triggered (dropping, collapsing blocks) } {        | - 2=up (bouncing ball), dropping (spiked ball) } {        | - 1=north (NS fire) } {        | - 0=east (WE fire, EW guard), just dropped (spec objs) } { +14    | d_x_adj } { +15    | d_y_adj } { +16-17 | ptr object table entry or tmp player graphic_no } { +18    | pixel X adjustment } { +19    | pixel Y adjustment } { +20-23 | unused } { +24    | sprite data width (bytes) } { +25    | sprite data height (lines) } { +26    | pixel X } { +27    | pixel Y } { +28    | old sprite data width (bytes) } { +29    | old sprite data height (lines) } { +30    | old pixel X } { +31    | old pixel Y } TABLE#
@ $5C08 label=graphic_objs_tbl
S $5C08,64,$20
b $5C48 Data block at 5C48
@ $5C48 label=special_objs_here
S $5C48,32,$20
b $5C68 Data block at 5C68
@ $5C68 label=special_objs_here_1
S $5C68,32,$20
b $5C88 Data block at 5C88
@ $5C88 label=other_objs_here
S $5C88,32,$20
b $5CA8 Data block at 5CA8
S $5CA8,1120,$0460
b $6108 Data block at 6108
@ $6108 label=font
B $6108,8,8 '0'
B $6110,8,8 '1'
B $6118,8,8 '2'
B $6120,8,8 '3'
B $6128,8,8 '4'
B $6130,8,8 '5'
B $6138,8,8 '6'
B $6140,8,8 '7'
B $6148,8,8 '8'
B $6150,8,8 '9'
B $6158,8,8 'A'
B $6160,8,8 'B'
B $6168,8,8 'C'
B $6170,8,8 'D'
B $6178,8,8 'E'
B $6180,8,8 'F'
B $6188,8,8 'G'
B $6190,8,8 'H'
B $6198,8,8 'I'
B $61A0,8,8 'J'
B $61A8,8,8 'K'
B $61B0,8,8 'L'
B $61B8,8,8 'M'
B $61C0,8,8 'N'
B $61C8,8,8 'O'
B $61D0,8,8 'P'
B $61D8,8,8 'Q'
B $61E0,8,8 'R'
B $61E8,8,8 'S'
B $61F0,8,8 'T'
B $61F8,8,8 'U'
B $6200,8,8 'V'
B $6208,8,8 'W'
B $6210,8,8 'X'
B $6218,8,8 'Y'
B $6220,8,8 'Z'
B $6228,8,8 '.'
B $6230,8,8 '(c)'
B $6238,8,8 ' '
B $6240,8,8 '%'
b $6248 room size table
@ $6248 label=room_size_tbl
B $6248,3,3 0
B $624B,3,3 1
B $624E,3,3 2
b $6251 locations
@ $6251 label=location_tbl
B $6251,3,3 id=0
B $6254,23,11,8,4
B $626B,3,3 id=1
B $626E,18,11,7
B $6280,3,3 id=2
B $6283,4,4
B $6287,3,3 id=3
B $628A,24,11,8,5
B $62A2,3,3 id=4
B $62A5,17,10,7
B $62B6,3,3 id=8
B $62B9,24,10,8,6
B $62D1,3,3 id=9
B $62D4,9,9
B $62DD,3,3 id=10
B $62E0,23,10,8,5
B $62F7,3,3 id=11
B $62FA,4,4
B $62FE,3,3 id=12
B $6301,21,10,8,3
B $6316,3,3 id=13
B $6319,4,4
B $631D,3,3 id=14
B $6320,9,9
B $6329,3,3 id=15
B $632C,26,11,8,7
B $6346,3,3 id=16
B $6349,22,11,8,3
B $635F,3,3 id=18
B $6362,22,22
B $6378,3,3 id=20
B $637B,24,24
B $6393,3,3 id=24
B $6396,15,15
B $63A5,3,3 id=29
B $63A8,25,25
B $63C1,3,3 id=31
B $63C4,21,21
B $63D9,3,3 id=32
B $63DC,16,16
B $63EC,3,3 id=33
B $63EF,26,26
B $6409,3,3 id=34
B $640C,24,24
B $6424,3,3 id=36
B $6427,22,22
B $643D,3,3 id=39
B $6440,13,13
B $644D,3,3 id=40
B $6450,14,14
B $645E,3,3 id=45
B $6461,21,21
B $6476,3,3 id=46
B $6479,15,15
B $6488,3,3 id=47
B $648B,4,4
B $648F,3,3 id=48
B $6492,20,20
B $64A6,3,3 id=52
B $64A9,22,22
B $64BF,3,3 id=55
B $64C2,11,11
B $64CD,3,3 id=56
B $64D0,23,23
B $64E7,3,3 id=63
B $64EA,23,23
B $6501,3,3 id=64
B $6504,17,17
B $6515,3,3 id=65
B $6518,21,21
B $652D,3,3 id=66
B $6530,19,19
B $6543,3,3 id=67
B $6546,25,25
B $655F,3,3 id=68
B $6562,5,5
B $6567,3,3 id=69
B $656A,27,27
B $6585,3,3 id=70
B $6588,26,26
B $65A2,3,3 id=71
B $65A5,4,4
B $65A9,3,3 id=72
B $65AC,21,21
B $65C1,3,3 id=79
B $65C4,19,19
B $65D7,3,3 id=84
B $65DA,20,20
B $65EE,3,3 id=87
B $65F1,18,18
B $6603,3,3 id=88
B $6606,9,9
B $660F,3,3 id=94
B $6612,16,16
B $6622,3,3 id=95
B $6625,4,4
B $6629,3,3 id=100
B $662C,16,16
B $663C,3,3 id=103
B $663F,16,16
B $664F,3,3 id=104
B $6652,23,23
B $6669,3,3 id=106
B $666C,3,3
B $666F,3,3 id=107
B $6672,15,15
B $6681,3,3 id=108
B $6684,22,22
B $669A,3,3 id=109
B $669D,21,21
B $66B2,3,3 id=110
B $66B5,5,5
B $66BA,3,3 id=111
B $66BD,18,18
B $66CF,3,3 id=116
B $66D2,22,22
B $66E8,3,3 id=117
B $66EB,12,12
B $66F7,3,3 id=118
B $66FA,20,20
B $670E,3,3 id=119
B $6711,5,5
B $6716,3,3 id=120
B $6719,23,23
B $6730,3,3 id=121
B $6733,20,20
B $6747,3,3 id=122
B $674A,20,20
B $675E,3,3 id=131
B $6761,3,3
B $6764,3,3 id=132
B $6767,21,21
B $677C,3,3 id=133
B $677F,23,23
B $6796,3,3 id=134
B $6799,9,9
B $67A2,3,3 id=135
B $67A5,22,22
B $67BB,3,3 id=136
B $67BE,17,17
B $67CF,3,3 id=137
B $67D2,18,18
B $67E4,3,3 id=138
B $67E7,22,22
B $67FD,3,3 id=139
B $6800,4,4
B $6804,3,3 id=140
B $6807,23,23
B $681E,3,3 id=141
B $6821,24,24
B $6839,3,3 id=142
B $683C,10,10
B $6846,3,3 id=143
B $6849,3,3
B $684C,3,3 id=147
B $684F,18,18
B $6861,3,3 id=151
B $6864,14,14
B $6872,3,3 id=152
B $6875,24,24
B $688D,3,3 id=155
B $6890,21,21
B $68A5,3,3 id=159
B $68A8,22,22
B $68BE,3,3 id=163
B $68C1,26,26
B $68DB,3,3 id=167
B $68DE,3,3
B $68E1,3,3 id=168
B $68E4,22,22
B $68FA,3,3 id=170
B $68FD,22,22
B $6913,3,3 id=171
B $6916,4,4
B $691A,3,3 id=175
B $691D,12,12
B $6929,3,3 id=179
B $692C,4,4
B $6930,3,3 id=180
B $6933,17,17
B $6944,3,3 id=183
B $6947,12,12
B $6953,3,3 id=186
B $6956,23,23
B $696D,3,3 id=187
B $6970,9,9
B $6979,3,3 id=191
B $697C,27,27
B $6997,3,3 id=195
B $699A,18,18
B $69AC,3,3 id=199
B $69AF,9,9
B $69B8,3,3 id=207
B $69BB,8,8
B $69C3,3,3 id=208
B $69C6,23,23
B $69DD,3,3 id=209
B $69E0,15,15
B $69EF,3,3 id=210
B $69F2,19,19
B $6A05,3,3 id=211
B $6A08,16,16
B $6A18,3,3 id=214
B $6A1B,19,19
B $6A2E,4,4 id=215
B $6A32,11,11
B $6A3D,3,3 id=216
B $6A40,4,4
B $6A44,3,3 id=217
B $6A47,24,24
B $6A5F,3,3 id=222
B $6A62,3,3
B $6A65,3,3 id=223
B $6A68,20,20
B $6A7C,3,3 id=224
B $6A7F,15,15
B $6A8E,3,3 id=226
B $6A91,20,20
B $6AA5,3,3 id=227
B $6AA8,25,25
B $6AC1,3,3 id=230
B $6AC4,5,5
B $6AC9,3,3 id=231
B $6ACC,15,15
B $6ADB,3,3 id=232
B $6ADE,20,20
B $6AF2,3,3 id=233
B $6AF5,4,4
B $6AF9,3,3 id=237
B $6AFC,18,18
B $6B0E,3,3 id=239
B $6B11,3,3
B $6B14,3,3 id=240
B $6B17,25,25
B $6B30,3,3 id=241
B $6B33,8,8
B $6B3B,3,3 id=242
B $6B3E,4,4
B $6B42,3,3 id=243
B $6B45,21,21
B $6B5A,3,3 id=246
B $6B5D,17,17
B $6B6E,3,3 id=247
B $6B71,19,19
B $6B84,3,3 id=248
B $6B87,5,5
B $6B8C,3,3 id=249
B $6B8F,17,17
B $6BA0,3,3 id=253
B $6BA3,15,15
B $6BB2,3,3 id=254
B $6BB5,16,16
B $6BC5,3,3 id=255
B $6BC8,9,9
b $6BD1 Block Types
@ $6BD1 label=block_type_tbl
W $6BD1,2,2 $00 - block 07 block
W $6BD3,2,2 $01 - sprite b0 (fire) (unused)
W $6BD5,2,2 $02 - sprite b2 (ball) [up/down]
W $6BD7,2,2 $03 - block 06 rock
W $6BD9,2,2 $04 - block 16 gargoyle
W $6BDB,2,2 $05 - block 17 spike
W $6BDD,2,2 $06 - sprite 55 (chest)
W $6BDF,2,2 $07 - sprite 54 (table)
W $6BE1,2,2 $08 - sprite 96/90 (guard) [west/east]
W $6BE3,2,2 $09 - sprite 52 (ghost)
W $6BE5,2,2 $0A - sprite b5 (fire) [north/south]
W $6BE7,2,2 $0B - block 07 block high
W $6BE9,2,2 $0C - sprite b2 (ball) [up/down]
W $6BEB,2,2 $0D - sprite 1e/90 (Guard) [square circuit]
W $6BED,2,2 $0E - block 36 [west/east]
W $6BEF,2,2 $0F - block 37 [north/south]
W $6BF1,2,2 $10 - block 3e
W $6BF3,2,2 $11 - block Spike - high!!!
W $6BF5,2,2 $12 - sprite 3f (Spike Ball)
W $6BF7,2,2 $13 - sprite 3f (Spike Ball) [falling]
W $6BF9,2,2 $14 - sprite 56 Fire [west/east]
W $6BFB,2,2 $15 - Block 5b
W $6BFD,2,2 $16 - block 8f [Collapse]
W $6BFF,2,2 $17 - sprite b6 (Ball)
W $6C01,2,2 $18 - sprite b2 (Ball)
W $6C03,2,2 $19 - sprite a4 (Spell) [repel player]
W $6C05,2,2 $1A - sprite 8 (Gate) [up/down]
W $6C07,2,2 $1B - sprite 8 (Gate) [up/down]
W $6C09,2,2 $1C - sprite b2 (Ball)
b $6C0B Block type data
D $6C0B #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { +0 | sprite } { +1 | width (x) } { +2 | depth (y) } { +3 | height (z) } { +4 | flags (see code) } { +5 | offsets (see code) } TABLE#
@ $6C0B label=block
B $6C0B,7,7
b $6C12 Data block at 6C12
@ $6C12 label=block_high
B $6C12,7,7
b $6C19 Data block at 6C19
@ $6C19 label=block_ew
B $6C19,7,7
b $6C20 Data block at 6C20
@ $6C20 label=block_ns
B $6C20,7,7
b $6C27 Data block at 6C27
@ $6C27 label=moveable_block
B $6C27,7,7
b $6C2E Data block at 6C2E
@ $6C2E label=dropping_block
B $6C2E,7,7
b $6C35 Data block at 6C35
@ $6C35 label=collapsing_block
B $6C35,7,7
b $6C3C Data block at 6C3C
@ $6C3C label=fire
B $6C3C,7,7
b $6C43 Data block at 6C43
@ $6C43 label=ball_ud_y
B $6C43,7,7
b $6C4A Data block at 6C4A
@ $6C4A label=ball_ud_xy
B $6C4A,7,7
b $6C51 Data block at 6C51
@ $6C51 label=ball_ud
B $6C51,7,7
b $6C58 Data block at 6C58
@ $6C58 label=ball_ud_x
B $6C58,7,7
b $6C5F Data block at 6C5F
@ $6C5F label=ball_bounce
B $6C5F,7,7
b $6C66 Data block at 6C66
@ $6C66 label=rock
B $6C66,7,7
b $6C6D Data block at 6C6D
@ $6C6D label=gargoyle
B $6C6D,7,7
b $6C74 Data block at 6C74
@ $6C74 label=spike
B $6C74,7,7
b $6C7B Data block at 6C7B
@ $6C7B label=spike_high
B $6C7B,7,7
b $6C82 Data block at 6C82
@ $6C82 label=spike_ball_fall
B $6C82,7,7
b $6C89 Data block at 6C89
@ $6C89 label=spike_ball_high_fall
B $6C89,7,7
b $6C90 Data block at 6C90
@ $6C90 label=chest
B $6C90,7,7
b $6C97 Data block at 6C97
@ $6C97 label=table
B $6C97,7,7
b $6C9E Data block at 6C9E
@ $6C9E label=guard_ew
B $6C9E,13,13
b $6CAB Data block at 6CAB
@ $6CAB label=guard_square
B $6CAB,13,13
b $6CB8 Data block at 6CB8
@ $6CB8 label=ghost
B $6CB8,7,7
b $6CBF Data block at 6CBF
@ $6CBF label=fire_ns
B $6CBF,7,7
b $6CC6 Data block at 6CC6
@ $6CC6 label=fire_ew
B $6CC6,7,7
b $6CCD Data block at 6CCD
@ $6CCD label=repel_spell
B $6CCD,7,7
b $6CD4 Data block at 6CD4
@ $6CD4 label=gate_ud_1
B $6CD4,7,7
b $6CDB Data block at 6CDB
@ $6CDB label=gate_ud_2
B $6CDB,7,7
b $6CE2 Background Types Pointers
@ $6CE2 label=background_type_tbl
W $6CE2,2,2 $00 - Arch north
W $6CE4,2,2 $01 - arch east
W $6CE6,2,2 $02 - arch south
W $6CE8,2,2 $03 - arch west
W $6CEA,2,2 $04 - Tree arch north
W $6CEC,2,2 $05 - Tree arch east
W $6CEE,2,2 $06 - Tree arch south
W $6CF0,2,2 $07 - Tree arch west
W $6CF2,2,2 $08 - Gate
W $6CF4,2,2 $09 - Gate
W $6CF6,2,2 $0A - Gate
W $6CF8,2,2 $0B - Gate
W $6CFA,2,2 $0C - walls size 0
W $6CFC,2,2 $0D - walls size 1
W $6CFE,2,2 $0E - walls size 2
W $6D00,2,2 $0F - trees size 0
W $6D02,2,2 $10 - trees size 1
W $6D04,2,2 $11 - trees size 2
W $6D06,2,2 $12 - Wizard
W $6D08,2,2 $13 - Pot
W $6D0A,2,2 $14 - High Arch east
W $6D0C,2,2 $15 - High Arch south
W $6D0E,2,2 $16 - High Arch east base
W $6D10,2,2 $17 - High Arch south base
b $6D12 Background Type Makeup
D $6D12 #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { +0 | sprite } { +1 | x } { +2 | y } { +3 | z } { +4 | width (x) } { +5 | depth (y) } { +6 | height (z) } { +7 | flags (see code) } TABLE#
@ $6D12 label=arch_n
B $6D12,17,8*2,1
b $6D23 Data block at 6D23
@ $6D23 label=arch_e
B $6D23,17,8*2,1
b $6D34 Data block at 6D34
@ $6D34 label=high_arch_e
B $6D34,17,8*2,1
b $6D45 Data block at 6D45
@ $6D45 label=arch_s
B $6D45,17,8*2,1
b $6D56 Data block at 6D56
@ $6D56 label=high_arch_s
B $6D56,17,8*2,1
b $6D67 Data block at 6D67
@ $6D67 label=arch_w
B $6D67,17,8*2,1
b $6D78 Data block at 6D78
@ $6D78 label=tree_arch_n
B $6D78,17,8*2,1
b $6D89 Data block at 6D89
@ $6D89 label=tree_arch_e
B $6D89,17,8*2,1
b $6D9A Data block at 6D9A
@ $6D9A label=tree_arch_s
B $6D9A,17,8*2,1
b $6DAB Data block at 6DAB
@ $6DAB label=tree_arch_w
B $6DAB,17,8*2,1
b $6DBC Data block at 6DBC
@ $6DBC label=gate_n
B $6DBC,9,8,1
b $6DC5 Data block at 6DC5
@ $6DC5 label=gate_e
B $6DC5,9,8,1
b $6DCE Data block at 6DCE
@ $6DCE label=gate_s
B $6DCE,9,8,1
b $6DD7 Data block at 6DD7
@ $6DD7 label=gate_w
B $6DD7,9,8,1
b $6DE0 Data block at 6DE0
@ $6DE0 label=wall_size_1
B $6DE0,105,8*13,1
b $6E49 Data block at 6E49
@ $6E49 label=wall_size_2
B $6E49,113,8*14,1
b $6EBA Data block at 6EBA
@ $6EBA label=wall_size_3
B $6EBA,113,8*14,1
b $6F2B Data block at 6F2B
@ $6F2B label=tree_room_size_1
B $6F2B,97,8*12,1
b $6F8C Data block at 6F8C
@ $6F8C label=tree_filler_w
B $6F8C,17,8*2,1
b $6F9D Data block at 6F9D
@ $6F9D label=tree_filler_n
B $6F9D,17,8*2,1
b $6FAE Data block at 6FAE
@ $6FAE label=wizard
B $6FAE,17,8*2,1
b $6FBF Data block at 6FBF
@ $6FBF label=cauldron
B $6FBF,17,8*2,1
b $6FD0 Data block at 6FD0
@ $6FD0 label=high_arch_e_base
B $6FD0,17,8*2,1
b $6FE1 Data block at 6FE1
@ $6FE1 label=high_arch_s_base
B $6FE1,17,8*2,1
b $6FF2 Objects
D $6FF2 #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { +0 | object graphic no (dynamic $60-$67) } { +1 | start X position ($46-0xba) } { +2 | start Y position ($40-$70 +/-0x0c) } { +3 | start Z position ($46-0xba) } { +4 | start screen } { +5 | current X } { +6 | current Y } { +7 | current Z } { +8 | current screen } TABLE#
@ $6FF2 label=special_objs_tbl
B $6FF2,288,9
b $7112 Pointers to Sprite Graphics
@ $7112 label=sprite_tbl
W $7112,376,16*23,8
b $728A Sprite Graphics Data
D $728A #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { +0        | width } { +1        | height } { 0..height | data } { 0..width  | data } { +0        | mask } { +1        | image } TABLE#
@ $728A label=spr_nul
B $728A,2,2
b $728C Data block at 728C
@ $728C label=spr_000
B $728C,188,2,8*23,2
b $7348 Data block at 7348
@ $7348 label=spr_001
B $7348,188,2,8*23,2
b $7404 Data block at 7404
@ $7404 label=spr_002
B $7404,226,2,8
b $74E6 Data block at 74E6
@ $74E6 label=spr_003
B $74E6,202,2,8
b $75B0 Data block at 75B0
@ $75B0 label=spr_004
B $75B0,140,2,8*17,2
b $763C Data block at 763C
@ $763C label=spr_005
B $763C,140,2,8*17,2
b $76C8 Data block at 76C8
@ $76C8 label=spr_006
B $76C8,116,2,8*14,2
b $773C Data block at 773C
@ $773C label=spr_007
B $773C,110,2,8*13,4
b $77AA Data block at 77AA
@ $77AA label=spr_008
B $77AA,234,2,8
b $7894 Data block at 7894
@ $7894 label=spr_009
B $7894,146,2,8
b $7926 Data block at 7926
@ $7926 label=spr_010
B $7926,62,2,8*7,4
b $7964 Data block at 7964
@ $7964 label=spr_011
B $7964,66,2,8
b $79A6 Data block at 79A6
@ $79A6 label=spr_012
B $79A6,236,2,8*29,2
b $7A92 Data block at 7A92
@ $7A92 label=spr_013
B $7A92,200,2,8*24,6
b $7B5A Data block at 7B5A
@ $7B5A label=spr_014
B $7B5A,258,2,8
b $7C5C Data block at 7C5C
@ $7C5C label=spr_015
B $7C5C,8,2,6
b $7C64 Data block at 7C64
@ $7C64 label=spr_016
B $7C64,50,2,8
b $7C96 Data block at 7C96
@ $7C96 label=spr_017
B $7C96,258,2,8
b $7D98 Data block at 7D98
@ $7D98 label=filler
B $7D98,12,12
b $7DA4 Data block at 7DA4
@ $7DA4 label=spr_018
B $7DA4,66,2,8
b $7DE6 Data block at 7DE6
@ $7DE6 label=spr_019
B $7DE6,34,2,8
b $7E08 Data block at 7E08
@ $7E08 label=spr_020
B $7E08,226,2,8
b $7EEA Data block at 7EEA
@ $7EEA label=spr_021
B $7EEA,70,2,8*8,4
b $7F30 Data block at 7F30
@ $7F30 label=spr_022
B $7F30,128,2,8*15,6
b $7FB0 Data block at 7FB0
@ $7FB0 label=spr_023
B $7FB0,242,2,8
b $80A2 Data block at 80A2
@ $80A2 label=spr_024
B $80A2,194,2,8
b $8164 Data block at 8164
@ $8164 label=spr_025
B $8164,122,2,8
b $81DE Data block at 81DE
@ $81DE label=spr_026
B $81DE,128,2,8*15,6
b $825E Data block at 825E
@ $825E label=spr_027
B $825E,140,2,8*17,2
b $82EA Data block at 82EA
@ $82EA label=spr_028
B $82EA,146,2,8
b $837C Data block at 837C
@ $837C label=spr_029
B $837C,146,2,8
b $840E Data block at 840E
@ $840E label=spr_030
B $840E,146,2,8
b $84A0 Data block at 84A0
@ $84A0 label=spr_031
B $84A0,116,2,8*14,2
b $8514 Data block at 8514
@ $8514 label=spr_032
B $8514,134,2,8*16,4
b $859A Data block at 859A
@ $859A label=spr_033
B $859A,140,2,8*17,2
b $8626 Data block at 8626
@ $8626 label=spr_034
B $8626,110,2,8*13,4
b $8694 Data block at 8694
@ $8694 label=spr_035
B $8694,146,2,8
b $8726 Data block at 8726
@ $8726 label=spr_036
B $8726,128,2,8*15,6
b $87A6 Data block at 87A6
@ $87A6 label=spr_037
B $87A6,66,2,8
b $87E8 Data block at 87E8
@ $87E8 label=spr_038
B $87E8,66,2,8
b $882A Data block at 882A
@ $882A label=spr_039
B $882A,122,2,8
b $88A4 Data block at 88A4
@ $88A4 label=spr_040
B $88A4,116,2,8*14,2
b $8918 Data block at 8918
@ $8918 label=spr_041
B $8918,122,2,8
b $8992 Data block at 8992
@ $8992 label=spr_042
B $8992,122,2,8
b $8A0C Data block at 8A0C
@ $8A0C label=spr_043
B $8A0C,254,2,8*31,4
b $8B0A Data block at 8B0A
@ $8B0A label=spr_044
B $8B0A,234,2,8
b $8BF4 Data block at 8BF4
@ $8BF4 label=spr_045
B $8BF4,250,2,8
b $8CEE Data block at 8CEE
@ $8CEE label=spr_046
B $8CEE,146,2,8
b $8D80 Data block at 8D80
@ $8D80 label=spr_047
B $8D80,152,2,8*18,6
b $8E18 Data block at 8E18
@ $8E18 label=spr_048
B $8E18,152,2,8*18,6
b $8EB0 Data block at 8EB0
@ $8EB0 label=spr_049
B $8EB0,146,2,8
b $8F42 Data block at 8F42
@ $8F42 label=spr_050
B $8F42,146,2,8
b $8FD4 Data block at 8FD4
@ $8FD4 label=spr_051
B $8FD4,146,2,8
b $9066 Data block at 9066
@ $9066 label=spr_052
B $9066,152,2,8*18,6
b $90FE Data block at 90FE
@ $90FE label=spr_053
B $90FE,152,2,8*18,6
b $9196 Data block at 9196
@ $9196 label=spr_054
B $9196,152,2,8*18,6
b $922E Data block at 922E
@ $922E label=spr_055
B $922E,98,2,8
b $9290 Data block at 9290
@ $9290 label=spr_056
B $9290,98,2,8
b $92F2 Data block at 92F2
@ $92F2 label=spr_057
B $92F2,98,2,8
b $9354 Data block at 9354
@ $9354 label=spr_058
B $9354,98,2,8
b $93B6 Data block at 93B6
@ $93B6 label=spr_059
B $93B6,98,2,8
b $9418 Data block at 9418
@ $9418 label=spr_060
B $9418,98,2,8
b $947A Data block at 947A
@ $947A label=spr_061
B $947A,98,2,8
b $94DC Data block at 94DC
@ $94DC label=spr_062
B $94DC,98,2,8
b $953E Data block at 953E
@ $953E label=spr_063
B $953E,146,2,8
b $95D0 Data block at 95D0
@ $95D0 label=spr_064
B $95D0,152,2,8*18,6
b $9668 Data block at 9668
@ $9668 label=spr_065
B $9668,152,2,8*18,6
b $9700 Data block at 9700
@ $9700 label=spr_066
B $9700,194,2,8
b $97C2 Data block at 97C2
@ $97C2 label=spr_067
B $97C2,194,2,8
b $9884 Data block at 9884
@ $9884 label=spr_068
B $9884,194,2,8
b $9946 Data block at 9946
@ $9946 label=spr_069
B $9946,194,2,8
b $9A08 Data block at 9A08
@ $9A08 label=spr_070
B $9A08,194,2,8
b $9ACA Data block at 9ACA
@ $9ACA label=spr_071
B $9ACA,314,2,8
b $9C04 Data block at 9C04
@ $9C04 label=spr_072
B $9C04,142,2,8*17,4
b $9C92 Data block at 9C92
@ $9C92 label=spr_073
B $9C92,194,2,8
b $9D54 Data block at 9D54
@ $9D54 label=spr_074
B $9D54,266,2,8
b $9E5E Data block at 9E5E
@ $9E5E label=spr_075
B $9E5E,90,2,8
b $9EB8 Data block at 9EB8
@ $9EB8 label=spr_076
B $9EB8,252,2,8*31,2
b $9FB4 Data block at 9FB4
@ $9FB4 label=spr_077
B $9FB4,146,2,8
b $A046 Data block at A046
@ $A046 label=spr_078
B $A046,110,2,8*13,4
b $A0B4 Data block at A0B4
@ $A0B4 label=spr_079
B $A0B4,98,2,8
b $A116 Data block at A116
@ $A116 label=spr_080
B $A116,98,2,8
b $A178 Data block at A178
@ $A178 label=spr_081
B $A178,98,2,8
b $A1DA Data block at A1DA
@ $A1DA label=spr_082
B $A1DA,98,2,8
b $A23C Data block at A23C
@ $A23C label=spr_083
B $A23C,98,2,8
b $A29E Data block at A29E
@ $A29E label=spr_084
B $A29E,98,2,8
b $A300 Data block at A300
@ $A300 label=spr_085
B $A300,98,2,8
b $A362 Data block at A362
@ $A362 label=spr_086
B $A362,98,2,8
b $A3C4 Data block at A3C4
@ $A3C4 label=spr_087
B $A3C4,176,2,8*21,6
b $A474 Data block at A474
@ $A474 label=spr_088
B $A474,176,2,8*21,6
b $A524 Data block at A524
@ $A524 label=spr_089
B $A524,176,2,8*21,6
b $A5D4 Data block at A5D4
@ $A5D4 label=spr_090
B $A5D4,176,2,8*21,6
b $A684 Data block at A684
@ $A684 label=spr_091
B $A684,182,2,8*22,4
b $A73A Data block at A73A
@ $A73A label=spr_092
B $A73A,182,2,8*22,4
b $A7F0 Data block at A7F0
@ $A7F0 label=spr_093
B $A7F0,182,2,8*22,4
b $A8A6 Data block at A8A6
@ $A8A6 label=spr_094
B $A8A6,182,2,8*22,4
b $A95C Data block at A95C
@ $A95C label=spr_095
B $A95C,176,2,8*21,6
b $AA0C Data block at AA0C
@ $AA0C label=spr_096
B $AA0C,176,2,8*21,6
b $AABC Data block at AABC
@ $AABC label=spr_097
B $AABC,182,2,8*22,4
b $AB72 Data block at AB72
@ $AB72 label=spr_098
B $AB72,182,2,8*22,4
b $AC28 Data block at AC28
@ $AC28 label=spr_099
B $AC28,194,2,8
b $ACEA Data block at ACEA
@ $ACEA label=spr_100
B $ACEA,200,2,8*24,6
b $ADB2 Data block at ADB2
@ $ADB2 label=spr_101
B $ADB2,230,2,8*28,4
b $AE98 Data block at AE98
@ $AE98 label=spr_102
B $AE98,212,2,8*26,2
c $AF6C Routine at AF6C
@ $AF6C label=START
C $AF6C,3 location to clear
C $AF6F,3 # bytes to clear
C $AF72,3 FRAMES system variable (LSB)
c $AF7F location to clear
D $AF7F Used by the routine at #R$BA87.
@ $AF7F label=start_menu
C $AF82,3 # bytes to clear
c $AF88 for bit reversal & shifting
D $AF88 Used by the routine at #R$AF6C.
@ $AF88 label=main
C $AF8F,3 plyr_spr_1_scratchpad
C $AF92,2 5 lives to start
C $AF9D,1 seed_1 += seed_2
C $AF9E,1 update seed
C $AF9F,9 colour is bright yellow on black
C $AFA8,3 play tune
C $AFAB,3 randomise order of required objects
C $AFAE,6 randomise player start location
C $AFB4,3 randomise special object locations
c $AFB7 Routine at AFB7
D $AFB7 Used by the routine at #R$B074.
@ $AFB7 label=player_dies
c $AFBA Routine at AFBA
D $AFBA Used by the routine at #R$CABA.
@ $AFBA label=game_loop
c $AFBD Routine at AFBD
D $AFBD Used by the routine at #R$B074.
@ $AFBD label=onscreen_loop
C $AFC3,4 start of table
c $AFC7 init stack
D $AFC7 Used by the routine at #R$AFE4.
@ $AFC7 label=update_sprite_loop
C $AFD1,1 set return address
c $AFD5 sprite graphic to render
D $AFD5 Used by the routine at #R$BF11.
@ $AFD5 label=jump_to_upd_object
c $AFDB Routine at AFDB
D $AFDB Used by the routines at #R$B566, #R$B9CC, #R$CA17 and #R$CF62.
@ $AFDB label=jump_to_tbl_entry
C $AFDD,1 word offset
C $AFDE,1 get ptr jump entry
C $AFE2,1 HL=jump address
C $AFE3,1 go
c $AFE4 Routine at AFE4
@ $AFE4 label=ret_from_tbl_jp
C $AFEB,6 update seed #3
C $AFF1,2 next sprite to render
C $AFF6,4 end of table
C $AFFA,2 past end of table?
C $AFFC,2 yes, exit
C $AFFE,2 loop
c $B000 Routine at B000
D $B000 Used by the routine at #R$AFE4.
@ $B000 label=loc_B000
C $B013,2 update special objects table next time
C $B01B,3 builds a list of screen objects
C $B01E,6 renders above list
C $B024,1 any blocks rising?
C $B025,8 yes, play audio
C $B02D,2 calculate delay loop value
c $B035 Routine at B035
D $B035 Used by the routine at #R$B038.
@ $B035 label=game_delay
c $B038 Routine at B038
@ $B038 label=delay_loop
c $B03F Routine at B03F
D $B03F Used by the routine at #R$B000.
@ $B03F label=no_delay
C $B042,1 rendered before?
C $B043,2 yes, skip
C $B045,1 reset flag
C $B049,3 attribute
C $B04C,3 set screen colour
C $B04F,31 inventory
C $B06E,6 copy to display
c $B074 Routine at B074
D $B074 Used by the routine at #R$B03F.
@ $B074 label=loc_B074
C $B075,7 clear
C $B07C,3 player sprite half
C $B07F,3 player other sprite half
C $B082,6 both null? yes, lose a life
c $B088 Routine at B088
D $B088 Used by the routine at #R$B03F.
@ $B088 label=reset_objs_wipe_flag
C $B088,2 max #objects in draw table
C $B08A,3 object size
C $B08D,3 offset to flags
c $B090 reset flag=???
@ $B090 label=loc_B090
C $B092,1 next entry
C $B093,3 loop until done
b $B096 Data block at B096
@ $B096 label=upd_sprite_jmp_tbl
W $B096,2,2 No Update
W $B098,2,2 (unused)
W $B09A,2,2 stone arch (near side)
W $B09C,2,2 stone arch (far side)
W $B09E,2,2 tree arch (near side)
W $B0A0,2,2 tree arch (far side)
W $B0A2,2,2 rock
W $B0A4,2,2 block
W $B0A6,2,2 portcullis (stationary)
W $B0A8,2,2 portcullis (moving)
W $B0AA,2,2 bricks
W $B0AC,2,2 more bricks
W $B0AE,2,2 even more bricks
W $B0B0,6,2
W $B0B6,2,2 human legs
W $B0B8,10,2
W $B0C2,2,2 gargoyle
W $B0C4,2,2 spikes
W $B0C6,12,2
W $B0D2,2,2 guard (moving NSEW) (top half)
W $B0D4,2,2
W $B0D6,2,2 player (top half)
W $B0D8,30,2
W $B0F6,2,2 wulf legs
W $B0F8,10,2
W $B102,2,2 block (moving EW)
W $B104,2,2 block (moving NS)
W $B106,12,2
W $B112,2,2 another block
W $B114,2,2 spiked ball
W $B116,2,2 player (wulf top half)
W $B118,30,2
W $B136,2,2 ghost
W $B138,6,2
W $B13E,2,2 table
W $B140,2,2 chest
W $B142,2,2 fire (EW)
W $B144,2,2 fire (EW)
W $B146,2,2 sun
W $B148,2,2 moon
W $B14A,2,2 frame (left)
W $B14C,2,2 block (dropping)
W $B14E,2,2 human/wulf transform
W $B150,6,2
W $B156,2,2 diamond
W $B158,2,2 poison
W $B15A,2,2 boot
W $B15C,2,2 chalice
W $B15E,2,2 cup
W $B160,2,2 bottle
W $B162,2,2 crystal ball
W $B164,2,2 extra life
W $B166,2,2 special object (diamond)
W $B168,2,2 " (poison)
W $B16A,2,2 " (boot)
W $B16C,2,2 " (chalice)
W $B16E,2,2 " (cup)
W $B170,2,2 " (bottle)
W $B172,2,2 " (crytsal ball)
W $B174,2,2 final sparkles in cauldron
W $B176,2,2 death sparkles
W $B178,12,2
W $B184,2,2 last death sparkle
W $B186,2,2 player appears sparkles
W $B188,12,2
W $B194,2,2 last player appears sparkle
W $B196,2,2 tree wall
W $B198,4,2
W $B19C,2,2 sparkles in the cauldron room at end of game
W $B19E,18,2
W $B1B0,2,2 cauldron (bottom)
W $B1B2,2,2 cauldron (top)
W $B1B4,2,2 block (collapsing)
W $B1B6,2,2 guard & wizard (bottom half)
W $B1B8,10,2
W $B1C2,2,2 guard (EW) (top half)
W $B1C4,14,2
W $B1D2,2,2 wizard (top half)
W $B1D4,2,2
W $B1D6,2,2 cauldron bubbles
W $B1D8,6,2
W $B1DE,2,2 repel spell
W $B1E0,6,2
W $B1E6,2,2 diamond
W $B1E8,2,2 poison
W $B1EA,2,2 boot
W $B1EC,2,2 chalice
W $B1EE,2,2 cup
W $B1F0,2,2 bottle
W $B1F2,2,2 crystal ball
W $B1F4,2,2 extra life
W $B1F6,2,2 fire (stationary) (not used)
W $B1F8,2,2 fire (stationary) (not used)
W $B1FA,2,2 ball up/down
W $B1FC,2,2 ball up/down
W $B1FE,2,2 fire (NS)
W $B200,2,2 fire (NS)
W $B202,2,2 ball (bouncing around)
W $B204,2,2
W $B206,2,2 death sparkles
W $B208,2,2 last obj in cauldron sparkle
W $B20A,2,2
W $B20C,2,2 last obj in cauldron sparkle
b $B20E Audio Tunes
@ $B20E label=start_game_tune
B $B20E,10,8,2
b $B218 Data block at B218
@ $B218 label=game_over_tune
B $B218,33,8*4,1
b $B239 Data block at B239
@ $B239 label=game_complete_tune
B $B239,26,8*3,2
b $B253 Data block at B253
@ $B253 label=menu_tune
B $B253,99,8*12,3
c $B2B6 Routine at B2B6
D $B2B6 Used by the routine at #R$BD23.
@ $B2B6 label=play_audio_wait_key
c $B2BE Routine at B2BE
D $B2BE Used by the routines at #R$B2C5 and #R$BA87.
@ $B2BE label=play_audio_until_keypress
c $B2C5 audio data
D $B2C5 Used by the routine at #R$B2BE.
@ $B2C5 label=loc_B2C5
C $B2C6,2 done?
C $B2C8,7 yes, exit
c $B2CF Routine at B2CF
D $B2CF Used by the routines at #R$AF88 and #R$BAAB.
@ $B2CF label=play_audio
C $B2CF,1 audio data byte
C $B2D0,2 done?
C $B2D2,7 yes, return
c $B2D9 Routine at B2D9
D $B2D9 Used by the routines at #R$B2C5 and #R$B2CF.
@ $B2D9 label=end_audio
c $B2DA Routine at B2DA
D $B2DA Used by the routines at #R$B2C5 and #R$B2CF.
@ $B2DA label=play_note
C $B2DA,2 note
C $B2E1,1 HL=2A
C $B2E2,3 HL=3A
C $B2E5,3 frequency table
C $B2E8,1 ptr to entry
C $B2E9,1 loop cnt LSB
C $B2EB,1 loop cnt MSB
C $B2ED,1 duration LSB
C $B2F0,1 note & duration MSB
C $B2F5,1 duration MSB
C $B2F8,1 HL,DE=duration LSB
c $B2F9 Routine at B2F9
@ $B2F9 label=calc_duration
C $B2FD,2 calc 16-bit duration (HL)
c $B2FF Routine at B2FF
D $B2FF Used by the routine at #R$B2F9.
@ $B2FF label=loc_B2FF
c $B300 Routine at B300
D $B300 Used by the routine at #R$B30F.
@ $B300 label=loc_B300
c $B304 Routine at B304
@ $B304 label=loc_B304
c $B30F Routine at B30F
@ $B30F label=loc_B30F
c $B31C Routine at B31C
D $B31C Used by the routine at #R$B2DA.
@ $B31C label=snd_delay
c $B327 Routine at B327
D $B327 Used by the routine at #R$B328.
@ $B327 label=loc_B327
c $B328 Routine at B328
@ $B328 label=loc_B328
b $B332 Frequency Table?
@ $B332 label=freq_tbl
B $B332,183,3
c $B3E9 block (62)
D $B3E9 Used by the routine at #R$C4AA.
@ $B3E9 label=audio_B3E9
C $B3F1,3 ??? table
C $B3F4,1 ptr entry
b $B3FB Data block at B3FB
@ $B3FB label=byte_B3FB
B $B3FB,8,8
c $B403 eg. death sparkles
D $B403 Used by the routines at #R$BF31 and #R$C2AD.
@ $B403 label=audio_B403
C $B403,3 sprite index
C $B40A,3 location in ROM
c $B40D Routine at B40D
@ $B40D label=loc_B40D
c $B419 eg. player appears sparkles
D $B419 Used by the routine at #R$BEFE.
@ $B419 label=audio_B419
C $B419,3 player sprite graphic no.
c $B423 bits 4:0 only
@ $B423 label=loc_B423
C $B425,1 bits 6:2 only
c $B42E ball bouncing around
D $B42E Used by the routines at #R$B63C, #R$B82F and #R$B876.
@ $B42E label=audio_B42E
c $B433 Routine at B433
@ $B433 label=loc_B433
c $B441 jumping
D $B441 Used by the routine at #R$C948.
@ $B441 label=audio_B441
C $B441,2 ' '
c $B443 Routine at B443
@ $B443 label=loc_B443
c $B451 eg. dropping block, spiked ball drop, ball up/down
D $B451 Used by the routines at #R$B683, #R$B7CD, #R$B876 and #R$C9CD.
@ $B451 label=audio_B451
C $B451,3 Z
c $B454 eg. rising blocks
D $B454 Used by the routines at #R$B000, #R$B45D, #R$B462 and #R$B467.
@ $B454 label=audio_B454
c $B45D block, fire movng (EW)
D $B45D Used by the routines at #R$B6B9 and #R$B7FE.
@ $B45D label=audio_B45D
C $B45D,3 X
c $B462 fire, block moving (NS)
D $B462 Used by the routines at #R$B6B1 and #R$B820.
@ $B462 label=audio_B462
C $B462,3 Y
c $B467 eg. special objects, ghost, portcullis (up)
D $B467 Used by the routines at #R$C232, #R$C5DD and #R$C6EA.
@ $B467 label=audio_B467
c $B472 human/wulf transform
D $B472 Used by the routine at #R$C349.
@ $B472 label=audio_B472
c $B47D Routine at B47D
@ $B47D label=loc_B47D
C $B47E,2 'U'
c $B489 portcullis
D $B489 Used by the routine at #R$C6BD.
@ $B489 label=audio_B489
c $B495 Routine at B495
@ $B495 label=loc_B495
c $B4A3 Routine at B4A3
D $B4A3 Used by the routines at #R$BD6C, #R$C041 and #R$C1AB.
@ $B4A3 label=toggle_audio_hw_x16
c $B4A8 Routine at B4A8
D $B4A8 Used by the routines at #R$D519 and #R$D52E.
@ $B4A8 label=toggle_audio_hw_x24
c $B4AD graphic_no
D $B4AD Used by the routine at #R$B6F9.
@ $B4AD label=audio_guard_wizard
C $B4B0,2 even?
C $B4B2,1 no, exit
c $B4BB eg. walking graphic_no
D $B4BB Used by the routine at #R$C97A.
@ $B4BB label=audio_B4BB
c $B4C1 Routine at B4C1
D $B4C1 Used by the routine at #R$C8FD.
@ $B4C1 label=audio_B4C1
c $B4C6 Routine at B4C6
D $B4C6 Used by the routine at #R$B4AD.
@ $B4C6 label=loc_B4C6
C $B4CA,3 Z
c $B4D1 X
D $B4D1 Used by the routine at #R$B4C6.
@ $B4D1 label=loc_B4D1
C $B4D7,3 Y
c $B4E6 Routine at B4E6
D $B4E6 Used by the routines at #R$B3E9, #R$B40D, #R$B433, #R$B454, #R$B495, #R$B4A3 and #R$B4A8.
@ $B4E6 label=toggle_audio_hw_xC
c $B4ED Routine at B4ED
D $B4ED Used by the routines at #R$B423, #R$B443, #R$B47D and #R$B4E6.
@ $B4ED label=toggle_audio_hw
C $B4ED,2 EAR output
C $B4EF,2 enable
c $B4F2 Routine at B4F2
@ $B4F2 label=loc_B4F2
C $B4F5,1 MIC output
C $B4F6,2 enable (disable EAR)
c $B4F9 Routine at B4F9
@ $B4F9 label=loc_B4F9
c $B4FD Check for intersecting objects
D $B4FD Output:C flag set if any other object intersects with this one
@ $B4FD label=do_any_objs_intersect
C $B506,2 max objects
C $B508,2 dX=0
C $B50A,1 dY=0
C $B50B,1 dZ=0
C $B50C,4 ignore this object
c $B510 Routine at B510
D $B510 Used by the routine at #R$B52E.
@ $B510 label=loc_B510
C $B513,5 no, skip
C $B518,5 no, skip
C $B51D,5 no, skip
C $B522,2 no, skip
c $B524 Routine at B524
D $B524 Used by the routine at #R$B52E.
@ $B524 label=loc_B524
C $B529,4 reset ignore flag
C $B52D,1 C flag set indicates intersection
c $B52E entry size
D $B52E Used by the routine at #R$B510.
@ $B52E label=loc_B52E
C $B531,2 next entry
C $B533,5 loop through object table
c $B538 Routine at B538
D $B538 Used by the routines at #R$B510, #R$CBA0, #R$CBEF and #R$CC3E.
@ $B538 label=is_object_not_ignored
C $B538,3 graphic no.
C $B53B,1 null?
C $B53C,1 yes, exit
C $B53D,3 flags
C $B541,2 test bit 1
c $B544 Routine at B544
D $B544 Used by the routine at #R$AF88.
@ $B544 label=shuffle_objects_required
C $B54B,1 random 4-7
c $B54C 14 items (13 swaps)
D $B54C Used by the routine at #R$B555.
@ $B54C label=loc_B54C
c $B555 Routine at B555
@ $B555 label=loc_B555
c $B566 sparkles from the blocks in the cauldron room at the end of the game
@ $B566 label=upd_131_to_133
C $B569,3 Z
C $B56C,2 <164?
C $B56E,2 no, go
C $B570,4 dZ=3
C $B574,3 X
C $B57A,1 X bit7->bit0
C $B57B,3 Y
C $B57E,2 Y bit7
C $B581,1 bit0->bit1, bit7->bit1
C $B585,6 jump table
b $B58B Data block at B58B
@ $B58B label=dX_dY_tbl
W $B58B,2,2 +4, -4
W $B58D,2,2 +4, +4
W $B58F,2,2 -4, -4
W $B591,2,2 -4, +4
c $B593 +4, -4
@ $B593 label=p4_m4
c $B596 Routine at B596
D $B596 Used by the routines at #R$B5B5, #R$B5BA and #R$B5BF.
@ $B596 label=save_dX_dY
C $B596,3 dX
C $B599,3 dY
C $B59F,2 rnd 0-3
C $B5A1,2 >0, skip
C $B5A3,1 =1
c $B5A4 rnd twinkly sprite
D $B5A4 Used by the routine at #R$B596.
@ $B5A4 label=loc_B5A4
C $B5A6,3 set graphic no.
c $B5A9 Z
D $B5A9 Used by the routine at #R$B5E3.
@ $B5A9 label=loc_B5A9
c $B5AF Routine at B5AF
D $B5AF Used by the routines at #R$B6EF and #R$C4AA.
@ $B5AF label=dec_dZ_wipe_and_draw
c $B5B5 +4, +4
@ $B5B5 label=p4_p4
c $B5BA -4, -4
@ $B5BA label=m4_m4
c $B5BF -4, +4
@ $B5BF label=m4_p4
c $B5C4 plyr_spr_1 X
D $B5C4 Used by the routine at #R$B566.
@ $B5C4 label=loc_B5C4
C $B5C7,3 object X
C $B5CD,2 abs(delta x)
c $B5CF less than 6?
D $B5CF Used by the routine at #R$B5C4.
@ $B5CF label=loc_B5CF
C $B5D1,2 no, skip
C $B5D3,3 plyr_spr_1 Y
C $B5D6,3 object Y
C $B5DC,2 abs(delta y)
c $B5DE less than 6?
D $B5DE Used by the routine at #R$B5CF.
@ $B5DE label=loc_B5DE
C $B5E0,3 yes, exit
c $B5E3 fatal if it hits player
D $B5E3 Used by the routine at #R$B5CF.
@ $B5E3 label=loc_B5E3
C $B5E7,4 ignore object in 3D calculations
C $B5EB,4 dZ=1
C $B5EF,3 dX,dY=4
c $B5F7 Routine at B5F7
D $B5F7 Used by the routines at #R$B2BE, #R$BA87, #R$BA9E, #R$BD23, #R$BD6C, #R$D03E, #R$D046, #R$D09C, #R$D0A9, #R$D0C8, #R$D0F6, #R$D0FF, #R$D108, #R$D111, #R$D50E, #R$D519, #R$D525 and #R$D52E.
@ $B5F7 label=read_port
C $B5F7,2 select upper address
C $B5F9,2 read status
C $B5FB,1 positive logic
C $B5FC,2 mask off undefined bits
c $B5FF ball (bouncing around)
D $B5FF - bounces towards wulf
D $B5FF - bounces away from sabreman
D $B5FF adj(-4,-8)
@ $B5FF label=upd_182_183
C $B602,3 dX
C $B605,3 dY
C $B609,3 dZ
C $B60C,7 tmp store
C $B613,3 preserve old dX
C $B616,3 preserve old dY
C $B619,5 plyr graphic_no
C $B61E,2 wulf?
C $B620,2 jr nc,___
C $B622,2 yes, skip
C $B624,2 jr,c___
c $B626 self-modifying code
D $B626 Used by the routine at #R$B5FF.
@ $B626 label=loc_B626
C $B629,3 self-modifying code
C $B62C,16 plyr_spr_1 screen
c $B63C Z OOB?
D $B63C Used by the routine at #R$B626.
@ $B63C label=loc_B63C
C $B640,2 no, skip
C $B642,3 new dZ
C $B645,3 old dZ
C $B648,1 >=0?
C $B649,6 yes, skip
c $B64F random
D $B64F Used by the routine at #R$B63C.
@ $B64F label=loc_B64F
C $B655,3 plyr_spr_1 Y
C $B658,3 <objY?
c $B65D no, skip
@ $B65D label=loc_B65D
C $B65F,2 towards player
c $B661 new dY
D $B661 Used by the routine at #R$B65D.
@ $B661 label=loc_B661
C $B664,4 new dX=0
c $B668 Routine at B668
D $B668 Used by the routines at #R$B63C and #R$B67A.
@ $B668 label=loc_B668
c $B66E plyr_spr_1 X
D $B66E Used by the routine at #R$B64F.
@ $B66E label=loc_B66E
C $B671,3 < objX?
c $B676 Routine at B676
@ $B676 label=loc_B676
C $B678,2 towards player
c $B67A new dX
D $B67A Used by the routine at #R$B676.
@ $B67A label=loc_B67A
C $B67D,4 new dY=0
c $B683 block (dropping)
@ $B683 label=upd_91
C $B686,4 triggered?
C $B68A,1 no, exit
C $B68B,4 reset triggered
C $B68F,4 dZ=0
C $B696,4 Z OOB?
C $B69A,5 yes, skip
c $B69F Routine at B69F
D $B69F Used by the routine at #R$B683.
@ $B69F label=loc_B69F
c $B6A2 collapsing block
@ $B6A2 label=upd_143
C $B6A5,4 triggered?
C $B6A9,1 no, return
C $B6AA,4 graphic_no = sparkles
c $B6B1 block (moving NS)
@ $B6B1 label=upd_55
C $B6B4,3 IX+2,IX+10 (Y,dY)
c $B6B9 block (moving EW)
@ $B6B9 label=upd_54
C $B6BC,3 IX+1,IX+9 (X,dX)
c $B6BF Routine at B6BF
D $B6BF Used by the routine at #R$B6B1.
@ $B6BF label=loc_B6BF
C $B6C0,4 IX+2/1
C $B6C4,3 IX+10/9
C $B6C7,20 adj(-8,-16)
c $B6DB Routine at B6DB
D $B6DB Used by the routine at #R$B6BF.
@ $B6DB label=loc_B6DB
c $B6DE modified code - X/Y
@ $B6DE label=loc_B6DE
c $B6EF modified code - dX/dY
D $B6EF Used by the routine at #R$B6DE.
@ $B6EF label=loc_B6EF
C $B6F2,4 pre-load dZ=1 (no falling)
c $B6F9 guard and wizard (bottom half)
@ $B6F9 label=upd_144_to_149_152_to_157
C $B6FC,3 dX
C $B6FF,3 dX & dY both 0?
C $B702,1 yes, exit
C $B706,3 dX
C $B709,3 dX<dY?
C $B70C,2 yes, go
C $B70E,2 dX<0?
C $B710,2 yes, go
C $B712,4 graphic_no
c $B716 clr hflip
D $B716 Used by the routine at #R$B720.
@ $B716 label=loc_B716
c $B71A Routine at B71A
D $B71A Used by the routine at #R$B730.
@ $B71A label=loc_B71A
c $B720 graphic_no
D $B720 Used by the routine at #R$B6F9.
@ $B720 label=loc_B720
c $B726 dY<0?
D $B726 Used by the routine at #R$B6F9.
@ $B726 label=loc_B726
C $B72A,2 no, go
C $B72C,4 graphic_no
c $B730 set hflip
D $B730 Used by the routine at #R$B736.
@ $B730 label=loc_B730
c $B736 graphic_no
D $B736 Used by the routine at #R$B726.
@ $B736 label=loc_B736
c $B73C guard (EW)
@ $B73C label=upd_150_151
C $B73F,4 E or W?
C $B745,4 E, skip
c $B749 dX=+/-2
D $B749 Used by the routine at #R$B73C.
@ $B749 label=loc_B749
C $B74C,3 and for botton half
C $B755,4 X OOB?
C $B759,5 no, skip
C $B75E,2 toggle direction
c $B763 X
D $B763 Used by the routine at #R$B749.
@ $B763 label=loc_B763
C $B766,3 copy to bottom half
c $B76C Routine at B76C
D $B76C Used by the routines at #R$B749 and #R$B9A5.
@ $B76C label=set_guard_wizard_sprite
C $B76C,3 dX
C $B76F,3 dY - both zero?
C $B772,1 yes, exit
C $B773,3 dX
C $B776,3 dX<dY?
C $B779,2 yes, go
C $B77B,2 dX<0?
C $B77D,2 yes, go
C $B77F,4 sprite 31/159
c $B783 clear hflip
D $B783 Used by the routine at #R$B788.
@ $B783 label=loc_B783
c $B788 sprite 30/158
D $B788 Used by the routine at #R$B76C.
@ $B788 label=loc_B788
c $B78E dY<0?
D $B78E Used by the routine at #R$B76C.
@ $B78E label=loc_B78E
C $B792,2 no, go
C $B794,4 sprite 31/139
c $B798 set hflip
D $B798 Used by the routine at #R$B79D.
@ $B798 label=loc_B798
c $B79D sprite 30/158
D $B79D Used by the routine at #R$B78E.
@ $B79D label=loc_B79D
c $B7A3 gargoyle
@ $B7A3 label=upd_22
C $B7A6,3 adj(-7,-12)
c $B7A9 spiked ball
@ $B7A9 label=upd_63
C $B7B4,4 is this one dropping?
C $B7B8,6 yes, go
C $B7BE,1 is another ball already dropping?
C $B7BF,1 yes, exit
C $B7C3,2 1-in-16 chance
C $B7C6,4 flag this one as dropping
C $B7CA,2 flag a spike ball dropping
c $B7CD Routine at B7CD
D $B7CD Used by the routine at #R$B7A9.
@ $B7CD label=spiked_ball_drop
C $B7D0,4 Z OOB? (hit the floor?)
C $B7D4,5 yes, go
c $B7D9 Routine at B7D9
D $B7D9 Used by the routine at #R$B7DC.
@ $B7D9 label=draw_spiked_ball
c $B7DC flag this no longer dropping
D $B7DC Used by the routine at #R$B7CD.
@ $B7DC label=loc_B7DC
C $B7E3,2 flag no spiked balls dropping
c $B7E7 spikes
@ $B7E7 label=upd_23
c $B7ED fire (moving EW)
@ $B7ED label=upd_86_87
C $B7F0,4 pre-load dZ=1
C $B7F4,4 moving east?
C $B7FA,4 yes, skip
c $B7FE dX=+/-2
D $B7FE Used by the routine at #R$B7ED.
@ $B7FE label=loc_B7FE
C $B807,4 X OOB?
c $B80F fire (moving NS)
@ $B80F label=upd_180_181
C $B812,4 dZ=1
C $B816,4 moving north?
C $B81C,4 yes, skip
c $B820 dY=+/-2
D $B820 Used by the routine at #R$B80F.
@ $B820 label=loc_B820
C $B829,4 Y OOB?
c $B82F Routine at B82F
D $B82F Used by the routine at #R$B7FE.
@ $B82F label=loc_B82F
C $B831,3 toggle bit 1/2
c $B83A Routine at B83A
D $B83A Used by the routine at #R$B82F.
@ $B83A label=loc_B83A
c $B83F fire (stationary) (not used)
@ $B83F label=upd_176_177
C $B84B,2 '@'
C $B84D,3 randomise hflip
c $B856 Routine at B856
D $B856 Used by the routines at #R$B668, #R$B763, #R$B83A, #R$B892, #R$B9A5 and #R$C5FD.
@ $B856 label=set_deadly_wipe_and_draw_flags
c $B85C Routine at B85C
D $B85C Used by the routines at #R$B7A3, #R$B7A9, #R$B7E7 and #R$B856.
@ $B85C label=set_both_deadly_flags
C $B85F,2 fatal if you hit it, it hits you
c $B865 ball up/down
D $B865 adjust (-4,-8)
@ $B865 label=upd_178_179
C $B86B,1 bouncing?
C $B86C,2 yes, skip
C $B86E,3 Z
C $B871,2 calc bounce height
c $B876 toggle 178/179
D $B876 Used by the routine at #R$B865.
@ $B876 label=loc_B876
C $B87C,4 dir=up?
C $B880,5 yes, skip
C $B885,4 Z OOB?
C $B889,2 no, skip
C $B88B,4 set dir=up
c $B892 Routine at B892
D $B892 Used by the routines at #R$B876 and #R$B894.
@ $B892 label=loc_B892
c $B894 dZ=3
D $B894 Used by the routine at #R$B876.
@ $B894 label=ball_up
C $B89E,3 Z < ball_bounce_height?
C $B8A1,2 yes, go
C $B8A3,4 set dir=down
c $B8A9 Routine at B8A9
D $B8A9 Used by the routine at #R$B000.
@ $B8A9 label=init_cauldron_bubbles
C $B8A9,3 plyr_spr_1 screen
C $B8AC,2 cauldron room?
C $B8AE,1 no, exit
C $B8AF,3 special_objs_here[1]
C $B8B2,1 graphic no.
C $B8B3,1 null?
C $B8B4,1 no, return
C $B8BA,3 source data
C $B8BD,3 18 bytes to copy
C $B8C1,2 save destination
C $B8C3,2 copy
b $B8C8 Data block at B8C8
@ $B8C8 label=cauldron_bubbles
B $B8C8,18,8*2,2
c $B8DA even more sparkles (showing next object required)
@ $B8DA label=upd_160_to_163
C $B8E0,1 null?
C $B8E1,3 no, skip
C $B8E4,4 ignore in 3D calcs
C $B8EE,3 Z
C $B8F3,4 dZ=2
C $B8F9,4 dZ=1
C $B8FD,3 plyr_spr_1 (legs) graphic_no
C $B900,2 '0'
C $B902,2 wulf?
C $B904,2 yes, go
C $B906,3 graphic_no
C $B913,3 show next object required
c $B916 Routine at B916
D $B916 Used by the routines at #R$B8DA, #R$B919 and #R$B923.
@ $B916 label=loc_B916
c $B919 if wulf, no reveal of next object
D $B919 graphic_no
@ $B919 label=loc_B919
C $B91D,4 don't ignore in 3D calcs
c $B923 special objs when 1st being put into cauldron
@ $B923 label=upd_168_to_175
C $B926,4 graphic_no (sparkles)
c $B92C repel spell
@ $B92C label=upd_164_to_167
C $B92F,3 object screen
C $B932,2 cauldron room?
C $B934,5 yes, go
C $B939,2 near arch?
C $B93B,2 no, go
C $B93D,3 dX,dY=1
c $B942 dX,dY=4
D $B942 Used by the routine at #R$B92C.
@ $B942 label=loc_B942
c $B945 Routine at B945
D $B945 Used by the routine at #R$B92C.
@ $B945 label=loc_B945
C $B94E,3 object screen
C $B951,2 cauldron room?
C $B953,2 no, skip
C $B955,5 plyr_spr_1 graphic_no
C $B95A,2 '@'
c $B95E final sparkles in cauldron
D $B95E invalid
@ $B95E label=upd_111
c $B962 Routine at B962
D $B962 Used by the routine at #R$B945.
@ $B962 label=loc_B962
c $B965 Routine at B965
D $B965 Used by the routines at #R$B5E3 and #R$B945.
@ $B965 label=move_towards_plyr
C $B965,3 plyr_spr_1 X
C $B968,3 object X
C $B96B,1 -plyrX
C $B96C,1 plyr_spr_1 Y
C $B96D,1 1or4
C $B96E,5 plyr E? yes, go
c $B973 dX (towards player)
D $B973 Used by the routine at #R$B965.
@ $B973 label=loc_B973
C $B976,3 object Y
C $B979,1 -plyrY
C $B97A,1 plyrZ
C $B97B,1 1or4
C $B97C,5 plyr N? yes, go
c $B981 dY (towards player)
D $B981 Used by the routine at #R$B973.
@ $B981 label=loc_B981
c $B985 Routine at B985
D $B985 Used by the routines at #R$B668, #R$B83A, #R$B83F, #R$B876 and #R$C5FD.
@ $B985 label=toggle_next_prev_sprite
C $B985,3 graphic_no
C $B988,2 toggle next/prev sprite
c $B98C graphic no.
D $B98C Used by the routines at #R$B8DA and #R$B945.
@ $B98C label=next_graphic_no_mod_4
C $B990,2 mask off low 2 bits
C $B995,2 inc low 2 bits
C $B997,1 mask them back in
c $B998 store new graphic no
D $B998 Used by the routine at #R$B985.
@ $B998 label=save_graphic_no
c $B99C cauldron (bottom)
@ $B99C label=upd_141
c $B99F cauldron (top)
D $B99F +12, -24
@ $B99F label=upd_142
c $B9A5 guard and wizard (top half)
@ $B9A5 label=upd_30_31_158_159
C $B9AE,3 dX
C $B9B1,3 next obj dX
C $B9B4,3 dY
C $B9B7,3 next obj dY
C $B9BA,3 X
C $B9BD,3 copy to next obj X
C $B9C0,3 Y
C $B9C3,3 copy to next obj Y
c $B9CC Routine at B9CC
D $B9CC Used by the routine at #R$B9A5.
@ $B9CC label=move_guard_wizard_NSEW
C $B9CC,6 jump table
C $B9D2,2 direction (N/S/E/W)
b $B9D8 Data block at B9D8
@ $B9D8 label=guard_NSEW_tbl
W $B9D8,8,2
c $B9E0 Routine at B9E0
@ $B9E0 label=guard_W
C $B9E0,3 dY=0, dX=-2
C $B9E3,4 X OOB?
C $B9E7,1 no, exit
C $B9E8,3 dY=2, dX=0
c $B9EB direction
D $B9EB Used by the routines at #R$B9FB, #R$BA08 and #R$BA15.
@ $B9EB label=next_guard_dir
C $B9F0,2 relevant bits
C $B9F6,1 inc lowest 2 bits (mod 4)
c $B9FB Routine at B9FB
@ $B9FB label=guard_N
C $B9FB,3 dY=+2, dX=0
C $B9FE,4 Y OOB?
C $BA02,1 no, exit
C $BA03,3 dY=0, dX=+2
c $BA08 dY=0, dX=+2
@ $BA08 label=guard_E
C $BA0B,4 X OOB?
C $BA0F,1 no, exit
C $BA10,3 dY=-2, dX=0
c $BA15 Routine at BA15
@ $BA15 label=guard_S
C $BA15,3 dY=-2, dX=0
C $BA18,4 Y OOB?
C $BA1C,1 no, exit
C $BA1D,3 dY=0, dX=-2
c $BA22 Routine at BA22
D $BA22 Used by the routines at #R$B5DE, #R$C419 and #R$D12A.
@ $BA22 label=game_over
c $BA29 Routine at BA29
D $BA29 Used by the routine at #R$BAAB.
@ $BA29 label=loc_BA29
C $BA2F,4 game over status screen
C $BA33,11 game over status screen
C $BA3E,6 video buffer address
C $BA44,2 1 BCD digit pair
C $BA64,1 ptr to rating text entry
C $BA67,1 DE=addr of rating string
C $BA72,2 less than 10?
C $BA74,2 yes, skip
C $BA76,2 convert to BCD
C $BA78,1 store BCD
c $BA79 video buffer address
D $BA79 Used by the routine at #R$BA29.
@ $BA79 label=loc_BA79
C $BA7C,2 1 BCD digit pair
c $BA87 Routine at BA87
@ $BA87 label=loc_BA87
C $BA8B,8 wait for key release
C $BA93,2 how long to wait
N $BA98 the stack has at least 1 return address on it but the main game loop re-init's the stack each iteration
c $BA9B Routine at BA9B
D $BA9B Used by the routines at #R$BA87 and #R$BAAB.
@ $BA9B label=wait_for_key_press
c $BA9E Routine at BA9E
@ $BA9E label=loc_BA9E
C $BAA6,5 loop B times
c $BAAB Routine at BAAB
D $BAAB Used by the routine at #R$BA22.
@ $BAAB label=game_complete_msg
b $BAD2 Data block at BAD2
@ $BAD2 label=complete_colours
B $BAD2,6,6
b $BAD8 Data block at BAD8
@ $BAD8 label=complete_xy
B $BAD8,12,2
b $BAE4 "THE POTION CASTS"
@ $BAE4 label=the_potion_casts
B $BAE4,16,8
N $BAF4 "ITS MAGIC STRONG"
B $BAF4,16,8
N $BB04 "ALL EVIL MUST BEWARE"
B $BB04,20,8*2,4
N $BB18 "THE SPELL HAS BROKEN"
B $BB18,20,8*2,4
N $BB2C "YOU ARE FREE"
B $BB2C,12,8,4
N $BB38 "GO FORTH TO MIRE MARE"
B $BB38,20,8*2,4
b $BB4C Game Over status screen
@ $BB4C label=gameover_colours
B $BB4C,6,6
b $BB52 Data block at BB52
@ $BB52 label=gameover_xy
B $BB52,12,8,4
b $BB5E "GAME  OVER"
@ $BB5E label=a_GAME_OVER
B $BB5E,10,8,2
N $BB68 "TIME    DAYS"
B $BB68,12,8,4
N $BB74 "PERCENTAGE OF QUEST"
B $BB74,19,8*2,3
N $BB87 "COMPLETED     %"
B $BB87,15,8,7
N $BB96 "CHARMS COLLECTED"
B $BB96,19,8*2,3
N $BBA9 "OVERALL RATING"
B $BBA9,14,8,6
b $BBB7 Data block at BBB7
@ $BBB7 label=rating_tbl
B $BBB7,16,8
b $BBC7 Data block at BBC7
@ $BBC7 label=a_POOR
B $BBC7,8,8
b $BBCF Data block at BBCF
@ $BBCF label=a_AVERAGE
B $BBCF,9,8,1
b $BBD8 Data block at BBD8
@ $BBD8 label=a_FAIR
B $BBD8,8,8
b $BBE0 Data block at BBE0
@ $BBE0 label=a_GOOD
B $BBE0,8,8
b $BBE8 Data block at BBE8
@ $BBE8 label=a_EXCELLENT
B $BBE8,10,8,2
b $BBF2 Data block at BBF2
@ $BBF2 label=a_MARVELLOUS
B $BBF2,11,8,3
b $BBFD Data block at BBFD
@ $BBFD label=a_HERO
B $BBFD,8,8
b $BC05 Data block at BC05
@ $BC05 label=a_ADVENTURER
B $BC05,11,8,3
c $BC10 Routine at BC10
D $BC10 Used by the routine at #R$BA29.
@ $BC10 label=calc_and_display_percent
C $BC10,2 zero room count
C $BC12,3 B=8 bits/byte
c $BC18 Routine at BC18
D $BC18 Used by the routine at #R$BC1F.
@ $BC18 label=count_screens
c $BC1B Routine at BC1B
D $BC1B Used by the routine at #R$BC1F.
@ $BC1B label=loc_BC1B
C $BC1E,1 room count
c $BC1F Routine at BC1F
D $BC1F Used by the routine at #R$BC1B.
@ $BC1F label=loc_BC1F
C $BC22,1 done all screens?
C $BC23,3 no, loop
C $BC26,1 -1? don't count 1st room?
C $BC27,6 store for ratings calculations
C $BC2D,2 x2
C $BC31,3 0.64102 * (128 + 14*2) = 99.999%
c $BC38 Routine at BC38
@ $BC38 label=loc_BC38
C $BC3D,2 calculate percentage complete (BCD)
C $BC3F,3 $A410*156 = $63FFD8+$28 = $640000
C $BC45,1 fix rounding to 100%
C $BC46,8 store least significant 2 BCD digits
C $BC4E,9 store most significant BCD digit
C $BC57,2 1 pair = 2 digits
C $BC5A,1 100%?
C $BC5B,2 no, skip
C $BC5D,1 2 pair = 4 digits
c $BC61 Routine at BC61
D $BC61 Used by the routine at #R$BC38.
@ $BC61 label=loc_BC61
C $BC62,1 skip over leading zero
c $BC66 Routine at BC66
D $BC66 Used by the routines at #R$B03F and #R$C419.
@ $BC66 label=print_days
C $BC66,11 (120,7)
C $BC71,9 attribute memory
c $BC7A Routine at BC7A
D $BC7A Used by the routine at #R$B03F.
@ $BC7A label=print_lives_gfx
C $BC7E,4 sprite index
C $BC82,4 clear flags
C $BC86,4 pixel X
C $BC8A,4 pixel Y
c $BCA3 Routine at BCA3
D $BCA3 Used by the routines at #R$B03F and #R$C1AB.
@ $BCA3 label=print_lives
C $BCA3,3 ptr number
C $BCA6,2 1 byte (2 BCD digits)
C $BCA8,6 screen buffer location
c $BCAE Prints a BCD number
D $BCAE Input:HL screen buffer address DE ptr number to print (BCD) B  number of bytes (BCD digit pairs)
@ $BCAE label=print_BCD_number
c $BCB6 get number
D $BCB6 Used by the routine at #R$BCC0.
@ $BCB6 label=loc_BCB6
C $BCBB,2 high digit
c $BCC0 get number
D $BCC0 Used by the routine at #R$BC38.
@ $BCC0 label=print_BCD_lsd
C $BCC1,2 low digit
C $BCC6,1 next byte address
C $BCC7,3 loop through all bytes
c $BCCA Routine at BCCA
D $BCCA Used by the routine at #R$B03F.
@ $BCCA label=display_day
C $BCCA,8 attribute
C $BCD2,2 bright on
C $BCDA,6 set print routine font
C $BCE0,3 screen location
b $BCE7 Data block at BCE7
@ $BCE7 label=day_txt
B $BCE7,5,5
b $BCEC Data block at BCEC
@ $BCEC label=day_font
B $BCEC,32,8
c $BD0C Routine at BD0C
D $BD0C Used by the routine at #R$AF88.
@ $BD0C label=do_menu_selection
C $BD13,2 # menu entries
c $BD15 reset flashing attribute
@ $BD15 label=loc_BD15
C $BD17,1 next menu colour entry
C $BD18,11 loop until done
c $BD23 Routine at BD23
D $BD23 Used by the routine at #R$BD6C.
@ $BD23 label=menu_loop
C $BD2C,2 1,2,3,4,5
C $BD31,1 store keybd status
C $BD38,2 '1' (keyboard)?
C $BD3A,2 no, skip
C $BD3C,2 mask off (bits 2,1)
c $BD3E '2' (Kempston Joystick)?
D $BD3E Used by the routine at #R$BD23.
@ $BD3E label=check_for_kempston_joystick
C $BD40,2 no, skip
C $BD42,2 mask off (bits 2,1)
C $BD44,2 set bit 1
c $BD46 '3' (Cursor Joystick)?
D $BD46 Used by the routine at #R$BD3E.
@ $BD46 label=check_for_cursor_joystick
C $BD48,2 no, skip
C $BD4A,2 mask off (bits 2,1)
C $BD4C,2 set bit 2
c $BD4E '4' (Interface II)?
D $BD4E Used by the routine at #R$BD46.
@ $BD4E label=check_for_interface_ii
C $BD50,2 no, skip
C $BD52,2 set bits 1,2
c $BD54 store
D $BD54 Used by the routine at #R$BD4E.
@ $BD54 label=check_for_directional_control
C $BD5A,2 '5' (directional control)?
C $BD5C,2 no, skip
C $BD5E,2 was pressed last time?
C $BD60,2 yes, skip
C $BD62,2 set debounce
C $BD67,2 toggle directional
c $BD6C Routine at BD6C
D $BD6C Used by the routines at #R$BD54 and #R$BD85.
@ $BD6C label=check_for_start_game
C $BD6F,1 changed input method?
C $BD70,3 yes
C $BD73,2 0,9,8,7,6
C $BD78,2 '0' (Start Game)?
C $BD7A,1 yes, exit
C $BD7E,1 remember when BASIC games did this?
c $BD85 Routine at BD85
D $BD85 Used by the routine at #R$BD54.
@ $BD85 label=clr_debounce
C $BD87,2 continue
c $BD89 Routine at BD89
D $BD89 Used by the routines at #R$BD15 and #R$BD6C.
@ $BD89 label=flash_menu
C $BD90,2 keybd/joystick bits only
C $BD9C,2 directional only
b $BDA2 colours
@ $BDA2 label=menu_colours
B $BDA2,8,8
b $BDAA XY positions
@ $BDAA label=menu_xy
B $BDAA,16,2
b $BDBA "KNIGHT LORE"
@ $BDBA label=menu_text
B $BDBA,11,8,3
N $BDC5 "1 KEYBOARD"
B $BDC5,10,8,2
N $BDCF "2 KEMPSTON JOYSTICK"
B $BDCF,19,8*2,3
N $BDE2 "3 CURSOR   JOYSTICK"
B $BDE2,19,8*2,3
N $BDF5 "4 INTERFACE II"
B $BDF5,14,8,6
N $BE03 "5 DIRECTIONAL CONTROL"
B $BE03,21,8*2,5
N $BE18 "0 START GAME"
B $BE18,12,8,4
N $BE24 "(c) 1984 A.C.G."
B $BE24,13,8,5
c $BE31 Routine at BE31
D $BE31 Used by the routine at #R$BEBF.
@ $BE31 label=print_text_single_colour
C $BE31,1 save Y,X
C $BE38,1 BC = Y,X
C $BE3E,1 HL = bitmap buffer address
c $BE45 Routine at BE45
D $BE45 Used by the routine at #R$BA29.
@ $BE45 label=print_text_std_font
c $BE4C Routine at BE4C
D $BE4C Used by the routine at #R$BCCA.
@ $BE4C label=print_text
C $BE52,1 HL = bitmap buffer address
C $BE53,1 attribute
C $BE55,1 ptr first character
c $BE56 Routine at BE56
D $BE56 Used by the routine at #R$BE31.
@ $BE56 label=loc_BE56
C $BE57,1 HL = Y,X
C $BE5D,1 HL = attribute memory address
c $BE5F Routine at BE5F
@ $BE5F label=loc_BE5F
C $BE60,1 next character
C $BE61,2 done?
C $BE63,3 yes, skip
C $BE66,7 display a character
C $BE6D,1 store attribute
C $BE6E,1 next attribute addrsess
C $BE70,2 loop until message done
c $BE72 mask off end-of-message bit
D $BE72 Used by the routine at #R$BE5F.
@ $BE72 label=loc_BE72
C $BE75,7 display a character
C $BE7C,1 store attribute
c $BE7F Routine at BE7F
D $BE7F Used by the routines at #R$BCB6, #R$BCC0, #R$BE5F and #R$BE72.
@ $BE7F label=print_8x8
C $BE83,2 HL = character
C $BE87,1 calculate offset into font data
C $BE8C,1 calculate address of font data
C $BE8D,1 DE = font data
C $BE8F,2 # bytes (lines) to display
c $BE91 get font data byte
@ $BE91 label=loc_BE91
C $BE92,1 store in video/buffer memory
C $BE93,1 next font data byte
C $BE95,3 next video/buffer line
C $BE9A,6 loop until done character
C $BEA0,1 video/buffer address for next character
c $BEA3 Routine at BEA3
D $BEA3 Used by the routine at #R$BD89.
@ $BEA3 label=toggle_selected
c $BEA6 Routine at BEA6
D $BEA6 Used by the routine at #R$BEAA.
@ $BEA6 label=loc_BEA6
c $BEAA Routine at BEAA
D $BEAA Used by the routine at #R$BEAF.
@ $BEAA label=loc_BEAA
c $BEAD Routine at BEAD
D $BEAD Used by the routine at #R$BEA3.
@ $BEAD label=loc_BEAD
c $BEAF Routine at BEAF
D $BEAF Used by the routine at #R$BEA6.
@ $BEAF label=loc_BEAF
c $BEB3 Routine at BEB3
D $BEB3 Used by the routines at #R$BD15 and #R$BD23.
@ $BEB3 label=display_menu
C $BEB6,1 select param set 2
C $BEBD,2 8 lines to display
c $BEBF Display Text List
D $BEBF Input:DE  attributes HL' coordinates DE' text entries B' number to display
@ $BEBF label=display_text_list
C $BEBF,1 select param set 1
C $BEC0,1 get attribute
C $BEC1,3 store
C $BEC4,1 next attribute
C $BEC5,1 select param set 2
C $BEC6,1 number to display
C $BEC7,1 get X
C $BECC,1 H = Y
C $BECD,1 L = X
C $BED3,5 loop through list of messages
C $BED8,1 show border?
C $BED9,1 no, return
c $BEE4 Routine at BEE4
D $BEE4 Used by the routines at #R$D255 and #R$D296.
@ $BEE4 label=multiple_print_sprite
C $BEED,3 pixel X
C $BEF0,1 add offset
C $BEF1,3 store new pixel X
C $BEF4,3 pixel Y
C $BEF7,1 add offset
C $BEF8,3 store new pixel Y
C $BEFB,3 loop though all sprites
c $BEFE player appear sparkles
@ $BEFE label=upd_120_to_126
C $BF08,3 next sprite
C $BF0B,6 make a sound?
c $BF11 last player appears sparkle
@ $BF11 label=upd_127
C $BF18,3 player graphic_no
C $BF1B,3 set as object graphic_no
c $BF21 twinkly transform
D $BF21 Used by the routines at #R$C337, #R$C82B and #R$CDE2.
@ $BF21 label=init_death_sparkles
C $BF25,4 ignore in 3D calcs
c $BF2B death sparkles
D $BF2B Used by the routine at #R$B6A2.
@ $BF2B label=upd_112_to_118_184
C $BF2E,3 graphic_no
c $BF31 Routine at BF31
D $BF31 Used by the routine at #R$BF21.
@ $BF31 label=loc_BF31
c $BF37 sparkles (object in cauldron)
@ $BF37 label=upd_185_187
N $BF3D BUG: this routine is primarily for special objects when dropped into cauldron etc (disappear)
N $BF3D BUT: when the collapsing block disappears, the graphic_no is set to 184, which is then incremented to 185, and we end up here.
N $BF3D ONLY: there's no special object entry (HL=0)
N $BF3D So it zaps [$0000] which is ROM - and harmless on the ZX Spectrum.
N $BF3D BUG VERIFIED! on the Spectrum under MESS
C $BF3D,2 zap graphic_no in special_objs_tbl
c $BF3F last death sparkle
@ $BF3F label=upd_119
c $BF45 Routine at BF45
D $BF45 Used by the routine at #R$D653.
@ $BF45 label=display_objects_carried
C $BF48,1 anything changed?
C $BF49,1 no, return
C $BF4A,1 clear changed flag
c $BF4E Routine at BF4E
D $BF4E Used by the routine at #R$B03F.
@ $BF4E label=display_objects
C $BF54,2 3 objects max
c $BF59 Routine at BF59
D $BF59 Used by the routine at #R$BF91.
@ $BF59 label=display_object
C $BF5E,2 (~b+3)
C $BF64,2 =(~b+3)*8
C $BF67,2 (~b+3)*16
C $BF69,1 =(~b+3)*24
C $BF6A,2 =(~b+3)*24+16
C $BF6C,3 pixel X
C $BF6F,4 pixel Y
C $BF73,3 pixel X
C $BF76,3 pixel Y
C $BF79,1 ptr object
C $BF7F,3 width=3, height=24
C $BF82,1 fill byte = 0
C $BF83,3 wipe 24x24 pixel area
C $BF86,1 ptr object
C $BF87,1 object (sprite index)
C $BF88,1 null?
C $BF89,2 yes, skip
C $BF8B,3 sprite index
c $BF91 pixel X
D $BF91 Used by the routine at #R$BF59.
@ $BF91 label=loc_BF91
C $BF94,3 pixel Y
C $BF9F,3 lines=24, bytes=3
C $BFA5,1 ptr object
C $BFA8,1 ptr object
C $BFA9,1 object (sprite index)
C $BFB3,1 get fill byte entry
C $BFB4,3 pixel X
C $BFB7,3 pixel Y
C $BFC1,1 fill byte
C $BFC2,3 width=3, height=3
C $BFC8,1 ptr object
C $BFC9,1 object count
C $BFCD,1 next entry (4 bytes)
C $BFCE,5 loop through all objects
b $BFD3 #TABLE(default,centre,:w) { =h Byte(n) | =h Colour | =h Object } { 0 | red     | diamond } { 1 | magenta | poison } { 2 | green   | boot } { 3 | cyan    | challice } { 4 | yellow  | cup } { 5 | white   | bottle } { 6 | red     | globe } { 7 | white   | idol } TABLE#
@ $BFD3 label=object_attributes
B $BFD3,8,8
b $BFDB Data block at BFDB
@ $BFDB label=sprite_scratchpad
B $BFDB,32,8
c $BFFB Routine at BFFB
D $BFFB Used by the routines at #R$C00E, #R$C06F and #R$C0A9.
@ $BFFB label=chk_pickup_drop
C $BFFF,2 keybd/joystick bits only
C $C004,2 keybd? yes, skip
C $C006,2 directional?
c $C00B Routine at C00B
D $C00B Used by the routine at #R$BFFB.
@ $C00B label=loc_C00B
c $C00E Routine at C00E
D $C00E Used by the routine at #R$C83E.
@ $C00E label=handle_pickup_drop
C $C011,1 still registered as pressed?
C $C012,3 yes, go
C $C015,3 actually pressed?
C $C018,1 no, exit
C $C019,3 out of bounds?
C $C01C,1 yes, exit
C $C01D,4 jumping?
C $C021,1 yes, exit
C $C022,4 Z OOB?
C $C026,1 ???
C $C02B,3 Z
C $C02F,2 Z+12
C $C037,3 restore original Z
C $C03C,2 we can't drop anything
c $C041 Routine at C041
D $C041 Used by the routine at #R$C00E.
@ $C041 label=loc_C041
C $C04E,3 width
C $C052,2 width+4
C $C057,3 depth
C $C05B,2 depth+4
C $C061,3 height
C $C065,2 height+4
c $C06F Routine at C06F
@ $C06F label=loc_C06F
C $C072,3 yes, go
C $C075,3 entry size
C $C078,2 next entry
C $C083,3 plyr_spr_1 screen
C $C086,2 cauldron room?
C $C088,2 no, skip
C $C08A,2 only check 1st special object
c $C08C Routine at C08C
D $C08C Used by the routine at #R$C06F.
@ $C08C label=loc_C08C
C $C090,3 entry size
c $C093 graphic no.
@ $C093 label=loc_C093
C $C096,1 null?
C $C097,2 yes, skip
C $C099,2 next entry
C $C09B,2 loop
c $C09D Routine at C09D
D $C09D Used by the routines at #R$C06F, #R$C0B2 and #R$C12B.
@ $C09D label=done_pickup_drop
C $C09E,3 height
C $C0A2,3 depth
C $C0A5,3 width
c $C0A9 still held down?
D $C0A9 Used by the routine at #R$C00E.
@ $C0A9 label=loc_C0A9
C $C0AC,1 yes, exit
C $C0AD,1 clear flag
c $C0B2 Routine at C0B2
D $C0B2 Used by the routine at #R$C093.
@ $C0B2 label=room_to_drop
C $C0C3,3 graphic_no
C $C0C6,3 plyr_spr_1 screen
C $C0C9,2 cauldron room?
C $C0CB,2 no, skip
C $C0CD,3 plyr_spr_1 Z
C $C0D4,4 graphic_no
c $C0DD Routine at C0DD
D $C0DD Used by the routine at #R$C0B2.
@ $C0DD label=loc_C0DD
C $C0E9,2 copy x,y,z coordinates of player
C $C0EB,3 Z
C $C0F0,3 update Z
C $C0F3,3 Z of next sprite
C $C0F8,3 update Z of next sprite
c $C106 width=5
D $C106 Used by the routine at #R$C141.
@ $C106 label=drop_object
C $C10A,4 depth=5
C $C10E,4 height=12
C $C115,3 flags7
C $C118,3 scrn
C $C124,3 set ptr to obj_tbl entry
C $C127,4 flag just dropped
c $C12B 2nd-to-last entry
D $C12B Used by the routines at #R$C0B2 and #R$C141.
@ $C12B label=adjust_carried
C $C12E,6 3 entries (@4 bytes) to shift
C $C134,2 shift down by 1 entry
C $C13B,6 zap extra slot
c $C141 Routine at C141
D $C141 Used by the routine at #R$C06F.
@ $C141 label=pickup_object
C $C148,3 graphic_no
C $C14D,3 flags7
C $C155,3 ptr graphic object
C $C159,1 zap special_objs_tbl.graphic_no
C $C15C,1 store ptr
C $C164,5 object_carried[2].graphic_no
C $C169,1 empty slot?
c $C172 returns C flag set if special object and close enough to pick up
D $C172 Used by the routine at #R$C06F.
@ $C172 label=can_pickup_spec_obj
C $C172,3 graphic no.
C $C175,2 special objects base no.
C $C177,2 special object?
C $C179,1 no, exit
c $C17A Routine at C17A
D $C17A Used by the routine at #R$C1AB.
@ $C17A label=is_on_or_near_obj
C $C18A,3 Z
C $C18D,2 Z-4
c $C19F Routine at C19F
D $C19F Used by the routine at #R$C17A.
@ $C19F label=loc_C19F
c $C1A1 Routine at C1A1
D $C1A1 Used by the routines at #R$C28B, #R$C4B6 and #R$C4C6.
@ $C1A1 label=is_obj_moving
C $C1A1,3 dX
C $C1A4,3 dY
C $C1A7,3 dZ
c $C1AB extra life
@ $C1AB label=upd_103
C $C1B0,2 iy=extra life object
C $C1B2,4 ix = player
C $C1B6,3 width
C $C1B9,3 depth
C $C1BF,3 restore width
C $C1C2,3 restore depth
C $C1C7,2 restore ix (extra life object)
C $C1C9,2 not on/near, skip
C $C1CB,4 graphic_no
C $C1D8,2 zap ptr object table entry
C $C1DD,1 extra life!
c $C1EE Routine at C1EE
D $C1EE Used by the routine at #R$C1AB.
@ $C1EE label=loc_C1EE
c $C1F1 special objects being put in cauldron
@ $C1F1 label=upd_104_to_110
C $C1F4,3 X
c $C202 dX towards centre of room
D $C202 Used by the routine at #R$C1F1.
@ $C202 label=loc_C202
C $C205,3 Y
c $C213 dY towards cente of room
D $C213 Used by the routine at #R$C202.
@ $C213 label=loc_C213
C $C216,3 X
C $C219,2 centre of X-axis?
C $C21B,2 no, skip
C $C21D,3 centre of Y-axis?
C $C220,2 yes, skip
c $C222 Z
D $C222 Used by the routine at #R$C213.
@ $C222 label=loc_C222
c $C22C dZ
D $C22C Used by the routine at #R$C222.
@ $C22C label=loc_C22C
c $C22F Routine at C22F
D $C22F Used by the routine at #R$C238.
@ $C22F label=loc_C22F
c $C232 audio?
D $C232 Used by the routines at #R$B962, #R$C29B, #R$C4B6 and #R$C4C6.
@ $C232 label=audio_B467_wipe_and_draw
c $C238 Routine at C238
D $C238 Used by the routine at #R$C213.
@ $C238 label=centre_of_room
C $C23A,3 Z
C $C23F,4 ignore in 3D calcs
c $C245 Z
D $C245 Used by the routine at #R$C238.
@ $C245 label=add_obj_to_cauldron
C $C24C,3 graphic no.
C $C24F,2 convert to secial object index
C $C251,1 same as required?
C $C252,12 no, skip
C $C25E,2 got all objects?
C $C260,5 no, skip
c $C265 Routine at C265
D $C265 Used by the routine at #R$C245.
@ $C265 label=loc_C265
C $C26C,3 ptr object table
C $C26F,2 zap graphic no.
c $C274 Routine at C274
D $C274 Used by the routines at #R$B8DA and #R$C245.
@ $C274 label=ret_next_obj_required
b $C27D Data block at C27D
@ $C27D label=objects_required
B $C27D,14,7
c $C28B special objects
@ $C28B label=upd_96_to_102
C $C291,4 just dropped?
C $C295,6 no, skip
c $C29B clear just dropped flag
D $C29B Used by the routine at #R$C28B.
@ $C29B label=loc_C29B
c $C2A5 Routine at C2A5
D $C2A5 Used by the routine at #R$C245.
@ $C2A5 label=cycle_colours_with_sound
C $C2A5,2 cycle 16 times
c $C2A7 attribute memory
D $C2A7 Used by the routine at #R$C2C3.
@ $C2A7 label=loc_C2A7
C $C2AA,3 size
c $C2AD Routine at C2AD
@ $C2AD label=cycle_attribute_mem
c $C2C3 Routine at C2C3
@ $C2C3 label=loc_C2C3
c $C2CB Routine at C2CB
@ $C2CB label=no_update
c $C2CC Routine at C2CC
D $C2CC Used by the routine at #R$C245.
@ $C2CC label=prepare_final_animation
C $C2D3,4 special_objs_here[1]
C $C2D7,3 entry size
C $C2DA,2 wipe 11 objects in the room (1 special, 7 bg, 3 fg)
c $C2DC Routine at C2DC
@ $C2DC label=loc_C2DC
C $C2E3,4 set graphic no. = INVALID
C $C2E7,2 next entry
c $C2EE graphic no.
D $C2EE Used by the routine at #R$C2F9.
@ $C2EE label=loc_C2EE
C $C2F1,2 block?
C $C2F3,2 no, skip
C $C2F5,4 set to twinkly sprite
c $C2F9 next entry
D $C2F9 Used by the routine at #R$C2EE.
@ $C2F9 label=loc_C2F9
C $C2FF,2 end of table?
C $C301,5 no, loop
c $C306 Routine at C306
D $C306 Used by the routine at #R$C83E.
@ $C306 label=chk_and_init_transform
C $C311,4 already jumping?
C $C315,1 yes, exit
C $C318,3 graphic_no
C $C31E,4 transform count
C $C324,3 ' '
c $C337 human/wulf transform
@ $C337 label=upd_92_to_95
c $C349 Routine at C349
D $C349 Used by the routine at #R$C337.
@ $C349 label=loc_C349
C $C34C,2 1-in-4 chance?
C $C34E,1 no, return
C $C352,3 copy of graphic_no
c $C357 RANDOM
D $C357 Used by the routine at #R$C306.
@ $C357 label=rand_legs_sprite
C $C360,2 leg sprite (92-95)
C $C362,3 same as current?
C $C365,2 no, skip
C $C367,2 change
c $C369 store new sprite
D $C369 Used by the routine at #R$C357.
@ $C369 label=loc_C369
C $C36F,2 toggle hflip
c $C377 Routine at C377
D $C377 Used by the routine at #R$C349.
@ $C377 label=loc_C377
C $C37A,2 ' '
C $C37C,3 graphic_no
C $C381,3 graphic_no (top half)
C $C391,3 dY_adj
c $C394 Routine at C394
D $C394 Used by the routine at #R$C377.
@ $C394 label=loc_C394
c $C397 Routine at C397
D $C397 Used by the routine at #R$D653.
@ $C397 label=print_sun_moon
C $C3A1,3 pixel X
c $C3A4 Routine at C3A4
D $C3A4 Used by the routine at #R$B03F.
@ $C3A4 label=display_sun_moon_frame
C $C3A9,3 pixel X
C $C3B0,3 pixel X
C $C3BC,3 ptr entry
C $C3BF,1 get entry
C $C3C0,3 pixel Y
c $C3C3 31 lines, 6 bytes (swapped below)
D $C3C3 Used by the routine at #R$C419.
@ $C3C3 label=display_frame
C $C3C6,12 (184,0)
C $C3D2,7 display sun/moon
C $C3D9,4 clear flags
C $C3DD,4 sun/moon frame left
C $C3E1,4 pixel X
C $C3E5,4 pixel Y
C $C3EC,4 pixel X
C $C3F0,4 sun/moon frame right
C $C3F9,6 (184,0)
c $C3FF index
D $C3FF Used by the routine at #R$C3A4.
@ $C3FF label=toggle_day_night
C $C402,2 toggle sun/moon
C $C40A,4 pixel X
c $C419 Routine at C419
@ $C419 label=inc_days
C $C429,3 (120,0)
c $C432 Routine at C432
D $C432 Used by the routines at #R$C1AB and #R$C419.
@ $C432 label=blit_2x8
b $C440 Data block at C440
@ $C440 label=sun_moon_yoff
B $C440,13,8,5
b $C44D Data block at C44D
@ $C44D label=sun_moon_scratchpad
B $C44D,32,8
c $C46D Routine at C46D
D $C46D Used by the routine at #R$AF88.
@ $C46D label=init_sun
C $C471,4 sprite index
C $C475,4 pixel X
C $C479,4 pixel Y
c $C47E loops through the object table copying start X,Y,Z,screen to current
D $C47E Used by the routine at #R$AF88.
@ $C47E label=init_special_objects
c $C489 Routine at C489
@ $C489 label=init_obj_loop
C $C48E,1 object graphic no.
C $C48F,1 HL=ptr Start X position
C $C492,1 DE=ptr Start X position
C $C496,1 HL=ptr Current X
C $C497,1 DE = ptr Current X
C $C49B,2 copy Start X,Y,Z,screen to Current
C $C49E,1 save ptr next Current
C $C49F,4 end of object table
C $C4A3,2 done table?
C $C4A7,3 no, loop
c $C4AA block
@ $C4AA label=upd_62
c $C4B6 chest
@ $C4B6 label=upd_85
C $C4BF,1 no, return
c $C4C3 table
@ $C4C3 label=upd_84
c $C4C6 Routine at C4C6
D $C4C6 Used by the routine at #R$C1EE.
@ $C4C6 label=dec_dZ_upd_XYZ_wipe_if_moving
c $C4D3 tree wall
D $C4D3 Used by the routine at #R$C1AB.
@ $C4D3 label=upd_128_to_130
C $C4D3,3 -2, -8
c $C4D8 Routine at C4D8
D $C4D8 Used by the routines at #R$B566, #R$B8A9, #R$B8DA, #R$B923, #R$B92C, #R$BEFE, #R$BF11, #R$BF2B, #R$BF3F, #R$C1AB, #R$C1F1 and #R$C28B.
@ $C4D8 label=adj_m4_m12
C $C4D8,3 -4, -12
c $C4DD Routine at C4DD
D $C4DD Used by the routines at #R$B6F9, #R$C377, #R$C5C8, #R$C65E, #R$C6BD and #R$C823.
@ $C4DD label=adj_m6_m12
C $C4DD,3 -6, -12
c $C4E0 Routine at C4E0
D $C4E0 Used by the routines at #R$C4D3, #R$C4D8, #R$C4E3, #R$C4E8, #R$C4ED, #R$C4F2, #R$C4F7, #R$C4FC, #R$C501, #R$C506, #R$C50B and #R$C510.
@ $C4E0 label=jp_set_pixel_adj
c $C4E3 rock and block
D $C4E3 Used by the routines at #R$B683, #R$B6A2, #R$B6BF, #R$B7A9, #R$B7E7, #R$C4AA, #R$C4B6 and #R$C4C3.
@ $C4E3 label=upd_6_7
C $C4E3,3 -8, -16
c $C4E8 bricks -1, -20
@ $C4E8 label=upd_10
c $C4ED bricks
D $C4ED Used by the routines at #R$C306 and #R$C337.
@ $C4ED label=upd_11
C $C4ED,3 -2, -12
c $C4F2 bricks
D $C4F2 Used by the routines at #R$B5FF, #R$B7ED, #R$B80F, #R$B83F and #R$B865.
@ $C4F2 label=upd_12_to_15
C $C4F2,3 -4, -8
c $C4F7 Routine at C4F7
D $C4F7 Used by the routine at #R$CDDA.
@ $C4F7 label=adj_m8_m12
C $C4F7,3 -8, -12
c $C4FC Routine at C4FC
D $C4FC Used by the routines at #R$B7A3 and #R$C828.
@ $C4FC label=adj_m7_m12
C $C4FC,3 -7, -12
c $C501 Routine at C501
D $C501 Used by the routine at #R$CDDF.
@ $C501 label=adj_m12_m12
C $C501,3 -12, -12
c $C506 -12, -16
D $C506 Used by the routine at #R$B99C.
@ $C506 label=upd_88_to_90
c $C50B Routine at C50B
D $C50B Used by the routine at #R$B73C.
@ $C50B label=adj_p7_m12
C $C50B,3 +7, -12
c $C510 Routine at C510
D $C510 Used by the routine at #R$B9A5.
@ $C510 label=adj_p3_m12
C $C510,3 +3, -12
c $C515 Fill Window
D $C515 Input:HL starting location B  width (bytes) C  height (lines)
@ $C515 label=fill_window
c $C518 Routine at C518
D $C518 Used by the routine at #R$C51A.
@ $C518 label=loc_C518
c $C51A set byte
@ $C51A label=loc_C51A
C $C51B,1 next location
C $C51C,3 loop for 1 line
C $C51F,1 next line
C $C521,1 done all lines?
C $C522,3 no, loop
c $C525 Build a list of special objects in this room
D $C525 - traverses special object list
D $C525 - adds to special_objs_here
R $C525 Input:IX graphics object table; 00=player sprite
@ $C525 label=find_special_objs_here
C $C52D,3 current screen
c $C530 get graphic no.
D $C530 Used by the routine at #R$C572.
@ $C530 label=loc_C530
C $C533,1 null?
C $C534,2 yes, skip
C $C536,3 object current screen
C $C539,1 same as (player) current screen?
C $C53A,6 no, skip
C $C540,1 ptr special_object_tbl entry
C $C541,1 get graphic no.
C $C543,1 store in objs_here
C $C548,1 ptr current X, Y, Z
C $C549,3 3 entries (bytes) to copy
C $C54C,2 copy to objs_here
C $C54F,2 width = 5
C $C552,2 depth = 5
C $C555,2 height = 12
C $C558,2 flag DRAW & MOVEABLE
C $C55C,1 get current screen
C $C55E,1 store in objs_here
C $C565,1 ptr special_object_tbl entry
C $C56A,1 store
c $C572 Routine at C572
D $C572 Used by the routine at #R$C530.
@ $C572 label=loc_C572
C $C575,2 ptr next special_object_tbl entry
C $C57A,4 end of object table
C $C57E,2 past end of table?
C $C580,2 no, loop
C $C582,1 DE=objs_here entry
c $C583 end of objects here table
@ $C583 label=loc_C583
C $C587,2 past end of table (max=2)
C $C589,1 yes, exit
C $C58C,3 zero next entry
C $C58F,2 next entry
c $C591 updates special objects table with current data (coords etc)
D $C591 - traverses special_objs_here table
D $C591 - writes to special_objs_tbl
D $C591 Another bug related to ptr special_objs_tbl
D $C591 - the cauldron bubbles are inserted in the object table dynamically when you enter the room. This routine checks the graphic_no for null, but (again) not the ptr and (again) writes to ROM @$0000
D $C591 * VERIFIED on the ZX Spectrum emulator!
@ $C591 label=update_special_objs
c $C595 get graphic no.
D $C595 Used by the routine at #R$C5B7.
@ $C595 label=loc_C595
C $C598,1 null?
C $C599,5 yes, skip
C $C59E,3 DE=ptr object table entry
C $C5A1,3 get graphic no.
C $C5A4,1 store
C $C5AC,1 HL=object in 'here' table
C $C5AD,1 ptr x
C $C5AE,3 3 bytes
C $C5B1,2 copy x, y, z
C $C5B3,3 screen
C $C5B6,1 store as current
c $C5B7 Routine at C5B7
D $C5B7 Used by the routine at #R$C595.
@ $C5B7 label=loc_C5B7
C $C5BA,2 next entry in 'here' table
C $C5BF,4 end of table
C $C5C3,2 past end of table?
C $C5C5,3 no, loop
c $C5C8 ghost
@ $C5C8 label=upd_80_to_83
C $C5CE,3 dX
C $C5D1,3 moving X/Y?
C $C5D4,5 no, skip
C $C5D9,2 OOB X/Y?
C $C5DB,2 no, continue as-is
c $C5DD Routine at C5DD
D $C5DD Used by the routine at #R$C5C8.
@ $C5DD label=loc_C5DD
C $C5E2,2 rnd(4-7)= +/-3or4
C $C5E7,3 set dX
C $C5EF,2 rnd(4-7)= +/-3or4
C $C5F4,3 dY
c $C5FD Routine at C5FD
D $C5FD Used by the routine at #R$C5C8.
@ $C5FD label=loc_C5FD
c $C603 Routine at C603
D $C603 Used by the routine at #R$C5DD.
@ $C603 label=calc_ghost_sprite
C $C603,3 dX
C $C60A,2 abs()
c $C60C c=abs(dX)
D $C60C Used by the routine at #R$C603.
@ $C60C label=loc_C60C
C $C60D,3 dY
C $C614,2 abs()
c $C616 abs(dX)<abs(dY)?
D $C616 Used by the routine at #R$C60C.
@ $C616 label=loc_C616
C $C617,2 yes, go
C $C619,3 dX
C $C61C,1 negative?
C $C61D,3 yes, skip
C $C620,4 sprite=80/81
c $C624 hflip
D $C624 Used by the routine at #R$C629.
@ $C624 label=set_ghost_hflip
c $C629 sprite=82/83
D $C629 Used by the routine at #R$C616.
@ $C629 label=loc_C629
c $C62F dY
D $C62F Used by the routine at #R$C616.
@ $C62F label=loc_C62F
C $C632,1 negative?
C $C633,3 yes, skip
C $C636,4 sprite=82/83
c $C63A hflip
D $C63A Used by the routine at #R$C63F.
@ $C63A label=clr_ghost_hflip
c $C63F sprite=80/81
D $C63F Used by the routine at #R$C62F.
@ $C63F label=loc_C63F
c $C645 Routine at C645
D $C645 Used by the routine at #R$C5DD.
@ $C645 label=get_delta_from_tbl
C $C64B,1 ptr entry
C $C64C,1 get entry
b $C64E Data block at C64E
@ $C64E label=delta_tbl
B $C64E,16,2
c $C65E portcullis (static)
@ $C65E label=upd_8
C $C665,1 moving?
C $C666,1 yes, exit
C $C66A,3 objZ = room height?
C $C66D,4 yes, skip
C $C671,3 objZ <= room height+31?
C $C674,5 yes, skip
C $C679,2 moved less than 4 times?
C $C67B,5 yes, move immediately
C $C680,2 1in32 chance?
C $C682,1 no, return
C $C683,2 arbitrarily large count
c $C685 Routine at C685
D $C685 Used by the routine at #R$C65E.
@ $C685 label=init_portcullis_down
C $C689,4 graphic_no=9
C $C68D,4 dZ=-1 (down)
c $C691 flag portculis moving
D $C691 Used by the routine at #R$C6AD.
@ $C691 label=loc_C691
c $C692 Routine at C692
D $C692 Used by the routines at #R$B5AF, #R$B69F, #R$B6DE, #R$B71A, #R$B7D9, #R$B856, #R$B916, #R$BEFE, #R$BF31, #R$C232, #R$C2DC, #R$C306, #R$C369, #R$C394, #R$C69D, #R$C6BD, #R$C6E0, #R$C6EA and #R$C86A.
@ $C692 label=set_wipe_and_draw_flags
C $C692,3 flags
C $C695,2 set WIPE & DRAW
c $C69D Routine at C69D
D $C69D Used by the routine at #R$C141.
@ $C69D label=set_wipe_and_draw_IY
c $C6AD Routine at C6AD
D $C6AD Used by the routine at #R$C65E.
@ $C6AD label=init_portcullis_up
C $C6B0,2 1in32 chance?
C $C6B2,1 yes, exit
C $C6B3,4 graphic_no=9
C $C6B7,4 dZ=1 (up)
c $C6BD portcullis (moving)
@ $C6BD label=upd_9
C $C6C0,4 fatal if it hits player
C $C6C7,2 entering screen?
C $C6C9,1 yes, exit
C $C6CA,3 dZ
C $C6CD,1 up?
C $C6CE,3 yes, go
C $C6D1,3 accelerate speed?
C $C6D7,4 out of bounds?
C $C6DB,5 no, go
c $C6E0 flag not moving
D $C6E0 Used by the routine at #R$C6EA.
@ $C6E0 label=stop_portcullis
C $C6E4,4 graphic_no=8
c $C6EA dZ
D $C6EA Used by the routine at #R$C6BD.
@ $C6EA label=move_portcullis_up
C $C6F9,3 objZ < room height+31?
C $C6FC,4 yes, go
c $C700 Routine at C700
D $C700 Used by the routines at #R$B5AF, #R$B5FF, #R$B683, #R$B749, #R$B7CD, #R$B7FE, #R$B820, #R$B876, #R$B894, #R$B8DA, #R$B945, #R$B9A5, #R$C22F, #R$C28B, #R$C4B6, #R$C4C6, #R$C5C8, #R$C6BD and #R$C6EA.
@ $C700 label=dec_dZ_and_update_XYZ
C $C700,3 dec dZ?
c $C706 Routine at C706
D $C706 Used by the routine at #R$C9CD.
@ $C706 label=add_dXYZ
C $C706,3 X
C $C709,3 dX
C $C70C,3 X+=dX
C $C70F,3 Y
C $C712,3 dY
C $C715,3 y+=dY
C $C718,3 Z
C $C71B,3 dZ
C $C71E,3 Z+=dZ
c $C722 arch (far side) hflip?
@ $C722 label=upd_3_5
C $C726,2 yes, go
C $C728,3 -3, -9
c $C72B Routine at C72B
D $C72B Used by the routines at #R$B99F, #R$C4E0, #R$C732, #R$C74C and #R$C76C.
@ $C72B label=set_pixel_adj
C $C72B,3 pixel_x adjust
C $C72E,3 pixel_y adjust
c $C732 -2, -7
D $C732 Used by the routine at #R$C722.
@ $C732 label=adj_3_5_hflip
c $C737 -3, +1
D $C737 Used by the routine at #R$C73C.
@ $C737 label=adj_m3_p1
c $C73C arch (near side) hflip?
@ $C73C label=upd_2_4
C $C740,2 yes, go
C $C742,3 graphic no.
C $C745,2 tree arch?
C $C747,2 yes, exit
C $C749,3 -3, -7
c $C74C Routine at C74C
D $C74C Used by the routine at #R$C737.
@ $C74C label=loc_C74C
C $C74F,3 Y
C $C752,2 add 13
C $C754,3 dY?=Y+13
C $C757,3 X
C $C75A,3 dX?=X
C $C75D,3 +6, +15
c $C760 Z
D $C760 Used by the routine at #R$C76C.
@ $C760 label=loc_C760
C $C763,3 dZ?=Z
c $C76C -2, -17
D $C76C Used by the routine at #R$C73C.
@ $C76C label=adj_2_4_hflip
C $C772,3 X
C $C777,3 dX
C $C77A,3 Y
C $C77D,3 dY
C $C780,3 +15, +6
c $C785 +15, +15
D $C785 Used by the routine at #R$C760.
@ $C785 label=loc_C785
C $C78C,3 entry size
C $C78F,2 player, special objects only
c $C791 graphic no.
D $C791 Used by the routine at #R$C7D6.
@ $C791 label=loc_C791
C $C794,1 null?
C $C795,17 yes, skip
C $C7A6,3 index into table based on sprite dir
b $C7A9 Data block at C7A9
@ $C7A9 label=adj_arch_tbl
W $C7A9,8,2
c $C7B1 dY
@ $C7B1 label=adj_ew
C $C7B4,3 Y
c $C7BF Routine at C7BF
D $C7BF Used by the routine at #R$C7B1.
@ $C7BF label=loc_C7BF
c $C7C4 dX
@ $C7C4 label=adj_ns
C $C7C7,3 X
c $C7D2 Routine at C7D2
D $C7D2 Used by the routine at #R$C7C4.
@ $C7D2 label=loc_C7D2
c $C7D5 Routine at C7D5
D $C7D5 Used by the routines at #R$C7B1, #R$C7BF and #R$C7C4.
@ $C7D5 label=loc_C7D5
c $C7D6 Routine at C7D6
D $C7D6 Used by the routine at #R$C791.
@ $C7D6 label=loc_C7D6
c $C7DB Routine at C7DB
D $C7DB Used by the routine at #R$C760.
@ $C7DB label=chk_plyr_spec_near_arch
C $C7DF,3 entry size
C $C7E2,2 player and special objects only
c $C7E4 graphic no
D $C7E4 Used by the routine at #R$C7F9.
@ $C7E4 label=loc_C7E4
C $C7E7,1 null?
C $C7E8,2 yes, skip
C $C7EA,4 auto-adjust?
C $C7EE,5 no, skip
C $C7F3,2 no, skip
C $C7F5,4 flag near arch
c $C7F9 next entry
D $C7F9 Used by the routine at #R$C7E4.
@ $C7F9 label=loc_C7F9
C $C7FB,3 loop through table
c $C7FE Routine at C7FE
D $C7FE Used by the routines at #R$C791 and #R$C7E4.
@ $C7FE label=is_near_to
C $C7FE,3 centre_x
C $C801,3 sub X
c $C808 Routine at C808
D $C808 Used by the routine at #R$C7FE.
@ $C808 label=loc_C808
C $C80A,3 centre_y
C $C80D,3 sub Y
c $C814 Routine at C814
D $C814 Used by the routine at #R$C808.
@ $C814 label=loc_C814
C $C816,3 centre_z
C $C819,3 sub Z
c $C820 Routine at C820
D $C820 Used by the routine at #R$C814.
@ $C820 label=loc_C820
c $C823 sabreman legs
@ $C823 label=upd_16_to_21_24_to_29
c $C828 wulf legs
@ $C828 label=upd_48_to_53_56_to_61
c $C82B dead?
D $C82B Used by the routine at #R$C823.
@ $C82B label=upd_player_bottom
C $C82F,8 no, skip
C $C837,4 set dead top half
c $C83E returns to caller if transforming
D $C83E Used by the routine at #R$C82B.
@ $C83E label=loc_C83E
c $C855 fudge near arch
D $C855 Used by the routine at #R$C86D.
@ $C855 label=loc_C855
C $C859,3 does the moving
C $C85C,4 reset fudge
C $C860,3 flags12
C $C863,2 entering room?
C $C865,2 no, skip
C $C867,3 dec entering room counter
c $C86A Routine at C86A
D $C86A Used by the routine at #R$C855.
@ $C86A label=loc_C86A
c $C86D when walking through arches
D $C86D Used by the routine at #R$C83E.
@ $C86D label=plyr_OOB
C $C86D,3 dZ
C $C870,1 <0?
C $C871,4 yes, go
C $C875,3 dZ=0
c $C87A returns NC if out-of-bounds
D $C87A Used by the routines at #R$C00E and #R$C83E.
@ $C87A label=chk_plyr_OOB
C $C87D,1 room_size_X
C $C87E,3 sub width
C $C882,1 room_size_Y
C $C883,3 sub depth
C $C887,3 X
c $C891 Routine at C891
D $C891 Used by the routine at #R$C87A.
@ $C891 label=loc_C891
C $C892,1 OOB
C $C893,3 Y
c $C89D set/clr carry
D $C89D Used by the routine at #R$C891.
@ $C89D label=loc_C89D
c $C89F Routine at C89F
D $C89F Used by the routine at #R$C83E.
@ $C89F label=handle_left_right
C $C8A3,2 joystick/keyboard bits only
C $C8A5,2 keybd? yes, skip
C $C8A7,2 directional?
C $C8AB,3 flags12
C $C8AE,2 entering screen?
C $C8B0,1 yes, exit
C $C8B1,4 Z OOB?
C $C8B5,1 no, exit
C $C8B6,2 joystick left?
C $C8B8,2 yes, skip
C $C8BA,2 joystick up?
C $C8BC,2 yes, skip
c $C8BE joystick right?
D $C8BE Used by the routine at #R$C89F.
@ $C8BE label=loc_C8BE
C $C8C0,2 yes, go
C $C8C2,2 joystick down?
C $C8C4,2 yes, go
C $C8C6,2 joystick left?
C $C8C8,5 yes, go
c $C8CD Routine at C8CD
D $C8CD Used by the routine at #R$C89F.
@ $C8CD label=chk_facing_N
C $C8D0,2 N?
c $C8D2 Routine at C8D2
D $C8D2 Used by the routine at #R$C8D9.
@ $C8D2 label=loc_C8D2
c $C8D5 Routine at C8D5
D $C8D5 Used by the routine at #R$C8E5.
@ $C8D5 label=loc_C8D5
c $C8D9 Routine at C8D9
D $C8D9 Used by the routine at #R$C8BE.
@ $C8D9 label=chk_facing_E
C $C8DC,2 E?
c $C8E0 Routine at C8E0
D $C8E0 Used by the routine at #R$C8BE.
@ $C8E0 label=chk_facing_S
C $C8E3,2 S?
c $C8E5 Routine at C8E5
D $C8E5 Used by the routine at #R$C8E9.
@ $C8E5 label=loc_C8E5
c $C8E9 Routine at C8E9
D $C8E9 Used by the routine at #R$C8BE.
@ $C8E9 label=chk_facing_W
C $C8EC,1 W?
c $C8EF Routine at C8EF
D $C8EF Used by the routines at #R$C8D2 and #R$C8E5.
@ $C8EF label=flag_forward
c $C8F2 Routine at C8F2
D $C8F2 Used by the routine at #R$C89F.
@ $C8F2 label=left_right_rotational
C $C8F5,2 too soon to turn again?
C $C8F7,2 no, skip
C $C8F9,3 dec delay counter
c $C8FD user input
D $C8FD Used by the routine at #R$C8F2.
@ $C8FD label=loc_C8FD
C $C8FE,2 left or right?
C $C900,1 no, return
C $C901,3 flags12
C $C904,2 entering screen?
C $C906,1 yes, exit
C $C907,4 already jumping?
C $C90B,1 yes, exit
C $C90C,2 forward?
C $C90E,7 yes, skip
c $C915 Routine at C915
D $C915 Used by the routine at #R$C8FD.
@ $C915 label=loc_C915
C $C918,2 init turning delay counter
C $C91D,2 right?
c $C91F yes, skip
D $C91F Used by the routine at #R$C8D5.
@ $C91F label=left_right_calc_sprite
C $C921,4 hflip?
C $C925,2 yes, skip
c $C927 graphic_no
D $C927 Used by the routine at #R$C940.
@ $C927 label=loc_C927
c $C92F Routine at C92F
D $C92F Used by the routines at #R$C91F and #R$C940.
@ $C92F label=loc_C92F
C $C932,2 toggle hflip
C $C937,3 graphic_no
C $C93A,2 top half
C $C93C,3 set sprite for top half
c $C940 hflip?
D $C940 Used by the routine at #R$C91F.
@ $C940 label=loc_C940
C $C944,4 yes, go
c $C948 Routine at C948
D $C948 Used by the routine at #R$C83E.
@ $C948 label=handle_jump
C $C948,2 jump?
C $C94A,1 no, exit
C $C94B,3 flags12
C $C94E,2 entering screen?
C $C950,1 yes, exit
C $C951,4 already jumping?
C $C955,1 yes, exit
C $C956,3 dZ
C $C95A,1 return if was <-1
C $C95B,4 flag jumping
C $C95F,4 dZ=8?
c $C969 Routine at C969
D $C969 Used by the routine at #R$C83E.
@ $C969 label=handle_forward
C $C969,3 flags12
C $C96C,2 entering sccreen?
C $C96E,2 yes, skip
C $C970,4 already jumping?
C $C974,2 yes, skip
C $C976,2 forward?
C $C978,2 no, go
c $C97A Routine at C97A
D $C97A Used by the routine at #R$C969.
@ $C97A label=loc_C97A
c $C97F graphic_no
D $C97F Used by the routines at #R$B71A and #R$C994.
@ $C97F label=animate_human_legs
C $C983,1 next sprite
C $C986,2 wrap?
C $C988,3 no, skip
c $C98B Routine at C98B
D $C98B Used by the routine at #R$C97F.
@ $C98B label=loc_C98B
C $C990,3 update sprite
c $C994 graphic_no
D $C994 Used by the routine at #R$C969.
@ $C994 label=loc_C994
c $C9A1 Routine at C9A1
D $C9A1 Used by the routine at #R$C855.
@ $C9A1 label=move_player
C $C9A7,4 dZ=2
c $C9AB already jumping?
D $C9AB Used by the routine at #R$C9A1.
@ $C9AB label=loc_C9AB
C $C9AF,2 yes, skip
C $C9B1,3 flags12
C $C9B4,2 entering screen?
C $C9B6,2 yes, skip
C $C9B8,2 forward?
C $C9BA,2 no, skip
c $C9BC Routine at C9BC
D $C9BC Used by the routine at #R$C9AB.
@ $C9BC label=loc_C9BC
c $C9C1 dZ
D $C9C1 Used by the routine at #R$C9AB.
@ $C9C1 label=loc_C9C1
C $C9C8,2 jump?
C $C9CA,2 yes, skip
c $C9CC Routine at C9CC
D $C9CC Used by the routine at #R$C9C1.
@ $C9CC label=loc_C9CC
c $C9CD Routine at C9CD
D $C9CD Used by the routine at #R$C9C1.
@ $C9CD label=loc_C9CD
C $C9CE,3 dZ
C $C9E2,4 Z OOB?
C $C9E6,9 no, go
C $C9EF,4 clear jumping flag
c $C9F3 Routine at C9F3
D $C9F3 Used by the routines at #R$C29B, #R$C4AA, #R$C4C6 and #R$C9CD.
@ $C9F3 label=clear_dX_dY
C $C9F4,3 dX=0
C $C9F7,3 dY=0
c $C9FB Routine at C9FB
D $C9FB Used by the routine at #R$C9BC.
@ $C9FB label=calc_plyr_dXY
C $C9FB,3 dX
C $C9FE,3 dX_adjust
C $CA04,3 dY
C $CA07,3 dY_adj
C $CA0E,3 zap adjustment
C $CA11,3 zap adjustment
c $CA17 Routine at CA17
D $CA17 Used by the routines at #R$C791 and #R$CA70.
@ $CA17 label=lookup_plyr_dXY
c $CA1E Routine at CA1E
D $CA1E Used by the routines at #R$C8CD, #R$C8D9, #R$C8E0, #R$C8E9 and #R$CA17.
@ $CA1E label=get_sprite_dir
C $CA1E,3 flags
C $CA23,2 hflip
C $CA26,3 graphic no.
C $CA2B,1 bits 4,3
C $CA2F,2 1=hflip, 0=graphic no & 8
b $CA32 Data block at CA32
@ $CA32 label=off_CA32
W $CA32,2,2 dX -= 3
W $CA34,2,2 dX += 3
W $CA36,2,2 dY += 3
W $CA38,2,2 dY -= 3
c $CA3A Routine at CA3A
@ $CA3A label=move_plyr_W
C $CA3A,3 dX
C $CA3D,2 -3
c $CA3F Routine at CA3F
D $CA3F Used by the routine at #R$CA43.
@ $CA3F label=loc_CA3F
c $CA43 dX
@ $CA43 label=move_plyr_E
C $CA46,2 +3
c $CA4A Routine at CA4A
@ $CA4A label=move_plyr_N
C $CA4A,3 dY
C $CA4D,2 +3
c $CA4F Routine at CA4F
D $CA4F Used by the routine at #R$CA53.
@ $CA4F label=loc_CA4F
c $CA53 Routine at CA53
@ $CA53 label=move_plyr_S
C $CA53,3 dY
C $CA56,2 -3
c $CA5A Routine at CA5A
D $CA5A Used by the routine at #R$CB45.
@ $CA5A label=adj_dZ_for_out_of_bounds
c $CA5E Z
@ $CA5E label=loc_CA5E
C $CA61,1 Z+=dZ
C $CA62,1 >= room height?
C $CA63,1 yes, return
C $CA68,1 Z+dZ
C $CA6C,1 new dZ
C $CA6D,3 check again
c $CA70 Routine at CA70
D $CA70 Used by the routine at #R$C9CD.
@ $CA70 label=handle_exit_screen
C $CA70,3 flags12
C $CA73,2 entering room?
C $CA75,1 yes, exit
C $CA76,4 near an arch?
C $CA7A,1 no, return
C $CA7B,4 reset flag
c $CA89 adjust dX/dY/dZ when out of bounds
D $CA89 Input:A dX/dY/dZ
@ $CA89 label=adj_d_for_out_of_bounds
C $CA89,1 zero?
C $CA8A,1 yes, exit
C $CA8B,5 skip if >0
c $CA90 Routine at CA90
D $CA90 Used by the routine at #R$CA89.
@ $CA90 label=loc_CA90
b $CA92 Data block at CA92
@ $CA92 label=screen_move_tbl
W $CA92,8,2
c $CA9A Routine at CA9A
@ $CA9A label=screen_west
C $CA9D,1 room_size_X
C $CA9F,3 X
C $CAA2,3 +dX
C $CAA5,3 +width
C $CAAA,4 X
C $CAAE,3 screen
C $CAB2,1 screen to the west
c $CAB3 low nibble
D $CAB3 Used by the routine at #R$CAF3.
@ $CAB3 label=screen_e_w
C $CAB7,2 high nibble - don't change row
C $CAB9,1 same row - wraps???
c $CABA store new screen
D $CABA Used by the routines at #R$CB0E and #R$CB29.
@ $CABA label=exit_screen
C $CABD,3 flags12
C $CAC0,2 init enter room counter
C $CAC2,3 save
C $CAC5,3 graphic no.
C $CACA,2 wulf?
C $CACC,1 WHY is wulf handled differently???
C $CADC,6 graphic no.
C $CAE2,6 graphic no.
C $CAE8,2 sparkly transform #1
C $CAEA,3 graphic no.
C $CAED,6 graphic no.
c $CAF3 Routine at CAF3
@ $CAF3 label=screen_east
C $CAF7,1 room_size_X + 128
C $CAF8,3 X
C $CAFB,3 +dX
C $CAFE,3 -width
C $CB03,4 X
C $CB07,3 screen
C $CB0B,1 screen to the east
c $CB0E Routine at CB0E
@ $CB0E label=screen_north
C $CB0F,1 room_size_Y
C $CB13,3 Y
C $CB16,3 +dY
C $CB19,3 -depth
C $CB1E,4 Y
C $CB22,3 screen
C $CB25,2 screen to the north
c $CB29 Routine at CB29
@ $CB29 label=screen_south
C $CB2C,1 room_size_Y
C $CB2E,3 Y
C $CB31,3 +dY
C $CB34,3 +depth
C $CB39,4 Y
C $CB3D,3 screen
C $CB40,2 screen to the south
c $CB45 Routine at CB45
D $CB45 Used by the routines at #R$C700 and #R$C9CD.
@ $CB45 label=adj_for_out_of_bounds
C $CB51,2 clear X,Y,Z OOB
C $CB59,3 dZ
C $CB5C,1 zero?
C $CB5E,5 yes, skip
C $CB63,1 new dZ
C $CB64,1 zero?
C $CB65,5 yes, skip
c $CB6A Routine at CB6A
D $CB6A Used by the routine at #R$CB45.
@ $CB6A label=dZ_ok
C $CB6A,3 dX
C $CB6D,1 zero?
C $CB6F,5 yes, skip
C $CB74,1 new dX
C $CB75,1 zero?
C $CB76,5 yes, skip
c $CB7B dY
D $CB7B Used by the routine at #R$CB6A.
@ $CB7B label=loc_CB7B
C $CB7E,1 zero?
C $CB80,5 yes, skip
C $CB85,1 new dY
C $CB86,1 zero?
C $CB87,5 yes, skip
c $CB8C new dX
D $CB8C Used by the routine at #R$CB7B.
@ $CB8C label=loc_CB8C
C $CB8F,3 new dY
C $CB92,3 new dZ
c $CB9A Routine at CB9A
D $CB9A Used by the routine at #R$CB6A.
@ $CB9A label=adj_dX_for_obj_intersect
C $CB9E,2 max objects
c $CBA0 Routine at CBA0
D $CBA0 Used by the routine at #R$CBE1.
@ $CBA0 label=loc_CBA0
C $CBA3,12 ignored, skip
c $CBAF Routine at CBAF
D $CBAF Used by the routine at #R$CBD9.
@ $CBAF label=loc_CBAF
C $CBB4,4 set X OOB
C $CBBC,2 bit 7->6
C $CBBE,3 obj2 destroyed?
C $CBC5,2 bit 5->6
C $CBC7,3 obj1 destroyed?
C $CBCD,4 moveable?
C $CBD1,5 no, skip
C $CBD6,3 copy dX
c $CBD9 Routine at CBD9
D $CBD9 Used by the routine at #R$CBAF.
@ $CBD9 label=loc_CBD9
c $CBE1 entry size
D $CBE1 Used by the routines at #R$CBA0 and #R$CBAF.
@ $CBE1 label=loc_CBE1
C $CBE4,2 next entry
c $CBE9 Routine at CBE9
D $CBE9 Used by the routine at #R$CB7B.
@ $CBE9 label=adj_dY_for_obj_intersect
C $CBED,2 max objects
c $CBEF Routine at CBEF
D $CBEF Used by the routine at #R$CC30.
@ $CBEF label=loc_CBEF
C $CBF2,5 next entry
C $CBF7,5 next entry
C $CBFC,2 next entry
c $CBFE Routine at CBFE
D $CBFE Used by the routine at #R$CC28.
@ $CBFE label=loc_CBFE
C $CC01,2 next entry
C $CC03,4 set Y OOB
C $CC0B,2 bit 7->6
C $CC0D,3 obj2 destroyed?
C $CC14,2 bit 5->6
C $CC16,3 obj1 destroyed?
C $CC1C,4 moveable?
C $CC20,5 no, skip
C $CC25,3 copy dY
c $CC28 Routine at CC28
D $CC28 Used by the routine at #R$CBFE.
@ $CC28 label=loc_CC28
c $CC30 entry size
D $CC30 Used by the routines at #R$CBEF and #R$CBFE.
@ $CC30 label=loc_CC30
C $CC33,2 next entry
C $CC35,3 loop through table
c $CC38 Routine at CC38
D $CC38 Used by the routine at #R$CB45.
@ $CC38 label=adj_dZ_for_obj_intersect
C $CC3C,2 max objects
c $CC3E Routine at CC3E
D $CC3E Used by the routine at #R$CC95.
@ $CC3E label=loc_CC3E
C $CC41,5 next entry
C $CC46,5 next entry
C $CC4B,2 next entry
c $CC4D Routine at CC4D
D $CC4D Used by the routine at #R$CC8D.
@ $CC4D label=loc_CC4D
C $CC50,2 next entry
C $CC52,4 set Z OOB
C $CC5A,2 bit 7->6
C $CC5C,3 obj2 destroyed?
C $CC63,2 bit 5->6
C $CC65,3 obj1 destroyed?
C $CC6B,4 triggered (falling, collapsing blocks)
C $CC6F,4 moveable?
C $CC73,2 no, skip
C $CC75,3 dX
C $CC78,1 zero?
C $CC79,5 no, skip
C $CC7E,3 copy dX
c $CC81 objdY
D $CC81 Used by the routine at #R$CC4D.
@ $CC81 label=loc_CC81
C $CC84,1 moving along Y?
C $CC85,5 yes, skip
C $CC8A,3 copy dY
c $CC8D Routine at CC8D
D $CC8D Used by the routines at #R$CC4D and #R$CC81.
@ $CC8D label=loc_CC8D
c $CC95 entry size
D $CC95 Used by the routines at #R$CC3E and #R$CC4D.
@ $CC95 label=loc_CC95
C $CC98,2 next entry
C $CC9A,3 loop through table
c $CC9D Routine at CC9D
D $CC9D Used by the routines at #R$B510, #R$C17A, #R$CBAF, #R$CBEF and #R$CC3E.
@ $CC9D label=do_objs_intersect_on_x
C $CC9D,3 objW (width)
C $CCA0,3 thisW
C $CCA3,1 objW+thisW
C $CCA4,3 obj X
C $CCA7,1 new dX
C $CCA8,3 objX + newdX - thisX
C $CCAE,2 abs()
c $CCB0 abs(objX+newdX-thisX)-(objW+thisW)
D $CCB0 Used by the routine at #R$CC9D.
@ $CCB0 label=loc_CCB0
C $CCB1,1 C flag set indicates intersection
c $CCB2 Routine at CCB2
D $CCB2 Used by the routines at #R$B510, #R$C17A, #R$CBA0, #R$CBFE and #R$CC3E.
@ $CCB2 label=do_objs_intersect_on_y
C $CCB2,3 objD (depth)
C $CCB5,3 thisD
C $CCB8,1 (objD+thisD)
C $CCB9,3 objY
C $CCBD,3 (objY+new dY-thisY)
C $CCC3,2 abs()
c $CCC5 (objY+l+thisY)-(objD+thisD)
D $CCC5 Used by the routine at #R$CCB2.
@ $CCC5 label=loc_CCC5
C $CCC6,1 C flag set indicates intersection
c $CCC7 Routine at CCC7
D $CCC7 Used by the routines at #R$B510, #R$C17A, #R$CBA0, #R$CBEF and #R$CC4D.
@ $CCC7 label=do_objs_intersect_on_z
C $CCC7,3 objZ
C $CCCB,3 (objZ+new dZ-thisZ)
C $CCD1,2 abs()
C $CCD3,3 objH (height)
c $CCD6 (objZ+H-thisZ)-(objH or thisH)
D $CCD6 Used by the routine at #R$CCD8.
@ $CCD6 label=loc_CCD6
C $CCD7,1 C flag set indicates intersection
c $CCD8 thisH (height)
D $CCD8 Used by the routine at #R$CCC7.
@ $CCD8 label=loc_CCD8
c $CCDD Routine at CCDD
D $CCDD Used by the routine at #R$CB6A.
@ $CCDD label=adj_dX_for_out_of_bounds
C $CCDD,3 flags12
C $CCE0,2 entering room?
C $CCE2,1 yes, exit
C $CCE3,4 near an arch?
C $CCE7,1 yes, exit
c $CCEC X
D $CCEC Used by the routine at #R$CCF6.
@ $CCEC label=loc_CCEC
C $CCEF,1 +dX
c $CCF6 X+dX+width
D $CCF6 Used by the routine at #R$CCEC.
@ $CCF6 label=loc_CCF6
C $CCF9,1 < room width?
C $CCFA,2 yes, skip
C $CCFC,4 set X OOB
C $CD00,1 dX
C $CD04,1 new dX
C $CD05,2 check again
c $CD07 Routine at CD07
D $CD07 Used by the routine at #R$CCF6.
@ $CD07 label=dX_ok
c $CD08 Routine at CD08
D $CD08 Used by the routine at #R$CB7B.
@ $CD08 label=adj_dY_for_out_of_bounds
C $CD08,3 flags12
C $CD0B,2 entering room?
C $CD0D,1 yes, exit
C $CD0E,4 near and arch?
C $CD12,1 yes, exit
c $CD17 Y
D $CD17 Used by the routine at #R$CD21.
@ $CD17 label=loc_CD17
C $CD1A,1 +dY
c $CD21 Y+dY+depth
D $CD21 Used by the routine at #R$CD17.
@ $CD21 label=loc_CD21
C $CD24,1 < room depth?
C $CD25,2 yes, skip
C $CD27,4 set Y OOB
C $CD2B,1 dY
C $CD2F,1 new dY
C $CD30,2 check again
c $CD32 Routine at CD32
D $CD32 Used by the routine at #R$CD21.
@ $CD32 label=dY_ok
c $CD33 Routine at CD33
D $CD33 Used by the routine at #R$CD4D.
@ $CD33 label=calc_2d_info
C $CD39,3 pixel X
C $CD3C,2 bit offset
C $CD3E,1 ptr sprite data (width)
C $CD3F,1 ptr height
c $CD43 Routine at CD43
D $CD43 Used by the routine at #R$CD33.
@ $CD43 label=loc_CD43
C $CD45,3 sprite data width (bytes)
C $CD49,3 sprite data height
c $CD4D Routine at CD4D
D $CD4D Used by the routines at #R$C692 and #R$CE27.
@ $CD4D label=set_draw_objs_overlapped
C $CD54,2 max objects
C $CD56,3 pixelX
C $CD5C,2 byte address
C $CD5F,3 old pixelX
C $CD65,2 bytes address
c $CD6C left extremity (byte address)
D $CD6C Used by the routine at #R$CD4D.
@ $CD6C label=loc_CD6C
C $CD6D,1 byte address
C $CD6E,3 + data width (bytes)
C $CD72,1 old byte address
C $CD73,3 + old data width bytes
c $CD7A combined width old & new
D $CD7A Used by the routine at #R$CD6C.
@ $CD7A label=loc_CD7A
C $CD7C,3 pixel Y
C $CD7F,3 old pixelY
C $CD84,3 old pixelY
c $CD87 lowest Y
D $CD87 Used by the routine at #R$CD7A.
@ $CD87 label=loc_CD87
C $CD88,3 pixel Y
C $CD8B,3 + data height (lines)
C $CD8F,3 old pixelY
C $CD92,3 + old data height (lines)
c $CD99 Routine at CD99
D $CD99 Used by the routine at #R$CD87.
@ $CD99 label=loc_CD99
C $CD9A,1 combined height (lines)
c $CD9B graphic_no
D $CD9B Used by the routine at #R$CDC2.
@ $CD9B label=test_overlap_obj
C $CD9E,1 null?
C $CD9F,2 yes, skip
C $CDA1,4 DRAW flag already set?
C $CDA5,2 yes, skip
C $CDA7,3 pixel X
C $CDAD,2 byte address of pixel
C $CDAF,1 < left extremity (to the left)?
C $CDB0,2 yes, go
C $CDB2,1 < right extermity (overlapping)?
c $CDB3 no, skip
D $CDB3 Used by the routine at #R$CDCC.
@ $CDB3 label=loc_CDB3
C $CDB5,3 pixel Y
C $CDB8,1 < lowest Y (below)?
C $CDB9,2 yes, go
C $CDBB,1 < height (overlapping)?
c $CDBC no, skip
D $CDBC Used by the routine at #R$CDD3.
@ $CDBC label=loc_CDBC
C $CDBE,4 set DRAW flag
c $CDC2 Routine at CDC2
D $CDC2 Used by the routines at #R$CD9B, #R$CDB3 and #R$CDBC.
@ $CDC2 label=next_overlap_obj
C $CDC3,3 entry size
C $CDC6,2 next entry
c $CDCC Routine at CDCC
D $CDCC Used by the routine at #R$CD9B.
@ $CDCC label=loc_CDCC
C $CDCE,3 data width (bytes)
c $CDD3 Routine at CDD3
D $CDD3 Used by the routine at #R$CDB3.
@ $CDD3 label=loc_CDD3
C $CDD5,3 data height (lines)
c $CDDA player (human top half)
@ $CDDA label=upd_32_to_47
c $CDDF player (wulf top half)
@ $CDDF label=upd_64_to_79
c $CDE2 copies most information from bottom half object
D $CDE2 handles randomly looking around
@ $CDE2 label=upd_player_top
c $CDEF Routine at CDEF
D $CDEF Used by the routine at #R$CDE2.
@ $CDEF label=loc_CDEF
C $CDF1,1 DE=top
C $CDF2,3 -32
C $CDF6,1 HL=bottom
C $CDF7,2 IY=player bottom half
C $CDF9,1 DE=top+1
C $CDFA,1 HL=bottom+1
C $CDFE,2 copy x,y,z,w,d,h,flags
C $CE00,4 height (top)
C $CE04,4 ignore in 3D calcs
C $CE08,3 flags13
C $CE0B,2 look around counter
C $CE0D,2 maybe look around again?
C $CE0F,3 dec look around counter
c $CE14 look in a random direction
D $CE14 Used by the routine at #R$CDEF.
@ $CE14 label=loc_CE14
C $CE17,2 one way?
C $CE19,2 yes, go
C $CE1B,2 other way?
C $CE1D,2 yes, go
C $CE1F,3 straight ahead
c $CE22 Routine at CE22
D $CE22 Used by the routine at #R$CE3A.
@ $CE22 label=set_top_sprite
C $CE24,3 graphic_no (top half)
c $CE27 Z (bottom half)
D $CE27 Used by the routine at #R$CDEF.
@ $CE27 label=loc_CE27
C $CE2A,2 directly above
C $CE2C,3 store in top half
c $CE33 graphic_no (bottom half)
D $CE33 Used by the routine at #R$CE14.
@ $CE33 label=loc_CE33
C $CE38,2 look one way
c $CE3A look for 8 iterations
D $CE3A Used by the routine at #R$CE40.
@ $CE3A label=loc_CE3A
c $CE40 Routine at CE40
D $CE40 Used by the routine at #R$CE14.
@ $CE40 label=loc_CE40
C $CE45,2 look the other way
c $CE49 Routine at CE49
D $CE49 Used by the routine at #R$AFC7.
@ $CE49 label=save_2d_info
C $CE49,3 data width (bytes)
C $CE4F,3 data height (lines)
C $CE55,3 pixel X
C $CE5B,3 pixel Y
c $CE62 Routine at CE62
D $CE62 Used by the routine at #R$B000.
@ $CE62 label=list_objects_to_draw
C $CE64,2 max 40 objects in list
C $CE66,3 object size = 32 bytes
C $CE69,7 base of object table
C $CE70,2 init object index
c $CE72 graphic no.
D $CE72 Used by the routine at #R$CE80.
@ $CE72 label=loc_CE72
C $CE75,1 null?
C $CE76,2 yes, skip
C $CE78,4 draw flag set?
C $CE7C,2 no, skip
C $CE7E,1 add object index to list
C $CE7F,1 ptr next list address
c $CE80 next object index
D $CE80 Used by the routine at #R$CE72.
@ $CE80 label=loc_CE80
C $CE81,2 ptr next object in table
C $CE83,4 loop through all objects
C $CE87,1 flag end of list
b $CE8B Data block at CE8B
@ $CE8B label=objects_to_draw
B $CE8B,48,8
c $CEBB Routine at CEBB
D $CEBB Used by the routine at #R$D653.
@ $CEBB label=calc_display_order_and_render
c $CEC3 Routine at CEC3
D $CEC3 Used by the routines at #R$CFD1 and #R$D003.
@ $CEC3 label=process_remaining_objs
c $CEC6 graphic no.
@ $CEC6 label=loc_CEC6
C $CEC8,2 end of list?
C $CECA,3 yes, exit
C $CECD,2 already rendered?
C $CECF,2 yes, skip
C $CED1,8 ret=HL
C $CED9,2 IX=ptr graphic object table entry #1
c $CEDB next object graphic no.
D $CEDB Used by the routines at #R$CF9F, #R$CFA2, #R$CFB8 and #R$CFFD.
@ $CEDB label=loc_CEDB
C $CEDD,2 end of list?
C $CEEE,2 HL,IY=ptr graphic object table entry #2
C $CEF2,1 IX,BC=ptr graphic object table entry #1
C $CEF4,2 same objects?
C $CEF6,4 yes, loop
C $CEFA,3 Z2
C $CEFD,3 add height(H2)
C $CF00,1 Z2+H2
C $CF01,3 Z1
C $CF04,1 Z1-(Z2+H2)
C $CF05,2 no overlap (C+=0)
C $CF07,3 Z1
C $CF0A,3 add H1
C $CF0E,3 Z2
C $CF11,1 Z2-(Z1+H1)
C $CF12,2 overlap (C+=1)
C $CF14,1 no overlap (C+=2)
c $CF15 Routine at CF15
D $CF15 Used by the routine at #R$CEDB.
@ $CF15 label=loc_CF15
c $CF16 Y2
D $CF16 Used by the routine at #R$CEDB.
@ $CF16 label=loc_CF16
C $CF19,3 add depth (D2)
C $CF1D,3 Y1
C $CF20,3 sub D1
C $CF23,1 Y1-D1-(Y2+d2)
C $CF24,2 no overlap (C+=0)
C $CF26,3 Y1
C $CF29,3 add D1
C $CF2D,3 Y2
C $CF30,3 sub D2
C $CF33,1 Y2-D2-(Y1+D1)
C $CF35,2 overlap (C+=3)
C $CF37,2 no overlap (C+=6)
c $CF39 Routine at CF39
D $CF39 Used by the routine at #R$CF16.
@ $CF39 label=loc_CF39
c $CF3C X2
D $CF3C Used by the routine at #R$CF16.
@ $CF3C label=loc_CF3C
C $CF3F,3 add width (W2)
C $CF43,3 X1
C $CF46,3 sub W1
C $CF49,1 X1-W1-(X2+W2)
C $CF4A,2 no overlap (C+=0)
C $CF4C,3 X1
C $CF4F,3 add W1
C $CF53,3 X2
C $CF56,3 sub W2
C $CF59,1 X2-W2-(X1+W1)
C $CF5B,2 overlap (C+=9)
C $CF5D,2 no overlap (c+=18)
c $CF5F Routine at CF5F
D $CF5F Used by the routine at #R$CF3C.
@ $CF5F label=loc_CF5F
c $CF62 Routine at CF62
D $CF62 Used by the routine at #R$CF3C.
@ $CF62 label=loc_CF62
C $CF63,6 jump table
b $CF69 Data block at CF69
@ $CF69 label=off_CF69
W $CF69,2,2 continue_1
W $CF6B,2,2 continue_1
W $CF6D,2,2 continue_1
W $CF6F,2,2 d_3467121516
W $CF71,2,2 d_3467121516
W $CF73,2,2 continue_1
W $CF75,2,2 d_3467121516
W $CF77,2,2 d_3467121516
W $CF79,2,2 continue_1
W $CF7B,2,2 continue_1
W $CF7D,2,2 continue_2
W $CF7F,2,2 continue_2
W $CF81,2,2 d_3467121516
W $CF83,2,2 objs_coincide
W $CF85,2,2 continue_2
W $CF87,2,2 d_3467121516
W $CF89,2,2 d_3467121516
W $CF8B,2,2 continue_1
W $CF8D,2,2 continue_1
W $CF8F,2,2 continue_2
W $CF91,2,2 continue_2
W $CF93,2,2 continue_1
W $CF95,2,2 continue_2
W $CF97,2,2 continue_2
W $CF99,2,2 continue_1
W $CF9B,2,2 continue_1
W $CF9D,2,2 continue_1
c $CF9F Routine at CF9F
@ $CF9F label=continue_1
c $CFA2 Routine at CFA2
@ $CFA2 label=continue_2
c $CFA5 object following obj#2
@ $CFA5 label=d_3467121516
C $CFA8,1 ptr obj#2
C $CFA9,1 index
c $CFAD Routine at CFAD
@ $CFAD label=loc_CFAD
C $CFAE,2 empty entry?
C $CFB0,2 yes, go
C $CFB2,1 already listed?
C $CFB3,2 yes, go
C $CFB5,1 next entry
C $CFB6,2 loop
c $CFB8 index
D $CFB8 Used by the routine at #R$CFAD.
@ $CFB8 label=loc_CFB8
C $CFB9,1 add to list
C $CFBA,1 next entry
C $CFBD,1 flag empty
C $CFC0,2 obj#2=obj#1
C $CFC2,3 object following obj#2
C $CFC5,6 set to object following #1
C $CFCB,3 go again
c $CFCE Routine at CFCE
D $CFCE Used by the routine at #R$CFAD.
@ $CFCE label=loc_CFCE
c $CFD1 graphic_no
@ $CFD1 label=loc_CFD1
C $CFD3,2 end of list?
C $CFD5,3 yes, exit
C $CFD8,1 what we're looking for?
C $CFD9,4 no, loop
C $CFDD,2 obj#2=obj#1
c $CFE1 obj#1 graphic no.
@ $CFE1 label=objs_coincide
C $CFE6,2 special object?
C $CFE8,2 no, skip
C $CFEA,4 set to twinkle sprite
c $CFF0 object #2 graphic no.
D $CFF0 Used by the routine at #R$CFE1.
@ $CFF0 label=loc_CFF0
C $CFF5,2 special object?
C $CFF7,2 no, skip
C $CFF9,4 set to twinkle sprite
c $CFFD continue
D $CFFD Used by the routines at #R$CFE1 and #R$CFF0.
@ $CFFD label=loc_CFFD
c $D000 Routine at D000
D $D000 Used by the routine at #R$CEDB.
@ $D000 label=render_obj_no1
c $D003 back to entry we're searching for
D $D003 Used by the routine at #R$CFD1.
@ $D003 label=render_obj
C $D004,2 flag as rendered
C $D008,7 set entry to empty
C $D00F,3 render object to video buffer
C $D012,3 restart processing again
c $D015 Routine at D015
D $D015 Used by the routine at #R$CEC6.
@ $D015 label=render_done
b $D01A Data block at D01A
@ $D01A label=render_list
B $D01A,8,1
c $D022 Routine at D022
D $D022 Used by the routine at #R$C83E.
@ $D022 label=check_user_input
C $D033,2 keybd/joystick bits only
c $D03E address interface ii joystick
@ $D03E label=interface_ii
C $D040,4 read joystick
C $D044,2 5 bits to read
c $D046 Routine at D046
@ $D046 label=loc_D046
C $D047,2 reverse bit order
C $D049,4 loop thru all bits
C $D04D,1 store joystick reading
C $D04E,2 0,9,8,7,6
C $D053,1 add joystick bits
C $D056,2 0/left???
c $D05C Routine at D05C
D $D05C Used by the routine at #R$D046.
@ $D05C label=loc_D05C
c $D062 Routine at D062
D $D062 Used by the routine at #R$D05C.
@ $D062 label=loc_D062
c $D068 Routine at D068
D $D068 Used by the routine at #R$D062.
@ $D068 label=loc_D068
c $D06E Routine at D06E
D $D06E Used by the routine at #R$D068.
@ $D06E label=loc_D06E
c $D074 Routine at D074
D $D074 Used by the routine at #R$D06E.
@ $D074 label=loc_D074
c $D077 Routine at D077
D $D077 Used by the routine at #R$D022.
@ $D077 label=kempston
C $D07B,2 right?
C $D07F,2 flag RIGHT
c $D081 left?
D $D081 Used by the routine at #R$D077.
@ $D081 label=loc_D081
C $D085,2 flag LEFT
c $D087 down?
D $D087 Used by the routine at #R$D081.
@ $D087 label=loc_D087
C $D08B,2 flag PICKUP/DROP
c $D08D up?
D $D08D Used by the routine at #R$D087.
@ $D08D label=loc_D08D
C $D091,2 flag FORWARD
c $D093 fire?
D $D093 Used by the routine at #R$D08D.
@ $D093 label=loc_D093
C $D097,2 flag JUMP
c $D099 Routine at D099
D $D099 Used by the routine at #R$D093.
@ $D099 label=loc_D099
c $D09C Routine at D09C
D $D09C Used by the routine at #R$D022.
@ $D09C label=cursor
C $D09E,2 row 3
C $D0A3,2 '5'?
c $D0A9 row 4
D $D0A9 Used by the routine at #R$D09C.
@ $D0A9 label=loc_D0A9
C $D0A9,2 'ï'
C $D0AE,2 '0'?
c $D0B4 '7'?
D $D0B4 Used by the routine at #R$D0A9.
@ $D0B4 label=loc_D0B4
c $D0BA '8'?
D $D0BA Used by the routine at #R$D0B4.
@ $D0BA label=loc_D0BA
c $D0C0 '6'?
D $D0C0 Used by the routine at #R$D0BA.
@ $D0C0 label=loc_D0C0
c $D0C8 row 0 (SHIFT,Z,X,C,V)
D $D0C8 Used by the routine at #R$D022.
@ $D0C8 label=keyboard
C $D0D9,2 row 7
C $D0DE,2 SYM SHIFT? (right)
C $D0E0,2 no, skip
C $D0E2,2 flag RIGHT
c $D0E4 'M'? (left)
D $D0E4 Used by the routine at #R$D0C8.
@ $D0E4 label=loc_D0E4
C $D0E6,2 no, skip
C $D0E8,2 flag LEFT
c $D0EA 'N'? (right)
D $D0EA Used by the routine at #R$D0E4.
@ $D0EA label=loc_D0EA
C $D0EC,2 no, skip
C $D0EE,2 flag RIGHT
c $D0F0 'B'? (left)
D $D0F0 Used by the routine at #R$D0EA.
@ $D0F0 label=loc_D0F0
C $D0F4,2 flag LEFT
c $D0F6 row 1,6 (2nd row) A,S,F,G,G,H,J,K,L,ENTER (FORWARD)
D $D0F6 Used by the routine at #R$D0F0.
@ $D0F6 label=loc_D0F6
C $D0FD,2 flag FORWARD
c $D0FF row 2,5 (1st row) QWERTYUIOP (JUMP)
D $D0FF Used by the routine at #R$D0F6.
@ $D0FF label=loc_D0FF
C $D106,2 flag JUMP
c $D108 row 3,4 (0-9) (PICKUP/DROP)
D $D108 Used by the routine at #R$D0FF.
@ $D108 label=loc_D108
C $D10F,2 flag PICKUP/DROP
c $D111 (3rd row) SHIFT,Z,X,C,V,SPACE,SYMSHIFT,M,N,B (LEFT/RIGHT)
D $D111 Used by the routines at #R$D022, #R$D074, #R$D099, #R$D0C0 and #R$D108.
@ $D111 label=finished_input
C $D116,2 Z,X,C,V,SYMSHIFT,M,N,B
C $D123,2 flag PICKUP/DROP (directional)
c $D125 Routine at D125
D $D125 Used by the routine at #R$D111.
@ $D125 label=loc_D125
c $D12A Routine at D12A
D $D12A Used by the routine at #R$AFB7.
@ $D12A label=lose_life
C $D133,3 1st 2 entries
C $D136,2 copy scratchpad back to object table
C $D13F,1 decrement life
C $D140,3 any left? no, exit
C $D143,6 sprite index
C $D149,2 day/night?
C $D14C,3 plyr graphic no
C $D151,1 legs human/wulf?
C $D155,3 top half playr graphic no
C $D15B,2 top half human/wulf
b $D161 scratchpad for player sprites/objects
@ $D161 label=plyr_spr_1_scratchpad
B $D161,8,8
b $D169 Data block at D169
@ $D169 label=start_loc_1
B $D169,4,4
b $D16D Data block at D16D
@ $D16D label=flags12_1
B $D16D,4,4
b $D171 Data block at D171
@ $D171 label=byte_D171
B $D171,16,8
b $D181 Data block at D181
@ $D181 label=plyr_spr_2_scratchpad
B $D181,8,8
b $D189 Data block at D189
@ $D189 label=start_loc_2
B $D189,8,8
b $D191 Data block at D191
@ $D191 label=byte_D191
B $D191,16,8
b $D1A1 Data block at D1A1
@ $D1A1 label=plyr_spr_init_data
B $D1A1,16,8
c $D1B1 Routine at D1B1
D $D1B1 Used by the routine at #R$AF88.
@ $D1B1 label=init_start_location
C $D1C4,2 graphic_no (player top half)
C $D1C6,3 plyr_spr_1_scratchpad (byte 16)
C $D1C9,2 graphic_no (player bottom half)
C $D1CB,6 plyr_spr_2_scratchpad (byte 16)
C $D1D1,2 random 0-3
C $D1D9,1 offset to random entry
C $D1DA,1 start location
b $D1E2 Data block at D1E2
@ $D1E2 label=start_locations
B $D1E2,4,4
c $D1E6 Routine at D1E6
D $D1E6 Used by the routine at #R$AFBA.
@ $D1E6 label=build_screen_objects
C $D1E9,1 1st screen of the game?
C $D1EA,2 yes, skip updating special objects
C $D1EC,3 save state in special_objs_tbl
c $D1EF Routine at D1EF
D $D1EF Used by the routine at #R$D1E6.
@ $D1EF label=loc_D1EF
C $D1F5,6 find special objects in new room
C $D1FB,1 flag not moving
C $D208,2 flag rendering of status information
C $D20D,12 plyr_spr_1 screen
c $D219 plyr_spr_1_screen
D $D219 Used by the routine at #R$D1EF.
@ $D219 label=flag_room_visited
C $D220,2 /8 (byte offset)
C $D22B,2 SET 0,(HL)
C $D22D,6 self-modifying code
C $D233,1 offset to room flag
C $D234,3 D235=flag as visited?
c $D237 Routine at D237
D $D237 Used by the routines at #R$D24C, #R$D255 and #R$D296.
@ $D237 label=transfer_sprite
C $D237,1 sprite index
C $D239,3 store sprite index
C $D23C,1 flags
C $D23E,3 store flags
C $D241,1 X
C $D243,3 pixel X
C $D246,1 Y
C $D248,3 pixel Y
c $D24C Routine at D24C
D $D24C Used by the routines at #R$D255 and #R$D296.
@ $D24C label=transfer_sprite_and_print
C $D24C,9 copy to scratchpad
c $D255 Routine at D255
D $D255 Used by the routine at #R$B03F.
@ $D255 label=display_panel
C $D25F,3 x+=16,y-=8
C $D262,2 5 sprites
C $D270,3 x+=16,y+=8
C $D273,2 5 sprites
b $D27E Data block at D27E
@ $D27E label=panel_data
B $D27E,24,4
c $D296 Routine at D296
D $D296 Used by the routines at #R$BA79 and #R$BEBF.
@ $D296 label=print_border
C $D2AC,3 X+=8, Y+=0
C $D2AF,2 24 times
C $D2B7,2 24 times
C $D2BF,3 X+=0, Y+=1
C $D2C2,2 128 times
C $D2CA,2 128 times
b $D2CF sprite index, flags, X, Y
@ $D2CF label=border_data
B $D2CF,32,4
c $D2EF Routine at D2EF
D $D2EF Used by the routine at #R$B03F.
@ $D2EF label=colour_panel
C $D2F3,3 1 bytes, 3 lines
C $D2FC,3 1 byte, 3 lines
C $D302,2 'B'
C $D307,3 6 bytes, 4 lines
c $D30D Routine at D30D
D $D30D Used by the routines at #R$B03F and #R$C3FF.
@ $D30D label=colour_sun_moon
C $D30D,3 graphic_no
C $D310,2 sun?
C $D312,2 attribute
C $D314,3 yes, skip
c $D317 attribute memory
D $D317 Used by the routine at #R$D30D.
@ $D317 label=loc_D317
C $D31A,3 4 bytes, 2 lines
c $D320 Routine at D320
D $D320 Used by the routine at #R$D1EF.
@ $D320 label=adjust_plyr_xyz_for_room_size
C $D32C,3 X
C $D32F,1 0?
C $D330,2 yes, go
C $D332,1 -1?
C $D333,2 yes, go
C $D335,3 Y
C $D338,1 0?
C $D339,2 yes, go
C $D33B,1 -1?
C $D33C,3 yes, go
c $D33F Routine at D33F
D $D33F Used by the routine at #R$D320.
@ $D33F label=enter_arch_s
C $D344,2 128
C $D346,1 sub (room_size_Y-2)
C $D347,3 sub depth
c $D34A plyr_spr_1 Y
D $D34A Used by the routine at #R$D362.
@ $D34A label=adjust_plyr_y
c $D34D set draw plyr_spr_1
D $D34D Used by the routine at #R$D37A.
@ $D34D label=copy_spr_1_xy_2
C $D351,4 set draw_plyr_spr_2
C $D355,3 plyr_spr_1 X
C $D358,3 set plyr_spr_2 X
C $D35B,3 plyr_spr_1 Y
C $D35E,3 set plyr_spr_2 Y
c $D362 Routine at D362
D $D362 Used by the routine at #R$D320.
@ $D362 label=enter_arch_n
C $D367,1 room_size_Y-2
C $D36A,3 add depth
c $D36F Routine at D36F
D $D36F Used by the routine at #R$D320.
@ $D36F label=enter_arch_w
C $D376,1 sub (room_size_X-2)
C $D377,3 sub width
c $D37A Routine at D37A
D $D37A Used by the routine at #R$D37F.
@ $D37A label=adjust_plyr_x
c $D37F Routine at D37F
D $D37F Used by the routine at #R$D320.
@ $D37F label=enter_arch_e
C $D384,1 room_size_X-2
C $D385,2 add 128
C $D387,3 add width
c $D38C Routine at D38C
D $D38C Used by the routines at #R$D33F, #R$D362, #R$D36F and #R$D37F.
@ $D38C label=adjust_plyr_Z_for_arch
C $D390,3 2 object entries
C $D393,2 max 4 arches/location
c $D395 graphic no.
@ $D395 label=loc_D395
C $D398,2 arch?
C $D39A,1 no, return
C $D39B,3 X
C $D39E,3 (X+Y)=pixelY
C $D3A1,1 match?
C $D3A2,2 yes, adjust player
C $D3A4,2 next object sprite pair
C $D3A6,3 loop through all arches
c $D3A9 Routine at D3A9
D $D3A9 Used by the routine at #R$D395.
@ $D3A9 label=adj_plyr_Z
C $D3A9,3 arch Z
C $D3AC,3 set player_sprite_1 Z
C $D3B1,3 set player_sprite_2 Z
c $D3B5 Routine at D3B5
D $D3B5 Used by the routines at #R$CEC6, #R$CEDB and #R$D5B2.
@ $D3B5 label=get_ptr_object
C $D3B9,2 HL=A
C $D3BB,1 x2
C $D3BC,1 x4
C $D3BD,1 x8
C $D3BE,1 x16
C $D3BF,1 x32
C $D3C0,3 base of graphical object table
C $D3C3,1 get table entry
c $D3C6 Retrieves graphics objects to render screen
D $D3C6 - background object sprites, then
D $D3C6 - foreground object sprites
D $D3C6 Populates graphics_object_tbl
R $D3C6 Input:IX player object
@ $D3C6 label=retrieve_screen
C $D3C9,6 end of location table
c $D3CF get location ID
@ $D3CF label=find_screen
C $D3D1,3 same as player (current) screen?
C $D3D4,2 yes, exit
C $D3D6,1 get entry size
C $D3D7,4 ptr next entry
C $D3DB,2 end of location table?
C $D3DD,3 yes, exit
C $D3E0,2 loop
c $D3E2 start of program data
D $D3E2 Used by the routines at #R$D3CF, #R$D432 and #R$D4EA.
@ $D3E2 label=zero_end_of_graphic_objs_tbl
C $D3E6,2 done?
C $D3E8,1 yes, exit
C $D3E9,2 32 bytes to clear
c $D3F0 get entry size
D $D3F0 Used by the routine at #R$D3CF.
@ $D3F0 label=found_screen
C $D3F2,1 get attributes
C $D3F3,2 mask off unused bits
C $D3F5,2 bright ON
C $D3F7,4 store
C $D3FB,1 DE=attributes
C $D3FC,1 get attributes
C $D3FD,1 ptr background type
C $D401,2 get room size
C $D403,1 C=room size
C $D405,1 A=room size x3
C $D409,3 ptr entry
C $D40C,1 room size X
C $D411,1 room size Y
C $D416,1 room size Z
C $D41B,1 adjust entry size
c $D41E get background type
D $D41E Used by the routine at #R$D432.
@ $D41E label=next_bg_obj
C $D41F,1 next entry
C $D420,2 done all background types?
C $D422,7 yes, exit
C $D429,1 word offset
C $D42D,1 ptr entry
C $D431,1 HL=ptr to background object
c $D432 8 bytes/entry
@ $D432 label=next_bg_obj_sprite
C $D435,2 copy to graphic_object_tbl
C $D437,3 player (current) screen
C $D43A,1 store
C $D43E,4 8+1+23 = 32 bytes/entry
C $D442,1 done object?
C $D443,4 no, loop
C $D447,5 done location? no, loop
c $D44C adjust bytes remaining
D $D44C Used by the routine at #R$D41E.
@ $D44C label=find_fg_objs
C $D44F,1 graphic object table
C $D450,2 IY = graphic object table
c $D452 block/count
D $D452 Used by the routine at #R$D4CD.
@ $D452 label=next_fg_obj
C $D453,2 count
C $D455,1 adjust to 1-8
C $D456,1 C = count
C $D457,1 block/count
C $D459,1 adjust bytes remaining
C $D45A,1 location (x/y/z)
C $D45F,2 block x2
C $D464,6 ptr entry
C $D46A,1 HL=ptr object
c $D46B Routine at D46B
D $D46B Used by the routine at #R$D4CD.
@ $D46B label=next_fg_obj_in_count
c $D46C sprite
D $D46C Used by the routine at #R$D4CD.
@ $D46C label=next_fg_obj_sprite
C $D471,1 width
C $D476,1 depth
C $D47B,1 height
C $D480,1 flags
C $D48B,1 offsets
C $D48F,2 x1 in bit3
C $D491,1 E=x1*8
C $D492,1 location (x/y/z)
C $D497,2 x*16
C $D499,1 x*16+x1*8
C $D49A,2 x*16+x1*8+72
C $D49C,3 store X
C $D49F,1 offsets
C $D4A2,2 y1 in bit3
C $D4A4,1 E=y1*8
C $D4A5,1 location (x/y/z)
C $D4A7,2 Y*16
C $D4A9,1 Y*16+Y1*8
C $D4AA,2 Y*16+Y1*8+72
C $D4AC,3 store Y
C $D4AF,1 location (x/y/z)
C $D4B2,2 z
C $D4B5,1 z*4
C $D4B7,1 z*8
C $D4B8,1 z*12
C $D4B9,1 z*12+z1*4+rubbish
C $D4BB,2 mask off rubbish bits
C $D4C1,1 z*12+z1*4+room_size_Z
C $D4C2,3 store Z
C $D4CB,2 9+23=32 bytes/entry
c $D4CD zero byte
@ $D4CD label=loc_D4CD
C $D4D6,1 next entry
C $D4D7,1 done?
C $D4D8,7 no, loop
C $D4DF,1 done count blocks?
C $D4E0,10 yes, exit loop
c $D4EA Routine at D4EA
D $D4EA Used by the routine at #R$D4CD.
@ $D4EA label=loc_D4EA
c $D4F2 Routine at D4F2
D $D4F2 Used by the routines at #R$B2DA, #R$C274, #R$C3A4, #R$D3CF, #R$D3F0, #R$D452, #R$D865 and #R$D88D.
@ $D4F2 label=add_HL_A
c $D4F9 Routine at D4F9
D $D4F9 Used by the routine at #R$D865.
@ $D4F9 label=HL_equals_DE_x_A
c $D4FF Routine at D4FF
D $D4FF Used by the routine at #R$D504.
@ $D4FF label=loc_D4FF
c $D504 Routine at D504
D $D504 Used by the routine at #R$D4FF.
@ $D504 label=loc_D504
c $D508 Routine at D508
D $D508 Used by the routines at #R$C12B, #R$C530, #R$C583, #R$D3E2 and #R$D432.
@ $D508 label=zero_DE
c $D509 Routine at D509
D $D509 Used by the routine at #R$BC7A.
@ $D509 label=fill_DE
c $D50E Routine at D50E
D $D50E Used by the routine at #R$B000.
@ $D50E label=handle_pause
C $D50E,2 SPACE,SYMSHIFT,M,N,B
C $D513,2 SPACE?
C $D515,1 no, exit
C $D516,2 any other key?
C $D518,1 yes, exit
c $D519 Routine at D519
@ $D519 label=debounce_space_press
C $D51E,2 SPACE?
C $D520,5 yes, loop
c $D525 Routine at D525
@ $D525 label=wait_for_space
C $D52A,2 SPACE?
C $D52C,2 no, loop
c $D52E Routine at D52E
@ $D52E label=debounce_space_release
C $D533,2 SPACE?
C $D535,5 no, loop
c $D53A Routine at D53A
D $D53A Used by the routines at #R$AF6C, #R$AF7F, #R$D544 and #R$D567.
@ $D53A label=clr_mem
c $D53C zero location
D $D53C Used by the routines at #R$D54C and #R$D556.
@ $D53C label=clr_byte
C $D53D,1 next location
C $D540,1 done?
C $D541,3 no, loop
c $D544 screen memory
D $D544 Used by the routine at #R$D55F.
@ $D544 label=clr_bitmap_memory
C $D547,3 # bytes to clear
c $D54C Routine at D54C
D $D54C Used by the routine at #R$D55F.
@ $D54C label=clr_attribute_memory
C $D54C,3 colour data
C $D54F,3 # bytes to clear
C $D552,2 bright yellow on black
c $D556 Routine at D556
D $D556 Used by the routine at #R$B03F.
@ $D556 label=fill_attr
C $D556,3 colour data
C $D559,3 # bytes to clear
C $D55C,1 attribute to set
C $D55D,2 fill
c $D55F Routine at D55F
D $D55F Used by the routines at #R$AF88, #R$BA29 and #R$BAAB.
@ $D55F label=clear_scrn
C $D55F,1 border colour BLACK, activate MIC
C $D560,2 ULA
c $D567 Routine at D567
D $D567 Used by the routines at #R$BA29, #R$BAAB, #R$BD15 and #R$D1EF.
@ $D567 label=clear_scrn_buffer
C $D567,3 # bytes to clear
C $D56A,5 screen buffer
c $D56F copies from screen buffer to video memory
D $D56F Used by the routines at #R$B03F, #R$BA79 and #R$BEBF.
@ $D56F label=update_screen
C $D56F,3 screen buffer
C $D572,3 last line of attribute memory
C $D575,3 B=32 bytes, C=192 lines
c $D578 Routine at D578
D $D578 Used by the routine at #R$D59A.
@ $D578 label=loc_D578
c $D57B source byte
@ $D57B label=loc_D57B
C $D57C,1 copy to destination
C $D57D,2 wipe source byte
C $D57F,1 next source location
C $D580,1 next destination location
C $D581,2 loop for a line
C $D583,1 source - start of line
C $D587,1 next line
C $D588,1 last line of attribute memory
C $D599,1 add 2K
c $D59A byte, line counter
D $D59A Used by the routine at #R$D57B.
@ $D59A label=loc_D59A
C $D59B,1 dec line counter
C $D59C,3 loop through all lines
c $D59F Routine at D59F
D $D59F Used by the routine at #R$B000.
@ $D59F label=render_dynamic_objects
C $D5A0,8 zero count of wiped objects
C $D5A8,1 initial rendering?
C $D5A9,6 yes, no need to wipe anything
C $D5AF,3 temp storage
c $D5B2 Routine at D5B2
D $D5B2 Used by the routines at #R$D61C and #R$D62C.
@ $D5B2 label=wipe_next_object
C $D5B5,1 object index
C $D5B6,1 next list entry
C $D5B7,3 store
C $D5BA,2 end of list?
C $D5BC,9 yes, skip
C $D5C5,4 wipe flag?
C $D5C9,2 no, go
C $D5CB,4 clear wipe flag
C $D5CF,3 pixel X
C $D5D2,3 old pixel X
C $D5D8,3 old pixel X
c $D5DB old pixel X
D $D5DB Used by the routine at #R$D649.
@ $D5DB label=loc_D5DB
C $D5E1,2 old pixel X byte address
C $D5E3,3 old data width (bytes)
C $D5E7,3 pixel X
C $D5ED,2 pixel X byte address
C $D5EF,3 data width (bytes)
c $D5F6 Routine at D5F6
D $D5F6 Used by the routine at #R$D5DB.
@ $D5F6 label=loc_D5F6
C $D5FA,2 old/pixel X byte address
C $D5FF,1 H=number of bytes to wipe
C $D600,3 pixel Y
C $D603,3 pixel Y < old pixel Y?
C $D606,2 yes, go
C $D608,3 old pixel Y
c $D60B old pixel Y
D $D60B Used by the routine at #R$D64E.
@ $D60B label=loc_D60B
C $D60E,3 old data height (lines)
C $D612,3 pixel Y
C $D615,3 data height (lines)
c $D61C Routine at D61C
D $D61C Used by the routine at #R$D60B.
@ $D61C label=loc_D61C
C $D61F,2 off bottom of screen?
C $D621,11 yes, go
c $D62C Routine at D62C
D $D62C Used by the routine at #R$D61C.
@ $D62C label=loc_D62C
C $D62F,8 in BC
C $D637,1 swap HL & BC
C $D641,1 screen buffer address
C $D642,1 wipe sprite
c $D649 pixel X
D $D649 Used by the routine at #R$D5B2.
@ $D649 label=loc_D649
c $D64E pixel Y
D $D64E Used by the routine at #R$D5F6.
@ $D64E label=loc_D64E
c $D653 Routine at D653
D $D653 Used by the routines at #R$D59F and #R$D5B2.
@ $D653 label=loc_D653
C $D662,1 add the number of wipes
c $D666 Routine at D666
@ $D666 label=loc_D666
C $D66A,1 done all wipes?
C $D66B,3 yes, exit
C $D66E,1 source
C $D66F,1 destination
C $D672,1 lines
C $D673,1 bytes/line
C $D677,2 loop
c $D679 Routine at D679
D $D679 Used by the routine at #R$D666.
@ $D679 label=loc_D679
c $D67C Blit to Screen
D $D67C Input:HL source DE destination B lines C bytes/line
@ $D67C label=blit_to_screen
C $D687,1 next line
c $D69A done all lines?
D $D69A Used by the routine at #R$D67C.
@ $D69A label=loc_D69A
C $D69B,3 no, loop
c $D69E Build a look-up table of values shifted left 1-7 bits $F200-$FFFF
D $D69E Used by the routine at #R$AF88.
@ $D69E label=build_lookup_tbls
c $D6A0 Routine at D6A0
D $D6A0 Used by the routine at #R$D6A7.
@ $D6A0 label=loc_D6A0
c $D6A7 Routine at D6A7
@ $D6A7 label=loc_D6A7
N $D6B8 Build a look-up table of bit-reversed bytes
c $D6BB byte offset from $F100
D $D6BB Used by the routine at #R$D6BE.
@ $D6BB label=loc_D6BB
C $D6BC,2 8 bits
c $D6BE Routine at D6BE
@ $D6BE label=loc_D6BE
C $D6C0,2 reverse bits
C $D6C2,2 loop all bits
C $D6C4,1 store
C $D6C5,1 next index/location
C $D6C6,3 loop 256 bytes
c $D6C9 Routine at D6C9
D $D6C9 Used by the routines at #R$C0DD, #R$CD33 and #R$D710.
@ $D6C9 label=calc_pixel_XY
C $D6C9,3 X
C $D6CC,3 add Y
C $D6D1,3 add pixel_x_adj
C $D6D4,3 pixel X
C $D6D7,3 Y
C $D6DA,3 subtract X
C $D6E1,3 Z
C $D6E6,3 pixel_y_adj
C $D6E9,3 pixel Y
C $D6EC,2 bottom line of screen?
c $D6EF Flips sprite data (H,V) if required in-place
D $D6EF Used by the routines at #R$CD33 and #R$D718.
@ $D6EF label=flip_sprite
C $D6EF,3 sprite index
C $D6F4,1 word offset
C $D6F8,1 sprite table entry
C $D6FB,1 DE = sprite address
C $D6FC,1 width
C $D6FD,1 null sprite?
C $D6FE,4 no, skip
C $D702,1 exit from caller
c $D704 Routine at D704
D $D704 Used by the routine at #R$D003.
@ $D704 label=calc_pixel_XY_and_render
C $D704,3 graphic no.
C $D707,2 flagged as ???
C $D709,2 no, continue
C $D70B,4 set to null
c $D710 flag don't draw
D $D710 Used by the routine at #R$D704.
@ $D710 label=loc_D710
C $D717,1 off bottom of screen, skip
c $D718 Routine at D718
D $D718 Used by the routines at #R$BC7A, #R$BEE4, #R$BF59, #R$C3C3 and #R$D24C.
@ $D718 label=print_sprite
C $D71B,3 pixel X
C $D71E,2 bit offset?
C $D720,14 no, skip
C $D72E,3 width_bytes
c $D73C self-modifying code
D $D73C Used by the routine at #R$D76F.
@ $D73C label=loc_D73C
C $D748,3 height_lines
C $D74E,2 off bottom of screen?
C $D750,4 no, skip
C $D754,3 +height_lines
C $D757,3 store height_lines
c $D75A pixel X
D $D75A Used by the routine at #R$D73C.
@ $D75A label=loc_D75A
C $D75D,3 pixel Y
C $D76A,3 height_lines
c $D76F Routine at D76F
D $D76F Used by the routine at #R$D718.
@ $D76F label=loc_D76F
C $D773,3 width_bytes
c $D790 Routine at D790
D $D790 Used by the routine at #R$D7AC.
@ $D790 label=loc_D790
c $D7AA Routine at D7AA
D $D7AA Used by the routines at #R$D75A and #R$D800.
@ $D7AA label=loc_D7AA
c $D7AC patched
@ $D7AC label=loc_D7AC
c $D7FF Routine at D7FF
D $D7FF Used by the routine at #R$D790.
@ $D7FF label=loc_D7FF
c $D800 patched
@ $D800 label=loc_D800
c $D811 Routine at D811
D $D811 Used by the routines at #R$BE31, #R$BE4C, #R$BF59, #R$BF91, #R$C432, #R$D62C and #R$D75A.
@ $D811 label=calc_vidbuf_addr
C $D81E,3 bitmap buffer
C $D821,1 calculate bitmap memory address
C $D823,1 BC = bitmap memory address
c $D826 Routine at D826
D $D826 Used by the routines at #R$BF91, #R$C432 and #R$D62C.
@ $D826 label=calc_vram_addr
c $D848 Routine at D848
D $D848 Used by the routines at #R$BE56 and #R$BF91.
@ $D848 label=calc_attrib_addr
c $D865 flip sprite
D $D865 Input:DE sprite data address
@ $D865 label=vflip_sprite_data
C $D866,1 width
C $D867,3 same Vflip as stored?
C $D86C,2 yes, skip
C $D86E,1 width
C $D86F,2 toggle Vflip
C $D871,1 store updated flag
C $D872,1 *2
C $D875,1 B = width x 2 (data+mask)
C $D877,1 height
C $D879,1 sprite data
C $D87C,2 DE = width x 2
C $D87E,3 HL = width x 2 x height
C $D881,1 sprite data
C $D882,1 skip sprite data (including mask bytes)
C $D883,1 DE=end of sprite data, HL=sprite data
C $D884,1 width x 2
C $D885,3 HL=sprite data + width x 2
C $D888,1 last byte of sprite data
C $D889,1 (height+1) x width x 2 - 1
C $D88A,2 height / 2
c $D88C B=widthx2, C=height/2
D $D88C Used by the routine at #R$D88D.
@ $D88C label=loc_D88C
c $D88D sprite data byte from end
@ $D88D label=vflip_sprite_line_pair
C $D88E,1 sprite data from start
C $D88F,1 store end data at start
C $D891,1 store start data at end
C $D892,1 next start byte
C $D893,1 next end byte
C $D894,8 flip sprite and mask data for line pair
C $D89C,3 next line
C $D89F,1 done all lines?
C $D8A0,2 no, loop
c $D8A2 sprite data address
D $D8A2 Used by the routine at #R$D865.
@ $D8A2 label=loc_D8A2
C $D8A4,1 width (bytes)
C $D8A5,3 same Hflip as stored?
C $D8AA,2 yes, skip
C $D8AC,1 width
C $D8AD,2 toggle Hflip flag
C $D8AF,1 store updated flag
C $D8B0,2 width
C $D8B5,1 height
C $D8B7,1 sprite data
C $D8B8,1 HL=sprite data
C $D8BB,1 HL'=sprite data
c $D8BF Routine at D8BF
D $D8BF Used by the routine at #R$D8CD.
@ $D8BF label=loc_D8BF
C $D8C0,1 sprite data byte
c $D8CD Routine at D8CD
@ $D8CD label=loc_D8CD
c $D8DC Routine at D8DC
D $D8DC Used by the routines at #R$D8A2 and #R$D8CD.
@ $D8DC label=loc_D8DC
b $D8DE Data block at D8DE
@ $D8DE label=aCopyright1984A_c_g_
T $D8DE,21,21
i $D8F3
@ $D8F3 label=vidbuf
i $F0F3 Unused
i $F100
@ $F100 label=bits_lookup_table
b $FFFF
