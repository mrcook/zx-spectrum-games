> $62FC ; SkoolKit disassembly for Alien 8
> $62FC ; http://www.icemark.com/downloads/
> $62FC ;
> $62FC ; Copyright (c) 2019 Michael R. Cook (Skoolkit conversion)
> $62FC ; Copyright (c) 1996 Christopher Jon Wild (annotated disassembly)
> $62FC ; Copyright (c) 1985 Ultimate Play the Game (Alien 8)
> $62FC ; Alien 8 was designed and developed by Tim Stamper and Chris Stamper
> $62FC ;
> $62FC ; 5b00 - 6288 = Scratch mem
> $62FC ; 6288 - 6460 = font
> $62FC ; 6460 - 6469 = Room Size Table
> $62FC ; 6469 - 6288 = Locations
> $62FC ; 73c8 - 7408 = Block Types Table 1
> $62FC ; 7408 - 7418 = Block Types Table 2
> $62FC ; 7418 - 7519 = Block Type data
> $62FC ; 7519 - 7535 = Background Types Table
> $62FC ; 7535 - 76e3 = Background Types data
> $62FC ; 76e3 - 7827 = Objects
> $62FC ; 7827 - 792f = Ptrs to sprite GFX
> $62FC ; 792f - a631 = sprite GFX
> $62FC ; a631 - d200 = code
> $62FC
> $62FC ; A797 - A7A6 = Light Years Text
> $62FC ; A7EA - A8F0 = Jump Table
> $62FC ; b51d - b5d4 = Frequency Table
> $62FC ; B7F5 - B804 = Re-Programming MSG
> $62FC ; B964 - BA36 = Game Over Messages
> $62FC ; BB14 - BB9D = Main Menu Text
> $62FC ; B3C5 - B3D7 = Audio Tunes
> $62FC ; B3D7 - B3F7 =     ""
> $62FC ; B3F7 - B437 =     ""
> $62FC ; B437 - B451 =     ""
> $62FC ; B451 - B4A1 =     ""
> $62FC ; BBDO - B964 = Game Completed Text
> $62FC ; C32f - C337 = Jump Table
> $62FC ; C38F - C397 = Jump Table
> $62FC ; C833 - C869 = Jump Table
> $62FC ; CA9E - CAA2 = Start Locations *4
> $62FC ; CB5A - CB8A = Panel data
> $62FC ; CBC3 - CBE3 = Border Data
> $62FC ;
> $62FC ; d200 - EA00 = linear screen buffer
@ $62FC org
c $62FC From 62FC to FF57
b $6308 Font
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
b $6460 Room Sizes
B $6460,9,3
b $6469 Locations
D $6469 +0 = Screen No +1 = Size +2 = Attribute 0x40 + [bits 0-2] Room Size        [bits 3-7]
R $6469 +? = each byte is a Background Type until hitting an $FF
R $6469 0xff
R $6469 after the 0ffh the bytes are decoded as following...
R $6469 +? type  [ bit 3-7 ]
R $6469 count [ bit 0-2 ]
N $6469 [0...count] +? = block pos block pos = x 0...7, z 0...7,  y 0...3 Alien8: if the  type is $00 then all the remaining blocks have the following byte added to there y pos usually $30 if the type is 0f$8 then block types greater than 01fh are possible 01fh will be added to all the remaining blocks
B $6469,3935,3,16,14,3,16,5,3,17,6,3,17,7,3,16,15,3,16*2,1,3,17,15,5,3,16,15,3,17,9,3,17,13,3,17,14,4,3,16,10,3,16,10,3,17,7,3,17,14,3,18,14,9,3,17,7,3,16,14,3*2,13,3,18,14,3,18,14,11,3*5,16,14,2,3,17,3*2,16,14,2,3,16,2,3,16,14,5,3,17,14,1,3,17,10,3,18,14,2,3,18,1,3,16,14,7,3,9,3,16,14,10,3,17,14,1,3,16,9,3,18,16,4,3,16,4,3,16,14,9,3,16*2,15,4,3,16,7,3,17,14,1,3*3,16,14,5,3,13,3,16,9,3,18,14*2,3,16,14,11,3,7,3,17,13,3,18,15,1,3*3,17,13,3,17,15,13,3,16,3,16,14,12,3,16,10,3,15,8,3,6,3,16*2,7,3,16,15,8,3,17,15,9,3,17,14,5,3,16,3*3,17,15,14,1,3,17,15,9,3,4,3,17,14,13,3,18,14,10,3,16,14,16,4,3,17,14,7,3,15,14,3*2,18,15,11,3,18,8,3*3,18,13,3,16,10,3,17,11,3,16,15,1,3,5,3,18,9,3*3,16,13,3,17,14,12,3,17,13,3,6,3,15,3,19,14,1,3,18,13,3,17,15,8,3,17,14,8,3,18,13,3,16,3*2,16,15,14,3,15,3,16,6,3,17,14,6,3,17,8,3,5,3,16,11,3,16,14,12,3,18,14,11,3,15,3,16,9,3*3,16,7,3,17,14,3*2,16,15,3,16,14,13,3,17,9,3,16,3,16,14,1,3,16,9,3,17,15,5,3,16,14,10,3,16,9,3,16,10,3,16,14,6,3,17,14,3,17,10,3,15,3,18,14,5,3,16,13,3*3,16,13,3,17,12
b $73C8 Block Types Table 1
W $73C8,2,2 00 ( control block )
W $73CA,2,2 01 block 1e
W $73CC,2,2 02 block 1c
W $73CE,2,2 03 block 1d
W $73D0,2,2 04 block 1f
W $73D2,2,2 05 block 2c
W $73D4,2,2 06 block 2d collapse
W $73D6,2,2 07 block 2e kill ( broken egg )
W $73D8,2,2 08 block 44 slide off east
W $73DA,2,2 09 block 45 slide off south
W $73DC,2,2 0a block 46 slide off west
W $73DE,2,2 0b block 47 slide off noth
W $73E0,2,2 0c block 2f move up/down while onto
W $73E2,2,2 0d block 42 move east/west
W $73E4,2,2 0e block 43 move north/south
W $73E6,2,2 0f block 48 ( pyramid )
W $73E8,2,2 10 sprite 4c star
W $73EA,2,2 11 sprite 56 Robot Mouse ( circuit )
W $73EC,2,2 12 sprite 57 Robot Mouse east/west
W $73EE,2,2 13 sprite 5e Robot Mouse north/south
W $73F0,2,2 14 block 49 kill (Upside down cup)
W $73F2,2,2 15 sprite 4a cryonaught looking east
W $73F4,2,2 16 sprite 4a cryonaught looking south
W $73F6,2,2 17 block 4b kill (tubes)
W $73F8,2,2 18 block 70 Object Dropoff for object 60
W $73FA,2,2 19 block 71 Object Dropoff for object 61
W $73FC,2,2 1a block 72 Object Dropoff for object 62
W $73FE,2,2 1b block 73 Object Dropoff for object 63
W $7400,2,2 1c sprite 74 Clockwork mouse
W $7402,2,2 1d sprite 78 Cylinder
W $7404,2,2 1e sprite 7c Remote Control Robot
W $7406,2,2 1f ( control block ) allows access to following
b $7408 Block Types Table 2
W $7408,2,2
W $740A,2,2 0 block 7a Arrow South
W $740C,2,2 1 block 7a Arrow West
W $740E,2,2 2 block 7b Arrow East
W $7410,2,2 3 block 7b Arrow North
W $7412,2,2 4 Block 80
W $7414,2,2 5 Block 81 ( Spike )
W $7416,2,2 6 Block 82 ( land mine )
b $7418 Block type data +0 sprite +6 sprite
B $7418,257,8*32,1
b $7519 Background Types Table ptrs
W $7519,2,2 0 Door North
W $751B,2,2 1 Door East
W $751D,2,2 2 Door South
W $751F,2,2 3 Door West
W $7521,2,2 4 West  Wall Long Full
W $7523,2,2 5 North Wall Long Full
W $7525,2,2 6 West  Wall Long Opening
W $7527,2,2 7 North Wall Long Opening
W $7529,2,2 8 Thin Room  ( long west,  short north with opening )
W $752B,2,2 9 Thin Room  ( long north, short west  with opening )
W $752D,2,2 a high door east
W $752F,2,2 b high door south
W $7531,2,2 c high door platform east
W $7533,2,2 d high door platform south
b $7535 Background Types data makeup +0 sprite +9 sprite
B $7535,136,17
b $75BD Data block at 75BD
B $75BD,49,8*6,1
b $75EE Data block at 75EE
B $75EE,49,8*6,1
b $761F Data block at 761F
B $761F,33,8*4,1
b $7640 Data block at 7640
B $7640,33,8*4,1
b $7661 Data block at 7661
B $7661,65,8*8,1
b $76A2 Data block at 76A2
B $76A2,65,8*8,1
b $76E3 Objects
D $76E3 #TABLE(default,centre,:w) { =h Byte(n) | =h Description } { +0 | Object GFX no          } { +1 | x                      } { +2 | y                      } { +3 | z                      } { +4 | Screen No              } { +5 | Current x              } { +6 | Current y              } { +7 | Current z              } { +8 | Current Screen         } TABLE#
R $76E3 x range = 0x46 - 0xba
R $76E3 z range = 0x46 - 0xba
R $76E3 y range = 0x40 - 0x70 steps of 0x0c per block height
B $76E3,324,9
b $7827 +0 w +1 d [ 0...d ] [ 0...w ] Image, Mask
D $7827 Ptrs to sprite GFX
W $7827,264,2
b $792F sprite GFX
B $792F,11522,8*1440,2
c $A631 Routine at A631
D $A631 Used by the routine at #R$62FC.
@ $A631 label=Start
c $A647 Routine at A647
D $A647 Used by the routines at #R$A95A, #R$AB61 and #R$ABC6.
@ $A647 label=StartMenu
N $A650 This entry point is used by the routine at #R$A631.
N $A688 This entry point is used by the routine at #R$A6DC.
N $A68B This entry point is used by the routine at #R$C397.
N $A68E This entry point is used by the routines at #R$A6DC and #R$B761.
N $A692 This entry point is used by the routine at #R$A6C0.
N $A6B1 This entry point is used by the routine at #R$BC83.
N $A6B7 This entry point is used by the routines at #R$C2F6 and #R$C785.
> $A6C0  $A6B7             LD   H,00
> $A6C0  $A6B9             ADD  HL,HL
> $A6C0  $A6BA             ADD  HL,BC
> $A6C0  $A6BB             LD   A,(HL)
> $A6C0  $A6BC             INC  HL
> $A6C0  $A6BD             LD   H,(HL)
> $A6C0  $A6BE             LD   L,A
> $A6C0  $A6BF             JP   (HL)
c $A6C0 Routine at A6C0
c $A6DC Routine at A6DC
D $A6DC Used by the routine at #R$A6C0.
N $A724 This entry point is used by the routine at #R$A741.
N $A72E This entry point is used by the routine at #R$A741.
c $A741 Routine at A741
D $A741 Used by the routine at #R$A6DC.
c $A749 Routine at A749
D $A749 Used by the routines at #R$A6DC and #R$AFF8.
t $A797 LIGHT YEARS
T $A797,12,11:n1
c $A7A3 Routine at A7A6
D $A7A3 Used by the routines at #R$A749 and #R$B04C.
c $A7AE Routine at A7AE
D $A7AE Used by the routine at #R$A749.
b $A7CA Data block at A7CA
B $A7CA,18,8*2,2
c $A7DC Routine at A7DC
D $A7DC Used by the routine at #R$A6DC.
w $A7EA Jump Table
W $A7EA,262,2
c $A8F0 Routine at A8F0
c $A8F1 Routine at A8F1
D $A8F1 Used by the routine at #R$A631.
c $A8F8 Routine at A8F8
c $A8F9 Routine at A8F9
N $A937 This entry point is used by the routine at #R$A93D.
c $A93D Routine at A93D
D $A93D Used by the routine at #R$A8F9.
c $A95A Routine at A95A
N $A9F1 This entry point is used by the routine at #R$AA06.
c $AA06 Routine at AA06
D $AA06 Used by the routine at #R$A95A.
N $AA15 This entry point is used by the routine at #R$A95A.
b $AA43 Data block at AA43
B $AA43,13,8,5
c $AA50 Routine at AA50
c $AA63 Routine at AA63
c $AA89 Routine at AA89
c $AAA1 Routine at AAA1
N $AABB This entry point is used by the routines at #R$AAC1 and #R$AB14.
c $AAC1 Routine at AAC1
D $AAC1 Used by the routine at #R$AAA1.
N $AAE6 This entry point is used by the routine at #R$AB0C.
N $AAEE This entry point is used by the routine at #R$AB0C.
c $AB0C Routine at AB0C
D $AB0C Used by the routine at #R$AAC1.
c $AB14 Routine at AB14
D $AB14 Used by the routine at #R$AAC1.
N $AB40 This entry point is used by the routine at #R$AB45.
c $AB45 Routine at AB45
D $AB45 Used by the routine at #R$AB14.
c $AB4B Routine at AB4B
D $AB4B Used by the routine at #R$AB14.
N $AB56 This entry point is used by the routine at #R$AB5B.
c $AB5B Routine at AB5B
D $AB5B Used by the routine at #R$AB4B.
c $AB61 Routine at AB61
N $ABAC This entry point is used by the routine at #R$ABDD.
c $ABC6 Routine at ABC6
D $ABC6 Used by the routine at #R$AB61.
c $ABD7 Routine at ABD7
D $ABD7 Used by the routines at #R$AB61 and #R$ABC6.
N $ABDA This entry point is used by the routine at #R$AB61.
c $ABDD Routine at ABDD
D $ABDD Used by the routine at #R$AB61.
N $AC21 This entry point is used by the routines at #R$A95A and #R$ABD7.
c $AC6B Routine at AC6B
D $AC6B Used by the routine at #R$B761.
N $AC80 This entry point is used by the routine at #R$ACD6.
N $AC96 This entry point is used by the routine at #R$ACC2.
N $ACA6 This entry point is used by the routine at #R$ACC2.
c $ACC2 Routine at ACC2
D $ACC2 Used by the routine at #R$AC6B.
c $ACD6 Routine at ACD6
D $ACD6 Used by the routine at #R$AC6B.
c $AD13 Routine at AD13
c $AD37 Routine at AD37
D $AD37 Used by the routine at #R$AD13.
N $AD46 This entry point is used by the routine at #R$AD49.
c $AD49 Routine at AD49
D $AD49 Used by the routine at #R$AD37.
N $AD54 This entry point is used by the routine at #R$AD37.
c $AD66 Routine at AD66
D $AD66 Used by the routine at #R$A6DC.
c $ADB0 Routine at ADB0
D $ADB0 Used by the routine at #R$AD66.
c $ADC9 Routine at ADC9
D $ADC9 Used by the routine at #R$AD66.
N $ADD2 This entry point is used by the routine at #R$ADDE.
c $ADDE Routine at ADDE
D $ADDE Used by the routine at #R$ADC9.
c $ADE5 Routine at ADE5
D $ADE5 Used by the routine at #R$AD66.
c $ADF3 Routine at ADF3
D $ADF3 Used by the routine at #R$BE76.
c $AE03 Routine at AE03
D $AE03 Used by the routine at #R$AF75.
c $AE17 Routine at AE17
c $AE33 Routine at AE33
c $AE5D Routine at AE5D
c $AE68 Routine at AE68
c $AE81 Routine at AE81
D $AE81 Used by the routines at #R$AE17, #R$AE33 and #R$AE68.
N $AE8A This entry point is used by the routines at #R$AE68 and #R$BE06.
c $AE96 Routine at AE96
c $AE99 Routine at AE99
D $AE99 Used by the routine at #R$CAA2.
c $AF05 Routine at AF05
D $AF05 Used by the routines at #R$B761 and #R$CAA2.
c $AF3F Routine at AF3F
D $AF3F Used by the routine at #R$A647.
@ $AF3F label=InitObjects
N $AF59 This entry point is used by the routine at #R$AF75.
c $AF75 Routine at AF75
D $AF75 Used by the routine at #R$AF3F.
c $AFE7 Routine at AFE7
D $AFE7 Used by the routine at #R$AF75.
c $AFF8 Routine at AFF8
D $AFF8 Used by the routine at #R$AFE7.
c $B04C Routine at B04C
D $B04C Used by the routine at #R$AFF8.
c $B055 Routine at B055
c $B06B Routine at B06B
N $B097 This entry point is used by the routine at #R$B0A8.
c $B0A8 Routine at B0A8
D $B0A8 Used by the routine at #R$B06B.
c $B0AD Routine at B0AD
D $B0AD Used by the routines at #R$B0A8 and #R$B0D7.
N $B0BD This entry point is used by the routine at #R$B0C2.
c $B0C2 Routine at B0C2
D $B0C2 Used by the routine at #R$B0AD.
c $B0CE Routine at B0CE
D $B0CE Used by the routine at #R$B0AD.
N $B0D2 This entry point is used by the routine at #R$B0D7.
c $B0D7 Routine at B0D7
D $B0D7 Used by the routine at #R$B0C2.
N $B0DD This entry point is used by the routine at #R$B06B.
c $B0E7 Routine at B0E7
D $B0E7 Used by the routines at #R$B06B and #R$B158.
b $B108 Data block at B108
B $B108,8,8
c $B110 Routine at B110
N $B116 This entry point is used by the routine at #R$B158.
N $B130 This entry point is used by the routine at #R$B13C.
N $B136 This entry point is used by the routine at #R$B13C.
c $B13C Routine at B13C
D $B13C Used by the routine at #R$B110.
c $B158 Routine at B158
D $B158 Used by the routine at #R$B13C.
c $B165 Routine at B165
D $B165 Used by the routines at #R$AA89 and #R$B19C.
c $B185 Routine at B185
D $B185 Used by the routines at #R$AA89 and #R$AAA1.
c $B18C Routine at B18C
D $B18C Used by the routines at #R$AA06, #R$AE33 and #R$B19C.
N $B198 This entry point is used by the routine at #R$B185.
c $B19C Routine at B19C
c $B1AE Routine at B1AE
D $B1AE Used by the routine at #R$B110.
N $B1C5 This entry point is used by the routine at #R$B1CA.
c $B1CA Routine at B1CA
D $B1CA Used by the routine at #R$B1AE.
c $B1D0 Routine at B1D0
D $B1D0 Used by the routine at #R$B1AE.
N $B1DA This entry point is used by the routine at #R$B1DF.
c $B1DF Routine at B1DF
D $B1DF Used by the routine at #R$B1D0.
c $B1E5 Routine at B1E5
D $B1E5 Used by the routine at #R$B055.
c $B1FA Routine at B1FA
D $B1FA Used by the routines at #R$B06B and #R$B110.
c $B20B Routine at B20B
D $B20B Used by the routines at #R$B06B and #R$B110.
c $B21C Routine at B21C
c $B224 Routine at B224
N $B22A This entry point is used by the routine at #R$B21C.
c $B267 Routine at B267
N $B26B This entry point is used by the routines at #R$B27A, #R$B280 and #R$B286.
c $B27A Routine at B27A
c $B280 Routine at B280
c $B286 Routine at B286
c $B28C Routine at B28C
c $B29F Routine at B29F
c $B2A4 Routine at B2A4
N $B2A7 This entry point is used by the routines at #R$A8F9, #R$A95A, #R$AD13, #R$B29F and #R$B2B0.
c $B2B0 Routine at B2B0
D $B2B0 Used by the routines at #R$A95A, #R$AA89, #R$AAA1, #R$B06B and #R$B110.
c $B2B6 Routine at B2B6
c $B2D9 Routine at B2D9
D $B2D9 Used by the routine at #R$B2FF.
c $B2EB Routine at B2EB
D $B2EB Used by the routine at #R$B2FF.
c $B2FF Routine at B2FF
N $B302 This entry point is used by the routine at #R$B31A.
c $B314 Routine at B314
D $B314 Used by the routine at #R$B2FF.
c $B31A Routine at B31A
c $B31F Routine at B31F
N $B36E This entry point is used by the routine at #R$B371.
c $B371 Routine at B371
D $B371 Used by the routine at #R$B31F.
N $B39A This entry point is used by the routines at #R$C0BE and #R$C6E4.
c $B3A4 Routine at B3A4
D $B3A4 Used by the routine at #R$B28C.
N $B3AA This entry point is used by the routine at #R$B371.
c $B3B0 Routine at B3B0
N $B3BB This entry point is used by the routines at #R$AE17 and #R$AE33.
N $B3BF This entry point is used by the routines at #R$AF75, #R$AFF8, #R$B19C, #R$B314 and #R$BEE0.
b $B3C5 Audio Tunes
B $B3C5,18,8*2,2
b $B3D7 Audio Tunes
B $B3D7,32,8
b $B3F7 Audio Tunes
B $B3F7,64,8
b $B437 Audio Tunes
B $B437,26,8*3,2
b $B451 Audio Tunes
B $B451,80,8
c $B4A1 Routine at B4A1
D $B4A1 Used by the routine at #R$BA7E.
@ $B4A1 label=PlayAudioWaitKey
N $B4A9 This entry point is used by the routines at #R$B4B0 and #R$B761.
c $B4B0 Routine at B4B0
D $B4B0 Used by the routine at #R$B4A1.
c $B4BA Routine at B4BA
D $B4BA Used by the routines at #R$A647, #R$A95A and #R$B8A9.
@ $B4BA label=PlayAudio
N $B4C4 This entry point is used by the routine at #R$B4B0.
c $B4C5 Routine at B4C5
D $B4C5 Used by the routines at #R$B4B0 and #R$B4BA.
c $B4EA Routine at B4EA
D $B4EA Used by the routine at #R$B4C5.
c $B507 Routine at B507
D $B507 Used by the routine at #R$B4C5.
b $B51D Frequency Table
B $B51D,183,3
c $B5D4 Routine at B5D4
b $B5E6 Data block at B5E6
B $B5E6,8,8
c $B5EE Routine at B5EE
D $B5EE Used by the routines at #R$AFF8 and #R$B3A4.
c $B604 Routine at B604
D $B604 Used by the routine at #R$BC70.
c $B619 Routine at B619
D $B619 Used by the routines at #R$AB61, #R$B06B and #R$B110.
c $B62C Routine at B62C
D $B62C Used by the routine at #R$C254.
c $B63C Routine at B63C
D $B63C Used by the routines at #R$A8F9, #R$A95A, #R$AD37, #R$B06B, #R$B2B6, #R$B31F and #R$C28C.
N $B63F This entry point is used by the routines at #R$A95A, #R$B64A, #R$B64F and #R$B654.
c $B64A Routine at B64A
D $B64A Used by the routine at #R$B224.
c $B64F Routine at B64F
D $B64F Used by the routine at #R$B21C.
c $B654 Routine at B654
D $B654 Used by the routine at #R$B3B0.
c $B65F Routine at B65F
c $B676 Routine at B676
D $B676 Used by the routines at #R$AB61 and #R$AD49.
c $B690 Routine at B690
D $B690 Used by the routines at #R$AA06 and #R$AA89.
c $B6A9 Routine at B6A9
b $B6AF Data block at B6AF
B $B6AF,2,2
c $B6B1 Routine at B6B1
D $B6B1 Used by the routines at #R$ABDD, #R$BA7E, #R$BD6B and #R$BEE0.
c $B6B6 Routine at B6B6
D $B6B6 Used by the routine at #R$CE22.
c $B6BB Routine at B6BB
D $B6BB Used by the routines at #R$AAC1 and #R$B267.
c $B6C0 Routine at B6C0
D $B6C0 Used by the routine at #R$B055.
N $B6C3 This entry point is used by the routine at #R$B6A9.
c $B6CE Routine at B6CE
D $B6CE Used by the routine at #R$C266.
N $B6D4 This entry point is used by the routine at #R$C20E.
N $B6D9 This entry point is used by the routine at #R$B6C0.
N $B6FB This entry point is used by the routines at #R$B5D4, #R$B5EE, #R$B619, #R$B63C, #R$B676, #R$B6B1, #R$B6B6 and #R$B6BB.
c $B702 Routine at B702
D $B702 Used by the routines at #R$B604, #R$B62C, #R$B65F, #R$B690 and #R$B6CE.
c $B712 Routine at B712
D $B712 Used by the routine at #R$BD6B.
N $B725 This entry point is used by the routine at #R$B743.
N $B739 This entry point is used by the routine at #R$B743.
c $B743 Routine at B743
D $B743 Used by the routine at #R$B712.
c $B74D Routine at B74D
D $B74D Used by the routines at #R$B712, #R$C497, #R$C4E6 and #R$C535.
c $B759 Routine at B759
D $B759 Used by the routines at #R$AB61, #R$B4A1, #R$B761, #R$B899, #R$BA7E, #R$C91B, #R$C979, #R$C9A5, #R$C9EE and #R$CE22.
@ $B759 label=ReadKey
c $B761 Routine at B761
D $B761 Used by the routines at #R$AD66, #R$AFF8 and #R$CA07.
@ $B761 label=GameOver
N $B76B This entry point is used by the routine at #R$B8A9.
N $B7E5 This entry point is used by the routine at #R$B7F0.
c $B7F0 Routine at B7F0
D $B7F0 Used by the routine at #R$B761.
t $B7F5 Re-Programming MSG
T $B7F5,15,n1:13:n1
c $B804 Routine at B804
D $B804 Used by the routine at #R$B761.
b $B82A Data block at B82A
B $B82A,57,8*7,1
c $B863 Routine at B863
D $B863 Used by the routines at #R$B82A and #R$CAA2.
N $B86F This entry point is used by the routine at #R$B82A.
c $B881 Routine at B881
D $B881 Used by the routines at #R$B761 and #R$B82A.
N $B886 This entry point is used by the routine at #R$B82A.
N $B88B This entry point is used by the routine at #R$B82A.
N $B890 This entry point is used by the routine at #R$B82A.
N $B896 This entry point is used by the routine at #R$B82A.
c $B899 Routine at B899
D $B899 Used by the routines at #R$B761 and #R$B8A9.
N $B8A4 This entry point is used by the routine at #R$B82A.
c $B8A9 Routine at B8A9
D $B8A9 Used by the routine at #R$B761.
@ $B8A9 label=GameCompletedMSG
b $B8D0 Data block at B8D0
B $B8D0,21,8*2,5
t $B8E5 THE STATION HAS ARRIVED
T $B8E5,23,22:n1
t $B8FC FROM SPACE
T $B8FC,10,9:n1
t $B906 THRUSTERS GENTLY SLOW
T $B906,21,20:n1
t $B91B THE ACTIVATION
T $B91B,14,13:n1
t $B929 CIRCUITS  HELD
T $B929,14,13:n1
t $B937 ALL CRYONAUGHT
T $B937,14,13:n1
t $B945 SYSTEMS GO
T $B945,10,9:n1
b $B94F Data block at B94F
B $B94F,7,7
b $B956 Data block at B94F
B $B956,14,2
t $B964 GAME OVER
T $B964,9,8:n1
t $B96D ACTIVATED CRYOGENIC
T $B96D,19,18:n1
t $B980 CHAMBERS;;;;;;;;;
T $B980,19,18:n1
t $B993 UNACTIVATED CRYOGENIC
T $B993,21,20:n1
t $B9A8 CHAMBERS;;;;;;;;;
T $B9A8,19,18:n1
t $B9BB CRYONAUGHTS LOST;
T $B9BB,20,19:n1
t $B9CF OVERALL RATING
T $B9CF,30,13:n13:1:n1:1:n1
t $B9ED POOR
T $B9ED,8,7:n1
t $B9F5 AVERAGE
T $B9F5,9,8:n1
t $B9FE FAIR
T $B9FE,8,7:n1
t $BA06 GOOD
T $BA06,8,7:n1
t $BA0E EXCELLENT
T $BA0E,10,9:n1
t $BA18 MARVELLOUS
T $BA18,11,10:n1
t $BA23 HERO
T $BA23,8,7:n1
t $BA2B ADVENTURER
T $BA2B,11,10:n1
c $BA36 Routine at BA36
D $BA36 Used by the routine at #R$B761.
N $BA39 This entry point is used by the routine at #R$B9F5.
N $BA42 This entry point is used by the routine at #R$B9ED.
N $BA52 This entry point is used by the routine at #R$BA06.
c $BA57 Routine at BA57
D $BA57 Used by the routines at #R$A749 and #R$BEE0.
@ $BA57 label=PrintLives
c $BA62 Routine at BA62
D $BA62 Used by the routines at #R$A7A6 and #R$BA57.
@ $BA62 label=PrintNumber
N $BA6A This entry point is used by the routine at #R$BA36.
N $BA74 This entry point is used by the routine at #R$BA36.
c $BA7E Routine at BA7E
D $BA7E Used by the routine at #R$A647.
@ $BA7E label=DoMenuSelection
N $BADE This entry point is used by the routine at #R$BAF7.
c $BAF7 Routine at BAF7
D $BAF7 Used by the routine at #R$BA7E.
N $BAFB This entry point is used by the routine at #R$BA7E.
b $BB14 Main Menu Text
B $BB14,8,8
b $BB1C Data block at BB1C
B $BB1C,16,8
t $BB2C ALIEN 8
T $BB2C,7,6:n1
t $BB33 1 KEYBOARD
T $BB33,10,9:n1
t $BB3D 2 KEMPSTON JOYSTICK
T $BB3D,19,18:n1
t $BB50 3 CURSOR JOYSTICK
T $BB50,17,16:n1
t $BB61 4 INTERFACE II
T $BB61,14,13:n1
t $BB6F 5 DIRECTIONAL CONTROL
T $BB6F,21,20:n1
t $BB84 0 START GAME
T $BB84,12,11:n1
t $BB90 (C) 1985 A.C.G.
T $BB90,13,12:n1
c $BB9D PrintTextInColor?
D $BB9D Used by the routine at #R$BC31.
@ $BB9D label=PrintTextInColor
N $BBA1 This entry point is used by the routine at #R$BB14.
N $BBA4 This entry point is used by the routine at #R$BB50.
N $BBA6 This entry point is used by the routine at #R$BB84.
c $BBB1 Routine at BBB1
D $BBB1 Used by the routines at #R$A749 and #R$B761.
@ $BBB1 label=PrintText
N $BBC1 This entry point is used by the routine at #R$BB6F.
N $BBC2 This entry point is used by the routine at #R$BB9D.
N $BBD9 This entry point is used by the routine at #R$BB90.
c $BBEB Routine at BBEB
D $BBEB Used by the routines at #R$BA62 and #R$BBB1.
@ $BBEB label=Print8x8
N $BBFA This entry point is used by the routine at #R$ADB0.
c $BC15 Routine at BC15
D $BC15 Used by the routine at #R$BAF7.
@ $BC15 label=ToggleSelected
c $BC25 Routine at BC25
D $BC25 Used by the routine at #R$BA7E.
@ $BC25 label=DisplayMenu
c $BC31 Routine at BC31
D $BC31 Used by the routines at #R$B761 and #R$B8A9.
@ $BC31 label=DisplayTextList
c $BC56 Routine at BC56
D $BC56 Used by the routines at #R$CB0F and #R$CB8A.
@ $BC56 label=MultiplePrintSprite
c $BC70 Routine at BC70
c $BC83 Routine at BC83
c $BC9D Routine at BC9D
D $BC9D Used by the routine at #R$CF5F.
@ $BC9D label=DisplayObjectsCarried
c $BCA7 Routine at BCA7
N $BCAB This entry point is used by the routine at #R$A749.
b $BD34 Data block at BD34
B $BD34,4,4
b $BD38 Data block at BD38
B $BD38,32,8
c $BD58 Routine at BD58
D $BD58 Used by the routines at #R$BD6B and #R$BDFD.
c $BD6B Routine at BD6B
D $BD6B Used by the routine at #R$C0CE.
N $BDF1 This entry point is used by the routine at #R$BE06.
c $BDFD Routine at BDFD
D $BDFD Used by the routine at #R$BD6B.
c $BE06 Routine at BE06
D $BE06 Used by the routine at #R$BD6B.
N $BE3B This entry point is used by the routine at #R$BE76.
N $BE60 This entry point is used by the routine at #R$BE76.
c $BE76 Routine at BE76
D $BE76 Used by the routine at #R$BD6B.
c $BEA7 Routine at BEA7
D $BEA7 Used by the routine at #R$BD6B.
N $BEAF This entry point is used by the routine at #R$BEE0.
c $BED6 Routine at BED6
D $BED6 Used by the routines at #R$A95A, #R$AF75, #R$B2FF and #R$BEE0.
c $BEE0 Routine at BEE0
c $BF2F Routine at BF2F
D $BF2F Used by the routines at #R$B04C and #R$BEE0.
c $BF3D Routine at BF3D
D $BF3D Used by the routines at #R$A8F9, #R$A95A, #R$AA63, #R$B224, #R$B267, #R$B28C, #R$B29F, #R$B2B6, #R$B2FF and #R$B31F.
c $BF42 Routine at BF42
c $BF47 Routine at BF47
D $BF47 Used by the routines at #R$AD13, #R$BC70 and #R$BC83.
c $BF4C Routine at BF4C
D $BF4C Used by the routines at #R$AE68, #R$C0BE and #R$C1E2.
c $BF51 Routine at BF51
c $BF56 Routine at BF56
D $BF56 Used by the routine at #R$B31A.
c $BF5B Routine at BF5B
D $BF5B Used by the routines at #R$AAA1, #R$B055, #R$B06B and #R$B110.
c $BF60 Routine at BF60
D $BF60 Used by the routines at #R$AE17, #R$AE33, #R$AE5D and #R$AF75.
c $BF65 Routine at BF65
c $BF6A Routine at BF6A
D $BF6A Used by the routines at #R$A95A, #R$AA89, #R$AE96, #R$B19C, #R$B2A4, #R$B3A4, #R$B3B0 and #R$BEE0.
c $BF6F Routine at BF6F
D $BF6F Used by the routine at #R$C6E4.
c $BF74 Routine at BF74
N $BF77 This entry point is used by the routines at #R$BF3D, #R$BF42, #R$BF47, #R$BF4C, #R$BF51, #R$BF56, #R$BF5B, #R$BF60, #R$BF65, #R$BF6A, #R$BF6F, #R$BF7E, #R$BFD8, #R$BFE4, #R$BFEA and #R$C013.
c $BF7E Routine at BF7E
D $BF7E Used by the routine at #R$BEE0.
c $BF83 Routine at BF83
D $BF83 Used by the routines at #R$A749, #R$BCA7, #R$CBE3 and #R$CEAB.
N $BF95 This entry point is used by the routine at #R$BF97.
c $BF97 Routine at BF97
c $BFAB Routine at BFAB
D $BFAB Used by the routines at #R$A8F9, #R$A95A, #R$AA06, #R$ABD7, #R$ABDD, #R$AD37, #R$ADF3, #R$AE17, #R$AE33, #R$AFE7, #R$B055, #R$B224, #R$B2B0, #R$B2B6, #R$B2FF, #R$B31F, #R$B3A4, #R$B3B0, #R$BC70 and #R$C0CE.
c $BFB6 Routine at BFB6
D $BFB6 Used by the routines at #R$A8F9, #R$A93D, #R$A95A, #R$AA06, #R$AA89, #R$AAA1, #R$AD37, #R$AF75, #R$B06B, #R$B110, #R$B13C, #R$B19C, #R$B224, #R$B2B6, #R$B2FF, #R$B31F, #R$B371 and #R$BEE0.
N $BFBC This entry point is used by the routine at #R$C28C.
c $BFD8 Routine at BFD8
c $BFE4 Routine at BFE4
D $BFE4 Used by the routine at #R$BFD8.
c $BFEA Routine at BFEA
N $C007 This entry point is used by the routine at #R$C013.
c $C013 Routine at C013
D $C013 Used by the routine at #R$BFEA.
c $C02C Routine at C02C
D $C02C Used by the routine at #R$BFEA.
b $C048 Data block at C048
B $C048,8,8
c $C050 Routine at C050
c $C056 Routine at C056
c $C069 Routine at C069
N $C080 This entry point is used by the routines at #R$C050 and #R$C056.
c $C082 Routine at C082
D $C082 Used by the routine at #R$BFEA.
N $C099 This entry point is used by the routine at #R$C02C.
c $C0BE Routine at C0BE
c $C0CE Routine at C0CE
D $C0CE Used by the routine at #R$C0BE.
N $C0EA This entry point is used by the routine at #R$C10A.
N $C0FF This entry point is used by the routine at #R$C20E.
c $C10A Routine at C10A
D $C10A Used by the routine at #R$C0CE.
c $C117 Routine at C117
D $C117 Used by the routines at #R$BD6B and #R$C0CE.
c $C13C Routine at C13C
D $C13C Used by the routine at #R$C0CE.
c $C16A Routine at C16A
D $C16A Used by the routine at #R$C13C.
N $C16F This entry point is used by the routine at #R$C176.
N $C172 This entry point is used by the routine at #R$C17D.
c $C176 Routine at C176
D $C176 Used by the routine at #R$C13C.
c $C17D Routine at C17D
D $C17D Used by the routine at #R$C13C.
N $C182 This entry point is used by the routine at #R$C186.
c $C186 Routine at C186
D $C186 Used by the routine at #R$C13C.
c $C18C Routine at C18C
D $C18C Used by the routines at #R$C16A and #R$C17D.
c $C18F Routine at C18F
D $C18F Used by the routine at #R$C13C.
N $C1A0 This entry point is used by the routine at #R$C16A.
N $C1BD This entry point is used by the routine at #R$C20E.
b $C1D2 Data block at C1D0
B $C1D2,16,8
c $C1E2 Routine at C1E2
c $C20E Routine at C20E
N $C211 This entry point is used by the routine at #R$C228.
N $C221 This entry point is used by the routine at #R$C1E2.
c $C228 Routine at C228
D $C228 Used by the routine at #R$C1E2.
b $C22D Data block at C22D
B $C22D,16,8
c $C23D Routine at C23D
D $C23D Used by the routine at #R$C0CE.
c $C240 Routine at C240
c $C254 Routine at C254
c $C25E Routine at C25E
D $C25E Used by the routine at #R$C0CE.
c $C266 Routine at C266
N $C27C This entry point is used by the routine at #R$C28C.
c $C28C Routine at C28C
D $C28C Used by the routine at #R$C266.
N $C296 This entry point is used by the routine at #R$C0CE.
N $C2B3 This entry point is used by the routine at #R$C20E.
N $C2BC This entry point is used by the routine at #R$C1E2.
N $C2EE This entry point is used by the routines at #R$AF75, #R$B314 and #R$BEE0.
c $C2F6 Routine at C2F6
D $C2F6 Used by the routine at #R$C28C.
N $C312 This entry point is used by the routines at #R$C02C and #R$C37C.
c $C319 Routine at C319
D $C319 Used by the routines at #R$C16A, #R$C176, #R$C17D, #R$C186, #R$C18F and #R$C2F6.
w $C32F Jump Table
W $C32F,8,2
c $C337 Routine at C337
N $C33C This entry point is used by the routine at #R$C340.
c $C340 Routine at C340
D $C340 Used by the routine at #R$C32F.
c $C347 Routine at C347
N $C34C This entry point is used by the routine at #R$C350.
c $C350 Routine at C350
D $C350 Used by the routine at #R$C32F.
c $C357 Routine at C357
D $C357 Used by the routine at #R$C442.
c $C36D Routine at C36D
D $C36D Used by the routine at #R$C28C.
c $C37C Routine at C37C
c $C386 Routine at C386
D $C386 Used by the routines at #R$C357, #R$C497, #R$C4E6, #R$C535, #R$C5E4 and #R$C613.
w $C38F Jump Table
W $C38F,8,2
c $C397 Routine at C397
N $C3B0 This entry point is used by the routine at #R$C3F0.
N $C3B7 This entry point is used by the routines at #R$C40B and #R$C426.
c $C3F0 Routine at C3F0
D $C3F0 Used by the routine at #R$C38F.
c $C40B Routine at C40B
c $C426 Routine at C426
D $C426 Used by the routine at #R$C38F.
c $C442 Routine at C442
D $C442 Used by the routines at #R$BFB6 and #R$C28C.
c $C497 Routine at C497
D $C497 Used by the routine at #R$C442.
c $C4E6 Routine at C4E6
D $C4E6 Used by the routine at #R$C442.
c $C535 Routine at C535
D $C535 Used by the routine at #R$C442.
N $C53B This entry point is used by the routine at #R$C5A1.
c $C5A1 Routine at C5A1
D $C5A1 Used by the routine at #R$C535.
c $C5A9 Routine at C5A9
D $C5A9 Used by the routines at #R$B712, #R$BEA7, #R$C497, #R$C4E6 and #R$C535.
c $C5BE Routine at C5BE
D $C5BE Used by the routines at #R$B712, #R$BEA7, #R$C497, #R$C4E6 and #R$C535.
c $C5D3 Routine at C5D3
D $C5D3 Used by the routines at #R$B712, #R$BEA7, #R$C497, #R$C4E6 and #R$C535.
N $C5E2 This entry point is used by the routine at #R$C5E4.
c $C5E4 Routine at C5E4
D $C5E4 Used by the routine at #R$C5D3.
N $C5E9 This entry point is used by the routine at #R$C442.
c $C613 Routine at C613
D $C613 Used by the routine at #R$C442.
c $C63D Routine at C63D
D $C63D Used by the routine at #R$C657.
c $C657 Routine at C657
D $C657 Used by the routines at #R$BFAB and #R$C6F4.
N $C6BD This entry point is used by the routine at #R$C6D6.
N $C6C6 This entry point is used by the routine at #R$C6D6.
c $C6D6 Routine at C6D6
D $C6D6 Used by the routine at #R$C657.
N $C6DD This entry point is used by the routine at #R$C657.
c $C6E4 Routine at C6E4
c $C6F4 Routine at C6F4
D $C6F4 Used by the routine at #R$C6E4.
c $C71C Routine at C71C
D $C71C Used by the routine at #R$A6DC.
b $C745 Data block at C745
B $C745,64,8
c $C785 Routine at C785
D $C785 Used by the routine at #R$CF5F.
N $C78D This entry point is used by the routines at #R$C898 and #R$C8D5.
N $C7A5 This entry point is used by the routines at #R$C869, #R$C86C, #R$C882, #R$C8AB and #R$C8C5.
w $C833 Jump Table
W $C833,54,2
c $C869 Routine at C869
c $C86C Routine at C86C
c $C86F Routine at C86F
c $C882 Routine at C882
D $C882 Used by the routine at #R$C86F.
c $C898 Routine at C898
D $C898 Used by the routine at #R$C86F.
c $C8AB Routine at C8AB
c $C8C5 Routine at C8C5
D $C8C5 Used by the routine at #R$C8AB.
N $C8D2 This entry point is used by the routine at #R$C8AB.
c $C8D5 Routine at C8D5
D $C8D5 Used by the routine at #R$C785.
N $C8D8 This entry point is used by the routine at #R$C898.
c $C8EA Routine at C8EA
D $C8EA Used by the routine at #R$C785.
b $C8EF Data block at C8EF
B $C8EF,16,8
c $C8FF Routine at C8FF
D $C8FF Used by the routines at #R$C0CE and #R$C1E2.
@ $C8FF label=CheckUserInput
c $C91B Routine at C91B
@ $C91B label=InterfaceII
c $C954 Routine at C954
D $C954 Used by the routine at #R$C8FF.
@ $C954 label=Kempston
c $C979 Routine at C979
D $C979 Used by the routine at #R$C8FF.
@ $C979 label=Cursor
c $C9A5 Routine at C9A5
D $C9A5 Used by the routine at #R$C8FF.
@ $C9A5 label=Keyboard
N $C9E7 This entry point is used by the routine at #R$CA5D.
c $C9EE Routine at C9EE
D $C9EE Used by the routines at #R$C8FF, #R$C91B, #R$C954, #R$C979 and #R$C9A5.
c $CA07 Routine at CA07
D $CA07 Used by the routine at #R$A647.
@ $CA07 label=LoseLife
b $CA1D Data block at CA1D
B $CA1D,32,8
b $CA3D Data block at CA3D
B $CA3D,32,8
b $CA5D Data block at CA5D
B $CA5D,16,8
c $CA6D Routine at CA6D
D $CA6D Used by the routine at #R$A647.
@ $CA6D label=InitStartLocation
b $CA9E Start Locations *4
@ $CA9E label=StartLocations
B $CA9E,4,4
c $CAA2 Routine at CAA2
D $CAA2 Used by the routine at #R$A647.
c $CAD2 Routine at CAD2
D $CAD2 Used by the routine at #R$A647.
c $CAF1 Routine at CAF1
D $CAF1 Used by the routines at #R$CB06, #R$CB0F and #R$CB8A.
c $CB06 Routine at CB06
D $CB06 Used by the routines at #R$CB0F and #R$CB8A.
c $CB0F Routine at CB0F
D $CB0F Used by the routine at #R$A6DC.
@ $CB0F label=DisplayPanel
b $CB5A Panel Data
B $CB5A,48,4
c $CB8A Routine at CB8A
D $CB8A Used by the routines at #R$B761 and #R$BC31.
@ $CB8A label=PrintBorder
b $CBC3 Border Data
B $CBC3,32,4
c $CBE3 Routine at CBE3
c $CC01 Routine at CC01
D $CC01 Used by the routine at #R$CAA2.
c $CC20 Routine at CC20
D $CC20 Used by the routine at #R$CC01.
N $CC2B This entry point is used by the routine at #R$CC43.
N $CC2E This entry point is used by the routine at #R$CC43.
c $CC43 Routine at CC43
D $CC43 Used by the routine at #R$CC01.
N $CC50 This entry point is used by the routine at #R$CC01.
N $CC5B This entry point is used by the routine at #R$CC60.
c $CC60 Routine at CC60
D $CC60 Used by the routine at #R$CC01.
c $CC6D Routine at CC6D
D $CC6D Used by the routines at #R$CC20, #R$CC43 and #R$CC60.
c $CC8A Routine at CC8A
D $CC8A Used by the routine at #R$CC6D.
c $CC96 Routine at CC96
D $CC96 Used by the routines at #R$C785 and #R$CEAB.
c $CCA7 Routine at CCA7
D $CCA7 Used by the routine at #R$CAA2.
@ $CCA7 label=RetrieveScreen
c $CCD0 Routine at CCD0
D $CCD0 Used by the routines at #R$CCA7, #R$CCDE and #R$CDE8.
c $CCDE Routine at CCDE
D $CCDE Used by the routine at #R$CCA7.
c $CD40 Routine at CD40
D $CD40 Used by the routines at #R$CD4B and #R$CDF0.
c $CD45 Routine at CD45
c $CD48 Routine at CD48
c $CD4B Routine at CD4B
c $CDE8 Routine at CDE8
D $CDE8 Used by the routine at #R$CD4B.
c $CDF0 Routine at CDF0
D $CDF0 Used by the routine at #R$CD4B.
N $CDFB This entry point is used by the routine at #R$CE00.
c $CE00 Routine at CE00
D $CE00 Used by the routine at #R$CD4B.
c $CE06 Routine at CE06
D $CE06 Used by the routines at #R$A7AE, #R$AA06, #R$AC6B, #R$ACD6, #R$ADB0, #R$B0E7, #R$B4C5, #R$B690, #R$C18F, #R$CCA7, #R$CCDE, #R$CD4B, #R$CDF0 and #R$D174.
@ $CE06 label=Add_HL_A
c $CE0D Routine at CE0D
D $CE0D Used by the routine at #R$D174.
N $CE1C This entry point is used by the routines at #R$AC6B, #R$AE99, #R$BE06, #R$CCD0 and #R$CCDE.
> $CE1D @label=Zero_DE
> $CE1D  $CE1C             XOR  A
c $CE1D Routine at CE1D
D $CE1D Used by the routine at #R$A749.
@ $CE1D label=Fill_DE
c $CE22 Routine at CE22
D $CE22 Used by the routine at #R$A6DC.
c $CE4E Routine at CE4E
D $CE4E Used by the routine at #R$B761.
c $CE56 Routine at CE56
D $CE56 Used by the routines at #R$A631, #R$A647, #R$CE4E and #R$CE60.
@ $CE56 label=ClrMem
c $CE58 Routine at CE58
D $CE58 Used by the routines at #R$CE6A and #R$CE7B.
@ $CE58 label=FillMem
c $CE60 Routine at CE60
D $CE60 Used by the routine at #R$CE73.
@ $CE60 label=ClrScr
c $CE68 Routine at CE68
D $CE68 Used by the routines at #R$B761 and #R$CE73.
@ $CE68 label=ClrAttr
c $CE6A Routine at CE6A
D $CE6A Used by the routine at #R$A749.
@ $CE6A label=FillAttr
c $CE73 Routine at CE73
D $CE73 Used by the routines at #R$A647, #R$B761 and #R$B8A9.
@ $CE73 label=ClearScrn
c $CE7B Routine at CE7B
D $CE7B Used by the routines at #R$B761, #R$B8A9, #R$BA7E and #R$CAA2.
@ $CE7B label=ClrWrkScr
c $CE85 Routine at CE85
D $CE85 Used by the routines at #R$A6DC, #R$B761 and #R$BC31.
@ $CE85 label=UpdateScreen
c $CEAB Routine at CEAB
D $CEAB Used by the routine at #R$A6DC.
N $CEE7 This entry point is used by the routine at #R$CF55.
N $CF17 This entry point is used by the routine at #R$CF5A.
c $CF55 Routine at CF55
D $CF55 Used by the routine at #R$CEAB.
c $CF5A Routine at CF5A
D $CF5A Used by the routine at #R$CEAB.
c $CF5F Routine at CF5F
D $CF5F Used by the routine at #R$CEAB.
c $CF85 Routine at CF85
D $CF85 Used by the routines at #R$AD66, #R$BCA7, #R$BF2F and #R$CF5F.
c $CFA7 Routine at CFA7
D $CFA7 Used by the routine at #R$A647.
c $CFD2 Routine at CFD2
D $CFD2 Used by the routines at #R$AE81, #R$C63D and #R$D01F.
c $CFFE Routine at CFFE
D $CFFE Used by the routines at #R$C63D and #R$D027.
c $D013 Routine at D013
D $D013 Used by the routine at #R$C8D5.
c $D01F Routine at D01F
D $D01F Used by the routine at #R$D013.
c $D027 Routine at D027
D $D027 Used by the routines at #R$BC56, #R$BCA7 and #R$CB06.
@ $D027 label=PrintSprite
N $D04B This entry point is used by the routine at #R$D07E.
c $D07E Routine at D07E
D $D07E Used by the routine at #R$D027.
N $D09F This entry point is used by the routine at #R$D0B9.
c $D0B9 Routine at D0B9
D $D0B9 Used by the routines at #R$D027 and #R$D0BD.
c $D0BD Routine at D0BD
N $D10E This entry point is used by the routine at #R$D07E.
c $D120 Routine at D120
D $D120 Used by the routines at #R$AD66, #R$BB9D, #R$BBB1, #R$BCA7, #R$BF2F, #R$CEAB and #R$D027.
@ $D120 label=BCtoScrAdr
c $D135 Routine at D135
D $D135 Used by the routines at #R$AD66, #R$BCA7, #R$BF2F and #R$CEAB.
@ $D135 label=BCtoAttrInDE
c $D157 Routine at D157
D $D157 Used by the routines at #R$ABDD, #R$BBB1 and #R$BCA7.
c $D174 Routine at D174
D $D174 Used by the routine at #R$CFFE.
s $D1EB Unused?
B $D1EB,21,8*2,5
s $D200 linear screen buffer
B $D200,6144,8
i $EA00
