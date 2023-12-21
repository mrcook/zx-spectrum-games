; 25th July 2020	routine23: Object movement; uses GETCHR, BIT, ...

C $ACED Set up temporary variables.
C $ACF0 Set a bunch of unknowns to 0.
C $AD03 Load unknown25 into A - the object at the cursor.
C $AD06 We want characteristic 17 (Movement Allowance).
C $AD09 Load characteristic 17 (Movement Allowance) for the object into A.
C $AD0C Double it and store in unknown17.
C $AD11 If the current object cannot fly then jump to #R$AD23.
C $AD1C We now know we are looking at a FLYING OBJECT so unknown18=unknown17 + 1 "???"

C $AD23 Load A with the current object number.
C $AD26 Subtract 41 to see if it is not a wizard.
C $AD28 If the object is not a wizard then jump to #R$AD4A.
C $AD2B The current object is a wizard so point HL at #R$AC16 - the table of wizard modifiers.
C $AD32 Load the current wizard modifier into A.
C $AD33 See if "Magic Wings" is activated.
C $AD35 If so then jump to #R$AD3E.
C $AD37 ...
C $AD3E If "Shadow Form" then jump to #R$AD4A.
C $AD42 ...
C $AD4A ...

C $AD50 If the object code is 0 "Nothing" then return.
C $AD55 If the object is not a wizard then jump to #R$AD68.
C $AD5A We have a wizard, so load HL with the player number.
C $AD5D Return if this player number is not the same as the current object.

C $AD5F Copy the current object number from #R$AC0C into #R$AC0D.
C $AD65 Jump to #R$ADD2.

C $AD68 Load A with the byte from table 5.
C $AD6B Subtract 41 to see if the object is before a wizard in the table.
C $AD6D If it is not a wizard then jump to #R$ADB3.
C $AD70 We are looking at a wizard so load HL with the number of the current player.
C $AD73 See if the byte from table 5 is the current player.
C $AD74 Return if they are not the same.
C $AD75 We are looking at the same wizard so copy the byte from table 5 to #R$AC0D.
C $AD7B If the current object is a "Magic Wood" or higher then jump to #R$ADD2.

C $AD83 Set ATTR T to bright yellow on black.
C $AD88 If the current player is computer-controlled then jump to #R$ADA1.
C $AD8E Load A message #R$CFFA - "DISMOUNT WIZARD? (Y OR N)       "
C $AD90 Set print coords to (0,22) and print message.
C $AD96 Call KEYBOARD in ROM.
C $AD99 If they pressed 'Y' then jump to #R$ADA7.
C $AD9D If they did not press 'N' either, then jump back to #R$AD96 to get another key.
C $ADA1 They pressed 'N' so set unknown26 to 0 "???" and jump to #R$ADB3.
C $ADA7 They want to dismount to set unknown18 to 0. "???"
C $ADAB Set unknown17 to 1.
C $ADB0 Jump to #R$ADD2.
C $ADB3 If the object code is 37 "Shadow Wood" then jump to #R$ADBD.
C $ADBA If it is 34 "Gooey Blob" or a higher object code then return.
C $ADBD ...

C $ADC7 Load HL with the cursor position.
C $ADCA Set up an offset into table 3 for animations.
C $ADCD Point HL at the animation byte for the current object.
C $ADCE If the current object is dead then return.
C $ADD2 ...
C $ADD5 ...
C $ADDB If the byte from table 5 is not 0 then jump to #R$ADF4. "???"

C $ADE1 Load A with object code from #R$AC0C.
C $ADE4 Call #R$BE0A to get characteristic 18 (Manoeuvre Rating).
C $ADE5 Copy it into E.
C $ADEB Call #R$BE94 to load A with a random number.
C $ADEE Add 2 to it.
C $ADF0 Compare the Manoeuvre Rating in A with it.
C $ADF1 If the random number is greater than or equal to the Manoeuvre Rating then we are ENGAGED TO THE ENEMY so call #R$BEB2.
C $ADF4 ...


C $AE01 Clear the bottom line of the screen.
C $AE04 Set ATTR T to bright green on black.
C $AE09 Display message #R$D09E:  "MOVEMENT RANGE="
C $AE11 Set ATTR T to bright yellow on black.
C $AE16 ...

C $AE1C Load the object number from #R$AC0C into A.
C $AE1F We need to display how far the current object can move so load object code into D.
C $AE20 We want characteristic 17 (Movement Allowance).
C $AE22 Load characteristic 17 (Movement Allowance) for the object into A.
C $AE25 Copy it into E.
C $AE26 ...
C $AE2F Load A with the movement points available for the current object from E.
C $AE30 Add $30 to get a character code thaT can be displayed.
C $AE32 Appened the movement points to the "MOVEMENT RANGE=" string from #R$AE09.
C $AE35 Play #R$C2CF.
C $AE3B Enable interrupts.
C $AE3C If the current player is human then jump to #R$AE50.
C $AE42 ...
C $AE48 ...
C $AE4B Jump to #R$AE50.

C $AE50 Load the current cursor coordinates into BC.
C $AE54 ...
C $AE5B If the current player is human then jump to #R$AE77
C $AE61 ....

C $AE77 Call #R$BBE7 to deal with cursor movement.

C $AE7A Save map coordinates in #R$AC0A.
C $AE7E Convert them into cursor coordinates.
C $AE81 Save them in #R$AC12.
C $AE84 Set up temporary variables.

C $AE8A ...

C $AE8C Call #R$C3B3 to display information about object at the cursor.

C $AE93 Play #R$C2B1.
C $AE99 Enable interrupts.
C $AE9A Jump to #R$B06F.
C $AE9D If the cursor has not moved yet then jump back to #R$AE50.

C $AEA9 If the object at the cursor position is empty then jump to #R$AF50.

C $AEB0 Load HL with the cursor position.
C $AEB3 Point HL into table with the animation values.
C $AEB7 Load A with the current animation information.
C $AEB8 If the current object is dead then jump to #R$AECC.
C $AEBD Load A with current object.
C $AEC0 If it is not object 36 "Magic Wood" then jump to #R$AECC.
C $AEC7 ...
C $AECA ...
