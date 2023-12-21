; 26th July 2020	routine35

D $B8DD Deals with ranged attacks, and  ...
C $B8DD Set ATTR T to bright magenta on black.
C $B8E2 Draw the border in "attack mode" colours.
C $B8E5 Set ATTR T to bright green on black.
C $B8EA Set display coordinates to (0,22).
C $B8ED Display #R$CEBF "RANGED COMBAT,RANGE=".
C $B8F2 Set ATTR T to bright yellow on black.
C $B8F7 Load A with #R$ABFC which is the range of the attack, set by the caller.
C $B8FA Add $30 to get a character code.
C $B8FC Display the ranged attack distance.
C $B8FF Store the cursor coordinates in #R$AC04.
C $B907 Play #R$C257.
C $B90D Enable interrupts.
C $B90E If the current player is human then jump to #R$B92E.
C $B914 Otherwise call #R$CC56 - "???" is this the AI routine to decide on a target "???"
C $B917 Wait for no key.
C $B91A Wait for a key.
C $B91D Set UDG to point to the targettting cursor.
C $B923 If the current player is human then jump to #R$B92E.
C $B929 Otherwise call #R$CCCB to ...  "???"
C $B92C And then jump to #R$B934.
C $B92E Human player so call #R$BC96 to handle keyboard and displaying information about objects on screen.
C $B931 Call KEYBOARD in ROM.
C $B934 If they did NOT 'K' to cancel then jump to #R$B94B.
C $B93B Otherwise they want to cancel so set ATTR T to bright blue on black.
C $B93D Call #R$BB57 to draw the border.
C $B940 Clear the bottom row of the screen.
C $B943 Play #R$C2B1.
C $B949 Enable interrupts.
C $B94A Return.
C $B94B If they did NOT press 'S' to select a target then jump back to #R$B923.
C $B94F ...

C $B976 Set ATTR T to bright cyan on black.
C $B97B Display #R$D03A at (0,22) -  "OUT OF RANGE "
C $B983 Wait for no key.
C $B986 Wait for a key.
C $B989 Jump to #R$B923.
C $B98B Reset #R$B754 and #R$B60B  - "???" Something to do with the line of fire? "???"
C $B992 ...

C $B9A2 Set Attr T to bright cyan on black.
C $B9A7 Clear the bottom row of the screen.
C $B9AA Display #R$D0C1 at (0,22) - "NO LINE OF SIGHT"

C $B9B2 Wait for no key.
C $B9B5 Wait for a key.
C $B9B8 Jump to #R$B923.
C $B9BB Play #R$C275.
C $B9C1 ...
C $B9D1 Play sound effect #R$C26B.
C $B9D7 ...

C $B9F0 Wait for an interrupt.
C $B9F1 Disable interrupts.
C $B9F2 ...

C $BA04 Point HL at the #R$BFB7 animation for when an object is destroyed.
C $BA07 Set ATTR T to bright white on black.
C $BA0C ...

C $BA13 Play #R$C243.
C $BA19 Point HL at #R$C123.
C $BA1c Set ATTR T to bright yellow on black.
C $BA21 ...
