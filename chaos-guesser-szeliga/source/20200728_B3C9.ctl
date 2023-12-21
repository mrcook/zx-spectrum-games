; 28th July 2020	WIZKIL

D $B3C9 Display the coloured "starburst" when a wizard dies.
C $B3C9 Disable interrupts.
C $B3CA Increment the number of dead wizards.
C $B3CE Play #R$C2A7.
C $B3D4 Load HL with map address of dead wizard.
C $B3D7 Load C with the wizard code for the newly deceased wielder of nature's forces.
C $B3D8 We want to get the "dead sprite" so first calculate an offset for the #R$E3E0.
C $B3DD Load HL with the address for the blank sprite at #R$E440.
C $B3E0 Add the offset so that HL contains the correct dead wizard pointer, #R$E430 to #R$E43E.
C $B3E1 Load DE with the address of our splattered wizard in the wizard data table.
C $B3E4 Now load HL with the address of that wizard's sprite.
C $B3E8 Load DE with the address of the sprite data for the current (& sadly no longer with us) wizard.
C $B3EB Exchange so that HL is the address of the sprite data for the wizard (e.g. FD34) and DE has the address of the data block for the current wizard (e.g. #R$EA39)
C $B3EC Copy the address of the wizard's sprite data into #R$DF4A.
C $B3EF Set loop counter for display colour.
C $B3F1 Preserve loop counter.
C $B3F2 Load HL with map address of the dead wizard.
C $B3F5 Copy the address of the dead wizard to #R$E005 and convert into screen coordinates in HL as (L, H).
C $B3F8 Store the coordinates in #R$B3C7.
C $B3FE Copy the row coordinate into #R$B3C3 and #R$B3C4.
C $B405 Copy the column coordinate into #R$B3C3 and #R$B3C4.
C $B40C Decrement the colour [so that the first colour used is white=7].
C $B40D Set up the colour attribute value in ATTR-T [bright colour on a black background]
C $B413 Set B with the number of columns in the map "???"
C $B415 Preserve counter.
C $B416 Load A with the row coordinate of the dead wizard.
C $B419 Decrement the row coordinate.
C $B41A If we are at the top of the map then jump to #R$B42A.
C $B41C Otherwise copy the decremented row coord into #R$B3C3 so that we can print a sprite "north" of the corpse.
C $B41F Set HL up with the old column and new row.
C $B424 Store the updated coordinates in #R$DF4C and print the dead wizard's sprite there.
C $B42A Load A with the old row coordinate.
C $B42D Increment it.
C $B42E If we are at the bottom of the map then jump to #R$B440.
C $B432 Otherwise store the new row coordinate in #R$B3C4.
C $B435 Set HL up with the new row and old column.
C $B43A Store the updated coordinates in #R$DF4C and print the dead wizard's sprite "south" of the corpse.
C $B440 Load A with the old column coordinate.
C $B443 Decrement it.
C $B444 If we are at the left of the screen then jump to #R$B454.
C $B446 Otherwise store the new column number in #R$B3C5.
C $B449 Set HL up with the old row and new column.
C $B44E Store the updated coordinates in #R$DF4C and print the dead wizard's sprite "west" of the body.
C $B454 Load A with the old column coordinate.
C $B457 Increment it.
C $B458 If we are at the right of the screen then jump to #R$B46A.
C $B45C Otherwise store the new column number in #R$B3C6.
C $B45F Set HL up with the old row and new column.
C $B464 Store the updated coordinates in #R$DF4C and print the dead wizard's sprite "east" of the swelling flesh.
C $B46A Load A with the old row coordinate.
C $B46D If we are at the top or left of the map then jump to #R$B480.
C $B479 Otherwise print a sprite "north-west" of the dead wizard and the gathering flies.
C $B480 If we are at the top or right of the map then jump to #R$B496.
C $B48F Otherwise print a sprite "north-east" of the dead wizard and his noxious fumes.
C $B496 If we are at the bottom or left of the map then jump to #R$B4AC.
C $B4A5 Otherwise print a sprite "south-west" of the dead wizard.
C $B4AC If we are at the bottom or right of the map then jump to #R$B4C2.
C $B4BB Otherwise print a sprite "south-east" of the dead wizard and his leaking fluids.
C $B4C2 Play sound effect.
C $B4C5 Restore colour counter and decrement.
C $B4C7 If we haven't displayed in blue yet then jump to #R$B3C9.



C $B4CF Point HL at cursor position of the KILLED WIZARD!!!!
C $B4D2 Load object code of the brutally murdered wizard into A.
C $B4D1 [XOR H is not in the debugger...!]
C $B4D2 Subtract 41 to get player number associated with the BUTCHERED VICTIM and store in #R$AC00
C $B4D8 Set object code to 0 - GANDALF, NOOOOOO!!!!
C $B4DA Load HL with the address of the modifier for this wizard.
C $B4E1 Set bit 4 to show this wizard, sadly, is NO MORE....
C $B4E3 Point HL into #R$E340.
C $B4EA Copy the byte from the #R$E340 to #R$E01F. BECAUSE THE WIZARD COULD HAVE BEEN TRAPPED AT THE TIME"???"
C $B4EF Update map 1's empty slots, animation frames & draw border.
C $B4F2 Wait for an intterupt.
C $B4F3 Disable interrupts.
C $B4F4 Play #R$C2C5.
D $B4FA [Now all of the wizard's creations get canned, with the WOOP_D animation on each]
C $B4FA Set B to 9 for the 9 frames of animation of #R$BF37.
C $B4FC Set sprite pointer to #R$BFB7.
C $B502 Set ATTR-T to $46 (bright yellow on black)
C $B507 Preserve animation frame loop counter and copy to #R$ABFF
C $B50C Set loop counter 2 = map size.
C $B50E Copy the address of the map to #R$ABFD.
C $B514 Preseve map loop counter.
C $B515 If the current map slot is empty or a wizard then jump to #R$B5E8.
C $B522 If the current map slot contains a dead creature then jump to #R$B535.
C $B52B If the current map slot contains an "asleep" creature then jump to #R$B5E8. [not sure this is actually in the game]
C $B535 If the current creature belongs to the dead wizard then jump to #R$B563.
C $B545 If the current creature is not a Gooey Blob then jump to #R$B5E8.
C $B54E If there is no wizard stuck in the blob then jump to #R$B5E8.
C $B557 If the dead wizard code is NOT equal to the wizard ID in table 6 "???" then jump to #R$B5E8.
C $B563 Convert the current map address into coordinates and store in #R$B56C.
C $B56F Print the "WOOP" sprite at the current position.
C $B572 Load 'animation frame loop counter' into A and decrement
C $B576 If there are WOOP animation frames remaining "???" then jump to #R$B5E8.
C $B578 Load HL with the address of the object's properties.
C $B580 If the object belongs to the dead wizard then jump to #R$B599.
C $B588 Set the bytes in #R$E2A0 and #R$E340 to 0.
C $B597 Jump to #R$B5E8.
C $B599 If the current map object is not a Gooey Blob then jump to #R$B5BE.
C $B5A1 If a wizard is not mounted on this creature, or a creature trapped, then jump to #R$B5BE.
C $B5A9 Otherwise the creature has gone so set the wizard ID in #R$E2A0 to 0 and copy his wizard ID into #R$E01F. [e.g. an enemy wizard was trapped in a Gooey Blob]
C $B5AF Load the byte from #R$E340 into A. - " *** BY GOLLOP, is this table to store object codes for trapped creatures?!? I can't remember if a gooey blob outlives its wizard - if so, what happens? *** "
C $B5B4 Set the byte in #R$E340 to 0.
C $B5BB Copy the byte that was in #R$E340 to #R$E200.
C $B5BC Jump to #R$B5E8.
C $B5BE If there is no wizard ID in #R$E2A0 then nobody was mounted so jump to #R$B5D1.
C $B5CB The wizard is no longer mounted so copy the wizard ID from #R$E2A0 into #R$E01F and jump to #R$B5E8.
C $B5D1 Copy the object code from #R$E340 into #R$E01F.
C $B5DD If the map position was empty then jump to #R$B5E8.
C $B5E0 Set the animation frame for the current object to 4 (DEAD!)
C $B5E8 Restore map loop counter.
C $B5E9 Increment the map pointer in #R$ABFD.
C $B5F0 Decrement the map loop counter.
C $B5F1 Loop back to #R$B514.
C $B5F4 Play sound effect.
C $B5F7 Restore loop counter for animation frame.
C $B5F8 Update #R$DF4A with the address of the next frame of animation.
C $B602 Decrement the number of frames left to display.
C $B603 Loop back to #R$B507 8 times.
C $B606 Update maps and draw the border.
C $B609 Wait for an interrupt.
C $B60A Return.
