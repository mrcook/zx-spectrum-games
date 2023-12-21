; 20th July 2020    routine12

D $E0C0 The routine at $97D1 searches both the map AND map area 5 for the current wizard. This is making me think that map area 5 is a "working copy" of the whole map that might be copied back to the main map area at the end of everybody's turns. The only reason we'd need to search map area 5 is if he has moved and then wants to cast the spell on himself???

D $97D1 The wizard is casting on the spells (such as Magic Armour) on himself. This routine finds the current wizard on the map to save the player having to navigate and highlight themselves!
C $97D1 Store the address of the map_area_object_table in unknown12.
C $97D7 Set loop counter to 159 so that we can process all 160 bytes in the table.
C $97D9 Load the object code for the current position in the map.
C $97DA Subtract 41 because our first wizard has code 41.
C $97DC Point HL at the byte ID of the current player (a number from 0 to 7) and compare it with the value in A for the current object on the map.
C $97E0 The current object on the map is the current player so jump ahead to $97FB.
C $97E2 Reload HL with the address of the map that we stored at the start of this routine.
C $97E5 Move HL along to the corresponding byte in the 5th map area table.
C $97E9 Load the byte from the 5th map area and subtract 41 to get an object ID.
C $97EC Compare the object ID with the current player's ID.
C $97F0 Again, we have found our player that is casting the spell on himself so jump to $97FB.
C $97F2 Increment the map pointer that is being stored in unknown12.
C $97F9 Loop back to $97D9.
C $97FB Copy the map pointer from HL into D_ADD & cursor_position & X_ADD.  -  even though routine53 in a minute only uses HL, and even copies that into unknown66....!
C $9807 Call routine53 to convert a memory address into a set of coordinates in HL.
C $980A Store the coordinates of our newly located wizard who is casting something on himself (eew).
C $980D Return.
