
D $DF72 This is called by the ISR at #R$FE69 in order to animate the sprites.

C $DF72 Preserve registers, ATTR T, CHARS, pointer to map_area_object_table.
C $DF82 Call KEY-SCAN in ROM.
C $DF85 Restore HL to point at map_area_object_table.
C $DF86 ??? I need to come back to this bit as it seems to me that he is testing for CAPS SHIFT (see p.5 of the ROM Disassembly book) and jumping to routine87_3 if so.
C $DF8B Load byte from map area and jump to routine87_3 if it is 255 / -1 (????) to clean up and return because...???  I need to check but maybe he puts FF at the very end of the playing area as a signal to stop.
C $DF90 If the byte is not zero then jump to routine87_4 to process the current sprite.
C $DF93 See if he has used a '1' again to represent no object - in which case we will set it back to 0.
C $DF96 If there is something on the map then jump to routine87_2. [this section is a bit of a rat's nest but I think I've convinced myself that either a '0' or a '1' on the map causes a '0' to be stored in the map before moving on]
C $DF98 Reset the item on the map (remember: he uses 1 to mean nothing there, not just 0).
C $DF9A Increment map pointer and jump back to routine87_0.
C $DF9D CLEAN UP: Pop HL (map pointer); restore CHARS, ATTR T, registers and return.
C $DFAA CHECK WHETHER TO ANIMATE: Now we get to process a sprite so preserve map pointer and current object. We know there is an object on the game board but it might be dead, or a wall, so we might not want to animate it... Let's check.
C $DFAC Look in map area table 2 - he seems to use this in order to determine what to set as the animation frame in map area table 3. If map 2's byte is set to 1 then jump to routine87_5.  Table 2 is starting to sound like a set of flags for which objects to animate...
C $DFB4 Otherwise store the decremented byte in map 2 -  until he stored the decremented value back in table 2, I was beginning to wonder if table 2 contains 0/1 as a flag to show whether a sprite is to be animated, and if so then table 3 contains the number of the animation frame.  More work needed to figure out Table 2... But it looks like we only animate a sprite if there is a 1 in Table 2. I suspect this deals with dead creatures, and things like walls, being ignored. Make sense to ME, Big Boy!  Hang on - or is it some kind of delay from the object's final (and UNKNOWN) attribute - where we only animate when we decrement it to 1?!!!
C $DFB5 Restore current object and map area 1 pointer.
C $DFB7 NOT ANIMATING: Jump back to routine87_0 to process the next byte.
C $DFB9 WE *ARE* ANIMATING *NOW* THOUGH, BOSS!   Restore current object and map area 2 pointer.
C $DFBB Load HL with the address of the "nothing" object. 
C $DFBE We want to get a pointer into the object table for the current object. Each pointer is a word, so calculate the offset from pointer to the "nothing" object and load HL with the pointer to our object that is under the game cursor. [Offset = 2 * (object number in A - 1)].
C $DFC4 HL now points at the correct place so load the two byte address of the current object into BC.
C $DFC7 Add 22 to the pointer so that is now points to the final attribute byte which is IRRITATINGLY UNKNOWN unlike the rest of them, e.g. look at the cobra at $E463.   *** Except I now think it is the individual animation delay...
C $DFCB Load the unknown object attribute into A from its pointer which is in HL - but could be an animation delay (see in a minute). OMG - I think we are resetting the animation delay!!!
C $DFCC Save the contents of HL into DE.
C $DFCD Restore the map area 2 pointer into HL and copy the unknown attribute value into map area 2.  GREAT SCOTT! If we are only animating a sprite when its value is one, then could this final attribute of each object be contributing to how often we switch its frame? Some sort of individual delay?!!!   In which case we've just stored the delay in Map 2.
C $DFCF Move the map area 2 pointer along into the corresponding byte of map area 3.
C $DFD3 Load the byte from map area table 3 - this is the animation frame, I think.
C $DFD4 Each sprite has a block of four frames. Increment A and compare with 4 to see if we have completed an animation cycle.
C $DFD5 If the unknown attribute has value of 4 then reset its value in A --> back to frame 0.
C $DFDA ... but if its value is 5 then decrement its value in A - back to '4' for the dead sprite image.
C $DFDF Store the new animation delay in map area table 2. (CONFIDENCE!)
C $DFE0 Reload the pointer to the corresponding byte in map area table 2, increment the pointer to look at the next map position.
C $DFE2 Load the animation frame count into BC
C $DFE5 Each frame has two bytes for the pointer + another byte (colour data? Yeah baby! Look at the magic castle at E9AD that flashes bright!!!) so skip to the correct frame in the object data table $E440
C $DFE5 Set HL to point to the correct pointer to the frame.
C $DFE8 Load the address of the next frame into BC.
C $DFEB Store the address of the next frame in the variable pointed to by CDATA.
C $DFEF Increment pointer and load values to store in ATTR T.
C $DFF4 Restore whatever the fuck we put on the stack last time. FFS. Hang on... right, think it was map area pointer 1 'cos that's what's needed next:
C $DFF5 Store current sprite's colour info in UNKNOWN66 - but let's not give that variable a name just yet :-)
C $DFF8 Good God, this stack is getting a workout - let's bung the pointer into map area 1 back on it before we...
C $DFF9 Call the routine to convert an an object's address into display coordinates and store them in variable LC_POS.
C $DFFF Call P_CHAR to print the four blocks of the sprite.
C $E002 Restore the pointer into map area 2 into HL.
C $E003 Jump back to routine87_1 to keep processing.
