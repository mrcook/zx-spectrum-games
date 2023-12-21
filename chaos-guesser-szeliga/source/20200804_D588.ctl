; IN PROGRESS	-	4th August 2020  -  routine73

C $D588 Load A with an object code from the map.
C $D58C If the map position is empty then jump to #R$D5A3.
C $D58F Otherwise if the current spell is greater than or equal to Magic Wood then jump to #R$D5CB.
C $D597 If the current object is not dead then jump to #R$D52E to apply a spell to a target.
C $D5A3 Otherwise "???"
C $D5A8 #R$9C0F is called for a WALL spell "???"
C $D5AD "???"


C $D5B2 We cannot cast the spell so set ATTR-T to $45 (bright cyan on black).
C $D5B7 Clear the bottom row of the screen.
C $D5BA Print message #R$CEC3 - "NO LINE OF SIGHT STRING"
C $D5C2 Wait for no key.
C $D5C5 Wait for a key.
C $D5C8 Jump to #R$983F.

C $D5CB Display a twirling animation over the spell's target.
C $D5CE If the spell failed then jump to #R$D5E7.

C $D5D4 Update map tables.

C $D5DE Display whether the spell succeeded or failed.

C $D5E6 Return.

C $D5E8 Display whether the spell succeeded or failed.
C $D5EB Return.
