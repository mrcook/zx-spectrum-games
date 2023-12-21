; 23rd July 2020

D $BE0A I think this label means GET CHARACTERISTIC - i.e. return the value of a particular object attribute.

D $9F50 Tables 2 and 6 get a workout in here...

C $9F50 Point HL at the beginning of the map table.
C $9F53 Store this address in $AC12.
C $9F56 Call routine to reset bit 7 for all entries in the 4th map table so that they can be moved.
C $9F59 Set loop counter for table size.
C $9F5B Preserve loop counter.
C $9F5C Load HL with current cursor position in the map.
C $9F5F Save it temporarily in D_ADD.
C $9F62 Set offset into table 4 [with the owner numbers + properties]
C $9F65 Point HL into the corresponding byte in table 4.
C $9F66 Test bit 7 that indicates whether the object has already moved, or been killed, in this turn.
C $9F68 If bit 7 was set then jump to $A114 to skip this object.
C $9F6B Otherwise object is alive & movable so get HL back out of D_ADD.
C $9F6E Load the object from the map into A.
C $9F6F If the object is is not a gooey blob or magic fire then jump to $A114. [NB These two objects spawn themselves randomly.]
C $9F79 Load offset into 4th table.
C $9F7C Point HL at corresponding byte in 4th table.
C $9F7D Load byte into A.
C $9F7E Mask off the owner number for this object.
C $9F80 Save this object's owner number in $AC0E.
C $9F83 Get a random number.
C $9F86 If it is >=9 then jump to $A0C6 to ... "???"
C $9F8B Otherwise load the map address back into HL.
C $9F8E Load the current object into A.
C $9F8F If the object code is for Magic Fire then jump to $9F9B.
C $9F93 Otherwise we are looking at the Gooey Blob & get another random number.
C $9F96 If it is bigger than 8 then jump to $A0C6.
C $9F9B PROCESSING MAGIC FIRE:  Generate a random number...
C $9F9E ... until it is less than or equal to 8.
C $9FA0 Point HL at SPATAB at $CD2A.
C $9FA6 Reset D as we don't want it in a moment.
C $9FA8 Double the random number in A - is it a two byte pointer?
C $9FAA And load it into E.
C $9FAB Add the number in E to HL.
C $9FAC Store HL in CD3A = SPADAT ?? *not used elsewhere in this routine)
C $9FAF Call routine ADSPA at $CD3C to ....? [ADD SPACES "???"]
C $9FB2 Load HL with current cursor position in the map.
C $9FB5 Load high byte of address into A.
C $9FB6 And add low byte of address.
C $9FB7 If the total sets the zero flag than jump to $A114 - eh? some sort of boundary?
C $9FBA Call routine $9786 to see if the target is in range.
C $9FBD Load A with $BEE8.
C $9FC0 If it is greater than 4 then jump to $A114.
C $9FC5 Load HL with current cursor position in the map.
C $9FC8 Load A with the current object.
C $9FC9 If it is 0 for an empty cell then jump to $A09B.
C $9FCD If it is wizard1 then jump to $A011.
C $9FD2 If it is a Dark Citadel, Wall or another wizard then jump to $A0C6.
C $9FD7 If it is a Magic Wood then jump to $A0C6.
C $9FDC Set up an offset of two tables.
C $9FDF Point HL into table 3.
C $9FE0 Load the current animation data into A.
C $9FE1 It is is frame 4 for a dead object then jump to $A09B.
C $9FE6 Set up an offset for a single table.
C $9FE9 Point HL into table 4.
C $9FEA Load A with the byte from table 4 for the owner information.
C $9FEB Mask off the lower three bits.
C $9FED Point HL at the current player variable.
C $9FF0 Compare it with the player number in A.
C $9FF1 If they are the same then jump to $A114.
C $9FF4 Load HL with current cursor position in the map.
C $9FF7 If the current object is a after bat in the creature table then jump to $A03D.
C $9FFD If the current object is before a horse in the creature table then jump to $A03D.
C $A002 If the current object is one of wizards 2-8 then jump to $A011.
C $A007 Set up a four table offset.
C $A00A Add to HL to make it point into table 5.
C $A00B Load the byte from table 5.
C $A00C Compare with 41.
C $A00E If it is a creature rather than a wizard then jump to $A03D.

C $A011 Point HL at the current player variable.
C $A014 Subtract 41 (wizard 1's object code) from A.
C $A016 Compare the result with the current player pointed to by HL.
C $A017 If they are the same then jump to $A114.
C $A01A Add 41 back onto A to get the object's code back.
C $A01C Load HL with the cursor pointer.
C $A01F And preserve it on the stack.
C $A020 Load HL with the cursor pointer.
C $A023 Set up an offset of four tables.
C $A026 Point HL into table 5.
C $A027 Set the corresponding byte in table 5 to 0.
C $A029 Load HL with the cursor pointer.
C $A02C Store the cursor pointer in $AC12.
C $A030 Call routine $C0D8 to ... (update map tables? and drawn border)
C $A033 Gonna hazard a guess that a wizard has been killed at this point...
C $A036 Restore HL with the cursor position.
C $A037 And store it in $AC12.
C $A03A Jump to $A09B.
C $A03D Load HL with the cursor pointer.
C $A040 Load A with the object's code.
C $A041 Compare it with 35 for Magic Fire.
C $A04B If the object is after Magic Fire in the table then jump to $A0C6.
C $A04E Load DE with an offset.
C $A051 Add to HL to make it point into table 3.
C $A052 Load A with the current animation frame.
C $A053 If it is frame 4 then jump to $A09B.
C $A057 Load HL with the cursor pointer.
C $A05A Load A with the object's code.
C $A05B Point HL into table 5.
C $A05F Store the object's code in table 5.
C $A060 Move HL back to table 4.
C $A065 Load the byte into A [owner, asleep, disbelieved, moved/killed]
C $A066 Mask off the owner bits.
C $A068 Point HL into table 6.
C $A06C Save the owner into table 6.
C $A06D Jump to $A09B.
C $A06F Play sound effect 5.
C $A075 Load HL with the cursor pointer.
C $A078 Load D with the object code.
C $A079 Load E with the offset for the "DEFENCE" attribute.
C $A07B Call $BE0A to return this objects DEFENCE value.
C $A07E Store the value in $A172.
C $A081 Generate a random number.
C $A084 Point HL at the stored DEFENCE value.
C $A087 Add the DEFENCE value to the random number.
C $A088 Store the total in STRENG $A172.
C $A089 Generate a random number.
C $A08C Add 5 to it.
C $A08E Compare it with the object's STRENG value.
C $A092 If the random value in A is bigger then the STRENG value pointed at by HL then jump to $A0C6.
C $A095 Otherwise play sound effect 6.
C $A09B Restore the cursor position.
C $A09E Restore pointer into map area 1.
C $A09F Point HL at D_ADD in $AC14 which holds the cursor pointer.
C $A0A2 Load the byte using HL which represents a location in map area 1.
C $A0A3 Set up an offset into map area 3 for the current animation value.
C $A0A6 Point HL at the byte with the current animation value.
C $A0A7 Reset the byte.
C $A0A9 Set up an offset into table 4.
C $A0AC Point HL at the corresponding entry in table 4.
C $A0AD Load A with the number of the current player (0-7).
C $A0B0 Add 128 to 'toggle' bit 7 (why not just set it? Am I wrong here?..) - why???
C $A0B2 Store the byte in table 4.
C $A0B3 Load HL with cursor position.
C $A0B6 Add the offset so that HL points into table 2.
C $A0B7 Set bit 7 of the corresponding byte to show that the object has moved/died?
C $A0B9 Load HL with the cursor position.
C $A0BC Store cursor position in $AC14 D_ADD.
C $A0BF Call routine to update #R$E01f, #R$E160 & draw border.
C $A0C2 Play a sound effect.
C $A0C5 Enable interrupts.

C $A0C6 Generate a random number.
C $A0C9 It if is bigger than 2 then jump to $A114.
C $A0CE Load HL with the cursor position.
C $A0D1 Load A with the object from the map.
C $A0D2 If the object is Magic Fire then jump to $A0DE.
C $A0D6 Otherwise generate a random number.
C $A0D9 If it is bigger than 3 then jump to $A114.
C $A0DE Otherwise load HL with the cursor position.
C $A0E1 Set up an offset into table 5.
C $A0E4 Point HL at the entry in table 5.
C $A0E5 Load A with the byte from table 5.
C $A0E6 If it is 0 then jump to $A0FE.
C $A0E9 Otherwise store 0 in table 5.
C $A0EB Point HL at the entry in table 5.
C $A0EE Load A with the object from the map table.
C $A0EF Set up an offset into table 6.
C $A0F2 Add offset to HL.
C $A0F3 Load into A the byte from table 6.
C $A0F4 Set the byte in table 6 to 0.
C $A0F6 Set up an offset worth "two tables".
C $A0F9 Move HL back so that it points into table 4.
C $A0FB Store the byte that came from table 6 in table 4.
C $A0FC Jump to $A109.
C $A0FE Load HL with the cursor position.
C $A101 Set the byte on the map to '1' which represente 'nothing'.
C $A103 Set up an offset worth 5 tables.
C $A106 Add to HL so that HL now points into table 6.
C $A107 Set the byte in table 6 to 0.
C $A109 Call routine at $C0DD
C $A10C Point HL at sound effect 7.
C $A10F Play sound effect.
C $A112 Enable interrupts.
C $A113 Wait for an interrupt.
C $A114 Restore loop counter.
C $A115 Move the cursor along one position and store.
C $A11C Decrement loop counter.
C $A11D Loop back if not finished.
C $A120 Otherwise point HL back at the start of the map area.
C $A123 Set the cursor_position to the same address/value.
C $A126 Set the loop counter to the size of the map.
C $A128 Preserve the loop counter.
C $A129 Load cursor_position into HL.
C $A12C Load A with the current object.
C $A12D If it is a "Shadow Wood" or earlier object, jump to $A158.
C $A132 If it is a wizard (object codes which are > 40), jump to $A158.
C $A137 We must now be looking at a Magic Castle, a Dark Wood or a Wall so we load A with a random number.
C $A13A If it's bigger than 2 then jump to $A158 because ... ???
C $A13C Otherwise load HL with the cursor position.
C $A142 Load DE with an offset into the 5th map table.
C $A145 Point HL at the byte in the 5th table.
C $A146 Load A with the byte.
C $A147 Reset the byte at that location.
C $A149 If the byte in A is not zero then jump to $A14E.
C $A14C Otherwise set A to 1 to indicate ...?
C $A14E Store the non-zero byte from A in the current entry in the 5th map.
C $A152 Call $99F1 to display 7 frames of an explosion animation.
C $A155 Call $C0D8 to set current map byte to 1, amongst other things.
C $A158 Restore loop counter.
C $A159 Increment cursor position.
C $A160 Loop back to $A128.
C $A162 Set cursor position to the centre of the playing area ???
C $A168 Save cursor position in D_ADD $AC14.
C $A16B Call $C703 to convert an address into coordinates.
C $A16E Store cursor position.
C $A171 Return.
