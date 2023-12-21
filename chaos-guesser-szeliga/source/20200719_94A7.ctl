; 19th July 2020

C $9463 Display an information screen about a selected spell.

C $94A7 Call CHAN_C to update the value of the casting_chance variable.
C $94AA Load A with the value/ID of the Current Spell (CURSP).
C $94AF For some spells (e.g. DISBELIEVE, SUBVERSION) we can just display their info immediately but if it is a spell to cast a creature then we will call display_object_info instead. Jump to routine37_0 if the spell number is one of the first 33 spells in the spells_table at $7D69.
C $94B6 Otherwise it's a creature, so we're going to use a trick since there might not even be one of these creatures on the map yet. Normally, the cursor is over an object/creature when we display information about it. However, here Gollop has stored the object code in a border slot in the map table and set the cursor coordinates to point to it so that he can call display_object_info in a minute. Sneaky! So, point HL at the final byte of map area 1 which is really a border graphic.
C $94B9 Store the value of A (which is for the current spell) in $E0BE.
C $94BA Store the address E0BE in the cursor_position variable so that the display routine thinks we are on a real object. AS IF!
C $94BD Advance the HL pointer by 641 bytes to the final byte of the fifth_map_area_table.
C $94C1 ??? Set that byte to 0.
C $94C3 Set unknown71 to 3 because if bit 1 is set then display_object_info knows that the current object is a wizard and to display how many spells he has and his ability. Also, here bit 0 of unknown71 is set so that the display routine knows to print a "casting chance" attribute. See the code at $C53F.
C $94C8 Copy the casting chance of the current spell to unknown67 so that it can be displayed in display_object_info in a minute.  NB: maybe we should update the comment at $C550 about unknown67 being set here.
C $94CE Display the information about the object at the cursor position.
C $94D1 Reset unknown71 to 0 - this will mean that display_object_info knows not to print any spell properties, or a how many spells a wizard has. Instead, just casting chance and range.
C $94D6 Reset the sneaky byte we used in the border to make display_object_info think we were examining an object.
C $94DB Store the address of the map_area_object_table in the cursor_position variable.

C $94E1 Return
C $94E2 Clear the screen because we are about to display all the properties for the currently selected spell.
C $94E5 Play sound effect 22.
C $94EB Set ATTR T to bright blue on cyan and draw the border.
C $94F3 Set ATTR T to bright yellow on black.
C $94F8 Look up the name of the spell and display it at (8,5).
C $9502 If the value of unknown05 is 0 then this is a NEUTRAL spell so we don't want to display anything about its effect on the CHAOS/LAW balance, so just jump ahead to routine37_2 to display the Casting Chance.
C $9508 If the P flag was set then this spell has a LAWFUL effect so jump to routine37_1 to display details.
C $950B If we are here then the current spell must have a CHAOS effect so set ATTR T to bright magenta on black
C $9510 Display the chaos_string "(CHAOS " at (8,7) on the main menu
C $9518 Load the value of unknown05 into A - it is the Chaos/Law effect of the current spell.
C $951B Negate the loaded value in order to get something that we can add $30 to in order to be able to print it.
C $951F Print the Chaos value of the current spell.
C $9522 Print a closing bracket and jump ahead to routine37_2 to display this spell's casting chance.
C $9529 Set ATTR T to bright cyan on black
C $952E Display the chaos_string "(LAW " at (8,7) on the main menu
C $9536 Convert the value in unknown05 into a character that represents a bias towards Chaos and display it.
C $953E Print a closing bracket.
C $9543 Set ATTR T to bright green on black.
C $9548 Print "CASTING CHANCE=" at (8,11).
C $9550 Set ATTR T to bright yellow on black.
C $9555 Load the value of casting_chance for the current spell into A, increment it, and compare with the value 10. NB: casting_chance is 0 to 9, which represent 0%, 10%, ..., 100% so we will need to convert before we can display.
C $955B If it's not 10 (i.e. 100%) then jump to routine 37_3.
C $955D The casting_chance is 10 so display ten_string which is "10" and jump to routine 37_4.
C $9564 Otherwise display the value in A which we will append to in a moment.
C $9569 Now append "0%" to complete the display of the casting_chance.
C $9573 Set ATTR T to bright green on black.
C $9578 Display range_string "RANGE=" at (8, 15).
C $9580 Set ATTR T to bright yellow on black because we are about to calculate the value of the casting chance as a percentage.
C $9585 Look up the range value for the current spell. The range is stored *doubled* so we need to halve it.
C $958E If the range is bigger than 10 then we display a range value of 20 by jumping to routine37_5. This is used for spells like DISBELIEVE that can work anywhere on the board.
C $9593 Otherwise we convert the value in A into a character and display it, and jump ahead to routine37_6.
C $959A Display a range value of "20".
C $95A4 Set ATTR T to bright cyan on blue.
C $95A9 Display "PRESS ANY KEY STRING" at (0,22).
C $95B1 Wait for a key to be pressed
C $95B7 Return.
