> $4000 ; SkoolKit disassembly for Chaos - The Battle of Wizards
> $4000 ;
> $4000 ; Copyright (c) 1985 Games Workshop
> $4000 ;
> $4000 ; Disassembly by UsuallyDavid (https://szeliga.zapto.org/stuff/Chaos/UsuallyDavid/chaos.skool)
> $4000 @start=$7D00
> $4000 @org=$4000
b $4000 Title screen
D $4000 #UDGTABLE { #SCR(loading) | CHAOS title screen. } TABLE#
@ $4000 label=DISPLAY_FILE
B $4000,6912,32
b $5B00 Data block at 5B00
B $5B00,8704,8
c $7D00 Entrypoint
D $7D00 Simply jumps to #R$89F9.
@ $7D00 label=ENTRYPOINT
b $7D03 Variable - Round counter
@ $7D03 label=ROUND_COUNTER
B $7D03,1,1
c $7D04 Routine at 7D04
D $7D04 Used by the routine at #R$95C7.
@ $7D04 label=ROUTINE_7D04
C $7D04,6 If the round counter < 6, return. TODO Why?
C $7D0A,6 Set the target location to the top left space in table 1.
C $7D10,2 Going to loop for every space in the arena.
C $7D13,1 A = object at the target location.
C $7D14,5 If A < 2 jump to #R$7D3B.
C $7D19,5 If A >= $22 (gooey blob and up) jump to #R$7D3B.
C $7D1E,4 HL = HL + $0281, so that it's pointing at the equivalent location in table 5 (see #R$E2A0).
C $7D22,1 A = data from table 5
C $7D23,2 Subtract $29 to convert from a wizard's "creature ID" to the player ID. (First wizard has ID 0 and creature ID $29, etc. See #R$E3E0.)
C $7D25,3 HL = memory address of current wizard ID
C $7D28,3 If A == current wizard ID jump to #R$7D3B.
C $7D2B,3 HL = target location
C $7D2E,4 HL = HL + $01E1, so that it's pointing at the equivalent location in table 4 (see #R$E200).
C $7D32,1 A = data from table 4
C $7D33,2 AND 7 - i.e. reset all but the three least significant bits. This is because table 4 contains information in those other bits that isn't relevant right now.
C $7D35,6 If A == current wizard ID (i.e. the creature we're looking at is owned by the current wizard), jump to #R$7D52.
C $7D3C,7 Increase #R$AC12 by 1, moving on to the next arena space.
C $7D43,2 If we still have spaces to look at, jump back to #R$7D12.
C $7D45,12 Set the wizard's status value in the small table at #R$AC1E to $14 (20 in decimal). TODO Why?
C $7D53,12 Set the wizard's status value in the small table at #R$AC1E to 0. TODO Why?
b $7D60 Table - spells
D $7D60 This holds the information for all of the spells in the game. TODO Why are some of the addresses in here different from the ID that is stored when the user selects the spell?
D $7D60 #LIST(data) { ID: The spell's ID. } { Casting chance. 0 is 10%, 9 is 100%. } { The max cast distance, times two then plus 1. Stored like this for use in calculating diagonal distances. } { Effect on the chaos/law indicator. This is in two's complement for negative values. Positive is lawful and negative is chaotic. } { TODO: Unknown. Saved into the wizard's spell inventory alongside the spell ID. } { The last two values are the address of the routine to call when casting the spell, swapped around. } LIST#
D $7D60 #TABLE(default,centre) { =h ID | =h Casting Chance | =h Distance * 2 | =h Chaos/law | =h Unknown | =h Routine } #FOR(0,64)//n/ { #PEEK($7D60+n*$7) | #PEEK($7D60+n*$7+1) | #PEEK($7D60+n*$7+2) | #PEEK($7D60+n*$7+3) | #PEEK($7D60+n*$7+4) | } // TABLE#
@ $7D60 label=TABLE_SPELLS
B $7D60,7,7 1:  $01 #R$99F1 Disbelieve
B $7D67,7,7 2:  $02 #R$9975 King Cobra
B $7D6E,7,7 3:  $03 #R$9975 Dire Wolf
B $7D75,7,7 4:  $04 #R$9975 Goblin
B $7D7C,7,7 5:  $05 #R$9975 Crocodile
B $7D83,7,7 6:  $06 #R$9975 Faun
B $7D8A,7,7 7:  $07 #R$9975 Lion
B $7D91,7,7 8:  $08 #R$9975 Elf
B $7D98,7,7 9:  $09 #R$9975 Orc
B $7D9F,7,7 10: $0A #R$9975 Bear
B $7DA6,7,7 11: $0B #R$9975 Gorilla
B $7DAD,7,7 12: $0C #R$9975 Ogre
B $7DB4,7,7 13: $0D #R$9975 Hydra
B $7DBB,7,7 14: $0E #R$9975 Giant Rat
B $7DC2,7,7 15: $0F #R$9975 Giant
B $7DC9,7,7 16: $10 #R$9975 Horse
B $7DD0,7,7 17: $11 #R$9975 Unicorn
B $7DD7,7,7 18: $12 #R$9975 Centaur
B $7DDE,7,7 19: $13 #R$9975 Pegasus
B $7DE5,7,7 20: $14 #R$9975 Gryphon
B $7DEC,7,7 21: $15 #R$9975 Manticore
B $7DF3,7,7 22: $16 #R$9975 Bat
B $7DFA,7,7 23: $17 #R$9975 Green Dragon
B $7E01,7,7 24: $18 #R$9975 Red Dragon
B $7E08,7,7 25: $19 #R$9975 Golden Dragon
B $7E0F,7,7 26: $1A #R$9975 Harpy
B $7E16,7,7 27: $1B #R$9975 Eagle
B $7E1D,7,7 28: $1C #R$9975 Vampire
B $7E24,7,7 29: $1D #R$9975 Ghost
B $7E2B,7,7 30: $1E #R$9975 Spectre
B $7E32,7,7 31: $1F #R$9975 Wraith
B $7E39,7,7 32: $20 #R$9975 Skeleton
B $7E40,7,7 33: $21 #R$9975 Zombie
B $7E47,7,7 34: $22 #R$9975 Gooey Blob
B $7E4E,7,7 35: $23 #R$9975 Magic Fire
B $7E55,7,7 36: $24 #R$9ADD Magic Wood
B $7E5C,7,7 37: $25 #R$9ADD Shadow Wood
B $7E63,7,7 38: $26 #R$9ADD Magic Castle
B $7E6A,7,7 39: $27 #R$9ADD Dark Citadel
B $7E71,7,7 40: $28 #R$9B76 Wall
B $7E78,7,7 41: $29 #R$9C59 Magic Bolt
B $7E7F,7,7 42: $2A #R$9C59 Magic Bolt
B $7E86,7,7 43: $2B #R$9C59 Lightning
B $7E8D,7,7 44: $2C #R$9C59 Lightning
B $7E94,7,7 45: $2D #R$9DE0 Vengeance
B $7E9B,7,7 46: $2E #R$9DE0 Decree
B $7EA2,7,7 47: $2F #R$9DE0 Dark Power
B $7EA9,7,7 48: $30 #R$9DE0 Justice
B $7EB0,7,7 49: $31 #R$8404 Magic Shield
B $7EB7,7,7 50: $32 #R$836A Magic Armour
B $7EBE,7,7 51: $33 #R$839C Magic Sword
B $7EC5,7,7 52: $34 #R$83D0 Magic Knife
B $7ECC,7,7 53: $35 #R$846A Magic Bow
B $7ED3,7,7 54: $36 #R$8438 Magic Wings
B $7EDA,7,7 55: $37 #R$84B0 Law-1
B $7EE1,7,7 56: $38 #R$84B0 Law-2
B $7EE8,7,7 57: $39 #R$84B0 Chaos-1
B $7EEF,7,7 58: $3A #R$84B0 Chaos-2
B $7EF6,7,7 59: $3B #R$84C0 Shadow Form
B $7EFD,7,7 60: $3C #R$84F7 Subversion
B $7F04,7,7 61: $3D #R$84F7 Subversion
B $7F0B,7,7 62: $3E #R$85F6 Raise Dead
B $7F12,7,7 63: $3F #R$85F6 Raise Dead
B $7F19,7,7 #R$86EF Turmoil
B $7F20,7,7 #R$86EF Turmoil
b $7F27 Graphics - select cursor
D $7F27 #HTML(#UDGARRAY2;$7F27-$7F3F-8(cursorselect.png))
@ $7F27 label=GRAPHICS_SELECT_CURSOR
B $7F27,32,8
b $7F47 Table - Wizard spell inventories
D $7F47 Contains the set of spells assigned to a wizard at the start of the game. They're arranged in two bytes - the purpose of the first byte is unknown, but the second byte is the spell ID. (TODO: investigate first byte) As the spell is cast, the byte representing the spell ID is set to 0.
@ $7F47 label=TABLE_WIZARD_SPELL_INVENTORIES
B $7F47,361,10*36,1
b $80B0 Graphics - wizard - magic sword
D $80B0 #HTML(#FOR(0,2)//n/ #UDGARRAY2;($80B0+n*$20)-(($80B0+n*$20)+$18)-8(magic_swordn*.png) //)
@ $80B0 label=GRAPHICS_WIZ_SWORD
B $80B0,96,8
b $8110 Graphics - wizard - magic knife
D $8110 #HTML(#FOR(0,2)//n/ #UDGARRAY2;($8110+n*$20)-(($8110+n*$20)+$18)-8(magic_knifen*.png) //)
@ $8110 label=GRAPHICS_WIZ_KNIFE
B $8110,96,8
b $8170 Graphics - wizard - magic armour
D $8170 #HTML(#UDGARRAY2;$8170-$8188-8(magic_armour.png))
@ $8170 label=GRAPHICS_WIZ_ARMOUR
B $8170,32,8
b $8190 Graphics - wizard - magic shield
D $8190 #HTML(#UDGARRAY2;$8190-$81A8-8(magic_shieldn*.png))
@ $8190 label=GRAPHICS_WIZ_SHIELD
B $8190,32,8
b $81B0 Graphics - wizard - magic wings
D $81B0 #HTML(#FOR(0,2)//n/ #UDGARRAY2;($81B0+n*$20)-(($81B0+n*$20)+$18)-8(magic_wingsn*.png) //)
@ $81B0 label=GRAPHICS_WIZ_WINGS
B $81B0,96,8
b $8210 Graphics - wizard - magic bow
D $8210 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($8210+n*$20)-(($8210+n*$20)+$18)-8(magic_bown*.png) //)
@ $8210 label=GRAPHICS_WIZ_BOW
B $8210,128,8
b $8290 Graphics data for a wizard with a sword
@ $8290 label=GRAPHICS_DATA_WIZ_SWORD
B $8290,8,8 #R$80B0
b $8298 Graphics data for a wizard with a knife
@ $8298 label=GRAPHICS_DATA_WIZ_KNIFE
B $8298,8,8 #R$8110
b $82A0 Graphics data for a wizard with magic armour
@ $82A0 label=GRAPHICS_DATA_WIZ_ARMOUR
B $82A0,8,8 #R$8170
b $82A8 Graphics data for a wizard with a magic shield
@ $82A8 label=GRAPHICS_DATA_WIZ_SHIELD
B $82A8,8,8 #R$8190
b $82B0 Graphics data for a wizard with magic wings
@ $82B0 label=GRAPHICS_DATA_WIZ_WINGS
B $82B0,8,8 #R$81B0
b $82B8 Graphics data for a wizard with bow
@ $82B8 label=GRAPHICS_DATA_WIZ_BOW
B $82B8,8,8 #R$8210
b $82C0 Table - Defines the graphics data for wizards.
@ $82C0 label=TABLE_WIZ_GRAPHICS
B $82C0,8,8 #R$FD34 Wizard 1
B $82C8,8,8 #R$FD54 Wizard 2
B $82D0,8,8 #R$FD74 Wizard 3
B $82D8,8,8 #R$FD94 Wizard 4
B $82E0,8,8 #R$FDB4 Wizard 5
B $82E8,8,8 #R$FDD4 Wizard 6
B $82F0,8,8 #R$FDF4 Wizard 7
B $82F8,8,8 #R$FE14 Wizard 8
c $8300 Load current wizard details.
D $8300 Afterwards #R$89AA will contain the memory address at which the current wizard's name can be found, and #R$8321 will contain the memory address of the wizard's graphics.
D $8300 Used by the routines at #R$8324, #R$846A, #R$84C0 and #R$89F9.
@ $8300 label=LOAD_CURRENT_WIZARD_DETAILS
C $8301,3 Load the current player number from #R$AC0E into A.
C $8304,7 Get the offset from which we can get the current wizard's information from the table at #R$E3E0, and store it in BC. We add 40 to the player number and double it using SLA (we double it because that table has two bytes for each entry).
C $830B,4 Add the offset that was just calculated to the start address of the #R$E3E0 table to get the address at which the current wizard's name can be found. This is then stored in HL.
C $830F,3 Load DE with the contents at the memory address we just found, i.e. the address at which we can find the current wizard's name.
C $8312,1 Swap DE and HL. HL now contains the address at which the current wizard's name can be found.
C $8313,3 Set DE to 23 (because the graphics data is 23 bytes after the start of the wizard name).
C $8316,3 Store the memory address for the wizard's name into #R$89AA.
C $8319,4 Calculate the start of the wizard's graphics data and store it in #R$8321.
b $831F Pointer - graphics data to apply to a wizard
D $831F Will contain one of the addresses in the table starting at #R$8290. Mostly used in routine #R$8324, and at the start of a game when choosing the wizard graphics (#R$8C29).
@ $831F label=NEW_WIZ_GRAPHICS_POINTER
B $831F,2,2
b $8321 Pointer - address of the current wizard's graphics data.
D $8321 Populated in #R$8300.
@ $8321 label=CURRENT_WIZ_GRAPHICS_POINTER
B $8321,2,2
b $8323 Flag - Is number key input limited to 2 to 8.
D $8323 1 if the routine at #R$89B0 should stop the user selecting the value 1.
@ $8323 label=PRESS_2_TO_8_FLAG
B $8323,1,1
c $8324 Change wizard graphics.
D $8324 Required variables: #R$831F (and the next byte) should contain the address of the graphics data to apply, and #R$8321 (and the next byte) will contain the start address of the wizard's graphics data.
D $8324 An example of the wizard graphics settings we'll overwrite is at #R$EA50. Four sets of three bytes, consisting of: two bytes indicating the memory address of the graphics to use; then one byte indicating the paper and ink colour (which is chosen during game setup).
D $8324 Used by the routines at #R$836A, #R$839C, #R$83D0, #R$8404, #R$8438, #R$846A and #R$89F9.
@ $8324 label=CHANGE_WIZARD_GRAPHICS
C $8324,3 Load current wizard details.
C $8327,3 Going to loop four times...
C $832A,3 And two loops within that...
C $832D,3 Load the address of the graphics data to apply from #R$831F into HL.
c $834B Load the current wizard's status.
D $834B Used by the routines at #R$836A, #R$839C, #R$83D0, #R$8404, #R$8438 and #R$84C0.
R $834B Output:A The current wizard's status mask.
R $834B HL The memory location at which the current wizard's status mask can be found.
@ $834B label=LOAD_CURRENT_WIZARD_STATUS
C $834B,3 Load the current player number from #R$AC0E into A.
C $834E,3 Set DE to the current player number.
C $8351,3 #R$AC16 is the address that stores the wizard status flags. Load that address into HL.
C $8354,1 Adds DE to HL and stores the result in HL. This gives us the memory address of the current wizard's status.
C $8355,1 Load the contents of HL into A.
c $8357 Cast wizard buff spell, e.g magic items, wings, shadow form
D $8357 Used by the routines at #R$836A, #R$839C, #R$83D0, #R$8404, #R$8438,#R$846A and #R$84C0.
@ $8357 label=CAST_WIZARD_BUFF_SPELL
C $8357,6 If the current wizard is player controlled jump to #R$8360.
c $836A Cast Magic Armour
@ $836A label=CAST_MAGIC_ARMOUR
C $836A,6 If the current wizard is player controlled jump to #R$837D.
C $8370,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $8373,4 Check the 128 bit of the wizard status. If it's set, the wizard already has magic armour, and we fall through. Otherwise jump to #R$837D.
C $8377,5 Record that the spell was not cast.
C $8380,6 If the spell failed (see #R$9167) jump to #R$8395.
C $8386,6 Load #R$831F with the graphics data for the magic armour (see table at #R$8290).
C $838C,3 Change the current wizard's graphics.
C $838F,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $8398,3 Display the spell succeeds/fails message.
c $839C Cast Magic Sword
@ $839C label=CAST_MAGIC_SWORD
C $839C,6 If the current wizard is player controlled jump to #R$83AF.
C $83A2,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $83A5,4 Check the 4 bit of the wizard status. If it's set, the wizard already has a magic sword, and we fall through. Otherwise jump to #R$83AF.
C $83A9,5 Record that the spell was not cast.
C $83B2,6 If the spell failed (see #R$9167) jump to #R$83C9.
C $83B8,6 Load #R$831F with the graphics data for the magic sword (see table at #R$8290).
C $83BE,3 Change the current wizard's graphics.
C $83C1,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $83CC,3 Display the spell succeeds/fails message.
c $83D0 Cast Magic Knife
@ $83D0 label=CAST_MAGIC_KNIFE
C $83D0,6 If the current wizard is player controlled jump to #R$83E3.
C $83D6,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $83D9,4 Check the 4,2 and 1 bits of the wizard status. If they're set, the wizard already has a magic knife, and we fall through. Otherwise jump to #R$83E3.
C $83DD,5 Record that the spell was not cast.
C $83E6,6 If the spell failed (see #R$9167) jump to #R$83FD.
C $83EC,6 Load #R$831F with the graphics data for the magic knife (see table at #R$8290).
C $83F2,3 Change the current wizard's graphics.
C $83F5,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $8400,3 Display the spell succeeds/fails message.
c $8404 Cast Magic Shield
@ $8404 label=CAST_MAGIC_SHIELD
C $8404,6 If the current wizard is player controlled jump to #R$8417.
C $840A,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $840D,4 Check the 64 bit of the wizard status. If it's set, the wizard already has a magic shield, and we fall through. Otherwise jump to #R$8417.
C $8411,5 Record that the spell was not cast.
C $841A,6 If the spell failed (see #R$9167) jump to #R$8431.
C $8420,6 Load #R$831F with the graphics data for the magic shield (see table at #R$8290).
C $8426,3 Change the current wizard's graphics.
C $8429,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $8434,3 Display the spell succeeds/fails message.
c $8438 Cast Magic Wings
@ $8438 label=CAST_MAGIC_WINGS
C $8438,6 If the current wizard is player controlled jump to #R$844B.
C $843E,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $8441,4 Check the 32 bit of the wizard status. If it's set, the wizard already has magic wings, and we fall through. Otherwise jump to #R$844B.
C $8445,5 Record that the spell was not cast.
C $844E,6 If the spell failed (see #R$9167) jump to #R$8463.
C $8454,6 Load #R$831F with the graphics data for the magic wings (see table at #R$8290).
C $845A,3 Change the current wizard's graphics.
C $845D,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $8466,3 Display the spell succeeds/fails message.
c $846A Cast Magic Bow
@ $846A label=CAST_MAGIC_BOW
C $846A,6 If the current wizard is player controlled jump to #R$8486.
C $8470,3 Load current wizard details.
C $8480,5 Record that the spell was not cast.
C $8489,6 If the spell failed (see #R$9167) jump to #R$84A9.
C $848F,6 Load #R$831F with the graphics data for the magic bow (see table at #R$8290).
C $8495,3 Change the current wizard's graphics.
C $8498,3 Load current wizard details.
C $84AC,3 Display the spell succeeds/fails message.
c $84B0 Cast Chaos/Law
@ $84B0 label=CAST_CHAOS_OR_LAW
C $84B0,6 If the current wizard is player controlled jump to #R$84B9.
C $84BC,3 Display the spell succeeds/fails message.
c $84C0 Cast Shadow Form
@ $84C0 label=CAST_SHADOW_FORM
C $84C0,6 If the current wizard is player controlled jump to #R$84D3.
C $84C6,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
C $84CD,5 Record that the spell was not cast.
C $84D6,3 Display the spell succeeds/fails message.
C $84D9,5 If the spell failed (see #R$9167), return.
C $84DE,3 Load current wizard details.
C $84F0,3 Load the wizard's status. Afterwards, A will contain the current wizard's status mask, and HL will contain the memory location at which that status mask can be found.
c $84F7 Cast Subversion
@ $84F7 label=CAST_SUBVERSION
C $84F7,6 If the current wizard is computer controlled jump to #R$853B.
C $84FD,3 Clear the message bar.
C $8505,3 User key input.
C $8508,3 Keyboard ROM subroutine.
C $850B,4 If the user pressed S jump to #R$851B.
C $850F,4 If the user pressed anything other than K jump back to #R$8505.
C $8513,8 The user pressed K. Play a sound effect, enable interrupts and return.
C $851B,3 Get the value in board state table 5 representing the spot at which the cursor is pointing. TODO - what does table 5 represent though?
C $851E,2 If it's not 0, jump back to the start.
C $8520,4 A = ID of the target object.
C $8524,8 If A == 0, or A >= $22 (i.e. not a creature that can be subverted) jump back to #R$8505.
C $855E,5 Record that the spell was not cast.
c $859C Routine at 859C
D $859C Used by the routine at #R$84F7.
@ $859C label=ROUTINE_859C
C $859C,6 If the current wizard is player controlled jump to #R$85A5.
C $85B7,5 A = the creature's magic resistance.
C $85CF,3 Display the spell succeeds/fails message.
C $85E8,3 Display the spell succeeds/fails message.
c $85EC Maybe get owner
D $85EC Used by the routine at #R$84F7.
@ $85EC label=GET_INFO_FROM_BOARD_STATE_TABLE_5
C $85EC,10 Load the memory address at which the cursor is pointing and add $0281. Go to that memory location and set A to its value, OR A to set the registers, and return. A now contains the corresponding location in the fifth board state table. TODO - what does it represent?
c $85F6 Cast Raise Dead
@ $85F6 label=CAST_RAISE_DEAD
C $85F6,6 If the current wizard is computer controlled jump to #R$8639.
C $85FC,3 Clear the message bar.
@ $8604 label=CAST_RAISE_DEAD_1
C $8604,3 User key input.
C $8607,3 Keyboard ROM subroutine.
C $860A,4 If the user pressed S jump to #R$861A.
C $860E,4 If the user pressed anything other than K jump back to #R$8604.
C $8612,8 The user pressed K. Play a sound effect, enable interrupts and return.
@ $861A label=CAST_RAISE_DEAD_2
C $861A,4 Set A to the ID of the creature at the cursor location.
C $861E,3 If there is no creature, jump back to #R$8604.
C $8621,5 A = data at cursor location for arena status table 3.
C $8626,4 If A != 4, jump back to #R$8604. 4 is used to indicate that the creature is dead.
@ $8639 label=CAST_RAISE_DEAD_3
C $863F,3 HL = first entry in arena table 1
C $8642,3 Cursor location = HL
C $8645,2 B = $9F (looping 160 times, once for each entry in the arena table)
@ $8647 label=CAST_RAISE_DEAD_4
C $8648,1 A = entry at cursor location
C $864C,5 A = entry at cursor location in arena table 3.
C $8651,4 If A != 4 (i.e. the creature is not dead) jump to #R$8676.
@ $8676 label=CAST_RAISE_DEAD_5
C $8676,7 Increment the cursor location and set HL to the new value.
C $867D,3 If there are still spaces to check, jump back to #R$8647.
@ $868D label=CAST_RAISE_DEAD_6
C $8694,5 Record that the spell was not cast.
@ $869A label=CAST_RAISE_DEAD_7
c $86C3 Attempt to raise the dead.
D $86C3 Used by the routine at #R$85F6.
@ $86C3 label=ATTEMPT_RAISE_DEAD
C $86C3,3 Display cast animation.
C $86C6,3 Work out if the spell succeeded.
C $86C9,3 A = whether the spell succeeded
C $86CC,2 If A == 0, return.
C $86CE,7 The spell succeeded. Point HL to the memory address of the dead creature in arena table 3.
C $86D5,2 Set the value in arena table 3 to 0, the first animation frame.
C $86D7,4 Move HL on by 160 to get the matching location in table 4.
C $86DB,6 Add the current wizard ID to $60. We're building up a status value showing that the current wizard owns the creature, with bits 5 and 6 are set (setting bit 5 stops the computer from disbelieving it, and bit 6 ??? TODO).
C $86E1,1 Set the new status in arena table 4.
C $86E2,4 HL = pointer to status value in arena table 6.
C $86E6,2 Reset the value in arena table 6 to 0. TODO Why?
C $86EB,3 Display the spell succeeds/fails message.
c $86EF Cast Turmoil
@ $86EF label=CAST_TURMOIL
C $86EF,6 If the current wizard is computer controlled jump to #R$86F9.
C $8725,5 Record that the spell was not cast.
C $8744,7 If the spell failed (see #R$9167) jump to #R$87EB.
C $874B,3 Mark all objects in the arena as being ready
C $87EB,3 Display the spell succeeds/fails message.
c $87EF Print message to screen
D $87EF Prints one of the messages starting at #R$8859 (described in the table at #R$8809).
D $87EF Used by the routines at #R$89F9 and #R$8F8B.
R $87EF Input:A the number of the message in the table at #R$8809. (The first entry is 0.)
R $87EF BC the screen address where the message should be printed.
@ $87EF label=PRINT_MESSAGE_1
b $8809 Table - text message information
D $8809 Lists information about the text messages starting at #R$8859. Organised in sets of 4 bytes.
D $8809 #LIST(data) { First two bytes (swapped around) list the memory address of the message } { Third byte is the length of the message. } { The last byte is zero. } LIST#
@ $8809 label=TABLE_TEXT_MESSAGES_1
B $8809,4,4 #R$8859 $00 CHAOS -THE BATTLE OF WIZARDS
B $880D,4,4 #R$8875 $01 By Julian Gollop
B $8811,4,4 #R$8885 $02 How many wizards?
B $8815,4,4 #R$8897 $03 (Press 1 to 8)
B $8819,4,4 #R$88A6 $04 PLAYER
B $881D,4,4 #R$88AD $05 Computer controlled?
B $8821,4,4 #R$88C2 $06 YES
B $8825,4,4 #R$88C5 $07 NO
B $8829,4,4 #R$88C7 $08 Level of computer wizards?
B $882D,4,4 #R$88E2 $09 Enter name (12 letters max.)
B $8831,4,4 #R$88FE $0A (Press Y or N)
B $8835,4,4 #R$890C $0B Which colour?
B $8839,4,4 #R$891A $0C Which character?
B $883D,4,4 #R$892B $0D 1  2  3  4  5  6  7  8
B $8841,4,4 #R$8941 $0E (Press 2 to 8)
B $8845,4,4 #R$894F $0F NEW SPELL FOR
B $8849,4,4 #R$895D $10 THE CONTEST IS DRAWN BETWEEN
B $884D,4,4 #R$8979 $11 THE WINNER IS:
B $8851,4,4 Possibly not used?
B $8855,4,4 Possibly not used?
t $8859 CHAOS -THE BATTLE OF WIZARDS
@ $8859 label=TEXT_TITLE_1
T $8859,28,28
t $8875 By Julian Gollop
@ $8875 label=TEXT_TITLE_2
T $8875,16,16
t $8885 How many wizards?
@ $8885 label=TEXT_HOW_MANY
T $8885,18,18
t $8897 (Press 1 to 8)
@ $8897 label=TEXT_PRESS_1_TO_8
T $8897,15,15
t $88A6 PLAYER
@ $88A6 label=TEXT_PLAYER
T $88A6,7,7
t $88AD Computer controlled?
@ $88AD label=TEXT_COMP_CONTROLLED
T $88AD,21,21
t $88C2 YES
@ $88C2 label=TEXT_YES
T $88C2,3,3
t $88C5 NO
@ $88C5 label=TEXT_NO
T $88C5,2,2
t $88C7 Level of computer wizards?
@ $88C7 label=TEXT_WIZ_LEVEL
T $88C7,27,27
t $88E2 Enter name (12 letters max.)
@ $88E2 label=TEXT_ENTER_NAME
T $88E2,28,28
t $88FE (Press Y or N)
@ $88FE label=TEXT_Y_OR_N
T $88FE,14,14
t $890C Which colour?
@ $890C label=TEXT_WHICH_COLOUR
T $890C,14,14
t $891A Which character?
@ $891A label=TEXT_WHICH_CHAR
T $891A,17,17
t $892B 1  2  3  4  5  6  7  8
@ $892B label=TEXT_12345678
T $892B,22,22
t $8941 (Press 2 to 8)
@ $8941 label=TEXT_PRESS_2_TO_8
T $8941,14,14
t $894F NEW SPELL FOR
@ $894F label=TEXT_NEW_SPELL
T $894F,14,14
t $895D THE CONTEST IS DRAWN BETWEEN
@ $895D label=TEXT_DRAW
T $895D,28,28
t $8979 THE WINNER IS:
@ $8979 label=TEXT_WINNER_IS
T $8979,14,14
b $8987 Data block at 8987
B $8987,17,8*2,1
t $8998 Blank string
T $8998,14,14
b $89A6 Data block at 89A6
@ $89A6 label=VAR_89A6
B $89A6,1,1
b $89A7 Variable - strength of computer-controlled wizards.
@ $89A7 label=COMP_WIZ_STRENGTH
B $89A7,1,1
b $89A8 Variable - last key pressed. (TODO: only number keys?)
D $89A8 Stored as the hex ID from the character set (e.g. A is $41).
@ $89A8 label=LAST_KEY_PRESSED
B $89A8,1,1
b $89A9 Variable - maybe computer wizard strength
@ $89A9 label=VAR_89A9_MAYBE_COMP_WIZ_STRENGTH
B $89A9,1,1
b $89AA Pointer - address of the current wizard's name
D $89AA Populated in #R$8300.
@ $89AA label=CURRENT_WIZ_NAME_POINTER
B $89AA,2,2
b $89AC Data block at 89AC
@ $89AC label=VAR_89AC
B $89AC,2,2
b $89AE Variable - name length during name entry
@ $89AE label=NAME_ENTRY_LENGTH
B $89AE,1,1
b $89AF Data block at 89AF
@ $89AF label=VAR_89AF_MAYBE_LAST_LETTER_PRESSED
B $89AF,1,1
c $89B0 Keyboard input: picking a number from 1 to 8.
D $89B0 Waits for the user to pick a number between 1 and 8, and sets A to the chosen number minus 1. i.e. pressing 3 will result in A having value $02. A will then match up with the ID of a wizard with that number, as the wizard IDs start counting from 0.
D $89B0 If the flag at #R$8323 is set, TODO
D $89B0 Used by the routine at #R$89F9.
R $89B0 Output:A The number chosen minus 1.
@ $89B0 label=KEYS_INPUT_NUMBERS
C $89B1,3 Keyboard ROM subroutine.
C $89B4,10 Don't continue until the number pressed is between 1 and 8 inclusive.
C $89BE,3 Save the last key pressed to #R$89A8.
C $89C1,6 Check the flag at #R$8323. If it's 0, jump to #R$89CF. Otherwise fall through.
C $89C7,3 Load the key pressed back into A.
C $89CA,5 If it's less than 2, jump back to #R$89B1. The flag had been set, so we're not allowed to choose the number 1.
C $89D0,5 Set the colours to white on black ($47).
C $89E4,5 Set the "press 2 to 8 only" flag back to 0.
b $89EF Data block at 89EF
@ $89EF label=VAR_89EF_MAYBE_TABLE
B $89EF,10,8,2
c $89F9 Main game loop.
D $89F9 Used by the routine at #R$7D00.
@ $89F9 label=MAIN_LOOP
C $8A0D,3 Clear the screen.
C $8A10,13 Clear the data at #R$AC16 (wizard status) and #R$AC1E (TODO ???).
C $8A1D,13 Clear the wizard spell inventories (#R$7F47 to 8086).
C $8A2A,13 Clear out the game board state information at #R$E01F.
C $8A37,13 Clear out the information from board state tables 2-6 (from #R$E0C0 to E3DF)
C $8A49,8 Draw the border in red on magenta ($5A).
C $8A51,13 Print the message with ID $00 (CHAOS - THE BATTLE OF WIZARDS) in magenta on black ($43) at screen position $0202.
C $8A5E,13 Print the message with ID $01 (By Julian Gollop) in red on black ($42) at screen position $0408.
C $8A6B,13 Print the message with ID $02 (How many wizards?) in yellow on black ($46) at screen position $0902.
C $8A78,13 Print the message with ID $0E ((Press 2 to 8)) in green on black ($44) at screen position $0B02.
C $8A88,8 Set the flag which indicates we're picking the number of wizards in the game, and have the user pick a number between 2 and 8.
C $8A90,4 Set #R$AC0F, which stores the number of wizards in the game.
C $8A94,13 Print the message with ID $08 (Level of computer wizards?) in yellow on black ($46) at screen position $0E02.
C $8AA1,13 Print the message with ID $03 ((Press 1 to 8)) in magenta on black ($43) at screen position $1002.
C $8AB1,3 Have the user pick a number between 1 and 8.
C $8AB4,3 Store the number selected at #R$89A7.
C $8AB7,9 Double it twice and add 15, then store the result in #R$89A9. 0,1,2,3,4,5,6,7 maps to 15, 19, 23, 27, 31, 35, 39, 43
@ $8AC2 label=MAIN_LOOP_0
C $8AC0,9 TODO Pause for a short time?
C $8AC9,5 Set current wizard ID to 0.
C $8ACE,4 Load B with the number of wizards in this game. We're setting up to loop between #R$8AD8 and 8E11.
@ $8AD8 label=MAIN_LOOP_1
C $8AD9,3 Clear the screen.
C $8ADC,8 Draw the border in blue on cyan ($69).
C $8AE4,13 Print the message with ID $04 (PLAYER ) in yellow on black ($46) at screen position $0202.
C $8AF1,8 Print the current player number.
C $8AF9,13 Print the message with ID $09 (Enter name (12 letters max.)) in magenta on black ($43)  at screen position $0402.
C $8B06,3 Load current wizard details.
C $8B14,5 Set the colours to cyan on black ($45).
@ $8B19 label=MAIN_LOOP_2
C $8B19,3 Keyboard ROM subroutine.
C $8B1F,5 If the last key pressed was Enter jump to #R$8B95.
C $8B24,4 If the last key pressed was Delete jump to #R$8B56.
@ $8B56 label=MAIN_LOOP_3
@ $8B6F label=MAIN_LOOP_4
@ $8B95 label=MAIN_LOOP_5_STORE_WIZ_NAME
C $8B95,7 If the name entered had zero characters in it, jump back to #R$8B19.
C $8B9C,14 Load HL with the address at which we should store the wizard's name data. To calculate this, take the wizard ID and add $29. Quadruple that figure. That tells you the number of bytes after #R$CDD3 at which you should store the data. Add them together and store the result in HL.
C $8BAA,6 Move the pointer two bytes forward, so that it points to the memory location storing the name's length. Store the name's length in there.
C $8BB3,13 Print the message with ID $05 (Computer controlled?) in magenta on black ($43) at screen position $0902.
C $8BC0,5 Set the colours to yellow on black ($46).
C $8BC5,5 Set #R$AC2E (flag indicating if this wizard is computer controlled) to 0 (false) by default.
@ $8BCA label=MAIN_LOOP_6_IS_WIZ_COMP
C $8BCA,3 Keyboard ROM subroutine.
C $8BCD,4 If the user pressed Y jump to #R$8BDF.
C $8BD1,4 If the user pressed any key other than N jump back to #R$8BCA.
C $8BD5,8 Print the message with ID $07 (NO) in yellow on black ($46) at screen position $0917.
@ $8BDF label=MAIN_LOOP_7_SET_WIZ_COMP
C $8BDF,8 Print the message with ID $06 (YES) in yellow on black ($46) at screen position $0917.
C $8BE7,12 Going to update the flag which indicates whether the wizard is computer controlled. See #R$AC26. We'll set DE to the current wizard number (found at #R$AC0E) and add it to #R$AC26 to get the memory location to alter. Then set it to 1.
C $8BF3,5 Set #R$AC2E (flag indicating if this wizard is computer controlled) to 1 (true).
@ $8BF8 label=MAIN_LOOP_8_WHICH_CHAR
C $8C01,13 Print the message with ID $0C (Which character?) in magenta on black ($43) at screen position $0B02.
C $8C0E,13 Print the message with ID $0D (1 2 3 4 5 6 7 8) in cyan on black ($45) at screen position $0D02.
@ $8C29 label=MAIN_LOOP_9
C $8C2A,3 A = last key pressed (#R$89A8)
C $8C2D,3 Set the wizard character that's been picked (#R$90DF)
C $8C34,3 Call #R$90F0 to draw the picked character.
C $8C48,3 Have the user pick a number between 1 and 8.
C $8C4B,3 Save the key pressed to #R$90DF.
C $8C55,3 Display the picked character on screen.
C $8C58,16 HL = the wizard's graphics data in the table at #R$82C0.
C $8C68,3 Set #R$831F (the next routine will save the current wizard's graphics to this address)
C $8C6B,3 Change the current wizard's graphics.
C $8C6E,13 Print the message with ID $0B (Which colour?) in magenta on black ($43) at screen position $1002.
C $8C7B,13 Print the message with ID $0D (1 2 3 4 5 6 7 8) in yellow on black ($46) at screen position $1202.
@ $8C97 label=MAIN_LOOP_10
C $8CB6,3 Have the user pick a number between 1 and 8.
C $8CCE,3 Load current wizard details.
@ $8CDD label=MAIN_LOOP_11
C $8CE6,6 If the current wizard is player controlled jump to #R$8CF2.
@ $8CF2 label=MAIN_LOOP_12
C $8CF2,3 Load current wizard details.
@ $8D53 label=MAIN_LOOP_13
C $8D54,3 Set #R$904A (wizard spell count)
@ $8D7A label=MAIN_LOOP_14_ASSIGN_SPELLS
C $8D7A,3 Get the current wizard's inventory location
C $8D7D,4 HL = current wizard's inventory location
C $8D81,3 Save HL to #R$9154 (the wizard's inventory location)
C $8D84,5 Get a random number (0-9?) and add 12 to it. TODO Why?
C $8D89,3 HL = #R$9154 (the wizard's inventory location)
C $8D8C,1 Save the mystery number to the inventory
C $8D8D,1 Move to the next inventory slot
C $8D8E,2 Set the first spell to disbelieve.
C $8D90,1 Move to the next inventory slot
C $8D91,3 Save HL to #R$9154 (the current inventory location)
C $8D9A,4 Going to loop the number of times set in #R$904A.
@ $8D9E label=MAIN_LOOP_15_ASSIGN_SPELLS
@ $8D9F label=MAIN_LOOP_16_ASSIGN_SPELL
C $8D9F,9 A = random data from the start of memory?
C $8DA8,4 TODO Why are we adding data from #R$CD86 to A?
C $8DAC,2 Max spell ID is $3F (Raise Dead)
C $8DAE,10 If the spell ID is less than 2 (i.e. if it's disbelieve) or if it's $42 or more jump back to #R$8D9F and pick another one.
C $8DBC,3 Save the spell ID to #R$937B
C $8DBF,3 Get the spell info
C $8DC2,3 A = the new spell ID? TODO Doesn't seem to be the spell ID, it's the number between each spell ID
C $8DC5,3 HL = #R$9154 (the current inventory location)
C $8DC8,1 Save the spell ID to the inventory
C $8DCA,3 Load the current spell ID into A.
C $8DD5,6 If the current wizard is player controlled jump to #R$8E08.
@ $8DE4 label=MAIN_LOOP_17
@ $8DE8 label=MAIN_LOOP_18
@ $8E01 label=MAIN_LOOP_19
@ $8E08 label=MAIN_LOOP_20
@ $8E32 label=MAIN_LOOP_21
C $8E55,5 Set the round counter to 0.
C $8E5A,8 Load B with the number of rounds before a draw is called. Take the number of players from #R$AC0F, double it using SLA, and add 15. e.g. 19 rounds in a game with 2 wizards, and 31 in a game with 8 wizards.
@ $8E62 label=MAIN_LOOP_22_SELECT_SPELL_PHASE
C $8E62,1 Push BC to the stack. B contains the number of rounds left until the game is called a draw. This is the start of the main game loop.
C $8E63,3 Display the pre-turn (select spell) menus
C $8E6A,4 HL = number of wizards in the game.
C $8E6E,2 If A == number of wizards jump to #R$8E93.
C $8E70,3 Spread gooey blob and magic fire
C $8E73,3 Check magic woods for new wizard spells
C $8E76,3 Mark all creatures as ready to move.
C $8E79,3 Wizard takes a turn.
@ $8E81 label=MAIN_LOOP_23
C $8E8B,3 A = number of dead wizards in the game
C $8E8F,3 HL = address which contains the number of wizards
C $8E92,1 If there's only one wizard left...
@ $8E93 label=MAIN_LOOP_24
C $8E93,1 Pop BC from the stack. B contains the number of rounds left until the game is called a draw.
C $8E94,2 ...jump to #R$8F04
C $8E96,4 Increment the round counter.
C $8E9A,2 Decrease B and jump back to #R$8E62 if it's greater than 0 (i.e. if there are still rounds left).
C $8E9C,3 Clear the screen.
C $8E9F,5 Set the colours to blue on black ($01).
@ $8EA4 label=MAIN_LOOP_25
@ $8EC8 label=MAIN_LOOP_26
@ $8EE2 label=MAIN_LOOP_27
C $8EF1,8 Print the message with ID $3D (PRESS ANY KEY) at screen position $1600.
C $8EFC,3 Keyboard scanning ROM subroutine.
@ $8F04 label=MAIN_LOOP_28
C $8F04,3 Clear the screen.
C $8F07,5 Set the colours to blue on black ($01).
@ $8F0C label=MAIN_LOOP_29
@ $8F50 label=MAIN_LOOP_30
@ $8F57 label=MAIN_LOOP_31
C $8F78,8 Print the message with ID $3D (PRESS ANY KEY) at screen position $1600.
C $8F83,3 Keyboard scanning ROM subroutine.
c $8F8B Go through the magic trees and check if any wizards hiding in them get a new spell.
D $8F8B Used by the routine at #R$89F9.
@ $8F8B label=CHECK_TREES_FOR_NEW_SPELL
C $8F95,5 Set the colours to blue on black ($01).
N $8F9A This entry point is used by the routine at #R$89F9.
C $8F9A,6 Set the cursor location to the top left corner.
C $8FA0,2 Going to check all 150 cells. Load B with 159, as that's how often we'll increase HL. (There are 10 "blank cell" memory locations that are not used.)
C $8FA3,6 Does the cell contain a magic tree? If not, jump to #R$9031.
C $8FA9,4 Adding $0281 to HL so that it's pointing to the corresponding location in table 5 (#R$E2A0).
C $8FAD,1 Load the entry from table 5 into A.
C $8FAE,4 If there's nothing in the corresponding entry in table 5 (TODO: what would be in there? The wizard ID?), jump to #R$9031.
C $8FB8,5 If the player didn't get a new spell, jump to #R$9031.
C $8FBD,3 The player gets a new spell.
C $8FC5,5 Set the colours to yellow on black ($46).
C $8FCA,8 Print the message with ID $0F (NEW SPELL FOR) at screen position $1600.
C $8FD3,6 Print the player's name.
C $8FE7,3 Clear the message bar.
b $903E Data block at 903E
@ $903E label=VAR_903E_MAYBE_TABLE
B $903E,11,8,3
b $9049 Variable - maybe computer wizard strength?
@ $9049 label=VAR_9049_MAYBE_COMP_WIZ_STRENGTH
B $9049,1,1
b $904A Variable - wizard spell count
@ $904A label=WIZARD_SPELL_COUNT
B $904A,1,1
c $904B Random number generator?
D $904B Used by the routines at #R$859C, #R$89F9, #R$8F8B and #R$96F3.
@ $904B label=MAYBE_RANDOM_NUM_GENERATOR
C $904E,3 HL = mem address of $5C76 (the seed for RND)
C $9051,1 A = A + seed for RND
C $906A,3 HL = mem address of $5C76 (the seed for RND)
C $906D,1 A = A + seed for RND
C $906E,3 Store the value in A to #R$907A.
b $907A Variable - random number result
D $907A After a random number is generated in #R$904B the result is stored in here.
@ $907A label=RANDOM_NUM_RESULT
B $907A,1,1
c $907B Routine at 907B. Unknown purpose - seems to write something into memory with every keypress during setup.
D $907B Used by the routines at #R$89B0 and #R$89F9.
@ $907B label=UNKNOWN_SETUP_ROUTINE_907B
C $907F,3 Keyboard scanning ROM subroutine.
b $909F Data block at 909F
@ $909F label=VAR_909F_MAYBE_TABLE
B $909F,56,8
b $90D7 Data block at 90D7
@ $90D7 label=VAR_90D7_MAYBE_TABLE
B $90D7,8,8
b $90DF Variable - wizard image picked
@ $90DF label=WIZARD_CHARACTER_PICK
B $90DF,1,1
b $90E0 Data block at 90E0
@ $90E0 label=VAR_90E0_MAYBE_TABLE
B $90E0,16,8
c $90F0 Draw picked character during setup
D $90F0 Used by the routine at #R$89F9.
@ $90F0 label=DRAW_PICKED_CHARACTER
b $910D Data block at 910D
@ $910D label=VAR_910D_MAYBE_TABLE
B $910D,40,8
b $9135 Data block at 9135
@ $9135 label=VAR_9135_MAYBE_TABLE
B $9135,16,8
b $9145 Data block at 9145
B $9145,14,8,6
b $9153 Current spell casting chance. 0 is 10%, and 9 is 100%. See the second column of the table at #R$7D60 for more info.
@ $9153 label=CURRENT_SPELL_CASTING_CHANCE
B $9153,1,1
b $9154 Variable - memory location of the current wizard's spell inventory. Or, when the computer wizard is choosing a spell, pointer to the current spell.
D $9154 It will point at one of the memory locations starting at #R$7F47.
@ $9154 label=CURRENT_WIZ_INVENTORY_POINTER
B $9154,2,2
b $9156 Variables - all chosen player spells.
D $9156 Stores the IDs of the chosen spells, as specified in the table at #R$7D60. These values are all cleared to zeroes at the start of #R$9168.
D $9156 Note that computer controlled players don't have assigned spells in here. Their memory locations stay at 0 after the spell choice round.
@ $9156 label=SPELLS_CHOSEN
B $9156,8,8
b $915E Variables - whether the spells chosen by each player are illusions.
D $915E Flags indicating whether each spell is an illusion (0 if not, 1 if so). These values are all cleared to zeroes at the start of #R$9168.
@ $915E label=SPELLS_CHOSEN_ILLUSIONS
B $915E,8,8
b $9166 Variable - whether the spell currently being cast is an illusion.
D $9166 1 if the spell is an illusion, 0 if it's real.
@ $9166 label=IS_CURRENT_SPELL_ILLUSION
B $9166,1,1
b $9167 Flag - spell cast success.
D $9167 1 if the spell succeeded, 0 if it failed.
@ $9167 label=SPELL_SUCCESS_FLAG
B $9167,1,1
c $9168 Pre-turn menu: displays the "PRESS KEYS 1 TO 4" menu for each player.
D $9168 Used by the routine at #R$89F9.
@ $9168 label=PRE_TURN_MENU
C $9168,13 Clear the spells chosen previously, if any (see #R$9156).
C $917B,4 Load the number of wizards into B.
C $917F,5 Set the current wizard ID to 0.
@ $9185 label=PRE_TURN_MENU_1_LOAD_WIZ
C $9186,3 Load the address of the wizard status values into HL.
C $9189,5 Set DE to the current wizard ID.
C $918E,2 Set HL to the address containing the current wizard's status values.
C $9190,5 If bit 4 is set (i.e. the wizard is dead) jump to #R$929E (skipping his turn).
C $9195,3 Update the flag which tells whether the current wizard is computer controlled (1 if computer controlled, 0 if not).
C $9198,4 If the wizard is computer controlled, jump to #R$929E (skipping his turn). The computer wizards don't choose a spell at this point.
N $919C This entry point is used by the routine at #R$92BE.
@ $919C label=PRE_TURN_MENU_2_DISPLAY
C $91A5,3 Clear the screen.
C $91A8,8 Draw the border in red on yellow ($72).
C $91B0,3 Load the chaos/law level into A.
C $91B3,3 If it's neutral, jump to #R$9230.
C $91B6,3 Set BC to the location for printing the chaos/law info.
C $91B9,3 If it's negative (chaotic) jump to #R$91F6.
C $91BC,5 Set the colours to yellow on black ($46).
C $91C1,5 Print the message with ID $47 ((LAW)).
@ $91D5 label=PRE_TURN_MENU_3_PRINT_LAW_ICONS
@ $91EF label=PRE_TURN_MENU_4
@ $91F6 label=PRE_TURN_MENU_5_PRINT_CHAOS
C $91F6,5 Set the colours to cyan on black ($45).
C $91FB,5 Print the message with ID $46 ((CHAOS).
@ $9211 label=PRE_TURN_MENU_6_PRINT_CHAOS_ICONS
@ $922B label=PRE_TURN_MENU_7
@ $9230 label=PRE_TURN_MENU_8
C $9230,5 Set the colours to yellow on black ($46).
C $9235,5 Add $29 to the ID of the active wizard (#R$AC0E) to get the ID of current wizard's name in the string table at #R$CDD3.
C $923A,6 Print the current wizard's name at screen location $0507.
C $9240,5 Set the colours to cyan on black ($45).
C $9245,8 Print the message with ID $59 (1.EXAMINE SPELLS) at screen location $0907.
C $924D,8 Print the message with ID $5A (2.SELECT SPELL) at screen location $0B07.
C $9255,8 Print the message with ID $5B (3.EXAMINE BOARD) at screen location $0D07.
C $925D,8 Print the message with ID $5C (4.CONTINUE WITH GAME) at screen location $0F07.
C $9265,5 Set the colours to yellow on red ($56).
C $926A,8 Print the message with ID $57 (PRESS KEYS 1 TO 4) at screen location $1600.
@ $9275 label=PRE_TURN_MENU_9
C $9275,3 Keyboard ROM subroutine.
C $9278,5 Reset the "is user selecting a spell" flag to 0.
C $927D,4 If the user pressed anything other than 1, jump to #R$9287.
C $9281,3 The user pressed 1. Display the spell menu, and we'll be viewing spell info.
C $9284,3 Back to displaying the 1-4 option menu.
@ $9287 label=PRE_TURN_MENU_10
C $9287,4 If the user pressed 4, jump to #R$929E.
C $928B,4 If the user pressed 3, display the arena.
C $928F,4 If the user pressed anything other than 2, jump back to #R$9275.
C $9293,5 The user pressed 2. Set the "is user selecting a spell" flag to 1 (true).
C $9298,3 Display the spell menu, and we'll be selecting a spell.
C $929B,3 Back to displaying the 1-4 option menu.
@ $929E label=PRE_TURN_MENU_11_NEXT_WIZ
C $929F,4 Next wizard's turn - increase the current wizard ID variable by 1.
C $92A3,1 If there's another wizard, jump back to #R$9185.
c $92AA Get current wizard's spell inventory location.
D $92AA Saves the result in #R$9154. It will point at one of the memory locations starting at #R$7F47.
R $92AA Used by the routines at #R$89F9, #R$8F8B, #R$9168, #R$95C7 and #R$96F3.
@ $92AA label=GET_CURRENT_WIZ_INVENTORY_LOCATION
C $92AA,3 Load the location of the first spell inventory table into HL.
C $92AD,6 Set DE to the current wizard ID. (Player 1 has index 0.)
C $92B3,6 There are 40 bytes between each wizard's inventory, so find the address to return by adding the player's ID onto the value in HL 40 times.
C $92B9,1 Increment HL so that it's pointing at the ID of the first spell.
C $92BA,3 Save the ID of the first spell in the wizard's inventory to #R$9154.
c $92BE Display the arena between turns.
D $92BE Used by the routine at #R$9168.
@ $92BE label=DISPLAY_ARENA_READ_ONLY
C $92BE,3 Clear the screen.
C $92DB,3 User key input.
C $92DE,3 Keyboard ROM subroutine.
C $92E1,4 If the user pressed Space jump to #R$92EC.
C $92E5,5 If the user pressed I jump to #R$C3B3
C $92EA,2 Else jump back to #R$92DB.
C $92F3,3 Clear the screen.
c $92F9 Get spell info.
D $92F9 Used by the routines at #R$89F9, #R$9385, #R$94A7, #R$95C7 and #R$96F3.
@ $92F9 label=GET_SPELL_INFO
C $92F9,3 Load the current spell ID into A.
C $92FC,4 Load the spell table at #R$7D60 into the index register.
C $9300,4 Set DE to the be the row at which the spell table contains the current spell ID.
C $9304,6 There are 7 bytes for each entry in the spells table. Keep adding 7 to the index register until it points at the memory location of the spell we're looking for.
C $930A,4 Save the memory location to #R$9380.
C $9359,5 A = the creature's chaos/law value.
b $937B Variable - current spell being cast
@ $937B label=CURRENT_SPELL_ID
B $937B,1,1 ID of the spell currently being cast, as defined in the spells table at #R$7D60.
b $937C Variable - as spells are written to the screen this increases, holding the offset from the start at which we start printing text.
@ $937C label=SPELL_MENU_TEXT_OFFSET
B $937C,1,1
b $937D Variable - how many characters in from the left to start writing text when display the spell menu.
D $937D Either 2 or 16, depending on whether text is to be written to the 1st or 2nd column.
@ $937D label=SPELL_MENU_TEXT_INDENT
B $937D,1,1
b $937E Variable - holds the ASCII code for the next char to print in alphabetical order
D $937E Initially $40 (A), and increments with each spell printed. e.g. A-Disbelieve, B-Zombie
@ $937E label=SPELL_MENU_NEXT_CHAR
B $937E,1,1
b $937F Variable - holds whether the current spell is lawful (positive), neutral (0) or chaotic (negative)
@ $937F label=CURRENT_SPELL_CHAOS_LAW_VALUE
B $937F,1,1
b $9380 Pointer - memory location of the current spell
@ $9380 label=SPELL_TABLE_POINTER
B $9380,2,2
b $9382 Variable - used when displaying spells in the spell menu routine (#R$9385). That routine loops through the spells in a wizard's inventory, listing them. This points to the memory location of the spell it's currently listing.
@ $9382 label=SPELL_INVENTORY_POINTER
B $9382,2,2
b $9384 Variable - holds whether the user wants to view details about a spell (0) or is selecting a spell (1).
@ $9384 label=IS_USER_SELECTING_SPELL
B $9384,1,1
c $9385 Spell menu
D $9385 Displays the list of spells available to a wizard. Used both when selecting a spell, and when viewing the spell's information page. The behaviour is determined by #R$9384, which would have been set to the appropriate value earlier.
R $9385 Used by the routine at #R$9168.
@ $9385 label=SPELL_MENU
C $9385,3 Select menu chirp sound effect
C $9388,3 Play sound effect
C $938B,3 Clear the screen.
C $938E,5 Set the colours to yellow on black ($46).
C $9393,5 Add $29 to the ID of the active wizard (#R$AC0E) to get the ID of current wizard's name in the string table at #R$CDD3.
C $9398,6 Print the current wizard's name at screen location $0000.
C $939E,5 Print the message with ID $53('S SPELLS).
C $93A3,2 Looping max of 20 times
C $93AA,6 Set text writing position to 16 initially.
C $93B0,6 Point #R$9382 to the current wizard's spell inventory.
@ $93B6 label=SPELL_MENU_1
C $93B7,4 A = ID of a spell in the wizard's inventory
C $93BB,3 If A == 0 jump to #R$9419.
C $93BE,3 Going to figure out the screen column to write the next spell text. A = last position.
C $93C1,4 A = 16 - A.
C $93C5,3 Save result to #R$937C
C $93C8,3 If it wasn't 0 jump to #R$93D3.
C $93CB,8 The text indent is currently 0, so bump it up to 2.
@ $93D3 label=SPELL_MENU_2
C $93D7,3 Set #R$937B (current spell ID) to value in A
C $93DA,3 Get the info about the spell.
C $93DD,3 Set A to the spell casting chance.
C $93E0,5 Convert A to the appropriate casting chance colour by adding 1, doubling it, and adding $42 to get the corresponding paper and ink colours.
C $93E5,3 Set the colours we calculated.
C $93E8,7 Set the alphabetical character we're going to print next, saving it to #R$937E.
C $93EF,9 Print the single character.
C $93F8,1 Move print location one space right.
C $93F9,3 Load the current spell's chaos/law value into A.
C $93FC,3 If it isn't zero (i.e. it's chaos or law), jump to #R$9403.
C $93FF,2 Set A to $2D, indicating a dash.
C $9401,2 Jump to #R$940C.
@ $9403 label=SPELL_MENU_3_PICK_CHAOS_LAW_ICON
C $9403,3 If it's positive (i.e. law) jump to #R$940A.
C $9406,2 Set A to $2D, indicating an asterisk (chaos).
C $9408,2 Jump to #R$940C.
@ $940A label=SPELL_MENU_4_SET_LAW_ICON
C $940A,2 Set A to $5E, indicating the law icon.
@ $940C label=SPELL_MENU_5_PRINT_SPELL
C $940C,5 Print the appropriate icon.
C $9411,1 Move print location one space right.
C $9412,4 Load the ID of the spell into A.
C $9416,3 Print the spell name.
@ $9419 label=SPELL_MENU_6_NEXT_SPELL
C $9419,8 Repoint #R$9382 to the memory location two spaces along (every second memory location is one of the spell IDs.)
C $9422,2 If there are still spells to display, jump back to #R$93B6.
C $9427,5 Set the colours to yellow on black ($46).
C $942C,5 Print the message with ID $58 (PRESS '0' TO RETURN TO MAIN MENU) at screen position $1600.
@ $9434 label=SPELL_MENU_7_WAIT_FOR_KEY
C $9434,3 Keyboard ROM subroutine.
C $9437,5 If the user pressed 0, return.
@ $943C label=SPELL_MENU_8_KEY_PRESSED
C $943C,3 HL = #R$937E, the address containing the code of the next char we would have printed when listing the spells
C $943F,5 If the key pressed is higher than any listed jump back to #R$9434.
C $9444,5 If the key pressed is lower than the A key jump back to #R$9434.
C $944A,3 HL = address pointed to by #R$9154 (first item in the current wizard's inventory)
C $9450,1 AND A just to reset the carry flag
C $9451,2 HL = HL - DE.
@ $9453 label=SPELL_MENU_9_SPELL_SELECTED
C $945A,3 Save the selected spell ID at #R$937B.
C $945D,6 If the user is selecting a spell, jump ahead to #R$9469.
C $9463,3 Otherwise, call #R$94A7 and display the spell info.
C $9466,3 Jump back to #R$9385 when finished displaying the spell info.
@ $9469 label=SPELL_MENU_10_RECORD_SPELL
C $9469,14 The user has picked a spell. Write the spell ID into the small table at #R$937B, at the correct index for the current wizard. (Calculated by adding the wizard's ID to the memory location of the first entry in the table.)
C $9477,6 If the current spell ID is between $02 and $21 (i.e. is a creature) carry on and ask if it should be cast as an illusion. Otherwise return.
C $947D,3 Clear the message bar.
C $9480,5 Set the colours to white on black ($47).
C $9485,8 Print the message with ID $5E (ILLUSION? (PRESS Y OR N)) at screen position $1600.
@ $9490 label=SPELL_MENU_11_ILLUSION_Y_OR_N
C $9490,3 Keyboard ROM subroutine.
C $9493,3 If the user pressed N return.
C $9496,4 If the user pressed something other than Y, loop back. You can only press Y or N at this point.
C $949A,12 The user pressed Y. Record that the creature will be cast as an illusion in the small table at #R$915E.
c $94A7 Display spell info
D $94A7 Displays information about a single spell.
R $94A7 Used by the routine at #R$9385.
@ $94A7 label=DISPLAY_SPELL_INFO
C $94AA,7 If the current spell ID is $01 (Disbelieve) jump to #R$94E2.
C $94B1,5 If the current spell ID >= $22 (Gooey Blob) jump to #R$94E2.
C $94CE,3 Display the 'I' key info page.
C $94E2,3 Clear the screen.
C $94EB,8 Draw the border in blue on cyan ($69).
C $94F3,5 Set the colours to yellow on black ($46).
C $9502,3 Load the spell's chaos/law value into A.
C $9506,2 Neutral spell. Jump to #R$9543.
C $9508,3 Lawful spell. Jump to #R$9529.
C $950B,5 Set the colours to magenta on black ($43).
C $9510,8 Print the message with ID $46 ((CHAOS) at screen position $0708.
C $9518,5 Load the spell's chaos/law value into A and negate it.
C $951D,5 Add $30 to get the character to print, then print it.
C $9522,5 Print a close bracket.
C $9529,5 Set the colours to cyan on black ($45).
C $952E,8 Print the message with ID $47 ((LAW) at screen position $0708.
C $9543,5 Set the colours to green on black ($44).
C $9548,8 Print the message with ID $4F (CASTING CHANCE=) at screen position $0B08.
C $9550,5 Set the colours to yellow on black ($46).
C $9555,3 Get the casting chance of the current spell. Will be a value from 0 (10% chance) to 9 (100% chance).
C $9558,5 Add 1 to A. If we don't have 10 (i.e. it's not a 100% chance) jump to #R$9564.
C $955D,5 Print the message with ID $50 (10). See table at #R$CDD3.
C $9564,2 Add $30 to A to get the character to print (e.g. 5 maps to $35)
C $9566,3 Print it.
C $9569,5 Print a 0.
C $956E,5 Print the % symbol.
C $9573,5 Set the colours to green on black ($44).
C $9578,8 Print the message with ID $4A (RANGE=) at screen position $0F08.
C $9580,5 Set the colours to yellow on black ($46).
C $9585,4 Set the index register to the location of the current spell in the spells table.
C $9589,3 Get the third byte in the spell's data: the range.
C $958C,2 Shift the bits in A right, effectively dividing by two.
C $958E,5 If it's 10 or above, jump to #R$959A.
C $9593,2 Add $30 to A to get the character to print (e.g. 5 maps to $35)
C $9595,3 Print it.
C $959A,10 Print 20.
C $95A4,5 Set the colours to cyan on blue ($4D).
C $95A9,8 Print the message with ID $3D (PRESS ANY KEY) at screen position $1600.
C $95B4,3 Wait for keypress
c $95B8 Update the "is current wizard computer controlled" flag at #R$AC2E.
D $95B8 Used by the routines at #R$9168 and #R$95C7.
@ $95B8 label=SET_WIZ_IS_COMP_CONTROLLED
C $95B8,3 Load HL with #R$AC26, the memory address which contains info on which players are computer controlled (see #R$AC26).
C $95BB,6 Set DE to the number of the wizard whose turn it is (see #R$AC0E).
C $95C1,1 Add DE to HL and save to HL. HL now contains the memory address of the current wizard's "is computer controlled" flag.
C $95C2,4 Set #R$AC2E to the value of the address HL is pointing to (i.e. 1 if the current wizard is computer controlled or 0 if not).
c $95C7 Cast spells.
D $95C7 Used by the routine at #R$9168.
@ $95C7 label=CAST_SPELLS
C $95C7,3 Clear the screen.
C $95D2,5 Set the current wizard ID (at #R$AC0E) to 0.
@ $95D7 label=CAST_SPELLS_1_LOAD_WIZARD
C $95D7,3 Set HL to the address of the wizard status values, #R$AC16.
C $95DA,6 Set DE to the current wizard ID.
C $95E0,2 Add HL and DE to get the address of the current wizard's status, and load it into A.
C $95E2,5 If bit 4 is set (i.e. the wizard is dead) jump to #R$9665 (skipping his turn).
C $95EA,3 Update the flag which tells whether the current wizard is computer controlled (1 if computer controlled, 0 if not).
C $95ED,4 If the wizard is computer controlled, jump to #R$96F3.
C $95F1,3 Set HL to the address of the small table in which each wizard's chosen spell is held. (#R$9156)
C $95F4,6 Set DE to the current wizard ID.
C $95FA,2 Add HL and DE together to get the address of the current wizard's chosen spell and load its ID into A.
C $95FC,3 Set the current spell ID variable (#R$937B).
C $95FF,4 If it's 0 (no spell selected) jump to #R$9665, skipping this wizard.
C $9603,3 Gets the current wizard's inventory location (the result is saved into HL, and also at #R$9154.)
C $9608,7 If the current spell ID is $01 (Disbelieve) jump to #R$961B.
@ $960F label=CAST_SPELLS_2_MARK_SPELL_CAST
C $960F,4 If the spell ID at the memory location pointed to by HL doesn't match the current spell ID, jump to #R$9617.
C $9613,2 Found the spell. Mark it as cast by setting the spell ID in the wizard's inventory to 0.
C $9615,2 Jump to #R$961B
@ $9617 label=CAST_SPELLS_3_NEXT_SPELL
C $9617,4 HL is pointing to a spell in the player's inventory. Increment twice to move to the next spell and jump back to #R$960F.
@ $961B label=CAST_SPELLS_4
C $961B,3 Get the spell info. Sets a number of variables in memory.
C $961E,3 Print the spell name.
C $9621,3 Wait for keypress
C $9624,3 Clear the message bar.
C $9627,11 Work out if the spell chosen was an illusion and load it into A. A will be 1 if it's an illusion, 0 if not.
C $9632,3 Set the flag indicating whether the current spell is an illusion.
C $9635,3 If the spell is an illusion, jump to #R$964C.
C $9638,3 A = a random number from 0 to 9.
C $963B,3 HL = address holding the current spell casting chance (#R$9153)
C $963E,2 E = casting chance of current spell + 1
C $9640,4 If A < E spell succeeded. Jump to #R$964C.
C $9644,5 Record that the spell failed at #R$9167. TODO Or did it succeed?
@ $964C label=CAST_SPELLS_5_SUCCESSFUL
C $964C,5 Record that the spell succeeded at #R$9167.
C $9651,3 Load the current spell's law/chaos level into A.
C $9654,3 Load the address of the world's law/chaos level (#R$C3A4) into HL.
C $9657,1 Add the world's law/chaos level to A.
C $9658,1 Save the new world law/chaos level back to #R$C3A4.
@ $9659 label=CAST_SPELLS_6
C $9659,6 Set HL to the address of the routine used to cast the spell.
C $965F,3 Overwrite the address in the next line to point to the appropriate spell routine.
C $9662,3 Address will be overwritten with a new routine location, depending on the spell being cast.
@ $9665 label=CAST_SPELLS_7
C $9665,3 Clear the message bar.
N $9668 This entry point is used by the routine at #R$96F3.
@ $9668 label=CAST_SPELLS_8
C $966E,3 HL = #R$AC0E (current wizard ID)
C $9671,1 Add one to HL, getting the next wizard ID.
C $9672,3 A = #R$AC0E (num of wizards in the game)
C $9675,4 If there are still more wizards, jump back to #R$95D7.
C $9679,1 Else, return.
c $967A Print spell about to be cast in message bar.
D $967A Used by the routines at #R$8357, #R$84B0, #R$859C, #R$85F6, #R$95C7, #R$9975, #R$9A95, #R$9ADD, #R$9B76, #R$9C59, #R$9D8A and #R$9EF9.
@ $967A label=PRINT_SPELL_TO_CAST
C $967A,5 Set the colours to yellow on black ($46).
C $967F,5 Add $29 to the ID of the active wizard (#R$AC0E) to get the ID of current wizard's name in the string table at #R$CDD3.
C $9684,6 Print the current wizard's name at screen location $1600.
C $968D,5 Set the colours to green on black ($44).
C $969B,5 Set the colours to white on black ($47).
C $96C2,5 If the current wizard is player controlled, return.
c $96D1 Routine at 96D1
D $96D1 Used by the routine at #R$967A.
@ $96D1 label=ROUTINE_96D1
c $96E6 Routine at 96E6
D $96E6 Used by the routines at #R$84F7, #R$89F9, #R$8F8B and #R$967A.
@ $96E6 label=ROUTINE_96E6_MAYBE_BRIEF_PAUSE
c $96F3 Computer wizard choosing and casting spell.
D $96F3 Used by the routine at #R$95C7.
@ $96F3 label=COMP_WIZ_CASTS_SPELL
C $96F3,3 HL = address of the wizard status values.
C $96F6,6 DE = current wizard ID
C $96FC,1 HL = address of the current wizard's status value byte.
C $96FD,5 If bit 4 is set (wizard is dead) jump to #R$9668, skipping the rest of the routine.
C $9702,3 Get the current wizard inventory location.
C $9717,2 Going to loop 14 times.
@ $9719 label=COMP_WIZ_CASTS_SPELL_1
C $971A,5 Assume that the spell is valid to cast. See #R$975F.
C $971F,4 A = the ID of the spell the pointer is pointing at.
C $9723,3 If there was a 0 at that slot, jump to #R$9751 (select next available spell).
C $9726,3 Set the current spell ID variable.
C $9729,3 Get the current spell info.
C $972C,6 Set HL to the address of the routine used to cast the spell.
C $9732,3 Overwrite the address in the next line to point to the appropriate spell routine.
C $9735,3 Address will be overwritten with a new routine location, depending on the spell being cast.
C $9738,3 Clear the message bar.
C $973B,6 If the spell cast was invalid (e.g. magic sword routine returned early because the wizard already had it), return to #R$9751 and pick another spell.
C $9741,7 If the current spell ID is $01 (Disbelieve) jump to #R$974D.
C $9748,5 Put a 0 in the spell inventory for the current spell. (So that it's no longer available.)
@ $974D label=COMP_WIZ_CASTS_SPELL_2
C $974E,3 Return to the spell casting routine.
@ $9751 label=COMP_WIZ_CASTS_SPELL_3_NEXT_SPELL
C $9752,3 Load the memory location of the current spell slot into A.
C $9755,2 Add two to HL, to move the pointer two bytes forward.
C $9757,3 Set the inventory pointer to the next spell.
C $975A,2 If there are still spells to cast, jump back to #R$9719.
C $975C,3 Return to the spell casting routine.
b $975F Variable - whether the spell was valid to cast.
D $975F If a computer wizard decided not to cast a spell (e.g. doesn't cast magic sword because he already has one), this is set to 0 and a new spell is selected in #R$96F3.
@ $975F label=IS_SPELL_VALID
B $975F,1,1
c $9760 Spell attempt.
D $9760 Calculates whether the wizard succeeds in casting the spell. Sets the spell success flag, and updates the chaos/law level if successful.
R $9760 Used by the routines at #R$8357, #R$84B0, #R$86C3, #R$9975, #R$9ADD, #R$9B76,
R $9760 #R$9DE0 and # R$9EF9.
@ $9760 label=SPELL_ATTEMPT
C $9760,6 If the current spell is an illusion, jump to #R$9778.
C $9766,3 A = a random number from 0 to 9.
C $9769,4 Load the current spell casting chance (0 is 10%, 9 is 100%) into E.
C $976D,5 Increment E and compare with A. If the random number was less than the casting chance, jump to #R$9778.
C $9772,5 The spell failed. Record a 0 in the spell success flag.
@ $9778 label=SPELL_ATTEMPT_1_SUCCESS
C $9778,5 Set the spell success flag to 1 (successful).
C $977D,3 A = current spell's law/chaos level.
C $9780,3 HL = address of the world's law/chaos level (#R$C3A4)
C $9783,2 Add the world's law/chaos level to A and save it back to #R$C3A4.
c $9786 Check that the spell is in range.
D $9786 Used by the routines at #R$84F7, #R$85F6, #R$981A, #R$9C59, #R$9DAA and #R$9F50.
@ $9786 label=SPELL_RANGE_CHECK
C $9786,3 HL = contents of #R$AC14. When casting a spell this is the casting wizard's location.
C $978F,3 HL = contents of #R$AC12. When casting a spell this is the target location.
c $97A3 Display spell success/failure message.
D $97A3 Used by the routines at #R$836A, #R$839C, #R$83D0, #R$8404, #R$8438, #R$846A, #R$84B0, #R$84C0, #R$859C, #R$86C3, #R$981A, #R$9975, #R$9A21, #R$9ADD, #R$9B76, #R$9DE0 and #R$9EF9.
@ $97A3 label=DISPLAY_SUCCESS_FAIL_MESSAGE
C $97A3,3 Clear the message bar.
C $97A6,6 If the spell succeeded (see #R$9167) jump to #R$97BB.
C $97AC,5 Set the colours to magenta on black ($43).
C $97B1,8 Print the message with ID $54 (SPELL FAILS) at screen position $1600.
C $97BB,5 Set the colours to white on black ($47).
C $97C0,8 Print the message with ID $55 (SPELL SUCCEEDS) at screen position $1600.
C $97CA,3 Pause for a short while.
b $97CE Variable - number of casts left for current spell
@ $97CE label=CASTS_LEFT
B $97CE,1,1
b $97CF Variable - stores location when searching for the current wizard
D $97CF Points to somewhere in the arena state table at #R$E01F.
@ $97CF label=SEARCH_LOCATION
B $97CF,2,2
c $97D1 Find the current wizard in the arena.
D $97D1 Used by the routines at #R$8357, #R$95C7 and #R$981A.
@ $97D1 label=FIND_CURRENT_WIZARD
C $97D4,3 #R$97CF = address of current index to the arena table 1
C $97D7,2 Going to check all 150 cells. Load B with 159, as that's how often we'll increase HL. (There are 10 "blank cell" memory locations that are not used.)
C $97D9,1 A = contents of the cell
C $97DA,2 Subtract $29 (the creature ID of the first wizard)
C $97DC,3 HL = address containing the current wizard ID (#R$AC0E)
C $97DF,3 If A == current wizard ID, found them. Jump to #R$97FB.
C $97E2,3 HL = search location again
C $97E5,4 Find the equivalent location in arena table 5. The wizard ID may be stored there if the wizard is in a tree or on a mount.
C $97E9,1 A = contents of the cell in table 5
C $97EA,2 Subtract $29 (the creature ID of the first wizard)
C $97EC,3 HL = address containing the current wizard ID (#R$AC0E)
C $97EF,3 If A == current wizard ID, found them. Jump to #R$97FB.
C $97F2,9 Didn't find them at this location. Set #R$97CF to the next location and repeat.
C $97FE,3 Set #R$AC14 to the wizard's location.
C $9801,3 Set #R$AC12 to the wizard's location.
C $9804,3 Set #R$C649 to the wizard's location.
c $980E Routine at 980E
D $980E Used by the routines at #R$9975, #R$9ADD and #R$9B76.
@ $980E label=ROUTINE_980E
c $981A Player casts a spell with a location.
D $981A Used by the routines at #R$9975, #R$9ADD and #R$9B76.
@ $981A label=PLAYER_CAST_LOCATIONAL_SPELL
C $981A,3 Clear the message bar.
C $9823,5 Set $5C8D (ATTR P) to 0.
C $9828,5 Set $5C8E (MASK P) to 255/-1.
C $9837,3 Clear the message bar.
C $983A,3 Load the number of spell casts left (#R$97CE) into A.
C $983D,2 Load A into B and push BC.
C $983F,3 User key input.
C $9842,3 Keyboard ROM subroutine.
C $9845,4 If the user pressed S jump to #R$9856.
C $9849,4 If the user pressed K jump to #R$983F.
C $985C,3 If the spell was within range, jump to #R$9877.
C $985F,3 Clear the message bar.
C $9865,5 Set the colours to cyan on black ($45).
C $986A,5 Print the message with ID $35 (OUT OF RANGE) at screen position $1600.
C $9872,3 Wait for keypress
C $9877,4 The spell was in range. HL = object at the spell target location.
C $987B,3 If the targeted space is empty jump to #R$9892.
C $987E,8 If the current spell ID >= $24 (Magic Wood) jump to #R$983F.
C $98A1,5 Set the colours to cyan on black ($45).
C $98A6,3 Clear the message bar.
C $98A9,8 Print the message with ID $3C (NO LINE OF SIGHT) at screen position $1600.
C $98B4,3 Wait for keypress
C $98BD,6 If the spell failed (see #R$9167) jump to #R$98D6.
C $98C3,3 Spell succeeded. Call #R$9941 to spawn the new creature.
C $98CD,3 Display the spell succeeds/fails message.
C $98D0,5 If there are any casts left, jump back to #R$983E.
C $98D7,3 Display the spell succeeds/fails message.
c $98DB Routine at 98DB
D $98DB Used by the routines at #R$84F7, #R$85F6, #R$981A, #R$9975, #R$9ADD, #R$9B76, #R$9C59 and #R$9DAA.
@ $98DB label=ROUTINE_98DB
C $98DC,3 Set #R$B754 to 0.
C $98DF,3 Set #R$B60B to 0.
c $98F1 Routine at 98F1. Possibly to do with Shadow Wood?
D $98F1 Used by the routines at #R$981A and #R$9ADD.
@ $98F1 label=ROUTINE_98F1
C $98F1,5 Set #R$9940 to 0.
C $98F6,8 If the current spell ID < $24 (Magic Wood) jump to #R$993B.
C $98FE,5 If the current spell ID >= $26 (Magic Castle) jump to #R$993B.
b $9940 Data block at 9940
@ $9940 label=VAR_9940
B $9940,1,1
c $9941 Spawn a new creature or object in the arena.
D $9941 Used by the routines at #R$981A, #R$9975 and #R$9B76.
@ $9941 label=SPAWN_NEW_CREATURE
C $9941,3 Load the memory address representing the cursor location into HL.
C $9944,7 If the current spell ID is $22 (Gooey Blob) jump to #R$9958.
C $994B,4 If the current spell ID is $23 (Magic Fire) jump to #R$9958.
C $994F,6 Copy the data at the cursor location to the corresponding space in the data table 6, which starts at #R$E340. TODO - don't know what that table is for yet. Dead creatures?
C $9955,3 Load the current spell ID into A.
@ $9958 label=SPAWN_NEW_CREATURE_1
C $9958,4 Copy A into the memory address representing the current cursor location. The spell IDs and the creature IDs match up, so this spawns a new creature on the map.
C $995C,4 Get the equivalent memory address in table 2.
C $9960,2 Set the value in table 2 to 1. TODO What does this indicate?
C $9962,2 Get the equivalent memory address in table 3.
C $9964,2 Set the value in table 3 to 0. TODO What does this indicate?
C $9966,1 Get the equivalent memory address in table 4.
C $9967,4 Set the value in table 4 to the current wizard ID.
C $996B,6 If the current spell is not an illusion jump to #R$9973.
C $9971,2 Set bit 4 to indicate that the creature is an illusion.
@ $9973 label=SPAWN_NEW_CREATURE_2_RETURN
c $9975 Cast Creature
D $9975 Used by the routines at #R$95C7 and #R$96F3.
@ $9975 label=CAST_CREATURE
C $9975,5 Set the number of times you get to cast this spell (1) and save it at #R$97CE.
C $997A,6 If the current wizard is computer controlled jump to #R$9984.
@ $9984 label=CAST_CREATURE_1
C $998C,8 If the current spell ID < $22 (Gooey Blob) jump to #R$9999.
@ $9999 label=CAST_CREATURE_2
@ $999C label=CAST_CREATURE_3
C $99A3,5 Record that the spell was not cast.
@ $99A9 label=CAST_CREATURE_4
C $99A9,5 Maybe checking target square is empty?
C $99B3,4 Load the ID of the object at the current cursor location into A.
C $99B7,3 If it's an empty space jump to #R$99C3.
@ $99C3 label=CAST_CREATURE_5
C $99C3,3 Print the name of the spell that's being cast.
C $99C9,8 If the current spell ID >= $22 (Gooey Blob) jump to #R$99DE.
C $99D1,3 A = a random number from 0 to 9.
C $99D4,5 If A >= 2, jump to #R$99DE.
C $99D9,5 The computer player is casting the creature as an illusion. Set #R$9166.
@ $99DE label=CAST_CREATURE_6
C $99E1,7 If the spell succeeded (see #R$9167) jump to #R$9941.
C $99E8,5 Reset the flag that tells us if the current spell is an illusion to 0.
C $99ED,3 Display the spell succeeds/fails message.
c $99F1 Cast Disbelieve
@ $99F1 label=CAST_DISBELIEVE_CHOOSE_TARGET
C $99F1,7 If the current wizard is computer controlled jump to #R$9A95.
C $99F8,3 User key input.
C $99FB,3 Keyboard ROM subroutine.
C $99FE,4 If the user pressed S jump to #R$9A0E.
C $9A02,4 If the user pressed anything other than K jump back to #R$99F8.
C $9A06,8 User pressed K. Play a sound effect, enable interrupts and return.
C $9A11,4 Find out what is at the current cursor location and load its ID into A.
C $9A15,3 If A == 0, jump back to #R$99F8.
C $9A18,5 If A >= $22, the ID isn't of a creature that can be disbelieved. Jump back to #R$99F8.
c $9A21 Routine at 9A21
D $9A21 Used by the routines at #R$99F1 and #R$9A95.
@ $9A21 label=CAST_DISBELIEVE
C $9A24,3 Load the cursor location into HL.
C $9A27,5 Set the spell success flag to 0 (failed).
C $9A2C,4 HL = the memory address in table 4 representing the cursor location. It records the wizard owner and whether creatures are illusions.
C $9A30,4 Check bit 4. If it's 0, the creature is real - jump to #R$9A45.
C $9A34,4 Get the memory address in table 5 representing the cursor location.
C $9A38,5 Overwrite the item in table 1 with the item in table 5. TODO Why? Copying in dead creatures?
C $9A40,5 Set the spell success flag to 1 (successful).
@ $9A45 label=CAST_DISBELIEVE_EXIT
C $9A45,3 Display the spell succeeds/fails message.
C $9A48,7 HL = the memory address in table 4 representing the cursor location.
C $9A4F,2 Set bit 5. TODO Indicates that it should not be disbelieved by the AI again?
c $9A52 Display explosion animation
D $9A52 Used by the routines at #R$9A21, #R$9C59, #R$9CA9, #R$9E38 and #R$A075.
@ $9A52 label=DISPLAY_EXPLOSION_ANIMATION
C $9A5B,5 Set the colours to yellow on black ($46).
c $9A95 Computer wizard casts disbelieve.
D $9A95 Used by the routine at #R$99F1.
@ $9A95 label=COMP_WIZ_CASTS_DISBELIEVE
@ $9AB1 label=COMP_WIZ_CASTS_DISBELIEVE_1
C $9AB8,5 Record that the spell was not cast.
@ $9ABE label=COMP_WIZ_CASTS_DISBELIEVE_2
C $9ABE,7 HL = memory address of the creature we may attempt to disbelieve, in arena table 1. See #R$E01F.
C $9AC8,1 A = object ID
C $9AC9,5 If A > $22 (i.e. it's not a creature) jump to #R$9AB1.
C $9ACE,4 HL = the memory address containing the creature's status, in arena table 4.
C $9AD2,4 If bit 5 is 0, jump back to #R$9AB1. The creature has already been disbelieved and found to be real.
C $9AD6,3 Bit 5 was set, so the creature is an illusion. Print that we're casting disbelieve.
C $9AD9,3 Call the cast disbelieve routine.
c $9ADD Cast Trees and Castles
@ $9ADD label=CAST_TREES_OR_CASTLE
C $9ADD,5 Assume we're casting trees. Save the number of times you can cast this spell (8) at #R$97CE.
C $9AE2,8 If the current spell ID < 38 (i.e. the spell is a tree) jump to #R$9AEF.
C $9AEA,5 Casting a castle. Set the number of times you can cast this spell (1) and save it at #R$97CE.
@ $9AEF label=CAST_TREES_OR_CASTLE_1
C $9AEF,6 If the current wizard is computer controlled jump to #R$9B00.
C $9AF5,7 If the spell being cast is a magic wood, jump to #R$9B1F.
@ $9B00 label=CAST_TREES_OR_CASTLE_2
C $9B00,8 If the spell being cast is a tree, jump to #R$9B1C.
C $9B16,5 Record that the spell was not cast.
@ $9B1C label=CAST_TREES_OR_CASTLE_3
@ $9B1F label=CAST_TREES_OR_CASTLE_4
@ $9B31 label=CAST_TREES_OR_CASTLE_5
@ $9B35 label=CAST_TREES_OR_CASTLE_6
C $9B55,6 If the spell succeeded (see #R$9167) jump to #R$9B71.
C $9B5B,7 Write the current spell ID (creature ID?) into the memory location corresponding to the cursor's position.
@ $9B71 label=CAST_TREES_OR_CASTLE_7
C $9B71,3 Display the spell succeeds/fails message.
@ $9B74 label=CAST_TREES_OR_CASTLE_8
c $9B76 Cast Wall
@ $9B76 label=CAST_WALL
C $9B76,5 Set the number of times you get to cast this spell (1) and save it at #R$97CE.
C $9B7B,6 If the current wizard is computer controlled jump to #R$9B85.
C $9BAD,5 Record that the spell was not cast.
C $9BF6,3 Display the cast animation.
C $9BF9,6 If the spell failed (see #R$9167) jump to #R$9C09.
C $9BFF,3 Spawn the new wall in the arena.
C $9C05,3 Display the spell succeeds/fails message.
C $9C09,3 Display the spell succeeds/fails message.
b $9C0E Data block at 9C0E
@ $9C0E label=VAR_9C0E
B $9C0E,1,1
c $9C0F Routine at 9C0F - something to do with walls
D $9C0F Used by the routines at #R$981A and #R$9B76.
@ $9C0F label=ROUTINE_9C0F
C $9C0F,5 Set #R$9C0E to 0.
C $9C14,7 If this spell isn't $28 (Wall) jump to #R$9C54.
c $9C59 Cast Lightning or Magic Bolt
@ $9C59 label=CAST_LIGHTNING
C $9C59,7 If the current wizard is computer controlled jump to #R$9D8A.
C $9C60,3 User key input.
C $9C63,3 Keyboard ROM subroutine.
C $9C66,4 If the user pressed S jump to #R$9C76.
C $9C6A,4 If the user pressed anything other than K jump back to #R$9C60.
C $9C6E,8 User pressed K. Play a sound effect, enable interrupts and return.
C $9C76,4 Load the target's ID into A by reading the memory location corresponding to the cursor location (#R$AC12).
C $9C7A,3 If there was no target at the cursor location, jump back to #R$9C60.
C $9C8C,3 Clear the message bar.
C $9C92,5 Set the colours to cyan on black ($45).
C $9C97,5 Print the message with ID $35 (OUT OF RANGE) at screen position $1600.
C $9C9F,3 Wait for keypress
c $9CA9 Routine at 9CA9
D $9CA9 Used by the routine at #R$9D8A.
@ $9CA9 label=ROUTINE_9CA9
C $9CB4,8 If the current spell ID < $2B (Lightning) jump to #R$9CC7.
C $9CE5,5 Set the colours to white on black ($47).
C $9D1C,5 A = the creature's defence.
C $9D41,3 A = a random number from 0 to 9.
C $9D49,3 A = a random number from 0 to 9.
C $9D4F,8 If the ID of the spell being cast < $2B (Lightning) jump to #R$9D5B.
c $9D8A Routine at 9D8A
D $9D8A Used by the routine at #R$9C59.
@ $9D8A label=ROUTINE_9D8A
C $9D9D,5 Record that the spell was not cast.
c $9DAA Routine at 9DAA
@ $9DAA label=ROUTINE_9DAA
N $9DB2 This entry point is used by the routine at #R$9D8A.
c $9DE0 Cast Dark Power, etc
@ $9DE0 label=CAST_DARK_POWER_SELECT_TARGET
C $9DE0,7 If the current wizard is computer controlled jump to #R$9EF9.
C $9DEA,6 If the spell succeeded (see #R$9167) jump to #R$9C09.
C $9DF0,3 Display the spell succeeds/fails message.
C $9DF4,3 Clear the message bar.
C $9DF7,5 If the spell failed (see #R$9167), return.
C $9DFE,8 If the ID of the spell being cast < $2F (Dark Power) jump to #R$9E08.
C $9E09,3 User key input.
C $9E0C,3 Keyboard ROM subroutine.
C $9E0F,4 If the user pressed S jump to #R$9E20.
C $9E13,4 If the user pressed anything other than K jump back to #R$9E09.
C $9E17,9 The user pressed K. Play a sound effect, enable interrupts and return.
C $9E20,4 Load the ID of the object at the cursor location into A.
C $9E24,3 If A is zero - i.e. there's nothing there - jump back to #R$9E09.
C $9E27,5 If A >= $29 (i.e. it's not an object) jump to #R$9E31.
C $9E2C,5 If A >= $22 (i.e. it's not a creature) jump back to #R$9E09.
c $9E38 Routine at 9E38
D $9E38 Used by the routines at #R$9DE0 and #R$9EF9.
@ $9E38 label=ROUTINE_9E38
C $9E68,3 Chan-open ROM subroutine.
C $9EA3,5 A = the creature's magic resistance.
C $9EA9,3 A = a random number from 0 to 9.
c $9EF9 Routine at 9EF9
D $9EF9 Used by the routine at #R$9DE0.
@ $9EF9 label=ROUTINE_9EF9
C $9EFF,6 If the spell succeeded (see #R$9167) jump to #R$9F09.
C $9F05,3 Display the spell succeeds/fails message.
C $9F0B,8 If the ID of the spell being cast < $2F (Dark Power) jump to #R$9F15.
c $9F50 Spread gooey blob and magic fire.
D $9F50 Used by the routine at #R$89F9.
@ $9F50 label=SPREAD_BLOB_AND_FIRE
C $9F50,3 HL = #R$E01F, arena state table 1
C $9F53,3 Set the location pointer to the top left.
C $9F56,3 Mark all objects in the arena as being ready
C $9F59,2 We're going to loop over the whole of table 1.
N $9F5B This entry point is used by the routine at #R$A075.
@ $9F5B label=SPREAD_BLOB_AND_FIRE_1
C $9F5C,3 HL = location pointer
C $9F5F,3 Store the location
C $9F62,9 Check bit 4 in the corresponding location in table 4. If it's not zero (i.e. the object is an illusion), jump to #R$A114.
C $9F6B,3 HL = current location
C $9F6E,1 A = ID of object at current location
C $9F6F,10 If A < 22 or A >= 24 there's something other than a blob or magic fire there. Jump to #R$A114.
C $9F79,4 Found a magic fire or blob. HL = the corresponding location in arena table 4.
C $9F7D,3 Get the ID of the owning wizard by ANDing with all but the 3 least significant bits.
C $9F80,3 Set the current wizard ID (#R$AC0E)
C $9F83,3 A = a random number from 0 to 9.
C $9F86,5 If A >= 9 jump to #R$A0C6. TODO Why?
C $9F8B,8 If the space contains a magic fire, jump to #R$9F9B.
C $9F93,3 A = a random number from 0 to 9.
C $9F96,5 If A >= 8 jump to #R$A0C6.
@ $9F9B label=SPREAD_BLOB_AND_FIRE_2
C $9F9B,3 A = a random number from 0 to 9.
C $9F9E,5 If A >= 8 jump back to #R$9F9B.
@ $A011 label=SPREAD_BLOB_AND_FIRE_3
@ $A03D label=SPREAD_BLOB_AND_FIRE_4
b $A06F Data block at A06F
B $A06F,6,6
c $A075 Routine at A075
D $A075 Used by the routine at #R$9F50.
@ $A075 label=MAYBE_BLOB_AND_FIRE_ACTIONS
C $A079,5 A = the creature's defence.
C $A081,3 A = a random number from 0 to 9.
C $A089,3 A = a random number from 0 to 9.
N $A09B This entry point is used by the routine at #R$9F50.
N $A0C6 This entry point is used by the routine at #R$9F50.
C $A0C6,3 A = a random number from 0 to 9.
C $A0C9,5 If A >= 2 jump to #R$A114.
C $A0CE,4 Get ID of object at the current location.
C $A0D2,4 If it's a magic fire jump to #R$A0DE.
C $A0D6,3 Going to check if a creature that is trapped in this blob can break free. A = a random number from 0 to 9.
C $A0D9,5 If A >= 3 jump to #R$A114.
C $A0DE,7 HL = corresponding location in table 5.
C $A0E5,1 A = object at the location in table 5
C $A0E6,3 If nothing's there jump to #R$A0FE.
C $A0E9,6 There was something in table 5. It broke free! Delete it from table 5 and move it to table 1.
C $A0EF,5 A = the item at the corresponding location in arena table 6. TODO What is it?
C $A0F4,2 Set the location in arena table 6 to 0.
C $A0F6,5 HL = the corresponding location in table 5.
C $A0FB,1 Store A in table 5, moving the item from table 6 to 5.
C $A0FE,3 TODO Fire/blob blinking out of existence?
C $A103,6 Delete the entry at the corresponding location in arena table 6.
N $A114 This entry point is used by the routine at #R$9F50.
C $A137,3 A = a random number from 0 to 9.
b $A172 Data block at A172
@ $A172 label=VAR_A172
B $A172,1,1
c $A173 Mark all creatures as not having moved yet.
D $A173 This involves resetting bit 7 across arena table 4.
R $A173 Used by the routines at #R$89F9 and #R$9F50.
@ $A173 label=SET_ALL_CREATURES_READY
C $A173,10 Set bit 7 across every entry in arena table 4 (#R$E200)
c $A17E Routine at A17E
D $A17E Used by the routines at #R$84F7, #R$85F6, #R$9A95, #R$9B76 and #R$9EF9.
@ $A17E label=ROUTINE_A17E
b $A188 Data block at A188
@ $A188 label=VAR_A188
B $A188,2,2
c $A18A Display the cast animation (cyan line, twirl)
D $A18A Used by the routines at #R$8357, #R$859C, #R$86C3, #R$981A, #R$9975, #R$9A21, #R$9ADD and #R$9B76.
@ $A18A label=DISPLAY_CAST_ANIMATION
C $A1A6,5 Set the colours to cyan on black ($45).
b $A1E6 Data block at A1E6
@ $A1E6 label=VAR_A1E6_MAYBE_TABLE
B $A1E6,38,8*4,6
b $A20C Graphics - cast twirl
D $A20C #HTML(#FOR(0,4)//n/ #UDGARRAY2;($A20C+n*$20)-(($A20C+n*$20)+$18)-8(cursor_anim_castn*.png) //)
@ $A20C label=GRAPHICS_TWIRL
B $A20C,313,8*39,1
b $A345 Graphics - explosion
D $A345 #HTML(#FOR(0,6)//n/ #UDGARRAY2;($A345+n*$20)-(($A345+n*$20)+$18)-8(explosionn*.png) //)
@ $A345 label=GRAPHICS_EXPLOSION
B $A345,224,8
b $A425 Data block at A425
B $A425,2007,8*250,7
b $ABFC Variable - combat range of the current creature
D $ABFC If 0 we know the combat isn't a ranged combat, otherwise holds the creature's range.
@ $ABFC label=COMBAT_RANGE
B $ABFC,1,1
b $ABFD Data block at ABFD
@ $ABFD label=VAR_ABFD
B $ABFD,2,2
b $ABFF Data block at ABFF
@ $ABFF label=VAR_ABFF
B $ABFF,1,1
b $AC00 Data block at AC00
@ $AC00 label=VAR_AC00
B $AC00,1,1
b $AC01 Variable - a creature's movement points
@ $AC01 label=MOVEMENT_POINTS
B $AC01,1,1
b $AC02 Variable - something to do with movement points
@ $AC02 label=MAYBE_TEMP_MOVE_POINTS
B $AC02,1,1
b $AC03 Variable - select square range
@ $AC03 label=SELECT_SQUARE_RANGE
B $AC03,1,1
b $AC04 Data block at AC04
@ $AC04 label=VAR_AC04
B $AC04,1,1
b $AC05 Data block at AC05
@ $AC05 label=VAR_AC05
B $AC05,1,1
b $AC06 Variable - ID of an enemy adjacent to the selected creature
@ $AC06 label=ADJACENT_ENEMY_ID
B $AC06,1,1
b $AC07 Variable - indicates whether the currently selected creature is engaged in combat with an enemy
@ $AC07 label=CREATURE_IS_ENGAGED
B $AC07,1,1
b $AC08 A byte of data about an object, taken from arena table 6 (#R$E340)
@ $AC08 label=CREATURE_STATUS_FROM_TABLE_6
B $AC08,1,1
b $AC09 A byte of data about an object, taken from arena table 5 (#R$E2A0)
@ $AC09 label=CREATURE_STATUS_FROM_TABLE_5
B $AC09,1,1
b $AC0A Variable - the wizard's XY coords are stored in here during #R$CA92. Also used as the destination for creature movement on a computer player's turn.
@ $AC0A label=MAYBE_WIZ_XY_COORDS
B $AC0A,2,2
b $AC0C Variable - selected creature ID (attacking creature during an attack)
@ $AC0C label=SELECTED_CREATURE_ID
B $AC0C,1,1
b $AC0D Variable - the code of the selected wizard object. Often used if he's hidden or on a mount.
D $AC0D Value from $29 to $30 representing the object ID of the a wizard.
@ $AC0D label=WIZARD_OBJECT_ID
B $AC0D,1,1
b $AC0E Variable - ID of active wizard
D $AC0E Value of 0-7 representing the wizard whose turn it currently is.
@ $AC0E label=CURRENT_WIZARD_ID
B $AC0E,1,1
b $AC0F Variable - number of wizards competing in the current game.
D $AC0F Starts counting from 1, unlike the wizard IDs.
@ $AC0F label=NUM_OF_WIZARDS
B $AC0F,1,1
b $AC10 A byte of data flags about an object, taken from arena table 4 (#R$E200): controlling wizard, whether it has been disbelieved, undead because of raise dead, etc.
@ $AC10 label=CREATURE_STATUS_FLAGS
B $AC10,1,1
b $AC11 Data block at AC11
@ $AC11 label=VAR_AC11
B $AC11,1,1
b $AC12 Pointer to a memory address corresponding to a location in the game state info table (#R$E01F)
D $AC12 When casting a spell or in ranged combat this is the location of the target.
@ $AC12 label=LOCATION_TARGET
B $AC12,2,2
b $AC14 Pointer to a memory address corresponding to a location in the game state info table (#R$E01F)
D $AC14 When casting a spell or in ranged combat this is the location of the caster or creature firing.
@ $AC14 label=LOCATION_SOURCE
B $AC14,2,2
b $AC16 Variables - wizard status values
D $AC16 8 bytes, one for each wizard, representing the wizard's current state. Each bit in the byte has a meaning, as shown in the table.
D $AC16 #TABLE(default,centre) { =h Bit | =h Bit value | =h Upgrade } { 7 | 128 | Magic Armour (also sets bit 6) } { 6 | 64 | Magic Shield } { 5 | 32 | Magic Wings } { 4 | 16 | Dead } { 3 | 8 | Shadow Form } { 2 | 4 | Magic Sword } { 1 | 2 | Magic Knife } { 0 | 1 | Magic Knife } TABLE#
@ $AC16 label=WIZARD_STATUS_VALUES
B $AC16,8,8
b $AC1E TODO - Unknown wizard status values.
D $AC1E Don't know what this is recording. Set during the routine at #R$7D04.
@ $AC1E label=UNKNOWN_WIZARD_STATUS_VALUES
B $AC1E,8,8
b $AC26 Flags - computer controlled wizards
D $AC26 One for each wizard. 0 if the wizard is player controlled, 1 if they are computer controlled.
@ $AC26 label=COMP_CONTROLLED_WIZARDS
B $AC26,8,8
b $AC2E Flag - is current wizard computer controlled
D $AC2E 1 if the wizard whose turn it is is computer controlled - 0 otherwise.
@ $AC2E label=WIZ_IS_COMP_CONTROLLED
B $AC2E,1,1
b $AC2F Data block at AC2F
@ $AC2F label=VAR_AC2F
B $AC2F,1,1
b $AC30 Data block at AC30
@ $AC30 label=VAR_AC30
B $AC30,1,1
b $AC31 Variable - maybe whether creature can fly. False if set to 0, otherwise true
@ $AC31 label=MAYBE_CREATURE_CAN_FLY
B $AC31,1,1
b $AC32 Stores the last keypress (e.g. X for down = $58)
@ $AC32 label=LAST_KEYPRESS
B $AC32,1,1
b $AC33 Data block at AC33
@ $AC33 label=VAR_AC33
B $AC33,1,1
b $AC34 Variable - holds count of dead wizards in this game
@ $AC34 label=DEAD_WIZARD_COUNT
B $AC34,1,1
b $AC35 Data block at AC35
@ $AC35 label=VAR_AC35
B $AC35,1,1
c $AC36 Wizard turns.
D $AC36 Used by the routine at #R$89F9.
@ $AC36 label=WIZARD_TURN
@ $AC3A label=WIZARD_TURN_1
C $AC45,3 #R$AC16 is the address that stores the wizard status flags. Load that address into HL.
C $AC48,3 DE = current wizard ID.
C $AC4B,2 Add DE to HL to get the memory address of the current wizard's status, then load it into A.
C $AC4D,4 If bit 4 is set (i.e. the wizard is dead) jump to #R$ACB9 (skipping his turn).
C $AC51,5 Set #R$AC2E to 0 (it stores whether the current wizard is computer controlled).
C $AC56,3 A = current wizard ID
C $AC59,3 The 8 addresses starting at #R$AC26 store which wizards are computer controlled.
C $AC5C,3 DE = current wizard ID.
C $AC5F,2 Add DE to HL to get the memory address indicating whether the current wizard is computer controlled, and load its value into A.
C $AC61,3 If A is 0 (wizard is player controlled), jump to #R$AC69.
C $AC64,5 Wizard is computer controlled. Set #R$AC2E to 1.
@ $AC69 label=WIZARD_TURN_2
C $AC69,5 Set the colours to yellow on black ($46).
C $AC6E,3 Clear the message bar.
C $AC71,5 Add $29 to the ID of the active wizard (#R$AC0E) to get the ID of current wizard's name in the string table at #R$CDD3.
C $AC76,6 Print the current wizard's name at screen location $1600.
C $AC7C,5 Print the message with ID $37 ('S TURN).
@ $AC91 label=WIZARD_TURN_3
@ $AC94 label=WIZARD_TURN_4
C $AC9C,3 Wait for keypress
C $AC9F,6 If the current wizard is player controlled jump to #R$ACB0.
@ $ACA7 label=WIZARD_TURN_5
C $ACA7,3 Pause for a short moment.
C $ACAA,3 Clear the message bar.
C $ACAD,3 Computer controlled wizard takes a turn.
@ $ACB0 label=WIZARD_TURN_6
C $ACB0,3 Clear the message bar.
N $ACB9 This entry point is used by the routine at #R$C710.
@ $ACB9 label=WIZARD_TURN_7
C $ACBA,4 If there are more wizards to take a turn, jump back to #R$AC3A.
c $ACC6 Wait for the user to select a creature.
D $ACC6 Used by the routine at #R$AC36.
@ $ACC6 label=SELECT_CREATURE_CHECK
C $ACCC,3 User key input.
C $ACD0,3 Keyboard ROM subroutine.
C $ACD3,2 S Key
C $ACD6,3 Creature selected. Call #R$ACED.
C $ACD9,2 0 key
C $ACE2,3 Clear the message bar.
c $ACED Creature selected.
D $ACED Used by the routines at #R$ACC6 and #R$C710.
@ $ACED label=CREATURE_SELECTED
C $AD03,3 A = selected creature ID
C $AD07,5 A = the creature's movement allowance.
C $AD11,1 A = selected creature ID
C $AD12,10 If A < $13 or A >= $1E(creatures code for non-flying creatures) jump to #R$AD23
C $AD1C,7 Set the selection square range (#R$AC03) to the movement range +1. TODO Why?
C $AD23,3 A = selected creature ID
C $AD26,5 If it's not a wizard, jump to #R$AD4A.
C $AD2B,8 A = wizard's status value from the table at #R$AC16.
C $AD33,4 If the wizard has magic wings, continue. Otherwise, jump to #R$AD3E.
C $AD37,5 Set the range of squares we can select #R$AC03 to 13 (six spaces flying).
C $AD3C,2 Jump to #R$AD4A.
C $AD3E,4 If the wizard has shadow form, continue. Otherwise, jump to #R$AD4A.
C $AD42,5 Set remaining move points (TODO verify) to 6 (3 spaces)
C $AD4A,3 Get the creature's status flags from #R$AC10.
C $AD4D,3 If bit 7 is set (creature has already moved) return.
C $AD50,3 A = selected creature ID
C $AD53,2 If there's no creature at the space, return.
C $AD55,5 If the creature is a wizard, continue. If not, jump to #R$AD68.
C $AD5A,5 Compare the selected wizard with the current wizard ID. If they're different, return.
C $AD5F,3 A = selected creature ID
C $AD62,3 Store the selected creature's ID in #R$AC0D (TODO Why?)
C $AD65,3 Jump to #R$ADD2.
C $AD68,3 Get the object status from arena table 5.
C $AD6B,5 If it's less than $29 (i.e. doesn't contain a hidden wizard) jump to #R$ADB3.
C $AD70,3 HL = current wizard ID
C $AD73,1 Compare current wizard ID with ID of wizard at space we clicked.
C $AD74,1 Return if it's a different wizard.
C $AD75,3 Get the object status from arena table 5 again.
C $AD83,5 Set the colours to yellow on black ($46).
C $AD88,6 If the current wizard is computer controlled jump to #R$ADA1.
C $AD8E,8 Print the message with ID $33 (DISMOUNT WIZARD? (Y OR N)) at screen position $1600.
C $AD96,3 Keyboard ROM subroutine.
C $AD99,4 If the user pressed Y jump to #R$ADA7.
C $AD9D,4 If the user pressed anything other than N jump back to #R$AD96.
C $ADA1,1 The user pressed N. The wizard will stay mounted.
C $ADB3,3 A = selected creature ID
C $ADB6,4 If selected creature is a shadow wood jump to #R$ADBD.
C $ADBA,3 If selected creature ID >= $22 (gooey blob, the first non-movable object in the list) return.
C $ADBD,5 A = ID of the owning wizard.
C $ADC2,3 HL = current wizard ID
C $ADC5,2 If the selected creature isn't owned by the wizard whose turn it is, return.
C $ADC7,8 A = selected object's status in arena table 4.
C $ADCF,3 If the value is 4 (i.e. the creature is dead) return.
C $ADDB,3 A = status value from table 5 (#R$AC09)
C $ADDE,3 If the wizard is hiding in a tree/castle or on a mount jump to #R$ADF4.
C $ADE1,3 A = selected creature ID (#R$AC0C)
C $ADE5,5 A = the creature's manoeuvre rating.
C $ADEB,3 A = a random number from 0 to 9.
C $ADEE,6 If A + 2 >= the creature's manoeuvre rating call #R$BEB2.
C $ADFB,6 If #R$AC07 is set (i.e. the creature is engaged in combat with an enemy) jump to #R$AE50.
C $AE01,3 Clear the message bar.
C $AE04,5 Set the colours to green on black ($44).
C $AE09,8 Print the message with ID $3A (MOVEMENT RANGE=) at screen position $1600.
C $AE11,5 Set the colours to yellow on black ($46).
C $AE16,3 A = wizard object ID, if he's hidden or on a mount that's currently been selected.
C $AE19,3 If wizard is hidden or on a mount, jump to #R$AE1F.
C $AE1C,3 A = selected creature ID.
C $AE20,5 A = selected the creature's movement allowance.
C $AE30,5 Add $30 to get the corresponding character code for the movement allowance and print it to screen.
C $AE3C,6 If the current wizard is player controlled jump to #R$AE50.
C $AE42,6 If the creature can fly (or is on a flying mount) jump to #R$AE4D.
N $AE50 This entry point is used by the routines at #R$AF0D and #R$B168.
C $AE5B,6 If the current wizard is player controlled jump to #R$AE77.
C $AE61,6 If the creature can fly (or is on a flying mount) jump to #R$AE70.
N $AE7A This entry point is used by the routine at #R$B0A8.
C $AE8A,5 If the user pressed I, display the creature info screen
C $AE8F,4 If the user pressed anything other than K jump to #R$AE9D.
C $AE9D,12 If the user hasn't selected a target square yet, jump back to #R$AE50.
C $AEA9,7 User has chosen a target square. A = TODO??? #R$AC0C. If it's 0 jump to #R$AF50.
C $AEF4,3 A = selected creature ID (#R$AC0C)
C $AEF7,10 If A < $10 or A >= $16 (TODO the selected creature is not mountable, maybe?) jump to #R$AE50.
b $AF03 Data block at AF03
B $AF03,10,8,2
c $AF0D Maybe creature turn routine?
D $AF0D Used by the routine at #R$ACED.
@ $AF0D label=ROUTINE_AF0D_MAYBE_CREATURE_TURN
C $AF33,3 HL = location source (#R$AC14)
C $AF36,1 A = ID of creature at source (usually attacking creature?)
C $AF37,5 If A > $29 (is a wizard) jump to #R$B168, attack calculation
C $AF3C,5 A = corresponding data in arena table 4.
C $AF41,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
C $AF43,1 E = ID of the attacked creature's wizard
C $AF44,3 A = ID of the attacked creature
C $AF47,6 If the attacking creature is not owned by the wizard it's attacking, jump to #R$B168, attack calculation.
C $AF4D,3 Can't attack your own wizard - jump back to #R$AE50.
N $AF50 This entry point is used by the routines at #R$ACED and #R$B168.
C $AF50,7 If #R$AC07 is set (i.e. the creature is engaged in combat with an enemy) jump to #R$AE50.
C $AF64,4 A = ID of the selected creature.
C $AF68,5 If selected creature is a shadow wood jump to #R$B06F.
C $AF88,8 A = corresponding selected creature's entry in arena table 6.
C $AF90,3 If A == 0 jump to #R$AFBA.
C $AFA3,8 A = creature's ID in arena table 4.
C $AFAB,3 Set the creature's status flags (#R$AC10).
C $AFAE,4 Point HL to the corresponding space in arena table 5.
C $AFB2,6 Save the creature data from table 5 to #R$AC09, then set that space in arena table 5 to 0.
C $AFDF,3 HL = target location
C $AFE4,3 A = selected creature ID (#R$AC0C)
C $AFE7,1 Copy creature ID to the target location
C $AFE9,5 Point HL to the corresponding location in data table 6 and copy in the selected creature ID.
C $AFEE,5 Subtract $280 from HL to point it to the corresponding square in arena table 2.
C $AFF3,3 Set the value in arena table 2 to $01.
C $AFF6,4 Add $A0 to HL to point it at arena table 3.
C $AFFA,3 Set the location in arena table 3 to 0.
C $AFFD,1 Add another $A0 to point HL at arena table 4.
C $AFFE,4 Copy the creature's stats from #R$AC10 to arena table 4.
C $B002,1 Add another $A0 to point HL at arena table 5.
C $B003,4 Copy the creature's stats from #R$AC09 to arena table 5.
C $B02C,7 If #R$AC07 is set (i.e. the creature is engaged in combat with an enemy) jump to #R$AE50.
C $B04C,3 Clear the message bar.
C $B04F,5 Set the colours to green on black ($44).
C $B054,8 Print the message with ID $38 (MOVEMENT POINTS LEFT=) at screen position $1600.
C $B05C,5 Set the colours to yellow on black ($46).
N $B06F This entry point is used by the routines at #R$ACED, #R$B0A8 and #R$B168.
C $B06F,3 HL = location of currently selected creature in arena table 1
C $B072,4 HL = corresponding location in arena table 4
C $B076,2 Set bit 7 to indicate that the creature has moved this turn
C $B078,3 Clear the message bar.
C $B082,5 Set #R$AC31, indicating that the creature can fly.
C $B098,5 A = the creature's range.
C $B09D,2 If the creature doesn't have ranged combat, return.
C $B09F,3 Set #R$ABFC to the creature's range.
C $B0A2,3 TODO Set up ranged combat?
C $B0A5,3 Call the ranged combat routine.
c $B0A8 Flying movement.
D $B0A8 Used by the routine at #R$ACED.
@ $B0A8 label=FLYING_MOVEMENT
C $B0AF,5 Set the colours to cyan on black ($45).
C $B0B4,8 Print the message with ID $36 ((FLYING)) at screen position $1611.
C $B0BF,3 Wait for keypress
C $B0C2,6 If the current wizard is player controlled jump to #R$B0CB.
C $B0CB,3 Clear the message bar.
C $B0D9,5 Creature is engaged to an enemy. Set its range (#R$AC03) to 3.
C $B0DE,6 If the current wizard is player controlled jump to #R$B0E9.
C $B0EF,3 User key input.
C $B0F2,3 Keyboard ROM subroutine.
C $B0FB,5 If the user pressed I show the
C $B100,4 If the user pressed anything other than K jump to #R$B114.
C $B104,7 User cancelled. Play a sound effect.
C $B114,4 If the user pressed anything other than S jump to #R$B0DE.
C $B118,22 User pressed S. Check the range.
C $B12E,3 If it was in range, jump to #R$B148.
C $B131,5 Set the colours to yellow on black ($46).
C $B136,8 Print the message with ID $35 (OUT OF RANGE) at screen position $1600.
C $B143,3 Wait for keypress
b $B161 Attack bonus
@ $B161 label=ATTACK_BONUS
B $B161,1,1
b $B162 Defence bonus
@ $B162 label=DEFENCE_BONUS
B $B162,1,1
b $B163 Variable - 0 if the attacking creature is not undead, otherwise true
@ $B163 label=ATTACKER_IS_UNDEAD
B $B163,1,1
b $B164 Variable - 0 if the attacked creature is not undead, otherwise true
@ $B164 label=ATTACKED_IS_UNDEAD
B $B164,1,1
b $B165 Data block at B165
@ $B165 label=VAR_B165_MAYBE_ATTACKING_CREATURE
B $B165,1,1
b $B166 Data block at B166
@ $B166 label=VAR_B166
B $B166,1,1
b $B167 Data block at B167
@ $B167 label=VAR_B167
B $B167,1,1
c $B168 Attack calculation
D $B168 Used by the routines at #R$ACED, #R$AF0D and #R$B8DD.
@ $B168 label=ATTACK_CALC
C $B168,3 Clear the message bar.
C $B16B,3 HL = location of the attacked creature
C $B16E,5 A = value from arena table 6 corresponding to the attacked creature.
C $B177,3 Set #R$B161 (attack bonus) to 0.
C $B17A,3 Set #R$B162 (defence bonus )to 0.
C $B17D,3 Set #R$B163 (attacker is undead) to 0.
C $B180,3 Set #R$B164 (attacked creature is undead) to 0.
C $B183,4 A = ID of the attacking creature.
C $B18D,5 If attacking creature's ID < $1C jump to #R$B19A.
C $B192,5 If attacking creature's ID >= $22 jump to #R$B19A.
C $B197,3 The attacking creature is undead. Set #R$B163.
C $B19A,8 Get the info on the attacking creature from arena table 4.
C $B1A2,4 If bit 6 is 0 (creature is not undead), jump to #R$B1A9.
C $B1A6,3 The target is undead. Set #R$B163.
C $B1A9,3 A = ID of attacked creature
C $B1AC,5 Subtract $29 - if it's negative - i.e. the creature is not a wizard - jump to #R$B1F8.
C $B1B1,7 The attacked creature is a wizard. HL = address of the appropriate wizard's status value byte in the small table at #R$AC16.
C $B1B8,2 Set bit 3 to 0, cancelling shadow form.
C $B1BB,13 Point HL to the creature's entry in the table at #R$E3E0.
C $B1C8,3 Load BC with the memory address at which we can find the creature's name.
C $B1CF,13 TODO Possibly changing the colours with which the target is displayed?
C $B1ED,5 A = the creature's ranged combat value.
C $B1FB,1 A = ID of attacked creature
C $B1FC,10 If attacked creature's ID is not in the undead creature range ($1C to $21) jump to #R$B209.
C $B206,3 Attacked creature is undead. Set #R$B164.
C $B209,5 A = status value of the attacked creature, from arena table 4.
C $B20E,4 If bit 6 is not set (it's not undead), jump to #R$B215.
C $B212,3 Attacked creature is undead. Set #R$B164.
C $B215,4 A = ID of attacked creature
C $B219,5 If the attacked creature is not a wizard jump to #R$B23D.
C $B21E,7 Attacked creature is a wizard. Get the wizard's status value from the table at #R$AC16.
C $B225,2 A = wizard's status value.
C $B232,4 If bit 3 is zero (i.e. wizard does not have shadow form) jump to #R$B23D.
C $B236,7 Wizard has shadow form. Add 3 to the defence bonus.
C $B23D,6 If the attacked creature is not undead, jump to #R$B26E.
C $B243,6 If the attacking creature is undead, jump to #R$B26E.
C $B249,5 A mortal attacker is attacking the undead. Set the colours to cyan on black ($45).
C $B24E,8 Print the message with ID $39 (UNDEAD-CANNOT BE ATTACKED) at screen position $1600.
C $B260,3 Wait for keypress
C $B263,3 Clear the message bar.
C $B26E,3 A = attacking creature ID
C $B271,1 D = attacking creature ID
C $B272,2 E = $0D (code for combat value)
C $B274,6 If this is not ranged combat, jump to #R$B27C.
C $B27A,2 E = $0D (code for ranged combat value)
C $B27C,3 A = the attacking creature's combat (or ranged combat) value.
C $B27F,4 Get attack bonus from #R$B161 and add it to A.
C $B284,3 A = a random number from 0 to 9.
C $B287,1 Add the random number to the previously calculated attack value.
C $B288,1 Save the result to C.
C $B28A,4 A = the attacked creature's ID.
C $B28E,6 A = the creature's defence.
C $B294,4 Get defence bonus from #R$B162 and add it to A.
C $B298,1 E = Defence result
C $B29C,3 A = a random number from 0 to 9.
C $B29F,1 A = A + defence result
C $B2A1,1 A = A (defending creature's defence total) - C (attacking creature's attack total)
C $B2A3,3 A = #R$ABFC (combat range)
C $B2A9,3 Display attack animation at attacked creature's square.
C $B2AD,3 If A >= 0, creature survived. Jump to #R$B302.
C $B2B0,8 The creature did not survive. A = the attacked creature's data from arena table 5.
C $B2BB,4 A = ID of attacked creature
C $B2BF,5 If A >= $29 (creature is a wizard) call #R$B3C9.
C $B2C4,5 Going to work out if the creature leaves a body behind. If the creature's ID >= $1C, it doesn't.
C $B2C9,10 Get the creature's status from arena table 4 and look in bit 4. If it's an illusion (bit 4 was set) it won't leave a body behind. Jump to #$B310.
C $B2D3,5 If it had been undead through the raise dead spell, it won't leave behind a body. Jump to #$B310.
C $B311,3 Set #R$AC07 to 0.
C $B314,3 Set #R$AC01 to 0.
C $B317,3 Set #R$AC0D to 0.
C $B31A,3 HL = location of attacked creature in arena table 1
C $B324,4 Get the corresponding space for the attacked creature in arena table 2.
C $B328,2 Set it to 1. TODO - what does this indicate?
C $B32A,4 Point HL to the corresponding space in arena 3.
C $B32E,2 Set the value to 4, which indicates a dead body at the space.
C $B338,3 A = attacking creature ID
C $B33B,4 If attacker is a shadow wood tree, jump to #R$B302.
C $B33F,5 If this was a ranged combat, return.
b $B374 Variable - maybe the ID of the attacked creature
@ $B374 label=MAYBE_ATTACKED_CREATURE_ID
B $B374,1,1
c $B375 Display attack animation
D $B375 Used by the routine at #R$B168.
@ $B375 label=DISPLAY_ATTACK_ANIMATION
C $B385,5 Set the colours to yellow on black ($46).
b $B3C3 Data block at B3C3
@ $B3C3 label=VAR_B3C3
B $B3C3,1,1
b $B3C4 Data block at B3C4
@ $B3C4 label=VAR_B3C4
B $B3C4,1,1
b $B3C5 Data block at B3C5
@ $B3C5 label=VAR_B3C5
B $B3C5,1,1
b $B3C6 Data block at B3C6
@ $B3C6 label=VAR_B3C6
B $B3C6,1,1
b $B3C7 Data block at B3C7
@ $B3C7 label=VAR_B3C7
B $B3C7,2,2
c $B3C9 Wizard death
D $B3C9 Used by the routines at #R$9C59, #R$9CA9, #R$9F50 and #R$B168.
@ $B3C9 label=WIZARD_DEATH
N $B4FA This entry point is used by the routine at #R$9E38.
C $B502,5 Set the colours to yellow on black ($46).
b $B60B Data block at B60B
@ $B60B label=VAR_B60B
B $B60B,1,1
b $B60C Data block at B60C
@ $B60C label=VAR_B60C
B $B60C,1,1
c $B60D Routine at B60D
D $B60D Used by the routine at #R$B626.
@ $B60D label=ROUTINE_B60D
c $B626 Routine at B626 Maybe fire attack animation
D $B626 Used by the routines at #R$98DB, #R$9C59, #R$9CA9, #R$A18A and #R$B8DD.
@ $B626 label=MAYBE_FIRE_ATTACK_ANIM
C $B642,5 Set the colours to white on black ($47).
C $B656,5 Set the colours to yellow on black ($46).
C $B66A,5 Set the colours to cyan on black ($45).
C $B67B,5 Set the colours to yellow on black ($46).
C $B68E,5 Set the colours to yellow on black ($46).
C $B6A1,5 Set the colours to white on black ($47).
c $B733 Routine at B733
D $B733 Used by the routine at #R$B8BD.
@ $B733 label=ROUTINE_B733
C $B737,3 Pixel address ROM subroutine.
c $B746 Routine at B746
D $B746 Used by the routine at #R$B626.
@ $B746 label=ROUTINE_B746
b $B754 Data block at B754
@ $B754 label=VAR_B754
B $B754,1,1
c $B755 Routine at B755
D $B755 Used by the routine at #R$B746.
@ $B755 label=ROUTINE_B755
C $B759,3 Pixel address ROM subroutine.
b $B769 Data block at B769
@ $B769 label=VAR_B769
B $B769,1,1
b $B76A Data block at B76A
@ $B76A label=VAR_B76A
B $B76A,1,1
b $B76B Data block at B76B
@ $B76B label=VAR_B76B
B $B76B,2,2
b $B76D Data block at B76D
@ $B76D label=VAR_B76D
B $B76D,102,8*12,6
c $B7D3 Routine at B7D3
D $B7D3 Used by the routine at #R$B746.
@ $B7D3 label=ROUTINE_B7D3
b $B844 Data block at B844
@ $B844 label=VAR_B844
B $B844,1,1
c $B845 Routine at B845
D $B845 Used by the routine at #R$B7D3.
@ $B845 label=ROUTINE_B845
N $B84D This entry point is used by the routine at #R$B7D3.
c $B8BD Routine at B8BD
D $B8BD Used by the routine at #R$B845.
@ $B8BD label=ROUTINE_B8BD
C $B8D8,3 Plot command ROM routine.
c $B8DD Ranged combat
D $B8DD Used by the routine at #R$AF0D.
@ $B8DD label=RANGED_COMBAT
C $B8DD,8 Draw the border in magenta on black ($43).
C $B8E5,5 Set the colours to green on black ($44).
C $B8EA,8 Print the message with ID $3B (RANGED COMBAT,RANGE=) at screen position $1600.
C $B8F2,5 Set the colours to yellow on black ($46).
C $B8F7,8 Print the ranged combat value.
C $B90E,6 If the current wizard is player controlled jump to #R$B917.
@ $B917 label=RANGED_COMBAT_1
C $B91A,3 Wait for keypress
C $B91D,6 Set the graphic to cursor 2 ($5C7B).
@ $B923 label=RANGED_COMBAT_2_SELECT_TARGET
C $B923,6 If the current wizard is player controlled jump to #R$B92E.
@ $B92E label=RANGED_COMBAT_3
C $B92E,3 User key input.
C $B931,3 Keyboard ROM subroutine.
@ $B934 label=RANGED_COMBAT_4_DID_USER_CANCEL
C $B934,4 If the user pressed anything other than K jump to #R$B94B.
C $B938,8 Draw the border in blue on black ($41).
C $B940,3 Clear the message bar.
@ $B94B label=RANGED_COMBAT_5_CHECK_RANGE
C $B94B,4 If the user pressed anything other than S jump back to #R$B923.
C $B976,5 Set the colours to cyan on black ($45).
C $B97B,8 Print the message with ID $35 (OUT OF RANGE) at screen position $1600.
C $B986,3 Wait for keypress
@ $B98B label=RANGED_COMBAT_6_CHECK_LOS
C $B9A2,5 Set the colours to cyan on black ($45).
C $B9A7,3 Clear the message bar.
C $B9AA,8 Print the message with ID $3C (NO LINE OF SIGHT) at screen position $1600.
C $B9B5,3 Wait for keypress
@ $B9BB label=RANGED_COMBAT_7
@ $B9D9 label=RANGED_COMBAT_8
@ $B9E2 label=RANGED_COMBAT_9
@ $B9E4 label=RANGED_COMBAT_10
C $BA07,5 Set the colours to white on black ($47).
C $BA1C,5 Set the colours to yellow on black ($46).
@ $BA21 label=RANGED_COMBAT_11
@ $BA2B label=RANGED_COMBAT_12
@ $BA5E label=RANGED_COMBAT_13
C $BA5E,4 A = ID of the target object.
C $BA62,4 If A == $24 (Magic Wood), jump to #R$BA72.
C $BA66,4 If A == $25 (Shadow Wood), jump to #R$BA72.
C $BA6A,5 If A >= $29 (Wizard) jump to #R$BA72.
C $BA6F,3 If the target is pointing at anything from $23 to $28, return. TODO What's going on here?
@ $BA72 label=RANGED_COMBAT_14
b $BA75 Variable - Temp variable for routine at #R$BA77.
@ $BA75 label=TEMP_VAR_FOR_BA77
B $BA75,2,2
c $BA77 Routine at BA77
D $BA77 Used by the routines at #R$98DB and #R$B8DD.
@ $BA77 label=ROUTINE_BA77
C $BA78,6 Going to loop through every space in the arena table 1.
C $BA7E,3 Save current index to #R$BA75
C $BA81,6 If the space contains magic fire call #R$BABE.
C $BA87,5 If the space contains a ghost call #R$BABE.
C $BA8C,5 If the space contains a wraith call #R$BABE.
C $BA91,4 HL = the corresponding space in arena table 3
C $BA95,3 If table 3 contains the value 4 call #R$BABE. TODO Why?
C $BA9C,9 HL = current space - cursor (TODO starting position?)
C $BAA5,3 If same space call #R$BABE?
c $BABE Routine at BABE
D $BABE Used by the routine at #R$BA77.
@ $BABE label=ROUTINE_BABE
c $BAD6 Prints a single character, as set in A? TODO Check
D $BAD6 Used by the routines at #R$89B0, #R$89F9, #R$9168, #R$9385, #R$94A7, #R$967A, #R$ACED, #R$AF0D, #R$B8DD, #R$BAEE, #R$BC96, #R$C3B3, #R$C5FC and #R$C612.
@ $BAD6 label=PRINT_SINGLE_CHAR
c $BAEE Routine at BAEE
D $BAEE Used by the routines at #R$87EF and #R$BAFB.
@ $BAEE label=ROUTINE_BAEE_PRINT_WORD
c $BAFB Print message to screen
D $BAFB Prints one of the messages starting at #R$CFCB (described in the table at #R$CDD3).
D $BAFB Used by the routines at #R$89F9, #R$8F8B, #R$9168, #R$9385, #R$94A7, #R$967A, #R$97A3, #R$981A, #R$9C59, #R$AC36, #R$ACED, #R$AF0D, #R$B0A8, #R$B168, #R$B8DD, #R$BC96, #R$BEB2, #R$BED7, #R$C3B3, #R$C5FC and #R$C612.
@ $BAFB label=PRINT_MESSAGE_2
b $BB15 Data block at BB15
B $BB15,64,8
b $BB55 Data block at BB55
@ $BB55 label=VAR_BB55
B $BB55,2,2
c $BB57 Draw the border.
D $BB57 The colours used are stored in system variable $5C36, which should be set before calling this routine.
D $BB57 Used by the routines at #R$89F9, #R$9168, #R$94A7, #R$B8DD, #R$C0D8 and #R$C3B3.
@ $BB57 label=DRAW_BORDER
c $BBB0 Wait for a user keypress, if the current wizard is not a computer player. What's the difference between this and #R$BBCC?
D $BBB0 Used by the routines at #R$94A7, #R$95C7, #R$981A, #R$9C59, #R$AC36, #R$B0A8, #R$B168, #R$B8DD and #R$C3B3.
@ $BBB0 label=WAIT_FOR_KEYPRESS_1
C $BBB3,6 If the current wizard is computer controlled jump to #R$BBC8.
C $BBBA,3 Keyboard scanning ROM subroutine.
C $BBC5,3 Set $5C76 (the seed for RND) to A
c $BBCC Wait for a user keypress, if the current wizard is not a computer player. What's the difference between this and #R$BBB0?
D $BBCC Used by the routines at #R$9168, #R$92BE, #R$9385, #R$94A7, #R$981A, #R$99F1, #R$9C59, #R$AC36, #R$AF0D, #R$B0A8, #R$B168, #R$B8DD and #R$C3B3.
@ $BBCC label=WAIT_FOR_KEYPRESS_2
C $BBCF,6 If the current wizard is computer controlled jump to #R$BBE3.
C $BBD6,3 Keyboard scanning ROM subroutine.
C $BBE0,3 Set $5C76 (the seed for RND) to A
c $BBE7 Check for cursor move keypresses.
D $BBE7 Used by the routines at #R$ACED and #R$BC96.
@ $BBE7 label=MOVE_CURSOR_CHECK
C $BBEF,7 If the current wizard is computer controlled jump to #R$CDC0.
C $BBF6,3 Keyboard ROM subroutine.
N $BBF9 This entry point is used by the routine at #R$CDB8.
@ $BBF9 label=MOVE_CURSOR_CHECK_UP
C $BBFD,2 Key W
C $BC06,3 Move cursor up.
@ $BC09 label=MOVE_CURSOR_CHECK_DOWN
C $BC09,2 Key X
C $BC12,3 Move cursor down.
@ $BC15 label=MOVE_CURSOR_CHECK_LEFT
C $BC15,2 Key A
C $BC1E,3 Move cursor left.
@ $BC21 label=MOVE_CURSOR_CHECK_RIGHT
C $BC21,2 Key D
C $BC2A,3 Move cursor right.
@ $BC2D label=MOVE_CURSOR_CHECK_UP_LEFT
C $BC2D,2 Key Q
C $BC36,3 Move cursor left.
C $BC39,3 Move cursor up.
@ $BC3C label=MOVE_CURSOR_CHECK_UP_RIGHT
C $BC3C,2 Key E
C $BC45,3 Move cursor right.
C $BC48,3 Move cursor up.
@ $BC4B label=MOVE_CURSOR_CHECK_DOWN_LEFT
C $BC4B,2 Key Z
C $BC54,3 Move cursor down.
C $BC57,3 Move cursor left.
@ $BC5A label=MOVE_CURSOR_CHECK_DOWN_RIGHT
C $BC5A,2 Key C
C $BC63,3 Move cursor right.
C $BC66,3 Move cursor down.
@ $BC69 label=MOVE_CURSOR_CHECK_RETURN
c $BC6C Move cursor up.
D $BC6C Used by the routine at #R$BBE7.
@ $BC6C label=MOVE_CURSOR_UP
c $BC72 Move cursor down.
D $BC72 Used by the routine at #R$BBE7.
@ $BC72 label=MOVE_CURSOR_DOWN
c $BC7D Move cursor left.
D $BC7D Used by the routine at #R$BBE7.
@ $BC7D label=MOVE_CURSOR_LEFT
c $BC83 Move cursor right.
D $BC83 Used by the routine at #R$BBE7.
@ $BC83 label=MOVE_CURSOR_RIGHT
N $BC8C This entry point is used by the routines at #R$BC6C, #R$BC72 and #R$BC7D.
c $BC8D Routine at BC8D
D $BC8D Used by the routines at #R$9E38 and #R$BDA5.
@ $BC8D label=ROUTINE_BC8D
b $BC94 Variable - X-Y coordinates. The first byte holds the number of spaces in from the left, and the next holds the spaces from the top.
@ $BC94 label=XY_COORDS
B $BC94,2,2
c $BC96 Keyboard input.
D $BC96 Used by the routines at #R$84F7, #R$85F6, #R$92BE, #R$981A, #R$99F1, #R$9C59, #R$9DE0, #R$ACC6, #R$B0A8 and #R$B8DD.
@ $BC96 label=KEY_INPUT
C $BC96,3 Keyboard ROM subroutine.
C $BC99,4 If the key pressed was 'I' fall through, otherwise jump to #R$BCA3.
C $BC9D,3 Display the 'I' key info page.
C $BCA3,3 Keyboard ROM subroutine.
C $BCA6,5 If the user pressed 9 or higher jump to #R$BCE5.
C $BCAB,5 If the user pressed anything lower than 1 jump to #R$BCE5.
C $BCB0,2 User pressed a number key. Subtract $31 to convert the key code into the corresponding wizard ID (first wizard = 0, etc.)
C $BCB2,3 HL = mem address containing the number of wizards in the game (#R$AC0F).
C $BCB6,3 If it's too big to be a wizard ID, jump to #R$BCE5.
C $BCB9,3 Set #R$D391, storing the ID of the wizard whose creations we want to identify
C $BCC0,3 Flash the backgrounds of the creatures controlled by the wizard whose number was pressed.
C $BCD3,5 Print the message with ID $5F ('S CREATIONS).
C $BCD8,3 Keyboard scanning ROM subroutine.
C $BCDE,3 Clear the message bar.
C $BCFD,3 Maybe moving the cursor to a new position.
C $BD06,4 Add $01E1 to HL to get the corresponding location in arena data table 4.
C $BD0A,1 A = data in table 4 at the cursor position
C $BD0B,3 Populate #R$AC10, which holds creature data flags
C $BD11,5 Set the colours to cyan on black ($45).
C $BD20,5 Set the colours to green on black ($44).
C $BD2C,5 Print the message with ID $31 ((ASLEEP)). Note - never used in game.
C $BD33,4 Add $01E1 to HL to get the corresponding location in arena data table 3.
C $BD37,1 A = status value from the current cursor location in arena table 3.
C $BD38,4 If A != 0, jump to #R$BD43.
C $BD3C,5 The creature at the space is dead. Print the message with ID $32 ((DEAD)).
C $BD43,4 HL = HL + $0140, becoming the location in arena table 5
C $BD47,5 Set the colours to white on black ($47).
C $BD58,5 Set the colours to magenta on black ($43).
C $BD5D,5 Print the # character.
C $BD62,4 A = ID of creature at cursor.
C $BD66,5 If A >= $29 (i.e. not a creature) jump to #R$BD88.
C $BD6B,4 HL = HL + $01E1, so that it points to the corresponding location in arena table 4.
C $BD6F,5 Set the colours to yellow on black ($46).
C $BD74,2 A = $28 (left bracket character)
C $BD77,3 Print the ( character.
C $BD7B,1 A = data about the creature under the cursor
C $BD7C,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
C $BD7E,2 A = A + $29, becoming the wizard's creature ID
C $BD80,3 Print the wizard's name.
C $BD83,2 A = $29 (right bracket character)
C $BD85,3 Print the ) character.
c $BDA5 Prints the square cursor to the screen.
D $BDA5 Used by the routine at #R$BC96.
@ $BDA5 label=PRINT_CURSOR
C $BDA7,3 Chan-open ROM subroutine.
c $BDD1 Convert XY coords stored in BC to a memory address in arena table 1, which gets stored in HL.
D $BDD1 Used by the routines at #R$ACED, #R$BC96 and #R$BE52.
@ $BDD1 label=CONVERT_XY_COORDS
C $BDE4,1 HL = HL + BC, now pointing at a cell in arena table 1.
C $BDE5,1 BC = the XY coords again
c $BDE7 Gets data about an object in the arena and saves it into memory.
D $BDE7 Used by the routine at #R$ACED.
@ $BDE7 label=FETCH_OBJECT_DATA
N $BDED This entry point is used by the routine at #R$ACED.
C $BDF1,3 Set selected creature ID (#R$AC0C) to A
C $BDF4,4 Add $01E1 to HL to get the corresponding location in arena data table 4.
C $BDF8,1 A = data in table 4 at the cursor position
C $BDF9,3 Populate #R$AC10, which holds creature data flags
C $BDFC,5 A = data about the creature at arena table 5.
C $BE01,3 Populate #R$AC09, which holds creature data flags from arena table 5
C $BE04,2 A = data about the creature at arena table 6.
C $BE06,3 Populate #R$AC08, which holds creature data flags from arena table 6
c $BE0A Get creature data
D $BE0A Given a creature ID and an offset pointing to a particular piece of data about a creature, set A to the piece of data.
D $BE0A #TABLE(default,centre) { =h Offset (hex) | =h Offset (dec) | =h Data } { $00 | 00 | First char of name } { $0D | 13 | Combat } { $0E | 14 | Ranged Combat } { $0F | 15 | Range } { $10 | 16 | Defence } { $11 | 17 | Movement allowance } { $12 | 18 | Manoeuvre rating } { $13 | 19 | Magic resistance } { $14 | 20 | Wizard only - no of spells? TODO } { $15 | 21 | Chaos/law value - and wizard "ability"? TODO} { $16 | 22 | TODO ??? } TABLE#
D $BE0A Used by the routines at #R$859C, #R$92F9, #R$9C59, #R$9CA9, #R$9E38, #R$A075, #R$ACED, #R$AF0D, #R$B168, #R$C3B3, #R$C612 and #R$CBB9.
R $BE0A I:D: The creature ID
R $BE0A I:E: The offset detailing which piece of data to fetch
R $BE0A O:A: Contains the data item
@ $BE0A label=GET_CREATURE_DATA
C $BE0C,3 #R$E3E0 is the reference table describing where to get data on each creature.
C $BE0F,3 Set BC to the creature ID.
C $BE12,3 Decrement C and shift left (double it) to get how many bytes to skip down the table.
C $BE15,1 Add BC to HL. HL will now point at the first byte of the pair indicating the creature's data location.
C $BE16,3 Set BC to the address for the creature's data.
C $BE19,3 Set HL to the offset we should use: E
C $BE1C,2 Add BC to HL to get the memory location of the data we want, and load the data into A.
c $BE21 Check for adjacent enemies. If one is found, record its ID in #R$AC06.
D $BE21 Used by the routines at #R$ACED and #R$AF0D.
@ $BE21 label=CHECK_FOR_ADJACENT_ENEMIES
C $BE22,4 Set adjacent enemy ID (#R$AC06) to 0.
C $BE29,4 BC = XY coords of the selected creature. B stores the distance from the top and C the distance from the left. Both start at 1.
C $BE2D,4 Check for adjacent enemy to the left.
C $BE31,4 Check for adjacent enemy to the top left.
C $BE35,4 Check for adjacent enemy to the top.
C $BE39,4 Check for adjacent enemy to the top right.
C $BE3D,4 Check for adjacent enemy to the right.
C $BE41,4 Check for adjacent enemy to the bottom right.
C $BE45,4 Check for adjacent enemy to the bottom.
C $BE49,4 Check for adjacent enemy to the bottom left.
c $BE52 Checks for adjacent enemies in a single square at the XY coordinates stored in BC.
D $BE52 Used by the routine at #R$BE21.
@ $BE52 label=CHECK_FOR_ADJACENT_ENEMIES_AT_XY
C $BE52,3 If we're checking off the edge of the arena (top), return.
C $BE55,3 If we're checking off the edge of the arena (left), return.
C $BE58,4 If we're checking off the edge of the arena (right), return.
C $BE5C,4 If we're checking off the edge of the arena (bottom), return.
C $BE60,3 Convert the XY coords in BC to a mem address in arena table 1 and store in HL.
C $BE63,1 A = the creature ID at the space we're investigating.
C $BE64,2 If A == 0, return.
C $BE67,5 A = object data in arena table 3
C $BE6C,4 If data in table 3 equals 4 (i.e. it's a dead creature), return.
C $BE70,1 A = creature ID.
C $BE71,5 If A >= $22 (i.e. a blob or tree or wall, and not a moving creature) jump to #R$BE86.
C $BE76,5 A = corresponding data in arena table 4.
C $BE7B,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
C $BE7D,7 If the creature is owned by the wizard whose turn it currently is, return. Both are incremented before comparison so that we can use the zero flag.
C $BE86,3 If the adjacent object isn't that of a wizard, return.
C $BE89,7 There's an adjacent wizard. Return if it's the wizard that controls the selected creature.
C $BE90,3 There's an adjacent enemy. Record it in #R$AC06.
c $BE94 Gets a random num between 0 and 9 inclusive, and loads it into A.
D $BE94 Used by the routines at #R$95C7, #R$9760, #R$9975, #R$9C59, #R$9CA9, #R$9E38, #R$9F50, #R$A075, #R$ACED and #R$B168.
@ $BE94 label=GET_RANDOM_NUM_0_TO_9
C $BE96,2 TODO R register - perhaps generating random number?
C $BEA4,3 HL = $5C76 (the seed for RND)
c $BEB2 Engaged to enemy
D $BEB2 Used by the routines at #R$ACED and #R$AF0D.
@ $BEB2 label=ENGAGED_TO_ENEMY
C $BEB4,1 Set #R$AC03 (the select square range) to 0.
C $BEB8,5 Set #R$AC07 to indicate that the creature is engaged in combat.
C $BEBD,5 Set the colours to yellow on black ($46).
C $BEC2,11 Print the message with ID $34 (ENGAGED TO ENEMY) at screen position $1600. Clear the message bar.
c $BED7 Clear the message bar.
D $BED7 Used by the routines at #R$84F7, #R$85F6, #R$8F8B, #R$9385, #R$95C7, #R$96F3, #R$97A3, #R$981A, #R$9C59, #R$9DE0, #R$AC36, #R$ACC6, #R$ACED, #R$AF0D, #R$B0A8, #R$B168, #R$B8DD, #R$BC96 and #R$BEB2.
@ $BED7 label=CLEAR_MESSAGE_BAR
C $BEDB,8 Print the message with ID $01 (empty string) at screen position $1600.
b $BEE8 Variable - the distance between two coordinates
@ $BEE8 label=VAR_DISTANCE
B $BEE8,1,1
b $BEE9 Variable - maybe the spell casting source location coordinates
@ $BEE9 label=VAR_MAYBE_SPELL_SOURCE_COORDS
B $BEE9,2,2
b $BEEB Variable - maybe the spell casting destination coordinates
@ $BEEB label=VAR_MAYBE_SPELL_DESTINATION_COORDS
B $BEEB,2,2
b $BEED Variable - temp variable used by get distance function (#R$BEEF) TODO X and Y diffs?
@ $BEED label=VAR_TEMP_GET_DISTANCE_1
B $BEED,1,1
b $BEEE Variable - temp variable used by get distance function (#R$BEEF)
@ $BEEE label=VAR_TEMP_GET_DISTANCE_2
B $BEEE,1,1
c $BEEF Gets the distance between two coordinates at #R$BEE9 and #R$BEEB and saves the result at #R$BEE8.
D $BEEF Used by the routines at #R$9786, #R$B0A8, #R$B8DD, #R$C67A, #R$C7BC, #R$C8C7, #R$C955, #R$CA7C, #R$CBC7 and #R$CBCC.
@ $BEEF label=GET_DISTANCE
b $BF37 Graphics - star animation
D $BF37 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($BF37+n*$20)-(($BF37+n*$20)+$18)-8(star_animationn*.png) //)
@ $BF37 label=GRAPHICS_STAR_ANIMATION
B $BF37,32,8 Frame 1
B $BF57,32,8 Frame 2
B $BF77,32,8 Frame 3
B $BF97,32,8 Frame 4
b $BFB7 Graphics - circle animation
D $BFB7 #HTML(#FOR(0,7)//n/ #UDGARRAY2;($BFB7+n*$20)-(($BFB7+n*$20)+$18)-8(circle_animationn*.png) //)
@ $BFB7 label=GRAPHICS_CIRCLE_ANIMATION
B $BFB7,32,8 Frame 1
B $BFD7,32,8 Frame 2
B $BFF7,32,8 Frame 3
B $C017,32,8 Frame 4
B $C037,32,8 Frame 5
B $C057,32,8 Frame 6
B $C077,32,8 Frame 7
B $C097,32,8 Frame 8
b $C0B7 Data block at C0B7
B $C0B7,8,8
b $C0BF Data block at C0BF
B $C0BF,24,8
b $C0D7 Data block at C0D7
@ $C0D7 label=VAR_C0D7
B $C0D7,1,1
c $C0D8 Routine at C0D8 - maybe marks valid squares for casting creatures in arena?
D $C0D8 Used by the routine at #R$B8DD.
@ $C0D8 label=MAYBE_MARK_ARENA_SQUARES
N $C0DD This entry point is used by the routines at #R$836A, #R$839C, #R$83D0, #R$8404, #R$8438, #R$846A, #R$86C3, #R$8F8B, #R$92BE, #R$95C7, #R$981A, #R$98DB, #R$9A52, #R$9ADD, #R$9C59, #R$9CA9, #R$9E38, #R$9F50, #R$A075, #R$A18A, #R$AC36, #R$ACC6, #R$B3C9, #R$B8DD, #R$BC96, #R$C3B3 and #R$C710.
C $C0F7,4 Add $0141 to HL to point it at the corresponding space in arena table 3.
C $C102,13 Set all of arena table 2 to contain the value 1. TODO Why?
C $C115,8 Draw the border in blue on black ($41).
b $C123 Graphics - dragon fire animation
D $C123 #HTML(#FOR(0,8)//n/ #UDGARRAY2;($C123+n*$20)-(($C123+n*$20)+$18)-8(dragon_firen*.png) //)
@ $C123 label=GRAPHICS_DRAGON_FIRE
B $C123,264,8
b $C22B Data block at C22B
B $C22B,24,8
b $C243 Data block at C243
@ $C243 label=VAR_C243_MAYBE_TABLE
B $C243,40,8
b $C26B Data block at C26B
@ $C26B label=VAR_C26B_MAYBE_TABLE
B $C26B,40,8
b $C293 Data block at C293
@ $C293 label=VAR_C293_MAYBE_SOUND_EFFECT
B $C293,40,8
b $C2BB Sound effect - TODO identify
@ $C2BB label=SOUND_EFFECT_C2BB
B $C2BB,40,8
b $C2E3 Sound effect - menu chirp
@ $C2E3 label=SOUND_EFFECT_MENU_CHIRP
B $C2E3,15,8,7
b $C2F2 Data block at C2F2
@ $C2F2 label=VAR_C2F2_MAYBE_SOUND_EFFECT
B $C2F2,1,1
b $C2F3 Data block at C2F3
@ $C2F3 label=SOUND_EFFECT_C2F3
B $C2F3,3,3
c $C2F6 Play sound effect.
D $C2F6 Used by the routines at #R$9A52, #R$9C59, #R$9CA9, #R$9E38, #R$A075, #R$A18A and #R$B8DD.
@ $C2F6 label=SOUND_EFFECT
N $C2F9 This entry point is used by the routines at #R$84F7, #R$85F6, #R$89B0, #R$89F9, #R$8F8B, #R$9168, #R$9385, #R$94A7, #R$96D1, #R$981A, #R$99F1, #R$9C59, #R$9DE0, #R$A075, #R$ACC6, #R$ACED, #R$AF0D, #R$B0A8, #R$B168, #R$B375, #R$B3C9, #R$B8DD, #R$BEB2 and #R$C3B3.
N $C301 This entry point is used by the routines at #R$9A52, #R$9C59, #R$9CA9, #R$9E38, #R$A18A, #R$B375, #R$B3C9, #R$B7D3 and #R$B8DD.
c $C33A Routine at C33A
D $C33A Used by the routine at #R$C2F6.
@ $C33A label=ROUTINE_C33A
b $C33D Graphics - cursor1
D $C33D #HTML(#UDGARRAY2;$C33D-$C355-8(cursor1.png))
@ $C33D label=GRAPHICS_CURSOR_1
B $C33D,32,8
b $C35D Graphics - cursor - wings
D $C35D #HTML(#UDGARRAY2;$C35D-$C375-8(cursor_wings.png))
@ $C35D label=GRAPHICS_CURSOR_WINGS
B $C35D,32,8
b $C37D Graphics - cursor2
D $C37D #HTML(#UDGARRAY2;$C37D-$C395-8(cursor2.png))
@ $C37D label=GRAPHICS_CURSOR_2
B $C37D,32,8
b $C39D Data block at C39D
@ $C39D label=VAR_C39D
B $C39D,1,1
b $C39E Data block at C39E
@ $C39E label=VAR_C39E
B $C39E,1,1
b $C39F Data block at C39F
@ $C39F label=VAR_C39F
B $C39F,1,1
b $C3A0 Data block at C3A0
@ $C3A0 label=VAR_C3A0
B $C3A0,1,1
b $C3A1 Data block at C3A1
@ $C3A1 label=VAR_C3A1
B $C3A1,1,1
b $C3A2 Data block at C3A2
@ $C3A2 label=VAR_C3A2
B $C3A2,1,1
b $C3A3 Data block at C3A3
@ $C3A3 label=VAR_C3A3
B $C3A3,1,1
b $C3A4 Variable - current chaos/law world tendency. Positive indicates lawful, negative indicates chaotic.
@ $C3A4 label=CHAOS_LAW_LEVEL
B $C3A4,1,1
b $C3A5 Data block at C3A5
@ $C3A5 label=VAR_C3A5_MAYBE_TABLE
B $C3A5,14,8,6
c $C3B3 Display the 'I' key information screen
D $C3B3 Used by the routines at #R$92BE, #R$94A7, #R$ACED, #R$B0A8 and #R$BC96.
@ $C3B3 label=DISPLAY_CREATURE_INFO
C $C3B3,1 Disable interrupts.
C $C3B4,4 Save the register states.
C $C3B8,4 Load A with a byte representing the object at the current location. (See game state info table at #R$E01F.)
C $C3BC,4 If A is zero, there's nothing there and we can return without doing anything.
@ $C3CF label=DISPLAY_CREATURE_INFO_1
C $C3CF,8 A = the creature's data from arena table 5.
C $C3D7,3 If A == 0 jump to #R$C3E2.
@ $C3E2 label=DISPLAY_CREATURE_INFO_2
C $C3E2,3 Clear the screen.
C $C3EB,8 Draw the border in green on black ($44).
C $C3F3,5 Set the colours to black on green ($60).
C $C3F8,8 Print the message with ID $3D (PRESS ANY KEY) at screen position $1600.
C $C400,5 Set the colours to yellow on black ($46).
@ $C435 label=DISPLAY_CREATURE_INFO_3
@ $C441 label=DISPLAY_CREATURE_INFO_4
@ $C44F label=DISPLAY_CREATURE_INFO_5
@ $C45D label=DISPLAY_CREATURE_INFO_6
@ $C469 label=DISPLAY_CREATURE_INFO_7
@ $C479 label=DISPLAY_CREATURE_INFO_8
C $C47E,5 A = the creature's chaos/law value.
C $C48A,5 Set the colours to cyan on black ($45).
C $C48F,5 Print the message with ID $47 ((LAW).
@ $C4A1 label=DISPLAY_CREATURE_INFO_9
C $C4A1,5 Set the colours to magenta on black ($43).
C $C4A6,5 Print the message with ID $46 ((CHAOS).
@ $C4B8 label=DISPLAY_CREATURE_INFO_10
C $C4B8,5 Set the colours to green on black ($44).
@ $C4D2 label=DISPLAY_CREATURE_INFO_11
@ $C4EC label=DISPLAY_CREATURE_INFO_12
@ $C4FE label=DISPLAY_CREATURE_INFO_13
@ $C516 label=DISPLAY_CREATURE_INFO_14
@ $C51B label=DISPLAY_CREATURE_INFO_15
C $C51B,5 Set the colours to cyan on black ($45).
@ $C52F label=DISPLAY_CREATURE_INFO_16
C $C543,5 Set the colours to cyan on black ($45).
C $C548,8 Print the message with ID $4F (CASTING CHANCE=) at screen position $1204.
C $C558,5 Print the message with ID $50 (10).
@ $C55F label=DISPLAY_CREATURE_INFO_17
C $C55F,5 Add $30 to get the character map code for the first digit in the casting chance, and print it.)
@ $C564 label=DISPLAY_CREATURE_INFO_18
C $C564,5 Print "0".
C $C569,5 Print "%".
@ $C56E label=DISPLAY_CREATURE_INFO_19
C $C575,5 Set the colours to yellow on black ($46).
C $C57A,8 Print the message with ID $51 (SPELLS=) at screen position $1204.
C $C586,5 A = the wizard's spells value.
C $C58B,5 If A < 10 jump to #R$C5A6.
C $C590,4 If A == 20 jump to #R$C59D.
C $C594,5 Print "2".
@ $C59D label=DISPLAY_CREATURE_INFO_20
@ $C5A6 label=DISPLAY_CREATURE_INFO_21
C $C5AB,8 Print the message with ID $52 (ABILITY=) at screen position $120E.
C $C5B9,5 A = ... TODO usually the creature's chaos/law value, but when it's a wizard?
@ $C5C1 label=DISPLAY_CREATURE_INFO_22
C $C5D6,3 Wait for keypress
@ $C5DC label=DISPLAY_CREATURE_INFO_23
C $C5DF,3 Wait for keypress
C $C5E2,3 Clear the screen.
@ $C5E8 label=DISPLAY_CREATURE_INFO_24
C $C5E8,4 Restore the register states.
C $C5EC,1 Re-enable interrupts.
c $C5EE Clear screen.
D $C5EE Used by the routines at #R$89F9, #R$9168, #R$92BE, #R$9385, #R$94A7, #R$95C7 and #R$C3B3.
@ $C5EE label=CLEAR_SCREEN
c $C5FC Routine at C5FC
D $C5FC Used by the routine at #R$C3B3.
@ $C5FC label=ROUTINE_C5FC
c $C612 Routine at C612
D $C612 Used by the routine at #R$C3B3.
@ $C612 label=ROUTINE_C612
C $C61E,5 Set the colours to white on black ($47).
C $C637,5 Set the colours to cyan on black ($45).
c $C63D Routine at C63D
D $C63D Used by the routine at #R$C9D4.
@ $C63D label=ROUTINE_C63D
b $C649 Variable - maybe wizard location
@ $C649 label=MAYBE_WIZ_LOCATION
B $C649,2,2
b $C64B Variable - temp variable for shuffle TODO Why?
@ $C64B label=TEMP_VARIABLE_FOR_SHUFFLE
B $C64B,1,1
c $C64C Unknown purpose - shuffles computer player's spells around. TODO Why?
D $C64C Used by the routines at #R$84F7, #R$85F6, #R$96F3, #R$9A95, #R$9B76, #R$C78D, #R$C8C7, #R$C955, #R$CA19, #R$CA92, #R$CBC7, #R$CBCC and #R$CC56.
@ $C64C label=SHUFFLE_INVENTORY_MAYBE
b $C679 Data block at C679
@ $C679 label=TEMP_VAR_C679
B $C679,1,1
c $C67A Routine at C67A
D $C67A Used by the routines at #R$C7BC, #R$CC56 and #R$CD92.
@ $C67A label=ROUTINE_C67A
C $C68D,5 A = corresponding data in arena table 4.
C $C692,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
b $C6D4 Data block at C6D4
@ $C6D4 label=VAR_C6D4
B $C6D4,47,8*5,7
c $C703 Routine at C703
D $C703 Used by the routines at #R$9786, #R$97D1, #R$980E, #R$9E38, #R$A075, #R$C63D, #R$C67A, #R$C710, #R$C7BC, #R$C8C7, #R$C955, #R$C9D4, #R$CA7C, #R$CA92, #R$CBC7, #R$CBCC, #R$CCC3 and #R$CD3C.
@ $C703 label=MAYBE_FIND_WIZ_COORDS
c $C710 Computer wizard turn.
D $C710 Used by the routine at #R$AC36.
@ $C710 label=COMP_WIZ_TURN
C $C713,7 Point HL to the wizard's value in the table at #R$AC1E.
C $C71A,5 If the wizard's value in the table at #R$AC1E is not zero, jump to #R$C74E.
C $C726,12 If A == $24, $26 or $27 (IDs of Magic Wood, Magic Castle or Dark Citadel respectively) jump to #R$C77A. TODO Maybe getting the wizard to sit in place if in one of these hideouts?
@ $C74E label=COMP_WIZ_TURN_1
@ $C75E label=COMP_WIZ_TURN_2
@ $C77A label=COMP_WIZ_TURN_3
b $C78B Data block at C78B
@ $C78B label=VAR_C78B
B $C78B,2,2
c $C78D Routine at C78D
D $C78D Used by the routines at #R$9975 and #R$ACED.
@ $C78D label=ROUTINE_C78D
N $C7A3 This entry point is used by the routine at #R$CA19.
N $C7B1 This entry point is used by the routine at #R$CA19.
b $C7BB Data block at C7BB
@ $C7BB label=VAR_C7BB
B $C7BB,1,1
c $C7BC Routine at C7BC
D $C7BC Used by the routines at #R$84F7, #R$9A95, #R$9B76 and #R$CA19.
@ $C7BC label=ROUTINE_C7BC
c $C825 Routine at C825
D $C825 Used by the routines at #R$C78D and #R$CC56.
@ $C825 label=ROUTINE_C825
b $C858 Data block at C858
@ $C858 label=VAR_C858
B $C858,1,1
c $C859 Routine at C859
D $C859 Used by the routine at #R$C825.
@ $C859 label=ROUTINE_C859
C $C883,5 A = corresponding data in arena table 4.
C $C888,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
b $C8B7 Data block at C8B7
@ $C8B7 label=VAR_C8B7
B $C8B7,2,2
c $C8B9 Routine at C8B9
D $C8B9 Used by the routines at #R$C78D and #R$CA19.
@ $C8B9 label=ROUTINE_C8B9
c $C8C7 Routine at C8C7
D $C8C7 Used by the routines at #R$ACED and #R$C78D.
@ $C8C7 label=ROUTINE_C8C7
c $C955 Maybe computer wizard movement routine
D $C955 Used by the routines at #R$9975, #R$9ADD, #R$9B76 and #R$B0A8.
@ $C955 label=MAYBE_COMP_WIZARD_MOVEMENT
c $C9D4 Routine at C9D4
@ $C9D4 label=ROUTINE_C9D4
N $C9DC This entry point is used by the routines at #R$9975, #R$9ADD, #R$9B76 and #R$B0A8.
b $CA16 Data block at CA16
@ $CA16 label=VAR_CA16
B $CA16,2,2
b $CA18 Data block at CA18
@ $CA18 label=VAR_CA18
B $CA18,1,1
c $CA19 Routine at CA19
D $CA19 Used by the routine at #R$C78D.
@ $CA19 label=ROUTINE_CA19
C $CA34,5 A = corresponding data in arena table 4.
C $CA39,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
c $CA7C Routine at CA7C
D $CA7C Used by the routines at #R$C955 and #R$CA19.
@ $CA7C label=ROUTINE_CA7C
c $CA92 Routine at CA92
D $CA92 Used by the routines at #R$ACED and #R$C710.
@ $CA92 label=ROUTINE_CA92
C $CA95,7 Going to loop through every space in arena table 1.
C $CA9C,4 HL = corresponding space in arena table 5.
C $CAA0,1 A = ID of object in arena table 5
C $CAA2,5 If it's a wizard jump to #R$CAAD.
C $CAA7,3 A = ID of object in arena table 1.
C $CAAA,3 If it's not a wizard jump to #R$CAB7.
C $CAAD,1 It's a wizard. Store the ID in E.
C $CAAE,3 A = current wizard ID (#R$AC0E)
C $CAB1,3 If it's not the current wizard jump to #R$CAB7.
C $CAB4,3 Set current wizard's location in #R$AC14.
C $CAD3,1 A = ID from the space in arena table 1 where the wizard is located.
C $CAD4,5 If A < $13 (indicating a non-flying mount - see the IDs of the creatures at #R$7D60) jump to #R$CAE9.
C $CAD9,5 If A >= $16 (indicating either the wizard himself, possibly hiding in a tree or castle) jump to #R$CAE9.
C $CAE1,5 Set #R$AC31, indicating that the wizard can fly.
C $CAE9,5 If A < $29, indicating that the wizard is hiding, jump to #R$CB06.
C $CAEE,9 HL = location ofthe current wizard's status value in the table at #R$AC16.
C $CAF7,4 If bit 5 is set (indicating that the wizard has magic wings) continue, otherwise jump to #R$CB06.
C $CAFE,5 Set #R$AC31, indicating that the wizard can fly.
C $CB44,5 A = corresponding data in arena table 4.
C $CB49,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
s $CBB8 Unused
@ $CBB8 label=VAR_CBB8
S $CBB8,1,$01
c $CBB9 Routine at CBB9
D $CBB9 Used by the routine at #R$CA92.
@ $CBB9 label=ROUTINE_CBB9
C $CBBA,5 A = the creature's movement allowance.
c $CBC7 Routine at CBC7
D $CBC7 Used by the routine at #R$CA92.
@ $CBC7 label=ROUTINE_CBC7
c $CBCC Routine at CBCC
D $CBCC Used by the routine at #R$CBB9.
@ $CBCC label=ROUTINE_CBCC
b $CC55 Data block at CC55
@ $CC55 label=VAR_CC55
B $CC55,1,1
c $CC56 Routine at CC56
D $CC56 Used by the routines at #R$9C59, #R$9D8A, #R$9EF9 and #R$B8DD.
@ $CC56 label=R_CC56_MAYBE_COMP_PICK_TARGET
c $CCC3 Routine at CCC3
@ $CCC3 label=ROUTINE_CCC3
N $CCCB This entry point is used by the routine at #R$B8DD.
C $CD0A,12 Maybe checking if creature is undead?
b $CD2A Data block at CD2A
@ $CD2A label=VAR_CD2A_MAYBE_TABLE
B $CD2A,16,8
b $CD3A Data block at CD3A
@ $CD3A label=VAR_CD3A
B $CD3A,2,2
c $CD3C Routine at CD3C
D $CD3C Used by the routines at #R$98F1, #R$9C0F, #R$9F50, #R$C8C7 and #R$CA92.
@ $CD3C label=ROUTINE_CD3C
b $CD86 Data block at CD86
@ $CD86 label=VAR_CD86
B $CD86,10,8,2
b $CD90 Data block at CD90
@ $CD90 label=VAR_CD90
B $CD90,2,2
c $CD92 Routine at CD92
D $CD92 Used by the routines at #R$CA92, #R$CBC7 and #R$CBCC.
@ $CD92 label=ROUTINE_CD92
c $CDAA Init D3F2
D $CDAA Used by the routines at #R$C7BC, #R$C825, #R$C8C7, #R$C955, #R$CA92, #R$CBC7 and #R$CBCC.
@ $CDAA label=MAYBE_INIT_D3F2_STRIPES
C $CDAA,13 Sets the table at #R$D3F2 to have an alternating pattern of 0 and 255 (or -1). TODO Why?
c $CDB8 Routine at CDB8
@ $CDB8 label=ROUTINE_CDB8
N $CDC0 This entry point is used by the routine at #R$BBE7.
b $CDD3 Table - text message information
D $CDD3 Lists information about the creatures and the text messages starting at #R$CFCB. Organised in sets of 4 bytes.
D $CDD3 #LIST(data) { First two bytes (swapped around) list the memory address of the message } { Third byte is the length of the message. } { The last byte is zero. } LIST#
@ $CDD3 label=TABLE_TEXT_MESSAGES_2
B $CDD3,4,4 #R$CFCB $00 Empty string
B $CDD7,4,4 #R$CFCB $01 Empty string
B $CDDB,4,4 #R$E463 $02 KING COBRA
B $CDDF,4,4 #R$E4D5 $03 DIRE WOLF
B $CDE3,4,4 #R$E521 $04 GOBLIN
B $CDE7,4,4 #R$E547 $05 CROCODILE
B $CDEB,4,4 #R$E5B9 $06 FAUN
B $CDEF,4,4 #R$E5DF $07 LION
B $CDF3,4,4 #R$E62B $08 ELF
B $CDF7,4,4 #R$E677 $09 ORC
B $CDFB,4,4 #R$E79F $0A BEAR
B $CDFF,4,4 #R$E7C5 $0B GORILLA
B $CE03,4,4 #R$E80E $0C OGRE
B $CE07,4,4 #R$E8C9 $0D HYDRA
B $CE0B,4,4 #R$E8EF $0E GIANT RAT
B $CE0F,4,4 #R$E93B $0F GIANT
B $CE13,4,4 #R$E651 $10 HORSE
B $CE17,4,4 #R$E733 $11 UNICORN
B $CE1B,4,4 #R$E915 $12 CENTAUR
B $CE1F,4,4 #R$E87D $13 PEGASUS
B $CE23,4,4 #R$E605 $14 GRYPHON
B $CE27,4,4 #R$E6E6 $15 MANTICORE
B $CE2B,4,4 #R$E489 $16 BAT
B $CE2F,4,4 #R$E56D $17 GREEN DRAGON
B $CE33,4,4 #R$E69D $18 RED DRAGON
B $CE37,4,4 #R$E961 $19 GOLDEN DRAGON
B $CE3B,4,4 #R$E857 $1A HARPY
B $CE3F,4,4 #R$E8A3 $1B EAGLE
B $CE43,4,4 #R$E593 $1C VAMPIRE
B $CE47,4,4 #R$E759 $1D GHOST
B $CE4B,4,4 #R$E4FB $1E SPECTRE
B $CE4F,4,4 #R$E77C $1F WRAITH
B $CE53,4,4 #R$E7EB $20 SKELETON
B $CE57,4,4 #R$E834 $21 ZOMBIE
B $CE5B,4,4 #R$E4AF $22 BLOB
B $CE5F,4,4 #R$E6C3 $23 FIRE
B $CE63,4,4 #R$E9F3 $24 MAGIC WOOD
B $CE67,4,4 #R$E9D0 $25 SHADOW WOOD
B $CE6B,4,4 #R$E9AD $26 MAGIC CASTLE
B $CE6F,4,4 #R$E987 $27 DARK CITADEL
B $CE73,4,4 #R$EA16 $28 WALL
B $CE77,4,4 #R$EA39 $29 <Wizard 1 name>
B $CE7B,4,4 #R$EA5C $2A <Wizard 2 name>
B $CE7F,4,4 #R$EA7F $2B <Wizard 3 name>
B $CE83,4,4 #R$EAA2 $2C <Wizard 4 name>
B $CE87,4,4 #R$EAC5 $2D <Wizard 5 name>
B $CE8B,4,4 #R$EAE8 $2E <Wizard 6 name>
B $CE8F,4,4 #R$EB0B $2F <Wizard 7 name>
B $CE93,4,4 #R$EB2E $30 <Wizard 8 name>
B $CE97,4,4 #R$CFEA $31 (ASLEEP)
B $CE9B,4,4 #R$CFF3 $32 (DEAD)
B $CE9F,4,4 #R$CFFA $33 DISMOUNT WIZARD? (Y OR N)
B $CEA3,4,4 #R$D01A $34 ENGAGED TO ENEMY
B $CEA7,4,4 #R$D03A $35 OUT OF RANGE
B $CEAB,4,4 #R$D05A $36 (FLYING)
B $CEAF,4,4 #R$D068 $37 'S TURN
B $CEB3,4,4 #R$D06F $38 MOVEMENT POINTS LEFT=
B $CEB7,4,4 #R$D084 $39 UNDEAD-CANNOT BE ATTACKED
B $CEBB,4,4 #R$D09E $3A MOVEMENT RANGE=
B $CEBF,4,4 #R$D0AD $3B RANGED COMBAT,RANGE=
B $CEC3,4,4 #R$D0C1 $3C NO LINE OF SIGHT
B $CEC7,4,4 #R$D0D1 $3D PRESS ANY KEY
B $CECB,4,4 #R$D0F1 $3E KNIFE
B $CECF,4,4 #R$D0F6 $3F SWORD
B $CED3,4,4 #R$D0FB $40 ARMOUR
B $CED7,4,4 #R$D101 $41 SHIELD
B $CEDB,4,4 #R$D107 $42 FLYING
B $CEDF,4,4 #R$D10D $43 SHADOW
B $CEE3,4,4 #R$D113 $44 MOUNT
B $CEE7,4,4 #R$D118 $45 UNDEAD
B $CEEB,4,4 #R$D11E $46 (CHAOS
B $CEEF,4,4 #R$D125 $47 (LAW
B $CEF3,4,4 #R$D12A $48 COMBAT=
B $CEF7,4,4 #R$D131 $49 RANGED COMBAT=
B $CEFB,4,4 #R$D13F $4A RANGE=
B $CEFF,4,4 #R$D145 $4B DEFENCE=
B $CF03,4,4 #R$D14D $4C MOVEMENT ALLOWANCE=
B $CF07,4,4 #R$D160 $4D MANOEUVRE RATING=
B $CF0B,4,4 #R$D171 $4E MAGIC RESISTANCE=
B $CF0F,4,4 #R$D182 $4F CASTING CHANCE=
B $CF13,4,4 #R$D191 $50 10
B $CF17,4,4 #R$D193 $51 SPELLS=
B $CF1B,4,4 #R$D19A $52 ABILITY=
B $CF1F,4,4 #R$D1A2 $53 'S SPELLS
B $CF23,4,4 #R$D1AB $54 SPELL FAILS
B $CF27,4,4 #R$D1B6 $55 SPELL SUCCEEDS
B $CF2B,4,4 #R$D1C4 $56 IS THE WINNER
B $CF2F,4,4 #R$D1D1 $57 PRESS KEYS 1 TO 4
B $CF33,4,4 #R$D1F1 $58 PRESS '0' TO RETURN TO MAIN MENU
B $CF37,4,4 #R$D211 $59 1.EXAMINE SPELLS
B $CF3B,4,4 #R$D221 $5A 2.SELECT SPELL
B $CF3F,4,4 #R$D22F $5B 3.EXAMINE BOARD
B $CF43,4,4 #R$D23E $5C 4.CONTINUE WITH GAME
B $CF47,4,4 #R$D252 $5D DISBELIEVE
B $CF4B,4,4 #R$D25C $5E ILLUSION? (PRESS Y OR N)
B $CF4F,4,4 #R$D274 $5F 'S CREATIONS
B $CF53,4,4 #R$D280 $60 MAGIC FIRE
B $CF57,4,4 #R$D28A $61 GOOEY BLOB
B $CF5B,4,4 #R$D294 $62 LIGHTNING
B $CF5F,4,4 #R$D29D $63 VENGEANCE
B $CF63,4,4 #R$D2A6 $64 DARK POWER
B $CF67,4,4 #R$D2B0 $65 DECREE
B $CF6B,4,4 #R$D2B6 $66 JUSTICE
B $CF6F,4,4 #R$D2BD $67 LAW-1
B $CF73,4,4 #R$D2C2 $68 LAW-2
B $CF77,4,4 #R$D2C7 $69 CHAOS-1
B $CF7B,4,4 #R$D2CE $6A CHAOS-2
B $CF7F,4,4 #R$D2D5 $6B MAGIC SHIELD
B $CF83,4,4 #R$D2E1 $6C MAGIC ARMOUR
B $CF87,4,4 #R$D2ED $6D MAGIC SWORD
B $CF8B,4,4 #R$D2F8 $6E MAGIC KNIFE
B $CF8F,4,4 #R$D303 $6F MAGIC BOW
B $CF93,4,4 #R$D311 $70 MAGIC BOLT
B $CF97,4,4 #R$D30C $71 BLIND
B $CF9B,4,4 #R$D31B $72 TEMPEST
B $CF9F,4,4 #R$D322 $73 RAISE DEAD
B $CFA3,4,4 #R$D32C $74 TELEPORT
B $CFA7,4,4 #R$D334 $75 SUBVERSION
B $CFAB,4,4 #R$D33E $76 TURMOIL
B $CFAF,4,4 #R$D345 $77 DEAD REVENGE
B $CFB3,4,4 #R$D351 $78 CONSECRATION
B $CFB7,4,4 #R$D35D $79 DISPEL
B $CFBB,4,4 #R$D363 $7A COUNTER SPELL
B $CFBF,4,4 #R$D370 $7B MAGIC WINGS
B $CFC3,4,4 #R$D37B $7C MAGIC SLEEP
B $CFC7,4,4 #R$D386 $7D SHADOW FORM
t $CFCB (Empty string of characters)
@ $CFCB label=STR_EMPTY_STRING
T $CFCB,31,31
t $CFEA (ASLEEP)
@ $CFEA label=STR_ASLEEP_BRACKETS
T $CFEA,9,9
t $CFF3 (DEAD)
@ $CFF3 label=STR_DEAD_BRACKETS
T $CFF3,7,7
t $CFFA DISMOUNT WIZARD? (Y OR N)
@ $CFFA label=STR_DISMOUNT
T $CFFA,32,32
t $D01A ENGAGED TO ENEMY
@ $D01A label=STR_ENGAGED
T $D01A,32,32
t $D03A OUT OF RANGE
@ $D03A label=STR_OUT_OF_RANGE
T $D03A,32,32
t $D05A (FLYING)
@ $D05A label=STR_FLYING_BRACKETS
T $D05A,14,14
t $D068 'S TURN
@ $D068 label=STR_S_TURN
T $D068,7,7
t $D06F MOVEMENT POINTS LEFT=
@ $D06F label=STR_MOVE_POINTS_LEFT
T $D06F,21,21
t $D084 UNDEAD-CANNOT BE ATTACKED
@ $D084 label=STR_UNDEAD_CANNOT_ATTACK
T $D084,26,26
t $D09E MOVEMENT RANGE=
@ $D09E label=STR_MOVEMENT_RANGE
T $D09E,15,15
t $D0AD RANGED COMBAT,RANGE=
@ $D0AD label=STR_COMBAT_RANGE
T $D0AD,20,20
t $D0C1 NO LINE OF SIGHT
@ $D0C1 label=STR_NO_LOS
T $D0C1,16,16
t $D0D1 PRESS ANY KEY
@ $D0D1 label=STR_PRESS_ANY_KEY
T $D0D1,32,32
t $D0F1 KNIFE
@ $D0F1 label=STR_KNIFE
T $D0F1,5,5
t $D0F6 SWORD
@ $D0F6 label=STR_SWORD
T $D0F6,5,5
t $D0FB ARMOUR
@ $D0FB label=STR_ARMOUR
T $D0FB,6,6
t $D101 SHIELD
@ $D101 label=STR_SHIELD
T $D101,6,6
t $D107 FLYING
@ $D107 label=STR_FLYING
T $D107,6,6
t $D10D SHADOW
@ $D10D label=STR_SHADOW
T $D10D,6,6
t $D113 MOUNT
@ $D113 label=STR_MOUNT
T $D113,5,5
t $D118 UNDEAD
@ $D118 label=STR_UNDEAD
T $D118,6,6
t $D11E (CHAOS
@ $D11E label=STR_CHAOS
T $D11E,7,7
t $D125 (LAW
@ $D125 label=STR_LAW
T $D125,5,5
t $D12A COMBAT=
@ $D12A label=STR_COMBAT
T $D12A,7,7
t $D131 RANGED COMBAT=
@ $D131 label=STR_RANGED_COMBAT
T $D131,14,14
t $D13F RANGE=
@ $D13F label=STR_RANGE
T $D13F,6,6
t $D145 DEFENCE=
@ $D145 label=STR_DEFENCE
T $D145,8,8
t $D14D MOVEMENT ALLOWANCE=
@ $D14D label=STR_MOVEMENT
T $D14D,19,19
t $D160 MANOEUVRE RATING=
@ $D160 label=STR_MANOEUVRE
T $D160,17,17
t $D171 MAGIC RESISTANCE=
@ $D171 label=STR_MAGIC_RESISTANCE
T $D171,17,17
t $D182 CASTING CHANCE=
@ $D182 label=STR_CHANCE
T $D182,15,15
t $D191 10
@ $D191 label=STR_10
T $D191,2,2
t $D193 SPELLS=
@ $D193 label=STR_SPELLS
T $D193,7,7
t $D19A ABILITY=
@ $D19A label=STR_ABILITY
T $D19A,8,8
t $D1A2 'S SPELLS
@ $D1A2 label=STR_S_SPELLS
T $D1A2,9,9
t $D1AB SPELL FAILS
@ $D1AB label=STR_FAILS
T $D1AB,11,11
t $D1B6 SPELL SUCCEEDS
@ $D1B6 label=STR_SUCCEEDS
T $D1B6,14,14
t $D1C4 IS THE WINNER
@ $D1C4 label=STR_IS_THE_WINNER
T $D1C4,13,13
t $D1D1 PRESS KEYS 1 TO 4
@ $D1D1 label=STR_PRESS_1_TO_4
T $D1D1,32,32
t $D1F1 PRESS '0' TO RETURN TO MAIN MENU
@ $D1F1 label=STR_PRESS_0
T $D1F1,32,32
t $D211 1.EXAMINE SPELLS
@ $D211 label=STR_1_EXAMINE
T $D211,16,16
t $D221 2.SELECT SPELL
@ $D221 label=STR_2_SELECT
T $D221,14,14
t $D22F 3.EXAMINE BOARD
@ $D22F label=STR_3_EXAMINE
T $D22F,15,15
t $D23E 4.CONTINUE WITH GAME
@ $D23E label=STR_4_CONTINUE
T $D23E,20,20
t $D252 DISBELIEVE
@ $D252 label=STR_DISBELIEVE
T $D252,10,10
t $D25C ILLUSION? (PRESS Y OR N)
@ $D25C label=STR_ILLUSION
T $D25C,24,24
t $D274 'S CREATIONS
@ $D274 label=STR_S_CREATIONS
T $D274,12,12
t $D280 MAGIC FIRE
@ $D280 label=STR_MAGIC_FIRE
T $D280,10,10
t $D28A GOOEY BLOB
@ $D28A label=STR_GOOEY_BLOB
T $D28A,10,10
t $D294 LIGHTNING
@ $D294 label=STR_LIGHTNING
T $D294,9,9
t $D29D VENGEANCE
@ $D29D label=STR_VENGEANCE
T $D29D,9,9
t $D2A6 DARK POWER
@ $D2A6 label=STR_DARK_POWER
T $D2A6,10,10
t $D2B0 DECREE
@ $D2B0 label=STR_DECREE
T $D2B0,6,6
t $D2B6 JUSTICE
@ $D2B6 label=STR_JUSTICE
T $D2B6,7,7
t $D2BD LAW-1
@ $D2BD label=STR_LAW_1
T $D2BD,5,5
t $D2C2 LAW-2
@ $D2C2 label=STR_LAW_2
T $D2C2,5,5
t $D2C7 CHAOS-1
@ $D2C7 label=STR_CHAOS_1
T $D2C7,7,7
t $D2CE CHAOS-2
@ $D2CE label=STR_CHAOS_2
T $D2CE,7,7
t $D2D5 MAGIC SHIELD
@ $D2D5 label=STR_MAGIC_SHIELD
T $D2D5,12,12
t $D2E1 MAGIC ARMOUR
@ $D2E1 label=STR_MAGIC_ARMOUR
T $D2E1,12,12
t $D2ED MAGIC SWORD
@ $D2ED label=STR_MAGIC_SWORD
T $D2ED,11,11
t $D2F8 MAGIC KNIFE
@ $D2F8 label=STR_MAGIC_KNIFE
T $D2F8,11,11
t $D303 MAGIC BOW
@ $D303 label=STR_MAGIC_BOW
T $D303,9,9
t $D30C BLIND
@ $D30C label=STR_BLIND
T $D30C,5,5
t $D311 MAGIC BOLT
@ $D311 label=STR_MAGIC_BOLT
T $D311,10,10
t $D31B TEMPEST
@ $D31B label=STR_TEMPEST
T $D31B,7,7
t $D322 RAISE DEAD
@ $D322 label=STR_RAISE_DEAD
T $D322,10,10
t $D32C TELEPORT
@ $D32C label=STR_TELEPORT
T $D32C,8,8
t $D334 SUBVERSION
@ $D334 label=STR_SUBVERSION
T $D334,10,10
t $D33E TURMOIL
@ $D33E label=STR_TURMOIL
T $D33E,7,7
t $D345 DEAD REVENGE
@ $D345 label=STR_DEAD_REVENGE
T $D345,12,12
t $D351 CONSECRATION
@ $D351 label=STR_CONSECRATION
T $D351,12,12
t $D35D DISPEL
@ $D35D label=STR_DISPEL
T $D35D,6,6
t $D363 COUNTER SPELL
@ $D363 label=STR_COUNTER_SPELL
T $D363,13,13
t $D370 MAGIC WINGS
@ $D370 label=STR_MAGIC_WINGS
T $D370,11,11
t $D37B MAGIC SLEEP
@ $D37B label=STR_MAGIC_SLEEP
T $D37B,11,11
t $D386 SHADOW FORM
@ $D386 label=STR_SHADOW_FORM
T $D386,11,11
b $D391 Variable - used by the routine at #R$D392 when identifying which of the creatures are controlled by a particular wizard.
@ $D391 label=IDENTIFY_WIZARD_ID
B $D391,1,1
c $D392 Flashes the background of the wizard's creatures to identify them. Used when it's the start of a wizard's turn, or when pressing a number key on the arena.
D $D392 Used by the routines at #R$AC36 and #R$BC96.
@ $D392 label=IDENTIFY_WIZARDS_CREATURES
C $D397,3 HL = first space in arena table 1
C $D39A,2 B = $9F. We're going to loop over arena table 1.
C $D39E,1 Get the ID of the creature at the current space.
C $D39F,1 If it's 0 (there's nothing there), jump to #R$D3BE.
C $D3A2,5 There was something there. A = the data at corresponding place in arena table 3.
C $D3A7,4 If the data was $04 (indicating a dead creature) jump to #R$D3BE.
C $D3AB,4 Point HL to the corresponding space in arena table 4.
C $D3AF,1 A = data from arena table 4
C $D3B0,5 HL is pointed back to another arena table - but is it ever used?
C $D3B5,2 Reset everything but the least 3 significant bits, which are the ones storing the owning wizard's ID.
C $D3B7,7 If the wizard whose creatures we're trying to identify owns the object at the current space, jump to #R$D3C8.
C $D3BE,3 Move to the next space and continue the loop, if there are more spaces to examine.
C $D3CD,3 Chan-open ROM subroutine.
b $D3F0 Data block at D3F0
B $D3F0,2,2
b $D3F2 Mysterious table, seemingly used to decide where computer players move.
@ $D3F2 label=MAYBE_AI_TABLE
B $D3F2,1046,16*20,8*90,6
b $D808 Data block at D808
@ $D808 label=VAR_D808
B $D808,256,8
b $D908 Graphics - Top half of symbol set 1
D $D908 #HTML(#FOR(0,15)//n/ #UDGARRAY2;($D908+n*$08)-(($D908+n*$08)+$04)-8(symbols_1_top_n*.png) //)
@ $D908 label=GRAPHICS_SYMBOLS_1_TOP_HALVES
B $D908,128,8
b $D988 Graphics - Top half of the numbers
D $D988 #HTML(#FOR(0,9)//n/ #UDGARRAY2;($D988+n*$08)-(($D988+n*$08)+$04)-8(numbers_top_n*.png) //)
@ $D988 label=GRAPHICS_NUMBERS_TOP_HALVES
B $D988,80,8
b $D9D8 Graphics - Top half of symbol set 2
D $D9D8 #HTML(#FOR(0,6)//n/ #UDGARRAY2;($D9D8+n*$08)-(($D9D8+n*$08)+$04)-8(symbols_2_top_n*.png) //)
@ $D9D8 label=GRAPHICS_SYMBOLS_2_TOP_HALVES
B $D9D8,56,8
b $DA10 Graphics - Top half of the upper case letters
D $DA10 #HTML(#FOR(0,25)//n/ #UDGARRAY2;($DA10+n*$08)-(($DA10+n*$08)+$04)-8(letters_upper_case_top_n*.png) //)
@ $DA10 label=GRAPHICS_LETTERS_UPPER_CASE_TOP_HALVES
B $DA10,208,8
b $DAE0 Graphics - Top half of symbol set 3
D $DAE0 #HTML(#FOR(0,4)//n/ #UDGARRAY2;($DAE0+n*$08)-(($DAE0+n*$08)+$04)-8(symbols_3_top_n*.png) //)
@ $DAE0 label=GRAPHICS_SYMBOLS_3_TOP_HALVES
B $DAE0,40,8
b $DB08 Graphics - Top half of the lower case letters
D $DB08 #R$DB08 represents the pound sign (character map number $60) then the following are the top halves of the lower case letters.
D $DB08 #HTML(#FOR(0,26)//n/ #UDGARRAY2;($DB08+n*$08)-(($DB08+n*$08)+$04)-8(letters_lower_case_top_n*.png) //)
@ $DB08 label=GRAPHICS_LETTERS_LOWER_CASE_TOP_HALVES
B $DB08,256,8
b $DC08 Graphics - Bottom half of symbol set 1
D $DC08 #HTML(#FOR(0,15)//n/ #UDGARRAY2;($DC08+n*$08)-(($DC08+n*$08)+$04)-8(symbols_1_bottom_n*.png) //)
@ $DC08 label=GRAPHICS_SYMBOLS_1_BOTTOM_HALVES
B $DC08,128,8
b $DC88 Graphics - Bottom half of the numbers
D $DC88 #HTML(#FOR(0,9)//n/ #UDGARRAY2;($DC88+n*$08)-(($DC88+n*$08)+$04)-8(numbers_bottom_n*.png) //)
@ $DC88 label=GRAPHICS_NUMBERS_BOTTOM_HALVES
B $DC88,80,8
b $DCD8 Graphics - Bottom half of symbol set 2
D $DCD8 #HTML(#FOR(0,6)//n/ #UDGARRAY2;($DCD8+n*$08)-(($DCD8+n*$08)+$04)-8(symbols_2_bottom_n*.png) //)
@ $DCD8 label=GRAPHICS_SYMBOLS_2_BOTTOM_HALVES
B $DCD8,56,8
b $DD10 Graphics - Bottom half of the upper case letters
D $DD10 #HTML(#FOR(0,25)//n/ #UDGARRAY2;($DD10+n*$08)-(($DD10+n*$08)+$04)-8(letters_upper_case_bottom_n*.png) //)
@ $DD10 label=GRAPHICS_LETTERS_UPPER_CASE_BOTTOM_HALVES
B $DD10,216,8
b $DDE8 Graphics - Bottom half of symbol set 3
D $DDE8 #HTML(#FOR(0,4)//n/ #UDGARRAY2;($DDE8+n*$08)-(($DDE8+n*$08)+$04)-8(symbols_3_bottom_n*.png) //)
@ $DDE8 label=GRAPHICS_SYMBOLS_3_BOTTOM_HALVES
B $DDE8,40,8
b $DE10 Graphics - Bottom half of the lower case letters
D $DE10 #HTML(#FOR(0,26)//n/ #UDGARRAY2;($DE10+n*$08)-(($DE10+n*$08)+$04)-8(letters_lower_case_bottom_n*.png) //)
@ $DE10 label=GRAPHICS_LETTERS_LOWER_CASE_BOTTOM_HALVES
B $DE10,252,8*31,4
c $DF0C Routine at DF0C
D $DF0C Used by the routine at #R$FE69.
@ $DF0C label=ROUTINE_DF0C
c $DF0F Routine at DF0F - might be for printing text characters.
D $DF0F Used by the routines at #R$BAD6, #R$BB57 and #R$DF4E.
@ $DF0F label=ROUTINE_DF0F_MAYBE_PRINTING_CHARACTERS
b $DF47 Data block at DF47
B $DF47,3,3
b $DF4A Data block at DF4A
@ $DF4A label=VAR_DF4A
B $DF4A,2,2
b $DF4C Data block at DF4C
@ $DF4C label=VAR_DF4C
B $DF4C,2,2
c $DF4E Routine at DF4E maybe animation
D $DF4E Used by the routines at #R$90F0, #R$9A52, #R$9C59, #R$9CA9, #R$A18A, #R$B375, #R$B3C9, #R$B8DD, #R$BABE and #R$DF72.
@ $DF4E label=MAYBE_ANIMATION
c $DF72 Routine at DF72
D $DF72 Used by the routine at #R$DF0C.
@ $DF72 label=ROUTINE_DF72
C $DF82,3 Keyboard scanning ROM subroutine.
b $E005 Variable - might be something to do with finding coordinates of something in the arena
@ $E005 label=VAR_E005_MAYBE_ARENA_COORDS
B $E005,2,2
c $E007 Routine at E007
D $E007 Used by the routines at #R$9A52, #R$9C59, #R$9CA9, #R$A18A, #R$B375, #R$B3C9, #R$B8DD, #R$BABE, #R$C703, #R$D392 and #R$DF72.
@ $E007 label=MAYBE_FIND_ARENA_COORDS
C $E00E,3 A = HL - DE, to get how many spaces to count from #R$E01F before reaching the address that was in HL.
b $E01F Arena Table 1 - game state information
D $E01F The board is 15x10. Each row here represents a row on the board, and each byte here represents the ID of something on the board (with the exception of the 16th byte, which is presumably there to make the maths easier - note how by using 16 bytes in each row, the hex addresses are simplified). As wizards, creatures etc are moved around the arena, their IDs are moved around these addresses.
@ $E01F label=ARENA_STATE_1
B $E01F,160,16
b $E0BF Data block at E0BF
B $E0BF,1,1
b $E0C0 Arena Table 2 - ???
@ $E0C0 label=ARENA_STATE_2
B $E0C0,160,16
b $E160 Arena Table 3 - TODO maybe records current animation frame, from 0-3?
D $E160 A value of 4 indicates that the creature is dead.
@ $E160 label=ARENA_STATE_3
B $E160,160,16
b $E200 Arena Table 4 - records data about the objects in the arena.
D $E200 #TABLE(default,centre) { =h Bit | =h Use } { 7 | Set if the object has moved (or if fire/blob, spread) this turn. } { 6 | Tracks whether the creature at that space is undead through being brought back to life with the raise dead spell. } { 5 | Set if the creature has been disbelieved before and proved to be real. } { 4 | Set if the creature is an illusion. } { 3 | Whether the creature is asleep. Never used in game. See #R$BC96. } { 2,1,0 | ID of the wizard that controls the object at this space. } TABLE#
@ $E200 label=ARENA_STATE_4
B $E200,160,16
b $E2A0 Arena Table 5 - Contains the wizard's ID if he's hiding in a magic tree or castle, or on a mount.
@ $E2A0 label=ARENA_STATE_5
B $E2A0,160,16
b $E340 Arena Table 6 - records data about the objects in the arena.
D $E340 #TABLE(default,centre) { =h Bit | =h Use } { 7 | ??? } { 6 | Tracks whether the creature at that space is undead through being brought back to life with the raise dead spell. TODO Mistake? Isn't this in table 4? Or in both? } { 5 | ??? } { 4 | ??? } { 3 | ??? } { 2 | ??? } { 1 | ??? } { 0 | ??? } TABLE#
@ $E340 label=ARENA_STATE_6
B $E340,160,16
b $E3E0 Table - locations of creature, object and wizard data.
D $E3E0 Contains the address at which to find the data about a creature, object or wizard. If you offset from #R$E3E0 you get the creature IDs matching the spells at #R$7D60.
@ $E3E0 label=TABLE_CREATURE_DATA_ADDRESSES
B $E3E0,2,2 #R$E440 $01 01 Blank string
B $E3E2,2,2 #R$E463 $02 02
B $E3E4,2,2 #R$E4D5 $03 03
B $E3E6,2,2 #R$E521 $04 04
B $E3E8,2,2 #R$E547 $05 05
B $E3EA,2,2 #R$E5B9 $06 06
B $E3EC,2,2 #R$E5DF $07 07
B $E3EE,2,2 #R$E62B $08 08
B $E3F0,2,2 #R$E677 $09 09
B $E3F2,2,2 #R$E79F $0A 10
B $E3F4,2,2 #R$E7C5 $0B 11
B $E3F6,2,2 #R$E80E $0C 12
B $E3F8,2,2 #R$E8C9 $0D 13
B $E3FA,2,2 #R$E8EF $0E 14
B $E3FC,2,2 #R$E93B $0F 15
B $E3FE,2,2 #R$E651 $10 16
B $E400,2,2 #R$E733 $11 17
B $E402,2,2 #R$E915 $12 18
B $E404,2,2 #R$E87D $13 19
B $E406,2,2 #R$E605 $14 20
B $E408,2,2 #R$E6E6 $15 21
B $E40A,2,2 #R$E489 $16 22
B $E40C,2,2 #R$E56D $17 23
B $E40E,2,2 #R$E69D $18 24
B $E410,2,2 #R$E961 $19 25
B $E412,2,2 #R$E857 $1A 26
B $E414,2,2 #R$E8A3 $1B 27
B $E416,2,2 #R$E593 $1C 28
B $E418,2,2 #R$E759 $1D 29
B $E41A,2,2 #R$E4FB $1E 30
B $E41C,2,2 #R$E77C $1F 31
B $E41E,2,2 #R$E7EB $20 32
B $E420,2,2 #R$E834 $21 33
B $E422,2,2 #R$E4AF $22 34
B $E424,2,2 #R$E6C3 $23 35
B $E426,2,2 #R$E9F3 $24 36
B $E428,2,2 #R$E9D0 $25 37
B $E42A,2,2 #R$E9AD $26 38
B $E42C,2,2 #R$E987 $27 39
B $E42E,2,2 #R$EA16 $28 40
B $E430,2,2 #R$EA39 $29 41 Wizard 1 name
B $E432,2,2 #R$EA5C $2A 42 Wizard 2 name
B $E434,2,2 #R$EA7F $2B 43 Wizard 3 name
B $E436,2,2 #R$EAA2 $2C 44 Wizard 4 name
B $E438,2,2 #R$EAC5 $2D 45 Wizard 5 name
B $E43A,2,2 #R$EAE8 $2E 46 Wizard 6 name
B $E43C,2,2 #R$EB0B $2F 47 Wizard 7 name
B $E43E,2,2 #R$EB2E $30 48 Wizard 8 name
t $E440 Blank string
@ $E440 label=STRING_BLANK
T $E440,13,13
b $E44D Data block at E44D
B $E44D,22,8*2,6
t $E463 Creature name: KING COBRA
@ $E463 label=NAME_KING_COBRA
T $E463,13,13
b $E470 Creature data: KING COBRA
B $E470,10,10
b $E47A Creature graphics data: KING COBRA
B $E47A,3,3 #R$EB71
B $E47D,9,3
B $E486,3,3 #R$EC53
t $E489 Creature name: BAT
@ $E489 label=NAME_BAT
T $E489,13,13
b $E496 Creature data: BAT
B $E496,10,10
b $E4A0 Creature graphics data: BAT
B $E4A0,3,3 #R$EBF3
B $E4A3,12,3
t $E4AF Creature name: BLOB
@ $E4AF label=NAME_BLOB
T $E4AF,13,13
b $E4BC Creature data: BLOB
B $E4BC,10,10
b $E4C6 Creature graphics data: BLOB
B $E4C6,3,3 #R$EC73
B $E4C9,12,3
t $E4D5 Creature name: DIRE WOLF
@ $E4D5 label=NAME_DIRE_WOLF
T $E4D5,13,13
b $E4E2 Creature data: DIRE WOLF
B $E4E2,10,10
b $E4EC Creature graphics data: DIRE WOLF
B $E4EC,3,3 #R$ECF3
B $E4EF,12,3
t $E4FB Creature name: SPECTRE
@ $E4FB label=NAME_SPECTRE
T $E4FB,13,13
b $E508 Creature data: SPECTRE
B $E508,10,10
b $E512 Creature graphics data: SPECTRE
B $E512,3,3 #R$ED73
B $E515,12,3
t $E521 Creature name: GOBLIN
@ $E521 label=NAME_GOBLIN
T $E521,13,13
b $E52E Creature data: GOBLIN
B $E52E,10,10
b $E538 Creature graphics data: GOBLIN
B $E538,3,3 #R$EDB3
B $E53B,12,3
t $E547 Creature name: CROCODILE
@ $E547 label=NAME_CROCODILE
T $E547,13,13
b $E554 Creature data: CROCODILE
B $E554,10,10
b $E55E Creature graphics data: CROCODILE
B $E55E,3,3 #R$EE33
B $E561,12,3
t $E56D Creature name: GREEN DRAGON
@ $E56D label=NAME_GREEN_DRAGON
T $E56D,13,13
b $E57A Creature data: GREEN DRAGON
B $E57A,10,10
b $E584 Creature graphics data: GREEN DRAGON
B $E584,3,3 #R$EEB3
B $E587,12,3
t $E593 Creature name: VAMPIRE
@ $E593 label=NAME_VAMPIRE
T $E593,13,13
b $E5A0 Creature data: VAMPIRE
B $E5A0,10,10
b $E5AA Creature graphics data: VAMPIRE
B $E5AA,3,3 #R$EF33
B $E5AD,12,3
t $E5B9 Creature name: FAUN
@ $E5B9 label=NAME_FAUN
T $E5B9,13,13
b $E5C6 Creature data: FAUN
B $E5C6,10,10
b $E5D0 Creature graphics data: FAUN
B $E5D0,3,3 #R$EFB3
B $E5D3,12,3
t $E5DF Creature name: LION
@ $E5DF label=NAME_LION
T $E5DF,13,13
b $E5EC Creature data: LION
B $E5EC,10,10
b $E5F6 Creature graphics data: LION
B $E5F6,3,3 #R$F033
B $E5F9,12,3
t $E605 Creature name: GRYPHON
@ $E605 label=NAME_GRYPHON
T $E605,13,13
b $E612 Creature data: GRYPHON
B $E612,10,10
b $E61C Creature graphics data: GRYPHON
B $E61C,3,3 #R$F0B3
B $E61F,12,3
t $E62B Creature name: ELF
@ $E62B label=NAME_ELF
T $E62B,13,13
b $E638 Creature data: ELF
B $E638,10,10
b $E642 Creature graphics data: ELF
B $E642,3,3 #R$F133
B $E645,12,3
t $E651 Creature name: HORSE
@ $E651 label=NAME_HORSE
T $E651,13,13
b $E65E Creature data: HORSE
B $E65E,10,10
b $E668 Creature graphics data: HORSE
B $E668,3,3 #R$F1D3
B $E66B,12,3
t $E677 Creature name: ORC
@ $E677 label=NAME_ORC
T $E677,13,13
b $E684 Creature data: ORC
B $E684,10,10
b $E68E Creature graphics data: ORC
B $E68E,3,3 #R$F253
B $E691,12,3
t $E69D Creature name: RED DRAGON
@ $E69D label=NAME_RED_DRAGON
T $E69D,13,13
b $E6AA Creature data: RED DRAGON
B $E6AA,10,10
b $E6B4 Creature graphics data: RED DRAGON
B $E6B4,3,3 #R$F2D3
B $E6B7,12,3
t $E6C3 Object name: FIRE
@ $E6C3 label=NAME_FIRE
T $E6C3,13,13
b $E6D0 Object data: FIRE
B $E6D0,10,10
b $E6DA Object graphics data: FIRE
B $E6DA,3,3 #R$F333
B $E6DD,9,3
t $E6E6 Creature name: MANTICORE
@ $E6E6 label=NAME_MANTICORE
T $E6E6,13,13
b $E6F3 Creature data: MANTICORE
B $E6F3,10,10
b $E6FD Creature graphics data: MANTICORE
B $E6FD,3,3 #R$F3B3
B $E700,13,3*4,1
t $E70D Creature name: TROLL
@ $E70D label=NAME_TROLL
T $E70D,13,13
b $E71A Creature data: TROLL
B $E71A,10,10
b $E724 Creature graphics data: TROLL
B $E724,3,3 #R$F433
B $E727,12,3
t $E733 Creature name: UNICORN
@ $E733 label=NAME_UNICORN
T $E733,13,13
b $E740 Creature data: UNICORN
B $E740,10,10
b $E74A Creature graphics data: UNICORN
B $E74A,3,3 #R$F4B3
B $E74D,12,3
t $E759 Creature name: GHOST
@ $E759 label=NAME_GHOST
T $E759,13,13
b $E766 Creature data: GHOST
B $E766,10,10
b $E770 Creature graphics data: GHOST
B $E770,3,3 #R$F533
B $E773,9,3
t $E77C Creature name: WRAITH
@ $E77C label=NAME_WRAITH
T $E77C,13,13
b $E789 Creature data: WRAITH
B $E789,10,10
b $E793 Creature graphics data: WRAITH
B $E793,3,3 #R$F5B3
B $E796,9,3
t $E79F Creature name: BEAR
@ $E79F label=NAME_BEAR
T $E79F,13,13
b $E7AC Creature data: BEAR
B $E7AC,10,10
b $E7B6 Creature graphics data: BEAR
B $E7B6,3,3 #R$F633
B $E7B9,12,3
t $E7C5 Creature name: GORILLA
@ $E7C5 label=NAME_GORILLA
T $E7C5,13,13
b $E7D2 Creature data: GORILLA
B $E7D2,10,10
b $E7DC Creature graphics data: GORILLA
B $E7DC,3,3 #R$F6B4
B $E7DF,12,3
t $E7EB Creature name: SKELETON
@ $E7EB label=NAME_SKELETON
T $E7EB,13,13
b $E7F8 Creature data: SKELETON
B $E7F8,10,10
b $E802 Creature graphics data: SKELETON
B $E802,3,3 #R$F734
B $E805,9,3
t $E80E Creature name: OGRE
@ $E80E label=NAME_OGRE
T $E80E,13,13
b $E81B Creature data: OGRE
B $E81B,10,10
b $E825 Creature graphics data: OGRE
B $E825,3,3 #R$F794
B $E828,12,3
t $E834 Creature name: ZOMBIE
@ $E834 label=NAME_ZOMBIE
T $E834,13,13
b $E841 Creature data: ZOMBIE
B $E841,10,10
b $E84B Creature graphics data: ZOMBIE
B $E84B,3,3 #R$F814
B $E84E,9,3
t $E857 Creature name: HARPY
@ $E857 label=NAME_HARPY
T $E857,13,13
b $E864 Creature data: HARPY
B $E864,10,10
b $E86E Creature graphics data: HARPY
B $E86E,3,3 #R$F894
B $E871,12,3
t $E87D Creature name: PEGASUS
@ $E87D label=NAME_PEGASUS
T $E87D,13,13
b $E88A Creature data: PEGASUS
B $E88A,10,10
b $E894 Creature graphics data: PEGASUS
B $E894,3,3 #R$F914
B $E897,12,3
t $E8A3 Creature name: EAGLE
@ $E8A3 label=NAME_EAGLE
T $E8A3,13,13
b $E8B0 Creature data: EAGLE
B $E8B0,10,10
b $E8BA Creature graphics data: EAGLE
B $E8BA,3,3 #R$F994
B $E8BD,12,3
t $E8C9 Creature name: HYDRA
@ $E8C9 label=NAME_HYDRA
T $E8C9,13,13
b $E8D6 Creature data: HYDRA
B $E8D6,10,10
b $E8E0 Creature graphics data: HYDRA
B $E8E0,3,3 #R$FA14
B $E8E3,12,3
t $E8EF Creature name: GIANT RAT
@ $E8EF label=NAME_GIANT_RAT
T $E8EF,13,13
b $E8FC Creature data: GIANT RAT
B $E8FC,10,10
b $E906 Creature graphics data: GIANT RAT
B $E906,3,3 #R$FA94
B $E909,12,3
t $E915 Creature name: CENTAUR
@ $E915 label=NAME_CENTAUR
T $E915,13,13
b $E922 Creature data: CENTAUR
B $E922,10,10
b $E92C Creature graphics data: CENTAUR
B $E92C,3,3 #R$FB14
B $E92F,12,3
t $E93B Creature name: GIANT
@ $E93B label=NAME_GIANT
T $E93B,13,13
b $E948 Creature data: GIANT
B $E948,10,10
b $E952 Creature graphics data: GIANT
B $E952,3,3 #R$FB94
B $E955,12,3
t $E961 Creature name: GOLDEN DRAGON
@ $E961 label=NAME_GOLDEN_DRAGON
T $E961,13,13
b $E96E Creature data: GOLDEN DRAGON
B $E96E,10,10
b $E978 Creature graphics data: GOLDEN DRAGON
B $E978,3,3 #R$FC14
B $E97B,12,3
t $E987 Object name: DARK CITADEL
@ $E987 label=NAME_DARK_CITADEL
T $E987,13,13
b $E994 Object data: DARK CITADEL
B $E994,10,10
b $E99E Object graphics data: DARK CITADEL
B $E99E,3,3 #R$FC94
B $E9A1,12,3
t $E9AD Object name: MAGIC CASTLE
@ $E9AD label=NAME_MAGIC_CASTLE
T $E9AD,13,13
b $E9BA Object data: MAGIC CASTLE
B $E9BA,10,10
b $E9C4 Object graphics data: MAGIC CASTLE
B $E9C4,3,3 #R$FCB4
B $E9C7,9,3
t $E9D0 Object name: SHADOW WOOD
@ $E9D0 label=NAME_SHADOW_WOOD
T $E9D0,13,13
b $E9DD Object data: SHADOW WOOD
B $E9DD,10,10
b $E9E7 Object graphics data: SHADOW WOOD
B $E9E7,3,3 #R$FCD4
B $E9EA,9,3
t $E9F3 Object name: MAGIC WOOD
@ $E9F3 label=NAME_MAGIC_WOOD
T $E9F3,13,13
b $EA00 Object data: MAGIC WOOD
B $EA00,10,10
b $EA0A Object graphics data: MAGIC WOOD
B $EA0A,3,3 #R$FCF4
B $EA0D,9,3
t $EA16 Object name: WALL
@ $EA16 label=NAME_WALL
T $EA16,13,13
b $EA23 Object data: WALL
B $EA23,10,10
b $EA2D Object graphics data: WALL
B $EA2D,3,3 #R$FD14
B $EA30,9,3
t $EA39 Wizard 1 name: JULIANLL by default, will be overwritten after name entry screen
@ $EA39 label=NAME_WIZ_1
T $EA39,13,13
b $EA46 Wizard 1 data: JULIANLL
B $EA46,10,10
b $EA50 Wizard 1 graphics data: JULIANLL.
D $EA50 Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EA50 label=GRAPH_WIZ_1
B $EA50,3,3 #R$FD34
B $EA53,9,3
t $EA5C Wizard 2 name: GANDALFRT by default, will be overwritten after name entry screen
@ $EA5C label=NAME_WIZ_2
T $EA5C,13,13
b $EA69 Wizard 2 data: GANDALFRT
B $EA69,10,10
b $EA73 Wizard 2 graphics data: GANDALFRT.
D $EA73 Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EA73 label=GRAPH_WIZ_2
B $EA73,3,3 #R$FD54
B $EA76,9,3
t $EA7F Wizard 3 name: GREATFOGEY by default, will be overwritten after name entry screen
@ $EA7F label=NAME_WIZ_3
T $EA7F,13,13
b $EA8C Wizard 3 data: GREATFOGEY
B $EA8C,10,10
b $EA96 Wizard 3 graphics data: GREATFOGEY.
D $EA96 Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EA96 label=GRAPH_WIZ_3
B $EA96,3,3 #R$FD74
B $EA99,9,3
t $EAA2 Wizard 4 name: DYERARTI by default, will be overwritten after name entry screen
@ $EAA2 label=NAME_WIZ_4
T $EAA2,13,13
b $EAAF Wizard 4 data: DYERARTI
B $EAAF,10,10
b $EAB9 Wizard 4 graphics data: DYERARTI.
D $EAB9 Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EAB9 label=GRAPH_WIZ_4
B $EAB9,3,3 #R$FD94
B $EABC,9,3
t $EAC5 Wizard 5 name: GOWIN by default, will be overwritten after name entry screen
@ $EAC5 label=NAME_WIZ_5
T $EAC5,13,13
b $EAD2 Wizard 5 data: GOWIN
B $EAD2,10,10
b $EADC Wizard 5 graphics data: GOWIN.
D $EADC Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EADC label=GRAPH_WIZ_5
B $EADC,3,3 #R$FDB4
B $EADF,9,3
t $EAE8 Wizard 6 name: MERLIN by default, will be overwritten after name entry screen
@ $EAE8 label=NAME_WIZ_6
T $EAE8,13,13
b $EAF5 Wizard 6 data: MERLIN
B $EAF5,10,10
b $EAFF Wizard 6 graphics data: MERLIN.
D $EAFF Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EAFF label=GRAPH_WIZ_6
B $EAFF,3,3 #R$FDD4
B $EB02,9,3
t $EB0B Wizard 7 name: ILIAN RANE by default, will be overwritten after name entry screen
@ $EB0B label=NAME_WIZ_7
T $EB0B,13,13
b $EB18 Wizard 7 data: ILIAN RANE
B $EB18,10,10
b $EB22 Wizard 7 graphics data: ILIAN RANE.
D $EB22 Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EB22 label=GRAPH_WIZ_7
B $EB22,3,3 #R$FDF4
B $EB25,9,3
t $EB2E Wizard 8 name: ASIMONO ZARK by default, will be overwritten after name entry screen
@ $EB2E label=NAME_WIZ_8
T $EB2E,13,13
b $EB3B Wizard 8 data: ASIMONO ZARK
B $EB3B,10,10
b $EB45 Wizard 8 graphics data: ASIMONO ZARK.
D $EB45 Will be overwritten when choosing the wizard graphics or when a wizard status spell is cast.
@ $EB45 label=GRAPH_WIZ_8
B $EB45,3,3 #R$FE14
B $EB48,9,3
b $EB51 Data block at EB51
@ $EB51 label=VAR_EB51_MAYBE_TABLE
B $EB51,32,8
b $EB71 Graphics - King Cobra
D $EB71 There seem to be two bytes in the middle that shouldn't be there.
D $EB71 #HTML(#FOR(0,1)//n/ #UDGARRAY2;($EB71+n*$20)-(($EB71+n*$20)+$18)-8(king_cobran*.png) // #FOR(2,2)//n/ #UDGARRAY2;($EB71+2+n*$20)-(($EB71+2+n*$20)+$18)-8(king_cobran*.png) //)
@ $EB71 label=GRAPHICS_KING_COBRA
B $EB71,98,8*12,2
b $EBD3 Graphics - Bat (Dead)
D $EBD3 #HTML(#UDGARRAY2;($EBD3)-($EBD3+$18)-8(bat_deadn*.png))
@ $EBD3 label=GRAPHICS_BAT_DEAD
B $EBD3,32,8
b $EBF3 Graphics - Bat
D $EBF3 #HTML(#FOR(0,2)//n/ #UDGARRAY2;($EBF3+n*$20)-(($EBF3+n*$20)+$18)-8(batn*.png) //)
@ $EBF3 label=GRAPHICS_BAT
B $EBF3,96,8
b $EC53 Graphics - Dead King Cobra
D $EC53 #HTML(#UDGARRAY2;($EC53)-($EC53+$18)-8(king_cobra3n*.png))
@ $EC53 label=GRAPHICS_KING_COBRA_DEAD
B $EC53,32,8
b $EC73 Graphics - Gooey Blob
D $EC73 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($EC73+n*$20)-(($EC73+n*$20)+$18)-8(gooey_blobn*.png) //)
@ $EC73 label=GRAPHICS_GOOEY_BLOB
B $EC73,128,8
b $ECF3 Graphics - Dire Wolf
D $ECF3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($ECF3+n*$20)-(($ECF3+n*$20)+$18)-8(dire_wolfn*.png) //)
@ $ECF3 label=GRAPHICS_DIRE_WOLF
B $ECF3,128,8
b $ED73 Graphics - Spectre
D $ED73 #HTML(#FOR(0,1)//n/ #UDGARRAY2;($ED73+n*$20)-(($ED73+n*$20)+$18)-8(spectren*.png) //)
@ $ED73 label=GRAPHICS_SPECTRE
B $ED73,64,8
b $EDB3 Graphics - Goblin
D $EDB3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($EDB3+n*$20)-(($EDB3+n*$20)+$18)-8(goblinn*.png) //)
@ $EDB3 label=GRAPHICS_GOBLIN
B $EDB3,128,8
b $EE33 Graphics - Crocodile
D $EE33 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($EE33+n*$20)-(($EE33+n*$20)+$18)-8(crocodilen*.png) //)
@ $EE33 label=GRAPHICS_CROCODILE
B $EE33,128,8
b $EEB3 Graphics - Green Dragon
D $EEB3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($EEB3+n*$20)-(($EEB3+n*$20)+$18)-8(green_dragonn*.png) //)
@ $EEB3 label=GRAPHICS_GREEN_DRAGON
B $EEB3,128,8
b $EF33 Graphics - Vampire
D $EF33 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($EF33+n*$20)-(($EF33+n*$20)+$18)-8(vampiren*.png) //)
@ $EF33 label=GRAPHICS_VAMPIRE
B $EF33,128,8
b $EFB3 Graphics - Faun
D $EFB3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($EFB3+n*$20)-(($EFB3+n*$20)+$18)-8(faunn*.png) //)
@ $EFB3 label=GRAPHICS_FAUN
B $EFB3,128,8
b $F033 Graphics - Lion
D $F033 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F033+n*$20)-(($F033+n*$20)+$18)-8(lionn*.png) //)
@ $F033 label=GRAPHICS_LION
B $F033,128,8
b $F0B3 Graphics - Gryphon
D $F0B3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F0B3+n*$20)-(($F0B3+n*$20)+$18)-8(gryphonn*.png) //)
@ $F0B3 label=GRAPHICS_GRYPHON
B $F0B3,128,8
b $F133 Graphics - Elf
D $F133 #HTML(#FOR(0,4)//n/ #UDGARRAY2;($F133+n*$20)-(($F133+n*$20)+$18)-8(elfn*.png) //)
@ $F133 label=GRAPHICS_ELF
B $F133,160,8
b $F1D3 Graphics - Horse
D $F1D3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F1D3+n*$20)-(($F1D3+n*$20)+$18)-8(horsen*.png) //)
@ $F1D3 label=GRAPHICS_HORSE
B $F1D3,128,8
b $F253 Graphics - Orc
D $F253 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F253+n*$20)-(($F253+n*$20)+$18)-8(orcn*.png) //)
@ $F253 label=GRAPHICS_ORC
B $F253,128,8
b $F2D3 Graphics - Red Dragon
D $F2D3 #HTML(#FOR(0,2)//n/ #UDGARRAY2;($F2D3+n*$20)-(($F2D3+n*$20)+$18)-8(red_dragonn*.png) //)
@ $F2D3 label=GRAPHICS_RED_DRAGON
B $F2D3,96,8
b $F333 Graphics - Fire
D $F333 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F333+n*$20)-(($F333+n*$20)+$18)-8(firen*.png) //)
@ $F333 label=GRAPHICS_FIRE
B $F333,128,8
b $F3B3 Graphics - Manticore
D $F3B3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F3B3+n*$20)-(($F3B3+n*$20)+$18)-8(manticoren*.png) //)
@ $F3B3 label=GRAPHICS_MANTICORE
B $F3B3,128,8
b $F433 Graphics - Troll
D $F433 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F433+n*$20)-(($F433+n*$20)+$18)-8(trolln*.png) //)
@ $F433 label=GRAPHICS_TROLL
B $F433,128,8
b $F4B3 Graphics - Unicorn
D $F4B3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F4B3+n*$20)-(($F4B3+n*$20)+$18)-8(unicornn*.png) //)
@ $F4B3 label=GRAPHICS_UNICORN
B $F4B3,128,8
b $F533 Graphics - Ghost
D $F533 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F533+n*$20)-(($F533+n*$20)+$18)-8(ghostn*.png) //)
@ $F533 label=GRAPHICS_GHOST
B $F533,128,8
b $F5B3 Graphics - Wraith
D $F5B3 #HTML(#FOR(0,3)//n/ #UDGARRAY2;($F5B3+n*$20)-(($F5B3+n*$20)+$18)-8(wraithn*.png) //)
@ $F5B3 label=GRAPHICS_WRAITH
B $F5B3,128,8
b $F633 Graphics - Bear
D $F633 There seems to be a byte at F673 that shouldn't be there.
D $F633 #HTML(#FOR(0,1)//n/ #UDGARRAY2,$42;($F633+n*$20)-(($F633+n*$20)+$18)-8(bearn*.png) // #FOR(2,3)//n/ #UDGARRAY2,$42;($F633+1+n*$20)-(($F633+1+n*$20)+$18)-8(bearn*.png) //)
@ $F633 label=GRAPHICS_BEAR
B $F633,129,8*16,1
b $F6B4 Graphics - Gorilla
D $F6B4 #HTML(#FOR(0,3)//n/ #UDGARRAY2,$06;($F6B4+n*$20)-(($F6B4+n*$20)+$18)-8(gorillan*.png) //)
@ $F6B4 label=GRAPHICS_GORILLA
B $F6B4,128,8
b $F734 Graphics - Skeleton
D $F734 #HTML(#FOR(0,2)//n/ #UDGARRAY2,$47;($F734+n*$20)-(($F734+n*$20)+$18)-8(skeletonn*.png) //)
@ $F734 label=GRAPHICS_SKELETON
B $F734,96,8
b $F794 Graphics - Ogre
D $F794 #HTML(#FOR(0,3)//n/ #UDGARRAY2,$42;($F794+n*$20)-(($F794+n*$20)+$18)-8(ogren*.png) //)
@ $F794 label=GRAPHICS_OGRE
B $F794,128,8
b $F814 Graphics - Zombie
D $F814 #HTML(#FOR(0,3)//n/ #UDGARRAY2,$45;($F814+n*$20)-(($F814+n*$20)+$18)-8(zombien*.png) //)
@ $F814 label=GRAPHICS_ZOMBIE
B $F814,128,8
b $F894 Graphics - Harpy
D $F894 #HTML(#FOR(0,3)//n/ #UDGARRAY2,$45;($F894+n*$20)-(($F894+n*$20)+$18)-8(harpyn*.png) //)
@ $F894 label=GRAPHICS_HARPY
B $F894,128,8
b $F914 Graphics - Pegasus
D $F914 #HTML(#FOR(0,3)//n/ #UDGARRAY2,$47;($F914+n*$20)-(($F914+n*$20)+$18)-8(pegasusn*.png) //)
@ $F914 label=GRAPHICS_PEGASUS
B $F914,128,8
b $F994 Graphics - Eagle
D $F994 #HTML(#FOR(0,3)//n/ #UDGARRAY2,$46;($F994+n*$20)-(($F994+n*$20)+$18)-8(eaglen*.png) //)
@ $F994 label=GRAPHICS_EAGLE
B $F994,128,8
b $FA14 Graphics - Hydra
D $FA14 #HTML(#FOR(0,3)//n/#UDGARRAY2,$44;($FA14+n*$20)-(($FA14+n*$20)+$18)-8(hydran*.png) //)
@ $FA14 label=GRAPHICS_HYDRA
B $FA14,128,8
b $FA94 Graphics - Giant Rat
D $FA94 #HTML(#FOR(0,3)//n/#UDGARRAY2,$07;($FA94+n*$20)-(($FA94+n*$20)+$18)-8(giant_ratn*.png) //)
@ $FA94 label=GRAPHICS_GIANT_RAT
B $FA94,128,8
b $FB14 Graphics - Centaur
D $FB14 #HTML(#FOR(0,3)//n/#UDGARRAY2,$06;($FB14+n*$20)-(($FB14+n*$20)+$18)-8(centaurn*.png) //)
@ $FB14 label=GRAPHICS_CENTAUR
B $FB14,128,8
b $FB94 Graphics - Giant
D $FB94 #HTML(#FOR(0,3)//n/#UDGARRAY2,$05;($FB94+n*$20)-(($FB94+n*$20)+$18)-8(giantn*.png) //)
@ $FB94 label=GRAPHICS_GIANT
B $FB94,128,8
b $FC14 Graphics - Golden Dragon
D $FC14 #HTML(#FOR(0,3)//n/#UDGARRAY2,$46;($FC14+n*$20)-(($FC14+n*$20)+$18)-8(golden_dragonn*.png) //)
@ $FC14 label=GRAPHICS_GOLDEN_DRAGON
B $FC14,128,8
b $FC94 Graphics - Dark Citadel
D $FC94 #HTML(#FOR(0,0)//n/#UDGARRAY2,$43;($FC94+n*$20)-(($FC94+n*$20)+$18)-8(dark_citadeln*.png) //)
@ $FC94 label=GRAPHICS_DARK_CITADEL
B $FC94,32,8
b $FCB4 Graphics - Magic Castle
D $FCB4 #HTML(#FOR(0,0)//n/#UDGARRAY2,$45;($FCB4+n*$20)-(($FCB4+n*$20)+$18)-8(magic_castlen*.png) //)
@ $FCB4 label=GRAPHICS_MAGIC_CASTLE
B $FCB4,32,8
b $FCD4 Graphics - Shadow Wood
D $FCD4 #HTML(#FOR(0,0)//n/#UDGARRAY2,$45;($FCD4+n*$20)-(($FCD4+n*$20)+$18)-8(shadow_woodn*.png) //)
@ $FCD4 label=GRAPHICS_SHADOW_WOOD
B $FCD4,32,8
b $FCF4 Graphics - Magic Wood
D $FCF4 #HTML(#FOR(0,0)//n/#UDGARRAY2,$44;($FCF4+n*$20)-(($FCF4+n*$20)+$18)-8(magic_woodn*.png) //)
@ $FCF4 label=GRAPHICS_MAGIC_WOOD
B $FCF4,32,8
b $FD14 Graphics - Wall
D $FD14 #HTML(#FOR(0,0)//n/#UDGARRAY2,$72;($FD14+n*$20)-(($FD14+n*$20)+$18)-8(walln*.png) //)
@ $FD14 label=GRAPHICS_WALL
B $FD14,32,8
b $FD34 Graphics - Wizard 1
D $FD34 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FD34+n*$20)-(($FD34+n*$20)+$18)-8(wizard1.png) //)
@ $FD34 label=GRAPHICS_WIZ_1
B $FD34,32,8
b $FD54 Graphics - Wizard 2
D $FD54 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FD54+n*$20)-(($FD54+n*$20)+$18)-8(wizard2.png) //)
@ $FD54 label=GRAPHICS_WIZ_2
B $FD54,32,8
b $FD74 Graphics - Wizard 3
D $FD74 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FD74+n*$20)-(($FD74+n*$20)+$18)-8(wizard3.png) //)
@ $FD74 label=GRAPHICS_WIZ_3
B $FD74,32,8
b $FD94 Graphics - Wizard 4
D $FD94 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FD94+n*$20)-(($FD94+n*$20)+$18)-8(wizard4.png) //)
@ $FD94 label=GRAPHICS_WIZ_4
B $FD94,32,8
b $FDB4 Graphics - Wizard 5
D $FDB4 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FDB4+n*$20)-(($FDB4+n*$20)+$18)-8(wizard5.png) //)
@ $FDB4 label=GRAPHICS_WIZ_5
B $FDB4,32,8
b $FDD4 Graphics - Wizard 6
D $FDD4 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FDD4+n*$20)-(($FDD4+n*$20)+$18)-8(wizard6.png) //)
@ $FDD4 label=GRAPHICS_WIZ_6
B $FDD4,32,8
b $FDF4 Graphics - Wizard 7
D $FDF4 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FDF4+n*$20)-(($FDF4+n*$20)+$18)-8(wizard7.png) //)
@ $FDF4 label=GRAPHICS_WIZ_7
B $FDF4,32,8
b $FE14 Graphics - Wizard 8
D $FE14 #HTML(#FOR(0,0)//n/#UDGARRAY2;($FE14+n*$20)-(($FE14+n*$20)+$18)-8(wizard8.png) //)
@ $FE14 label=GRAPHICS_WIZ_8
B $FE14,32,8
b $FE34 Data block at FE14
B $FE34,34,8*4,2
c $FE56 Routine at FE56
D $FE56 Used by the routines at #R$89F9, #R$92BE, #R$95C7 and #R$981A.
@ $FE56 label=ROUTINE_FE56
s $FE5D Unused
S $FE5D,3,$03
c $FE60 Routine at FE60
D $FE60 Used by the routine at #R$89F9.
@ $FE60 label=ROUTINE_FE60
s $FE67 Unused
S $FE67,2,$02
c $FE69 Routine at FE69
@ $FE69 label=ROUTINE_FE69
b $FE71 Data block at FE71
B $FE71,231,8*28,7
b $FF58 Data block at FF58
B $FF58,168,8
