;24th July 2020		routine13

D $9786 This must be returning the P flag set if the target is in range.

C $981A Clear the bottom row of the screen.
C $981D Call routine12 to find the coordinates of the current player and store them in $BC94 = cursor_coordinates.
C $9820 Call routine to set IM2.
C $9823 Set ATTR P to black on black.
C $9828 Set MASK P to 255 so that all attribute bits are taken from screen, not ATTR P.
C $982D Call #R$C0D8.
C $9830 Enable interrupts.
C $9831 Wait for one.
C $9832 Set P FLAG to 3 to enable "OVER 1".
C $9837 Clear the bottom row of the screen.
C $983A unknown11 contains the number of attempts for the current spell so load the value into B.
C $983E Preserve BC.
C $983F Call KEYBOARD in ROM to set LAST K.
C $9845 If the user pressed 'S' to select the current object then jump to $9856.
C $9849 Else if they pressed 'K' to cancel this operation then jump back to $983F.
C $984D Restore BC.
C $984E Play sound effect 11.
C $9854 Enable interrupts.
C $9855 Return.
C $9856 Wait for no key to be pressed.
C $9859 Call $9786 to see if the target is in range.
C $985C If the target is in range then jump to #R$9877.
C $985F Otherwise clear the bottom row.
C $9862 Set print coordinates to (0,22).
C $9865 Set ATTR T to bright cyan on black.
C $986A Print #R$D03A  = "OUT OF RANGE".
C $986F Wait for no key to be pressed.
C $9872 Wait for a key to be pressed.
C $9875 Jump back to #R$983F.
C $9877 Load the object at the #R$AC12 into A.
C $987B If it is an empty cell then jump to #R$9892.
C $987E Otherwise load the current spell into A.
C $9881 If it is >=36, i.e. Magic Wood,Shadow Wood, Magic Castle, Dark Citadel or Wall, then jump to #R$983F.
C $9886 Otherwise load HL with the cursor position.
C $9889 Set up an offset to table 3.
C $988C Point HL into the corresponding byte in table 3.
C $988D Load the current animation frame number into A.
C $988E If the object is not dead then jump back to #R$983F.
C $9892 Call #R$98F1 to ... "???".
C $9895 Jump to #R$983F to get another target.
C $9897 Call #R$9C0F to ... "???".
C $989A Jump to #R$983F to get another target.
C $989C Call #R$98DB to ... "???".
C $989F If "???" then jump to #R$98BA to proceed with the spell.
C $98A1 Otherwise set ATTR T to bright cyan on black.
C $98A6 Clear the bottom row of the screen.
C $98A9 Print #R$D280 "MAGIC FIRE" at (0,22).
C $98B1 Wait for no key to be pressed.
C $98B4 Wait for a key to be pressed.
C $98B7 Jump back to #R$983F.
C $98BA Call #R$A18A to display the twirling animation over the target.
C $98BD See if the spell succeeded.
C $98C1 If it failed then jump to #R$98D6.
C $98C3 Otherwise call #R$9941 to update map tables.
C $98C6 Restore BC which contains the number of attempts for this spell - stored at #R$983E.
C $98C8 Load the remaining number of attempts into A.
C $98C9 If more attempts are left to be made then jump to #R$98CB.
C $98CD Otherwise call #R$97A3 to display whether the spell succeeded or failed.
C $98D0 Restore BC.
C $98D1 Decrement the number of attempts of this spell left to be made.
C $98D2 If more attempts remain then jump to #R$983E.
C $98D5 Return.
C $98D6 Restore BC.
C $98D7 Call #R$97A3 to display whether the spell succeeded or failed.
C $98DA Return.
