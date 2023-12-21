; 19th July 2020

************************************************************************
This routine is called from one of two places:
(1) When the user presses menu option 1 to "EXAMINE SPELLS", and
(2) When they press 2 to "SELECT SPELL"

Unknown08 is used as a flag for this so that we know whether to call
the routine to actually cast the spell. See the code at $9293.
************************************************************************


D $937C unknown03: in this routine the display coords are stored here. The first byte is for the column and the second byte for the row.
C $9385 Play sound effect 22 and clear the screen.
C $938B Set ATTR T to bright yellow on black.
C $9393 Load the current player's number into A (value 0 to 7).
C $9396 Use it to calculate the offset for the wizard's name in game messages table 1 at CDD3.
C $9398 Display current wizard's name at (0,0).
C $939E Append the text 'S SPELLS to the wizard's name using the message at $CF1F.
C $93A3 Each wizard has a maximum of 20 spells so load this value into B.
C $93A5 unknown04 is used to keep track of which letter of the alphabet to print before each spell. So, $40 is loaded here as it is for the '@' character which immediately precedes 'A'.
C $93AA unknown03 is being used to store the display coordinates. The first byte is the column and the second byte is the row. Here we store the value 16 in unknown03 because there are two columns of spells displayed in column 0 and column 16.
C $93B0 For the current wizard, store the address of HIS SPELL (HISPEL) in unknown7.
C $93B6 Preserve display coordinates.
C $93B7 Load the value of HIS SPELL (HISPEL) into A.
C $93BB If the spell number is 0 then there is (no longer) a spell at this position so jump to routine05_5 in order to proceed to process the next spell in the list.
C $93BE Load the display column value from unknown03 into A.
C $93C1 Alternate the value of unknown03 between 0 and 16 for the display column.
C $93C9 If the column value is 16 then jump to routine05_1 to display the spell in the second display column.
C $93CB If the column value is 0 then we have displayed both spells for the current row so add 2 to the row display coordinate in the second byte of unknown03 in order to move down a row.
C $93D3 Load the value of unknown07 into HL - i.e. the address of the current spell.
C $93D6 Load the spell number from unknown7 into CURSP (i.e. the entry number of the CURRENT SPELL in the spells table at $7D60)
C $93DA Calculate the chance of successfully casting this spell by calling CHAN_C.
C $93DD Store a value in the range 0 to 9 for the chance of successfully casting this spell in A.
C $93E0 Add 1 to the value and halve it: gives a number between 0 and 5. This will be used to set the display colour of the spell.
C $93E3 Add the value in A to $42 to represent a colour from RED to WHITE and store the colour value in ATTR T.
C $93E8 Increment the value of unknown4, i.e. the next letter of the alphabet to print before a spell's name.
C $93EF Load display coordinates from unknown3 and store BC.
C $93F4 Display letter of the alphabet before spell name.
C $93F7 Restore display coordinates and move to next column.
C $93F9 unknown05 is set elsewhere, but its value indicates the alignment of the spell:  0 for Neutral, P flag after OR for Chaos. This is how to decide which symbol to display between the letter of the alphabet and the spell's name.

C $93FF Load A with the character code for '-' which is used to indicate a Neutral spell.
C $9401 Jump to routine05_4 to display character before the spell name to indicate its alignment.

C $9406 Load A with the character code for '*' to indicate a Chaos spell.
C $9408 Jump to $940C to display it.
C $940A This must be a Law spell so load a with the character code of the upwards-pointing arrow.
C $940C Preserve display coords.
C $940D Display the */-/Arrow between the spell's letter and the spell's name to indicate its alignment.
C $9411 Increment the x-coordinate ready to display the spell's name.
C $9412 Load HL with the address of the current spell.
C $9415 Load A with the message number of the spell.
C $9416 Display the name of the spell.
C $9419 Increment the pointer in unknown07 to point to the wizard's next spell in possessed_spell_table.

C $9421 Restore loop counter.
C $9422 Loop back to routine05_0.

C $9424 All spells displayed so now set display coordinates to (0,22).
C $9427 Set ATTR T to bright yellow on black.
C $942C Load A with the message number for press_0_to_return_string
C $942E Display: PRESS '0' TO RETURN TO MAIN MENU

C $9434 Call KEYBOARD in ROM.
C $9437 If '0' was pressed then return, otherwise jump to routine05_7.

C $943C Load the address of unknown04 into HL. Remember that unknown04 will now hold the character code of the last spell's letter (the thing before the alignment character).
C $943F A holds the code of the key pressed (see $9434) so we decrement it and check to see if it is a letter that is later in the alphabet than the last one printed. If so, we jump back to routine05_6 to get another keypress.
C $9444 Similarly, we now check that they haven't pressed anything with a code before $40 for the letter 'A'. If they did, then jump back to get another keypress.
C $9449 We now know that they have pressed a letter in the range 'A' to 'FINAL SPELL LETTER', and have subtracted $3F, so A now holds a value that will help us calculate the offset into his table of spells. We store this value in B.
C $944A Load the address of his current spell into HL.
C $944D Set up in DE the HL pointer adjustment value, reset the Carry flag and move the HL pointer back two bytes in preparation for the forthcoming loop where we repeatedly move it on by two bytes each time.
C $9453 Point HL at the wizard's next spell.
C $9454 Load the spell number.
C $9456 The JR and DJNZ cause us to advance to the end of his set of spells - the JR is for spells with a value of '0' and the DJNZ for the ones he has left.
C $945A A is the number that identifies which spell the user pressed a letter for, and we store this in CURSP (current spell).
C $945D I've just realised that in $9293 that the reason he sets unknown08 to 1 if the user has pressed '2' is because this is when the user is saying they want to actually cast the spell, rather than just view it from another menu. *SO*, we'll need to amend the comment for that routine but here, he loads unknown08 and jumps ahead to routine05_9 to CAST THAT SPELL, BUDDY!
C $9463 Call routine to display an information screen about a selected spell.
C $9466 Jump back to the start at $9385 to see what they want to do next.

C $9469 Load the current player number into A and use it to create an offset into the table of spells cast.
C $946F Point HL at this wizard's entry in the cast_spells table and store the current spell.
C $9476 Return if the current spell is outside the interval 2 to 22 since only these spells can be an illusion, which we are going to ask them about next.
C $947D To get here they must be wanting to cast a creature that could be an illusion so clear the bottom row and set ATTR T to bright white on black.
C $9485 When the user casts a spell they have they choice of a real or illusionary creature. We now prompt for their choice by display "ILLUSION? (PRESS Y OR N)" at (0,22).
C $948D Wait for them to press a key.
C $9490 Call KEYBOARD in ROM.
C $9493 Return if they pressed 'N' because they want to cast a real creature.
C $9496 If they did not press 'Y' then jump back and wait for them to press either Y or N.
C $949A They want to cast an illusion so point HL at the illusion table.
C $949D Use their player number to create an offset in DE.
C $94A3 Set a flag in the illusion table that the current player is casting an illusion with the current spell.
C $94A6 Return.
