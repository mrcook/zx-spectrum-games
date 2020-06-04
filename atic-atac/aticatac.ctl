> $5e00 ; Atic Atac for Sinclair ZX Spectrum
> $5e00 ; (c) 1983 Ashby Computers and Graphics Ltd.
> $5e00 ;
> $5e00 ; Disassembled by obo
> $5e00 ;
> $5e00 ; Differences from original release:
> $5e00 ; 6009: C0->00 - disable protection check on FRAMES sysvar after loading
> $5e00 ; 7E91: B0->05 - new LSB of JP (HL) instruction (below)
> $5e00 ; 7E92: 5C->D5 - new MSB of JP (HL) instruction
> $5e00 ; 971F: D4->D3 - fixed typo in congratulations message
> $5e00 ; D505: 00->E9 - JP (HL) instruction moved from printer buffer
> $5e00
> $5e00 @equ=display=$4000
> $5e00 @equ=attrs=$5800
> $5e00 @equ=sysvar_FRAMES=$5c78
> $5e00
> $5e00 @org
b $5e00 Data block at 5e00
@ $5e00 label=menu_selection
B $5e00,1,1
@ $5e01 label=charset_addr
W $5e01,2,2
@ $5e03 label=last_FRAMES
B $5e03,1,1
@ $5e04 label=in_handlers
B $5e04,1,1 flag set but never read
@ $5e05 label=rand8
W $5e05,2,2 only low 8 bits are meaningfully random
S $5e07,9,$09
@ $5e10 label=width_bytes
@ $5e11 label=height_lines
@ $5e12 label=counter_low
@ $5e13 label=counter_high
B $5e10,4,1
@ $5e14 label=game_flags
B $5e14,1,1 b0 set if room content drawn
@ $5e15 label=saved_graphic
@ $5e16 label=saved_x
@ $5e17 label=saved_y
@ $5e18 label=some_height
@ $5e19 label=some_width
@ $5e1a label=room_attr
B $5e15,6,1
@ $5e1b label=room_ptr
W $5e1b,2,2
@ $5e1d label=room_width
@ $5e1e label=room_height
@ $5e1f label=pickup_flags
@ $5e20 label=pickup_pressed
@ $5e21 label=lives
@ $5e22 label=text_attr
@ $5e23 label=line_counter
@ $5e24 label=line_flags
B $5e1d,8,1
@ $5e25 label=num_creatures
B $5e25,1,1 number of creatures processed this frame
@ $5e26 label=last_creat_room
@ $5e27 label=creature_delay
@ $5e28 label=player_energy
B $5e26,3,1
@ $5e29 label=chicken_level
B $5e29,1,1 last drawn chicken level
@ $5e2a label=score_bcd
@ $5e2d label=in_doorway
@ $5e2e label=door_timer
@ $5e2f label=walk_counter
@ $5e30 label=inventory1
@ $5e34 label=inventory2
@ $5e38 label=inventory3
B $5e2a,18,3,1*3,4
@ $5e3c label=flash_timer
B $5e3c,1,1 score flash timer
@ $5e3d label=clock_hours
@ $5e3e label=clock_minutes
@ $5e3f label=clock_seconds
B $5e3d,3,1
@ $5e40 label=visited_rooms
B $5e40,20,10 visit rooms bit array
b $5e54 Data block at 5e54
@ $5e54 label=visited_percent
B $5e54,1,1
@ $5e55 label=food_ptr
W $5e55,2,2
i $5e57
c $6000 Routine at 6000
@ $6000 label=start
C $6007,2 is frames MSB as expected?
@ $6009 ssub=nop ; disable protection check on FRAMES sysvar after loading
b $600d Initial game state data
@ $600d label=player_init
B $600d,8,8
b $6015 Data block at 6015
@ $6015 label=weapon_init
B $6015,8,8
b $601d Data block at 601d
@ $601d label=sound_init
B $601d,8,8
b $6025 Data block at 6025
@ $6025 label=acg_key_init
B $6025,24,8
b $603d green key
@ $603d label=green_key_init
B $603d,8,8
b $6045 red key
@ $6045 label=red_key_init
B $6045,8,8
b $604d cyan key
@ $604d label=cyan_key_init
B $604d,8,8
b $6055 yellow key
B $6055,8,8
b $605d Data block at 605d
B $605d,8,8 leaf
B $6065,8,8 tombstone1
B $606d,8,8 tombstone2
B $6075,8,8 tombstone3
B $607d,8,8 tombstone4
B $6085,8,8 crucafix
B $608d,8,8 spanner
B $6095,8,8 wine
B $609d,8,8 coin
B $60a5,8,8 wing
B $60ad,8,8 whip
B $60b5,8,8 frog's leg
B $60bd,8,8 jewel
B $60c5,8,8 money bag
B $60cd,8,8 skull
b $60d5 Data block at 60d5
@ $60d5 label=food_init
B $60d5,8,8 can
B $60dd,40,8
B $6105,8,8 candy
B $610d,40,8
B $6135,8,8 chop
B $613d,40,8
B $6165,8,8 lollipop
B $616d,40,8
B $6195,8,8 icecream
B $619d,40,8
B $61c5,8,8 pudding
B $61cd,40,8
B $61f5,8,8 apple
B $61fd,40,8
B $6225,8,8 bottle
B $622d,40,8
B $6255,8,8 can
B $625d,24,8
B $6275,8,8 candy
B $627d,24,8
B $6295,8,8 chop
B $629d,24,8
B $62b5,8,8 lollipop
B $62bd,24,8
B $62d5,8,8 icecream
B $62dd,24,8
B $62f5,8,8 pudding
B $62fd,24,8
B $6315,8,8 apple
B $631d,24,8
B $6335,8,8 bottle
B $633d,24,8
B $6355,8,8 mushroom
B $635d,120,8
b $63d5 Data block at 63d5
B $63d5,8,8 blank
b $63dd Data block at 63dd
B $63dd,16,16 creature 1
B $63ed,16,16 creature 2
B $63fd,16,16 creature 3
b $640d Data block at 640d
@ $640d label=byte_640D
B $640d,16,16 mummy
B $641d,16,16 dracula
B $642d,16,16 devil
B $643d,16,16 frankenstein
B $644d,16,16 hunchback
b $645d Key: _r/_g/_b/_y suffix for locked door colours, _s for stairs (one end is large doorway)
@ $645d label=door_07_00
@ $646d label=door_19_00
@ $647d label=door_01_00_c
@ $648d label=door_02_01
@ $649d label=door_03_02
@ $64ad label=door_04_03
@ $64bd label=door_19_04
@ $64cd label=door_05_04
@ $64dd label=door_06_05
@ $64ed label=door_1A_06_s
@ $64fd label=door_08_06_g
@ $650d label=door_07_06
@ $651d label=door_09_08
@ $652d label=door_0A_09
@ $653d label=door_0B_0A
@ $654d label=door_0C_0B
@ $655d label=door_0D_0C
@ $656d label=door_0E_0D
@ $657d label=door_0F_0E
@ $658d label=door_10_0F
@ $659d label=door_11_10_r
@ $65ad label=door_12_11
@ $65bd label=door_13_12
@ $65cd label=door_14_13
@ $65dd label=door_15_14
@ $65ed label=door_16_15
@ $65fd label=door_17_16_r
@ $660d label=door_18_17_g
@ $661d label=door_18_02
@ $662d label=door_1A_1B
@ $663d label=door_1B_1C_s
@ $664d label=door_1C_1D
@ $665d label=door_1E_1F
@ $666d label=door_1F_20
@ $667d label=door_20_21
@ $668d label=door_21_22
@ $669d label=door_22_23
@ $66ad label=door_23_24
@ $66bd label=door_24_25
@ $66cd label=door_25_1E_c
@ $66dd label=door_24_26_s
@ $66ed label=door_03_26
@ $66fd label=door_27_28
@ $670d label=door_28_29_c
@ $671d label=door_29_2A
@ $672d label=door_2A_2B
@ $673d label=door_2B_2C
@ $674d label=door_2C_2D
@ $675d label=door_2D_2E_g
@ $676d label=door_2E_27
@ $677d label=door_27_2F_s
@ $678d label=door_20_2F_y
@ $679d label=door_30_31
@ $67ad label=door_31_32
@ $67bd label=door_32_33
@ $67cd label=door_33_34
@ $67dd label=door_34_35
@ $67ed label=door_33_36
@ $67fd label=door_36_37
@ $680d label=door_37_38
@ $681d label=door_38_39
@ $682d label=door_38_3A_g
@ $683d label=door_39_3B
@ $684d label=door_3A_3B
@ $685d label=door_3B_3C_g
@ $686d label=door_3B_3D
@ $687d label=door_3C_3E
@ $688d label=door_3D_3E
@ $689d label=door_3D_3F_c
@ $68ad label=door_34_40
@ $68bd label=door_40_41
@ $68cd label=door_40_42
@ $68dd label=door_42_43
@ $68ed label=door_43_44
@ $68fd label=door_44_45_r
@ $690d label=door_43_46
@ $691d label=door_46_47
@ $692d label=door_47_48_r
@ $693d label=door_48_49
@ $694d label=door_48_4A_c
@ $695d label=door_4A_4B
@ $696d label=door_4B_4C
@ $697d label=door_48_4D
@ $698d label=door_4D_4E_r
@ $699d label=door_4E_4F
@ $69ad label=door_4F_50
@ $69bd label=door_50_51
@ $69cd label=door_50_52_g
@ $69dd label=door_52_53
@ $69ed label=door_1D_43
@ $69fd label=door_46_51
@ $6a0d label=door_4C_55
@ $6a1d label=door_54_55
@ $6a2d label=door_54_30
@ $6a3d label=door_2D_75
@ $6a4d label=door_75_76
@ $6a5d label=door_76_77
@ $6a6d label=door_77_78
@ $6a7d label=door_78_79
@ $6a8d label=door_79_7A
@ $6a9d label=door_7A_7B
@ $6aad label=door_7B_7C_y
@ $6abd label=door_7C_7D_y
@ $6acd label=door_7D_76
@ $6add label=door_7A_7E_r
@ $6aed label=door_7E_29
@ $6afd label=door_21_88
@ $6b0d label=door_7F_80_g
@ $6b1d label=door_80_82
@ $6b2d label=door_82_81
@ $6b3d label=door_81_7F
@ $6b4d label=door_82_87_c
@ $6b5d label=door_87_88
@ $6b6d label=door_87_8B
@ $6b7d label=door_8B_8C
@ $6b8d label=door_8C_8D_g
@ $6b9d label=door_83_84_r
@ $6bad label=door_84_86
@ $6bbd label=door_86_85
@ $6bcd label=door_85_83
@ $6bdd label=door_84_89_y
@ $6bed label=door_89_8D
@ $6bfd label=door_89_8A
@ $6c0d label=door_8A_23_g
@ $6c1d label=door_13_73
@ $6c2d label=door_11_6B
@ $6c3d label=door_6B_6C
@ $6c4d label=door_6C_03_c
@ $6c5d label=door_0F_6D_g
@ $6c6d label=door_6D_6E
@ $6c7d label=door_6E_05
@ $6c8d label=door_0D_6F_c
@ $6c9d label=door_6F_70
@ $6cad label=door_70_71_s
@ $6cbd label=door_71_72_s
@ $6ccd label=door_72_35
@ $6cdd label=door_30_74
@ $6ced label=door_56_57
@ $6cfd label=door_57_58_g
@ $6d0d label=door_58_59
@ $6d1d label=door_5A_5B
@ $6d2d label=door_5B_5C_r
@ $6d3d label=door_5C_5D_g
@ $6d4d label=door_5E_5F_r
@ $6d5d label=door_5F_60_r
@ $6d6d label=door_60_61
@ $6d7d label=door_62_63
@ $6d8d label=door_63_64
@ $6d9d label=door_64_65_y
@ $6dad label=door_56_5A
@ $6dbd label=door_5A_5E_c
@ $6dcd label=door_5E_62
@ $6ddd label=door_57_5B
@ $6ded label=door_5B_5F_g
@ $6dfd label=door_5F_63_c
@ $6e0d label=door_58_5C
@ $6e1d label=door_5C_60_r
@ $6e2d label=door_60_64_c
@ $6e3d label=door_59_5D_y
@ $6e4d label=door_5D_61
@ $6e5d label=door_61_65
@ $6e6d label=door_67_56_c
@ $6e7d label=door_68_59_r
@ $6e8d label=door_69_56_y
@ $6e9d label=door_6A_62_g
@ $6ead label=door_66_5B_y
@ $6ebd label=door_66_5C_y
@ $6ecd label=door_66_5F_y
@ $6edd label=door_66_60_y
@ $6eed label=door_65_1B
@ $6efd label=door_40_8F
@ $6f0d label=door_54_90
@ $6f1d label=door_90_91
@ $6f2d label=door_91_92
@ $6f3d label=door_92_93
@ $6f4d label=door_93_94
@ $6f5d label=door_3A_94
@ $6f6d label=trap_73_74
@ $6f7d label=trap_03_65
@ $6f8d label=trap_61_4B
@ $6f9d label=trap_2D_8D
@ $6fad label=trap_76_84
@ $6fbd label=trap_8B_6C
@ $6fcd label=trap_8D_6E
@ $6fdd label=trap_21_03
@ $6fed label=trap_15_66
@ $6ffd label=trap_78_8A
@ $700d label=trap_29_09
@ $701d label=picture_0B_0C
@ $702d label=barrels_91_3D
@ $703d label=knight_1F_21
@ $704d label=knight_25_23
@ $705d label=knight_00_06
@ $706d label=knight_00_06_2
@ $707d label=knight_01_03
@ $708d label=knight_05_07
@ $709d label=knight_17_15
@ $70ad label=knight_15_13
@ $70bd label=knight_88_8A
@ $70cd label=knight_88_8A_2
@ $70dd label=knight_27_2B
@ $70ed label=knight_27_2B_2
@ $70fd label=knight_56_24
@ $710d label=knight_56_24_2
@ $711d label=knight_7C_7A
@ $712d label=knight_7C_7A_2
@ $713d label=knight_09_7F
@ $714d label=knight_09_7F_2
@ $715d label=table_0D_13
@ $716d label=table_63_5D
@ $717d label=table_18_88
@ $718d label=table_7A_81
@ $719d label=table_18_6D
@ $71ad label=table_5B_5C
@ $71bd label=table_6A_1B
@ $71cd label=table_2E_7D
@ $71dd label=table_2E_7D_2
@ $71ed label=table_2A_2D
@ $71fd label=table_2A_2D_2
@ $720d label=shields_8D_8C
@ $721d label=trophies_8B_8C
@ $722d label=shields_16_14
@ $723d label=trophies_0E_12
@ $724d label=shields_0F_11
@ $725d label=trophies_10_73
@ $726d label=shields_08_18
@ $727d label=trophies_6F_0E
@ $728d label=pic_shi_00_19
@ $729d label=pic_tro_00_0B
@ $72ad label=shields_00_19
@ $72bd label=trophies_00_0B
@ $72cd label=pic_tro_04_15
@ $72dd label=tro_pic_04_14
@ $72ed label=pic_tro_73_6E
@ $72fd label=shi_pic_6D_0E
@ $730d label=pic_shi_07_06
@ $731d label=shields_06_01
@ $732d label=pic_shi_18_17
@ $733d label=trophies_87_89
@ $734d label=trophies_87_89_2
@ $735d label=shi_pic_00_82
@ $736d label=trophies_00_82
@ $737d label=pic_shi_66_61
@ $738d label=tro_pic_66_5D
@ $739d label=tro_shi_66_65
@ $73ad label=shi_tro_66_64
@ $73bd label=pic_tro_63_62
@ $73cd label=trophies_70_0D
@ $73dd label=shi_tro_70_0C
@ $73ed label=trophies_09_7F
@ $73fd label=pic_shi_09_7F
@ $740d label=tro_pic_5A_27
@ $741d label=tro_shi_5A_27
@ $742d label=shi_tro_29_7E
@ $743d label=pic_tro_29_7E
@ $744d label=clock_0D_13
@ $745d label=clock_09_17
@ $746d label=clock_17_35
@ $747d label=clock_67_68
@ $748d label=clock_8D_22
@ $749d label=clock_75_0A
@ $74ad label=bookcase_0A_16
@ $74bd label=bookcase_3D_49
@ $74cd label=bookcase_69_6A
@ $74dd label=bookcase_6C_6E
@ $74ed label=bookcase_3E_41
@ $74fd label=barrel_45_53
@ $750d label=barrel_4C_4E
@ $751d label=barrel_4E_38
@ $752d label=barrel_6B_6D
@ $753d label=barrel_8A_08
@ $754d label=acgexit_00_8E
@ $755d label=skeleton_53_8F
@ $756d label=skeleton_33_55
B $645d,4384,8
w $757d Data block at 757d
@ $757d label=room_table
W $757d,16,16 &00
W $758d,16,16 &08
W $759d,16,16 &10
W $75ad,16,16 &18
W $75bd,16,16 &20
W $75cd,16,16 &28
W $75dd,16,16 &30
W $75ed,16,16 &38
W $75fd,16,16 &40
W $760d,16,16 &48
W $761d,16,16 &50
W $762d,16,16 &58
W $763d,16,16 &60
W $764d,16,16 &68
W $765d,16,16 &70
W $766d,16,16 &78
W $767d,16,16 &80
W $768d,16,16 &88
W $769d,12,12 &90
w $76a9 Data block at 76a9
@ $76a9 label=room_00
@ $76c3 label=room_01
@ $76cd label=room_02
@ $76d7 label=room_03
@ $76e5 label=room_04
@ $76f1 label=room_05
@ $76fb label=room_06
@ $770d label=room_07
@ $7717 label=room_08
@ $7721 label=room_09
@ $7733 label=room_0A
@ $773d label=room_0B
@ $7747 label=room_0C
@ $7751 label=room_0D
@ $775f label=room_0E
@ $776b label=room_0F
@ $7775 label=room_10
@ $777d label=room_11
@ $7787 label=room_12
@ $778f label=room_13
@ $779d label=room_14
@ $77a7 label=room_15
@ $77b5 label=room_16
@ $77bf label=room_17
@ $77cb label=room_18
@ $77d9 label=room_19
@ $77e3 label=room_1A
@ $77e9 label=room_1B
@ $77f3 label=room_1C
@ $77f9 label=room_1D
@ $77ff label=room_1E
@ $7805 label=room_1F
@ $780d label=room_20
@ $7815 label=room_21
@ $7821 label=room_22
@ $7829 label=room_23
@ $7833 label=room_24
@ $783f label=room_25
@ $7847 label=room_26
@ $784d label=room_27
@ $785d label=room_28
@ $7863 label=room_29
@ $7871 label=room_2A
@ $787b label=room_2B
@ $7885 label=room_2C
@ $788b label=room_2D
@ $7899 label=room_2E
@ $78a3 label=room_2F
@ $78a9 label=room_30
@ $78b1 label=room_31
@ $78b7 label=room_32
@ $78bd label=room_33
@ $78c7 label=room_34
@ $78cd label=room_35
@ $78d5 label=room_36
@ $78db label=room_37
@ $78e1 label=room_38
@ $78eb label=room_39
@ $78f1 label=room_3A
@ $78f9 label=room_3B
@ $7903 label=room_3C
@ $7909 label=room_3D
@ $7915 label=room_3E
@ $791d label=room_3F
@ $7923 label=room_40
@ $792d label=room_41
@ $7933 label=room_42
@ $7939 label=room_43
@ $7943 label=room_44
@ $7949 label=room_45
@ $794f label=room_46
@ $7957 label=room_47
@ $795d label=room_48
@ $7967 label=room_49
@ $796d label=room_4A
@ $7973 label=room_4B
@ $797d label=room_4C
@ $7985 label=room_4D
@ $798b label=room_4E
@ $7993 label=room_4F
@ $7999 label=room_50
@ $79a1 label=room_51
@ $79a7 label=room_52
@ $79ad label=room_53
@ $79b5 label=room_54
@ $79bd label=room_55
@ $79c5 label=room_56
@ $79d3 label=room_57
@ $79db label=room_58
@ $79e3 label=room_59
@ $79eb label=room_5A
@ $79f7 label=room_5B
@ $7a05 label=room_5C
@ $7a13 label=room_5D
@ $7a1f label=room_5E
@ $7a27 label=room_5F
@ $7a33 label=room_60
@ $7a3f label=room_61
@ $7a4b label=room_62
@ $7a55 label=room_63
@ $7a61 label=room_64
@ $7a6b label=room_65
@ $7a77 label=room_66
@ $7a8b label=room_67
@ $7a91 label=room_68
@ $7a97 label=room_69
@ $7a9d label=room_6A
@ $7aa5 label=room_6B
@ $7aad label=room_6C
@ $7ab7 label=room_6D
@ $7ac3 label=room_6E
@ $7acf label=room_6F
@ $7ad7 label=room_70
@ $7ae1 label=room_71
@ $7ae7 label=room_72
@ $7aed label=room_73
@ $7af7 label=room_74
@ $7afd label=room_75
@ $7b05 label=room_76
@ $7b11 label=room_77
@ $7b17 label=room_78
@ $7b1f label=room_79
@ $7b25 label=room_7A
@ $7b33 label=room_7B
@ $7b39 label=room_7C
@ $7b43 label=room_7D
@ $7b4d label=room_7E
@ $7b57 label=room_7F
@ $7b61 label=room_80
@ $7b67 label=room_81
@ $7b6f label=room_82
@ $7b7b label=room_83
@ $7b81 label=room_84
@ $7b8b label=room_85
@ $7b91 label=room_86
@ $7b97 label=room_87
@ $7ba3 label=room_88
@ $7baf label=room_89
@ $7bbb label=room_8A
@ $7bc9 label=room_8B
@ $7bd3 label=room_8C
@ $7bdd label=room_8D
@ $7beb label=room_8E
@ $7bef label=room_8F
@ $7bf7 label=room_90
@ $7bfd label=room_91
@ $7c05 label=room_92
@ $7c0b label=room_93
@ $7c11 label=room_94
@ $7c17 label=room_none
W $76a9,1392,2
c $7c19 Routine at 7c19
D $7c19 Used by the routine at #R$6000.
@ $7c19 label=reset_menu
@ $7c1e label=loc_7C1E
C $7c1e,2 clear menu data
N $7c29 This entry point is used by the routine at #R$8c35.
@ $7c29 label=main_menu
C $7c29,3 clear display, attributes, and set black border
C $7c2c,3 draw menu icons for controls and player acharacters
@ $7c2f label=menu_loop
C $7c32,2 xxx54321
C $7c38,1 set bits now mean pressed keys
C $7c3d,2 1 pressed?
C $7c3f,2 jump if not
C $7c41,2 select Keyboard
@ $7c43 label=loc_7C43
C $7c43,2 2 pressed?
C $7c45,2 jump if not
C $7c49,2 select Kempston joystick
@ $7c4b label=loc_7C4B
C $7c4b,2 3 pressed?
C $7c4d,2 jump if not
C $7c51,2 select Cursor joystick
@ $7c53 label=loc_7C53
C $7c53,2 4 pressed?
C $7c55,2 jump if not
C $7c57,2 select Knight
@ $7c59 label=loc_7C59
C $7c59,2 5 pressed?
C $7c5b,2 jump if not
C $7c5f,2 select Wizard
@ $7c61 label=loc_7C61
C $7c62,2 xxx67890
C $7c68,1 set bits now mean pressed keys
C $7c6b,2 6 pressed?
C $7c6d,2 jump if not
C $7c71,2 select Serf
@ $7c73 label=loc_7C73
C $7c77,2 0 pressed?
C $7c79,3 jump if so
C $7c82,3 highlight keyboard/kempston/cursor
C $7c8a,3 highlight knight/wizard/serf
c $7c90 set menu attrs to reflect current selection
D $7c90 Used by the routine at #R$7c19.
@ $7c90 label=set_menu_attrs
@ $7c91 label=loc_7C91
@ $7c98 label=loc_7C98
@ $7c9c label=loc_7C9C
C $7ca1,2 flash on
c $7ca4 Routine at 7ca4
D $7ca4 Used by the routine at #R$7c90.
@ $7ca4 label=set_flash_off
C $7ca4,2 clear flash attribute
C $7ca8,2 clear flash attribute
c $7cab Routine at 7cab
D $7cab Used by the routine at #R$7c90.
@ $7cab label=set_flash_on
C $7cab,2 set flash attribute
c $7caf Routine at 7caf
D $7caf Used by the routine at #R$7c19.
@ $7caf label=draw_menu_text
C $7cbc,3 "1  KEYBOAR"
C $7cbf,2 7 lines
@ $7cc1 label=loc_7CC1
C $7cc2,1 text attribute colour
C $7cc9,1 next text character
C $7ccd,2 x coord for text
C $7cd8,3 copyright at 0,184
C $7cde,3 show a line of text, first byte is attr
C $7ce1,3 header at 32,0
C $7ce7,3 show a line of text, first byte is attr
b $7cea Data block at 7cea
@ $7cea label=menu_attrs
@ $7cf1 label=menu_ycoords
B $7cea,14,7
t $7cf8 Message at 7cf8
@ $7cf8 label=menu_options
T $7cf8,10,10
B $7d02,1,1
T $7d03,19,19
B $7d16,1,1
T $7d17,19,19
B $7d2a,1,1
T $7d2b,8,8
B $7d33,1,1
T $7d34,8,8
B $7d3c,1,1
T $7d3d,6,6
B $7d43,1,1
T $7d44,12,12
B $7d50,1,1
b $7d51 Data block at 7d51
@ $7d51 label=copyright_msg
B $7d51,1,1
T $7d52,31,31
B $7d71,1,1
b $7d72 Data block at 7d72
@ $7d72 label=header_msg
B $7d72,1,1
T $7d73,22,22
B $7d89,1,1
c $7d8a Routine at 7d8a
D $7d8a Used by the routine at #R$7caf.
@ $7d8a label=print_text
C $7d8b,3 convert coords in HL to display address in HL
C $7d94,3 convert pixel coords in HL to attribute address
c $7d9a Routine at 7d9a
D $7d9a Used by the routine at #R$7c19.
@ $7d9a label=start_game
C $7d9a,3 clear 5E10-5FFF
C $7d9d,2 3 lives on startup
C $7da8,3 clear display, attributes, and set black border
C $7dab,3 draw side panel background scroll
C $7dae,3 draw lives sprites in side panel
C $7db1,3 set locations of ACG key pieces
C $7db4,3 set positions of red/green/cyan keys, and mummy
C $7db7,3 copy initial game state to working state area
C $7dba,3 randomise which doors can open/close
C $7dbd,3 prepare player to spawn
c $7dc3 Routine at 7dc3
D $7dc3 Used by the routines at #R$7e13 and #R$9117.
@ $7dc3 label=main_loop
@ $7dc8 label=loc_7DC8
C $7dc8,3 number of creatures processed this frame
C $7dcb,4 first entity
C $7dcf,3 b0 set if room content drawn
C $7dd2,2 room content drawn?
C $7dd4,2 jump if so
C $7dd6,4 pairs of linked items, including doors
@ $7ddc label=loc_7DDC
C $7de3,1 same frame as last time?
C $7de4,3 call if not
C $7dea,3 entity in player room?
C $7df0,3 jump if so
@ $7df3 label=loop_return
C $7df3,3 entity size
C $7df6,2 next entity
C $7dfb,3 end marker
C $7dff,2 end of list?
C $7e01,2 jump if not
N $7e03 This entry point is used by the routine at #R$7e13.
@ $7e03 label=loc_7E03
C $7e0a,1 same frame as last time?
C $7e0b,3 call if not
c $7e13 Routine at 7e13
@ $7e13 label=loop2_return
C $7e13,3 16 bytes per linked entity pair
C $7e16,2 next pair
C $7e1b,3 pairs of linked items, including doors
N $7e23 This entry point is used by the routine at #R$7dc3.
@ $7e23 label=draw_room
C $7e29,1 * 2 (bytes per entry)
C $7e2e,1 room data LSB
C $7e30,1 room data MSB
@ $7e35 label=decor_loop
C $7e38,1 room item LSB
C $7e3f,1 room item MSB
C $7e41,1 end of list?
C $7e42,2 jump if not
C $7e47,1 advance game loop counter
C $7e4b,3 b0 set if room content drawn
C $7e4e,2 room drawn yet?
C $7e50,2 jump if so
C $7e52,3 draw all non-monster entities in the current room
@ $7e55 label=loc_7E55
C $7e55,3 b0 set if room content drawn
C $7e58,2 mark room as drawn
C $7e5a,3 another random number source
C $7e61,1 add in frames
C $7e65,1 add in counter low
C $7e67,3 only low 8 bits are meaningfully random
C $7e6a,3 check whether pick-up key has been pressed
C $7e6d,3 check for pause key, return when not paused
C $7e70,3 periodically replenish consumed food
C $7e76,2 end room?
C $7e78,3 congratulate player on completion
c $7e7e Routine at 7e7e
D $7e7e Used by the routine at #R$7dc3.
@ $7e7e label=process_action
C $7e7e,1 push return location
N $7e7f This entry point is used by the routine at #R$7eb2.
@ $7e7f label=run_handler
@ $7e82 label=lookup_graphic
N $7e85 This entry point is used by the routine at #R$9924.
@ $7e85 label=lookup_c_hl
C $7e89,2 * 2 (bytes per entry)
C $7e8c,1 LSB
C $7e8e,1 MSB
@ $7e90 ssub=jp $d505 ; new JP instruction
N $7e93 This entry point is used by the routine at #R$7e13.
@ $7e93 label=loc_7E93
C $7ea3,3 in player room?
C $7ea6,2 jump if so
@ $7ead label=loc_7EAD
c $7eb2 run player, weapon, and sound handlers
D $7eb2 Used by the routine at #R$7dc3.
@ $7eb2 label=run_player
C $7eb7,3 flag set but never read
N $7ebe This entry point is used by the routine at #R$7ec5.
@ $7ebe label=loc_7EBE
c $7ec5 Routine at 7ec5
@ $7ec5 label=handler_loop
C $7ec5,3 8 bytes per entry
C $7ec8,2 next entry
C $7ecd,3 end marker
C $7ed1,2 end of list?
C $7ed3,2 jump if not
C $7ed5,3 advance the clock 1 frame
C $7edf,3 flag set but never read
w $7ee6 Data block at 7ee6
@ $7ee6 label=handler_table
W $7ee6,8,8 &00
W $7eee,8,8 &04 extra delay for inactive creatures
W $7ef6,8,8 &08
W $7efe,8,8 &0c
W $7f06,8,8 &10
W $7f0e,8,8 &14
W $7f16,8,8 &18
W $7f1e,8,8 &1c
W $7f26,8,8 &20
W $7f2e,8,8 &24
W $7f36,8,8 &28
W $7f3e,8,8 &2c
W $7f46,8,8 &30
W $7f4e,8,8 &34
W $7f56,8,8 &38
W $7f5e,8,8 &3c
W $7f66,8,8 &40
W $7f6e,8,8 &44
W $7f76,8,8 &48
W $7f7e,8,8 &4c
W $7f86,8,8 &50
W $7f8e,8,8 &54
W $7f96,8,8 &58
W $7f9e,8,8 &5c
W $7fa6,8,8 &60
W $7fae,8,8 &64
W $7fb6,8,8 &68
W $7fbe,8,8 &6c
W $7fc6,8,8 &70
W $7fce,8,8 &74
W $7fd6,8,8 &78
W $7fde,8,8 &7c
W $7fe6,8,8 &80
W $7fee,8,8 &84
W $7ff6,8,8 &88
W $7ffe,8,8 &8c
W $8006,8,8 &90
W $800e,8,8 &94
W $8016,8,8 &98
W $801e,8,8 &9c
W $8026,4,4 &a0
w $802a Data block at 802a
@ $802a label=handler_table2
W $802a,8,8 &00
W $8032,8,8 &04 extra delay for inactive creatures
W $803a,8,8 &08
W $8042,8,8 &0c
W $804a,8,8 &10
W $8052,8,8 &14
W $805a,8,8 &18
W $8062,8,8 &1c
W $806a,8,8 &20
W $8072,8,8 &24
c $807a extra delay applied to inactive creatures
@ $807a label=h_creat_delay
C $807d,3 end marker
C $8081,2 subtract from entity address
C $8084,1 before creature 1?
C $8085,1 return if so
C $8087,2 after creature3 (16 bytes &0eac)
C $8089,1 return if so
C $808a,3 delay to keep game speed stable
@ $808d label=delay_loop
c $8093 clear screen and attrs of play area
D $8093 Used by the routines at #R$8c35, #R$9117 and #R$9731.
@ $8093 label=clear_play_area
C $8096,3 24x192
c $809a fill C rows of B columns of value A at address HL
D $809a Used by the routines at #R$9bea and #R$a240.
@ $809a label=fill_bc_hl_a
C $809c,3 line stride is 32 bytes
@ $809f label=loc_809F
C $80a7,2 fill C rows of B columns of value A at address HL
c $80aa clear display, attributes, and set black border
D $80aa Used by the routines at #R$7c19 and #R$7d9a.
@ $80aa label=clear_screen
C $80aa,3 clear attribute file
C $80ad,3 clear display file
C $80b1,2 black border
c $80b4 clear display file
D $80b4 Used by the routine at #R$80aa.
@ $80b4 label=clear_display
N $80b9 This entry point is used by the routine at #R$80cb.
@ $80b9 label=loc_80B9
N $80bb This entry point is used by the routine at #R$80c2.
@ $80bb label=loc_80BB
c $80c2 clear attribute file
D $80c2 Used by the routine at #R$80aa.
@ $80c2 label=clear_attrs
c $80cb clear 5E10-5FFF
D $80cb Used by the routine at #R$7d9a.
@ $80cb label=clear_game_data
C $80ce,2 clear up to address 6000
c $80d2 wizard character handler
@ $80d2 label=h_wizard
C $80d2,3 walk deceleration
C $80d5,3 walk acceleration
C $80d8,3 unused
C $80db,3 read controls and apply player movement
C $80de,3 x velocity
C $80e1,3 y velocity
C $80e5,1 is player moving?
C $80e6,2 jump if not
C $80eb,2 1/4 update rate
C $80ed,2 jump if not time
C $80f2,2 keep animation frame bits
C $80f4,2 add base wizard graphic
C $80fa,1 moving down?
C $80fb,3 jump if so
C $80fe,2 abs
@ $8100 label=loc_8100
C $8102,1 moving right?
C $8103,3 jump if so
C $8106,2 abs
@ $8108 label=loc_8108
C $8108,1 moving more up/down than left/right?
C $8109,2 jump if so
C $810c,1 moving up?
C $8110,3 jump if so
C $8113,2 offset to down sprites
@ $8115 label=loc_8115
C $8115,2 offset to right sprites
@ $8117 label=loc_8117
C $8117,3 set animation graphic
C $811a,3 play walk clicks if due
@ $811d label=loc_811D
C $811d,3 return controls in A (FUDLR order, negative logic)
C $8120,2 fire pressed?
C $8122,3 call if so (fire weapon)
@ $8128 label=loc_8128
C $8129,1 moving left?
C $812d,3 jump if so
C $8130,2 offset to down sprites
c $8134 fire knight weapon
D $8134 Used by the routine at #R$8e26.
@ $8134 label=knight_fire
C $8137,1 weapon active?
C $8138,1 return if so (only one allowed)
C $813c,1 standing in doorway?
C $813d,1 return if so (can't fire)
C $813e,3 play axe throw sound
C $8141,3 throw the current character's weapon
C $8147,2 base axe graphic
c $814b fire wizard weapon
D $814b Used by the routine at #R$80d2.
@ $814b label=wizard_fire
C $814e,1 weapon active?
C $814f,1 return if so
C $8153,1 standing in doorway?
C $8154,1 return if so (can't fire)
C $8155,3 play fireball throw sound
C $8158,3 throw the current character's weapon
C $815e,2 base fireball graphic
N $8160 This entry point is used by the routines at #R$8134 and #R$8283.
@ $8160 label=loc_8160
C $8161,3 player room
C $8164,1 set weapon room
C $8167,3 player xpos
C $816a,1 set weapon xpos
C $816c,3 player ypos
C $816f,1 set weapon ypos
C $8176,3 draw entity graphic (no attrs)
c $817c throw the current character's weapon
D $817c Used by the routines at #R$8134, #R$814b and #R$8283.
@ $817c label=throw_weapon
@ $819e label=loc_819E
@ $81a0 label=loc_81A0
@ $81af label=loc_81AF
@ $81b1 label=loc_81B1
@ $81b3 label=loc_81B3
C $81c3,2 x velocity
C $81c6,2 y velocity (up)
@ $81c9 label=loc_81C9
C $81c9,2 x velocity (left)
C $81cc,2 y velocity
@ $81cf label=loc_81CF
C $81cf,2 set x velocity (right)
C $81d2,2 set y velocity
@ $81d5 label=loc_81D5
C $81d5,2 set x velocity (none)
C $81d8,2 set y velocity (down)
c $81db axe animation handler
@ $81db label=h_axe
C $81db,3 save entity position for undraw
C $81e1,1 cycle backwards
C $81e2,1 1/2 animation rate
C $81e3,2 8 animation frames
C $81e5,2 base axe graphic
C $81ea,4 bright red
c $81f0 fireball animation handler
@ $81f0 label=h_fireball
C $81f0,3 save entity position for undraw
C $81f6,1 cycle &0eac processing loop
C $81f7,2 4 animation frames
C $81f9,2 base fireball graphic
C $8202,2 two possible colours
C $8204,2 bright cyan or white
N $8209 This entry point is used by the routines at #R$81db and #R$82f1.
@ $8209 label=weapon_handler
C $8210,3 weapon in player room?
C $8213,2 jump if not (remove)
C $8215,3 existed too long?
C $8218,2 jump if so (remove)
C $8220,3 weapon xpos
C $8223,3 add x velocity
C $8227,2 subtract room x centre
C $8229,3 jump if in right half
C $822c,2 abs
@ $822e label=loc_822E
C $822e,1 hit screen edge?
C $822f,2 jump if so (bounce)
@ $8231 label=loc_8231
C $8231,3 weapon ypos
C $8234,3 add y velocity
C $8238,2 subtract room y centre
C $823a,3 jump if in bottom half
C $823d,2 abs
@ $823f label=loc_823F
C $823f,1 hit screen edge?
C $8240,2 jump if so (bounce)
@ $8242 label=loc_8242
C $8242,3 set updated xpos
C $8245,3 set updated ypos
@ $824b label=loc_824B
C $824b,3 weapon ypos
C $824e,3 y velocity
C $8251,2 invert (bounce)
C $8257,3 weapon bounce sound
@ $825d label=loc_825D
C $825d,3 weapon xpos
C $8260,3 x velocity
C $8263,2 invert (bounce)
C $8269,3 weapon bounce sound
N $826f This entry point is used by the routine at #R$8787.
@ $826f label=loc_826F
C $8272,3 weapon disappearing sound
C $827b,3 set attrs covering previous and new position
N $827e This entry point is used by the routine at #R$85b2.
@ $827e label=remove_entity
C $827e,4 clear entity graphic
c $8283 fire serf weapon, if not active
D $8283 Used by the routine at #R$8dc4.
@ $8283 label=serf_fire
C $8286,1 weapon active?
C $8287,1 return if so
C $828b,1 standing in doorway?
C $828c,1 return if so
C $828d,3 play sword throw sound
C $8290,3 throw the current character's weapon
C $8296,1 y velocity zero?
C $8297,2 jump if so
C $8299,3 jump if down
C $829c,2 offset to up graphic
@ $829e label=loc_829E
C $82a0,1 x velocity zero?
C $82a1,2 jump if so
C $82a3,3 jump if right
C $82a6,1 up/left or down/left
@ $82a7 label=loc_82A7
C $82a8,2 8 possible directions
C $82aa,2 base sword graphic
@ $82b3 label=loc_82B3
@ $82b6 label=loc_82B6
@ $82bf label=loc_82BF
c $82c3 set sword direction to match player direction
D $82c3 Used by the routine at #R$82f1.
@ $82c3 label=set_sword_dir
C $82c3,2 down
C $82cc,2 up
@ $82ce label=loc_82CE
C $82d6,1 up-left or down-left
@ $82d7 label=loc_82D7
C $82d8,2 8 positions
C $82da,2 base sword graphic
@ $82e1 label=loc_82E1
C $82e1,1 up-right or down-right
@ $82e4 label=loc_82E4
C $82e9,2 facing left
@ $82ed label=loc_82ED
C $82ed,2 facing right
c $82f1 sword animation handler
@ $82f1 label=h_sword
C $82f1,3 save entity position for undraw
C $82f4,4 bright yellow
C $82fb,3 set sword direction to match player direction
c $8301 small bat handler
@ $8301 label=h_batlet
C $830a,3 save entity position for undraw
C $830d,3 number of creatures processed this frame
C $8311,3 check if enemy is touching player (returns E=1)
C $8314,1 touching player?
C $8315,3 jump if so
C $8318,3 check if weapon has hit entity
C $831b,1 hit by weapon?
C $831c,3 jump if so
C $831f,4 live for 256 frames in different room
C $8327,3 movement counter
C $832b,2 16-frames between movement changes
C $8330,3 jump if no change
C $8335,2 3-bit random behaviour
@ $833a label=loc_833A
C $833a,3 random velocity used for batlet
C $833d,4 bright magenta
C $8341,2 jump if using first (decreasing) entry
C $8343,1 advance to second (increasing) entry
@ $8344 label=loc_8344
C $8344,1 get velocity from table
C $8345,4 random direction down?
C $8349,2 jump if so
C $834b,2 invert to go up
@ $834d label=loc_834D
C $834d,3 add velocity to ypos
C $8351,2 subtract room y centre
C $8353,2 jump if in top screen half
@ $835a label=loc_835A
C $835a,2 abs
C $835c,1 within screen height?
C $835d,2 jump if not
@ $835f label=loc_835F
C $835f,3 update ypos
@ $8362 label=loc_8362
C $8362,3 random velocity used for batlet
C $8365,2 jump if using first (decreasing) entry
C $8367,1 advance to second (increasing) entry
@ $8368 label=loc_8368
C $8368,1 get velocity from table
C $8369,4 random direction right?
C $836d,2 jump if so
C $836f,2 invert to go left
@ $8371 label=loc_8371
C $8371,3 add velocity to xpos
C $8375,2 subtract room x centre
C $8377,2 jump if in left half
C $8379,1 within room width?
C $837a,2 jump if not
@ $837e label=loc_837E
C $837e,2 abs
C $8380,1 within room width?
C $8381,2 jump if not
@ $8383 label=loc_8383
C $8383,3 update xpos
C $838a,1 1/4 animation rate
C $838b,2 2 animation frames
C $8391,2 strip animation bit
C $8394,3 set animation graphic
C $839a,2 player active?
C $839c,3 jump if not
@ $83a2 label=loc_83A2
C $83a2,4 move left away from room bounds
@ $83a8 label=loc_83A8
C $83a8,4 move right away from room bounds
@ $83ae label=loc_83AE
C $83ae,4 move down away from room bounds
@ $83b4 label=loc_83B4
C $83b4,4 move up away from room bounds
c $83ba random velocity used for batlet
D $83ba Used by the routine at #R$8301.
@ $83ba label=get_rnd_velocity
C $83ba,3 movement counter
C $83bd,2 * 2 bytes per entry
C $83c1,3 random velocities (0-3)
C $83c5,4 decide on using first or second entry
b $83ca Data block at 83ca
@ $83ca label=rnd_velocities
B $83ca,2,2
B $83cc,2,2 random velocities (0-3)
B $83ce,28,2
c $83ea check whether to add new room creatures
D $83ea Used by the routine at #R$8e26.
@ $83ea label=chk_creatures
C $83ea,3 last room creature created in
C $83f1,1 player in different room?
C $83f2,2 jump if so
C $83f8,1 time to appear?
C $83f9,2 jump if so
C $83fb,1 reduce delay timer
C $83fc,1 return if not yet time
@ $83fd label=add_creature
C $83fd,3 first creature slot
C $8400,3 16 bytes per creature
C $8403,2 3 room creatures
@ $8405 label=loc_8405
C $8406,1 free slot?
C $8407,2 jump if so
C $840c,1 no free slots
@ $840d label=loc_840D
C $840e,3 default entity data for creature
C $8411,3 16 bytes of entity data
C $8415,2 copy template
C $8420,3 creature table
C $8426,2 16 creatures entries to choose from
C $842c,1 new creature graphic
C $842e,1 set graphic
C $8434,3 random coord less than interior size B
C $8437,1 set x
C $8439,3 random coord less than interior size B
C $843c,1 set y
C $8446,3 set random movement
C $8449,3 draw entity graphic (no attrs)
@ $844f label=loc_844F
C $8452,2 delay 32 frames before next creature
@ $8458 label=loc_8458
C $845a,2 1/16 chance of appearing
C $845c,1 return if not
C $845d,2 add creature
c $845f pumpkin and spider handler
@ $845f label=h_pumpkin_spider
C $845f,3 save entity position for undraw
C $8465,3 in player room?
C $8468,3 jump if not
C $846b,3 number of creatures processed this frame
C $846f,3 check if weapon has hit entity
C $8472,1 hit by weapon?
C $8473,3 jump if so
C $8476,3 check if enemy is touching player (returns E=1)
C $8479,1 touching player?
C $847a,3 jump if so
C $8481,4 live for 256 frames in different room
C $8485,4 bright yellow
C $848c,2 4-bit animation counter 0?
C $848e,2 jump if not
C $8492,2 2-bit random x and y direction
C $8494,3 set directions
@ $8497 label=loc_8497
C $8497,4 unchanged movement this frame?
C $849b,2 jump if so
C $849d,4 move left?
C $84a1,3 jump if so
C $84a7,2 at right speed limit?
C $84a9,2 jump if so
C $84ab,3 faster right
@ $84ae label=loc_84AE
C $84ae,4 move up?
C $84b2,3 jump if so
C $84b8,2 at down speed limit?
C $84ba,2 jump if so
C $84bc,3 faster down
@ $84bf label=loc_84BF
C $84bf,3 increase animation counter
C $84c5,2 2 animation frames
C $84c7,3 combine, for 1/2 animation rate
C $84ca,3 set animation graphic
N $84cd This entry point is used by the routines at #R$862e, #R$8672, #R$871a, #R$87a6, #R$8988, #R$8a2f, #R$8a80 and #R$8aff.
@ $84cd label=monster_move
C $84cd,3 xpos
C $84d0,3 add x velocity
C $84d3,1 save new xpos
C $84d4,2 subtract room centre x
C $84d6,2 jump if negative (left half)
C $84d8,1 within room width?
C $84d9,2 jump if so
C $84db,4 set direction to left
C $84df,4 bounce left away from wall
C $84e3,3 current xpos
@ $84e8 label=loc_84E8
C $84e8,2 abs
C $84ea,1 within room width?
C $84eb,2 jump if so
C $84ed,4 set direction to right
C $84f1,3 current xpos
C $84f4,4 bounce right away from wall
@ $84f8 label=loc_84F8
C $84f8,3 ypos
C $84fb,3 add y velocity
C $84fe,1 save new ypos
C $84ff,2 subtract room centre y
C $8501,2 jump if negative (top half)
C $8503,1 within screen height?
C $8504,2 jump if so
C $8506,4 set direction to up
C $850a,4 bounce up away from wall
C $850e,3 current ypos
@ $8513 label=loc_8513
C $8513,2 abs
C $8515,1 within screen height?
C $8516,2 jump if so
C $8518,4 set direction to down
C $851f,4 bounce down away from wall
@ $8523 label=loc_8523
C $8523,3 set new xpos
C $8526,3 set new ypos
C $852c,3 in player room?
C $852f,1 return if not
C $8530,3 entity graphic
C $8533,2 strip 2 animation bits
C $8535,2 is it hunchback?
C $8537,2 jump if so
C $853b,2 is it mummy/frankenstein/devil/dracula?
C $853d,2 jump if so
C $8542,2 is player active?
C $8544,3 jump if not (pop non-special creature types)
@ $8547 label=keep_special
@ $854a label=loc_854A
C $854d,2 at left speed limit?
C $854f,3 jump if so
C $8552,3 faster left
@ $8558 label=loc_8558
C $855b,2 at up speed limit?
C $855d,3 jump if so
C $8560,3 faster up
c $8566 check if weapon has hit entity
D $8566 Used by the routines at #R$8301, #R$845f, #R$862e, #R$8672, #R$871a, #R$87a6, #R$8a2f and #R$8a80.
@ $8566 label=chk_weapon_hit
C $8566,3 weapon room
C $8569,2 no weapon hit detected
C $856b,3 in entity room?
C $856e,1 return if not
C $8572,1 is weapon active?
C $8573,1 return if not
C $8574,3 weapon xpos
C $8577,3 subtract entity x
C $857a,3 jump if postive
C $857d,2 abs
@ $857f label=loc_857F
C $857f,2 within weapon x size?
C $8581,1 return if not
C $8582,3 weapon ypos
C $8585,3 subtract entity y
C $8588,3 jump if positive
C $858b,2 abs
@ $858d label=loc_858D
C $858d,2 within weapon y size?
C $858f,1 return if not
C $8590,2 1 frame before removal
C $8592,3 set weapon frames left
C $8595,2 weapon hit detected
c $8598 random coord less than interior size B
D $8598 Used by the routine at #R$83ea.
@ $8598 label=rnd_coord
@ $859f label=loc_859F
@ $85a5 label=loc_85A5
@ $85b0 label=loc_85B0
c $85b2 check if enemy is touching player (returns E=1)
D $85b2 Used by the routines at #R$8301, #R$845f, #R$862e, #R$8672, #R$871a, #R$87a6, #R$8862, #R$8906, #R$8988, #R$89ed, #R$8a2f, #R$8a80 and #R$8aff.
@ $85b2 label=enemy_touching
C $85b5,2 is not touching player
C $85b7,3 in player room?
C $85ba,1 return if not
C $85be,1 does player exist?
C $85bf,1 return if not
C $85c0,2 active player?
C $85c2,1 return if not
C $85c6,3 right of player?
C $85c9,3 jump if not
C $85cc,2 abs
@ $85ce label=loc_85CE
C $85ce,2 too far from player?
C $85d0,1 return if so
C $85d4,3 below player?
C $85d7,3 jump if not
C $85da,2 abs
@ $85dc label=loc_85DC
C $85dc,2 too far from player?
C $85de,1 return if so
C $85e4,3 play monster touched sound
C $85e7,2 is touching player
N $85ea This entry point is used by the routines at #R$8301, #R$845f, #R$862e, #R$8672, #R$871a, #R$87a6, #R$8a2f and #R$8a80.
@ $85ea label=hurt_and_pop
C $85ea,3 reduce health by 32
N $85f0 This entry point is used by the routines at #R$8301, #R$845f, #R$85f7, #R$862e, #R$8672, #R$871a, #R$8787, #R$87a6, #R$8a2f and #R$8a80.
@ $85f0 label=delay_remove
C $85f0,3 auto-remove timer for monsters
C $85f3,1 return if still alive
c $85f7 monster appearance sparkle handler
@ $85f7 label=h_sparkles
C $85f7,3 save entity position for undraw
C $85fd,3 in player room?
C $8600,3 jump if not
C $8603,3 number of creatures processed this frame
C $8607,3 sparkled long enough?
C $860a,2 jump if so
C $860f,2 4 animation frames
C $8611,2 base sparkle graphic
C $8616,4 live for 128 frames outside player room
C $861d,2 player active?
C $861f,3 jump if not
@ $8625 label=to_creature
C $8625,3 creature graphic
C $8628,3 convert sparkle to creature
c $862e small ghost handler
@ $862e label=h_ghostlet
C $862e,3 save entity position for undraw
C $8634,3 in player room?
C $8637,3 jump if not
C $863a,3 number of creatures processed this frame
C $863e,3 check if enemy is touching player (returns E=1)
C $8641,1 touching player?
C $8642,3 jump if so
C $8645,3 check if weapon has hit entity
C $8648,1 hit by weapon?
C $8649,3 jump if so
C $864c,4 bright cyan
C $8650,3 increment movement counter
C $8653,3 change movement every 256 frames
C $865a,1 1/4 animation rate
C $865b,2 2 animation frames
C $8661,2 strip animation bit
C $8664,3 set animation graphic
C $866b,4 live for 256 frames in different room
C $866f,3 common monster movement
c $8672 spikey ghost handler
@ $8672 label=h_spikey_ghost
C $8672,3 save entity position for undraw
C $8678,3 in player room?
C $867b,3 jump if not
C $867e,3 number of creatures processed this frame
C $8682,4 live for 256 frames in different room
C $8686,3 check if enemy is touching player (returns E=1)
C $8689,1 touching player?
C $868a,3 jump if so
C $868d,3 check if weapon has hit entity
C $8690,1 hit by weapon?
C $8691,3 jump if so
C $8694,3 vertical velocity
C $8697,1 1/2 animation rate
C $8698,2 2 animation frames
C $869e,2 strip animation bit
C $86a1,3 set graphic
C $86a8,3 bounce speed
C $86ae,2 max bounce speed?
C $86b0,2 jump if not
C $86b2,3 random vertical offset
C $86b5,4 bounce back up
@ $86b9 label=loc_86B9
C $86b9,2 1/2 bounce speed
C $86bb,3 add to y position
C $86be,1 save result
C $86bf,2 subtract vertical centre
C $86c1,3 jump if positive (lower screen half)
C $86c4,2 abs
C $86c6,1 out of screen top?
C $86c7,2 jump if not
C $86c9,4 kick down away from wall
@ $86db label=loc_86DB
C $86db,3 set y position
C $86de,3 common monster movement
@ $86e1 label=loc_86E1
C $86e1,1 out of screen bottom?
C $86e2,2 jump if not
C $86e8,4 kick up away from wall
C $86ec,4 bounce back up at -7 pixels/frame
c $86f2 set random movement
D $86f2 Used by the routines at #R$83ea, #R$862e, #R$8672, #R$871a, #R$8a2f and #R$8a80.
@ $86f2 label=rnd_movement
C $86f4,2 use x speed of 1?
C $86f6,2 jump if so
C $86fa,2 y velocity is +/- 2
@ $86fc label=loc_86FC
C $86fc,3 set y something?
C $8702,2 use y speed of 1?
C $8704,2 jump if so
C $8708,2 x velocity is +/- 2
@ $870a label=loc_870A
C $870a,3 set x something?
@ $870e label=rnd_move_y1
C $8710,2 y velocity is +/- 1
@ $8714 label=rnd_move_x1
C $8716,2 x velocity is +/- 1
c $871a Routine at 871a
@ $871a label=h_blob
C $871a,3 save entity position for undraw
C $8726,3 number of creatures processed this frame
C $872a,4 live for 256 frames in different room
C $872e,3 check if enemy is touching player (returns E=1)
C $8731,1 touching player?
C $8732,3 jump if so
C $8735,3 check if weapon has hit entity
C $8738,1 hit by weapon?
C $8739,3 jump if so
C $8749,3 set random movement
@ $874c label=loc_874C
C $8750,2 2 animation frames
C $8756,2 clear b0
C $875c,3 common monster movement
N $875f This entry point is used by the routines at #R$8301, #R$845f, #R$85b2, #R$85f7, #R$862e, #R$8672, #R$87a6, #R$8988, #R$8a2f and #R$8a80.
@ $875f label=pop_creature
C $875f,3 save creature attr
C $8766,3 undraw to room attr
C $876c,3 set attrs covering previous and new position
C $8773,4 base pop graphic
C $8777,4 16 animation frames (4 loops of 4)
C $877e,3 add 155 score
C $8781,3 draw entity graphic (no attrs)
C $8784,3 set attrs covering previous and new position
c $8787 creature death pop animation handler
@ $8787 label=h_pop
C $8787,3 save entity position for undraw
C $878d,3 in player room?
C $8790,3 jump if not
C $8793,3 final animation frame?
C $8796,3 jump if so
C $879c,2 4 animation frames
C $879e,2 base pop graphic
C $87a0,3 set animation graphic
c $87a6 Ghoul handler
@ $87a6 label=h_ghoul
C $87a6,3 save entity position for undraw
C $87ac,3 in player room?
C $87af,3 jump if not
C $87b2,3 number of creatures processed this frame
C $87b6,3 check if weapon has hit entity
C $87b9,1 hit by weapon?
C $87ba,3 jump if so
C $87bd,3 check if enemy is touching player (returns E=1)
C $87c0,1 touching player?
C $87c1,3 jump if so
C $87c8,4 live for 256 frames in different room
C $87cc,4 bright yellow
C $87d3,2 3-bit animation counter 0?
C $87d5,2 jump if not
C $87d9,2 2-bit random direction
C $87db,3 set directions
@ $87de label=loc_87DE
C $87de,4 alternating behaviour &0eac frame
C $87e2,2 jump if odd frame (continue movement)
C $87e4,4 moving left?
C $87e8,2 jump if so
C $87ed,2 at right speed limit?
C $87ef,2 jump if so
C $87f1,3 faster right
@ $87f4 label=loc_87F4
C $87f4,4 moving up?
C $87f8,2 jump if so
C $87fd,2 at down speed limit?
C $87ff,2 jump if so
C $8801,3 faster down
@ $8804 label=loc_8804
C $8804,3 increase animation counter
C $880a,2 2 animation frames
C $880c,3 gives 1/2 animation rate
C $8812,3 common monster movement
@ $8815 label=loc_8815
C $8818,2 at left speed limit?
C $881a,2 jump if so
C $881c,3 faster left
@ $8821 label=loc_8821
C $8824,2 at up speed limit?
C $8826,2 jump if so
C $8828,3 faster up
c $882d set movement towards coords in DE
D $882d Used by the routines at #R$8862, #R$8906, #R$8988, #R$89ed and #R$8aff.
@ $882d label=attract_de
C $8830,3 ypos match?
C $8833,2 jump if so
C $8835,2 jump if greater (move down)
C $8837,4 move up
@ $883b label=loc_883B
C $883c,3 same xpos?
C $883f,2 jump if so
C $8841,2 jump if greater (move right)
C $8843,4 move left
@ $8848 label=loc_8848
C $8848,4 no y movement
C $884c,2 flag same ypos
@ $8850 label=loc_8850
C $8850,4 move down
@ $8856 label=loc_8856
C $8856,4 no x movement
C $885a,2 flag same xpos
@ $885d label=loc_885D
C $885d,4 move right
c $8862 Mummy handler
@ $8862 label=h_mummy
C $8862,3 save entity position for undraw
C $8865,3 check if enemy is touching player (returns E=1)
C $8868,1 touching player?
C $8869,3 call if so (reduce health by 8)
C $8870,1 does leaf exist?
C $8871,2 jump if not
C $8875,3 is leaf in mummy room?
C $8878,2 jump if not
C $887c,1 leaf x
C $887e,1 leaf y
C $887f,2 leaf attracts mummy
@ $8881 label=loc_8881
C $8881,4 is mummy angry with player?
C $8885,2 jump if so
C $888b,1 does red key exist?
C $888c,2 jump if not
C $8890,3 is red key in mummy room?
C $8893,2 jump if not
C $8895,3 current target x
C $8898,3 current target y
C $889b,3 set movement towards coords in DE
C $889f,2 reached target x+y position?
C $88a1,2 jump if so
@ $88a3 label=loc_88A3
C $88a8,2 4 animation frames
C $88aa,2 base mummy graphic
C $88ac,3 set animation graphic
C $88af,3 allowed to roam 56x56 from room centre
@ $88b5 label=loc_88B5
C $88b5,4 moving up/left?
C $88b9,2 jump if so
C $88bb,4 new target x
C $88bf,4 new target y (below red key)
C $88c3,4 move up-left
@ $88c9 label=loc_88C9
C $88c9,4 new target x (left of red key)
C $88cd,4 new target y
C $88d1,4 move down-right
@ $88d7 label=loc_88D7
C $88d7,3 set movement towards coords in DE
C $88db,2 has mummy reached leaf position?
C $88dd,2 jump if not
C $88e8,3 if leaf in player room?
C $88ed,3 undraw leaf
@ $88f0 label=loc_88F0
C $88f2,2 room 6B
C $88f4,3 move leaf to room 6B
@ $88f9 label=loc_88F9
C $88f9,4 mummy now angry with player
@ $88fd label=loc_88FD
C $8901,3 set movement towards coords in DE
c $8906 Dracula handler
@ $8906 label=h_dracula
C $8906,3 save entity position for undraw
C $8909,3 check if enemy is touching player (returns E=1)
C $890c,1 is touching player?
C $890d,3 call if so (reduce health by 8)
C $8910,3 yellow crucafix object
C $8913,3 is player carrying crucafix?
C $8916,2 jump if not
C $8918,4 current player position
C $891c,3 set movement towards coords in DE
C $891f,3 x velocity
C $8922,2 invert (run away!)
C $8927,3 y velocity
C $892a,2 invert (run away!)
@ $8931 label=loc_8931
C $8934,3 is Dracula in the player room?
C $8937,2 jump if not
C $893d,3 set movement towards coords in DE
@ $8940 label=loc_8940
C $8944,1 1/4 animation rate
C $8945,2 4 animation frames
C $8947,2 base Dracula graphic
C $8949,3 set animation graphic
C $894c,3 allowed to roam 52x52 from room centre
@ $8952 label=loc_8952
C $8952,4 new target x (centre)
C $8956,4 new target y (centre)
C $895a,3 set movement towards coords in DE
C $8960,1 frame 0 of 50?
C $8961,3 jump if not
C $8966,2 random 7-bit room number
C $8969,3 get style of room in A, returns style (0-B)
C $896c,2 non-square room?
C $896e,3 jump if so (ignore)
C $8974,1 current player room?
C $8975,3 jump if so (ignore)
C $8978,3 move Dracula to new room
c $897d get style of room in A, returns style (0-B)
D $897d Used by the routine at #R$8906.
@ $897d label=get_room_style
C $8980,3 room attr colour and style (0-B)
C $8986,1 first byte is room style (0-C)
c $8988 Frankenstein handler
@ $8988 label=h_frankenstein
C $8988,3 save entity position for undraw
C $898b,3 check if enemy is touching player (returns E=1)
C $898e,1 touching player?
C $898f,2 jump if not
C $8991,3 cyan spanner
C $8994,3 carrying spanner?
C $8997,2 jump if not
C $899c,3 add 1000 points
@ $89a2 label=loc_89A2
C $89a2,3 reduce health by 8
@ $89a5 label=loc_89A5
C $89a9,3 set movement towards coords in DE
C $89b3,2 base frankenstein graphic
C $89b8,3 52x52 centre prison area if player is dead
N $89bb This entry point is used by the routines at #R$8862, #R$8906 and #R$89ed.
@ $89bb label=chk_move_away
C $89be,2 is player active?
C $89c0,3 jump if so
C $89c7,3 set movement towards coords in DE
C $89ca,3 x movement
C $89cd,2 away from player
C $89d3,3 y movement
C $89d6,2 away from player
C $89db,3 allowed to roam 52x52 from room centre
C $89de,1 should be OR C maybe? (either movement)
C $89df,3 common monster movement
C $89e2,4 move right
C $89e6,4 move up
C $89ea,3 common monster movement
c $89ed Devil handler
@ $89ed label=h_devil
C $89ed,3 save entity position for undraw
C $89f0,3 check if enemy is touching player (returns E=1)
C $89f3,1 touching player?
C $89f4,3 call if so (reduce health by 8)
C $89fb,3 set movement towards coords in DE
C $8a01,2 strip animation frame bits
C $8a08,1 1/4 animation rate
C $8a09,2 4 animation frames
C $8a0c,3 set animation graphic
C $8a0f,3 allowed to roam 52x52 from room centre
c $8a15 reduce health by 16
D $8a15 Used by the routine at #R$8aff.
@ $8a15 label=damage_16
c $8a1e reduce health by 8
D $8a1e Used by the routines at #R$8862, #R$8906, #R$8988 and #R$89ed.
@ $8a1e label=damage_8
N $8a25 This entry point is used by the routine at #R$8a15.
@ $8a25 label=loc_8A25
C $8a28,3 draw chicken energy bar
N $8a2b This entry point is used by the routine at #R$8a15.
@ $8a2b label=player_dead_pop
C $8a2b,1 don't return to entity handler
c $8a2f witch handler
@ $8a2f label=h_witch
C $8a2f,3 save entity position for undraw
C $8a35,3 in player room?
C $8a38,3 jump if not
C $8a3b,3 number of creatures processed this frame
C $8a3f,3 check if enemy is touching player (returns E=1)
C $8a42,1 touching player?
C $8a43,3 jump if so
C $8a46,3 check if weapon has hit entity
C $8a49,1 hit by weapon?
C $8a4a,3 jump if so
C $8a4d,3 movement timer expired?
C $8a50,2 jump if not
C $8a52,3 set random movement
C $8a55,4 halve y velocity (to 1 or 0)
C $8a59,4 16 frames before changing movement
@ $8a5d label=loc_8A5D
C $8a60,2 strip animation bits
C $8a62,4 moving left?
C $8a66,2 jump if so
C $8a68,2 offset to right-facing graphics
@ $8a6a label=loc_8A6A
C $8a6e,1 1/2 animation rate
C $8a6f,2 2 animation frames
C $8a72,3 set animation graphic
C $8a79,4 bright magenta
C $8a7d,3 common monster movement
c $8a80 monk and large bat handler
@ $8a80 label=h_monk_bat
C $8a80,3 save entity position for undraw
C $8a86,3 in player room?
C $8a89,3 jump if not
C $8a8c,3 number of creatures processed this frame
C $8a90,3 check if enemy is touching player (returns E=1)
C $8a93,1 touching player?
C $8a94,3 jump if so
C $8a97,3 check if weapon has hit entity
C $8a9a,1 hit by weapon?
C $8a9b,3 jump if so (pop)
C $8a9e,3 movement timer expired?
C $8aa1,2 jump if not
C $8aa3,3 set random movement
C $8aab,2 +/- 2
C $8aad,3 set x velocity
C $8ab0,4 halve y velocity (to 1 or 0)
C $8ab4,4 32 frames before changing behaviour
@ $8ab8 label=loc_8AB8
C $8abb,2 strip animation bits
C $8abd,4 moving left?
C $8ac1,2 jump if so
C $8ac3,2 offset to right-facing graphics
@ $8ac5 label=loc_8AC5
C $8ac9,1 1/2 animation rate
C $8aca,2 2 animation frames
C $8acd,3 set animation graphic
C $8ad4,4 bright red
C $8ad8,3 common monster movement
c $8adb check for hunchback items on the floor (return C=1)
D $8adb Used by the routine at #R$8aff.
@ $8adb label=chk_hunch_loot
C $8adb,3 first of 8 items hunchback reacts to
C $8ade,3 8 bytes per entry
C $8ae1,2 8 entries
@ $8ae3 label=loc_8AE3
C $8ae5,1 unused slot?
C $8ae6,2 jump if so
C $8ae9,1 room number
C $8aea,3 in hunchback room?
C $8aed,2 jump if not
C $8af2,1 item x
C $8af4,1 item y
C $8af5,2 entry found
@ $8af8 label=loc_8AF8
C $8af9,1 advance to next entry
C $8afc,2 not found
c $8aff Hunchback handler
@ $8aff label=h_hunchback
C $8aff,3 save entity position for undraw
C $8b02,3 check if enemy is touching player (returns E=1)
C $8b05,1 touching player?
C $8b06,3 call if so (reduce health by 16)
C $8b0a,3 no x movement
C $8b0d,3 no y movement
C $8b10,3 check for hunchback items on the floor (return C=1)
C $8b13,1 hunchback item in room?
C $8b14,3 jump if not
C $8b17,3 hunchback attracted to item
C $8b1b,2 hunchback reached item?
C $8b1d,2 jump if not
C $8b1f,3 check for hunchback items on the floor (return C=1)
C $8b22,3 HL is 4 bytes into entity
C $8b26,2 start of item entity
C $8b2f,2 item entity now in IX
C $8b34,3 in player room?
C $8b37,2 jump if not
C $8b39,3 undraw item
@ $8b3c label=loc_8B3C
C $8b3c,4 remove item
@ $8b45 label=loc_8B45
C $8b48,2 strip animation bits
C $8b4f,1 1/4 animation rate
C $8b50,2 4 animation frames
C $8b53,3 set animation graphic
@ $8b59 label=loc_8B59
C $8b5c,2 player active?
C $8b5e,3 jump if so
C $8b61,3 coords below top door
C $8b64,3 move towards door
C $8b67,3 common monster movement
b $8b6a Data block at 8b6a
@ $8b6a label=creature_default
B $8b6a,16,8
b $8b7a Data block at 8b7a
@ $8b7a label=creatures
B $8b7a,1,1 spider
B $8b7b,1,1 spikey
B $8b7c,1,1 bat
B $8b7d,1,1 bat
B $8b7e,1,1 witch
B $8b7f,1,1 witch
B $8b80,1,1 monk
B $8b81,1,1 monk
B $8b82,1,1 spider
B $8b83,1,1 spikey
B $8b84,1,1 blob
B $8b85,1,1 ghoul
B $8b86,1,1 pumpkin
B $8b87,1,1 ghostlet
B $8b88,1,1 ghost
B $8b89,1,1 batlet
c $8b8a draw chicken energy bar
D $8b8a Used by the routines at #R$8a1e, #R$8c63, #R$8e26, #R$8ed7, #R$9443 and #R$988b.
@ $8b8a label=draw_chicken
C $8b94,3 last drawn chicken level
C $8ba0,3 full chicken height
C $8ba4,3 empty chicken height
C $8bb9,3 HL = DE * A
C $8bd7,2 empty chicken graphic
C $8bdc,3 chicken draw coords
C $8be2,3 coords
C $8beb,3 convert coords in HL to display address in HL
@ $8bf2 label=loc_8BF2
@ $8bfc label=loc_8BFC
@ $8c00 label=loc_8C00
C $8c0e,3 last drawn chicken level
@ $8c12 label=loc_8C12
C $8c16,2 full chicken graphic
C $8c1e,3 coords
@ $8c26 label=loc_8C26
b $8c2d Data block at 8c2d
@ $8c2d label=chicken_entity
B $8c2d,8,8
c $8c35 Routine at 8c35
D $8c35 Used by the routine at #R$8e26.
@ $8c35 label=game_over
C $8c35,3 clear screen and attrs of play area
C $8c3e,3 game over at 64,48
C $8c44,3 show a line of text, first byte is attr
C $8c47,3 show game statistics
N $8c4a This entry point is used by the routine at #R$96c9.
@ $8c4a label=loc_8C4A
C $8c4a,2 20 loops of 65536 delay
@ $8c4f label=gameover_delay
b $8c59 Data block at 8c59
@ $8c59 label=gameover_msg
B $8c59,1,1 bright white
T $8c5a,8,8
B $8c62,1,1
c $8c63 food item handler
@ $8c63 label=h_food
C $8c63,3 save entity position for undraw
C $8c66,3 touching food?
C $8c69,2 jump if so
C $8c6b,3 draw 16x16 entity
@ $8c6e label=loc_8C6E
C $8c71,4 remove food item
C $8c78,2 food adds 64 health
C $8c7d,1 add food value
C $8c80,2 exceeded maximum?
C $8c82,2 jump if not
@ $8c84 label=loc_8C84
C $8c84,2 cap energy at maximum
@ $8c86 label=loc_8C86
C $8c89,3 draw chicken energy bar
c $8c8c flash score on game start
D $8c8c Used by the routine at #R$8cb7.
@ $8c8c label=flash_score
C $8c8c,1 timer expired?
C $8c8d,3 score flash timer
C $8c90,2 jump if so (stop flash)
C $8c92,2 16th frame?
C $8c94,3 call if so (beep)
C $8c9a,3 convert pixel coords in HL to attribute address
@ $8c9f label=loc_8C9F
C $8ca0,2 enable flash attribute
@ $8ca7 label=loc_8CA7
C $8caa,3 convert pixel coords in HL to attribute address
@ $8caf label=loc_8CAF
C $8cb0,2 disable flash attribute
c $8cb7 player appear handler for game start
@ $8cb7 label=h_player_appear
C $8cb7,3 score flash timer
C $8cba,1 score flash timer active?
C $8cbb,2 jump if so
C $8cc0,2 0 in range 0-3?
C $8cc2,3 jump if not
C $8cc5,3 increase drawn height
C $8cc8,3 player spawn sprite
C $8ccb,3 return address of sprite A in DE
C $8cce,1 normal player sprite height
C $8ccf,3 reached full reveal height?
C $8cd2,2 jump if so
N $8cd4 This entry point is used by the routine at #R$8d45.
@ $8cd4 label=loc_8CD4
C $8cf8,3 player spawn sprite
C $8cfb,3 set player graphic
C $8cfe,3 draw entity graphic (no attrs)
N $8d12 This entry point is used by the routine at #R$8d45.
@ $8d12 label=loc_8D12
C $8d1a,1 1/4 colour change rate
C $8d1b,2 ink 0-7
C $8d1d,2 jump if not black
C $8d1f,1 convert black to blue
@ $8d20 label=loc_8D20
C $8d20,2 add bright bit
C $8d22,3 set player attr
C $8d28,3 set spawn appearance width/height
C $8d2f,3 player appearance sound
@ $8d32 label=loc_8D32
C $8d32,3 player spawn sprite
C $8d35,3 set player graphic
C $8d38,4 no x movement
C $8d3c,4 no y movement
C $8d40,4 no auto-steps
c $8d45 player death animation handler
@ $8d45 label=h_death
C $8d48,2 3/4 animation rate for death
C $8d4a,2 jump if colouring this frame instead
C $8d4c,3 reduce player visible height
C $8d4f,3 jump if after zero
C $8d52,3 player spawn sprite
C $8d55,3 return address of sprite A in DE
@ $8d5b label=loc_8D5B
C $8d5b,3 place a tombstone at the player position
C $8d5e,3 prepare player to spawn
c $8d61 copy initial game state to working state area
D $8d61 Used by the routine at #R$7d9a.
@ $8d61 label=reset_game_state
C $8d61,3 initial game state
C $8d64,3 working game state
C $8d67,3 0x10000-player, rather than real init data size!
c $8d6d reduce auto-walk counter
D $8d6d Used by the routine at #R$8d77.
@ $8d6d label=auto_walk_step
C $8d70,2 auto-walk active?
C $8d72,1 return if not
C $8d73,3 take a step
c $8d77 read controls and apply player movement
D $8d77 Used by the routines at #R$80d2, #R$8dc4 and #R$8e26.
@ $8d77 label=control_player
C $8d7a,3 blank entity?
C $8d80,3 reduce auto-walk counter
C $8d86,2 can move left/right or up/down
C $8d8b,3 save entity position for undraw
C $8d8e,3 return controls in A (FUDLR order, negative logic)
C $8d91,1 FUDLR
C $8d93,3 no movement yet
C $8d96,2 left pressed?
C $8d98,2 jump if not
C $8d9b,2 negate for left
@ $8d9e label=loc_8D9E
C $8d9e,2 right pressed?
C $8da0,2 jump if not
@ $8da3 label=loc_8DA3
C $8da3,2 down pressed?
C $8da5,2 jump if not
@ $8da8 label=loc_8DA8
C $8da8,2 up pressed?
C $8daa,2 jump if not
C $8dad,2 negate for up
@ $8db0 label=loc_8DB0
C $8db0,1 DE value from function entry
C $8db1,3 decelerate player movement
C $8db4,1 BC value from function entry
C $8db5,3 apply player movement, including auto-walk
C $8db8,3 check if walls are blocking movement in DE
C $8dbb,3 check if player is standing in a doorway
C $8dbe,3 check if decor is blocking movement in DE
C $8dc1,3 apply movement in DE
c $8dc4 serf character handler
@ $8dc4 label=h_serf
C $8dc4,3 walk deceleration
C $8dc7,3 walk acceleration
C $8dca,3 unused
C $8dcd,3 read controls and apply player movement
C $8dd0,3 x velocity
C $8dd3,3 y velocity
C $8dd7,1 is player moving?
C $8dd8,2 jump if not
C $8ddd,2 1/4 update rate
C $8ddf,2 jump if not time
C $8de4,2 keep animation frame bits
C $8de6,2 add base serf graphic
C $8dec,1 moving down?
C $8ded,3 jump if so
C $8df0,2 abs
@ $8df2 label=loc_8DF2
C $8df4,1 moving right?
C $8df5,3 jump if so
C $8df8,2 abs
@ $8dfa label=loc_8DFA
C $8dfa,1 moving more up/down than left/right?
C $8dfb,2 jump if so
C $8dfe,1 moving up?
C $8e02,3 jump if so
C $8e05,2 offset to down sprites
@ $8e07 label=loc_8E07
C $8e07,2 offset to right sprites
@ $8e09 label=loc_8E09
C $8e0c,3 play walk clicks if due
@ $8e0f label=loc_8E0F
C $8e0f,3 return controls in A (FUDLR order, negative logic)
C $8e12,2 fire pressed?
C $8e14,3 call if so (fire weapon)
@ $8e1a label=loc_8E1A
C $8e1b,1 moving left?
C $8e1f,3 jump if so
C $8e22,2 offset to right sprites
c $8e26 knight character handler
@ $8e26 label=h_knight
C $8e26,3 walk deceleration
C $8e29,3 walk acceleration
C $8e2c,3 unused
C $8e2f,3 read controls and apply player movement
C $8e32,3 current x velocity
C $8e35,3 current y velocity
C $8e39,1 player moving?
C $8e3a,2 jump if not
C $8e3f,2 1/4 update rate
C $8e41,2 jump if not time
C $8e46,2 keep animation frame bits
C $8e48,1 add base knight graphic
C $8e4d,1 moving down?
C $8e4e,3 jump if so
C $8e51,2 abs
@ $8e53 label=loc_8E53
C $8e55,1 moving right?
C $8e56,3 jump if so
C $8e59,2 abs
@ $8e5b label=loc_8E5B
C $8e5b,1 moving more up/down than left/right?
C $8e5c,2 jump if so
C $8e5f,1 moving up?
C $8e63,3 jump if so
C $8e66,2 offset to down sprites
@ $8e68 label=loc_8E68
C $8e68,2 offset to right sprites
@ $8e6a label=loc_8E6A
C $8e6d,3 play walk clicks if due
@ $8e70 label=loc_8E70
C $8e70,3 return controls in A (FUDLR order, negative logic)
C $8e73,2 fire pressed?
C $8e75,3 call if so (fire weapon)
N $8e78 This entry point is used by the routines at #R$80d2 and #R$8dc4.
@ $8e78 label=loc_8E78
C $8e78,3 check whether to add new room creatures
C $8e7e,2 16th game loop?
C $8e80,2 jump if not
C $8e85,1 reduce health by 1
C $8e8b,3 draw chicken energy bar
N $8e8e This entry point is used by the routines at #R$81f0, #R$8301, #R$845f, #R$85f7 and #R$8787.
@ $8e8e label=loc_8E8E
C $8e8e,3 draw entity to display (no attrs)
C $8e91,3 set attrs covering previous and new position
@ $8e94 label=loc_8E94
C $8e95,1 moving left?
C $8e99,3 jump if so (use left sprites)
C $8e9c,2 offset to down sprites
N $8ea0 This entry point is used by the routines at #R$8a1e, #R$8ed7 and #R$98c8.
@ $8ea0 label=player_dead
C $8ea3,1 no lives left?
C $8ea4,3 jump if so
C $8ea7,1 lose a life
C $8eaf,2 is player active?
C $8eb1,2 jump if so
@ $8eb6 label=loc_8EB6
C $8eb9,3 return address of sprite A in DE
C $8ec0,2 blank graphic, death handler
@ $8ec6 label=loc_8EC6
c $8ed7 reduce health by 32
D $8ed7 Used by the routine at #R$85b2.
@ $8ed7 label=damage_32
C $8eda,2 lose 32 health
C $8ede,2 jump if positive
@ $8ee1 label=loc_8EE1
C $8ee4,3 draw chicken energy bar
@ $8ee9 label=loc_8EE9
C $8eec,3 draw chicken energy bar
c $8eef apply player movement, including auto-walk
D $8eef Used by the routine at #R$8d77.
@ $8eef label=move_player
C $8ef2,2 auto-walk active?
C $8ef4,2 jump if so
C $8ef6,1 x acceleration
C $8ef7,3 add x velocity
C $8efa,3 jump if moving left
C $8efd,1 max x velocity?
C $8efe,2 jump if not
C $8f00,1 limit velocity to max
@ $8f01 label=loc_8F01
C $8f01,3 update x velocity
C $8f04,1 y acceleration
C $8f05,3 add y velocity
C $8f08,3 jump if moving up
C $8f0b,1 max y velocity?
C $8f0c,2 jump if not
C $8f0e,1 limit velocity to max
@ $8f0f label=loc_8F0F
C $8f0f,3 update y velocity
C $8f15,3 return signed top nibble
C $8f18,1 x offset
C $8f1c,3 return signed top nibble
C $8f1f,1 y move offset
@ $8f21 label=loc_8F21
C $8f21,2 abs
C $8f23,1 max x velocity?
C $8f24,2 jump if not
C $8f26,1 limit velocity to max
@ $8f27 label=loc_8F27
C $8f27,2 re-negate
@ $8f2b label=loc_8F2B
C $8f2b,2 abs
C $8f2d,1 max y velocity?
C $8f2e,2 jump if not
C $8f30,1 limit velocity to max
@ $8f31 label=loc_8F31
C $8f31,2 re-negate
@ $8f35 label=auto_walk
C $8f35,3 x velocity
C $8f38,1 x movement?
C $8f39,3 jump if left
C $8f3c,2 any non-fractional movement?
C $8f3e,2 jump if not
C $8f40,2 walk right 2 pixels
@ $8f42 label=loc_8F42
C $8f42,1 x walk in e
C $8f46,1 auto-walk up/down?
C $8f47,3 jump if up
C $8f4a,2 any non-fractional movement?
C $8f4c,2 jump if not
C $8f4e,2 walk down 2 pixels
@ $8f50 label=loc_8F50
C $8f50,1 y walk in d
@ $8f52 label=loc_8F52
C $8f52,2 negate for left
C $8f54,2 any non-fractional movement?
C $8f56,2 jump if not
C $8f58,2 walk left 2 pixels
@ $8f5c label=loc_8F5C
C $8f5c,2 negate for up
C $8f5e,2 any non-fractional movement?
C $8f60,2 jump if not
C $8f62,2 walk up 2 pixels
N $8f66 This entry point is used by the routine at #R$8d77.
@ $8f66 label=apply_move
C $8f66,4 x movement allowed?
C $8f6a,2 jump if not
C $8f6c,1 delta x
C $8f6d,3 apply x movement
@ $8f73 label=loc_8F73
C $8f73,4 y movement allowed?
C $8f77,1 return if not
C $8f78,1 delta y
C $8f79,3 apply y movement
c $8f80 return signed top nibble
D $8f80 Used by the routine at #R$8eef.
@ $8f80 label=get_signed_b7_4
C $8f80,1 positive?
C $8f81,3 jump if so
C $8f84,2 negate
C $8f89,1 high nibble to low nibble
C $8f8a,2 keep low nibble
C $8f8c,2 re-negate
@ $8f8f label=loc_8F8F
C $8f92,1 high nibble to low nibble
C $8f93,2 keep low nibble
c $8f96 decelerate player movement
D $8f96 Used by the routine at #R$8d77.
@ $8f96 label=slow_player
C $8f99,2 is auto-walk active?
C $8f9b,1 return if so
C $8f9f,1 x movement?
C $8fa0,2 jump if not
C $8fa2,3 jump if left
C $8fa5,1 decelerate
C $8fa6,3 jump if still positive
@ $8fa9 label=stop_x
C $8fa9,1 stopped on x axis
@ $8faa label=loc_8FAA
C $8faa,3 update x velocity
@ $8fad label=loc_8FAD
C $8fb0,1 y movement?
C $8fb1,1 return if not
C $8fb2,3 jump if moving up
C $8fb5,1 decelerate
C $8fb6,3 jump if still positive
@ $8fb9 label=stop_y
C $8fb9,1 clear auto-walk up/down
@ $8fba label=loc_8FBA
C $8fba,3 update y velocity
@ $8fbe label=loc_8FBE
C $8fbe,1 decelerate
C $8fbf,3 jump if still negative
C $8fc2,2 stopped on x axis
@ $8fc4 label=loc_8FC4
C $8fc4,1 decelerate
C $8fc5,3 jump if negative
C $8fc8,2 stopped on y axis
c $8fca check if walls are blocking movement in DE
D $8fca Used by the routine at #R$8d77.
@ $8fca label=chk_wall_move
C $8fcc,3 apply x movement
C $8fd0,3 apply y movement
C $8fd3,2 x bit mask
C $8fd5,3 check if position is within room interior
C $8fe4,3 check if position is within room interior
c $8fe9 check if position is within room interior
D $8fe9 Used by the routine at #R$8fca.
@ $8fe9 label=chk_walls
C $8fec,1 player x
C $8fed,2 subtract room centre x
C $8ff2,2 abs
@ $8ff4 label=loc_8FF4
C $8ff4,1 within room width?
C $8ff5,1 return if so
C $8ff7,1 player y
C $8ff8,2 subtract room centre y
C $8ffd,2 abs
@ $8fff label=loc_8FFF
C $8fff,1 within room height?
C $9000,1 return if so
C $9003,3 clear bit in B
c $900a check if decor is blocking movement in DE
D $900a Used by the routine at #R$8d77.
@ $900a label=chk_decor_move
C $9013,2 bit for x movement allowed
C $9016,3 check if room decor is blocking movement
C $9023,2 bit for y movement allowed
C $9026,3 check if room decor is blocking movement
c $902b check if room decor is blocking movement
D $902b Used by the routine at #R$900a.
@ $902b label=chk_decor
C $9035,2 * 2 (bytes per entry)
@ $903b label=loc_903B
C $903b,1 room item LSB
C $903e,1 room item MSB
C $904c,3 in player room?
C $904f,2 jump if so
C $9051,3 8 bytes per entry
C $9054,1 next (linked) entry
@ $9055 label=loc_9055
C $9057,1 x
C $9059,1 y
C $905b,1 flags
C $9092,3 disallow movement bit
@ $9095 label=loc_9095
@ $9098 label=loc_9098
@ $909b label=loc_909B
C $90c7,3 allow movement bit
c $90cc check if player has left through a door
D $90cc Used by the routines at #R$91f2, #R$9222 and #R$9731.
@ $90cc label=check_exit
C $90cf,2 touching enemy?
C $90d1,1 return if so [check]
C $90d6,2 player active?
C $90d8,1 return if not
C $90d9,4 top/bottom door?
C $90dd,2 jump if so
C $90df,2 halve vertical distance
@ $90e1 label=loc_90E1
C $90e4,3 x distance
C $90e7,1 within range?
C $90e8,1 return if not
C $90e9,4 left/right door?
C $90ed,2 jump if so
C $90ef,2 halve horiztonal distance
@ $90f1 label=loc_90F1
C $90f4,3 y distance to exit
C $90f9,1 within range?
C $90fa,1 return no-carry if not
c $90fb check if player is touching entity
D $90fb Used by the routines at #R$8c63, #R$92f5 and #R$988b.
@ $90fb label=check_touching
C $90fe,3 x distance
C $9104,2 abs
@ $9106 label=loc_9106
C $9106,2 within range?
C $9108,1 return if not
C $910c,3 y distance
C $9112,2 abs
@ $9114 label=loc_9114
C $9114,2 within range?
C $9116,1 return no-carry if not
c $9117 move player to room linked to entity (usually door)
D $9117 Used by the routines at #R$91f2, #R$9244 and #R$9731.
@ $9117 label=change_room
C $9117,3 get connected door exit
C $911d,3 move player to connected room
C $9120,3 bits 3-0 used for x offset
C $9123,1 * 2
C $9126,3 add x
C $9129,3 set player x to exit
C $912c,3 bits 7-4 used for y offset
C $9131,1 * 2 (effectively)
C $9134,2 invert
C $9136,3 add y
C $9139,3 set player y to exit
C $913c,3 auto-walk into the room
N $9147 This entry point is used by the routine at #R$7d9a.
@ $9147 label=enter_room
C $914a,3 mark room A as visited
C $914d,3 clear screen and attrs of play area
C $9150,3 draw lines that make up outer room frame
C $9153,3 draw side-panel colours, which follow room colour
C $9156,3 draw any items in player inventory
C $9159,3 room entry sound effect
c $915f open door handler
@ $915f label=h_door_open
C $9162,2 2 alternating tasks
C $9164,3 jump if we're checking exits this time
C $916a,1 door timer expired?
C $916b,2 jump if so
C $916d,1 reduce timer
C $9171,3 jump to check exits
@ $9174 label=loc_9174
C $9177,1 player standing in doorway?
C $9178,3 jump if so (run exit logic only)
@ $917d label=h_door_closed
C $917d,3 closed door handler
C $9180,2 2 alternating tasks
C $9182,3 jump if we're drawing this time
C $9188,1 door timer expired?
C $9189,3 jump if so
C $9190,3 draw room item
@ $9193 label=loc_9193
C $9193,2 0x5E * 2 / 50 = 3.76 seconds, due to halved timer processing
C $9198,3 save door attr
C $91a1,3 undraw door
C $91a4,3 entity type
C $91a7,2 toggle open/close state
C $91a9,3 set door type for both linked entities
C $91ac,3 redraw door
C $91b0,3 restore door attr
C $91b3,3 update solid/passable door state
C $91b6,3 draw room item
C $91b9,3 door sound (short burst of white noise)
c $91bc closed trapdoor handler
@ $91bc label=h_trap_closed
C $91c0,3 draw room item
@ $91c5 label=h_trap_open
C $91c5,3 open trapdoor handler
C $91c8,1 zero?
C $91c9,3 jump if not
@ $91cc label=trap_common
C $91db,2 toggle open/closed state
C $91e7,3 draw room item
C $91ea,3 door sound (short burst of white noise)
c $91ed big door exit handler
@ $91ed label=h_big_door_exit
C $91ed,3 32x32 size
c $91f2 door exit handler
D $91f2 Used by the routines at #R$915f and #R$9421.
@ $91f2 label=h_door_exit
C $91f2,3 17x17 exit size
N $91f5 This entry point is used by the routines at #R$91ed and #R$961b.
@ $91f5 label=loc_91F5
C $91f5,3 check if player has left through a door
C $91f8,3 move player to room linked to entity (usually door)
C $91fb,3 draw room item
c $91fe draw room item
D $91fe Used by the routines at #R$915f, #R$91bc, #R$91f2, #R$9244, #R$9252, #R$9421, #R$961b and #R$9731.
@ $91fe label=h_room_item
C $91fe,3 xpos
C $9201,3 ypos
C $9205,3 graphic
C $9208,3 attr
C $920b,3 B=attr, C=graphic, E=xpos, D=ypos
C $920e,3 b0 set if room content drawn
C $9211,1 room content drawn?
C $9212,1 return if so
c $9213 Routine at 9213
D $9213 Used by the routines at #R$8b8a, #R$915f and #R$91bc.
@ $9213 label=draw_rot_obj
C $9213,3 xpos
C $9216,3 ypos
C $9219,3 graphic index
C $921c,3 orientation
c $9222 return if player has required key (C if opened, NC if locked)
D $9222 Used by the routines at #R$9244 and #R$9252.
@ $9222 label=check_key_colour
C $9225,2 locked door colour index
C $922a,3 HL = HL + A
C $922d,1 key colour attr
C $922e,2 key graphic
C $9230,3 is player carrying the required key colour?
C $9233,3 jump if not
C $9236,3 enter linked object (door etc.)
C $9239,3 17x17 size
C $923c,3 check if player has left through a door
@ $923f label=loc_923F
C $9242,1 door locked
c $9244 coloured locked door handler
@ $9244 label=h_door_locked
C $9244,3 does player have the required key colour?
C $9247,3 jump if not
C $924a,2 open door graphic
N $924c This entry point is used by the routine at #R$9252.
@ $924c label=loc_924C
C $924c,3 set door type for both linked entities
C $924f,3 move player to room linked to entity (usually door)
c $9252 coloured cave locked door handler
@ $9252 label=h_cave_locked
C $9252,3 return if player has required key (C if opened, NC if locked)
C $9255,3 draw room item
C $9258,2 open cave graphic
b $925c Data block at 925c
@ $925c label=key_attrs
B $925c,1,1 red
B $925d,1,1 green
B $925e,1,1 cyan
B $925f,1,1 yellow
c $9260 set door type for both linked entities
D $9260 Used by the routines at #R$915f and #R$9244.
@ $9260 label=set_door_type
C $9263,1 set door graphic
C $9266,2 linked entry
C $926a,1 set linked door graphic
c $926c HL = HL + A
D $926c Used by the routines at #R$9222 and #R$a00e.
@ $926c label=add_hl_a
c $9273 check if player is carrying object E with colour D
D $9273 Used by the routines at #R$8906, #R$8988 and #R$9222.
@ $9273 label=check_carrying
C $9273,2 3 inventory slots to search
@ $9278 label=loc_9278
C $9278,1 item colour
C $9279,1 match?
C $927b,2 jump if not
C $927d,1 item graphic
C $927e,1 match?
C $927f,1 return if so
@ $9280 label=loc_9280
C $9282,1 next inventory slot
c $9286 get connected door exit
D $9286 Used by the routines at #R$9117 and #R$9546.
@ $9286 label=get_linked_door
C $928a,2 swap 8-byte entry
c $9291 draw all non-monster entities in the current room
D $9291 Used by the routine at #R$7e13.
@ $9291 label=draw_entities
@ $9295 label=loc_9295
C $9298,1 slot used?
C $9299,2 jump if not
C $929e,3 in player room?
C $92a1,2 jump if not
C $92a3,3 draw entity graphic (no attrs)
@ $92a6 label=loc_92A6
C $92a6,3 8 bytes per entry
C $92ae,3 end marker
C $92b2,2 more 8-byte entries to process?
C $92b4,2 jump back if so
@ $92b6 label=loc_92B6
C $92b9,1 slot used?
C $92ba,2 jump if not
C $92bf,3 in player room?
C $92c2,2 jump if not
C $92c4,3 draw entity graphic (no attrs)
@ $92c7 label=loc_92C7
C $92c7,3 16 bytes per entry
C $92cf,3 end of 16-byte entities
C $92d3,2 more 16-byte entries to draw?
C $92d5,2 jump back if so
c $92d8 clear pickup key flag
D $92d8 Used by the routine at #R$92f5.
@ $92d8 label=pickup_released
C $92db,2 clear b1 (pickup key not pressed)
N $92e0 This entry point is used by the routines at #R$8c63, #R$92f5, #R$95d7 and #R$988b.
@ $92e0 label=draw_16x16
C $92e0,2 16 lines high by default
c $92e2 set spawn appearance width/height
D $92e2 Used by the routine at #R$8cb7.
@ $92e2 label=set_appear_w_h
C $92e8,2 x aligned on cell boundary?
C $92ea,2 2 bytes wide
C $92ee,1 extra byte needed
@ $92ef label=loc_92EF
C $92f2,3 set attrs covering previous and new position
c $92f5 pickup item handler
@ $92f5 label=h_pickup_item
C $92f5,3 save entity position for undraw
C $92fb,1 if pick-up key pressed?
C $92fc,2 jump if not
C $9301,2 is pick-up allowed?
C $9303,2 jump if not
C $9309,2 is player active?
C $930b,2 jump if not
C $930d,3 is player touching item?
C $9310,2 jump if not
C $9315,2 disallow further pickups
C $931a,3 drop last item in inventory
C $931d,3 move items 1+2 to slots 2+3
C $9320,3 add item to inventory slot 1
C $9323,3 draw any items in player inventory
c $9326 add item to inventory slot 1
D $9326 Used by the routine at #R$92f5.
@ $9326 label=add_inventory
C $932c,1 entity LSB
C $932e,1 entity MSB
C $9333,1 graphic
C $9342,3 set attrs covering previous and new position
c $934c move items 1+2 to slots 2+3
D $934c Used by the routines at #R$92f5 and #R$93e3.
@ $934c label=shift_inventory
C $9352,3 2 items * 4 bytes
C $9355,2 shift up items
c $9358 drop last item in inventory
D $9358 Used by the routines at #R$92f5 and #R$93e3.
@ $9358 label=drop_item
C $9361,1 return if no item to drop
C $9363,1 graphic idx
C $936a,1 set item room
C $9373,1 set item xpos
C $9378,1 set item ypos
C $937a,1 inventory colour
C $937b,1 set item attr
C $9385,3 draw entity graphic (no attrs)
c $938b check whether pick-up key has been pressed
D $938b Used by the routine at #R$7e13.
@ $938b label=check_pickup_key
C $938b,2 read V/C/X/Z/Shift and B/N/M/Sym/Space rows
C $9392,2 non-zero if Symbol Shift or Z pressed
N $9398 This entry point is used by the routine at #R$93be.
@ $9398 label=read_cursor
C $939c,2 xxx67890
C $939f,2 7 key
C $93a3,1 0xxx6789
C $93a4,1 90xxx678
C $93a5,2 ?+6+8 keys
C $93a9,1 890xxx67
C $93aa,1 7890xxx6
C $93ab,2 0 key
C $93b1,2 xxx54321
C $93b7,1 1xxx5432
C $93b8,1 21xxx543
C $93b9,1 321xxx54
C $93ba,2 5 key
c $93be return controls in A (FUDLR order, negative logic)
D $93be Used by the routines at #R$80d2, #R$8d77, #R$8dc4 and #R$8e26.
@ $93be label=read_controls
C $93c9,2 read Kempston joystick
@ $93cd label=read_keyboard
C $93d1,2 xxxTREWQ
C $93d5,2 W key
C $93da,2 Q key
C $93df,2 ___TRE__
C $93e1,1 ___TREQW
c $93e3 Routine at 93e3
@ $93e3 label=h_blank
C $93e7,2 is player active?
C $93e9,1 return if not
C $93ed,1 pick-up key down?
C $93ee,2 jump if not
C $93f3,2 pick-up allowed?
C $93f5,2 jump if not
C $93f7,2 pickup key pressed
C $93fc,3 drop last item in inventory
C $93ff,3 move items 1+2 to slots 2+3
C $940b,3 draw any items in player inventory
@ $940e label=loc_940E
C $9411,2 pickup key not processed
@ $9417 label=loc_9417
C $941a,2 pickup key released
c $9421 Routine at 9421
@ $9421 label=h_barrel
C $9424,2 subtract serf base graphic
@ $9428 label=h_bookcase
C $942b,2 subtract wizard base graphic
@ $942f label=h_clock
C $9432,1 subtract knight base graphic
@ $9433 label=loc_9433
C $9433,2 required player type to pass through?
C $9435,2 jump if not
C $9437,3 enter linked object (door etc.)
C $943a,3 door exit handler
@ $943d label=loc_943D
C $9440,3 draw room item
c $9443 prepare player to spawn
D $9443 Used by the routines at #R$7d9a and #R$8d45.
@ $9443 label=prepare_player
C $9447,2 base character graphic
C $9449,2 offset to desired facing direction
C $944b,3 set spawn graphic
C $944e,3 current player room
C $9451,3 respawn in same room
C $945a,3 player entity size
C $945d,2 copy to live player
C $945f,2 flash score for 104 frames
C $9461,3 score flash timer
C $9467,2 first game spawn? (full lives)
C $9469,2 jump if so (skip drawing player)
C $9471,3 draw entity graphic (no attrs)
@ $9476 label=loc_9476
C $9476,2 starting energy
C $947b,3 draw chicken energy bar
C $947e,3 draw lives sprites in side panel
b $9481 blank graphic and h_player_appear handler
@ $9481 label=player_template
B $9481,8,8
c $9489 check for pause key, return when not paused
D $9489 Used by the routine at #R$7e13.
@ $9489 label=check_pause
C $9489,1 disable interrupts to suspend FRAMES counter advance
C $9490,2 pause (space/shift) pressed?
C $9492,1 return if not
C $9494,2 any other key on the same row pressed?
C $9496,1 return if so
@ $9497 label=loc_9497
C $949d,2 space/shift pressed?
C $949f,2 jump if so (wait until released)
@ $94a1 label=loc_94A1
C $94a7,2 space/shift pressed?
C $94a9,2 jump if not (main pause loop)
@ $94ab label=loc_94AB
C $94b1,2 space/shift pressed?
C $94b3,2 jump if so (wait until pause key released)
c $94b6 set locations of ACG key pieces
D $94b6 Used by the routine at #R$7d9a.
@ $94b6 label=place_key_pieces
C $94c1,1 * 2
C $94c2,1 * 3 (3 key pieces per entry)
C $94cb,3 first key piece room
C $94ce,3 8 bytes per entity
C $94d1,2 3 key pieces
@ $94d3 label=loc_94D3
b $94dd Data block at 94dd
@ $94dd label=acg_key_rooms
B $94dd,24,3
c $94f5 randomise which doors can open/close
D $94f5 Used by the routine at #R$7d9a.
@ $94f5 label=randomise_doors
C $94f8,1 set ROM addr LSB
C $94f9,3 0-49
C $94fc,2 limit to 4K (0000-0FFF)
C $94fe,2 add 4K (1000-1FFF)
C $9500,1 set ROM addr MSB
C $9502,3 pairs of linked items, including doors
C $9505,3 pairs of linked items, including doors
C $9508,3 16 bytes per entry
@ $950b label=loc_950B
C $950c,1 read ROM byte
C $950f,2 ROM value >= 0x70 (~56% chance)
C $9511,2 jump if so (door always open)
C $9514,1 same value?
C $9515,2 jump if not (no change)
C $9517,2 cave doorway?
C $9519,2 jump if so
C $951b,2 normal doorway?
C $951d,2 jump if so
@ $951f label=loc_951F
C $951f,1 next entry
C $9521,1 next entry
C $9522,1 return if hit end of RAM
@ $9526 label=loc_9526
C $9526,2 mode?
@ $9528 label=loc_9528
C $952f,1 + 5
@ $9542 label=loc_9542
C $9542,2 mode?
c $9546 update solid/passable door state
D $9546 Used by the routine at #R$915f.
@ $9546 label=update_door
C $9549,2 is door open?
C $954b,2 jump if so
N $954d This entry point is used by the routines at #R$9222, #R$9421 and #R$961b.
@ $954d label=enter_door
C $954d,3 enter linked object (door etc.)
C $9550,2 object is solid
C $9557,3 get connected door exit
C $955d,2 linked object is solid
N $9565 This entry point is used by the routines at #R$9222, #R$9421 and #R$961b.
@ $9565 label=loc_9565
C $9568,2 object can be passed through
C $956f,3 get connected door exit
C $9575,2 linked object can be passed through
c $957d check if player is standing in a doorway
D $957d Used by the routine at #R$8d77.
@ $957d label=check_doorway
C $9583,1 increase interior width
C $9584,1 increase interior height
C $9585,3 player x
C $9588,3 player y
C $958c,2 subtract room centre x
C $9591,2 abs
@ $9593 label=loc_9593
C $9593,1 within interior width?
C $9594,2 jump if so
C $9596,1 mark as in left/right doorway
@ $9597 label=loc_9597
C $9598,2 subtract room centre y
C $959d,2 abs
@ $959f label=loc_959F
C $959f,1 within interior height?
C $95a0,2 jump if so
C $95a2,1 mark as in top/bottom doorway
@ $95a3 label=loc_95A3
C $95a4,3 non-zero if in a doorway
c $95a9 place a tombstone at the player position
D $95a9 Used by the routine at #R$8d45.
@ $95a9 label=place_tombstone
C $95a9,3 tombstone entities
C $95ac,3 8 bytes per entity
C $95af,2 4 tombstone slots
@ $95b1 label=loc_95B1
C $95b2,1 free slot?
C $95b3,2 jump if so
C $95b5,1 next slot
@ $95b9 label=loc_95B9
C $95b9,2 bright cyan
C $95bf,2 tombstone graphic
C $95c3,3 copy remaining details from player entity
C $95c6,3 8 bytes minus the graphic we've written
C $95cb,1 jump return address
c $95cc draw entity in HL
D $95cc Used by the routine at #R$96c9.
@ $95cc label=draw_entity_hl
C $95d1,3 draw entity graphic (no attrs)
c $95d7 Attributes: thunk
@ $95d7 label=h_tombstone
C $95d7,3 draw 16x16 entity
c $95da advance the clock 1 frame
D $95da Used by the routine at #R$7ec5.
@ $95da label=clock_tick
C $95dd,2 1 second elapsed?
C $95df,1 return if not
C $95e0,2 subtract 1 second
C $95e2,3 store back [this keeps LSB in 0-49 range!]
C $95e9,1 add a second
C $95ec,2 60 seconds?
C $95ee,2 jump if not
C $95f0,2 reset seconds
C $95f4,1 add a minute
C $95f7,2 60 minutes?
C $95f9,2 jump if not
C $95fb,2 reset minutes
C $95ff,1 add an hour
C $9601,2 clip hours to 0-15
@ $9604 label=loc_9604
C $9604,3 time coords
c $9607 print clock time at position HL
D $9607 Used by the routine at #R$9641.
@ $9607 label=print_clock
C $9607,3 convert coords in HL to display address in HL
C $960f,3 print a single BCD digit
C $9618,3 print B BCD bytes at DE
c $961b ACG exit door handler
@ $961b label=h_acg_exit
C $961b,3 graphic idx
C $961e,3 4 bytes per inventory slot
C $9622,2 ACG key part 1?
C $9624,2 jump if not
C $9626,1 next slot
C $9628,2 ACG key part 2?
C $962a,2 jump if not
C $962c,1 next slot
C $962e,2 ACG key part 3?
C $9630,2 jump if not
C $9632,3 enter linked object (door etc.)
C $9635,3 48x32
@ $963b label=loc_963B
C $963e,3 draw room item
c $9641 show game statistics
D $9641 Used by the routines at #R$8c35 and #R$96c9.
@ $9641 label=game_stats
C $9641,3 calculate percentage of rooms visited
C $9644,3 time header at 64,64
C $964a,3 show a line of text, first byte is attr
C $964d,3 score header at 64,80
C $9653,3 show a line of text, first byte is attr
C $9656,3 percent header at 64,96
C $965c,3 show a line of text, first byte is attr
C $9665,3 clock at 128,64
C $9668,3 print clock time at position HL
C $966b,3 score at 128,80
C $966e,3 print player score at position HL
C $9671,3 percent at 128,96
C $9674,3 convert coords in HL to display address in HL
C $967c,3 print B BCD bytes at DE
b $967f Data block at 967f
@ $967f label=time_msg
B $967f,1,1 bright cyan
T $9680,14,11,3
B $968e,1,1
b $968f Data block at 968f
@ $968f label=score_msg
B $968f,1,1 bright cyan
T $9690,14,14
B $969e,1,1
b $969f Data block at 969f
@ $969f label=percent_msg
B $969f,1,1 bright cyan
T $96a0,14,14
B $96ae,1,1
c $96af mark room A as visited
D $96af Used by the routine at #R$9117.
@ $96af label=visit_room
C $96af,1 room A
C $96b8,3 visit rooms bit array
C $96c3,3 self-modify bit in SET below
@ $96c6 label=loc_96C6
C $96c6,2 mark room as visited
c $96c9 calculate percentage of rooms visited
D $96c9 Used by the routine at #R$9641.
@ $96c9 label=calc_visited
C $96c9,3 visit rooms bit array
C $96cc,3 8*19 bits covers all rooms
C $96cf,2 D decremented for every visited room
@ $96d2 label=loc_96D2
C $96d3,1 8 visited bits
@ $96d5 label=loc_96D5
C $96d9,1 counter zero?
C $96da,2 jump if not
C $96dc,2 reset counter
C $96de,2 add 2% for every 3 visited rooms
@ $96e1 label=loc_96E1
C $96e7,1 add 1% to total
N $96ec This entry point is used by the routine at #R$7e13.
@ $96ec label=game_complete
C $96ec,3 congratulate player on completion
C $96ef,3 undraw player
C $96f8,3 congratulations at 64,32
C $96fe,3 show a line of text, first byte is attr
C $9701,3 escaped message at 64,48
C $9707,3 show a line of text, first byte is attr
C $970a,3 show game statistics
b $9710 Data block at 9710
@ $9710 label=congrat_msg
B $9710,1,1
T $9711,14,14
@ $971f bfix=defb $d3 ; fix typo in congratulations message
B $971f,1,1
b $9720 Data block at 9720
@ $9720 label=escape_msg
B $9720,1,1
T $9721,15,15
B $9730,1,1
c $9731 Routine at 9731
D $9731 Used by the routine at #R$91bc.
@ $9731 label=chk_trap_exit
C $9731,3 24x24
C $9734,3 fallen into trap door?
C $9737,3 jump if not
C $973a,3 clear screen and attrs of play area
C $973d,2 room 150 is trap door tunnel
C $9741,3 draw trap door lines
C $9746,2 128 frames of tunnel animation
@ $9748 label=loc_9748
@ $974c label=loc_974C
C $974e,1 ~frame counter is effect frequency
C $9750,3 short beep
C $9757,1 same frame?
C $9758,2 loop back to continue sound effect
C $975a,2 frame 1-7?
C $975c,2 black
C $975e,2 jump if so (use black)
C $9760,2 bright white
@ $9762 label=loc_9762
C $976f,2 loop until end of effect
C $9771,3 move player to room linked to entity (usually door)
c $9774 Routine at 9774
D $9774 Used by the routine at #R$9731.
@ $9774 label=draw_tunnel_attrs
C $9774,3 23x11 (for 24x24 final area)
C $977a,3 line pitch is 32 bytes
@ $977d label=loc_977D
@ $9785 label=loc_9785
C $9785,1 draw horizontal bar
C $9786,1 forwards
@ $978b label=loc_978B
C $978b,1 draw vertical bar
C $978c,1 backwards
@ $9793 label=loc_9793
C $9793,1 draw horizontal bar
C $9794,1 backwards
@ $9799 label=loc_9799
C $9799,1 draw vertical bar
C $979a,1 forwards
b $97a9 Data block at 97a9
@ $97a9 label=points_trap
B $97a9,96,2
b $9809 Data block at 9809
@ $9809 label=lines_trap
B $9809,97,4*24,1
c $986a auto-walk into the room
D $986a Used by the routine at #R$9117.
@ $986a label=set_entry_walk
C $986a,3 b7-6 is door facing direction (00=down, 01=left, 10=up, 11=right)
C $986e,1 move to b1-0
C $986f,1 * 2
C $9870,2 mask to look-up offset
b $9883 Data block at 9883
@ $9883 label=walk_dir
B $9883,2,2 walk down
B $9885,2,2 walk left ($e0 is actually -$20)
B $9887,2,2 walk up ($e0 is actually -$20)
B $9889,2,2 walk right
c $988b mushroom handler
@ $988b label=h_mushroom
C $988b,3 save entity position for undraw
C $988e,3 check if player is touching entity
@ $9893 label=loc_9893
C $9897,2 time to change colour? (every 4 frames)
C $9899,2 jump if not
C $989b,3 cycle colour
@ $989e label=loc_989E
C $98a1,2 4 possible colours
C $98aa,1 new mushroom attr
C $98ab,3 set colour
C $98ae,3 draw 16x16 entity
@ $98b1 label=loc_98B1
C $98bb,3 draw chicken energy bar
C $98be,3 play monster touched sound
b $98c4 Data block at 98c4
@ $98c4 label=mushroom_attrs
B $98c4,1,1 bright red
B $98c5,1,1 bright magenta
B $98c6,1,1 bright yellow
B $98c7,1,1 bright magenta
c $98c8 Routine at 98c8
D $98c8 Used by the routine at #R$988b.
@ $98c8 label=mushroom_death
C $98cb,4 remove mushroom
c $98d2 set positions of red/green/cyan keys, and mummy
D $98d2 Used by the routine at #R$7d9a.
@ $98d2 label=set_key_positions
C $98db,3 set green key room
C $98ec,3 set red key room
C $98ef,3 set Mummy room to match
C $9900,3 set cyan key room
c $9904 Routine at 9904
D $9904 Used by the routine at #R$98d2.
@ $9904 label=get_key_room
b $990c Data block at 990c
@ $990c label=green_key_rooms
@ $9914 label=red_key_rooms
@ $991c label=cyan_key_rooms
B $990c,24,8
c $9924 periodically replenish consumed food
D $9924 Used by the routine at #R$7e13.
@ $9924 label=replenish_food
C $992d,1 9-bit counter value zero?
C $992e,1 return if not
C $9932,3 8 bytes per item
C $9935,1 next food item
C $993c,3 end marker
C $9940,2 end of list?
C $9942,2 jump if so
C $9947,3 in player room?
C $994a,1 return if so
C $994e,1 does food still exist?
C $994f,1 return if so
C $9950,3 pseudo random value
C $9953,2 8 available food items
C $9955,2 add food base graphic
C $9957,3 set food graphic (replenish)
@ $995b label=loc_995B
N $9962 This entry point is used by the routine at #R$9213.
@ $9962 label=draw_orientation
N $9965 This entry point is used by the routine at #R$9980.
@ $9965 label=jump_table_b
C $9969,1 move b7-5 to b2-0
w $9970 Data block at 9970
@ $9970 label=disp_funcs
W $9970,2,2 normal
W $9972,6,2
W $9978,2,2 180 degrees
W $997a,2,2
W $997c,2,2 right 90 degrees
W $997e,2,2 left 90 degrees
c $9980 B=attr, C=graphic, E=xpos, D=ypos
D $9980 Used by the routine at #R$91fe.
@ $9980 label=draw_bc_at_de
w $9985 Data block at 9985
@ $9985 label=attr_funcs
W $9985,16,2
c $9995 C=gfx idx, DE=coords
D $9995 Used by the routines at #R$99c9, #R$99e5, #R$9a0a, #R$9a50, #R$9acb, #R$9aef, #R$9b14 and #R$9b5d.
@ $9995 label=get_gfx_data
C $9998,1 1-based
C $99a5,3 convert coords in HL to display address in HL
c $99af IN: C=gfx idx, DE=coords  OUT: HL=attr addr, DE=attr data, B=width, C=height
D $99af Used by the routines at #R$9d25, #R$9d47, #R$9d6f, #R$9da0, #R$9dce, #R$9df8, #R$9e21 and #R$9e55.
@ $99af label=get_gfx_attrs
C $99b2,1 1-based
C $99bf,3 convert pixel coords in HL to attribute address
c $99c9 Routine at 99c9
@ $99c9 label=draw_disp_0
C $99ca,3 map A=0-2 to Z80 opcode used to blend graphics data
C $99d0,3 C=gfx idx, DE=coords
@ $99d3 label=loc_99D3
@ $99d5 label=loc_99D5
@ $99d7 label=loc_99D7
C $99dd,3 move up 1 display line in HL
c $99e5 Routine at 99e5
@ $99e5 label=draw_disp_1
C $99e6,3 map A=0-2 to Z80 opcode used to blend graphics data
C $99ec,3 C=gfx idx, DE=coords
@ $99ef label=loc_99EF
C $99f1,3 add B to DE
@ $99f4 label=loc_99F4
C $99f5,1 graphic data byte
C $99f6,3 mirror bits in A
@ $99f9 label=blend_instr
C $99fa,1 write to display
C $99ff,3 move up 1 display line in HL
C $9a03,3 add B to DE
c $9a0a Routine at 9a0a
@ $9a0a label=draw_disp_2
C $9a0b,3 map A=0-2 to Z80 opcode used to blend graphics data
C $9a11,3 C=gfx idx, DE=coords
C $9a1a,3 add B to DE
@ $9a1e label=loc_9A1E
@ $9a21 label=loc_9A21
@ $9a27 label=loc_9A27
C $9a2a,3 add B to DE
@ $9a36 label=loc_9A36
C $9a3e,3 move up 1 display line in HL
c $9a50 Routine at 9a50
@ $9a50 label=draw_disp_3
C $9a51,3 map A=0-2 to Z80 opcode used to blend graphics data
C $9a57,3 C=gfx idx, DE=coords
@ $9a60 label=loc_9A60
@ $9a63 label=loc_9A63
@ $9a69 label=loc_9A69
C $9a6c,3 add B to DE
@ $9a78 label=loc_9A78
C $9a80,3 move up 1 display line in HL
c $9a92 mirror bits in A
D $9a92 Used by the routines at #R$99e5 and #R$9aef.
@ $9a92 label=mirror_a
@ $9a95 label=loc_9A95
c $9a9d add B to DE
D $9a9d Used by the routines at #R$99e5, #R$9a0a, #R$9a50, #R$9aef, #R$9b14, #R$9d47, #R$9d6f, #R$9da0, #R$9df8 and #R$9e21.
@ $9a9d label=add_de_b
c $9aa5 subtract B from DE
D $9aa5 Used by the routines at #R$9acb, #R$9b14, #R$9b5d, #R$9dce, #R$9e21 and #R$9e55.
@ $9aa5 label=sbc_de_b
c $9aad HL = DE * A
D $9aad Used by the routines at #R$8b8a and #R$9aba.
@ $9aad label=mult_de_a
@ $9ab2 label=loc_9AB2
@ $9ab7 label=loc_9AB7
c $9aba HL = DE + B * C
D $9aba Used by the routines at #R$9acb, #R$9aef, #R$9b14, #R$9b5d, #R$9dce, #R$9df8, #R$9e21 and #R$9e55.
@ $9aba label=hl_de_b_c
C $9abe,1 convert 1-based to 0-based
C $9ac2,3 HL = DE * A
c $9acb Routine at 9acb
@ $9acb label=draw_disp_4
C $9acc,3 map A=0-2 to Z80 opcode used to blend graphics data
C $9ad2,3 C=gfx idx, DE=coords
C $9ad5,3 HL = DE + B * C
@ $9ad8 label=loc_9AD8
@ $9adb label=loc_9ADB
@ $9add label=loc_9ADD
C $9ae3,3 move up 1 display line in HL
C $9ae8,3 subtract B from DE
c $9aef Routine at 9aef
@ $9aef label=draw_disp_5
C $9af0,3 map A=0-2 to Z80 opcode used to blend graphics data
C $9af6,3 C=gfx idx, DE=coords
C $9af9,3 HL = DE + B * C
C $9afc,3 add B to DE
@ $9aff label=loc_9AFF
@ $9b01 label=loc_9B01
C $9b03,3 mirror bits in A
@ $9b06 label=loc_9B06
C $9b0c,3 move up 1 display line in HL
c $9b14 Routine at 9b14
@ $9b14 label=draw_disp_6
C $9b15,3 map A=0-2 to Z80 opcode used to blend graphics data
C $9b1b,3 C=gfx idx, DE=coords
C $9b24,3 add B to DE
C $9b28,3 HL = DE + B * C
@ $9b2b label=loc_9B2B
@ $9b2e label=loc_9B2E
@ $9b34 label=loc_9B34
C $9b37,3 subtract B from DE
@ $9b43 label=loc_9B43
C $9b4b,3 move up 1 display line in HL
c $9b5d Routine at 9b5d
@ $9b5d label=draw_disp_7
C $9b5e,3 map A=0-2 to Z80 opcode used to blend graphics data
C $9b64,3 C=gfx idx, DE=coords
C $9b6d,3 HL = DE + B * C
@ $9b70 label=loc_9B70
@ $9b73 label=loc_9B73
@ $9b79 label=loc_9B79
C $9b7c,3 subtract B from DE
@ $9b88 label=loc_9B88
C $9b90,3 move up 1 display line in HL
c $9ba2 convert coords in HL to display address in HL
D $9ba2 Used by the routines at #R$7d8a, #R$8b8a, #R$9607, #R$9641, #R$9995, #R$9c61, #R$9f80, #R$9f9f, #R$a185, #R$a1b7, #R$a1f3 and #R$a219.
@ $9ba2 label=xy_to_display
c $9bc1 Routine at 9bc1
@ $9bc1 label=pixel_line_down
c $9bd2 convert pixel coords in HL to attribute address
D $9bd2 Used by the routines at #R$7d8a, #R$8c8c, #R$99af, #R$a00e, #R$a1f3 and #R$a240.
@ $9bd2 label=xy_to_attr
c $9bea draw lines that make up outer room frame
D $9bea Used by the routine at #R$9117.
@ $9bea label=draw_room_frame
C $9beb,3 b0 set if room content drawn
N $9bf1 This entry point is used by the routine at #R$9731.
@ $9bf1 label=draw_room_a
C $9bf1,3 room attr colour and style (0-B)
C $9bf7,1 2 bytes per entry
C $9bf9,1 attr colour
C $9c02,3 24x24 room area
C $9c08,3 fill C rows of B columns of value A at address HL
C $9c0c,1 style?
C $9c0f,1 * 2
C $9c12,1 * 4
C $9c13,1 * 6
C $9c22,1 points LSB
C $9c24,1 points MSB
C $9c26,1 lines LSB
C $9c28,1 lines MSB
@ $9c2e label=loc_9C2E
C $9c2f,1 x of first point
C $9c31,2 end marker?
C $9c33,1 return if so
C $9c34,2 * 2 (bytes per point)
C $9c36,3 offset of source x
C $9c3a,3 offset of source y
@ $9c3d label=loc_9C3D
C $9c3d,3 source x
@ $9c40 label=loc_9C40
C $9c40,3 source y
@ $9c43 label=loc_9C43
C $9c44,1 next point x
C $9c46,2 end marker?
C $9c48,2 jump if so (next source point)
C $9c4a,2 * 2 (bytes per point)
C $9c4c,3 offset of target x
C $9c50,3 offset of target y
@ $9c53 label=loc_9C53
C $9c53,3 target x
@ $9c56 label=loc_9C56
C $9c56,3 target y
C $9c5a,3 draw line from (B,C) to (D,E)
C $9c5f,2 next target point
c $9c61 plot pixel at L,H
D $9c61 Used by the routine at #R$9c79.
@ $9c61 label=plot_l_h
@ $9c68 label=loc_9C68
C $9c6f,3 convert coords in HL to display address in HL
C $9c75,1 merge pixel
C $9c76,1 write to display
c $9c79 draw line from (B,C) to (D,E)
D $9c79 Used by the routine at #R$9bea.
@ $9c79 label=draw_line_bc_de
C $9c79,1 move source point to HL
C $9c7b,2 clear flags
C $9c7e,1 drawing upwards?
C $9c7f,2 jump if so
C $9c81,2 abs
C $9c83,2 flag drawing down
@ $9c85 label=loc_9C85
C $9c85,1 vertical count
C $9c87,1 drawing left?
C $9c88,2 jump if so
C $9c8a,2 abs
C $9c8c,2 flag drawing right
@ $9c8e label=loc_9C8E
C $9c8e,1 drawing more horiz than vert?
C $9c95,3 jump if so
C $9c98,3 horiz counter
C $9c9d,1 horiz line size
C $9ca1,1 vert line size
C $9ca2,3 determine Bresenham line slope step
C $9cac,3 HL = -DE
@ $9caf label=loc_9CAF
C $9cb2,2 drawing down?
C $9cb4,2 y step
C $9cb6,2 jump if so
C $9cb8,2 y step
@ $9cba label=loc_9CBA
@ $9cc3 label=loc_9CC3
C $9cc4,3 plot pixel at L,H
C $9cca,1 step partial x
C $9cce,1 step y
C $9cd3,3 plot pixel at L,H
@ $9cd6 label=loc_9CD6
C $9cd8,3 vert counter
C $9ce3,3 determine Bresenham line slope step
C $9ce9,2 drawing right?
C $9ceb,2 jump if so
C $9ced,3 HL = -DE
@ $9cf0 label=loc_9CF0
C $9cf3,2 drawing right?
C $9cf5,2 x step
C $9cf7,2 jump if so
C $9cf9,2 x step
@ $9cfb label=loc_9CFB
@ $9d04 label=loc_9D04
C $9d05,3 plot pixel at L,H
C $9d0c,1 step partial y
C $9d11,1 step x
C $9d16,3 plot pixel at L,H
c $9d19 map A=0-2 to Z80 opcode used to blend graphics data
D $9d19 Used by the routines at #R$99c9, #R$99e5, #R$9a0a, #R$9a50, #R$9acb, #R$9aef, #R$9b14 and #R$9b5d.
@ $9d19 label=get_blend_instr
C $9d1c,1 return
C $9d21,1 return
C $9d24,1 return
c $9d25 Routine at 9d25
@ $9d25 label=draw_attr_0
C $9d26,3 IN
@ $9d29 label=loc_9D29
@ $9d2b label=loc_9D2B
C $9d2b,1 attr byte
C $9d2d,1 skip attr?
C $9d2e,2 jump if so
C $9d30,2 use room attr?
C $9d32,2 jump if not
@ $9d37 label=loc_9D37
C $9d37,1 set attr
@ $9d38 label=loc_9D38
C $9d3c,3 line pitch
C $9d40,2 up a row
c $9d47 Routine at 9d47
@ $9d47 label=draw_attr_1
C $9d48,3 IN
@ $9d4c label=loc_9D4C
C $9d4c,3 add B to DE
@ $9d52 label=loc_9D52
C $9d52,1 attr byte
C $9d54,1 skip attr?
C $9d55,2 jump if so
C $9d57,2 use room attr?
C $9d59,2 jump if not
@ $9d5e label=loc_9D5E
C $9d5e,1 set attr
@ $9d5f label=loc_9D5F
C $9d63,3 line pitch
C $9d67,2 up a row
c $9d6f Routine at 9d6f
@ $9d6f label=draw_attr_2
C $9d70,3 IN
C $9d77,3 add B to DE
@ $9d7a label=loc_9D7A
@ $9d7e label=loc_9D7E
C $9d7e,1 attr byte
C $9d7f,1 skip attr?
C $9d80,2 jump if so
C $9d82,2 use room attr?
C $9d84,2 jump if not
@ $9d89 label=loc_9D89
C $9d89,1 set attr
@ $9d8a label=loc_9D8A
C $9d8a,3 add B to DE
C $9d92,3 line pitch
C $9d96,2 up a row
c $9da0 Routine at 9da0
@ $9da0 label=draw_attr_3
C $9da1,3 IN
@ $9da8 label=loc_9DA8
@ $9dab label=loc_9DAB
C $9dac,1 skip attr?
C $9dad,2 jump if so
C $9daf,2 use room attr?
C $9db1,2 jump if not
@ $9db6 label=loc_9DB6
C $9db6,1 set attr
@ $9db7 label=loc_9DB7
C $9db7,3 add B to DE
C $9dbf,3 line pitch
C $9dc3,2 up a row
c $9dce Routine at 9dce
@ $9dce label=draw_attr_4
C $9dcf,3 IN
C $9dd2,3 HL = DE + B * C
@ $9dd5 label=loc_9DD5
@ $9dd8 label=loc_9DD8
C $9dda,1 skip attr?
C $9ddb,2 jump if so
C $9ddd,2 use room attr?
C $9ddf,2 jump if not
@ $9de4 label=loc_9DE4
C $9de4,1 set attr
@ $9de5 label=loc_9DE5
C $9de9,3 line pitch
C $9ded,2 up a row
C $9df1,3 subtract B from DE
c $9df8 Routine at 9df8
@ $9df8 label=draw_attr_5
C $9df9,3 IN
C $9dfc,3 HL = DE + B * C
C $9dff,3 add B to DE
@ $9e03 label=loc_9E03
@ $9e05 label=loc_9E05
C $9e07,1 skip attr?
C $9e08,2 jump if so
C $9e0a,2 use room attr?
C $9e0c,2 jump if not
@ $9e11 label=loc_9E11
C $9e11,1 set attr
@ $9e12 label=loc_9E12
C $9e16,3 line pitch
C $9e1a,2 up a row
c $9e21 Routine at 9e21
@ $9e21 label=draw_attr_6
C $9e22,3 IN
C $9e29,3 HL = DE + B * C
C $9e2c,3 add B to DE
@ $9e2f label=loc_9E2F
@ $9e33 label=loc_9E33
C $9e34,1 skip attr?
C $9e35,2 jump if so
C $9e37,2 use room attr?
C $9e39,2 jump if not
@ $9e3e label=loc_9E3E
C $9e3e,1 set attr
@ $9e3f label=loc_9E3F
C $9e3f,3 subtract B from DE
C $9e47,3 line pitch
C $9e4b,2 up a row
c $9e55 Routine at 9e55
@ $9e55 label=draw_attr_7
C $9e56,3 IN
C $9e5d,3 HL = DE + B * C
@ $9e60 label=loc_9E60
@ $9e63 label=loc_9E63
C $9e64,1 skip attr?
C $9e65,2 jump if so
C $9e67,2 use room attr?
C $9e69,2 jump if not
@ $9e6e label=loc_9E6E
C $9e6e,1 set attr
@ $9e6f label=loc_9E6F
C $9e6f,3 subtract B from DE
C $9e77,3 line pitch
C $9e7b,2 up a row
c $9e86 return address of sprite A in DE
D $9e86 Used by the routine at #R$9f80.
@ $9e86 label=get_sprite_a
c $9e89 return address of sprite A in DE
D $9e89 Used by the routines at #R$8cb7, #R$8d45, #R$8e26 and #R$9e96.
@ $9e89 label=get_sprite_addr
c $9e96 return addr of entity sprite addr in DE
D $9e96 Used by the routine at #R$9f9f.
@ $9e96 label=get_entity_sprite
C $9e99,2 return address of sprite A in DE
N $9e9b This entry point is used by the routines at #R$9f4a, #R$9f56 and #R$9fca.
@ $9e9b label=loc_9E9B
@ $9ea8 label=loc_9EA8
@ $9eac label=loc_9EAC
@ $9eaf label=loc_9EAF
N $9eb4 This entry point is used by the routine at #R$9fca.
@ $9eb4 label=loc_9EB4
N $9eb5 This entry point is used by the routine at #R$9fca.
@ $9eb5 label=loc_9EB5
C $9ebc,1 width and height zero?
C $9ebd,1 return if so
N $9ec8 This entry point is used by the routine at #R$9fca.
@ $9ec8 label=loc_9EC8
c $9ece Routine at 9ece
@ $9ece label=draw_unshifted
C $9ed9,3 move up 1 display line in HL
c $9edc Routine at 9edc
D $9edc Used by the routine at #R$9e96.
@ $9edc label=draw_sprite23
@ $9ee4 label=jr_23
N $9ef9 This entry point is used by the routine at #R$9f21.
@ $9ef9 label=draw_2_bytes
N $9f03 This entry point is used by the routines at #R$99c9, #R$99e5, #R$9a0a, #R$9a50, #R$9acb, #R$9aef, #R$9b14, #R$9b5d, #R$9ece, #R$9f13 and #R$a185.
@ $9f03 label=pixel_line_up
C $9f03,1 move up 1 display line in HL
c $9f13 draw 2-byte unshifted graphic
D $9f13 Used by the routine at #R$9f21.
@ $9f13 label=draw_unshifted2
C $9f1e,3 move up 1 display line in HL
c $9f21 Routine at 9f21
D $9f21 Used by the routine at #R$9e96.
@ $9f21 label=draw_sprite2
@ $9f29 label=jr_2
C $9f3c,1 first byte
c $9f40 Routine at 9f40
@ $9f40 label=draw2_entity
c $9f45 Routine at 9f45
@ $9f45 label=undraw_entity_de
c $9f4a draw entity graphic (no attrs)
D $9f4a Used by the routines at #R$814b, #R$83ea, #R$871a, #R$8862, #R$8aff, #R$8cb7, #R$9291, #R$9358, #R$9443, #R$95cc, #R$a14d, #R$a2ce and #R$a311.
@ $9f4a label=draw_entity
C $9f4a,3 prepare for 2-byte drawing
N $9f4d This entry point is used by the routine at #R$9f40.
@ $9f4d label=loc_9F4D
c $9f56 Routine at 9f56
D $9f56 Used by the routines at #R$81f0, #R$871a, #R$8c63, #R$9326 and #R$98c8.
@ $9f56 label=undraw_entity
C $9f56,3 prepare for 2-3 byte drawing
N $9f59 This entry point is used by the routine at #R$9f45.
@ $9f59 label=loc_9F59
C $9f66,2 aligned to cell boundary?
C $9f68,2 2 bytes wide
C $9f6a,2 jump if so
C $9f6c,1 3 bytes needed
@ $9f6d label=loc_9F6D
c $9f80 prepare for 2-3 byte drawing
D $9f80 Used by the routines at #R$9f56 and #R$9fca.
@ $9f80 label=prepare_draw23
C $9f80,3 return address of sprite A in DE
N $9f83 This entry point is used by the routines at #R$9f45 and #R$9f56.
@ $9f83 label=prepare_draw23_de
C $9f86,1 xpos (b2-0 determine shifting)
C $9f88,1 * 2 (bytes per
C $9f89,2 relative jump offset
C $9f8b,2 originally unshifted?
C $9f8d,2 jump if not (use calculated offset)
C $9f8f,2 jr offset back to 'draw_unshifted'
@ $9f91 label=loc_9F91
C $9f91,3 set jr offset for data shifting
C $9f94,3 convert coords in HL to display address in HL
N $9f9b This entry point is used by the routine at #R$9f9f.
@ $9f9b label=loc_9F9B
c $9f9f prepare for 2-byte drawing
D $9f9f Used by the routines at #R$9f4a and #R$9fca.
@ $9f9f label=prepare_draw2
C $9f9f,3 return addr of entity sprite addr in DE
N $9fa2 This entry point is used by the routines at #R$9f40 and #R$9f56.
@ $9fa2 label=prepare_draw2_de
C $9fa2,3 x
C $9fa5,3 y
C $9fa8,1 xpos (b2-0 determine shifting)
C $9faa,1 * 2 (bytes per
C $9fab,2 relative jump offset
C $9fad,2 originally unshifted?
C $9faf,2 jump if not (use calculated offset)
C $9fb1,2 r offset back to 'draw_unshifted'
@ $9fb3 label=loc_9FB3
C $9fb3,3 set jr offset for data shifting
C $9fb6,2 2 bytes wide
C $9fba,1 any shift requires 3 bytes
@ $9fbb label=loc_9FBB
C $9fbe,3 convert coords in HL to display address in HL
c $9fca draw entity to display (no attrs)
D $9fca Used by the routine at #R$8e26.
@ $9fca label=draw_entity_disp
C $9fca,3 prepare for 2-byte drawing
C $9fce,3 prepare for 2-3 byte drawing
N $9fd1 This entry point is used by the routine at #R$9f56.
@ $9fd1 label=loc_9FD1
@ $9fec label=loc_9FEC
c $9ffb save entity position for undraw
D $9ffb Used by the routines at #R$81db, #R$81f0, #R$82f1, #R$8301, #R$845f, #R$85f7, #R$862e, #R$8672, #R$871a, #R$8787, #R$87a6, #R$8862, #R$8906, #R$8988, #R$89ed, #R$8a2f, #R$8a80, #R$8aff, #R$8c63, #R$8d77, #R$92f5 and #R$988b.
@ $9ffb label=save_entity
c $a00e paint entity with its current attr colour
D $a00e Used by the routines at #R$a14d and #R$a311.
@ $a00e label=set_entity_attrs
C $a00e,3 xpos
C $a014,3 ypos
N $a01a This entry point is used by the routines at #R$81f0, #R$871a, #R$8e26, #R$92e2 and #R$9326.
@ $a01a label=set_entity_attrs2
C $a01a,3 xpos
C $a01d,3 ypos
C $a020,3 entity attr
C $a035,1 attr height
C $a03c,1 same as previous xpos?
C $a03d,2 jump if so (no change)
C $a03f,2 jump if less (moving left, add 1)
C $a041,1 moving right (add 2)
@ $a042 label=loc_A042
@ $a043 label=loc_A043
C $a046,1 ypos unchanged?
C $a048,2 jump if so (no change)
C $a04a,2 jump if less (moving up, add 4)
C $a04c,2 moving down (add 8)
@ $a04e label=loc_A04E
@ $a050 label=loc_A050
C $a050,1 handler table index
C $a051,3 convert pixel coords in HL to attribute address
C $a057,3 3x3 handlers (in 4x3 table) to cover attr for moving entity
C $a05a,2 * 2 (bytes per entry)
C $a05c,3 HL = HL + A
C $a05f,1 handler LSB
C $a061,1 handler MSB
C $a063,1 execute handler
w $a064 Data block at a064
@ $a064 label=attr_handlers
W $a064,8,8 3x3 handlers (in 4x3 table) to cover attr for moving entity
W $a06c,8,8 extra delay applied to inactive creatures
W $a074,6,6 draw attrs for moving up
c $a07a draw attrs for unchanged position
@ $a07a label=attr_draw_c
N $a07b This entry point is used by the routine at #R$a0ec.
@ $a07b label=loc_A07B
@ $a07d label=loc_A07D
C $a07d,1 entity attr
C $a082,3 line pitch
C $a086,2 up a row
c $a08d draw attrs for moving right
@ $a08d label=attr_draw_r
N $a08e This entry point is used by the routine at #R$a127.
@ $a08e label=loc_A08E
C $a091,1 room attr
@ $a093 label=loc_A093
C $a093,1 entity attr
C $a098,3 line pitch
C $a09c,2 up a row
c $a0a3 draw attrs for moving left
@ $a0a3 label=attr_draw_l
N $a0a4 This entry point is used by the routine at #R$a0fe.
@ $a0a4 label=loc_A0A4
@ $a0a6 label=loc_A0A6
C $a0a6,1 entity attr
C $a0aa,1 room attr
C $a0ac,3 line pitch
C $a0b0,2 up a row
c $a0b7 draw attrs for moving down
@ $a0b7 label=attr_draw_d
@ $a0b8 label=loc_A0B8
@ $a0ba label=loc_A0BA
C $a0ba,1 entity attr
C $a0bf,3 line pitch
C $a0c3,2 up a row
N $a0c9 This entry point is used by the routines at #R$a0d2 and #R$a110.
@ $a0c9 label=cond_room_row
C $a0ca,2 out of screen top?
C $a0cc,1 return if so
@ $a0cd label=loc_A0CD
C $a0cd,1 room attr
c $a0d2 draw attrs for moving down-right
@ $a0d2 label=attr_draw_dr
@ $a0d3 label=loc_A0D3
C $a0d6,1 room attr
@ $a0d8 label=loc_A0D8
C $a0dd,3 line pitch
C $a0e1,2 up a row
c $a0ec draw attrs for moving up
@ $a0ec label=attr_draw_u
C $a0f0,3 line pitch
C $a0f3,1 down a row
@ $a0f5 label=loc_A0F5
C $a0f5,1 entity attr
c $a0fe draw attrs for moving up-left
@ $a0fe label=attr_draw_ul
C $a102,3 line pitch
C $a105,1 down a row
C $a107,1 extra row
@ $a108 label=loc_A108
c $a110 draw attrs for moving down-left
@ $a110 label=attrs_draw_dl
@ $a111 label=loc_A111
@ $a113 label=loc_A113
C $a113,1 room attr
C $a117,1 entity attr
C $a119,3 line pitch
C $a11d,2 up a row
c $a127 draw attrs for moving up-right
@ $a127 label=attr_draw_ur
C $a12b,3 line pitch
C $a12e,1 down a row
C $a131,1 extra row
@ $a132 label=loc_A132
C $a132,1 entity attr
c $a13b draw any items in player inventory
D $a13b Used by the routines at #R$9117, #R$92f5 and #R$93e3.
@ $a13b label=draw_inventory
C $a13b,3 coords of first inventory item
C $a141,2 3 items to draw
@ $a143 label=loc_A143
C $a143,3 draw inventory item at position DE
C $a147,2 next inventory position
c $a14d draw inventory item at position DE
D $a14d Used by the routine at #R$a13b.
@ $a14d label=draw_inv_item
C $a155,1 entity LSB
C $a157,1 object in this slot?
C $a15a,2 jump if so
C $a15c,2 blank space
@ $a15e label=loc_A15E
C $a15f,3 set graphic
C $a162,3 set xpos
C $a165,3 set ypos
C $a16a,3 set attr
C $a171,3 draw entity graphic (no attrs)
C $a174,3 paint entity with its current attr colour
b $a17d Data block at a17d
@ $a17d label=entity_to_draw
B $a17d,8,8
c $a185 Routine at a185
D $a185 Used by the routines at #R$a14d and #R$a2ce.
@ $a185 label=clear_sprite
C $a18b,3 convert coords in HL to display address in HL
C $a18e,2 20 pixels high
@ $a190 label=loc_A190
C $a190,2 clear 2 bytes wide
C $a196,3 move up 1 display line in HL
c $a19c add BC to current score
D $a19c Used by the routines at #R$871a and #R$8988.
@ $a19c label=add_score_bc_bcd
C $a19c,3 end of score is 1s
C $a1a0,1 add 10s and 1s
C $a1a5,1 add 1000s and 100s
C $a1aa,2 carry 10000s
N $a1ae This entry point is used by the routine at #R$a219.
@ $a1ae label=loc_A1AE
c $a1b7 print player score at position HL
D $a1b7 Used by the routine at #R$9641.
@ $a1b7 label=print_score
C $a1b7,3 convert coords in HL to display address in HL
C $a1bd,2 3 bytes = 6 digits
N $a1bf This entry point is used by the routines at #R$9607, #R$9641 and #R$a1c9.
@ $a1bf label=print_bcd_bytes
C $a1bf,1 print B BCD bytes at DE
C $a1c6,3 print a single character
c $a1c9 print a single BCD digit
D $a1c9 Used by the routine at #R$9607.
@ $a1c9 label=print_bcd_digit
C $a1cc,3 print a single character
C $a1d0,2 print B BCD bytes at DE
c $a1d3 print a single character
D $a1d3 Used by the routines at #R$a1b7, #R$a1c9, #R$a1f3 and #R$a219.
@ $a1d3 label=print_char
C $a1e3,2 8 lines in character cell
@ $a1e5 label=loc_A1E5
C $a1e7,1 next source byte
C $a1e8,1 next pixel line
C $a1ee,2 back to start address
C $a1f1,1 next position to the right
c $a1f3 show a line of text, first byte is attr
D $a1f3 Used by the routines at #R$7caf, #R$8c35, #R$9641 and #R$96c9.
@ $a1f3 label=colour_text
C $a1f4,3 convert coords in HL to display address in HL
C $a1f7,1 text attr colour
C $a1fa,1 display addr in HL
C $a1fc,3 convert pixel coords in HL to attribute address
N $a1ff This entry point is used by the routine at #R$7d8a.
@ $a1ff label=loc_A1FF
C $a1ff,1 attr addr in HL'
C $a201,2 last character?
C $a203,2 jump if so
C $a205,3 print a single character
C $a20b,1 set attr
@ $a210 label=loc_A210
C $a210,2 strip end marker b7
C $a212,3 print a single character
C $a217,1 set attr
c $a219 draw side panel background scroll
D $a219 Used by the routine at #R$7d9a.
@ $a219 label=draw_side_panel
C $a225,3 8x24
@ $a228 label=loc_A228
C $a22a,3 convert coords in HL to display address in HL
@ $a22d label=loc_A22D
C $a22f,3 print a single character
c $a240 draw side-panel colours, which follow room colour
D $a240 Used by the routine at #R$9117.
@ $a240 label=draw_panel_attrs
C $a243,3 convert pixel coords in HL to attribute address
C $a246,3 8x24
C $a24c,1 invert for colour contrast
C $a251,2 red or brighter?
C $a253,2 change blue to bright green
@ $a255 label=loc_A255
C $a255,1 save attr value
@ $a257 label=loc_A257
@ $a259 label=loc_A259
C $a259,1 set panel attr
C $a25e,3 line pitch
C $a261,1 down a row
C $a269,3 convert pixel coords in HL to attribute address
C $a26f,3 3x3 (rosette body)
C $a272,3 fill C rows of B columns of value A at address HL
C $a278,3 2x2 (rosette tail)
C $a27b,3 fill C rows of B columns of value A at address HL
C $a281,3 convert pixel coords in HL to attribute address
C $a285,1 rosette centre
C $a289,3 convert pixel coords in HL to attribute address
C $a28c,3 6x3
C $a28f,2 bright white (lives)
C $a291,3 fill C rows of B columns of value A at address HL
C $a297,3 convert pixel coords in HL to attribute address
C $a29a,3 6x4
C $a29d,2 bright yellow (chicken)
C $a29f,3 fill C rows of B columns of value A at address HL
C $a2a5,3 convert pixel coords in HL to attribute address
C $a2a8,3 6x1
C $a2ab,2 bright cyan (score caption)
C $a2ad,3 fill C rows of B columns of value A at address HL
C $a2b0,3 6x1
C $a2b3,2 bright white (score)
C $a2b5,3 fill C rows of B columns of value A at address HL
C $a2bb,3 convert pixel coords in HL to attribute address
C $a2be,3 6x1
C $a2c1,2 bright magenta (time caption)
C $a2c3,3 fill C rows of B columns of value A at address HL
C $a2c9,2 bright white (time)
C $a2cb,3 fill C rows of B columns of value A at address HL
c $a2ce draw lives sprites in side panel
D $a2ce Used by the routines at #R$7d9a and #R$9443.
@ $a2ce label=draw_lives
C $a2d8,2 extract character type from menu
C $a2da,2 offset to first graphic
C $a2dc,3 character type
C $a2df,4 bright white
C $a2e3,3 coords of lives in side panel
C $a2ef,1 number of lives to show
C $a2f0,2 up to 3 lives to draw
@ $a2f2 label=loc_A2F2
C $a2f3,3 clear lives location
C $a2f7,1 life to show?
C $a2f8,2 jump if not
C $a2fa,3 draw player character
@ $a2fd label=loc_A2FD
C $a300,2 offset to next life position
C $a30a,2 min lives is zero
@ $a30c label=loc_A30C
C $a30c,2 draw remaining slots
c $a311 draw menu icons for controls and player acharacters
D $a311 Used by the routine at #R$7c19.
@ $a311 label=draw_menu_icons
C $a315,3 entities for icons in the menu position
C $a318,2 3*2 icons for controls, 3 player characters
@ $a31a label=loc_A31A
C $a325,3 draw entity graphic (no attrs)
C $a328,3 paint entity with its current attr colour
b $a331 Data block at a331
@ $a331 label=menu_entities
B $a331,8,8 cursor (left)
B $a339,8,8 cursor (right)
B $a341,8,8 kempston (left)
B $a349,8,8 kempston (right)
B $a351,8,8 keyboard (left)
B $a359,8,8 keyboard (right)
B $a361,8,8 knight (facing left)
B $a369,8,8 wizard (facing left)
B $a371,8,8 serf (facing left)
c $a379 determine Bresenham line slope step
D $a379 Used by the routine at #R$9c79.
@ $a379 label=line_slope
@ $a382 label=loc_A382
@ $a391 label=loc_A391
@ $a399 label=loc_A399
c $a39e HL = -DE
D $a39e Used by the routine at #R$9c79.
@ $a39e label=minus_de
c $a3a8 Routine at a3a8
D $a3a8 Used by the routines at #R$9731, #R$a41b, #R$a427, #R$a438 and #R$a445.
@ $a3a8 label=click
C $a3a8,2 length 1 for a short click
N $a3aa This entry point is used by the routines at #R$a3c2, #R$a3c7, #R$a3e0, #R$a3ef, #R$a408, #R$a445, #R$a48b and #R$a4b0.
@ $a3aa label=beep
C $a3aa,2 freq B (low is higher), length C
@ $a3af label=loc_A3AF
@ $a3b6 label=loc_A3B6
C $a3ba,2 freq B (low is higher), length C
N $a3bd This entry point is used by the routine at #R$9326.
@ $a3bd label=inventory_sound
C $a3c0,2 freq B (low is higher), length C
c $a3c2 Routine at a3c2
D $a3c2 Used by the routine at #R$9358.
@ $a3c2 label=drop_sound
C $a3c2,3 long high beep
C $a3c5,2 freq B (low is higher), length C
c $a3c7 play walk clicks if due
D $a3c7 Used by the routines at #R$80d2, #R$8dc4 and #R$8e26.
@ $a3c7 label=walk_sound
C $a3cc,2 low click time?
C $a3ce,2 jump if so
C $a3d0,2 click this frame?
C $a3d2,1 return if not
C $a3d3,3 high beep
C $a3d6,2 freq B (low is higher), length C
@ $a3d8 label=walk_low
C $a3d8,2 click this frame?
C $a3da,1 return if not
C $a3db,3 low beep
C $a3de,2 freq B (low is higher), length C
c $a3e0 Routine at a3e0
D $a3e0 Used by the routine at #R$8c8c.
@ $a3e0 label=start_beep
C $a3e0,3 long low beep
C $a3e3,2 freq B (low is higher), length C
c $a3e5 play monster touched sound
D $a3e5 Used by the routines at #R$85b2 and #R$988b.
@ $a3e5 label=touching_sound
N $a3e8 This entry point is used by the routines at #R$a403 and #R$a485.
@ $a3e8 label=queue_sound
C $a3eb,1 blank graphic with required sound handler (64 or 65)
C $a3ed,1 effect counter
c $a3ef play next note of sound effect
@ $a3ef label=h_sound_effect
C $a3ef,3 hit sound counter
C $a3f4,3 also used for freq and length
C $a3fb,3 freq B (low is higher), length C
N $a3fe This entry point is used by the routines at #R$a408 and #R$a48b.
@ $a3fe label=clear_sound
c $a403 room entry sound effect
D $a403 Used by the routine at #R$9117.
@ $a403 label=entry_sound
c $a408 play next note of sound effect
@ $a408 label=h_sound_effect2
C $a408,3 effect counter
C $a40d,3 also used for freq and length
C $a418,3 freq B (low is higher), length C
c $a41b play axe throw sound
D $a41b Used by the routine at #R$8134.
@ $a41b label=axe_sound
@ $a41d label=loc_A41D
C $a41f,1 set freq
c $a427 play sword throw sound
D $a427 Used by the routine at #R$8283.
@ $a427 label=sword_sound
@ $a429 label=loc_A429
C $a430,1 set freq
c $a438 play fireball throw sound
D $a438 Used by the routine at #R$814b.
@ $a438 label=fireball_sound
@ $a43a label=loc_A43A
C $a43d,1 set freq
c $a445 weapon disappearing sound
D $a445 Used by the routine at #R$81f0.
@ $a445 label=weapon_pop
C $a445,3 number of creatures processed this frame
C $a44c,1 * 16
C $a44d,2 + 15
C $a44f,2 7-bit
@ $a452 label=loc_A452
N $a45f This entry point is used by the routine at #R$8cb7.
@ $a45f label=appear_sound
C $a45f,3 player appearance sound
C $a46b,3 freq B (low is higher), length C
N $a46e This entry point is used by the routines at #R$915f and #R$91bc.
@ $a46e label=door_sound
C $a46e,3 48 bytes * 8 bits to output
C $a471,3 ROM start
@ $a474 label=loc_A474
C $a474,1 read ROM byte for white noise
@ $a477 label=loc_A477
C $a477,2 rotate to use &0eac bit of the byte
C $a47a,2 keep speaker bit
C $a47c,2 click
C $a47e,2 loop for &0eac bit in the byte
C $a481,1 done all bytes?
C $a482,2 jump back if not
c $a485 Routine at a485
D $a485 Used by the routine at #R$8c63.
@ $a485 label=eat_sound
C $a485,3 A0 is blank graphic with food-eaten handler (below)
c $a48b eaten food sound effect handler
@ $a48b label=h_food_eaten
C $a49b,2 duration
C $a49d,3 freq B (low is higher), length C
b $a4a0 Data block at a4a0
@ $a4a0 label=eat_tone_table
B $a4a0,16,8
c $a4b0 weapon bounce sound
D $a4b0 Used by the routine at #R$81f0.
@ $a4b0 label=bounce_sound
C $a4bb,3 freq B (low is higher), length C
w $a4be Data block at a4be
@ $a4be label=sprite_table
W $a4be,8,8 &00
W $a4c6,8,8 &04
W $a4ce,8,8 &08
W $a4d6,8,8 &0c
W $a4de,8,8 &10
W $a4e6,8,8 &14
W $a4ee,8,8 &18
W $a4f6,8,8 &1c
W $a4fe,8,8 &20
W $a506,8,8 &24
W $a50e,8,8 &28
W $a516,8,8 &2c
W $a51e,8,8 &30
W $a526,8,8 &34
W $a52e,8,8 &38
W $a536,8,8 &3c
W $a53e,8,8 &40
W $a546,8,8 &44
W $a54e,8,8 &48
W $a556,8,8 &4c
W $a55e,8,8 &50
W $a566,8,8 &54
W $a56e,8,8 &58
W $a576,8,8 &5c
W $a57e,8,8 &60
W $a586,8,8 &64
W $a58e,8,8 &68
W $a596,8,8 &6c
W $a59e,8,8 &70
W $a5a6,8,8 &74
W $a5ae,8,8 &78
W $a5b6,8,8 &7c
W $a5be,8,8 &80
W $a5c6,8,8 &84
W $a5ce,8,8 &88
W $a5d6,8,8 &8c
W $a5de,8,8 &90
W $a5e6,8,8 &94
W $a5ee,8,8 &98
W $a5f6,8,8 &9c
W $a5fe,2,2 &a0
w $a600 Data block at a600
@ $a600 label=gfx_data
@ $a626 label=chicken_empty_addr
@ $a64e label=gfx_attrs
W $a600,114,2
W $a672,2,2 full chicken attrs handled separately
W $a674,2,2 empty chicken attrs handled separately
W $a676,38,2
b $a69c Data block at a69c
@ $a69c label=g_door_locked
@ $a6fe label=a_red_locked
@ $a70c label=a_green_locked
@ $a71a label=a_cyan_locked
@ $a728 label=a_yellow_locked
@ $a736 label=a_red_cave_locked
@ $a744 label=a_green_cave_locked
@ $a752 label=a_cyan_cave_locked
@ $a760 label=a_yellow_cave_locked
@ $a76e label=g_door_frame
@ $a7d0 label=a_door_frame
@ $a7de label=a_cave_door_frame
@ $a7ec label=g_table
@ $a846 label=a_table
B $a69c,440,2,4*24,2,4*3,2,4*3,2,4*3,2,4*3,2,4*3,2,4*3,2,4*3,2,4*3,2,4*24,2,4*3,2,4*3,2,4*22,2,4
w $a854 Data block at a854
@ $a854 label=room_attrs
W $a854,16,16 00
W $a864,16,16 08 room attr colour and style (0-B)
W $a874,16,16 16
W $a884,16,16 24
W $a894,16,16 32
W $a8a4,16,16 40
W $a8b4,16,16 48
W $a8c4,16,16 56
W $a8d4,16,16 64
W $a8e4,16,16 72
W $a8f4,16,16 80
W $a904,16,16 88
W $a914,16,16 96
W $a924,16,16 104
W $a934,16,16 112
W $a944,16,16 120
W $a954,16,16 128
W $a964,16,16 136
W $a974,14,14 144
b $a982 Data block at a982
@ $a982 label=room_styles
B $a982,1,1 style 0 = plain square
B $a983,1,1
W $a984,4,2
B $a988,1,1 style 1 = cave square
B $a989,1,1
W $a98a,4,2
B $a98e,1,1 style 2 = octagonal square
B $a98f,1,1
W $a990,4,2
B $a994,1,1 style 3 = wide rectangle
B $a995,1,1
W $a996,4,2
B $a99a,1,1 style 4 = tall rectangle
B $a99b,1,1
W $a99c,4,2
B $a9a0,1,1 style 5 = stairs high@bottom
B $a9a1,1,1
W $a9a2,4,2
B $a9a6,1,1 style 6 = stairs high@top
B $a9a7,1,1
W $a9a8,4,2
B $a9ac,1,1 style 7 = stairs high@right
B $a9ad,1,1
W $a9ae,4,2
B $a9b2,1,1 style 8 = stairs high@left
B $a9b3,1,1
W $a9b4,4,2
B $a9b8,1,1 style 9 = wide cave
B $a9b9,1,1
W $a9ba,4,2
B $a9be,1,1 style 10 = tall cave
B $a9bf,1,1
W $a9c0,4,2
B $a9c4,1,1 style 11 = final room
B $a9c5,1,1
W $a9c6,4,2
B $a9ca,1,1 style 12 = trapdoor tunnel
B $a9cb,1,1
W $a9cc,4,2
b $a9d0 Data block at a9d0
@ $a9d0 label=points_final
@ $a9d8 label=lines_final
@ $a9df label=points_square
@ $a9ef label=lines_rect
@ $aa04 label=points_cav_square
@ $aa78 label=lines_cav_square
@ $ab34 label=points_2
@ $ab54 label=line_octagon
@ $ab7d label=points_wide
@ $ab8d label=points_tall
@ $ab9d label=stair_points_t
@ $abe9 label=stair_lines
@ $ac4a label=stair_points_b
@ $ac96 label=stair_points_r
@ $ace2 label=stair_points_l
B $a9d0,862,2*4,3*2,1,2*8,5*4,1,2*58,5,2*2,5,2,5,2,5,2,5*2,2*2,5*2,2*2,8,3,4,2,3,2*3,4,5*2,2*3,3,5,3,5,2*2,5*2,2*3,3,4,2,4*3,2,5,2,4,2*3,5,2,1,2*16,5*8,1,2*55,4,2,4,3,4,2,4,2,4,2,4,2,4,2,4,2,5,3*2,2,3,2,3,2,3,2,3,2,3,2,5,2,1,2
b $ad2e Data block at ad2e
@ $ad2e label=g_knight_down1
@ $ad53 label=g_knight_down2
@ $ad78 label=g_knight_down3
@ $ad9d label=g_knight_up1
@ $adc2 label=g_knight_up2
@ $ade7 label=g_knight_up3
@ $ae0c label=g_knight_left1
@ $ae31 label=g_knight_left2
@ $ae56 label=g_knight_left3
@ $ae7b label=g_knight_right1
@ $aea0 label=g_knight_right2
@ $aec5 label=g_knight_right3
B $ad2e,444,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2
b $aeea Data block at aeea
@ $aeea label=g_none
B $aeea,2,1
b $aeec Data block at aeec
@ $aeec label=g_blank
B $aeec,33,1,2
b $af0d Data block at af0d
@ $af0d label=g_leaf
@ $af2e label=g_key
@ $af43 label=g_wine
@ $af6c label=g_bottle
@ $af95 label=g_wing
@ $afb6 label=g_whip
@ $afd7 label=g_frogsleg
@ $aff8 label=g_dessert
@ $b019 label=g_apple
B $af0d,301,1,2*16,1,2*10,1,2*20,1,2*20,1,2*16,1,2*16,1,2*16,1,2*16,1,2
b $b03a Data block at b03a
@ $b03a label=panel_chars
B $b03a,8,8 &0000
B $b042,8,8 &0008
B $b04a,8,8 &0010
B $b052,8,8 &0018
B $b05a,8,8 &0020
B $b062,8,8 &0028
B $b06a,8,8 &0030
B $b072,8,8 &0038
B $b07a,8,8 &0040
B $b082,8,8 &0048
B $b08a,8,8 &0050
B $b092,8,8 &0058
B $b09a,8,8 &0060
B $b0a2,8,8 &0068
B $b0aa,8,8 &0070
B $b0b2,8,8 &0078
B $b0ba,8,8 &0080
B $b0c2,8,8 &0088
B $b0ca,8,8 &0090
B $b0d2,8,8 &0098
B $b0da,8,8 &00a0
B $b0e2,8,8 &00a8
B $b0ea,8,8 &00b0
B $b0f2,8,8 &00b8
B $b0fa,8,8 &00c0
B $b102,8,8 &00c8
B $b10a,8,8 &00d0
B $b112,8,8 &00d8
B $b11a,8,8 &00e0
B $b122,8,8 &00e8
B $b12a,8,8 &00f0
B $b132,8,8 &00f8
B $b13a,8,8 &0100
B $b142,8,8 &0108
B $b14a,8,8 &0110
B $b152,8,8 &0118
B $b15a,8,8 &0120
B $b162,8,8 &0128
B $b16a,8,8 &0130
B $b172,8,8 &0138
B $b17a,8,8 &0140
B $b182,8,8 &0148
B $b18a,8,8 &0150
B $b192,8,8 &0158
B $b19a,8,8 &0160
B $b1a2,8,8 &0168
B $b1aa,8,8 &0170
B $b1b2,8,8 &0178
B $b1ba,8,8 &0180
B $b1c2,8,8 &0188
B $b1ca,8,8 &0190
B $b1d2,8,8 &0198
B $b1da,8,8 &01a0
B $b1e2,8,8 &01a8
B $b1ea,8,8 &01b0
B $b1f2,8,8 &01b8
B $b1fa,8,8 &01c0
B $b202,8,8 &01c8
B $b20a,8,8 &01d0
B $b212,8,8 &01d8
B $b21a,8,8 &01e0
B $b222,8,8 &01e8
B $b22a,8,8 &01f0
B $b232,8,8 &01f8
B $b23a,8,8 &0200
B $b242,8,8 &0208
B $b24a,8,8 &0210
B $b252,8,8 &0218
B $b25a,8,8 &0220
B $b262,8,8 &0228
B $b26a,8,8 &0230
B $b272,8,8 &0238
B $b27a,8,8 &0240
B $b282,8,8 &0248
B $b28a,8,8 &0250
B $b292,8,8 &0258
B $b29a,8,8 &0260
B $b2a2,8,8 &0268
B $b2aa,8,8 &0270
B $b2b2,8,8 &0278
B $b2ba,8,8 &0280
B $b2c2,8,8 &0288
B $b2ca,8,8 &0290
B $b2d2,8,8 &0298
B $b2da,8,8 &02a0
B $b2e2,8,8 &02a8
B $b2ea,8,8 &02b0
B $b2f2,8,8 &02b8
B $b2fa,8,8 &02c0
B $b302,8,8 &02c8
B $b30a,8,8 &02d0
B $b312,8,8 &02d8
B $b31a,8,8 &02e0
B $b322,8,8 &02e8
b $b32a Data block at b32a
@ $b32a label=panel_data
B $b32a,8,8 0
B $b332,8,8 8
B $b33a,8,8 16
B $b342,8,8 24
B $b34a,8,8 32
B $b352,8,8 40
B $b35a,8,8 48
B $b362,8,8 56
B $b36a,8,8 64
B $b372,8,8 72
B $b37a,8,8 80
B $b382,8,8 88
B $b38a,8,8 96
B $b392,8,8 104
B $b39a,8,8 112
B $b3a2,8,8 120
B $b3aa,8,8 128
B $b3b2,8,8 136
B $b3ba,8,8 144
B $b3c2,8,8 152
B $b3ca,8,8 160
B $b3d2,8,8 168
B $b3da,8,8 176
B $b3e2,8,8 184
b $b3ea Data block at b3ea
@ $b3ea label=g_bigdoor_frame
@ $b4ac label=a_bigdoor_frame
@ $b4c6 label=g_ghost_picture
@ $b528 label=a_ghost_picture
@ $b536 label=g_serf_down1
@ $b55b label=g_serf_down2
@ $b580 label=g_serf_down3
@ $b5a5 label=g_serf_up1
@ $b5ca label=g_serf_up2
@ $b5ef label=g_serf_up3
@ $b614 label=g_serf_left1
@ $b639 label=g_serf_left2
@ $b65e label=g_serf_left3
@ $b683 label=g_serf_right1
@ $b6a8 label=g_serf_right2
@ $b6cd label=g_serf_right3
@ $b6f2 label=g_clock
@ $b774 label=a_clock
@ $b786 label=g_wizard_down1
@ $b7af label=g_wizard_down2
@ $b7d8 label=g_wizard_down3
@ $b801 label=g_wizard_up1
@ $b82a label=g_wizard_up2
@ $b853 label=g_wizard_up3
@ $b87c label=g_wizard_left1
@ $b8a5 label=g_wizard_left2
@ $b8ce label=g_wizard_left3
@ $b8f7 label=g_wizard_right1
@ $b920 label=g_wizard_right2
@ $b949 label=g_wizard_right3
@ $b972 label=g_sword7
@ $b98b label=g_sword4
@ $b9a6 label=g_sword5
@ $b9c7 label=g_sword6
@ $b9e2 label=g_sword3
@ $b9fb label=g_sword2
@ $ba16 label=g_sword1
@ $ba37 label=g_sword8
@ $ba58 label=g_axe1
@ $ba79 label=g_axe2
@ $ba9a label=g_axe3
@ $babb label=g_axe4
@ $badc label=g_axe5
@ $bafd label=g_axe6
@ $bb1e label=g_axe7
@ $bb3f label=g_axe8
@ $bb60 label=g_fireball1
@ $bb7f label=g_fireball2
@ $bbbd label=g_fireball3
@ $bbdc label=g_cursor_l
@ $bc05 label=g_cursor_r
@ $bc2e label=g_keyboard_l
@ $bc4f label=g_keyboard_r
@ $bc70 label=g_kempston_l
@ $bc9f label=g_kempston_r
@ $bcce label=g_cave_door_frame
@ $bd30 label=g_pumpkin1
@ $bd57 label=g_pumpkin2
@ $bd7e label=lines_cav_long
@ $be54 label=points_cav_tall
@ $bed0 label=points_cav_wide
B $b3ea,2914,2,6*32,2,6*4,2,4*24,2,4*3,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*18,1,2*19,4*32,2,4*4,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*20,1,2*12,1,2*13,1,2*16,1,2*13,1,2*12,1,2*13,1,2*16,1,2*16,1,2*16,1,2*16,1,2*16,1,2*16,1,2*16,1,2*16,1,2*16,1,2*16,1,2*15,1,2*30,1*2,2*15,1,2*20,1,2*20,1,2*16,1,2*16,1,2*23,1,2*24,4*24,1,2*19,1,2*19,5,2,5,2*2,5,2,5,2,5,2,5,2*2,5,2,5*2,2,4,5,2,5,2,5,2,5,2,5,2,5,2,4,2,5,2,5,2,5,2,5,2,5,2,5,2,5,2,5,2,5,4,3,2,5,2,5,2,5,2,5,1,2
b $bf4c Data block at bf4c
@ $bf4c label=charset
B $bf4c,8,8 space
B $bf54,8,8 !
B $bf5c,8,8 "
B $bf64,8,8
B $bf6c,8,8 %
B $bf74,8,8 (c)
B $bf7c,8,8 space
B $bf84,8,8 '
B $bf8c,16,8
B $bf9c,8,8 *
B $bfa4,8,8 +
B $bfac,8,8 ,
B $bfb4,8,8 -
B $bfbc,8,8 .
B $bfc4,8,8 /
b $bfcc Data block at bfcc
@ $bfcc label=digit_charset
B $bfcc,8,8 0
B $bfd4,8,8 1
B $bfdc,8,8 2
B $bfe4,8,8 3
B $bfec,8,8 4
B $bff4,8,8 5
B $bffc,8,8 6
B $c004,8,8 7
B $c00c,8,8 8
B $c014,8,8 9
B $c01c,56,8
B $c054,8,8 A
B $c05c,8,8 B
B $c064,8,8 C
B $c06c,8,8 D
B $c074,8,8 E
B $c07c,8,8 F
B $c084,8,8 G
B $c08c,8,8 H
B $c094,8,8 I
B $c09c,8,8 J
B $c0a4,8,8 K
B $c0ac,8,8 L
B $c0b4,8,8 M
B $c0bc,8,8 N
B $c0c4,8,8 O
B $c0cc,8,8 P
B $c0d4,8,8 Q
B $c0dc,8,8 R
B $c0e4,8,8 S
B $c0ec,8,8 T
B $c0f4,8,8 U
B $c0fc,8,8 V
B $c104,8,8 W
B $c10c,8,8 X
B $c114,8,8 Y
B $c11c,8,8 Z
b $c124 Data block at c124
@ $c124 label=g_can
@ $c14d label=g_moneybag
@ $c16e label=g_coin
@ $c18f label=g_gem
@ $c1aa label=g_candy
@ $c1cb label=g_chop
@ $c1f4 label=g_lollipop
@ $c219 label=g_icecream
@ $c23a label=g_sparkle1
@ $c253 label=g_sparkle2
@ $c26e label=g_sparkle3
@ $c28d label=g_sparkle4
@ $c2ae label=g_cave_locked
@ $c310 label=g_spider1
@ $c32d label=g_spider2
@ $c34a label=g_spikey1
@ $c36b label=g_spikey2
@ $c38c label=g_blob1
@ $c3a3 label=g_blob2
@ $c3b6 label=g_ghoul1
@ $c3df label=g_ghoul2
@ $c408 label=g_ghost1
@ $c429 label=g_ghost2
@ $c44a label=g_bat1
@ $c46f label=g_bat2
B $c124,872,1,2*20,1,2*16,1,2*16,1,2*13,1,2*16,1,2*20,1,2*18,1,2*16,1,2*12,1,2*13,1,2*15,1,2*17,4*24,1,2*14,1,2*14,1,2*16,1,2*16,1,2*11,1,2*9,1,2*20,1,2*20,1,2*16,1,2*16,1,2*18,1,2
b $c48c Data block at c48c
@ $c48c label=g_chicken_empty
B $c48c,182,2,6
b $c542 Data block at c542
@ $c542 label=g_chicken_full
B $c542,182,2,6
b $c5f8 Data block at c5f8
@ $c5f8 label=g_pop1
@ $c60f label=g_pop2
@ $c62a label=g_pop3
@ $c649 label=g_pop4
@ $c66a label=g_wall_antlers
@ $c6ac label=g_wall_trophy
@ $c6ce label=g_bookcase
@ $c770 label=g_trap_open
@ $c7f2 label=g_trap_closed
@ $c874 label=g_rug
@ $c960 label=a_wall_antlers
@ $c96a label=a_wall_trophy
@ $c970 label=a_bookcase
@ $c986 label=a_trap_open
@ $c998 label=a_trap_closed
@ $c9aa label=a_rug
@ $c9ca label=g_acg_shield
@ $c9ec label=g_wall_shield
@ $ca0e label=g_suit_armour
@ $ca50 label=a_acg_shield
@ $ca56 label=a_wall_shield
@ $ca5c label=a_suit_armour
@ $ca66 label=a_cave_door_shut
@ $ca74 label=a_door_shut
@ $ca82 label=g_door_shut
@ $cae4 label=g_cave_door_shut
@ $cb46 label=g_mummy1
@ $cb77 label=g_mummy2
@ $cba8 label=g_mummy3
@ $cbd9 label=g_franken1
@ $cc0a label=g_franken2
@ $cc3b label=g_franken3
@ $cc6c label=g_devil1
@ $cc9d label=g_devil2
@ $ccce label=g_devil3
@ $ccff label=g_dracula1
@ $cd30 label=g_dracula2
@ $cd61 label=g_dracula3
@ $cd92 label=g_tombstone
@ $cdbd label=g_crucifix
@ $cde2 label=g_skull
@ $ce01 label=g_witch_l1
@ $ce2e label=g_witch_l2
@ $ce5b label=g_witch_r1
@ $ce88 label=g_witch_r2
@ $ceb5 label=g_monk_l1
@ $cedc label=g_monk_l2
@ $cf03 label=g_monk_r1
@ $cf2a label=g_monk_r2
@ $cf51 label=g_bat_l1
@ $cf78 label=g_bat_l2
@ $cf93 label=g_bat_r1
@ $cfae label=g_bat_r2
@ $cfd5 label=g_barrel
@ $d057 label=a_barrel
@ $d069 label=g_acg_door
@ $d1ab label=a_acg_door
@ $d1d5 label=g_acg_key1
@ $d1ec label=g_acg_key2
@ $d20b label=g_acg_key3
@ $d232 label=g_mushroom
@ $d253 label=g_pumpkin_picture
@ $d295 label=a_pumpkin_picture
@ $d29f label=g_spanner
@ $d2c0 label=g_ghostlet1
@ $d2d7 label=g_ghostlet2
@ $d2ee label=g_skeleton
@ $d3b8 label=a_skeleton
@ $d3d3 label=g_hunchback1
@ $d404 label=g_hunchback2
@ $d435 label=g_hunchback3
@ $d466 label=g_barrel_stack
@ $d4ef label=a_barrel_stack
B $c5f8,3853,1,2*11,1,2*13,1,2*15,1,2*17,4*16,2*18,5*32,2,4*32,2,4*32,2,6*39,2,4*2,2,4,2,5*4,2,4*4,2,4*4,2,6*5,2*79,4*3,2,4*3,2,4*24,2,4*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*24,1,2*21,1,2*18,1,2*15,1,2*22,1,2*22,1,2*22,1,2*22,1,2*19,1,2*19,1,2*19,1,2*19,1,2*19,1,2*13,1,2*13,1,2*20,4*32,2,4*4,2,8*40,2,8*5,1,2*11,1,2*15,1,2*19,1,2*17,4*16,2,4*2,1,2*16,1,2*11,1,2*12,5*40,2,5*5,1,2*24,1,2*24,1,2*25,5*27,2,5
c $d505 instruction moved from printer buffer (5B80) in original code
@ $d505 label=jp_hl
@ $d505 ssub=jp (hl)
i $d506
> $ea90 ; Note: data below must be aligned to 16-byte boundary
b $ea90 Data block at ea90
@ $ea90 label=player
B $ea90,1,1
b $ea91 Data block at ea91
@ $ea91 label=player_room
B $ea91,1,1
b $ea92 Data block at ea92
@ $ea92 label=player_contact
B $ea92,1,1
b $ea93 Data block at ea93
@ $ea93 label=player_x
B $ea93,1,1
b $ea94 Data block at ea94
@ $ea94 label=player_y
B $ea94,1,1
b $ea95 Data block at ea95
@ $ea95 label=player_attr
B $ea95,1,1
b $ea96 Data block at ea96
@ $ea96 label=player_steps_x
B $ea96,1,1
b $ea97 Data block at ea97
@ $ea97 label=player_steps_y
B $ea97,1,1
b $ea98 Data block at ea98
@ $ea98 label=weapon
B $ea98,8,8
b $eaa0 Data block at eaa0
@ $eaa0 label=sound
B $eaa0,8,8
b $eaa8 Data block at eaa8
@ $eaa8 label=acg_key_1
B $eaa8,8,8
b $eab0 Data block at eab0
@ $eab0 label=acg_key_2
B $eab0,8,8
b $eab8 Data block at eab8
@ $eab8 label=acg_key_3
B $eab8,8,8
b $eac0 Data block at eac0
@ $eac0 label=green_key
B $eac0,8,8
b $eac8 Data block at eac8
@ $eac8 label=red_key
B $eac8,8,8
b $ead0 Data block at ead0
@ $ead0 label=cyan_key
B $ead0,8,8
b $ead8 Data block at ead8
@ $ead8 label=yellow_key
B $ead8,8,8
b $eae0 Data block at eae0
@ $eae0 label=leaf
B $eae0,8,8
b $eae8 Data block at eae8
@ $eae8 label=tombstone1
B $eae8,8,8
b $eaf0 Data block at eaf0
@ $eaf0 label=tombstone2
B $eaf0,8,8
b $eaf8 Data block at eaf8
@ $eaf8 label=tombstone3
B $eaf8,8,8
b $eb00 Data block at eb00
@ $eb00 label=tombstone4
B $eb00,8,8
b $eb08 Data block at eb08
@ $eb08 label=crucafix
B $eb08,8,8
b $eb10 Data block at eb10
@ $eb10 label=spanner
B $eb10,8,8
b $eb18 Data block at eb18
@ $eb18 label=wine
B $eb18,8,8
b $eb20 Data block at eb20
@ $eb20 label=coin
B $eb20,8,8
b $eb28 Data block at eb28
@ $eb28 label=wing
B $eb28,8,8
b $eb30 Data block at eb30
@ $eb30 label=whip
B $eb30,8,8
b $eb38 Data block at eb38
@ $eb38 label=frogsleg
B $eb38,8,8
b $eb40 Data block at eb40
@ $eb40 label=jewel
B $eb40,8,8
b $eb48 Data block at eb48
@ $eb48 label=moneybag
B $eb48,8,8
b $eb50 Data block at eb50
@ $eb50 label=skull
B $eb50,8,8
b $eb58 Data block at eb58
@ $eb58 label=food_items
B $eb58,640,8
b $edd8 Data block at edd8
@ $edd8 label=food_end
B $edd8,128,8
b $ee58 Data block at ee58
@ $ee58 label=some_room
B $ee58,8,8
b $ee60 Data block at ee60
@ $ee60 label=creature1
B $ee60,16,8
b $ee70 Data block at ee70
@ $ee70 label=creature2
B $ee70,16,8
b $ee80 Data block at ee80
@ $ee80 label=creature3
B $ee80,16,8
b $ee90 Data block at ee90
@ $ee90 label=mummy
B $ee90,16,8
b $eea0 Data block at eea0
@ $eea0 label=dracula
B $eea0,16,8
b $eeb0 Data block at eeb0
@ $eeb0 label=devil
B $eeb0,16,8
b $eec0 Data block at eec0
@ $eec0 label=frankenstein
B $eec0,16,8
b $eed0 Data block at eed0
@ $eed0 label=hunchback
B $eed0,16,8
b $eee0 Data block at eee0
@ $eee0 label=linked_items
B $eee0,4384,8
