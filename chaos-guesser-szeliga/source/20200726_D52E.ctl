; 26th July 2020	routine72

D $97CE This contains the number of attempts for the current spell.

D $D52E Selects the target of a spell.
C $D52E Call #R$97D1 to find the coordinates of the current player.
C $D531 Set IM2.
C $D534 Set ATTR P to black on black.
C $D539 Set MASK P to $FF so that all attributes are taken from the screen.
C $D53E Call #R$C0DD to update the maps and draw the border.
C $D541 Enable interrupts.
C $D542 Wait for an interrupt.
C $D543 Set P FLAG to 3 for "OVER 1" printing.
C $D548 Clear the bottom row of the screen.
C $D54B Load B with the number of attempts for this spell.
C $D54F Preserve this value.
C $D550 Call #R$BC96 to handle keyboard input on the map.
C $D553 Call KEYBOARD in ROM.
C $D556 If they pressed 'S' to select an object then jump to #R$D567.
C $D55A If they pressed 'K' to cancel then jump to #R$D550 to get another key.
C $D55E Restore the number of attempts for this spell.
C $D55F Play #R$C2B1.
C $D565 Enable interrupts.
C $D566 Return.
C $D567 Wait for no key to be pressed.
C $D56A Call #R$9786 to see if the target is in range.
C $D56D If the object is in range then jump to #R$9877 to process the spell.
C $D570 Otherwise clear the bottom row of the screen.
C $D573 Set print coordinates to (0,22).
C $D576 Set ATTR T to bright cyan on black.
C $D57B Display #R$CEA7 because the target is out of range.
C $D580 Wait for no key to be pressed.
C $D583 Wait for a key to be pressed.
C $D586 Jump back to #R$D550.
