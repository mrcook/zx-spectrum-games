; 20th July 2020    routine12

D $A18A This routine displays a twirling animation at the cursor coordinates when the spell is cast.

C $A18A Look up the value that represents double the current spell's maximum casting distance.
C $A18D If it is 0 then jump ahead to routine20_0.
C $A190 Otherwise, play sound effect 4.
C $A199 Set unknown48 to 3 because  C $A199 Set unknown48 to 3 because routine28 expects the caller to set this...
C $A19E Call routine to display "lightning bolt" animation from the wizard to the target.
C $A1A1 Call routine to update map table information and draw the border.

C $A1A4 Wait for an interrupt.
C $A1A5 Disable interrupts.
C $A1A6 Set ATTR T to bright cyan on black.
C $A1AB Play sound effect 1.
C $A1B4 The table at $A1E8 is a set of 18 pointers to the ten possible frames of animation. Here, we set the twirl_sprite_pointer variable so that it points to the first of these pointers.
C $A1BA Copy cursor position to unknown66.
C $A1C0 Call routine to convert the cursor coordinates in unknown66 into game board object into coordinates in HL as (L, H)  and DE will contain the address of map_area_object_table for later use at A1D3.
C $A1C6 Set loop counter to 18 for the 18 pointers to frames of animation in the twirl sprites table at $A1E8.
C $A1C8 Preserve loop counter.
C $A1C9 Set HL so it contains the address of the next pointer to the frame of animation, e.g. on the first pass HL will contain A1E8 which is the pointer to twirlsprite0.;
C $A1CC Load the two bytes of the address of the next frame of animation into DE, e.g. after the first pass DE will hold the address A20C.
C $A1CF DE is pointing at the frame we want to display and HL is pointing at the pointer to a frame so we want to save that. Save for today and tomorrow will look after itself.
C $A1D0 Store the address of the pointer to the next animation frame in the twirl_sprite_pointer variable.
C $A1D3 After exchanging registers DE has the pointer to the next frame and HL contains the address of the current frame to display.
C $A1D4 Store the current frame to display in C_DATA.
C $A1D7 Display the current frame.
C $A1DA Play the current sound effect.
C $A1DD Restore the loop counter and loop back.
C $A1E0 Call routine to update map table information and draw the border.
C $A1E3 Enable interrupts and wait for one.
C $A1E5 Return.
