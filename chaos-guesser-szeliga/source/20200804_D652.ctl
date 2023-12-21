D $D652 Add Gooey Blob or Magic Fire to the map? DOES THIS ROUTINE EVER GET CALLED "???"
C $D652 Load HL with the address of the cursor.
C $D655 If the current spell is for Gooey Blob or Magic Fire then jump to #R$D669.
C $D660 Otherwise store the object code in #R$E340.
C $D666 Load the current spell into A.
C $D669 Copy the current spell into the map at the cursor position.
C $D66D Set the animation timeout to 1.
C $D673 Set the animation frame to 0.
C $D677 Set the owner to the current player.
C $D67C Set Z based on value of #R$9166 "???"
C $D682 Set illusion bit "???"
C $D684 Wait for an interrupt.
C $D685 Return.
