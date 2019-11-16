> 23296 ; SkoolKit disassembly for Through the Trap Door
> 23296 ;
> 23296 ; Copyright (c) 2017 Philip M. Anderson (this disassembly)
> 23296 ; Copyright (c) 1987 Don Priestley / Piranha / Alternative Software Ltd (Through the Trap Door)
> 23296 @start=34200
@ 23296 org
b 23296 System Data / BASIC Program / System Variables
B 23296,331,8*41,3
b 23627 VARS system variable
@ 23627 ssub=DEFW 23909
W 23627,2,2
B 23629,6,6
b 23635 PROG system variable
@ 23635 ssub=DEFW 23755
W 23635,2,2
B 23637,118,8*14,6
b 23755 Basic loader
D 23755 The basic loader is set to auto-run from line 1. The POKE statement sets the border colour to blue, and the attribute for the lower part of the screen to 9 (blue INK, blue PAPER). Following this, the program loads a block of code of length 50 bytes to address #R63000. This code block contains the rest of the loading routine, and is jumped to after it is loaded.
B 23755,8,8 1 REM {0x00}TtTRAPDOOR{UDG-K}{0x00}{0x01}{0x00}{UDG-K}{0x00}*** 10 PAPER 1: INK 1:: BORDER 1: CLEAR 26998: POKE 23624,9 20 LOAD ""CODE 63000: RANDOMIZE USR 63000 200 LOAD ""CODE : LOAD ""SCREEN$ : RANDOMIZE USR 34200
B 23763,146,8*18,2
b 23909 Variables
B 23909,3091,3,8
b 27000 Table of Graphic Sets' Start Addresses
D 27000 These addresses represent the location that would be occupied by the zeroth eight-byte graphic in each graphic set. However as zero is not an allowed value for a graphic index, the actual start of the graphic data for each set is eight bytes further on than the address given here. For example, Graphic Set 03 has a start address here of 27278, however the UDG with an index of 1 (which is the true start of the graphic data for Set 03) is at #R27286. The address given here (#R27278) is actually an address in the previous data block at #R27030.
W 27000,2,2 Graphic Set 0 (unused)
W 27002,2,2 Graphic Set 1 (uses ROM data)
W 27004,2,2 Graphic Set 2
W 27006,2,2 Graphic Set 3
W 27008,2,2 Graphic Set 4
W 27010,2,2 Graphic Set 5
W 27012,2,2 Graphic Set 6
W 27014,2,2 Graphic Set 7
W 27016,2,2 Graphic Set 8
W 27018,2,2 Graphic Set 9
W 27020,2,2 Graphic Set 10
W 27022,2,2 Graphic Set 11
W 27024,2,2 Graphic Set 12
b 27026 Unused
B 27026,4,4
b 27030 Bitmap Data Mirror Image Lookup Table
D 27030 A byte of graphic data (e.g. 1, with set pixel at right of character block) is the lookup index, and the retrieved value is the mirror image (e.g. 128, with set pixel at left of character block)
B 27030,256,8
b 27286 Graphics Set 03
B 27286,8,8 (01)
B 27294,8,8 (02)
B 27302,8,8 (03)
B 27310,8,8 (04)
B 27318,8,8 (05)
B 27326,8,8 (06)
B 27334,8,8 (07)
B 27342,8,8 (08)
B 27350,8,8 (09)
B 27358,8,8 (10)
B 27366,8,8 (11)
B 27374,8,8 (12)
B 27382,8,8 (13)
B 27390,8,8 (14)
B 27398,8,8 (15)
B 27406,8,8 (16)
B 27414,8,8 (17)
B 27422,8,8 (18)
B 27430,8,8 (19)
B 27438,8,8 (20)
B 27446,8,8 (21)
B 27454,8,8 (22)
B 27462,8,8 (23)
B 27470,8,8 (24)
B 27478,8,8 (25)
B 27486,8,8 (26)
B 27494,8,8 (27)
B 27502,8,8 (28)
B 27510,8,8 (29)
B 27518,8,8 (30)
B 27526,8,8 (31)
B 27534,8,8 (32)
B 27542,8,8 (33)
B 27550,8,8 (34)
B 27558,8,8 (35)
B 27566,8,8 (36)
B 27574,8,8 (37)
B 27582,8,8 (38)
B 27590,8,8 (39)
B 27598,8,8 (40)
B 27606,8,8 (41)
B 27614,8,8 (42)
B 27622,8,8 (43)
B 27630,8,8 (44)
B 27638,8,8 (45)
B 27646,8,8 (46)
B 27654,8,8 (47)
B 27662,8,8 (48)
B 27670,8,8 (49)
B 27678,8,8 (50)
B 27686,8,8 (51)
B 27694,8,8 (52)
B 27702,8,8 (53)
B 27710,8,8 (54)
B 27718,8,8 (55)
B 27726,8,8 (56)
B 27734,8,8 (57)
B 27742,8,8 (58)
B 27750,8,8 (59)
B 27758,8,8 (60)
B 27766,8,8 (61)
B 27774,8,8 (62)
B 27782,8,8 (63)
b 27790 Graphics Set 05
B 27790,8,8 (01)
B 27798,8,8 (02)
B 27806,8,8 (03)
B 27814,8,8 (04)
B 27822,8,8 (05)
B 27830,8,8 (06)
B 27838,8,8 (07)
B 27846,8,8 (08)
B 27854,8,8 (09)
B 27862,8,8 (10)
B 27870,8,8 (11)
B 27878,8,8 (12)
B 27886,8,8 (13)
B 27894,8,8 (14)
B 27902,8,8 (15)
B 27910,8,8 (16)
B 27918,8,8 (17)
B 27926,8,8 (18)
B 27934,8,8 (19)
B 27942,8,8 (20)
B 27950,8,8 (21)
B 27958,8,8 (22)
B 27966,8,8 (23)
B 27974,8,8 (24)
B 27982,8,8 (25)
B 27990,8,8 (26)
B 27998,8,8 (27)
B 28006,8,8 (28)
B 28014,8,8 (29)
B 28022,8,8 (30)
B 28030,8,8 (31)
B 28038,8,8 (32)
B 28046,8,8 (33)
B 28054,8,8 (34)
B 28062,8,8 (35)
B 28070,8,8 (36)
b 28078 Graphics Set 04
B 28078,8,8 (01)
B 28086,8,8 (02)
B 28094,8,8 (03)
B 28102,8,8 (04)
B 28110,8,8 (05)
B 28118,8,8 (06)
B 28126,8,8 (07)
B 28134,8,8 (08)
B 28142,8,8 (09)
B 28150,8,8 (10)
B 28158,8,8 (11)
B 28166,8,8 (12)
B 28174,8,8 (13)
B 28182,8,8 (14)
B 28190,8,8 (15)
B 28198,8,8 (16)
B 28206,8,8 (17)
B 28214,8,8 (18)
B 28222,8,8 (19)
B 28230,8,8 (20)
B 28238,8,8 (21)
B 28246,8,8 (22)
B 28254,8,8 (23)
B 28262,8,8 (24)
B 28270,8,8 (25)
B 28278,8,8 (26)
B 28286,8,8 (27)
B 28294,8,8 (28)
B 28302,8,8 (29)
B 28310,8,8 (30)
B 28318,8,8 (31)
B 28326,8,8 (32)
B 28334,8,8 (33)
B 28342,8,8 (34)
B 28350,8,8 (35)
B 28358,8,8 (36)
B 28366,8,8 (37)
b 28374 Graphics Set 07
B 28374,8,8 (01)
B 28382,8,8 (02)
B 28390,8,8 (03)
B 28398,8,8 (04)
B 28406,8,8 (05)
B 28414,8,8 (06)
B 28422,8,8 (07)
B 28430,8,8 (08)
B 28438,8,8 (09)
B 28446,8,8 (10)
B 28454,8,8 (11)
B 28462,8,8 (12)
B 28470,8,8 (13)
B 28478,8,8 (14)
B 28486,8,8 (15)
B 28494,8,8 (16)
B 28502,8,8 (17)
B 28510,8,8 (18)
B 28518,8,8 (19)
B 28526,8,8 (20)
B 28534,8,8 (21)
B 28542,8,8 (22)
B 28550,8,8 (23)
B 28558,8,8 (24)
B 28566,8,8 (25)
B 28574,8,8 (26)
B 28582,8,8 (27)
B 28590,8,8 (28)
B 28598,8,8 (29)
B 28606,8,8 (30)
B 28614,8,8 (31)
B 28622,8,8 (32)
B 28630,8,8 (33)
B 28638,8,8 (34)
B 28646,8,8 (35)
B 28654,8,8 (36)
B 28662,8,8 (37)
B 28670,8,8 (38)
B 28678,8,8 (39)
B 28686,8,8 (40)
B 28694,8,8 (41)
B 28702,8,8 (42)
B 28710,8,8 (43)
B 28718,8,8 (44)
B 28726,8,8 (45)
B 28734,8,8 (46)
B 28742,8,8 (47)
B 28750,8,8 (48)
B 28758,8,8 (49)
B 28766,8,8 (50)
B 28774,8,8 (51)
B 28782,8,8 (52)
B 28790,8,8 (53)
B 28798,8,8 (54)
B 28806,8,8 (55)
B 28814,8,8 (56)
B 28822,8,8 (57)
B 28830,8,8 (58)
B 28838,8,8 (59)
b 28846 Graphics Set 06
B 28846,8,8 (01)
B 28854,8,8 (02)
B 28862,8,8 (03)
B 28870,8,8 (04)
B 28878,8,8 (05)
B 28886,8,8 (06)
B 28894,8,8 (07)
B 28902,8,8 (08)
B 28910,8,8 (09)
B 28918,8,8 (10)
B 28926,8,8 (11)
B 28934,8,8 (12)
B 28942,8,8 (13)
B 28950,8,8 (14)
B 28958,8,8 (15)
B 28966,8,8 (16)
B 28974,8,8 (17)
B 28982,8,8 (18)
B 28990,8,8 (19)
B 28998,8,8 (20)
B 29006,8,8 (21)
B 29014,8,8 (22)
B 29022,8,8 (23)
B 29030,8,8 (24)
B 29038,8,8 (25)
B 29046,8,8 (26)
B 29054,8,8 (27)
B 29062,8,8 (28)
B 29070,8,8 (29)
B 29078,8,8 (30)
B 29086,8,8 (31)
B 29094,8,8 (32)
B 29102,8,8 (33)
B 29110,8,8 (34)
B 29118,8,8 (35)
B 29126,8,8 (36)
B 29134,8,8 (37)
B 29142,8,8 (38)
B 29150,8,8 (39)
B 29158,8,8 (40)
B 29166,8,8 (41)
B 29174,8,8 (42)
B 29182,8,8 (43)
B 29190,8,8 (44)
B 29198,8,8 (45)
B 29206,8,8 (46)
B 29214,8,8 (47)
B 29222,8,8 (48)
B 29230,8,8 (49)
B 29238,8,8 (50)
B 29246,8,8 (51)
B 29254,8,8 (52)
B 29262,8,8 (53)
B 29270,8,8 (54)
B 29278,8,8 (55)
B 29286,8,8 (56)
B 29294,8,8 (57)
B 29302,8,8 (58)
B 29310,8,8 (59)
B 29318,8,8 (60)
B 29326,8,8 (61)
B 29334,8,8 (62)
B 29342,8,8 (63)
B 29350,8,8 (64)
b 29358 Graphics Set 09
B 29358,8,8 (01)
B 29366,8,8 (02)
B 29374,8,8 (03)
B 29382,8,8 (04)
B 29390,8,8 (05)
B 29398,8,8 (06)
B 29406,8,8 (07)
B 29414,8,8 (08)
B 29422,8,8 (09)
B 29430,8,8 (10)
B 29438,8,8 (11)
B 29446,8,8 (12)
B 29454,8,8 (13)
B 29462,8,8 (14)
B 29470,8,8 (15)
B 29478,8,8 (16)
B 29486,8,8 (17)
B 29494,8,8 (18)
B 29502,8,8 (19)
B 29510,8,8 (20)  (see bugs)
B 29518,8,8 (21)  (see bugs)
B 29526,8,8 (22)
B 29534,8,8 (23)
B 29542,8,8 (24)
B 29550,8,8 (25)
B 29558,8,8 (26)
B 29566,8,8 (27)
B 29574,8,8 (28)
B 29582,8,8 (29)
B 29590,8,8 (30)
B 29598,8,8 (31)
B 29606,8,8 (32)
B 29614,8,8 (33)
B 29622,8,8 (34)
B 29630,8,8 (35)
B 29638,8,8 (36)
B 29646,8,8 (37)
B 29654,8,8 (38)
B 29662,8,8 (39)
B 29670,8,8 (40)
B 29678,8,8 (41)
B 29686,8,8 (42)
B 29694,8,8 (43)
B 29702,8,8 (44)
B 29710,8,8 (45)
B 29718,8,8 (46)
b 29726 Graphics Set 08
B 29726,8,8 (01)
B 29734,8,8 (02)
B 29742,8,8 (03)
B 29750,8,8 (04)
B 29758,8,8 (05)
B 29766,8,8 (06)
B 29774,8,8 (07)
B 29782,8,8 (08)
B 29790,8,8 (09)
B 29798,8,8 (10)
B 29806,8,8 (11)
B 29814,8,8 (12)
B 29822,8,8 (13)
B 29830,8,8 (14)
B 29838,8,8 (15)
B 29846,8,8 (16)
B 29854,8,8 (17)
B 29862,8,8 (18)
B 29870,8,8 (19)
B 29878,8,8 (20)
B 29886,8,8 (21)
B 29894,8,8 (22)
B 29902,8,8 (23)
B 29910,8,8 (24)
B 29918,8,8 (25)
B 29926,8,8 (26)
B 29934,8,8 (27)
B 29942,8,8 (28)
B 29950,8,8 (29)
B 29958,8,8 (30)
B 29966,8,8 (31)
B 29974,8,8 (32)
B 29982,8,8 (33)
B 29990,8,8 (34)
b 29998 Graphics Set 10
B 29998,8,8 (01)
B 30006,8,8 (02)
B 30014,8,8 (03)
B 30022,8,8 (04)
B 30030,8,8 (05)
B 30038,8,8 (06)
B 30046,8,8 (07)
B 30054,8,8 (08)
B 30062,8,8 (09)
B 30070,8,8 (10)
B 30078,8,8 (11)
B 30086,8,8 (12)
B 30094,8,8 (13)
B 30102,8,8 (14)
B 30110,8,8 (15)
B 30118,8,8 (16)
B 30126,8,8 (17)
B 30134,8,8 (18)
B 30142,8,8 (19)
B 30150,8,8 (20)
B 30158,8,8 (21)
B 30166,8,8 (22)
B 30174,8,8 (23)
B 30182,8,8 (24)
B 30190,8,8 (25)
B 30198,8,8 (26)
B 30206,8,8 (27)
B 30214,8,8 (28)
B 30222,8,8 (29)
B 30230,8,8 (30)
B 30238,8,8 (31)
B 30246,8,8 (32)
B 30254,8,8 (33)
B 30262,8,8 (34)
B 30270,8,8 (35)
B 30278,8,8 (36)
B 30286,8,8 (37)
B 30294,8,8 (38)
B 30302,8,8 (39)
B 30310,8,8 (40)
B 30318,8,8 (41)
B 30326,8,8 (42)
B 30334,8,8 (43)
B 30342,8,8 (44)
B 30350,8,8 (45)
B 30358,8,8 (46)
B 30366,8,8 (47)
B 30374,8,8 (48)
B 30382,8,8 (49)
B 30390,8,8 (50)
B 30398,8,8 (51)
B 30406,8,8 (52)
B 30414,8,8 (53)
B 30422,8,8 (54)
B 30430,8,8 (55)
B 30438,8,8 (56)
B 30446,8,8 (57)
B 30454,8,8 (58)
B 30462,8,8 (59)
B 30470,8,8 (60)
B 30478,8,8 (61)
B 30486,8,8 (62)
B 30494,8,8 (63)
B 30502,8,8 (64)
B 30510,8,8 (65)
B 30518,8,8 (66)
B 30526,8,8 (67)
B 30534,8,8 (68)
B 30542,8,8 (69)
B 30550,8,8 (70)
B 30558,8,8 (71)
B 30566,8,8 (72)
B 30574,8,8 (73)
B 30582,8,8 (74)
B 30590,8,8 (75)
B 30598,8,8 (76)
B 30606,8,8 (77)
B 30614,8,8 (78)
B 30622,8,8 (79)
B 30630,8,8 (80)
B 30638,8,8 (81)
B 30646,8,8 (82)
B 30654,8,8 (83)
B 30662,8,8 (84)
b 30670 Graphics Set 11
B 30670,8,8 (01)
B 30678,8,8 (02)
B 30686,8,8 (03)
B 30694,8,8 (04)
B 30702,8,8 (05)
B 30710,8,8 (06)
B 30718,8,8 (07)
B 30726,8,8 (08)
B 30734,8,8 (09)
B 30742,8,8 (10)
B 30750,8,8 (11)
B 30758,8,8 (12)
B 30766,8,8 (13)
B 30774,8,8 (14)
B 30782,8,8 (15)
B 30790,8,8 (16)
B 30798,8,8 (17)
B 30806,8,8 (18)
B 30814,8,8 (19)
B 30822,8,8 (20)
B 30830,8,8 (21)
B 30838,8,8 (22)
B 30846,8,8 (23)
B 30854,8,8 (24)
B 30862,8,8 (25)
B 30870,8,8 (26)
B 30878,8,8 (27)
B 30886,8,8 (28)
B 30894,8,8 (29)
B 30902,8,8 (30)
B 30910,8,8 (31)
B 30918,8,8 (32)
B 30926,8,8 (33)
B 30934,8,8 (34)
B 30942,8,8 (35)
B 30950,8,8 (36)
B 30958,8,8 (37)
B 30966,8,8 (38)
B 30974,8,8 (39)
B 30982,8,8 (40)
B 30990,8,8 (41)
B 30998,8,8 (42)
B 31006,8,8 (43)
B 31014,8,8 (44)
B 31022,8,8 (45)
B 31030,8,8 (46)
B 31038,8,8 (47)
B 31046,8,8 (48)
B 31054,8,8 (49)
B 31062,8,8 (50)
B 31070,8,8 (51)
B 31078,8,8 (52)
B 31086,8,8 (53)
B 31094,8,8 (54)
B 31102,8,8 (55)
B 31110,8,8 (56)
B 31118,8,8 (57)
B 31126,8,8 (58)
B 31134,8,8 (59)
B 31142,8,8 (60)
B 31150,8,8 (61)
B 31158,8,8 (62)
B 31166,8,8 (63)
B 31174,8,8 (64)
B 31182,8,8 (65)
B 31190,8,8 (66)
B 31198,8,8 (67)
B 31206,8,8 (68)
B 31214,8,8 (69)
B 31222,8,8 (70)
B 31230,8,8 (71)
B 31238,8,8 (72)
B 31246,8,8 (73)
b 31254 Graphics Set 12
B 31254,8,8 (001)
B 31262,8,8 (002)
B 31270,8,8 (003)
B 31278,8,8 (004)
B 31286,8,8 (005)
B 31294,8,8 (006)
B 31302,8,8 (007)
B 31310,8,8 (008)
B 31318,8,8 (009)
B 31326,8,8 (010)
B 31334,8,8 (011)
B 31342,8,8 (012)
B 31350,8,8 (013)
B 31358,8,8 (014)
B 31366,8,8 (015)
B 31374,8,8 (016)
B 31382,8,8 (017)
B 31390,8,8 (018)
B 31398,8,8 (019)
B 31406,8,8 (020)
B 31414,8,8 (021)
B 31422,8,8 (022)
B 31430,8,8 (023)
B 31438,8,8 (024)
B 31446,8,8 (025)
B 31454,8,8 (026)
B 31462,8,8 (027)
B 31470,8,8 (028)
B 31478,8,8 (029)
B 31486,8,8 (030)
B 31494,8,8 (031)
B 31502,8,8 (032)
B 31510,8,8 (033)
B 31518,8,8 (034)
B 31526,8,8 (035)
B 31534,8,8 (036)
B 31542,8,8 (037)
B 31550,8,8 (038)
B 31558,8,8 (039)
B 31566,8,8 (040)
B 31574,8,8 (041)
B 31582,8,8 (042)
B 31590,8,8 (043)
B 31598,8,8 (044)
B 31606,8,8 (045)
B 31614,8,8 (046)
B 31622,8,8 (047)
B 31630,8,8 (048)
B 31638,8,8 (049)
B 31646,8,8 (050)
B 31654,8,8 (051)
B 31662,8,8 (052)
B 31670,8,8 (053)
B 31678,8,8 (054)
B 31686,8,8 (055)
B 31694,8,8 (056)
B 31702,8,8 (057)
B 31710,8,8 (058)
B 31718,8,8 (059)
B 31726,8,8 (060)
B 31734,8,8 (061)
B 31742,8,8 (062)
B 31750,8,8 (063)
B 31758,8,8 (064)
B 31766,8,8 (065)
B 31774,8,8 (066)
B 31782,8,8 (067)
B 31790,8,8 (068)
B 31798,8,8 (069)
B 31806,8,8 (070)
B 31814,8,8 (071)
B 31822,8,8 (072)
B 31830,8,8 (073)
B 31838,8,8 (074)
B 31846,8,8 (075)
B 31854,8,8 (076)
B 31862,8,8 (077)
B 31870,8,8 (078)
B 31878,8,8 (079)
B 31886,8,8 (080)
B 31894,8,8 (081)
B 31902,8,8 (082)
B 31910,8,8 (083)
B 31918,8,8 (084)
B 31926,8,8 (085)
B 31934,8,8 (086)
B 31942,8,8 (087)
B 31950,8,8 (088)
B 31958,8,8 (089)
B 31966,8,8 (090)
B 31974,8,8 (091)
B 31982,8,8 (092)
B 31990,8,8 (093)
B 31998,8,8 (094)
B 32006,8,8 (095)
B 32014,8,8 (096)
B 32022,8,8 (097)
B 32030,8,8 (098)
B 32038,8,8 (099)
B 32046,8,8 (100)
B 32054,8,8 (101)
B 32062,8,8 (102)
B 32070,8,8 (103)
B 32078,8,8 (104)
B 32086,8,8 (105)
B 32094,8,8 (106)
B 32102,8,8 (107)
B 32110,8,8 (108)
B 32118,8,8 (109)
B 32126,8,8 (110)
B 32134,8,8 (111)
B 32142,8,8 (112)
B 32150,8,8 (113)
B 32158,8,8 (114)
B 32166,8,8 (115)
B 32174,8,8 (116)
B 32182,8,8 (117)
B 32190,8,8 (118)
B 32198,8,8 (119)
B 32206,8,8 (120)
B 32214,8,8 (121)
B 32222,8,8 (122)
B 32230,8,8 (123)
B 32238,8,8 (124)
B 32246,8,8 (125)
B 32254,8,8 (126)
B 32262,8,8 (127)
B 32270,8,8 (128)
B 32278,8,8 (129)
B 32286,8,8 (130)
B 32294,8,8 (131)
B 32302,8,8 (132)
B 32310,8,8 (133)
B 32318,8,8 (134)
B 32326,8,8 (135)
B 32334,8,8 (136)
b 32342 Graphics Set 02
B 32342,8,8 (001)
B 32350,8,8 (002)
B 32358,8,8 (003)
B 32366,8,8 (004)
B 32374,8,8 (005)
B 32382,8,8 (006)
B 32390,8,8 (007)
B 32398,8,8 (008)
B 32406,8,8 (009)
B 32414,8,8 (010)
B 32422,8,8 (011)
B 32430,8,8 (012)
B 32438,8,8 (013)
B 32446,8,8 (014)
B 32454,8,8 (015)
B 32462,8,8 (016)
B 32470,8,8 (017)
B 32478,8,8 (018)
B 32486,8,8 (019)
B 32494,8,8 (020)
B 32502,8,8 (021)
B 32510,8,8 (022)
B 32518,8,8 (023)
B 32526,8,8 (024)
B 32534,8,8 (025)
B 32542,8,8 (026)
B 32550,8,8 (027)
B 32558,8,8 (028)
B 32566,8,8 (029)
B 32574,8,8 (030)
B 32582,8,8 (031)
B 32590,8,8 (032)
B 32598,8,8 (033)
B 32606,8,8 (034)
B 32614,8,8 (035)
B 32622,8,8 (036)
B 32630,8,8 (037)
B 32638,8,8 (038)
B 32646,8,8 (039)
B 32654,8,8 (040)
B 32662,8,8 (041)
B 32670,8,8 (042)
B 32678,8,8 (043)
B 32686,8,8 (044)
B 32694,8,8 (045)
B 32702,8,8 (046)
B 32710,8,8 (047)
B 32718,8,8 (048)
B 32726,8,8 (049)
B 32734,8,8 (050)
B 32742,8,8 (051)
B 32750,8,8 (052)
B 32758,8,8 (053)
B 32766,8,8 (054)
B 32774,8,8 (055)
B 32782,8,8 (056)
B 32790,8,8 (057)
B 32798,8,8 (058)
B 32806,8,8 (059)
B 32814,8,8 (060)
B 32822,8,8 (061)
B 32830,8,8 (062)
B 32838,8,8 (063)
B 32846,8,8 (064)
B 32854,8,8 (065)
B 32862,8,8 (066)
B 32870,8,8 (067)
B 32878,8,8 (068)
B 32886,8,8 (069)
B 32894,8,8 (070)
B 32902,8,8 (071)
B 32910,8,8 (072)
B 32918,8,8 (073)
B 32926,8,8 (074)
B 32934,8,8 (075)
B 32942,8,8 (076)
B 32950,8,8 (077)
B 32958,8,8 (078)
B 32966,8,8 (079)
B 32974,8,8 (080)
B 32982,8,8 (081)
B 32990,8,8 (082)
B 32998,8,8 (083)
B 33006,8,8 (084)
B 33014,8,8 (085)
B 33022,8,8 (086)
B 33030,8,8 (087)
B 33038,8,8 (088)
B 33046,8,8 (089)
B 33054,8,8 (090)
B 33062,8,8 (091)
B 33070,8,8 (092)
B 33078,8,8 (093)
B 33086,8,8 (094)
B 33094,8,8 (095)
B 33102,8,8 (096)
B 33110,8,8 (097)
B 33118,8,8 (098)
B 33126,8,8 (099)
B 33134,8,8 (100)
B 33142,8,8 (101)
B 33150,8,8 (102)
B 33158,8,8 (103)
B 33166,8,8 (104)
B 33174,8,8 (105)
B 33182,8,8 (106)
B 33190,8,8 (107)
B 33198,8,8 (108)
B 33206,8,8 (109)
B 33214,8,8 (110)
B 33222,8,8 (111)
B 33230,8,8 (112)
B 33238,8,8 (113)
B 33246,8,8 (114)
B 33254,8,8 (115)
B 33262,8,8 (116)
B 33270,8,8 (117)
B 33278,8,8 (118)
B 33286,8,8 (119)
B 33294,8,8 (120)
B 33302,8,8 (121)
B 33310,8,8 (122)
B 33318,8,8 (123)
B 33326,8,8 (124)
B 33334,8,8 (125)
B 33342,8,8 (126)
B 33350,8,8 (127)
B 33358,8,8 (128)
B 33366,8,8 (129)
B 33374,8,8 (130)
B 33382,8,8 (131)
B 33390,8,8 (132)
B 33398,8,8 (133)
B 33406,8,8 (134)
B 33414,8,8 (135)
B 33422,8,8 (136)
B 33430,8,8 (137)
B 33438,8,8 (138)
B 33446,8,8 (139)
B 33454,8,8 (140)
B 33462,8,8 (141)
B 33470,8,8 (142)
B 33478,8,8 (143)
B 33486,8,8 (144)
B 33494,8,8 (145)
B 33502,8,8 (146)
B 33510,8,8 (147)
B 33518,8,8 (148)
B 33526,8,8 (149)
B 33534,8,8 (150)
B 33542,8,8 (151)
B 33550,8,8 (152)
B 33558,8,8 (153)
B 33566,8,8 (154)
B 33574,8,8 (155)
B 33582,8,8 (156)
B 33590,8,8 (157)
B 33598,8,8 (158)
B 33606,8,8 (159)
B 33614,8,8 (160)
B 33622,8,8 (161)
B 33630,8,8 (162)
B 33638,8,8 (163)
B 33646,8,8 (164)
B 33654,8,8 (165)
B 33662,8,8 (166)
B 33670,8,8 (167)
B 33678,8,8 (168)
B 33686,8,8 (169)
B 33694,8,8 (170)
B 33702,8,8 (171)
B 33710,8,8 (172)
B 33718,8,8 (173)
B 33726,8,8 (174)
B 33734,8,8 (175)
B 33742,8,8 (176)
B 33750,8,8 (177)
B 33758,8,8 (178)
B 33766,8,8 (179)
B 33774,8,8 (180)
B 33782,8,8 (181)
B 33790,8,8 (182)
B 33798,8,8 (183)
B 33806,8,8 (184)
B 33814,8,8 (185)
B 33822,8,8 (186)
B 33830,8,8 (187)
B 33838,8,8 (188)
B 33846,8,8 (189)
B 33854,8,8 (190)
B 33862,8,8 (191)
B 33870,8,8 (192)
B 33878,8,8 (193)
B 33886,8,8 (194)
B 33894,8,8 (195)
B 33902,8,8 (196)
B 33910,8,8 (197)
B 33918,8,8 (198)
B 33926,8,8 (199)
B 33934,8,8 (200)
B 33942,8,8 (201)
B 33950,8,8 (202)
B 33958,8,8 (203)
B 33966,8,8 (204)
B 33974,8,8 (205)
B 33982,8,8 (206)
B 33990,8,8 (207)
B 33998,8,8 (208)
B 34006,8,8 (209)
B 34014,8,8 (210)
B 34022,8,8 (211)
B 34030,8,8 (212)
B 34038,8,8 (213)
B 34046,8,8 (214)
B 34054,8,8 (215)
B 34062,8,8 (216)
B 34070,8,8 (217)
B 34078,8,8 (218)
B 34086,8,8 (219)
B 34094,8,8 (220)
b 34102 Unused
B 34102,98,8*12,2
c 34200 Jump to Start of Initialisation Code
D 34200 Used by the routines at #R59543 and #R63000.
C 34200,3 Jump to start of initialisation code
b 34203 Unused
B 34203,4,4
b 34207 Index of Current Level
B 34207,1,1
b 34208 Game Flags
D 34208 #TABLE(default,centre,:w) { =h Bit | =h Effect } { 0 | Drutt Mode Flag (Set = Drutt mode / Reset = Berk mode) } { 1 | Characters Already Swapped Flag } { 2 | "Berk Has Been Killed" Flag } { 3 | "Reset Spiders to Initial State" Flag } { 4 | Level Exit Door Unlocked Flag } { 5 | Update Scores and Display Flag (Reset = draw timer figures / Set = calculate/update scores and display) } { 6 | Character Swap Pending Flag } { 7 | Show Score Flag (Reset = draw Timer Figures / Set = Display Score / Hi Score) } TABLE#
B 34208,1,1
b 34209 Cannon's (Level 4) Ammunition Counter
D 34209 Number of shots Cannon can fire before returning to its dormant state. Increases by 10 for each drip the Cannon catches.
B 34209,1,1
b 34210 Current Time / Lives
B 34210,1,1
b 34211 Score Data
W 34211,2,2 Timer Tick Counter / Score penalty (current level)
W 34213,2,2 Score (Current Level)
W 34215,2,2 Current Total Score
b 34217 Current Border Colour
B 34217,1,1
b 34218 Index of Current Character's Current Room
B 34218,1,1
b 34219 Control Input Bitmap
D 34219 #TABLE(default,centre,:w) { =h Bit | =h Effect } { 0 | Right } { 1 | Left } { 2 | Forward (i.e. DOWN - makes Drutt swap depth levels) } { 3 | Back (i.e. UP - makes Drutt jump higher) } { 4 | Berk / Drutt } { 5 | Pause } { 6 | Restart } { 7 | Unused } TABLE#
B 34219,1,1
b 34220 Berk's Current Power
D 34220 #TABLE(default,centre,:w) { =h Value | =h Effect } { 0 | None } { 1 | Jumping (Level 1) } { 2 | Jumping (Level 2) } { 3 | Jumping (Level 4) } { 4 | Flying (Level 1) } { 5 | Flying (Level 3, 1) } { 6 | Flying (Level 3, 2) } { 7 | Flying (Level 4, 1) } { 8 | Flying (Level 4, 2) } { 9 | Immunity to Bubo (Level 2) } { 10 | Floating (Level 3) } { 11 | Invisibility (Level 3) } TABLE#
B 34220,1,1
b 34221 Interaction Data for Berk
B 34221,1,1 Class of entity currently held by Berk (e.g. Drutt = 18), or zero for none
B 34222,1,1 y-coordinate minus one for top edge of coloured creature slot with which Berk is interacting
B 34223,1,1 Number of times Berk has been killed by a spider on Level 1
b 34224 Remaining Duration of Berk's Current Power
D 34224 For each game-cycle that a power is in use, the byte at #R34224 is increased. When this reaches 16, it is reset to zero and the value at #R34225 is decreased by one.
B 34224,1,1 Number of elapsed game-cycles in current group of 16
B 34225,1,1 Number of groups of 16 game-cycles remaining
b 34226 Attribute of Current Character
D 34226 This is 1 (blue) for Berk, or 6 (yellow) for Drutt.
B 34226,1,1
b 34227 Timer Figure Blink Duration Counter
B 34227,1,1
b 34228 Data for Clawed Foot (Level 3)
D 34228 Location #R34229 holds the index of the action performed by Clawed Foot after it picks Berk up. This value is incremented when the Clawed Foot reaches the top of its vertical range of travel while carrying Berk. If the incremented value exceeds six, then it is reset to one. After incrementing (and resetting if appropriate), the value is used to determine what the Clawed Foot does with Berk:
B 34228,1,1 Time (cycles) until Clawed Foot (Level 3) attacks
B 34229,1,1 Clawed Foot's Action Index
b 34230 Temporary Store for Room Dimension Data
D 34230 Contains an entry from one of the room dimension data blocks (at #R43815, #R44436, #R45116 or #R45860) for the current room of interest (see also #R34262).
B 34230,5,5
b 34235 Temporary Store for Width of Entity's Current Room
D 34235 This location holds the width of an entity's current room (in characters, plus + 99).
B 34235,1,1
b 34236 Table of Data Addresses (Current Level)
W 34236,2,2 State Data for Simple Entities
W 34238,2,2 State Data for Complex Entities
W 34240,2,2 Address of Berk's state data
W 34242,2,2 Address of Drutt's state data
W 34244,2,2 Address of worm's state data
W 34246,2,2 Start address for reverse-order collision checks
W 34248,2,2 Room Dimension Data
W 34250,2,2 Horizontal Room Connectivity Map
W 34252,2,2 Unused Data Block (09)
W 34254,2,2 Vertical Room Connectivity Map
b 34256 Miscellaneous Data 1
W 34256,2,2 Address of complex state data for entity Berk is interacting with
W 34258,2,2 Address of complex state data for entity involved in last collision check
W 34260,2,2 Address of complex state data for entity last held by Berk
W 34262,2,2 Pointer to entry in room dimension data for an entity's room (See also data in this entry copied to #R34230)
W 34264,2,2 Attribute File address of eyes of currently blinking timer figure
W 34266,2,2 Temporary store for script data to execute upon arrival on new level
B 34268,1,1 Current Graphic Set Index
B 34269,1,1 Attribute for text printing
B 34270,1,1 Current Attribute
B 34271,1,1 "Display Buffer 2 is Primary" Flag
B 34272,1,1 Width of entity carried by Berk (characters), minus 1
B 34273,1,1 Index of pending sound (used by playback routine at #R59722)
B 34274,1,1 Store for current value of loop counter in graphic layout data processing (instructions 238 and 239)
B 34275,1,1 Store for current value of loop counter in graphic layout data processing (instructions 240 and 241)
b 34276 Unused
B 34276,1,1
b 34277 Position (Address) in Script Data Currently Running
W 34277,2,2
b 34279 Data for Drawing to Display
W 34279,2,2 Start address of Primary Display Buffer
B 34281,1,1 Base y-coordinate for graphic drawing
B 34282,1,1 Base x-coordinate for graphic drawing
b 34283 Unused
B 34283,2,2
b 34285 Store for Script Instruction Loop Data
B 34285,3,3 Repeat count and loop start address for script instructions 23 and 24
B 34288,3,3 Repeat count and loop start address for script instructions 25 and 26
B 34291,3,3 Repeat count and loop start address for script instructions 27 and 28
b 34294 Store for Graphic Layout Loop Data
W 34294,2,2 Store for address of start of current loop in graphic layout data processing (instructions 238 and 239)
W 34296,2,2 Store for address of start of current loop in graphic layout data processing (instructions 240 and 241)
b 34298 Joystick Mode Flag
D 34298 #TABLE(default,centre,:w) { =h Value | =h Effect } { 0 | Joystick Mode off } { 1 | Joystick Mode on } TABLE#
B 34298,1,1
b 34299 Current High Score
W 34299,2,2
b 34301 Table of Data Addresses (Level 1)
W 34301,2,2 State Data for Simple Entities (Level 1)
W 34303,2,2 State Data for Complex Entities (Level 1)
W 34305,2,2 Address of Berk's state data (Level 1)
W 34307,2,2 Address of Drutt's state data (Level 1)
W 34309,2,2 Address of worm's state data (Level 1)
W 34311,2,2 Start address for reverse-order collision checks (Level 1)
W 34313,2,2 Room Dimension Data (Level 1)
W 34315,2,2 Horizontal Room Connectivity Map (Level 1)
W 34317,2,2 Unused Data Block (09) (Level 1)
W 34319,2,2 Vertical Room Connectivity Map (Level 1)
b 34321 Table of Data Addresses (Level 2)
W 34321,2,2 State Data for Simple Entities (Level 2)
W 34323,2,2 State Data for Complex Entities (Level 2)
W 34325,2,2 Address of Berk's state data (Level 2)
W 34327,2,2 Address of Drutt's state data (Level 2)
W 34329,2,2 Address of Worm's state data (Level 2)
W 34331,2,2 Start address for reverse-order collision checks (Level 2)
W 34333,2,2 Room Dimension Data (Level 2)
W 34335,2,2 Horizontal Room Connectivity Map (Level 2)
W 34337,2,2 Unused Data Block (09) (Level 2)
W 34339,2,2 Vertical Room Connectivity Map (Level 2)
b 34341 Table of Data Addresses (Level 3)
W 34341,2,2 State Data for Simple Entities (Level 3)
W 34343,2,2 State Data for Complex Entities (Level 3)
W 34345,2,2 Address of Berk's state data (Level 3)
W 34347,2,2 Address of Drutt's state data (Level 3)
W 34349,2,2 Address of worm's state data (Level 3)
W 34351,2,2 Start address for reverse-order collision checks (Level 3)
W 34353,2,2 Room Dimension Data (Level 3)
W 34355,2,2 Horizontal Room Connectivity Map (Level 3)
W 34357,2,2 Unused Data Block (09) (Level 3)
W 34359,2,2 Vertical Room Connectivity Map (Level 3)
b 34361 Table of Data Addresses (Level 4)
W 34361,2,2 State Data for Simple Entities (Level 4)
W 34363,2,2 State Data for Complex Entities (Level 4)
W 34365,2,2 Address of Berk's state data (Level 4)
W 34367,2,2 Address of Drutt's state data (Level 4)
W 34369,2,2 Address of worm's state data (Level 4)
W 34371,2,2 Start address for reverse-order collision checks (Level 4)
W 34373,2,2 Room Dimension Data (Level 4)
W 34375,2,2 Horizontal Room Connectivity Map (Level 4)
W 34377,2,2 Unused Data Block (09) (Level 4)
W 34379,2,2 Vertical Room Connectivity Map (Level 4)
b 34381 Stack Space
B 34381,45,8*5,5
b 34426 Unused
B 34426,2,2
c 34428 Set Up Random Seed and Disable Interrupts
D 34428 Used by the routine at #R34200.
C 34428,3 Do nothing (see trivia)
C 34431,3 Store the least significant byte of the system variable FRAMES...
C 34434,3 ...at 54219 as the seed for the pseudo-random number generator
C 34437,1 Disable interrupts
c 34438 Display Main Menu and Handle Main Game Loop
C 34438,3 Set Stack Pointer
C 34441,3 Copy State Data for all resettable complex entities into Table of Initial-State Data
C 34444,2 Set current level to 1...
C 34446,3 ...
C 34449,3 Display and handle Main Menu
C 34452,3 Load current border colour into A
C 34455,2 Set border colour
C 34457,3 Copy start addresses of current level's data blocks to #R34236 and clean up old data
C 34460,3 Paint red areas outside accessible areas of current character's current room
C 34463,3 Reset Show Score Flag and draw timer figures bar
N 34466 Start of main loop
C 34466,3 If Berk has been killed then reset his state, flash screen and decrease time / lives
C 34469,3 Update state of Berk and store current position in script data
C 34472,3 Update states of Drutt and worm and store current positions in script data
C 34475,3 If current level is not Level 1...
C 34478,2 ...
C 34480,2 ...then skip ahead to #R34527
N 34482 Level 1
C 34482,3 Update states of all Level 1 entities
C 34485,4 Load IX with address of complex state data (current level) for Berk
C 34489,4 If "Back to Level 1" Flag is reset...
C 34493,2 ...then skip ahead to #R34557
N 34495 Back to Level 1 Flag is set
C 34495,3 If y-coordinate of Boni's bottom edge is not 121...
C 34498,2 ...
C 34500,2 ...then skip ahead to #R34557
C 34502,3 If y-coordinate of Drutt's bottom edge is not 121...
C 34505,2 ...
C 34507,2 ...then skip ahead to #R34557
C 34509,3 If Drutt's room is not 1...
C 34512,2 ...
C 34514,2 ...then skip ahead to #R34557
C 34516,2 Set depth of "Home Sweet Home" brickwork to 2...
C 34518,3 ...
C 34521,4 Set "All Home" Flag
C 34525,2 Skip ahead to #R34557
C 34527,3 If current level is not Level 2...
C 34530,2 ...
C 34532,2 ...then skip ahead to #R34537
N 34534 Level 2
C 34534,3 Update states of all Level 2 entities
C 34537,3 If current level is not Level 3...
C 34540,2 ...
C 34542,2 ...then skip ahead to #R34547
N 34544 Level 3
C 34544,3 Update states of all Level 3 entities
C 34547,3 If current level is not Level 4...
C 34550,2 ...
C 34552,2 ...then skip ahead to #R34557
N 34554 Level 4
C 34554,3 Update states of all Level 4 entities
N 34557 All levels
C 34557,3 Check for control input and store at #R34219
C 34560,3 Move all falling entities down by distances appropriate to their current velocity factors
C 34563,3 If Fire Pressed, or Character Swap Pending Flag set, then swap characters
C 34566,3 Set each value in Primary Display Buffer within play area to zero
C 34569,3 Populate Primary Display Buffer with layout data for current character's current room
C 34572,3 Draw contents of Primary Display Buffer to display
C 34575,3 Play and clear pending sound (index as stored at #R34273)
C 34578,3 Load remaining time / lives into A
C 34581,1 If no time / lives are left...
C 34582,2 ...then jump to #R34645
C 34584,3 If "All Home" Flag is set...
C 34587,2 ...
C 34589,2 ...then skip ahead to #R34658
C 34591,3 Update eyes of a randomly selected timer figure, increase Timer Tick Counter and process timer figure blinking
C 34594,3 If Update Scores and Display Flag is reset...
C 34597,2 ...
C 34599,2 ...then skip ahead to #R34606
C 34601,2 Reset Update Scores and Display Flag
C 34603,3 Update scores and display
C 34606,3 Point HL at Display Buffer 1
C 34609,3 Point DE at Display Buffer 2
C 34612,3 Invert "Display Buffer 2 is Primary" Flag...
C 34615,2 ...
C 34617,3 ...
C 34620,2 If "Display Buffer 2 is Primary" Flag is reset then skip ahead to #R34623 (Display Buffer 1 is Primary, Display Buffer 2 is Secondary)
C 34622,1 Switch DE and HL (Display Buffer 1 is Secondary, Display Buffer 2 is Primary)
C 34623,3 Store address of Primary Display Buffer at #R34279
C 34626,3 Load A with control input
C 34629,2 If Restart hasn't been pressed...
C 34631,3 ...then jump to #R34466 (start of main loop)
N 34634 Restart has been pressed
C 34634,2 Set sound 1 as pending if appropriate, then play and clear pending sound...
C 34636,3 ...
C 34639,3 Reset all game data in preparation for new game
C 34642,3 Jump back to #R34438 (return to Main Menu)
N 34645 No time/lives left
C 34645,3 Update scores and display
C 34648,3 Print "SORRY BERK,  BUT YOUR TIME IS UP" string
C 34651,2 Set sound 1 as pending if appropriate, then play and clear pending sound...
C 34653,3 ...
C 34656,2 Skip ahead to #R34666
N 34658 "All Home" Flag is set
C 34658,3 Print "HOME SWEET HOME" string
C 34661,2 Set sound 3 as pending if appropriate, then play and clear pending sound...
C 34663,3 ...
C 34666,3 Wait for current key to be released and another to be pressed, storing in A
C 34669,3 Reset all game data in preparation for new game
C 34672,3 Jump back to #R34438 (return to Main Menu)
c 34675 Pause
D 34675 Used by the routine at #R53649. Input:  B  Repeat count for outer loop C  Additional repeat count for inner loop
C 34675,1 Store BC
C 34676,2 Set B to 10
C 34678,1 Decrease BC
C 34679,1 If BC is not zero...
C 34680,1 ...
C 34681,2 ...then loop back to #R34678
C 34683,1 Restore BC
C 34684,2 Loop back for next pass
C 34686,1 Return
b 34687 Table of Start Addresses of Levels' State Data for Complex Entities
W 34687,2,2 Level 1
W 34689,2,2 Level 2
W 34691,2,2 Level 3
W 34693,2,2 Level 4
c 34695 Copy State Data for all Resettable Complex Entities into Table of Initial-State Data for Complex Entities
D 34695 Used by the routine at #R34438.
C 34695,4 Point IY at start of Table of Start Addresses of Levels' State Data for Complex Entities
C 34699,3 Point DE at start of Table of Initial-State Data for Complex Entities
C 34702,2 Set B to 4 (as there are 4 levels)
C 34704,1 Store BC (B = remaining number of levels to process)
C 34705,3 Load start address of current level's complex state data into HL...
C 34708,3 ...
C 34711,2 Advance IY to next entry in list of addresses of complex state data...
C 34713,2 ...
C 34715,1 Transfer start address of current level's complex state data into IX...
C 34716,2 ...
C 34718,3 If first byte in current complex state data entry is 255 (End Marker)...
C 34721,2 ...
C 34723,2 ...then skip ahead to #R34747
C 34725,3 If entity's Can Be Reset Flag is reset...
C 34728,2 ...
C 34730,2 ...then advance IX by 13 bytes to next entry and loop back to #R34718
C 34732,2 Transfer start address of current entry in complex state data into HL...
C 34734,1 ...
C 34735,3 Load BC with 13 (as entries in complex state data are 13 bytes wide)
C 34738,2 Copy current entry in complex state data into Table of Initial-State Data for Complex Entities at #R59821
C 34740,3 Load BC with 13 (as entries in complex state data are 13 bytes wide)
C 34743,2 Advance IX to next entry in complex state data
C 34745,2 Loop back to #R34718
C 34747,1 Restore BC (B = remaining number of levels to process)
C 34748,2 Decrease B and loop back to #R34704 to process next level
C 34750,1 Return
c 34751 Reset All Game Data in Preparation for New Game
D 34751 Used by the routine at #R34438.
C 34751,4 Point IY at start of Table of Start Addresses of Levels' State Data for Complex Entities
C 34755,3 Point HL at start of Table of Initial-State Data for Complex Entities
C 34758,2 Set B to 4 (as there are 4 levels)
C 34760,1 Store BC (B = remaining number of levels to process)
C 34761,3 Load start address of current level's complex state data into DE...
C 34764,3 ...
C 34767,2 Advance IY to next entry in list of addresses of complex state data...
C 34769,2 ...
C 34771,1 Transfer start address of current level's complex state data into IX...
C 34772,2 ...
C 34774,3 If first byte in current complex state data entry is 255 (End Marker)...
C 34777,2 ...
C 34779,2 ...then skip ahead to #R34803
C 34781,3 If entity's Can Be Reset Flag is reset...
C 34784,2 ...
C 34786,2 ...then advance IX by 13 bytes to next entry and loop back to #R34774
C 34788,2 Transfer start address of current entry in complex state data into DE...
C 34790,1 ...
C 34791,3 Load BC with 13 (as entries in complex state data are 13 bytes wide)
C 34794,2 Copy current entry in Table of Initial-State Data for Complex Entities at #R59821 into complex state data
C 34796,3 Load BC with 13 (as entries in complex state data are 13 bytes wide)
C 34799,2 Advance IX to next entry in complex state data
C 34801,2 Loop back to #R34774
C 34803,1 Restore BC (B = remaining number of levels to process)
C 34804,2 Decrease B and loop back to #R34760 to process next level
C 34806,3 Point HL at Joystick Mode Flag
C 34809,3 Point DE at store for current level number
C 34812,1 Set A to zero and reset Carry Flag
C 34813,2 Subtract DE from HL to leave HL = 91
C 34815,1 Load B with 91
C 34816,3 Point HL at store for current level number...
C 34819,1 ...and set 91 bytes from here onwards to zero...
C 34820,1 ...
C 34821,2 ...
C 34823,2 Set time / lives to 16...
C 34825,3 ...
C 34828,2 Set current level to Level 1...
C 34830,3 ...
C 34833,3 Initialise script data positions for Flying Skeleton Creature and Bat (Level 1)
C 34836,3 Reset current positions in apebeasts' script data to initial values
C 34839,3 Reset Skeleton to initial state
C 34842,3 Reset Drutt to initial state
C 34845,2 Set room of "Closed Trap Door" and impassable marker to 1 (i.e. starting room)...
C 34847,3 ...
C 34850,3 ...
C 34853,3 Set attribute of current character to 1 (blue, Berk)
C 34856,1 Set room of "Open Trap Door" and "Home Sweet Home" brickwork to 0...
C 34857,3 ...i.e. remove from game...
C 34860,3 ...
C 34863,1 Return
c 34864 Copy Start Addresses of Current Level's Data Blocks to 34236 and Clean Up Old Data
D 34864 Used by the routines at #R34438 and #R36753.
C 34864,1 Store DE
C 34865,1 Store HL
C 34866,3 Load HL with address of complex state data (current level) for worm
C 34869,2 Set worm's current room to zero
C 34871,3 Load current level into A
C 34874,3 Point HL at position 20 bytes before start of list of start addresses of level 1's data blocks
C 34877,3 Set data length to 20, as there are 10 data blocks per level (so 10 addresses)
C 34880,1 Advance HL to start of data block address list for next level
C 34881,1 Decrease level counter
C 34882,2 Loop back if we have not reached data for required level
N 34884 At this point, HL points to the start of the list of start addresses of the current level's data blocks
C 34884,3 Copy this level's data block start addresses to #R34236...
C 34887,2 ...
C 34889,2 Clear Store for Script Instruction Loop Data...
C 34891,3 ...
C 34894,1 ...
C 34895,1 ...
C 34896,2 ...
C 34898,1 Restore HL
C 34899,1 Restore DE
C 34900,1 Return
c 34901 Script Routine (48, 49) Return
D 34901 This script routine terminates the script data currently under execution until the next game cycle.
C 34901,1 Return
c 34902 Unused routine
D 34902 This routine floods the Attribute File with value 9 (Blue INK, Blue PAPER)
C 34902,3 Set all Attribute File contents to blue INK, blue PAPER...
C 34905,3 ...
C 34908,2 ...
C 34910,3 ...
C 34913,2 ...
C 34915,1 Return
c 34916 If Fire Pressed, or Character Swap Pending Flag Set, then Swap Characters
D 34916 Used by the routine at #R34438.
C 34916,3 If Character Swap Pending Flag is reset...
C 34919,2 ...
C 34921,2 ...then skip ahead to #R34927
C 34923,2 Reset Character Swap Pending Flag
C 34925,2 Skip ahead to #R34944
C 34927,3 Load A with control input
C 34930,2 If fire was pressed...
C 34932,2 ...then skip ahead to #R34940
C 34934,2 Reset Characters Already Swapped Flag
C 34936,3 Copy room dimension data entry for current character's current room to temporary store location (#R34230)
C 34939,1 Return
N 34940 [Fire pressed]
C 34940,2 If Characters Already Swapped Flag set (i.e. FIRE hasn't been released since last swap)...
C 34942,2 ...then jump back to #R34936
C 34944,2 Set Characters Already Swapped Flag
C 34946,1 Load Game Flags into A
C 34947,2 Flip bit 7 (Berk / Drutt flag)...
C 34949,1 ...
C 34950,2 If current character is now Berk (0)...
C 34952,2 ...then jump ahead to #R34958
C 34954,2 Load A with 6 (attribute for Drutt's timer indicator figures)
C 34956,2 Skip ahead to #R34960
C 34958,2 Load A with 1 (attribute for Berk's timer indicator figures)
C 34960,3 Set attribute of timer indicator figures to value in A
C 34963,3 Paint red areas outside accessible areas of current character's current room
C 34966,3 If Show Score Flag is set...
C 34969,2 ...
C 34971,3 ...then print SCORE / TOTAL / HI-SC string in current character's colours and return
C 34974,3 Reset Show Score Flag, draw timer figures bar and return
b 34977 Script Data Berk Turning to Face Left
B 34977,2,2 Set Must Process Current Script Data Flag
B 34979,2,2 Move carried entity to Berk's left as he faces left
B 34981,2,2 #R56248 (Berk, stepping left, left foot out, arm and eye animated)
B 34983,2,2 #R56257 (Berk, stepping left, left foot out and forward, arm and eye animated)
N 34985 At this point, Berk has made the turn (i.e. already moved his feet)
B 34985,2,2 Set Berk's Facing Left Flag, and reset his Facing Into Screen and Facing Right flags
B 34987,2,2 Move carried entity to Berk's left as he faces left
B 34989,2,2 Reset Must Process Current Script Data Flag
B 34991,2,2 #R56266 (Berk, facing left, arm and eye animated)
B 34993,4,4 Jump back to #R34985
b 34997 Script Data Berk Turning to Face Right
B 34997,2,2 Set Must Process Current Script Data Flag
B 34999,2,2 Move carried entity to Berk's right as he faces right
B 35001,2,2 #R55710 (Berk, stepping right, right foot out, arm and eye animated)
B 35003,2,2 #R55698 (Berk, stepping right, right foot out and forward, arm and eye animated)
N 35005 At this point, Berk has made the turn (i.e. already moved his feet)
B 35005,2,2 Set Berk's Facing Right Flag, and reset his Facing Into Screen and Facing Left flags
B 35007,2,2 Move carried entity to Berk's right as he faces right
B 35009,2,2 Reset Must Process Current Script Data Flag
B 35011,2,2 #R55722 (Berk, facing right, arm and eye animated)
B 35013,4,4 Jump back to #R35005
b 35017 Script Data Berk Interacting with a Door Behind Him
B 35017,2,2 Set Must Process Current Script Data Flag
B 35019,2,2 Set Berk's Facing Into Screen Flag, and reset his Facing Left and Facing Right flags
B 35021,2,2 Reset Berk's Walking Left and Walking Right flags
B 35023,2,2 Move carried entity behind Berk as he faces into screen
B 35025,2,2 #R57428 (Berk facing into screen, holding something)
B 35027,2,2 #R57428 (Berk facing into screen, holding something)
B 35029,2,2 Have Berk interact appropriately with a door behind him
B 35031,2,2 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
B 35033,4,4 Start loop (1) for 5 iterations
B 35037,2,2 #R57338 (Berk facing into screen, arms out to the sides)
B 35039,2,2 End loop (1)
B 35041,4,4 Jump to #R35113 (Berk facing into screen, ready to respond to control input)
b 35045 Script Data Berk Interacting with a Door in Front of Him
B 35045,2,2 Set Must Process Current Script Data Flag
B 35047,2,2 Reset Berk's Facing Into Screen, Facing Left and Facing Right flags
B 35049,2,2 Reset Berk's Walking Left and Walking Right flags
B 35051,2,2 Move carried entity in front of Berk as he faces out of screen
B 35053,2,2 #R57058 (Berk, facing out of screen, holding something, animated)
B 35055,2,2 #R57058 (Berk, facing out of screen, holding something, animated)
B 35057,2,2 Have Berk interact appropriately with a door in front of him
B 35059,2,2 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
B 35061,4,4 Start loop (1) for 5 iterations
B 35065,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35067,2,2 End loop (1)
B 35069,4,4 Jump to #R35081 (Berk facing out of screen, ready to respond to control input)
b 35073 Script Data Berk Turning (Facing into Screen to Facing Out of Screen)
B 35073,2,2 Set Must Process Current Script Data Flag
B 35075,2,2 Move carried entity to Berk's right as he faces right
B 35077,2,2 #R55698 (Berk, stepping right, right foot out and forward, arm and eye animated)
B 35079,2,2 #R55710 (Berk, stepping right, right foot out, arm and eye animated)
N 35081 Berk facing out of screen, ready to respond to control input
B 35081,2,2 Reset Berk's Walking Left and Walking Right flags
B 35083,2,2 Reset Must Process Current Script Data Flag
B 35085,2,2 Reset Berk's Facing Into Screen, Facing Left and Facing Right flags
B 35087,4,4 If Berk is carrying something then jump to #R35097 (Berk facing out of screen, holding something)
N 35091 Berk holding nothing
B 35091,2,2 #R56804 (Berk, facing out of screen, arms down at sides, animated)
B 35093,4,4 Jump to #R35091
N 35097 Berk holding something
B 35097,2,2 Move carried entity in front of Berk as he faces out of screen
B 35099,2,2 #R57058 (Berk, facing out of screen, holding something, animated)
B 35101,4,4 Jump to #R35097
b 35105 Script Data Berk Turning (Facing Out of Screen to Facing into Screen)
B 35105,2,2 Set Must Process Current Script Data Flag
B 35107,2,2 Move carried entity to Berk's left as he faces left
B 35109,2,2 #R56248 (Berk, stepping left, left foot out, arm and eye animated)
B 35111,2,2 #R56257 (Berk, stepping left, left foot out and forward, arm and eye animated)
N 35113 Berk facing into screen, ready to respond to control input
B 35113,2,2 Reset Must Process Current Script Data Flag
B 35115,2,2 Set Berk's Facing Into Screen Flag, and reset his Facing Left and Facing Right flags
B 35117,2,2 Reset Berk's Walking Left and Walking Right flags
B 35119,4,4 If Berk is carrying something then jump to #R35173 (Berk facing into screen, holding something)
N 35123 Berk holding nothing
B 35123,4,4 Start loop (1) for 8 iterations
B 35127,2,2 #R57353 (Berk, facing into screen, arms down)
B 35129,2,2 End loop (1)
B 35131,4,4 Jump to #R35073 (Berk turning from facing into screen to facing out of screen)
b 35135 Script Data Berk Picking Up an Entity on Floor Behind Him
B 35135,2,2 Reset Berk's Walking Left and Walking Right flags
B 35137,2,2 Set Must Process Current Script Data Flag
B 35139,2,2 #R57338 (Berk facing into screen, arms out to the sides)
B 35141,2,2 #R58209 (Berk facing into screen, bending down)
B 35143,2,2 Have Berk hold an entity, and position it appropriately between his hands
B 35145,4,4 Jump to #R35173 (Berk facing into screen, holding something)
b 35149 Script Data Berk Picking Up an Entity Above and Behind Him
B 35149,2,2 Reset Berk's Walking Left and Walking Right flags
B 35151,2,2 Set Must Process Current Script Data Flag
B 35153,2,2 #R58278 (Berk, facing into screen, stretching upwards)
B 35155,2,2 #R58278 (Berk, facing into screen, stretching upwards)
B 35157,2,2 Have Berk hold an entity, and position it appropriately between his hands
B 35159,4,4 Jump to #R35173 (Berk facing into screen, holding something)
b 35163 Script Data Berk Picking Up an Entity that is Above Floor and Below Berk's Top Edge and Behind Him
B 35163,2,2 Reset Berk's Walking Left and Walking Right flags
B 35165,2,2 Set Must Process Current Script Data Flag
B 35167,2,2 #R57338 (Berk facing into screen, arms out to the sides)
B 35169,2,2 #R57428 (Berk facing into screen, holding something)
B 35171,2,2 Have Berk hold an entity, and position it appropriately between his hands
B 35173,2,2 Move carried entity behind Berk as he faces into screen
B 35175,2,2 #R57428 (Berk facing into screen, holding something)
B 35177,2,2 #R57428 (Berk facing into screen, holding something)
B 35179,2,2 #R57428 (Berk facing into screen, holding something)
B 35181,2,2 #R57428 (Berk facing into screen, holding something)
B 35183,4,4 Jump to #R35073 (Berk turning from facing into screen to facing out of screen)
b 35187 Script Data Berk Picking Up an Entity on Floor in Front of Him
B 35187,2,2 Set Must Process Current Script Data Flag
B 35189,2,2 Reset Berk's Walking Left and Walking Right flags
B 35191,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35193,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35195,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35197,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35199,2,2 Have Berk hold an entity, and position it appropriately between his hands
B 35201,4,4 Jump to #R35081 (Berk facing out of screen, ready to respond to control input)
b 35205 Script Data Berk Putting an Entity Down on Floor in Front of Him
B 35205,2,2 Set Must Process Current Script Data Flag
B 35207,2,2 Move carried entity in front of Berk as he faces out of screen
B 35209,2,2 Have Berk put down an entity in front of him, if appropriate
B 35211,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35213,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35215,4,4 Jump to #R35081 (Berk facing out of screen, ready to respond to control input)
b 35219 Script Data Berk Putting an Entity Down on Floor Behind Him
B 35219,2,2 Set Must Process Current Script Data Flag
B 35221,2,2 Move carried entity behind Berk as he faces into screen
B 35223,2,2 Have Berk put down an entity behind him, if appropriate
B 35225,2,2 #R58209 (Berk facing into screen, bending down)
B 35227,2,2 #R58209 (Berk facing into screen, bending down)
B 35229,2,2 #R57338 (Berk facing into screen, arms out to the sides)
B 35231,4,4 Jump to #R35113 (Berk facing into screen, ready to respond to control input)
b 35235 Script Data Berk Putting an Entity Down Above Floor Behind Him
B 35235,2,2 Set Must Process Current Script Data Flag
B 35237,2,2 Move carried entity behind Berk as he faces into screen
B 35239,2,2 #R57428 (Berk facing into screen, holding something)
B 35241,2,2 Have Berk put down an entity behind him, if appropriate
B 35243,2,2 #R58278 (Berk, facing into screen, stretching upwards)
B 35245,2,2 #R58278 (Berk, facing into screen, stretching upwards)
B 35247,4,4 Jump to #R35073 (Berk turning from facing into screen to facing out of screen)
b 35251 Script Data Berk Starting to Walk Right
B 35251,2,2 Set Berk's Walking Right Flag
B 35253,2,2 Move carried entity to Berk's right as he faces right
B 35255,2,2 #R55734 (Berk walking right, animated)
B 35257,2,2 Move Berk right one character
B 35259,4,4 Jump to #R35255
b 35263 Script Data Berk Starting to Walk Left
B 35263,2,2 Set Berk's Walking Left Flag
B 35265,2,2 Move carried entity to Berk's left as he faces left
B 35267,2,2 #R56275 (Berk walking left, animated)
B 35269,2,2 Move Berk left one character
B 35271,4,4 Jump back to #R35267
b 35275 Script Data Berk's Power Expiring
B 35275,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35277,2,2 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
B 35279,4,4 Jump to #R35359 (Berk starting to fall downwards)
b 35283 Script Data Berk Banging Head (While Jumping)
B 35283,2,2 #R59464 (Berk, getting up / banging head, frame 2)
B 35285,2,2 #R59464 (Berk, getting up / banging head, frame 2)
B 35287,4,4 Jump to #R35359 (Berk starting to fall downwards)
b 35291 Script Data Berk Starting to Fall to the Left
B 35291,2,2 Set Must Process Current Script Data Flag
B 35293,4,4 Start loop (1) for 3 iterations
B 35297,2,2 #R56275 (Berk walking left, animated)
B 35299,2,2 Move Berk left one character
B 35301,2,2 End loop (1)
N 35303 At this point, the fall is in progress
B 35303,2,2 Set Must Process Current Script Data Flag
B 35305,2,2 #R58853 (Berk, facing left, falling, arms to sides)
B 35307,2,2 Move Berk left two characters...
B 35309,2,2 ...
B 35311,2,2 #R58685 (Berk, facing left, falling, arms forward)
B 35313,2,2 Move Berk left one character
B 35315,2,2 Move Berk down two characters...
B 35317,2,2 ...
B 35319,2,2 #R59048 (Berk being thrown left)
B 35321,2,2 Move Berk down one character
B 35323,4,4 Jump to #R35359 (Berk starting to fall downwards)
b 35327 Script Data Berk Starting to Fall to the Right
B 35327,2,2 Set Must Process Current Script Data Flag
B 35329,4,4 Start loop (1) for 3 iterations
B 35333,2,2 #R55734 (Berk walking right, animated)
B 35335,2,2 Move Berk right one character
B 35337,2,2 End loop (1)
N 35339 At this point, the fall is in progress
B 35339,2,2 Set Must Process Current Script Data Flag
B 35341,2,2 #R58778 (Berk, facing right, falling, arms to sides)
B 35343,2,2 Move Berk right two characters...
B 35345,2,2 ...
B 35347,2,2 #R58592 (Berk, facing right, falling, arms forward)
B 35349,2,2 Move Berk right one character
B 35351,2,2 Move Berk down two characters...
B 35353,2,2 ...
B 35355,2,2 #R58928 (Berk, being thrown right)
B 35357,2,2 Move Berk down one character
N 35359 This is the start of the script data that controls Berk's vertical falls, e.g. when flying power expires, after initial sideways fall down Trap Door, etc.
B 35359,2,2 Set Must Process Current Script Data Flag
B 35361,2,2 Make Berk start falling, and drop his carried entity if appropriate
B 35363,2,2 #R59168 (Floating / starting to fall, animated)
B 35365,2,2 Check Berk's fall velocity, and react to landing
B 35367,2,2 #R59239 (Berk, falling downwards)
B 35369,2,2 Check Berk's fall velocity, and react to landing
N 35371 This is the start of the script data that controls Berk when he has landed from a fall. Initially he is lying on the floor stunned, and then he gets up.
B 35371,2,2 #R59311 (Berk, lying on floor, animated)
B 35373,4,4 If current character and target entity are in the same room then set pending sound to 5 (#R59666)
B 35377,2,2 #R59380 (Berk, getting up, frame 1, animated)
B 35379,4,4 Start loop (1) for 15 iterations
B 35383,2,2 #R59311 (Berk, lying on floor, animated)
B 35385,2,2 End loop (1)
B 35387,4,4 Start loop (1) for 4 iterations
B 35391,2,2 #R59380 (Berk, getting up, frame 1, animated)
B 35393,2,2 End loop (1)
B 35395,4,4 Start loop (1) for 2 iterations
B 35399,2,2 #R59311 (Berk, lying on floor, animated)
B 35401,2,2 #R59311 (Berk, lying on floor, animated)
B 35403,2,2 #R59380 (Berk, getting up, frame 1, animated)
B 35405,2,2 #R59464 (Berk, getting up / banging head, frame 2)
B 35407,2,2 End loop (1)
B 35409,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35411,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35413,4,4 Jump to #R35081 (Berk facing out of screen, ready to respond to control input)
b 35417 Script Data Berk Starting to Fly Holding nothing
B 35417,2,2 Move carried entity in front of Berk as he faces out of screen
B 35419,2,2 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
B 35421,4,4 If Berk is carrying something then jump to #R35433
B 35425,2,2 #R56801 (Berk with wings, animated)
B 35427,2,2 Update Berk's position and state (flying) depending upon control input
B 35429,4,4 Jump back to #R35425
N 35433 Holding something
B 35433,2,2 #R57055 (Berk with wings and holding something, animated)
B 35435,2,2 Update Berk's position and state (flying) depending upon control input
B 35437,4,4 Jump back to #R35433
b 35441 Script Data Berk Jumping
D 35441 Berk Starting to Jump Straight Up
B 35441,2,2 Set Must Process Current Script Data Flag
B 35443,2,2 Reset Berk's Walking Left and Walking Right flags
B 35445,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35447,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35449,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35451,2,2 Advance Berk's jump and select next phase if current phase complete
B 35453,4,4 Jump back to #R35449
N 35457 Berk Landing (After Jump)
B 35457,2,2 Set Must Process Current Script Data Flag
B 35459,2,2 Reset Berk's Walking Left and Walking Right flags
B 35461,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35463,2,2 #R58119 (Berk, facing out of screen, bending down)
B 35465,4,4 Jump to #R35081 (Berk facing out of screen, ready to respond to control input)
N 35469 Berk Jumping Left
B 35469,2,2 Set Must Process Current Script Data Flag
B 35471,2,2 Set Berk's Walking Left Flag
B 35473,2,2 #R56275 (Berk walking left, animated)
B 35475,2,2 Advance Berk's jump and select next phase if current phase complete
B 35477,4,4 Jump to #R35469
N 35481 Berk Jumping Right
B 35481,2,2 Set Must Process Current Script Data Flag
B 35483,2,2 Set Berk's Walking Right Flag
B 35485,2,2 #R55734 (Berk walking right, animated)
B 35487,2,2 Advance Berk's jump and select next phase if current phase complete
B 35489,4,4 Jump to #R35481
b 35493 Script Data Berk Eating an Entity
B 35493,2,2 Set Must Process Current Script Data Flag
B 35495,4,4 Start loop (1) for 4 iterations
B 35499,2,2 #R56743 (Berk, arms raised, eating, animated)
B 35501,2,2 End loop (1)
B 35503,2,2 Give Berk power corresponding to entity eaten
B 35505,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35507,2,2 #R56731 (Berk, facing out of screen, arms outstretched, animated)
B 35509,2,2 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
B 35511,4,4 Jump to #R35081 (Berk facing out of screen, ready to respond to control input)
b 35515 Script Data Berk Gaining Floating Power
D 35515 The current position in Berk's script data is set to #R35515 both when he gains the floating power (#R36536) and when the Clawed Foot on Level 3 grabs Berk (#R39391). In the former case, the script instruction at #R35515 will be executed however in the latter case that instruction will be skipped over. Therefore, when Berk is grabbed on Level 3, the cycle attributes effect does not occur.
B 35515,2,2 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
B 35517,2,2 #R59168 (Floating / starting to fall, animated)
B 35519,4,4 Jump to #R35517
b 35523 Script Data Berk Being Thrown Left by Hatch (Level 3)
B 35523,2,2 #R59048 (Berk being thrown left)
B 35525,4,4 Start loop (1) for 5 iterations
B 35529,2,2 #R59048 (Berk being thrown left)
B 35531,2,2 Move Berk left two characters...
B 35533,2,2 ...
B 35535,2,2 Move Berk into room to the left, if appropriate
B 35537,2,2 Move Berk up two characters...
B 35539,2,2 ...
B 35541,2,2 End loop (1)
B 35543,4,4 Start loop (1) for 4 iterations
B 35547,2,2 #R59048 (Berk being thrown left)
B 35549,2,2 Move Berk left two characters...
B 35551,2,2 ...
B 35553,2,2 Move Berk down two characters...
B 35555,2,2 ...
B 35557,2,2 End loop (1)
B 35559,4,4 Start loop (1) for 2 iterations
B 35563,2,2 #R59168 (Floating / starting to fall, animated)
B 35565,2,2 Move Berk left one character
B 35567,2,2 Move Berk down two characters...
B 35569,2,2 ...
B 35571,2,2 End loop (1)
B 35573,4,4 Jump to #R35371 (Berk lying on floor stunned and getting up)
c 35577 Change Direction Berk is Facing Depending Upon Relative Position of Drutt
D 35577 Used by the routine at #R35735. Input:  IX  Address of complex state data (current level) for Berk
C 35577,3 If Drutt's current room...
C 35580,3 ...is not the same as Berk's current room...
C 35583,3 ...then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
C 35586,3 Reset Berk's Walking Right, Walking Left, Unused (11,2) and Unused (11,3) flags...
C 35589,2 ...
C 35591,3 ...
C 35594,3 Load Berk's Flags into E
C 35597,4 Load IY with address of complex state data (current level) for Drutt
C 35601,3 Load A with x-coordinate of Drutt's right side...
C 35604,1 ...and increase by one
C 35605,3 If x-coordinate of Berk's left side is greater than this (i.e. Drutt is to the left of Berk)...
C 35608,2 ...then skip ahead to #R35653
C 35610,3 Load A with x-coordinate of Berk's right side
C 35613,1 Increase A by one
C 35614,3 If x-coordinate of Drutt's left side is greater than this (i.e. Drutt is to the right of Berk)...
C 35617,2 ...then skip ahead to #R35670
N 35619 Drutt is between Berk's left and right sides
C 35619,3 If Drutt's depth is 1...
C 35622,2 ...
C 35624,3 ...then skip ahead to #R35642
N 35627 Drutt is behind Berk
C 35627,1 Load A with Berk's flags
C 35628,2 If Berk's Facing into Screen, Facing Left and Facing Right flags are all reset...
C 35630,3 ...then skip ahead to #R35636
N 35633 Drutt is behind Berk and at least one of Berk's Facing into Screen, Facing Left and Facing Right flags is set
C 35633,3 Point HL at script data for Berk facing into screen, ready to respond to control input and execute
N 35636 Drutt is behind Berk and Berk's Facing into Screen, Facing Left and Facing Right flags are all reset
C 35636,3 Point HL at script data for Berk turning (facing out of screen to facing into screen)...
C 35639,3 ...and execute
N 35642 Drutt is in front of Berk
C 35642,2 If Berk's Facing into Screen Flag is reset...
C 35644,3 ...then point HL at script data for Berk facing out of screen, ready to respond to control input and execute
N 35647 Drutt is in front of Berk and Berk's Facing into Screen Flag is set
C 35647,3 Point HL at script data for Berk turning (facing into screen to facing out of screen)...
C 35650,3 ...and execute
N 35653 Drutt is to the left of Berk
C 35653,1 Load A with Berk's flags
C 35654,2 If either of Berk's Facing into Screen or Facing Left flags are set...
C 35656,2 ...then skip ahead to #R35664
N 35658 Drutt is to the left of Berk, and Berk's Facing into Screen and Facing Left flags are both reset
C 35658,3 Point HL at script data for Berk turning to face left...
C 35661,3 ...and execute
N 35664 Drutt is to the left of Berk and either of Berk's Facing into Screen or Facing Left flags are set
C 35664,3 Point HL at script data for Berk facing left...
C 35667,3 ...and execute
N 35670 Drutt is to the right of Berk
C 35670,1 Load A with Berk's flags
C 35671,2 If either of Berk's Facing into Screen or Facing Right flags are set...
C 35673,2 ...then skip ahead to #R35681
N 35675 Drutt is to the right of Berk, and Berk's Facing into Screen and Facing Right flags are both reset
C 35675,3 Point HL at script data for Berk turning to face right...
C 35678,3 ...and execute
N 35681 Drutt is to the right of Berk and either of Berk's Facing into Screen or Facing Right flags are set
C 35681,3 Point HL at script data for Berk facing right...
C 35684,3 ...and execute
b 35687 Current Position in Berk's Script Data
W 35687,2,2 Berk facing out of screen, ready to respond to control input
c 35689 Update State of Berk and Store Current Position in Script Data
D 35689 Used by the routine at #R34438.
C 35689,4 Load IX with address of complex state data (current level) for Berk
C 35693,3 Store room size data for Berk's current room
C 35696,4 If Berk's "Do Not Update State" Flag is set...
C 35700,1 ...then return
C 35701,3 Load current position in Berk's script data from #R35687 into HL...
C 35704,3 ...and store at #R34277 as position in script currently running
C 35707,3 Update state of Berk depending upon currently selected character, control input and currently active power
C 35710,3 Store address (current position in script data) stored at #R34277...
C 35713,3 ...at #R35687 as current position in Berk's script data
C 35716,3 If Berk's current power is not invisibility (level 3)...
C 35719,2 ...
C 35721,1 ...then return
N 35722 Current power is invisibility (Level 3)
C 35722,3 Load BC with address of blank graphic layout data...
C 35725,3 ...and set this as Berk's current graphic layout data address...
C 35728,3 ...
C 35731,3 Decrease remaining time for current power and if zero, exit this routine and run script data for removal of power
C 35734,1 Return
c 35735 Update State of Berk Depending Upon Currently Selected Character, Control Input and Currently Active Power
D 35735 Used by the routine at #R35689. Input:  IX  Address of complex state data (current level) for Berk
C 35735,4 If Berk's Moving Upwards Flag (floating power) is set...
C 35739,3 ...then jump to #R36542 (update state of Berk,  floating power active)
C 35742,4 If Berk's Must Process Current Script Data Flag is set...
C 35746,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 35749,3 If Drutt Mode Flag is set...
C 35752,2 ...
C 35754,3 ...then jump to #R35577 (change direction Berk is facing depending upon relative position of Drutt)
N 35757 Drutt Mode Flag is reset (i.e. Berk Mode)
C 35757,3 Load A with control input
C 35760,2 If right has been pressed...
C 35762,3 ...then skip ahead to #R36214 (move Berk right if appropriate)
C 35765,2 If left has been pressed...
C 35767,3 ...then skip ahead to #R36137 (move Berk left if appropriate)
C 35770,3 Move Berk into new room (left or right) if he is at the edge of his current room
C 35773,3 Load A with control input
C 35776,2 If forward has been pressed...
C 35778,3 ...then skip ahead to #R36036 (update state of Berk, forward pressed)
C 35781,2 If back has been pressed...
C 35783,3 ...then skip ahead to #R35827
N 35786 At this point, no control has been pressed. This entry point is used by the routines at #R35577, #R36036 and #R36116.
C 35786,4 If Berk is not flying...
C 35790,2 ...then skip ahead to #R35802
N 35792 Berk is flying
C 35792,4 Reset Berk's Is Flying Flag
C 35796,3 Point HL at script data for Berk starting to fall downwards...
C 35799,3 ...and execute
N 35802 No control pressed and Berk not flying
C 35802,4 If Berk's Facing Into Screen Flag is reset...
C 35806,2 ...then skip ahead to #R35821
N 35808 No control pressed, Berk not flying and Berk's Facing Into Screen Flag is set
C 35808,4 If Berk's Unused (11,3) Flag is reset...
C 35812,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
N 35815 No control pressed, Berk not flying, Berk's Facing Into Screen and Unused (11,3) flags are set This entry point is used by the routine at #R35577.
C 35815,3 Point HL at script data for Berk facing into screen, ready to respond to control input...
C 35818,3 ...and execute
N 35821 No control pressed, Berk not flying and Berk's Facing Into Screen Flag is reset This entry point is used by the routine at #R35577.
C 35821,3 Point HL at script data for Berk facing out of screen, ready to respond to control input...
C 35824,3 ...and execute
N 35827 Back Pressed
C 35827,4 If Berk is flying...
C 35831,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 35834,3 If Berk is holding an edible entity them make him eat it, process appropriate script data and return to calling routine
C 35837,3 Temporarily decrease y-coordinate of Berk's top edge
C 35840,3 Check entity at IX for collision with another entity (in reverse order) at next depth level into screen whose Interaction (11,7) Flag is set
C 35843,1 Store AF
C 35844,3 Restore y-coordinate of Berk's top edge
C 35847,1 Restore AF
C 35848,2 If no collision occurred, then skip ahead to #R35953
C 35850,2 If collision was not with an entity of class 33 (door)...
C 35852,2 ...then skip ahead #R35870
N 35854 Collision with door
C 35854,3 If Berk is not horizontally aligned with door then move him closer and exit this routine
N 35857 Berk is now horizontally aligned with door
C 35857,3 If Berk is neither facing into the screen nor walking then exit this routine and have Berk turn into screen
C 35860,4 Store address of complex state data for door at #R34256
C 35864,3 Point HL at script data for Berk interacting with a door behind him...
C 35867,3 ...and execute
N 35870 Collision with something other than door
C 35870,2 If collision was with an entity of class of 22 or greater (can't be picked up)...
C 35872,2 ...then skip ahead to #R35924
N 35874 Collision with entity that can be picked up
C 35874,4 If Berk is already carrying something...
C 35878,3 ...then skip ahead to #R35953
C 35881,3 If Berk is not horizontally aligned with entity then move him closer and exit this routine
N 35884 Berk is now horizontally aligned with entity pointed to by IY
C 35884,3 If Berk is neither facing into the screen nor walking then exit this routine and have Berk turn into screen
C 35887,4 Store address of complex state data for entity at #R34256
C 35891,3 Load B with y-coordinate of Berk's bottom edge...
C 35894,1 ...minus 1 (to take into account different depth)
C 35895,3 Load A with y-coordinate of entity's bottom edge...
C 35898,3 ...and if this is less than the y-coordinate of Berk's top edge...
C 35901,2 ...then skip ahead to #R35918
N 35903 Entity is not above Berk
C 35903,1 If entity's bottom edge is level with Berk's (taking into account different depth)...
C 35904,2 ...then skip ahead to #R35912
N 35906 Entity is above floor and below Berk's top edge
C 35906,3 Point HL at script data for Berk picking up an entity that is above floor and below Berk's top edge and behind him...
C 35909,3 ...and execute
N 35912 Entity is on floor behind Berk
C 35912,3 Point HL at script data for Berk picking up an entity on floor behind him...
C 35915,3 ...and execute
N 35918 Entity is above Berk
C 35918,3 Point HL at script data for Berk picking up an entity above and behind him...
C 35921,3 ...and execute
N 35924 Collision with something that can't be picked up
C 35924,2 If collision was not with entity of class 32 (coloured creatures' slots, Level 3)...
C 35926,2 ...then skip ahead to #R35953
N 35928 Collision with a coloured creature slot
C 35928,4 If Berk is not carrying anything...
C 35932,2 ...then skip ahead to #R35953
N 35934 Berk is carrying something
C 35934,3 If Berk is not horizontally aligned with coloured creature slot then move him closer and exit this routine
N 35937 Berk is now horizontally aligned with coloured creature slot and carrying something
C 35937,3 If Berk is neither facing into the screen nor walking then exit this routine and have Berk turn into screen
C 35940,3 Load A with y-coordinate of top edge of coloured creature slot... (see trivia)
C 35943,1 ...minus 1...
C 35944,3 ...and store at #R34222
C 35947,3 Point HL at script data for Berk putting an entity down above floor behind him...
C 35950,3 ...and execute
N 35953 No collision, collision with non-interactive entity or interaction conditions not met
C 35953,3 If Berk has no current power...
C 35956,1 ...
C 35957,2 ...then skip ahead to #R35969
C 35959,2 If Berk's current power is 1-3 (jumping)...
C 35961,3 ...then skip ahead to #R35995
C 35964,2 If Berk's current power is 4-8 (flying)...
C 35966,3 ...then skip ahead to #R35985
N 35969 Berk has neither jumping nor flying power
C 35969,4 If Berk is not carrying anything...
C 35973,3 ...then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
N 35976 Berk is carrying something
C 35976,3 If Berk is neither facing into the screen nor walking then exit this routine and have Berk turn into screen
C 35979,3 Point HL at script data for Berk putting an entity down on floor behind him...
C 35982,3 ...and execute
N 35985 Berk's current power is flying
C 35985,4 Set Berk's Is Flying Flag
C 35989,3 Point HL at script data for Berk starting to fly...
C 35992,3 ...and execute
N 35995 Berk's current power is jumping
C 35995,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 35998,4 Set Berk's Is Jumping Flag and set initial jump velocity to 1
C 36002,3 Point HL at script data for Berk starting to jump straight up...
C 36005,3 ...and execute
c 36008 Make Berk Eat the Entity He is Holding, if Edible, and Exit Calling Routine
D 36008 Used by the routine at #R35735.
C 36008,3 If Berk is not holding anything...
C 36011,1 ...
C 36012,1 ...then return
C 36013,2 If class value of entity held by Berk is greater than 12...
C 36015,1 ...then return
C 36016,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 36017,3 Move carried entity in front of Berk as he faces out of screen
C 36020,4 Load IY with address of complex state data for entity held by Berk
C 36024,3 Move entity up one character to level of Berk's mouth...
C 36027,3 ...
C 36030,3 Point HL at script data for Berk eating an entity...
C 36033,3 ...and execute
c 36036 Update State of Berk (Forward Pressed)
D 36036 Used by the routine at #R35735. Input:  IX  Address of complex state data (current level) for Berk
C 36036,4 If Berk's Facing Into Screen Flag is reset...
C 36040,3 ...then skip ahead to #R36049
N 36043 Berk's Facing Into Screen Flag is set
C 36043,3 Point HL at script data for Berk turning (facing into screen to facing out of screen)...
C 36046,3 ...and execute
N 36049 Berk's Facing Into Screen Flag is reset
C 36049,3 Clear pointer to complex state data for entity involved in last collision check...
C 36052,4 ...
C 36056,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 36059,2 ...and if no collision occurred, then skip ahead to #R36103
N 36061 Collision occurred
C 36061,2 If collision was not with an entity of class 33 (door)...
C 36063,2 ...then skip ahead to #R36078
N 36065 Collision with door
C 36065,3 If Berk is not horizontally aligned with door then move him closer and exit this routine
N 36068 Berk is now horizontally aligned with door
C 36068,4 Store address of door's complex state data at #R34256
C 36072,3 Point HL at script data for Berk interacting with a door in front of him...
C 36075,3 ...and execute
N 36078 Collision with something other than door
C 36078,4 If Berk's Carrying Something Flag is set...
C 36082,3 ...then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
C 36085,2 If collision was with an entity of class of 22 or greater (can't be picked up)...
C 36087,3 ...then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
N 36090 At this point, Berk is not carrying anything, and the entity he is colliding with is one which can be picked up
C 36090,3 If Berk is not horizontally aligned with entity at IY then move him closer and exit this routine
N 36093 Berk is now horizontally aligned with entity pointed to by IY
C 36093,4 Store address of entity's complex state data at #R34256
C 36097,3 Point HL at script data for Berk picking up an entity on floor in front of him...
C 36100,3 ...and execute
N 36103 No collision occurred
C 36103,4 If Berk is not carrying anything...
C 36107,3 ...then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
N 36110 Berk is carrying something
C 36110,3 Point HL at script data for Berk putting an entity down on floor in front of him...
C 36113,3 ...and execute
c 36116 If Berk is Not Horizontally Aligned with Entity at IY then Move Berk Closer and Exit Calling Routine
D 36116 Used by the routines at #R35735 and #R36036. Input:  IX  Address of complex state data (current level) for Berk IY Address of complex state data for entity with which Berk has collided
C 36116,3 Load A with width of entity at IY, minus 1...
C 36119,3 ...
C 36122,2 ...divide value by 2...
C 36124,2 ...and subtract 2
C 36126,3 Add result to x-coordinate of entity's left edge
N 36129 At this point, A holds the x-coordinate of the middle of the entity at IY, minus two
C 36129,3 If x-coordinate in A is the same as Berk's left side x-coordinate...
C 36132,1 ...then return
C 36133,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 36134,3 If x-coordinate in A is the less than Berk's left side x-coordinate then skip ahead to #R36214
N 36137 This entry point is used by the routine at #R35735. Attempt to move Berk left
C 36137,4 If Berk is flying...
C 36141,2 ...then skip ahead to #R36200
N 36143 Attempt to move Berk left (not flying) (see bugs)
C 36143,4 Reset Berk's Facing Into Screen Flag
C 36147,3 Check Berk for collision with another impassable / pushable entity immediately to the left...
C 36150,2 ...and if a collision occurred, then skip ahead to #R36171
N 36152 No collision
C 36152,3 Move Berk into room to the left, if appropriate...
C 36155,3 ...and if Berk can't enter new room then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
C 36158,4 If Berk's Walking Left Flag is already set...
C 36162,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 36165,3 Point HL at script data for Berk starting to walk left...
C 36168,3 ...and execute
N 36171 Collision occurred with entity to the left
C 36171,2 If collision was not with entity of class 129 (causes other entities to start falling)...
C 36173,2 ...then skip ahead to #R36184
C 36175,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 36178,3 Point HL at script data for Berk starting to fall to the left...
C 36181,3 ...and execute
C 36184,2 If collision was with an entity of class of less than 22 (can be picked up)...
C 36186,2 ...then jump back to #R36158
C 36188,2 If collision was with entity of class 50 (causes Drutt to swap depth levels)...
C 36190,2 ...then jump back to #R36158
C 36192,2 If collision was with entity of class 25 (Green Apebeast, Level 2)...
C 36194,3 ...then set "Berk Has Been Killed" Flag
C 36197,3 Jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
N 36200 Attempt to move Berk left (flying)
C 36200,3 Check Berk for collision with another impassable / pushable entity immediately to the left...
C 36203,3 ...and if a collision has not occurred, then jump to #R48096 (advance HL to next script instruction and execute)
C 36206,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 36208,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 36211,3 Jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
N 36214 This entry point is used by the routine at #R35735. Attempt to move Berk right
C 36214,4 If Berk is flying...
C 36218,3 ...then skip ahead to #R36282
N 36221 Attempt to move Berk right (not flying) (see bugs)
C 36221,4 Reset Berk's Facing Into Screen Flag
C 36225,3 Check Berk for collision with another impassable / pushable entity immediately to the right...
C 36228,2 ...and if a collision occurred, then skip ahead to #R36249
N 36230 No collision
C 36230,3 Move Berk into room to the right, if appropriate...
C 36233,3 ...and if Berk can't enter new room then jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
C 36236,4 If Berk's Walking Right Flag is already set...
C 36240,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 36243,3 Point HL at script data for Berk starting to walk right...
C 36246,3 ...and execute
N 36249 Collision occurred with entity to the right
C 36249,2 If collision was not with entity of class 129 (causes other entities to start falling)...
C 36251,2 ...then skip ahead to #R36266
C 36253,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 36256,4 Load IY with address of complex state data for entity last held by Berk (see trivia)
C 36260,3 Point HL at script data for Berk starting to fall to the right...
C 36263,3 ...and execute
C 36266,2 If collision was with an entity of class of less than 22 (can be picked up)...
C 36268,2 ...then jump back to #R36236
C 36270,2 If collision was with entity of class 50 (causes Drutt to swap depth levels)...
C 36272,2 ...then jump back to #R36236
C 36274,2 If collision was with entity of class 25 (Green Apebeast, Level 2)...
C 36276,3 ...then set "Berk Has Been Killed" Flag
C 36279,3 Jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
N 36282 Attempt to move Berk right (flying)
C 36282,3 Check Berk for collision with another impassable / pushable entity immediately to the right...
C 36285,3 ...and if a collision has not occurred, then jump to #R48096 (advance HL to next script instruction and execute)
C 36288,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 36290,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 36293,3 Jump to #R35786 (terminate Berk's flight, or have him (turn to) face out of screen as appropriate)
c 36296 Make Berk Drop the Entity He is Holding and Load IY with its Complex State Data Address
D 36296 Used by the routines at #R35735, #R36116, #R36390, #R36638, #R39151, #R39278, #R39776, #R48920 and #R53723. Input: IX  Address of complex state data (current level) for Berk Output: IY  Address of complex state data for entity dropped by Berk
C 36296,3 If Berk is not holding anything...
C 36299,1 ...
C 36300,1 ...then return
C 36301,1 Set class of entity held by Berk to zero (i.e. nothing)...
C 36302,3 ...
C 36305,4 Load IY with address of complex state data for entity last held by Berk
C 36309,4 Set this dropped entity's velocity factor to 2...
C 36313,4 ...reset its Is Being Carried Flag...
C 36317,4 ...and set its Can Fall Flag
C 36321,4 Reset Berk's Carrying Something Flag
C 36325,4 If Berk's Walking Right Flag is reset...
C 36329,2 ...then skip ahead to #R36339
C 36331,3 Move dropped entity right one character...
C 36334,3 ...
C 36337,2 Skip ahead to #R36351
C 36339,4 If Berk's Walking Left Flag is reset...
C 36343,2 ...then skip ahead to #R36351
C 36345,3 Move dropped entity left one character...
C 36348,3 ...
C 36351,3 If entity at IY has the x-coordinate of its left side less than 100...
C 36354,2 ...
C 36356,2 ...then move right until left x-coordinate is 100
C 36358,3 Load A with width of current room (chars) + 99
C 36361,3 If entity at IY has the x-coordinate of its right side greater than the width of the current room...
C 36364,2 ...then move right until left x-coordinate is less than room width
C 36366,1 Return
c 36367 If Berk is Neither Facing into the Screen nor Walking then Exit Calling Routine and Have Berk Turn into Screen
D 36367 Used by the routine at #R35735. Input:  IX  Address of complex state data (current level) for Berk
C 36367,4 If Berk's Facing Into Screen Flag is set...
C 36371,1 ...then return
C 36372,3 If either of Berk's Walking Left or Walking Right flags is set...
C 36375,2 ...
C 36377,1 ...then return
C 36378,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 36379,3 Point HL at script data for Berk turning (facing out of screen to facing into screen)...
C 36382,3 ...and execute
c 36385 Script Routine (59) Have Berk Interact Appropriately with a Door Behind Him Output: BC  Address of script data to execute upon arrival of new level
C 36385,3 Load BC with address of script data for Berk facing into screen, ready to respond to control input
C 36388,2 Have Berk interact appropriately with a door
c 36390 Script Routine (58) Have Berk Interact Appropriately with a Door in Front of Him Input:  BC  (entry at #R36393 only) Address of script data to execute upon arrival of new level
C 36390,3 Load BC with address of script data for Berk facing out of screen, ready to respond to control input
N 36393 This entry point is used by the routine at #R36385.
C 36393,4 Store script data address in BC at #R34266
C 36397,3 Load E with Game Flags...
C 36400,1 ...
C 36401,3 Load A with class of entity currently held by Berk...
C 36404,2 ... and if this is not 17 (Key)...
C 36406,2 ...then skip ahead to #R36429
N 36408 Berk is holding a key
C 36408,2 Set door colour to 7 (white, i.e. unlocked)...
C 36410,3 ...
C 36413,3 Make Berk drop the key and load IY with its complex state data address
C 36416,4 Set depth of key to 0 (i.e. out of display)
C 36420,2 Set Level Exit Door Unlocked Flag...
C 36422,1 ...
C 36423,3 ...
C 36426,3 Advance HL to next script instruction and execute
N 36429 Berk is not holding a key
C 36429,2 If Level Exit Door Unlocked Flag is reset...
C 36431,2 ...then skip ahead to #R36462
C 36433,1 Load D with class of entity currently held by Berk
C 36434,3 Set Zero Flag if current level is Level 4...
C 36437,2 ...
C 36439,1 Load A with class of entity currently held by Berk
C 36440,2 If Zero Flag is not set (i.e. we are not on Level 4) then skip ahead to #R36446
N 36442 Level 4
C 36442,2 Set Zero Flag if class of entity currently held by Berk is 19 (Boni)
C 36444,2 Skip ahead to #R36448
N 36446 Not Level 4
C 36446,2 Set Zero Flag if class of entity currently held by Berk is 18 (Drutt)
C 36448,2 If Zero Flag is not set (i.e. Berk is not holding Drutt on Levels 1-3 or Boni on Level 4) then skip ahead to #R36462
N 36450 Berk is holding the correct character
C 36450,3 Remove Berk's current power and reset sweet / mushroom / edible eyes / sausage to its original state
C 36453,3 Advance to next level and if back to Level 1 then exit this routine and make Berk start falling
N 36456 New level is not Level 1
C 36456,3 Load HL with script data address stored at #R34266...
C 36459,3 ...and execute
N 36462 Door is locked or Berk is not holding the correct character
C 36462,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 36465,3 Set "Berk Has Been Killed" Flag
C 36468,3 Advance HL to next script instruction and execute
c 36471 Script Routine (56) Give Berk Power Corresponding to Entity Eaten Input:  IX  Address of complex state data (current level) for Berk
C 36471,3 Remove Berk's current power and reset sweet / mushroom / edible eyes / sausage to its original state
C 36474,3 Set current power value to class of entity currently held by Berk...
C 36477,3 ...
C 36480,1 Set class of entity held by Berk to zero (i.e. none)...
C 36481,3 ...
C 36484,3 Set number of elapsed game-cycles in current block to zero
C 36487,4 Reset Berk's Carrying Something Flag
C 36491,4 Load IY with address of complex state data for entity last held by Berk...
C 36495,3 ...and set its depth to zero (i.e. outside room)
C 36498,3 Initialise remaining duration of power to value encoded entity's complex state data (bits 0-4)...
C 36501,2 ...
C 36503,3 ...
C 36506,3 If Berk's current power is not floating (Level 3)...
C 36509,2 ...
C 36511,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
N 36514 Power is floating
C 36514,4 Set distance Berk will be pushed by Drutt while floating to 12
C 36518,4 Set Berk's Moving Upwards Flag
C 36522,4 Reset Berk's Walking Right, Walking Left, Unused (11,2) and Unused (11,3) flags, and set his Impassable Leftwards, Impassable Rightwards, Interaction (11,6) and Interaction (11,7) flags
C 36526,4 Set bit 7 of Berk's class value (i.e. set "Spans Full Depth" Flag)
C 36530,3 Increase y-coordinate of Berk's bottom edge by two characters...
C 36533,3 ...
C 36536,3 Point HL at script data for Berk gaining floating power...
C 36539,3 ...and execute
c 36542 Update State of Berk (Floating Power Active)
D 36542 Used by the routine at #R35735. Input:  IX  Address of complex state data (current level) for Berk
C 36542,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 36545,2 ...and if collision was with entity of class 130 (causes Berk and Drutt to bounce off or bang head)...
C 36547,2 ...then skip ahead to #R36558
N 36549 No collision with entity of class 130
C 36549,3 Move Berk up one character...
C 36552,3 ...
C 36555,3 Change Berk's room up one if appropriate
C 36558,4 If Berk's Walking Left Flag is set...
C 36562,2 ...then skip ahead to #R36587
C 36564,4 If Berk's Walking Right Flag is set...
C 36568,2 ...then skip ahead to #R36576
C 36570,3 Decrease remaining time for current power and if zero, exit this routine and run script data for removal of power
C 36573,3 Advance HL to next script instruction and execute
N 36576 Berk's Walking Right Flag is set (i.e. Drutt has pushed Berk right)
C 36576,3 Move Berk's left and right sides right by one character...
C 36579,3 ...
C 36582,3 Move Berk at IX into room to the right, if appropriate
C 36585,2 Skip ahead to #R36596
N 36587 Berk's Walking Left Flag is set (i.e. Drutt has pushed Berk left)
C 36587,3 Move Berk's left and right sides left by one character...
C 36590,3 ...
C 36593,3 Move Berk at IX into room to the left, if appropriate
C 36596,3 Decrease remaining horizontal distance from Drutt's push...
C 36599,3 ...and if not zero then jump to #R48096 (advance HL to next script instruction and execute)
C 36602,2 Set remaining power duration to 1...
C 36604,3 ...
C 36607,3 Reset Berk's Walking Left and Walking Right flags, advance HL to next script instruction and execute
c 36610 Script Routine (57) Cycle Attributes (Full-Screen), Clear Display Buffers and Paint Red Areas Outside Current Room
C 36610,3 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
C 36613,3 Advance HL to next script instruction and execute
c 36616 Cycle Attributes (Full-Screen), Clear Display Buffers and Paint Red Areas Outside Current Room
D 36616 Used by the routines at #R36610, #R39584 and #R39760.
C 36616,1 Store HL
C 36617,3 Cycle Attributes (Full-Screen) and Clear Display Buffers
C 36620,3 Paint red areas outside accessible areas of current character's current room
C 36623,1 Restore HL
C 36624,1 Return
b 36625 State Data for Drutt Upon Returning to Level 1
D 36625 After completing Level 4, the data here is written into Drutt's slot in Level 1's State Data for Complex Entities block (#R43333). This ensures that Drutt follows Berk and Boni through the final door.
B 36625,13,13
c 36638 Advance to Next Level and if Back to Level 1 then Exit Calling Routine and Make Berk Start Falling
D 36638 Used by the routine at #R36390.
C 36638,3 Set Update Scores and Display Flag...
C 36641,2 ...
C 36643,3 ...
C 36646,4 Load IY with address of complex state data for Door just interacted with
C 36650,3 Load A with destination level from Door's state data...
C 36653,3 ...and set current level to this value
C 36656,2 If destination level is not Level 1...
C 36658,2 ...then skip ahead to #R36725
N 36660 Destination level is Level 1 (i.e. Level 4 completed)
C 36660,3 Load IX with address of Berk's complex state data and set his horizontal position to match Level 1's entry door
C 36663,4 Set "Back to Level 1" Flag
C 36667,4 Set Berk's room to 10
C 36671,4 Set y-coordinate of Berk's top edge to 103
C 36675,4 Set y-coordinate of Berk's bottom edge to 109
C 36679,4 Load IY with address of Boni's entry in Level 1's State Data for Complex Entities...
C 36683,4 ...and store at #R34256
C 36687,3 Have Berk hold Boni, and position him appropriately between Berk's hands
C 36690,4 Set Boni's depth to 1
C 36694,4 Set Boni's room to 10
C 36698,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 36701,3 Set Berk's Can Fall Flag and set his initial velocity factor to 2
C 36704,3 Lock Level 1's exit door and cycle attributes (full-screen)
C 36707,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 36708,3 Overwrite Drutt's entry in Level 1's State Data for Complex Entities with data at #R36625...
C 36711,3 ...
C 36714,3 ...
C 36717,2 ...
C 36719,3 Point HL at script data for Berk starting to fall downwards...
C 36722,3 ...and execute
N 36725 Destination level is not Level 1
C 36725,3 Set Berk's horizontal position to match Level 1's entry door
C 36728,4 Load IY with address of current level's complex state data for Drutt...
C 36732,4 ...and store at #R34256
C 36736,3 Have Berk hold Drutt, and position him appropriately between Berk's hands
C 36739,3 Reset Level Exit Door Unlocked Flag...
C 36742,2 ...
C 36744,2 Set door colour to 5 (cyan, i.e. locked)...
C 36746,3 ...
C 36749,3 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
C 36752,1 Return
c 36753 Set Berk's Horizontal Position to Match Level 1's Entry Door
D 36753 Used by the routine at #R36638.
C 36753,3 Copy start addresses of current level's data blocks to #R34236 and clean up old data
C 36756,2 Load IY with address of complex state data for first entity that has class of 33 (Entry Door)...
C 36758,3 ...
C 36761,4 Load IX with start address of current level's complex state data for Berk
C 36765,3 Load A with x-coordinate of left of Entry Door...
C 36768,1 ...and add one
C 36769,3 Adjust Berk's horizontal position so that his left side is at coordinate in A...
C 36772,2 ...and his right side is 5 characters to the right of this...
C 36774,3 ...
C 36777,1 Return
c 36778 Initialise Script Data Positions for Flying Skeleton Creature and Bat (Level 1)
D 36778 Used by the routine at #R34751.
C 36778,3 Load HL with start address of script data for Boni's kidnap...
C 36781,3 ...and store this as the current script data position at #R36801
C 36784,3 Load HL with start address of script data for Bat (not attacking)...
C 36787,3 ...and store this as the current script data position at #R37016
C 36790,1 Return
c 36791 Update States of All Level 1 Entities
D 36791 Used by the routine at #R34438.
C 36791,3 Execute script data for Boni's kidnap and handle Trap Door opening and closing
C 36794,3 Update state of Bat (Level 1) and store current position in script data
C 36797,3 Update states of the Spiders (Level 1) and store current positions in script data
C 36800,1 Return
b 36801 Current Position in Script Data for Boni's Kidnap
W 36801,2,2
b 36803 Script Data Boni's Kidnap
B 36803,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36805,4,4 Start loop (2) for 6 iterations
B 36809,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36811,2,2 End loop (2)
B 36813,2,2 Open the Trap Door
B 36815,4,4 Start loop (2) for 10 iterations
B 36819,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36821,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36823,2,2 Move creature up one character
B 36825,2,2 End loop (2)
B 36827,4,4 Start loop (2) for 10 iterations
B 36831,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36833,2,2 Move creature left one character
B 36835,2,2 End loop (2)
B 36837,4,4 Start loop (2) for 10 iterations
B 36841,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36843,2,2 Move creature right one character
B 36845,2,2 End loop (2)
B 36847,4,4 Start loop (2) for 4 iterations
B 36851,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36853,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36855,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36857,2,2 #R51314 (Flying Skeleton Creature, animated)
B 36859,2,2 Move creature up one character
B 36861,2,2 End loop (2)
B 36863,2,2 Remove Boni from Level 1
B 36865,4,4 Start loop (2) for 16 iterations
B 36869,2,2 #R51286 (Boni being kidnapped, shouting for help, animated)
B 36871,2,2 End loop (2)
B 36873,4,4 Start loop (2) for 12 iterations
B 36877,2,2 #R51308 (Boni being kidnapped, mouth closed)
B 36879,2,2 Move creature down one character
B 36881,2,2 End loop (2)
B 36883,2,2 Close the Trap Door
B 36885,2,2 Remove Flying Skeleton Creature from Level 1
c 36887 Execute Script Data for Boni's Kidnap and Handle Trap Door Opening and Closing
D 36887 Used by the routine at #R36791.
C 36887,4 Load IX with address of complex state data for Flying Skeleton Creature
C 36891,3 If Berk and Drutt Through Trap Door Flag is set...
C 36894,2 ...
C 36896,1 ...then return
C 36897,2 If Trap Door Opened Flag is set...
C 36899,2 ...then jump to #R36966 (close the Trap Door if Berk is not in room 1 and Drutt is in room 4)
C 36901,2 If creature's Inactive Flag is set...
C 36903,2 ...then jump to #R36921 (open the Trap Door if Berk is near the left side of the Trap Door room)
C 36905,3 Load current position in script data for Boni's kidnap from #R36801 into HL...
C 36908,3 ...and store at #R34277 as position in script currently running
C 36911,3 Advance HL to next script instruction and start executing
C 36914,3 Store address (current position in script data) stored at #R34277...
C 36917,3 ...at #R36801 as current position in script data for Boni's kidnap
C 36920,1 Return
c 36921 Open Trap Door if Berk is Near the Left Side of the Trap Door Room
D 36921 Used by the routine at #R36887. Input:  IX  Address of complex state data for Flying Skeleton Creature (Level 1)
C 36921,4 Load IY with address of complex state data for Berk (Level 1)
C 36925,3 If x-coordinate of Berk's left side is 104 or greater...
C 36928,2 ...
C 36930,1 ...then return
C 36931,4 Set Trap Door Opened Flag
C 36935,1 Set room of "Closed Trap Door" to 0 (i.e. remove from Trap Door Room)...
C 36936,3 ...
C 36939,1 Increase A to 1 (index of Trap Door Room)...
C 36940,3 ...and set this as the current room of "Open Trap Door"...
C 36943,3 ...and marker (preventing Berk and Drutt passing door lid)
C 36946,1 Return
c 36947 Advance HL to Next Script Instruction and Start Executing
D 36947 Used by the routine at #R36887.
C 36947,3 Advance HL to next script instruction and execute
c 36950 Script Routine (36) Remove Boni from Level 1
C 36950,1 Set Boni's room (Level 1) to zero...
C 36951,3 ...
C 36954,3 Advance HL to next script instruction and execute
c 36957 Script Routine (37) Remove Flying Skeleton Creature from Level 1, and Terminate Script Processing Input:  IX Address of complex state data for an entity
C 36957,1 Set current room of Flying Skeleton Creature (Level 1) to zero...
C 36958,3 ...
C 36961,4 Set Flying Skeleton Creature's Inactive Flag
C 36965,1 Return (i.e. terminate further script processing)
c 36966 Close the Trap Door if Berk is Not in Room 1 and Drutt is in Room 4 (Level 1)
D 36966 See bugs.
C 36966,3 If Berk's current room (Level 1) is 1 (i.e. Trap Door Room)...
C 36969,2 ...
C 36971,1 ...then return
C 36972,3 If Drutt's current room is not 4 (room at bottom of Trap Door Shaft)...
C 36975,2 ...
C 36977,1 ...then return
C 36978,4 Set Berk and Drutt Through Trap Door Flag
C 36982,2 Close the Trap Door and return
c 36984 Script Routine (38) Close the Trap Door
C 36984,3 Close the Trap Door
C 36987,3 Advance HL to next script instruction and execute
c 36990 Script Routine (39) Open the Trap Door
C 36990,3 Open the Trap Door
C 36993,3 Advance HL to next script instruction and execute
c 36996 Close the Trap Door
D 36996 Used by the routines at #R36966 and #R36984.
C 36996,2 Set room of "Closed Trap Door" to 1 (i.e. Trap Door Room)...
C 36998,3 ...
C 37001,1 Decrease A to zero
C 37002,2 Set room of "Open Trap Door" to 0
c 37004 Open the Trap Door
D 37004 Used by the routine at #R36990.
C 37004,1 Set room of "Closed Trap Door" to 0 (i.e. remove from Trap Door Room)...
C 37005,3 ...
C 37008,1 Increase A to 1 (index of Trap Door Room)
N 37009 This entry point is used by the routine at #R36996.
C 37009,3 Set value in A as the current room of "Open Trap Door"...
C 37012,3 ...and marker (preventing Berk and Drutt passing door lid)
C 37015,1 Return
b 37016 Current Position in Bat's Script Data
W 37016,2,2
b 37018 Script Data Bat (Level 1)
D 37018 Stationary (off top of screen)
B 37018,2,2 #R37205 (Flying, full wing flap)
B 37020,4,4 Jump to #R37018
N 37024 Attacking
B 37024,2,2 Set Must Process Current Script Data Flag
B 37026,4,4 Start loop (3) for 8 iterations
B 37030,2,2 #R37216 (Flying, half wing flap)
B 37032,2,2 Move Bat down two characters...
B 37034,2,2 ...
B 37036,2,2 End loop (3)
B 37038,4,4 Start loop (3) for 8 iterations
B 37042,2,2 #R37205 (Flying, full wing flap)
B 37044,2,2 End loop (3)
B 37046,4,4 Start loop (3) for 17 iterations
B 37050,2,2 #R37205 (Flying, full wing flap)
B 37052,2,2 Move Bat up one character
B 37054,2,2 End loop (3)
B 37056,2,2 Reset Must Process Current Script Data Flag
B 37058,4,4 Jump to #R37018
c 37062 Update State of Bat (Level 1) and Store Current Position in Script Data
D 37062 Used by the routine at #R36791.
C 37062,4 Point IX at position data for Bat (Level 1)
C 37066,3 Store room size data for Bat's room
C 37069,3 Load current position in Bat's script data from #R37016 into HL...
C 37072,3 ...and store at #R34277 as position in script currently running
C 37075,3 Update state of Bat
C 37078,3 Store address (current position in script data) stored at #R34277...
C 37081,3 ...at #R37016 as current position in Bat's script data
C 37084,1 Return
c 37085 Update State of Bat (Level 1)
D 37085 Used by the routine at #R37062. Input:  IX  (always #R43463, entry in Level 1 complex state data for Bat) HL Current position in Bat's script data
C 37085,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 37088,2 ...and if no collision occurred, then skip ahead to #R37104
C 37090,2 If collision was not with entity of class 31 (Berk)...
C 37092,2 ...then skip ahead to #R37100
C 37094,3 Set "Berk Has Been Killed" Flag
C 37097,3 Advance HL to next script instruction and execute
C 37100,2 If collision was with entity of class 18 (Drutt)...
C 37102,2 ...then skip ahead to #R37111
C 37104,3 Check entity at IX for collision with another entity (in reverse order) at next depth level into screen whose Interaction (11,7) Flag is set...
C 37107,2 ...and if collision was not with entity of class 18 (Drutt)...
C 37109,2 ...then skip ahead to #R37128
C 37111,4 If Drutt's Can Fall Flag is set...
C 37115,2 ...then skip ahead to #R37128
C 37117,4 Set Drutt's Can Fall Flag
C 37121,4 Set Drutt's Velocity Factor to 2
C 37125,3 Advance HL to next script instruction and execute
C 37128,4 If Bat's Paralysed Flag is set...
C 37132,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 37135,3 If Drutt Mode Flag is set...
C 37138,2 ...
C 37140,2 ...then skip ahead to #R37148
C 37142,4 Load IY with address of current level's complex state data for Berk
C 37146,2 Skip ahead to #R37152
C 37148,4 Load IY with address of current level's complex state data for Drutt
N 37152 At this point, IY points to the complex state data entry for the current character.
C 37152,3 If current character's current room is not the same as the Bat's...
C 37155,3 ...
C 37158,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 37161,3 If the current character's right side...
C 37164,3 ...is to the left of the Bat's left side...
C 37167,2 ...then skip ahead to #R37194
C 37169,3 If the Bat's right side...
C 37172,3 ...is to the left of the current character's left side...
C 37175,2 ...then skip ahead to #R37183
C 37177,3 Point HL at script data for Bat attacking...
C 37180,3 ...and execute
C 37183,3 If the x-coordinate of the Bat's right side is less than 130...
C 37186,2 ...
C 37188,3 ...then move Bat right by one character
C 37191,3 Advance HL to next script instruction and execute
C 37194,2 If the x-coordinate of the Bat's left side is greater than 101...
C 37196,3 ...
C 37199,3 ...then move Bat left by one character
C 37202,3 Advance HL to next script instruction and execute
b 37205 Graphic Layout Data Bat (Level 1) Flying, full wing flap - 3 stages, i.e. hovering at floor-level / going up
B 37205,3,3 Increase current state value n (initially 0), up to maximum of 4, resetting to zero if maximum reached and jump to n-th address in following list:
B 37208,2,2 #R37322 (Bat, full, wings raised, eyes animated)
B 37210,2,2 #R37425 (Bat, full, wings level, eyes animated)
B 37212,2,2 #R37507 (Bat, full, wings down, eyes animated)
B 37214,2,2 #R37425 (Bat, full, wings level, eyes animated)
N 37216 Flying, half wing flap - 2 stages, i.e. going down
B 37216,3,3 Increase current state value n (initially 0), up to maximum of 2, resetting to zero if maximum reached and jump to n-th address in following list:
B 37219,2,2 #R37322 (Bat, full, wings raised, eyes animated)
B 37221,2,2 #R37425 (Bat, full, wings level, eyes animated)
N 37223 Head, body and claws only, eyes animated
B 37223,2,2 Set current graphic set to 6
B 37225,3,3 Process graphic layout data at #R37271 and upon returning, move cursor to base coordinates
B 37228,3,3 Change cursor's x- and y-coordinates by +1 and 0 characters respectively
B 37231,12,3
B 37243,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 37246,24,3
B 37270,1,1 End Marker
N 37271 Eyes, animated
B 37271,3,3 Change cursor's x- and y-coordinates by +1 and +2 characters respectively
B 37274,3,3 Increase current state value n (initially 0), up to maximum of 5, resetting to zero if maximum reached and jump to n-th address in following list:
B 37277,2,2 #R37287 (Bat's eyes, white)
B 37279,2,2 #R37294 (Bat's eyes, yellow)
B 37281,2,2 #R37301 (Bat's eyes, cyan)
B 37283,2,2 #R37308 (Bat's eyes, magenta)
B 37285,2,2 #R37315 (Bat's eyes, red)
N 37287 Eyes, white
B 37287,6,3
B 37293,1,1 End Marker
N 37294 Eyes, yellow
B 37294,6,3
B 37300,1,1 End Marker
N 37301 Eyes, cyan
B 37301,6,3
B 37307,1,1 End Marker
N 37308 Eyes, magenta
B 37308,6,3
B 37314,1,1 End Marker
N 37315 Eyes, red
B 37315,6,3
B 37321,1,1 End Marker
N 37322 Full, wings raised, eyes animated
B 37322,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively and store as new base coordinates
B 37325,3,3 Process graphic layout data at #R37223 and upon returning, move cursor to base coordinates
B 37328,3,3 Change cursor's x- and y-coordinates by -3 and -1 characters respectively
B 37331,45,3
B 37376,3,3 Change cursor's x- and y-coordinates by +3 and -5 characters respectively
B 37379,45,3
B 37424,1,1 End Marker
N 37425 Full, wings level, eyes animated
B 37425,3,3 Process graphic layout data at #R37223 and upon returning, move cursor to base coordinates
B 37428,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 37431,36,3
B 37467,3,3 Change cursor's x- and y-coordinates by +3 and -3 characters respectively
B 37470,36,3
B 37506,1,1 End Marker
N 37507 Full, wings down, eyes animated
B 37507,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 37510,3,3 Process graphic layout data at #R37223 and upon returning, move cursor to base coordinates
B 37513,3,3 Change cursor's x- and y-coordinates by 0 and +2 characters respectively
B 37516,30,3
B 37546,3,3 Change cursor's x- and y-coordinates by +3 and -4 characters respectively
B 37549,30,3
B 37579,1,1 End Marker
b 37580 Table of Current Positions in Spiders' Script Data
W 37580,2,2 Spider 1
W 37582,2,2 Spider 2
W 37584,2,2 Spider 3
c 37586 Update the States of the Spiders (Level 1) and Store Current Positions in Script Data
D 37586 Used by the routine at #R36791.
C 37586,4 Load IX with address of complex state data for Spider 1 (Level 1)
C 37590,4 Load IY with start address of Table of Current Positions in Spiders' Script Data
C 37594,2 Load B with 3 as there are 3 spiders
C 37596,3 Load HL with current position in script data for current spider...
C 37599,3 ...
C 37602,3 ...and store at #R34277 as position in script currently running
C 37605,2 Store IX
C 37607,2 Store IY
C 37609,1 Store BC
C 37610,3 Update the state of the current spider (Level 1)
C 37613,1 Restore BC
C 37614,2 Restore IY
C 37616,2 Restore IX
C 37618,3 Store address (current position in script data for current spider) stored at #R34277...
C 37621,3 ...in table at #R37580 as current position in this spider's script data...
C 37624,3 ...
C 37627,2 Advance IY to next entry in table (i.e. position in next spider's script data)...
C 37629,2 ...
C 37631,3 Advance IX by 13 bytes (i.e. to entry for next spider)...
C 37634,2 ...
C 37636,2 Decrease B (remaining number of spiders to process) and loop back to #R37596
C 37638,1 Return
c 37639 Update the State of a Spider (Level 1)
D 37639 Used by the routine at #R37586. Input:  IX  Address of complex state data for a (Level 1) spider (#R43749, #R43762 or #R43775)
C 37639,3 If "Reset Spiders to Initial State" Flag is reset...
C 37642,2 ...
C 37644,2 ...then skip ahead to #R37662
C 37646,2 Reset complex state data for right-hand spider to that stored in Initial-State Table...
C 37648,3 ...
C 37651,2 Reset complex state data for middle spider to that stored in Initial-State Table...
C 37653,3 ...
C 37656,2 Reset complex state data for left-hand spider to that stored in Initial-State Table...
C 37658,3 ...
C 37661,1 Return
C 37662,2 If Berk Has Been Killed Flag is set...
C 37664,1 ...then return
C 37665,3 Check entity at IX for collision with another entity at next depth level out of screen whose Interaction (11,6) Flag is set...
C 37668,2 ...and if collision was not with entity of class 31 (Berk)...
C 37670,2 ...then skip ahead to #R37685
C 37672,3 Set "Berk Has Been Killed" Flag
C 37675,3 Increase count of number of times a spider has killed Berk...
C 37678,1 ...
C 37679,3 ...
C 37682,3 Advance HL to next script instruction and execute
C 37685,4 Load IY with address of current level's complex state data for Berk
C 37689,4 If spider's Must Process Current Script Data Flag is set...
C 37693,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 37696,3 If the spider and Berk are in different rooms...
C 37699,3 ...
C 37702,1 ...then return
C 37703,3 Load A with the x-coordinate of the spider's right side...
C 37706,2 ...plus 4...
C 37708,3 ...and if the x-coordinate of Berk's left side is greater than this...
C 37711,1 ...then return
C 37712,3 Point HL at script data for spider moving down...
C 37715,3 ...and execute
c 37718 Script Routine (41) Move Spider Up One Character and, if Home, Reset its Timer and Make it Wait Input:  IX Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 37718,3 If y-coordinate of bottom of entity IX (spider) is not 106...
C 37721,2 ...
C 37723,3 ...then move entity up one character and return
C 37726,2 Load C with 20
C 37728,3 If entity class is not 27 (right-most spider, Level 1)...
C 37731,2 ...
C 37733,2 ...then skip ahead to #R37744
N 37735 The following code affects the behaviour of the right-most spider depending upon how many times Berk has been killed by a spider. See (trivia) and (pokes).
C 37735,3 Load number of times Berk has been killed by a spider into A...
C 37738,2 ...and divide by four, discarding remainder...
C 37740,2 ...
C 37742,1 Add this value to C, in C...
C 37743,1 ...
C 37744,3 Load spider's timer with this value
C 37747,3 Point HL at script data for spider waiting...
C 37750,3 ...and execute
c 37753 Script Routine (42) Decrease Remaining Time Until Spider Next Descends and if Zero, Start Descent Input:  IX Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 37753,4 If spider's Must Process Current Script Data Flag is reset...
C 37757,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 37760,3 If Spider's timer is zero...
C 37763,1 ...
C 37764,2 ...then skip ahead to #R37772
C 37766,3 Decrease remaining time on spider's timer
C 37769,3 Advance HL to next script instruction and execute
C 37772,3 Point HL at script data for spider moving down...
C 37775,3 ...and execute
c 37778 Script Routine (40) Move Spider Down One Character, and if at Bottom, Advance it to Bounce / Climb Up Mode Input: IX  Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 37778,3 If entity's bottom y-coordinate is less than 119...
C 37781,2 ...
C 37783,3 ...then move entity down one character and process next script data
C 37786,3 Point HL at script data for bounce / climb up mode...
C 37789,3 ...and execute
b 37792 Script Data Spiders (Level 1)
D 37792 Waiting
B 37792,2,2 #R37888 (Spider, web trail slack)
B 37794,2,2 Decrease remaining time until spider next descends and if zero, start descent
B 37796,4,4 Jump to #R37792
N 37800 Moving down
B 37800,2,2 Set Must Process Current Script Data Flag
B 37802,2,2 #R37888 (Spider, web trail slack)
B 37804,4,4 If current character and target entity are in the same room then set pending sound to 7 (spider sound)
B 37808,2,2 Move spider down one character, and if at bottom, advance it to bounce / climb up mode
B 37810,2,2 Move spider down one character, and if at bottom, advance it to bounce / climb up mode
B 37812,4,4 Jump to #R37800
N 37816 Bounce / climb up mode
B 37816,2,2 #R37872 (Spider, web trail stretched)
B 37818,2,2 Move Spider up one character
B 37820,2,2 #R37888 (Spider, web trail slack)
B 37822,2,2 Move Spider up one character
B 37824,2,2 #R37888 (Spider, web trail slack)
B 37826,2,2 Move Spider up one character
B 37828,2,2 #R37888 (Spider, web trail slack)
B 37830,2,2 Move Spider down one character
B 37832,2,2 #R37888 (Spider, web trail slack)
B 37834,2,2 Move Spider down one character
B 37836,2,2 #R37872 (Spider, web trail stretched)
B 37838,2,2 #R37872 (Spider, web trail stretched)
B 37840,2,2 Move Spider up one character
B 37842,2,2 #R37888 (Spider, web trail slack)
B 37844,2,2 #R37888 (Spider, web trail slack)
B 37846,2,2 Move Spider down one character
B 37848,2,2 #R37872 (Spider, web trail stretched)
B 37850,2,2 #R37872 (Spider, web trail stretched)
B 37852,2,2 Move Spider up one character
B 37854,2,2 #R37888 (Spider, web trail slack)
B 37856,2,2 #R37888 (Spider, web trail slack)
B 37858,2,2 #R37888 (Spider, web trail slack)
B 37860,2,2 #R37888 (Spider, web trail slack)
B 37862,2,2 #R37950 (Spider climbing up web trail)
B 37864,2,2 #R37950 (Spider climbing up web trail)
B 37866,2,2 Move spider up one character and, if home, reset its timer and make it wait
B 37868,4,4 Jump to #R37864
b 37872 Graphic Layout Data Spiders (Level 1) Spider, web trail stretched
B 37872,2,2 Set current graphic set to 5
B 37874,2,2 Set sound 7 (spider sound) as pending
B 37876,3,3 Change cursor's x- and y-coordinates by +1 and -10 characters respectively
B 37879,2,2 Set Repeat Counter A to 11
B 37881,3,3
B 37884,1,1 Decrement Repeat Counter A and loop back to #R37881 if not zero
B 37885,3,3 Jump to #R37899 (spider, facing down)
N 37888 Spider, web trail slack
B 37888,2,2 Set current graphic set to 5
B 37890,3,3 Change cursor's x- and y-coordinates by +1 and -10 characters respectively
B 37893,2,2 Set Repeat Counter A to 11
B 37895,3,3
B 37898,1,1 Decrement Repeat Counter A and loop back to #R37895 if not zero
N 37899 Spider, facing down
B 37899,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 37902,18,3
B 37920,4,4 Modify following instruction to display graphic of random index, chosen from 26 and 27
B 37924,3,3
B 37927,3,3 Change cursor's x- and y-coordinates by -2 and -1 characters respectively
B 37930,2,2 Jump to one of the 2 addresses in the following list, chosen at random:
B 37932,2,2 #R37936 (Spider's eyes, large pupils)
B 37934,2,2 #R37943 (Spider's eyes, small pupils)
N 37936 Spider's eyes, large pupils
B 37936,6,3
B 37942,1,1 End Marker
N 37943 Spider's eyes, small pupils
B 37943,6,3
B 37949,1,1 End Marker
N 37950 Spider climbing up web trail
B 37950,2,2 Set current graphic set to 5
B 37952,3,3 Change cursor's x- and y-coordinates by +1 and -10 characters respectively
B 37955,2,2 Set Repeat Counter A to 12
B 37957,3,3
B 37960,1,1 Decrement Repeat Counter A and loop back to #R37957 if not zero
B 37961,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 37964,12,3
B 37976,3,3 Increase current state value n (initially 0), up to maximum of 2, resetting to zero if maximum reached and jump to n-th address in following list:
B 37979,2,2 #R37983 (Spider's legs, left extended, right not, climbing up web trail)
B 37981,2,2 #R37996 (Spider's legs, right extended, left not, climbing up web trail)
N 37983 Spider's legs (left extended, right not), climbing up web trail
B 37983,3,3 Change cursor's x- and y-coordinates by -2 and -3 characters respectively
B 37986,9,3
B 37995,1,1 End Marker
N 37996 Spider's legs (right extended, left not), climbing up web trail
B 37996,3,3 Change cursor's x- and y-coordinates by 0 and -3 characters respectively
B 37999,9,3
B 38008,1,1 End Marker
c 38009 Update States of All Level 2 Entities
D 38009 Used by the routine at #R34438.
C 38009,3 Update states of stalactites (Level 2)
C 38012,3 Update states of apebeasts (Level 2) and store current positions in script data
C 38015,3 Update state of Bubo (Level 2) and store current position in script data
C 38018,3 Update state of Bubo's projectile
C 38021,1 Return
b 38022 Current Position in Bubo's Script Data
W 38022,2,2
b 38024 Script Data Bubo
B 38024,2,2 Reset Must Process Current Script Data Flag
B 38026,2,2 #R38996 (Bubo, normal, animated)
B 38028,4,4 Jump to #R38024
N 38032 Firing
B 38032,2,2 Set Must Process Current Script Data Flag
B 38034,4,4 Start loop (2) for 4 iterations
B 38038,2,2 #R39038 (Bubo, pre/post firing)
B 38040,2,2 End loop (2)
B 38042,2,2 #R39070 (Bubo, squashed, firing)
B 38044,2,2 #R39106 (Bubo, squashed, firing, with explosion)
B 38046,2,2 Fire Bubo's projectile
B 38048,2,2 #R39038 (Bubo, pre/post firing)
B 38050,4,4 Jump to #R38024
c 38054 Update State of Bubo (Level 2) and Store Current Position in Script Data
D 38054 Used by the routine at #R38009.
C 38054,4 Load IX with address of complex state data for Bubo (Level 2)
C 38058,3 Load HL with current position in Bubo's script data from #R38022...
C 38061,3 ...and store at #R34277 as position in script currently running
C 38064,3 Update state of Bubo
C 38067,3 Store address (current position in script data) stored at #R34277...
C 38070,3 ...at #R38022 as current position in Bubo's script data
C 38073,1 Return
c 38074 Update State of Bubo
D 38074 Used by the routine at #R38054. Input:  IX  Address of complex state data for Bubo (Level 2)
C 38074,4 If Bubo's Harmless Flag is set...
C 38078,2 ...then skip ahead to #R38101
C 38080,3 If Berk's current power is not immunity to Bubo (Level 2)...
C 38083,2 ...
C 38085,2 ...then skip ahead to #R38093
C 38087,4 Set Bubo's Harmless Flag
C 38091,2 Skip ahead to #R38101
C 38093,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 38096,2 ...and if collision was with entity of class 31 (Berk)...
C 38098,3 ...then set "Berk Has Been Killed" Flag
C 38101,4 Load IY with address of complex state data for Bubo's Projectile (Level 2)
C 38105,4 If Bubo's Must Process Current Script Data Flag is set (Bubo firing)...
C 38109,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 38112,4 If Projectile's Fired Flag is set...
C 38116,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 38119,4 If Bubo is not being carried...
C 38123,2 ...then skip ahead to #R38132
C 38125,4 Set Bubo's Waiting to Fire Flag
C 38129,3 Advance HL to next script instruction and execute
N 38132 The code block below is only entered if Bubo's Must Process Current Script Data Flag is reset (i.e. he is not firing), the Projectile's Fired Flag is reset and Bubo is not being carried.
C 38132,3 If Bubo has a depth of 2...
C 38135,2 ...
C 38137,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 38140,4 If Bubo's Waiting to Fire Flag is set, i.e. he has just been dropped...
C 38144,2 ...then skip ahead to #R38155 (make Bubo fire)
C 38146,2 Load A with a random number, 0-59...
C 38148,3 ...
C 38151,1 ...and if this is not zero (59 in 60 chance)...
C 38152,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 38155,4 Reset Bubo's Waiting to Fire Flag
C 38159,3 Point HL at script data for Bubo firing...
C 38162,3 ...and execute
c 38165 Script Routine (61) Fire Bubo's Projectile
D 38165 Note that Bubo normally can't fire when being carried (see instructions at #R38119), however if he starts to fire immediately before being picked up, then his Being Carried Flag will be set by the time execution reaches this routine. Input:  IX  Address of complex state data for Bubo (Level 2) IY  Address of complex state data for Bubo's projectile
C 38165,4 Set projectile's Fired Flag
C 38169,4 If Bubo is being carried...
C 38173,2 ...then skip ahead to #R38181
C 38175,4 Set projectile's Velocity Factor to -5
C 38179,2 Skip ahead to #R38185
C 38181,4 Set projectile's Velocity Factor to -10
C 38185,3 Set projectile's x-coordinate to one more than Bubo's...
C 38188,1 ...
C 38189,3 ...
C 38192,3 ...
C 38195,3 Set projectile's y-coordinate to be three less than Bubo's...
C 38198,2 ...
C 38200,3 ...
C 38203,3 ...
C 38206,3 Set projectile's room to be same as Bubo's...
C 38209,3 ...
C 38212,4 Set projectile's depth to zero
C 38216,3 Advance HL to next script instruction and execute
c 38219 Update State of Bubo's Projectile
D 38219 Used by the routine at #R38009.
C 38219,4 Load IX with address of complex state data for Bubo's Projectile (Level 2)
C 38223,4 If projectile's Fired Flag is reset...
C 38227,1 ...then return
C 38228,4 If projectile's Has Hit Target Flag is reset...
C 38232,2 ...then update position of projectile and knock key down if appropriate
C 38234,3 Point BC at graphic layout data for Bubo's Projectile...
C 38237,3 ...and set this as the Graphic Lookup Address for the projectile's complex state data entry...
C 38240,3 ...
C 38243,4 Reset projectile's Has Hit Target Flag and Fired Flag
C 38247,4 Set projectile's depth to zero
C 38251,1 Return
C 38252,4 Point IY at complex state data for Bubo (Level 2)
C 38256,3 If projectile's velocity factor is not zero...
C 38259,1 ...
C 38260,2 ...then skip ahead to #R38267
C 38262,3 Start level 2 key falling if Bubo's projectile is in place below it
C 38265,2 Jump to #R38361 (increase velocity and handle landing if appropriate)
C 38267,2 If bit 7 of projectile's velocity factor is set (i.e. negative, moving upwards)...
C 38269,2 ...then skip ahead to #R38336
C 38271,2 If projectile's velocity factor is less than 6...
C 38273,2 ...then skip ahead to #R38277
C 38275,2 Load A with 5 (terminal velocity)
C 38277,1 Load B with velocity value
C 38278,1 Store BC (B = remaining velocity value)
C 38279,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 38282,2 ...and if no collision occurred, then skip ahead to #R38328
C 38284,2 If collision was not with entity of class 31 (Berk)...
C 38286,2 ...then skip ahead to #R38293
C 38288,3 Set "Berk Has Been Killed" Flag
C 38291,2 Skip ahead to #R38328
C 38293,2 If collision was not with entity of class 25 (Green Apebeast, Level 2)...
C 38295,2 ...then skip ahead to #R38328
C 38297,3 Load A with current character's current room...
C 38300,3 ...and if this is not the same as the projectile's room...
C 38303,2 ...then skip ahead to #R38328
C 38305,4 Set Ape Beast's depth to zero
C 38309,4 Reset Ape Beast's flags
C 38313,3 Point BC at graphic layout data for Explosion (Bubo's Projectile / Fallen Drips, Level 4)...
C 38316,3 ...and set this as the Graphic Lookup Address for the projectile's complex state data entry...
C 38319,3 ...
C 38322,4 Set projectile's Has Hit Target Flag
C 38326,1 Restore BC (B = current velocity factor)
C 38327,1 Return
C 38328,3 Move projectile down one character
C 38331,1 Restore BC (B = current velocity factor)
C 38332,2 Decrease remaining velocity value and loop back to #R38278 if not zero
C 38334,2 Skip ahead to #R38361 (increase velocity and handle landing if appropriate)
N 38336 Projectile moving upwards
C 38336,2 Multiply projectile's velocity factor by -1
C 38338,2 If projectile's velocity factor is now less than 6...
C 38340,2 ...then skip ahead to #R38344 (change projectile's y-coordinate based upon velocity)
C 38342,2 Load A with 5 (i.e. cap velocity magnitude at 5)
C 38344,2 Multiply value in A by -1...
C 38346,1 ...and load value (capped velocity) into E
C 38347,3 Decrease projectile's y-coordinate by value in E...
C 38350,1 ...
C 38351,3 ...
C 38354,3 ...
C 38357,1 ...
C 38358,3 ...
C 38361,3 If projectile's y-coordinate is at least 124...
C 38364,2 ...
C 38366,2 ...then skip ahead to #R38372 (reset projectile's Fired Flag and return)
C 38368,3 Increase projectile's velocity factor by one
C 38371,1 Return
C 38372,4 Reset projectile's Fired Flag
C 38376,1 Return
c 38377 Start Level 2 Key Falling if Bubo's Projectile is in Place Below it
D 38377 Used by the routine at #R38219. Input:  IX  Address of complex state data for Bubo's projectile (Level 2)
C 38377,3 If room of projectile is not 1...
C 38380,2 ...
C 38382,1 ...then return
C 38383,3 If projectile's left-side has an x-coordinate less than 114...
C 38386,2 ...
C 38388,1 ...then return
C 38389,2 If projectile's left-side has an x-coordinate of 118 or more...
C 38391,1 ...then return
C 38392,4 Load IY with address of complex state data for Key (Level 2)
C 38396,3 If key's room is not 2...
C 38399,2 ...
C 38401,1 ...then return
C 38402,4 If key's Is Falling Flag is set...
C 38406,1 ...then return
C 38407,4 Set key's Is Falling Flag
C 38411,4 Set key's velocity factor to 2
C 38415,1 Return
b 38416 Table of Initial Positions in Apebeasts' Script Data
W 38416,2,2 Apebeast 1 (Level 2)
W 38418,2,2 Apebeast 2 (Level 2)
W 38420,2,2 Apebeast 3 (Level 2)
W 38422,2,2 Apebeast 4 (Level 2)
b 38424 Table of Current Positions in Apebeasts' Script Data
W 38424,2,2 Apebeast 1 (Level 2)
W 38426,2,2 Apebeast 2 (Level 2)
W 38428,2,2 Apebeast 3 (Level 2)
W 38430,2,2 Apebeast 4 (Level 2)
b 38432 Script Data Apebeast Walking Right
B 38432,2,2 Set Apebeast's Walking Right Flag
B 38434,2,2 Check position of apebeast and turn if appropriate
B 38436,2,2 Move apebeast right one character
B 38438,2,2 #R38822 (Apebeast, walking right, frame 3)
B 38440,2,2 #R38766 (Apebeast, walking right, frame 1)
B 38442,2,2 #R38794 (Apebeast, walking right, frame 2)
B 38444,2,2 #R38794 (Apebeast, walking right, frame 2)
B 38446,4,4 Jump back to #R38432
b 38450 Script Data Apebeast Walking Left
B 38450,2,2 Set Apebeast's Walking Left Flag
B 38452,2,2 Check position of apebeast and turn if appropriate
B 38454,2,2 Move apebeast left one character
B 38456,2,2 #R38937 (Apebeast, walking left, frame 3)
B 38458,2,2 #R38881 (Apebeast, walking left, frame 1)
B 38460,2,2 #R38909 (Apebeast, walking left, frame 2)
B 38462,2,2 #R38909 (Apebeast, walking left, frame 2)
B 38464,4,4 Jump back to #R38450
c 38468 Reset Current Positions in Apebeasts' Script Data to Initial Values
D 38468 Used by the routine at #R34751.
C 38468,3 Point DE at Table of Current Positions in Apebeasts' Script Data
C 38471,3 Point HL at Table of Initial Positions in Apebeasts' Script Data
C 38474,3 Load BC with 8 (as there are eight bytes to copy)
C 38477,2 Overwrite addresses in Table of Current Positions with those from Table of Initial Positions
C 38479,1 Return
c 38480 Update States of Apebeasts (Level 2) and Store Current Positions in Script Data
D 38480 Used by the routine at #R38009.
C 38480,4 Load IX with address of complex state data for Green Apebeast 1 (Level 2)
C 38484,4 Point IY at Table of Current Positions in Apebeasts' Script Data
C 38488,3 If depth of Apebeast is zero (i.e. Apebeast killed by Bubo)...
C 38491,1 ...
C 38492,2 ...then skip ahead to #R38523 (i.e. move onto next apebeast)
C 38494,3 Load HL with current position in script data for current apebeast...
C 38497,3 ...
C 38500,3 ...and store at #R34277 as position in script currently running
C 38503,2 Store IX
C 38505,2 Store IY
C 38507,3 Update the state of the current apebeast
C 38510,2 Restore IY
C 38512,2 Restore IX
C 38514,3 Store address (current position in script data for current apebeast) stored at #R34277...
C 38517,3 ...in table at #R38424 as current position in this apebeast's script data...
C 38520,3 ...
C 38523,2 Advance IY to next entry in table (i.e. position in next apebeast's script data)...
C 38525,2 ...
C 38527,3 Advance IX by 13 bytes (i.e. to entry for next apebeast)...
C 38530,2 ...
C 38532,3 If class of this next entry is 25 (i.e. Apebeast)...
C 38535,2 ...
C 38537,2 ...then loop back to #R38488
C 38539,1 Return
c 38540 Update State of an Apebeast
D 38540 Used by the routine at #R38480.
C 38540,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 38543,3 ...and if no collision occurred, then jump to #R48096 (advance HL to next script instruction and execute)
C 38546,2 If collision was with entity of class 31 (Berk)...
C 38548,3 ...then set "Berk Has Been Killed" Flag
C 38551,3 Advance HL to next script instruction and execute
c 38554 Script Routine (60) Check Position of Apebeast and Turn If Appropriate Input:  IX  Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 38554,4 If Apebeast's Walking Right Flag is set...
C 38558,2 ...then skip ahead to #R38575
N 38560 Apebeast walking left
C 38560,3 If minimum allowed x-coordinate of Apebeast...
C 38563,3 ...is less than x-coordinate of left edge of Apebeast...
C 38566,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 38569,3 Point HL at script data for Apebeast walking right...
C 38572,3 ...and execute
N 38575 Apebeast walking right
C 38575,3 If minimum allowed x-coordinate of Apebeast...
C 38578,2 ...plus 13...
C 38580,3 ...is equal to or greater than x-coordinate of right edge of Apebeast...
C 38583,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 38586,3 Point HL at script data for Apebeast walking left...
C 38589,3 ...and execute
c 38592 Update States of Stalactites (Level 2)
D 38592 Used by the routine at #R38009.
C 38592,4 Load IX with address of complex state data for first of seven falling stalactites (Level 2)
C 38596,3 If current entity class is not 34 (Stalactite, Level 2)...
C 38599,2 ...
C 38601,1 ...then return
C 38602,3 If velocity factor of stalactite is not zero (i.e. it is falling)...
C 38605,1 ...
C 38606,2 ...then skip ahead to #R38635
C 38608,2 Load A with a random number, 0-39...
C 38610,3 ...
C 38613,1 ...and if this is not zero (39 in 40 chance)...
C 38614,3 ...then advance IX to next entry in complex state data and loop back to #R38596
C 38617,3 Move stalactite down one character and load A with new top y-coordinate
C 38620,3 Load A with top y-coordinate of stalactite (see trivia)
C 38623,2 If new top y-coordinate is not 101
C 38625,3 ...then advance IX to next entry in complex state data and loop back to #R38596
C 38628,4 Set stalactite's velocity factor to 1
C 38632,3 Advance IX to next entry in complex state data and loop back to #R38596
C 38635,2 If velocity factor is not 1...
C 38637,2 ...then check for collision with Berk killing him if so, ensure stalactite is falling and update its vertical position (#R38707)
C 38639,3 Load E with x-coordinate of left of stalactite
C 38642,4 Load IY with address of current level's complex state data for Berk
C 38646,3 If Berk's current room is not the same as the stalactite's...
C 38649,3 ...
C 38652,2 ...then skip ahead to #R38679 to check Drutt's position
C 38654,3 If Berk's Walking Left Flag is set...
C 38657,2 ...
C 38659,2 ...then skip ahead to #R38673
C 38661,2 If Berk's Walking Right Flag is not set...
C 38663,2 ...then skip ahead to #R38679 to check Drutt's position
C 38665,3 If Berk's right-side x-coordinate is the same as the stalactite's left-side x-coordinate...
C 38668,1 ...
C 38669,2 ...then check for collision with Berk killing him if so, ensure stalactite is falling and update its vertical position (#R38707)
C 38671,2 Skip ahead to #R38679 to check Drutt's position
C 38673,3 If Berk's left-side x-coordinate is the same as the stalactite's left-side x-coordinate...
C 38676,1 ...
C 38677,2 ...then check for collision with Berk killing him if so, ensure stalactite is falling and update its vertical position (#R38707)
C 38679,4 Load IY with address of complex state data for Drutt (Level 2)
C 38683,3 If Drutt's current room is not the same as the stalactite's...
C 38686,3 ...
C 38689,2 ...then skip ahead to #R38699
C 38691,3 If Drutt's left-side x-coordinate is the same as the stalactite's left-side x-coordinate...
C 38694,3 ...
C 38697,2 ...then check for collision with Berk killing him if so, ensure stalactite is falling and update its vertical position (#R38707)
C 38699,2 Load A with a random number, 0-199...
C 38701,3 ...
C 38704,1 ...and if this is not zero (199 in 200 chance)...
C 38705,2 ...then advance IX to next entry in complex state data and loop back to #R38596
C 38707,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 38710,2 ...and if collision was not with entity of class 31 (Berk)...
C 38712,2 ...then skip ahead to #R38718 (start stalactite falling)
C 38714,3 Set "Berk Has Been Killed" Flag
C 38717,1 Return
C 38718,3 Load B with stalactite's velocity factor...
C 38721,3 ...and move stalactite down by this many characters...
C 38724,2 ...
C 38726,3 Increase stalactite's velocity factor by one
C 38729,3 If y-coordinate of top of stalactite is less than 150...
C 38732,2 ...
C 38734,2 ...then advance IX to next entry in complex state data and loop back to #R38596
C 38736,4 Move stalactite back to top of room...
C 38740,4 ...
C 38744,4 ...and set its velocity factor to zero
C 38748,3 Advance IX by 13 bytes to move to next complex state data entry...
C 38751,2 ...
C 38753,3 ...and loop back to #R38596 for next entity
c 38756 Move Entity at IX Down One Character
D 38756 Used by the routines at #R38219 and #R38592. Input:  IX  Address of complex state data for an entity Output: A New y-coordinate of entity's top
C 38756,3 Increase y-coordinates of top and bottom of entity by one character...
C 38759,3 ...
C 38762,3 Load new y-coordinate of entity's top into A
C 38765,1 Return
b 38766 Graphic Layout Data Green Apebeast (Level 2) Walking right (frame 1)
B 38766,3,3 Change cursor's x- and y-coordinates by +2 and -1 characters respectively
B 38769,3,3 Process graphic layout data at #R38856 and upon returning, move cursor to base coordinates
B 38772,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 38775,18,3
B 38793,1,1 End Marker
N 38794 Walking right (frame 2)
B 38794,3,3 Change cursor's x- and y-coordinates by +2 and -2 characters respectively
B 38797,3,3 Process graphic layout data at #R38856 and upon returning, move cursor to base coordinates
B 38800,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 38803,18,3
B 38821,1,1 End Marker
N 38822 Walking right (frame 3)
B 38822,3,3 Change cursor's x- and y-coordinates by +2 and -1 characters respectively
B 38825,3,3 Process graphic layout data at #R38856 and upon returning, move cursor to base coordinates
B 38828,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 38831,24,3
B 38855,1,1 End Marker
N 38856 Head (right-facing)
B 38856,2,2 Set current graphic set to 9
B 38858,3,3
B 38861,4,4 Modify following instruction to display graphic of random index, chosen from 20 and 21
B 38865,15,3
B 38880,1,1 End Marker
N 38881 Walking left (frame 1)
B 38881,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 38884,3,3 Process graphic layout data at #R38971 and upon returning, move cursor to base coordinates
B 38887,3,3 Change cursor's x- and y-coordinates by +2 and -1 characters respectively
B 38890,18,3
B 38908,1,1 End Marker
N 38909 Walking left (frame 2)
B 38909,3,3 Change cursor's x- and y-coordinates by 0 and -2 characters respectively
B 38912,3,3 Process graphic layout data at #R38971 and upon returning, move cursor to base coordinates
B 38915,3,3 Change cursor's x- and y-coordinates by +2 and -1 characters respectively
B 38918,18,3
B 38936,1,1 End Marker
N 38937 Walking left (frame 3)
B 38937,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 38940,3,3 Process graphic layout data at #R38971 and upon returning, move cursor to base coordinates
B 38943,3,3 Change cursor's x- and y-coordinates by +2 and -1 characters respectively
B 38946,24,3
B 38970,1,1 End Marker
N 38971 Head (left-facing)
B 38971,2,2 Set current graphic set to 9
B 38973,4,4 Modify following instruction to display graphic of random index, chosen from 20 and 21
B 38977,18,3
B 38995,1,1 End Marker
b 38996 Graphic Layout Data Bubo (Level 2) Normal, animated
B 38996,2,2 Set current graphic set to 9
B 38998,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 39001,12,3
B 39013,7,7 Decrease timer value (initially 2) and if now zero then reset to 10 and load one of the 3 following values at random into the Graphic Index field of the following instruction
B 39020,15,3
B 39035,3,3 Jump to #R39096 (Bubo's feet)
N 39038 Pre/post firing
B 39038,2,2 Set current graphic set to 9
B 39040,3,3 Change cursor's x- and y-coordinates by +1 and -2 characters respectively
B 39043,24,3
B 39067,3,3 Jump to #R39096 (Bubo's feet)
N 39070 Squashed, firing
B 39070,2,2 Set current graphic set to 9
B 39072,24,3
N 39096 Feet
B 39096,9,3
B 39105,1,1 End Marker
N 39106 Squashed, firing, with explosion
B 39106,3,3 Process graphic layout data at #R39070 and upon returning, move cursor to base coordinates
B 39109,3,3 Change cursor's x- and y-coordinates by 0 and -2 characters respectively
B 39112,18,9
B 39130,1,1 End Marker
b 39131 Graphic Layout Data Bubo's Projectile (Level 2)
B 39131,2,2 Set current graphic set to 9
B 39133,3,3
B 39136,1,1 End Marker
c 39137 Update States of All Level 3 Entities
D 39137 Used by the routine at #R34438.
C 39137,3 Update state of Large Yellow Creature
C 39140,3 Update states of coloured creatures
C 39143,3 Update state of Clawed Foot
C 39146,3 Update state of Hatch
C 39149,1 Return
b 39150 Hatch State Index (Level 3)
B 39150,1,1
c 39151 Update State of Hatch (Level 3)
D 39151 Used by the routine at #R39137.
C 39151,4 Load IX with address of current level's complex state data for Berk
C 39155,3 If Hatch State Index is zero...
C 39158,1 ...
C 39159,1 ...
C 39160,2 ...then skip ahead to #R39176
N 39162 Hatch State Index is not zero
C 39162,1 Increase Hatch State Index
C 39163,2 If Hatch State Index is 2 (Berk was thrown 1 cycle ago)...
C 39165,2 ...then skip ahead to #R39264
C 39167,2 If Hatch State Index is 10 (Berk was thrown 9 cycles ago)...
C 39169,2 ...then skip ahead to #R39259
C 39171,2 If Hatch State Index is 11 (Berk was thrown 10 cycles ago)...
C 39173,2 ...then skip ahead to #R39269
C 39175,1 Return
N 39176 Hatch State Index is zero
C 39176,4 If Berk's Must Process Current Script Data Flag is set...
C 39180,1 ...then return
C 39181,3 If Berk's room is not 4 (Hatch Room)...
C 39184,2 ...
C 39186,1 ...then return
C 39187,3 If y-coordinate of Berk's bottom edge is not 121...
C 39190,2 ...
C 39192,1 ...then return
C 39193,3 If x-coordinate of Berk's left edge is less than 109...
C 39196,2 ...
C 39198,1 ...then return
C 39199,3 If x-coordinate of Berk's right edge is 120 or greater...
C 39202,2 ...
C 39204,1 ...then return
N 39205 At this point, Berk is standing on the hatch
C 39205,3 If Berk is holding the weight...
C 39208,2 ...
C 39210,1 ...then return
C 39211,1 Increase Hatch State Index to 1
C 39212,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 39215,3 If Berk's current power is not invisibility (Level 3)...
C 39218,2 ...
C 39220,2 ...then skip ahead to #R39225
C 39222,3 Remove Berk's invisibility and reset corresponding edible eyes to their original position
C 39225,2 Move Berk up four characters...
C 39227,3 ...
C 39230,2 ...
C 39232,4 Set x-coordinate of Berk's left edge to 107
C 39236,4 Set x-coordinate of Berk's right edge to 112
C 39240,4 Set Berk's Must Process Current Script Data Flag
C 39244,3 Set Berk's graphic layout data address to #R59048...
C 39247,3 ...(Berk being thrown left)...
C 39250,3 ...
C 39253,3 Set current position in Berk's script data to #R35523...
C 39256,3 (Berk being thrown left by Hatch)
N 39259 Hatch State Index is 10 (Berk was thrown 9 cycles ago)
C 39259,3 Load HL with graphic layout data address of Hatch half open with Bat (Animated)
C 39262,2 Skip ahead to #R39274 (set Hatch's GLD address to value in HL and return)
N 39264 Hatch State Index is 2 (Berk was thrown 1 cycle ago)
C 39264,3 Load HL with graphic layout data address of Hatch fully open With Bat (Animated)
C 39267,2 Skip ahead to #R39274 (set Hatch's GLD address to value in HL and return)
N 39269 Hatch State Index is 11 (Berk was thrown 10 cycles ago)
C 39269,2 Set Hatch State Index to zero
C 39271,3 Load HL with graphic layout data address of Hatch closed
C 39274,3 Set Hatch's graphic layout data address to value in HL
C 39277,1 Return
c 39278 Update State of Clawed Foot (Level 3)
D 39278 Used by the routine at #R39137.
C 39278,3 If Clawed Foot's Attack Timer is zero...
C 39281,1 ...
C 39282,2 ...then skip ahead to #R39289
C 39284,1 Decrease Clawed Foot's Attack Timer...
C 39285,3 ...
C 39288,1 Return
N 39289 Clawed Foot is attacking
C 39289,4 Load IY with address of complex state data for Clawed Foot (Level 3)
C 39293,4 Load IX with address of current level's complex state data for Berk
C 39297,3 Store room size data for Berk's current room
C 39300,3 Load A with Clawed Foot's flags...
C 39303,1 ...and if any are set...
C 39304,2 ...then skip ahead to #R39337
N 39306 Clawed Foot attack not yet started
C 39306,3 If the Clawed Foot's room...
C 39309,3 ...is not the same as Berk's room...
C 39312,1 ...then return
C 39313,3 If Berk's Walking Left Flag or Walking Right Flag is set...
C 39316,2 ...
C 39318,1 ...then return
C 39319,3 Set the Clawed Foot's left edge...
C 39322,1 ...to be one character to the right of Berk's left edge...
C 39323,3 ...
C 39326,2 Set the Clawed Foot's right edge...
C 39328,3 ...to be two characters to the right of its left edge
C 39331,4 Set Clawed Foot's Moving Down Flag
C 39335,2 Skip ahead to #R39341
N 39337 Clawed Foot attack underway
C 39337,2 If Clawed Foot's Moving Down Flag is reset...
C 39339,2 ...then skip ahead to #R39420
C 39341,2 Load B with 3 (as the Clawed Foot moves down three characters at time)
C 39343,3 Advance Clawed Foot one character down...
C 39346,3 ...
C 39349,3 If y-coordinate of bottom edge of Clawed Foot is 115...
C 39352,2 ...
C 39354,2 ...then skip ahead to #R39359
C 39356,2 Decrease remaining number of characters to move and loop back to #R39343 if not zero
C 39358,1 Return
N 39359 Clawed Foot attempting to grab Berk
C 39359,4 If Berk is flying...
C 39363,2 ...then skip ahead to #R39386 (set Clawed Foot's Moving Up Flag and return)
C 39365,4 If Berk is falling...
C 39369,2 ...then skip ahead to #R39386 (set Clawed Foot's Moving Up Flag and return)
C 39371,3 If Clawed Foot's left edge...
C 39374,1 ...is one character to the right of Berk's left edge...
C 39375,3 ...
C 39378,2 ...then skip ahead to #R39391
C 39380,1 If Clawed Foot's left edge...
C 39381,3 ...is two characters to the right of Berk's left edge...
C 39384,2 ...then skip ahead to #R39391
N 39386 Berk is flying or falling, or Clawed Foot has missed
C 39386,4 Set Clawed Foot's Moving Up Flag
C 39390,1 Return
N 39391 Make Clawed Foot grab Berk (Clawed Foot is one or two characters to the right of Berk's left edge)
C 39391,3 Set current position in Berk's script data to...
C 39394,4 ...Berk in floating position
C 39398,4 Set Berk's Must Process Current Script Data Flag
C 39402,2 Set Clawed Foot's Moving Up Flag and Holding Berk Flag...
C 39404,3 ...
C 39407,3 Set Clawed Foot's graphic layout data address to point to #R40368 (Reaching, Closed)...
C 39410,3 ...
C 39413,3 ...
C 39416,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 39419,1 Return
N 39420 Check Clawed Foot's Moving Up Flag
C 39420,2 If Clawed Foot's Moving Up Flag is reset...
C 39422,2 ...then skip ahead to #R39532
C 39424,3 Move Clawed Foot up one character...
C 39427,3 ...
C 39430,3 If y-coordinate of bottom of Clawed Foot...
C 39433,2 ...is 95...
C 39435,2 ...then skip ahead to #R39449
C 39437,4 If Clawed Foot's Holding Berk Flag is reset...
C 39441,1 ...then return
N 39442 This entry point is used by the routine at #R39151.
C 39442,3 Move entity at IX (Berk) up one character...
C 39445,3 ...
C 39448,1 Return
C 39449,4 If Clawed Foot's Holding Berk Flag is reset...
C 39453,2 ...then skip ahead to #R39527 (Reset Clawed Foot to inactive state and return)
C 39455,3 Increase Clawed Foot's Action Index...
C 39458,1 ...
C 39459,3 ...
C 39462,2 ...and if less than 7...
C 39464,2 ...then skip ahead to #R39470
C 39466,2 Set Clawed Foot's Action Index to 1...
C 39468,2 ...and jump to #R39470 (via #R39459)
C 39470,2 If Clawed Foot's Action Index is less than 3...
C 39472,2 ...then skip ahead to #R39501 (i.e. make clawed foot release Berk, and return)
C 39474,2 If Clawed Foot's Action Index is less than 5...
C 39476,2 ...then skip ahead to #R39482
C 39478,2 Load E with 112 (prepare to set Clawed Foot's destination x-coordinate)
C 39480,2 Skip ahead to #R39484
C 39482,2 Load E with 122 (prepare to set Clawed Foot's destination x-coordinate)
C 39484,3 Store destination x-coordinate in byte 12 of Berk's complex state data
C 39487,2 If Clawed Foot's Action Index is even...
C 39489,2 ...then skip ahead to #R39496
C 39491,4 Set Clawed Foot's Move Left Flag
C 39495,1 Return
C 39496,4 Set Clawed Foot's Move Right Flag
C 39500,1 Return
N 39501 The instructions between #R39501 and #R39531 make the Clawed Foot release Berk.
C 39501,2 Set Clawed Foot's Attack Timer to 100...
C 39503,3 ...i.e. Clawed Foot will attack again in 100 cycles
C 39506,4 Set Berk's "Can Fall" flag
C 39510,4 Set Berk's velocity factor to 2
C 39514,3 Set current position in Berk's script data to...
C 39517,4 ...Berk starting to fall downwards
C 39521,3 Set Clawed Foot's graphic layout data address to point to #R40320 (Reaching, Open)...
C 39524,3 ...make Berk drop the entity he is holding and load IY with its complex state data address
N 39527 Reset Clawed Foot to inactive state
C 39527,4 Reset Clawed Foot's Flags
C 39531,1 Return
N 39532 Check Clawed Foot's Moving Left Flag
C 39532,2 If Clawed Foot's Move Left Flag is reset...
C 39534,2 ...then skip ahead to #R39552
C 39536,3 Move Berk one character left...
C 39539,3 ...
C 39542,3 Move Berk into room to the left, if appropriate
C 39545,3 If Berk's room is 5 (room to the left of the Coloured Creatures' Room)...
C 39548,2 ...then set Zero Flag
C 39550,2 Skip ahead to #R39569
N 39552 Check Clawed Foot's Moving Right Flag
C 39552,2 If Clawed Foot's Move Right Flag is reset...
C 39554,1 ...then return
C 39555,3 Move Berk one character right...
C 39558,3 ...
C 39561,3 Move Berk into room to the right, if appropriate
C 39564,3 If Berk's room is 7 (room to the right of the Coloured Creatures' Room)...
C 39567,2 ...then set Zero Flag
C 39569,1 If Zero Flag is not set (i.e. Berk is not in Room 5 or Room 7) then return
C 39570,3 If the x-coordinate of Berk's left edge...
C 39573,3 ...is not the same as the Clawed Foot's destination x-coordinate...
C 39576,1 ...then return
C 39577,4 Load IY with address of complex state data for Clawed Foot (Level 3)
C 39581,3 Make Clawed Foot release Berk, and return
b 39584 Table of Coloured Creatures' Properties
D 39584 This data is used to periodically change the identities of the three coloured creatures. Upon switching, a random number (i.e. a "Sequence ID") between 0 and 2 is generated. This Sequence ID is the index of the record, in the following table, whose data (entity class and graphic layout data address) will overwrite that of the first coloured creature at #R44894, as defined in the complex state data table. The second and third creatures' data will be likewise overwritten by the data from the following two records, respectively. As three records are always used, starting with the record whose index matches the generated Sequence ID, there will always be one red, one yellow and one white creature.
B 39584,3,3 Red Coloured Creature
B 39587,3,3 Yellow Coloured Creature
B 39590,3,3 White Coloured Creature
B 39593,3,3 Red Coloured Creature
B 39596,3,3 Yellow Coloured Creature
b 39599 Miscellaneous Data (Coloured Creatures)
B 39599,1,1 Creatures' current Sequence ID
B 39600,1,1 Cycles elapsed since last swap of creatures
c 39601 Update States of Coloured Creatures
D 39601 Used by the routine at #R39137.
C 39601,3 Load A with first coloured creature's flags
C 39604,2 If Coloured Creatures' Reward Given Flag is set...
C 39606,1 ...then return
C 39607,2 If All Coloured Creatures Home Flag is set...
C 39609,3 ...then present reward for getting coloured creatures home, and return
C 39612,3 Count coloured creatures in slots and return if all are home
C 39615,1 If all three coloured creatures are in slots...
C 39616,2 ...
C 39618,1 ...then return
C 39619,3 If current character's current room is not 6 (coloured creatures' room)...
C 39622,2 ...
C 39624,1 ...then return
C 39625,3 Increase cycles elapsed since last swap of creatures...
C 39628,1 ...
C 39629,1 ...
C 39630,2 ...and if less than 100...
C 39632,1 ...then return
C 39633,2 Set cycles elapsed since last swap of creatures to zero
C 39635,3 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
C 39638,3 Point HL at current Sequence ID
C 39641,2 Load A with a random number, 0-2...
C 39643,3 ...
C 39646,1 ...and if this is the same as the current Sequence ID...
C 39647,2 ...then jump back to #R39641 to generate a new random number
C 39649,1 Set new Sequence ID to generated number
C 39650,1 Load BC with three times Sequence ID...
C 39651,1 ...
C 39652,1 ...
C 39653,2 ...
C 39655,4 Load IY with start address of Table of Coloured Creatures' Properties...
C 39659,2 ...and add three times Sequence ID to get address of first entry in new sequence
C 39661,4 Load IX with address of complex state data for first coloured creature (Level 3)
C 39665,2 Load B with 3 (as there are three coloured creatures)
C 39667,3 Set class of current coloured creature...
C 39670,3 ...
C 39673,3 ...and address of graphic layout data...
C 39676,3 ...
C 39679,3 ...
C 39682,3 ...to values in current record in Table of Coloured Creatures' Properties
C 39685,2 Advance IY to next entry in properties table...
C 39687,2 ...
C 39689,2 ...
C 39691,3 Advance IX to next coloured creature's properties...
C 39694,2 ...
C 39696,2 Decrease remaining number of coloured creatures to update and loop back to #R39667 if not zero
C 39698,1 Return
c 39699 Count Coloured Creatures in Slots and Return if All Are Home
D 39699 Used by the routine at #R39601. Output: H  Number of coloured creatures in correct slots L  Number of coloured creatures in slots
C 39699,4 Load IX with address of complex state data for first coloured creature (Level 3)
C 39703,3 Load HL with zero
C 39706,2 Load B with 3 (as there are 3 creatures)
C 39708,3 If y-coordinate of bottom of current creature is not 114...
C 39711,2 ...
C 39713,1 ...then return
C 39714,1 Increase L (number of creatures in slots)
C 39715,3 If current entity class is not 13 (Red Coloured Creature, Level 3)...
C 39718,2 ...
C 39720,2 ...then skip ahead to #R39726
C 39722,2 Load A with 108 (x-coordinate of left-most slot)
C 39724,2 Skip ahead to #R39736
C 39726,2 If current entity class is not 14 (Yellow Coloured Creature, Level 3)...
C 39728,2 ...then skip ahead to #R39734
C 39730,2 Load A with 115 (x-coordinate of middle slot)
C 39732,2 Skip ahead to #R39736
C 39734,2 Load A with 122 (x-coordinate of right-most slot)
C 39736,3 If x-coordinate of slot in A is not the same as x-coordinate of current creature's left...
C 39739,2 ...then skip ahead to #R39742
C 39741,1 Increase H (number of creatures at correct x-coordinate for their respective coloured slots)
C 39742,3 Advance IX to next entity...
C 39745,2 ...
C 39747,2 Loop back to #R39708 for next creature
C 39749,1 If H is not 3 (i.e. at least one creature not at correct x-coordinates)...
C 39750,2 ...
C 39752,1 ...then return
C 39753,2 Set All Coloured Creatures Home Flag
C 39755,3 ...
C 39758,1 Return to routine that called the calling routine...
C 39759,1 ...
c 39760 Present Reward for Getting Coloured Creatures Home
D 39760 Used by the routine at #R39601.
C 39760,3 Cycle attributes (full-screen), clear display buffers and paint red areas outside current room
C 39763,4 Load IX with address of complex state data for edible eyes (normally hidden off-screen)...
C 39767,3 ...and set their "Can Fall" Flag and set initial velocity factor to 2
C 39770,2 Set Coloured Creatures' Reward Given Flag...
C 39772,3 ...
C 39775,1 Return
c 39776 Update State of Large Yellow Creature (Level 3)
D 39776 Used by the routine at #R39137.
C 39776,4 Load IY with address of complex state data for Large Yellow Creature (Level 3)
C 39780,4 Load IX with address of current level's complex state data for Berk
C 39784,3 Load HL with address of Large Yellow Creature's flags...
C 39787,1 ...and load flags into A
C 39788,2 If creature is in "Rising From Floor" mode...
C 39790,2 ...then skip ahead to #R39831
C 39792,2 If creature is in "Hunting" mode...
C 39794,2 ...then skip ahead to #R39845
C 39796,2 If creature is in "Attacking" mode...
C 39798,2 ...then skip ahead to #R39918
C 39800,2 If creature is in "Just Attacked" mode...
C 39802,3 ...then set creature's mode to "Returning Home", set Berk's "Has Been Killed" Flag and return
C 39805,3 If Berk's current room is not 3 (Yellow Creature's Room)...
C 39808,2 ...
C 39810,3 ...then set creature's mode to "Returning Home", move one step closer to home and return
N 39813 "Returning Home" mode
C 39813,3 If x-coordinate of creature's left side...
C 39816,3 ...is the same as that of Berk's left side...
C 39819,2 ...then skip ahead to #R39828
C 39821,1 If x-coordinate of creature's left side...
C 39822,3 ...is not one character to the right of Berk's left side...
C 39825,3 ...then set creature's mode to "Returning Home", move one step closer to home and return
C 39828,2 Set creature's mode to "Rising from Floor"...
C 39830,1 ...
N 39831 "Rising from Floor" mode
C 39831,3 Move creature such that its left edge is up to two characters closer to Berk's
C 39834,3 Move creature up by two characters
C 39837,3 If y-coordinate of creature's top...
C 39840,2 ...is 108 or greater...
C 39842,1 ...then return
C 39843,2 Set creature's mode to "Hunting"
N 39845 "Hunting" mode
C 39845,3 If Berk's current room is not 3 (Yellow Creature's Room)...
C 39848,2 ...
C 39850,3 ...then set creature's mode to "Returning Home", move one step closer to home and return
C 39853,3 If Berk's current power is invisibility (Level 3)...
C 39856,2 ...
C 39858,2 ...then skip ahead to #R39909 ("confused" mode)
C 39860,3 If y-coordinate of Berk's top...
C 39863,2 ...is less than 103...
C 39865,2 ...then skip ahead to #R39909 ("confused" mode)
C 39867,3 Move creature such that its left edge is up to two characters closer to Berk's
C 39870,3 If creature's top...
C 39873,2 ...is four characters above Berk's top...
C 39875,3 ...
C 39878,2 ...then skip ahead to #R39890 (set "Attacking" mode)
C 39880,2 If creature's top is less than 4 characters above Berk's top then move creature up by two characters and return
C 39882,1 If creature's top is five characters above Berk's top...
C 39883,3 ...
C 39886,2 ...then skip ahead to #R39890 (set "Attacking" mode)
C 39888,2 If creature's top is more than five characters above Berk's top then move creature down two characters and return
C 39890,2 Set creature's mode to "Attacking"
C 39892,4 Set creature's depth to 1
C 39896,4 Set Berk's "Do Not Update State" Flag
C 39900,3 Set graphic layout data address for creature to #R40442 (Large Yellow Creature with mouth open)...
C 39903,3 ...
C 39906,3 Make Berk drop the entity he is holding, load IY with its complex state data address and return
N 39909 "Confused" mode
C 39909,3 Set graphic layout data address for creature to #R40485 (Large Yellow Creature, animated, confused)...
C 39912,3 ...
C 39915,3 Move creature one step closer to x (left) = 113, y (top) > 111 if not already there, and return
N 39918 "Attacking" mode
C 39918,3 Move creature down two characters
C 39921,4 Set Berk's depth to zero
C 39925,2 Set creature's mode to "Just Attacked"
C 39927,3 Set graphic layout data address for creature to #R40451 (Large Yellow Creature with mouth closed)...
C 39930,3 ...and return
c 39933 Unused routine
C 39933,1 Return
c 39934 Set Large Yellow Creature's Mode to "Returning Home", and Set Berk's "Has Been Killed" Flag
D 39934 Used by the routine at #R39776.
C 39934,3 Set "Berk Has Been Killed" Flag
C 39937,4 Reset Berk's "Do Not Update State" Flag
C 39941,2 Set creature's mode to "Returning Home"
C 39943,1 Return
c 39944 Set Graphic Layout Data Address for Entity at IY to BC
D 39944 Used by the routine at #R39776. Input:  BC  Graphic layout data address IY  Address of complex state data for an entity
C 39944,3 Set graphic layout data address for entity to address in BC...
C 39947,3 ...
C 39950,1 Return
c 39951 Move Entity at IY Down Two Characters
D 39951 Used by the routine at #R39776. Input:  IY  Address of complex state data for an entity
C 39951,3 Move entity at IY down one character
N 39954 This entry point is used by the routine at #R40008.
C 39954,3 Increase y-coordinates of entity's top and bottom edges...
C 39957,3 ...
C 39960,1 Return
c 39961 Move Entity at IY Up Two Characters
D 39961 Used by the routine at #R39776. Input:  IY  Address of complex state data for an entity
C 39961,3 Move entity at IY up one character
C 39964,3 Decrease y-coordinates of entity's top and bottom edges...
C 39967,3 ...
C 39970,1 Return
c 39971 Move Entity IY Such that its Left Edge is Up to Two Characters Closer to Entity IX's
D 39971 Used by the routine at #R39776. Input:  IX  Address of complex state data for Entity A IY  Address of complex state data for Entity B
C 39971,3 Move Entity B one character closer (horizontally) to Entity A...
C 39974,1 ...and if left edges now both at same x-coordinate then return
N 39975 If entities' left edges are not at the same x-coordinate, then proceed into the code block below and move entity B by one additional character.
C 39975,3 If x-coordinates of both entities' left edges are the same...
C 39978,3 ...
C 39981,1 ...then return
C 39982,2 If Entity B's left edge is to the right of Entity A's then move Entity B left by one character
C 39984,3 Move Entity B right by one character...
C 39987,3 ...
C 39990,1 Return
C 39991,3 Move Entity B left by one character...
C 39994,3 ...
C 39997,1 Return
c 39998 Set Large Yellow Creature's Mode to "Returning Home", Move One Step Closer to Home and Return
D 39998 Used by the routine at #R39776. Input:  HL  Address of creature's flags IY  Address of complex state data for creature
C 39998,2 Set creature's mode to "Returning Home"
C 40000,4 Set creature's depth to 2
C 40004,2 Move creature one step closer to x (Left) = 113, y (Top) > 122...
C 40006,2 ...and return
c 40008 Move Entity at IY One Step Closer to Home Position
D 40008 This routine moves an entity (whose complex state data is pointed to by IY) one character left or right, if such a move would take the x-coordinate of that entity's left edge closer to a value of 113. The entity will also be moved down by one character if the y-coordinate of its top edge is less than or equal to 111 (or the input value in A if we are entering this routine via #R40010). Input:  A  (Entry at #R40010 only) Minimum allowed y-coordinate for entity's top edge IY  Address of complex state data for an entity
C 40008,2 Load A with 111 (minimum allowed y-coordinate)
N 40010 This entry point is used by the routine at #R39998.
C 40010,3 If y-coordinate of entity's top edge is greater than value in A...
C 40013,2 ...then skip ahead to #R40018
C 40015,3 Move entity at IY down one character
C 40018,3 If x-coordinate of entity's left edge...
C 40021,2 ...is 113...
C 40023,1 ...then return
C 40024,2 ...else if greater than 113 then skip ahead to #R40033
C 40026,3 Move entity left one character...
C 40029,3 ...
C 40032,1 Return
C 40033,3 Move entity right one character...
C 40036,3 ...
C 40039,1 Return
b 40040 Graphic Layout Data Architecture (Level 3) Vertical wall
B 40040,2,2 Set current graphic set to 10
B 40042,2,2 Set Repeat Counter A to 3
B 40044,3,3 Process graphic layout data at #R40052 and upon returning, move cursor to base coordinates
B 40047,3,3 Change cursor's x- and y-coordinates by 0 and +8 characters respectively and store as new base coordinates
B 40050,1,1 Decrement Repeat Counter A and loop back to #R40044 if not zero
B 40051,1,1 End Marker
N 40052 Vertical wall section
B 40052,2,2 Set current attribute to 4
B 40054,18,2
B 40072,1,1 End Marker
N 40073 Door Archway
B 40073,2,2 Set current graphic set to 10
B 40075,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 40078,3,3 Process graphic layout data at #R40052 and upon returning, move cursor to base coordinates
B 40081,3,3 Change cursor's x- and y-coordinates by +9 and +1 characters respectively
B 40084,3,3 Process graphic layout data at #R40052 and upon returning, move cursor to base coordinates
B 40087,2,2 Set current attribute to 4
B 40089,20,2
B 40109,1,1 End Marker
N 40110 Platform
B 40110,2,2 Set current graphic set to 10
B 40112,2,2 Set current attribute to 4
B 40114,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 40117,20,2
B 40137,1,1 End Marker
N 40138 Red Coloured Creature's Slot (see trivia)
B 40138,2,2 Set current attribute to 2 (red)
B 40140,3,3 Jump to #R40150 (draw slot)
N 40143 Yellow Coloured Creature's Slot (see trivia)
B 40143,2,2 Set current attribute to 6 (yellow)
B 40145,3,3 Jump to #R40150 (draw slot)
N 40148 White Coloured Creature's Slot (see trivia)
B 40148,2,2 Set current attribute to 7 (white)
B 40150,2,2 Set current graphic set to 10
B 40152,3,3 Change cursor's x- and y-coordinates by 0 and -5 characters respectively
B 40155,36,2
B 40191,1,1 End Marker
b 40192 Graphic Layout Data Edible Eyes (Level 3)
B 40192,2,2 Set current graphic set to 4
B 40194,2,2 Jump to one of the 7 addresses (see bugs) in the following list, chosen at random:
B 40196,2,2 #R40212 (eyes, closed)
B 40198,2,2 #R40212 (eyes, closed)
B 40200,2,2 #R40212 (eyes, closed)
B 40202,2,2 #R40219 (eyes, looking ahead)
B 40204,2,2 #R40226 (eyes, looking up)
B 40206,2,2 #R40233 (eyes, looking down)
B 40208,2,2 #R40240 (eyes, looking right)
B 40210,2,2 #R40247 (eyes, looking left)
N 40212 Closed
B 40212,6,3
B 40218,1,1 End Marker
N 40219 Looking Ahead
B 40219,3,3
B 40222,3,3 (see bugs)
B 40225,1,1 End Marker
N 40226 Looking Up
B 40226,6,3
B 40232,1,1 End Marker
N 40233 Looking Down
B 40233,6,3
B 40239,1,1 End Marker
N 40240 Looking Right
B 40240,6,3
B 40246,1,1 End Marker
N 40247 Looking Left
B 40247,6,3
B 40253,1,1 End Marker
b 40254 Graphic Layout Data Coloured Creatures (Level 3) Red
B 40254,2,2 Set current graphic set to 10
B 40256,7,7 Decrease timer value (initially 4) and if now zero then reset to 5 and load one of the 3 following values at random into the Attribute field of the following instruction
B 40263,3,3
B 40266,3,3 Jump to #R40296 (draw creature)
N 40269 Yellow
B 40269,2,2 Set current graphic set to 10
B 40271,7,7 Decrease timer value (initially 4) and if now zero then reset to 5 and load one of the 3 following values at random into the Attribute field of the following instruction
B 40278,3,3
B 40281,3,3 Jump to #R40296 (draw creature)
N 40284 White
B 40284,2,2 Set current graphic set to 10
B 40286,7,7 Decrease timer value (initially 4) and if now zero then reset to 5 and load one of the 3 following values at random into the Attribute field of the following instruction
B 40293,12,3
B 40305,4,4 Modify following instruction to display graphic of random index, chosen from 54 and 70
B 40309,3,3
B 40312,4,4 Modify following instruction to display graphic of random index, chosen from 55 and 71
B 40316,3,3
B 40319,1,1 End Marker
b 40320 Graphic Layout Data Clawed Foot (Level 3) Reaching, Open
B 40320,2,2 Set current graphic set to 10
B 40322,3,3 Process graphic layout data at #R40404 and upon returning, move cursor to base coordinates
B 40325,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 40328,39,3
B 40367,1,1 End Marker
N 40368 Reaching, Closed
B 40368,2,2 Set current graphic set to 10
B 40370,3,3 Process graphic layout data at #R40404 and upon returning, move cursor to base coordinates
B 40373,30,3
B 40403,1,1 End Marker
N 40404 Leg
B 40404,3,3 Change cursor's x- and y-coordinates by 1 and -15 characters respectively
B 40407,2,2 Set current attribute to 70
B 40409,32,2
B 40441,1,1 End Marker
b 40442 Graphic Layout Data Large Yellow Creature (Level 3) Mouth Open
B 40442,3,3 Process graphic layout data at #R40589 and upon returning, move cursor to base coordinates
B 40445,3,3 Process graphic layout data at #R40858 and upon returning, move cursor to base coordinates
B 40448,3,3 Jump to #R40457
N 40451 Mouth Closed
B 40451,3,3 Process graphic layout data at #R40589 and upon returning, move cursor to base coordinates
B 40454,3,3 Process graphic layout data at #R40975 and upon returning, move cursor to base coordinates
B 40457,3,3 Change cursor's x- and y-coordinates by -1 and +2 characters respectively
B 40460,24,3
B 40484,1,1 End Marker
N 40485 Animated, confused
B 40485,3,3 Process graphic layout data at #R40589 and upon returning, move cursor to base coordinates
B 40488,3,3 Process graphic layout data at #R40847 and upon returning, move cursor to base coordinates
B 40491,3,3 Change cursor's x- and y-coordinates by -1 and +2 characters respectively
B 40494,3,3 If state n (initially 1) has remaining time of zero then reset its time to maximum and randomly select a new state, n, from the 4 in the following list. Jump to the address specified in the current state and decrease its remaining time:
B 40497,4,4 #R40513 (Eyes looking up-left, for 3 ticks)
B 40501,4,4 #R40532 (Eyes looking up-right, for 3 ticks)
B 40505,4,4 #R40551 (Eyes looking down-left, for 6 ticks)
B 40509,4,4 #R40570 (Eyes looking down-right, for 6 ticks)
N 40513 Eyes Looking Up-Left
B 40513,2,2 Set Repeat Counter A to 2
B 40515,12,6
B 40527,3,3 Change cursor's x- and y-coordinates by +4 and -1 characters respectively
B 40530,1,1 Decrement Repeat Counter A and loop back to #R40515 if not zero
B 40531,1,1 End Marker
N 40532 Eyes Looking Up-Right
B 40532,2,2 Set Repeat Counter A to 2
B 40534,12,6
B 40546,3,3 Change cursor's x- and y-coordinates by +4 and -1 characters respectively
B 40549,1,1 Decrement Repeat Counter A and loop back to #R40534 if not zero
B 40550,1,1 End Marker
N 40551 Eyes Looking Down-Left
B 40551,2,2 Set Repeat Counter A to 2
B 40553,12,6
B 40565,3,3 Change cursor's x- and y-coordinates by +4 and -1 characters respectively
B 40568,1,1 Decrement Repeat Counter A and loop back to #R40553 if not zero
B 40569,1,1 End Marker
N 40570 Eyes Looking Down-Right
B 40570,2,2 Set Repeat Counter A to 2
B 40572,12,6
B 40584,3,3 Change cursor's x- and y-coordinates by +4 and -1 characters respectively
B 40587,1,1 Decrement Repeat Counter A and loop back to #R40572 if not zero
B 40588,1,1 End Marker
N 40589 Top Part of Face
B 40589,2,2 Set current graphic set to 11
B 40591,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 40594,252,6
B 40846,1,1 End Marker
N 40847 Jaw (Animated)
B 40847,3,3 If state n (initially 1) has remaining time of zero then reset its time to maximum and randomly select a new state, n, from the 2 in the following list. Jump to the address specified in the current state and decrease its remaining time:
B 40850,4,4 #R40858 (Jaw open, for 3 ticks)
B 40854,4,4 #R40975 (Jaw closed, for 3 ticks)
N 40858 Jaw (Open)
B 40858,3,3 Change cursor's x- and y-coordinates by -2 and +7 characters respectively
B 40861,108,6
B 40969,3,3 Change cursor's x- and y-coordinates by -5 and -2 characters respectively
B 40972,3,3 Jump to #R41065
N 40975 Jaw (Closed)
B 40975,3,3 Change cursor's x- and y-coordinates by -2 and +7 characters respectively
B 40978,84,6
B 41062,3,3 Change cursor's x- and y-coordinates by -9 and -4 characters respectively
B 41065,18,6
B 41083,2,2 Set Repeat Counter A to 4
B 41085,3,3
B 41088,1,1 Decrement Repeat Counter A and loop back to #R41085 if not zero
B 41089,1,1 End Marker
b 41090 Graphic Layout Data Hatch (Level 3) Closed
B 41090,2,2 Set current graphic set to 10
B 41092,2,2 Set Repeat Counter A to 8
B 41094,3,3
B 41097,1,1 Decrement Repeat Counter A and loop back to #R41094 if not zero
B 41098,1,1 End Marker
N 41099 Fully Open With Small Bat (Animated)
B 41099,3,3 Change cursor's x- and y-coordinates by +4 and -4 characters respectively
B 41102,3,3 Process graphic layout data at #R41141 and upon returning, move cursor to base coordinates
B 41105,3,3 Change cursor's x- and y-coordinates by 0 and -7 characters respectively
B 41108,2,2 Set Repeat Counter A to 8
B 41110,3,3
B 41113,1,1 Decrement Repeat Counter A and loop back to #R41110 if not zero
B 41114,1,1 End Marker
N 41115 Half Open With Small Bat (Animated)
B 41115,3,3 Change cursor's x- and y-coordinates by +4 and -2 characters respectively
B 41118,3,3 Process graphic layout data at #R41141 and upon returning, move cursor to base coordinates
B 41121,2,2 Set current attribute to 5
B 41123,3,3 Change cursor's x- and y-coordinates by +5 and -5 characters respectively
B 41126,2,2
B 41128,2,2 Set Repeat Counter A to 5
B 41130,4,4
B 41134,1,1 Decrement Repeat Counter A and loop back to #R41130 if not zero
B 41135,3,3 Change cursor's x- and y-coordinates by +1 and 0 characters respectively
B 41138,2,2
B 41140,1,1 End Marker
N 41141 Small Bat (Animated)
B 41141,2,2 Set current graphic set to 10
B 41143,3,3 Increase current state value n (initially 0), up to maximum of 4, resetting to zero if maximum reached and jump to n-th address in following list:
B 41146,2,2 #R41154 (Small Bat, wings up)
B 41148,2,2 #R41158 (Small Bat, wings level)
B 41150,2,2 #R41171 (Small Bat, wings down)
B 41152,2,2 #R41158 (Small Bat, wings level)
N 41154 Small Bat (Wings Up)
B 41154,3,3
B 41157,1,1 End Marker
N 41158 Small Bat (Wings Level)
B 41158,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 41161,9,3
B 41170,1,1 End Marker
N 41171 Small Bat (Wings Down)
B 41171,3,3
B 41174,1,1 End Marker
b 41175 Graphic Layout Data Weight (Level 3)
B 41175,2,2 Set current graphic set to 10
B 41177,3,3 Change cursor's x- and y-coordinates by +1 and -1 characters respectively
B 41180,30,6
B 41210,1,1 End Marker
c 41211 Update States of All Level 4 Entities
D 41211 Used by the routine at #R34438.
C 41211,3 Update state of Flying Skeleton Creature
C 41214,3 Update state of Snake
C 41217,3 Update states of drips
C 41220,3 Update state of Cannon and Projectile
C 41223,3 Update state of Ghost
C 41226,3 Update state of Skeleton (Level 4) and store current position in script data
C 41229,1 Return
b 41230 Current Position in Skeleton's Script Data
W 41230,2,2 (#R41232, Skeleton Idling)
b 41232 Script Data Skeleton (Level 4) Idling
B 41232,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41234,2,2 Have Skeleton advance or retreat based upon positions of Berk and Fake Boni
B 41236,4,4 Jump to #R41232 (Skeleton Idling)
b 41240 Unused
D 41240 This block contains unused script data: Skeleton (level 4) threatening. Input:  Facts#unusedskeletonscript(See trivia).
B 41240,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41242,2,2 Set number of iterations in following loop script instruction to random number, 1-10
B 41244,4,4 Start loop (3) for random number (1-10) of iterations
B 41248,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41250,2,2 End loop (3)
B 41252,2,2 #R42937 (Skeleton, Stepping Forward, Frame 1, Full, Animated)
B 41254,2,2 #R42937 (Skeleton, Stepping Forward, Frame 1, Full, Animated)
B 41256,2,2 Move Skeleton left two characters...
B 41258,2,2 ...
B 41260,2,2 #R42975 (Skeleton, Stepping Forward, Frame 2, Full, Animated)
B 41262,2,2 Set number of iterations in following loop script instruction to random number, 1-10
B 41264,4,4 Start loop (3) for random number (1-10) of iterations
B 41268,2,2 #R42975 (Skeleton, Stepping Forward, Frame 2, Full, Animated)
B 41270,2,2 End loop (3)
B 41272,2,2 Move Skeleton right two characters...
B 41274,2,2 ...
B 41276,4,4 Jump to #R41232 (Skeleton Idling)
b 41280 Script Data Skeleton (Level 4) Stepping Forward (Left)
B 41280,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41282,2,2 Set number of iterations in following loop script instruction to random number, 1-10
B 41284,4,4 Start loop (3) for random number (1-10) of iterations
B 41288,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41290,2,2 End loop (3)
B 41292,2,2 #R42937 (Skeleton, Stepping Forward, Frame 1, Full, Animated)
B 41294,2,2 Move Skeleton left two characters...
B 41296,2,2 ...
B 41298,2,2 #R42975 (Skeleton, Stepping Forward, Frame 2, Full, Animated)
B 41300,2,2 #R42975 (Skeleton, Stepping Forward, Frame 2, Full, Animated)
B 41302,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41304,2,2 Set number of iterations in following loop script instruction to random number, 1-10
B 41306,4,4 Start loop (3) for random number (1-10) of iterations
B 41310,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41312,2,2 End loop (3)
B 41314,4,4 Jump to #R41232 (Skeleton Idling)
b 41318 Script Data Skeleton (Level 4) Stepping Back (Right)
B 41318,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41320,2,2 Set number of iterations in following loop script instruction to random number, 1-10
B 41322,4,4 Start loop (3) for random number (1-10) of iterations
B 41326,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41328,2,2 End loop (3)
B 41330,2,2 #R42975 (Skeleton, Stepping Forward, Frame 2, Full, Animated)
B 41332,2,2 #R42975 (Skeleton, Stepping Forward, Frame 2, Full, Animated)
B 41334,2,2 Move Skeleton right two characters...
B 41336,2,2 ...
B 41338,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41340,2,2 Set number of iterations in following loop script instruction to random number, 1-10
B 41342,4,4 Start loop (3) for random number (1-10) of iterations
B 41346,2,2 #R42901 (Skeleton, Standing, Full, Animated)
B 41348,2,2 End loop (3)
B 41350,4,4 Jump to #R41232 (Skeleton Idling)
c 41354 Reset Skeleton to Initial State
D 41354 Used by the routine at #R34751.
C 41354,3 Set current position in Skeleton's script data...
C 41357,3 ...to #R41232 (Skeleton Idling)
C 41360,4 Load IX with address of Table of Addresses of Attribute Data in Skeleton's GLD Blocks
C 41364,2 Load B with 6 (as there are six blocks of graphic layout data to modify)
C 41366,3 Load HL with address of attribute data in current block...
C 41369,3 ...
C 41372,2 Set the attribute value to 7 (white)
C 41374,2 Advance IX to next address...
C 41376,2 ...
C 41378,2 Decrease remaining number of blocks to modify and loop back to #R41366 if not zero
C 41380,1 Return
c 41381 Update State of Skeleton (Level 4) and Store Current Position in Script Data
D 41381 Used by the routine at #R41211.
C 41381,4 Load IX with address of complex state data for Skeleton (Level 4)
C 41385,4 If Skeleton's Removed From Game Flag is set...
C 41389,1 ...then return
C 41390,4 If Skeleton's Is Dying Flag is set...
C 41394,2 ...then update state of Skeleton (dying) and return
C 41396,3 Load current position in Skeleton's script data from #R41230 into HL...
C 41399,3 ...and store at #R34277 as position in script currently running
C 41402,3 Kill Berk if he collides with Skeleton
C 41405,3 Store address (current position in script data) stored at #R34277...
C 41408,3 ...at #R41230 as current position in Skeleton's script data
C 41411,1 Return
b 41412 Table of Addresses of Attribute Data in Skeleton's Graphic Layout Data Blocks
D 41412 Each of the addresses in this table is of the "operand" of a "set attribute" instruction (i.e. 242) in the Skeleton's graphic layout data blocks. These are initially 7 (i.e. white). When the skeleton is killed, the routine at #R41424 (instructions starting at #R41473) decreases this attribute by one per game cycle. When the attribute values reach 1 (blue), the skeleton is removed from the game and replaced by Boni.
W 41412,2,2 (#R42910) Standing, Full, Animated
W 41414,2,2 (#R42946) Stepping Forward, Frame 1, Full, Animated
W 41416,2,2 (#R42987) Stepping Forward, Frame 2, Full, Animated
W 41418,2,2 (#R43022) Head, Animated
W 41420,2,2 (#R43061) Torso and Spear, Extended
W 41422,2,2 (#R43095) Torso and Spear, Retracted
c 41424 Update State of Skeleton (Dying)
D 41424 Used by the routine at #R41381. Input:  IX  Address of complex state data for Skeleton (Level 4)
C 41424,3 If current attribute in Skeleton's graphic layout data is not 1...
C 41427,2 ...
C 41429,2 ...then skip ahead to #R41473
C 41431,4 Set Skeleton's room to 0
C 41435,4 Load IY with address of complex state data for Boni (Level 4)
C 41439,3 Set y-coordinate of Boni's top edge...
C 41442,3 ...to same as that of skeleton
C 41445,2 Set y-coordinate of Boni's bottom edge...
C 41447,3 ...to three characters below this
C 41450,3 Set x-coordinate of Boni's left edge...
C 41453,3 ...to same as that of skeleton
C 41456,1 Set x-coordinate of Boni's right edge...
C 41457,3 ...to one to the right of this
C 41460,4 Set Boni's depth to 1
C 41464,4 Set Boni's Can Fall Flag
C 41468,4 Set Skeleton's Removed From Game Flag
C 41472,1 Return
N 41473 Current attribute in Skeleton's graphic layout data is not 1
C 41473,4 Load IX with address of Table of Addresses of Attribute Data in Skeleton's GLD Blocks
C 41477,2 Load B with 6 (as there are six blocks of graphic layout data to modify)
C 41479,3 Load HL with address of attribute data in current block...
C 41482,3 ...
C 41485,1 Decrease the attribute value
C 41486,2 Advance IX to next address...
C 41488,2 ...
C 41490,2 Decrease remaining number of blocks to modify and loop back to #R41479 if not zero
C 41492,2 Set sound 11 as pending if appropriate, then play and clear pending sound...
C 41494,3 ...
C 41497,1 Return
c 41498 Kill Berk if He Collides with Skeleton
D 41498 See trivia Input:  IX  Address of complex state data for Skeleton (Level 4) (#R45404)
C 41498,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 41501,2 ...and if no collision occurred, then skip ahead to #R41513
C 41503,2 If collision was not with entity of class 31 (Berk)...
C 41505,2 ...then skip ahead to #R41513
C 41507,3 Set "Berk Has Been Killed" Flag
C 41510,3 Advance HL to next script instruction and execute
N 41513 The instructions below do a "manual" check for a collision between the Skeleton and Berk. See trivia
C 41513,4 Load IY with address of current level's complex state data for Berk
C 41517,3 If Berk's current room is not 3 (Skeleton's room)...
C 41520,2 ...
C 41522,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 41525,3 If x-coordinate of Skeleton's left edge...
C 41528,2 ...is at least five characters to the right of Berk's right edge...
C 41530,3 ...
C 41533,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 41536,3 If y-coordinate of Berk's bottom edge...
C 41539,2 ...is less than 116...
C 41541,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 41544,3 Set "Berk Has Been Killed" Flag
C 41547,3 Advance HL to next script instruction and execute
c 41550 Script Routine (63) Have Skeleton Advance or Retreat Based Upon Positions of Berk and Fake Boni
D 41550 The skeleton will step forward once, and then step back, if Berk is close enough and Fake Boni is in a room to the right. If Fake Boni is in the Skeleton's room, or a room to the left of this, then the Skeleton will step forward repeatedly while Berk is close enough and will only back off when Berk moves out of range. The range is nine, so if the distance between Berk's right edge and the Skeleton's left edge is less than nine then the Skeleton will advance. A distance of nine or more will see the Skeleton retreat. Note that the calculated range is based upon the Skeleton's state data at #R45404, in which the x-coordinates of his left and right edges do not match his apparent position or width graphically. Input:  IX  Address of complex state data for an entity Output: HL Address of next script instruction to execute
C 41550,4 Load IY with address of current level's complex state data for Berk
C 41554,3 If Berk's current room is 3 (Skeleton's room)...
C 41557,2 ...
C 41559,2 ...then jump to #R41580
N 41561 Berk is not in Skeleton's room, or Fake Boni is in a room right of the Skeleton's room
C 41561,3 If x-coordinate of Skeleton's left edge is at least 128...
C 41564,2 ...
C 41566,2 ...then skip ahead to #R41574
C 41568,3 Point HL at script data for Skeleton stepping back (right)...
C 41571,3 ...and execute
C 41574,3 Point HL at script data for Skeleton Idling...
C 41577,3 ...and execute
N 41580 Berk is in Skeleton's room
C 41580,4 If Skeleton's Must Process Current Script Data Flag is reset...
C 41584,2 ...then skip ahead to #R41597
C 41586,4 Reset Skeleton's Must Process Current Script Data Flag
C 41590,3 If Fake Boni is in a room with index of 4 or more (room above Pit, or Pit)...
C 41593,2 ...
C 41595,2 ...then jump back to #R41561 (move Skeleton back)
C 41597,3 If x-coordinate of Skeleton's left edge...
C 41600,2 ...is at least nine characters to the right of Berk's right edge...
C 41602,3 ...
C 41605,2 ...then jump back to #R41561 (move Skeleton back)
C 41607,4 Set Skeleton's Must Process Current Script Data Flag
C 41611,3 Point HL at script data for Skeleton stepping forward (left)...
C 41614,3 ...and execute
c 41617 Script Routine (64) Set Random (1 to 10) Number of Iterations in Following Loop Script Instruction
C 41617,2 Load A with a random number, 1-10...
C 41619,3 ...
C 41622,1 ...
C 41623,1 Store HL (current position in script data)
C 41624,3 Advance HL by four bytes...
C 41627,1 ...to number of iterations in next (loop) instruction...
C 41628,1 ...and set number of iterations to number generated
C 41629,1 Restore HL (current position in script data)
C 41630,3 Advance HL to next script instruction and execute
c 41633 Update State of Ghost
D 41633 Used by the routine at #R41211.
C 41633,4 Load IX with address of complex state data for Ghost (Level 4)
C 41637,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 41640,2 ...and if collision was not with entity of class 31 (Berk)...
C 41642,2 ...then skip ahead to #R41653
N 41644 If collision was with Berk, then IY will point to Berk's complex state data
C 41644,4 If Berk is not flying...
C 41648,2 ...then skip ahead to #R41653
C 41650,3 Set "Berk Has Been Killed" Flag
C 41653,3 Load E with current character's current room index...
C 41656,1 ...
C 41657,3 Load A with Ghost's current room index
C 41660,3 Load C with y-coordinate of Ghost's top edge
C 41663,3 Load B with y-coordinate of Ghost's bottom edge
C 41666,4 If Ghost's Moving Upwards Flag is set...
C 41670,2 ...then skip ahead to #R41716
C 41672,2 If Ghost's current room is 4 (room above pit)...
C 41674,2 ...then skip ahead to #R41687
C 41676,1 If y-coordinate of Ghost's bottom edge...
C 41677,2 ...is not 119...
C 41679,3 ...then move Ghost down one character and return
C 41682,4 Set Ghost's Moving Upwards Flag
C 41686,1 Return
N 41687 Ghost's current room is 4 (room above pit)
C 41687,1 If current character is in the same room as the Ghost...
C 41688,2 ...then skip ahead to #R41703
C 41690,1 If y-coordinate of Ghost's bottom edge...
C 41691,2 ...is not 119...
C 41693,3 ...then move Ghost down one character and return
C 41696,3 Increase index of Ghost's current room (to 5, pit)
C 41699,2 Position Ghost such that the y-coordinate of its top edge is 115...
C 41701,2 ...and return
N 41703 Current character and Ghost in same room (room above pit)
C 41703,1 If y-coordinate of Ghost's top edge...
C 41704,2 ...is not 121...
C 41706,3 ...then move Ghost down one character and return
C 41709,3 Increase index of Ghost's current room (to 5, pit)
C 41712,2 Position Ghost such that the y-coordinate of its top edge is 100...
C 41714,2 ...and return
N 41716 Ghost's Moving Upwards Flag is set
C 41716,2 If Ghost's current room is 5 (pit)...
C 41718,2 ...then skip ahead to #R41731
C 41720,1 If y-coordinate of Ghost's top edge...
C 41721,2 ...is not 101...
C 41723,3 ...then move Ghost up one character and return
C 41726,4 Reset Ghost's Moving Upwards Flag (i.e. moving downwards)
C 41730,1 Return
N 41731 Ghost's current room is 5 (pit)
C 41731,1 If current character is in the same room as the Ghost...
C 41732,2 ...then skip ahead to #R41747
C 41734,1 If y-coordinate of Ghost's top edge...
C 41735,2 ...is not 101...
C 41737,3 ...then move Ghost up one character and return
C 41740,3 Decrease index of Ghost's current room (to 4, room above pit)
C 41743,2 Position Ghost such that the y-coordinate of its top edge is 121...
C 41745,2 ...and return
N 41747 Current character and Ghost in same room (pit)
C 41747,1 If y-coordinate of Ghost's bottom edge...
C 41748,2 ...is not 100...
C 41750,3 ...then move Ghost up one character and return
C 41753,3 Decrease index of Ghost's current room (to 4, room above pit)
C 41756,2 Prepare to set y-coordinate of Ghost's top edge to 115
C 41758,3 Set y-coordinate of Ghost's top edge to value in A
C 41761,2 Add 6 to value in A (as Ghost is 6 characters tall)...
C 41763,3 ...and set y-coordinate of Ghost's bottom edge to value in A
C 41766,1 Return
c 41767 Update State of Cannon and Projectile
D 41767 Used by the routine at #R41211.
C 41767,3 Update State of Cannon's Projectile
C 41770,4 Load IX with address of complex state data for Cannon (Level 4)
C 41774,4 If Cannon's Just Loaded Flag is reset...
C 41778,2 ...then skip ahead to #R41805
C 41780,3 Decrease Cannon's Fire Timer...
C 41783,2 ...and if now zero then skip ahead to #R41791
C 41785,3 Set Cannon's graphic layout data address to point to graphic layout data for Cannon (Rocking) and return...
C 41788,3 ...
C 41791,4 Reset Cannon's Just Loaded Flag
C 41795,4 Set Cannon's Fire Timer to 50
C 41799,3 Set Cannon's graphic layout data address to point to graphic layout data for Cannon (Dormant) and return...
C 41802,3 ...
N 41805 Cannon's Just Loaded Flag is reset, so Cannon has finished its rocking phase.
C 41805,3 If Cannon has no ammunition...
C 41808,1 ...
C 41809,2 ...then jump to #R41799 (Cannon dormant)
C 41811,4 If Cannon has its Is Being Carried Flag set...
C 41815,2 ...then jump to #R41799 (Cannon dormant)
C 41817,4 Load IY with address of current level's complex state data for Berk
C 41821,3 If Berk's current room is the same as the Cannon's room...
C 41824,3 ...
C 41827,2 ...then skip ahead to #R41833
C 41829,2 If index of Berk's current room is greater than the index of the Cannon's room then skip ahead to #R41860
C 41831,2 Skip ahead to #R41871
N 41833 Berk and Cannon in same room
C 41833,3 If x-coordinate of Cannon's right side is smaller than x-coordinate of Berk's left side (i.e. Cannon is to left of Berk)...
C 41836,3 ...
C 41839,2 ...then skip ahead to #R41860
C 41841,3 If x-coordinate of Berk's right side is smaller than x-coordinate of Cannon's left side (i.e. Cannon is to right of Berk)...
C 41844,3 ...
C 41847,2 ...then skip ahead to #R41871
N 41849 Berk and Cannon overlapping horizontally
C 41849,2 Load E with 1 (as Projectile will appear one character to the right of the Cannon's coordinate position)
C 41851,4 Prepare to set Projectile's state to zero (fired vertically)
C 41855,3 Load BC with graphic layout data address for Cannon (Upright)
C 41858,2 Skip ahead to #R41880
N 41860 Berk is to the right of the Cannon
C 41860,4 Prepare to set Projectile's state to 1 (fired left)
C 41864,2 Load E with 2 (as Projectile will appear two characters to the right of the Cannon's coordinate position)
C 41866,3 Load BC with graphic layout data address for Cannon (Tilted Right)
C 41869,2 Skip ahead to #R41880
N 41871 Berk is to the left of the Cannon
C 41871,4 Prepare to set Projectile's state to 2 (fired right)
C 41875,3 Load BC with graphic layout data address for Cannon (Tilted Left)
C 41878,2 Load E with 0 (as Projectile will appear at the same x-coordinate as in the Cannon's coordinate position)
C 41880,3 Set Cannon's graphic layout data address to value in BC
C 41883,3 If Cannon's depth is 2...
C 41886,2 ...
C 41888,1 ...then return (Cannon won't fire if it is placed behind Berk)
C 41889,3 If Cannon's Fire Timer is at zero...
C 41892,1 ...
C 41893,2 ...then skip ahead to #R41899
C 41895,3 Decrease Cannon's Fire Timer
C 41898,1 Return
N 41899 Cannon's Fire Timer is at zero
C 41899,3 Decrease ammunition level of Cannon (Level 4) by one...
C 41902,1 ...
C 41903,4 Set Cannon's Fire Timer to 50
C 41907,4 Load IY with address of complex state data for Cannon's Projectile
C 41911,3 Set x-coordinate of Projectile's left and right sides to E plus x-coordinate of Cannon's left side...
C 41914,1 ...
C 41915,3 ...
C 41918,3 ...
C 41921,3 Set y-coordinates of top and bottom of Projectile to be one less than Cannon's top y-coordinate...
C 41924,1 ...
C 41925,3 ...
C 41928,3 ...
C 41931,3 Set Projectile's room to same as Cannon's Room...
C 41934,3 ...
C 41937,4 Set Projectile's depth to 1
C 41941,3 Set Projectile's state to value prepared previously...
C 41944,3 ...
C 41947,4 Set Projectile's y-velocity to -5
C 41951,3 Set Projectile's graphic layout data address to that for Explosion (Bubo's Projectile / fallen drips, Level 4)...
C 41954,3 ...as Projectile is launched from Cannon in an explosion...
C 41957,3 ...
C 41960,1 Return
c 41961 Update State of Cannon's Projectile
D 41961 Used by the routine at #R41767.
C 41961,4 Load IX with address of complex state data for Cannon's Projectile
C 41965,3 If Projectile's depth is zero...
C 41968,1 ...
C 41969,1 ...then return
C 41970,3 Set Projectile's graphic layout data address to that of drip stage 8, disconnected and falling (ball)...
C 41973,3 ...
C 41976,3 If Projectile's state is zero (fired vertically)...
C 41979,1 ...
C 41980,2 ...then skip ahead to #R42015
C 41982,2 If Projectile's state is not 8 (finished)...
C 41984,2 ...then skip ahead to #R41991
C 41986,4 Set Projectile's depth to 0
C 41990,1 Return
C 41991,2 If Projectile's state is not 2 (fired right)...
C 41993,2 ...then skip ahead to #R42006
N 41995 Projectile flying left
C 41995,3 Move entity left two characters...
C 41998,3 ...
C 42001,3 Move entity at IX into room to the left, if appropriate
C 42004,2 Skip ahead to #R42015
N 42006 Projectile flying right
C 42006,3 Move entity right two characters...
C 42009,3 ...
C 42012,3 Move entity at IX into room to the right, if appropriate
N 42015 Update Projectile's vertical velocity
C 42015,3 Load Projectile's velocity into A and E...
C 42018,1 ...
C 42019,3 Add velocity to y-coordinates of top and bottom of projectile...
C 42022,3 ...
C 42025,3 ...
C 42028,3 Increase velocity by one (initially negative so will accelerate downwards)
C 42031,1 If velocity (before increase) was not 5...
C 42032,2 ...i.e. projectile has not yet fallen back to floor-level...
C 42034,1 ...then return
C 42035,4 Set Projectile's state to 8 (finished)
C 42039,3 Set Projectile's graphic layout data address to that of explosion (Bubo's Projectile / fallen drips, Level 4)...
C 42042,3 ...
C 42045,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 42048,1 ...and if no collision occurred, then return
C 42049,2 If collision was not with entity of class 36 (skeleton, Level 4)...
C 42051,2 ...then skip ahead to #R42058
C 42053,3 Set Skeleton's Is Dying Flag...
C 42056,2 ...
C 42058,2 If collision was with entity of class 31 (Berk)...
C 42060,3 ...then set "Berk Has Been Killed" Flag
C 42063,1 Return
c 42064 Update States of Drips (Level 4)
D 42064 Used by the routine at #R41211.
C 42064,4 Load IX with address of complex state data for first drip (Level 4)
C 42068,2 Load B with 6 (as there are 6 drips to process)
C 42070,1 Store BC (B = Remaining number of drips to process)
C 42071,3 If current drip's velocity factor is not zero...
C 42074,1 ...
C 42075,2 ...then skip ahead to #R42128 (handle drip's fall)
C 42077,3 If current drip's stage is not 8...
C 42080,2 ...
C 42082,2 ...then skip ahead to #R42092
C 42084,3 Reset current drip's complex state data to values stored in Table of Initial-State Data...
C 42087,3 ...
C 42090,2 Advance IX to next entry in complex state data and loop back to #R42070
C 42092,2 If drip's stage is not 7...
C 42094,2 ...then skip ahead to #R42102
C 42096,4 Set current drip's velocity factor to 1
C 42100,2 Advance IX to next entry in complex state data and loop back to #R42070
C 42102,1 Load drip's stage into C
C 42103,2 Load A with a random number, 0-14...
C 42105,3 ...
C 42108,1 If A is not zero (14 in 15 chance)...
C 42109,2 ...then advance IX to next entry in complex state data and loop back to #R42070
C 42111,1 Load drip's stage back into A...
C 42112,1 ...and add one
C 42113,3 Store updated drip stage value
C 42116,3 Set drip's graphic layout data pointer to stage A graphic
C 42119,3 Load DE with 13 (as entries are 13 bytes wide)
C 42122,2 Advance IX to next drip's complex state data
C 42124,1 Restore BC (B = Remaining number of drips to process)
C 42125,2 Loop back to #R42070
C 42127,1 Return
N 42128 Drip's velocity factor is not zero
C 42128,3 Increase drip's velocity factor
C 42131,4 Set drip's depth to 1
C 42135,4 Load IY with address of complex state data for Cannon (Level 4)
C 42139,1 Load B with drip's velocity factor
C 42140,3 Load Cannon's current room
C 42143,3 If Cannon is in a different room to the drip...
C 42146,2 ...then skip ahead to #R42190
C 42148,3 If Cannon's depth is not 1...
C 42151,2 ...
C 42153,2 ...then skip ahead to #R42190
C 42155,3 If x-coordinate of Cannon's left side...
C 42158,1 ...plus one...
C 42159,3 ...is not the same as the x-coordinate of the drip's left side...
C 42162,2 ...then skip ahead to #R42190
C 42164,3 If y-coordinate of top Cannon's top...
C 42167,3 ...is not the same as the y-coordinate of the drip's top...
C 42170,2 ...then skip ahead to #R42215
C 42172,3 Increase Cannon's ammunition level by 10...
C 42175,2 ...
C 42177,3 ...
C 42180,4 Set Cannon's Just Loaded Flag
C 42184,4 Set Cannon's Fire Timer to 20
C 42188,2 Reset current drip's state and loop back to #R42070 for next drip
C 42190,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 42193,2 ...and if collision was not with entity of class 31 (Berk)...
C 42195,2 ...then skip ahead to #R42215
C 42197,3 Set "Berk Has Been Killed" Flag
C 42200,2 Set drip's graphical stage to 8 (exploding on contact)...
C 42202,3 ...and also set drip's stage to 8...
C 42205,3 ...
C 42208,4 Set drip's velocity factor to zero
C 42212,3 Advance IX to next entry in complex state data and loop back to #R42070
C 42215,3 If y-coordinate of top of drip is 120...
C 42218,2 ...
C 42220,2 ...then loop back to #R42200 (make drip explode and process next drip)
C 42222,3 Move drip down one character...
C 42225,3 ...
C 42228,2 Decrease B (velocity factor) and loop back to #R42140 if not zero
C 42230,3 Advance IX to next entry in complex state data and loop back to #R42070
b 42233 Addresses of Graphic Layout Data for Drips (Level 4)
D 42233 Used by the routine at #R42251.
W 42233,2,2 Stage 0 - Blank
W 42235,2,2 Stage 1 - Green drip forming
W 42237,2,2 Stage 2 - Red drip enlarging
W 42239,2,2 Stage 3 - Magenta drip enlarging
W 42241,2,2 Stage 4 - Cyan drip enlarging
W 42243,2,2 Stage 5 - Yellow drip full size
W 42245,2,2 Stage 6 - Yellow drip extended
W 42247,2,2 Stage 7 - Drip disconnected and falling
W 42249,2,2 Stage 8 - Drip exploding on contact
c 42251 Set a Drip's (Level 4) Stage to A
D 42251 Used by the routine at #R42064. Input:  A  Index of drip state (0-8) IX  Address of complex state data for a drip (level 4)
C 42251,1 Double index of drip state...
C 42252,1 ...and load into BC...
C 42253,2 ...
C 42255,3 Point HL at start of table of Addresses of Graphic Layout Data for Drips (Level 4)
C 42258,1 Add BC to HL as offset
C 42259,1 Load address (of graphic layout data) at this location into BC...
C 42260,1 ...
C 42261,1 ...
C 42262,3 Set drip's graphic layout data address to BC
C 42265,1 Return
c 42266 Update State of Flying Skeleton Creature (Level 4)
D 42266 Used by the routine at #R41211.
C 42266,4 Load IX with address of complex state data for Flying Skeleton Creature (Level 4)
C 42270,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 42273,2 ...and if collision was not with entity of class 31 (Berk)...
C 42275,2 ...then skip ahead to #R42285
C 42277,3 If Berk's Can Fall Flag is reset...
C 42280,2 ...
C 42282,3 ...then set "Berk Has Been Killed" Flag
C 42285,3 Load HL with address of Flying Skeleton Creature's flags
C 42288,2 If creature's Horizontal Direction Flag is set (moving left)...
C 42290,2 ...then skip ahead to #R42320
N 42292 Horizontal Direction Flag reset (moving right)
C 42292,3 If creature's room is not 4 (Fake Boni's Room)...
C 42295,2 ...
C 42297,2 ...then skip ahead to #R42309
C 42299,3 If x-coordinate of creature's right edge is less than 126...
C 42302,2 ...
C 42304,2 ...then skip ahead to #R42309
C 42306,2 Set creature's Horizontal Direction Flag (moving left)
C 42308,1 Return
C 42309,3 Move creature right one character...
C 42312,3 ...
C 42315,3 ...and move into room to the right, if appropriate
C 42318,2 Skip ahead to #R42346
N 42320 Horizontal Direction Flag set (moving left)
C 42320,3 If creature's room is not 1 (Door Room)...
C 42323,2 ...
C 42325,2 ...then skip ahead to #R42337
C 42327,3 If x-coordinate of creature's left edge is at least 108...
C 42330,2 ...
C 42332,2 ...then skip ahead to #R42337
C 42334,2 Reset creature's Horizontal Direction Flag (moving right)
C 42336,1 Return
C 42337,3 Move creature left one character...
C 42340,3 ...
C 42343,3 ...and move into room to the left, if appropriate
C 42346,3 Load A with y-coordinate of creature's top edge
C 42349,2 If creature's Vertical Direction Flag is set (moving up)...
C 42351,2 ...then skip ahead to #R42367
N 42353 Vertical Direction Flag reset, moving down
C 42353,2 If y-coordinate of creature's top edge is not 108...
C 42355,2 ...then skip ahead to #R42360
C 42357,2 Set creature's Vertical Direction Flag (moving up)
C 42359,1 Return
N 42360 This entry point is used by the routine at #R41633.
C 42360,3 Move creature down one character...
C 42363,3 ...
C 42366,1 Return
N 42367 Vertical Direction Flag set, moving up
C 42367,2 If y-coordinate of creature's top edge is not 100...
C 42369,2 ...then skip ahead to #R42374
C 42371,2 Reset creature's Vertical Direction Flag (moving down)
C 42373,1 Return
N 42374 This entry point is used by the routine at #R41633.
C 42374,3 Move creature up one character...
C 42377,3 ...
C 42380,1 Return
c 42381 Update State of Snake (Level 4)
D 42381 Used by the routine at #R41211.
C 42381,4 Point IX at start of state data for Snake (Level 4)
C 42385,4 Load IY with address of current level's complex state data for Berk
C 42389,3 Load HL with address of Snake's Attack Progress Index
C 42392,1 If Snake's Attack Progress Index is not zero...
C 42393,1 ...
C 42394,2 ...then skip ahead to #R42415
N 42396 Snake's Attack Progress Index is zero
C 42396,3 If Berk's room is not 5 (Snake's room)...
C 42399,2 ...
C 42401,1 ...then return
C 42402,4 If Berk's Is Jumping Flag is set...
C 42406,2 ...then skip ahead to #R42413
C 42408,4 If Snake's Must Process Current Script Data Flag is set...
C 42412,1 ...then return
C 42413,1 Increase Snake's Attack Progress Index
C 42414,1 Return
N 42415 Snake's Attack Progress Index is not zero
C 42415,2 If Snake's Attack Progress Index is less than 8...
C 42417,2 ...then jump to #R42454 (Snake moving right)
C 42419,2 If Snake's Attack Progress Index is less than 15...
C 42421,2 ...then jump to #R42459 (Snake preparing to pounce)
C 42423,2 If Snake's Attack Progress Index is less than 17...
C 42425,2 ...then jump to #R42461 (Snake pouncing)
C 42427,2 If Snake's Attack Progress Index is 17 then jump to #R42480 (Snake finished pouncing)
N 42429 Snake's Attack Progress Index is greater than 17
C 42429,2 Set Snake's Attack Progress Index to 20
C 42431,3 Set Snake's graphic layout data address to #R42648...
C 42434,3 ...(Snake, mouth closed, with animated tongue)
C 42437,3 If x-coordinate of Snake's left edge is not 83...
C 42440,2 ...
C 42442,2 ...then move Snake left one character and return
C 42444,2 Set Snake's Attack Progress Index to 0
C 42446,1 Return
N 42447 This entry point is used by the routine at #R41961.
C 42447,3 Decrease x-coordinates of left and right edges of entity at IX by one...
C 42450,3 ...
C 42453,1 Return
N 42454 Snake's Attack Progress Index is less than 8
C 42454,1 Increase Snake's Attack Progress Index
C 42455,3 Move Snake right one character
C 42458,1 Return
N 42459 Snake's Attack Progress Index is 8 or more, but less than 15
C 42459,1 Increase Snake's Attack Progress Index
C 42460,1 Return
N 42461 Snake's Attack Progress Index is 15 or more, but less than 17
C 42461,3 If the y-coordinate of Berk's bottom edge is less than 116...
C 42464,2 ...
C 42466,2 ...then jump back to #R42429
C 42468,3 Open Snake's mouth and set Berk Has Been Killed Flag if Snake and Berk have collided
C 42471,2 Move Snake right four characters...
C 42473,3 ...
C 42476,2 ...
C 42478,1 Increase Snake's Attack Progress Index
C 42479,1 Return
N 42480 Snake's Attack Progress Index is 17
C 42480,3 Open Snake's mouth and set Berk Has Been Killed Flag if Snake and Berk have collided
C 42483,2 Set Snake's Attack Progress Index to 20
C 42485,1 Return
c 42486 Open Snake's Mouth and Set Berk Has Been Killed Flag if Snake and Berk Have Collided
D 42486 Used by the routine at #R42381. Input:  HL  Address of Snake's Attack Progress Index IX  Address of complex state data for Snake (Level 4)
C 42486,3 Set Snake's graphic layout data address to #R42703...
C 42489,3 ...(Snake, mouth open, attacking)
C 42492,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 42495,2 ...and if collision was not with entity of class 31 (Berk)...
C 42497,1 ...then return
C 42498,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 42499,2 Set Snake's Attack Progress Index to 18
C 42501,3 Set "Berk Has Been Killed" Flag
C 42504,1 Return
c 42505 Move Entity at IX Right One Character
D 42505 Used by the routines at #R41961 and #R42381.
C 42505,3 Increase x-coordinates of left and right edges of entity at IX by one...
C 42508,3 ...
C 42511,1 Return
c 42512 Set Graphic Layout Data Address for Entity at IX to BC
D 42512 Used by the routines at #R41767, #R41961, #R42251, #R42381 and #R42486. Input:  BC  Holds address of graphic layout data
C 42512,3 Set current entity's graphic layout data address to BC...
C 42515,3 ...
C 42518,1 Return
b 42519 Graphic Layout Data Cannon (Level 4) Loaded (Animated)
B 42519,3,3 Increase current state value n (initially 0), up to maximum of 4, resetting to zero if maximum reached and jump to n-th address in following list:
B 42522,2,2 #R42530 (Cannon, straight)
B 42524,2,2 #R42556 (Cannon, tilted right)
B 42526,2,2 #R42530 (Cannon, straight)
B 42528,2,2 #R42594 (Cannon, tilted left)
N 42530 Straight
B 42530,2,2 Set current graphic set to 12
B 42532,21,6*3,3
B 42553,3,3 Jump to #R42629
N 42556 Tilted Right
B 42556,2,2 Set current graphic set to 12
B 42558,3,3 Change cursor's x- and y-coordinates by +1 and -1 characters respectively
B 42561,30,6
B 42591,3,3 Jump to #R42629
N 42594 Tilted Left
B 42594,2,2 Set current graphic set to 12
B 42596,3,3 Change cursor's x- and y-coordinates by +1 and -1 characters respectively
B 42599,30,6
B 42629,3,3 Change cursor's x- and y-coordinates by -2 and -1 characters respectively
B 42632,15,6*2,3
B 42647,1,1 End Marker
b 42648 Graphic Layout Data Snake (Level 4) Mouth Closed, With Animated Tongue
B 42648,2,2 Set current graphic set to 12
B 42650,2,2 Set Repeat Counter A to 14
B 42652,3,3
B 42655,1,1 Decrement Repeat Counter A and loop back to #R42652 if not zero
B 42656,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 42659,27,6*4,3
B 42686,2,2 Jump to one of the 2 addresses in the following list, chosen at random:
B 42688,2,2 #R50800 (blank)
B 42690,2,2 #R42692 (tongue, animated)
N 42692 Tongue, animated
B 42692,3,3
B 42695,4,4 Modify following instruction to display graphic of random index, chosen from 39 and 40
B 42699,3,3
B 42702,1,1 End Marker
N 42703 Mouth Open, Attacking
B 42703,2,2 Set current graphic set to 12
B 42705,2,2 Set Repeat Counter A to 14
B 42707,3,3
B 42710,1,1 Decrement Repeat Counter A and loop back to #R42707 if not zero
B 42711,3,3 Change cursor's x- and y-coordinates by +2 and -2 characters respectively
B 42714,39,6*6,3
B 42753,1,1 End Marker
b 42754 Graphic Layout Data Ghost (Level 4) Full, Fully Animated
B 42754,2,2 Set current graphic set to 12
B 42756,3,3 Increase current state value n (initially 0), up to maximum of 2, resetting to zero if maximum reached and jump to n-th address in following list:
B 42759,2,2 #R42763 (Ghost, full, wings up, tail animated)
B 42761,2,2 #R42797 (Ghost, full, wings down, tail animated)
N 42763 Full, Wings Up, Tail Animated
B 42763,3,3 Process graphic layout data at #R42831 and upon returning, move cursor to base coordinates
B 42766,3,3 Change cursor's x- and y-coordinates by -2 and 0 characters respectively
B 42769,2,2 Set current attribute to 7
B 42771,10,4*2,2
B 42781,3,3 Change cursor's x- and y-coordinates by +3 and -2 characters respectively
B 42784,2,2 Set current attribute to 135
B 42786,10,4*2,2
B 42796,1,1 End Marker
N 42797 Full, Wings Down, Tail Animated
B 42797,3,3 Process graphic layout data at #R42831 and upon returning, move cursor to base coordinates
B 42800,3,3 Change cursor's x- and y-coordinates by -2 and +1 characters respectively
B 42803,2,2 Set current attribute to 7
B 42805,10,4*2,2
B 42815,3,3 Change cursor's x- and y-coordinates by +3 and -2 characters respectively
B 42818,2,2 Set current attribute to 135
B 42820,10,4*2,2
B 42830,1,1 End Marker
N 42831 Body and Tail, Without Wings
B 42831,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 42834,24,6
B 42858,4,4 Modify following instruction to display graphic of random index, chosen from 69 and 72
B 42862,3,3
B 42865,4,4 Modify following instruction to display graphic of random index, chosen from 69 and 72
B 42869,3,3
B 42872,4,4 Modify following instruction to display graphic of random index, chosen from 70 and 73
B 42876,3,3
B 42879,4,4 Modify following instruction to display graphic of random index, chosen from 70 and 73
B 42883,3,3
B 42886,4,4 Modify following instruction to display graphic of random index, chosen from 71 and 74
B 42890,3,3
B 42893,4,4 Modify following instruction to display graphic of random index, chosen from 71 and 74
B 42897,3,3
B 42900,1,1 End Marker
b 42901 Graphic Layout Data Skeleton (Level 4) Standing, Full, Animated
B 42901,3,3 Process graphic layout data at #R43020 and upon returning, move cursor to base coordinates
B 42904,3,3 Process graphic layout data at #R43047 and upon returning, move cursor to base coordinates
B 42907,3,3 Change cursor's x- and y-coordinates by +1 and +7 characters respectively
B 42910,2,2 Set current attribute to 7
B 42912,24,4
B 42936,1,1 End Marker
N 42937 Stepping Forward, Frame 1, Full, Animated
B 42937,3,3 Process graphic layout data at #R43020 and upon returning, move cursor to base coordinates
B 42940,3,3 Process graphic layout data at #R43047 and upon returning, move cursor to base coordinates
B 42943,3,3 Change cursor's x- and y-coordinates by -1 and +7 characters respectively
B 42946,2,2 Set current attribute to 7
B 42948,26,4*6,2
B 42974,1,1 End Marker
N 42975 Stepping Forward, Frame 2, Full, Animated
B 42975,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively and store as new base coordinates
B 42978,3,3 Process graphic layout data at #R43020 and upon returning, move cursor to base coordinates
B 42981,3,3 Process graphic layout data at #R43058 and upon returning, move cursor to base coordinates
B 42984,3,3 Change cursor's x- and y-coordinates by 0 and +7 characters respectively
B 42987,2,2 Set current attribute to 7
B 42989,30,4*7,2
B 43019,1,1 End Marker
N 43020 Head, Animated
B 43020,2,2 Set current graphic set to 12
B 43022,2,2 Set current attribute to 7
B 43024,12,4
B 43036,4,4 Modify following instruction to display graphic of random index, chosen from 81 and 82
B 43040,6,4,2
B 43046,1,1 End Marker
N 43047 Torso and Spear, Animated
B 43047,3,3 If state n (initially 1) has remaining time of zero then reset its time to maximum and randomly select a new state, n, from the 2 in the following list. Jump to the address specified in the current state and decrease its remaining time:
B 43050,4,4 #R43058 (Torso and spear, extended, for 3 ticks)
B 43054,4,4 #R43092 (Torso and spear, retracted, for 3 ticks)
N 43058 Torso and Spear, Extended
B 43058,3,3 Change cursor's x- and y-coordinates by 0 and +4 characters respectively
B 43061,2,2 Set current attribute to 7
B 43063,28,4
B 43091,1,1 End Marker
N 43092 Torso and Spear, Retracted
B 43092,3,3 Change cursor's x- and y-coordinates by +3 and +3 characters respectively
B 43095,2,2 Set current attribute to 7
B 43097,30,4*7,2
B 43127,1,1 End Marker
b 43128 Graphic Layout Data Sausages (Level 4) Red Sausage
B 43128,2,2 Set current graphic set to 12
B 43130,6,6
B 43136,1,1 End Marker
N 43137 Cyan Sausage
B 43137,2,2 Set current graphic set to 12
B 43139,6,6
B 43145,1,1 End Marker
b 43146 State Data for Simple Entities (Level 1)
D 43146 #TABLE(default,centre,:w) { =h Offset | =h Meaning } { 0 | Room index } { 1 | Depth (distance from screen) } { 2 & 3 | Address of graphic layout data } { 4 | y-coordinate + 100 (chars) } { 5 | x-coordinate + 100 (chars) } TABLE#
B 43146,6,6 (#R50389) Left brickwork
B 43152,6,6 (#R50389) Right brickwork
B 43158,6,6 (#R50479) "Home Sweet Home" brick border
B 43164,6,6 (#R50116) Four arches
B 43170,6,6 (#R50018) Spider's web
B 43176,6,6 (#R50238) Left part of floor
B 43182,6,6 (#R50211) Right part of floor
B 43188,6,6 (#R50267) Closed Trap Door
B 43194,6,6 (#R50147) Boni's shelf
B 43200,6,6 (#R50359) Left wall
B 43206,6,6 (#R50359) Right wall
B 43212,6,6 (#R50359) Left wall
B 43218,6,6 (#R50359) Right wall
B 43224,6,6 (#R50160) Floor (full width)
B 43230,6,6 (#R50126) Single arch, left
B 43236,6,6 (#R50126) Single arch, right
B 43242,6,6 (#R50359) Wall, vertical bricks, single row, left
B 43248,6,6 (#R50359) Wall, vertical bricks, single row, right
B 43254,6,6 (#R50126) Single arch
B 43260,6,6 (#R50126) Single arch
B 43266,6,6 (#R50116) Four arches
B 43272,6,6 (#R50579) Wall, horizontal bricks
B 43278,6,6 (#R50238) Left part of floor
B 43284,6,6 (#R50211) Right part of floor
B 43290,6,6 (#R50116) Four arches
B 43296,6,6 (#R50126) Single arch
B 43302,6,6 (#R50359) Wall, vertical bricks, single row, left
B 43308,6,6 (#R50359) Wall, vertical bricks, single row, right
B 43314,6,6 (#R50126) Single arch
B 43320,6,6 (#R50116) Four arches
B 43326,6,6 (#R50609) Row of five horizontal bricks
B 43332,1,1 End Marker
b 43333 State Data for Complex Entities (Level 1)
D 43333 For more details on individual bits, see trivia.
B 43333,13,13 (#R50663) Entry door (above Trap Door Room, where Berk emerges at the end of the game)
B 43346,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43359,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43372,13,13 (#R50663) Exit door
B 43385,13,13 (#R50579) Wall, horizontal bricks
B 43398,13,13 (#R50579) Wall, horizontal bricks
B 43411,13,13 (#R50579) Wall, horizontal bricks
B 43424,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 43437,13,13 (#R50283) Open Trap Door (also acts as marker, makes Berk and Drutt fall)
B 43450,13,13 (#R50800) Marker (prevents Berk and Drutt passing)
B 43463,13,13 (#R37205) Bat
B 43476,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43489,13,13 (#R50609) Ceiling (left section)
B 43502,13,13 (#R50609) Ceiling (right section)
B 43515,13,13 (#R50642) Pit Platform
B 43528,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43541,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43554,13,13 (#R50800) Marker (makes Berk and Drutt bounce off or bang head)
B 43567,13,13 (#R50579) Wall, horizontal bricks
B 43580,13,13 (#R50579) Wall, horizontal bricks
B 43593,13,13 (#R56804) Berk
B 43606,13,13 (#R50317) Boni
B 43619,13,13 (#R51314) Flying Skeleton Creature
B 43632,13,13 (#R50792) Key
B 43645,13,13 (#R50560) Red Sweet (Flying, duration = 3)
B 43658,13,13 (#R50565) Green Sweet (Jumping, duration = permanent)
B 43671,13,13 (#R52417) Drutt
B 43684,13,13 (#R53340) Worm
B 43697,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43710,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 43723,13,13 (#R50609) Ceiling, left section
B 43736,13,13 (#R50609) Ceiling, right section
B 43749,13,13 (#R37888) Spider
B 43762,13,13 (#R37888) Spider
B 43775,13,13 (#R37888) Spider
B 43788,13,13 (#R50008) Spiders' Webs
B 43801,13,13 (#R50116) Spiders' Arches
B 43814,1,1 End Marker
b 43815 Room Dimension Data (Level 1)
D 43815 #TABLE(default,centre,:w) { =h Offset | =h Meaning } { 0 | Room depth (number of depth levels) } { 1 | Position of left edge of room (chars) } { 2 | Position of right edge of room (chars) } { 3 | Position of top edge of room (chars) } { 4 | Position of bottom edge of room (chars) } TABLE#
B 43815,5,5 (01) Trap Door Room
B 43820,5,5 (02) 1st room below Trap Door
B 43825,5,5 (03) 2nd room below Trap Door
B 43830,5,5 (04) Room at bottom of Trap Door Shaft
B 43835,5,5 (05) Spider Room
B 43840,5,5 (06) Bat Room
B 43845,5,5 (07) Room at top of Pit
B 43850,5,5 (08) Pit
B 43855,5,5 (09) Door Room
B 43860,5,5 (10) Entry Room
B 43865,5,5 (11) Room above Trap Door Room
B 43870,1,1 End Marker
b 43871 Horizontal Room Connectivity Map (Level 1)
D 43871 Each entry represents a link between two rooms. The first byte in the entry is the index of the room to the left and the second byte is the index of the room to the right.
B 43871,2,2 Bat Room and Spider Room
B 43873,2,2 Spider Room and room at bottom of Trap Door Shaft
B 43875,2,2 Room at bottom of Trap Door Shaft and room at top of Pit
B 43877,2,2 Room at top of Pit and Door Room
B 43879,2,2 End Marker
b 43881 Unused
D 43881 Data Block (09) (Level 1)
B 43881,1,1
b 43882 Vertical Room Connectivity Map (Level 1)
B 43882,2,2 Trap Door Room and 1st room below Trap Door
B 43884,2,2 1st room below Trap Door and 2nd room below Trap Door
B 43886,2,2 2nd room below Trap Door and room at bottom of Trap Door Shaft
B 43888,2,2 Room at top of Pit and Pit
B 43890,2,2 Entry Room and room above Trap Door Room
B 43892,2,2 Room above Trap Door Room and Trap Door Room
B 43894,2,2 End Marker
b 43896 State Data for Simple Entities (Level 2)
B 43896,6,6 (#R51187) Sides of ceiling gap
B 43902,6,6 (#R50806) Floor
B 43908,6,6 (#R51253) Stalactite
B 43914,6,6 (#R51253) Stalactite
B 43920,6,6 (#R51253) Stalactite
B 43926,6,6 (#R50908) Left wall
B 43932,6,6 (#R50893) Right wall
B 43938,6,6 (#R50923) Ceiling section (half)
B 43944,6,6 (#R50806) Floor
B 43950,6,6 (#R51202) Seven stalactites at various heights
B 43956,6,6 (#R50806) Floor
B 43962,6,6 (#R51202) Seven stalactites at various heights
B 43968,6,6 (#R50806) Floor (see trivia)
B 43974,6,6 (#R50806) Floor
B 43980,6,6 (#R50806) Floor
B 43986,6,6 (#R51202) Seven stalactites at various heights
B 43992,1,1 End Marker
b 43993 State Data for Complex Entities (Level 2)
B 43993,13,13 (#R50893) Right wall
B 44006,13,13 (#R50923) Ceiling section (half)
B 44019,13,13 (#R50923) Ceiling section (half)
B 44032,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 44045,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 44058,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 44071,13,13 (#R50875) Ceiling (complete 1)
B 44084,13,13 (#R50884) Ceiling (complete 2)
B 44097,13,13 (#R50875) Ceiling (complete 1) (see trivia)
B 44110,13,13 (#R50884) Ceiling (complete 2)
B 44123,13,13 (#R50875) Ceiling (complete 1)
B 44136,13,13 (#R50908) Left wall
B 44149,13,13 (#R57428) Berk
B 44162,13,13 (#R38766) Green Apebeast
B 44175,13,13 (#R38766) Green Apebeast
B 44188,13,13 (#R38766) Green Apebeast
B 44201,13,13 (#R38766) Green Apebeast
B 44214,13,13 (#R39131) Bubo's projectile
B 44227,13,13 (#R38996) Bubo
B 44240,13,13 (#R50792) Key
B 44253,13,13 (#R51271) Mushroom (Jumping, duration = permanent)
B 44266,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 44279,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 44292,13,13 (#R51271) Mushroom (Immunity to Bubo, duration = permanent)
B 44305,13,13 (#R51253) Stalactite
B 44318,13,13 (#R51253) Stalactite
B 44331,13,13 (#R51253) Stalactite
B 44344,13,13 (#R51253) Stalactite
B 44357,13,13 (#R51253) Stalactite
B 44370,13,13 (#R51253) Stalactite
B 44383,13,13 (#R51253) Stalactite
B 44396,13,13 (#R52417) Drutt
B 44409,13,13 (#R53340) Worm
B 44422,13,13 (#R50668) Level 2 Door
B 44435,1,1 End Marker
b 44436 Room Dimension Data (Level 2)
B 44436,5,5 (01) Door Room
B 44441,5,5 (02) Key Room
B 44446,5,5 (03) First Apebeast Room
B 44451,5,5 (04) Second Apebeast Room
B 44456,5,5 (05) Unused (see trivia)
B 44461,5,5 (06) Stalactite Room
B 44466,5,5 (07) Bubo's Room
B 44471,1,1 End Marker
b 44472 Horizontal Room Connectivity Map (Level 2)
B 44472,2,2 Bubo's Room and Second Apebeast Room
B 44474,2,2 Second Apebeast Room and First Apebeast Room
B 44476,2,2 First Apebeast Room and Stalactite Room
B 44478,2,2 Stalactite Room and Door Room
B 44480,2,2 End Marker
b 44482 Unused
D 44482 Data Block (09) (Level 2)
B 44482,1,1
b 44483 Vertical Room Connectivity Map (Level 2)
B 44483,2,2 Key Room and Door Room
B 44485,2,2 End Marker
b 44487 State Data for Simple Entities (Level 3)
B 44487,6,6 (#R49781) Fifteen glowing tangleweeds
B 44493,6,6 (#R40073) Door Archway
B 44499,6,6 (#R50801) Floor
B 44505,6,6 (#R50801) Floor
B 44511,6,6 (#R49789) Six glowing tangleweeds
B 44517,6,6 (#R49781) Fifteen glowing tangleweeds
B 44523,6,6 (#R50801) Floor
B 44529,6,6 (#R49797) Twenty two glowing tangleweeds (full screen width)
B 44535,6,6 (#R50801) Floor
B 44541,6,6 (#R50801) Floor
B 44547,6,6 (#R49789) Six glowing tangleweeds
B 44553,6,6 (#R49781) Fifteen glowing tangleweeds
B 44559,6,6 (#R49797) Twenty two glowing tangleweeds (full screen width)
B 44565,6,6 (#R50801) Floor
B 44571,6,6 (#R50801) Floor
B 44577,6,6 (#R49797) Twenty two glowing tangleweeds (full screen width)
B 44583,6,6 (#R50801) Floor
B 44589,6,6 (#R49797) Twenty two glowing tangleweeds (full screen width)
B 44595,6,6 (#R50801) Floor
B 44601,6,6 (#R50801) Floor
B 44607,1,1 End Marker
b 44608 State Data for Complex Entities (Level 3)
B 44608,13,13 (#R50673) Level 3 Door
B 44621,13,13 (#R49711) Ceiling (left section)
B 44634,13,13 (#R49711) Ceiling (right section)
B 44647,13,13 (#R40110) Platform
B 44660,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 44673,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 44686,13,13 (#R50800) Marker (makes Berk and Drutt bounce off or bang head)
B 44699,13,13 (#R40040) Vertical wall
B 44712,13,13 (#R49705) Ceiling (full width)
B 44725,13,13 (#R49711) Ceiling (left section)
B 44738,13,13 (#R49711) Ceiling (right section)
B 44751,13,13 (#R40040) Vertical wall
B 44764,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 44777,13,13 (#R49705) Ceiling (full width)
B 44790,13,13 (#R41090) Hatch (closed)
B 44803,13,13 (#R40138) Red coloured creature's slot (see trivia)
B 44816,13,13 (#R40143) Yellow coloured creature's slot (see trivia)
B 44829,13,13 (#R40148) White coloured creature's slot (see trivia)
B 44842,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 44855,13,13 (#R57058) Berk
B 44868,13,13 (#R40451) Large yellow creature
B 44881,13,13 (#R40320) Clawed foot
B 44894,13,13 (#R40284) White coloured creature
B 44907,13,13 (#R40254) Red coloured creature
B 44920,13,13 (#R40269) Yellow coloured creature
B 44933,13,13 (#R41175) Weight (see trivia)
B 44946,13,13 (#R40192) Edible eyes (Floating, duration = 20)
B 44959,13,13 (#R40192) Edible eyes (Flying, duration = 2)
B 44972,13,13 (#R40192) Edible eyes (Flying, duration = 3)
B 44985,13,13 (#R40192) Edible eyes (Invisibility, duration = 3)
B 44998,13,13 (#R52417) Drutt
B 45011,13,13 (#R50792) Key
B 45024,13,13 (#R53340) Worm
B 45037,13,13 (#R40040) Vertical wall
B 45050,13,13 (#R40040) Vertical wall
B 45063,13,13 (#R40040) Vertical wall
B 45076,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45089,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45102,13,13 (#R40040) Vertical wall
B 45115,1,1 End Marker
b 45116 Room Dimension Data (Level 3)
B 45116,5,5 (01) Door Room
B 45121,5,5 (02) Weight Room
B 45126,5,5 (03) Large Yellow Creature Room
B 45131,5,5 (04) Hatch Room
B 45136,5,5 (05) Room above Weight Room
B 45141,5,5 (06) Coloured Creatures' Room
B 45146,5,5 (07) Room above Hatch Room
B 45151,1,1 End Marker
b 45152 Horizontal Room Connectivity Map (Level 3)
B 45152,2,2 Door Room and Weight Room
B 45154,2,2 Weight Room and Large Yellow Creature Room
B 45156,2,2 Large Yellow Creature Room and Hatch Room
B 45158,2,2 Room above Weight Room and Coloured Creatures' Room
B 45160,2,2 Coloured Creatures' Room and room above Hatch Room
B 45162,2,2 End Marker
b 45164 Unused
D 45164 Data Block (09) (Level 3)
B 45164,1,1
b 45165 Vertical Room Connectivity Map (Level 3)
B 45165,2,2 Room above Weight Room and Weight Room
B 45167,2,2 Room above Hatch Room and Hatch Room
B 45169,2,2 End Marker
b 45171 State Data for Simple Entities (Level 4)
B 45171,6,6 (#R49178) Left brickwork
B 45177,6,6 (#R50126) Single arch
B 45183,6,6 (#R50126) Single arch
B 45189,6,6 (#R49029) Double Row of Green Bricks (full width)
B 45195,6,6 (#R49178) Left brickwork
B 45201,6,6 (#R49178) Left brickwork
B 45207,6,6 (#R49029) Double Row of Green Bricks (full width)
B 45213,6,6 (#R49178) Left brickwork
B 45219,6,6 (#R50126) Single arch
B 45225,6,6 (#R49413) Single wide brick
B 45231,6,6 (#R49029) Double Row of Green Bricks (full width)
B 45237,6,6 (#R50238) Left part of floor
B 45243,6,6 (#R50211) Right part of floor
B 45249,6,6 (#R50126) Single arch
B 45255,6,6 (#R49584) Vertical red bar (outside normal game area)
B 45261,6,6 (#R49584) Vertical red bar (outside normal game area)
B 45267,6,6 (#R49489) Snake's Brickwork
B 45273,1,1 End Marker
b 45274 State Data for Complex Entities (Level 4)
B 45274,13,13 (#R50800) Marker (makes Berk and Drutt bounce off or bang head)
B 45287,13,13 (#R50800) Marker (makes Berk and Drutt bounce off or bang head)
B 45300,13,13 (#R49104) Two rows of horizontal brickwork (half-width, 1)
B 45313,13,13 (#R49035) Two rows of horizontal brickwork (half-width, 2)
B 45326,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45339,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45352,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45365,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45378,13,13 (#R50800) Marker (makes Drutt swap depth levels)
B 45391,13,13 (#R57428) Berk
B 45404,13,13 (#R42901) Skeleton
B 45417,13,13 (#R50317) Boni
B 45430,13,13 (#R50304) Fake Boni
B 45443,13,13 (#R52417) Drutt
B 45456,13,13 (#R50792) Key
B 45469,13,13 (#R53340) Worm
B 45482,13,13 (#R51314) Flying Skeleton Creature
B 45495,13,13 (#R42648) Snake
B 45508,13,13 (#R42530) Cannon
B 45521,13,13 (#R50800) 1st drip from left (Red Sausage Room)
B 45534,13,13 (#R50800) 2nd drip from left (Red Sausage Room)
B 45547,13,13 (#R50800) 3rd drip from left (Red Sausage Room)
B 45560,13,13 (#R50800) 4th drip from left (Red Sausage Room)
B 45573,13,13 (#R50800) 5th drip from left (Red Sausage Room)
B 45586,13,13 (#R50800) Drip (Skeleton's Room)
B 45599,13,13 (#R50800) Cannon's Projectile
B 45612,13,13 (#R43128) Red Sausage (Jumping, duration = permanent)
B 45625,13,13 (#R43137) Cyan Sausage (Flying, duration = 6)
B 45638,13,13 (#R43137) Cyan Sausage (Flying, duration = 3)
B 45651,13,13 (#R50678) Door
B 45664,13,13 (#R49173) Yellow brick column
B 45677,13,13 (#R49173) Yellow brick column
B 45690,13,13 (#R49571) Long yellow brick
B 45703,13,13 (#R49392) Blue and Red Mini Wall
B 45716,13,13 (#R49392) Blue and Red Mini Wall
B 45729,13,13 (#R49392) Blue and Red Mini Wall
B 45742,13,13 (#R49392) Blue and Red Mini Wall
B 45755,13,13 (#R50800) Marker (makes Berk and Drutt fall)
B 45768,13,13 (#R49173) Yellow brick column
B 45781,13,13 (#R49173) Yellow brick column
B 45794,13,13 (#R42754) Ghost
B 45807,13,13 (#R50800) Marker (makes Berk and Drutt bounce off or bang head)
B 45820,13,13 (#R50800) Marker (makes Berk and Drutt bounce off or bang head)
B 45833,13,13 (#R49535) Left wall, short
B 45846,13,13 (#R49553) Right wall, long
B 45859,1,1 End Marker
b 45860 Room Dimension Data (Level 4)
B 45860,5,5 (01) Door Room
B 45865,5,5 (02) Five Drips Room
B 45870,5,5 (03) Skeleton's Room
B 45875,5,5 (04) Fake Boni's Room
B 45880,5,5 (05) Pit
B 45885,1,1 End Marker
b 45886 Horizontal Room Connectivity Map (Level 4)
B 45886,2,2 Door Room and Five Drips Room
B 45888,2,2 Five Drips Room and Skeleton's Room
B 45890,2,2 Skeleton's Room and Fake Boni's Room
B 45892,2,2 End Marker
b 45894 Unused
D 45894 Data Block (09) (Level 4)
B 45894,1,1
b 45895 Vertical Room Connectivity Map (Level 4)
B 45895,2,2 Fake Boni's Room and Pit
B 45897,2,2 End Marker
c 45899 Populate Primary Display Buffer with Layout Data for Current Character's Current Room
D 45899 Used by the routine at #R34438.
C 45899,3 Modify instruction at #R46045 with address of Primary Display Buffer...
C 45902,3 ...
C 45905,3 Load C with depth of current character's current room...
C 45908,1 ...
C 45909,3 Load B with index of current character's current room...
C 45912,1 ...
C 45913,2 Load D with zero
N 45915 Start drawing simple entities
C 45915,4 Load IX with start address of current level's simple state data
C 45919,2 Load DE with 6 (as simple state data entries are 6 bytes wide)
C 45921,3 Load first byte of current simple state data entry into A
C 45924,2 If this is 255 (end marker for complex state data)...
C 45926,2 ...then skip ahead to #R45961
C 45928,2 If it is not 254 (end marker for level's simple state data)...
C 45930,2 ...then skip ahead to #R45939
N 45932 At this point, we have passed the end marker for the simple state data block and are now at the start of the complex state data block whose entries are 13 bytes wide.
C 45932,2 Load DE with 13
C 45934,2 Advance IX to start of complex state data block
C 45936,3 Load A with entity's room index
N 45939 At this point, A holds the index of the room to which the simple or complex entity belongs
C 45939,1 If entity's room is not the same as the current character's current room...
C 45940,2 ...then skip ahead to #R45957
C 45942,1 If entity's depth is not the same as current depth in C...
C 45943,3 ...
C 45946,2 ...then skip ahead to #R45957
C 45948,1 Switch registers
C 45949,2 Store IX (pointer to current entry in simple/complex state data)
C 45951,3 Load Primary Display Buffer with graphic layout data for current entity
C 45954,2 Restore IX (pointer to current entry in simple/complex state data)
C 45956,1 Switch registers
C 45957,2 Advance IX to next entity's state data
C 45959,2 Loop back to #R45921
C 45961,1 Decrease current depth (i.e. closer to screen)
C 45962,2 If depth is not zero (i.e. still depth levels to process) then loop back to #R45915
C 45964,1 Return
c 45965 Populate Primary Display Buffer with Graphic Layout Data for Entity Whose Simple / Complex State Data is at Address in IX
D 45965 Used by the routine at #R45899. Input:  IX  Address of complex state data for an entity IX  (Entry at #R45999, #R46001 or #R46003 only) Address of graphic layout data to draw B  (Entry at #R45999, #R46001 or #R46003 only) 0 if current position in Display Buffer needs to be recalculated. 1 otherwise.
C 45965,3 Load DE with address of graphic layout data for entity...
C 45968,3 ...
C 45971,3 Load A with y-coordinate of top edge of current character's current room...
C 45974,3 ...add y-coordinate of graphic element to draw as offset...
C 45977,2 ...subtract 100...
C 45979,1 ...and load into L
C 45980,3 Load A with x-coordinate of left edge of current character's current room...
C 45983,3 ...add x-coordinate of graphic element to draw as offset...
C 45986,2 ...subtract 100...
C 45988,1 ...and load into H
C 45989,3 Store x- and y-coordinates at #R34281
C 45992,1 Transfer address of graphic layout data in simple/complex state data from DE...
C 45993,2 ...into IX
C 45995,2 Reset Do Not Recalculate Display Buffer Address Flag, as address not yet calculated
C 45997,2 Jump to #R46003 (read / process data at address in IX)
N 45999 This entry point is used by the routines at #R46427, #R46442, #R46460 and #R46599.
C 45999,2 Advance IX by one byte
N 46001 This entry point is used by the routines at #R46284, #R46295 and #R46306.
C 46001,2 Advance IX by one byte
N 46003 This entry point is used by the routines at #R46317, #R46347, #R46363, #R46460, #R46481, #R46495, #R46611, #R46628, #R46647 and #R46664.
C 46003,3 If first byte of graphic layout data entry is at least 236...
C 46006,2 ...i.e. IX points to an instruction...
C 46008,3 ...then jump to appropriate graphic layout routine
N 46011 At this point, the graphic layout data pointed to by IX is graphical data, not an instruction. We only draw the graphics if they lie within the display area (i.e. have x- and y-coordinates less than 32 and 24 respectively, see trivia).
C 46011,1 If x-coordinate of graphic to draw is 32 or more...
C 46012,2 ...
C 46014,3 ...then skip ahead to #R46151
C 46017,1 If y-coordinate of graphic to draw is 24 or more...
C 46018,2 ...
C 46020,3 ...then skip ahead to #R46151
C 46023,1 Store HL (H = x-coordinate to draw to, L = y-coordinate to draw to)
C 46024,1 Decrease value of Don't Recalculate Display Buffer Address Flag
C 46025,3 If B is zero (i.e. we don't need to recalculate current position in display buffer), then skip ahead to #R46051
N 46028 If B was 1, then we need to load DE with the address of the current position in the Primary Display Buffer.
C 46028,1 Load C with three times entity's x-coordinate...
C 46029,1 ...
C 46030,1 ...
C 46031,1 ...
C 46032,1 Load DE with double entity's y-coordinate...
C 46033,1 ...
C 46034,1 ...
C 46035,2 ...
C 46037,1 Set B to zero (BC now holds three times x-coordinate)
C 46038,3 Point HL at start of Table of Multiples of 96
C 46041,1 Add double y-coordinate as offset
C 46042,1 Load DE with corresponding multiple of 96...
C 46043,1 ...
C 46044,1 ...
N 46045 The operand of the instruction at #R46045 represents the address of the Primary Display Buffer. This is modified by the instruction at #R45902.
C 46045,3 Load HL with start address of Primary Display Buffer
C 46048,1 Move HL to position in Primary Display Buffer corresponding to x- and y-coordinates of entity...
C 46049,1 ...
C 46050,1 Switch DE (now points to position in Primary Display Buffer for current entity) and HL
C 46051,1 Load A with Graphic Set Index plus one from this entry in Primary Display Buffer...
C 46052,1 ...and if value is now zero (i.e. old value was 255 corresponding to a block outside dimensions of room)...
C 46053,3 ...then skip ahead to #R46150
C 46056,3 Load current Graphic Set Index into this location in Primary Display Buffer...
C 46059,1 ...
C 46060,1 Advance to Graphic Index in current character block's entry in Primary Display Buffer
C 46061,3 Load Graphic Index into current Display Buffer location...
C 46064,1 ...
C 46065,1 Advance to next byte in current character block's display buffer entry (Attribute)
C 46066,3 Load Current Attribute into A...
C 46069,1 ...and if not zero...
C 46070,2 ...then skip ahead to #R46077
N 46072 Current Attribute is zero (i.e. not set) so DE points to attribute data
C 46072,2 Advance IX to next byte in graphic layout data (attribute)...
C 46074,3 ...and load into A
N 46077 At this point, A holds an attribute value either from the graphic layout data, or the Current Attribute as stored at #R34270. This attribute is to be applied to the current display buffer location. IX (current position in graphic layout data) is pointing to either the graphic index (if the Current Attribute at #R34270 is set) or the attribute data (if the Current Attribute is not set). In either case, IX+1 is the address of the Cursor Shift byte. Bit 7 of the Cursor Shift byte is the Override Attribute Flag.
C 46077,4 If bit 7 (Override Attribute Flag) is set...
C 46081,3 ...then skip ahead to #R46111
N 46084 Override Attribute Flag reset
C 46084,1 Load L with attribute value
C 46085,2 Check PAPER bits
C 46087,1 Restore attribute value to A
C 46088,3 If PAPER is not zero (i.e. black) then skip ahead to #R46111
N 46091 The instructions between #R46091 and #R46110 (inclusive) are executed only when the PAPER component of the attribute in A (and L) is black. If the Preserve INK Flag is reset in the attribute value loaded (at #R46098) from the Display Buffer, then the instruction at #R46107 will leave the reset (i.e. black) PAPER bits in A. If the Preserve INK Flag is set, then the instructions between #R46104 and #R46106 (inclusive) will shift the bits used for INK into the PAPER positions and this PAPER colour (originally INK colour) will be preserved when the instruction at #R46107 is executed.
C 46091,2 Reset all bits except Preserve INK and Mirror flags
C 46093,1 Load B with Preserve INK and Mirror flags
C 46094,1 Restore attribute value to A
C 46095,2 Reset bits Preserve INK and Mirror flags
C 46097,1 Load C with INK and PAPER bits of attribute value
C 46098,1 Load value currently in Display Buffer into A...
C 46099,2 ...and if Preserve INK Flag is reset...
C 46101,3 ...then skip ahead to #R46107
N 46104 Preserve INK Flag set in Display Buffer
C 46104,1 Shift INK bits into PAPER bits...
C 46105,1 ...
C 46106,1 ...
C 46107,2 Reset all except PAPER bits
C 46109,1 (Re)set Preserve INK and Mirror flags as stored in B previously
C 46110,1 Set INK bits as stored in C previously (PAPER was black)
C 46111,1 Load attribute in A into Display Buffer
C 46112,1 Restore HL (H = x-coordinate to draw to, L = y-coordinate to draw to)
N 46113 Read Cursor Shift byte. Bits 0-6 of this byte control where the cursor to write to Primary Display Buffer is moved to after writing the current character block. A value of 33 advances the cursor right by one character. A value, n, less than 33 moves the cursor down a character row, and left by 33-(n+1) characters. A value greater than 33 moves the cursor right by (n+1)-33 characters. Bit 7 is the Override Attribute Flag.
C 46113,3 Load A with Cursor Shift byte...
C 46116,2 ...and if this is 255 (End Marker)...
C 46118,3 ...then jump to #R46418 (load HL with stored coordinates from #R34281 and return from drawing)
C 46121,2 Reset bit 7 (Override Attribute Flag)
C 46123,2 Subtract 33, and if remaining value is 0 (i.e. original value was 33)...
C 46125,3 ...then skip ahead to #R46140...
C 46128,3 ...else, if value was greater than 33 then skip ahead to #R46132
N 46131 Cursor Shift byte was less than 33 (move the cursor down a character row, and left by 33-(n+1) characters)
C 46131,1 Increase y-coordinate
C 46132,1 Increase A (x-coordinate offset) and add to x-coordinate...
C 46133,1 ...
C 46134,1 ...
C 46135,2 Prepare to recalculate Display Buffer address as change in coordinates is non-trivial
C 46137,3 Advance graphic layout data pointer by two bytes and read / process next data
N 46140 Cursor Shift byte was 33 (move the cursor right by one character)
C 46140,1 Advance pointer to start of next entry in Primary Display Buffer
C 46141,1 Increase x-coordinate by one
C 46142,3 If x-coordinate is zero then jump back to #R46135 (see trivia)
C 46145,2 Prepare to skip over recalculation of Display Buffer address as we moved right one character
C 46147,3 Advance graphic layout data pointer by two bytes and read / process next data
N 46150 First byte in Primary Display Buffer entry for current position is 255 (i.e. outside dimensions of room)
C 46150,1 Restore HL (H = x-coordinate to draw to, L = y-coordinate to draw to)
C 46151,3 Load Current Attribute into A...
C 46154,1 ...and if not zero...
C 46155,3 ...then skip ahead to #R46160
C 46158,2 Advance IX to next byte in graphic layout data (attribute)
C 46160,3 Load A with Cursor Shift byte...
C 46163,2 Reset bit 7 (Override Attribute Flag)
C 46165,2 Subtract 33...
C 46167,3 ...and jump back to #R46128 to update current drawing position
b 46170 Table of Multiples of 96
D 46170 Used in calculating position in Display Buffer data for a given y-coordinate (as Display Buffer data is 3 bytes per character block, so 1 character row's worth of data is 3 x 32 = 96 bytes
W 46170,48,2
c 46218 Jump to Appropriate Graphic Layout Routine
D 46218 Used by the routine at #R45965. Input:  A  Index of graphic layout data instruction IX  Address of current graphic layout data instruction
C 46218,2 Advance IX to first parameter byte in graphic layout data
C 46220,2 Subtract 236 to get zero-based index of required instruction
C 46222,1 Load double index of graphic layout data instruction into BC...
C 46223,1 ...
C 46224,2 ...
C 46226,1 Store HL
C 46227,3 Point HL at start of Table of Addresses of Graphic Layout Data Handling Routines
C 46230,1 Add doubled instruction index as offset to HL to point to address of required routine
C 46231,1 Modify JP instruction at #R46241 with this address...
C 46232,3 ...
C 46235,1 ...
C 46236,1 ...
C 46237,3 ...
C 46240,1 Restore HL
N 46241 The operand of the instruction at #R46241 represents the addresses of the required graphic layout data handling routine. This is modified by the instruction at #R46232.
C 46241,3 Jump to appropriate instruction handling routine
b 46244 Table of Addresses of Graphic Layout Data Handling Routines
D 46244 Graphic layout data is stored in the form of encoded instructions. Generally an instruction is simply to display a graphic of given index with a given attribute and then to advance the position of the drawing "cursor". If the first byte (normally the graphic index) is 236 or greater, however, then we are dealing with a special instruction; the values 236 and above can be considered to be opcodes. These opcodes correspond to calls/jumps to routines at addresses stored in this table. The opcodes all take different combinations of parameters.
W 46244,2,2 (236)
W 46246,2,2 (237)
W 46248,2,2 (238)
W 46250,2,2 (239)
W 46252,2,2 (240)
W 46254,2,2 (241)
W 46256,2,2 (242)
W 46258,2,2 (243)
W 46260,2,2 (244)
W 46262,2,2 (245)
W 46264,2,2 (246)
W 46266,2,2 (247)
W 46268,2,2 (248)
W 46270,2,2 (249)
W 46272,2,2 (250)
W 46274,2,2 (251)
W 46276,2,2 (252)
W 46278,2,2 (253)
W 46280,2,2 (254)
W 46282,2,2 (255)
c 46284 Graphic Layout Routine (237) Set New Pending Sound Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0)
C 46284,3 Load current byte of graphic layout data into A
C 46287,3 Set pending sound index to A if it is currently zero, or lower priority
C 46290,2 Prepare to recalculate Display Buffer address
C 46292,3 Advance graphic layout data pointer by one byte and read / process next data
c 46295 Graphic Layout Routine (242) Set Current Attribute Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0)
C 46295,3 Load current byte of graphic layout data...
C 46298,3 ...and set as current Attribute
C 46301,2 Prepare to recalculate Display Buffer address
C 46303,3 Advance graphic layout data pointer by one byte and read / process next data
c 46306 Graphic Layout Routine (244) Set Current Graphic Set Index Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0)
C 46306,3 Load current byte of graphic layout data...
C 46309,3 ...and set as current Graphic Set Index
C 46312,2 Prepare to recalculate Display Buffer address
C 46314,3 Advance graphic layout data pointer by one byte and read / process next data
c 46317 Graphic Layout Routine (236) Set Graphic Index in Next Instruction to Value Randomly Selected from List
D 46317 Read Current Byte (n, random number cap), generate random number m (1 to n inclusive) and copy the m-th byte in following list into position after end of list bytes (i.e. the graphic index field of the next graphic layout data entry), then advance current position to this location. Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46317,2 Store current position in graphic layout data
C 46319,3 Load current byte (Random Number Cap) from graphic layout data into A...
C 46322,1 ...and copy into E
C 46323,3 Load BC with a random number, 1-A...
C 46326,1 ...
C 46327,1 ...
C 46328,2 ...
C 46330,2 Advance IX by number of bytes stored in BC
C 46332,3 Load byte at this location into A
C 46335,2 Restore previous position in graphic layout data
C 46337,1 Load Random Number Cap into BC...
C 46338,1 ...and add one
C 46339,2 Advance IX by this number of bytes
C 46341,3 Store byte previously read at current position
C 46344,3 Read / process data at address in IX
c 46347 Graphic Layout Routine (245) Decrease Timer Value, and if Zero, Reset and Write Random Graphic Index from List into Next Instruction
D 46347 Decrease timer value (1st parameter). If now zero, then reset timer to value in 2nd parameter, then load one of the n (3rd parameter) following values chosen at random into the Graphic Index field of the next instruction. Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46347,2 Prepare to recalculate Display Buffer address
C 46349,3 Decrease timer value
C 46352,2 If timer is not zero, then advance IX to start of next instruction and process
C 46354,3 Reset timer to maximum, advance IX to start of next instruction and set value here (graphic index) to random value from sequence of data following previous instruction...
C 46357,3 ...
C 46360,3 Read / process data at address in IX
c 46363 Graphic Layout Routine (246) Decrease Timer Value, and if Zero, Reset and Write Random Attribute from List into Next Instruction
D 46363 Decrease timer value (1st parameter). If now zero, then reset timer to value in 2nd parameter, then load one of the n (3rd parameter) following values chosen at random into the Attribute field of the next instruction. Input: IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46363,2 Prepare to recalculate Display Buffer address
C 46365,3 Decrease timer value
C 46368,2 If timer is zero, then reset timer, advance to next instruction and set that instruction's attribute to random value from sequence
N 46370 This entry point is used by the routine at #R46347.
C 46370,3 Advance to next instruction and process...
C 46373,3 ...
C 46376,3 Reset timer to maximum, advance IX to start of next instruction and set second value here (attribute) to random value from sequence of data following previous instruction...
C 46379,3 ...
C 46382,3 Read / process data at address in IX
c 46385 Reset Timer to Initial Value then Load E with Random Value from Sequence (in Graphic Layout Data)
D 46385 Used by the routines at #R46347 and #R46363. Input:  B  Always zero IX  Current address in graphic layout data
C 46385,3 Set current timer value to maximum...
C 46388,3 ...
C 46391,3 Load A with number of states
C 46394,3 Set C to a random number between 3 and (number of states + 2)...
C 46397,2 ...
C 46399,1 ...
C 46400,2 Store IX (current position in graphic layout data)
C 46402,2 Advance IX by C bytes (BC = C, as B = 0)
C 46404,3 Load E with value at this position
C 46407,2 Restore IX (old position in graphic layout data)
N 46409 This entry point is used by the routine at #R46363.
C 46409,3 Advance IX by number of states + 3 bytes to arrive at start of next data...
C 46412,2 ...
C 46414,1 ...
C 46415,2 ...
C 46417,1 Return
c 46418 Graphic Layout Routine (255) Load HL with Stored Coordinates from 34281 and Return from Drawing
D 46418 Note that when returning from another block of graphic layout data, the Current Attribute stored at #R34270 (and set in the called block) is not preserved. Upon returning, the Current Attribute value is cleared. Output: B  Do Not Recalculate Display Buffer Address Flag (0) H  Current x-coordinate L  Current y-coordinate
C 46418,1 Set Current Attribute to zero...
C 46419,3 ...
C 46422,3 Load HL with base x- and y-coordinates
C 46425,1 Set B to zero
C 46426,1 Return
c 46427 Graphic Layout Routine (250) Adjust x- and y-Coordinates for Drawing Without Storing
D 46427 Read following two bytes in graphic layout data and adjust y- and x-coordinates by these amounts respectively, without storing. These new coordinates will be lost on the next draw operation, being overwritten by the values stored at #R34281. Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0)
C 46427,3 Read delta-y into A...
C 46430,1 ...and adjust y-coordinate by this amount...
C 46431,1 ...
C 46432,3 Read delta-x into A...
C 46435,1 ...and adjust x-coordinate by this amount...
C 46436,1 ...
C 46437,2 Prepare to recalculate Display Buffer address
C 46439,3 Advance graphic layout data pointer by two bytes and read / process next data
c 46442 Graphic Layout Routine (254) Adjust x- and y-Coordinates for Drawing and Set as New Base Coordinates
D 46442 Read following two bytes in graphic layout data and adjust y- and x-coordinates by these amounts respectively, storing at #R34281 as base coordinates. These new coordinates will be used as the starting position on the next draw operation. Input:  H  Current x-coordinate L  Current y-coordinate IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0)
C 46442,3 Read delta-y into A...
C 46445,1 ...and adjust y-coordinate by this amount...
C 46446,1 ...
C 46447,3 Read delta-x into A...
C 46450,1 ...and adjust x-coordinate by this amount...
C 46451,1 ...
C 46452,3 Store new coordinates at #R34281
C 46455,2 Prepare to recalculate Display Buffer address
C 46457,3 Advance graphic layout data pointer by two bytes and read / process next data
c 46460 Graphic Layout Routine (251) Process Graphic Layout Data at Following Address and Return When Complete
D 46460 Functionally equivalent to "CALL" instruction. Read current WORD (address) from graphic layout data, load graphic layout data at that address into Primary Display Buffer and return to previous position. Upon returning (via routine at #R46418 when a 255 is encountered), the position of the cursor (i.e. the value in HL) is reset to the base coordinates as stored at #R34281 - see instruction at #R46422. Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0)
C 46460,3 Load BC with destination graphic layout data address...
C 46463,3 ...
C 46466,2 Store IX (current position in graphic layout data)
C 46468,1 Transfer address just read into BC into IX...
C 46469,2 ...
C 46471,3 Load graphic layout data from this new location into Primary Display Buffer (recursive call)
C 46474,2 Restore IX (previously stored position in graphic layout data)
C 46476,2 Prepare to recalculate Display Buffer address
C 46478,3 Advance graphic layout data pointer by two bytes and read / process next data
c 46481 Graphic Layout Routine (248) Jump to Graphic Layout Data Address
D 46481 Read current WORD (address) from graphic layout data and move graphic layout data Pointer to this address. Input: IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46481,3 Load next two bytes as a WORD into IX...
C 46484,3 ...
C 46487,1 ...
C 46488,2 ...
C 46490,2 Prepare to recalculate Display Buffer address
C 46492,3 Read / process data at address in IX
c 46495 Graphic Layout Routine (249) Jump to Time-Weighted, Randomly Selected Graphic Layout Data Address in List Input: IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46495,2 Store IX (pointer to first parameter in graphic layout data)
C 46497,3 Load A with current state number
C 46500,1 Multiply A by four and add two...
C 46501,1 ...to give number of bytes of data to skip over...
C 46502,2 ...
C 46504,1 Load BC with value in A...
C 46505,2 ...
C 46507,2 ...and add to IX to advance to start of data for current state
C 46509,3 Decrease the timer value for this state...
C 46512,2 ...and if not zero, skip ahead to #R46544
C 46514,2 Restore (pointer to first parameter in graphic layout data)
C 46516,3 Load A with random number...
C 46519,3 ...from zero to one less than number of states...
C 46522,3 ...and set this as the index of the current state
C 46525,1 Multiply A by four and add two...
C 46526,1 ...to give number of bytes of data to skip over...
C 46527,2 ...
C 46529,1 Load BC with value in A
C 46530,2 Advance IX to start of data for (new) current state
C 46532,3 Load A with random number...
C 46535,3 ...from one to maximum timer value for state...
C 46538,1 ...
C 46539,3 ...and set as current timer value for this state
C 46542,2 Skip ahead to #R46545
C 46544,1 Restore BC (graphic layout data position, was previously in IX)
C 46545,3 Load IX with graphic layout data address...
C 46548,3 ...in current state's data...
C 46551,1 ...
C 46552,2 ...
C 46554,2 Prepare to recalculate Display Buffer address
C 46556,3 Read / process data at address in IX
c 46559 Graphic Layout Routine (243) Increment Index, n, and Jump to n-th Address in Following List
D 46559 Read first parameter (n) from graphic layout data, increment (resetting to zero if it is equal to the length of the list of addresses as specified by the second parameter) and jump to n-th address. Input:  IX  Address of first parameter in current graphic layout data instruction Output: A  Number of bytes in graphic layout data to skip over
C 46559,3 Load current byte of graphic layout data into A
C 46562,1 Increase by one
C 46563,3 If following byte (cap value) is greater than current byte...
C 46566,2 ...then skip ahead to #R46569
C 46568,1 Reset current value to zero as cap value reached
C 46569,3 Load current value back into current position in graphic layout data
C 46572,1 Load double current value + 2 (as we're skipping over first two bytes and subsequent data are WORD addresses) into A...
C 46573,2 ...
C 46575,2 Jump to #R46586
c 46577 Graphic Layout Routine (247) Jump to Randomly Selected Graphic Layout Data Address from List
D 46577 Read current byte value (n) from graphic layout data, generate random number m (0 - n-1) then jump to address in m-th WORD after current position. Input:  A  (Entry at #R46585) Number of words in graphic layout data to skip over A  (Entry at #R46586) Number of bytes in graphic layout data to skip over IX  Address of first parameter in current graphic layout data instruction Output: IX  Address of next graphic layout data instruction to process
C 46577,3 Load current byte of graphic layout data into A
C 46580,2 Advance pointer to next byte
C 46582,3 Load A with a random number between 0 and (A-1)
N 46585 This entry point is used by the routine at #R46594.
C 46585,1 Double the number
N 46586 This entry point is used by the routine at #R46559.
C 46586,1 Load BC with offset value in A...
C 46587,2 ...
C 46589,2 Advance IX by offset value
C 46591,3 Jump to #R46481 (set current position in graphic layout data to value of WORD at this address)
c 46594 Graphic Layout Routine (253) Jump to Graphic Layout Data Address Selected from List, Based Upon Width of Berk's Carried Entity Output: A  Number of words in graphic layout data to skip over
C 46594,3 Load A with width of entity (characters) carried by Berk, minus 1
C 46597,2 Set current position in graphic layout data to value of A-th word in list
c 46599 Unused routine
D 46599 Graphic layout routine (252): if Berk is holding nothing then jump to address. Input:IX Address of first parameter in current graphic layout data instruction Output:B Do Not Recalculate Display Buffer Address Flag (0)
C 46599,3 If Berk is not holding anything...
C 46602,1 ...
C 46603,3 ...then jump to #R46481 (set current position in graphic layout data to value of WORD at this address)
C 46606,2 Prepare to recalculate Display Buffer address
C 46608,3 Advance graphic layout data pointer by two bytes and read / process next data
c 46611 Graphic Layout Routine (238) Start Loop (1 / 2)
D 46611 Start a loop in graphic layout data. The parameter is the repeat count. The current value of the repeat counter is stored at #R34274 and the address of the next instruction (i.e. the first instruction that is processed in each loop) is stored at #R34294. Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46611,3 Load current byte of graphic layout data...
C 46614,3 ...into #R34274 (repeat counter)
C 46617,2 Advance IX to next position in graphic layout data...
C 46619,4 ...and store at #R34294
C 46623,2 Prepare to recalculate Display Buffer address
C 46625,3 Read / process data at address in IX
c 46628 Graphic Layout Routine (239) End Loop (1 / 2) Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX Address of next graphic layout data instruction to process
C 46628,3 Decrement repeat counter...
C 46631,1 ...
C 46632,3 ...
C 46635,2 Prepare to recalculate Display Buffer address
C 46637,3 If repeat counter is zero, then exit loop and process subsequent bytes...
C 46640,4 ...else, restore stored position in graphic layout data (start of loop)...
C 46644,3 ...and continue processing data from this point
c 46647 Graphic Layout Routine (240) Start Loop (2 / 2)
D 46647 Start a loop in graphic layout data. The parameter is the repeat count. The current value of the repeat counter is stored at #R34275 and the address of the next instruction (i.e. the first instruction that is processed in each loop) is stored at #R34296. Input:  IX  Address of first parameter in current graphic layout data instruction Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX  Address of next graphic layout data instruction to process
C 46647,3 Load current byte of graphic layout data...
C 46650,3 ...into #R34275 (repeat counter)
C 46653,2 Advance IX to next position in graphic layout data...
C 46655,4 ...and store at #R34296
C 46659,2 Prepare to recalculate Display Buffer address
C 46661,3 Read / process data at address in IX
c 46664 Graphic Layout Routine (241) End Loop (2 / 2) Output: B  Do Not Recalculate Display Buffer Address Flag (0) IX Address of next graphic layout data instruction to process
C 46664,3 Decrement repeat counter...
C 46667,1 ...
C 46668,3 ...
C 46671,2 Prepare to recalculate Display Buffer address
C 46673,3 If repeat counter is zero, then exit loop and process subsequent bytes...
C 46676,4 ...else, restore stored position in graphic layout data (start of loop)...
C 46680,3 ...and continue processing data from this point
b 46683 Current Keyboard Controls
T 46683,1,1 Right
T 46684,1,1 Left
T 46685,1,1 Forward
T 46686,1,1 Back
T 46687,1,1 Berk / Drutt
T 46688,1,1 Pause
T 46689,1,1 Restart
b 46690 Table of Attribute File Addresses for Main Menu Strings
W 46690,2,2 "S   START   "
W 46692,2,2 "K NEW KEYS  "
W 46694,2,2 "J +KEMPSTON "
W 46696,2,2 "   RIGHT    "
W 46698,2,2 "   LEFT     "
W 46700,2,2 "   FORWARD  "
W 46702,2,2 "   BACK     "
W 46704,2,2 "   BERK/DRUT"
W 46706,2,2 "   PAUSE    "
W 46708,2,2 "   RESTART  "
b 46710 Table of Main Menu Strings
T 46710,84,12
T 46794,12,12 (see bugs)
T 46806,24,12
c 46830 Display and Handle Main Menu
D 46830 Used by the routine at #R34438.
C 46830,2 Load A with 1 (blue)
C 46832,3 Store at #R34217 and...
C 46835,2 ...set border to this value (blue)
C 46837,2 Fill top 22 rows of Attribute File with blue PAPER & blue INK...
C 46839,3 ...
C 46842,3 Print "THROUGH the TRAPDOOR" string
C 46845,3 Print SCORE / TOTAL / HI-SC string in current character's colours
C 46848,4 Point IX at Table of Attribute File Addresses for Main Menu Strings
C 46852,4 Point IY at start of Table of Main Menu Strings
C 46856,2 Load A with 112 (black INK on yellow PAPER)
C 46858,3 Store at #R34269
C 46861,2 Load B with 10 as there are 10 strings to print (loop counter)
C 46863,1 Store BC (B = remaining number of strings to print)
C 46864,3 Load Attribute File address at which to print text into HL...
C 46867,3 ...
C 46870,2 Load B with 12 as there are 12 characters to print (loop counter)
C 46872,1 Store BC (B = number of remaining characters to print)
C 46873,3 Load E with text character to print
C 46876,3 Print double-height text character in E
C 46879,2 Advance IY to next character in text to print
C 46881,1 Advance to next Attribute File location
C 46882,1 Restore BC (B = number of remaining characters to print)
C 46883,2 Loop back for next character
C 46885,2 Advance IX to next entry in list of Attribute File addresses to print to...
C 46887,2 ...
C 46889,1 Restore BC (B = remaining number of strings to print)
C 46890,2 Loop back for next string
C 46892,3 Draw Joystick "J" (Main Menu) in colour depending upon Joystick Mode
C 46895,2 Load A with the attribute value for red INK, yellow PAPER, BRIGHT
C 46897,3 Print keyboard controls on main menu
N 46900 This entry point is used by the routine at #R46968.
C 46900,3 Wait for key-press, store pressed key code in A and play Main Menu Sound
C 46903,2 If pressed key was not 83 (S)...
C 46905,2 ...then skip ahead to #R46915
C 46907,2 Set current border colour to red...
C 46909,3 ...
C 46912,2 ...
C 46914,1 Return
C 46915,2 If pressed key was not 74 (J)...
C 46917,2 ...then jump to #R46968 (if "K" pressed then redefine controls)
C 46919,3 If we are in Joystick Mode...
C 46922,1 ...
C 46923,2 ...then skip ahead to #R46937
C 46925,3 If Kempston Interface not present, or Kempston Joystick moved / fire pressed...
C 46928,2 ...then jump to #R46900
C 46930,2 Set Joystick Mode to On...
C 46932,3 ...(see trivia)
C 46935,2 Skip ahead to #R46938
C 46937,1 Set Joystick Mode to Off...
C 46938,3 ...
C 46941,3 Draw Joystick "J" (Main Menu) in colour depending upon Joystick Mode
C 46944,2 Loop back to #R46900
c 46946 Draw Joystick "J" (Main Menu) in Colour Depending Upon Joystick Mode
D 46946 Used by the routine at #R46830.
C 46946,3 If Joystick Mode Flag is set...
C 46949,1 ...
C 46950,2 ...then skip ahead to #R46956
C 46952,2 Load A with attribute value for black INK, yellow PAPER, BRIGHT
C 46954,2 Skip ahead to #R46958
C 46956,2 Load A with attribute value for red INK, yellow PAPER, BRIGHT
C 46958,2 Load E with 74 (index for character "J")
C 46960,4 Point IX at entry for "J +KEMPSTON " in table of Attribute File addresses at which to print menu strings
C 46964,3 Set attribute to A and location to (IX) and print double-height character in E
C 46967,1 Return
c 46968 If "K" Pressed then Redefine Controls
D 46968 Used by the routine at #R46830. Input:  A  ASCII code of pressed key
C 46968,2 If pressed key was not 75 (K)...
C 46970,2 ...then jump to Main Menu handling routine at #R46900
C 46972,2 Load B with 7 (as there are seven controls to define)
C 46974,3 Point HL at start of Table of Current Keyboard Controls
C 46977,2 Set current entry in table to 63 (ASCII code for "?")
C 46979,1 Advance HL to next entry
C 46980,2 Decrease remaining number of controls to change and loop back to #R46977 if not zero
C 46982,2 Load A with the attribute value for black INK, yellow PAPER, BRIGHT
C 46984,3 Print keyboard controls on main menu
C 46987,4 Point IY at Table of Current Keyboard Controls
C 46991,4 Point IX at entry for "   RIGHT    " text in table of Attribute File addresses at which to print for main menu
C 46995,2 Load B with 7 (as there are seven controls to define)
C 46997,1 Store BC (remaining number of controls to define)
C 46998,2 Load A with 198 (yellow INK, black PAPER, BRIGHT, FLASH)
C 47000,2 Load E with 32 (" ")
C 47002,3 Set attribute to A and location to (IX) and print double-height character in E
C 47005,3 Wait for key-press, store pressed key code in A and play Main Menu Sound
C 47008,3 If key pressed matches a direction, or the Berk / Drutt key...
C 47011,2 ...then loop back to #R47005
C 47013,1 Load keycode of pressed control into E...
C 47014,3 ...and store in Table of Current Keyboard Controls
C 47017,2 Advance IY to next control
C 47019,2 Load A with 113 (blue INK, yellow PAPER, BRIGHT)
C 47021,3 Set attribute to A and location to (IX) and print double-height character in E
C 47024,2 Advance IX to next entry in table of Attribute File addresses...
C 47026,2 ...
C 47028,1 Restore BC (remaining number of controls to define)
C 47029,2 Decrease remaining number of controls to define and loop back to #R46997 if not zero
C 47031,1 Switch Joystick Mode to Off...
C 47032,3 ...
C 47035,2 Load A with the attribute value for red INK, yellow PAPER, BRIGHT
C 47037,3 Print keyboard controls on main menu
C 47040,3 Jump to Main Menu handling routine at #R46900
c 47043 Set Carry Flag if Kempston Interface not Present, or Kempston Joystick Moved / Fire Pressed
D 47043 Used by the routine at #R46830. Output: F  Carry Flag set if Kempston Interface not present, Kempston Joystick moved or fire pressed, reset otherwise
C 47043,2 Set B to zero (to repeat check loop 256 times)
C 47045,2 Read value from Port 31 into A (Kempston Interface)
C 47047,1 If retrieved value is not zero (i.e. Kempston Interface not present, or Kempston Joystick not centred / fire button pressed)...
C 47048,2 ...then skip ahead to #R47053
C 47050,2 Decrease B (loop counter) and loop back to #R47045 to check Kempston status again if counter not zero
C 47052,1 Return
C 47053,2 Set sound 6 as pending if appropriate, then play and clear pending sound...
C 47055,3 ...
C 47058,1 Set Carry Flag
C 47059,1 Return
c 47060 Set Zero Flag if Key Whose Index is in A Matches a Direction, or the Berk / Drutt Key
D 47060 Used by the routine at #R46968. Input:  A  Index of pressed key Output: F  Zero Flag set if input key index matches an entry in table at #R46683, reset otherwise HL  Address of matching entry in table at #R46683 (if match found)
C 47060,3 Point HL at Table of Current Keyboard Controls
C 47063,2 Load B with 5 (as we are checking the first five defined keys, see bugs)
C 47065,1 If character code at current HL position matches the key we are checking...
C 47066,1 ...then return with Zero Flag set
C 47067,1 Advance HL to next character in keyboard controls table
C 47068,2 Loop back to #R47065 to check next control
C 47070,1 Return
c 47071 Set Attribute and Location and Print Double-Height Character in E
D 47071 Used by the routines at #R46946 and #R46968. Input:  A  Attribute for character to print E  Character to print IX Points to memory location holding Attribute File address at which to print character
C 47071,3 Set text printing attribute to value in A
C 47074,3 Load Attribute File address to print character to into HL...
C 47077,3 ...
C 47080,3 Print double-height text character in E
C 47083,1 Return
c 47084 Print Keyboard Controls on Main Menu
D 47084 Used by the routines at #R46830 and #R46968. Input:  A  Attribute for printing text
C 47084,3 Set attribute for printing text
C 47087,4 Point IX at entry for "   RIGHT    " text in table of Attribute File addresses at which to print
C 47091,4 Point IY at Table of Current Keyboard Controls
C 47095,2 Load B with 7, as there are 7 keyboard controls (loop counter)
C 47097,1 Store BC (B = number of remaining control keys)
C 47098,3 Load HL with Attribute File address at which to print character...
C 47101,3 ...
C 47104,3 Load E with character to print (current keyboard control)
C 47107,3 Print double-height text character in E
C 47110,2 Advance IY to next keyboard control
C 47112,2 Advance IX to next entry in list of Attribute File addresses...
C 47114,2 ...
C 47116,1 Restore BC (B = number of remaining control keys)
C 47117,2 Loop back to #R47097 for next keyboard control
C 47119,1 Return
b 47120 "THROUGH the TRAPDOOR" String
T 47120,20,20
c 47140 Print "THROUGH the TRAPDOOR" String
D 47140 Used by the routine at #R46830.
C 47140,2 Load B with 20 (length of string to print)
C 47142,3 Point HL at position to start printing text in Attribute File
C 47145,2 Load A with 79, for blue PAPER, white INK, BRIGHT
C 47147,4 Point IX to text to print
C 47151,2 Print the text and return
b 47153 "SORRY BERK,  BUT YOUR TIME IS UP" String
T 47153,32,32
c 47185 Print "SORRY BERK,  BUT YOUR TIME IS UP" String
D 47185 Used by the routine at #R34438.
C 47185,2 Load B with 32 (length of string to print)
C 47187,2 Load A with 199, for black PAPER, white INK, BRIGHT, FLASH
C 47189,4 Point IX to text to print
C 47193,3 Point HL at position at which to start printing text in Attribute File (start of second-last row)
C 47196,2 Print the text and return
b 47198 "HOME SWEET HOME" String
T 47198,15,15
c 47213 Print "HOME SWEET HOME" String
D 47213 Used by the routine at #R34438.
C 47213,2 Set string length to 15
C 47215,2 Set attribute to green INK on black PAPER, BRIGHT
C 47217,4 Point IX at "HOME SWEET HOME" text
C 47221,3 Point HL at Attribute File address at which to print text
N 47224 This entry point is used by the routines at #R47140 and #R47185.
C 47224,3 Store attribute at #R34269
C 47227,1 Store BC (B=remaining length of text)
C 47228,3 Load character of text to print into E
C 47231,3 Print double-height text character in E
C 47234,2 Advance IX to next text character to print
C 47236,1 Advance HL to next Attribute File address at which to print
C 47237,1 Restore BC (B = remaining length of text)
C 47238,2 Decrease remaining length of text by one and repeat loop for next character
C 47240,1 Return
c 47241 Reset Show Score Flag and Draw Timer Figures Bar
D 47241 Used by the routines at #R34438, #R34916 and #R47468.
C 47241,3 Reset Show Score Flag...
C 47244,2 ...
C 47246,3 ...
C 47249,4 Point IX to start of second-last row of Attribute File
C 47253,3 Load remaining time / lives into A...
C 47256,1 ...and if zero...
C 47257,2 ...then skip ahead 47267
C 47259,1 Load number of lives into B
C 47260,1 Store BC (B = remaining number of pairs of open eyes to draw)
C 47261,3 If Show Score Flag reset then draw pair of Timer Figure eyes (open, random frame) at Attribute File address in IX and advance by two bytes
C 47264,1 Restore BC (B = remaining number of pairs of open eyes to draw)
C 47265,2 Decrease B (remaining number of pairs of open eyes to draw) and loop back to #R47260 if not zero
C 47267,3 Load remaining time / lives into E...
C 47270,1 ...
C 47271,2 Load A with number of lives lost by subtracting E from 16...
C 47273,1 ...
C 47274,2 If zero, then skip ahead to #R47284
C 47276,1 Load number of lost lives into B as counter for loop
C 47277,1 Store BC (B = remaining number of pairs of closed eyes to draw)
C 47278,3 If Show Score Flag reset then draw pair of Timer Figure eyes (closed) at Attribute File address in IX and advance by two bytes
C 47281,1 Restore BC (B = remaining number of pairs of closed eyes to draw)
C 47282,2 Decrease B (remaining number of pairs of open eyes to draw) and loop back to #R47277 if not zero
C 47284,2 Set graphic index to 27 (timer figures' bodies)
C 47286,3 Load attribute of current character into A
C 47289,2 Load B with 16 (as 16 timer figures' bodies to draw)
C 47291,1 Store B (remaining number of timer figure bodies to draw)
C 47292,3 Draw left half of timer figure's body and invert mirror flag on attribute
C 47295,3 Draw right half of timer figure's body
C 47298,1 Restore B (remaining number of timer figure bodies to draw)
C 47299,2 Decrease B and loop back to #R47291
C 47301,1 Return
c 47302 If Show Score Flag Reset then Draw Pair of Timer Figure Eyes (Closed) at Attribute File Address IX and Advance IX by Two Bytes
D 47302 Used by the routines at #R47241 and #R47363. Input:  IX  Pointer to a location in Attribute File
C 47302,3 If Show Score Flag is set then return, else proceed ahead to #R47305
C 47305,3 Load A with the attribute of the current character
C 47308,2 Load C with 28 (graphic index of timer figures' closed eyes)
C 47310,3 Draw the left (closed) eye at Attribute File address in IX and advance IX by one byte
C 47313,2 Draw the right (closed) eye at Attribute File address in IX, advance IX by one byte and return
c 47315 If Show Score Flag Reset then Draw Pair of Timer Figure Eyes (Open, Random Frame) at Attribute File Address IX and Advance IX by Two Bytes
D 47315 Used by the routines at #R47241, #R47363 and #R47431. Input:  IX  Attribute File address at which to draw pair of eyes Output: IX  Attribute File address two bytes on from initial IX
C 47315,3 If Show Score Flag is set then return, else proceed ahead to #R47318
C 47318,3 Draw Timer Figure's left eye (random frame) at Attribute File address in IX and advance IX by one byte
C 47321,2 Draw Timer Figure's right eye (same frame as above), advance IX by one byte then return
c 47323 Draw a Timer Figure's Eye (Random Frame) at Attribute File Address in IX and Advance IX by One Byte
D 47323 Used by the routine at #R47315. Input:  IX  (Entry at #R47323 and #R47333) Pointer to a location in Attribute File A  (Entry at #R47333 only) Attribute C  (Entry at #R47333 only) Graphic Index (e.g. 27 for timer figures' bodies) Output: A  Attribute (including inverted mirror flag) IX  Pointer to next location in Attribute File
C 47323,2 Load A with a random number, 0-4...
C 47325,3 ...
C 47328,2 Add 29 (as 29 is the index of the first of five eye direction graphics) in C...
C 47330,1 ...
C 47331,2 Set attribute for timer indicator figures' eyes to white INK on black PAPER
N 47333 This entry point is used by the routines at #R47241, #R47302 and #R47315.
C 47333,2 Set Graphic Set Index to 4
C 47335,1 Store AF (A = attribute)
C 47336,1 Store BC (B = graphic set index, C = graphic index)
C 47337,3 Draw a graphic character block to display
C 47340,1 Restore BC (B = graphic set index, C = graphic index)
C 47341,1 Load Graphic Index into A
C 47342,2 If graphic index is less than 32 (i.e. we're not dealing with #32 - eyes looking right or #33 - eyes looking left and don't need to cancel inversion at 47350)...
C 47344,2 ...then skip ahead to #R47348
C 47346,2 Add or subtract 1 if Graphic Index is 32 or 33 respectively (Timer Figures' Eyes looking right or left respectively) to cancel out inversion at 47350
C 47348,1 Load Graphic Index into C
C 47349,1 Restore AF (A = attribute)
C 47350,2 Flip mirror flag to prepare to draw mirror image of just-drawn character block
C 47352,2 Advance IX to next byte in Attribute File
C 47354,1 Return
c 47355 If Show Score Flag is Reset then Return to Calling Routine, else Return to Routine that Called Calling Routine
D 47355 Used by the routines at #R47302 and #R47315.
C 47355,3 If Show Score Flag is reset...
C 47358,2 ...
C 47360,1 ...then return
C 47361,1 Remove return address from stack...
C 47362,1 ...and return to routine that called the calling routine
c 47363 Update Eyes of a Randomly Selected Timer Figure, Increase Timer Tick Counter and Process Timer Figure Blinking
D 47363 Used by the routine at #R34438.
C 47363,3 Select a remaining Timer Figure at random and update its eyes to a random (open-eyed) frame
C 47366,3 Increase Timer Tick Counter and reduce remaining time if Counter > 767
C 47369,3 If Blink Duration Counter is zero...
C 47372,1 ...
C 47373,2 ...then skip ahead to #R47388
C 47375,1 Decrease Blink Duration Counter by one...
C 47376,3 ...
C 47379,1 If decreased Blink Duration Counter is not zero...
C 47380,1 ...then return
C 47381,4 Restore Attribute File address of eyes of currently blinking timer figure into IX
C 47385,3 If Show Score Flag reset then draw pair of Timer Figure eyes (open, random frame) at Attribute File address IX, advance IX by two bytes then return
N 47388 Make a randomly chosen timer figure blink
C 47388,2 Load A with a random number, 0-9...
C 47390,3 ...
C 47393,1 If A is not zero (9 in 10 chance)...
C 47394,1 ...then return
C 47395,3 Load remaining time / lives into A
C 47398,2 If less than two time / lives remain...
C 47400,1 ...then return
C 47401,3 Load A with a random number, 0-(x-1) (where x is remaining time / lives)
C 47404,1 Double A...
C 47405,1 ...and load into BC...
C 47406,2 ...
C 47408,4 Point IX to start of second-last row of Attribute File
C 47412,2 Add BC as offset to IX (i.e. point to a random "awake" timer figure)
C 47414,4 Store Attribute File address of eyes of currently blinking timer figure at 34264
C 47418,3 If Show Score Flag reset then draw pair of Timer Figure eyes (closed) at Attribute File address IX and advance IX by two bytes
C 47421,2 Set Blink Duration Counter to a random number, 1-9...
C 47423,3 ...
C 47426,1 ...
C 47427,3 ...
C 47430,1 Return
c 47431 Select a Remaining Timer Figure at Random and Update its Eyes to a Random (Open-Eyed) Frame
D 47431 Used by the routine at #R47363.
C 47431,3 Load remaining time / lives into A...
C 47434,1 ...and if none remain...
C 47435,1 ...then return
C 47436,1 Load remaining time / lives into E
C 47437,2 Load A with 18 minus remaining time / lives (i.e. number in range 2 to 18)...
C 47439,1 ...
N 47440 As the value of x (Remaining Time / Lives) decreases, the probability that a randomly generated number between 0 and (18-x) is 2 or more increases. This probability is used to ensure that the rate at which each timer figure is updated remains roughly constant.
C 47440,3 Load A with a random number, 0-(17 minus remaining time / lives)
C 47443,2 If generated number is 2 or more...
C 47445,1 ...then return
C 47446,4 Point IX to start of second-last row of Attribute File
C 47450,1 Load remaining time / lives into A
N 47451 If remaining time / lives is one, then there is only one Timer Figure to update
C 47451,2 If this is 1...
C 47453,3 ...then jump to #R47315 (If Show Score Flag reset then draw pair of Timer Figure eyes and return)
N 47456 Otherwise, randomly select one of the remaining Timer Figures to update
C 47456,3 Load A with random number between 0 and (x-1) where x is remaining time / lives
C 47459,1 Double A...
C 47460,1 ...and load into BC...
C 47461,2 ...
C 47463,2 Add BC as offset to IX (i.e. advance IX to point to left eye of randomly chosen Timer Figure)
C 47465,3 If Show Score Flag reset then draw pair of Timer Figure eyes (open, random frame) at Attribute File address IX, advance IX by two bytes then return
c 47468 Increase Timer Tick Counter and Reduce Remaining Time if Counter > 767
D 47468 Used by the routine at #R47363.
C 47468,3 Increase Timer Tick Counter by one...
C 47471,1 ...
C 47472,3 ...
C 47475,1 If Timer Tick Counter is less than 768 (i.e. 3 x 256)...
C 47476,2 ...
C 47478,1 ...then return
C 47479,3 Reset Timer Tick Counter to zero...
C 47482,3 ...
N 47485 This entry point is used by the routine at #R53723.
C 47485,3 If no time / lives remain...
C 47488,1 ...
C 47489,3 ...then reset Show Score Flag, draw timer figures bar and return
C 47492,1 Decrease current time / lives by one...
C 47493,3 ...
C 47496,3 Reset Show Score Flag, and draw timer figures bar and return
c 47499 Update Scores and Display
D 47499 Used by the routine at #R34438.
C 47499,3 Set Show Score Flag...
C 47502,2 ...
C 47504,3 Set HL to zero
C 47507,3 If no time / lives remain...
C 47510,1 ...
C 47511,2 ...then skip ahead to #R47526
C 47513,1 Load HL with 1000 x current remaining time / lives...
C 47514,3 ...
C 47517,1 ...
C 47518,2 ...
C 47520,4 Subtract value of Timer Tick Counter (i.e. Score Penalty) from current level's score...
C 47524,2 ...
C 47526,3 Set score for current level
C 47529,4 Load DE with current total score
C 47533,1 Add score for current level to total score...
C 47534,3 ...and store
C 47537,4 Load current high score into DE
C 47541,2 Subtract high score from current total score...
C 47543,2 ...and if this is less than zero (i.e. high score is higher than current total score) then skip ahead to #R47551
C 47545,3 Load current total score into HL...
C 47548,3 ...and store as new high score
C 47551,2 Set time / lives to 16...
C 47553,3 ...
C 47556,4 Point IY at "numeric (score)" part of string at 47589
C 47560,3 Load HL with current score...
C 47563,3 ...and convert to string at IY
C 47566,4 Point IY at "numeric (total)" part of string at 47589
C 47570,3 Load HL with current total score...
C 47573,3 ...and convert to string at IY
C 47576,4 Point IY at "numeric (high score)" part of string at 47589
C 47580,3 Load HL with current high score...
C 47583,3 ...and convert to string at IY
C 47586,3 Print SCORE / TOTAL / HI-SC string in current character's colours and return
b 47589 Score / Total / High Score String
T 47589,39,B1:5:B1:5:B1:6:B1:5:B1:6:B1:5:B1
c 47628 Print Score / Total / High Score String in Current Character's Colours
D 47628 Used by the routines at #R34916, #R46830 and #R47499.
C 47628,4 Point IY at SCORE / TOTAL / HI-SC text
C 47632,3 Set Attribute File address at which to print text to start of second-last character row
C 47635,3 Load a character from the string into A
C 47638,2 If the character is 36 (end marker)...
C 47640,1 ...then return
C 47641,2 If character is not 42 ("set attribute to current character's colours" marker)...
C 47643,2 ...then skip ahead to #R47660
C 47645,3 Load current character's attribute into A (blue for Berk, yellow for Drutt)
C 47648,2 If blue (Berk)...
C 47650,2 ...then skip ahead to #R47656
C 47652,2 Load A with value for black INK, yellow PAPER, BRIGHT (Drutt's colours)
C 47654,2 Skip ahead to #R47666
C 47656,2 Load A with value for white INK, blue PAPER, BRIGHT (Berk's colours)
C 47658,2 Skip ahead to #R47666
C 47660,2 If character is not 35 ("set attribute to standard" marker)...
C 47662,2 ...then skip ahead to #R47673
C 47664,2 Load A with value for white INK, black PAPER, BRIGHT
C 47666,3 Store this value as the attribute to print text
C 47669,2 Advance IY to next character in string to print
C 47671,2 Loop back to #R47635 for next character
C 47673,1 Load character to print into E
C 47674,3 Print double-height text character in E
C 47677,1 Advance HL to next Attribute File address
C 47678,2 Advance IY to next character to process
C 47680,2 Loop back to #R47635 for next character
c 47682 Print a Double-Height Text Character
D 47682 Used by the routines at #R46830, #R47071, #R47084, #R47213 and #R47628. Input:  HL  Attribute File address at which to print character E  Character to print
C 47682,3 Load BC with 32 (width of a row in Attribute File)
C 47685,1 Store HL (Attribute File address at which to print character)
C 47686,2 Set D to zero
C 47688,1 Swap DE (now Attribute File address at which to print character) and HL (now H = 0, L = character to print)
C 47689,1 Multiply index of character to print by eight in HL, as each character's graphic data is eight bytes long...
C 47690,1 ...
C 47691,1 ...
C 47692,3 Add eight times character index to 15360 in HL, to point to graphic of character in ROM...
C 47695,1 ...
C 47696,1 Swap DE (now points to graphic of character in ROM) and HL (now 15360)
C 47697,1 Restore HL (Attribute File address at which to print character)
C 47698,3 Print top half of a double-height text character
C 47701,1 Add BC to HL to advance down a character row
C 47702,3 Print bottom half of a double-height text character
C 47705,1 Reset Carry Flag
C 47706,2 Subtract 32 from HL to restore to value it had upon starting this routine
C 47708,1 Return
c 47709 Print Half of a Double-Height Text Character
D 47709 The most significant byte of the Attribute File address starts off as 88 for the top third of the screen. In the middle third it becomes 89 and in the lower third it reaches 90. The most significant byte of the Display File address (for the top pixel row of each character row) is 64 in the top third, 72 in the middle third and 80 in the lower third. Generally speaking, therefore, the most significant byte in the Display File address increases by eight for every increase of one in the attribute address most significant byte, so multiplying the latter by eight (giving 192, 200 or 208, values roll over 255-0 boundary with excess truncated) would put it on the same scale as the former (64, 72 or 80). Input:  DE  15360 + 8 x character index [+4 for second run-through] (i.e. points to ROM graphic data for the character of interest) HL  Attribute File address at which to print character
C 47709,1 Store HL
C 47710,1 Store BC
C 47711,3 Load stored attribute into A
C 47714,1 Write this to Attribute File
C 47715,1 Multiply the most significant byte (MSB) of the Attribute File address by eight...
C 47716,1 ...to put it on the same scale as the MSB of the Display File address MSB (see notes)...
C 47717,1 ...
C 47718,1 ...
C 47719,2 Drop the most significant bit to point to the correct location in Display File
C 47721,1 Load back into HL (L is unaffected, as it should be)
C 47722,2 Set B to 4 (loop counter)
C 47724,1 Load a byte from the graphic data into C...
C 47725,1 ...
C 47726,2 Shift bitmap data left one pixel in C
C 47728,1 Merge this into bitmap data already in A to give a "bold" typeface appearance
C 47729,2 Drop the leftmost bit to prevent one character touching the next (space between letters)
C 47731,1 Load the bitmap data into two consecutive rows to provide double-height (2 chars) text...
C 47732,1 ...
C 47733,1 ...
C 47734,1 ...
C 47735,1 Advance to next byte of graphic data
C 47736,2 Repeat for next row of graphic data
C 47738,1 Restore BC
C 47739,1 Restore HL
C 47740,1 Return
c 47741 Convert Number in HL to String at IY
D 47741 Used by the routine at #R47499. Input:  HL  A number to convert to string IY  A location in memory to store a number converted to a string
C 47741,3 Convert the ten thousands to a character...
C 47744,3 ...
C 47747,3 Convert the thousands to a character...
C 47750,3 ...
C 47753,3 Convert the hundreds to a character...
C 47756,3 ...
C 47759,3 Convert the tens to a character...
C 47762,3 ...
C 47765,1 Load remainder (units) into L
C 47766,2 Add as offset to 48 (ASCII code for "0")
C 47768,3 Load ASCII character code into units position in string
C 47771,1 Return
c 47772 Convert a Digit of Numeric Data to its String Equivalent
D 47772 Used by the routine at #R47741. Input:  DE  Current power of ten HL  A number to convert to string IY  A location in memory to store a current digit converted to a string
C 47772,4 Set character in string to "/" (character immediately before "0")
C 47776,1 Reset Carry Flag
C 47777,3 Advance character at current string position to next numeric character up
C 47780,2 Subtract current power of ten from number to convert
C 47782,2 If number to convert has not dropped below 0 (i.e. we have not yet subtracted too many of the current power of ten) then loop back to #R47777
C 47784,1 We have subtracted one too many of the current power of ten, so add it back to make the remainder positive
C 47785,2 Advance to next character in the string as we are finished dealing with the current power of ten
C 47787,1 Return
c 47788 Read Keyboard and Load Pressed Key Character into A
D 47788 Used by the routines at #R47893 and #R47942. Output: A  Index of the key that was pressed
C 47788,1 Swap registers
C 47789,3 Load B and C with 254
C 47792,3 Point HL at list of return values
C 47795,2 Read from port 254 into A (i.e. read keyboard) [IN 65278 reads the half row CAPS SHIFT to V]
C 47797,2 Set bit 0 of A (i.e. clear pressing of CAPS SHIFT)
C 47799,2 Strip out all but the five bits representing key presses
C 47801,2 Invert all of the lowest five bits
C 47803,2 If this value is non-zero, then a key has been pressed, so skip ahead to #R47843
C 47805,3 Advance HL by five characters in list of return values string...
C 47808,1 ...
C 47809,2 Load E with 6 as there are 6 keyboard half-rows to test (loop counter)
C 47811,2 With each loop, change BC from 65278 -> 65022 -> 64510 -> 63486 -> 61438 -> 57342 -> 49150
C 47813,2 Read from port 254 into A (i.e. read keyboard)
C 47815,2 Strip out all but the five bits representing key presses
C 47817,2 Invert all of the lowest five bits
C 47819,2 If this value is non-zero, then a key has been pressed, so skip ahead to #R47843
C 47821,1 Advance HL by five characters in list of return values string...
C 47822,1 ...
C 47823,1 ...
C 47824,1 ...
C 47825,1 ...
C 47826,1 Decrease number of remaining keyboard half-rows to check
C 47827,2 If there are any more half rows to check then loop back to #R47811
C 47829,2 Set BC to 32766 for final keyboard half-row
C 47831,2 Read from port 254 into A (i.e. read keyboard)
C 47833,2 Set bit 1 of A (i.e. clear pressing of SYMBOL SHIFT)
C 47835,2 Strip out all but the five bits representing key presses
C 47837,2 Invert all of the lowest five bits
C 47839,2 If this value is non-zero, then a key has been pressed, so skip ahead to #R47843
C 47841,1 Swap registers
C 47842,1 Return [no key pressed]
C 47843,2 Shift bits right
C 47845,2 If carry flag is set, then this is the key that was pressed, so skip ahead to #R47850
C 47847,1 Advance HL to check next character
C 47848,2 Loop back to #R47843
C 47850,1 Load current character in list of return values string into A as this is the key that was pressed
C 47851,1 Swap registers
C 47852,1 Return [key pressed]
b 47853 Return Values from Keyboard Reading Routine
T 47853,40,40
c 47893 Check for Control Key Press and Store at 34219
D 47893 Used by the routine at #R34438.
C 47893,1 Clear previously stored control input...
C 47894,3 ...
C 47897,3 Read keyboard and load character of pressed key into A
C 47900,1 If no key was pressed...
C 47901,2 ...then read joystick input and return
C 47903,2 Set least significant bit of E as we are testing the first keyboard control first
C 47905,2 Set B to 7 as there are 7 keyboard controls to check (loop counter)
C 47907,3 Point HL at Table of Current Keyboard Controls
C 47910,1 If pressed key is the same as the current keyboard control...
C 47911,2 ...then skip ahead to #R47921
C 47913,1 Advance HL to next keyboard control
C 47914,2 Shift E left
C 47916,2 Loop back to #R47910 for next keyboard control
C 47918,1 Set A to zero
C 47919,2 Skip ahead to #R47926
C 47921,1 Load input bitmap into A (bit that is set represents the control that has been pressed)
C 47922,2 If bit 5 is set (i.e. Berk / Drutt key has been pressed)...
C 47924,2 ...then jump to #R47942 (Wait for current key to be released and another to be pressed, storing in A) and return
N 47926 This entry point is used by the routine at #R47930.
C 47926,3 Store control input at #R34219
C 47929,1 Return
c 47930 If Joystick Mode is On, then Read Joystick Input
D 47930 Used by the routine at #R47893.
C 47930,3 If Joystick Mode is Off...
C 47933,1 ...
C 47934,1 ...then return
C 47935,2 Read state of Kempston joystick into A
C 47937,2 If joystick input is non-zero...
C 47939,2 ...then jump to #R47926
C 47941,1 Return
c 47942 Wait for Current Key to Be Released and Another to Be Pressed, Storing in A
D 47942 Used by the routines at #R34438, #R47893 and #R47955.
C 47942,3 Read keyboard and load character of pressed key into A
C 47945,1 If a key is pressed...
C 47946,2 ...then loop back to #R47942
C 47948,3 Read keyboard and load character of pressed key into A
C 47951,1 If a key is not pressed...
C 47952,2 ...then loop back to #R47948
C 47954,1 Return
c 47955 Wait for Key-Press, Store Pressed Key Code in A and Play Main Menu Sound
D 47955 Used by the routines at #R46830 and #R46968. Output: A  code of pressed key
C 47955,3 Wait for current key to be released and another to be pressed, storing in A
C 47958,1 Store AF (A = last pressed key)
C 47959,2 Set sound 2 as pending if appropriate, then play and clear pending sound...
C 47961,3 ...
C 47964,1 Restore AF (A = last pressed key)
C 47965,1 Return
b 47966 Table of Script Routine Start Addresses
W 47966,2,2 (00) - Unused
W 47968,2,2 (01) - Load HL (Script Data Pointer) with New Address
W 47970,2,2 (02) - Move Entity at IX (and if Berk, Carried Entity) Left One Character
W 47972,2,2 (03) - Move Entity at IX (and if Berk, Carried Entity) Right One Character
W 47974,2,2 (04) - If Current Character and Target Entity are in the Same Room then Set Pending Sound
W 47976,2,2 (05) - Unused
W 47978,2,2 (06) - Set Berk's Facing Into Screen Flag, and Reset his Facing Left and Facing Right flags
W 47980,2,2 (07) - Reset Berk's Facing Into Screen, Facing Left and Facing Right Flags
W 47982,2,2 (08) - Set Must Process Current Script Data Flag for Entity at IX
W 47984,2,2 (09) - Reset Must Process Current Script Data Flag for Entity at IX
W 47986,2,2 (10) - Reset Entity's Walking Left and Walking Right flags
W 47988,2,2 (11) - Set Entity Walking Left Flag
W 47990,2,2 (12) - Set Entity Walking Right Flag
W 47992,2,2 (13) - Set Berk's Facing Left Flag, and Reset his Facing Into Screen and Facing Right Flags
W 47994,2,2 (14) - Set Berk's Facing Right Flag, and Reset his Facing Into Screen and Facing Left Flags
W 47996,2,2 (15) - Jump to New Address if Berk Is Carrying Something
W 47998,2,2 (16) - Have Berk Hold an Entity, and Position it Appropriately Between his Hands
W 48000,2,2 (17) - Have Berk Put Down an Entity in Front of Him, if Appropriate
W 48002,2,2 (18) - Have Berk Put Down an Entity Behind Him, if Appropriate
W 48004,2,2 (19) - Move Carried Entity to Berk's Left as he Faces Left
W 48006,2,2 (20) - Move Carried Entity to Berk's Right as he Faces Right
W 48008,2,2 (21) - Move Carried Entity in Front of Berk as he Faces Out of Screen
W 48010,2,2 (22) - Move Carried Entity Behind Berk as he Faces Into Screen
W 48012,2,2 (23) - Start Loop (1 / 3)
W 48014,2,2 (24) - End Loop (1 / 3)
W 48016,2,2 (25) - Start Loop (2 / 3)
W 48018,2,2 (26) - End Loop (2 / 3)
W 48020,2,2 (27) - Start Loop (3 / 3)
W 48022,2,2 (28) - End Loop (3 / 3)
W 48024,2,2 (29) - Make Berk Start Falling, and Drop his Carried Entity if Appropriate
W 48026,2,2 (30) - Check Berk's Fall Velocity, and React to Landing
W 48028,2,2 (31) - React to Berk's Landing
W 48030,2,2 (32) - Update Berk's Position and State (Flying) Depending Upon Control Input
W 48032,2,2 (33) - Advance Berk's Jump and Select Next Phase if Current Phase Complete
W 48034,2,2 (34) - Move Entity at IX (and if Berk, Carried Entity) Up One Character
W 48036,2,2 (35) - Move Entity at IX (and if Berk, Carried Entity) Down One Character
W 48038,2,2 (36) - Set Boni's Room (Level 1) to Zero
W 48040,2,2 (37) - Remove Flying Skeleton Creature from Level 1, and Terminate Script Processing
W 48042,2,2 (38) - Close the Trap Door
W 48044,2,2 (39) - Open the Trap Door
W 48046,2,2 (40) - Move Spider Down One Character, and if at Bottom, Advance it to Bounce / Climb Up Mode
W 48048,2,2 (41) - Move Spider Up One Character and, if Home, Reset its Timer and Make it Wait
W 48050,2,2 (42) - Decrease Remaining Time Until Spider Next Descends and if Zero, Start Descent
W 48052,2,2 (43) - Select Next Action for Drutt Depending Upon Control Input
W 48054,2,2 (44) - Move Entity Up One Character
W 48056,2,2 (45) - Move Entity Down One Character
W 48058,2,2 (46) - Move Drutt, or Entity he is Pushing Left One Character and Start Pushed Entity Falling if Appropriate
W 48060,2,2 (47) - Move Drutt, or Entity he is Pushing Right One Character and Start Pushed Entity Falling if Appropriate
W 48062,2,2 (48) - Return
W 48064,2,2 (49) - Return
W 48066,2,2 (50) - Advance Drutt's Jump and Select Next Phase if Current Phase Complete
W 48068,2,2 (51) - Swap Drutt's Current Depth Level if Possible
W 48070,2,2 (52) - Increase Worm's Age and Decrease Time Until Direction Change, or React to Drutt's Presence
W 48072,2,2 (53) - Move Worm Left if Possible, Otherwise Choose New Direction
W 48074,2,2 (54) - Move Worm Right if Possible, Otherwise Choose New Direction
W 48076,2,2 (55) - Choose New Direction and Start Crawling (Worm)
W 48078,2,2 (56) - Give Berk Power Corresponding to Entity Eaten
W 48080,2,2 (57) - Cycle Attributes (Full-Screen), Clear Display Buffers and Paint Red Areas Outside Current Room
W 48082,2,2 (58) - Have Berk Interact Appropriately with a Door in Front of Him
W 48084,2,2 (59) - Have Berk Interact Appropriately with a Door Behind Him
W 48086,2,2 (60) - Check Position of Apebeast and Turn If Appropriate
W 48088,2,2 (61) - Fire Bubo's Projectile
W 48090,2,2 (62) - Move Entity at IX into Room to the Left, if Appropriate
W 48092,2,2 (63) - Have Skeleton Advance or Retreat Based Upon Positions of Berk and Fake Boni
W 48094,2,2 (64) - Set Random (1 to 10) Number of Iterations in Following Loop Script Instruction
c 48096 Advance HL to Next Script Instruction and Execute
D 48096 Used by the routines at #R35735, #R36116, #R36390, #R36471, #R36542, #R36610, #R36947, #R36950, #R36984, #R36990, #R37085, #R37639, #R37753, #R38074, #R38165, #R38540, #R38554, #R41498, #R41617, #R48133, #R48142, #R48148, #R48158, #R48220, #R48246, #R48260, #R48267, #R48274, #R48307, #R48336, #R48365, #R48487, #R48567, #R48593, #R48641, #R48686, #R48692, #R48698, #R48704, #R48920, #R49010, #R51765, #R52029, #R52038, #R52047, #R52142, #R52243, #R52309, #R52860, #R52870, #R52889 and #R52967. Input:  IX  (Entry at #R48096 and #R48098) Address of complex state data for an entity Output: HL  Current position in script data
C 48096,1 Advance Script Data Pointer by two bytes...
C 48097,1 ...
N 48098 This entry point is used by the routines at #R35577, #R35735, #R36008, #R36036, #R36116, #R36367, #R36390, #R36471, #R36638, #R37085, #R37639, #R37718, #R37753, #R37778, #R38074, #R38554, #R41550, #R48285, #R48295, #R48307, #R48324, #R48336, #R48353, #R48365, #R48388, #R48934, #R48976, #R49010, #R51765, #R51779, #R51904, #R51924, #R51944, #R51954, #R51960, #R52053, #R52148, #R52243, #R52908, #R52914, #R52967 and #R53083.
C 48098,1 Advance Script Data Pointer by one byte
C 48099,1 Load byte at this location into A
C 48100,1 Move HL back one byte
C 48101,1 If byte loaded into A was zero (i.e. a script instruction)...
C 48102,2 ...then skip ahead to #R48117
N 48104 HL pointing to a graphic layout data address, rather than a script instruction
C 48104,3 Store address in HL at #R34277 as position in script currently running
C 48107,1 Load word at location HL into Graphic Layout Address in current entity's complex state data entry (IX)...
C 48108,3 ...
C 48111,1 ...
C 48112,1 ...
C 48113,3 ...
C 48116,1 Return
N 48117 HL pointing to a script instruction
C 48117,1 Load script "instruction" into A
C 48118,1 Store HL (pointer to current position in script data)
C 48119,3 Point HL at Table of Script Routine Start Addresses
C 48122,1 Load double index of script instruction into BC...
C 48123,1 ...
C 48124,2 ...
C 48126,1 ...and add as offset in HL to point to start address of required script routine
C 48127,1 Load address at this location into BC...
C 48128,1 ...
C 48129,1 ...
C 48130,1 Restore HL (pointer to current position in script data)
C 48131,1 Push address in BC onto stack...
C 48132,1 ...and RET to this address
c 48133 Script Routine (04) If Current Character and Target Entity are in the Same Room then Set Pending Sound Input:  HL Current position in script data IX  Address of complex state data for an entity
C 48133,1 Advance HL to parameter (sound index)...
C 48134,1 ...
C 48135,1 Load A with sound index
C 48136,3 If current character is in same room as target entity at IX then set pending sound to A
C 48139,3 Advance HL to next script instruction and execute
c 48142 Script Routine (62) Move Entity at IX into Room to the Left, if Appropriate
C 48142,3 Move entity at IX into room to the left, if appropriate
C 48145,3 Advance HL to next script instruction and execute
c 48148 Script Routine (16) Have Berk Hold an Entity, and Position it Appropriately Between his Hands
C 48148,3 Have Berk hold an entity, and position it appropriately between his hands
C 48151,3 Advance HL to next script instruction and execute
c 48154 Script Routine (17) Have Berk Put Down an Entity in Front of Him, if Appropriate Output: D  Depth offset for entity being put down
C 48154,2 Load D with depth offset of 0 (as Berk is putting down an entity in front of him)
C 48156,2 Have Berk put down an entity, if appropriate
c 48158 Script Routine (18) Have Berk Put Down an Entity Behind Him, if Appropriate Input:  D  (Entry at #R48160 only) Depth offset for entity being put down IX  Address of complex state data (current level) for Berk
C 48158,2 Load D with depth offset of -1 (as Berk is putting down an entity behind him)
N 48160 This entry point is used by the routine at #R48154.
C 48160,4 If Berk's Carrying Something Flag is reset...
C 48164,1 ...then return
N 48165 Berk is carrying something
C 48165,4 Reset Berk's Carrying Something Flag
C 48169,1 Set class of entity held by Berk to zero (i.e. nothing)...
C 48170,3 ...
C 48173,4 Load IY with address of complex state data for entity last held by Berk...
C 48177,4 ...and reset its Is Being Carried Flag
C 48181,3 Load E with height of entity minus one...
C 48184,3 ...
C 48187,1 ...
C 48188,3 Load A with y-coordinate minus one of top edge of coloured creature slot Berk is interacting with...
C 48191,1 ...and if this is not zero...
C 48192,2 ...then skip ahead to #R48198
N 48194 Value at #R34222 is zero (i.e. Berk not interacting with a coloured creature slot on Level 3)
C 48194,3 Load A with y-coordinate of Berk's bottom edge...
C 48197,1 ...plus depth offset...
N 48198 At this point, A holds either the y-coordinate of Berk's bottom edge plus depth offset, or the y-coordinate minus one of the top edge of (actually the y-coordinate of the bottom of the space within) a coloured creature slot on Level 3. This value in A is the y-coordinate that the carried entity's bottom edge will take on when that entity is put down.
C 48198,3 Set the y-coordinate of the bottom edge of the put-down entity to value in A
C 48201,1 Set the y-coordinate of the top edge of the put-down entity...
C 48202,3 ...to that of the bottom edge, minus the height as appropriate
C 48205,1 Set value at #R34222 to zero...
C 48206,3 ...as Berk is not (any longer) interacting with a coloured creature slot on Level 3
C 48209,3 Advance HL to next script instruction and execute
c 48212 Script Routine (10) Reset Walking Left and Walking Right Flags
D 48212 Used by the routine at #R36542. Output: E  Combination of flags to (re)set
C 48212,2 Reset Entity Walking Left and Entity Walking Right flags...
C 48214,2 ...and advance HL to next script instruction and execute
c 48216 Script Routine (12) Reset Walking Left Flag and Set Walking Right Flag Output: E  Combination of flags to (re)set
C 48216,2 Set Entity Walking Right Flag, reset Entity Walking Left Flag...
C 48218,2 ...and advance HL to next script instruction and execute
c 48220 Script Routine (11) Set Walking Left Flag and Reset Walking Right Flag Input:  E  (Entry at #R48222 only) Combination of flags to (re)set IX  Address of complex state data for an entity
C 48220,2 Prepare to set Entity Walking Left Flag and reset Entity Walking Right Flag
N 48222 This entry point is used by the routines at #R48212 and #R48216.
C 48222,3 (Re)set Walking Left and Walking Right flags as prepared in E...
C 48225,2 ...and reset Unused (11,2) and Unused (11,3) flags...
C 48227,1 ...
C 48228,3 ...
C 48231,3 Advance HL to next script instruction and execute
c 48234 Script Routine (07) Reset Berk's Facing Into Screen, Facing Left and Facing Right Flags Output: B  Combination of flags to (re)set
C 48234,2 Reset Berk's Facing Into Screen, Facing Left and Facing Right flags...
C 48236,2 ...and advance HL to next script instruction and execute
c 48238 Script Routine (06) Set Berk's Facing Into Screen Flag, and Reset his Facing Left and Facing Right Flags Output: B Combination of flags to (re)set
C 48238,2 Set Berk's Facing Into Screen Flag, and reset his Facing Left and Facing Right flags...
C 48240,2 ...and advance HL to next script instruction and execute
c 48242 Script Routine (13) Set Berk's Facing Left Flag, and Reset his Facing Into Screen and Facing Right Flags Output: B Combination of flags to (re)set
C 48242,2 Set Berk's Facing Left Flag, and reset his Facing Into Screen and Facing Right flags...
C 48244,2 ...and advance HL to next script instruction and execute
c 48246 Script Routine (14) Set Berk's Facing Right Flag, and Reset his Facing Into Screen and Facing Left Flags Input:  B (Entry at #R48248 only) Combination of flags to (re)set IX  Address of complex state data (current level) for Berk
C 48246,2 Prepare to set Berk's Facing Right Flag, and reset his Facing Into Screen and Facing Left flags
N 48248 This entry point is used by the routines at #R48234, #R48238 and #R48242.
C 48248,3 Load A with Berk's flags...
C 48251,2 ...clearing Facing Into Screen, Facing Left and Facing Right flags
C 48253,1 Combine with flags in B...
C 48254,3 ...and store
C 48257,3 Advance HL to next script instruction and execute
c 48260 Script Routine (09) Reset Must Process Current Script Data Flag for Entity at IX Input:  IX  Address of complex state data for an entity
C 48260,4 Reset Must Process Current Script Data Flag
C 48264,3 Advance HL to next script instruction and execute
c 48267 Script Routine (08) Set Must Process Current Script Data Flag for Entity at IX Input:  IX  Address of complex state data for an entity
C 48267,4 Set Must Process Current Script Data Flag
C 48271,3 Advance HL to next script instruction and execute
c 48274 Script Routine (15) Jump to New Address if Berk Is Carrying Something Input:  HL  Current position in script data IX  Address of complex state data for an entity
C 48274,1 Advance HL to parameter for current instruction...
C 48275,1 ...
C 48276,4 If Berk is carrying an entity...
C 48280,2 ...then read parameter address into HL and execute next script instruction at that address
C 48282,3 Advance HL to next script instruction and execute
c 48285 Script Routine (01) Load HL (Script Data Pointer) with New Address
D 48285 Functionality analogous to JP instruction. Input:  HL  Address in script data Output: HL  New address in script data
C 48285,1 Advance Script Data Pointer by two bytes...
C 48286,1 ...
N 48287 This entry point is used by the routine at #R48274.
C 48287,1 Read WORD at this location into HL...
C 48288,1 ...(i.e. update Script Data Pointer to this address)...
C 48289,1 ...
C 48290,1 ...
C 48291,1 ...
C 48292,3 ...and execute script instruction at this location
c 48295 Script Routine (23) Start Loop (1 / 3)
D 48295 Start a loop in script data. The first of the following two bytes is the repeat count and the second is disregarded. The current value of the repeat counter is stored at #R34285 and the address of the next instruction (i.e. the first instruction that is processed in each loop) is stored at #R34285. Output: HL  Address of next script instruction to execute
C 48295,3 Load A with script instruction parameter, and advance HL to next instruction
C 48298,3 Store repeat count at #R34285
C 48301,3 Store address to return to (i.e. first instruction in loop) at #R34285...
C 48304,3 ...and execute script instruction at this location
c 48307 Script Routine (24) End Loop (1 / 3) Output: HL  Address of next script instruction to execute
C 48307,3 Load A with current repeat count
C 48310,1 If repeat count is zero...
C 48311,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48314,1 Decrease repeat count...
C 48315,3 ...and store
C 48318,3 Load HL with address of first instruction in loop...
C 48321,3 ...and execute script instruction at this location
c 48324 Script Routine (25) Start Loop (2 / 3)
D 48324 Start a loop in script data. The first of the following two bytes is the repeat count and the second is disregarded. The current value of the repeat counter is stored at #R34288 and the address of the next instruction (i.e. the first instruction that is processed in each loop) is stored at #R34288. Output: HL  Address of next script instruction to execute
C 48324,3 Load A with script instruction parameter, and advance HL to next instruction
C 48327,3 Store repeat count at #R34288
C 48330,3 Store address to return to (i.e. first instruction in loop) at #R34288...
C 48333,3 ...and execute script instruction at this location
c 48336 Script Routine (26) End Loop (2 / 3) Output: HL  Address of next script instruction to execute
C 48336,3 Load A with current repeat count
C 48339,1 If repeat count is zero...
C 48340,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48343,1 Decrease repeat count...
C 48344,3 ...and store
C 48347,3 Load HL with address of first instruction in loop...
C 48350,3 ...and execute script instruction at this location
c 48353 Script Routine (27) Start Loop (3 / 3)
D 48353 Start a loop in script data. The first of the following two bytes is the repeat count and the second is disregarded. The current value of the repeat counter is stored at #R34291 and the address of the next instruction (i.e. the first instruction that is processed in each loop) is stored at #R34291. Output: HL  Address of next script instruction to execute
C 48353,3 Load A with script instruction parameter, and advance HL to next instruction
C 48356,3 Store repeat count at #R34291
C 48359,3 Store address to return to (i.e. first instruction in loop) at #R34291...
C 48362,3 ...and execute script instruction at this location
c 48365 Script Routine (28) End Loop (3 / 3) Output: HL  Address of next script instruction to execute
C 48365,3 Load A with current repeat count
C 48368,1 If repeat count is zero...
C 48369,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48372,1 Decrease repeat count...
C 48373,3 ...and store
C 48376,3 Load HL with address of first instruction in loop...
C 48379,3 ...and execute script instruction at this location
c 48382 Load A with Script Instruction Parameter then Advance HL to Next Instruction
D 48382 Used by the routines at #R48295, #R48324 and #R48353.
C 48382,1 Advance HL by two bytes, beyond end of current instruction...
C 48383,1 ...
C 48384,1 Load value here into A
C 48385,1 Advance HL by two more bytes to start of next instruction...
C 48386,1 ...
C 48387,1 Return
c 48388 Decrease Remaining Time for Current Power and if Zero, Exit Calling Routine and Run Script Data for Removal of Power
D 48388 Used by the routines at #R35689, #R36542 and #R48487.
C 48388,4 Load remaining power time into DE
C 48392,1 Increase E (number of game-cycles power has been in use in current block)...
C 48393,1 ...
C 48394,1 ...
C 48395,2 If 16 game-cycles of power use have not yet elapsed...
C 48397,2 ...then skip ahead to #R48402
C 48399,2 Reset number of game-cycles power has been in use to zero...
C 48401,1 ...and decrease remaining number of 16-game-cycles
C 48402,4 Store updated remaining power time...
C 48406,1 ...and return if this is not zero
C 48407,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 48408,3 Remove Berk's current power and reset sweet / mushroom / edible eyes / sausage to its original position
C 48411,3 Point HL at script data for Berk's power expiring...
C 48414,3 ...and execute
c 48417 Remove Berk's Current Power and Reset Sweet / Mushroom / Edible Eyes / Sausage to its Original Position
D 48417 Used by the routines at #R36390, #R36471, #R39151 and #R48388.
C 48417,3 If Berk has no current power...
C 48420,1 ...
C 48421,1 ...then return
C 48422,2 Store IX
C 48424,2 If Berk's current power is not 6 (flying, level 3, 2)...
C 48426,2 ...then skip ahead to #R48445
C 48428,2 Reset complex state data for Red Coloured Creature to that stored in Initial-State Table...
C 48430,3 ...
C 48433,2 Reset complex state data for Yellow Coloured Creature to that stored in Initial-State Table...
C 48435,3 ...
C 48438,2 Reset complex state data for White Coloured Creature to that stored in Initial-State Table...
C 48440,3 ...
C 48443,2 Skip ahead to #R48474
C 48445,2 If Berk's current power is not 10 (floating)...
C 48447,2 ...then skip ahead to #R48474
C 48449,4 Load IX with address of current level's complex state data for Berk
C 48453,4 Reset Berk's Moving Upwards Flag
C 48457,4 Reset Berk's Walking Right, Walking Left, Unused (11,2), Unused (11,3), Impassable Leftwards and Impassable Rightwards flags and set his Interaction (11,6) and Interaction (11,7) flags
C 48461,4 Reset bit 7 of Berk's class value (change from 159 to 31)
C 48465,3 Decrease Berk's bottom y-coordinate by two...
C 48468,3 ...
C 48471,3 Set Berk's Can Fall Flag and set his initial velocity factor to 2
C 48474,3 Reset complex state data for entity responsible for Berk's current power to that stored in Initial-State Table...
C 48477,3 ...
C 48480,1 Clear Berk's current power...
C 48481,3 ...
C 48484,2 Restore IX
C 48486,1 Return
c 48487 Script Routine (32) Update Berk's Position and State (Flying) Depending Upon Control Input
D 48487 See pokes Input:  IX  (Entry at #R48487 only) Address of complex state data (current level) for Berk IX  (Entry at #R48541 only) Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 48487,3 Decrease remaining time for current power and if zero, exit this routine and run script data for removal of power
C 48490,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 48493,2 ...and if collision was not with entity of class 130 (causes Berk and Drutt to bounce off or bang head)...
C 48495,2 ...then skip ahead to #R48507
C 48497,4 Reset entity's Is Flying Flag
C 48501,3 Load HL with script data address for Berk starting to fall downwards
C 48504,3 Advance HL to next script instruction and execute
C 48507,3 If y-coordinate of Berk's bottom edge is 121 or greater...
C 48510,2 ...
C 48512,2 ...then skip ahead to #R48527
C 48514,3 Load A with control input
C 48517,2 If right pressed...
C 48519,3 ...then move Berk right one character, and into new room if appropriate
C 48522,2 If left pressed...
C 48524,3 ...then move Berk left one character, and into new room if appropriate
C 48527,3 If y-coordinate of Berk's bottom edge is less than 98...
C 48530,2 ...
C 48532,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48535,3 Change Berk's room up one if appropriate
C 48538,3 Move carried entity in front of Berk as he faces out of screen
N 48541 This entry point is used by the routine at #R37718. It is also the start of the routine triggered by instruction 34 in script data.
C 48541,3 Decrease y-coordinates of entity's top and bottom edges by one character...
C 48544,3 ...
C 48547,4 If entity is Berk and his Carrying Something Flag is reset...
C 48551,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48554,4 Load IY with address of complex state data for entity held by Berk...
C 48558,3 ...and decrease its top and bottom y-coordinates by one character...
C 48561,3 ...
C 48564,3 Advance HL to next script instruction and execute
c 48567 Script Routine (35) Move Entity at IX (and if Berk, Carried Entity) Down One Character
D 48567 Used by the routine at #R37778. Input:  IX  Address of complex state data for an entity
C 48567,3 Increase y-coordinates of entity's top and bottom edges by one character...
C 48570,3 ...
C 48573,4 If entity is Berk and his Carrying Something Flag is reset...
C 48577,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48580,4 Load IY with address of complex state data for entity held by Berk...
C 48584,3 ...and increase its top and bottom y-coordinates by one character...
C 48587,3 ...
C 48590,3 Advance HL to next script instruction and execute
c 48593 Move Entity Right One Character, and Into New Room if Appropriate
D 48593 Used by the routine at #R48487. Input:  IX  (Entry at #R48593 only) Address of complex state data (current level) for Berk IX  (Entry at #R48615 only) Address of complex state data for an entity
C 48593,3 Load E with width of current room (chars) + 99...
C 48596,1 ...
C 48597,3 If x-coordinate of Berk's right side is less than x-coordinate of right of current room...
C 48600,1 ...
C 48601,2 ...then skip ahead to #R48615 (move Berk right by one character
C 48603,3 Load B with index of room to right of current character's current room...
C 48606,3 ...and if there is no room to the right, then jump to #R48096 (advance HL to next script instruction and execute)
C 48609,3 Move Berk into room to right of its current room and update position of carried entity if moving entity is Berk
C 48612,3 Move carried entity in front of Berk as he faces out of screen
N 48615 This entry point is used by the routine at #R37085. It is also the start of the routine triggered by instruction 03 in script data.
C 48615,3 Increase x-coordinates of entity's left and right edges by one character...
C 48618,3 ...
C 48621,4 If entity is Berk and his Carrying Something Flag is reset...
C 48625,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48628,4 Load IY with address of complex state data for entity held by Berk...
C 48632,3 ...and increase its left and right x-coordinates by one character...
C 48635,3 ...
C 48638,3 Advance HL to next script instruction and execute
c 48641 Move Entity Left One Character, and Into New Room if Appropriate
D 48641 Used by the routine at #R48487. Input:  IX  (Entry at #R48641 only) Address of complex state data (current level) for Berk IX  (Entry at #R48660 only) Address of complex state data for an entity
C 48641,2 If Berk's left-side x-coordinate is greater than 100 (x-coordinate of left side of room)...
C 48643,3 ...
C 48646,2 ...then skip ahead to #R48660 (move Berk left by one character)
C 48648,3 Load B with index of room to left of entity's current room...
C 48651,3 ...and if there is no room to the left, then jump to #R48096 (advance HL to next script instruction and execute)
C 48654,3 Move Berk into room to left of its current room and update position of carried entity if moving entity is Berk
C 48657,3 Move carried entity in front of Berk as he faces out of screen
N 48660 This entry point is used by the routine at #R37085. It is also the start of the routine triggered by instruction 02 in script data.
C 48660,3 Decrease x-coordinates of entity's left and right edges by one character...
C 48663,3 ...
C 48666,4 If entity is Berk and his Carrying Something Flag is reset...
C 48670,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 48673,4 Load IY with address of complex state data for entity held by Berk...
C 48677,3 ...and decrease its left and right x-coordinates by one character...
C 48680,3 ...
C 48683,3 Advance HL to next script instruction and execute
c 48686 Script Routine (22) Move Carried Entity Behind Berk as he Faces Into Screen
C 48686,3 Move carried entity behind Berk as he faces into screen
C 48689,3 Advance HL to next script instruction and execute
c 48692 Script Routine (21) Move Carried Entity in Front of Berk as he Faces Out of Screen
C 48692,3 Move carried entity in front of Berk as he faces out of screen
C 48695,3 Advance HL to next script instruction and execute
c 48698 Script Routine (19) Move Carried Entity to Berk's Left as he Faces Left
C 48698,3 Move carried entity to Berk's left as he faces left
C 48701,3 Advance HL to next script instruction and execute
c 48704 Script Routine (20) Move Carried Entity to Berk's Right as he Faces Right
C 48704,3 Move carried entity to Berk's right as he faces right
C 48707,3 Advance HL to next script instruction and execute
c 48710 Move Carried Entity in Front of Berk as he Faces Out of Screen
D 48710 Used by the routines at #R36008, #R48487, #R48593, #R48641 and #R48692.
C 48710,3 If Berk is carrying an entity then load A with its width minus one divided by two and D with Berk's depth, else return
C 48713,2 Move carried entity into horizontal position appropriate to its width (see notes in routine at #R48850) and return
c 48715 Move Carried Entity Behind Berk as he Faces into Screen
D 48715 Used by the routine at #R48686.
C 48715,3 If Berk is carrying an entity then load A with its width minus one divided by two and D with Berk's depth, else return
C 48718,1 Increase the depth (as carried entity has moved deeper into the screen)
N 48719 This entry point is used by the routine at #R48710.
C 48719,2 Move carried entity into horizontal position appropriate to its width (see notes in routine at #R48850)...
C 48721,1 ...
C 48722,3 ...
C 48725,2 Set carried entity's horizontal position and depth and return
c 48727 Move Carried Entity to Berk's Right as he Faces Right
D 48727 Used by the routines at #R48704 and #R54383.
C 48727,3 If Berk is carrying an entity then load A with its width minus one divided by two and D with Berk's depth, else return
C 48730,1 Increase the depth (as carried entity has moved deeper into the screen)
C 48731,2 Subtract width of carried entity minus one divided by two...
C 48733,3 ...from Berk's right-side x-coordinate and load into A
C 48736,2 Set carried entity's calculated horizontal position and depth and return
c 48738 Move Carried Entity to Berk's Left as he Faces Left
D 48738 Used by the routines at #R48698 and #R54419. Input:  IY  Address of complex state data for an entity carried by Berk
C 48738,3 If Berk is carrying an entity then load A with its width minus one divided by two and D with Berk's depth, else return
C 48741,1 Double A to give width minus one... (see bugs)
C 48742,1 ...and add one to get width of entity
C 48743,2 Subtract width of carried entity...
C 48745,3 ...from Berk's left-side x-coordinate and load into A
C 48748,1 Increase the depth (as carried entity has moved deeper into the screen)
N 48749 This entry point is used by the routines at #R48715 and #R48727.
C 48749,3 Set carried entity's horizontal position and depth...
C 48752,1 ...
C 48753,3 ...
C 48756,3 ...
C 48759,1 Return
c 48760 Load A, D and E with Positional Data for a Carried Entity or Return
D 48760 Used by the routines at #R48710, #R48715, #R48727 and #R48738. Input:  IX  Address of complex state data for an entity Output: A  Width of carried entity (characters) minus 1, divided by two D  Depth of entity at IX (Berk) E Width of carried entity (characters) minus 1 IY  Address of complex state data for entity held by Berk
C 48760,4 If entity IX is Berk and his Carrying Something Flag is set...
C 48764,2 ...then skip ahead to #R48768
C 48766,1 Pop top value (return address) off stack...
C 48767,1 ...and return to routine that called the calling routine
C 48768,4 Load IY with address of complex state data for entity held by Berk
C 48772,3 Set this entity's room to be same as Berk's...
C 48775,3 ...
C 48778,3 Move carried entity into vertical position appropriate to its height
C 48781,3 Load A and E with width of entity (characters) carried by Berk, minus 1...
C 48784,1 ...
C 48785,2 Divide A by two, removing remainder
C 48787,3 Load carried entity's depth into D
C 48790,1 Return
c 48791 Unused routine
D 48791 Assuming that IX and IY contain the addresses of two entities' complex state data, this routine will position the entity at IX such that it is horizontally centred with respect to, and B characters below the entity at IY. Input: IX  Address of complex state data for Entity 1 (assumed) IY  Address of complex state data for Entity 2 (assumed) B  Vertical offset (assumed)
C 48791,3 Load C with height of Entity 1 minus one...
C 48794,3 ...
C 48797,1 ...
C 48798,3 Load A with y-coordinate of bottom edge of Entity 2 plus B...
C 48801,1 ...
C 48802,3 Set y-coordinate of bottom edge of Entity 1 to A
C 48805,1 Update y-coordinate of top edge of Entity 1 accordingly...
C 48806,3 ...
C 48809,3 Load B with width of Entity 1 minus one...
C 48812,3 ...
C 48815,1 ...
C 48816,2 Load C with half of width of Entity 1 minus one...
C 48818,1 ...
C 48819,3 Load A with half of width of Entity 2 minus one...
C 48822,3 ...
C 48825,2 ...
C 48827,3 ...and add x-coordinate of left edge of Entity 2
N 48830 At this point, A holds the x-coordinate of the mid-point of Entity 2
C 48830,1 Subtract half of width of Entity 1 minus one...
C 48831,3 ...and set as x-coordinate of left edge of Entity 1
C 48834,1 Update x-coordinate of right edge of entity 2 accordingly...
C 48835,3 ...
C 48838,3 If Entity 1 is not Berk...
C 48841,2 ...
C 48843,1 ...then return
C 48844,1 Store HL
C 48845,3 Paint red areas outside accessible areas of current character's current room
C 48848,1 Restore HL
C 48849,1 Return
c 48850 Have Berk Hold an Entity, and Position it Appropriately Between his Hands
D 48850 The instruction blocks #R48872-#R48894 and #R48897-#R48916 move the entity that Berk is carrying into position (i.e. between Berk's hands), at a horizontal or vertical position appropriate to the height / width of that entity. These instructions result in the following x- or y-coordinates (left or top of carried entity relative to left or top of carrier, i.e. Berk): Input:  IX  Address of complex state data (current level) for Berk IY  (entry at #R48897) Address of complex state data for an entity carried by Berk Output: IY  Address of complex state data for entity held by Berk
C 48850,4 Load IY with address of complex state data for entity to be held by Berk...
C 48854,4 ...and store at #R34260 as address of state data for entity held by Berk
C 48858,4 Set the entity's Is Being Carried Flag
C 48862,4 Set Berk's Carrying Something Flag
C 48866,3 Set class of entity held by Berk to be this entity's class...
C 48869,3 ...
C 48872,3 Load A with the width of the entity, minus 1...
C 48875,3 ...
C 48878,3 ...and store at #R34272
C 48881,1 Load E with width of entity, minus 1
C 48882,2 Move entity defined at IY into horizontal position appropriate to its height (see notes above)...
C 48884,2 ...
C 48886,1 ...
C 48887,3 ...
C 48890,3 ...
C 48893,1 ...
C 48894,3 ...
N 48897 This entry point is used by the routine at #R48760.
C 48897,3 Move entity defined at IY into vertical position appropriate to its height (see notes above)...
C 48900,3 ...
C 48903,1 ...
C 48904,2 ...
C 48906,2 ...
C 48908,1 ...
C 48909,3 ...
C 48912,3 ...
C 48915,1 ...
C 48916,3 ...
C 48919,1 Return
c 48920 Script Routine (29) Make Berk Start Falling, and Drop his Carried Entity if Appropriate Input:  IX  Address of complex state data for an entity
C 48920,4 Set Berk's initial velocity factor to 2
C 48924,4 Set Berk's "Can Fall" flag
C 48928,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 48931,3 Advance HL to next script instruction and execute
c 48934 Script Routine (30) Check Berk's Fall Velocity, and React to Landing
D 48934 See trivia and pokes Input:  IX  Address of complex state data (current level) for Berk Output: HL  Address of next script instruction to execute
C 48934,4 If Berk's "Can Fall" Flag is reset (i.e. Berk has landed)...
C 48938,2 ...then skip ahead to #R48958
C 48940,4 If bit 3 of Berk's velocity factor is set (i.e. Berk has a velocity factor of 8)...
C 48944,2 ...then skip ahead to #R48952
C 48946,3 Load HL with address of script data for Berk starting to fall...
C 48949,3 ...and execute
C 48952,3 Point HL at script data for Berk falling rapidly (horizontal, arms outstretched)...
C 48955,3 ...and execute
C 48958,4 If bit 3 of Berk's velocity factor is set (i.e. Berk has a velocity factor of 8)...
C 48962,2 ...then skip ahead to #R48970
C 48964,3 Point HL at script data for Berk landing (after jump)
C 48967,3 ...and execute
C 48970,3 Point HL at script data for Berk lying on floor stunned and getting up
C 48973,3 ...and execute
c 48976 Script Routine (31) React to Berk's Landing
D 48976 See trivia Input:  IX  Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 48976,4 If bit 3 of Berk's velocity factor is set (i.e. Berk has a velocity factor of 8)...
C 48980,2 ...then skip ahead to #R48988
C 48982,3 Point HL at script data for Berk landing (after jump)
C 48985,3 ...and execute
C 48988,3 Point HL at script data for Berk lying on floor stunned and getting up
C 48991,3 ...and execute
b 48994 Table of Addresses of Berk's Jump Script Data
W 48994,2,2 (1) - Berk starting to jump straight up
W 48996,2,2 (2) - Unused
W 48998,2,2 (3) - Berk landing (after jump)
W 49000,2,2 (4) - Berk jumping left
W 49002,2,2 (5) - Berk jumping right
W 49004,2,2 (6) - Berk banging head
W 49006,2,2 (7) - Berk falling to the right
W 49008,2,2 (8) - Berk falling to the left
c 49010 Script Routine (33) Advance Berk's Jump and Select Next Phase if Current Phase Complete Output: HL  Address of next script instruction to execute
C 49010,3 Handle Berk's jump, and load A with Jump State Index as appropriate...
C 49013,1 ...
C 49014,1 If Jump State Index is zero...
C 49015,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 49018,1 Decrease Jump State Index
C 49019,3 Load DE with start address of Table of Addresses of Berk's Jump Script Data
C 49022,3 Advance DE by 2xA Bytes, load WORD at this location into HL...
C 49025,1 ...
C 49026,3 ...and execute script instruction at this location
b 49029 Graphic Layout Data Architecture (Level 4) Double Row of Green Bricks, 32 Characters Wide
B 49029,3,3 Change cursor's x- and y-coordinates by +16 and 0 characters respectively
B 49032,3,3 Process graphic layout data at #R49104 and upon returning, move cursor to base coordinates
N 49035 Double Row of Green Bricks (1 / 2), 16 Characters Wide
B 49035,2,2 Set current graphic set to 12
B 49037,2,2 Set current attribute to 4
B 49039,64,6,8,4,6,8,4,8,4,6*2,4
B 49103,1,1 End Marker
N 49104 Double Row of Green Bricks (2 / 2), 16 Characters Wide
B 49104,2,2 Set current graphic set to 12
B 49106,2,2 Set current attribute to 4
B 49108,64,6,4,8,6,4*2,8,6
B 49172,1,1 End Marker
N 49173 Yellow Brick Column
B 49173,2,2 Set current attribute to 6
B 49175,3,3 Jump to #R49180 (brick column)
N 49178 Green Brick Column
B 49178,2,2 Set current attribute to 4
B 49180,2,2 Set current graphic set to 12
B 49182,3,3 Change cursor's x- and y-coordinates by -7 and 0 characters respectively
B 49185,206,8,4,6,4,6,10,8,6,10,6,4,8,6,4,8,4,8,6*3,4,6,4,8,4,6,4,6,8,6,4,6,4,8
B 49391,1,1 End Marker
N 49392 Small Red and Blue Wall
B 49392,2,2 Set current graphic set to 12
B 49394,2,2 Set current attribute to 2
B 49396,2,2 Set Repeat Counter A to 4
B 49398,4,4
B 49402,1,1 Decrement Repeat Counter A and loop back to #R49398 if not zero
B 49403,2,2 Set current attribute to 1
B 49405,2,2 Set Repeat Counter A to 3
B 49407,4,4
B 49411,1,1 Decrement Repeat Counter A and loop back to #R49407 if not zero
B 49412,1,1 End Marker
N 49413 Fake Boni's Alcove
B 49413,2,2 Set current graphic set to 12
B 49415,2,2 Set current attribute to 4
B 49417,3,3 Change cursor's x- and y-coordinates by 0 and -4 characters respectively
B 49420,68,4
B 49488,1,1 End Marker
N 49489 Snake's Brickwork
B 49489,2,2 Set current graphic set to 12
B 49491,2,2 Set current attribute to 4
B 49493,10,4*2,2
B 49503,3,3 Change cursor's x- and y-coordinates by -4 and +3 characters respectively
B 49506,28,4
B 49534,1,1 End Marker
N 49535 Left Wall, Short
B 49535,2,2 Set current graphic set to 12
B 49537,2,2 Set current attribute to 4
B 49539,2,2 Set Repeat Counter A to 8
B 49541,10,4*2,2
B 49551,1,1 Decrement Repeat Counter A and loop back to #R49541 if not zero
B 49552,1,1 End Marker
N 49553 Right Wall, Long
B 49553,2,2 Set current graphic set to 12
B 49555,2,2 Set current attribute to 4
B 49557,2,2 Set Repeat Counter A to 11
B 49559,10,4*2,2
B 49569,1,1 Decrement Repeat Counter A and loop back to #R49559 if not zero
B 49570,1,1 End Marker
N 49571 Long Yellow Brick
B 49571,2,2 Set current graphic set to 12
B 49573,2,2 Set current attribute to 6
B 49575,8,4
B 49583,1,1 End Marker
N 49584 Vertical Red Bar (Outside Normal Game Area)
B 49584,2,2 Set current attribute to 18
B 49586,2,2 Set Repeat Counter A to 20
B 49588,10,4*2,2
B 49598,1,1 Decrement Repeat Counter A and loop back to #R49588 if not zero
B 49599,1,1 End Marker
N 49600 Drip Stage 1 - Green Drip, Forming
B 49600,2,2 Set current graphic set to 12
B 49602,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 49605,9,6,3
B 49614,1,1 End Marker
N 49615 Drip Stage 2 - Red Drip, Enlarging
B 49615,2,2 Set current graphic set to 12
B 49617,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 49620,9,6,3
B 49629,1,1 End Marker
N 49630 Drip Stage 3 - Magenta Drip, Enlarging
B 49630,2,2 Set current graphic set to 12
B 49632,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 49635,9,6,3
B 49644,1,1 End Marker
N 49645 Drip Stage 4 - Cyan Drip, Enlarging
B 49645,2,2 Set current graphic set to 12
B 49647,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 49650,12,6
B 49662,1,1 End Marker
N 49663 Drip Stage 5 - Yellow Drip, Full Size
B 49663,2,2 Set current graphic set to 12
B 49665,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 49668,12,6
B 49680,1,1 End Marker
N 49681 Drip Stage 6 - Yellow Drip, Extended
B 49681,2,2 Set current graphic set to 12
B 49683,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 49686,12,6
B 49698,1,1 End Marker
N 49699 Drip Stage 7 - Drip Disconnected and Falling / Cannon Projectile
B 49699,2,2 Set current graphic set to 12
B 49701,3,3
B 49704,1,1 End Marker
b 49705 Graphic Layout Data Architecture (Level 3) Ceiling (Full Width)
B 49705,3,3 Process graphic layout data at #R49716 and upon returning, move cursor to base coordinates
B 49708,3,3 Change cursor's x- and y-coordinates by +16 and 0 characters respectively
N 49711 Ceiling (Half Width)
B 49711,2,2 Set current attribute to 196
B 49713,3,3 Jump to #R49718
B 49716,2,2 Set current attribute to 68
B 49718,2,2 Set current graphic set to 8
B 49720,32,4
B 49752,1,1 End Marker
N 49753 Platform
B 49753,2,2 Set current graphic set to 10
B 49755,2,2 Set current attribute to 4
B 49757,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 49760,20,4
B 49780,1,1 End Marker
N 49781 Fifteen Glowing Tangleweeds, Animated
B 49781,2,2 Set current graphic set to 10
B 49783,3,3 Change cursor's x- and y-coordinates by -10 and 0 characters respectively and store as new base coordinates
B 49786,3,3 Jump to #R49841
N 49789 Six Glowing Tangleweeds, Animated
B 49789,2,2 Set current graphic set to 10
B 49791,3,3 Change cursor's x- and y-coordinates by -23 and 0 characters respectively and store as new base coordinates
B 49794,3,3 Jump to #R49901
N 49797 Twenty Two Glowing Tangleweeds, Animated
B 49797,2,2 Set current graphic set to 10
B 49799,3,3 Change cursor's x- and y-coordinates by 0 and -2 characters respectively
B 49802,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49805,3,3 Change cursor's x- and y-coordinates by +1 and -5 characters respectively
B 49808,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49811,3,3 Change cursor's x- and y-coordinates by +3 and -5 characters respectively
B 49814,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49817,3,3 Change cursor's x- and y-coordinates by +6 and -5 characters respectively
B 49820,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49823,3,3 Change cursor's x- and y-coordinates by +7 and -4 characters respectively
B 49826,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49829,3,3 Change cursor's x- and y-coordinates by +8 and -5 characters respectively
B 49832,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49835,3,3 Change cursor's x- and y-coordinates by +9 and -2 characters respectively
B 49838,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49841,3,3 Change cursor's x- and y-coordinates by +10 and 0 characters respectively
B 49844,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49847,3,3 Change cursor's x- and y-coordinates by +11 and -5 characters respectively
B 49850,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49853,3,3 Change cursor's x- and y-coordinates by +14 and -6 characters respectively
B 49856,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49859,3,3 Change cursor's x- and y-coordinates by +14 and -3 characters respectively
B 49862,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49865,3,3 Change cursor's x- and y-coordinates by +17 and -1 characters respectively
B 49868,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49871,3,3 Change cursor's x- and y-coordinates by +18 and -5 characters respectively
B 49874,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49877,3,3 Change cursor's x- and y-coordinates by +19 and -3 characters respectively
B 49880,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49883,3,3 Change cursor's x- and y-coordinates by +20 and -1 characters respectively
B 49886,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49889,3,3 Change cursor's x- and y-coordinates by +21 and -3 characters respectively
B 49892,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49895,3,3 Change cursor's x- and y-coordinates by +22 and -4 characters respectively
B 49898,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49901,3,3 Change cursor's x- and y-coordinates by +23 and -2 characters respectively
B 49904,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49907,3,3 Change cursor's x- and y-coordinates by +25 and -1 characters respectively
B 49910,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49913,3,3 Change cursor's x- and y-coordinates by +26 and -4 characters respectively
B 49916,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49919,3,3 Change cursor's x- and y-coordinates by +28 and -3 characters respectively
B 49922,3,3 Process graphic layout data at #R49971 and upon returning, move cursor to base coordinates
B 49925,3,3 Change cursor's x- and y-coordinates by +30 and 0 characters respectively
B 49928,3,3 Process graphic layout data at #R49934 and upon returning, move cursor to base coordinates
B 49931,3,3 Change cursor's x- and y-coordinates by +31 and -4 characters respectively
B 49934,2,2 Jump to one of the 3 addresses in the following list, chosen at random:
B 49936,2,2 #R49942 (Green Tangleweed 1)
B 49938,2,2 #R49947 (Yellow Tangleweed 1)
B 49940,2,2 #R49952 (Green Tangleweed 1) (see trivia)
N 49942 Green Tangleweed (1)
B 49942,2,2 Set current attribute to 4
B 49944,3,3 Jump to #R49954
N 49947 Yellow Tangleweed (1)
B 49947,2,2 Set current attribute to 6
B 49949,3,3 Jump to #R49954
N 49952 Green Tangleweed (1)
B 49952,2,2 Set current attribute to 4
B 49954,16,4
B 49970,1,1 End Marker
N 49971 Glowing Tangleweed (2)
B 49971,2,2 Jump to one of the 3 addresses in the following list, chosen at random:
B 49973,2,2 #R49979 (Green Tangleweed 2)
B 49975,2,2 #R49984 (Yellow Tangleweed 2)
B 49977,2,2 #R49989 (Green Tangleweed 2) (see trivia)
N 49979 Green Tangleweed (2)
B 49979,2,2 Set current attribute to 4
B 49981,3,3 Jump to #R49991
N 49984 Yellow Tangleweed (2)
B 49984,2,2 Set current attribute to 6
B 49986,3,3 Jump to #R49991
N 49989 Green Tangleweed (2)
B 49989,2,2 Set current attribute to 4
B 49991,16,4
B 50007,1,1 End Marker
b 50008 Graphic Layout Data Architecture (Level 1) Part 1 Three Spider's Webs
B 50008,2,2 Set Repeat Counter B to 3
B 50010,3,3 Process graphic layout data at #R50018 and upon returning, move cursor to base coordinates
B 50013,3,3 Change cursor's x- and y-coordinates by +8 and 0 characters respectively and store as new base coordinates
B 50016,1,1 Decrement Repeat Counter B and loop back to #R50010 if not zero
B 50017,1,1 End Marker
N 50018 Spider's Web
B 50018,2,2 Set current graphic set to 5
B 50020,2,2 Set current attribute to 7
B 50022,3,3 Change cursor's x- and y-coordinates by +2 and +2 characters respectively
B 50025,42,4*10,2
B 50067,1,1 End Marker
N 50068 Upper Section of Arch
B 50068,2,2 Set current attribute to 4
B 50070,2,2 Set current graphic set to 3
B 50072,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively
B 50075,40,4
B 50115,1,1 End Marker
N 50116 Four Arches
B 50116,2,2 Set Repeat Counter B to 4
B 50118,3,3 Process graphic layout data at #R50126 and upon returning, move cursor to base coordinates
B 50121,3,3 Change cursor's x- and y-coordinates by +8 and 0 characters respectively and store as new base coordinates
B 50124,1,1 Decrement Repeat Counter B and loop back to #R50118 if not zero
B 50125,1,1 End Marker
N 50126 Single Arch
B 50126,3,3 Process graphic layout data at #R50068 and upon returning, move cursor to base coordinates
B 50129,3,3 Change cursor's x- and y-coordinates by 0 and +4 characters respectively
B 50132,2,2 Set current attribute to 6
B 50134,12,4
B 50146,1,1 End Marker
N 50147 Boni's Platform
B 50147,2,2 Set current attribute to 6
B 50149,2,2 Set current graphic set to 3
B 50151,8,4
B 50159,1,1 End Marker
N 50160 Floor (Full Width, 32 chars)
B 50160,3,3 Process graphic layout data at #R50238 and upon returning, move cursor to base coordinates
B 50163,3,3 Change cursor's x- and y-coordinates by +12 and 0 characters respectively
B 50166,2,2 Set current attribute to 4
B 50168,8,4
B 50176,2,2 Set current attribute to 132
B 50178,32,4
B 50210,1,1 End Marker
N 50211 Right Half of Floor
B 50211,2,2 Set current attribute to 132
B 50213,24,4
B 50237,1,1 End Marker
N 50238 Left Part of Floor (Also Used in Level 4)
B 50238,2,2 Set current graphic set to 3
B 50240,2,2 Set current attribute to 4
B 50242,24,4
B 50266,1,1 End Marker
N 50267 Trap Door, Closed
B 50267,2,2 Set current graphic set to 3
B 50269,2,2 Set current attribute to 70
B 50271,4,4
B 50275,2,2 Set Repeat Counter A to 5
B 50277,2,2
B 50279,1,1 Decrement Repeat Counter A and loop back to #R50277 if not zero
B 50280,2,2
B 50282,1,1 End Marker
N 50283 Trap Door, Open
B 50283,2,2 Set current graphic set to 3
B 50285,3,3 Change cursor's x- and y-coordinates by +8 and 0 characters respectively
B 50288,2,2 Set Repeat Counter A to 7
B 50290,3,3
B 50293,1,1 Decrement Repeat Counter A and loop back to #R50290 if not zero
B 50294,3,3
B 50297,3,3 Change cursor's x- and y-coordinates by 0 and -6 characters respectively
B 50300,3,3
B 50303,1,1 End Marker
b 50304 Graphic Layout Data Boni Fake Boni (Level 4)
B 50304,2,2 Set current graphic set to 4
B 50306,2,2 Set current attribute to 6
B 50308,3,3 Jump to #R50321
N 50311 Boni Talking (Animated)
B 50311,2,2 Jump to one of the 2 addresses in the following list, chosen at random:
B 50313,2,2 #R50317 (Boni, mouth closed)
B 50315,2,2 #R50338 (Boni, mouth open)
N 50317 Boni (Mouth closed)
B 50317,2,2 Set current graphic set to 4
B 50319,2,2 Set current attribute to 7
B 50321,16,4
B 50337,1,1 End Marker
N 50338 Boni (Mouth open)
B 50338,2,2 Set current graphic set to 4
B 50340,2,2 Set current attribute to 7
B 50342,16,4
B 50358,1,1 End Marker
b 50359 Graphic Layout Data Architecture (Level 1) Part 2 Wall, vertical bricks, single row
B 50359,2,2 Set current graphic set to 3
B 50361,2,2 Set Repeat Counter A to 3
B 50363,24,6
B 50387,1,1 Decrement Repeat Counter A and loop back to #R50363 if not zero
B 50388,1,1 End Marker
N 50389 Background brickwork
B 50389,2,2 Set current graphic set to 3
B 50391,3,3 Change cursor's x- and y-coordinates by +12 and 0 characters respectively
B 50394,12,6
B 50406,3,3 Change cursor's x- and y-coordinates by +7 and 0 characters respectively
B 50409,18,6
B 50427,3,3 Change cursor's x- and y-coordinates by +8 and +1 characters respectively
B 50430,12,6
B 50442,3,3 Change cursor's x- and y-coordinates by +3 and +1 characters respectively
B 50445,24,6
B 50469,3,3 Change cursor's x- and y-coordinates by +5 and +1 characters respectively
B 50472,6,6
B 50478,1,1 End Marker
N 50479 "Home Sweet Home" Message Brick Border (End of Game)
B 50479,2,2 Set current graphic set to 3
B 50481,2,2 Set current attribute to 4
B 50483,76,4
B 50559,1,1 End Marker
b 50560 Graphic Layout Data Sweets (Level 1) Red Sweet
B 50560,2,2 Set current attribute to 66
B 50562,3,3 Jump to #R50572
N 50565 Green Sweet
B 50565,2,2 Set current attribute to 68
B 50567,3,3 Jump to #R50572
N 50570 Cyan Sweet (Unused)
B 50570,2,2 Set current attribute to 69
B 50572,2,2 Set current graphic set to 4
B 50574,4,4
B 50578,1,1 End Marker
b 50579 Graphic Layout Data Architecture (Level 1) Part 3 Vertical Wall (Horizontal Bricks)
B 50579,2,2 Set current graphic set to 3
B 50581,2,2 Set Repeat Counter A to 5
B 50583,24,6
B 50607,1,1 Decrement Repeat Counter A and loop back to #R50583 if not zero
B 50608,1,1 End Marker
N 50609 Row of five horizontal bricks
B 50609,2,2 Set current graphic set to 3
B 50611,30,6
B 50641,1,1 End Marker
N 50642 Platform (Pit)
B 50642,2,2 Set current graphic set to 3
B 50644,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 50647,2,2 Set Repeat Counter A to 2
B 50649,12,6
B 50661,1,1 Decrement Repeat Counter A and loop back to #R50649 if not zero
B 50662,1,1 End Marker
b 50663 Graphic Layout Data Doors Level 1
B 50663,2,2 Set current graphic set to 3
B 50665,3,3 Jump to #R50680
N 50668 Level 2
B 50668,2,2 Set current graphic set to 8
B 50670,3,3 Jump to #R50680
N 50673 Level 3
B 50673,2,2 Set current graphic set to 10
B 50675,3,3 Jump to #R50680
N 50678 Level 4
B 50678,2,2 Set current graphic set to 12
B 50680,3,3 Process graphic layout data at #R50701 and upon returning, move cursor to base coordinates
B 50683,2,2 Set current graphic set to 4
B 50685,3,3 Change cursor's x- and y-coordinates by +3 and -5 characters respectively
B 50688,12,6
B 50700,1,1 End Marker
N 50701 Door (Common)
B 50701,2,2 Set Repeat Counter A to 9
B 50703,3,3 Process graphic layout data at #R50711 and upon returning, move cursor to base coordinates
B 50706,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively and store as new base coordinates
B 50709,1,1 Decrement Repeat Counter A and loop back to #R50703 if not zero
B 50710,1,1 End Marker
N 50711 Door Patterns
B 50711,2,2 Set current attribute to 5
B 50713,3,3 Increase current state value n (initially 0), up to maximum of 4, resetting to zero if maximum reached and jump to n-th address in following list:
B 50716,2,2 #R50724
B 50718,2,2 #R50741
B 50720,2,2 #R50758
B 50722,2,2 #R50775
N 50724 Door Pattern Sequences (these are cycled through)
B 50724,17,17 Door row state 1
B 50741,17,17 Door row state 2
B 50758,17,17 Door row state 3
B 50775,17,17 Door row state 4
b 50792 Graphic Layout Data Miscellaneous Part 2 Key
B 50792,2,2 Set current graphic set to 4
B 50794,6,3
B 50800,1,1 End Marker
b 50801 Graphic Layout Data Architecture (Level 2)
D 50801 Note that the graphic layout data that describes the floor of the rooms on Level 2 is also used (with a different attribute value) for the floors on Level 3. Green Floor (Level 3)
B 50801,2,2 Set current attribute to 4
B 50803,3,3 Jump to #R50808
N 50806 Red Floor
B 50806,2,2 Set current attribute to 2
B 50808,2,2 Set current graphic set to 1
B 50810,64,4
B 50874,1,1 End Marker
N 50875 Ceiling 1
B 50875,3,3 Process graphic layout data at #R50923 and upon returning, move cursor to base coordinates
B 50878,3,3 Change cursor's x- and y-coordinates by +16 and 0 characters respectively
B 50881,3,3 Jump to #R51000 (Ceiling Section 2)
N 50884 Ceiling 2
B 50884,3,3 Process graphic layout data at #R51000 and upon returning, move cursor to base coordinates
B 50887,3,3 Change cursor's x- and y-coordinates by +16 and 0 characters respectively
B 50890,3,3 Jump to #R50923 (Ceiling Section 1)
N 50893 Right Wall
B 50893,3,3 Process graphic layout data at #R51069 and upon returning, move cursor to base coordinates
B 50896,3,3 Change cursor's x- and y-coordinates by 0 and +7 characters respectively
B 50899,3,3 Process graphic layout data at #R51100 and upon returning, move cursor to base coordinates
B 50902,3,3 Change cursor's x- and y-coordinates by 0 and +14 characters respectively
B 50905,3,3 Jump to #R51069 (Right Wall Section 1)
N 50908 Left Wall
B 50908,3,3 Process graphic layout data at #R51159 and upon returning, move cursor to base coordinates
B 50911,3,3 Change cursor's x- and y-coordinates by 0 and +7 characters respectively
B 50914,3,3 Process graphic layout data at #R51131 and upon returning, move cursor to base coordinates
B 50917,3,3 Change cursor's x- and y-coordinates by 0 and +14 characters respectively
B 50920,3,3 Jump to #R51159 (Left Wall Section 1)
N 50923 Ceiling Section 1
B 50923,2,2 Set current graphic set to 8
B 50925,48,6
B 50973,2,2 Set current attribute to 66
B 50975,24,4
B 50999,1,1 End Marker
N 51000 Ceiling Section 2
B 51000,2,2 Set current graphic set to 8
B 51002,42,6
B 51044,2,2 Set current attribute to 66
B 51046,22,4*5,2
B 51068,1,1 End Marker
N 51069 Right Wall Section 1
B 51069,2,2 Set current graphic set to 8
B 51071,3,3 Change cursor's x- and y-coordinates by +1 and 0 characters respectively
B 51074,2,2 Set Repeat Counter A to 8
B 51076,3,3
B 51079,1,1 Decrement Repeat Counter A and loop back to #R51076 if not zero
B 51080,3,3 Change cursor's x- and y-coordinates by -1 and -7 characters respectively
B 51083,2,2 Set current attribute to 66
B 51085,14,4*3,2
B 51099,1,1 End Marker
N 51100 Right Wall Section 2
B 51100,2,2 Set current graphic set to 8
B 51102,3,3 Change cursor's x- and y-coordinates by +1 and 0 characters respectively
B 51105,2,2 Set Repeat Counter A to 8
B 51107,3,3
B 51110,1,1 Decrement Repeat Counter A and loop back to #R51107 if not zero
B 51111,3,3 Change cursor's x- and y-coordinates by -1 and -7 characters respectively
B 51114,2,2 Set current attribute to 66
B 51116,14,4*3,2
B 51130,1,1 End Marker
N 51131 Left Wall Section 1
B 51131,2,2 Set current graphic set to 8
B 51133,2,2 Set Repeat Counter A to 8
B 51135,3,3
B 51138,1,1 Decrement Repeat Counter A and loop back to #R51135 if not zero
B 51139,3,3 Change cursor's x- and y-coordinates by +1 and -7 characters respectively
B 51142,2,2 Set current attribute to 194
B 51144,14,4*3,2
B 51158,1,1 End Marker
N 51159 Left Wall Section 1
B 51159,2,2 Set current graphic set to 8
B 51161,2,2 Set Repeat Counter A to 8
B 51163,3,3
B 51166,1,1 Decrement Repeat Counter A and loop back to #R51163 if not zero
B 51167,3,3 Change cursor's x- and y-coordinates by +1 and -7 characters respectively
B 51170,2,2 Set current attribute to 194
B 51172,14,4*3,2
B 51186,1,1 End Marker
N 51187 Sides of Ceiling Gap
B 51187,2,2 Set current graphic set to 8
B 51189,6,6
B 51195,6,6 See bugs
B 51201,1,1 End Marker
N 51202 Nine stalactites at various heights
B 51202,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively
B 51205,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51208,3,3 Change cursor's x- and y-coordinates by +7 and -1 characters respectively
B 51211,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51214,3,3 Change cursor's x- and y-coordinates by +11 and -2 characters respectively
B 51217,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51220,3,3 Change cursor's x- and y-coordinates by +17 and 0 characters respectively
B 51223,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51226,3,3 Change cursor's x- and y-coordinates by +20 and -1 characters respectively
B 51229,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51232,3,3 Change cursor's x- and y-coordinates by +26 and 0 characters respectively
B 51235,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51238,3,3 Change cursor's x- and y-coordinates by +29 and -2 characters respectively
B 51241,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51244,3,3 Change cursor's x- and y-coordinates by +33 and -1 characters respectively (see trivia)
B 51247,3,3 Process graphic layout data at #R51253 and upon returning, move cursor to base coordinates
B 51250,3,3 Change cursor's x- and y-coordinates by +35 and 0 characters respectively (see trivia)
B 51253,2,2 Set current graphic set to 8
B 51255,15,6*2,3
B 51270,1,1 End Marker
b 51271 Graphic Layout Data Mushroom
B 51271,2,2 Set current graphic set to 4
B 51273,12,6
B 51285,1,1 End Marker
b 51286 Graphic Layout Data Flying Skeleton Creature Boni being kidnapped, shouting for help, animated
B 51286,3,3 Process graphic layout data at #R51314 and upon returning, move cursor to base coordinates
B 51289,3,3 Process graphic layout data at #R50311 and upon returning, move cursor to base coordinates
B 51292,2,2 Set current graphic set to 6
B 51294,3,3 Change cursor's x- and y-coordinates by +2 and +2 characters respectively
B 51297,2,2 Set current attribute to 7
B 51299,8,4
B 51307,1,1 End Marker
N 51308 Boni being kidnapped, mouth closed
B 51308,3,3 Process graphic layout data at #R51314 and upon returning, move cursor to base coordinates
B 51311,3,3 Jump to #R50317 (Boni, Mouth Closed)
N 51314 Flying Skeleton Creature, animated
B 51314,2,2 Set current graphic set to 6
B 51316,3,3 Process graphic layout data at #R51345 and upon returning, move cursor to base coordinates
B 51319,3,3 Change cursor's x- and y-coordinates by 0 and +5 characters respectively
B 51322,6,6
B 51328,2,2 Jump to one of the 2 addresses in the following list, chosen at random:
B 51330,2,2 #R51334 (tail pointing left)
B 51332,2,2 #R51338 (tail pointing right)
N 51334 Tail pointing left
B 51334,3,3
B 51337,1,1 End Marker
N 51338 Tail pointing right
B 51338,3,3 Change cursor's x- and y-coordinates by +1 and 0 characters respectively
B 51341,3,3
B 51344,1,1 End Marker
N 51345 Upper Body & Wings, animated
B 51345,3,3 Increase current state value n (initially 0), up to maximum of 4, resetting to zero if maximum reached and jump to n-th address in following list:
B 51348,2,2 #R51356 (upper body and wings, frame 1)
B 51350,2,2 #R51398 (upper body and wings, frame 2)
B 51352,2,2 #R51441 (upper body and wings, frame 3)
B 51354,2,2 #R51398 (upper body and wings, frame 2)
N 51356 Upper Body and Wings, Frame 1
B 51356,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively and store as new base coordinates
B 51359,3,3 Process graphic layout data at #R51380 and upon returning, move cursor to base coordinates
B 51362,2,2 Set current attribute to 7
B 51364,3,3 Change cursor's x- and y-coordinates by -2 and +2 characters respectively
B 51367,12,4
B 51379,1,1 End Marker
N 51380 Right Wing and Upper-Right Body Section, Frame 1
B 51380,2,2 Set current attribute to 135
B 51382,3,3 Change cursor's x- and y-coordinates by +2 and +2 characters respectively
B 51385,12,4
B 51397,1,1 End Marker
N 51398 Upper Body and Wings, Frame 2
B 51398,3,3 Process graphic layout data at #R51421 and upon returning, move cursor to base coordinates
B 51401,2,2 Set current attribute to 7
B 51403,3,3 Change cursor's x- and y-coordinates by -2 and +3 characters respectively
B 51406,14,4*3,2
B 51420,1,1 End Marker
N 51421 Right Wing and Upper-Right Body Section, Frame 2
B 51421,2,2 Set current attribute to 135
B 51423,3,3 Change cursor's x- and y-coordinates by +2 and +3 characters respectively
B 51426,14,4*3,2
B 51440,1,1 End Marker
N 51441 Upper Body and Wings, Frame 3
B 51441,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 51444,3,3 Process graphic layout data at #R51465 and upon returning, move cursor to base coordinates
B 51447,2,2 Set current attribute to 7
B 51449,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 51452,12,4
B 51464,1,1 End Marker
N 51465 Right Wing and Upper-Right Body Section, Frame 3
B 51465,2,2 Set current attribute to 135
B 51467,3,3 Change cursor's x- and y-coordinates by +1 and +4 characters respectively
B 51470,12,4
B 51482,1,1 End Marker
b 51483 Graphic Layout Data Explosion (Bubo's Projectile, Fallen Drips and Firing Cannon, Level 4)
B 51483,2,2 Set sound 4 (explosion) as pending
B 51485,2,2 Set current graphic set to 9
B 51487,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 51490,27,6*4,3
B 51517,1,1 End Marker
b 51518 Current Position in Drutt's Script Data
W 51518,2,2
b 51520 Script Data Drutt Facing Out of Screen (Falling)
B 51520,2,2 #R52371 (Drutt, facing out of screen, fully animated)
B 51522,2,2 Select next action for Drutt depending upon control input
b 51524 Script Data Drutt Facing Out of Screen
B 51524,2,2 #R52379 (Drutt, facing out of screen, legs bent, eyes and mouth animated)
B 51526,2,2 #R52392 (Drutt, facing out of screen, legs partially extended, eyes and mouth animated)
B 51528,2,2 #R52392 (Drutt, facing out of screen, legs partially extended, eyes and mouth animated)
B 51530,2,2 #R52379 (Drutt, facing out of screen, legs bent, eyes and mouth animated)
B 51532,2,2 #R52392 (Drutt, facing out of screen, legs partially extended, eyes and mouth animated)
B 51534,2,2 #R52392 (Drutt, facing out of screen, legs partially extended, eyes and mouth animated)
B 51536,2,2 Select next action for Drutt depending upon control input
b 51538 Script Data Move Drutt and Any Pushed Entity Right By a Hop of Size Four
D 51538 If Drutt is not pushing anything, then he will hop right by four characters. If he is pushing something, then Drutt and the pushed entity will move right in alternate steps, traversing half the distance (two characters) on average.
B 51538,2,2 Set Drutt's Walking Right Flag
B 51540,2,2 #R52442 (Drutt, facing right, legs bent)
B 51542,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51544,2,2 #R52460 (Drutt, facing right, legs extended back, jumping)
B 51546,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51548,2,2 #R52476 (Drutt, facing right, legs bent, airborne)
B 51550,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51552,2,2 #R52489 (Drutt, facing right, legs bent, landing)
B 51554,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51556,4,4 If current character and target entity are in the same room then set pending sound to 9 (Drutt hopping)
B 51560,2,2 Select next action for Drutt depending upon control input
b 51562 Script Data Move Drutt and Any Pushed Entity Right By a Hop of Size Three
D 51562 If Drutt is not pushing anything, then he will hop right by three characters. If he is pushing something, then Drutt and the pushed entity will move right in alternate steps, traversing half the distance (one and a half characters) on average.
B 51562,2,2 Set Drutt's Walking Right Flag
B 51564,2,2 #R52442 (Drutt, facing right, legs bent)
B 51566,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51568,2,2 #R52460 (Drutt, facing right, legs extended back, jumping)
B 51570,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51572,2,2 #R52476 (Drutt, facing right, legs bent, airborne)
B 51574,2,2 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
B 51576,2,2 #R52489 (Drutt, facing right, legs bent, landing)
B 51578,4,4 If current character and target entity are in the same room then set pending sound to 9 (Drutt hopping)
B 51582,2,2 Select next action for Drutt depending upon control input
b 51584 Script Data Move Drutt and Any Pushed Entity Left By a Hop of Size Four
D 51584 If Drutt is not pushing anything, then he will hop left by four characters. If he is pushing something, then Drutt and the pushed entity will move left in alternate steps, traversing half the distance (two characters) on average.
B 51584,2,2 Set Drutt's Walking Left Flag
B 51586,2,2 #R52523 (Drutt, facing left, legs bent)
B 51588,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51590,2,2 #R52541 (Drutt, facing left, legs extended back, jumping)
B 51592,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51594,2,2 #R52557 (Drutt, facing left, legs bent, airborne)
B 51596,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51598,2,2 #R52570 (Drutt, facing left, legs bent, landing)
B 51600,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51602,4,4 If current character and target entity are in the same room then set pending sound to 9 (Drutt hopping)
B 51606,2,2 Select next action for Drutt depending upon control input
b 51608 Script Data Move Drutt and Any Pushed Entity Left By a Hop of Size Three
D 51608 If Drutt is not pushing anything, then he will hop left by three characters. If he is pushing something, then Drutt and the pushed entity will move left in alternate steps, traversing half the distance (one and a half characters) on average.
B 51608,2,2 Set Drutt's Walking Left Flag
B 51610,2,2 #R52523 (Drutt, facing left, legs bent)
B 51612,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51614,2,2 #R52541 (Drutt, facing left, legs extended back, jumping)
B 51616,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51618,2,2 #R52557 (Drutt, facing left, legs bent, airborne)
B 51620,2,2 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
B 51622,2,2 #R52570 (Drutt, facing left, legs bent, landing)
B 51624,4,4 If current character and target entity are in the same room then set pending sound to 9 (Drutt hopping)
B 51628,2,2 Select next action for Drutt depending upon control input
b 51630 Script Data Drutt Swapping Depth Levels
B 51630,2,2 Reset Drutt's Walking Left and Walking Right flags
B 51632,2,2 #R52379 (Drutt, facing out of screen, legs bent, eyes and mouth animated)
B 51634,2,2 Move Drutt up two characters...
B 51636,2,2 ...
B 51638,2,2 #R52417 (Drutt, facing out of screen, legs fully extended, eyes and mouth animated)
B 51640,2,2 Move Drutt up two characters...
B 51642,2,2 ...
B 51644,2,2 #R52417 (Drutt, facing out of screen, legs fully extended, eyes and mouth animated)
B 51646,2,2 Move Drutt up one character
B 51648,2,2 Swap Drutt's current depth level if possible
B 51650,2,2 #R52417 (Drutt, facing out of screen, legs fully extended, eyes and mouth animated)
B 51652,2,2 Move Drutt down one character
B 51654,2,2 #R52417 (Drutt, facing out of screen, legs fully extended, eyes and mouth animated)
B 51656,2,2 Move Drutt down two characters...
B 51658,2,2 ...
B 51660,2,2 #R52417 (Drutt, facing out of screen, legs fully extended, eyes and mouth animated)
B 51662,2,2 Move Drutt down two characters...
B 51664,2,2 ...
B 51666,2,2 #R52379 (Drutt, facing out of screen, legs bent, eyes and mouth animated)
B 51668,4,4 If current character and target entity are in the same room then set pending sound to 9 (Drutt hopping)
B 51672,2,2 Select next action for Drutt depending upon control input
b 51674 Script Data Drutt Jumping
D 51674 Drutt Starting to Jump Straight Up
B 51674,2,2 Reset Drutt's Walking Left and Walking Right flags
B 51676,2,2 #R52379 (Drutt, facing out of screen, legs bent, eyes and mouth animated)
B 51678,2,2 #R52371 (Drutt, facing out of screen, fully animated)
B 51680,2,2 Advance Drutt's jump and select next phase if current phase complete
B 51682,4,4 Jump to #R51678
N 51686 Drutt Jumping Left
B 51686,2,2 Set Drutt's Walking Left Flag
B 51688,2,2 #R52541 (Drutt, facing left, legs extended back, jumping)
B 51690,2,2 Advance Drutt's jump and select next phase if current phase complete
B 51692,4,4 Jump to #R51686
N 51696 Drutt Jumping Right
B 51696,2,2 Set Drutt's Walking Right Flag
B 51698,2,2 #R52460 (Drutt, facing right, legs extended back, jumping)
B 51700,2,2 Advance Drutt's jump and select next phase if current phase complete
B 51702,4,4 Jump to #R51696
b 51706 Script Data Drutt Eating a Worm
B 51706,2,2 #R52677 (Drutt, facing out of screen, legs partially extended, eating a worm, animated)
B 51708,2,2 #R52677 (Drutt, facing out of screen, legs partially extended, eating a worm, animated)
B 51710,2,2 #R52677 (Drutt, facing out of screen, legs partially extended, eating a worm, animated)
B 51712,2,2 #R52677 (Drutt, facing out of screen, legs partially extended, eating a worm, animated)
B 51714,2,2 #R52677 (Drutt, facing out of screen, legs partially extended, eating a worm, animated)
B 51716,2,2 #R52677 (Drutt, facing out of screen, legs partially extended, eating a worm, animated)
B 51718,4,4 If current character and target entity are in the same room then set pending sound to 8 (Drutt eating a worm)
B 51722,2,2 #R52648 (Drutt, facing out of screen, smiling, legs partially extended, eyes blinking)
B 51724,2,2 #R52648 (Drutt, facing out of screen, smiling, legs partially extended, eyes blinking)
B 51726,2,2 #R52648 (Drutt, facing out of screen, smiling, legs partially extended, eyes blinking)
B 51728,2,2 #R52648 (Drutt, facing out of screen, smiling, legs partially extended, eyes blinking)
B 51730,2,2 Select next action for Drutt depending upon control input
c 51732 Reset Drutt to Initial State
D 51732 Used by the routine at #R34751.
C 51732,3 Set current position in Drutt's script data...
C 51735,3 ...to #R51524 (Drutt facing out of screen)
C 51738,1 Return
c 51739 Update States of Drutt and Worm and Store Current Positions in Script Data
D 51739 Used by the routine at #R34438.
C 51739,3 Update state of Worm and store current position in script data
C 51742,4 Load IX with address of current level's complex state data for Drutt
C 51746,3 Store room size data for Drutt's current room
C 51749,3 Load current position in Drutt's script data from #R51518 into HL...
C 51752,3 ...and store at #R34277 as position in script currently running
C 51755,3 Update state of Drutt
C 51758,3 Store address (current position in script data) stored at #R34277...
C 51761,3 ...at #R51518 as current position in Drutt's script data
C 51764,1 Return
c 51765 Update State of Drutt
D 51765 If Drutt is being carried or falling, then he should be prevented from doing anything. This is accomplished by constantly resetting his current script data position to be #R51520. This does nothing except redraw Drutt. Input: IX  Address of complex state data (current level) for Drutt Output: HL  Address of next script instruction to execute
C 51765,3 If both Drutt's Being Carried and Can Fall flags are reset...
C 51768,2 ...
C 51770,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 51773,3 Point HL at script data for Drutt facing out of screen (falling)...
C 51776,3 ...and execute
c 51779 Script Routine (43) Select Next Action for Drutt Depending Upon Control Input Input:  IX  Address of complex state data (current level) for Drutt Output: HL  Address of next script instruction to execute
C 51779,3 Check Drutt for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 51782,2 ...and if collision was not with entity of class 129 (causes other entities to start falling)...
C 51784,2 ...then skip ahead to #R51792
C 51786,3 Set Drutt's Can Fall Flag and initial velocity factor to 2
C 51789,3 Move Drutt down one character, advance HL to next script instruction and execute
C 51792,4 Load IY with address of current level's complex state data for worm
C 51796,3 If Drutt Mode Flag is reset...
C 51799,2 ...
C 51801,2 ...then skip ahead to #R51841
N 51803 Drutt Mode Flag is set (i.e. Drutt Mode)
C 51803,4 Set Drutt's Under Player Control Flag
C 51807,3 Load A with control input
C 51810,2 If right has been pressed...
C 51812,2 ...then randomly select script data for rightward hop of size three or four, and execute
C 51814,2 If left has been pressed...
C 51816,2 ...then randomly select script data for leftward hop of size three or four, and execute
C 51818,2 If forward has been pressed...
C 51820,3 ...then point HL at script data for Drutt swapping depth levels and execute
C 51823,2 If back has been pressed...
C 51825,3 ...then jump to #R51944 (start Drutt jumping)
N 51828 At this point, no control has been pressed, so Drutt is effectively not under player control
C 51828,4 Reset Drutt's Under Player Control Flag
C 51832,3 If worm's depth is zero (i.e. not in play area)...
C 51835,1 ...
C 51836,2 ...then randomly select an action for Drutt and execute
C 51838,3 Move Drutt closer to the worm and eat it if close enough
N 51841 Drutt Mode Flag is reset (i.e. Berk Mode)
C 51841,4 Reset Drutt's Under Player Control Flag
C 51845,3 If worm's depth is not zero (i.e. is in play area)...
C 51848,1 ...
C 51849,3 ...then move Drutt closer to the worm and eat it if close enough
C 51852,4 Load IY with address of current level's complex state data for Berk
C 51856,3 If Drutt is in the same room as Berk...
C 51859,3 ...
C 51862,2 ...then randomly select an action for Drutt and execute
N 51864 The following code will make Drutt move closer to the target (a worm, or Berk if in Berk Mode) if the target's room is directly to the left or right of Drutt's room (i.e. no vertical separation). Otherwise, Drutt will perform a random action. This entry point is used by the routine at #R51960.
C 51864,3 Load A with value indicating which direction room A lies relative to Drutt's current room
C 51867,2 If target room is to the right...
C 51869,2 ...then randomly select script data for rightward hop of size three or four, and execute
C 51871,2 If target room is to the left...
C 51873,2 ...then randomly select script data for leftward hop of size three or four, and execute
N 51875 This entry point is used by the routine at #R51960.
C 51875,2 Load A with a random number, 0-6...
C 51877,3 ...
C 51880,3 Point DE at Table of Addresses of Script Data for Drutt's Actions...
C 51883,3 ...and load DE with entry of index A in this table
C 51886,1 Switch DE and HL (now contains address of randomly selected script data)
C 51887,3 Execute script data at address in HL
b 51890 Table of Addresses of Script Data for Drutt's Actions
D 51890 When Drutt is neither under player control nor seeking a target (a worm or Berk) then his actions are determined by randomly selecting a script data address from this table and executing. There is:
W 51890,2,2 Move Drutt and any pushed entity right by a hop of size four
W 51892,2,2 Move Drutt and any pushed entity left by a hop of size three
W 51894,2,2 Drutt swapping depth levels
W 51896,2,2 Drutt facing out of screen
W 51898,2,2 Drutt facing out of screen
W 51900,2,2 Drutt facing out of screen
W 51902,2,2 Drutt facing out of screen
c 51904 Randomly Select Script Data for Rightward Hop of Size Three or Four, and Execute
D 51904 Used by the routine at #R51779.
C 51904,2 Load A with a random number, 0-1...
C 51906,3 ...
C 51909,1 ...and if this is zero (1 in 2 chance)...
C 51910,2 ...then skip ahead to #R51918
C 51912,3 Point HL at script data for moving Drutt and any pushed entity right by a hop of size four...
C 51915,3 ...and execute
C 51918,3 Point HL at script data for moving Drutt and any pushed entity right by a hop of size three...
C 51921,3 ...and execute
c 51924 Randomly Select Script Data for Leftward Hop of Size Three or Four, and Execute
D 51924 Used by the routine at #R51779.
C 51924,2 Load A with a random number, 0-1...
C 51926,3 ...
C 51929,1 ...and if this is zero (1 in 2 chance)...
C 51930,2 ...then skip ahead to #R51938
C 51932,3 Point HL at script data for moving Drutt and any pushed entity left by a hop of size four...
C 51935,3 ...and execute
C 51938,3 Point HL at script data for moving Drutt and any pushed entity left by a hop of size three...
C 51941,3 ...and execute
c 51944 Start Drutt Jumping
D 51944 Used by the routine at #R51779.
C 51944,4 Set Drutt's Is Jumping Flag and set initial Jump Velocity to 2
C 51948,3 Point HL at script data for Drutt starting to jump straight up...
C 51951,3 ...and execute
c 51954 Point HL at Script Data for Drutt Swapping Depth Levels and Execute
D 51954 Used by the routine at #R51779.
C 51954,3 Point HL at script data for Drutt swapping depth levels...
C 51957,3 ...and execute
c 51960 Move Drutt Closer to the Worm and Eat it if Close Enough
D 51960 Used by the routine at #R51779. Input:  IX  Address of complex state data (current level) for Drutt IY  Address of complex state data (current level) for Worm
C 51960,3 If Drutt and worm are not in the same room...
C 51963,3 ...
C 51966,3 ...then move Drutt closer to worm if appropriate, otherwise make Drutt perform random action
C 51969,3 If Drutt's left edge...
C 51972,3 ...is to the left of the worm's...
C 51975,2 ...then skip ahead to #R52017
C 51977,3 If worm's right edge...
C 51980,3 ...is to the left of Drutt's left edge...
C 51983,2 ...then skip ahead to #R52023
C 51985,3 If y-coordinate of Drutt's top edge...
C 51988,2 ...is less than 120...
C 51990,3 ...then randomly select an action for Drutt and execute
C 51993,3 If worm's depth is the same as Drutt's...
C 51996,3 ...
C 51999,2 ...then skip ahead to #R52007
N 52001 Drutt and worm in same room, at different depth and same x-coordinate
C 52001,3 Point HL at script data for Drutt swapping depth levels...
C 52004,3 ...and execute
N 52007 Drutt and worm in same room, at same depth and same x-coordinate
C 52007,4 Set worm's depth to zero (i.e. remove from play)
C 52011,3 Point HL at script data for Drutt eating a worm...
C 52014,3 ...and execute
N 52017 Drutt's left edge to left of worm's
C 52017,3 Point HL at script data for moving Drutt and any pushed entity right by a hop of size four...
C 52020,3 ...and execute
N 52023 Worm's right edge to left of Drutt's left edge
C 52023,3 Point HL at script data for moving Drutt and any pushed entity left by a hop of size four...
C 52026,3 ...and execute
c 52029 Script Routine (44) Move Entity Up One Character
D 52029 Used by the routine at #R48026. Input:  IX  Address of complex state data for an entity
C 52029,3 Move entity up one character...
C 52032,3 ...
C 52035,3 Advance HL to next script instruction and execute
c 52038 Script Routine (45) Move Entity Down One Character
D 52038 Used by the routine at #R51779. Input:  IX  Address of complex state data for an entity
C 52038,3 Move entity down one character...
C 52041,3 ...
C 52044,3 Advance HL to next script instruction and execute
c 52047 Script Routine (46) Move Drutt, or Entity he is Pushing Left One Character and Start Pushed Entity Falling if Appropriate
C 52047,3 Move Drutt, or entity he is pushing left one character and start pushed entity falling if appropriate
C 52050,3 Advance HL to next script instruction and execute
c 52053 Move Drutt, or Entity he is Pushing Left One Character and Start Pushed Entity Falling if Appropriate
D 52053 Drutt will only push other entities when he is under player control. If he is not, then he will just pass through pushable entities. Input:  IX  Address of complex state data (current level) for Drutt
C 52053,3 Check entity at IX for collision with another impassable / pushable entity immediately to the left...
C 52056,2 ...and if a collision has not occurred, then skip ahead to #R52087
N 52058 At this point, a collision has occurred, so IY points to the complex state data entry of the entity with which Drutt has collided
C 52058,2 If collision was with an entity of class of 22 or greater (can't be picked up)...
C 52060,2 ...then skip ahead to #R52076
C 52062,4 If Drutt's Under Player Control Flag is reset...
C 52066,2 ...then skip ahead to #R52087 (move Drutt left without pushing anything)
C 52068,2 Store IX (address of current level's complex state data for Drutt)
C 52070,3 Advance position of entity pushed left by Drutt
C 52073,2 Restore IX (address of current level's complex state data for Drutt)
C 52075,1 Return
N 52076 Collision with entity of class 22 or greater
C 52076,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 52078,2 ...then skip ahead to #R52087
N 52080 At this point, the entity to Drutt's left is neither passable nor pushable.
C 52080,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 52081,3 Point HL at script data for Drutt swapping depth levels...
C 52084,3 ...and execute
N 52087 No collision, not under player control or collision with entity of class 129
C 52087,3 Move Drutt into room to the left, if appropriate...
C 52090,1 ...and if Drutt can't enter new room then return
C 52091,3 Move Drutt left one character...
C 52094,3 ...
C 52097,1 Return
c 52098 Advance Position of Entity Pushed Left by Drutt
D 52098 Used by the routine at #R52053. Input:  IY  Address of complex state data for entity pushed by Drutt
C 52098,2 Transfer address of complex state data for pushed entity from IY...
C 52100,2 ...to IX
C 52102,3 Check pushed entity for collision with another impassable / pushable entity immediately to the left...
C 52105,2 ...and if a collision has not occurred, then skip ahead to #R52112
C 52107,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 52109,2 ...then skip ahead to #R52134
C 52111,1 Return (as Drutt can't push two entities)
N 52112 No knock-on collision
C 52112,3 If x-coordinate of left edge of pushed entity is at least 103...
C 52115,2 ...i.e. not yet at left edge of room...
C 52117,2 ...then skip ahead to #R52127
C 52119,3 Load B with index of room to left of current character's current room...
C 52122,1 ...and if there is no room to the left then return
C 52123,3 Move pushed entity into room to the left, if appropriate...
C 52126,1 ...and if pushed entity can't enter new room then return
C 52127,3 Move pushed entity left one character...
C 52130,3 ...
C 52133,1 Return
C 52134,3 Set Can Fall Flag and set initial velocity factor of 2 for pushed entity
C 52137,3 Move pushed entity left two characters...
C 52140,2 ...and return
c 52142 Script Routine (47) Move Drutt, or Entity he is Pushing Right One Character and Start Pushed Entity Falling if Appropriate
C 52142,3 Move Drutt, or entity he is pushing right one character and start pushed entity falling if appropriate
C 52145,3 Advance HL to next script instruction and execute
c 52148 Move Drutt, or Entity he is Pushing Right One Character and Start Pushed Entity Falling if Appropriate
D 52148 Drutt will only push other entities when he is under player control. If he is not, then he will just pass through pushable entities. Input:  IX  Address of complex state data (current level) for Drutt
C 52148,3 Check Drutt for collision with another impassable / pushable entity immediately to the right...
C 52151,2 ...and if a collision has not occurred, then skip ahead to #R52182
N 52153 At this point, a collision has occurred, so IY points to the complex state data entry of the entity with which Drutt has collided
C 52153,2 If collision was with an entity of class 22 or greater (can't be picked up)...
C 52155,2 ...then skip ahead to #R52171
C 52157,4 If Drutt's Under Player Control Flag is reset...
C 52161,2 ...then skip ahead to #R52182 (move Drutt right without pushing anything)
C 52163,2 Store IX (address of current level's complex state data for Drutt)
C 52165,3 Advance position of entity pushed right by Drutt
C 52168,2 Restore IX (address of current level's complex state data for Drutt)
C 52170,1 Return
N 52171 Collision with entity of class 22 or greater
C 52171,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 52173,2 ...then skip ahead to #R52182
N 52175 At this point, the entity to Drutt's right is neither passable nor pushable.
C 52175,1 Remove top value from stack (i.e. return address to routine that called this routine)
C 52176,3 Point HL at script data for Drutt swapping depth levels...
C 52179,3 ...and execute
N 52182 No collision, not under player control or collision with entity of class 129
C 52182,3 Move Drutt into room to the right, if appropriate...
C 52185,1 ...and if Drutt can't enter new room then return
C 52186,3 Move Drutt right one character...
C 52189,3 ...
C 52192,1 Return
c 52193 Advance Position of Entity Pushed Right by Drutt
D 52193 Used by the routine at #R52148. Input:  IY  Address of complex state data for entity pushed by Drutt
C 52193,2 Transfer address of complex state data for pushed entity from IY...
C 52195,2 ...to IX
C 52197,3 Check pushed entity for collision with another impassable / pushable entity immediately to the right...
C 52200,2 ...and if a collision has not occurred, then skip ahead to #R52207
C 52202,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 52204,2 ...then skip ahead to #R52235
C 52206,1 Return (as Drutt can't push two entities)
N 52207 No knock-on collision
C 52207,3 Load E with width of current room (chars) + 99...
C 52210,2 ...minus 2...
C 52212,1 ...
C 52213,3 ...and if x-coordinate of right edge of pushed entity is less than this...
C 52216,1 ...i.e. not yet at right edge of room...
C 52217,2 ...then skip ahead to #R52227
C 52219,3 Load B with index of room to right of current character's current room...
C 52222,1 ...and if there is no room to the right then return
C 52223,3 Move pushed entity into room to the right, if appropriate...
C 52226,1 ...and if pushed entity can't enter new room then return
C 52227,3 Move pushed entity right one character...
C 52230,3 ...
C 52233,1 Load A with zero (see trivia)
C 52234,1 Return
C 52235,3 Set Can Fall Flag and set initial velocity factor of 2 for pushed entity
C 52238,3 Move pushed entity right two characters...
C 52241,2 ...and return
c 52243 Script Routine (50) Advance Drutt's Jump and Select Next Phase if Current Phase Complete
D 52243 The CALL at #R52243 will be RETurned from if Drutt's Is Jumping Flag is reset. Otherwise, E will be loaded with Drutt's jump state index (see #R55041). Output: HL  Address of next script instruction to execute
C 52243,3 Handle Drutt's jump, and load A with Jump State Index as appropriate
C 52246,1 If jump state index is zero...
C 52247,1 ...
C 52248,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 52251,2 If jump state index is 1...
C 52253,2 ...then skip ahead to #R52259
C 52255,2 If jump state index is not 2...
C 52257,2 ...then skip ahead to #R52265
N 52259 Jump state index is 1 (landed on floor / platform and Back (control input) bit set) or 2 (unused)
C 52259,3 Point HL at script data for Drutt starting to jump straight up...
C 52262,3 ...and execute
N 52265 Jump state index is not 2
C 52265,2 If jump state index is not 3...
C 52267,2 ...then skip ahead to #R52275
N 52269 Jump state index is 3 (Drutt's jump velocity less than 4, and back not pressed, i.e. terminate jumping)
C 52269,3 Point HL at script data for Drutt facing out of screen...
C 52272,3 ...and execute
N 52275 Jump state index is not 3
C 52275,2 If jump state index is not 4...
C 52277,2 ...then skip ahead to #R52285
N 52279 Jump state index is 4 (bounced off an obstruction to the right or Left (control input) Bit set)
C 52279,3 Point HL at script data for Drutt Jumping Left...
C 52282,3 ...and execute
N 52285 Jump state index is not 4
C 52285,2 If jump state index is not 5...
C 52287,2 ...then skip ahead to #R52295
N 52289 Jump state index is 5 (bounced off an obstruction to the left or Right (control input) Bit set)
C 52289,3 Point HL at script data for Drutt Jumping Right...
C 52292,3 ...and execute
N 52295 Jump state index is not 5
C 52295,2 If jump state index is not 6...
C 52297,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
N 52300 Jump state index is 6 (Drutt has banged his head on something above him)
C 52300,3 Set Drutt's Can Fall Flag and set initial velocity factor of 2
C 52303,3 Point HL at script data for Drutt facing out of screen (falling)...
C 52306,3 ...and execute
c 52309 Script Routine (51) Swap Drutt's Current Depth Level if Possible
C 52309,3 Swap Drutt's current depth level if possible
C 52312,3 Advance HL to next script instruction and execute
c 52315 Swap Drutt's Current Depth Level if Possible
D 52315 Used by the routine at #R52309. Input:  IX  Address of complex state data (current level) for Drutt
C 52315,3 If Drutt's depth is not 1...
C 52318,2 ...
C 52320,2 ...then skip ahead to #R52351
N 52322 Drutt's depth is 1
C 52322,3 If Drutt's current depth is the same as number of available depth levels in current room...
C 52325,3 ...i.e. room has depth of 1...
C 52328,1 ...then return (as there is no other depth level for Drutt to move to)
N 52329 The following collision check is usually only satisfied by Berk. This prevents Drutt from jumping back a depth level while in front of (at same depth level as) Berk.
C 52329,3 Check Drutt for collision with another entity (only those defined before, and in reverse order) at same depth level whose Interaction (11,7) Flag is set...
C 52332,1 ...and if a collision occurred, then return
N 52333 The following collision check prevents Drutt from jumping back when there is an obstruction (e.g. the brick columns in the pit room, level 1) behind him.
C 52333,3 Check Drutt for collision with another entity (in reverse order) at next depth level into screen whose Interaction (11,7) Flag is set...
C 52336,2 ...and if no collision occurred, then skip ahead to #R52341
C 52338,2 If collision was with an entity of class of 22 or greater (can't be picked up)...
C 52340,1 ...then return
C 52341,3 Increase Drutt's depth (i.e. move backward away from screen)
C 52344,3 Decrease Drutt's top and bottom y-coordinates...
C 52347,3 ...
C 52350,1 Return
N 52351 Drutt's depth is not 1
C 52351,3 If Drutt's current depth is 1... (see trivia)
C 52354,2 ...
C 52356,1 ...then return
N 52357 The following collision check prevents Drutt from jumping forward a depth level while in behind an obstruction (e.g. Berk).
C 52357,3 Check Drutt for collision with another entity at next depth level out of screen whose Interaction (11,6) Flag is set...
C 52360,1 ...and if a collision occurred, then return
C 52361,3 Decrease Drutt's depth (i.e. move forward towards screen)
C 52364,3 Increase Drutt's top and bottom y-coordinates...
C 52367,3 ...
C 52370,1 Return
b 52371 Graphic Layout Data Drutt Facing out of screen, fully animated, jumping / falling / held by Berk
B 52371,2,2 Jump to one of the 3 addresses in the following list, chosen at random:
B 52373,2,2 #R52379 (facing out of screen, legs bent, eyes and mouth animated)
B 52375,2,2 #R52395 (facing out of screen, legs partially extended, eyes and mouth animated)
B 52377,2,2 #R52417 (facing out of screen, legs fully extended, eyes and mouth animated)
N 52379 Facing out of screen, legs bent, eyes and mouth animated
B 52379,3,3 Process graphic layout data at #R52604 and upon returning, move cursor to base coordinates
B 52382,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 52385,6,6
B 52391,1,1 End Marker
N 52392 Facing out of screen, legs partially extended, eyes and mouth animated
B 52392,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 52395,3,3 Process graphic layout data at #R52604 and upon returning, move cursor to base coordinates
B 52398,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 52401,15,6*2,3
B 52416,1,1 End Marker
N 52417 Facing out of screen, legs fully extended, eyes and mouth animated
B 52417,3,3 Process graphic layout data at #R52604 and upon returning, move cursor to base coordinates
B 52420,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 52423,18,6
B 52441,1,1 End Marker
N 52442 Facing right, legs bent
B 52442,2,2 Set current graphic set to 7
B 52444,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 52447,12,6
B 52459,1,1 End Marker
N 52460 Facing right, legs extended back (jumping)
B 52460,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 52463,3,3 Process graphic layout data at #R52505 and upon returning, move cursor to base coordinates
B 52466,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 52469,6,6
B 52475,1,1 End Marker
N 52476 Facing right, legs bent, airborne
B 52476,3,3 Change cursor's x- and y-coordinates by 0 and -2 characters respectively and store as new base coordinates
B 52479,3,3 Process graphic layout data at #R52505 and upon returning, move cursor to base coordinates
B 52482,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 52485,3,3
B 52488,1,1 End Marker
N 52489 Facing right, legs bent, landing
B 52489,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 52492,3,3 Process graphic layout data at #R52505 and upon returning, move cursor to base coordinates
B 52495,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 52498,6,6
B 52504,1,1 End Marker
N 52505 Body, facing right
B 52505,2,2 Set current graphic set to 7
B 52507,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 52510,12,6
B 52522,1,1 End Marker
N 52523 Facing left, legs bent
B 52523,2,2 Set current graphic set to 7
B 52525,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 52528,12,6
B 52540,1,1 End Marker
N 52541 Facing left, legs extended back (jumping)
B 52541,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 52544,3,3 Process graphic layout data at #R52586 and upon returning, move cursor to base coordinates
B 52547,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 52550,6,6
B 52556,1,1 End Marker
N 52557 Facing left, legs bent, airborne
B 52557,3,3 Change cursor's x- and y-coordinates by 0 and -2 characters respectively and store as new base coordinates
B 52560,3,3 Process graphic layout data at #R52586 and upon returning, move cursor to base coordinates
B 52563,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 52566,3,3
B 52569,1,1 End Marker
N 52570 Facing left, legs bent, landing
B 52570,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively and store as new base coordinates
B 52573,3,3 Process graphic layout data at #R52586 and upon returning, move cursor to base coordinates
B 52576,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 52579,6,6
B 52585,1,1 End Marker
N 52586 Body, facing left
B 52586,2,2 Set current graphic set to 7
B 52588,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 52591,12,6
B 52603,1,1 End Marker
N 52604 Mouth and eyes (animated)
B 52604,2,2 Set current graphic set to 7
B 52606,5,5 Modify following instruction to display graphic of random index, chosen from 39, 40 and 41
B 52611,3,3
B 52614,3,3 Change cursor's x- and y-coordinates by -2 and -1 characters respectively
B 52617,3,3 If state n (initially 1) has remaining time of zero then reset its time to maximum and randomly select a new state, n, from the 2 in the following list. Jump to the address specified in the current state and decrease its remaining time:
B 52620,4,4 #R52628 (eyes, open, facing out of screen, for 4 ticks)
B 52624,4,4 #R52638 (eyes, closed, facing out of screen, for 2 ticks)
N 52628 Eyes (Open, Facing Out of Screen)
B 52628,9,6,3
B 52637,1,1 End Marker
N 52638 Eyes (Closed, Facing Out of Screen)
B 52638,9,6,3
B 52647,1,1 End Marker
N 52648 Facing out of screen, smiling, legs partially extended, eyes blinking
B 52648,2,2 Set current graphic set to 7
B 52650,3,3 Change cursor's x- and y-coordinates by -1 and -1 characters respectively
B 52653,15,6*2,3
B 52668,3,3 Change cursor's x- and y-coordinates by -3 and -2 characters respectively
B 52671,2,2 Jump to one of the 2 addresses in the following list, chosen at random:
B 52673,2,2 #R52628 (eyes, open, facing out of screen)
B 52675,2,2 #R52638 (eyes, closed, facing out of screen)
N 52677 Facing out of screen, legs partially extended, eating a worm (animated)
B 52677,3,3 Process graphic layout data at #R52648 and upon returning, move cursor to base coordinates
B 52680,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 52683,4,4 Modify following instruction to display graphic of random index, chosen from 43 and 44
B 52687,3,3
B 52690,3,3 Increase current state value n (initially 1), up to maximum of 6, resetting to zero if maximum reached and jump to n-th address in following list:
B 52693,2,2 #R52705 (worm facing left, curved up into Drutt's mouth)
B 52695,2,2 #R52715 (worm facing right, curved up into Drutt's mouth)
B 52697,2,2 #R52705 (worm facing left, curved up into Drutt's mouth)
B 52699,2,2 #R52715 (worm facing right, curved up into Drutt's mouth)
B 52701,2,2 #R52722 (worm's eyes facing out of screen)
B 52703,2,2 #R52722 (worm's eyes facing out of screen)
N 52705 Worm facing left, curved up into Drutt's mouth
B 52705,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 52708,6,6
B 52714,1,1 End Marker
N 52715 Worm facing right, curved up into Drutt's mouth
B 52715,6,6
B 52721,1,1 End Marker
N 52722 Worm's eyes facing out of screen
B 52722,3,3
B 52725,1,1 End Marker
b 52726 Current Position in Worm's Script Data
W 52726,2,2
b 52728 Worm's Age
B 52728,1,1
b 52729 Script Data Worm
D 52729 Unused
B 52729,2,2 #R53340 (Worm looking ahead, blinking)
B 52731,4,4 Jump to #R52729
N 52735 Worm Rising from Floor then Choosing Next Direction
B 52735,2,2 #R53340 (Worm looking ahead, blinking)
B 52737,2,2 #R53340 (Worm looking ahead, blinking)
B 52739,2,2 Move worm up one character
B 52741,2,2 #R53340 (Worm looking ahead, blinking)
B 52743,2,2 #R53340 (Worm looking ahead, blinking)
B 52745,2,2 Move worm up one character
N 52747 Choosing Next Direction
B 52747,2,2 #R53358 (Worm looking left, normal)
B 52749,2,2 #R53358 (Worm looking left, normal)
B 52751,2,2 #R53358 (Worm looking left, normal)
B 52753,2,2 #R53340 (Worm looking ahead, blinking)
B 52755,2,2 #R53373 (Worm looking right, normal)
B 52757,2,2 #R53373 (Worm looking right, normal)
B 52759,2,2 #R53373 (Worm looking right, normal)
B 52761,2,2 #R53340 (Worm looking ahead, blinking)
B 52763,2,2 Choose new worm direction and start crawling
N 52765 Crawling Left
B 52765,2,2 Move worm left if possible, otherwise jump to #R52747 (choose new direction)
B 52767,2,2 #R53462 (Worm crawling left, frame 1 / 2)
B 52769,2,2 #R53462 (Worm crawling left, frame 1 / 2)
B 52771,2,2 #R53477 (Worm crawling left, frame 2 / 2)
B 52773,2,2 #R53477 (Worm crawling left, frame 2 / 2)
B 52775,2,2 Increase worm's age and decrease Time Until Direction Change or start fleeing if Drutt is nearby
B 52777,4,4 Jump to #R52765
N 52781 Crawling Right
B 52781,2,2 Move worm right if possible, otherwise jump to #R52747 (choose new direction)
B 52783,2,2 #R53525 (Worm crawling right, frame 1 / 2)
B 52785,2,2 #R53525 (Worm crawling right, frame 1 / 2)
B 52787,2,2 #R53501 (Worm crawling right, frame 2 / 2)
B 52789,2,2 #R53501 (Worm crawling right, frame 2 / 2)
B 52791,2,2 Increase worm's age and decrease Time Until Direction Change or start fleeing if Drutt is nearby
B 52793,4,4 Jump to #R52781
N 52797 Fleeing Left
B 52797,2,2 #R53403 (Worm looking right, alarmed)
B 52799,2,2 #R53403 (Worm looking right, alarmed)
B 52801,2,2 #R53403 (Worm looking right, alarmed)
B 52803,2,2 #R53403 (Worm looking right, alarmed)
B 52805,2,2 Move worm left if possible, otherwise jump to #R52747 (choose new direction)
B 52807,2,2 #R53454 (Worm crawling left, alarmed, frame 1 / 2)
B 52809,2,2 #R53489 (Worm crawling left, alarmed, frame 2 / 2)
B 52811,2,2 Increase worm's age and decrease Time Until Direction Change or continue fleeing if Drutt is nearby
B 52813,4,4 Jump to #R52805
N 52817 Fleeing Right
B 52817,2,2 #R53388 (Worm looking left, alarmed)
B 52819,2,2 #R53388 (Worm looking left, alarmed)
B 52821,2,2 #R53388 (Worm looking left, alarmed)
B 52823,2,2 #R53388 (Worm looking left, alarmed)
B 52825,2,2 Move worm right if possible, otherwise jump to #R52747 (choose new direction)
B 52827,2,2 #R53543 (Worm crawling right, alarmed, frame 1 / 2)
B 52829,2,2 #R53513 (Worm crawling right, alarmed, frame 2 / 2)
B 52831,2,2 Increase worm's age and decrease Time Until Direction Change or continue fleeing if Drutt is nearby
B 52833,4,4 Jump to #R52825
c 52837 Update State of Worm and Store Current Position in Script Data
D 52837 Used by the routine at #R51739.
C 52837,4 Load IX with address of current level's complex state data for worm
C 52841,3 Store room size data for worm's current room
C 52844,3 Load current position in worm's script data from #R52726 into HL...
C 52847,3 ...and store at #R34277 as position in script currently running
C 52850,3 Update state of worm
C 52853,3 Store address (current position in script data) stored at #R34277...
C 52856,3 ...at #R52726 as current position in worm's script data
C 52859,1 Return
c 52860 Update State of Worm
D 52860 Used by the routine at #R52837. Input:  IX  Address of complex state data (current level) for Worm
C 52860,3 If worm's depth is zero (i.e. not currently active)...
C 52863,1 ...
C 52864,3 ...then attempt to spawn a new worm...
C 52867,3 ...otherwise advance HL to next script instruction and execute
c 52870 Script Routine (53) Move Worm Left if Possible, Otherwise Choose New Direction Input:  IX  Address of complex state data for an entity
C 52870,3 Check worm for collision with another impassable / pushable entity immediately to the left...
C 52873,2 ...and if a collision occurred, then have worm choose new direction
C 52875,3 Move worm into room to the left, if appropriate...
C 52878,2 ...and if worm can't enter new room then have worm choose new direction
C 52880,3 Move worm left one character...
C 52883,3 ...
C 52886,3 Advance HL to next script instruction and execute
c 52889 Script Routine (54) Move Worm Right if Possible, Otherwise Choose New Direction Input:  IX  Address of complex state data for an entity
C 52889,3 Check worm for collision with another impassable / pushable entity immediately to the right...
C 52892,2 ...and if a collision occurred, then have worm choose new direction
C 52894,3 Move worm into room to the right, if appropriate...
C 52897,2 ...and if worm can't enter new room then have worm choose new direction
C 52899,3 Move worm right one character...
C 52902,3 ...
C 52905,3 Advance HL to next script instruction and execute
c 52908 Execute Script Data for Worm Choosing Next Direction
D 52908 Used by the routines at #R52870 and #R52889.
C 52908,3 Point HL at script data for worm, choosing next direction...
C 52911,3 ...and execute
c 52914 Script Routine (55) Choose New Direction and Start Crawling (Worm) Input:  IX  Address of complex state data for an entity
C 52914,3 Increase Worm's Age and, if it has expired, set its depth to zero and return
C 52917,2 Load A with a random number, 5-24...
C 52919,3 ...
C 52922,2 ...
C 52924,3 ...and set worm's Time Until Direction Change to this value
C 52927,2 Load A with a random number, 0-1...
C 52929,3 ...
C 52932,1 ...and if zero (1 in 2 chance)...
C 52933,2 ...then skip ahead to #R52951
N 52935 Have worm move left
C 52935,3 Check worm for collision with another impassable / pushable entity immediately to the left...
C 52938,2 ...and if a collision occurred, then start worm crawling right
C 52940,3 Move worm into room to the left, if appropriate...
C 52943,2 ...and if worm can't enter new room then start worm crawling right
C 52945,3 Point HL at script data for worm, crawling left...
C 52948,3 ...and execute
N 52951 Have worm move right
C 52951,3 Check worm for collision with another impassable / pushable entity immediately to the right...
C 52954,2 ...and if a collision occurred, then start worm crawling left
C 52956,3 Move worm into room to the right, if appropriate...
C 52959,2 ...and if worm can't enter new room then start worm crawling left
C 52961,3 Point HL at script data for worm, crawling right...
C 52964,3 ...and execute
c 52967 Script Routine (52) Increase Worm's Age and Decrease Time Until Direction Change, or React to Drutt's Presence
D 52967 When both Drutt and the worm are in the same room, and the worm is alerted to Drutt's presence, then the worm will take on its alarmed appearance and start fleeing in the direction away from Drutt. As long as Drutt remains in the same room as the worm, and within the "alerting" distance, the worm will continue fleeing in the same direction, and its Time Until Direction Change will be frozen. Input:  IX  Address of complex state data for an entity Output: HL  Address of next script instruction to execute
C 52967,3 Increase Worm's Age and, if it has expired, set its depth to zero and return
C 52970,4 Load IY with address of current level's complex state data for Drutt
C 52974,3 If Drutt and the worm are in the same room...
C 52977,3 ...
C 52980,2 ...then skip ahead to #R53004
N 52982 Drutt and worm in different rooms, so countdown to next direction change resumes as worm out of danger
C 52982,4 Reset In Danger Flag
C 52986,3 If worm's Time Until Direction Change is zero...
C 52989,1 ...
C 52990,2 ...then skip ahead to #R52998 (have worm choose new direction)
C 52992,3 Decrease worm's Time Until Direction Change
C 52995,3 Advance HL to next script instruction and execute
C 52998,3 Point HL at script data for worm, choosing next direction...
C 53001,3 ...and execute
N 53004 Drutt and worm in same room, so worm potentially in danger
C 53004,3 Load A with x-coordinate of worm's left edge...
C 53007,1 ...plus one...
C 53008,3 ...minus x-coordinate of Drutt's left edge
C 53011,2 If negative then skip ahead to #R53034
C 53013,2 If worm's left edge is 9 characters or more to the right of Drutt's...
C 53015,2 ...then jump back to #R52982
C 53017,4 If In Danger Flag is set...
C 53021,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 53024,4 Set In Danger Flag
C 53028,3 Point HL at script data for worm, fleeing right...
C 53031,3 ...and execute
N 53034 Drutt's left edge more than one character to the right of worm's left edge
C 53034,2 If worm's left edge is 11 characters or more to the left of Drutt's...
C 53036,2 ...
C 53038,2 ...then jump back to #R52982
C 53040,4 If In Danger Flag is set...
C 53044,3 ...then jump to #R48096 (advance HL to next script instruction and execute)
C 53047,4 Set In Danger Flag
C 53051,3 Point HL at script data for worm, fleeing left...
C 53054,3 ...and execute
c 53057 Increase Worm's Age and Set its Depth to Zero if it has Expired
D 53057 Used by the routines at #R52914 and #R52967. Input:  IX  Address of complex state data (current level) for Worm
C 53057,3 Increase current Worm Age value...
C 53060,1 ...
C 53061,3 ...
C 53064,2 If Worm Age is less than 128...
C 53066,1 ...then return
C 53067,3 If current character's room...
C 53070,3 ...is the same as the worm's...
C 53073,1 ...then return
C 53074,1 Set the worm's depth to zero...
C 53075,3 ...
C 53078,3 Reset Worm Age to zero
C 53081,1 Remove top value from stack (return address in calling routine)
C 53082,1 Return (to routine that called the calling routine)
c 53083 Attempt to Spawn a New Worm
D 53083 Used by the routine at #R52860. Input:  IX  Address of complex state data (current level) for Worm
C 53083,2 Load A with a random number, 0-59...
C 53085,3 ...
C 53088,1 If random number is not zero (59 in 60 chance)...
C 53089,1 ...then return
C 53090,3 Set worm's current room to same as current character's...
C 53093,3 ...
C 53096,3 Store room size data for worm's current room
C 53099,3 Load A with width of current room (chars) + 99...
C 53102,2 ...and subtract 100 to get x-coordinate (zero-based) of right side of the room
C 53104,3 Load A with a random x-coordinate within current room
C 53107,2 Add 100 to restore coordinate system
C 53109,3 Set this as the worm's left x-coordinate
C 53112,2 Add two to this...
C 53114,3 ...and set as the worm's right x-coordinate
C 53117,2 Load A with a random number, 1-2...
C 53119,3 ...
C 53122,1 ...
C 53123,3 ...and assign the worm this depth
C 53126,2 Load A with 124 (y-coordinate of character row below bottom of room)
C 53128,3 Subtract worm's depth value to get its bottom y-coordinate...
C 53131,3 ...and assign
C 53134,1 Store AF (A = bottom y-coordinate of worm)
C 53135,4 Set worm's top y-coordinate to 121
C 53139,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set
C 53142,1 Store AF (B = bottom y-coordinate of worm)
C 53143,2 If a collision occurred then set worm's depth to zero and return
C 53145,3 Set worm's top y-coordinate to same as its bottom y-coordinate
C 53148,3 Point HL at script data for worm rising from floor...
C 53151,3 ...and execute
C 53154,4 Set worm's depth to zero
C 53158,1 Return
b 53159 Pathfinding Data Table
D 53159 When built, this table has a header and a main data block. The header is three bytes long and contains the values:
B 53159,12,3,2*4,1
b 53171 Unused
B 53171,23,8*2,7
c 53194 Load A with Value Indicating Which Direction Room A Lies Relative to Room in State Data at IX
D 53194 Direction index value in A denotes which direction (left or right), e.g. Drutt, has to travel to reach the target room: Input:  A  Target room index (e.g. Berk's room or worm's room) IX  Address of complex state data (current level) for Drutt Output: A  Direction index
C 53194,1 Store HL
C 53195,2 Store IX
C 53197,1 Load E with target room index
C 53198,3 Load D with Drutt's current room...
C 53201,1 ...
C 53202,3 Set first two bytes of header to 255 (Start Marker)...
C 53205,2 ...
C 53207,1 ...
C 53208,2 ...
C 53210,1 Set third byte of header to index of Drutt's current room...
C 53211,1 ...
C 53212,1 Advance HL to first byte of first entry
C 53213,3 Load B with index of room to left of Drutt's current room...
C 53216,2 ...and if there is no such room then skip ahead to #R53228
C 53218,1 If room to left of Drutt's current room is the target room...
C 53219,1 ...then set Zero Flag
C 53220,2 Load A with 2 ("go left")
C 53222,3 If Zero Flag is set (room to left is target room) then restore registers and return
C 53225,3 Add entry to Pathfinding Data Table stating room to left of Drutt is to the left
C 53228,3 Load B with index of room to right of Drutt's room...
C 53231,2 ...and if there is no such room then skip ahead to #R53243
C 53233,1 If room to right of Drutt's current room is the target room...
C 53234,1 ...then set Zero Flag
C 53235,2 Load A with 1 ("go right")
C 53237,3 If Zero Flag is set (room to right is target room) then restore registers and return
C 53240,3 Add entry to Pathfinding Data Table stating room to right of Drutt is to the right
N 53243 Now the Pathfinding Data Table has a header and zero, one or two records, depending upon the horizontal connectivity of Drutt's current room.
C 53243,4 Load IX with address of first entry in Pathfinding Data Table
C 53247,3 Load D with index of room from current entry in Pathfinding Data Table
C 53250,3 Load B with index of room to left of room D...
C 53253,2 ...and if there is no such room then skip ahead to #R53271
C 53255,1 If room to left of room D is the target room...
C 53256,1 ...
C 53257,3 ...then load A with direction index for room D, restore registers and return
C 53260,3 If room B already has an entry in Pathfinding Data Table...
C 53263,2 ...then skip ahead to #R53271
C 53265,3 Load A with current entry's direction index (room B must lie in same direction as room D)
C 53268,3 Add entry to Pathfinding Data Table for room B lying in direction A
C 53271,3 Load B with index of room to right of room D...
C 53274,2 ...and if there is no such room then skip ahead to #R53292
C 53276,1 If room to right of room D is the target room...
C 53277,1 ...
C 53278,3 ...then load A with direction index for room D, restore registers and return
C 53281,3 If room B already has an entry in Pathfinding Data Table...
C 53284,2 ...then skip ahead to #R53292
C 53286,3 Load A with current entry's direction index (room B must lie in same direction as room D)
C 53289,3 Add entry to Pathfinding Data Table for room B lying in direction A
C 53292,2 Advance IX by two bytes to next entry in Pathfinding Data Table...
C 53294,2 ...
C 53296,3 If byte at this location is not 255 (End Marker)...
C 53299,2 ...
C 53301,3 ...then loop back to #R53247
N 53304 At this point, the search has checked all rooms and not found the target room.
C 53304,2 Restore IX
C 53306,1 Restore HL
C 53307,1 Set A to zero
C 53308,1 Return
c 53309 Add Entry to Pathfinding Data Table for Room B in Direction A
D 53309 B contains the room the pathfinding routine is currently looking at, and A contains a value that denotes which direction this room lies in relative to Drutt's current room. Input:  A  Direction index (1 or 2) B  Index of room being examined HL  Current address of end of Pathfinding Data Table
C 53309,1 Store direction index
C 53310,1 Advance by one byte
C 53311,1 Store index of room being examined...
C 53312,1 ...
C 53313,1 Advance by one byte
C 53314,2 Store 255 (End Marker)
C 53316,1 Return
c 53317 Set Zero Flag if Room B Has an Entry in Pathfinding Data Table, Otherwise Reset
D 53317 Used by the routine at #R53194. Input:  HL  Address of end of Pathfinding Data Table B  Index of room to check table for Output: F  (Zero Flag) Set if room B is already stored in Pathfinding Data Table, reset otherwise
C 53317,1 Store HL (address of end of Pathfinding Data Table)
C 53318,1 Move HL back to previous entry's room index...
C 53319,1 ...load into A...
C 53320,2 ...and if this is 255 (Start Marker, so room B not found)...
C 53322,2 ...then skip ahead to #R53330
C 53324,1 Move HL back to entry's direction index
C 53325,1 If room to search for not the same as current entry's room...
C 53326,2 ...then loop back to #R53318 to test next entry
N 53328 At this point, the room we're looking for (in B) is already stored in the Pathfinding Data Table and the Zero Flag is set.
C 53328,1 Restore HL (address of end of Pathfinding Data Table)
C 53329,1 Return
C 53330,1 Restore HL (address of end of Pathfinding Data Table)
C 53331,1 Reset Zero Flag
C 53332,1 Return
c 53333 Load A with Direction Index in Pathfinding Data Table entry at Address in IX, Restore Registers and Return
D 53333 Used by the routine at #R53194. Input:  IX  Address of an entry in Pathfinding Data Table
C 53333,3 Load A with direction index for entry at IX
N 53336 This entry point is used by the routine at #R53194.
C 53336,2 Restore IX
C 53338,1 Restore HL
C 53339,1 Return
b 53340 Graphic Layout Data Worm Looking ahead, animated
B 53340,2,2 Set current graphic set to 7
B 53342,3,3 Change cursor's x- and y-coordinates by +1 and -2 characters respectively
B 53345,3,3 Process graphic layout data at #R53561 and upon returning, move cursor to base coordinates
B 53348,3,3 Change cursor's x- and y-coordinates by +1 and -1 characters respectively
B 53351,6,6
B 53357,1,1 End Marker
N 53358 Looking left, normal
B 53358,2,2 Set current graphic set to 7
B 53360,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 53363,9,6,3
B 53372,1,1 End Marker
N 53373 Looking right, normal
B 53373,2,2 Set current graphic set to 7
B 53375,3,3 Change cursor's x- and y-coordinates by +1 and -1 characters respectively
B 53378,9,6,3
B 53387,1,1 End Marker
N 53388 Looking left, alarmed
B 53388,2,2 Set current graphic set to 7
B 53390,3,3 Change cursor's x- and y-coordinates by 0 and -1 characters respectively
B 53393,9,6,3
B 53402,1,1 End Marker
N 53403 Looking right, alarmed
B 53403,2,2 Set current graphic set to 7
B 53405,3,3 Change cursor's x- and y-coordinates by +1 and -1 characters respectively
B 53408,9,6,3
B 53417,1,1 End Marker
N 53418 Unused
B 53418,2,2 Set current graphic set to 7
B 53420,3,3 Change cursor's x- and y-coordinates by +1 and -2 characters respectively
B 53423,12,6
B 53435,1,1 End Marker
N 53436 Unused
B 53436,2,2 Set current graphic set to 7
B 53438,3,3 Change cursor's x- and y-coordinates by +1 and -2 characters respectively
B 53441,12,6
B 53453,1,1 End Marker
N 53454 Crawling Left, Alarmed (Frame 1 / 2)
B 53454,2,2 Set current graphic set to 7
B 53456,3,3
B 53459,3,3 Jump to #R53464
N 53462 Crawling Left (Frame 1 / 2)
B 53462,2,2 Set current graphic set to 7
B 53464,12,6
B 53476,1,1 End Marker
N 53477 Crawling Left (Frame 2 / 2)
B 53477,2,2 Set current graphic set to 7
B 53479,9,6,3
B 53488,1,1 End Marker
N 53489 Crawling Left, Alarmed (Frame 2 / 2)
B 53489,2,2 Set current graphic set to 7
B 53491,9,6,3
B 53500,1,1 End Marker
N 53501 Crawling Right (Frame 2 / 2)
B 53501,2,2 Set current graphic set to 7
B 53503,9,6,3
B 53512,1,1 End Marker
N 53513 Worm Crawling Right, Alarmed (Frame 2 / 2)
B 53513,2,2 Set current graphic set to 7
B 53515,9,6,3
B 53524,1,1 End Marker
N 53525 Crawling Right (Frame 1 / 2)
B 53525,2,2 Set current graphic set to 7
B 53527,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 53530,12,6
B 53542,1,1 End Marker
N 53543 Crawling Right, Alarmed (Frame 1 / 2)
B 53543,2,2 Set current graphic set to 7
B 53545,3,3 Change cursor's x- and y-coordinates by -1 and 0 characters respectively
B 53548,12,6
B 53560,1,1 End Marker
N 53561 Eyes, looking ahead, animated
B 53561,2,2 Jump to one of the 3 addresses in the following list, chosen at random:
B 53563,2,2 #R53569 (eyes, looking ahead, open)
B 53565,2,2 #R53569 (eyes, looking ahead, open)
B 53567,2,2 #R53573 (eyes, looking ahead, closed)
N 53569 Eyes, looking ahead, open
B 53569,3,3
B 53572,1,1 End Marker
N 53573 Eyes, looking ahead, closed
B 53573,3,3
B 53576,1,1 End Marker
c 53577 Cycle Attributes (Long, Full-Screen) and Clear Display Buffers
D 53577 Used by the routine at #R53723.
C 53577,2 Set repeat counter to 21
C 53579,2 Flash screen when Berk is "killed"
c 53581 Cycle Attributes (Short, Full-Screen) and Clear Display Buffers
D 53581 Used by the routine at #R36616.
C 53581,2 Set repeat counter to 7
N 53583 This entry point is used by the routine at #R53577.
C 53583,1 Store BC (B = remaining number of iterations required)
C 53584,3 Point HL at start of Attribute File
C 53587,3 Set BC to 704 (i.e. gap between start of Attribute File and start of second-last row (timer figures))
C 53590,1 Load current attribute at memory location HL into A
C 53591,2 Strip out other components to leave only INK component
C 53593,2 If value is zero (black INK) then skip ahead to #R53602
C 53595,1 Increase INK value to next colour
C 53596,2 Strip out other components to leave only INK component
C 53598,2 If value is not zero (black INK) then skip ahead to #R53602
C 53600,2 INK value was zero, so set now to blue INK
C 53602,1 Load new INK value into E
C 53603,1 Load current attribute at memory location HL into A
C 53604,2 Strip out other components to leave only PAPER component
C 53606,2 If black PAPER, then skip ahead to #R53616
C 53608,2 Increase to next PAPER colour
C 53610,2 Strip out other components to leave only PAPER component
C 53612,2 If PAPER component is not black then skip ahead to #R53616
C 53614,2 PAPER value was zero, so set now to blue PAPER
C 53616,1 Add INK component back in
C 53617,2 Set BRIGHT flag
C 53619,1 Paint new attribute back to current position in Attribute File
C 53620,2 Set / reset speaker bit
C 53622,2 Set RED bit to maintain red border
C 53624,2 Set border and set / reset speaker state
C 53626,1 Advance to next byte of Attribute File
C 53627,1 Decrease remaining number of character blocks to process
C 53628,1 If number of remaining character blocks is not zero...
C 53629,1 ...
C 53630,2 ...then loop back to #R53590
C 53632,1 Restore BC (B = remaining number of iterations required)
C 53633,2 Loop back for next iteration
N 53635 This entry point is used by the routine at #R53887.
C 53635,3 Clear Display Buffers 1 and 2...
C 53638,3 ...
C 53641,2 ...
C 53643,1 ...
C 53644,1 ...
C 53645,1 ...
C 53646,2 ...
C 53648,1 Return
c 53649 Fill Top 22 Rows of Attribute File with Attribute Value in A
D 53649 Used by the routines at #R46830 and #R53723. Input:  A  Attribute
C 53649,3 Point HL at start of Attribute File
C 53652,1 Point DE one byte after this...
C 53653,1 ...
C 53654,1 ...
C 53655,3 Set counter to 703, as we are filling 704 characters (32*22)
C 53658,1 Set first byte to A...
C 53659,2 ...and repeat for remaining 703 bytes
C 53661,2 Pause for three iterations...
C 53663,3 ...
C 53666,1 Return
c 53667 Set "Berk Has Been Killed" Flag
D 53667 Used by the routines at #R36116, #R36390, #R37085, #R37639, #R38074, #R38219, #R38540, #R38592, #R39934, #R41498, #R41633, #R41961, #R42064, #R42266 and #R42486.
C 53667,3 Set "Berk Has Been Killed" Flag...
C 53670,2 ...
C 53672,3 ...
C 53675,1 Return
b 53676 Table of Berk's Reset Complex State Data Addresses
D 53676 Addresses of complex state data reverted to by Berk after he is "killed"
W 53676,2,2 Level 1
W 53678,2,2 Level 2
W 53680,2,2 Level 3
W 53682,2,2 Level 4
b 53684 Berk's Reset Complex State Data
D 53684 Complex state data reverted to by Berk after he is "killed"
B 53684,13,13 Level 1
B 53697,13,13 Level 3
B 53710,13,13 Levels 2 & 4
c 53723 If Berk Has Been Killed then Reset his Position and State, Flash Screen and Decrease Time / Lives
D 53723 Used by the routine at #R34438.
C 53723,3 Point HL at Game Flags
C 53726,2 Reset "Reset Spiders to Initial State" Flag
C 53728,2 If "Berk Has Been Killed" Flag is not set...
C 53730,1 ...then return
C 53731,2 Reset "Berk Has Been Killed" Flag
C 53733,2 Set "Reset Spiders to Initial State" Flag
C 53735,4 Load IX with address of current level's complex state data for Berk
C 53739,3 Make Berk drop the entity he is holding and load IY with its complex state data address
C 53742,3 Point DE at location two bytes (1 WORD) before start of Table of Addresses of Berk Reset Data
C 53745,3 Load current level number into A
C 53748,3 Load DE with that level's address (from table at #R53676) for complex state data to revert Berk to after he is killed
C 53751,1 Swap HL (now address of complex state data to revert to) and DE
C 53752,4 Load DE with address of current level's complex state data for Berk
C 53756,3 Overwrite Berk's current complex state data...
C 53759,2 ...with reset data from table at #R53684 for current level
C 53761,3 Load HL with address of script data for Berk starting to fall...
C 53764,3 ...and store at #R35687 (as current position in Berk's script data)
C 53767,3 Cycle attributes (long, full-screen) and clear display buffers
C 53770,2 Fill top 22 rows of Attribute File with white PAPER and white INK, BRIGHT...
C 53772,3 ...
C 53775,3 Paint red areas outside accessible areas of current character's current room
C 53778,3 Decrease current time / lives by one if greater than zero and redraw Timer Figures
C 53781,1 Return
c 53782 Set Each Value in Primary Display Buffer Within Play Area to Zero
D 53782 Used by the routine at #R34438.
C 53782,3 Load HL with start address of Primary Display Buffer
C 53785,3 Set BC to 704, as there are 704 entries in a Display Buffer
C 53788,3 Load DE with 3 as each entry in the Display Buffer is three bytes wide
C 53791,1 Read first byte in Display Buffer...
C 53792,1 ...and add one
C 53793,3 If value is now zero (i.e. was previously 255 and therefore outside normal play area), then skip ahead to #R53806
C 53796,1 Set all values in current entry to zero...
C 53797,1 ...
C 53798,1 ...
C 53799,1 ...
C 53800,1 ...
C 53801,1 ...
C 53802,1 ...
C 53803,3 Skip ahead to #R53807
C 53806,1 Advance current position in Display Buffer to next entry
C 53807,1 Decrease remaining number of entries to process
C 53808,1 If remaining number of entries is not zero...
C 53809,1 ...
C 53810,3 ...then loop back to #R53791
C 53813,1 Return
c 53814 Advance DE by 2xA Bytes and Load WORD at this Location into DE
D 53814 Used by the routines at #R49010, #R51779 and #R53723. Input:  A  Index DE  Base address Output: DE  WORD value at DE (input) + 2 x A (input)
C 53814,1 Store HL
C 53815,1 Load HL with double index...
C 53816,1 ...
C 53817,2 ...
C 53819,1 Add HL to DE as offset, in HL
C 53820,1 Load address at HL into DE...
C 53821,1 ...
C 53822,1 ...
C 53823,1 Restore HL
C 53824,1 Return
c 53825 Copy Room Dimension Data Entry for Current Character / Entity's Current Room to Temporary Store Location (34230)
D 53825 Used by the routines at #R34916 and #R53887. Input:  IX  (Entry at #R53848 only) Address of complex state data for an entity
C 53825,3 If Drutt Mode Flag is reset (Berk Mode)...
C 53828,2 ...
C 53830,2 ...then skip ahead to #R53838
C 53832,4 Load IX with address of current level's complex state data for Drutt
C 53836,2 Skip ahead to #R53842
C 53838,4 Load IX with address of current level's complex state data for Berk
C 53842,3 Store current character's current room at 34218...
C 53845,3 ...
N 53848 This entry point is used by the routines at #R35689, #R37062, #R39278, #R51739, #R52837, #R53083, #R54480 and #R55525.
C 53848,3 Load entity's current room into A
C 53851,1 Subtract 1...
C 53852,1 ...and multiply by 5...
C 53853,1 ...
C 53854,1 ...
C 53855,1 ...
C 53856,1 Load into BC...
C 53857,2 ...
C 53859,3 Load start address of current level's room dimension data into HL...
C 53862,1 ...and add BC as offset
C 53863,3 Store HL at #R34262
C 53866,2 Set BC to 5 (as entries are 5 bytes wide)
C 53868,3 Copy data entry in room dimension data for entity's current room to #R34230...
C 53871,2 ...
C 53873,3 Load position (chars) of left side of current room into E...
C 53876,1 ...
C 53877,3 Subtract position (chars) of right side of current room in A...
C 53880,1 ...
C 53881,2 ...and add 100
C 53883,3 Store value (width of current room + 99) at #R34235
C 53886,1 Return
c 53887 Paint Red Areas Outside Accessible Areas of Current Character's Current Room
D 53887 Used by the routines at #R34438, #R34916, #R36616, #R48791, #R53723 and #R54456.
C 53887,3 Copy room dimension data entry for current character's current room to temporary store location (#R34230)
C 53890,2 Store IX
C 53892,3 Clear Display Buffers 1 & 2
C 53895,1 Switch registers
C 53896,3 Point HL at Display Buffer 1
C 53899,3 Point DE at Display Buffer 2
C 53902,1 Switch registers
C 53903,3 For current character's current room, set H = room's right edge position and L = room's left edge position (chars)
C 53906,4 For current character's current room, set D = room's bottom edge position and E = room's top edge position (chars)
C 53910,4 Point IX at first byte of Attribute File
C 53914,2 Set initial y-coordinate (characters) to zero
C 53916,1 Load A with current y-coordinate
C 53917,1 If y-coordinate of top of room is greater than current y-coordinate...
C 53918,2 ...then skip ahead to #R53950
C 53920,1 Load A with y-coordinate of bottom of room
C 53921,1 If y-coordinate of bottom of room is less than current y-coordinate...
C 53922,2 ...then skip ahead to #R53950
C 53924,2 Set initial x-coordinate to zero
C 53926,1 Load A with current x-coordinate
C 53927,1 If x-coordinate of left of room is greater than current x-coordinate...
C 53928,2 ...then skip ahead to #R53940
C 53930,1 Load A with x-coordinate of right of room
C 53931,1 If x-coordinate of right of room is less than current x-coordinate...
C 53932,2 ...then skip ahead to #R53940
C 53934,1 Switch registers
C 53935,3 Advance pointers in Display Buffers and Attribute File address to next character
C 53938,2 Skip ahead to #R53943
N 53940 Current x-coordinate, C, is outside range of x-coordinates spanned by room
C 53940,3 Print red cell to current Attribute File position (outside play area) and mark as unused in Display Buffers
C 53943,1 Advance C by one (move right one character)
C 53944,2 If bit 5 is not set (x-coordinate has not reached 32)...
C 53946,2 ...then loop back to #R53926
C 53948,2 Skip ahead to #R53959
N 53950 Current y-coordinate, B, is outside range of y-coordinates spanned by room
C 53950,1 Store BC (B = current y-coordinate, C = current x-coordinate)
C 53951,2 Load counter with 32 (as there are 32 characters per row)
C 53953,3 Print red cell to current Attribute File position (outside play area) and mark as unused in Display Buffers
C 53956,2 Loop back to #R53953 for next character block
C 53958,1 Restore BC (B = current y-coordinate, C = current x-coordinate)
C 53959,1 Increase current y-coordinate by one
C 53960,1 If y-coordinate has not reached 22...
C 53961,2 ...
C 53963,2 ...then loop back to #R53916
C 53965,2 Restore IX
C 53967,1 Return
c 53968 Print Red Cell to Current Attribute File Position (Outside Play Area) and Mark as Unused in Display Buffers
D 53968 Used by the routine at #R53887. Input:  IX  Address of start of Attribute File (22528) HL'  Current position in display buffer 1 (at #R61312) DE'  Current position in display buffer 2 (at #R63424)
C 53968,4 Set attribute to red INK, red PAPER
C 53972,1 Switch registers
C 53973,2 Load 255 into current positions in Display Buffers 1 and 2...
C 53975,1 ...
C 53976,1 ...
N 53977 This entry point is used by the routine at #R53887.
C 53977,1 Advance display buffer 1 pointer by three bytes to next entry...
C 53978,1 ...
C 53979,1 ...
C 53980,1 Advance display buffer 2 pointer by three bytes to next entry...
C 53981,1 ...
C 53982,1 ...
C 53983,1 Switch registers
C 53984,2 Advance IX to next byte in Attribute File
C 53986,1 Return
c 53987 Reset Complex State Data for First Entity of Class A to that Stored in Initial-State Table at 59821
D 53987 Used by the routines at #R37639 and #R48417. Input:  A  Entity class value IX  (Entry at #R53994 only) Address of complex state data for an entity
C 53987,3 Load IX with address of complex state data for first entry in current level that has class A...
C 53990,2 ...
C 53992,2 ...
N 53994 This entry point is used by the routine at #R42064.
C 53994,4 Point IY at start of Table of Initial-State Data for Complex Entities
C 53998,3 Advance IY to first entry in copied complex state data that has class A
C 54001,2 Store IX (address of entry in complex state data to overwrite)
C 54003,1 Load B with 13 (DE set to 13 in routine at #R54019)
C 54004,3 Overwrite IX data entry with IY data...
C 54007,3 ...
C 54010,2 ...
C 54012,2 ...
C 54014,2 ...
C 54016,2 Restore IX (address of entry in complex state data just overwritten)
C 54018,1 Return
c 54019 Point IY at First Entry in Current Level's Complex State Data that has Class A
D 54019 Used by the routines at #R36753 and #R53987. Input:  A  Value of an entity class Output: IY  Address of complex state data for first entity of class A
C 54019,4 Load start address of current level's complex state data into IY
N 54023 This entry point is used by the routine at #R53987.
C 54023,3 Load DE with 13 (as entries in complex state data are 13 bytes wide)
C 54026,3 If current IY entity has class A...
C 54029,1 ...then return
C 54030,2 Advance to entry for next entity
C 54032,2 Loop back to #R54026
c 54034 Draw Contents of Primary Display Buffer to Display
D 54034 If either the graphic index, or the graphic set index for the current entry in the Primary Display Buffer is zero, then only the attribute from that entry is rendered; the currently displayed bitmap data (from the previous frame) is preserved.
C 54034,4 Point IX at first byte of Attribute File
C 54038,3 Point HL at Display Buffer 1
C 54041,3 Point DE at Display Buffer 2
C 54044,3 If "Display Buffer 2 is Primary" Flag is reset...
C 54047,1 ...i.e. Display Buffer 1 is Primary...
C 54048,3 ...then skip ahead to #R54052
C 54051,1 Switch DE and HL (Display Buffer 1 is Secondary, Display Buffer 2 is Primary)
C 54052,1 Copy address of Secondary Display Buffer into IY...
C 54053,2 ...
C 54055,1 Read Graphic Set Index from Primary Display Buffer into A
C 54056,1 Advance HL to next byte (Graphic Index) in Primary Display Buffer
C 54057,1 If Graphic Set Index is zero...
C 54058,3 ...then skip ahead to #R54130
C 54061,2 If Graphic Set Index is 255 (character block outside room's dimensions)...
C 54063,3 ...then skip ahead to #R54140
C 54066,1 Transfer Graphic Set Index into B
C 54067,2 Set E to zero
C 54069,3 If Graphic Set Index in Primary Display Buffer entry is different to Graphic Set Index in Secondary Display Buffer entry...
C 54072,3 ...then skip ahead to #R54076
C 54075,1 Increase E
C 54076,1 Load Graphic Index from Primary Display Buffer
C 54077,1 If Graphic Index is zero...
C 54078,3 ...then skip ahead to #R54130
C 54081,1 Transfer Graphic Index into C
C 54082,3 If Graphic Index in Primary Display Buffer is different to Graphic Index in Secondary Display Buffer...
C 54085,3 ...then skip ahead to #R54089
C 54088,1 Increase E
C 54089,1 Advance HL to third byte (attribute) in Primary Display Buffer entry
C 54090,1 Read attribute from Primary Display Buffer
C 54091,3 If attribute in Display Buffer entry A is different to attribute in Secondary Display Buffer entry...
C 54094,3 ...then skip ahead to #R54102
C 54097,2 If E is 2 (i.e. both Graphic Set Index and Graphic Index are the same)...
C 54099,3 ...then skip ahead to #R54107, over drawing instructions (no need to redraw what is already there)
C 54102,1 Store HL (pointer to current position in Primary Display Buffer)
C 54103,3 Draw a graphic character block to display
C 54106,1 Restore HL (pointer to current position in Primary Display Buffer)
C 54107,1 Advance HL to next byte in Primary Display Buffer (start of next entry)
C 54108,2 Advance IX to next byte in Attribute File
C 54110,2 Copy current Attribute File address from IX to DE...
C 54112,1 ...
C 54113,1 If current Attribute File address is not at the start of the seventh row of a third of the display (i.e. row 7, 15 or 23)...
C 54114,2 ...
C 54116,2 ...then skip ahead to #R54122
C 54118,1 If current Attribute File address is 23232 (256*90 + 192, i.e. at start of second last display character row)...
C 54119,2 ...
C 54121,1 ...then return, as only timer figures appear in last two rows
C 54122,3 Advance current position in Secondary Display Buffer by 3 bytes...
C 54125,2 ...
C 54127,3 Loop back to #R54055
C 54130,1 Advance HL to third byte (attribute) in Primary Display Buffer entry
C 54131,1 Load attribute into A
C 54132,2 Set BRIGHT flag
C 54134,3 Place attribute at current position in Attribute File
C 54137,3 Loop back to #R54107
C 54140,1 Advance HL to third byte (attribute) in Primary Display Buffer entry
C 54141,3 Loop back to #R54107
c 54144 Draw a Graphic Character Block to Display
D 54144 This routine uses the same technique as seen in the routine at #R47709 to convert from an Attribute File address to a Display File address. See the notes in #R47709 for more details. Input:  A  Attribute value (bit 7 is "mirror" flag, rather than FLASH) B  Graphic set index C  Graphic index IX  Address in Attribute File
C 54144,2 Set Bright Flag
C 54146,3 Load attribute value into current Attribute File address
C 54149,1 Load graphic set index into HL..
C 54150,1 ...
C 54151,1 ...
C 54152,1 Double (as start address entries in table at #R27000 are two bytes wide)...
C 54153,3 ...and add as offset to #R27000 (in HL)...
C 54156,1 ...
C 54157,1 Load start address for this graphic set into DE...
C 54158,1 ...
C 54159,1 ...
C 54160,1 Load graphic index into HL...
C 54161,1 ...
C 54162,1 Multiply by eight, as graphic blocks are eight bytes long...
C 54163,1 ...
C 54164,1 ...
C 54165,1 Add to address of start of this graphic set as an offset in HL
C 54166,1 Swap DE (now points to required graphic data) and HL (now address of start of graphic set from table at #R27000)
C 54167,2 Switch Attribute File address into HL...
C 54169,1 ...
C 54170,1 Multiply the most significant byte (MSB) of the Attribute File address by eight...
C 54171,1 ...to put it on the same scale as the MSB of the Display File address MSB (see notes)...
C 54172,1 ...
C 54173,1 ...
C 54174,2 Drop the most significant bit to point to the correct location in Display File
C 54176,1 Load back into HL (L is unaffected, as it should be)
C 54177,1 Switch DE (now Display File address) and HL (now pointer to graphic data)
C 54178,4 If mirror flag is set for Attribute File at current location...
C 54182,3 ...then skip to #R54194 to draw mirrored version
C 54185,2 Set counter to 8 rows
C 54187,1 Read byte from graphic data...
C 54188,1 ...and load into Display File
C 54189,1 Move down one pixel row in Display File
C 54190,1 Advance to next byte of graphic data
C 54191,2 Loop back for next row of pixels
C 54193,1 Return
c 54194 Draw Mirrored Graphic Character Block to Display File
D 54194 Used by the routine at #R54144. Input:  HL  Address of bitmap data to draw IX  Address in Attribute File
C 54194,4 Reset Bit 7 (Mirror Flag, shared with FLASH flag so would cause graphic to flash)
C 54198,2 Set counter to 8 rows
C 54200,1 Store BC (B = current counter value)
C 54201,1 Read byte from graphic data...
C 54202,1 Store HL (pointer to graphic data)
C 54203,3 Point HL at mirror graphic lookup table
C 54206,1 Load graphic "value" into BC...
C 54207,2 ...
C 54209,1 ...and add to HL as offset
C 54210,1 Read byte at this location (mirror image of graphic data read by instruction at 54201)
C 54211,1 Restore HL (pointer to graphic data)
C 54212,1 Load (mirrored) graphic data into Display File
C 54213,1 Move down one pixel row in Display File
C 54214,1 Advance to next byte of graphic data
C 54215,1 Restore BC (B = current counter value)
C 54216,2 Loop back for next row of pixels
C 54218,1 Return
b 54219 Data for Pseudo-Random Number Generator
W 54219,2,2 Seed
B 54221,1,1 Temporary store for range value
c 54222 Load A with a Pseudo-Random Number Between 0 and the Higher of 2 and A (Input)
D 54222 This routine uses a linear congruential generator to generate a new pseudo-random number based upon a seed value. The seed value is stored at #R54219, is initially set to the value in the least significant byte of the system variable FRAMES, and subsequently set to the previously generated pseudo-random number. On entering this routine, the A register holds the range for the random number (e.g. 5 means this routine will generate a random number in the range 0-4 inclusive). A range of less than 2 is not allowed, so if A is less than this then it will be set to 2. Input:  A  Range Output: A  Generated random number
C 54222,2 If range is less than 2...
C 54224,3 ...then set range to 2...
C 54227,2 ...
C 54229,3 Store range at #R54211
C 54232,1 Store HL
C 54233,1 Store DE
C 54234,1 Store BC
C 54235,4 Load DE with seed
C 54239,1 Load least significant byte of random seed into H
C 54240,2 Set L to 253
C 54242,1 Load most significant byte (MSB) of random seed into A
N 54243 At this point, the three registers A, H and L encode a 24-bit number whose value is (256 * seed + 253)
C 54243,1 Reset carry flag
C 54244,2 Subtract seed from HL...
C 54246,2 ...and decrement A if Carry Flag is set
C 54248,2 Subtract seed from HL...
C 54250,2 ...and decrement A if Carry Flag is set
N 54252 At this point, the three registers A, H and L encode a 24-bit number whose value is (254 * seed + 253)
C 54252,1 Calculate (AHL mod 65,537)...
C 54253,2 ...loading result into HL...
C 54255,2 ...
C 54257,3 ...and if this is negative...
C 54260,1 ...then add one (as zero in HL can represent both zero and 65,536)
C 54261,3 Store HL (new seed) at #R54219
N 54264 At this point, HL contains a new pseudo-random 16-bit number
C 54264,1 Copy 16-bit pseudo-random number from HL into DE...
C 54265,1 ...
C 54266,3 Load A with range as stored previously
C 54269,1 Decrease range by 1 to get maximum value as we want the output to range from 0 to (A-1)...
C 54270,1 ...and load into B (loop counter)
N 54271 In the following loop we are obtaining the number of times that 65,536 goes into RANGE x DE. In other words, (RANGE x DE) is divided by 65,536 and the integer part of the result is loaded into A. A is therefore limited to values between zero, and the value A had on entering this routine minus one, inclusive.
C 54271,1 Set A to zero
C 54272,1 Add DE to HL
C 54273,3 If DE has not crossed the 65,535 - 0 boundary then skip ahead to #R54277
C 54276,1 Increase A (count of number of times DE rolls over from 65,535 to 0)
C 54277,2 Decrease B and loop back to #R54272
C 54279,1 Restore BC
C 54280,1 Restore DE
C 54281,1 Restore HL
C 54282,1 Return
c 54283 Move Entity at IX into New Room (Left or Right) if it is at the Edge of its Current Room
D 54283 Used by the routines at #R35735 and #R55041. Input:  IX  Address of complex state data for an entity
C 54283,3 Load A with width of current room (chars) + 97...
C 54286,1 ...
C 54287,1 ...
C 54288,3 If x-coordinate of left side (+100) of entity is greater than this...
C 54291,2 ...then skip ahead to #R54306
C 54293,3 If x-coordinate of right side (+100) of entity is not less than 102...
C 54296,2 ...
C 54298,1 ...then return
C 54299,3 Load B with index of room to left of entity's current room
C 54302,3 Move entity at IX into room to left of its current room and update position of carried entity if moving entity is Berk
C 54305,1 Return
C 54306,3 Load B with index of room to right of current character's current room
C 54309,3 Move entity at IX into room to right of its current room and update position of carried entity if moving entity is Berk
C 54312,1 Return
c 54313 Move Entity at IX into Room to the Right, If Appropriate
D 54313 This routine moves an entity (e.g. Berk or Drutt) into the next room to the right, if there is one, in a way that is consistent with the point of view of the currently selected character. For example, if Berk is the selected character and he moves into a new room, he does so as soon as his leading side (left or right) crosses the edge of the screen. He essentially disappears immediately from his old room. However from Drutt's point of view, Berk should move across the boundary smoothly and not just vanish as soon as his leading side crosses the boundary. This routine (along with its counterpart at #R54348) ensures that this happens correctly. Input:  IX  Address of complex state data for an entity Output: A  Zero if no room exists to the right, otherwise, x-coordinate of character's appropriate edge F  (Carry Flag) Set if entity is not at edge of current room, or has moved into new room and has not collided. Reset otherwise (i.e. can't enter new room).
C 54313,3 Load C with width of entity's current room (chars) + 99...
C 54316,1 ...
C 54317,3 If Drutt Mode Flag is reset (Berk Mode)...
C 54320,2 ...
C 54322,2 ...then skip ahead to #R54329
C 54324,3 Load A with x-coordinate of Drutt's left edge
C 54327,2 Skip ahead to #R54332
C 54329,3 Load A with x-coordinate of Berk's right edge
C 54332,1 If x-coordinate of room's right edge is greater than x-coordinate in A...
C 54333,1 ...then return
C 54334,3 Load B with index of room to right of current character's current room
C 54337,2 If there is no room to the right, then jump to #R54381
C 54339,3 Move entity at IX into room to right of its current room and update position of carried entity if moving entity is Berk
C 54342,3 Check entity at IX for collision with another impassable / pushable entity immediately to the right...
C 54345,2 ...and if a collision occurred, then jump to #R54381
C 54347,1 Return
c 54348 Move Entity at IX into Room to the Left, If Appropriate
D 54348 This routine moves an entity (e.g. Berk or Drutt) into the next room to the right, if there is one, in a way that is consistent with the point of view of the currently selected character. For example, if Berk is the selected character and he moves into a new room, he does so as soon as his leading edge (left or right) crosses the edge of the screen. He essentially disappears immediately from his old room. However from Drutt's point of view, Berk should move across the boundary smoothly and not just vanish as soon as his leading edge crosses the boundary. This routine (along with its counterpart at #R54313) ensures that this happens correctly. Input:  IX  Address of complex state data for an entity Output: A  Zero if no room exists to the left, otherwise, x-coordinate of character's appropriate edge F  (Carry Flag) Set if entity is not at edge of current room, or has moved into new room and has not collided. Reset otherwise (i.e. can't enter new room).
C 54348,3 If Drutt Mode Flag is reset (Berk Mode)...
C 54351,2 ...
C 54353,2 ...then skip ahead to #R54363
C 54355,2 If x-coordinate of Drutt's right edge is greater than 100 (x-coordinate of left-edge of room)...
C 54357,3 ...
C 54360,1 ...then return
C 54361,2 Skip ahead to #R54369
C 54363,2 If x-coordinate of Berk's left edge is greater than 100 (x-coordinate of left-edge of room)...
C 54365,3 ...
C 54368,1 ...then return
C 54369,3 Load B with index of room to left of entity's current room
C 54372,2 If there is no room to the left, then jump to #R54381
C 54374,3 Move entity at IX into room to left of its current room and update position of carried entity if moving entity is Berk
C 54377,3 Set Carry Flag if entity at IX has not collided with another impassable / pushable entity immediately to the left, reset otherwise
C 54380,1 Return
N 54381 This entry point is used by the routine at #R54313.
C 54381,1 Set A to zero
C 54382,1 Return
c 54383 Move Entity at IX into Room to Right of its Current Room and Update Position of Carried Entity if Moving Entity is Berk
D 54383 Used by the routines at #R48593, #R54283 and #R54313. Input:  IX  Address of complex state data for an entity
C 54383,3 Set character's position to be left-hand side of new room to right
C 54386,3 Paint red areas outside current character's room if IX points to current character's complex state data
C 54389,4 If entity is Berk and his Moving Upwards Flag (floating) is set...
C 54393,1 ...then return
C 54394,3 If entity is Berk then move carried entity to Berk's right as he faces right
C 54397,1 Return
c 54398 Set Entity's Position to be Left-Hand Side of New Room to Right
D 54398 Used by the routine at #R54383. Input:  B  Index of destination room IX  Address of complex state data for an entity
C 54398,3 Load D with i.e. x-coordinate of right edge of room (width of current room (chars) + 99) minus x-coordinate of right-edge of current character...
C 54401,3 ...(i.e. [negative] distance by which entity's right edge is to the right of right edge of room)...
C 54404,1 ...
C 54405,3 Set room of entity to B, store room size data for new room and load E with entity's width minus one
C 54408,2 Load A with x-coordinate of left edge of current (new) room
C 54410,1 Subtract D (negative)...
C 54411,3 ...and set as new x-coordinate of entity's right edge
C 54414,1 Subtract (width - 1) of entity...
C 54415,3 ...and set this as x-coordinate of entity's left edge
C 54418,1 Return
c 54419 Move Entity at IX into Room to Left of its Current Room and Update Position of Carried Entity if Moving Entity is Berk
D 54419 Used by the routines at #R48641, #R54283 and #R54348.
C 54419,3 Set entity's position to be right-hand side of new room to left
C 54422,3 Paint red areas outside current character's room if IX points to current character's complex state data
C 54425,4 If entity is Berk and his Moving Upwards Flag (floating) is set...
C 54429,1 ...then return
C 54430,3 If entity is Berk then move carried entity to Berk's left as he faces left
C 54433,1 Return
c 54434 Set Entity's Position to be Right-Hand Side of New Room to Left
D 54434 Used by the routine at #R54419. Input:  B  Index of destination room IX  Address of complex state data for an entity
C 54434,2 Load D with x-coordinate of left edge of room minus x-coordinate of left edge of current entity...
C 54436,3 ...(i.e. distance by which entity's left edge is to the left of left edge of room)...
C 54439,1 ...
C 54440,3 Set room of entity to B, store room size data for new room and load E with entity's width minus one
C 54443,3 Load A with width of current (new) room (chars) + 99
C 54446,1 Subtract D...
C 54447,1 ...and add one to get x-coordinate of entity's left edge in new room
C 54448,3 Set entity's left edge to this position
C 54451,1 Add (width - 1) of entity...
C 54452,3 ...and set this as x-coordinate of entity's right edge
C 54455,1 Return
c 54456 Paint Red Areas Outside Current Character's Room if IX Points to Current Character's Complex State Data
D 54456 Used by the routines at #R54383, #R54419, #R55433 and #R55616. Input:  IX  Address of complex state data for an entity
C 54456,3 Set Zero Flag if Drutt Mode Flag is reset...
C 54459,2 ...
C 54461,3 Load Entity Class Value of entity at IX into A
C 54464,2 If Zero Flag is reset (i.e. Drutt Mode) then skip ahead to #R54471
C 54466,2 If Entity Class is 31 (i.e. Berk)...
C 54468,2 ...then paint red areas outside accessible areas of current character's current room and return
C 54470,1 Return
C 54471,2 If Entity Class is not 18 (i.e. Drutt)...
C 54473,1 ...then return
C 54474,1 Store HL
C 54475,3 Paint red areas outside accessible areas of current character's current room
C 54478,1 Restore HL
C 54479,1 Return
c 54480 Set Room of Entity at IX to B, Store Room Size Data for New Room and Load E with Entity's Width Minus One
D 54480 Used by the routines at #R54398, #R54434, #R55433 and #R55616. Input:  B  Destination room index IX  Address of complex state data for an entity Output: E  Entity's width, minus one (characters)
C 54480,1 Set entity's current room to be destination room...
C 54481,3 ...
C 54484,1 Store HL
C 54485,1 Store DE
C 54486,3 Store room size data for entity's current room
C 54489,1 Restore DE
C 54490,1 Restore HL
C 54491,3 Load A with x-coordinate of entity's right...
C 54494,3 ...subtract x-coordinate of entity's left...
C 54497,1 ...and load result (entity's width minus one) into E
C 54498,1 Return
c 54499 Unused routine
D 54499 This routine is not used. It is assumed, since this routine flows into the routine at #R54505, that this unused routine was also intended to deal with room connectivity. As there are routines to deal with vertical and horizontal (left-right) connectivity, it is possible that this routine was originally intended to handle horizontal (forward-back) connectivity.
C 54499,4 Load IY with address of Unused Data Block (09)
C 54503,2 Load B with index of room, as related to room of index D via data in Unused Data Block (09)
c 54505 Load B with Index of Room to Right of an Entity's Current Room
D 54505 Used by the routines at #R48593, #R52193, #R54283 and #R54313. Input:  IX  Address of complex state data for an entity IY  (entry at #R54512 only) An entry in a room connectivity table D  (entry at #R54508 and #R54512 only) Index of base room for check Output: B  Index of room found if there is one, undefined otherwise F  Zero Flag set if there is no room to the right, reset otherwise
C 54505,3 Load current room of entity pointed to by IX into D
N 54508 This entry point is used by the routine at #R53194.
C 54508,4 Load start address of current level's Horizontal Room Connectivity Data into IY
N 54512 This entry point is used by the routine at #R54499.
C 54512,3 Load first byte (left room index) of current entry into A
C 54515,2 If byte is 255 (i.e. the End Marker)...
C 54517,1 ...then return
C 54518,1 If byte is not the same as the room index in D...
C 54519,2 ...then skip ahead to #R54527
C 54521,3 Load second byte (right room index) of current entry into B
C 54524,2 Reset zero flag (as current room cannot be 255)
C 54526,1 Return
C 54527,2 Advance by two bytes to the next entry...
C 54529,2 ...
C 54531,2 Loop back to #R54512
c 54533 Unused routine
D 54533 This routine is not used. It is assumed, since this routine flows into the routine at #R54539, that this unused routine was also intended to deal with room connectivity. As there are routines to deal with vertical and horizontal (left-right) connectivity, it is possible that this routine was originally intended to handle horizontal (forward-back) connectivity.
C 54533,4 Load IY with address of Unused Data Block (09)
C 54537,2 Load B with index of room, as related to room of index D via data in Unused Data Block (09)
c 54539 Load B with Index of Room to Left of an Entity's Current Room
D 54539 Used by the routines at #R48641, #R52098, #R54283 and #R54348. Input:  IX  Address of complex state data for an entity IY  (entry at #R54546 only) An entry in a room connectivity table D  (entry at #R54542 and #R54546 only) Index of base room for check Output: B  Index of room found if there is one, undefined otherwise F  Zero Flag set if there is no room to the left, reset otherwise
C 54539,3 Load current room of entity pointed to by IX into D
N 54542 This entry point is used by the routine at #R53194.
C 54542,4 Load start address of current level's Horizontal Room Connectivity Data into IY
N 54546 This entry point is used by the routine at #R54533.
C 54546,2 Advance by one byte to second byte (right room index) of first entry
C 54548,3 Load second byte (right room index) of current entry into A
C 54551,2 If byte is 255 (i.e. the End Marker)...
C 54553,1 ...then return
C 54554,1 If byte is not the same as the room index in D...
C 54555,2 ...then skip ahead to #R54563
C 54557,3 Load first byte (left room index) of current entry into B
C 54560,2 Reset zero flag (as current room cannot be 255)
C 54562,1 Return
C 54563,2 Advance by two bytes to the next entry...
C 54565,2 ...
C 54567,2 Loop back to #R54548
c 54569 Check Entity at IX for Collision With Another (Impassable / Pushable) Entity Immediately to the Right
D 54569 Used by the routines at #R36116, #R52148, #R52193, #R52889, #R52914, #R54313 and #R55041. Input:  IX  Address of complex state data for an entity Output: F  Carry Flag set if no entity found, reset otherwise A  Class of entity, if found, otherwise 255 IY  Address of complex state data for colliding entity
C 54569,3 Load DE with 13 (as entries in complex state data are 13 bytes wide)
C 54572,4 Load start address of current level's complex state data into IY
C 54576,3 Load A with room index for current IY entity
C 54579,2 If this is not 255 (i.e. End Marker)...
C 54581,2 ...then skip ahead to #R54585
C 54583,1 Set Carry Flag
C 54584,1 Return
C 54585,3 If room of entity at IX is not the same as room of entity at IY...
C 54588,3 ...
C 54591,2 ...then advance IY to next entity
C 54593,4 If current entity at IY has its Is Being Carried Flag set...
C 54597,3 ...then advance IY to next entity
C 54600,3 If current entity at IY has a class which is the same as the entity at IX...
C 54603,3 ...
C 54606,2 ...then advance IY to next entity
C 54608,2 If entity at IY has its "Spans Full Depth" Flag is set...
C 54610,2 ...then skip over depth check to #R54620
C 54612,3 If entity at IY has a depth which is not the same as the depth of the entity at IX...
C 54615,3 ...
C 54618,2 ...then advance IY to next entity
C 54620,3 If entity at IY has its "Impassable / Pushable Rightwards" Flag reset...
C 54623,2 ...
C 54625,3 ...then advance IY to next entity
C 54628,3 If the right side of entity at IX...
C 54631,1 ...
C 54632,3 ...is not immediately to the left of the left side of the entity at IY...
C 54635,2 ...then advance IY to next entity
C 54637,3 If the bottom of the entity at IX...
C 54640,3 ...is above the top of the entity at IY...
C 54643,2 ...then advance IY to next entity
C 54645,3 If the bottom of the entity at IY...
C 54648,3 ...is above the top of the entity at IX...
C 54651,2 ...then advance IY to next entity
C 54653,1 Set A to zero to reset Carry Flag
C 54654,4 Store pointer to current entity at #R34258
C 54658,3 Load A with class of entity at IY
C 54661,1 Return
C 54662,2 Advance IY pointer to next entity in complex state data block
C 54664,2 Loop back to #R54576
c 54666 Check Entity at IX for Collision With Another (Impassable / Pushable) Entity Immediately to the Left
D 54666 Used by the routines at #R36116, #R52053, #R52098, #R52870, #R52914, #R54348 and #R55041. Input:  IX  Address of complex state data for an entity Output: F  Carry Flag set if no entity found, reset otherwise A  Class of entity, if found, otherwise 255 IY  Address of complex state data for colliding entity
C 54666,3 Load DE with 13 (as entries in complex state data are 13 bytes wide)
C 54669,4 Load start address of current level's complex state data into IY
C 54673,3 Load A with room index for current IY entity
C 54676,2 If this is not 255 (i.e. End Marker)...
C 54678,2 ...then skip ahead to #R54682
C 54680,1 Set Carry Flag
C 54681,1 Return
C 54682,3 If room of entity at IX is not the same as room of entity at IY...
C 54685,3 ...
C 54688,2 ...then advance IY to next entity
C 54690,4 If current entity at IY has its Is Being Carried Flag set...
C 54694,3 ...then advance IY to next entity
C 54697,3 If current entity at IY has a class which is the same as the entity at IX...
C 54700,3 ...
C 54703,3 ...then advance IY to next entity
C 54706,2 If entity at IY has its "Spans Full Depth" Flag is set...
C 54708,2 ...then skip over depth check to #R54620
C 54710,3 If entity at IY has a depth which is not the same as the depth of the entity at IX...
C 54713,3 ...
C 54716,2 ...then advance IY to next entity
C 54718,3 If entity at IY has its "Impassable / Pushable Leftwards" Flag reset...
C 54721,2 ...
C 54723,3 ...then advance IY to next entity
C 54726,3 If the left side of entity at IX...
C 54729,1 ...
C 54730,3 ...is not immediately to the right of the right side of the entity at IY...
C 54733,2 ...then advance IY to next entity
C 54735,3 If the bottom of the entity at IX...
C 54738,3 ...is above the top of the entity at IY...
C 54741,2 ...then advance IY to next entity
C 54743,3 If the bottom of the entity at IY...
C 54746,3 ...is above the top of the entity at IX...
C 54749,2 ...then advance IY to next entity
C 54751,1 Set A to zero to reset Carry Flag
C 54752,4 Store pointer to current entity at #R34258
C 54756,3 Load A with class of entity at IY
C 54759,1 Return
C 54760,2 Advance IY pointer to next entity in complex state data block
C 54762,2 Loop back to #R54673
c 54764 Check Entity at IX for Collision With Another Entity at Next Depth Level Out Of Screen Whose Interaction (11,6) Flag is Set
D 54764 Used by the routines at #R37639 and #R52315. Input:  IX  Address of complex state data for an entity Output: F Carry Flag set if no entity found, reset otherwise A  Class of entity, if found, otherwise 255 IY  Address of complex state data for colliding entity
C 54764,2 Set depth offset to 1 (i.e. check entities at next depth level out of screen)
C 54766,2 Jump to collision detection routine
c 54768 Check Entity at IX for Collision With Another Entity at Same Depth Whose Interaction (11,6) Flag is Set
D 54768 Used by the routines at #R36036, #R36542, #R37085, #R38074, #R38219, #R38540, #R38592, #R41498, #R41633, #R41961, #R42064, #R42266, #R42486, #R48487, #R51779, #R53083, #R55196 and #R55525. Input:  IX  Address of complex state data for an entity C  (Entry at #R54770 only) Depth offset Output: F  Carry Flag set if no entity found, reset otherwise A  Class of entity, if found, otherwise 255 IY  Address of complex state data for colliding entity
C 54768,2 Set depth offset to 0 (i.e. check entities at same depth)
N 54770 This entry point is used by the routine at #R54764.
C 54770,4 Load start address of current level's complex state data into IY
C 54774,3 Load DE with 13 (as entries in complex state data are 13 bytes wide)
C 54777,3 Load A with room index for current IY entity
C 54780,2 If this is not 255 (i.e. End Marker)...
C 54782,2 ...then skip ahead to #R54786
C 54784,1 Set Carry Flag
C 54785,1 Return
C 54786,3 If room of entity at IX is not the same as room of entity at IY...
C 54789,3 ...
C 54792,2 ...then advance IY to next entity
C 54794,4 If current entity at IY has its Is Being Carried Flag set...
C 54798,3 ...then advance IY to next entity
C 54801,3 If current entity at IY has a class which is the same as the entity at IX...
C 54804,3 ...
C 54807,2 ...then advance IY to next entity
C 54809,2 If entity at IY has its "Spans Full Depth" Flag is set...
C 54811,2 ...then skip over depth check to #R54822
C 54813,3 If entity at IY has a depth which is not the same as the depth of the entity at IX...
C 54816,1 ...plus depth offset...
C 54817,3 ...
C 54820,2 ...then advance IY to next entity
C 54822,3 If entity at IY has its Interaction (11,6) Flag reset...
C 54825,2 ...
C 54827,3 ...then advance IY to next entity
C 54830,3 If the bottom of the entity at IX...
C 54833,3 ...is above the top of the entity at IY...
C 54836,2 ...then advance IY to next entity
C 54838,3 If the bottom of the entity at IY...
C 54841,3 ...is above the top of the entity at IX...
C 54844,2 ...then advance IY to next entity
C 54846,3 If the right side of entity IX...
C 54849,3 ...is to the left of the left side of the entity at IY...
C 54852,2 ...then advance IY to next entity
C 54854,3 If the right side of entity IY...
C 54857,3 ...is to the left of the left side of the entity at IX...
C 54860,2 ...then advance IY to next entity
C 54862,1 Set A to zero to reset Carry Flag
C 54863,4 Store pointer to current entity at #R34258
C 54867,3 Load A with class of entity at IY
C 54870,1 Return
N 54871 This entry point is used by the routines at #R55196 and #R55525.
C 54871,3 Load DE with 13, as entries in complex state data are 13 bytes wide
C 54874,2 Advance IY pointer to next entity in complex state data block
C 54876,2 Loop back to #R54777
c 54878 Check Entity at IX for Collision With Another Entity (Only those Defined Before, and in Reverse Order) at Same Depth Level Whose Interaction (11,7) Flag is Set
D 54878 Used by the routine at #R52315. Input:  IX  Address of complex state data for an entity Output: F  Carry Flag set if no entity found, reset otherwise A  Class of entity, if found, otherwise 254 IY  Address of complex state data for colliding entity
C 54878,2 Set depth offset to 0 (i.e. check entities at same depth)
C 54880,2 Load IY with address in IX...
C 54882,2 ...
C 54884,3 Load DE with -13
C 54887,3 Move IY back to previous entity in complex state data and jump into collision check routine
c 54890 Check Entity at IX for Collision With Another Entity (in Reverse Order) at Next Depth Level Into Screen Whose Interaction (11,7) Flag is Set
D 54890 The address stored at #R34246 is the address of complex state data for the entity to start with when doing collision checks in reverse order. On levels 2, 3 and 4, the value stored here is the address of the complex state data of the last entity, which means that on these levels, all entities are checked. On Level 1, however, the value stored is the address of the complex state data of the sixth-last entity. The remaining five entities after this address on Level 1 are the three spiders, their webs and their arches. This means that on Level 1, these spiders, webs and arches are excluded from certain collision checks. Input:  IX  Address of complex state data for an entity C  (Entry at #R54899 only) Depth offset Output: F  Carry Flag set if no entity found, reset otherwise A Class of entity, if found, otherwise 254 IY  Address of complex state data for colliding entity
C 54890,2 Set depth offset to 1 (i.e. check entities at next depth level into screen)
C 54892,3 Load DE with -13 (as entries in complex state data are 13 bytes wide)
C 54895,4 Load IY with current level's start address for reverse-order collision checks
C 54899,3 If room of entity at IX is not the same as room of entity at IY...
C 54902,3 ...
C 54905,2 ...then move IY back to previous entity
C 54907,4 If current entity at IY has its Is Being Carried Flag set...
C 54911,3 ...then move IY back to previous entity
C 54914,3 If current entity at IY has a class which is the same as the entity at IX...
C 54917,3 ...
C 54920,2 ...then move IY back to previous entity
C 54922,2 If entity at IY has its "Spans Full Depth" Flag is set...
C 54924,2 ...then skip over depth check to #R54935
C 54926,3 If entity at IY has a depth which is not the same as the depth of the entity at IX...
C 54929,1 ...minus depth offset...
C 54930,3 ...
C 54933,2 ...then move IY back to previous entity
C 54935,3 If entity at IY has its Interaction (11,7) Flag reset...
C 54938,2 ...
C 54940,3 ...then move IY back to previous entity
C 54943,3 If the bottom of the entity at IX...
C 54946,3 ...is above the top of the entity at IY...
C 54949,2 ...then move IY back to previous entity
C 54951,3 If the bottom of the entity at IY...
C 54954,3 ...is above the top of the entity at IX...
C 54957,2 ...then move IY back to previous entity
C 54959,3 If the right side of entity IX...
C 54962,3 ...is to the left of the left side of the entity at IY...
C 54965,2 ...then move IY back to previous entity
C 54967,3 If the right side of entity IY...
C 54970,3 ...is to the left of the left side of the entity at IX...
C 54973,2 ...then move IY back to previous entity
C 54975,1 Set A to zero to reset Carry Flag
C 54976,4 Store pointer to current entity at #R34258
C 54980,3 Load A with class of entity at IY
C 54983,1 Return
C 54984,3 Load DE with -13
N 54987 This entry point is used by the routine at #R54878.
C 54987,3 If byte before current IY position is 254 (i.e. end marker for simple state data)...
C 54990,2 ...
C 54992,3 ...then skip ahead to #R55000
C 54995,2 Move IY back 13 bytes (i.e. to start of previous entry)
C 54997,3 Jump to #R54899
C 55000,1 Set Carry Flag
C 55001,1 Return
c 55002 Unused routine
D 55002 This routine seems to be involved with the relative positioning of two different entities, assuming that IX contains a complex state data address.
C 55002,4 Load IY with address of complex state data for entity involved in last collision check
C 55006,3 Load A with width of this entity, minus one...
C 55009,3 ...
C 55012,2 Divide result by two, clearing remainder...
C 55014,1 ...and subtract one
C 55015,3 Add x-coordinate of entity's left edge
C 55021,1 Return
b 55022 Cached Control Input
D 55022 This value is set by the instruction at #R55066. It holds a value read from control input when handling characters' jumps.
B 55022,1,1
c 55023 Handle Drutt's Jump, and Load E with Jump State Index As Appropriate
D 55023 See description of routine at #R55041 for details. Output: E  (via routine at #R55041) Jump state index (see #R55041)
C 55023,4 Load IX with address of current level's complex state data for Drutt
C 55027,4 If Drutt's Is Jumping Flag is reset...
C 55031,1 ...then return
N 55032 Drutt's Is Jumping Flag is set
C 55032,3 If Drutt Mode Flag is reset (Berk Mode)...
C 55035,2 ...
C 55037,2 ...then handle Drutt's jump, and load E with jump state index as appropriate based upon no control input
C 55039,2 Handle Drutt's jump, and load E with jump state index as appropriate based upon current control input
c 55041 Handle Berk's Jump, and Load E with Jump State Index As Appropriate
D 55041 This routine updates the position, direction and velocity of a jumping character (Berk if entry at #R55041 or Drutt if entry via routine at #R55023) based upon various conditions (control input, collisions with obstructions and the character's current position, direction and velocity). Register E is loaded (either by this routine, or the CALLed routine at #R55196) with a value determined by these conditions. The value in E in turn determines how the character's jump will progress. A given numeric value may result from more than one set of conditions. Possible output values in E are: Input:  IX  Address of complex state data (current level) for Berk (entry via #R55041) or Drutt (entry via #R55060 and #R55065) Output: E  Jump state index (see table above)
C 55041,3 Move Berk into new room (left or right) if he is at the edge of his current room
C 55044,4 Load IX with address of current level's complex state data for Berk
C 55048,4 If Berk's Is Jumping Flag is reset...
C 55052,1 ...then return
N 55053 Berk's Is Jumping Flag is set
C 55053,3 If Drutt Mode Flag is set...
C 55056,2 ...
C 55058,2 ...then skip ahead to #R55065
N 55060 From this point onwards, IX points to either Berk's complex state data (entry via #R55041) or Drutt's complex state data (entry via #R55060 or #R55065). This entry point is used by the routine at #R55023.
C 55060,3 Load A with control input
C 55063,2 Skip ahead to #R55066
N 55065 This entry point is used by the routine at #R55023.
C 55065,1 Load A with zero
C 55066,3 Store value in A at #R55022
C 55069,4 If jumper's Walking Right Flag is reset...
C 55073,2 ...then skip ahead to #R55128
N 55075 Walking Right Flag is set
C 55075,2 Load B with 2 (as Berk and Drutt jump right by two characters)
C 55077,1 Store BC (B = remaining number of characters to move)
C 55078,3 Check jumper for collision with another impassable / pushable entity immediately to the right...
C 55081,2 ...and if a collision has not occurred, then skip ahead to #R55108
C 55083,2 If collision was with an entity of class less than 22 (can be picked up)...
C 55085,2 ...then skip ahead to #R55108
C 55087,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 55089,2 ...then skip ahead to #R55108
C 55091,2 If collision was with entity of class 50 (causes Drutt to swap depth levels)...
C 55093,2 ...then skip ahead to #R55108
C 55095,2 If collision was not with entity of class 159 (Berk floating)...
C 55097,2 ...then skip ahead to #R55124
N 55099 Collision with Berk, floating
C 55099,4 Set Berk's Walking Right, Impassable Leftwards, Impassable Rightwards, Interaction (11,6) and Interaction (11,7) flags and reset his Walking Left, Unused (11,2) and Unused (11,3) flags
C 55103,3 Set Character Swap Pending Flag
C 55106,2 Skip ahead to #R55124
N 55108 No collision, or collision with entity of class 50, 129 or less than 22
C 55108,3 Move jumper into room to the right, if appropriate...
C 55111,2 ...and if jumper can't enter new room then skip ahead to #R55124
C 55113,3 Move jumper right by one character...
C 55116,3 ...
C 55119,1 Restore BC (B = remaining number of characters to move)
C 55120,2 Decrease remaining number of characters to move, and if not zero, loop back to #R55077
C 55122,2 Handle vertical component of jumper's jump, load E with Jump State Index and return
N 55124 Collision with other class of entity
C 55124,1 Restore BC (B = remaining number of characters to move)
C 55125,2 Load E with 4 (jumper has bounced off an obstruction to the right while jumping right)
C 55127,1 Return
N 55128 Walking Right Flag is reset
C 55128,4 If jumper's Walking Left Flag is reset...
C 55132,2 ...then skip ahead to #R55196 (handle vertical component of jumper's jump, load E with Jump State Index and return)
N 55134 Walking Left Flag is set
C 55134,2 Load B with 2 (as Berk and Drutt jump left by two characters)
C 55136,1 Store BC (B = remaining number of characters to move)
C 55137,3 Check jumper for collision with another impassable / pushable entity immediately to the left...
C 55140,2 ...and if a collision has not occurred, then skip ahead to #R55167
C 55142,2 If collision was with an entity of class less than 22 (can be picked up)...
C 55144,2 ...then skip ahead to #R55167
C 55146,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 55148,2 ...then skip ahead to #R55167
C 55150,2 If collision was with entity of class 50 (causes Drutt to swap depth levels)...
C 55152,2 ...then skip ahead to #R55167
C 55154,2 If collision was not with entity of class 159 (Berk floating)...
C 55156,2 ...then skip ahead to #R55183
N 55158 Collision with Berk, floating
C 55158,4 Set Berk's Walking Left, Impassable Leftwards, Impassable Rightwards, Interaction (11,6) and Interaction (11,7) flags and reset his Walking Right and Unused (11,2) and Unused (11,3) flags
C 55162,3 Set Character Swap Pending Flag
C 55165,2 Skip ahead to #R55183
N 55167 No collision, or collision with entity of class 50, 129 or less than 22
C 55167,3 Move jumper into room to the left, if appropriate...
C 55170,2 ...and if jumper can't enter new room then skip ahead to #R55183
C 55172,3 Move jumper left by one character...
C 55175,3 ...
C 55178,1 Restore BC (B = remaining number of characters to move)
C 55179,2 Decrease remaining number of characters to move, and if not zero, loop back to #R55136
C 55181,2 Handle vertical component of jumper's jump, load E with Jump State Index and return
N 55183 Collision with other class of entity
C 55183,1 Restore BC (B = remaining number of characters to move)
C 55184,2 Load E with 5 (jumper has bounced off an obstruction to the left while jumping left)
C 55186,1 Return
c 55187 Set Character Swap Pending Flag
D 55187 Used by the routine at #R55041.
C 55187,3 Set Character Swap Pending Flag...
C 55190,2 ...
C 55192,3 ...
C 55195,1 Return
c 55196 Handle Vertical Component of Character's Jump, and Load E with Jump State Index As Appropriate
D 55196 This routine handles the vertical component of Berk's or Drutt's jumping, checking for collisions (e.g. Berk or Drutt hitting an obstruction above, or Drutt knocking down an entity such as a key). The routine also checks the cached control input value at #R55022 to determine the outcome of the next "bounce" if the jumper is on the floor (for example, start a leftward jump if left was pressed). Input:  IX  Address of complex state data (current level) for Berk or Drutt Output: E  Jump state index (see table in description of routine at #R55041)
C 55196,3 Load A with current velocity of jumper's jump...
C 55199,2 ...
C 55201,4 If Downward Jump Phase Flag is set...
C 55205,2 ...then skip ahead to #R55281
N 55207 Downward Jump Phase Flag is reset, i.e. in upward phase of jump
C 55207,1 If current velocity of jumper's jump is at least one...
C 55208,2 ...then skip ahead to #R55234
N 55210 Current velocity of jumper's jump is zero
C 55210,3 Load A with Cached Control Input...
C 55213,2 ...and if Back Bit is reset...
C 55215,2 ...then skip ahead to #R55223
C 55217,3 Move jumper up one character...
C 55220,3 ...
C 55223,4 Set Downward Jump Phase Flag
C 55227,3 Increase current velocity of jumper's jump if less than 7
C 55230,2 Prepare to set velocity of jumper's jump to one, downwards
C 55232,2 Skip ahead to #R55284 (handle downward phase of jump)
N 55234 Current velocity of jumper's jump is at least 1
C 55234,1 Load B with current velocity of jumper's jump
C 55235,3 Move jumper up one character...
C 55238,3 ...
C 55241,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 55244,2 ...and if no collision occurred, then skip ahead to #R55258
C 55246,2 If collision was not with entity of class 130 (causes Berk and Drutt to bounce off or bang head)...
C 55248,2 ...then skip ahead to #R55258
N 55250 Jumper has banged his head
C 55250,2 Set pending sound index to 6 (banging head) if it is currently zero, or lower priority...
C 55252,3 ...
C 55255,2 Load E with 6 (jumper has banged his head on something above him)
C 55257,1 Return
N 55258 No collision, or collision with entity other than that of class 130
C 55258,2 If collision was with an entity of class of 22 or greater (can't be picked up, or 255 for no collision)...
C 55260,2 ...then skip ahead to #R55270
N 55262 Drutt has knocked down an entity, e.g. Red Sweet on Level 1
C 55262,4 Set initial velocity factor of entity jumper collided with to 2...
C 55266,4 ...and set its "Can Fall" flag
C 55270,3 Change jumper's room up one if appropriate
C 55273,2 Decrease B (remaining number of characters to move up) and loop back to #R55235 if not zero
C 55275,3 Decrease current velocity of jumper's jump, slowing ascent
C 55278,2 Load E with zero (jumper jumping upwards, no collision)
C 55280,1 Return
N 55281 Downward Jump Phase Flag is set, i.e. in downward phase of jump
C 55281,3 Increase current velocity of jumper's jump if less than 7, speeding descent, and load into A
C 55284,1 Load B with velocity of jumper's jump
C 55285,3 Move jumper down one character...
C 55288,3 ...
C 55291,3 Check jumper for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 55294,2 ...and if no collision occurred, then skip ahead to #R55300
C 55296,2 If collision was with an entity of class 35 (platform, Level 1 or Level 3)...
C 55298,2 ...then skip ahead to #R55363
N 55300 No collision, or collision with entity other than that of class 35
C 55300,3 Load A with y-coordinate of jumper's bottom edge...
C 55303,3 ...and add jumper's depth
C 55306,2 If A is 122 (i.e. jumper is at bottom of screen)...
C 55308,2 ...then skip ahead to #R55320
C 55310,2 Decrease B (remaining number of characters to move down) and loop back to #R55285 if not zero
C 55312,1 Store HL
C 55313,3 Change jumper's room down one if appropriate
C 55316,1 Restore HL
C 55317,2 Load E with zero (jumper jumping downwards, no collision)
C 55319,1 Return
N 55320 Jumper is at the bottom of the screen
C 55320,3 Check jumper for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 55323,2 ...and if no collision occurred, then skip ahead to #R55363
C 55325,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 55327,2 ...then skip ahead to #R55334
N 55329 Collision was not with entity of class 129, so need to resume collision check from current position in entities list, i.e. entity that jumper did collide with
C 55329,3 Resume checking jumper for collision with another entity at same depth whose Interaction (11,6) Flag is set
C 55332,2 ...and jump back to #R55323
N 55334 Collision with entity of class 129
C 55334,3 If jumper is not Berk...
C 55337,2 ...(class = 31).....
C 55339,2 ...then jump back to #R55285 (continue moving downwards)
C 55341,3 If Berk's left edge...
C 55344,3 ...is at or to the right of the colliding entity's left edge...
C 55347,2 ...then skip ahead to #R55352
N 55349 Berk's left edge is to the left of colliding entity's left edge
C 55349,2 Load E with 7 (jumper is Berk, his left edge is to the left of colliding, class=129, entity's left edge)
C 55351,1 Return
N 55352 Berk's left edge is at, or to the right of, colliding entity's left edge
C 55352,3 If Berk's right edge...
C 55355,3 ...is at or to the right of the colliding entity's right edge...
C 55358,2 ...then jump back to #R55285 (continue moving downwards)
N 55360 Berk's right edge is to the left of colliding entity's right edge
C 55360,2 Load E with 8 (jumper is Berk, and he is between left and right edges of colliding, class=129, entity)
C 55362,1 Return
N 55363 Downward phase, and collision with entity of class 35 (platform, Level 1 or Level 3) or no collision at bottom of screen
C 55363,4 Reset Downward Jump Phase Flag (i.e. prepare to jump up again)
C 55367,3 Load A with Cached Control Input...
C 55370,2 ...and if Back Bit is reset...
C 55372,2 ...then skip ahead to #R55377
C 55374,2 Load E with 1 (jumper landed on floor / platform and Back Control Input Bit set)
C 55376,1 Return
N 55377 Back Bit is reset
C 55377,3 If current velocity of jumper's jump is at least 4...
C 55380,2 ...
C 55382,2 ...
C 55384,2 ...then skip ahead to #R55393
C 55386,4 Reset jumper's Is Jumping Flag and set current velocity of jump to zero
C 55390,2 Load E with 3 (jumper's jump velocity less than 4, and back not pressed, i.e. terminate jumping)
C 55392,1 Return
N 55393 Current velocity of jumper's jump is at least 4, and Back Bit is reset
C 55393,3 Load A with Cached Control Input...
C 55396,2 ...and if Left Bit is reset...
C 55398,2 ...then skip ahead to #R55404
N 55400 Left Bit is set
C 55400,2 Load E with 4 (jumper's jump velocity at least 4 and Left Control Input Bit set)
C 55402,2 Decrease current velocity of jumper's jump by two and return
N 55404 Left Bit is reset
C 55404,2 If Right Bit is reset...
C 55406,2 ...then skip ahead to #R55417
N 55408 Right Bit is set
C 55408,2 Load E with 5 (jumper's jump velocity at least 4 and Right Control Input Bit set)
C 55410,3 Decrease current velocity of jumper's jump by two...
C 55413,3 ...
C 55416,1 Return
N 55417 Right Bit (and Left and Back bits) reset
C 55417,2 Load E with zero (current velocity of jumper's jump is at least 4 and Back, Left and Right Control Input bits are reset)
C 55419,2 Decrease current velocity of jumper's jump by two and return
c 55421 Increase Current Velocity of Character's Jump if Less Than 7
D 55421 See pokes Input:  IX  Address of complex state data (current level) for Berk or Drutt
C 55421,3 Load A with current velocity of character's jump...
C 55424,2 ...
C 55426,2 ...and if this is 7 or more...
C 55428,1 ...then return
C 55429,3 Increase velocity of character's jump
C 55432,1 Return
c 55433 Change Entity's Room Up One if Appropriate
D 55433 Used by the routines at #R36542, #R48487 and #R55196. Input:  IX  Address of complex state data for an entity
C 55433,2 If y-coordinate of top of entity is larger than 99 (i.e. top of entity is below top of room)...
C 55435,3 ...
C 55438,1 ...then return
C 55439,1 Store HL
C 55440,1 Store BC
C 55441,1 Store DE
C 55442,4 Load start address of current level's Vertical Room Connectivity Data into IY
C 55446,2 Advance by one byte to second byte (lower room index) of first entry
C 55448,3 Load current room of entity into D
C 55451,3 Load second byte (lower room index) of current entry into A
C 55454,2 If byte is 255 (i.e. the End Marker)...
C 55456,2 ...then skip ahead to #R55512
C 55458,1 If byte is the same as the entity's current room...
C 55459,2 ...then skip ahead to #R55467
C 55461,2 Advance by two bytes to the next entry...
C 55463,2 ...
C 55465,2 Loop back to #R55451
C 55467,3 Load first byte (upper room index) of current entry into B
C 55470,3 Load position (chars) of left side of current room (old, that entity is leaving) into D...
C 55473,1 ...
C 55474,3 Set room of entity to B, store room size data for new room and load E with entity's width minus one
C 55477,3 Load position (chars) of left side of current room (new, that entity has entered) into A
C 55480,1 Subtract x-coordinate of old room's left edge from x-coordinate of new room's left edge...
C 55481,1 ...and place result in D
C 55482,3 Load A with x-coordinate of left of entity...
C 55485,1 ...subtract difference in positions of rooms' left edges...
C 55486,3 ...and store
C 55489,1 Update x-coordinate of right of entity by adding entity's (width - 1) value...
C 55490,3 ...
C 55493,3 Add 22 to y-coordinate of top of entity...
C 55496,2 ...
C 55498,3 ...
C 55501,3 Add 22 to y-coordinate of bottom of entity...
C 55504,2 ...
C 55506,3 ...
C 55509,3 Paint red areas outside current character's room if IX points to current character's complex state data
C 55512,1 Restore DE
C 55513,1 Restore BC
C 55514,1 Restore HL
C 55515,1 Return
c 55516 Set Can Fall Flag and Set Initial Velocity Factor of 2 for Entity Defined at Address in IX
D 55516 Used by the routines at #R36638, #R39760, #R48417, #R51779, #R52098, #R52193 and #R52243. Input:  IX  Address of complex state data for an entity
C 55516,4 Set entity's "Can Fall" flag
C 55520,4 Set entity's initial velocity factor to 2
C 55524,1 Return
c 55525 Move All Falling Entities Down by Distances Appropriate to their Current Velocity Factors
D 55525 If an entity's "velocity factor" is equal to its height in characters plus 3 (a proxy for its mass), then it has reached its terminal velocity.
C 55525,4 Load IX with start address of current level's complex state data
C 55529,3 Load DE with 13 (as entries in complex state data are 13 bytes wide)
C 55532,3 If first byte of entry is 255 (i.e. End Marker)...
C 55535,2 ...
C 55537,1 ...then return
C 55538,4 If current entity's "Can Fall" flag is reset...
C 55542,2 ...then skip ahead to #R55592 (advance to next entity)
N 55544 Current entity's "Can Fall" Flag is set
C 55544,1 Store DE
C 55545,3 Store room size data for current entity's current room
C 55548,1 Restore DE
C 55549,3 Load C with height (of entity defined by entry) + 3...
C 55552,3 ...
C 55555,2 ...
C 55557,1 ...
C 55558,3 Load B with velocity factor...
C 55561,1 ...
C 55562,1 If C is less than or equal to this (i.e. "terminal velocity" reached)...
C 55563,2 ...then skip ahead to #R55569
C 55565,1 Increase velocity factor by one and store for next pass (i.e. acceleration)...
C 55566,3 ...
C 55569,2 Divide current (i.e. not increased) velocity factor by 2
C 55571,3 If sum of y-coordinate of entity's bottom and entity's depth is 122...
C 55574,3 ...(i.e. entity is at ground-level)...
C 55577,2 ...
C 55579,2 ...then skip ahead to #R55596
C 55581,3 Move entity down by one character...
C 55584,3 ...
C 55587,3 Change entity's room down one if appropriate
C 55590,2 Decrease B (current velocity factor, i.e. remaining number of characters to drop entity) and if non-zero, loop back to #R55571
C 55592,2 Advance IX by 13 bytes to next entry
C 55594,2 Loop back to #R55532
N 55596 Entity's position is such that sum of y-coordinate of bottom + depth = 122 (i.e. at ground-level)
C 55596,3 Check entity at IX for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 55599,2 ...and if no collision occurred, then skip ahead to #R55610
C 55601,2 If collision was with entity of class 129 (causes other entities to start falling)...
C 55603,2 ...then jump to #R55581 (entity may fall down into next room)
N 55605 Collision was not with entity of class 129, so need to resume collision check from current position in entities list, i.e. entity that character did collide with
C 55605,3 Resume checking entity for collision with another entity at same depth whose Interaction (11,6) Flag is set...
C 55608,2 ...
N 55610 Entity has landed (i.e. is at ground-level and has not collided with a marker of class 129)
C 55610,4 Reset entity's "Can Fall" flag as entity has landed
C 55614,2 Loop back for next entity
c 55616 Change Entity's Room Down One if Appropriate
D 55616 Used by the routines at #R55196 and #R55525. Input:  IX  Address of complex state data for an entity
C 55616,2 If y-coordinate of bottom of entity is smaller than 122 (i.e. bottom of entity is above bottom of room)...
C 55618,3 ...
C 55621,1 ...then return
C 55622,1 Store BC
C 55623,1 Store DE
C 55624,4 Load start address of current level's Vertical Room Connectivity Data into IY
C 55628,3 Load current room of entity into D
C 55631,3 Load first byte (upper room index) of current entry into A
C 55634,2 If byte is 255 (i.e. the End Marker)...
C 55636,2 ...then skip ahead to #R55695
C 55638,1 If byte is the same as the entity's current room...
C 55639,2 ...then skip ahead to #R55647
C 55641,2 Advance by two bytes to the next entry...
C 55643,2 ...
C 55645,2 Loop back to #R55631
C 55647,3 Load second byte (lower room index) of current entry into B
C 55650,3 Load position (chars) of left side of current room (old, that entity is leaving) into D...
C 55653,1 ...
C 55654,3 Set room of entity to B, store room size data for new room and load E with entity's width minus one
C 55657,3 Load position (chars) of left side of current room (new, that entity has entered) into A
C 55660,1 Subtract x-coordinate of old room's left edge from x-coordinate of new room's left edge...
C 55661,1 ...and place result in D
C 55662,3 Load A with x-coordinate of left of entity...
C 55665,1 ...subtract difference in positions of rooms' left edges...
C 55666,3 ...and store
C 55669,1 Update x-coordinate of right of entity by adding entity's (width - 1) value...
C 55670,3 ...
C 55673,3 Subtract 20 from y-coordinate of top of entity...
C 55676,2 ...
C 55678,3 ...
C 55681,3 Subtract 20 from y-coordinate of bottom of entity...
C 55684,2 ...
C 55686,3 ...
C 55689,3 Paint red areas outside current character's room if IX points to current character's complex state data
C 55692,1 Restore DE
C 55693,1 Restore BC
C 55694,1 Return
C 55695,1 Restore DE
C 55696,1 Restore BC
C 55697,1 Return
b 55698 Graphic Layout Data Berk Stepping right, right foot out and forward, arm and eye animated
B 55698,3,3 Process graphic layout data at #R55784 and upon returning, move cursor to base coordinates
B 55701,3,3 Process graphic layout data at #R55765 and upon returning, move cursor to base coordinates
B 55704,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 55707,3,3 Jump to #R55930 (Berk's feet, right foot raised and forward, facing right)
N 55710 Stepping right, right foot out, arm and eye animated
B 55710,3,3 Process graphic layout data at #R55784 and upon returning, move cursor to base coordinates
B 55713,3,3 Process graphic layout data at #R55765 and upon returning, move cursor to base coordinates
B 55716,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 55719,3,3 Jump to #R55896 (Berk's feet, right foot raised and to the side, facing right)
N 55722 Facing right, arm and eye animated
B 55722,3,3 Process graphic layout data at #R55784 and upon returning, move cursor to base coordinates
B 55725,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 55728,3,3 Process graphic layout data at #R56053 and upon returning, move cursor to base coordinates
B 55731,3,3 Jump to #R55765 (Berk's hand, animated, right-facing)
N 55734 Walking right, animated
B 55734,3,3 Process graphic layout data at #R55784 and upon returning, move cursor to base coordinates
B 55737,3,3 Process graphic layout data at #R55743 and upon returning, move cursor to base coordinates
B 55740,3,3 Jump to #R55765 (Berk's hand, animated, right-facing)
N 55743 Lower half of body, walking right, animated
B 55743,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 55746,3,3 Increase current state value n (initially 0), up to maximum of 7, resetting to zero if maximum reached and jump to n-th address in following list (see trivia):
B 55749,2,2 #R55896 (Berk's feet, right foot raised and to the side, facing right)
B 55751,2,2 #R55930 (Berk's feet, right foot raised and forward, facing right)
B 55753,2,2 #R55967 (lower half of body and feet, facing right, right foot forward)
B 55755,2,2 #R56007 (lower half of body and feet, facing right, left foot behind)
B 55757,2,2 #R56053 (lower half of body and feet, facing right, standing)
B 55759,2,2 #R56090 (lower half of body and feet, facing right, left foot forward)
B 55761,2,2 #R56130 (lower half of body and feet, facing right, left foot forward, right foot behind)
B 55763,2,2 #R56167 (lower half of body and feet, facing right, left foot forward, right foot out and behind)
N 55765 Arm, facing right, animated
B 55765,3,3 Increase current state value n (initially 0), up to maximum of 7, resetting to zero if maximum reached and jump to n-th address in following list (see trivia):
B 55768,2,2 #R55825 (arm, facing right, up)
B 55770,2,2 #R55825 (arm, facing right, up)
B 55772,2,2 #R55825 (arm, facing right, up)
B 55774,2,2 #R55825 (arm, facing right, up)
B 55776,2,2 #R55859 (arm, facing right, down)
B 55778,2,2 #R55859 (arm, facing right, down)
B 55780,2,2 #R55859 (arm, facing right, down)
B 55782,2,2 #R55859 (arm, facing right, down)
N 55784 Upper body without arm, facing right, eye animated
B 55784,2,2 Set current graphic set to 2
B 55786,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively and store as new base coordinates
B 55789,8,8 Modify following instruction to display graphic of random index, chosen from 1, 1, 1, 1, 2 and 3
B 55797,27,6*4,3
B 55824,1,1 End Marker
N 55825 Arm, facing right, up
B 55825,3,3 Change cursor's x- and y-coordinates by +1 and +1 characters respectively
B 55828,30,6
B 55858,1,1 End Marker
N 55859 Arm, facing right, down
B 55859,3,3 Change cursor's x- and y-coordinates by +1 and +1 characters respectively
B 55862,33,6*5,3
B 55895,1,1 End Marker
N 55896 Lower half of body and feet, facing right, right foot out
B 55896,33,6*5,3
B 55929,1,1 End Marker
N 55930 Lower half of body and feet, facing right, right foot out and forward
B 55930,36,6
B 55966,1,1 End Marker
N 55967 Lower half of body and feet, facing right, right foot forward
B 55967,39,6*6,3
B 56006,1,1 End Marker
N 56007 Lower half of body and feet, facing right, left foot behind
B 56007,45,6*7,3
B 56052,1,1 End Marker
N 56053 Lower half of body and feet, facing right, standing
B 56053,36,6
B 56089,1,1 End Marker
N 56090 Lower half of body and feet, facing right, left foot forward
B 56090,39,6*6,3
B 56129,1,1 End Marker
N 56130 Lower half of body and feet, facing right, left foot forward, right foot behind
B 56130,36,6
B 56166,1,1 End Marker
N 56167 Lower half of body and feet, facing right, left foot forward, right foot out and behind
B 56167,42,6
B 56209,1,1 End Marker
b 56210 Graphic Layout Data Berk Walking Left Upper body without arm, facing left, eye animated
B 56210,2,2 Set current graphic set to 2
B 56212,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively and store as new base coordinates
B 56215,8,8 Modify following instruction to display graphic of random index, chosen from 1, 1, 1, 1, 2 and 3
B 56223,24,6
B 56247,1,1 End Marker
N 56248 Stepping left, left foot out, arm and eye animated
B 56248,3,3 Process graphic layout data at #R56210 and upon returning, move cursor to base coordinates
B 56251,3,3 Process graphic layout data at #R56303 and upon returning, move cursor to base coordinates
B 56254,3,3 Jump to #R56393 (lower half of body and feet, facing left, left foot out)
N 56257 Stepping left, left foot out and forward, arm and eye animated
B 56257,3,3 Process graphic layout data at #R56210 and upon returning, move cursor to base coordinates
B 56260,3,3 Process graphic layout data at #R56303 and upon returning, move cursor to base coordinates
B 56263,3,3 Jump to #R56430 (lower half of body and feet, facing left, left foot out and forward)
N 56266 Facing left, arm and eye animated
B 56266,3,3 Process graphic layout data at #R56210 and upon returning, move cursor to base coordinates
B 56269,3,3 Process graphic layout data at #R56562 and upon returning, move cursor to base coordinates
B 56272,3,3 Jump to #R56303 (Arm, facing left, animated)
N 56275 Walking left, animated
B 56275,3,3 Process graphic layout data at #R56210 and upon returning, move cursor to base coordinates
B 56278,3,3 Process graphic layout data at #R56284 and upon returning, move cursor to base coordinates
B 56281,3,3 Jump to #R56303 (Arm, facing left, animated)
N 56284 Lower half of body, walking left, animated
B 56284,3,3 Increase current state value n (initially 0), up to maximum of 7, resetting to zero if maximum reached and jump to n-th address in following list (see trivia):
B 56287,2,2 #R56393 (lower half of body and feet, facing left, left foot out)
B 56289,2,2 #R56430 (lower half of body and feet, facing left, left foot out and forward)
B 56291,2,2 #R56470 (lower half of body and feet, facing left, left foot forward)
B 56293,2,2 #R56513 (lower half of body and feet, facing left, right foot behind)
B 56295,2,2 #R56562 (lower half of body and feet, facing left, standing)
B 56297,2,2 #R56602 (lower half of body and feet, facing left, right foot forward)
B 56299,2,2 #R56645 (lower half of body and feet, facing left, right foot forward, left foot behind)
B 56301,2,2 #R56685 (lower half of body and feet, facing left, right foot forward, left foot out and behind)
N 56303 Arm, facing left, animated
B 56303,3,3 Increase current state value n (initially 0), up to maximum of 7, resetting to zero if maximum reached and jump to n-th address in following list (see trivia):
B 56306,2,2 #R56322 (arm, facing left, up)
B 56308,2,2 #R56322 (arm, facing left, up)
B 56310,2,2 #R56322 (arm, facing left, up)
B 56312,2,2 #R56322 (arm, facing left, up)
B 56314,2,2 #R56356 (arm, facing left, down)
B 56316,2,2 #R56356 (arm, facing left, down)
B 56318,2,2 #R56356 (arm, facing left, down)
B 56320,2,2 #R56356 (arm, facing left, down)
N 56322 Arm, facing left, up
B 56322,3,3 Change cursor's x- and y-coordinates by -3 and +1 characters respectively
B 56325,30,6
B 56355,1,1 End Marker
N 56356 Arm, facing left, down
B 56356,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 56359,33,6*5,3
B 56392,1,1 End Marker
N 56393 Lower half of body and feet, facing left, left foot out
B 56393,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 56396,33,6*5,3
B 56429,1,1 End Marker
N 56430 Lower half of body and feet, facing left, left foot out and forward
B 56430,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 56433,36,6
B 56469,1,1 End Marker
N 56470 Lower half of body and feet, facing left, left foot forward
B 56470,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 56473,39,6*6,3
B 56512,1,1 End Marker
N 56513 Lower half of body and feet, facing left, right foot behind
B 56513,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 56516,45,6*7,3
B 56561,1,1 End Marker
N 56562 Lower half of body and feet, facing left, standing
B 56562,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 56565,36,6
B 56601,1,1 End Marker
N 56602 Lower half of body and feet, facing left, right foot forward
B 56602,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 56605,39,6*6,3
B 56644,1,1 End Marker
N 56645 Lower half of body and feet, facing left, right foot forward, left foot behind
B 56645,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 56648,36,6
B 56684,1,1 End Marker
N 56685 Lower half of body and feet, facing left, right foot forward, left foot out and behind
B 56685,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 56688,42,6
B 56730,1,1 End Marker
b 56731 Graphic Layout Data Berk Facing Out of Screen Arms outstretched, animated
B 56731,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 56734,3,3 Process graphic layout data at #R57607 and upon returning, move cursor to base coordinates
B 56737,3,3 Process graphic layout data at #R57638 and upon returning, move cursor to base coordinates
B 56740,3,3 Jump to #R56813
N 56743 Arms raised, eating, animated
B 56743,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 56746,3,3 Process graphic layout data at #R56813 and upon returning, move cursor to base coordinates
B 56749,3,3 Change cursor's x- and y-coordinates by -2 and 0 characters respectively
B 56752,48,6
B 56800,1,1 End Marker
N 56801 With wings, animated
B 56801,3,3 Process graphic layout data at #R58410 and upon returning, move cursor to base coordinates
B 56804,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 56807,3,3 Process graphic layout data at #R57576 and upon returning, move cursor to base coordinates
B 56810,3,3 Process graphic layout data at #R57545 and upon returning, move cursor to base coordinates
B 56813,3,3 Process graphic layout data at #R56838 and upon returning, move cursor to base coordinates
B 56816,3,3 Change cursor's x- and y-coordinates by -2 and +5 characters respectively
B 56819,18,6
B 56837,1,1 End Marker
N 56838 Left foot
B 56838,3,3 Change cursor's x- and y-coordinates by +1 and +5 characters respectively
B 56841,18,6
B 56859,1,1 End Marker
N 56860 Middle of body, facing into screen
B 56860,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively and store as new base coordinates
B 56863,2,2 Set current graphic set to 2
B 56865,12,6
B 56877,3,3 Jump to #R56976
N 56880 Middle of body, facing out of screen, eyes and mouth animated
B 56880,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively and store as new base coordinates
B 56883,2,2 Set current graphic set to 2
B 56885,3,3 If state n (initially 1) has remaining time of zero then reset its time to maximum and randomly select a new state, n, from the 4 in the following list. Jump to the address specified in the current state and decrease its remaining time:
B 56888,4,4 #R56931 (for 10 ticks)
B 56892,4,4 #R56904 (for 5 ticks)
B 56896,4,4 #R56913 (for 5 ticks)
B 56900,4,4 #R56922 (for 3 ticks)
N 56904 Middle of body, facing out of screen, mouth animated, eyes looking to left
B 56904,6,6
B 56910,3,3 Jump to #R56937
N 56913 Middle of body, facing out of screen, mouth animated, eyes looking to right
B 56913,6,6
B 56919,3,3 Jump to #R56937
N 56922 Middle of body, facing out of screen, mouth animated, eyes closed
B 56922,6,6
B 56928,3,3 Jump to #R56937
N 56931 Middle of body, facing out of screen, mouth animated, eyes looking ahead
B 56931,6,6
B 56937,3,3 If state n (initially 1) has remaining time of zero then reset its time to maximum and randomly select a new state, n, from the 3 in the following list. Jump to the address specified in the current state and decrease its remaining time:
B 56940,4,4 #R56952 (for 6 ticks)
B 56944,4,4 #R56970 (for 6 ticks)
B 56948,4,4 #R56961 (for 2 ticks)
N 56952 Middle of body, facing out of screen, mouth 1, no eyes
B 56952,6,6
B 56958,3,3 Jump to #R56976
N 56961 Middle of body, facing out of screen, mouth 2, no eyes
B 56961,6,6
B 56967,3,3 Jump to #R56976
N 56970 Middle of body, facing out of screen, mouth 3, no eyes
B 56970,24,6
B 56994,1,1 End Marker
N 56995 Stepping forward, frame 1, animated
B 56995,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 56998,3,3 Process graphic layout data at #R57607 and upon returning, move cursor to base coordinates
B 57001,3,3 Process graphic layout data at #R57576 and upon returning, move cursor to base coordinates
B 57004,3,3 Process graphic layout data at #R57817 and upon returning, move cursor to base coordinates
B 57007,3,3 Jump to #R56838 (left foot)
N 57010 Stepping forward, frame 2, animated
B 57010,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57013,3,3 Process graphic layout data at #R57607 and upon returning, move cursor to base coordinates
B 57016,3,3 Process graphic layout data at #R57703 and upon returning, move cursor to base coordinates
B 57019,3,3 Process graphic layout data at #R57740 and upon returning, move cursor to base coordinates
B 57022,3,3 Jump to #R57770
N 57025 Stepping forward, frame 3, animated
B 57025,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57028,3,3 Process graphic layout data at #R57545 and upon returning, move cursor to base coordinates
B 57031,3,3 Process graphic layout data at #R57638 and upon returning, move cursor to base coordinates
B 57034,3,3 Process graphic layout data at #R56816 and upon returning, move cursor to base coordinates
B 57037,3,3 Jump to #R57839 (left foot raised and part of lower body, facing towards screen)
N 57040 Stepping forward, frame 4, animated
B 57040,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57043,3,3 Process graphic layout data at #R57669 and upon returning, move cursor to base coordinates
B 57046,3,3 Process graphic layout data at #R57638 and upon returning, move cursor to base coordinates
B 57049,3,3 Process graphic layout data at #R57795 and upon returning, move cursor to base coordinates
B 57052,3,3 Jump to #R57755
N 57055 With wings and holding something, animated
B 57055,3,3 Process graphic layout data at #R58410 and upon returning, move cursor to base coordinates
B 57058,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57061,3,3 Process graphic layout data at #R57118 and upon returning, move cursor to base coordinates
B 57064,3,3 Process graphic layout data at #R56816 and upon returning, move cursor to base coordinates
B 57067,3,3 Jump to #R56838 (left foot)
N 57070 Holding something while stepping forward, frame 1
B 57070,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57073,3,3 Process graphic layout data at #R57118 and upon returning, move cursor to base coordinates
B 57076,3,3 Process graphic layout data at #R57817 and upon returning, move cursor to base coordinates
B 57079,3,3 Jump to #R56838 (left foot)
N 57082 Holding something while stepping forward, frame 2
B 57082,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57085,3,3 Process graphic layout data at #R57118 and upon returning, move cursor to base coordinates
B 57088,3,3 Process graphic layout data at #R57740 and upon returning, move cursor to base coordinates
B 57091,3,3 Jump to #R57770
N 57094 Holding something while stepping forward, frame 3
B 57094,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57097,3,3 Process graphic layout data at #R57118 and upon returning, move cursor to base coordinates
B 57100,3,3 Process graphic layout data at #R56816 and upon returning, move cursor to base coordinates
B 57103,3,3 Jump to #R57839 (left foot raised and part of lower body, facing towards screen)
N 57106 Holding something while stepping forward, frame 4
B 57106,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 57109,3,3 Process graphic layout data at #R57118 and upon returning, move cursor to base coordinates
B 57112,3,3 Process graphic layout data at #R57795 and upon returning, move cursor to base coordinates
B 57115,3,3 Jump to #R57755
N 57118 Arms holding something, variable width
B 57118,1,1 Jump to n-th address in following list where n is the width of the entity currently held by Berk:
B 57119,2,2 #R57127 (arms holding something, width 1)
B 57121,2,2 #R57173 (arms holding something, width 2)
B 57123,2,2 #R57219 (arms holding something, width 3)
B 57125,2,2 #R57274 (arms holding something, width 4)
N 57127 Arms holding something, width 1
B 57127,3,3 Change cursor's x- and y-coordinates by -2 and +1 characters respectively
B 57130,42,6
B 57172,1,1 End Marker
N 57173 Arms holding something, width 2
B 57173,3,3 Change cursor's x- and y-coordinates by -2 and +1 characters respectively
B 57176,42,6
B 57218,1,1 End Marker
N 57219 Arms holding something, width 3
B 57219,3,3 Change cursor's x- and y-coordinates by -3 and +1 characters respectively
B 57222,51,6*8,3
B 57273,1,1 End Marker
N 57274 Arms holding something, width 4
B 57274,3,3 Change cursor's x- and y-coordinates by -3 and +1 characters respectively
B 57277,60,6
B 57337,1,1 End Marker
b 57338 Graphic Layout Data Berk Facing Into Screen Arms out to the sides
B 57338,3,3 Process graphic layout data at #R56860 and upon returning, move cursor to base coordinates
B 57341,3,3 Process graphic layout data at #R57607 and upon returning, move cursor to base coordinates
B 57344,3,3 Process graphic layout data at #R57638 and upon returning, move cursor to base coordinates
B 57347,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57350,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57353 Arms down
B 57353,3,3 Process graphic layout data at #R56860 and upon returning, move cursor to base coordinates
B 57356,3,3 Process graphic layout data at #R57905 and upon returning, move cursor to base coordinates
B 57359,3,3 Process graphic layout data at #R57936 and upon returning, move cursor to base coordinates
B 57362,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57365,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57368 Stepping into screen, frame 1
B 57368,3,3 Process graphic layout data at #R56860 and upon returning, move cursor to base coordinates
B 57371,3,3 Process graphic layout data at #R57669 and upon returning, move cursor to base coordinates
B 57374,3,3 Process graphic layout data at #R57936 and upon returning, move cursor to base coordinates
B 57377,3,3 Process graphic layout data at #R57861 and upon returning, move cursor to base coordinates
B 57380,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57383 Stepping into screen, frame 2
B 57383,3,3 Process graphic layout data at #R56860 and upon returning, move cursor to base coordinates
B 57386,3,3 Process graphic layout data at #R57607 and upon returning, move cursor to base coordinates
B 57389,3,3 Process graphic layout data at #R57967 and upon returning, move cursor to base coordinates
B 57392,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57395,3,3 Jump to #R57752 (left foot and part of lower body, facing towards screen)
N 57398 Stepping into screen, frame 3
B 57398,3,3 Process graphic layout data at #R56860 and upon returning, move cursor to base coordinates
B 57401,3,3 Process graphic layout data at #R57905 and upon returning, move cursor to base coordinates
B 57404,3,3 Process graphic layout data at #R57638 and upon returning, move cursor to base coordinates
B 57407,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57410,3,3 Jump to #R57883 (right foot raised and part of lower body, facing into screen)
N 57413 Stepping into screen, frame 4
B 57413,3,3 Process graphic layout data at #R56860 and upon returning, move cursor to base coordinates
B 57416,3,3 Process graphic layout data at #R58001 and upon returning, move cursor to base coordinates
B 57419,3,3 Process graphic layout data at #R57638 and upon returning, move cursor to base coordinates
B 57422,3,3 Process graphic layout data at #R57737 and upon returning, move cursor to base coordinates
B 57425,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57428 Holding something
B 57428,3,3 Process graphic layout data at #R57473 and upon returning, move cursor to base coordinates
B 57431,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57434,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57437 Holding something while stepping into screen, frame 1
B 57437,3,3 Process graphic layout data at #R57473 and upon returning, move cursor to base coordinates
B 57440,3,3 Process graphic layout data at #R57861 and upon returning, move cursor to base coordinates
B 57443,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57446 Holding something while stepping into screen, frame 2
B 57446,3,3 Process graphic layout data at #R57473 and upon returning, move cursor to base coordinates
B 57449,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57452,3,3 Jump to #R57752 (left foot and part of lower body, facing towards screen)
N 57455 Holding something while stepping into screen, frame 3
B 57455,3,3 Process graphic layout data at #R57473 and upon returning, move cursor to base coordinates
B 57458,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 57461,3,3 Jump to #R57883 (right foot raised and part of lower body, facing into screen)
N 57464 Holding something while stepping into screen, frame 4
B 57464,3,3 Process graphic layout data at #R57473 and upon returning, move cursor to base coordinates
B 57467,3,3 Process graphic layout data at #R57737 and upon returning, move cursor to base coordinates
B 57470,3,3 Jump to #R57767 (right foot and part of lower body, facing into screen)
N 57473 Upper body, holding something
B 57473,2,2 Set current graphic set to 2
B 57475,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively and store as new base coordinates
B 57478,66,6
B 57544,1,1 End Marker
b 57545 Graphic Layout Data Berk Body Parts Right arm
B 57545,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 57548,27,6*4,3
B 57575,1,1 End Marker
N 57576 Left arm
B 57576,3,3 Change cursor's x- and y-coordinates by +2 and +1 characters respectively
B 57579,27,6*4,3
B 57606,1,1 End Marker
N 57607 Right arm raised
B 57607,3,3 Change cursor's x- and y-coordinates by -2 and 0 characters respectively
B 57610,27,6*4,3
B 57637,1,1 End Marker
N 57638 Left arm raised
B 57638,3,3 Change cursor's x- and y-coordinates by +3 and 0 characters respectively
B 57641,27,6*4,3
B 57668,1,1 End Marker
N 57669 Right arm, walking into or out of screen
B 57669,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 57672,30,6
B 57702,1,1 End Marker
N 57703 Left arm, walking into or out of screen
B 57703,3,3 Change cursor's x- and y-coordinates by +2 and +1 characters respectively
B 57706,30,6
B 57736,1,1 End Marker
N 57737 Right foot and part of lower body, facing towards screen
B 57737,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 57740,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 57743,6,6
B 57749,3,3 Jump to #R56819
N 57752 Left foot and part of lower body, facing towards screen
B 57752,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 57755,3,3 Change cursor's x- and y-coordinates by +1 and +4 characters respectively
B 57758,6,6
B 57764,3,3 Jump to #R56841
N 57767 Right foot and part of lower body, facing into screen
B 57767,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 57770,3,3 Change cursor's x- and y-coordinates by +1 and +4 characters respectively
B 57773,18,6
B 57791,1,1 End Marker
N 57792 Left foot and part of lower body, facing into screen
B 57792,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 57795,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 57798,18,6
B 57816,1,1 End Marker
N 57817 Right foot raised and part of lower body, facing towards screen
B 57817,3,3 Change cursor's x- and y-coordinates by -1 and +4 characters respectively
B 57820,18,6
B 57838,1,1 End Marker
N 57839 Left foot raised and part of lower body, facing towards screen
B 57839,3,3 Change cursor's x- and y-coordinates by +1 and +4 characters respectively
B 57842,18,6
B 57860,1,1 End Marker
N 57861 Left foot raised and part of lower body, facing into screen
B 57861,3,3 Change cursor's x- and y-coordinates by -2 and +4 characters respectively
B 57864,18,6
B 57882,1,1 End Marker
N 57883 Right foot raised and part of lower body, facing into screen
B 57883,3,3 Change cursor's x- and y-coordinates by +3 and +4 characters respectively
B 57886,18,6
B 57904,1,1 End Marker
N 57905 Left arm down, facing into screen
B 57905,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 57908,27,6*4,3
B 57935,1,1 End Marker
N 57936 Right arm down, facing into screen
B 57936,3,3 Change cursor's x- and y-coordinates by +2 and +1 characters respectively
B 57939,27,6*4,3
B 57966,1,1 End Marker
N 57967 Right arm raised, facing into screen
B 57967,3,3 Change cursor's x- and y-coordinates by +2 and +1 characters respectively
B 57970,30,6
B 58000,1,1 End Marker
N 58001 Left arm raised, facing into screen
B 58001,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 58004,30,6
B 58034,1,1 End Marker
N 58035 Upper body, pushing to the right
B 58035,2,2 Set current graphic set to 2
B 58037,3,3 Change cursor's x- and y-coordinates by +4 and 0 characters respectively and store as new base coordinates
B 58040,3,3 Change cursor's x- and y-coordinates by +1 and +1 characters respectively
B 58043,6,6 Modify following instruction to display graphic of random index, chosen from 1, 1, 2 and 3
B 58049,27,6*4,3
B 58076,1,1 End Marker
N 58077 Upper body, pushing to the left
B 58077,2,2 Set current graphic set to 2
B 58079,3,3 Change cursor's x- and y-coordinates by +1 and 0 characters respectively and store as new base coordinates
B 58082,3,3 Change cursor's x- and y-coordinates by -1 and +1 characters respectively
B 58085,6,6 Modify following instruction to display graphic of random index, chosen from 1, 1, 2 and 3
B 58091,27,6*4,3
B 58118,1,1 End Marker
b 58119 Graphic Layout Data Berk in Action Facing out of screen, bending down (see bugs)
B 58119,2,2 Set current graphic set to 2
B 58121,3,3 Change cursor's x- and y-coordinates by +1 and +2 characters respectively
B 58124,84,6
B 58208,1,1 End Marker
N 58209 Facing into screen, bending down
B 58209,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively and store as new base coordinates
B 58212,2,2 Set current graphic set to 2
B 58214,3,3 Process graphic layout data at #R57792 and upon returning, move cursor to base coordinates
B 58217,3,3 Process graphic layout data at #R57767 and upon returning, move cursor to base coordinates
B 58220,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 58223,54,6
B 58277,1,1 End Marker
N 58278 Facing into screen, stretching upwards
B 58278,2,2 Set current graphic set to 2
B 58280,3,3 Change cursor's x- and y-coordinates by +1 and -3 characters respectively
B 58283,126,6
B 58409,1,1 End Marker
N 58410 Wings, animated
B 58410,2,2 Set current graphic set to 6
B 58412,3,3 Increase current state value n (initially 0), up to maximum of 2, resetting to zero if maximum reached and jump to n-th address in following list:
B 58415,2,2 #R58419 (wings, raised)
B 58417,2,2 #R58516 (wings, lowered)
N 58419 Wings, raised
B 58419,3,3 Change cursor's x- and y-coordinates by -2 and -2 characters respectively
B 58422,45,6*7,3
B 58467,3,3 Change cursor's x- and y-coordinates by +3 and -5 characters respectively
B 58470,45,6*7,3
B 58515,1,1 End Marker
N 58516 Wings, lowered
B 58516,36,6
B 58552,3,3 Change cursor's x- and y-coordinates by +3 and -3 characters respectively
B 58555,36,6
B 58591,1,1 End Marker
N 58592 Facing right, falling, arms forward
B 58592,2,2 Set current graphic set to 2
B 58594,3,3 Change cursor's x- and y-coordinates by +1 and +2 characters respectively
B 58597,87,6*14,3
B 58684,1,1 End Marker
N 58685 Facing left, falling, arms forward
B 58685,2,2 Set current graphic set to 2
B 58687,3,3 Change cursor's x- and y-coordinates by +1 and +2 characters respectively
B 58690,87,6*14,3
B 58777,1,1 End Marker
N 58778 Facing right, falling, arms to sides
B 58778,2,2 Set current graphic set to 2
B 58780,3,3 Change cursor's x- and y-coordinates by +1 and +2 characters respectively
B 58783,69,6*11,3
B 58852,1,1 End Marker
N 58853 Facing left, falling, arms to sides
B 58853,2,2 Set current graphic set to 2
B 58855,3,3 Change cursor's x- and y-coordinates by +1 and +2 characters respectively
B 58858,69,6*11,3
B 58927,1,1 End Marker
N 58928 Being thrown right
B 58928,2,2 Set current graphic set to 2
B 58930,117,6*19,3
B 59047,1,1 End Marker
N 59048 Being thrown left
B 59048,2,2 Set current graphic set to 2
B 59050,3,3 Change cursor's x- and y-coordinates by +2 and 0 characters respectively
B 59053,78,6
B 59131,2,2 Set Repeat Counter A to 3
B 59133,3,3
B 59136,1,1 Decrement Repeat Counter A and loop back to #R59133 if not zero
B 59137,30,6
B 59167,1,1 End Marker
N 59168 Floating / starting to fall, animated
B 59168,3,3 Process graphic layout data at #R56880 and upon returning, move cursor to base coordinates
B 59171,3,3 Process graphic layout data at #R59223 and upon returning, move cursor to base coordinates
B 59174,3,3 Process graphic layout data at #R59231 and upon returning, move cursor to base coordinates
B 59177,3,3 Change cursor's x- and y-coordinates by -3 and +5 characters respectively
B 59180,42,6
B 59222,1,1 End Marker
N 59223 Right arm, animated
B 59223,2,2 Jump to one of the 3 addresses in the following list, chosen at random:
B 59225,2,2 #R57545 (right arm)
B 59227,2,2 #R57607 (right arm raised)
B 59229,2,2 #R57669 (right arm, walking into or out of screen)
N 59231 Right arm, animated
B 59231,2,2 Jump to one of the 3 addresses in the following list, chosen at random:
B 59233,2,2 #R57576 (left arm)
B 59235,2,2 #R57638 (left arm raised)
B 59237,2,2 #R57703 (left arm, walking into or out of screen)
N 59239 Falling downwards
B 59239,2,2 Set current graphic set to 2
B 59241,3,3 Change cursor's x- and y-coordinates by 0 and +2 characters respectively
B 59244,3,3 Process graphic layout data at #R57610 and upon returning, move cursor to base coordinates
B 59247,3,3 Change cursor's x- and y-coordinates by +5 and +2 characters respectively
B 59250,3,3 Process graphic layout data at #R57641 and upon returning, move cursor to base coordinates
B 59253,3,3 Change cursor's x- and y-coordinates by +2 and +2 characters respectively
B 59256,54,6
B 59310,1,1 End Marker
N 59311 Lying on floor, animated
B 59311,2,2 Set current graphic set to 2
B 59313,3,3 Change cursor's x- and y-coordinates by +2 and +6 characters respectively
B 59316,3,3 Process graphic layout data at #R59367 and upon returning, move cursor to base coordinates
B 59319,3,3 Change cursor's x- and y-coordinates by 0 and +5 characters respectively
B 59322,18,6
B 59340,4,4 Modify following instruction to display graphic of random index, chosen from 210 and 211
B 59344,15,6*2,3
B 59359,4,4 Modify following instruction to display graphic of random index, chosen from 210 and 211
B 59363,3,3
B 59366,1,1 End Marker
N 59367 Stunned eyes, animated
B 59367,2,2 Set Repeat Counter A to 2
B 59369,6,6 Modify following instruction to display graphic of random index, chosen from 91, 92, 214 and 215
B 59375,3,3
B 59378,1,1 Decrement Repeat Counter A and loop back to #R59375 if not zero
B 59379,1,1 End Marker
N 59380 Getting up, frame 1, animated
B 59380,2,2 Set current graphic set to 2
B 59382,3,3 Change cursor's x- and y-coordinates by +2 and +4 characters respectively
B 59385,3,3 Process graphic layout data at #R59367 and upon returning, move cursor to base coordinates
B 59388,3,3 Change cursor's x- and y-coordinates by +2 and +3 characters respectively
B 59391,72,6
B 59463,1,1 End Marker
N 59464 Getting up, frame 2 / banging head
B 59464,2,2 Set current graphic set to 2
B 59466,3,3 Change cursor's x- and y-coordinates by 0 and +1 characters respectively
B 59469,3,3 Process graphic layout data at #R57610 and upon returning, move cursor to base coordinates
B 59472,3,3 Change cursor's x- and y-coordinates by +5 and +1 characters respectively
B 59475,3,3 Process graphic layout data at #R57641 and upon returning, move cursor to base coordinates
B 59478,3,3 Change cursor's x- and y-coordinates by +2 and +1 characters respectively
B 59481,60,6
B 59541,1,1 End Marker
b 59542 Unused
B 59542,1,1
c 59543 Unused routine
D 59543 This routine appears to have been set up to load visual data into the Display and Attribute files and then to load the game code and data into RAM, from address #R27000 onwards. This routine was probably used during development. Input:  A  New value for system variable DF SZ
C 59543,3 Set System Variable DF SZ to value in A
C 59546,3 Set data length to 6912
C 59549,4 Set base address for load to 40000
C 59553,2 Load A with 255 to denote a data block
C 59555,1 Set Carry Flag as we are LOADing, not VERIFYing
C 59556,3 Call ROM routine to load game data
C 59559,3 Copy data just loaded to Display File / Attribute File...
C 59562,3 ...
C 59565,3 ...
C 59568,2 ...
C 59570,3 Set data length to 32860
C 59573,4 Set base address for load to 27000
C 59577,2 Load A with 255 to denote a data block
C 59579,1 Set Carry Flag as we are LOADing, not VERIFYing
C 59580,3 Call ROM routine to load game data
C 59583,3 Jump to code entry point
b 59586 Unused
B 59586,15,8,7
c 59601 If Current Character is in Same Room as Target Entity at IX then Set Pending Sound to A
D 59601 If the requested sound has a lower index than the sound already pending then the requested sound overrides the pending sound (i.e. lower index has higher priority). Input:  A  Index of requested sound IX  Address of complex state data for target entity
C 59601,1 Store AF (A = index of requested sound)
C 59602,3 If current character's current room is the same as current room of target entity...
C 59605,3 ...
C 59608,2 ...then skip ahead to #R59612
C 59610,1 Restore AF (A = index of requested sound)
C 59611,1 Return
C 59612,1 Restore AF (A = index of requested sound)
N 59613 At this point, A will hold the index of a requested sound, and RAM address #R34273 will contain the index of a pending sound. If the index of the requested sound is lower than the index of the pending sound, then the pending sound's index at #R34273 will be overwritten by the index of the requested sound in A. Sounds with lower indices therefore take priority over sounds with higher indices. This entry point is used by the routines at #R46284, #R55196 and #R59722.
C 59613,1 If index of requested sound is zero...
C 59614,1 ...then return
C 59615,1 Store DE
C 59616,1 Load E with index of requested sound
C 59617,3 Load index of pending sound into A...
C 59620,1 ...and if this is zero (i.e. no sound pending)...
C 59621,2 ...then skip ahead to #R59628
C 59623,1 If index of requested sound is less than or equal to index of pending sound...
C 59624,2 ...then skip ahead to #R59628
C 59626,1 Restore DE
C 59627,1 Return
C 59628,1 Set requested sound to be new pending sound...
C 59629,3 ...
C 59632,1 Restore DE
C 59633,1 Return
b 59634 Table of Sound Parameters
D 59634 #TABLE(default,centre,:w) { =h Offset | =h Meaning } { 0 | Index (unused) } { 1 | Outer repeat counter } { 2 | Inner repeat counter } { 3 | Delay constant (controls speed, higher value is slower) } { 4 | Delay constant (controls speed / pitch, higher value is slower / lower) } { 5 | Increment for delay constant D } { 6 | Increment for delay constant E } { 7 | Most significant byte of pseudo-random address plus No Pause Flag } TABLE#
B 59634,8,8 (01) - Out of time
B 59642,8,8 (02) - Main Menu sound (three blips)
B 59650,8,8 (03) - Unused
B 59658,8,8 (04) - Explosion
B 59666,8,8 (05) - Berk landing
B 59674,8,8 (06) - Berk/Drutt banging head on ceiling
B 59682,8,8 (07) - Spider sound
B 59690,8,8 (08) - Drutt eating a worm
B 59698,8,8 (09) - Drutt hopping
B 59706,8,8 (10) - Unused
B 59714,8,8 (11) - Unused
c 59722 Set Sound of Index A as Pending if Appropriate, then Play and Clear Pending Sound
D 59722 The sound with index A will become the pending sound if the currently pending sound index is either zero, or of higher index than A (i.e. lower priority). Input:  A  Sound index L  Undefined, pseudo-random value
C 59722,3 Set pending sound index to A if it is currently zero, or lower priority
N 59725 This entry point is used by the routine at #R34438.
C 59725,3 Load index of pending sound into A...
C 59728,1 ...and if this is zero...
C 59729,1 ...then return
C 59730,1 Decrease A to give zero-based sound index
C 59731,2 Store IX
C 59733,4 Point IX at second byte of first entry in Sound Parameters Table
C 59737,1 Multiply sound index by eight...
C 59738,1 ...as sound data entries in table at #R59634 are eight bytes wide...
C 59739,1 ...
C 59740,1 ...and load into BC...
C 59741,2 ...
C 59743,2 Add BC to IX as offset to point to sound data for pending sound
C 59745,1 Set index of pending sound to zero...
C 59746,3 ...
C 59749,3 Load outer repeat count into C
C 59752,3 Load inner repeat count into B
C 59755,3 Load delay constant E into E
C 59758,3 Load delay constant D into D
C 59761,3 Load most significant byte of pseudo-random address into H
C 59764,1 Store BC (B = inner repeat count, C = outer repeat count)
C 59765,3 Load current border colour into A
C 59768,2 Set Speaker Bit
C 59770,2 Write Speaker Bit and border colour to Port 254
C 59772,1 Apply delay based upon delay constant D...
C 59773,1 ...
C 59774,2 ...
C 59776,2 If No Pause Flag is set...
C 59778,2 ...then skip ahead to #R59794
C 59780,1 Load B with value from pseudo-random address
C 59781,1 Advance HL
C 59782,4 Do nothing (pause) for period B...
C 59786,1 ...
C 59787,1 ...
C 59788,1 ...
C 59789,1 ...
C 59790,1 ...
C 59791,1 ...
C 59792,2 ...
C 59794,2 Reset Speaker Bit
C 59796,2 Write Speaker Bit and border colour to Port 254
C 59798,1 Do nothing for E cycles...
C 59799,1 ...
C 59800,2 ...
C 59802,3 Adjust value of delay constant D...
C 59805,1 ...
C 59806,1 ...
C 59807,3 Adjust value of delay constant E...
C 59810,1 ...
C 59811,1 ...
C 59812,1 Restore BC (B = inner repeat count, C = outer repeat count)
C 59813,2 Loop back to #R59764
C 59815,1 Decrease outer repeat count
C 59816,2 If non-zero (i.e. more repeats to process) then loop back to #R59752
C 59818,2 Restore IX
C 59820,1 Return
b 59821 Table of Initial-State Data for Complex Entities
D 59821 This table is used to store the initial states of the various entities in the game, so that they can be reset when a new game is started.
B 59821,10,10
c 59831 Do nothing
D 59831 Used by the routine at #R34428
C 59831,1 Return
s 59832 Unused
S 59832,1480,1480
b 61312 Display Buffer 1
D 61312 Three bytes per entry, 32 x 22 entries, one for each cell of Attribute File within play area. Bytes are in order:
B 61312,1688,96*17,56
c 63000 Load loading screen and main game code The following instructions set the system variable DF SZ to zero. This prevents a press of the break key returning us to basic while the game is loading.
C 63000,1 Set system variable DF SZ to zero
C 63004,3 Load loading screen to 40000 and copy into Display File
C 63028,3 Load 32860 bytes to 27000
C 63041,3 Jump to start-up code
s 63044 The remaining display buffer #1 bytes
B 63044,380,92,96
b 63424 Display Buffer 2
D 63424 Three bytes per entry, 32 x 22 entries, one for each cell of Attribute File within play area. Bytes are in order:
B 63424,2112,96
