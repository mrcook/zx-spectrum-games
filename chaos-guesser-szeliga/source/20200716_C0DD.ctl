D $C0D8 Used in #R$C0DD to indicate whether the border has been drawn.
C $C0D8 Initialise "border drawn" flag to 1.

D $C0DD This routine sets the animation frame to 0 for any blank cells in the map.
C $C0DD Disable interrupts.
C $C0DE Set loop counter to map size.
C $C0E0 Point HL at #R$E01F.
C $C0E3 Load the object code at the current map position and if there is an object then jump to #R$C0FF to start next loop iteration.
C $C0E7 Preserve map pointer.
C $C0E8 Calculate offset into map table and store in A.
C $C0EE Increment A for the next position in the row.
C $C0EF Compare A with 15 to skip past the unused byte in the table.
C $C0F1 Restore map pointer and jump to #R$C0FF if we are in the rightmost column of a row.
C $C0F4 Set current map position to '1' - NB Looks like he uses both 0 and 1 as codes to indicate no object at the current position.
C $C0F7 We have no object so set animation frame for current object to 0 in #R$E160.
C $C0FD Set map pointer back to current object in #R$E01F.
C $C0FF Increment map pointer.
C $C100 Loop back to #R$C0E3.
C $C102 Set every value in second map table to '1' to indicate slot processed, no object.
C $C10F Jump to #R$C11D if #R$C0D7 is set as a flag to indicate border drawn.
C $C115 Otherwise set ATTR T to bright blue on black and draw border.
C $C11D Reset #R$C0D7 - used as a flag to indicate border drawn.
C $C121 Enable interrupts and return.
