> $4000 ; SkoolKit disassembly for Chaos - The Battle of Wizards
> $4000 ;
> $4000 ; Copyright (c) 1985 Games Workshop
> $4000 ;
> $4000 ; Disassembly by Guesser & Szeliga (https://szeliga.zapto.org/stuff/Chaos/chaos.html)
> $4000 @start=$7D00
> $4000 @org=$4000
b $4000 Title screen
D $4000 #UDGTABLE { #SCR(loading) | CHAOS title screen. } TABLE#
@ $4000 label=DISPLAY_FILE
B $4000,6912,32
b $5B00 Data block at 5B00
B $5B00,8704,8
c $7D00 Entrypoint
b $7D03 Data block at 7D03
B $7D03,1,1
c $7D04 Routine at 7D04
D $7D04 Used by the routine at #R$95B8.
b $7D60 Data block at 7D60
B $7D60,1440,8
c $8300 Routine at 8300
D $8300 Used by the routines at #R$8324, #R$8360, #R$84D3 and #R$8741.
b $831F Data block at 831F
B $831F,5,5
c $8324 Routine at 8324
D $8324 Used by the routines at #R$8360 and #R$8741.
c $834B Routine at 834B
D $834B 25th July 2020 Wizard modifiers
D $834B Returns the byte for the current player's modifiers.
c $8357 If player is human, display wizard name, spell being cast, and spell casting range.
D $8357 This is called by spells that the wizard casts on himself. It displays his data, updates L/C balance, and displays a twirling effect on his sprite.
C $8360,3 Call routine09 to determine if a spell succeeds and then updates the global Chaos/Law balance.
C $8363,3 Call routine12 to calculate the coordinates of the current player.
C $8366,3 Call routine20 to display the twirling effect on the target of the spell.
C $8369,1 Return
c $836A Routine at 836A
C $84C6,3 Get the moodifier byte for the current wizard.
C $84C9,4 If the wizard does not yet have Shadow Form then jump to #R$84D3.
C $84CD,5 Otherwise set #R$975F to 0.
C $84D2,1 Return.
c $84D3 Display wizard's data, update L/C balance, and display a twirling effect on his sprite.
D $84D3 Used by the routines at #R$8360 and #R$84C6.
C $84D9,8 Return if the spell failed.
C $84E1,3 this is how he makes the wizard "flash" - OOER!!! Set up pointer to wizard animation first frame.
C $84E4,4 Set up offset to second frame.
C $84E8,2 Set frame attribute colours to black on black.
C $84EA,4 Set up offset to fourth frame.
C $84EE,2 Set frame attribute colours to black on black.
C $84F0,6 Set the Shadow Form flag on this wizard's modifier byte.
C $84F6,15 Return.
N $8505 This entry point is used by the routine at #R$851B.
C $851A,1 }
c $851B Call #R$85EC to load HL with the cursor position.
D $851B 25th July 2020 More on the "Subversion" spell
C $851E,2 If there was a byte in table 5 then jump back to #R$8505 - is this because table 5 holds Wizard IDs and you cannot subvert a wizard?
C $8520,3 Load HL with the cursor position.
C $8523,1 Load A with the current object.
C $8524,5 If it is a gooey blob or later object from the object table, then jump back to #R$8505 - because you cannot take control of these objects either.
C $8529,3 If the map is empty at the cursor, jump back to #R$8505 - you cannot control what is not there!
C $852C,3 Call routine to see if the target is in range [I think].
C $852F,3 Jump back to  #R$8505 if it is not in range [I think].
C $8532,3 Call routine to see if there is line of sight to the object - the routine uses 'LOF' which might be 'Line Of Fire' ????
C $8535,2 Jump back to  #R$8505 if ... if it's not???
C $8537,3 All conditions are met so call #R$859C to carry out the spell.
C $853A,1 Return.
c $853B ...
D $853B Used by the routine at #R$84D3.
N $8557 This entry point is used by the routine at #R$8567.
C $8557,12 ...
C $8563,3 Call routine to pause for a while.
C $8566,1 Return.
c $8567 Point HL at the map area.
D $8567 Used by the routine at #R$853B.
C $856A,24 ...
C $8582,3 Call #R$9786 to see if target is in range ???
C $8585,8 ...
C $858D,3 Load HL with the cursor position.
C $8590,4 Load DE with an offset into table 4.
C $8594,2 Test the 'UNDEAD' bit of the corresponding byte.
C $8596,2 If the target is an undead creature then jump to #R$8557.
C $8598,3 Otherwise call #R$859C.
C $859B,1 Return.
c $859C Load A with the vale of #R$AC2E.
D $859C Used by the routines at #R$851B and #R$8567.
C $859F,1 See if A is set.
C $85A0,2 If the current player is not computer-controlled then jump to #R$85A5.
C $85A2,3 Call #R$967A to display wizard name, spell being cast, and spell casting range.
C $85A5,3 Call #R$A18A to display a twirling animation at the cursor coordinates.
C $85A8,3 Load HL with the cursor position.
C $85AB,3 Load DE with an offset into the 4th map table.
C $85AE,1 Point HL at the corresponding byte in the 4th map table.
C $85AF,2 See if the current creature has been disbelieved [I think].
C $85B1,2 If the creature has been marked as disbelieved then the spell must fail so jump to #R$85CA.
C $85B3,3 Otherwise load HL with the cursor position.
C $85B6,1 Load D with the object at the cursor.
C $85B7,2 Load E with 19 which is the offset to a creature's MAGIC RESISTANCE.
C $85B9,3 Call routine to load A with the target creature's magic resistance.
C $85BC,1 Increment the value.
C $85BD,3 Store the increment value in #R$A172.
C $85C0,3 Call #R$904B  to load A with a random number that is 0 to 9.
C $85C3,7 If the value in A is less than the creature's magic resistance then the spell succeeded so jump to #R$85D3.
C $85CA,2 The spell failed so load A with 0.
C $85CC,3 Set #R$9167 to 0.
C $85CF,3 Call routine to display a message that the spell failed.
C $85D2,1 Return.
c $85D3 The spell succeeded so load HL with the cursor position.
D $85D3 Used by the routine at #R$859C.
C $85D6,3 Load DE with an offset to the 4th table.
C $85D9,1 Point HL at the corresponding byte in the 4th table.
C $85DA,1 Load A with the byte from the 4th table.
C $85DB,2 Blank out the owner from the bottom three bits.
C $85DD,1 Save the modified byte from A into e.
C $85DE,3 Load A with the number of the current player.
C $85E1,1 Add the saved bits onto A from E.
C $85E2,1 Save the updated byte back into the 4th table - i.e. we have changed the owner of the creature.
C $85E3,5 Set the #R$9167 flag to 1.
C $85E8,3 Call routine to say that the spell succeeded.
C $85EB,1 Return.
c $85EC Load DE with an offset of 4 tables.
D $85EC Used by the routines at #R$851B and #R$8567.
C $85EF,4 Point HL into table 5.
C $85F3,1 Load A with the corresponding byte from table 5.
C $85F4,1 Set the zero flag if A is empty.
C $85F5,1 Return.
c $85F6 If the current player is computer-controlled then jump to #R$8639.
D $85F6 IN PROGRESS 28th July 2020 RaiseDead
C $85FC,3 Hugh Mann:  Clear bottom row of the screen.
C $85FF,5 Set P FLAG to 3 so that "OVER 1" is activated for printing.
N $8604 This entry point is used by the routine at #R$861A.
C $8604,3 Allow user to interact with the objects on the map.
C $8607,3 Call KEYBOARD in ROM.
C $860A,4 If they pressed 'S' to select a creature then jump to #R$861A.
C $860E,4 If they pressed 'K' to cancel then jump to #R$8604.
C $8612,6 Play #R$C2B1 - the "CANCEL" sound effect.
C $8618,1 Enable interrupts.
C $8619,1 Return.
c $861A Load A with the object at the cursor.
D $861A Used by the routine at #R$85F6.
C $861F,2 If the monstrous retard has tried to resurrect AN EMPTY CELL then jump to #R$8604.
C $8621,7 Otherwise cbeck that they haven't been equally stupid and tried to RAISE A LIVING CREATURE...
C $8628,2 Sigh, they did, so jump to #R$8604.
C $862A,3 This seems a brighter player so call #R$9786 to see if the dead creature is in range.
C $862D,3 Nope - jump to #R$8604.
C $8630,3 It is in range but do we have line of sight to it? [I think "???"]
C $8633,2 Nope - jump to #R$8604.
C $8635,3 My goodness, conditions met - HOLD ON, LAZARUS, I'M ON MY WAY!
C $8638,1 Return.
c $8639 Store address of #R$D3F2 in #R$CD86.
D $8639 Used by the routine at #R$85F6.
C $863F,6 Store address of #R$E01F in #R$AC12.
C $8645,2 Set loop counter to map size.
C $8647,1 Preserve loop counter.
C $8648,1 Load A with the object code from the map.
C $8649,3 Store it temporarily in #R$A172.
C $864C,4 Point HL at byte in #R$E160.
C $8650,1 Load A with animation frame info.
C $8651,4 If the object IS NOT DEAD, DAMMIT, jump to #R$8676.
C $8655,3 The thing's kicked the bucket so point HL at #R$C6D4 "???"
C $8658,2 ... "???"
C $865A,3 Load A with the object code.
C $865D,32 ...
C $867D,1 Restore loop counter.
C $867E,15 Loop back to #R$8647.
N $868D This entry point is used by the routine at #R$869A.
C $8692,2 }
C $8694,5 Set #R$975F to 0.  "???"
C $8699,1 Return.
c $869A Load HL with address of #R$E01F.
D $869A Used by the routine at #R$8639.
C $869D,3 Set up offset to "???"
C $86A0,4 Load HL with the address of "???"
C $86A4,4 ...
C $86A8,4 Point HL into #R$E160.
C $86AC,5 If the object is not dead then jump to #R$868D.
C $86B1,3 Is the spell's target in range?
C $86B4,3 Nope - jump to #R$868D.
C $86B7,3 Is ....?
C $86BA,2 Nope - jump to #R$868D.
C $86BC,3 Display information message.
C $86BF,3 My goodness, conditions met - HOLD ON, LAZARUS, I'M ON MY WAY!
C $86C2,1 Return.
c $86C3 Call #R$A18A to display turning animation at spell target.
D $86C3 25th July 2020 RAISDO
C $86C6,3 Call #R$9760 to determine if a spell succeeds and then update the global Chaos/Law balance.
C $86C9,5 If the spell failed then return.
C $86CE,3 Otherwise load HL with the cursor position.
C $86D1,3 Load DE with an offset into table 3 [animation frames].
C $86D4,1 Point HL into table 3.
C $86D5,2 Set the corresponding animation frame to 0 - PRAISE JESUS! HE IS RAISED FROM THE DEAD!
C $86D7,3 Load DE with an offset of 160 bytes.
C $86DA,1 Point HL at the corresponding byte in table 4 [owners etc.]
C $86DB,2 Load E with 96 to represent bit5=UNDEAD"???" and bit6="???"
C $86DD,3 Load A with the current player number.
C $86E0,1 Set the two flags for the resurrected object.
C $86E1,1 Store the object's attributes in table 4.
C $86E2,3 Load DE with an offset into table 6 "???"
C $86E5,1 Point HL into table 6.
C $86E6,2 Set the byte to 0 because "???"
C $86E8,3 Call #R$C0DD to set empty cells in map 1 from '0' to '1'. set map 2 to '1' and draw the border.
C $86EB,3 Call #R$97A3 to display whether the spell succeeded or failed.
C $86EE,83 Return.
c $8741 Call #R$9760 to determine whether the spell will succeed.
D $8741 26th July 2020 TUR_DO
D $8741 The Turmoil spell jumbles objects around on the board. Gollop once said there is a bug so the spell doesn't work as often as it should!
C $8744,7 If the spell failed then jump to #R$87EB to display message and return.
C $874B,3 Call #R$A173 to set all objects as movable.
C $874E,3 Point HL at #R$E01F.
C $8751,3 Copy the address of #R$E01F into #R$AC14.
C $8754,2 Set loop counter to map size.
C $8756,1 Preserve loop counter.
C $8757,1 Load the byte at the current position.
C $8758,4 If the map is empty at this position then jump to #R$87DF to move on.
C $875C,4 Point HL at the corresponding byte in table 4.
C $8760,2 Test bit 7 for the current object to see if it is movable in this turn.
C $8762,2 If we are not moving this object then jump to #R$87DF to move along.
C $8764,3 Load HL with address of current map position.
C $8767,3 Store the current object code in #R$873C [CREature 000?]
C $876A,3 Set up offset into table 3.
C $876D,1 Point HL into table 3 [animation frame].
C $876E,1 Load the animation byte into A.
C $876F,3 Store it in #R$8740.
C $8772,3 Set up offset to table 4.
C $8775,1 Point HL into table 4 [owner + flags].
C $8776,1 Load A with the owner/flags info for the current object.
C $8777,3 Store it in #R$873D.
C $877A,1 Point HL into table 5.
C $877B,4 Copy the byte from table 5 into #R$873E, in case a wizard was mounted on this creature.
C $877F,1 Point HL into table 6 ["???"]
C $8780,4 Copy the byte from table 6 into #R$873F.
C $8784,3 Call #R$904B to put a random number in #R$907A.
C $8787,3 Point HL at #R$907A.
C $878A,6 If the value in A is greater than or equal to 159, which would take us off the map, then jump back to #$8784.
C $8790,3 A now has a value that is a position in the map so load HL with #R$E01F.
C $8793,3 Set up the random offset in DE.
C $8796,4 Add the offset to HL and store in #R$AC12.
C $879A,1 Load the object code for the random position.
C $879B,3 If the destination is not available then jump to #R$8784.
C $879E,5 If the object is in the border then jump to #R$8784.
C $87A3,3 Call #R$A18A to display the twirling animation over the object.
C $87A6,3 Load HL with the cursor position, i.e. destination.
C $87A9,3 Load A with the object code.
C $87AC,1 Store the object in the new position.
C $87AD,3 Set up an offset to table 3 [animation].
C $87B0,1 Point HL at the animation byte for the new position.
C $87B1,4 Copy the object's animation data to the new position.
C $87B5,4 Point HL into table 4 [owner/flags].
C $87B9,3 Load A with the owner/flag info the current object
C $87BC,2 Make sure bit 7 is set to show that the object has been moved.
C $87BE,1 Store the owner/flag information for the current object.
C $87BF,1 Point HL into table 5 - IDs of mounted wizards.
C $87C0,4 Copy the wizard ID [could have been 0 if no wizard was mounted on the creature] for this object into table 5, indicating that this wizard is now mounted.
C $87C4,1 Point HL into table 6 which contains ..."???"
C $87C5,4 Copy the byte that was in the old table 6 position to the new position "???"
C $87C9,3 Load HL with the current map pointer.
C $87CC,2 Set the current map slot to empty.
C $87CE,6 Set the corresponding slot in map 5 to empty.
C $87D4,6 Set the corresponding slot in map 6 to empty.
C $87DA,3 Call #R$C0D8 to set empty cells in map 1 to '1' ,  and draw the border.
C $87DD,1 Wait for an interrupt.
C $87DE,1 Wait for an interrupt.
C $87DF,3 Reload current map position into HL.
C $87E2,1 Increment map pointer.
C $87E3,3 Store it in #R$AC14.
C $87E6,1 Restore loop counter.
C $87E7,1 Decrement loop counter.
C $87E8,3 Loop back.
C $87EB,3 Call #R$97A3 to display whether the spell succeeded or failed.
C $87EE,1 Return.
N $87EF This entry point is used by the routines at #R$89F9 and #R$8F8B.
b $8809 Data block at 8809
B $8809,80,8
t $8859 Message at 8859
T $8859,302,65*4,42
b $8987 Data block at 8987
B $8987,41,8*5,1
c $89B0 Routine at 89B0
D $89B0 Used by the routine at #R$89F9.
b $89EF Data block at 89EF
B $89EF,10,8,2
c $89F9 Routine at 89F9
D $89F9 Used by the routine at #R$7D00.
c $8F8B TREPUT:    The Magic Wood spell has a random chance of giving a wizard a new spell but this only happens if the wizard is *INSIDE* the tree, and then the tree dies. So I think that map 1 is for what to display on the screen, and map 5 is for wizard locations. Must also be used for mounted creatures so will check those next.
D $8F8B Used by the routine at #R$8741.
N $8F9A This entry point is used by the routine at #R$89F9.
b $903E Data block at 903E
B $903E,13,8,5
c $904B Routine at 904B
D $904B Used by the routines at #R$859C, #R$8741, #R$89F9, #R$8F8B and #R$96F3.
N $9055 This entry point is used by the routine at #R$AAED.
b $907A Data block at 907A
B $907A,1,1
c $907B Routine at 907B
D $907B Used by the routines at #R$89B0 and #R$89F9.
b $909F Data block at 909F
B $909F,81,8*9,2,4,3
c $90F0 Routine at 90F0
D $90F0 Used by the routine at #R$89F9.
b $910D Data block at 910D
B $910D,89,8*6,1,8
b $9166 unknown02 is used as a copy of the byte in the illusion table, to indicate if the current spell is an illusion. See #R$9760.
B $9166,2,2
c $9168 Routine at 9168
D $9168 Used by the routine at #R$8741.
N $916B This entry point is used by the routine at #R$8F8B.
N $92AA This entry point is used by the routines at #R$8741, #R$8F8B, #R$95B8 and #R$96F3.
N $92F9 This entry point is used by the routines at #R$8741, #R$938B, #R$94A7, #R$95B8 and #R$96F3.
b $937B This variable holds the number of the spell currently being cast.
B $937B,1,1
> $937C ; ************************************************************************
> $937C ; This routine is called from one of two places:
> $937C ; (1) When the user presses menu option 1 to "EXAMINE SPELLS", and
> $937C ; (2) When they press 2 to "SELECT SPELL"
> $937C ;
> $937C ; Unknown08 is used as a flag for this so that we know whether to call
> $937C ; the routine to actually cast the spell. See the code at $9293.
> $937C ; ************************************************************************
b $937C unknown03: in this routine the display coords are stored here. The first byte is for the column and the second byte for the row.
B $937C,9,8,1
c $9385 Play sound effect 22 and clear the screen.
D $9385 routine05: Used when casting a spell [#R$9168] to display a list of the wizard's spells and choose one to cast.
c $938B Set ATTR T to bright yellow on black.
C $9393,3 Load the current player's number into A (value 0 to 7).
C $9396,2 Use it to calculate the offset for the wizard's name in game messages table 1 at CDD3.
C $9398,6 Display current wizard's name at (0,0).
C $939E,5 Append the text 'S SPELLS to the wizard's name using the message at $CF1F.
C $93A3,2 Each wizard has a maximum of 20 spells so load this value into B.
C $93A5,5 unknown04 is used to keep track of which letter of the alphabet to print before each spell. So, $40 is loaded here as it is for the '@' character which immediately precedes 'A'.
C $93AA,6 unknown03 is being used to store the display coordinates. The first byte is the column and the second byte is the row. Here we store the value 16 in unknown03 because there are two columns of spells displayed in column 0 and column 16.
C $93B0,6 For the current wizard, store the address of HIS SPELL (HISPEL) in unknown7.
N $93B6 This entry point is used by the routine at #R$93FF.
C $93B6,1 Preserve display coordinates.
C $93B7,4 Load the value of HIS SPELL (HISPEL) into A.
C $93BB,3 If the spell number is 0 then there is (no longer) a spell at this position so jump to routine05_5 in order to proceed to process the next spell in the list.
C $93BE,3 Load the display column value from unknown03 into A.
C $93C1,8 Alternate the value of unknown03 between 0 and 16 for the display column.
C $93C9,2 If the column value is 16 then jump to routine05_1 to display the spell in the second display column.
C $93CB,8 If the column value is 0 then we have displayed both spells for the current row so add 2 to the row display coordinate in the second byte of unknown03 in order to move down a row.
C $93D3,3 Load the value of unknown07 into HL - i.e. the address of the current spell.
C $93D6,4 Load the spell number from unknown7 into CURSP (i.e. the entry number of the CURRENT SPELL in the spells table at $7D60)
C $93DA,3 Calculate the chance of successfully casting this spell by calling CHAN_C.
C $93DD,3 Store a value in the range 0 to 9 for the chance of successfully casting this spell in A.
C $93E0,3 Add 1 to the value and halve it: gives a number between 0 and 5. This will be used to set the display colour of the spell.
C $93E3,5 Add the value in A to $42 to represent a colour from RED to WHITE and store the colour value in ATTR T.
C $93E8,7 Increment the value of unknown4, i.e. the next letter of the alphabet to print before a spell's name.
C $93EF,5 Load display coordinates from unknown3 and store BC.
C $93F4,3 Display letter of the alphabet before spell name.
C $93F7,2 Restore display coordinates and move to next column.
C $93F9,6 unknown05 is set elsewhere, but its value indicates the alignment of the spell:  0 for Neutral, P flag after OR for Chaos. This is how to decide which symbol to display between the letter of the alphabet and the spell's name.
c $93FF Load A with the character code for '-' which is used to indicate a Neutral spell.
C $9401,2 Jump to routine05_4 to display character before the
N $9403 This entry point is used by the routine at #R$938B.
C $9403,3 spell name to indicate its alignment.}
C $9406,2 Load A with the character code for '*' to indicate a Chaos spell.
C $9408,2 Jump to $940C to display it.
C $940A,2 This must be a Law spell so load a with the character code of the upwards-pointing arrow.
C $940C,1 Preserve display coords.
C $940D,4 Display the */-/Arrow between the spell's letter and the spell's name to indicate its alignment.
C $9411,1 Increment the x-coordinate ready to display the spell's name.
C $9412,3 Load HL with the address of the current spell.
C $9415,1 Load A with the message number of the spell.
C $9416,3 Display the name of the spell.
N $9419 This entry point is used by the routine at #R$938B.
C $9419,8 Increment the pointer in unknown07 to point to the wizard's next spell in possessed_spell_table.
C $9421,1 Restore loop counter.
C $9422,2 Loop back to routine05_0.
c $9424 All spells displayed so now set display coordinates to (0,22).
C $9427,5 Set ATTR T to bright yellow on black.
C $942C,2 Load A with the message number for press_0_to_return_string
C $942E,6 Display: PRESS '0' TO RETURN TO MAIN MENU
C $9434,3 Call KEYBOARD in ROM.
C $9437,5 If '0' was pressed then return, otherwise jump to routine05_7.
C $943C,3 Load the address of unknown04 into HL. Remember that unknown04 will now hold the character code of the last spell's letter (the thing before the alignment character).
C $943F,5 A holds the code of the key pressed (see $9434) so we decrement it and check to see if it is a letter that is later in the alphabet than the last one printed. If so, we jump back to routine05_6 to get another keypress.
C $9444,5 Similarly, we now check that they haven't pressed anything with a code before $40 for the letter 'A'. If they did, then jump back to get another keypress.
C $9449,1 We now know that they have pressed a letter in the range 'A' to 'FINAL SPELL LETTER', and have subtracted $3F, so A now holds a value that will help us calculate the offset into his table of spells. We store this value in B.
C $944A,3 Load the address of his current spell into HL.
C $944D,6 Set up in DE the HL pointer adjustment value, reset the Carry flag and move the HL pointer back two bytes in preparation for the forthcoming loop where we repeatedly move it on by two bytes each time.
C $9453,1 Point HL at the wizard's next spell.
C $9454,2 Load the spell number.
C $9456,4 The JR and DJNZ cause us to advance to the end of his set of spells - the JR is for spells with a value of '0' and the DJNZ for the ones he has left.
C $945A,3 A is the number that identifies which spell the user pressed a letter for, and we store this in CURSP (current spell).
C $945D,6 I've just realised that in $9293 that the reason he sets unknown08 to 1 if the user has pressed '2' is because this is when the user is saying they want to actually cast the spell, rather than just view it from another menu. *SO*, we'll need to amend the comment for that routine but here, he loads unknown08 and jumps ahead to routine05_9 to CAST THAT SPELL, BUDDY!
C $9463,3 Display an information screen about a selected spell.
C $9466,3 Jump back to the start at $9385 to see what they want to do next.
C $9469,6 Load the current player number into A and use it to create an offset into the table of spells cast.
C $946F,7 Point HL at this wizard's entry in the cast_spells table and store the current spell.
C $9476,7 Return if the current spell is outside the interval 2 to 22 since only these spells can be an illusion, which we are going to ask them about next.
C $947D,8 To get here they must be wanting to cast a creature that could be an illusion so clear the bottom row and set ATTR T to bright white on black.
C $9485,8 When the user casts a spell they have they choice of a real or illusionary creature. We now prompt for their choice by display "ILLUSION? (PRESS Y OR N)" at (0,22).
C $948D,3 Wait for them to press a key.
C $9490,3 Call KEYBOARD in ROM.
C $9493,3 Return if they pressed 'N' because they want to cast a real creature.
C $9496,4 If they did not press 'Y' then jump back and wait for them to press either Y or N.
C $949A,3 They want to cast an illusion so point HL at the illusion table.
C $949D,6 Use their player number to create an offset in DE.
C $94A3,3 Set a flag in the illusion table that the current player is casting an illusion with the current spell.
C $94A6,1 Return.
c $94A7 Call CHAN_C to update the value of the casting_chance variable.
D $94A7 routine37: Display information about a spell or an object on the board
C $94AA,5 Load A with the value/ID of the Current Spell (CURSP).
C $94AF,7 For some spells (e.g. DISBELIEVE, SUBVERSION) we can just display their info immediately but if it is a spell to cast a creature then we will call display_object_info instead. Jump to routine37_0 if the spell number is one of the first 33 spells in the spells_table at $7D69.
C $94B6,3 Otherwise it's a creature, so we're going to use a trick since there might not even be one of these creatures on the map yet. Normally, the cursor is over an object/creature when we display information about it. However, here Gollop has stored the object code in a border slot in the map table and set the cursor coordinates to point to it so that he can call display_object_info in a minute. Sneaky! So, point HL at the final byte of map area 1 which is really a border graphic.
C $94B9,1 Store the value of A (which is for the current spell) in $E0BE.
C $94BA,3 Store the address E0BE in the cursor_position variable so that the display routine thinks we are on a real object. AS IF!
C $94BD,4 Advance the HL pointer by 641 bytes to the final byte of the fifth_map_area_table.
C $94C1,2 ??? Set that byte to 0.
C $94C3,5 Set unknown71 to 3 because if bit 1 is set then display_object_info knows that the current object is a wizard and to display how many spells he has and his ability. Also, here bit 0 of unknown71 is set so that the display routine knows to print a "casting chance" attribute. See the code at $C53F.
C $94C8,6 Copy the casting chance of the current spell to unknown67 so that it can be displayed in display_object_info in a minute.  NB: maybe we should update the comment at $C550 about unknown67 being set here.
C $94CE,3 Display the information about the object at the cursor position.
C $94D1,5 Reset unknown71 to 0 - this will mean that display_object_info knows not to print any spell properties, or a how many spells a wizard has. Instead, just casting chance and range.
C $94D6,5 Reset the sneaky byte we used in the border to make display_object_info think we were examining an object.
C $94DB,7 Store the address of the map_area_object_table in the cursor_position variable.
c $94E2 Clear the screen because we are about to display all the properties for the currently selected spell.
D $94E2 Used by the routine at #R$94A7.
C $94E5,6 Play sound effect 22.
C $94EB,8 Set ATTR T to bright blue on cyan and draw the border.
C $94F3,5 Set ATTR T to bright yellow on black.
C $94F8,10 Look up the name of the spell and display it at (8,5).
C $9502,6 If the value of unknown05 is 0 then this is a NEUTRAL spell so we don't want to display anything about its effect on the CHAOS/LAW balance, so just jump ahead to routine37_2 to display the Casting Chance.
C $9508,3 If the P flag was set then this spell has a LAWFUL effect so jump to routine37_1 to display details.
C $950B,5 If we are here then the current spell must have a CHAOS effect so set ATTR T to bright magenta on black
C $9510,8 Display the chaos_string "(CHAOS " at (8,7) on the main menu
C $9518,3 Load the value of unknown05 into A - it is the Chaos/Law effect of the current spell.
C $951B,4 Negate the loaded value in order to get something that we can add $30 to in order to be able to print it.
C $951F,3 Print the Chaos value of the current spell.
C $9522,7 Print a closing bracket and jump ahead to routine37_2 to display this spell's casting chance.
C $9529,5 Set ATTR T to bright cyan on black
C $952E,8 Display the chaos_string "(LAW " at (8,7) on the main menu
C $9536,8 Convert the value in unknown05 into a character that represents a bias towards Chaos and display it.
C $953E,5 Print a closing bracket.
C $9543,5 Set ATTR T to bright green on black.
C $9548,8 Print "CASTING CHANCE=" at (8,11).
C $9550,5 Set ATTR T to bright yellow on black.
C $9555,6 Load the value of casting_chance for the current spell into A, increment it, and compare with the value 10. NB: casting_chance is 0 to 9, which represent 0%, 10%, ..., 100% so we will need to convert before we can display.
C $955B,2 If it's not 10 (i.e. 100%) then jump to routine 37_3.
C $955D,7 The casting_chance is 10 so display ten_string which is "10" and jump to routine 37_4.
C $9564,5 Otherwise display the value in A which we will append to in a moment.
C $9569,10 Now append "0%" to complete the display of the casting_chance.
C $9573,5 Set ATTR T to bright green on black.
C $9578,8 Display range_string "RANGE=" at (8, 15).
C $9580,5 Set ATTR T to bright yellow on black because we are about to calculate the value of the casting chance as a percentage.
C $9585,9 Look up the range value for the current spell. The range is stored *doubled* so we need to halve it.
C $958E,5 If the range is bigger than 10 then we display a range value of 20 by jumping to routine37_5. This is used for spells like DISBELIEVE that can work anywhere on the board.
C $9593,7 Otherwise we convert the value in A into a character and display it, and jump ahead to routine37_6.
C $959A,10 Display a range value of "20".
C $95A4,5 Set ATTR T to bright cyan on blue.
C $95A9,8 Display "PRESS ANY KEY STRING" at (0,22).
C $95B1,6 Wait for a key to be pressed
C $95B7,1 Return.
c $95B8 Routine at 95B8
D $95B8 Used by the routine at #R$9168.
N $95C7 This entry point is used by the routine at #R$9168.
C $9631,55 that line copies the illusion flag/byte from the illusion table uinto unknown2 so that we know whether the wizard is trying to cast an illusion or a real creature.
N $9668 This entry point is used by the routine at #R$96F3.
N $967A This entry point is used by the routines at #R$8357, #R$8360, #R$859C, #R$869A, #R$86C3, #R$99A9, #R$9ABE, #R$9B1C, #R$9BB3, #R$9C0F, #R$D686, #R$D7A6 and #R$D82D.
C $96D0,1 }
c $96D1 routine07: A busy wait loop that also plays a sound effect.
D $96D1 Used by the routine at #R$95B8.
N $96E6 This entry point is used by the routines at #R$853B, #R$8741, #R$8F8B and #R$95B8.
c $96F3 IN PROGRESS 28th July 2020 routine08
D $96F3 Used by the routine at #R$95B8.
C $96F3,3 Load HL with the address of #R$AC16 [the modifiers for wizards].
C $96F6,3 Load A with the code for the current wizard.
C $96F9,3 Set an offset for the current wizard.
C $96FC,1 Point HL at the modifier byte for the current wizard.
C $96FD,5 If the wizard HAS BEEN SLAIN then jump to #R$9668.
C $9702,3 Otherwise, praise be, he prevails still and we get a pointer to his TOME OF MIGHTY SPELLS.
C $9705,3 Get a random number from the bug-infested RANDY. Lie down with dogs, wake up with fleas. JUST SAYING.
C $9708,15 Add to A so that it contains 12 to 21. "???"
C $9717,2 Set loop counter to 20 for the wizard's maximum number of spells.
C $9719,1 Preserve loop counter.
C $971A,5 "???"
C $971F,4 Load the wizard's spell into A.
C $9723,3 Skip it if it is 0, and jump to #R$9751 to get the next one.
C $9726,6 Store the current spell in #R$937B and calculate the chance of casting the curret spell.
C $972C,9 ...
C $9735,3 ...
C $9738,3 Clear the bottom line of the screen.
C $973B,6 "???"
C $9741,12 ...
C $974D,4 ...
C $9751,11 ...
C $975C,3 Jump to #R$9668.
b $975F Data block at 975F
B $975F,1,1
c $9760 Load unknown2 which is set at $9631 as a flag for an illusionary target.
D $9760 Determines if a spell succeeds and then updates the global Chaos/Law balance.
C $9763,3 If they are casting an illusion then jump to $9778 because illusions ALWAYS succeed. Like budgies.
C $9766,3 They want to cast a real creature so call get_random to see if they suck seed.  NB: I think the comments for the routine at $BE94 are incorrect, in that I think we are returned a number in the range 0-10 and not 11-15. I checked this in the debugger.
C $9769,5 Load the casting chance value of the current spell into E and increment the value.
C $976E,4 Compare the random number with the casting chance in E. If the random number is less than E then the spell failed.
C $9772,5 Set spell_success_flag to 0. How American. "You didn't fail, you just didn't succeed."
C $9777,1 Return.
c $9778 Right - we've got rid of the boys, this is where the MEN hang out!  Let's start by setting the spell_success_flag to 1 (since that's what SET means, after all).
D $9778 Used by the routine at #R$9760.
C $977D,3 Oh FFS, another unknown - biab...   Well, looking at $930E we are loading the current spell's effect on the Chaos/Law balance of our universe.
C $9780,5 This makes sense - we have just successfully cast the spell so add the current CH_LAW value to the spell's delta and store back in the global CH_LAW variable.
C $9785,1 Return.
c $9786 Load HL with the address of the current wizard in #R$E01F from #R$AC14.
D $9786 Sees if a spell's target is in range and sets P flag if so.
D $9786 routine10: Sets the P flag is the target of a spell is in range.
C $9789,6 Call #R$C703 to calculate his map coordinates and store in #R$BEE9.
C $978F,3 Load HL with the position of the cursor.
C $9792,6 Call #R$C703 to convert the cursor position into map coordinates and store in #R$BEEB.
C $9798,3 Call #R$BEEF to calculate distance to cursor and set #R$BEE8.
C $979B,3 Load HL with the distance to the cursor.
C $979E,3 Load A with the maximum casting distance for the current spell.
C $97A1,1 Compare the two values: if the distance to the target is less than or equal to the maximum then P will be set for success.
C $97A2,1 Return.
c $97A3 routine11: Displays whether the spell succeeded or failed.
D $97A3 Used by the routines at #R$8360, #R$84D3, #R$859C, #R$85D3, #R$86C3, #R$8741, #R$9856, #R$98D6, #R$99A9, #R$9A21, #R$9B71, #R$9BB3, #R$9C0F, #R$D5CB, #R$D5E8, #R$D686, #R$D732 and #R$D82D.
c $97BB routine06: Used when casting a spell [#R$9168] to load wizard modifier, determine if the spell will succeed => update L/C balance & cast spell.
D $97BB Used by the routine at #R$97A3.
N $97C8 This entry point is used by the routine at #R$97A3.
b $97CE This contains the number of attempts for the current spell.
B $97CE,3,3
c $97D1 Store the address of the map_area_object_table in unknown12.
D $97D1 The wizard is casting on the spells (such as Magic Armour) on himself. This routine finds the current wizard on the map to save the player having to navigate and highlight themselves!
C $97D7,2 Set loop counter to 159 so that we can process all 160 bytes in the table.
C $97D9,1 Load the object code for the current position in the map.
C $97DA,2 Subtract 41 because our first wizard has code 41.
C $97DC,4 Point HL at the byte ID of the current player (a number from 0 to 7) and compare it with the value in A for the current object on the map.
C $97E0,2 The current object on the map is the current player so jump ahead to $97FB.
C $97E2,3 Reload HL with the address of the map that we stored at the start of this routine.
C $97E5,4 Move HL along to the corresponding byte in the 5th map area table.
C $97E9,3 Load the byte from the 5th map area and subtract 41 to get an object ID.
C $97EC,4 Compare the object ID with the current player's ID.
C $97F0,2 Again, we have found our player that is casting the spell on himself so jump to $97FB.
C $97F2,7 Increment the map pointer that is being stored in unknown12.
C $97F9,2 Loop back to $97D9.
C $97FB,12 Copy the map pointer from HL into D_ADD & cursor_position & X_ADD.  -  even though routine53 in a minute only uses HL, and even copies that into unknown66....!
C $9807,3 Call routine53 to convert a memory address into a set of coordinates in HL.
C $980A,3 Store the coordinates of our newly located wizard who is casting something on himself (eew).
C $980D,1 Return.
c $980E Preserve HL.
D $980E 29th July 2020 OFBORD
D $980E Sets the Z flag if the x-coord of the cursor is in the right-hand border.
D $980E The map slots go from (1,1) to (15,10)
C $980F,3 Load HL with the address of a map object.
C $9812,3 Convert address into map position coordinates.
C $9815,3 Set Z flag if x-coordinate is 16, i.e. in the border.
C $9818,1 Restore HL.
C $9819,1 Return.
c $981A Clear the bottom row of the screen.
D $981A From looking at $9AFC & $9B76 it looks like this routine is used to cast a Shadow Wood, Walls. I suspect we are choosing where to place spells that have multiple attempts. Perhaps other stuff too!
C $981D,3 Call routine12 to find the coordinates of the current player and store them in $BC94 = cursor_coordinates.
C $9820,3 Call routine to set IM2.
C $9823,5 Set ATTR P to black on black.
C $9828,5 Set MASK P to 255 so that all attribute bits are taken from screen, not ATTR P.
C $982D,3 Call #R$C0D8.
C $9830,1 Enable interrupts.
C $9831,1 Wait for one.
C $9832,5 Set P FLAG to 3 to enable "OVER 1".
C $9837,3 Clear the bottom row of the screen.
C $983A,4 unknown11 contains the number of attempts for the current spell so load the value into B.
N $983E This entry point is used by the routines at #R$9856 and #R$D5CB.
C $983E,1 Preserve BC.
c $983F Call KEYBOARD in ROM to set LAST K.
D $983F Used by the routines at #R$9856 and #R$D588.
C $9845,4 If the user pressed 'S' to select the current object then jump to $9856.
C $9849,4 Else if they pressed 'K' to cancel this operation then jump back to $983F.
C $984D,1 Restore BC.
C $984E,6 Play sound effect 11.
C $9854,1 Enable interrupts.
C $9855,1 Return.
c $9856 Wait for no key to be pressed.
D $9856 Used by the routine at #R$983F.
C $9859,3 Call $9786 to see if the target is in range.
C $985C,3 If the target is in range then jump to #R$9877.
C $985F,3 Otherwise clear the bottom row.
C $9862,3 Set print coordinates to (0,22).
C $9865,5 Set ATTR T to bright cyan on black.
C $986A,5 Print #R$D03A  = "OUT OF RANGE".
C $986F,3 Wait for no key to be pressed.
C $9872,3 Wait for a key to be pressed.
C $9875,2 Jump back to #R$983F.
N $9877 This entry point is used by the routine at #R$D567.
C $9877,4 Load the object at the #R$AC12 into A.
C $987B,3 If it is an empty cell then jump to #R$9892.
C $987E,3 Otherwise load the current spell into A.
C $9881,5 If it is >=36, i.e. Magic Wood,Shadow Wood, Magic Castle, Dark Citadel or Wall, then jump to #R$983F.
C $9886,3 Otherwise load HL with the cursor position.
C $9889,3 Set up an offset to table 3.
C $988C,1 Point HL into the corresponding byte in table 3.
C $988D,1 Load the current animation frame number into A.
C $988E,4 If the object is not dead then jump back to #R$983F.
C $9892,3 Call #R$98F1 to ... "???".
C $9895,2 Jump to #R$983F to get another target.
C $9897,3 Call #R$9C0F to ... "???".
C $989A,2 Jump to #R$983F to get another target.
C $989C,3 Call #R$98DB to ... "???".
C $989F,2 If "???" then jump to #R$98BA to proceed with the spell.
C $98A1,5 Otherwise set ATTR T to bright cyan on black.
C $98A6,3 Clear the bottom row of the screen.
C $98A9,8 Print #R$D280 "MAGIC FIRE" at (0,22).
C $98B1,3 Wait for no key to be pressed.
C $98B4,3 Wait for a key to be pressed.
C $98B7,3 Jump back to #R$983F.
C $98BA,3 Call #R$A18A to display the twirling animation over the target.
C $98BD,4 See if the spell succeeded.
C $98C1,2 If it failed then jump to #R$98D6.
C $98C3,3 Otherwise call #R$9941 to update map tables.
C $98C6,2 Restore BC which contains the number of attempts for this spell - stored at #R$983E.
C $98C8,1 Load the remaining number of attempts into A.
C $98C9,4 If more attempts are left to be made then jump to #R$98CB.
C $98CD,3 Otherwise call #R$97A3 to display whether the spell succeeded or failed.
C $98D0,1 Restore BC.
C $98D1,1 Decrement the number of attempts of this spell left to be made.
C $98D2,3 If more attempts remain then jump to #R$983E.
C $98D5,1 Return.
c $98D6 Restore BC.
D $98D6 Used by the routine at #R$9856.
C $98D7,3 Call #R$97A3 to display whether the spell succeeded or failed.
C $98DA,1 Return.
c $98DB routine14:
D $98DB Used by the routines at #R$851B, #R$8567, #R$861A, #R$869A, #R$9856, #R$99A9, #R$9B1C, #R$9BB3, #R$9C0F, #R$D588, #R$D686 and #R$D82D.
c $98F1 routine15:
D $98F1 Used by the routines at #R$9856, #R$9B1C, #R$D588 and #R$D82D.
N $9932 This entry point is used by the routine at #R$D602.
N $993B This entry point is used by the routine at #R$D602.
b $9940 Data block at 9940
B $9940,1,1
c $9941 Load HL with the cursor position.
D $9941 Sets information in #R$E0C0, #R$E160, #R$E200 for a new object.
C $9944,3 Load A with the code of the current spell being cast.
C $9947,8 If it is for a gooey blob (7E47) or Magic Fire (7E4E) then jump to #R$9958.
C $994F,6 Copy the object code at the cursor coordinates to #R$E340. "???"
C $9955,3 Load A with the code of the current spell.
C $9958,3 Load HL with the cursor position.
C $995B,1 Load A with the code of the current spell being cast.
C $995C,6 Set the animation frame timeout in #R$E0C0 to 1.
C $9962,4 Set the animation frame in #R$E160 to 0.
C $9966,5 Store the owner number in #R$E200.
C $996B,4 Load A with #R$9166 - this is a copy of the byte from #R$915E to indicate whether the current spell is an illusion.
C $996F,2 If it is a real object then jump to #R$9973.
C $9971,2 Otherwise set bit 4 in #R$E200 to indicate the object is an illusion.
C $9973,1 Wait for an interrupt.
C $9974,1 Return.
c $9975 Set #R$97Ce to 1 "???"
D $9975 IN PROGRESS 29th July 2020 CreatureCast
C $997A,6 If the current player is computer-controlled then jump to #R$9984.
C $9980,3 Otherwise call #R$981A.
C $9983,9 Return.
C $998C,13 If the current spell is for a movable creature then jump to #R$9999.
c $9999 Routine at 9999
D $9999 Used by the routines at #R$9975 and #R$D686.
c $999C Routine at 999C
D $999C Used by the routine at #R$99A9.
C $99A8,1 Return.
c $99A9 If HL holds the address of an object in the border then jump to #R$999C.
D $99A9 Used by the routine at #R$999C.
C $99C3,3 Display wizard name, spell being cast, and spell casting range.
C $99C6,3 Display a twirling animation at the target.
C $99C9,8 If the spell is for a non-movable object then jump to #R$99DE.
C $99D1,8 Otherwise ...
C $99D9,5 Set #R$9166 to 1 "???"
N $99DE This entry point is used by the routine at #R$D686.
C $99DE,3 Determine if the spell succeeds and update the global Chaos/Law balance.
C $99E1,7 If the spell succeeded then update map tables etc.
C $99E8,5 Set #R$9166 to 0 "???"
C $99ED,3 Display whether the spell succeeded or failed.
C $99F0,1 Return.
c $99F1 Jump to disbelieve_spell_6 if this routine is being called for a computer-controlled player.
D $99F1 20th July 2020 - DISBELIEVE spell
N $99F8 This entry point is used by the routine at #R$D702.
C $99F8,3 Call routine41 to display the board and allow the player to interact with objects on-screen.
C $99FB,5 Call KEYBOARD in ROM to see if the player has pressed a key.
C $9A00,2 We are only checking here to see if they pressed either 'S' (Select) or 'K' (Cancel). If the user pressed 'S' to select an object to disbelieve then jump to disbelieve_spell_1.
C $9A02,4 If the user didn't press either 'S' or 'K' then jump back to $99F8 to wait for one of these keys.
C $9A06,6 The user pressed 'K' to cancel their current choice so play sound effect 11.
C $9A0C,2 The user has cancelled the spell so enable interrupts and return.
C $9A0E,3 Right - let's get cracking with this spell. Er, by waiting for them not to be pressing a key.
C $9A11,7 Load the object at the current cursor position into and if the cretin of a player has tried to select an empty cell then jump back to disbelieve_spell_0 to start again.
C $9A18,5 Similarly, if they have selected an object that can't be disbelieved (object code for Gooey Blob onwards) then go back to let them choose something else.
C $9A1D,3 They have chosen an object that can be disbelieved (2 King Cobra - 33 Zombie) so call disbelieve_spell_2 to carry out the spell.
C $9A20,1 Return.
c $9A21 Call routine20 to display a twirling animation at the cursor to indicate that a spell is being cast there.
D $9A21 Used by the routines at #R$99F1, #R$9ABE, #R$D702 and #R$D7A6.
C $9A24,3 Now we need to see if the spell is going to succeed or fail. Load HL with the address in map_area_object_table for the current cursor position.
C $9A27,5 Set spell_success_flag to 0.
C $9A2C,4 Point HL at the entry for the owner number/asleep/undead information in map_area_table_4 that corresponds to the cursor position.
C $9A30,4 If the creature is real then jump to #R$9A45.
C $9A34,4 If the creature is an illusion then we need to see if the wizard has MOUNTED it so set HL to the corresponding entry in map_area_table_5
C $9A38,5 Copy the byte (a wizard ID) from table 5 to the map area. This is because when the spell is cast on a mounted wizard, the mount disappears so we are going to move the wizard from table 5 to table 1.
C $9A3D,3 Call disbelieve_spell_4 to play sound effect and animate an explosion.
C $9A40,5 Set spell_success_flag to 1.
C $9A45,6 Call routine11 to display a message on the bottom line as to whether the casting spell of the spell succeeded or failed.
C $9A4B,7 Set bit 5 of the object's byte in map_area_table_5 so that the object is marked to be disbelieved at #R$9ABE.
N $9A52 This entry point is used by the routines at #R$9C0F and #R$D732.
C $9A52,9 Play sound effect 3.
C $9A5B,5 Set ATTR T to bright yellow on black.
C $9A60,6 Set explosion_sprite_pointer to the first frame of the explosion animation.
C $9A66,9 We need to convert the address of the map object into coordinates: Store the cursor position in unknown66 ready for use in the call to address_to_coordinate.
C $9A6F,3 HL now contains game board coordinates in the form (L,H) of where to display the animation so store them in LC_POS.
C $9A72,2 Set loop counter to 7 for the seven frames of animation of the explosion.
C $9A74,1 Disable interrupts.
C $9A75,1 Preserve loop counter.
C $9A76,9 Print the current animation frame for the explosion.
C $9A7F,3 Play sound effect.
C $9A82,10 Point HL at the next animation frame - 32 bytes per frame since we are using 2x2 sprites.
C $9A8C,1 Restore loop counter.
C $9A8D,2 Loop back round to display the next frame of the explosion animation.
C $9A8F,3 Call routine49_0 to update the map area data, animation frame data and redraw the border.
C $9A92,1 Enable interrupts.
C $9A93,1 Wait for an interrupt.
C $9A94,1 Return.
c $9A95 Load HL with the map position of an enemy wizard.
D $9A95 Called for computer-controlled players.
C $9A98,3 Store the enemy wizard's address in #R$C78B.
C $9A9B,22 ... "???"
N $9AB1 This entry point is used by the routines at #R$9ABE and #R$D7A6.
C $9AB1,3 Call GETPLA to increment HL through the map area and load the current object code into A.
C $9AB4,4 If the current object code is *NOT* FF then jump ahead to disbelieve_spell_8 to process it (I saw this somewhere else, and at the time wondered if he is using FF as an 'EOF'-type marker).
C $9AB8,5 We are at the end of the map so reset unknown10 [I can only ever see this being assigned to, not read...] ???
C $9ABD,1 Return.
c $9ABE Point HL at the map area object table and load the byte for the current position into A (as indicated by the offset DE).
D $9ABE Used by the routine at #R$9A95.
C $9AC9,5 Similarly to earlier at $9A18, if the current object cannot be disbelieved then jump back to disbelieve_spell7
C $9ACE,6 Point HL to the current object's entry in map_area_table_4 and test bit 5 to see if the object has been set as 'disbelieved'.
C $9AD4,2 If bit 5 is not set then jump back to disbelieve_spell_7 to process the next map object, i.e. keep looking for the object which is set to be disbelieved.
C $9AD6,3 We have an object that has been set as disbelieved so display a message at the bottom of the screen with the wizard's name, spell name, spell range  by calling display_wizard_spell_range.
C $9AD9,3 Jump to the routine that displays the twirling animation / sees if the spell will succeed / play sound effect / etc.
C $9ADC,1 Return.
c $9ADD Set unknown11 at $97CE to 8.
D $9ADD Trees&Castles spell
D $9ADD There are various trees/castles dealt with by this spell.
C $9AE2,3 Load the code for the current spell into A.
C $9AE5,5 If it is for the Magic Wood or Shadow Wood then jump to $9AEF.
C $9AEA,5 Set unknown11 at $97CE to 1 --> is that so we know we are looking at a castle instead?
N $9AEF This entry point is used by the routine at #R$D7EE.
C $9AEF,6 If the current player is computer-controlled then jump to $9B00.
C $9AF5,3 This is a human player so load A with the current spell.
C $9AF8,4 If it is for a Magic Wood then jump to $9B1F.
C $9AFC,3 Otherwise it is for a Shadow Wood so call $981A to ... ???
C $9AFF,1 Return
c $9B00 Routine at 9B00
D $9B00 Used by the routine at #R$9ADD.
C $9B00,3 Pointlessly load A with the current spell.
C $9B03,5 Compare 0 with 38 and always jump to $9B1C?!??
C $9B08,4 Otherwise load the object code at the cursor into A.
C $9B0C,2 Compare it with the code for a Magic Castle.
C $9B0E,3 If it is earlier in the object table (i.e. a wood) then jump to $9B1C.
C $9B11,10 If it is a wizard then reset unknown 10 $975F.
C $9B1B,1 Return.
c $9B1C Call routine to display wizard's name, spell and range.
D $9B1C Used by the routines at #R$9B00 and #R$D7EE.
N $9B1F This entry point is used by the routine at #R$9ADD.
C $9B1F,11 ...
C $9B2A,3 Call routine to see if the spell succeeds and then updates the global Chaos/Law balance.
C $9B2D,37 ...
C $9B52,3 Display a twirling animation at the cursor coordinates when the spell is cast.
C $9B55,6 If the spell failed then jump to $9B71.
C $9B5B,6 Otherwise load A with the number of the current spell.
C $9B61,1 Store the current spell number in the map.
C $9B62,3 Set up an offset of 3 tables.
C $9B65,1 Move HL into table 4 [owner numbers etc].
C $9B66,4 Store the current player number in table 4.
C $9B6A,3 Call $C0D8 (???) to update tables and draw border.
C $9B6D,1 Restore loop counter.
C $9B6E,2 Loop back to $9B31.
C $9B70,1 Return.
c $9B71 Display whether spell succeeded or failed.
D $9B71 Used by the routine at #R$9B1C.
N $9B74 This entry point is used by the routine at #R$9B1C.
C $9B74,1 ...
C $9B75,16 Return.
c $9B85 routine17:
D $9B85 Used by the routine at #R$9B71.
N $9BA6 This entry point is used by the routine at #R$9BB3.
c $9BB3 routine18:
D $9BB3 Used by the routine at #R$9B85.
N $9BCD This entry point is used by the routine at #R$D887.
b $9C0E Data block at 9C0E
B $9C0E,1,1
c $9C0F routine19:
D $9C0F Used by the routines at #R$9856, #R$9BB3 and #R$D588.
N $9F50 This entry point is used by the routine at #R$8741.
C $9F50,3 Point HL at the beginning of the map table.
C $9F53,3 Store this address in $AC12.
C $9F56,3 Call routine to reset bit 7 for all entries in the 4th map table so that they can be moved.
C $9F59,2 Set loop counter for table size.
C $9F5B,1 Preserve loop counter.
C $9F5C,3 Load HL with current cursor position in the map.
C $9F5F,3 Save it temporarily in D_ADD.
C $9F62,3 Set offset into table 4 [with the owner numbers + properties]
C $9F65,1 Point HL into the corresponding byte in table 4.
C $9F66,2 Test bit 7 that indicates whether the object has already moved, or been killed, in this turn.
C $9F68,3 If bit 7 was set then jump to $A114 to skip this object.
C $9F6B,3 Otherwise object is alive & movable so get HL back out of D_ADD.
C $9F6E,1 Load the object from the map into A.
C $9F6F,10 If the object is is not a gooey blob or magic fire then jump to $A114. [NB These two objects spawn themselves randomly.]
C $9F79,3 Load offset into 4th table.
C $9F7C,1 Point HL at corresponding byte in 4th table.
C $9F7D,1 Load byte into A.
C $9F7E,2 Mask off the owner number for this object.
C $9F80,3 Save this object's owner number in $AC0E.
C $9F83,3 Get a random number.
C $9F86,5 If it is >=9 then jump to $A0C6 to ... "???"
C $9F8B,3 Otherwise load the map address back into HL.
C $9F8E,1 Load the current object into A.
C $9F8F,4 If the object code is for Magic Fire then jump to $9F9B.
C $9F93,3 Otherwise we are looking at the Gooey Blob & get another random number.
C $9F96,5 If it is bigger than 8 then jump to $A0C6.
C $9F9B,3 PROCESSING MAGIC FIRE:  Generate a random number...
C $9F9E,2 ... until it is less than or equal to 8.
C $9FA0,6 Point HL at SPATAB at $CD2A.
C $9FA6,2 Reset D as we don't want it in a moment.
C $9FA8,2 Double the random number in A - is it a two byte pointer?
C $9FAA,1 And load it into E.
C $9FAB,1 Add the number in E to HL.
C $9FAC,3 Store HL in CD3A = SPADAT ?? *not used elsewhere in this routine)
C $9FAF,3 Call routine ADSPA at $CD3C to ....? [ADD SPACES "???"]
C $9FB2,3 Load HL with current cursor position in the map.
C $9FB5,1 Load high byte of address into A.
C $9FB6,1 And add low byte of address.
C $9FB7,3 If the total sets the zero flag than jump to $A114 - eh? some sort of boundary?
C $9FBA,3 Call routine $9786 to see if the target is in range.
C $9FBD,3 Load A with $BEE8.
C $9FC0,5 If it is greater than 4 then jump to $A114.
C $9FC5,3 Load HL with current cursor position in the map.
C $9FC8,1 Load A with the current object.
C $9FC9,4 If it is 0 for an empty cell then jump to $A09B.
C $9FCD,5 If it is wizard1 then jump to $A011.
C $9FD2,5 If it is a Dark Citadel, Wall or another wizard then jump to $A0C6.
C $9FD7,5 If it is a Magic Wood then jump to $A0C6.
C $9FDC,3 Set up an offset of two tables.
C $9FDF,1 Point HL into table 3.
C $9FE0,1 Load the current animation data into A.
C $9FE1,5 It is is frame 4 for a dead object then jump to $A09B.
C $9FE6,3 Set up an offset for a single table.
C $9FE9,1 Point HL into table 4.
C $9FEA,1 Load A with the byte from table 4 for the owner information.
C $9FEB,2 Mask off the lower three bits.
C $9FED,3 Point HL at the current player variable.
C $9FF0,1 Compare it with the player number in A.
C $9FF1,3 If they are the same then jump to $A114.
C $9FF4,3 Load HL with current cursor position in the map.
C $9FF7,6 If the current object is a after bat in the creature table then jump to $A03D.
C $9FFD,5 If the current object is before a horse in the creature table then jump to $A03D.
C $A002,5 If the current object is one of wizards 2-8 then jump to $A011.
C $A007,3 Set up a four table offset.
C $A00A,1 Add to HL to make it point into table 5.
C $A00B,1 Load the byte from table 5.
C $A00C,2 Compare with 41.
C $A00E,3 If it is a creature rather than a wizard then jump to $A03D.
C $A011,3 Point HL at the current player variable.
C $A014,2 Subtract 41 (wizard 1's object code) from A.
C $A016,1 Compare the result with the current player pointed to by HL.
C $A017,3 If they are the same then jump to $A114.
C $A01A,2 Add 41 back onto A to get the object's code back.
C $A01C,3 Load HL with the cursor pointer.
C $A01F,1 And preserve it on the stack.
C $A020,3 Load HL with the cursor pointer.
C $A023,3 Set up an offset of four tables.
C $A026,1 Point HL into table 5.
C $A027,2 Set the corresponding byte in table 5 to 0.
C $A029,3 Load HL with the cursor pointer.
C $A02C,4 Store the cursor pointer in $AC12.
C $A030,3 Call routine $C0D8 to ... (update map tables? and drawn border)
C $A033,3 Gonna hazard a guess that a wizard has been killed at this point...
C $A036,1 Restore HL with the cursor position.
C $A037,3 And store it in $AC12.
C $A03A,3 Jump to $A09B.
C $A03D,3 Load HL with the cursor pointer.
C $A040,1 Load A with the object's code.
C $A041,10 Compare it with 35 for Magic Fire.
C $A04B,3 If the object is after Magic Fire in the table then jump to $A0C6.
C $A04E,3 Load DE with an offset.
C $A051,1 Add to HL to make it point into table 3.
C $A052,1 Load A with the current animation frame.
C $A053,4 If it is frame 4 then jump to $A09B.
C $A057,3 Load HL with the cursor pointer.
C $A05A,1 Load A with the object's code.
C $A05B,4 Point HL into table 5.
C $A05F,1 Store the object's code in table 5.
C $A060,5 Move HL back to table 4.
C $A065,1 Load the byte into A [owner, asleep, disbelieved, moved/killed]
C $A066,2 Mask off the owner bits.
C $A068,4 Point HL into table 6.
C $A06C,1 Save the owner into table 6.
C $A06D,2 Jump to $A09B.
C $A06F,6 Play sound effect 5.
C $A075,3 Load HL with the cursor pointer.
C $A078,1 Load D with the object code.
C $A079,2 Load E with the offset for the "DEFENCE" attribute.
C $A07B,3 Call $BE0A to return this objects DEFENCE value.
C $A07E,3 Store the value in $A172.
C $A081,3 Generate a random number.
C $A084,3 Point HL at the stored DEFENCE value.
C $A087,1 Add the DEFENCE value to the random number.
C $A088,1 Store the total in STRENG $A172.
C $A089,3 Generate a random number.
C $A08C,2 Add 5 to it.
C $A08E,4 Compare it with the object's STRENG value.
C $A092,3 If the random value in A is bigger then the STRENG value pointed at by HL then jump to $A0C6.
C $A095,6 Otherwise play sound effect 6.
C $A09B,3 Restore the cursor position.
C $A09E,1 Restore pointer into map area 1.
C $A09F,3 Point HL at D_ADD in $AC14 which holds the cursor pointer.
C $A0A2,1 Load the byte using HL which represents a location in map area 1.
C $A0A3,3 Set up an offset into map area 3 for the current animation value.
C $A0A6,1 Point HL at the byte with the current animation value.
C $A0A7,2 Reset the byte.
C $A0A9,3 Set up an offset into table 4.
C $A0AC,1 Point HL at the corresponding entry in table 4.
C $A0AD,3 Load A with the number of the current player (0-7).
C $A0B0,2 Add 128 to 'toggle' bit 7 (why not just set it? Am I wrong here?..) - why???
C $A0B2,1 Store the byte in table 4.
C $A0B3,3 Load HL with cursor position.
C $A0B6,1 Add the offset so that HL points into table 2.
C $A0B7,2 Set bit 7 of the corresponding byte to show that the object has moved/died?
C $A0B9,3 Load HL with the cursor position.
C $A0BC,3 Store cursor position in $AC14 D_ADD.
C $A0BF,3 Call routine to update #R$E01f, #R$E160 & draw border.
C $A0C2,3 Play a sound effect.
C $A0C5,1 Enable interrupts.
C $A0C6,3 Generate a random number.
C $A0C9,5 It if is bigger than 2 then jump to $A114.
C $A0CE,3 Load HL with the cursor position.
C $A0D1,1 Load A with the object from the map.
C $A0D2,4 If the object is Magic Fire then jump to $A0DE.
C $A0D6,3 Otherwise generate a random number.
C $A0D9,5 If it is bigger than 3 then jump to $A114.
C $A0DE,3 Otherwise load HL with the cursor position.
C $A0E1,3 Set up an offset into table 5.
C $A0E4,1 Point HL at the entry in table 5.
C $A0E5,1 Load A with the byte from table 5.
C $A0E6,3 If it is 0 then jump to $A0FE.
C $A0E9,2 Otherwise store 0 in table 5.
C $A0EB,3 Point HL at the entry in table 5.
C $A0EE,1 Load A with the object from the map table.
C $A0EF,3 Set up an offset into table 6.
C $A0F2,1 Add offset to HL.
C $A0F3,1 Load into A the byte from table 6.
C $A0F4,2 Set the byte in table 6 to 0.
C $A0F6,3 Set up an offset worth "two tables".
C $A0F9,2 Move HL back so that it points into table 4.
C $A0FB,1 Store the byte that came from table 6 in table 4.
C $A0FC,2 Jump to $A109.
C $A0FE,3 Load HL with the cursor position.
C $A101,2 Set the byte on the map to '1' which represente 'nothing'.
C $A103,3 Set up an offset worth 5 tables.
C $A106,1 Add to HL so that HL now points into table 6.
C $A107,2 Set the byte in table 6 to 0.
C $A109,3 Call routine at $C0DD
C $A10C,3 Point HL at sound effect 7.
C $A10F,3 Play sound effect.
C $A112,1 Enable interrupts.
C $A113,1 Wait for an interrupt.
C $A114,1 Restore loop counter.
C $A115,7 Move the cursor along one position and store.
C $A11C,1 Decrement loop counter.
C $A11D,3 Loop back if not finished.
C $A120,3 Otherwise point HL back at the start of the map area.
C $A123,3 Set the cursor_position to the same address/value.
C $A126,2 Set the loop counter to the size of the map.
C $A128,1 Preserve the loop counter.
C $A129,3 Load cursor_position into HL.
C $A12C,1 Load A with the current object.
C $A12D,5 If it is a "Shadow Wood" or earlier object, jump to $A158.
C $A132,5 If it is a wizard (object codes which are > 40), jump to $A158.
C $A137,3 We must now be looking at a Magic Castle, a Dark Wood or a Wall so we load A with a random number.
C $A13A,2 If it's bigger than 2 then jump to $A158 because ... ???
C $A13C,6 Otherwise load HL with the cursor position.
C $A142,3 Load DE with an offset into the 5th map table.
C $A145,1 Point HL at the byte in the 5th table.
C $A146,1 Load A with the byte.
C $A147,2 Reset the byte at that location.
C $A149,3 If the byte in A is not zero then jump to $A14E.
C $A14C,2 Otherwise set A to 1 to indicate ...?
C $A14E,4 Store the non-zero byte from A in the current entry in the 5th map.
C $A152,3 Call $99F1 to display 7 frames of an explosion animation.
C $A155,3 Call $C0D8 to set current map byte to 1, amongst other things.
C $A158,1 Restore loop counter.
C $A159,7 Increment cursor position.
C $A160,2 Loop back to $A128.
C $A162,6 Set cursor position to the centre of the playing area ???
C $A168,3 Save cursor position in D_ADD $AC14.
C $A16B,3 Call $C703 to convert an address into coordinates.
C $A16E,3 Store cursor position.
C $A171,1 Return.
b $A172 Data block at A172
B $A172,1,1
c $A173 Load address of 4th map table which contains owner numbers + other stuff
D $A173 Used by the routines at #R$8741 and #R$9C0F.
C $A176,2 Set loop counter to cover all bytes in the table.
C $A178,2 Reset bit 7 for the current byte in the table.
C $A17A,1 Point at the next byte.
C $A17B,2 Loop back.
C $A17D,1 Return.
N $A17E This entry point is used by the routines at #R$853B, #R$8639, #R$9A95, #R$9B85, #R$9C0F, #R$D7A6 and #R$D887.
C $A187,1 }
b $A188 Data block at A188
B $A188,2,2
c $A18A Look up the value that represents double the current spell's maximum casting distance.
D $A18A Displays a twirling animation at the target when the spell is cast.
C $A18D,3 If it is 0 then jump ahead to routine20_0.
C $A190,9 Otherwise, play sound effect 4.
C $A199,5 Set unknown48 to 3 because  C $A199 Set unknown48 to 3 because routine28 expects the caller to set this...
C $A19E,3 Call routine to display "lightning bolt" animation from the wizard to the target.
C $A1A1,3 Call routine to update map table information and draw the border.
C $A1A4,1 Wait for an interrupt.
C $A1A5,1 Disable interrupts.
C $A1A6,5 Set ATTR T to bright cyan on black.
C $A1AB,9 Play sound effect 1.
C $A1B4,6 The table at $A1E8 is a set of 18 pointers to the ten possible frames of animation. Here, we set the twirl_sprite_pointer variable so that it points to the first of these pointers.
C $A1BA,6 Copy cursor position to unknown66.
C $A1C0,6 Call routine to convert the cursor coordinates in unknown66 into game board object into coordinates in HL as (L, H)  and DE will contain the address of map_area_object_table for later use at A1D3.
C $A1C6,2 Set loop counter to 18 for the 18 pointers to frames of animation in the twirl sprites table at $A1E8.
C $A1C8,1 Preserve loop counter.
C $A1C9,3 Set HL so it contains the address of the next pointer to the frame of animation, e.g. on the first pass HL will contain A1E8 which is the pointer to twirlsprite0.;
C $A1CC,3 Load the two bytes of the address of the next frame of animation into DE, e.g. after the first pass DE will hold the address A20C.
C $A1CF,1 DE is pointing at the frame we want to display and HL is pointing at the pointer to a frame so we want to save that. Save for today and tomorrow will look after itself.
C $A1D0,3 Store the address of the pointer to the next animation frame in the twirl_sprite_pointer variable.
C $A1D3,1 After exchanging registers DE has the pointer to the next frame and HL contains the address of the current frame to display.
C $A1D4,3 Store the current frame to display in C_DATA.
C $A1D7,3 Display the current frame.
C $A1DA,3 Play the current sound effect.
C $A1DD,3 Restore the loop counter and loop back.
C $A1E0,3 Call routine to update map table information and draw the border.
C $A1E3,2 Enable interrupts and wait for one.
C $A1E5,1 Return.
b $A1E6 Data block at A1E6
B $A1E6,1400,8
c $A75E Routine at A75E
b $A772 Data block at A772
B $A772,891,8*111,3
c $AAED Routine at AAED
b $AB0B Data block at AB0B
B $AB0B,260,8*32,4
b $AC0F This variable store the number of players in the current game.
B $AC0F,1,1
b $AC10 Bit 3 is used to indicate whether the current object is ASLEEP. Bits 0-2 for the owner/wizard.
B $AC10,6,6
b $AC16 Each byte in this table represents the modifiers for each wizard. Bits 0,1=Magic Bow; Bit 1=Magic Knife; Bit 2=Magic Sword; Bit 3=Shadow Form; Bit 5=Magic Wings; Bit 6=Magic Shield; Bits 6,7=Magic Armour.
B $AC16,32,8
c $AC36 routine21: Displays the name of the current wizard and highlights their creations.
D $AC36 Used by the routine at #R$8741.
N $ACB9 This entry point is used by the routine at #R$C710.
c $ACC6 routine22: Displays cursor and processes key presses [S to select, 0 to exit map]
D $ACC6 Used by the routine at #R$AC36.
c $ACED Set up temporary variables.
D $ACED 25th July 2020 Object movement; uses GETCHR, BIT, ...
D $ACED [IN PROGRESS] Selects the object under the cursor.
C $ACF0,19 Set a bunch of unknowns to 0.
C $AD03,3 Load unknown25 into A - the object at the cursor.
C $AD06,3 We want characteristic 17 (Movement Allowance).
C $AD09,3 Load characteristic 17 (Movement Allowance) for the object into A.
C $AD0C,5 Double it and store in unknown17.
C $AD11,11 If the current object cannot fly then jump to #R$AD23.
C $AD1C,7 We now know we are looking at a FLYING OBJECT so unknown18=unknown17 + 1 "???"
C $AD23,3 Load A with the current object number.
C $AD26,2 Subtract 41 to see if it is not a wizard.
C $AD28,3 If the object is not a wizard then jump to #R$AD4A.
C $AD2B,7 The current object is a wizard so point HL at #R$AC16 - the table of wizard modifiers.
C $AD32,1 Load the current wizard modifier into A.
C $AD33,2 See if "Magic Wings" is activated.
C $AD35,2 If so then jump to #R$AD3E.
C $AD37,7 ...
C $AD3E,4 If "Shadow Form" then jump to #R$AD4A.
C $AD42,8 ...
C $AD4A,6 ...
C $AD50,5 If the object code is 0 "Nothing" then return.
C $AD55,5 If the object is not a wizard then jump to #R$AD68.
C $AD5A,3 We have a wizard, so load HL with the player number.
C $AD5D,2 Return if this player number is not the same as the current object.
C $AD5F,6 Copy the current object number from #R$AC0C into #R$AC0D.
C $AD65,3 Jump to #R$ADD2.
C $AD68,3 Load A with the byte from table 5.
C $AD6B,2 Subtract 41 to see if the object is before a wizard in the table.
C $AD6D,3 If it is not a wizard then jump to #R$ADB3.
C $AD70,3 We are looking at a wizard so load HL with the number of the current player.
C $AD73,1 See if the byte from table 5 is the current player.
C $AD74,1 Return if they are not the same.
C $AD75,6 We are looking at the same wizard so copy the byte from table 5 to #R$AC0D.
C $AD7B,8 If the current object is a "Magic Wood" or higher then jump to #R$ADD2.
C $AD83,5 Set ATTR T to bright yellow on black.
C $AD88,6 If the current player is computer-controlled then jump to #R$ADA1.
C $AD8E,2 Load A message #R$CFFA - "DISMOUNT WIZARD? (Y OR N) "
C $AD90,6 Set print coords to (0,22) and print message.
C $AD96,3 Call KEYBOARD in ROM.
C $AD99,4 If they pressed 'Y' then jump to #R$ADA7.
C $AD9D,4 If they did not press 'N' either, then jump back to #R$AD96 to get another key.
C $ADA1,6 They pressed 'N' so set unknown26 to 0 "???" and jump to #R$ADB3.
C $ADA7,4 They want to dismount to set unknown18 to 0. "???"
C $ADAB,5 Set unknown17 to 1.
C $ADB0,3 Jump to #R$ADD2.
C $ADB3,7 If the object code is 37 "Shadow Wood" then jump to #R$ADBD.
C $ADBA,3 If it is 34 "Gooey Blob" or a higher object code then return.
C $ADBD,10 ...
C $ADC7,3 Load HL with the cursor position.
C $ADCA,3 Set up an offset into table 3 for animations.
C $ADCD,1 Point HL at the animation byte for the current object.
C $ADCE,4 If the current object is dead then return.
C $ADD2,3 ...
C $ADD5,6 ...
C $ADDB,6 If the byte from table 5 is not 0 then jump to #R$ADF4. "???"
C $ADE1,3 Load A with object code from #R$AC0C.
C $ADE4,1 Call #R$BE0A to get characteristic 18 (Manoeuvre Rating).
C $ADE5,6 Copy it into E.
C $ADEB,3 Call #R$BE94 to load A with a random number.
C $ADEE,2 Add 2 to it.
C $ADF0,1 Compare the Manoeuvre Rating in A with it.
C $ADF1,3 If the random number is greater than or equal to the Manoeuvre Rating then we are ENGAGED TO THE ENEMY so call #R$BEB2.
C $ADF4,13 ...
C $AE01,3 Clear the bottom line of the screen.
C $AE04,5 Set ATTR T to bright green on black.
C $AE09,8 Display message #R$D09E:  "MOVEMENT RANGE="
C $AE11,5 Set ATTR T to bright yellow on black.
C $AE16,6 ...
C $AE1C,3 Load the object number from #R$AC0C into A.
C $AE1F,1 We need to display how far the current object can move so load object code into D.
C $AE20,2 We want characteristic 17 (Movement Allowance).
C $AE22,3 Load characteristic 17 (Movement Allowance) for the object into A.
C $AE25,1 Copy it into E.
C $AE26,9 ...
C $AE2F,1 Load A with the movement points available for the current object from E.
C $AE30,2 Add $30 to get a character code thaT can be displayed.
C $AE32,3 Appened the movement points to the "MOVEMENT RANGE=" string from #R$AE09.
C $AE35,6 Play #R$C2CF.
C $AE3B,1 Enable interrupts.
C $AE3C,6 If the current player is human then jump to #R$AE50.
C $AE42,6 ...
C $AE48,3 ...
C $AE4B,5 Jump to #R$AE50.
N $AE50 This entry point is used by the routine at #R$B168.
C $AE50,4 Load the current cursor coordinates into BC.
C $AE54,7 ...
C $AE5B,6 If the current player is human then jump to #R$AE77
C $AE61,22 ....
C $AE77,3 Call #R$BBE7 to deal with cursor movement.
N $AE7A This entry point is used by the routine at #R$AF03.
C $AE7A,4 Save map coordinates in #R$AC0A.
C $AE7E,3 Convert them into cursor coordinates.
C $AE81,3 Save them in #R$AC12.
C $AE84,6 Set up temporary variables.
C $AE8A,2 ...
C $AE8C,7 Call #R$C3B3 to display information about object at the cursor.
C $AE93,6 Play #R$C2B1.
C $AE99,1 Enable interrupts.
C $AE9A,3 Jump to #R$B06F.
C $AE9D,12 If the cursor has not moved yet then jump back to #R$AE50.
C $AEA9,7 If the object at the cursor position is empty then jump to #R$AF50.
C $AEB0,3 Load HL with the cursor position.
C $AEB3,4 Point HL into table with the animation values.
C $AEB7,1 Load A with the current animation information.
C $AEB8,5 If the current object is dead then jump to #R$AECC.
C $AEBD,3 Load A with current object.
C $AEC0,7 If it is not object 36 "Magic Wood" then jump to #R$AECC.
c $AF03 Routine at AF03
N $AF0D This entry point is used by the routine at #R$ACED.
N $AF50 This entry point is used by the routine at #R$B168.
N $B06F This entry point is used by the routine at #R$B168.
C $B0A5,3 }
N $B0A8 This entry point is used by the routine at #R$ACED.
C $B0A8,3 Load A with ... "???"
C $B0AB,1 Preserve map coordinates.
C $B0AC,3 ...
C $B0AF,5 Set ATTR T to bright cyan on black.
C $B0B4,8 Display #R$D05A "(FLYING)" at (11,16)
C $B0BC,3 Wait for no key to be pressed.
C $B0BF,3 Wait for a key to be pressed.
C $B0C2,6 If the current player is human then jump to #R$B0CB.
C $B0C8,3 Otherwise call #R$C955.
C $B0CB,3 Clear the bottom row of the screen.
C $B0CE,1 Restore map coordinates.
C $B0CF,4 Save map coordinates in #R$AC04.
C $B0D3,11 Dunno ... "???"
C $B0DE,6 If the current player is human then jump to #R$B0E9.
C $B0E4,5 Otherwise call #R$C9DC to ... "???" and jump to #R$B0F8.
C $B0E9,6 Set UDG system variable to #R$C35D for winged sprite.
C $B0EF,3 Call #R$BC96 to handles keyboard and display information about objects on screen.
C $B0F2,3 Call KEYBOARD in ROM.
C $B0F5,3 Store the key in #R$AC32.
C $B0F8,3 Load the pressed key code into A.
C $B0FB,5 If they pressed 'I' for information then call #R$C3B3.
C $B100,4 If they did NOT press 'K' to cancel then jump to #R$B114.
C $B104,6 Otherwise play #R$C2B1.
C $B10A,1 Enable interrupts.
C $B10B,38 ...
C $B131,5 Set ATTR T to bright yellow on black.
C $B136,8 Print #R$D03A "OUT OF RANGE STRING" at (0,22).
C $B13E,2 Set busy wait loop counter.
C $B140,1 Wait for an interrupt.
C $B141,2 Loop back to #R$B140.
C $B143,3 Wait for a key to be pressed.
C $B146,2 Jump to #R$B0DE.
C $B148,6 Play #R$C2BB.
C $B14E,1 Enable interrupts.
C $B14F,15 ...
C $B15E,3 Jump to #R$AE7A.
b $B161 Data block at B161
B $B161,7,7
c $B168 routine25:
D $B168 Used by the routines at #R$ACED and #R$B8DD.
b $B374 Data block at B374
B $B374,1,1
c $B375 routine26: [looks like an attack routine]
D $B375 Used by the routine at #R$B168.
b $B3C3 Data block at B3C3
B $B3C3,6,6
c $B3C9 Disable interrupts.
D $B3C9 28th July 2020 WIZKIL
D $B3C9 Display the coloured "starburst" when a wizard dies.
C $B3CA,4 Increment the number of dead wizards.
C $B3CE,6 Play #R$C2A7.
C $B3D4,3 Load HL with map address of dead wizard.
C $B3D7,1 Load C with the wizard code for the newly deceased wielder of nature's forces.
C $B3D8,5 We want to get the "dead sprite" so first calculate an offset for the #R$E3E0.
C $B3DD,3 Load HL with the address for the blank sprite at #R$E440.
C $B3E0,1 Add the offset so that HL contains the correct dead wizard pointer, #R$E430 to #R$E43E.
C $B3E1,3 Load DE with the address of our splattered wizard in the wizard data table.
C $B3E4,4 Now load HL with the address of that wizard's sprite.
C $B3E8,3 Load DE with the address of the sprite data for the current (& sadly no longer with us) wizard.
C $B3EB,1 Exchange so that HL is the address of the sprite data for the wizard (e.g. FD34) and DE has the address of the data block for the current wizard (e.g. #R$EA39)
C $B3EC,3 Copy the address of the wizard's sprite data into #R$DF4A.
C $B3EF,2 Set loop counter for display colour.
C $B3F1,1 Preserve loop counter.
C $B3F2,3 Load HL with map address of the dead wizard.
C $B3F5,3 Copy the address of the dead wizard to #R$E005 and convert into screen coordinates in HL as (L, H).
C $B3F8,6 Store the coordinates in #R$B3C7.
C $B3FE,7 Copy the row coordinate into #R$B3C3 and #R$B3C4.
C $B405,7 Copy the column coordinate into #R$B3C3 and #R$B3C4.
C $B40C,1 Decrement the colour [so that the first colour used is white=7].
C $B40D,6 Set up the colour attribute value in ATTR-T [bright colour on a black background]
C $B413,2 Set B with the number of columns in the map "???"
C $B415,1 Preserve counter.
C $B416,3 Load A with the row coordinate of the dead wizard.
C $B419,1 Decrement the row coordinate.
C $B41A,2 If we are at the top of the map then jump to #R$B42A.
C $B41C,3 Otherwise copy the decremented row coord into #R$B3C3 so that we can print a sprite "north" of the corpse.
C $B41F,5 Set HL up with the old column and new row.
C $B424,6 Store the updated coordinates in #R$DF4C and print the dead wizard's sprite there.
C $B42A,3 Load A with the old row coordinate.
C $B42D,1 Increment it.
C $B42E,4 If we are at the bottom of the map then jump to #R$B440.
C $B432,3 Otherwise store the new row coordinate in #R$B3C4.
C $B435,5 Set HL up with the new row and old column.
C $B43A,6 Store the updated coordinates in #R$DF4C and print the dead wizard's sprite "south" of the corpse.
C $B440,3 Load A with the old column coordinate.
C $B443,1 Decrement it.
C $B444,2 If we are at the left of the screen then jump to #R$B454.
C $B446,3 Otherwise store the new column number in #R$B3C5.
C $B449,5 Set HL up with the old row and new column.
C $B44E,6 Store the updated coordinates in #R$DF4C and print the dead wizard's sprite "west" of the body.
C $B454,3 Load A with the old column coordinate.
C $B457,1 Increment it.
C $B458,4 If we are at the right of the screen then jump to #R$B46A.
C $B45C,3 Otherwise store the new column number in #R$B3C6.
C $B45F,5 Set HL up with the old row and new column.
C $B464,6 Store the updated coordinates in #R$DF4C and print the dead wizard's sprite "east" of the swelling flesh.
C $B46A,3 Load A with the old row coordinate.
C $B46D,12 If we are at the top or left of the map then jump to #R$B480.
C $B479,7 Otherwise print a sprite "north-west" of the dead wizard and the gathering flies.
C $B480,15 If we are at the top or right of the map then jump to #R$B496.
C $B48F,7 Otherwise print a sprite "north-east" of the dead wizard and his noxious fumes.
C $B496,15 If we are at the bottom or left of the map then jump to #R$B4AC.
C $B4A5,7 Otherwise print a sprite "south-west" of the dead wizard.
C $B4AC,15 If we are at the bottom or right of the map then jump to #R$B4C2.
C $B4BB,7 Otherwise print a sprite "south-east" of the dead wizard and his leaking fluids.
C $B4C2,3 Play sound effect.
C $B4C5,2 Restore colour counter and decrement.
C $B4C7,8 If we haven't displayed in blue yet then jump to #R$B3C9.
C $B4CF,3 IN PROGRESS 28th July 2020 WIZKIL. Point HL at cursor position of the KILLED WIZARD!!!!
C $B4D2,6 Subtract 41 to get player number associated with the BUTCHERED VICTIM and store in #R$AC00
C $B4D8,2 Set object code to 0 - GANDALF, NOOOOOO!!!!
C $B4DA,7 Load HL with the address of the modifier for this wizard.
C $B4E1,2 Set bit 4 to show this wizard, sadly, is NO MORE....
C $B4E3,7 Point HL into #R$E340.
C $B4EA,5 Copy the byte from the #R$E340 to #R$E01F. BECAUSE THE WIZARD COULD HAVE BEEN TRAPPED AT THE TIME"???"
C $B4EF,3 Update map 1's empty slots, animation frames & draw border.
C $B4F2,1 Wait for an intterupt.
C $B4F3,1 Disable interrupts.
C $B4F4,6 Play #R$C2C5.
N $B4FA This entry point is used by the routine at #R$9C0F.
C $B4FA,2 Set B to 9 for the 9 frames of animation of #R$BF37.
C $B4FC,6 Set sprite pointer to #R$BFB7.
C $B502,5 Set ATTR-T to $46 (bright yellow on black)
N $B507 This entry point is used by the routine at #R$B599.
C $B507,5 Preserve animation frame loop counter and copy to #R$ABFF
C $B50C,2 Set loop counter 2 = map size.
C $B50E,6 Copy the address of the map to #R$ABFD.
N $B514 This entry point is used by the routine at #R$B599.
C $B514,1 Preseve map loop counter.
C $B515,13 If the current map slot is empty or a wizard then jump to #R$B5E8.
C $B522,9 If the current map slot contains a dead creature then jump to #R$B535.
C $B52B,10 If the current map slot contains an "asleep" creature then jump to #R$B5E8. [not sure this is actually in the game]
C $B535,16 If the current creature belongs to the dead wizard then jump to #R$B563.
C $B545,9 If the current creature is not a Gooey Blob then jump to #R$B5E8.
C $B54E,9 If there is no wizard stuck in the blob then jump to #R$B5E8.
C $B557,12 If the dead wizard code is NOT equal to the wizard ID in table 6 "???" then jump to #R$B5E8.
C $B563,12 Convert the current map address into coordinates and store in #R$B56C.
C $B56F,3 Print the "WOOP" sprite at the current position.
C $B572,4 Load 'animation frame loop counter' into A and decrement
C $B576,2 If there are WOOP animation frames remaining "???" then jump to #R$B5E8.
C $B578,8 Load HL with the address of the object's properties.
C $B580,8 If the object belongs to the dead wizard then jump to #R$B599.
C $B588,15 Set the bytes in #R$E2A0 and #R$E340 to 0.
C $B597,2 Jump to #R$B5E8.
c $B599 If the current map object is not a Gooey Blob then jump to #R$B5BE.
D $B599 Used by the routine at #R$B3C9.
C $B5A1,8 If a wizard is not mounted on this creature, or a creature trapped, then jump to #R$B5BE.
C $B5A9,6 Otherwise the creature has gone so set the wizard ID in #R$E2A0 to 0 and copy his wizard ID into #R$E01F. [e.g. an enemy wizard was trapped in a Gooey Blob]
C $B5AF,5 Load the byte from #R$E340 into A. - " *** BY GOLLOP, is this table to store object codes for trapped creatures?!? I can't remember if a gooey blob outlives its wizard - if so, what happens? *** "
C $B5B4,7 Set the byte in #R$E340 to 0.
C $B5BB,1 Copy the byte that was in #R$E340 to #R$E200.
C $B5BC,2 Jump to #R$B5E8.
C $B5BE,13 If there is no wizard ID in #R$E2A0 then nobody was mounted so jump to #R$B5D1.
C $B5CB,6 The wizard is no longer mounted so copy the wizard ID from #R$E2A0 into #R$E01F and jump to #R$B5E8.
C $B5D1,12 Copy the object code from #R$E340 into #R$E01F.
C $B5DD,3 If the map position was empty then jump to #R$B5E8.
C $B5E0,8 Set the animation frame for the current object to 4 (DEAD!)
N $B5E8 This entry point is used by the routine at #R$B3C9.
C $B5E8,1 Restore map loop counter.
C $B5E9,7 Increment the map pointer in #R$ABFD.
C $B5F0,1 Decrement the map loop counter.
C $B5F1,3 Loop back to #R$B514.
C $B5F4,3 Play sound effect.
C $B5F7,1 Restore loop counter for animation frame.
C $B5F8,10 Update #R$DF4A with the address of the next frame of animation.
C $B602,1 Decrement the number of frames left to display.
C $B603,3 Loop back to #R$B507 8 times.
C $B606,3 Update maps and draw the border.
C $B609,1 Wait for an interrupt.
C $B60A,1 Return.
b $B60B Data block at B60B
B $B60B,2,2
c $B60D routine27:
D $B60D Used by the routine at #R$B626.
c $B626 Reset system variables: P FLAG  and  MASK T.
D $B626 This is the routine that draws the "bolt" from the wizard to the target - it might do more. It seems to draw a line from the wizard to the target square. After that, the line is erased, the creature appears. In which case, is the value in unknown48 a colour for the animation?
C $B62D,3 Reset unknown49.
C $B630,3 Load the value of unknown48 that is set by the calling routine / spell.
C $B633,3 If unknown48 == 0 then jump to routine28_5.    ??????
C $B636,4 If unknown48 == 1 then jump to routine28_0.    ??????
C $B63A,3 Copy the value of unknown48 into unknown54.    ??????
C $B63D,5 Set unknown50 to 42 because .... ????????
C $B642,5 Set ATTR T to bright white on black.
C $B647,7 If unknown48 does not contain the value 2 then jump to routine28_1.
C $B64E,3 Otherwise set unknown54 = unknown48 = 2.
C $B651,5 Store the value 15 in unknown50.    ????????
C $B656,5 Set ATTR T to bright yellow on black.
C $B65B,15 ...
C $B66A,5 Set ATTR T to bright cyan on black.
C $B66F,12 ...
C $B67B,5 Set ATTR T to bright yellow on black.
C $B680,14 ...
C $B68E,5 Set ATTR T to bright yellow on black.
C $B693,14 ...
C $B6A1,5 Set ATTR T to bright white on black.
C $B6A6,5 ...
C $B6AB,1 Disable interrupts.
C $B6AC,108 Reset unknown51 to 0.
N $B718 This entry point is used by the routine at #R$B731.
C $B724,1 }
C $B725,1 Enable interrupts.
C $B726,5 Set P FLAG to 3 so that "OVER 1" is activated for printing.
C $B72B,5 Set MASK T to 255 so that all attribute bits are taken from what is already on-screen and not from ATTR P.
C $B730,1 Return.
c $B731 If the zero flag is not set then jump to B718.    ??????
D $B731 Used by the routine at #R$B626.
N $B733 This entry point is used by the routine at #R$B7D3.
C $B733,4 Store the two bytes (C=x then B=y) for the last coordinates plotted in COORDS
C $B737,3 Call PIXEL-ADD in ROM: HL will hold the address of the display file byte and A holds the position of the pixel within the byte.
C $B73A,2 Copy the position of the pixel into B and increment it.
C $B73C,9 Load A with 254 because ..... ??????
C $B745,1 Return.
c $B746 routine29: Used by #R$B626 to ...
D $B746 Used by the routine at #R$B626.
b $B754 Data block at B754
B $B754,1,1
c $B755 Routine at B755
D $B755 Used by the routine at #R$B746.
b $B769 Data block at B769
B $B769,106,8*13,2
c $B7D3 routine30: Used by #R$B746 to ...
D $B7D3 Used by the routine at #R$B746.
b $B844 Data block at B844
B $B844,1,1
c $B845 Routine at B845
D $B845 Used by the routine at #R$B7D3.
N $B84D This entry point is used by the routine at #R$B7D3.
C $B8BD,1 Preserve BC - what is in it???
C $B8BE,7 If unknown54==128 then jump to $B8CA to ...???
C $B8C5,5 Otherwise call routine28_19 to ... then restore BC and return. ???
C $B8CA,7 If unknown48==4 then jump to $B8D8 to call PLOT-SUB in ROM / restore BC / return.  ???
C $B8D1,7 If unknown49 is in the range 1-7 then jump to $B8D8 to restore BC / return.
C $B8D8,3 Call PLOT-SUB in ROM to plot the pixel whose coordinates are on the calculator stack.
C $B8DB,1 Restore BC.
C $B8DC,1 Return.
c $B8DD Set ATTR T to bright magenta on black.
D $B8DD Deals with ranged attacks.
C $B8E2,3 Draw the border in "attack mode" colours.
C $B8E5,5 Set ATTR T to bright green on black.
C $B8EA,3 Set display coordinates to (0,22).
C $B8ED,5 Display #R$CEBF "RANGED COMBAT,RANGE=".
C $B8F2,5 Set ATTR T to bright yellow on black.
C $B8F7,3 Load A with #R$ABFC which is the range of the attack, set by the caller.
C $B8FA,2 Add $30 to get a character code.
C $B8FC,3 Display the ranged attack distance.
C $B8FF,8 Store the cursor coordinates in #R$AC04.
C $B907,6 Play #R$C257.
C $B90D,1 Enable interrupts.
C $B90E,6 If the current player is human then jump to #R$B92E.
C $B914,3 Otherwise call #R$CC56 - "???" is this the AI routine to decide on a target "???"
C $B917,3 Wait for no key.
C $B91A,3 Wait for a key.
C $B91D,6 Set UDG to point to the targettting cursor.
C $B923,6 If the current player is human then jump to #R$B92E.
C $B929,3 Otherwise call #R$CCCB to ...  "???"
C $B92C,2 And then jump to #R$B934.
C $B92E,3 Human player so call #R$BC96 to handle keyboard and displaying information about objects on screen.
C $B931,3 Call KEYBOARD in ROM.
C $B934,9 If they did NOT 'K' to cancel then jump to #R$B94B. Otherwise they want to cancel so set ATTR T to bright blue on black.
C $B93D,3 Call #R$BB57 to draw the border.
C $B940,3 Clear the bottom row of the screen.
C $B943,6 Play #R$C2B1.
C $B949,1 Enable interrupts.
C $B94A,1 Return.
C $B94B,4 If they did NOT press 'S' to select a target then jump back to #R$B923.
C $B94F,39 ...
C $B976,5 Set ATTR T to bright cyan on black.
C $B97B,8 Display #R$D03A at (0,22) -  "OUT OF RANGE "
C $B983,3 Wait for no key.
C $B986,3 Wait for a key.
C $B989,2 Jump to #R$B923.
C $B98B,7 Reset #R$B754 and #R$B60B  - "???" Something to do with the line of fire? "???"
C $B992,16 ...
C $B9A2,5 Set Attr T to bright cyan on black.
C $B9A7,3 Clear the bottom row of the screen.
C $B9AA,8 Display #R$D0C1 at (0,22) - "NO LINE OF SIGHT"
C $B9B2,3 Wait for no key.
C $B9B5,3 Wait for a key.
C $B9B8,3 Jump to #R$B923.
C $B9BB,6 Play #R$C275.
C $B9D1,6 Play sound effect #R$C26B.
C $B9F0,1 Wait for an interrupt.
C $B9F1,1 Disable interrupts.
C $BA04,3 Point HL at the #R$BFB7 animation for when an object is destroyed.
C $BA07,5 Set ATTR T to bright white on black.
C $BA13,6 Play #R$C243.
C $BA19,3 Point HL at #R$C123.
C $BA1C,89 Set ATTR T to bright yellow on black.
b $BA75 Data block at BA75
B $BA75,2,2
c $BA77 Routine at BA77
D $BA77 Used by the routines at #R$98DB, #R$B8DD and #R$D5EC.
C $BABE,24 routine36: Deletes a sprite at the position given by #R$E005.
N $BAD6 This entry point is used by the routines at #R$8741, #R$9168, #R$938B, #R$93FF, #R$94E2, #R$95B8, #R$ACED, #R$BBE7 and #R$C3B3.
N $BAEE This entry point is used by the routine at #R$8741.
N $BAFB This entry point is used by the routines at #R$8741, #R$8F8B, #R$9168, #R$938B, #R$93FF, #R$9424, #R$94E2, #R$95B8, #R$97A3, #R$97BB, #R$9856, #R$9C0F, #R$AC36, #R$ACED, #R$B168, #R$BBE7, #R$BEB2, #R$C3B3, #R$D567 and #R$D588.
C $BB14,1 }
b $BB15 Data block at BB15
B $BB15,66,8*8,2
c $BB57 Routine at BB57
D $BB57 Used by the routines at #R$8741, #R$9168, #R$94E2, #R$B8DD, #R$C0D8 and #R$C3B3.
c $BBB0 Routine at BBB0
D $BBB0 Used by the routines at #R$94E2, #R$95B8, #R$9856, #R$9C0F, #R$AC36, #R$ACED, #R$B168, #R$B8DD, #R$C3B3, #R$D567 and #R$D588.
c $BBCC Routine at BBCC
D $BBCC Used by the routines at #R$9168, #R$9424, #R$94E2, #R$9856, #R$99F1, #R$9C0F, #R$AC36, #R$ACED, #R$B168, #R$B8DD, #R$C3B3, #R$D567, #R$D588 and #R$D702.
c $BBE7 Routine at BBE7
D $BBE7 Used by the routine at #R$ACED.
N $BBF9 This entry point is used by the routine at #R$CDC0.
N $BC8D This entry point is used by the routines at #R$9C0F and #R$BDA5.
b $BC94 Data block at BC94
B $BC94,2,2
c $BC96 Call KEYBOARD in ROM.
D $BC96 Used by the routines at #R$84D3, #R$85F6, #R$9168, #R$983F, #R$99F1, #R$9C0F, #R$ACC6, #R$AF03, #R$B8DD, #R$D52E and #R$D702.
C $BC99,4 If decoded key is not 'I' then jump to #R$BCA3 to see if the player is holding down a wizard number.
C $BC9D,3 Call #R$C3B3 to display the information screen for the object under the cursor.
C $BCA0,3 Wait for an interrupt and then jump to #R$BCE5 to check for cursor being moved.
C $BCA3,3 Call KEYBOARD in ROM to get the current key being pressed.
C $BCA6,10 We only want to deal with keys 1-8 so if decoded key is greater than '8' or less than '1' then jump to #R$BCE5 to deal with cursor being moved instead.
C $BCB0,2 Subtract $31 to convert keycode into player number.
C $BCB2,7 If value is greater than or equal to the number of players in the current game then jump to #R$BCE5 to deal with cursor movement instead.
C $BCB9,3 Store the number being pressed by the user to select a player in #R$D391 (previously 'unknown68').
C $BCBC,3 Call #R$C0D8 to draw the blue border and reset frame animation value for empty cells in map area table 3.
C $BCBF,1 Wait for an interrupt.
C $BCC0,3 Call #R$D392 to make the currently selected wizard and his creations flash.
C $BCC3,5 Set A up to "point" to the currently selected player's name by loading the currently selected player number back into A and add $29 as offset to wizards in game messages table 1.
C $BCC8,8 Set BC to coordinates (0,22) and set ATTR-T to $46 (bright yellow on black).
C $BCD0,3 Print the currently selected wizard's name.
C $BCD3,5 Now append "'s creations" to the wizard's name.
C $BCD8,3 Call KEY_SCAN routine in ROM.
C $BCDB,3 If E is not $FF jump back to routine41_1. This prints messages and flashes the wizard and his creatures again while key is held down.
C $BCDE,3 Clear the bottom row of the display, e.g. delete "GANDALF'S CREATIONS"
C $BCE1,3 Call #R$C0D8 to draw the blue border and reset frame animation value for empty cells in map area table 3.
C $BCE4,11 Wait for next interrupt.
C $BCEF,1 Reset Carry flag and subtract BC from HL - why???
C $BCF0,5 Clear the bottom row of the display if the cursor is not on an object ???
C $BCF5,5 Store cursor coordinates in LBC94.
C $BCFA,3 Call routine42 to display UDG at cursor coordinates.
C $BCFD,13 Look up in map area table 4 the wizard number for the current object and store in unknown27.
C $BD0A,7 Copy entry into unknown27.
C $BD11,5 Set ATTR T to bright cyan on black.
C $BD16,4 Load object ID and jump to routine41_7 if there is no object at the current map coordinates.
C $BD1A,6 Display the current object name at (0,22).
C $BD20,5 Set ATTR T to bright green on black.
C $BD25,7 Test bit 3 of unknown27 to see if is ASLEEP. Jump to #R$BD33 if not ASLEEP.
C $BD2C,5 Print ASLEEP string.
C $BD31,2 ???
C $BD33,7 See if the current animation value in map area table 3 is '4' to represent 'DEAD'.
C $BD3A,9 If object is not dead then jump to routine41_4, otherwise display "DEAD" string.
C $BD43,4 Point into map area table 3 [Ed: he means table 5] which contains the animation value.
C $BD47,5 Set ATTR T to bright white on black (usually for NEUTRAL).
C $BD4C,4 If the current object's animation frame is not zero then jump to routine41_5.
C $BD50,13 Otherwise look up the owner wizard number and if it is not 0 then set ATTR T to bright cyan on black (usually for CHAOS).
C $BD5D,5 Display '#' character.
C $BD62,9 If the object under the cursor is one of the other wizards then jump to #R$BD88.
C $BD6B,4 Otherwise point HL into corresponding slot in map area table 4 which contains owner numbers.
C $BD6F,5 We want to display the wizard's name in brackets after the creature name so set ATTR T to bright yellow on black.
C $BD74,7 Preserve HL, and print '(', and restore HL.
C $BD7B,13 Display wizard name and print ')'.
C $BD88,10 Delay loop.
C $BD92,6 Call routine42 to display current UDG at the cursor.
C $BD98,3 Return if there is no object at the cursor.
C $BD9B,9 Otherwise halt for a bit and set the corresponding entry in second map table to '1' to indicate ...?
C $BDA4,1 Return.
c $BDA5 routine42: Displays a 2x2 sprite [used by #R$BC96].
D $BDA5 Used by the routine at #R$BBE7.
N $BDD1 This entry point is used by the routines at #R$ACED, #R$BBE7 and #R$BE52.
C $BDD1,1 Preserve coordinates of 'S' cursor on game board
C $BDD2,2 Decrement each coordinate since we will be calculating an offset into #R$E01F
C $BDD4,8 LET C += 16*B then LET B=0 in order to calculate the offset. NB: even though the playing area is 15 columns by 10 rows, it seems to me that Gollop has used 1 16x10 map area, perhaps to simplify the maths a little?
C $BDDC,5 Store the offset in BC
C $BDE1,4 Point HL at #R$E01F and add the offset from BC
C $BDE5,1 Restore the cursor's coordinates into BC
C $BDE6,1 Return with HL pointing at the selected entry in #R$E01F
c $BDE7 Load HL with the current cursor position.
D $BDE7 routine44: Sets up temporary variables with values for tables 4,5,6.
C $BDEA,3 Copy to #R$AC14.
N $BDED This entry point is used by the routine at #R$ACED.
C $BDED,4 Load A with the object at the cursor.
C $BDF1,3 Save to #R$AC0C.
C $BDF4,5 Load A with the object properties from table 4.
C $BDF9,3 Save in #R$AC10.
C $BDFC,5 Load A with the mounted wizard/trapped creature from table 5.
C $BE01,3 Save in #R$AC09.
C $BE04,2 Load A with the corresponding byte from table 6. [owner ID of creature in Table 5 "???"]
C $BE06,3 Save in #R$AC08.
C $BE09,1 Return.
c $BE0A I think this label means GET CHARACTERISTIC - i.e. return the value of a particular object attribute.
D $BE0A Used by the routines at #R$859C, #R$9168, #R$9C0F, #R$ACED, #R$B168, #R$C3B3 and #R$CBB9.
c $BE21 routine45:
D $BE21 Used by the routine at #R$ACED.
c $BE52 routine46:
D $BE52 Used by the routine at #R$BE21.
N $BE94 This entry point is used by the routines at #R$95B8, #R$9760, #R$99A9, #R$9C0F, #R$ACED, #R$B168 and #R$D686.
c $BEB2 routine47: Displays the "ENGAGED TO ENEMY" message.
D $BEB2 Used by the routine at #R$ACED.
N $BED7 This entry point is used by the routines at #R$84D3, #R$85F6, #R$8F8B, #R$9424, #R$95B8, #R$96F3, #R$97A3, #R$981A, #R$9856, #R$9C0F, #R$AC36, #R$ACC6, #R$ACED, #R$B168, #R$B8DD, #R$BBE7, #R$D52E, #R$D567 and #R$D588.
b $BEE8 Data block at BEE8
B $BEE8,7,7
c $BEEF Preserve registers.
D $BEEF Calculates the distance between two map positions - NB if a spell has a maximum casting distance of 1, then the spell actually stores 3. Hence the "double and add 1" algorithm below.
D $BEEF unknown74=return value: the distance between the two positions.
D $BEEF unknown75=wizard coord's
D $BEEF unknown76=cursor coord's
D $BEEF unknown77= difference between x-coord's
D $BEEF unknown78=difference between y-coord's
C $BEF3,1 Load A with 0 - pointless?
C $BEF4,3 Load HL with the map coordinates of the wizard.
C $BEF7,4 Load DE with the map coordinates of the cursor.
C $BEFB,1 Load A with the y-coord of the cursor.
C $BEFC,1 Compare it with the wizard's y-coord.
C $BEFD,3 If the cursor's y-coord is smaller than the wizard's then jump to #R$BF06.
C $BF00,6 Otherwise store the difference between the y-coord's in #R$BEEE and jump to #R$BF0B.
C $BF06,2 We want a positive difference so instead let's load A with y-coord of wizard and subtract y-coord of cursor.
C $BF08,3 Store the difference between y-coord's in #R$BEEE.
C $BF0B,1 Load A with the cursor's x-coord
C $BF0C,1 Compare it with the wizard's x-coord.
C $BF0D,3 If that'd be negative then jump to #R$BF16.
C $BF10,4 Calculate the difference in x-coord's and store in #R$BEED.
C $BF14,2 Jump to #R$BF1B.
C $BF16,5 Subtract the x-coord's the other way round and store in #R$BEED.
C $BF1B,3 Load H with delta y and L with delta x.
C $BF1E,1 Load A with the difference in y-coord's
C $BF1F,4 Jump to #R$BF29 if delta y is smaller than delta x.
C $BF23,3 Double the difference in y-coord's and store in A.
C $BF26,1 Add the difference in x-coord's.
C $BF27,2 Jump to #R$BF2D.
C $BF29,2 Double the delta x value in L and load result into A.
C $BF2B,2 Add delta y.
C $BF2D,1 Load total into E.
C $BF2E,3 Store total in #R$BEE8 - the distance between the pairs of coordinates
C $BF31,1 Restore A which contained ... a maximum distance set by some callers "???"
C $BF32,1 Compare the maximum distance as set by some callers "???" and set P flag for return.
C $BF33,3 Restore registers.
C $BF36,1 Return.
b $BF37 Data block at BF37
B $BF37,384,8
b $C0B7 Data block at C0B7
B $C0B7,33,8*4,1
c $C0D8 Initialise "border drawn" flag to 1.
D $C0D8 routine49: Sets empty slots in #R$E01F to '1', animation frames to 0 in map3 and draws the border.
N $C0DD This entry point is used by the routines at #R$8360, #R$86C3, #R$8741, #R$8F8B, #R$9168, #R$95B8, #R$981A, #R$98DB, #R$9A21, #R$9B1C, #R$9C0F, #R$A18A, #R$AC36, #R$ACC6, #R$B3C9, #R$B599, #R$B8DD, #R$BBE7, #R$C3B3, #R$C710, #R$D52E, #R$D5EC, #R$D763 and #R$D82D.
C $C0DD,1 Disable interrupts.
C $C0DE,2 Set loop counter to map size.
C $C0E0,3 Point HL at #R$E01F.
C $C0E3,4 Load the object code at the current map position and if there is an object then jump to #R$C0FF to start next loop iteration.
C $C0E7,1 Preserve map pointer.
C $C0E8,6 Calculate offset into map table and store in A.
C $C0EE,1 Increment A for the next position in the row.
C $C0EF,2 Compare A with 15 to skip past the unused byte in the table.
C $C0F1,3 Restore map pointer and jump to #R$C0FF if we are in the rightmost column of a row.
C $C0F4,3 Set current map position to '1' - NB Looks like he uses both 0 and 1 as codes to indicate no object at the current position.
C $C0F7,6 We have no object so set animation frame for current object to 0 in #R$E160.
C $C0FD,2 Set map pointer back to current object in #R$E01F.
C $C0FF,1 Increment map pointer.
C $C100,2 Loop back to #R$C0E3.
C $C102,13 Set every value in second map table to '1' to indicate slot processed, no object.
C $C10F,6 Jump to #R$C11D if #R$C0D7 is set as a flag to indicate border drawn.
C $C115,8 Otherwise set ATTR T to bright blue on black and draw border.
C $C11D,4 Reset #R$C0D7 - used as a flag to indicate border drawn.
C $C121,2 Enable interrupts and return.
b $C123 Data block at C123
B $C123,467,8*58,3
c $C2F6 This sound is played when the user cancels a spell (and perhaps at other times too).
D $C2F6 Used by the routines at #R$9A21, #R$9C0F, #R$A18A, #R$B8DD and #R$D763.
N $C2F9 This entry point is used by the routines at #R$84D3, #R$85F6, #R$8741, #R$8F8B, #R$9168, #R$9385, #R$94E2, #R$96D1, #R$983F, #R$99F1, #R$9C0F, #R$ACC6, #R$ACED, #R$B168, #R$B375, #R$B3C9, #R$B8DD, #R$BEB2, #R$C3B3, #R$D52E and #R$D702.
N $C301 This entry point is used by the routines at #R$9A21, #R$9C0F, #R$A18A, #R$B375, #R$B3C9, #R$B599, #R$B7D3, #R$B8DD and #R$D763.
b $C33D Data block at C33D
B $C33D,118,8*14,6
c $C3B3 Disable interrupts and preserve registers.
D $C3B3 Displays information about the current wizard/creature/object.
C $C3B8,8 If the user is inspecting a blank cell then jump to #R$C5E8 to clean up and return.
C $C3C0,3 Store code for current object in #R$C39F.
C $C3C3,12 Bit 1 of unknown71 is set if the current object is a wizard.
C $C3CF,11 Look up corresponding byte in fifth_map_area_table and jump to routine50_1 if it is 0   ???
C $C3DA,8 Otherwise store in unknown70 and set bit 2 of unknown71 Not called for equipped wizard...???
C $C3E2,9 Clear the screen and play sound effect 22.
C $C3EB,8 Set ATTR T to bright green on black and draw the border.
C $C3F3,13 Set ATTR T to black on bright green and display "PRESS ANY KEY" at (0,16).
C $C400,14 Set ATTR T to bright yellow on black and display creature's name at (4,2).
C $C40E,11 Clear 'display comma flag' and if we are looking at a wizard then skip ahead to routine50_7.
C $C419,16 Not a wizard so we need to display properties for creatures and objects.
C $C429,12 Display 'KNIFE' property?
C $C435,12 Display 'SWORD' property?
C $C441,14 Display 'ARMOUR' property?
C $C44F,14 Display 'SHIELD' property?
C $C45D,12 Display 'FLYING' property?
C $C469,13 Display 'SHADOW' property?
C $C476,3 Properties have been displayed for creatures/objects so jump to routine50_14.
C $C479,13 Get LAW/CHAOS attribute of current object. Skip to routine50_9 if it is 0, or routine50_8 if negative for CHAOS.
C $C486,4 Preserve LAW value.
C $C48A,10 Set ATTR T to bright cyan on black and print "(LAW".
C $C494,11 Restore LAW value and display, then close bracket.
C $C49F,2 Jump to routine50_9.
C $C4A1,10 Set ATTR T to bright magenta on black and display "(CHAOS".
C $C4AB,3 Restore LAW/CHAOS value and negate it.
C $C4AE,10 Display CHAOS value and close bracket.
C $C4B8,8 Set ATTR T to bright green on black and display coord's to (4,4).
C $C4C0,13 Don't display spell properties for MOUNTable creatures --> skip to routine50_10.
C $C4CD,5 Print "MOUNT".
C $C4D2,6 Jump to routine50_11 if unknown71 is zero... ARE WE CHECKING IF A DIRTY WIZARD HAS MOUNTED THE HORSE?!
C $C4D8,15 Preserve value of unknown70, print "(", Wizard's name, ")".
C $C4E7,5 Set the comma flag in case there are more properties to display.
C $C4EC,18 Only display "FLYING" for valid creatures.
C $C4FE,29 Only display "UNDEAD" for valid creatures and as long as bit 6 in map area 4 is set.
C $C51B,5 Set ATTR T to bright cyan on black.
C $C520,10 Store message number and offset into object data.
C $C52A,3 Point HL at the data block containing display coord's for attributes.
C $C52D,2 Set loop counter to 7 for the 7 attributes.
C $C52F,5 Preserve loop counter and load coord's for next attribute into (B, C), incrementing HL after each.
C $C534,1 Preserve pointer to coord's.
C $C535,3 Display the current attribute name and numerical value.
C $C538,1 Restore pointer to display coord's.
C $C539,3 Restore loop counter and loop.
C $C53C,7 If bit 0 of unknown71 is set then we have a wizard and need to jump to routine50_18 to display his spells.
C $C543,5 Set ATTR T to bright cyan on black.
C $C548,8 Display "CASTING CHANCE=" at (4,18)
C $C550,4 Load A with the value of unknown67 (which is initialised to 2) and increment A.
C $C554,4 If A=10 then jump to routine50_16
C $C558,2 Spell is guaranteed to succeed so display "10" and jump to routine50_17 to add the "0%".
C $C55A,3 Print the message "10".
C $C55D,2 Jump to routine50_17 to append "0%".
C $C55F,5 Print "0"
C $C564,10 Print "0%" as two separate characters.
C $C56E,7 Only display spells and abilities for wizards. Jump to routine50_21 otherwise.
C $C575,2 Set ATTR T to bright yellow on black, ready to print SPELLS=... and ABILITY=...
C $C577,11 Display "SPELLS="
C $C582,9 Get the value for the current object, i.e. number of spells.
C $C58B,5 If it is less than 10 then jump to routine50_20.
C $C590,4 If it is not 20 then jump to routine50_19.
C $C594,5 The number of spells is in the range 10-19 so print a leading '1' digit.
C $C599,4 Load A with 0 and jump to routine50_20.
C $C59D,9 Print the second digit of the number of spells.
C $C5A6,5 Print the single digit for the number of spells.
C $C5AB,8 Print "ABILITY=" at (14,12).
C $C5B3,14 Display the current creature's ABILITY as a digit.
C $C5C1,6 Jump to routine50_22 if a wizard is not selected.
C $C5C7,12 Reset flag (?) in unknown71 and reset unknown70.
C $C5D3,6 Call routines to randomise the seed.
C $C5D9,3 Jump back to routine50_1 because if the wizard had MOUNTED a creature then we now need to display ITS properties.
C $C5DC,9 Randomise seed and clear screen.
C $C5E5,3 Call routine49_0 to ... (we don't know yet).
C $C5E8,6 Restore registers, enable interrupts and return.
N $C5EE This entry point is used by the routines at #R$8741, #R$9168, #R$938B, #R$94E2 and #R$95B8.
C $C63C,1 }
c $C63D routine51:
D $C63D Used by the routine at #R$C9D4.
b $C649 Data block at C649
B $C649,3,3
c $C64C Routine at C64C
D $C64C Used by the routines at #R$853B, #R$8639, #R$86C3, #R$96F3, #R$9A95, #R$9B85, #R$C78D, #R$C8C7, #R$C955, #R$CA19, #R$CA92, #R$CBCC, #R$CC56, #R$D7A6 and #R$D887.
b $C679 Data block at C679
B $C679,1,1
c $C67A Load HL with the address of a position in #R$E01F.
D $C67A This routine ignores objects that belong to the current wizard, the current wizard, empty slots, dead creatures, ...
D $C67A My current best guess is that this is returning some sort of threat level based on distance from the current wizard.
C $C67D,4 If the map position is empty then jump to #R$CD62 to return with A holding 0.
C $C681,4 Point HL at the corresponding byte in #R$E160 [animation frame]
C $C685,1 Load the animation byte.
C $C686,4 If the object is "dead" then jump to #R$C6D2 and return with A holding 0.
C $C68A,3 Point HL into #R$E200.
C $C68D,4 Add offset into #R$E200 [object properties]
C $C691,3 Load the byte from #R$E200 and mask off the owner bits.
C $C694,6 If the object belongs to the current wizard then jump to #R$C6D2 to return with A holding 0..
C $C69A,3 We *finally* have a potential target/enemy so load HL again with the address of a position in #R$E01F.
C $C69D,2 Load the object's code from the map and copy into E.
C $C69F,4 Subtract 2 from E because object IDs start at 2 so that we get an offset into #R$C6D4.
C $C6A3,3 Load HL with the address of #R$C6D4.
C $C6A6,1 Add offset to HL based on object ID.
C $C6A7,4 Copy entry from #R$C6D4 to #R$C679 - the "THREAT" from the current object "???"
C $C6AB,3 Load HL again with the address of a position in #R$E01F - i.e. an enemy or his creature.
C $C6AE,3 Convert display coordinates of the enemy or his creature into map position coordinates.
C $C6B1,3 Store their coordinates in #R$BEE9.
C $C6B4,3 Load memory address of current wizard into HL.
C $C6B7,6 Convert display coordinates of current wizard into map position coordinates and store in #R$BEEB.
C $C6BD,3 Calculate the distance between the current wizard and the enemy target.
C $C6C0,3 Load A with the distance between points.
C $C6C3,1 Also load it into E.
C $C6C4,5 Add 4 to the value loaded earlier from #R$C6D4 "???"
C $C6C9,4 And add "???" to it.
C $C6CD,1 Subtract the distance to the target.
C $C6CE,3 If the distance is greater than the threat "???" then jump to #R$C6D2 to return 0.
C $C6D1,1 Return.
c $C6D2 Reset A.
D $C6D2 Used by the routine at #R$C67A.
C $C6D3,1 Return.
b $C6D4 Data block at C6D4
B $C6D4,47,8*5,7
c $C703 Store current wizard position in #R$E005.
D $C703 Converts display coordinates into map position coordinates.
C $C706,9 Call #R$E007 to convert cursor position into coordinates (L, H).
C $C70F,1 Return.
c $C710 routine54:
D $C710 Used by the routine at #R$AC36.
b $C78B Data block at C78B
B $C78B,2,2
c $C78D routine55:
D $C78D Used by the routines at #R$9975, #R$ACED and #R$D686.
N $C7A3 This entry point is used by the routine at #R$CA19.
N $C7B1 This entry point is used by the routine at #R$CA19.
b $C7BB Data block at C7BB
B $C7BB,1,1
c $C7BC Routine at C7BC
D $C7BC Used by the routines at #R$853B, #R$86C3, #R$9A95, #R$9B85, #R$CA19, #R$D7A6 and #R$D887.
c $C825 Initialise the contents of #R$D3F2 to $FF00 etc.
D $C825 Used by the routines at #R$C78D and #R$CBC7.
C $C82E,6 Point #R$AC12 at #R$E01F.
C $C834,2 Set loop counter to map size.
C $C836,1 Preserve loop counter.
C $C837,4 Load the current object code from the map.
C $C83B,5 If it is a wizard then call #R$C859 to ... "???"
C $C840,3 Load HL with the address of the current position in the map.
C $C843,7 Load A with the corresponding byte from #R$E2A0 [mounted wizards]
C $C84A,3 If the wizard is mounted then call #R$C859 to ... "???"
C $C84D,7 Increment the map pointer.
C $C854,3 Loop back.
C $C857,1 Return.
b $C858 Data block at C858
B $C858,1,1
c $C859 Subtract 41 from the wizard object code in A.
D $C859 Called by routine56 with an object code for a wizard in A.
C $C85B,3 Store the result in unknown60 - i.e. a player number 0 to 7.
C $C85E,3 Point HL at the "current player" variable.
C $C861,1 Compare A with this variable.
C $C862,1 If they are the same value then return.
C $C863,3 Load HL with the address that the cursor relates to.
C $C866,3 Load DE with the address of the map area object table.
C $C869,1 Reset the carry flag.
C $C86A,2 Calculate the offset between the start of the map and the cursor.
C $C86C,1 Load it into A.
C $C86D,4 Increment the value in BUFPNT.
C $C871,1 Store the offset at the location pointed to by BUFPNT - the offset between the target wizard and the current computer-controlled player.
C $C872,3 Point HL at the map area object table.
C $C875,2 Set loop counter for map length.
C $C877,1 Preserve loop counter.
C $C878,1 Preserve map pointer.
C $C879,1 Load the byte from the current map location.
C $C87A,1 Load it into C.
C $C87B,1 See if the map slot is empty.
C $C87C,2 If it is then jump to routine57_1 $C8A1.
C $C87E,2 Compare with the code for a Magic Castle.
C $C880,3 If it is later in the object table (Dark Citadel, Wall, Wizard) then jump to routine57_1 $C8A1.
C $C883,4 Otherwise the object has a code 2-38  so we point HL into table 4.
C $C887,1 Load the owner information into A.
C $C888,2 Mask off the owner number.
C $C88A,1 Store the result in E.
C $C88B,3 Load A with the player number 0-7 that was stored earlier at #R$C85B.
C $C88E,1 Compare the two values.
C $C88F,2 If they are not the same then jump to routine57_1 $C8A1.
C $C891,3 Otherwise point HL at THRTAB.
C $C894,4 Load A with the object code from the current map location -  see #R$C87A.
C $C898,4 Divide it by 4. "???"
C $C89C,5 And add the entry pointed at by BUFPNT "???"
C $C8A1,1 Restore map pointer.
C $C8A2,1 Increment map pointer.
C $C8A3,1 Restore loop counter.
C $C8A4,2 Decrement loop counter and loop back.
C $C8A6,3 Once the loop is finished, load HL with the value of #R$CD86.
C $C8A9,3 Load A with the value of #R$CC55 "???"
C $C8AC,1 Add the value from  #R$CD86. "???"
C $C8AD,1 ...
C $C8AE,8 Advance #R$CD86.
C $C8B6,1 Return.
b $C8B7 Data block at C8B7
B $C8B7,2,2
c $C8B9 Load E with the 2nd byte from #R$D3F2. This value is the code of an enemy wizard in whose direction a spell will be cast.
D $C8B9 Sets the value of #R$C8B7 to be the map address of the target wizard. The spell will later be attempted to be cast in the slot next to the casting wizard which is in the direction of the target wizard.
C $C8BD,3 Point HL at the map.
C $C8C0,3 Add the map offset from E.
C $C8C3,3 Store the map address of the target in #R$C8B7 so that the spell can be cast in an adjacent map slot in the direction of the target wizard.
C $C8C6,1 Return.
c $C8C7 Initialise #R$D3F2 and store address in #R$CD86.
D $C8C7 Used by the routines at #R$ACED and #R$C78D.
C $C8D0,6 Store address of #R$CD2A in #R$CD3A.
C $C8D6,6 Store address of #R$CD88 in #R$CD90.
C $C8DC,6 Copy map address of the moving object into #R$C78B.
C $C8E2,2 Set loop counter to 8.
C $C8E4,1 Preserve loop counter.
C $C8E5,7 Calculate address of a space "???" on the map and store address in #R$AC14.
C $C8EC,2 If a map location could not be found then jump to #R$C913.
C $C8EE,3 Otherwise load HL with the display coord's of the wizard we are aiming at.
C $C8F1,6 Convert display coord's into map coord's and store in #R$BEE9.
C $C8F7,9 Convert the display coord's of the blank space into map coord's and store in #R$BEEB.
C $C900,10 Store the distance between the two places on the board in the next slot in #R$D3F2.
C $C90A,4 Load A with the next byte/character from #R$CD88.
C $C90E,4 Increment the pointer into #R$D3F2.
C $C912,1 Store the byte/character from #R$CD88 in #R$D3F2.
C $C913,7 Increment #R$CD90 's pointer into #R$CD88.
C $C91A,8 Increment twice the pointer into #R$D3F2 and store in #R$CD86. "???"
C $C922,6 Copy the map address of the moving object into #R$AC14.
C $C928,1 Restore loop counter.
C $C929,2 Loop back.
C $C92B,8 Sort the contents of #R$D3F2 into ascending order [I think "???"].
C $C933,5 Set #R$AC30 to 1.
C $C938,9 Copy the map address of the moving object into #R$AC14 and #R$AC12.
C $C941,3 Convert display coord's into map coord's.
C $C944,6 Store the result in #R$BC94 and #R$AC0A.
C $C94A,6 Set #R$CD86 to point at "???" in #R$D3F2.
C $C950,4 Load BC with the map coord's of the moving object.
C $C954,1 Return.
c $C955 routine60:
D $C955 Used by the routines at #R$9999, #R$9B1C, #R$9BB3, #R$ACED, #R$D686 and #R$D82D.
c $C9D4 routine61:
N $C9DC This entry point is used by the routines at #R$999C, #R$9B1C, #R$9BB3, #R$ACED, #R$D686 and #R$D82D.
b $CA16 Data block at CA16
B $CA16,3,3
c $CA19 routine62:
D $CA19 Used by the routine at #R$C78D.
c $CA7C routine63:
D $CA7C Used by the routines at #R$C955 and #R$CA19.
c $CA92 routine64:
D $CA92 Used by the routines at #R$ACED and #R$C710.
b $CBB8 Data block at CBB8
B $CBB8,1,1
c $CBB9 routine65:
D $CBB9 Used by the routine at #R$CA92.
c $CBC7 routine66:
D $CBC7 Used by the routine at #R$CA92.
c $CBCC Routine at CBCC
D $CBCC Used by the routine at #R$CBB9.
b $CC55 Data block at CC55
B $CC55,1,1
c $CC56 Routine at CC56
D $CC56 Used by the routines at #R$9C0F and #R$B8DD.
c $CCC3 routine67:
N $CCCB This entry point is used by the routine at #R$B8DD.
b $CD2A Data block at CD2A
B $CD2A,18,8*2,2
c $CD3C Routine at CD3C
D $CD3C Used by the routines at #R$98F1, #R$9C0F, #R$C8C7, #R$CA92 and #R$D602.
N $CD71 This entry point is used by the routine at #R$CD7E.
c $CD7E Routine at CD7E
D $CD7E Used by the routine at #R$CCC3.
b $CD86 Data block at CD86
B $CD86,12,8,4
c $CD92 Routine at CD92
D $CD92 Used by the routines at #R$CA92 and #R$CBCC.
c $CDAA Routine at CDAA
D $CDAA Used by the routines at #R$C78D, #R$C825, #R$C8C7, #R$C955, #R$CA92 and #R$CBC7.
c $CDB8 routine69:
D $CDB8 Used by the routine at #R$CDC0.
c $CDC0 routine70:
D $CDC0 Used by the routine at #R$BBE7.
b $CDD3 Data block at CDD3
B $CDD3,504,8
t $CFCB Message at CFCB
T $CFCB,966,65*14,56
b $D391 This variable is used in #R$BCA3 to store the number of the currently selected player.
B $D391,1,1
c $D392 Disable interrupts and preserve registers.
D $D392 This routine makes the currently selected wizard and his creations flash. The player number is stored in #R$D391.
C $D397,3 Point HL at #R$E01F.
C $D39A,2 Set loop counter to 159 to cover all 160 bytes in the map.
C $D39C,2 Preserve pointer to current map location and loop counter.
C $D39E,1 Load byte for current map location into A.
C $D39F,3 If it contains 0 then jump to #R$D3BE in order to process the next location in the map.
C $D3A2,5 Load A with the corresponding byte from #R$E160.
C $D3A7,4 See if A holds the value 4 which represents ??? which we ignore and move onto the next location by calling #R$D3BE.
C $D3AB,5 Find the wizard associated with the current object by loading A with the corresponding byte from #R$E200.
C $D3B0,5 Point HL back at the selected object on the game board by selecting the corresponding byte in #R$E01F.
C $D3B5,3 Load E with lowest three bits of A.
C $D3B8,3 Load A with player number from #R$D391.
C $D3BB,3 If the player number matches the value of E from #R$E200 then jump to #R$D3C8 to be a FLASHER!!!
C $D3BE,2 Restore loop counter and pointer to current location in the map.
C $D3C0,1 Increment map location pointer.
C $D3C1,2 Loop back to #R$D39C to process the next map location.
C $D3C3,5 All map locations processed so restore registers and return.
C $D3C8,5 Store HL in #R$E005 - formerly 'unknown66'.
C $D3CD,3 Call the CHAN-OPEN routine in ROM to open upper screen for writing to.
C $D3D0,3 Call #R$E007 to ... convert HL pointer into coordinates for printing???
C $D3D3,10 Print a filled-in square at the coord's in HL, i.e. (L, H) - i.e. top-left of flashing square
C $D3DD,3 Print another filled-in square for the top-right of the flashing square.
C $D3E0,8 Move down a row and print the bottom-left of the flasing square.
C $D3E8,6 Print bottom-right of the flashing square.
C $D3EE,10 Jump to #R$D3BE to restore registers and return.
b $D3F8 Data block at D3F8
B $D3F8,310,8*38,6
c $D52E Call #R$97D1 to find the coordinates of the current player.
D $D52E Selects the target of a spell.
C $D531,3 Set IM2.
C $D534,5 Set ATTR P to black on black.
C $D539,5 Set MASK P to $FF so that all attributes are taken from the screen.
C $D53E,3 Call #R$C0DD to update the maps and draw the border.
C $D541,1 Enable interrupts.
C $D542,1 Wait for an interrupt.
C $D543,5 Set P FLAG to 3 for "OVER 1" printing.
C $D548,3 Clear the bottom row of the screen.
C $D54B,4 Load B with the number of attempts for this spell.
C $D54F,1 Preserve this value.
N $D550 This entry point is used by the routines at #R$D567 and #R$D588.
C $D550,3 Call #R$BC96 to handle keyboard input on the map.
C $D553,3 Call KEYBOARD in ROM.
C $D556,4 If they pressed 'S' to select an object then jump to #R$D567.
C $D55A,4 If they pressed 'K' to cancel then jump to #R$D550 to get another key.
C $D55E,1 Restore the number of attempts for this spell.
C $D55F,6 Play #R$C2B1.
C $D565,1 Enable interrupts.
C $D566,1 Return.
c $D567 Wait for no key to be pressed.
D $D567 Used by the routine at #R$D52E.
C $D56A,3 Call #R$9786 to see if the target is in range.
C $D56D,3 If the object is in range then jump to #R$9877 to process the spell.
C $D570,3 Otherwise clear the bottom row of the screen.
C $D573,3 Set print coordinates to (0,22).
C $D576,5 Set ATTR T to bright cyan on black.
C $D57B,5 Display #R$CEA7 because the target is out of range.
C $D580,3 Wait for no key to be pressed.
C $D583,3 Wait for a key to be pressed.
C $D586,2 Jump back to #R$D550.
c $D588 Load A with an object code from the map.
C $D58C,3 If the map position is empty then jump to #R$D5A3.
C $D58F,8 Otherwise if the current spell is greater than or equal to Magic Wood then jump to #R$D5CB.
C $D597,12 If the current object is not dead then jump to #R$D52E to apply a spell to a target.
C $D5A3,5 Otherwise "???"
C $D5A8,5 #R$9C0F is called for a WALL spell "???"
C $D5AD,5 "???"
C $D5B2,5 We cannot cast the spell so set ATTR-T to $45 (bright cyan on black).
C $D5B7,3 Clear the bottom row of the screen.
C $D5BA,8 Print message #R$CEC3 - "NO LINE OF SIGHT STRING"
C $D5C2,3 Wait for no key.
C $D5C5,3 Wait for a key.
C $D5C8,3 Jump to #R$983F.
c $D5CB Display a twirling animation over the spell's target.
D $D5CB Used by the routine at #R$D588.
C $D5CE,6 If the spell failed then jump to #R$D5E7.
C $D5D4,10 Update map tables.
C $D5DE,8 Display whether the spell succeeded or failed.
C $D5E6,2 Return.
c $D5E8 Display whether the spell succeeded or failed.
C $D5EB,1 Return.
c $D5EC routine74:
c $D602 routine75:
c $D652 Load HL with the address of the cursor.
D $D652 Add Gooey Blob or Magic Fire to the map? DOES THIS ROUTINE EVER GET CALLED "???"
C $D655,11 If the current spell is for Gooey Blob or Magic Fire then jump to #R$D669.
C $D660,6 Otherwise store the object code in #R$E340.
C $D666,3 Load the current spell into A.
C $D669,4 Copy the current spell into the map at the cursor position.
C $D66D,6 Set the animation timeout to 1.
C $D673,4 Set the animation frame to 0.
C $D677,5 Set the owner to the current player.
C $D67C,6 Set Z based on value of #R$9166 "???"
C $D682,2 Set illusion bit "???"
C $D684,1 Wait for an interrupt.
C $D685,1 Return.
c $D686 routine77:
c $D702 Load A with the value of #R$AC2E.
D $D702 routine78: Subroutines of #R$99F1 to select a target for the spell.
C $D705,4 If the player is computer-controlled then jump to #R$9A95.
C $D709,3 Call #R$BC96 to handle the keyboard and enable displaying information about objects on screen.
C $D70C,3 Call KEYBOARD in ROM.
C $D70F,4 If 'S' was pressed to select an object then jump to #R$D71F.
C $D713,4 Otherwise if anything other than 'K' was pressed jump back to #R$D709 to get another key.
C $D717,6 'K' was pressed to cancel the current operation so play #R$C2B1.
C $D71D,1 Enable interrupts.
C $D71E,1 Return.
C $D71F,3 Wait for no key to be pressed.
C $D722,3 Load HL with the cursor position.
C $D725,1 Load A with the current object.
C $D726,3 If there is nothing there then jump to #R$D709 to keep going.
C $D729,5 If the object code is greater than or equal to 34 (Gooey blob onwards) then jump to #R$99F1 as these cannot be disbelieved.
C $D72E,3 Otherwise jump to #R$99F1 to cast the disbelieve spell on the target.
C $D731,1 Return.
c $D732 routine79: Deals with a successful #R$99F1.
c $D763 Play #R$9121.
D $D763 25th July 2020 routine80 - Displays explosion animation and sound effect.
D $D763 Displays explosion animation and sound effect.
C $D76C,5 Set ATTR T to bright yellow on black.
C $D771,6 Set pointer for explosion animation.
C $D777,3 Load HL with cursor coordinates.
C $D77A,3 Store a copy in #R$E005.
C $D77D,3 Call #R$E007 to get game board object into coordinates in HL.
C $D780,3 Store them in #R$DF4C.
C $D783,3 Set loop counter to 7.
C $D786,1 Disable interrupts.
C $D787,3 Load HL with the explosion animation pointer.
C $D78A,3 Copy to #R$DF4A.
C $D78D,3 Print the current explosion animation frame.
C $D790,3 Play sound effect.
C $D793,7 Set HL to point to the next animation frame.
C $D79A,3 Store pointer to next animation frame in #R$A188.
C $D79D,1 Restore loop counter.
C $D79E,2 Decrement and loop.
C $D7A0,3 Call #R$C0D8.
C $D7A3,1 Enable interrupts.
C $D7A4,1 Wait for an interrupt.
C $D7A5,1 Return.
c $D7A6 routine81:
c $D7EE Set the number of attempts for this spell to a max value of 8.
C $D7F3,8 If the current spell is Magic Wood or Shadow Wood then jump to #R$9AEF.
C $D7FB,5 Otherwise set the number of spell attempts to 1 [for a castle or citadel].
C $D800,6 If the current player is computer-controlled then jump to #R$D811.
C $D806,7 If the current spell is for a Magic Wood then jump to #R$D830. [but there is no path to here "???"
C $D80D,3 Interact with the user to place and cast the current spell.
C $D810,1 Return.
C $D811,8 If the current spell is a Magic Castle or earlier then jump to #R$9B1C.
C $D819,14 Otherwise if the object at the cursor is a Wood or a Wall then jump to #R$9B1C.
C $D827,5 Set #R$975F to 0 "???"
C $D82C,1 Return.
c $D82D routine83:
N $D830 This entry point is used by the routine at #R$D7EE.
c $D887 routine84:
b $D8DE Data block at D8DE
B $D8DE,1582,8*197,6
c $DF0C Routine at DF0C
D $DF0C Used by the routine at #R$FE69.
c $DF0F Routine at DF0F
D $DF0F Used by the routines at #R$B8DD, #R$BB57 and #R$DF4E.
b $DF47 Data block at DF47
B $DF47,3,3
b $DF4A Data block at DF4A
B $DF4A,4,4
c $DF4E Routine at DF4E
D $DF4E Used by the routines at #R$8F8B, #R$9A21, #R$9C0F, #R$A18A, #R$B375, #R$B3C9, #R$B8DD, #R$D763 and #R$DF72.
c $DF72 Preserve registers, ATTR T, CHARS, pointer to map_area_object_table.
D $DF72 This is called by the ISR at #R$FE69 in order to animate the sprites.
C $DF82,3 Call KEY-SCAN in ROM.
C $DF85,1 Restore HL to point at map_area_object_table.
C $DF86,5 ??? I need to come back to this bit as it seems to me that he is testing for CAPS SHIFT (see p.5 of the ROM Disassembly book) and jumping to routine87_3 if so.
C $DF8B,5 Load byte from map area and jump to routine87_3 if it is 255 / -1 (????) to clean up and return because...??? I need to check but maybe he puts FF at the very end of the playing area as a signal to stop.
C $DF90,3 If the byte is not zero then jump to routine87_4 to process the current sprite.
C $DF93,3 See if he has used a '1' again to represent no object - in which case we will set it back to 0.
C $DF96,2 If there is something on the map then jump to routine87_2. [this section is a bit of a rat's nest but I think I've convinced myself that either a '0' or a '1' on the map causes a '0' to be stored in the map before moving on]
C $DF98,2 Reset the item on the map (remember: he uses 1 to mean nothing there, not just 0).
C $DF9A,3 Increment map pointer and jump back to routine87_0.
C $DF9D,13 CLEAN UP: Pop HL (map pointer); restore CHARS, ATTR T, registers and return.
C $DFAA,2 CHECK WHETHER TO ANIMATE: Now we get to process a sprite so preserve map pointer and current object. We know there is an object on the game board but it might be dead, or a wall, so we might not want to animate it... Let's check.
C $DFAC,8 Look in map area table 2 - he seems to use this in order to determine what to set as the animation frame in map area table 3. If map 2's byte is set to 1 then jump to routine87_5.  Table 2 is starting to sound like a set of flags for which objects to animate...
C $DFB4,1 Otherwise store the decremented byte in map 2 -  until he stored the decremented value back in table 2, I was beginning to wonder if table 2 contains 0/1 as a flag to show whether a sprite is to be animated, and if so then table 3 contains the number of the animation frame. More work needed to figure out Table 2... But it looks like we only animate a sprite if there is a 1 in Table 2. I suspect this deals with dead creatures, and things like walls, being ignored. Make sense to ME, Big Boy! Hang on - or is it some kind of delay from the object's final (and UNKNOWN) attribute - where we only animate when we decrement it to 1?!!!
C $DFB5,2 Restore current object and map area 1 pointer.
C $DFB7,2 NOT ANIMATING: Jump back to routine87_0 to process the next byte.
C $DFB9,2 WE *ARE* ANIMATING *NOW* THOUGH, BOSS!   Restore current object and map area 2 pointer.
C $DFBB,3 Load HL with the address of the "nothing" object.
C $DFBE,6 We want to get a pointer into the object table for the current object. Each pointer is a word, so calculate the offset from pointer to the "nothing" object and load HL with the pointer to our object that is under the game cursor. [Offset = 2 * (object number in A - 1)].
C $DFC4,3 HL now points at the correct place so load the two byte address of the current object into BC.
C $DFC7,4 Add 22 to the pointer so that is now points to the final attribute byte which is IRRITATINGLY UNKNOWN unlike the rest of them, e.g. look at the cobra at $E463.   *** Except I now think it is the individual animation delay...
C $DFCB,1 Load the unknown object attribute into A from its pointer which is in HL - but could be an animation delay (see in a minute). OMG - I think we are resetting the animation delay!!!
C $DFCC,1 Save the contents of HL into DE.
C $DFCD,2 Restore the map area 2 pointer into HL and copy the unknown attribute value into map area 2.  GREAT SCOTT! If we are only animating a sprite when its value is one, then could this final attribute of each object be contributing to how often we switch its frame? Some sort of individual delay?!!!   In which case we've just stored the delay in Map 2.
C $DFCF,4 Move the map area 2 pointer along into the corresponding byte of map area 3.
C $DFD3,1 Load the byte from map area table 3 - this is the animation frame, I think.
C $DFD4,1 Each sprite has a block of four frames. Increment A and compare with 4 to see if we have completed an animation cycle.
C $DFD5,5 If the unknown attribute has value of 4 then reset its value in A --> back to frame 0.
C $DFDA,5 ... but if its value is 5 then decrement its value in A - back to '4' for the dead sprite image.
C $DFDF,1 Store the new animation delay in map area table 2. (CONFIDENCE!)
C $DFE0,2 Reload the pointer to the corresponding byte in map area table 2, increment the pointer to look at the next map position.
C $DFE2,3 Load the animation frame count into BC
C $DFE5,3 Set HL to point to the correct pointer to the frame.
C $DFE8,3 Load the address of the next frame into BC.
C $DFEB,4 Store the address of the next frame in the variable pointed to by CDATA.
C $DFEF,5 Increment pointer and load values to store in ATTR T.
C $DFF4,1 Restore whatever the fuck we put on the stack last time. FFS. Hang on... right, think it was map area pointer 1 'cos that's what's needed next:
C $DFF5,3 Store current sprite's colour info in UNKNOWN66 - but let's not give that variable a name just yet :-)
C $DFF8,1 Good God, this stack is getting a workout - let's bung the pointer into map area 1 back on it before we...
C $DFF9,6 Call the routine to convert an an object's address into display coordinates and store them in variable LC_POS.
C $DFFF,3 Call P_CHAR to print the four blocks of the sprite.
C $E002,1 Restore the pointer into map area 2 into HL.
C $E003,2 Jump back to routine87_1 to keep processing.
b $E005 Used as a temporary variable to preserve pointer to game board object - see #R$D3C8
B $E005,2,2
c $E007 Converts a pointer to a game board object into coordinates in HL as (L, H)
D $E007 Used by the routines at #R$9A21, #R$9C0F, #R$A18A, #R$B375, #R$B3C9, #R$B8DD, #R$C703, #R$D392, #R$D763 and #R$DF72.
b $E01F Holds the IDs of objects to be *displayed* on the game board. See #R$E2A0.
B $E01F,161,8*20,1
b $E0C0 The routine at $97D1 searches both the map AND map area 5 for the current wizard. This is making me think that map area 5 is a "working copy" of the whole map that might be copied back to the main map area at the end of everybody's turns. The only reason we'd need to search map area 5 is if he has moved and then wants to cast the spell on himself???
B $E0C0,320,8
b $E200 Bit 4 is the ILLUSION flag for this creature.
D $E200 The bottom three bits hold the wizard number for the object in the corresponding slot in #R$E01F
B $E200,160,8
b $E2A0 This table holds the IDs of wizards who are mounted on the objects in #R$E01F.
D $E2A0 When I killed an enemy creature, a '*' appeared in the fuse fifth map area memory map - code $2A.
B $E2A0,2213,8*276,5
b $EB45 Data block at EB45
B $EB45,4881,8*610,1
c $FE56 Routine at FE56
D $FE56 Used by the routines at #R$89F9, #R$9168, #R$95B8, #R$981A and #R$D52E.
s $FE5D Unused
S $FE5D,3,$03
c $FE60 Routine at FE60
D $FE60 Used by the routine at #R$89F9.
s $FE67 Unused
S $FE67,2,$02
c $FE69 Routine at FE69
b $FE71 Data block at FE71
B $FE71,399,8*49,7
