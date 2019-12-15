> $5B00 ; SkoolKit disassembly for Alien 8
> $5B00 ; v0.9a1
> $5B00 ;
> $5B00 ; Copyright (c) 2019 Michael R. Cook (Skoolkit conversion)
> $5B00 ; Copyright (c) 2016 tcdev (annotated disassembly)
> $5B00 ; Copyright (c) 1985 Ultimate Play the Game (Alien 8)
> $5B00 ; Alien 8 was designed and developed by Tim Stamper and Chris Stamper
> $5B00 ;
> $5B00 ; Memory Map:
> $5B00 ;
> $5B00 ; $4000-$57FF - spectrum video memory
> $5B00 ; $5800-$5AFF - spectrum attribute memory
> $5B00 ; $5B00-$6287 - variables
> $5B00 ; $6288-$D1EA - code and data
> $5B00 ; $D200-$D9FF - video buffer
> $5B00 ;       $F0FF - stack
> $5B00 ; $F100-$FFFF - bit-shift & bit-reverse lookup tables
> $5B00 ;             - (built at run-time)
> $5B00 @start=$A631
@ $5B00 org
s $5B00 Data block at 5B00
@ $5B00 label=seed_1
B $5B00,2,2
s $5B02 Unused
@ $5B02 label=seed_2
S $5B02,2,$02
s $5B04 Unused
@ $5B04 label=user_input_method
S $5B04,1,$01
s $5B05 Unused
@ $5B05 label=seed_3
S $5B05,1,$01
s $5B06 Unused
@ $5B06 label=tmp_input_method
S $5B06,2,$02
s $5B08 variables from here are zeroed each game
@ $5B08 label=objs_wiped_cnt
S $5B08,1,$01
s $5B09 Unused
@ $5B09 label=tmp_SP
B $5B09,2,2
s $5B0B Unused
@ $5B0B label=room_size_X
S $5B0B,1,$01
s $5B0C Unused
@ $5B0C label=room_size_Y
S $5B0C,1,$01
s $5B0D Unused
@ $5B0D label=curr_room_attrib
S $5B0D,1,$01
s $5B0E Unused
@ $5B0E label=room_size_Z
S $5B0E,4,$04
s $5B12 Unused
@ $5B12 label=not_1st_screen
S $5B12,1,$01
s $5B13 Unused
@ $5B13 label=pickup_drop_pressed
S $5B13,1,$01
s $5B14 Unused
@ $5B14 label=objects_carried_changed
S $5B14,1,$01
s $5B15 Unused
@ $5B15 label=user_input
S $5B15,1,$01
s $5B16 Unused
@ $5B16 label=tmp_attrib
S $5B16,1,$01:n
s $5B17 Unused
@ $5B17 label=render_status_info
S $5B17,1,$01
s $5B18 Unused
@ $5B18 label=suppress_border
S $5B18,1,$01:n
s $5B19 Unused
@ $5B19 label=unk_5B19
S $5B19,1,$01
s $5B1A Unused
@ $5B1A label=lives
S $5B1A,1,$01:n
s $5B1B Unused
@ $5B1B label=tmp_XYZ
S $5B1B,3,$03
s $5B1E Unused
@ $5B1E label=rendered_objs_cnt
S $5B1E,2,$02
s $5B20 Unused
@ $5B20 label=block_type_tbl_base
S $5B20,1,$01
s $5B21 Unused
@ $5B21 label=tmp_dZ
S $5B21,2,$02
s $5B23 Unused
@ $5B23 label=byte_5B23
S $5B23,1,$01
s $5B24 Unused
@ $5B24 label=byte_5B24
S $5B24,1,$01
s $5B25 Unused
@ $5B25 label=byte_5B25
S $5B25,2,$02
s $5B27 Unused
@ $5B27 label=gfxbase_8x8
B $5B27,4,4
s $5B2B Unused
@ $5B2B label=tmp_objects_to_draw
S $5B2B,2,$02
s $5B2D Unused
@ $5B2D label=render_obj_1
S $5B2D,2,$02
s $5B2F Unused
@ $5B2F label=render_obj_2
S $5B2F,1,$01
s $5B30 Unused
B $5B30,2,2
s $5B32 Unused
@ $5B32 label=directional
S $5B32,1,$01
s $5B33 Unused
@ $5B33 label=cant_drop
S $5B33,1,$01
s $5B34 Unused
@ $5B34 label=word_5B34
S $5B34,2,$02
s $5B36 Unused
@ $5B36 label=unk_5B36
B $5B36,2,2
s $5B38 Unused
@ $5B38 label=unk_5B38
S $5B38,1,$01
s $5B39 Unused
@ $5B39 label=unk_5B39
S $5B39,1,$01
s $5B3A Unused
@ $5B3A label=unk_5B3A
S $5B3A,1,$01
s $5B3B Unused
@ $5B3B label=byte_5B3B
S $5B3B,1,$01
s $5B3C Unused
@ $5B3C label=unk_5B3C
S $5B3C,1,$01
s $5B3D Unused
@ $5B3D label=unk_5B3D
S $5B3D,1,$01
s $5B3E Unused
@ $5B3E label=unk_5B3E
S $5B3E,1,$01
s $5B3F Unused
@ $5B3F label=unk_5B3F
S $5B3F,1,$01
s $5B40 Unused
@ $5B40 label=unk_5B40
S $5B40,1,$01
s $5B41 Unused
@ $5B41 label=byte_5B41
S $5B41,1,$01
s $5B42 Unused
@ $5B42 label=unk_5B42
S $5B42,1,$01
s $5B43 Unused
@ $5B43 label=byte_5B43
S $5B43,1,$01
s $5B44 Unused
S $5B44,20,$14
s $5B58 Unused
@ $5B58 label=scrn_visited
S $5B58,1,$01
s $5B59 Unused
S $5B59,31,$1F
s $5B78 Unused
@ $5B78 label=inventory
S $5B78,4,$04
s $5B7C Unused
@ $5B7C label=byte_5B7C
S $5B7C,4,$04
s $5B80 Unused
@ $5B80 label=byte_5B80
S $5B80,4,$04
s $5B84 Unused
@ $5B84 label=byte_5B84
S $5B84,3,$03
s $5B87 Unused
@ $5B87 label=end_of_objects_carried
S $5B87,1,$01
s $5B88 Unused
@ $5B88 label=graphic_objs_tbl
S $5B88,64,$40
s $5BC8 Unused
@ $5BC8 label=special_objs_here
S $5BC8,32,$20
s $5BE8 Unused
@ $5BE8 label=byte_5BE8
S $5BE8,32,$20
s $5C08 Scratch memory
@ $5C08 label=other_objs_here
S $5C08,1664,$0680
b $6288 Data block at 6288
@ $6288 label=font
B $6288,128,8
b $6308 Data block at 6308
@ $6308 label=ascii_chars
B $6308,8,8 '0'
B $6310,8,8 '1'
B $6318,8,8 '2'
B $6320,8,8 '3'
B $6328,8,8 '4'
B $6330,8,8 '5'
B $6338,8,8 '6'
B $6340,8,8 '7'
B $6348,8,8 '8'
B $6350,8,8 '9'
B $6358,8,8 '0'
B $6360,8,8 '.'
B $6368,8,8 '-'
B $6370,8,8
B $6378,8,8 (c)
B $6380,16,8
B $6390,8,8 'A'
B $6398,8,8 'B'
B $63A0,8,8 'C'
B $63A8,8,8 'D'
B $63B0,8,8 'E'
B $63B8,8,8 'F'
B $63C0,8,8 'G'
B $63C8,8,8 'H'
B $63D0,8,8 'I'
B $63D8,8,8 'J'
B $63E0,8,8 'K'
B $63E8,8,8 'L'
B $63F0,8,8 'M'
B $63F8,8,8 'N'
B $6400,8,8 'O'
B $6408,8,8 'P'
B $6410,8,8 'Q'
B $6418,8,8 'R'
B $6420,8,8 'S'
B $6428,8,8 'T'
B $6430,8,8 'U'
B $6438,8,8 'V'
B $6440,8,8 'W'
B $6448,8,8 'X'
B $6450,8,8 'Y'
B $6458,8,8 'Z'
b $6460 room sizes
@ $6460 label=room_size_tbl
B $6460,9,3
b $6469 Location (Room) Table +0 Location ID +1 Entry size (bytes) +2 Size and Attributes +3... bg objects until $FF fg objects until (entry size) bytes
@ $6469 label=location_tbl
B $6469,3,3 id=2
B $646C,30,16,14
B $648A,3,3 id=3
B $648D,21,16,5
B $64A2,3,3 id=4
B $64A5,23,17,6
B $64BC,3,3 id=5
B $64BF,24,17,7
B $64D7,3,3 id=10
B $64DA,31,16,15
B $64F9,3,3 id=11
B $64FC,33,16*2,1
B $651D,3,3 id=12
B $6520,37,17,15,5
B $6545,3,3 id=13
B $6548,31,16,15
B $6567,3,3 id=18
B $656A,26,17,9
B $6584,3,3 id=19
B $6587,30,17,13
B $65A5,3,3 id=20
B $65A8,35,17,14,4
B $65CB,3,3 id=21
B $65CE,26,16,10
B $65E8,3,3 id=26
B $65EB,26,16,10
B $6605,3,3 id=27
B $6608,24,17,7
B $6620,3,3 id=28
B $6623,31,17,14
B $6642,3,3 id=29
B $6645,41,18,14,9
B $666E,3,3 id=32
B $6671,24,17,7
B $6689,3,3 id=35
B $668C,33,16,14,3
B $66AD,3,3 id=36
B $66B0,13,13
B $66BD,3,3 id=39
B $66C0,32,18,14
B $66E0,3,3 id=40
B $66E3,43,18,14,11
B $670E,3,3 id=43
B $6711,3,3
B $6714,3,3 id=44
B $6717,3,3
B $671A,3,3 id=47
B $671D,32,16,14,2
B $673D,3,3 id=48
B $6740,20,17,3
B $6754,3,3 id=49
B $6757,32,16,14,2
B $6777,3,3 id=51
B $677A,18,16,2
B $678C,3,3 id=52
B $678F,35,16,14,5
B $67B2,3,3 id=54
B $67B5,32,17,14,1
B $67D5,3,3 id=55
B $67D8,27,17,10
B $67F3,3,3 id=56
B $67F6,34,18,14,2
B $6818,3,3 id=57
B $681B,19,18,1
B $682E,3,3 id=59
B $6831,37,16,14,7
B $6856,3,3 id=60
B $6859,9,9
B $6862,3,3 id=62
B $6865,40,16,14,10
B $688D,3,3 id=63
B $6890,32,17,14,1
B $68B0,3,3 id=64
B $68B3,25,16,9
B $68CC,3,3 id=65
B $68CF,38,18,16,4
B $68F5,3,3 id=66
B $68F8,20,16,4
B $690C,3,3 id=67
B $690F,39,16,14,9
B $6936,3,3 id=68
B $6939,51,16*2,15,4
B $696C,3,3 id=69
B $696F,23,16,7
B $6986,3,3 id=70
B $6989,32,17,14,1
B $69A9,3,3 id=71
B $69AC,3,3
B $69AF,3,3 id=72
B $69B2,35,16,14,5
B $69D5,3,3 id=73
B $69D8,13,13
B $69E5,3,3 id=74
B $69E8,25,16,9
B $6A01,3,3 id=75
B $6A04,46,18,14
B $6A32,3,3 id=76
B $6A35,41,16,14,11
B $6A5E,3,3 id=77
B $6A61,7,7
B $6A68,3,3 id=78
B $6A6B,30,17,13
B $6A89,3,3 id=79
B $6A8C,34,18,15,1
B $6AAE,3,3 id=81
B $6AB1,3,3
B $6AB4,3,3 id=84
B $6AB7,30,17,13
B $6AD5,3,3 id=86
B $6AD8,45,17,15,13
B $6B05,3,3 id=87
B $6B08,16,16
B $6B18,3,3 id=88
B $6B1B,42,16,14,12
B $6B45,3,3 id=89
B $6B48,26,16,10
B $6B62,3,3 id=91
B $6B65,23,15,8
B $6B7C,3,3 id=94
B $6B7F,6,6
B $6B85,3,3 id=97
B $6B88,39,16*2,7
B $6BAF,3,3 id=98
B $6BB2,39,16,15,8
B $6BD9,3,3 id=100
B $6BDC,41,17,15,9
B $6C05,3,3 id=101
B $6C08,36,17,14,5
B $6C2C,3,3 id=103
B $6C2F,16,16
B $6C3F,3,3 id=104
B $6C42,3,3
B $6C45,3,3 id=106
B $6C48,47,17,15,14,1
B $6C77,3,3 id=107
B $6C7A,41,17,15,9
B $6CA3,3,3 id=109
B $6CA6,4,4
B $6CAA,3,3 id=110
B $6CAD,44,17,14,13
B $6CD9,3,3 id=114
B $6CDC,42,18,14,10
B $6D06,3,3 id=116
B $6D09,50,16,14,16,4
B $6D3B,3,3 id=117
B $6D3E,38,17,14,7
B $6D64,3,3 id=118
B $6D67,32,15,14,3
B $6D87,3,3 id=119
B $6D8A,44,18,15,11
B $6DB6,3,3 id=120
B $6DB9,26,18,8
B $6DD3,3,3 id=121
B $6DD6,3,3
B $6DD9,3,3 id=122
B $6DDC,31,18,13
B $6DFB,3,3 id=123
B $6DFE,26,16,10
B $6E18,3,3 id=125
B $6E1B,28,17,11
B $6E37,3,3 id=130
B $6E3A,32,16,15,1
B $6E5A,3,3 id=131
B $6E5D,5,5
B $6E62,3,3 id=132
B $6E65,27,18,9
B $6E80,3,3 id=133
B $6E83,3,3
B $6E86,3,3 id=134
B $6E89,29,16,13
B $6EA6,3,3 id=135
B $6EA9,43,17,14,12
B $6ED4,3,3 id=136
B $6ED7,30,17,13
B $6EF5,3,3 id=137
B $6EF8,6,6
B $6EFE,3,3 id=138
B $6F01,15,15
B $6F10,3,3 id=139
B $6F13,34,19,14,1
B $6F35,3,3 id=140
B $6F38,31,18,13
B $6F57,3,3 id=141
B $6F5A,40,17,15,8
B $6F82,3,3 id=147
B $6F85,39,17,14,8
B $6FAC,3,3 id=148
B $6FAF,31,18,13
B $6FCE,3,3 id=149
B $6FD1,19,16,3
B $6FE4,3,3 id=150
B $6FE7,45,16,15,14
B $7014,3,3 id=151
B $7017,15,15
B $7026,3,3 id=152
B $7029,22,16,6
B $703F,3,3 id=153
B $7042,37,17,14,6
B $7067,3,3 id=154
B $706A,25,17,8
B $7083,3,3 id=155
B $7086,5,5
B $708B,3,3 id=16
B $708E,27,16,11
B $70A9,3,3 id=164
B $70AC,42,16,14,12
B $70D6,3,3 id=165
B $70D9,43,18,14,11
B $7104,3,3 id=166
B $7107,15,15
B $7116,3,3 id=167
B $7119,25,16,9
B $7132,3,3 id=168
B $7135,3,3
B $7138,3,3 id=169
B $713B,23,16,7
B $7152,3,3 id=170
B $7155,34,17,14,3
B $7177,3,3 id=171
B $717A,31,16,15
B $7199,3,3 id=181
B $719C,43,16,14,13
B $71C7,3,3 id=182
B $71CA,26,17,9
B $71E4,3,3 id=183
B $71E7,16,16
B $71F7,3,3 id=184
B $71FA,31,16,14,1
B $7219,3,3 id=185
B $721C,25,16,9
B $7235,3,3 id=186
B $7238,37,17,15,5
B $725D,3,3 id=198
B $7260,40,16,14,10
B $7288,3,3 id=199
B $728B,25,16,9
B $72A4,3,3 id=200
B $72A7,26,16,10
B $72C1,3,3 id=201
B $72C4,36,16,14,6
B $72E8,3,3 id=214
B $72EB,31,17,14
B $730A,3,3 id=215
B $730D,27,17,10
B $7328,3,3 id=216
B $732B,15,15
B $733A,3,3 id=217
B $733D,37,18,14,5
B $7362,3,3 id=231
B $7365,29,16,13
B $7382,3,3 id=232
B $7385,3,3
B $7388,3,3 id=247
B $738B,29,16,13
B $73A8,3,3 id=248
B $73AB,29,17,12
b $73C8 Data block at 73C8
@ $73C8 label=block_type_tbl
W $73C8,2,2
W $73CA,2,2 block
W $73CC,2,2 rhombus block fat bottom
W $73CE,2,2 rhombus block fat top
W $73D0,2,2 block moving up and down
W $73D2,2,2 block fall on contact
W $73D4,2,2 block_collapse
W $73D6,2,2 broken egg - killer
W $73D8,64,2
b $7418 Data block at 7418
@ $7418 label=block
B $7418,6,6
b $741E Data block at 741E
@ $741E label=rhombus_fat_btm
B $741E,6,6
b $7424 Data block at 7424
@ $7424 label=rhombus_fat_top
B $7424,6,6
b $742A Data block at 742A
@ $742A label=block_UD
B $742A,6,6
b $7430 Data block at 7430
@ $7430 label=block_fall
B $7430,6,6
b $7436 Data block at 7436
@ $7436 label=block_collapse
B $7436,6,6
b $743C Data block at 743C
@ $743C label=broken_egg
B $743C,6,6
b $7442 Data block at 7442
@ $7442 label=block_slide_N
B $7442,6,6
b $7448 Data block at 7448
@ $7448 label=block_slide_E
B $7448,6,6
b $744E Data block at 744E
@ $744E label=block_slide_S
B $744E,6,6
b $7454 Data block at 7454
@ $7454 label=block_slide_W
B $7454,6,6
b $745A Data block at 745A
@ $745A label=block_plyr_UD
B $745A,6,6
b $7460 Data block at 7460
@ $7460 label=block_move_EW
B $7460,6,6
b $7466 Data block at 7466
@ $7466 label=block_move_NS
B $7466,6,6
b $746C Data block at 746C
@ $746C label=pyramid
B $746C,6,6
b $7472 Data block at 7472
@ $7472 label=stars
B $7472,6,6
b $7478 Data block at 7478
@ $7478 label=mouse_move_EW
B $7478,11,11
b $7483 Data block at 7483
@ $7483 label=mouse_move_NS
B $7483,11,11
b $748E Data block at 748E
@ $748E label=mouse_move_circuit
B $748E,11,11
b $7499 Data block at 7499
@ $7499 label=broken_egg_top
B $7499,6,6
b $749F Data block at 749F
@ $749F label=cryonaught_look_E
B $749F,6,6
b $74A5 Data block at 74A5
@ $74A5 label=cryonaught_look_S
B $74A5,6,6
b $74AB Data block at 74AB
@ $74AB label=tubes
B $74AB,6,6
b $74B1 Data block at 74B1
@ $74B1 label=obj_dropoff_cylinder
B $74B1,11,11
b $74BC Data block at 74BC
@ $74BC label=obj_dropoff_square
B $74BC,11,11
b $74C7 Data block at 74C7
@ $74C7 label=obj_dropoff_pyramid
B $74C7,11,11
b $74D2 Data block at 74D2
@ $74D2 label=obj_dropoff_semisphere
B $74D2,11,11
b $74DD Data block at 74DD
@ $74DD label=clockwork_mouse
B $74DD,6,6
b $74E3 Data block at 74E3
@ $74E3 label=cylinder
B $74E3,6,6
b $74E9 Data block at 74E9
@ $74E9 label=remote_ctrl_robot
B $74E9,6,6
b $74EF Data block at 74EF
@ $74EF label=remote_ctrl_arrow_W
B $74EF,6,6
b $74F5 Data block at 74F5
@ $74F5 label=remote_ctrl_arrow_N
B $74F5,6,6
b $74FB Data block at 74FB
@ $74FB label=remote_ctrl_arrow_E
B $74FB,6,6
b $7501 Data block at 7501
@ $7501 label=remote_ctrl_arrow_S
B $7501,6,6
b $7507 Data block at 7507
@ $7507 label=remote_ctrl_block
B $7507,6,6
b $750D Data block at 750D
@ $750D label=spikey_dome
B $750D,6,6
b $7513 Data block at 7513
@ $7513 label=land_mine
B $7513,6,6
b $7519 Data block at 7519
@ $7519 label=background_type_tbl
W $7519,28,2
b $7535 Data block at 7535
@ $7535 label=door_N
B $7535,17,8*2,1
b $7546 Data block at 7546
@ $7546 label=door_E
B $7546,17,8*2,1
b $7557 Data block at 7557
@ $7557 label=high_door_E
B $7557,17,8*2,1
b $7568 Data block at 7568
@ $7568 label=high_door_platform_E
B $7568,17,8*2,1
b $7579 Data block at 7579
@ $7579 label=door_S
B $7579,17,8*2,1
b $758A Data block at 758A
@ $758A label=high_door_S
B $758A,17,8*2,1
b $759B Data block at 759B
@ $759B label=high_door_platform_S
B $759B,17,8*2,1
b $75AC Data block at 75AC
@ $75AC label=door_W
B $75AC,17,8*2,1
b $75BD Data block at 75BD
@ $75BD label=long_full_wall_W
B $75BD,49,8*6,1
b $75EE Data block at 75EE
@ $75EE label=long_full_wall_N
B $75EE,49,8*6,1
b $761F Data block at 761F
@ $761F label=long_with_opening_W
B $761F,33,8*4,1
b $7640 Data block at 7640
@ $7640 label=long_with_opening_N
B $7640,33,8*4,1
b $7661 Data block at 7661
@ $7661 label=thin_room_long_W
B $7661,65,8*8,1
b $76A2 Data block at 76A2
@ $76A2 label=thin_room_long_N
B $76A2,65,8*8,1
b $76E3 Special objects +0 object graphic no (dynamic $60-$67) +1 start X position (0x46-0xba) +2 start Y position (0x40-0x70 +/-0x0c) +3 start Z position (0x46-0xba) +4 start screen +5 current X +6 current Y +7 current Z +8 current screen
@ $76E3 label=special_objs_tbl
B $76E3,324,9
b $7827 Data block at 7827
@ $7827 label=sprite_tbl
W $7827,264,2
b $792F Data block at 792F
@ $792F label=spr_00
B $792F,2,2
b $7931 Data block at 7931
@ $7931 label=spr_01
B $7931,122,2,9*13,3
b $79AB Data block at 79AB
@ $79AB label=spr_02
B $79AB,352,2,9*38,8
b $7B0B Data block at 7B0B
@ $7B0B label=spr_03
B $7B0B,186,2,9*20,4
b $7BC5 Data block at 7BC5
@ $7BC5 label=spr_04
B $7BC5,152,2,9*16,6
b $7C5D Data block at 7C5D
@ $7C5D label=spr_05
B $7C5D,146,2,9
b $7CEF Data block at 7CEF
@ $7CEF label=spr_06
B $7CEF,146,2,9
b $7D81 Data block at 7D81
@ $7D81 label=spr_07
B $7D81,146,2,9
b $7E13 Data block at 7E13
@ $7E13 label=spr_08
B $7E13,146,2,9
b $7EA5 Data block at 7EA5
@ $7EA5 label=spr_09
B $7EA5,234,2,9*25,7
b $7F8F Data block at 7F8F
@ $7F8F label=spr_0A
B $7F8F,234,2,9*25,7
b $8079 Data block at 8079
@ $8079 label=spr_0B
B $8079,158,2,9*17,3
b $8117 Data block at 8117
@ $8117 label=spr_0C
B $8117,158,2,9*17,3
b $81B5 Data block at 81B5
@ $81B5 label=spr_0D
B $81B5,158,2,9*17,3
b $8253 Data block at 8253
@ $8253 label=spr_0E
B $8253,158,2,9*17,3
b $82F1 Data block at 82F1
@ $82F1 label=spr_0F
B $82F1,182,2,9
b $83A7 Data block at 83A7
@ $83A7 label=spr_10
B $83A7,182,2,9
b $845D Data block at 845D
@ $845D label=spr_11
B $845D,130,2,9*14,2
b $84DF Data block at 84DF
@ $84DF label=spr_12
B $84DF,146,2,9
b $8571 Data block at 8571
@ $8571 label=spr_13
B $8571,68,2,9*7,3
b $85B5 Data block at 85B5
@ $85B5 label=spr_14
B $85B5,172,2,9*18,8
b $8661 Data block at 8661
@ $8661 label=spr_15
B $8661,50,2,9*5,3
b $8693 Data block at 8693
@ $8693 label=spr_16
B $8693,50,2,9*5,3
b $86C5 Data block at 86C5
@ $86C5 label=spr_17
B $86C5,134,2,9*14,6
b $874B Data block at 874B
@ $874B label=spr_18
B $874B,98,2,9*10,6
b $87AD Data block at 87AD
@ $87AD label=spr_19
B $87AD,116,2,9*12,6
b $8821 Data block at 8821
@ $8821 label=spr_1A
B $8821,348,2,9*38,4
b $897D Data block at 897D
@ $897D label=spr_1B
B $897D,194,2,9*21,3
b $8A3F Data block at 8A3F
@ $8A3F label=spr_1C
B $8A3F,152,2,9*16,6
b $8AD7 Data block at 8AD7
@ $8AD7 label=spr_1D
B $8AD7,234,2,9*25,7
b $8BC1 Data block at 8BC1
@ $8BC1 label=spr_1E
B $8BC1,218,2,9
b $8C9B Data block at 8C9B
@ $8C9B label=spr_1F
B $8C9B,234,2,9*25,7
b $8D85 Data block at 8D85
@ $8D85 label=spr_20
B $8D85,152,2,9*16,6
b $8E1D Data block at 8E1D
@ $8E1D label=spr_21
B $8E1D,202,2,9*22,2
b $8EE7 Data block at 8EE7
@ $8EE7 label=spr_22
B $8EE7,250,2,9*27,5
b $8FE1 Data block at 8FE1
@ $8FE1 label=spr_23
B $8FE1,290,2,9
b $9103 Data block at 9103
@ $9103 label=spr_24
B $9103,338,2,9*37,3
b $9255 Data block at 9255
@ $9255 label=spr_25
B $9255,210,2,9*23,1
b $9327 Data block at 9327
@ $9327 label=spr_26
B $9327,258,2,9*28,4
b $9429 Data block at 9429
@ $9429 label=spr_27
B $9429,50,2,9*5,3
b $945B Data block at 945B
@ $945B label=spr_28
B $945B,8,2,6
b $9463 Data block at 9463
@ $9463 label=spr_29
B $9463,18,2,9,7
b $9475 Data block at 9475
@ $9475 label=spr_2A
B $9475,50,2,9*5,3
b $94A7 Data block at 94A7
@ $94A7 label=spr_2B
B $94A7,66,2,9*7,1
b $94E9 Data block at 94E9
@ $94E9 label=spr_2C
B $94E9,34,2,9*3,5
b $950B Data block at 950B
@ $950B label=spr_2D
B $950B,194,2,9*21,3
b $95CD Data block at 95CD
@ $95CD label=spr_2E
B $95CD,70,2,9*7,5
b $9613 Data block at 9613
@ $9613 label=spr_2F
B $9613,138,2,9*15,1
b $969D Data block at 969D
@ $969D label=spr_30
B $969D,130,2,9*14,2
b $971F Data block at 971F
@ $971F label=spr_31
B $971F,138,2,9*15,1
b $97A9 Data block at 97A9
@ $97A9 label=spr_32
B $97A9,130,2,9*14,2
b $982B Data block at 982B
@ $982B label=spr_33
B $982B,138,2,9*15,1
b $98B5 Data block at 98B5
@ $98B5 label=spr_34
B $98B5,138,2,9*15,1
b $993F Data block at 993F
@ $993F label=spr_35
B $993F,138,2,9*15,1
b $99C9 Data block at 99C9
@ $99C9 label=spr_36
B $99C9,138,2,9*15,1
b $9A53 Data block at 9A53
@ $9A53 label=spr_37
B $9A53,138,2,9*15,1
b $9ADD Data block at 9ADD
@ $9ADD label=spr_38
B $9ADD,138,2,9*15,1
b $9B67 Data block at 9B67
@ $9B67 label=spr_39
B $9B67,138,2,9*15,1
b $9BF1 Data block at 9BF1
@ $9BF1 label=spr_3A
B $9BF1,138,2,9*15,1
b $9C7B Data block at 9C7B
@ $9C7B label=spr_3B
B $9C7B,138,2,9*15,1
b $9D05 Data block at 9D05
@ $9D05 label=spr_3C
B $9D05,138,2,9*15,1
b $9D8F Data block at 9D8F
@ $9D8F label=spr_3D
B $9D8F,138,2,9*15,1
b $9E19 Data block at 9E19
@ $9E19 label=spr_3E
B $9E19,138,2,9*15,1
b $9EA3 Data block at 9EA3
@ $9EA3 label=spr_3F
B $9EA3,138,2,9*15,1
b $9F2D Data block at 9F2D
@ $9F2D label=spr_40
B $9F2D,138,2,9*15,1
b $9FB7 Data block at 9FB7
@ $9FB7 label=spr_41
B $9FB7,98,2,9*10,6
b $A019 Data block at A019
@ $A019 label=spr_42
B $A019,122,2,9*13,3
b $A093 Data block at A093
@ $A093 label=spr_43
B $A093,128,2,9
b $A113 Data block at A113
@ $A113 label=spr_44
B $A113,140,2,9*15,3
b $A19F Data block at A19F
@ $A19F label=spr_45
B $A19F,146,2,9
b $A231 Data block at A231
@ $A231 label=spr_46
B $A231,146,2,9
b $A2C3 Data block at A2C3
@ $A2C3 label=spr_47
B $A2C3,146,2,9
b $A355 Data block at A355
@ $A355 label=spr_48
B $A355,202,2,9*22,2
b $A41F Data block at A41F
@ $A41F label=spr_49
B $A41F,146,2,9
b $A4B1 Data block at A4B1
@ $A4B1 label=spr_4A
B $A4B1,140,2,9*15,3
b $A53D Data block at A53D
@ $A53D label=spr_4B
B $A53D,116,2,9*12,6
b $A5B1 Data block at A5B1
@ $A5B1 label=spr_4C
B $A5B1,128,2,9
c $A631 Routine at A631
@ $A631 label=START
C $A634,19 number of bytes to clear
c $A647 Routine at A647
D $A647 Used by the routines at #R$A9A8, #R$AB61 and #R$ABC6.
@ $A647 label=start_menu
C $A64A,6 number of bytes to clear
c $A650 Routine at A650
D $A650 Used by the routine at #R$A631.
@ $A650 label=loc_A650
C $A657,3 in player sprite 1
C $A65A,5 5 lives_to_start
C $A65F,41 '`'
c $A688 Routine at A688
D $A688 Used by the routine at #R$A72E.
@ $A688 label=player_dies
c $A68B Routine at A68B
D $A68B Used by the routine at #R$C3B7.
@ $A68B label=game_loop
c $A68E lose_life
D $A68E Used by the routines at #R$A72E and #R$B7E5.
@ $A68E label=onscreen_loop
c $A692 Routine at A692
D $A692 Used by the routine at #R$A6C0.
@ $A692 label=update_sprite_loop
C $A695,3 return address
C $A698,1 save on stack
C $A699,3 sprite data width (bytes)
C $A69C,3 old sprite data width (bytes)
C $A69F,3 sprite data height (lines)
C $A6A2,3 old sprite data height (lines)
C $A6A5,3 pixel X
C $A6A8,3 old pixel X
C $A6AB,3 pixel Y
C $A6AE,3 old pixel Y
c $A6B1 Routine at A6B1
D $A6B1 Used by the routine at #R$BC83.
@ $A6B1 label=jump_to_upd_object
C $A6B1,3 graphic no
c $A6B7 Routine at A6B7
D $A6B7 Used by the routines at #R$C312 and #R$C82C.
@ $A6B7 label=jump_to_tbl_entry
c $A6C0 Routine at A6C0
@ $A6C0 label=ret_from_tbl_jp
C $A6CD,2 next sprite to update
C $A6D2,6 end of table?
C $A6D8,4 yes, exit
c $A6DC Routine at A6DC
D $A6DC Used by the routine at #R$A6C0.
@ $A6DC label=done_sprite_updates
C $A6EF,2 update special objs tbl next time
c $A70B Routine at A70B
D $A70B Used by the routine at #R$A70E.
@ $A70B label=game_delay
c $A70E Routine at A70E
@ $A70E label=loc_A70E
c $A715 Routine at A715
D $A715 Used by the routine at #R$A6DC.
@ $A715 label=loc_A715
C $A715,3 WTF???
c $A724 Routine at A724
D $A724 Used by the routine at #R$A741.
@ $A724 label=loc_A724
c $A72E Routine at A72E
D $A72E Used by the routines at #R$A715 and #R$A741.
@ $A72E label=loc_A72E
c $A741 Routine at A741
D $A741 Used by the routine at #R$A6DC.
@ $A741 label=loc_A741
c $A749 Routine at A749
D $A749 Used by the routines at #R$A715 and #R$B021.
@ $A749 label=colour_something
C $A74C,5 '@'             ; set bright
C $A751,30 'G'
C $A76F,20 'B'
C $A783,3 'G'
C $A786,17 'G'
b $A797 Data block at A797
@ $A797 label=light_years_attr
B $A797,1,1
t $A798 Message at A798
@ $A798 label=aLightYear
B $A798,1,1
T $A799,10,9:n1
c $A7A3 Routine at A7A3
D $A7A3 Used by the routines at #R$A749 and #R$B04C.
@ $A7A3 label=sub_A7A3
c $A7AE Routine at A7AE
D $A7AE Used by the routine at #R$A749.
@ $A7AE label=sub_A7AE
c $A7B7 Routine at A7B7
D $A7B7 Used by the routine at #R$A7B9.
@ $A7B7 label=loc_A7B7
c $A7B9 Routine at A7B9
@ $A7B9 label=loc_A7B9
b $A7CA Data block at A7CA
@ $A7CA label=byte_A7CA
B $A7CA,18,14,4
c $A7DC Routine at A7DC
D $A7DC Used by the routine at #R$A724.
@ $A7DC label=reset_objs_wipe_flag
c $A7E4 Routine at A7E4
@ $A7E4 label=loc_A7E4
b $A7EA Data block at A7EA
@ $A7EA label=upd_sprite_jmp_tbl
W $A7EA,4,2
W $A7EE,2,2 arch (near side)
W $A7F0,2,2 arch (far side)
W $A7F2,2,2 menu
W $A7F4,2,2 menu
W $A7F6,2,2 menu
W $A7F8,2,2 panel
W $A7FA,2,2 panel
W $A7FC,2,2 panel
W $A7FE,2,2 panel
W $A800,2,2
W $A802,2,2 extra life
W $A804,2,2 wall
W $A806,2,2 wall
W $A808,2,2 wall
W $A80A,2,2 player (bottom half)
W $A80C,2,2 "
W $A80E,2,2 "
W $A810,2,2 "
W $A812,2,2 "
W $A814,2,2 "
W $A816,2,2 "
W $A818,2,2 "
W $A81A,2,2 player (bottom half) facing front
W $A81C,2,2 "
W $A81E,2,2 player (bottom half) facing side
W $A820,2,2 "
W $A822,2,2 rhombus block fat bottom
W $A824,2,2 rhombus block fat top
W $A826,2,2 block
W $A828,2,2 block moving up and down
W $A82A,2,2 player (top half)
W $A82C,2,2 "
W $A82E,2,2 "
W $A830,2,2 "
W $A832,2,2 "
W $A834,2,2 "
W $A836,2,2 "
W $A838,2,2 "
W $A83A,2,2 "
W $A83C,2,2 "
W $A83E,2,2 "
W $A840,2,2 "
W $A842,2,2 block fall on contact
W $A844,2,2 block collapse
W $A846,2,2 broken egg - killer
W $A848,2,2 block move up/down while player on
W $A84A,2,2 sparkles
W $A84C,2,2 "
W $A84E,2,2 "
W $A850,2,2 "
W $A852,2,2 "
W $A854,2,2 "
W $A856,2,2 "
W $A858,2,2 sparkles
W $A85A,2,2 sparkles
W $A85C,2,2 "
W $A85E,2,2 "
W $A860,2,2 "
W $A862,2,2 "
W $A864,2,2 "
W $A866,2,2 "
W $A868,2,2 sparkles
W $A86A,2,2 sparkles
W $A86C,2,2
W $A86E,2,2 block move east-west
W $A870,2,2 block move north-south
W $A872,2,2 block slide off north
W $A874,2,2 block slide off east
W $A876,2,2 block slide off south
W $A878,2,2 block slide off west
W $A87A,2,2 pyramid-killer
W $A87C,2,2 top of broken egg - killer
W $A87E,2,2 cryonaught looking east/west
W $A880,2,2 tubes-killer
W $A882,2,2 sparkles
W $A884,2,2 "
W $A886,2,2 "
W $A888,2,2 "
W $A88A,8,2
W $A892,2,2 panel
W $A894,2,2 oil
W $A896,2,2 robot mouse moving circuit
W $A898,2,2 robot mouse moving east-west
W $A89A,12,2
W $A8A6,2,2 robot mouse moving north-south
W $A8A8,2,2
W $A8AA,2,2 cylinder
W $A8AC,2,2 square
W $A8AE,2,2 pyramid
W $A8B0,2,2 semisphere
W $A8B2,2,2 cylinder
W $A8B4,2,2 square
W $A8B6,2,2 pyramid
W $A8B8,2,2 semisphere
W $A8BA,2,2 cylinder
W $A8BC,2,2 square
W $A8BE,2,2 pyramid
W $A8C0,2,2 semisphere
W $A8C2,2,2 sparkles
W $A8C4,2,2 "
W $A8C6,2,2 "
W $A8C8,2,2 "
W $A8CA,2,2 object dropoff for cylinder
W $A8CC,2,2 object dropoff for square
W $A8CE,2,2 object dropoff for pyramid
W $A8D0,2,2 object dropoff for semi-sphere
W $A8D2,2,2 clockwork mouse
W $A8D4,2,2 "
W $A8D6,2,2 "
W $A8D8,2,2 "
W $A8DA,2,2 cylinder ???
W $A8DC,2,2 cylinder ???
W $A8DE,2,2 remote control arrow - west/north
W $A8E0,2,2 remote control arrow - east/south
W $A8E2,2,2 remote control robot
W $A8E4,2,2 "
W $A8E6,2,2 "
W $A8E8,2,2 "
W $A8EA,2,2 remote control block
W $A8EC,2,2 spikey domed - killer
W $A8EE,2,2 land mine - killer
c $A8F0 Routine at A8F0
@ $A8F0 label=no_update
c $A8F1 Routine at A8F1
D $A8F1 Used by the routine at #R$A631.
@ $A8F1 label=sub_A8F1
c $A8F8 Routine at A8F8
c $A8F9 Routine at A8F9
@ $A8F9 label=upd_82
C $A91C,5 '0'
c $A921 Routine at A921
D $A921 Used by the routine at #R$A8F9.
@ $A921 label=loc_A921
c $A937 Routine at A937
D $A937 Used by the routines at #R$A921, #R$A93D and #R$A954.
@ $A937 label=loc_A937
c $A93D Routine at A93D
D $A93D Used by the routine at #R$A921.
@ $A93D label=loc_A93D
c $A954 Routine at A954
D $A954 Used by the routine at #R$A93D.
@ $A954 label=loc_A954
c $A95A Routine at A95A
@ $A95A label=upd_5D
c $A971 Routine at A971
@ $A971 label=upd_5C
C $A974,4 '@'
C $A978,7 '€'
C $A97F,9 '('
c $A988 Routine at A988
D $A988 Used by the routine at #R$A996.
@ $A988 label=loc_A988
c $A98E Routine at A98E
D $A98E Used by the routine at #R$A991.
@ $A98E label=loc_A98E
c $A991 Routine at A991
D $A991 Used by the routine at #R$A971.
@ $A991 label=loc_A991
c $A996 Routine at A996
D $A996 Used by the routine at #R$A971.
@ $A996 label=loc_A996
C $A999,9 '€'
C $A9A2,6 'G'
c $A9A8 Routine at A9A8
D $A9A8 Used by the routine at #R$A996.
@ $A9A8 label=loc_A9A8
c $A9B1 Routine at A9B1
@ $A9B1 label=upd_81
C $A9C0,7 '6'
c $A9C7 Routine at A9C7
@ $A9C7 label=upd_7C_to_7F
C $A9CE,7 '€'
C $A9D5,11 'À'
C $A9E0,17 '?'
c $A9F1 Routine at A9F1
D $A9F1 Used by the routines at #R$A9C7, #R$A9FE and #R$AA06.
@ $A9F1 label=loc_A9F1
c $A9FE Routine at A9FE
D $A9FE Used by the routine at #R$A9C7.
@ $A9FE label=loc_A9FE
c $AA06 Routine at AA06
D $AA06 Used by the routine at #R$A9C7.
@ $AA06 label=loc_AA06
C $AA07,7 ''
C $AA0E,2 '?'
C $AA10,5 '@'
c $AA15 Routine at AA15
D $AA15 Used by the routine at #R$A9C7.
@ $AA15 label=loc_AA15
C $AA16,4 '€'
C $AA1A,32 '~'
c $AA3A Routine at AA3A
D $AA3A Used by the routine at #R$AA15.
@ $AA3A label=loc_AA3A
b $AA43 Data block at AA43
@ $AA43 label=byte_AA43
B $AA43,10,10
c $AA4D Routine at AA4D
@ $AA4D label=upd_80
C $AA5D,6 '€'
c $AA63 Routine at AA63
@ $AA63 label=upd_7A_7B
C $AA73,17 '€'
C $AA84,5 '€'
c $AA89 Routine at AA89
@ $AA89 label=upd_78_79
c $AAA1 Routine at AAA1
@ $AAA1 label=upd_74_to_77
c $AABB Routine at AABB
D $AABB Used by the routines at #R$AAFD and #R$AB14.
@ $AABB label=loc_AABB
c $AAC1 Routine at AAC1
D $AAC1 Used by the routine at #R$AAA1.
@ $AAC1 label=loc_AAC1
C $AAD4,18 '@'
c $AAE6 Routine at AAE6
D $AAE6 Used by the routine at #R$AB0C.
@ $AAE6 label=loc_AAE6
c $AAEE Routine at AAEE
D $AAEE Used by the routines at #R$AAC1 and #R$AB0C.
@ $AAEE label=loc_AAEE
c $AAFD Routine at AAFD
D $AAFD Used by the routine at #R$AAEE.
@ $AAFD label=loc_AAFD
c $AB0C Routine at AB0C
D $AB0C Used by the routine at #R$AAC1.
@ $AB0C label=loc_AB0C
c $AB14 Routine at AB14
D $AB14 Used by the routine at #R$AAFD.
@ $AB14 label=loc_AB14
c $AB28 Routine at AB28
D $AB28 Used by the routine at #R$AB14.
@ $AB28 label=loc_AB28
c $AB32 Routine at AB32
D $AB32 Used by the routine at #R$AB28.
@ $AB32 label=loc_AB32
c $AB40 Routine at AB40
D $AB40 Used by the routine at #R$AB45.
@ $AB40 label=loc_AB40
c $AB45 Routine at AB45
D $AB45 Used by the routine at #R$AB32.
@ $AB45 label=loc_AB45
c $AB4B Routine at AB4B
D $AB4B Used by the routine at #R$AB32.
@ $AB4B label=loc_AB4B
c $AB56 Routine at AB56
D $AB56 Used by the routine at #R$AB5B.
@ $AB56 label=loc_AB56
c $AB5B Routine at AB5B
D $AB5B Used by the routine at #R$AB4B.
@ $AB5B label=loc_AB5B
c $AB61 Routine at AB61
@ $AB61 label=upd_51_to_53
C $AB68,41 'ç'
c $AB91 Routine at AB91
D $AB91 Used by the routine at #R$AB61.
@ $AB91 label=loc_AB91
C $AB9E,8 '€'
c $ABA6 Routine at ABA6
D $ABA6 Used by the routine at #R$AB91.
@ $ABA6 label=loc_ABA6
c $ABAC Routine at ABAC
D $ABAC Used by the routine at #R$ABED.
@ $ABAC label=loc_ABAC
C $ABB8,5 '€'
C $ABBD,9 '€'
c $ABC6 Routine at ABC6
D $ABC6 Used by the routine at #R$ABAC.
@ $ABC6 label=loc_ABC6
C $ABCE,9 ''
c $ABD7 Routine at ABD7
D $ABD7 Used by the routines at #R$ABAC and #R$ABC6.
@ $ABD7 label=loc_ABD7
c $ABDA Routine at ABDA
D $ABDA Used by the routine at #R$AB61.
@ $ABDA label=loc_ABDA
c $ABDD Routine at ABDD
D $ABDD Used by the routine at #R$AB91.
@ $ABDD label=loc_ABDD
C $ABE0,5 ' '
C $ABE5,8 '€'
c $ABED Routine at ABED
D $ABED Used by the routine at #R$ABDD.
@ $ABED label=loc_ABED
c $ABF5 Routine at ABF5
@ $ABF5 label=upd_50
C $AC01,2 'F'
c $AC03 Routine at AC03
D $AC03 Used by the routine at #R$ABF5.
@ $AC03 label=loc_AC03
c $AC21 Routine at AC21
D $AC21 Used by the routines at #R$A95A, #R$A98E, #R$ABDA, #R$ABF5 and #R$AC03.
@ $AC21 label=upd_55_58_to_5B
c $AC34 Routine at AC34
D $AC34 Used by the routine at #R$AC21.
@ $AC34 label=loc_AC34
C $AC52,3 ' '
c $AC55 Routine at AC55
D $AC55 Used by the routine at #R$AC5E.
@ $AC55 label=loc_AC55
c $AC58 Routine at AC58
D $AC58 Used by the routine at #R$AC5E.
@ $AC58 label=loc_AC58
C $AC59,5 'D'
c $AC5E Routine at AC5E
D $AC5E Used by the routine at #R$AC58.
@ $AC5E label=loc_AC5E
c $AC6B Routine at AC6B
D $AC6B Used by the routine at #R$B76B.
R $AC6B very different to Knight Lore
@ $AC6B label=something_with_special_objs
c $AC76 Routine at AC76
D $AC76 Used by the routine at #R$AC80.
@ $AC76 label=loc_AC76
C $AC76,1 id
C $AC78,1 entry size
c $AC79 Routine at AC79
@ $AC79 label=loc_AC79
C $AC79,1 entry size
C $AC7B,1 end of bg blocks?
C $AC7C,4 yes, skip
c $AC80 Routine at AC80
D $AC80 Used by the routines at #R$AC96 and #R$AD07.
@ $AC80 label=loc_AC80
C $AC80,3 end of table
C $AC84,2 done?
C $AC86,1 yes, exit
C $AC87,1 next entry
c $AC8A Routine at AC8A
D $AC8A Used by the routine at #R$AC79.
@ $AC8A label=check_1st_fg_block
C $AC8A,1 entry size
C $AC8B,1 fg object
C $AC8C,2 'ø'
C $AC8E,4 '¨'
C $AC92,4 '°'
c $AC96 Routine at AC96
D $AC96 Used by the routine at #R$ACC2.
@ $AC96 label=loc_AC96
C $AC97,5 next entry
c $AC9C Routine at AC9C
D $AC9C Used by the routine at #R$AC8A.
@ $AC9C label=loc_AC9C
c $ACA0 Routine at ACA0
D $ACA0 Used by the routine at #R$ACA6.
@ $ACA0 label=loc_ACA0
C $ACA0,3 special obj current screen
C $ACA3,1 same as current screen?
C $ACA4,2 yes, go
c $ACA6 Routine at ACA6
D $ACA6 Used by the routine at #R$ACC2.
@ $ACA6 label=loc_ACA6
C $ACA9,2 next entry
C $ACAF,4 end of table
C $ACB3,2 done?
C $ACB9,5 no, skip
C $ACBE,2 fix iy
C $ACC0,2 next special object
c $ACC2 Routine at ACC2
D $ACC2 Used by the routine at #R$ACA0.
@ $ACC2 label=loc_ACC2
C $ACC2,3 graphic no
C $ACC5,17 'd'
c $ACD6 Routine at ACD6
D $ACD6 Used by the routine at #R$ACA6.
@ $ACD6 label=loc_ACD6
C $ACF9,2 'ø'
C $ACFB,4 '¨'
C $ACFF,8 '°'
c $AD07 Routine at AD07
D $AD07 Used by the routine at #R$ACD6.
@ $AD07 label=loc_AD07
c $AD13 Routine at AD13
@ $AD13 label=upd_49
c $AD37 Routine at AD37
D $AD37 Used by the routine at #R$AD13.
@ $AD37 label=loc_AD37
c $AD46 Routine at AD46
D $AD46 Used by the routine at #R$AD49.
@ $AD46 label=loc_AD46
c $AD49 Routine at AD49
D $AD49 Used by the routine at #R$AD37.
@ $AD49 label=loc_AD49
c $AD54 Routine at AD54
D $AD54 Used by the routine at #R$AD37.
@ $AD54 label=sub_AD54
c $AD66 Routine at AD66
D $AD66 Used by the routine at #R$A715.
@ $AD66 label=sub_AD66
c $AD7C Routine at AD7C
@ $AD7C label=loc_AD7C
C $AD88,3 ' '
c $AD8B Routine at AD8B
@ $AD8B label=loc_AD8B
c $ADA8 Routine at ADA8
@ $ADA8 label=loc_ADA8
c $ADB0 Routine at ADB0
D $ADB0 Used by the routine at #R$AD7C.
@ $ADB0 label=sub_ADB0
C $ADBA,2 L=A/16
C $ADC0,1 HL=L*8=(A/16)*8=A/2???
C $ADC3,6 HL=A*3/2???
c $ADC9 Routine at ADC9
D $ADC9 Used by the routine at #R$AD66.
@ $ADC9 label=sub_ADC9
c $ADD2 Routine at ADD2
D $ADD2 Used by the routine at #R$ADDE.
@ $ADD2 label=loc_ADD2
C $ADD4,10 'ð'
c $ADDE Routine at ADDE
D $ADDE Used by the routine at #R$ADD2.
@ $ADDE label=loc_ADDE
C $ADDE,7 '—'
c $ADE5 Routine at ADE5
D $ADE5 Used by the routine at #R$AD66.
@ $ADE5 label=sub_ADE5
c $ADEA Routine at ADEA
@ $ADEA label=loc_ADEA
c $ADF3 Routine at ADF3
D $ADF3 Used by the routine at #R$BE76.
@ $ADF3 label=set_wipe_and_draw_IY
c $AE03 Routine at AE03
D $AE03 Used by the routine at #R$AF79.
@ $AE03 label=sub_AE03
C $AE07,3 ' '
C $AE0A,2 '4'
c $AE0C Routine at AE0C
@ $AE0C label=loc_AE0C
c $AE17 Routine at AE17
@ $AE17 label=upd_68_to_6B
c $AE33 Routine at AE33
@ $AE33 label=upd_6C_to_6F
c $AE5A Routine at AE5A
D $AE5A Used by the routine at #R$AE33.
@ $AE5A label=loc_AE5A
c $AE5D Routine at AE5D
@ $AE5D label=upd_64_to_67
c $AE68 Routine at AE68
@ $AE68 label=upd_70_to_73
C $AE79,8 'l'
c $AE81 Routine at AE81
D $AE81 Used by the routines at #R$AE17, #R$AE33 and #R$AE68.
@ $AE81 label=sub_AE81
c $AE8A Routine at AE8A
D $AE8A Used by the routines at #R$AE68 and #R$BE06.
@ $AE8A label=calc_pixel_XY_IY
c $AE96 Routine at AE96
@ $AE96 label=upd_4A
c $AE99 Routine at AE99
D $AE99 Used by the routine at #R$CAAB.
@ $AE99 label=find_special_objs_here
c $AEA4 Routine at AEA4
D $AEA4 Used by the routine at #R$AEE6.
@ $AEA4 label=loc_AEA4
c $AEE6 Routine at AEE6
D $AEE6 Used by the routine at #R$AEA4.
@ $AEE6 label=loc_AEE6
c $AEF7 Routine at AEF7
@ $AEF7 label=loc_AEF7
C $AEFE,7 ' '
c $AF05 Routine at AF05
D $AF05 Used by the routines at #R$B761 and #R$CAA2.
@ $AF05 label=update_special_objs
c $AF09 Routine at AF09
D $AF09 Used by the routine at #R$AF2E.
@ $AF09 label=loc_AF09
C $AF09,3 graphic no.
C $AF0C,34 '`'
c $AF2E Routine at AF2E
D $AF2E Used by the routine at #R$AF09.
@ $AF2E label=loc_AF2E
c $AF3F Routine at AF3F
D $AF3F Used by the routine at #R$A650.
R $AF3F almost the same as Knight Lore
@ $AF3F label=init_special_objects
c $AF4E Routine at AF4E
D $AF4E Used by the routine at #R$AF59.
@ $AF4E label=loc_AF4E
C $AF57,2 '`'
c $AF59 Routine at AF59
D $AF59 Used by the routine at #R$AF75.
@ $AF59 label=loc_AF59
C $AF6A,8 end of special objs?
C $AF72,3 no, loop
c $AF75 Routine at AF75
D $AF75 Used by the routine at #R$AF4E.
@ $AF75 label=loc_AF75
c $AF79 Routine at AF79
@ $AF79 label=upd_60_to_63
c $AFA1 Routine at AFA1
D $AFA1 Used by the routine at #R$AF79.
@ $AFA1 label=loc_AFA1
c $AFB3 Routine at AFB3
D $AFB3 Used by the routine at #R$AFA1.
@ $AFB3 label=loc_AFB3
c $AFD0 Routine at AFD0
D $AFD0 Used by the routines at #R$AF79 and #R$AFB3.
@ $AFD0 label=loc_AFD0
c $AFDD Routine at AFDD
D $AFDD Used by the routine at #R$AFD0.
@ $AFDD label=loc_AFDD
c $AFE7 Routine at AFE7
D $AFE7 Used by the routine at #R$AFB3.
@ $AFE7 label=loc_AFE7
C $AFF1,7 '@'
c $AFF8 Routine at AFF8
D $AFF8 Used by the routine at #R$AFE7.
@ $AFF8 label=loc_AFF8
c $B005 Routine at B005
D $B005 Used by the routine at #R$B021.
@ $B005 label=loc_B005
c $B00B Routine at B00B
@ $B00B label=loc_B00B
C $B00C,21 'ø'
c $B021 Routine at B021
@ $B021 label=loc_B021
C $B040,12 '$'
c $B04C Routine at B04C
D $B04C Used by the routine at #R$B021.
@ $B04C label=loc_B04C
c $B055 Routine at B055
@ $B055 label=upd_0B
C $B05B,3 dX?
C $B05E,3 dY?
C $B061,10 dZ?
c $B06B Routine at B06B
@ $B06B label=upd_5E_5F
c $B08A Routine at B08A
D $B08A Used by the routine at #R$B06B.
@ $B08A label=loc_B08A
c $B097 Routine at B097
D $B097 Used by the routine at #R$B0A8.
@ $B097 label=loc_B097
c $B0A2 Routine at B0A2
D $B0A2 Used by the routine at #R$B06B.
@ $B0A2 label=loc_B0A2
c $B0A8 Routine at B0A8
D $B0A8 Used by the routine at #R$B08A.
@ $B0A8 label=loc_B0A8
c $B0AD Routine at B0AD
D $B0AD Used by the routines at #R$B0A8 and #R$B0DD.
@ $B0AD label=sub_B0AD
c $B0BD Routine at B0BD
D $B0BD Used by the routine at #R$B0C2.
@ $B0BD label=loc_B0BD
c $B0C2 Routine at B0C2
D $B0C2 Used by the routine at #R$B0AD.
@ $B0C2 label=loc_B0C2
c $B0CE Routine at B0CE
D $B0CE Used by the routine at #R$B0AD.
@ $B0CE label=loc_B0CE
c $B0D2 Routine at B0D2
D $B0D2 Used by the routine at #R$B0D7.
@ $B0D2 label=loc_B0D2
c $B0D7 Routine at B0D7
D $B0D7 Used by the routine at #R$B0C2.
@ $B0D7 label=loc_B0D7
c $B0DD Routine at B0DD
D $B0DD Used by the routine at #R$B08A.
@ $B0DD label=sub_B0DD
c $B0E7 Routine at B0E7
D $B0E7 Used by the routines at #R$B097 and #R$B158.
@ $B0E7 label=sub_B0E7
b $B108 Data block at B108
B $B108,8,8
c $B110 Routine at B110
@ $B110 label=upd_56_57
c $B116 Routine at B116
D $B116 Used by the routine at #R$B158.
@ $B116 label=loc_B116
c $B130 Routine at B130
D $B130 Used by the routine at #R$B13C.
@ $B130 label=loc_B130
c $B136 Routine at B136
D $B136 Used by the routines at #R$B116 and #R$B13C.
@ $B136 label=loc_B136
c $B13C Routine at B13C
D $B13C Used by the routine at #R$B116.
@ $B13C label=loc_B13C
c $B158 Routine at B158
D $B158 Used by the routine at #R$B13C.
@ $B158 label=loc_B158
c $B165 Routine at B165
D $B165 Used by the routines at #R$AA89 and #R$B19C.
@ $B165 label=sub_B165
C $B168,3 Y
C $B16B,1 sub X
c $B173 Routine at B173
D $B173 Used by the routine at #R$B165.
@ $B173 label=loc_B173
c $B181 Routine at B181
D $B181 Used by the routine at #R$B173.
@ $B181 label=loc_B181
c $B185 Routine at B185
D $B185 Used by the routines at #R$AA89 and #R$AABB.
@ $B185 label=sub_B185
c $B18C Routine at B18C
D $B18C Used by the routines at #R$AA15, #R$AE33 and #R$B19C.
@ $B18C label=sub_B18C
C $B190,8 'ü'
c $B198 Routine at B198
D $B198 Used by the routine at #R$B185.
@ $B198 label=loc_B198
c $B19C Routine at B19C
@ $B19C label=upd_4C_4F
c $B1AE Routine at B1AE
D $B1AE Used by the routine at #R$B130.
@ $B1AE label=sub_B1AE
c $B1C5 Routine at B1C5
D $B1C5 Used by the routine at #R$B1CA.
@ $B1C5 label=loc_B1C5
c $B1CA Routine at B1CA
D $B1CA Used by the routine at #R$B1AE.
@ $B1CA label=loc_B1CA
c $B1D0 Routine at B1D0
D $B1D0 Used by the routine at #R$B1AE.
@ $B1D0 label=loc_B1D0
c $B1DA Routine at B1DA
D $B1DA Used by the routine at #R$B1DF.
@ $B1DA label=loc_B1DA
c $B1DF Routine at B1DF
D $B1DF Used by the routine at #R$B1D0.
@ $B1DF label=loc_B1DF
c $B1E5 Routine at B1E5
D $B1E5 Used by the routine at #R$B055.
@ $B1E5 label=sub_B1E5
C $B1E8,6 X
C $B1EE,8 Y
C $B1F6,4 Z
c $B1FA Routine at B1FA
D $B1FA Used by the routines at #R$B06B and #R$B110.
@ $B1FA label=sub_B1FA
c $B20B Routine at B20B
D $B20B Used by the routines at #R$B0A2 and #R$B136.
@ $B20B label=sub_B20B
c $B21C Routine at B21C
@ $B21C label=upd_43
c $B224 Routine at B224
@ $B224 label=upd_42
c $B22A Routine at B22A
D $B22A Used by the routine at #R$B21C.
@ $B22A label=loc_B22A
c $B246 Routine at B246
D $B246 Used by the routine at #R$B22A.
@ $B246 label=loc_B246
c $B249 Routine at B249
@ $B249 label=loc_B249
c $B25A Routine at B25A
D $B25A Used by the routine at #R$B249.
@ $B25A label=loc_B25A
c $B267 Routine at B267
@ $B267 label=upd_44
c $B26B Routine at B26B
D $B26B Used by the routines at #R$B27A, #R$B280 and #R$B286.
@ $B26B label=loc_B26B
c $B27A Routine at B27A
@ $B27A label=upd_45
c $B280 Routine at B280
@ $B280 label=upd_46
C $B280,6 'þ'
c $B286 Routine at B286
@ $B286 label=upd_47
C $B286,6 'þ'
c $B28C Routine at B28C
@ $B28C label=upd_2D
C $B298,7 '@'
c $B29F Routine at B29F
@ $B29F label=upd_48_4B
c $B2A4 Routine at B2A4
@ $B2A4 label=upd_2E
c $B2A7 Routine at B2A7
D $B2A7 Used by the routines at #R$A8F9, #R$A9B1, #R$AD13, #R$B29F and #R$B2B0.
@ $B2A7 label=set_both_deadly_flags
C $B2A7,3 flags13
C $B2AA,6 ' '
c $B2B0 Routine at B2B0
D $B2B0 Used by the routines at #R$A9B1, #R$AA89, #R$AABB, #R$B0A2 and #R$B136.
@ $B2B0 label=set_deadly_wipe_and_draw_flags
c $B2B6 Routine at B2B6
@ $B2B6 label=upd_2C
C $B2C2,7 dZ=0
C $B2C9,13 dZ=0
c $B2D6 Routine at B2D6
D $B2D6 Used by the routine at #R$B2B6.
@ $B2D6 label=loc_B2D6
c $B2D9 Routine at B2D9
D $B2D9 Used by the routine at #R$B302.
@ $B2D9 label=save_XYZ
C $B2DC,5 X
C $B2E1,5 Y
C $B2E6,5 Z
c $B2EB Routine at B2EB
D $B2EB Used by the routine at #R$B302.
R $B2EB compare object X,Y,Z with tmp copies - returns Z=same, NZ=not
@ $B2EB label=cmp_tmp_XYZ
C $B2EE,3 X
C $B2F1,1 same as tmp?
C $B2F2,1 no, exit
C $B2F4,3 Y
C $B2F7,1 same as tmp?
C $B2F8,1 no, exit
C $B2FA,3 Z
C $B2FD,1 same as tmp?
c $B2FF Routine at B2FF
@ $B2FF label=upd_1C
c $B302 Routine at B302
D $B302 Used by the routine at #R$B31A.
@ $B302 label=loc_B302
C $B30B,2 yes, skip
C $B30D,3 has it moved?
C $B310,1 no, exit
c $B314 Routine at B314
D $B314 Used by the routine at #R$B302.
@ $B314 label=loc_B314
c $B31A Routine at B31A
@ $B31A label=upd_1D
c $B31F Routine at B31F
@ $B31F label=upd_2F
C $B32B,5 '0'
c $B330 Routine at B330
D $B330 Used by the routine at #R$B31F.
@ $B330 label=loc_B330
c $B33F Routine at B33F
@ $B33F label=upd_1F
c $B34E Routine at B34E
D $B34E Used by the routines at #R$B330 and #R$B33F.
@ $B34E label=loc_B34E
c $B36E Routine at B36E
D $B36E Used by the routines at #R$B34E and #R$B38C.
@ $B36E label=loc_B36E
c $B371 Routine at B371
D $B371 Used by the routine at #R$B34E.
@ $B371 label=loc_B371
c $B38C Routine at B38C
D $B38C Used by the routine at #R$B371.
@ $B38C label=loc_B38C
c $B39A Routine at B39A
D $B39A Used by the routines at #R$C0BE and #R$C6E4.
@ $B39A label=loc_B39A
C $B39A,10 '0'
c $B3A4 Routine at B3A4
D $B3A4 Used by the routine at #R$B28C.
@ $B3A4 label=upd_30_to_36_40
c $B3AA Routine at B3AA
D $B3AA Used by the routine at #R$B39A.
@ $B3AA label=loc_B3AA
c $B3B0 Routine at B3B0
@ $B3B0 label=upd_41
c $B3B8 Routine at B3B8
@ $B3B8 label=upd_37
c $B3BB Routine at B3BB
D $B3BB Used by the routines at #R$AE17 and #R$AE33.
@ $B3BB label=loc_B3BB
c $B3BF Routine at B3BF
D $B3BF Used by the routines at #R$AFDD, #R$AFF8, #R$B19C, #R$B314 and #R$BF22.
@ $B3BF label=audio_set_wipe_draw_flags
b $B3C5 Data block at B3C5
@ $B3C5 label=start_game_tune
B $B3C5,18,8*2,2
b $B3D7 Data block at B3D7
@ $B3D7 label=obj_5C_tune
B $B3D7,32,8
b $B3F7 Data block at B3F7
@ $B3F7 label=game_over_tune
B $B3F7,64,8
b $B437 Data block at B437
@ $B437 label=game_complete_tune
B $B437,26,8*3,2
b $B451 Data block at B451
@ $B451 label=menu_tune
B $B451,80,8
c $B4A1 Routine at B4A1
D $B4A1 Used by the routine at #R$BA95.
@ $B4A1 label=play_audio_wait_key
c $B4A9 Routine at B4A9
D $B4A9 Used by the routines at #R$B4B0 and #R$B7AE.
@ $B4A9 label=play_audio_until_keypress
c $B4B0 Routine at B4B0
D $B4B0 Used by the routine at #R$B4A9.
@ $B4B0 label=loc_B4B0
c $B4BA Routine at B4BA
D $B4BA Used by the routines at #R$A650, #R$A9A8 and #R$B8A9.
@ $B4BA label=play_audio
c $B4C4 Routine at B4C4
D $B4C4 Used by the routines at #R$B4B0 and #R$B4BA.
@ $B4C4 label=end_audio
c $B4C5 Routine at B4C5
D $B4C5 Used by the routines at #R$B4B0 and #R$B4BA.
@ $B4C5 label=sub_B4C5
C $B4C5,31 '?'
c $B4E4 Routine at B4E4
@ $B4E4 label=loc_B4E4
c $B4EA Routine at B4EA
D $B4EA Used by the routine at #R$B4E4.
@ $B4EA label=loc_B4EA
c $B4EB Routine at B4EB
D $B4EB Used by the routine at #R$B4FA.
@ $B4EB label=loc_B4EB
c $B4EF Routine at B4EF
@ $B4EF label=loc_B4EF
c $B4FA Routine at B4FA
@ $B4FA label=loc_B4FA
c $B507 Routine at B507
D $B507 Used by the routine at #R$B4C5.
@ $B507 label=loc_B507
c $B512 Routine at B512
D $B512 Used by the routine at #R$B513.
@ $B512 label=loc_B512
c $B513 Routine at B513
@ $B513 label=loc_B513
b $B51D Data block at B51D
@ $B51D label=freq_tbl
B $B51D,201,3
b $B5E6 Data block at B5E6
@ $B5E6 label=byte_B5E6
B $B5E6,8,8
c $B5EE Routine at B5EE
D $B5EE Used by the routines at #R$B00B and #R$B3AA.
@ $B5EE label=sub_B5EE
c $B5F8 Routine at B5F8
@ $B5F8 label=loc_B5F8
c $B604 Routine at B604
D $B604 Used by the routine at #R$BC70.
@ $B604 label=sub_B604
c $B60E Routine at B60E
@ $B60E label=loc_B60E
c $B619 Routine at B619
D $B619 Used by the routines at #R$AB61, #R$B08A and #R$B130.
@ $B619 label=sub_B619
c $B61E Routine at B61E
@ $B61E label=loc_B61E
C $B622,10 'À'
c $B62C Routine at B62C
D $B62C Used by the routine at #R$C23D.
@ $B62C label=audio_B62C
C $B62C,2 ' '
c $B62E Routine at B62E
@ $B62E label=loc_B62E
c $B63C Routine at B63C
D $B63C Used by the routines at #R$A937, #R$A9F1, #R$AD37, #R$B06B, #R$B2B6, #R$B34E and #R$C2C8.
@ $B63C label=audio_B63C
c $B63F Routine at B63F
D $B63F Used by the routines at #R$A988, #R$B64A, #R$B64F and #R$B654.
@ $B63F label=audio_B63F
C $B63F,11 '@'
c $B64A Routine at B64A
D $B64A Used by the routine at #R$B224.
@ $B64A label=audio_B64A
c $B64F Routine at B64F
D $B64F Used by the routine at #R$B21C.
@ $B64F label=audio_B64F
c $B654 Routine at B654
D $B654 Used by the routine at #R$B3BF.
@ $B654 label=audio_B654
C $B654,3 X
C $B657,3 +Y
C $B65A,16 +Z
c $B66A Routine at B66A
@ $B66A label=audio_B66A
C $B66B,11 'U'
c $B676 Routine at B676
D $B676 Used by the routines at #R$ABAC and #R$AD54.
@ $B676 label=sub_B676
c $B682 Routine at B682
@ $B682 label=loc_B682
C $B684,12 ''
c $B690 Routine at B690
D $B690 Used by the routines at #R$AA3A and #R$AA89.
@ $B690 label=audio_B690
c $B699 Routine at B699
@ $B699 label=loc_B699
C $B69F,10 '@'
b $B6A9 Data block at B6A9
@ $B6A9 label=byte_B6A9
B $B6A9,8,8
c $B6B1 Routine at B6B1
D $B6B1 Used by the routines at #R$AC03, #R$BADE, #R$BD9E and #R$BEE0.
@ $B6B1 label=toggle_FE_bit4_x16
c $B6B6 Routine at B6B6
D $B6B6 Used by the routines at #R$CE2D and #R$CE42.
@ $B6B6 label=toggle_FE_bit4_x24
c $B6BB Routine at B6BB
D $B6BB Used by the routines at #R$AAC1 and #R$B26B.
@ $B6BB label=toggle_FE_bit4_x32
c $B6C0 Routine at B6C0
D $B6C0 Used by the routine at #R$B055.
@ $B6C0 label=loc_B6C0
C $B6C6,8 '€'
c $B6CE Routine at B6CE
D $B6CE Used by the routine at #R$C277.
@ $B6CE label=audio_B6CE
c $B6D4 Routine at B6D4
D $B6D4 Used by the routine at #R$C211.
@ $B6D4 label=loc_B6D4
C $B6D4,5 '`'
c $B6D9 Routine at B6D9
D $B6D9 Used by the routine at #R$B6C0.
@ $B6D9 label=loc_B6D9
C $B6E0,6 '@'
c $B6E6 Routine at B6E6
D $B6E6 Used by the routine at #R$B6D9.
@ $B6E6 label=loc_B6E6
c $B6FB Routine at B6FB
D $B6FB Used by the routines at #R$B5F8, #R$B61E, #R$B63F, #R$B682, #R$B6B1, #R$B6B6 and #R$B6BB.
@ $B6FB label=toggle_FE_bit4_xC
c $B702 Routine at B702
D $B702 Used by the routines at #R$B60E, #R$B62E, #R$B66A, #R$B699 and #R$B6FB.
@ $B702 label=toggle_FE_bit4
c $B707 Routine at B707
@ $B707 label=loc_B707
c $B70E Routine at B70E
@ $B70E label=loc_B70E
c $B712 Routine at B712
D $B712 Used by the routine at #R$BD6B.
R $B712 Identical to Knight Lore (except #objs)
@ $B712 label=do_any_objs_intersect
c $B725 Routine at B725
D $B725 Used by the routine at #R$B743.
@ $B725 label=loc_B725
c $B739 Routine at B739
D $B739 Used by the routine at #R$B743.
@ $B739 label=loc_B739
c $B743 Routine at B743
D $B743 Used by the routine at #R$B725.
@ $B743 label=loc_B743
c $B74D Routine at B74D
D $B74D Used by the routines at #R$B725, #R$C49D, #R$C4EC and #R$C53B.
R $B74D identical to Knight Lore
@ $B74D label=is_object_not_ignored
c $B759 Routine at B759
D $B759 Used by the routines at #R$AB61, #R$B4A9, #R$B7AE, #R$B89C, #R$BA95, #R$BADE, #R$C91B, #R$C923, #R$C979, #R$C986, #R$C9A5, #R$C9D3, #R$C9DC, #R$C9E5, #R$C9EE, #R$CE22, #R$CE2D, #R$CE39 and #R$CE42.
@ $B759 label=read_key
c $B761 lose_life
D $B761 Used by the routines at #R$ADA8, #R$B021 and #R$CA07.
@ $B761 label=game_over
c $B76B Routine at B76B
D $B76B Used by the routine at #R$B8A9.
@ $B76B label=loc_B76B
C $B778,12 "GAME OVEÒ"
C $B784,20 'À'
C $B798,1 get entry
C $B79B,1 DE=ptr message
c $B7AE Routine at B7AE
@ $B7AE label=loc_B7AE
c $B7E5 Routine at B7E5
D $B7E5 Used by the routine at #R$B7F0.
@ $B7E5 label=loc_B7E5
c $B7F0 Routine at B7F0
D $B7F0 Used by the routine at #R$B7AE.
@ $B7F0 label=loc_B7F0
b $B7F5 Data block at B7F5
@ $B7F5 label=msg_Reprogramming
B $B7F5,1,1 Æ
t $B7F6 Message at B7F6
@ $B7F6 label=aReProgramming
B $B7F6,1,1
T $B7F7,13,12:n1
c $B804 Routine at B804
D $B804 Used by the routine at #R$B7E5.
@ $B804 label=set_graphic_flags7_pixelXY
c $B80B Routine at B80B
@ $B80B label=loc_B80B
b $B82A graphic_no, flags7, plyr graphic_no, pixelX, pixelY
@ $B82A label=byte_B82A
B $B82A,41,5*8,1
b $B853 Data block at B853
@ $B853 label=byte_B853
B $B853,16,5*3,1
c $B863 build_screen_objects
D $B863 Used by the routine at #R$CAAB.
@ $B863 label=flag_room_visited
C $B873,2 '8'
C $B875,2 'Æ'             ; SET 0,(HL)
C $B877,6 self_modifying code
C $B87D,1 offset to room flag
@ $B87E label=byte_B87E
C $B87E,3 flag as visited
c $B881 This entry point is used by the routine at #R$B76B.
D $B881 Used by the routine at #R$B76B.
@ $B881 label=count_screens
C $B881,2 }
C $B883,6 8 bits, 32 bytes
c $B889 Routine at B889
D $B889 Used by the routine at #R$B890.
@ $B889 label=next_screen
c $B88C Routine at B88C
D $B88C Used by the routine at #R$B890.
@ $B88C label=loc_B88C
c $B890 Routine at B890
D $B890 Used by the routine at #R$B88C.
@ $B890 label=loc_B890
c $B899 Routine at B899
D $B899 Used by the routines at #R$B7AE and #R$B8A9.
@ $B899 label=play_audio_timed_key
c $B89C Routine at B89C
@ $B89C label=loc_B89C
c $B8A9 lose_life
D $B8A9 Used by the routine at #R$B761.
@ $B8A9 label=game_complete_msg
C $B8B6,26 "THE STATION HAS ARRIVEÄ"
b $B8D0 Data block at B8D0
@ $B8D0 label=complete_colours
B $B8D0,7,7
b $B8D7 Data block at B8D7
@ $B8D7 label=complete_xy
B $B8D7,14,2
t $B8E5 Message at B8E5
@ $B8E5 label=aTheStationHasArrived
B $B8E5,1,1
T $B8E6,22,21:n1
t $B8FC Message at B8FC
@ $B8FC label=aFromSpace
B $B8FC,1,1
T $B8FD,9,8:n1
t $B906 Message at B906
@ $B906 label=aThrustersGentlySlow
B $B906,1,1
T $B907,20,19:n1
t $B91B Message at B91B
@ $B91B label=aTheActivation
B $B91B,1,1
T $B91C,13,12:n1
t $B929 Message at B929
@ $B929 label=aCircuitsHeld
B $B929,1,1
T $B92A,13,12:n1
t $B937 Message at B937
@ $B937 label=aAllCryonaught
B $B937,1,1
T $B938,13,12:n1
t $B945 Message at B945
@ $B945 label=aSystemsGo
B $B945,1,1
T $B946,9,8:n1
b $B94F Data block at B94F
@ $B94F label=gameover_colours
B $B94F,7,7
b $B956 Data block at B956
@ $B956 label=gameover_xy
B $B956,14,2
t $B964 Message at B964
@ $B964 label=aGameOver
B $B964,1,1
T $B965,8,7:n1
t $B96D Message at B96D
@ $B96D label=aActivatedCryogenic
B $B96D,1,1
T $B96E,18,17:n1
t $B980 Message at B980
@ $B980 label=aChambers_1
B $B980,1,1
T $B981,18,17:n1
t $B993 Message at B993
@ $B993 label=aUnactivatedCryogenic
B $B993,1,1
T $B994,20,19:n1
t $B9A8 Message at B9A8
@ $B9A8 label=aChambers_2
B $B9A8,1,1
T $B9A9,18,17:n1
t $B9BB Message at B9BB
@ $B9BB label=aCryonaughtsLost
B $B9BB,1,1
T $B9BC,19,18:n1
t $B9CF Message at B9CF
@ $B9CF label=aOverallRating
B $B9CF,1,1
T $B9D0,13,12:n1
b $B9DD Data block at B9DD
@ $B9DD label=rating_tbl
W $B9DD,16,2
t $B9ED Data block at B9ED
@ $B9ED label=msg_POOR
B $B9ED,1,1 G
t $B9EE Message at B9EE
@ $B9EE label=aPoor
B $B9EE,1,1
T $B9EF,6,5:n1
t $B9F5 Data block at B9F5
@ $B9F5 label=msg_AVERAGE
B $B9F5,1,1 G
t $B9F6 Message at B9F6
@ $B9F6 label=aAverage
B $B9F6,1,1
T $B9F7,7,6:n1
t $B9FE Data block at B9FE
@ $B9FE label=msg_FAIR
B $B9FE,1,1 G
t $B9FF Message at B9FF
@ $B9FF label=aFair
B $B9FF,1,1
T $BA00,6,5:n1
t $BA06 Data block at BA06
@ $BA06 label=msg_GOOD
B $BA06,1,1 G
t $BA07 Message at BA07
@ $BA07 label=aGood
B $BA07,1,1
T $BA08,6,5:n1
t $BA0E Data block at BA0E
@ $BA0E label=msg_EXCELLENT
B $BA0E,1,1 G
t $BA0F Message at BA0F
@ $BA0F label=aExcellent
B $BA0F,1,1
T $BA10,8,7:n1
t $BA18 Data block at BA18
@ $BA18 label=msg_MARVELLOUS
B $BA18,1,1 G
t $BA19 Message at BA19
@ $BA19 label=aMarvellous
B $BA19,1,1
T $BA1A,9,8:n1
t $BA23 Data block at BA23
@ $BA23 label=msg_HERO
B $BA23,1,1 G
t $BA24 Message at BA24
@ $BA24 label=aHero
B $BA24,1,1
T $BA25,6,5:n1
t $BA2B Data block at BA2B
@ $BA2B label=msg_ADVENTURER
B $BA2B,1,1 G
t $BA2C Message at BA2C
@ $BA2C label=aAdventurer
B $BA2C,1,1
T $BA2D,9,8:n1
c $BA36 Routine at BA36
D $BA36 Used by the routine at #R$B76B.
@ $BA36 label=print_some_number
c $BA57 Routine at BA57
D $BA57 Used by the routines at #R$A749 and #R$BEE0.
@ $BA57 label=print_lives
c $BA62 Routine at BA62
D $BA62 Used by the routines at #R$A7A3 and #R$BA57.
@ $BA62 label=print_BCD_number
c $BA6A Routine at BA6A
D $BA6A Used by the routines at #R$BA36 and #R$BA74.
@ $BA6A label=print_BCD_msd
C $BA6A,1 get char
C $BA6E,1 high->low nibble
c $BA74 Routine at BA74
D $BA74 Used by the routine at #R$BA36.
@ $BA74 label=print_BCD_lsd
C $BA74,1 get char
C $BA75,9 low nibble
c $BA7E Routine at BA7E
D $BA7E Used by the routine at #R$A650.
R $BA7E Identical to Knight Lore
@ $BA7E label=do_menu_selection
c $BA87 Routine at BA87
@ $BA87 label=loc_BA87
c $BA95 Routine at BA95
D $BA95 Used by the routine at #R$BADE.
@ $BA95 label=menu_loop
C $BA9E,16 '÷'
C $BAAE,2 'ù'
c $BAB0 Routine at BAB0
D $BAB0 Used by the routine at #R$BA95.
@ $BAB0 label=check_for_kempston_jpystick
C $BAB4,4 'ù'
c $BAB8 Routine at BAB8
D $BAB8 Used by the routine at #R$BAB0.
@ $BAB8 label=check_for_cursor_joystick
C $BABC,4 'ù'
c $BAC0 Routine at BAC0
D $BAC0 Used by the routine at #R$BAB8.
@ $BAC0 label=check_for_interface_ii
c $BAC6 Routine at BAC6
D $BAC6 Used by the routine at #R$BAC0.
@ $BAC6 label=check_for_dierctional_control
c $BADE Routine at BADE
D $BADE Used by the routines at #R$BAC6 and #R$BAF7.
@ $BADE label=check_for_start_game
C $BAE5,18 'ï'
c $BAF7 Routine at BAF7
D $BAF7 Used by the routine at #R$BAC6.
@ $BAF7 label=unset_directional
c $BAFB Routine at BAFB
D $BAFB Used by the routines at #R$BA87 and #R$BADE.
R $BAFB Identical to Knight Lore
@ $BAFB label=flash_menu
b $BB14 Data block at BB14
@ $BB14 label=menu_colours
B $BB14,8,8
b $BB1C Data block at BB1C
@ $BB1C label=menu_xy
B $BB1C,16,2
t $BB2C Message at BB2C
@ $BB2C label=aAlien
B $BB2C,1,1
T $BB2D,6,5:n1
t $BB33 Message at BB33
@ $BB33 label=a1Keyboard
B $BB33,1,1
T $BB34,9,8:n1
t $BB3D Message at BB3D
@ $BB3D label=a2KempstonJoystick
B $BB3D,1,1
T $BB3E,18,17:n1
t $BB50 Message at BB50
@ $BB50 label=a3CursorJoystick
B $BB50,1,1
T $BB51,16,15:n1
t $BB61 Message at BB61
@ $BB61 label=a4InterfaceII
B $BB61,1,1
T $BB62,13,12:n1
t $BB6F Message at BB6F
@ $BB6F label=a5DirectionalControl
B $BB6F,1,1
T $BB70,20,19:n1
t $BB84 Message at BB84
@ $BB84 label=a0StartGame
B $BB84,1,1
T $BB85,11,10:n1
t $BB90 Message at BB90
@ $BB90 label=a1985ACG
B $BB90,1,1
T $BB91,12,11:n1
c $BB9D Routine at BB9D
D $BB9D Used by the routine at #R$BC31.
@ $BB9D label=print_text_in_colour
C $BB9E,19 so we can use ASCII
c $BBB1 Routine at BBB1
D $BBB1 Used by the routines at #R$A749, #R$B76B and #R$B7AE.
@ $BBB1 label=print_text
C $BBB2,16 sp we can use ASCII
c $BBC2 Routine at BBC2
D $BBC2 Used by the routine at #R$BB9D.
@ $BBC2 label=loc_BBC2
c $BBCB Routine at BBCB
@ $BBCB label=loc_BBCB
c $BBDE Routine at BBDE
D $BBDE Used by the routine at #R$BBCB.
@ $BBDE label=loc_BBDE
C $BBDE,13 ''
c $BBEB Routine at BBEB
D $BBEB Used by the routines at #R$BA6A, #R$BA74, #R$BBCB and #R$BBDE.
@ $BBEB label=print_8x8
C $BBEB,4 ' '
C $BBEF,2 '='
c $BBF1 Routine at BBF1
D $BBF1 Used by the routine at #R$BBEB.
@ $BBF1 label=loc_BBF1
c $BBFA Routine at BBFA
D $BBFA Used by the routine at #R$ADB0.
@ $BBFA label=loc_BBFA
c $BC03 Routine at BC03
@ $BC03 label=loc_BC03
c $BC15 Routine at BC15
D $BC15 Used by the routine at #R$BAFB.
@ $BC15 label=toggle_selected
c $BC18 Routine at BC18
D $BC18 Used by the routine at #R$BC1C.
@ $BC18 label=loc_BC18
c $BC1C Routine at BC1C
D $BC1C Used by the routine at #R$BC21.
@ $BC1C label=loc_BC1C
c $BC1F Routine at BC1F
D $BC1F Used by the routine at #R$BC15.
@ $BC1F label=loc_BC1F
c $BC21 Routine at BC21
D $BC21 Used by the routine at #R$BC18.
@ $BC21 label=loc_BC21
c $BC25 Routine at BC25
D $BC25 Used by the routines at #R$BA87 and #R$BA95.
@ $BC25 label=display_menu
C $BC2C,5 "ALIEN ¸"
c $BC31 Routine at BC31
D $BC31 Used by the routines at #R$B76B and #R$B8A9.
@ $BC31 label=display_text_list
c $BC56 Routine at BC56
D $BC56 Used by the routines at #R$CB0F and #R$CB8A.
@ $BC56 label=multiple_print_sprite
c $BC70 Routine at BC70
@ $BC70 label=upd_38_to_3E
c $BC83 Routine at BC83
@ $BC83 label=upd_3F
c $BC9D Routine at BC9D
D $BC9D Used by the routine at #R$CF5F.
@ $BC9D label=display_objects_carried
c $BCAB Routine at BCAB
D $BCAB Used by the routine at #R$A749.
@ $BCAB label=sub_BCAB
c $BCB6 Routine at BCB6
D $BCB6 Used by the routine at #R$BCF2.
@ $BCB6 label=loc_BCB6
C $BCC9,3 pixelX
C $BCCC,4 pixelY
C $BCD0,3 pixelX
C $BCD3,31 pixelY
c $BCF2 Routine at BCF2
D $BCF2 Used by the routine at #R$BCB6.
@ $BCF2 label=loc_BCF2
b $BD34 Data block at BD34
@ $BD34 label=byte_BD34
B $BD34,4,4
b $BD38 Data block at BD38
@ $BD38 label=sprite_scratchpad
B $BD38,32,27,5
c $BD58 Routine at BD58
D $BD58 Used by the routines at #R$BD6B, #R$BDCC and #R$BDFD.
R $BD58 Identical to Knight Lore
@ $BD58 label=chk_pickup_drop
c $BD68 Routine at BD68
D $BD68 Used by the routine at #R$BD58.
@ $BD68 label=loc_BD68
c $BD6B Routine at BD6B
D $BD6B Used by the routine at #R$C0CE.
R $BD6B Identical to Knight Lore - almost - no handling of cauldron room - very slightly different call
@ $BD6B label=handle_pickup_drop
c $BD9E Routine at BD9E
D $BD9E Used by the routine at #R$BD6B.
@ $BD9E label=loc_BD9E
c $BDCC Routine at BDCC
@ $BDCC label=loc_BDCC
c $BDE7 Routine at BDE7
@ $BDE7 label=loc_BDE7
c $BDF1 Routine at BDF1
D $BDF1 Used by the routines at #R$BDCC, #R$BE06 and #R$BE60.
@ $BDF1 label=done_pickup_drop
c $BDFD Routine at BDFD
D $BDFD Used by the routine at #R$BD6B.
@ $BDFD label=loc_BDFD
c $BE06 Routine at BE06
D $BE06 Used by the routine at #R$BDE7.
@ $BE06 label=loc_BE06
c $BE3B Routine at BE3B
D $BE3B Used by the routine at #R$BE76.
@ $BE3B label=drop_object
c $BE60 Routine at BE60
D $BE60 Used by the routines at #R$BE06 and #R$BE76.
@ $BE60 label=adjust_carried
c $BE76 Routine at BE76
D $BE76 Used by the routine at #R$BDCC.
@ $BE76 label=pickup_object
c $BEA7 Routine at BEA7
D $BEA7 Used by the routine at #R$BDCC.
R $BEA7 Identical to Knight Lore (except #special objs)
@ $BEA7 label=can_pickup_spec_obj
C $BEAA,5 '`'
c $BEAF Identical to Knight Lore - sets C flag if TRUE
D $BEAF Used by the routine at #R$BEE0.
@ $BEAF label=is_on_or_near_obj
c $BED4 Routine at BED4
D $BED4 Used by the routine at #R$BEAF.
@ $BED4 label=loc_BED4
c $BED6 Routine at BED6
D $BED6 Used by the routines at #R$A9F1, #R$AFD0, #R$B302 and #R$BF22.
@ $BED6 label=is_obj_moving
C $BED6,3 dX
C $BED9,3 dY
C $BEDC,4 dZ
c $BEE0 extra life
@ $BEE0 label=upd_0C
C $BEEB,3 plyr bottom width
C $BEEE,6 plyr bottom depth
C $BEF4,3 plyr bottom width
C $BEF7,7 plyr bottom depth
C $BEFE,2 not close, skip
C $BF00,14 '@'      ; sparkles
C $BF0E,1 plyr graphic
C $BF15,1 extra life!
C $BF1C,6 '€'
c $BF22 Routine at BF22
D $BF22 Used by the routine at #R$BEE0.
@ $BF22 label=loc_BF22
c $BF2F Routine at BF2F
D $BF2F Used by the routines at #R$B04C and #R$BEE0.
@ $BF2F label=sub_BF2F
c $BF3D Routine at BF3D
D $BF3D Used by the routines at #R$A8F9, #R$A9C7, #R$AA4D, #R$AA63, #R$B22A, #R$B26B, #R$B28C, #R$B29F, #R$B2B6, #R$B2FF, #R$B31F and #R$B33F.
@ $BF3D label=upd_1E
c $BF47 Used by the routines at #R$AD13, #R$BC70 and #R$BC83.
D $BF47 Used by the routines at #R$AD13, #R$BC70 and #R$BC83.
@ $BF47 label=sub_BF47
c $BF4C Routine at BF4C
D $BF4C Used by the routines at #R$AE68, #R$C0BE and #R$C1E2.
@ $BF4C label=adj_m7_m16
C $BF4C,5 -7,-16
c $BF51 Routine at BF51
@ $BF51 label=upd_0D
C $BF51,3 -7,-12
c $BF56 Routine at BF56
D $BF56 Used by the routine at #R$B31A.
@ $BF56 label=adj_m6_m16
C $BF56,3 -6,-16
c $BF5B Routine at BF5B
D $BF5B Used by the routines at #R$AAA1, #R$B055, #R$B06B and #R$B110.
@ $BF5B label=adj_m6_m12
C $BF5B,3 -6,-12
c $BF60 Routine at BF60
D $BF60 Used by the routines at #R$AE17, #R$AE33, #R$AE5D and #R$AF79.
@ $BF60 label=adj_m5_m12
C $BF60,3 -5,-12
c $BF65 Routine at BF65
@ $BF65 label=upd_0F
C $BF65,3 -5,-8
c $BF6A Routine at BF6A
D $BF6A Used by the routines at #R$A9B1, #R$AA89, #R$AE96, #R$B19C, #R$B2A4, #R$B3A4, #R$B3B8 and #R$BEE0.
@ $BF6A label=adj_m4_m12
C $BF6A,3 -4,-12
c $BF6F Routine at BF6F
D $BF6F Used by the routine at #R$C6E4.
@ $BF6F label=adj_m3_m16
C $BF6F,3 -3,-16
c $BF74 Routine at BF74
@ $BF74 label=upd_0E
C $BF74,3 -3,-4
c $BF77 Identical to Knight Lore
D $BF77 Used by the routines at #R$BF3D, #R$BF47, #R$BF4C, #R$BF51, #R$BF56, #R$BF5B, #R$BF60, #R$BF65, #R$BF6A, #R$BF6F, #R$BF7E, #R$BFD8, #R$BFE4, #R$BFEA and #R$C013.
@ $BF77 label=set_pixel_adj
c $BF7E Routine at BF7E
D $BF7E Used by the routine at #R$BEE0.
@ $BF7E label=adj_m2_m8
C $BF7E,5 -2,-8
c $BF83 Different to Knight Lore - unrolled the loop and using self-modifying code
D $BF83 Used by the routines at #R$A749, #R$BCB6, #R$BCF2, #R$CBE3 and #R$CF38.
@ $BF83 label=fill_window
C $BF84,1 #bytes
C $BF89,1 calc JR operand
C $BF8A,3 patch code
C $BF8D,2 32 bytes/line
C $BF8F,1 sub #bytes for offset
C $BF93,1 #lines
c $BF95 Routine at BF95
@ $BF95 label=loc_BF95
C $BF95,2 patched
c $BFAB Identical to Knight Lore
D $BFAB Used by the routines at #R$A937, #R$A988, #R$A9F1, #R$AA3A, #R$ABD7, #R$AC03, #R$AD46, #R$ADF3, #R$AE17, #R$AE5A, #R$AFE7, #R$B055, #R$B249, #R$B25A, #R$B2B0, #R$B2D6, #R$B302, #R$B36E, #R$B3AA, #R$B3BF, #R$BC70 and #R$C0FF.
@ $BFAB label=set_wipe_and_draw_flags
C $BFAE,8 '0'
c $BFB6 Routine at BFB6
D $BFB6 Used by the routines at #R$A921, #R$A93D, #R$A9F1, #R$AA15, #R$AA89, #R$AAA1, #R$AD37, #R$AFD0, #R$B06B, #R$B116, #R$B13C, #R$B19C, #R$B25A, #R$B2B6, #R$B302, #R$B34E, #R$B371 and #R$BF22.
R $BFB6 Identical to Knight Lore
@ $BFB6 label=dec_dZ_and_update_XYZ
c $BFBC Routine at BFBC
D $BFBC Used by the routine at #R$C2C8.
R $BFBC Identical to Knight Lore
@ $BFBC label=add_dXYZ
c $BFD8 Routine at BFD8
@ $BFD8 label=upd_03
C $BFDE,6 -5,-16
c $BFE4 Routine at BFE4
D $BFE4 Used by the routine at #R$BFD8.
@ $BFE4 label=adj_m4_m8
C $BFE4,3 -4,-8
c $BFEA Routine at BFEA
@ $BFEA label=upd_02
C $BFF0,6 -7,-6
C $BFF6,3 Y
C $BFF9,2 Y+13
C $BFFB,3 dY=Y+13
C $BFFE,3 X
C $C001,6 dX=X
c $C007 Routine at C007
D $C007 Used by the routine at #R$C013.
@ $C007 label=loc_C007
C $C007,3 Z
C $C00A,9 dZ=Z
c $C013 Routine at C013
D $C013 Used by the routine at #R$BFEA.
@ $C013 label=loc_C013
C $C013,3 -6,-10
C $C019,3 X
C $C01C,2 X-13
C $C01E,3 dX=X-13
C $C021,3 Y
C $C024,8 dY=Y
c $C02C Routine at C02C
D $C02C Used by the routine at #R$C007.
@ $C02C label=loc_C02C
C $C033,3 player graphic no.
C $C036,1 zero?
C $C037,1 yes, exit
b $C048 Data block at C048
@ $C048 label=off_C048
W $C048,8,2
c $C050 Routine at C050
@ $C050 label=loc_C050
c $C064 Routine at C064
D $C064 Used by the routine at #R$C050.
@ $C064 label=loc_C064
c $C069 Routine at C069
@ $C069 label=loc_C069
c $C07D Routine at C07D
D $C07D Used by the routine at #R$C069.
@ $C07D label=loc_C07D
c $C080 Routine at C080
D $C080 Used by the routines at #R$C050, #R$C064 and #R$C069.
@ $C080 label=loc_C080
c $C082 Routine at C082
D $C082 Used by the routine at #R$C007.
@ $C082 label=sub_C082
C $C086,3 player graphic no.
C $C089,1 zero?
C $C08A,1 yes, exit
c $C099 Routine at C099
D $C099 Used by the routines at #R$C02C and #R$C082.
@ $C099 label=sub_C099
c $C0A3 Routine at C0A3
D $C0A3 Used by the routine at #R$C099.
@ $C0A3 label=loc_C0A3
c $C0AF Routine at C0AF
D $C0AF Used by the routine at #R$C0A3.
@ $C0AF label=loc_C0AF
c $C0BB Routine at C0BB
D $C0BB Used by the routine at #R$C0AF.
@ $C0BB label=loc_C0BB
c $C0BE player bottom
@ $C0BE label=upd_10_to_17
c $C0CE Routine at C0CE
D $C0CE Used by the routine at #R$C0BE.
@ $C0CE label=loc_C0CE
C $C0CE,4 height=23
C $C0D2,24 height (next sprite)=0
c $C0EA Routine at C0EA
D $C0EA Used by the routine at #R$C10A.
@ $C0EA label=loc_C0EA
c $C0FF Routine at C0FF
D $C0FF Used by the routines at #R$C0EA and #R$C221.
@ $C0FF label=loc_C0FF
c $C10A Routine at C10A
D $C10A Used by the routine at #R$C0CE.
@ $C10A label=loc_C10A
c $C117 Routine at C117
D $C117 Used by the routines at #R$BD6B and #R$C0CE.
R $C117 Identical to Knight Lore
@ $C117 label=chk_plyr_OOB
c $C12E Routine at C12E
D $C12E Used by the routine at #R$C117.
@ $C12E label=loc_C12E
c $C13A Routine at C13A
D $C13A Used by the routine at #R$C12E.
@ $C13A label=loc_C13A
c $C13C Routine at C13C
D $C13C Used by the routine at #R$C0CE.
R $C13C Differs from Knight Lore in the latter half - eg. doesn't seem to debounce
@ $C13C label=handle_left_right
C $C14B,16 'ð'
c $C15B Routine at C15B
D $C15B Used by the routine at #R$C13C.
@ $C15B label=loc_C15B
c $C16A Routine at C16A
D $C16A Used by the routine at #R$C13C.
@ $C16A label=loc_C16A
c $C16F Routine at C16F
D $C16F Used by the routine at #R$C176.
@ $C16F label=loc_C16F
c $C172 Routine at C172
D $C172 Used by the routine at #R$C182.
@ $C172 label=loc_C172
c $C176 Routine at C176
D $C176 Used by the routine at #R$C15B.
@ $C176 label=loc_C176
c $C17D Routine at C17D
D $C17D Used by the routine at #R$C15B.
@ $C17D label=loc_C17D
c $C182 Routine at C182
D $C182 Used by the routine at #R$C186.
@ $C182 label=loc_C182
c $C186 Routine at C186
D $C186 Used by the routine at #R$C15B.
@ $C186 label=loc_C186
c $C18C Routine at C18C
D $C18C Used by the routines at #R$C16F and #R$C182.
@ $C18C label=loc_C18C
c $C18F Routine at C18F
D $C18F Used by the routine at #R$C13C.
@ $C18F label=loc_C18F
C $C196,10 'ð'
c $C1A0 Routine at C1A0
D $C1A0 Used by the routine at #R$C172.
@ $C1A0 label=loc_C1A0
c $C1AB Routine at C1AB
D $C1AB Used by the routine at #R$C1A0.
@ $C1AB label=loc_C1AB
c $C1B2 Routine at C1B2
D $C1B2 Used by the routine at #R$C1A0.
@ $C1B2 label=loc_C1B2
c $C1BD Routine at C1BD
D $C1BD Used by the routine at #R$C211.
@ $C1BD label=sub_C1BD
C $C1CB,7 '¿'
b $C1D2 Data block at C1D2
@ $C1D2 label=byte_C1D2
B $C1D2,8,8
b $C1DA Data block at C1DA
@ $C1DA label=byte_C1DA
B $C1DA,8,8
c $C1E2 Routine at C1E2
@ $C1E2 label=upd_18_to_1B
c $C208 Routine at C208
D $C208 Used by the routine at #R$C1E2.
@ $C208 label=loc_C208
c $C211 Routine at C211
D $C211 Used by the routine at #R$C228.
@ $C211 label=loc_C211
c $C221 Routine at C221
D $C221 Used by the routine at #R$C1E2.
@ $C221 label=loc_C221
c $C228 Routine at C228
D $C228 Used by the routine at #R$C208.
@ $C228 label=loc_C228
b $C22D Data block at C22D
@ $C22D label=byte_C22D
B $C22D,8,8
b $C235 Data block at C235
@ $C235 label=byte_C235
B $C235,8,8
c $C23D Routine at C23D
D $C23D Used by the routine at #R$C0CE.
R $C23D Identical to Knight Lore
@ $C23D label=handle_jump
C $C243,27 'ð'
c $C25E Routine at C25E
D $C25E Used by the routine at #R$C0CE.
R $C25E Different to Knight Lore
@ $C25E label=handle_forward
C $C269,14 'ð'
c $C277 Routine at C277
D $C277 Used by the routine at #R$C25E.
@ $C277 label=loc_C277
c $C27C Routine at C27C
D $C27C Used by the routine at #R$C28C.
@ $C27C label=loc_C27C
C $C285,7 'ü'
c $C28C Routine at C28C
D $C28C Used by the routine at #R$C25E.
@ $C28C label=loc_C28C
c $C296 Routine at C296
D $C296 Used by the routine at #R$C0EA.
R $C296 Similar but different to Knight Lore
@ $C296 label=move_player
c $C2A0 Routine at C2A0
D $C2A0 Used by the routine at #R$C296.
@ $C2A0 label=loc_C2A0
C $C2A9,10 'ð'
c $C2B3 Routine at C2B3
D $C2B3 Used by the routine at #R$C211.
@ $C2B3 label=sub_C2B3
c $C2B7 Routine at C2B7
D $C2B7 Used by the routine at #R$C2A0.
@ $C2B7 label=loc_C2B7
c $C2BC Routine at C2BC
D $C2BC Used by the routines at #R$C1E2, #R$C2A0 and #R$C2B3.
@ $C2BC label=sub_C2BC
c $C2C7 Routine at C2C7
D $C2C7 Used by the routine at #R$C2BC.
@ $C2C7 label=loc_C2C7
c $C2C8 Routine at C2C8
D $C2C8 Used by the routine at #R$C2BC.
@ $C2C8 label=loc_C2C8
C $C2C9,37 dZ
c $C2EE Identical to Knight Lore
D $C2EE Used by the routines at #R$AFDD, #R$B314, #R$BF22 and #R$C2C8.
@ $C2EE label=clear_dX_dY
C $C2EF,3 dX=0
C $C2F2,4 dY=0
c $C2F6 Routine at C2F6
D $C2F6 Used by the routine at #R$C2B7.
R $C2F6 Identical to Knight Lore
@ $C2F6 label=calc_plyr_dXY
c $C312 Routine at C312
D $C312 Used by the routines at #R$C02C and #R$C36D.
@ $C312 label=loc_C312
c $C319 Routine at C319
D $C319 Used by the routines at #R$C16A, #R$C176, #R$C17D, #R$C186, #R$C1B2 and #R$C312.
R $C319 Different to Knight Lore
@ $C319 label=get_sprite_dir
b $C32F Data block at C32F
@ $C32F label=off_C32F
W $C32F,2,2 dX -= 3
W $C331,2,2 dX += 3
W $C333,2,2 dY += 3
W $C335,2,2 dY -= 3
c $C337 Identical to Knight Lore
@ $C337 label=move_plyr_W
C $C33A,2 'ý'
c $C33C Routine at C33C
D $C33C Used by the routine at #R$C340.
@ $C33C label=loc_C33C
c $C340 Identical to Knight Lore
@ $C340 label=move_plyr_E
c $C347 Identical to Knight Lore
@ $C347 label=move_plyr_N
c $C34C Routine at C34C
D $C34C Used by the routine at #R$C350.
@ $C34C label=loc_C34C
c $C350 Identical to Knight Lore
@ $C350 label=move_plyr_S
C $C353,4 'ý'
c $C357 Routine at C357
D $C357 Used by the routine at #R$C442.
@ $C357 label=adj_dZ_for_out_of_bounds
c $C35B Routine at C35B
@ $C35B label=loc_C35B
c $C36D Routine at C36D
D $C36D Used by the routine at #R$C2C8.
R $C36D Identical to Knight Lore
@ $C36D label=handle_exit_screen
C $C370,22 'ð'
c $C386 Routine at C386
D $C386 Used by the routines at #R$C35B, #R$C4D6, #R$C525, #R$C599, #R$C602 and #R$C62C.
R $C386 Identical to Knight Lore
@ $C386 label=adj_d_for_out_of_bounds
c $C38D Routine at C38D
D $C38D Used by the routine at #R$C386.
@ $C38D label=loc_C38D
b $C38F Data block at C38F
@ $C38F label=screen_move_tbl
W $C38F,8,2
c $C397 Identical to Knight Lore
@ $C397 label=screen_west
c $C3B0 Identical to Knight Lore
D $C3B0 Used by the routine at #R$C3F0.
@ $C3B0 label=screen_e_w
C $C3B4,3 'ð'
c $C3B7 Identical to Knight Lore (except sparkle sprite)
D $C3B7 Used by the routines at #R$C40B and #R$C426.
@ $C3B7 label=exit_screen
C $C3BD,10 '@'
C $C3C7,30 '@'
C $C3E5,11 '8'          ; sparkles
c $C3F0 Identical to Knight Lore
@ $C3F0 label=screen_east
c $C40B Identical to Knight Lore
@ $C40B label=screen_north
c $C426 Identical to Knight Lore
@ $C426 label=screen_south
c $C442 Routine at C442
D $C442 Used by the routines at #R$BFB6 and #R$C2C8.
R $C442 Identical to Knight Lore
@ $C442 label=adj_for_out_of_bounds
C $C44E,25 'ø'
c $C467 Routine at C467
D $C467 Used by the routine at #R$C442.
@ $C467 label=dZ_ok
c $C478 Routine at C478
D $C478 Used by the routine at #R$C467.
@ $C478 label=loc_C478
c $C489 Routine at C489
D $C489 Used by the routine at #R$C478.
@ $C489 label=loc_C489
c $C497 Routine at C497
D $C497 Used by the routine at #R$C467.
@ $C497 label=adj_dX_for_obj_intersect
c $C49D Routine at C49D
D $C49D Used by the routine at #R$C4DE.
@ $C49D label=loc_C49D
c $C4AC Routine at C4AC
D $C4AC Used by the routine at #R$C4D6.
@ $C4AC label=loc_C4AC
C $C4B9,9 '@'
C $C4C2,20 '@'
c $C4D6 Routine at C4D6
D $C4D6 Used by the routine at #R$C4AC.
@ $C4D6 label=loc_C4D6
c $C4DE Routine at C4DE
D $C4DE Used by the routines at #R$C49D and #R$C4AC.
@ $C4DE label=loc_C4DE
c $C4E6 Routine at C4E6
D $C4E6 Used by the routine at #R$C478.
@ $C4E6 label=adj_dY_for_obj_intersect
c $C4EC Routine at C4EC
D $C4EC Used by the routine at #R$C52D.
@ $C4EC label=loc_C4EC
c $C4FB Routine at C4FB
D $C4FB Used by the routine at #R$C525.
@ $C4FB label=loc_C4FB
C $C508,9 '@'
C $C511,20 '@'
c $C525 Routine at C525
D $C525 Used by the routine at #R$C4FB.
@ $C525 label=loc_C525
c $C52D Routine at C52D
D $C52D Used by the routines at #R$C4EC and #R$C4FB.
@ $C52D label=loc_C52D
c $C535 Routine at C535
D $C535 Used by the routine at #R$C442.
@ $C535 label=adj_dZ_for_obj_intersect
c $C53B Routine at C53B
D $C53B Used by the routine at #R$C5A1.
@ $C53B label=loc_C53B
c $C54A Routine at C54A
D $C54A Used by the routine at #R$C599.
@ $C54A label=loc_C54A
C $C557,9 '@'
C $C560,19 '@'
C $C573,8 ' '
c $C57B Routine at C57B
D $C57B Used by the routine at #R$C54A.
@ $C57B label=loc_C57B
c $C58D Routine at C58D
D $C58D Used by the routine at #R$C57B.
@ $C58D label=loc_C58D
c $C599 Routine at C599
D $C599 Used by the routines at #R$C54A and #R$C58D.
@ $C599 label=loc_C599
c $C5A1 Routine at C5A1
D $C5A1 Used by the routines at #R$C53B and #R$C54A.
@ $C5A1 label=loc_C5A1
c $C5A9 Routine at C5A9
D $C5A9 Used by the routines at #R$B725, #R$BEAF, #R$C4AC, #R$C4EC and #R$C53B.
R $C5A9 identical to Knight Lore
@ $C5A9 label=do_objs_intersect_on_x
c $C5BC Routine at C5BC
D $C5BC Used by the routine at #R$C5A9.
@ $C5BC label=loc_C5BC
c $C5BE Routine at C5BE
D $C5BE Used by the routines at #R$B725, #R$BEAF, #R$C49D, #R$C4FB and #R$C53B.
@ $C5BE label=do_objs_intersect_on_y
c $C5D1 Routine at C5D1
D $C5D1 Used by the routine at #R$C5BE.
@ $C5D1 label=loc_C5D1
c $C5D3 Routine at C5D3
D $C5D3 Used by the routines at #R$B725, #R$BEAF, #R$C49D, #R$C4EC and #R$C54A.
@ $C5D3 label=do_objs_intersect_on_z
c $C5E2 Routine at C5E2
D $C5E2 Used by the routine at #R$C5E4.
@ $C5E2 label=loc_C5E2
c $C5E4 Routine at C5E4
D $C5E4 Used by the routine at #R$C5D3.
@ $C5E4 label=loc_C5E4
c $C5E9 Routine at C5E9
D $C5E9 Used by the routine at #R$C467.
@ $C5E9 label=adj_dX_for_out_of_bounds
C $C5EC,12 'ð'
c $C5F8 Routine at C5F8
D $C5F8 Used by the routine at #R$C602.
@ $C5F8 label=loc_C5F8
c $C602 Routine at C602
D $C602 Used by the routine at #R$C5F8.
@ $C602 label=loc_C602
c $C613 Routine at C613
D $C613 Used by the routine at #R$C478.
@ $C613 label=adj_dY_for_out_of_bounds
C $C616,12 'ð'
c $C622 Routine at C622
D $C622 Used by the routine at #R$C62C.
@ $C622 label=loc_C622
C $C626,6 '€'
c $C62C Routine at C62C
D $C62C Used by the routine at #R$C622.
@ $C62C label=loc_C62C
c $C63D Routine at C63D
D $C63D Used by the routine at #R$C657.
@ $C63D label=calc_2d_info
C $C643,3 pixel X
C $C646,2 bit offset
C $C648,1 ptr sprite data
C $C649,1 ptr height
c $C64D Routine at C64D
D $C64D Used by the routine at #R$C63D.
@ $C64D label=loc_C64D
C $C64F,4 sprite data width (bytes)
C $C653,4 sprite data height (lines)
c $C657 Routine at C657
D $C657 Used by the routines at #R$BFAB and #R$C6F4.
@ $C657 label=set_draw_objs_overlapped
C $C65E,2 max objects
C $C660,22 pixel X
c $C676 Routine at C676
D $C676 Used by the routine at #R$C657.
@ $C676 label=loc_C676
c $C684 Routine at C684
D $C684 Used by the routine at #R$C676.
@ $C684 label=loc_C684
c $C691 Routine at C691
D $C691 Used by the routine at #R$C684.
@ $C691 label=loc_C691
c $C6A3 Routine at C6A3
D $C6A3 Used by the routine at #R$C691.
@ $C6A3 label=loc_C6A3
c $C6A5 Routine at C6A5
D $C6A5 Used by the routine at #R$C6CC.
@ $C6A5 label=loc_C6A5
c $C6BD Routine at C6BD
D $C6BD Used by the routine at #R$C6D6.
@ $C6BD label=loc_C6BD
c $C6C6 Routine at C6C6
D $C6C6 Used by the routine at #R$C6DD.
@ $C6C6 label=loc_C6C6
c $C6CC Routine at C6CC
D $C6CC Used by the routines at #R$C6A5, #R$C6BD and #R$C6C6.
@ $C6CC label=loc_C6CC
c $C6D6 Routine at C6D6
D $C6D6 Used by the routine at #R$C6A5.
@ $C6D6 label=loc_C6D6
c $C6DD Routine at C6DD
D $C6DD Used by the routine at #R$C6BD.
@ $C6DD label=loc_C6DD
c $C6E4 Routine at C6E4
@ $C6E4 label=upd_20_to_2B
c $C6F4 Routine at C6F4
D $C6F4 Used by the routine at #R$C6E4.
@ $C6F4 label=loc_C6F4
c $C71C Routine at C71C
D $C71C Used by the routine at #R$A6DC.
@ $C71C label=list_objects_to_draw
C $C71E,14 max objects
c $C72C Routine at C72C
D $C72C Used by the routine at #R$C73A.
@ $C72C label=loc_C72C
c $C73A Routine at C73A
D $C73A Used by the routine at #R$C72C.
@ $C73A label=loc_C73A
b $C745 Data block at C745
@ $C745 label=objects_to_draw
B $C745,72,27*2,18
c $C78D Routine at C78D
D $C78D Used by the routines at #R$C89B and #R$C8D8.
@ $C78D label=calc_display_order_and_render
c $C790 Routine at C790
@ $C790 label=loc_C790
c $C7A5 Routine at C7A5
D $C7A5 Used by the routines at #R$C869, #R$C86C, #R$C882, #R$C8AB and #R$C8D2.
@ $C7A5 label=loc_C7A5
c $C7DF Routine at C7DF
D $C7DF Used by the routine at #R$C7A5.
@ $C7DF label=loc_C7DF
c $C7E0 Routine at C7E0
D $C7E0 Used by the routine at #R$C7A5.
@ $C7E0 label=loc_C7E0
c $C803 Routine at C803
D $C803 Used by the routine at #R$C7E0.
@ $C803 label=loc_C803
c $C806 Routine at C806
D $C806 Used by the routine at #R$C7E0.
@ $C806 label=loc_C806
c $C829 Routine at C829
D $C829 Used by the routine at #R$C806.
@ $C829 label=loc_C829
c $C82C Routine at C82C
D $C82C Used by the routine at #R$C806.
@ $C82C label=loc_C82C
b $C833 Data block at C833
@ $C833 label=off_C833
W $C833,54,2
c $C869 Routine at C869
@ $C869 label=continue_1
c $C86C Routine at C86C
@ $C86C label=continue_2
c $C86F Routine at C86F
@ $C86F label=d_3467121516
c $C877 Routine at C877
@ $C877 label=loc_C877
c $C882 Routine at C882
D $C882 Used by the routine at #R$C877.
@ $C882 label=loc_C882
c $C898 Routine at C898
D $C898 Used by the routine at #R$C877.
@ $C898 label=loc_C898
c $C89B Routine at C89B
@ $C89B label=loc_C89B
c $C8AB Routine at C8AB
@ $C8AB label=objs_coincide
C $C8B9,6 '`'
C $C8BF,6 '@'
c $C8C5 Routine at C8C5
D $C8C5 Used by the routine at #R$C8AB.
@ $C8C5 label=loc_C8C5
C $C8C8,6 '`'
C $C8CE,4 '@'
c $C8D2 Routine at C8D2
D $C8D2 Used by the routines at #R$C8AB and #R$C8C5.
@ $C8D2 label=loc_C8D2
c $C8D5 Routine at C8D5
D $C8D5 Used by the routine at #R$C7A5.
@ $C8D5 label=loc_C8D5
c $C8D8 Routine at C8D8
D $C8D8 Used by the routine at #R$C89B.
@ $C8D8 label=loc_C8D8
c $C8EA Routine at C8EA
D $C8EA Used by the routine at #R$C790.
@ $C8EA label=loc_C8EA
b $C8EF Data block at C8EF
@ $C8EF label=render_list
B $C8EF,16,1
c $C8FF Routine at C8FF
D $C8FF Used by the routines at #R$C0CE and #R$C1E2.
@ $C8FF label=check_user_input
c $C91B Routine at C91B
@ $C91B label=interfaceii
C $C91B,8 '÷'
c $C923 Routine at C923
@ $C923 label=loc_C923
C $C92B,14 'ï'
c $C939 Routine at C939
D $C939 Used by the routine at #R$C923.
@ $C939 label=loc_C939
c $C93F Routine at C93F
D $C93F Used by the routine at #R$C939.
@ $C93F label=loc_C93F
c $C945 Routine at C945
D $C945 Used by the routine at #R$C93F.
@ $C945 label=loc_C945
c $C94B Routine at C94B
D $C94B Used by the routine at #R$C945.
@ $C94B label=loc_C94B
c $C951 Routine at C951
D $C951 Used by the routine at #R$C94B.
@ $C951 label=loc_C951
c $C954 Routine at C954
D $C954 Used by the routine at #R$C8FF.
@ $C954 label=kempston
c $C95E Routine at C95E
D $C95E Used by the routine at #R$C954.
@ $C95E label=loc_C95E
c $C964 Routine at C964
D $C964 Used by the routine at #R$C95E.
@ $C964 label=loc_C964
c $C96A Routine at C96A
D $C96A Used by the routine at #R$C964.
@ $C96A label=loc_C96A
c $C970 Routine at C970
D $C970 Used by the routine at #R$C96A.
@ $C970 label=loc_C970
c $C976 Routine at C976
D $C976 Used by the routine at #R$C970.
@ $C976 label=loc_C976
c $C979 Routine at C979
D $C979 Used by the routine at #R$C8FF.
@ $C979 label=cursor
C $C97B,11 '÷'
c $C986 Routine at C986
D $C986 Used by the routine at #R$C979.
@ $C986 label=loc_C986
C $C986,11 'ï'
c $C991 Routine at C991
D $C991 Used by the routine at #R$C986.
@ $C991 label=loc_C991
c $C997 Routine at C997
D $C997 Used by the routine at #R$C991.
@ $C997 label=loc_C997
c $C99D Routine at C99D
D $C99D Used by the routine at #R$C997.
@ $C99D label=loc_C99D
c $C9A5 Routine at C9A5
D $C9A5 Used by the routine at #R$C8FF.
@ $C9A5 label=keyboard
C $C9A5,17 'þ'
C $C9B6,11 ''
c $C9C1 Routine at C9C1
D $C9C1 Used by the routine at #R$C9A5.
@ $C9C1 label=loc_C9C1
c $C9C7 Routine at C9C7
D $C9C7 Used by the routine at #R$C9C1.
@ $C9C7 label=loc_C9C7
c $C9CD Routine at C9CD
D $C9CD Used by the routine at #R$C9C7.
@ $C9CD label=loc_C9CD
c $C9D3 Routine at C9D3
D $C9D3 Used by the routine at #R$C9CD.
@ $C9D3 label=loc_C9D3
C $C9D3,9 '½'
c $C9DC Routine at C9DC
D $C9DC Used by the routine at #R$C9D3.
@ $C9DC label=loc_C9DC
C $C9DC,9 'Û'
c $C9E5 Routine at C9E5
D $C9E5 Used by the routine at #R$C9DC.
@ $C9E5 label=loc_C9E5
C $C9E5,9 'ç'
c $C9EE Routine at C9EE
D $C9EE Used by the routines at #R$C8FF, #R$C951, #R$C976, #R$C99D and #R$C9E5.
@ $C9EE label=finished_input
C $C9EE,9 '~'
C $C9F7,11 '™'
c $CA02 Routine at CA02
D $CA02 Used by the routine at #R$C9EE.
@ $CA02 label=loc_CA02
c $CA07 Routine at CA07
D $CA07 Used by the routine at #R$A688.
@ $CA07 label=lose_life
b $CA1D Data block at CA1D
@ $CA1D label=plyr_spr_1_scratchpad
B $CA1D,8,8
b $CA25 Data block at CA25
@ $CA25 label=start_loc_1
B $CA25,4,4
b $CA29 Data block at CA29
@ $CA29 label=flags12_1
B $CA29,4,4
b $CA2D Data block at CA2D
@ $CA2D label=byte_CA2D
B $CA2D,16,16
b $CA3D Data block at CA3D
@ $CA3D label=plyr_spr_2_scratchpad
B $CA3D,8,8
b $CA45 Data block at CA45
@ $CA45 label=start_loc_2
B $CA45,8,8
b $CA4D Data block at CA4D
@ $CA4D label=byte_CA4D
B $CA4D,16,16
b $CA5D Data block at CA5D
@ $CA5D label=plyr_spr_init_data
B $CA5D,16,16
c $CA6D Routine at CA6D
D $CA6D Used by the routine at #R$A650.
@ $CA6D label=init_start_location
b $CA9E Data block at CA9E
@ $CA9E label=start_locations
B $CA9E,4,4
c $CAA2 Routine at CAA2
D $CAA2 Used by the routine at #R$A68B.
@ $CAA2 label=build_screen_objects
c $CAAB Routine at CAAB
D $CAAB Used by the routine at #R$CAA2.
@ $CAAB label=loc_CAAB
c $CAD2 Routine at CAD2
D $CAD2 Used by the routine at #R$A650.
@ $CAD2 label=set_room_attrs
C $CAD5,4 end of location table
c $CAD9 Routine at CAD9
@ $CAD9 label=loc_CAD9
C $CAD9,1 #bytes in entry
C $CADB,1 size and attributes
C $CADF,3 attr2
C $CAE2,1 size and attributes
C $CAE3,2 'ø'             ; mask off attr1
C $CAE5,1 set attr1=attr2
C $CAE6,1 store
C $CAE9,1 next entry
C $CAEB,2 done?
C $CAED,1 yes, return
C $CAEF,2 loop
c $CAF1 Routine at CAF1
D $CAF1 Used by the routines at #R$CB06, #R$CB0F and #R$CB8A.
@ $CAF1 label=transfer_sprite
c $CB06 Routine at CB06
D $CB06 Used by the routines at #R$CB0F and #R$CB8A.
@ $CB06 label=transfer_sprite_and_print
c $CB0F Routine at CB0F
D $CB0F Used by the routine at #R$A715.
@ $CB0F label=display_panel
b $CB5A Data block at CB5A
@ $CB5A label=panel_data
B $CB5A,48,4
c $CB8A Routine at CB8A
D $CB8A Used by the routines at #R$B76B, #R$B7AE and #R$BC31.
@ $CB8A label=print_border
b $CBC3 Data block at CBC3
@ $CBC3 label=border_data
B $CBC3,32,4
c $CBE3 Routine at CBE3
@ $CBE3 label=colour_panel
C $CBF6,11 'B'
c $CC01 Routine at CC01
D $CC01 Used by the routine at #R$CAAB.
@ $CC01 label=adjust_plyr_xyz_for_room_size
c $CC20 Routine at CC20
D $CC20 Used by the routine at #R$CC01.
@ $CC20 label=loc_CC20
C $CC20,5 'È'
C $CC25,6 '€'
c $CC2B Routine at CC2B
D $CC2B Used by the routine at #R$CC43.
@ $CC2B label=loc_CC2B
c $CC2E Routine at CC2E
D $CC2E Used by the routine at #R$CC5B.
@ $CC2E label=loc_CC2E
c $CC43 Routine at CC43
D $CC43 Used by the routine at #R$CC01.
@ $CC43 label=loc_CC43
C $CC43,6 'R'
C $CC49,7 '€'
c $CC50 Routine at CC50
D $CC50 Used by the routine at #R$CC01.
@ $CC50 label=loc_CC50
C $CC50,5 '®'
C $CC55,6 '€'
c $CC5B Routine at CC5B
D $CC5B Used by the routine at #R$CC60.
@ $CC5B label=loc_CC5B
c $CC60 Routine at CC60
D $CC60 Used by the routine at #R$CC01.
@ $CC60 label=loc_CC60
C $CC60,6 '8'
C $CC66,7 '€'
c $CC6D Routine at CC6D
D $CC6D Used by the routines at #R$CC20, #R$CC43, #R$CC50 and #R$CC60.
@ $CC6D label=adjust_plyr_Z_for_arch
C $CC71,5 '@'
c $CC76 Routine at CC76
@ $CC76 label=loc_CC76
c $CC8A Routine at CC8A
D $CC8A Used by the routine at #R$CC76.
@ $CC8A label=loc_CC8A
c $CC96 Routine at CC96
D $CC96 Used by the routines at #R$C790, #R$C7A5 and #R$CEBE.
@ $CC96 label=get_ptr_object
C $CC97,16 ''
c $CCA7 Routine at CCA7
D $CCA7 Used by the routine at #R$CAAB.
@ $CCA7 label=retrieve_screen
c $CCBD Routine at CCBD
@ $CCBD label=find_screen
c $CCD0 Routine at CCD0
D $CCD0 Used by the routines at #R$CCBD, #R$CD20 and #R$CDE8.
@ $CCD0 label=zero_end_of_graphic_objs_tbl
c $CCDE Routine at CCDE
D $CCDE Used by the routine at #R$CCBD.
@ $CCDE label=found_screen
c $CD0C Routine at CD0C
D $CD0C Used by the routine at #R$CD20.
@ $CD0C label=next_bg_obj
c $CD20 Routine at CD20
@ $CD20 label=next_bg_obj_sprite
c $CD3A Routine at CD3A
D $CD3A Used by the routine at #R$CD0C.
@ $CD3A label=find_fg_objs
c $CD40 Routine at CD40
D $CD40 Used by the routines at #R$CDCA and #R$CDFB.
@ $CD40 label=next_fg_obj
C $CD4D,5 '>'
C $CD52,15 '>'
c $CD61 Routine at CD61
D $CD61 Used by the routine at #R$CDCA.
@ $CD61 label=next_fg_obj_in_count
c $CD62 Routine at CD62
D $CD62 Used by the routine at #R$CDCA.
@ $CD62 label=next_fg_obj_sprite
C $CD8F,3 'p'
C $CD92,15 'H'
C $CDA1,3 'p'
C $CDA4,20 'H'
C $CDB8,18 'ü'
c $CDCA Routine at CDCA
@ $CDCA label=loc_CDCA
c $CDE8 Routine at CDE8
D $CDE8 Used by the routine at #R$CDCA.
@ $CDE8 label=loc_CDE8
c $CDF0 Routine at CDF0
D $CDF0 Used by the routine at #R$CD40.
@ $CDF0 label=loc_CDF0
C $CDF3,8 '@'
c $CDFB Routine at CDFB
D $CDFB Used by the routine at #R$CE00.
@ $CDFB label=loc_CDFB
c $CE00 Routine at CE00
D $CE00 Used by the routine at #R$CD40.
@ $CE00 label=loc_CE00
c $CE06 Routine at CE06
D $CE06 Used by the routines at #R$A7B9, #R$AA15, #R$AC96, #R$ACD6, #R$ADB0, #R$B0E7, #R$B4C5, #R$B690, #R$C1BD, #R$CCBD, #R$CCDE, #R$CD40, #R$CDF0, #R$D174 and #R$D19C.
@ $CE06 label=add_HL_A
c $CE0D Routine at CE0D
D $CE0D Used by the routine at #R$D174.
@ $CE0D label=HL_equals_DE_x_A
c $CE13 Routine at CE13
D $CE13 Used by the routine at #R$CE18.
@ $CE13 label=loc_CE13
c $CE18 Routine at CE18
D $CE18 Used by the routine at #R$CE13.
@ $CE18 label=loc_CE18
c $CE1C Routine at CE1C
D $CE1C Used by the routines at #R$AC6B, #R$AEA4, #R$AEF7, #R$BE60, #R$CCD0 and #R$CD20.
@ $CE1C label=zero_DE
c $CE1D Routine at CE1D
D $CE1D Used by the routine at #R$A749.
@ $CE1D label=fill_DE
c $CE22 Routine at CE22
D $CE22 Used by the routine at #R$A72E.
@ $CE22 label=audio_CE22
C $CE22,11 '~'
c $CE2D Routine at CE2D
@ $CE2D label=loc_CE2D
C $CE2D,12 '~'
c $CE39 Routine at CE39
@ $CE39 label=loc_CE39
C $CE39,9 '~'
c $CE42 Routine at CE42
@ $CE42 label=loc_CE42
C $CE42,12 '~'
c $CE4E Routine at CE4E
D $CE4E Used by the routine at #R$B7AE.
@ $CE4E label=clr_graphic_objs_tbl
c $CE56 Routine at CE56
D $CE56 Used by the routines at #R$A631, #R$A647, #R$CE4E and #R$CE60.
@ $CE56 label=clr_mem
c $CE58 Routine at CE58
D $CE58 Used by the routines at #R$CE6A and #R$CE7B.
@ $CE58 label=fill_mem
c $CE60 clear_scrn
D $CE60 Used by the routine at #R$CE73.
@ $CE60 label=loc_CE60
c $CE68 Routine at CE68
D $CE68 Used by the routines at #R$B7AE and #R$CE73.
@ $CE68 label=clr_attr
C $CE68,2 'B'
c $CE6A Routine at CE6A
D $CE6A Used by the routine at #R$A749.
@ $CE6A label=fill_attr
c $CE73 Routine at CE73
D $CE73 Used by the routines at #R$A650, #R$B76B and #R$B8A9.
R $CE73 FUNCTION CHUNK AT RAM:CE60 SIZE 00000008 BYTES
@ $CE73 label=clear_scrn
c $CE7B Routine at CE7B
D $CE7B Used by the routines at #R$B76B, #R$B7AE, #R$B8A9, #R$BA87 and #R$CAAB.
@ $CE7B label=clear_scrn_buffer
c $CE85 Routine at CE85
D $CE85 Used by the routines at #R$A724, #R$B76B, #R$B7AE and #R$BC31.
@ $CE85 label=update_screen
c $CE8E Routine at CE8E
D $CE8E Used by the routine at #R$CEA6.
@ $CE8E label=loc_CE8E
C $CE9D,9 ' '
c $CEA6 Routine at CEA6
D $CEA6 Used by the routine at #R$CE8E.
@ $CEA6 label=loc_CEA6
c $CEAB Routine at CEAB
D $CEAB Used by the routine at #R$A6DC.
@ $CEAB label=render_dynamic_objects
c $CEBE Routine at CEBE
D $CEBE Used by the routines at #R$CF28 and #R$CF38.
@ $CEBE label=wipe_next_object
c $CEE7 Routine at CEE7
D $CEE7 Used by the routine at #R$CF55.
@ $CEE7 label=loc_CEE7
c $CF02 Routine at CF02
D $CF02 Used by the routine at #R$CEE7.
@ $CF02 label=loc_CF02
c $CF17 Routine at CF17
D $CF17 Used by the routine at #R$CF5A.
@ $CF17 label=loc_CF17
c $CF28 Routine at CF28
D $CF28 Used by the routine at #R$CF17.
@ $CF28 label=loc_CF28
C $CF2B,5 'À'
C $CF30,8 'À'
c $CF38 Routine at CF38
D $CF38 Used by the routine at #R$CF28.
@ $CF38 label=loc_CF38
c $CF55 Routine at CF55
D $CF55 Used by the routine at #R$CEBE.
@ $CF55 label=loc_CF55
c $CF5A Routine at CF5A
D $CF5A Used by the routine at #R$CF02.
@ $CF5A label=loc_CF5A
c $CF5F Routine at CF5F
D $CF5F Used by the routines at #R$CEAB and #R$CEBE.
@ $CF5F label=loc_CF5F
c $CF6F Routine at CF6F
@ $CF6F label=loc_CF6F
c $CF82 Routine at CF82
D $CF82 Used by the routine at #R$CF6F.
@ $CF82 label=loc_CF82
c $CF85 Routine at CF85
D $CF85 Used by the routines at #R$AD8B, #R$BCF2, #R$BF2F, #R$CF6F and #R$CFA3.
@ $CF85 label=blit_to_screen
C $CF8D,13 ' '
C $CF9A,9 ' '
c $CFA3 Routine at CFA3
D $CFA3 Used by the routine at #R$CF85.
@ $CFA3 label=loc_CFA3
c $CFA7 Routine at CFA7
D $CFA7 Used by the routine at #R$A650.
@ $CFA7 label=build_lookup_tbls
c $CFA9 Routine at CFA9
D $CFA9 Used by the routine at #R$CFB0.
@ $CFA9 label=loc_CFA9
c $CFB0 Routine at CFB0
@ $CFB0 label=loc_CFB0
c $CFC4 Routine at CFC4
D $CFC4 Used by the routine at #R$CFC7.
@ $CFC4 label=loc_CFC4
c $CFC7 Routine at CFC7
@ $CFC7 label=loc_CFC7
c $CFD2 Routine at CFD2
D $CFD2 Used by the routines at #R$AE8A, #R$C63D and #R$D01F.
R $CFD2 Identical to Knight Lore with prelude (up to ret NZ) and sub 104->40
@ $CFD2 label=calc_pixel_XY
C $CFD8,3 X
C $CFDB,5 add Y
C $CFE0,3 add pixel_x_adj
C $CFE3,3 pixel X
C $CFE6,3 Y
C $CFE9,7 subtract X
C $CFF0,5 add Z
C $CFF5,3 add pixel_y_adj
C $CFF8,3 pixel Y
C $CFFB,3 bottom line of screen?
c $CFFE Routine at CFFE
D $CFFE Used by the routines at #R$C63D and #R$D027.
@ $CFFE label=flip_sprite
c $D013 Routine at D013
D $D013 Used by the routine at #R$C8D8.
@ $D013 label=loc_D013
c $D01F Routine at D01F
D $D01F Used by the routine at #R$D013.
@ $D01F label=loc_D01F
c $D027 Routine at D027
D $D027 Used by the routines at #R$BC56, #R$BCB6 and #R$CB06.
@ $D027 label=print_sprite
C $D034,21 'ð'
C $D049,2 'P'
c $D04B Routine at D04B
D $D04B Used by the routine at #R$D07E.
@ $D04B label=loc_D04B
C $D050,13 '"'
C $D05D,12 'À'
c $D069 Routine at D069
D $D069 Used by the routine at #R$D04B.
@ $D069 label=loc_D069
c $D07E Routine at D07E
D $D07E Used by the routine at #R$D027.
@ $D07E label=loc_D07E
c $D08F Routine at D08F
c $D09F This entry point is used by the routine at #R$D0BB.
D $D09F Used by the routine at #R$D0BB.
c $D0B9 Routine at D0B9
D $D0B9 Used by the routines at #R$D069 and #R$D10F.
@ $D0B9 label=loc_D0B9
c $D0BB Routine at D0BB
@ $D0BB label=loc_D0BB
c $D10E Routine at D10E
D $D10E Used by the routine at #R$D07E.
@ $D10E label=loc_D10E
c $D10F Routine at D10F
@ $D10F label=loc_D10F
c $D120 Routine at D120
D $D120 Used by the routines at #R$AD8B, #R$BB9D, #R$BBB1, #R$BCB6, #R$BCF2, #R$BF2F, #R$CF38 and #R$D069.
@ $D120 label=calc_screen_buffer_addr
c $D135 Routine at D135
D $D135 Used by the routines at #R$AD8B, #R$BCF2, #R$BF2F and #R$CF38.
@ $D135 label=BC_to_Attr_In_DE
C $D145,14 'à'
C $D153,4 '8'
c $D157 Routine at D157
D $D157 Used by the routines at #R$AC34, #R$BBC2 and #R$BCF2.
@ $D157 label=calc_attrib_addr
c $D174 flip_sprite
D $D174 Used by the routine at #R$CFFE.
@ $D174 label=vflip_sprite_data
C $D179,5 '€'
C $D17E,4 '€'
C $D182,25 '~'
c $D19B Routine at D19B
D $D19B Used by the routine at #R$D19C.
@ $D19B label=loc_D19B
c $D19C Routine at D19C
@ $D19C label=vflip_sprite_line_pair
c $D1AF Routine at D1AF
D $D1AF Used by the routine at #R$D174.
@ $D1AF label=loc_D1AF
C $D1B5,5 '@'
C $D1BA,15 '@'
C $D1C9,3 'ñ'
c $D1CC Routine at D1CC
D $D1CC Used by the routine at #R$D1DA.
@ $D1CC label=loc_D1CC
c $D1DA Routine at D1DA
@ $D1DA label=loc_D1DA
c $D1E9 Routine at D1E9
D $D1E9 Used by the routines at #R$D1AF and #R$D1DA.
@ $D1E9 label=loc_D1E9
i $D1EB
