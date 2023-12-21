; 28th July 2020 -  routine48

D $BEEF Calculates the distance between two map positions - NB if a spell has a maximum casting distance of 1, then the spell actually stores 3. Hence the "double and add 1" algorithm below.
D $BEEF unknown74=return value: the distance between the two positions.
D $BEEF unknown75=wizard coord's
D $BEEF unknown76=cursor coord's
D $BEEF unknown77= difference between x-coord's
D $BEEF unknown78=difference between y-coord's
C $BEEF Preserve registers.
C $BEF3 Load A with 0 - pointless?
C $BEF4 Load HL with the map coordinates of the wizard.
C $BEF7 Load DE with the map coordinates of the cursor.
C $BEFB Load A with the y-coord of the cursor.
C $BEFC Compare it with the wizard's y-coord.
C $BEFD If the cursor's y-coord is smaller than the wizard's then jump to #R$BF06.
C $BF00 Otherwise store the difference between the y-coord's in #R$BEEE and jump to #R$BF0B.
C $BF06 We want a positive difference so instead let's load A with y-coord of wizard and subtract y-coord of cursor.
C $BF08 Store the difference between y-coord's in #R$BEEE.
C $BF0B Load A with the cursor's x-coord
C $BF0C Compare it with the wizard's x-coord.
C $BF0D If that'd be negative then jump to #R$BF16.
C $BF10 Calculate the difference in x-coord's and store in #R$BEED.
C $BF14 Jump to #R$BF1B.
C $BF16 Subtract the x-coord's the other way round and store in #R$BEED.
C $BF1B Load H with delta y and L with delta x.
C $BF1E Load A with the difference in y-coord's
C $BF1F Jump to #R$BF29 if delta y is smaller than delta x.
C $BF23 Double the difference in y-coord's and store in A.
C $BF26 Add the difference in x-coord's.
C $BF27 Jump to #R$BF2D.
C $BF29 Double the delta x value in L and load result into A.
C $BF2B Add delta y.
C $BF2D Load total into E.
C $BF2E Store total in #R$BEE8 - the distance between the pairs of coordinates
C $BF31 Restore A which contained ... a maximum distance set by some callers "???"
C $BF32 Compare the maximum distance as set by some callers "???" and set P flag for return.
C $BF33 Restore registers.
C $BF36 Return.
