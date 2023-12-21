; 21st July 2020

D $B626 This is the routine that draws the "bolt" from the wizard to the target - it might do more. It seems to draw a line from the wizard to the target square. After that, the line is erased, the creature appears. In which case, is the value in unknown48 a colour for the animation?

C $B626 Reset system variables: P FLAG  and  MASK T.
C $B62D Reset unknown49.
C $B630 Load the value of unknown48 that is set by the calling routine / spell.
C $B633 If unknown48 == 0 then jump to routine28_5.    ??????
C $B636 If unknown48 == 1 then jump to routine28_0.    ??????
C $B63A Copy the value of unknown48 into unknown54.    ??????
C $B63D Set unknown50 to 42 because .... ????????
C $B642 Set ATTR T to bright white on black.
C $B647 If unknown48 does not contain the value 2 then jump to routine28_1.
C $B64E Otherwise set unknown54 = unknown48 = 2.
C $B651 Store the value 15 in unknown50.    ????????

C $B656 Set ATTR T to bright yellow on black.
C $B65B ...
C $B66A Set ATTR T to bright cyan on black.
C $B66F ...
C $B67B Set ATTR T to bright yellow on black.
C $B680 ...
C $B68E Set ATTR T to bright yellow on black.
C $B693 ...
C $B6A1 Set ATTR T to bright white on black.
C $B6A6 ...
C $B6AB Disable interrupts.
C $B6AC Reset unknown51 to 0.

C $B725 Enable interrupts.
C $B726 Set P FLAG to 3 so that "OVER 1" is activated for printing.
C $B72B Set MASK T to 255 so that all attribute bits are taken from what is already on-screen and not from ATTR P.

C $B730 Return.
C $B731 If the zero flag is not set then jump to B718.    ??????

C $B733 Store the two bytes (C=x then B=y) for the last coordinates plotted in COORDS 
C $B737 Call PIXEL-ADD in ROM: HL will hold the address of the display file byte and A holds the position of the pixel within the byte.
C $B73A Copy the position of the pixel into B and increment it.
C $B73C Load A with 254 because ..... ??????

C $B745 Return.


; Other stuff related to this:
; routine34
C $B8BD Preserve BC - what is in it???
C $B8BE If unknown54==128 then jump to $B8CA to ...???
C $B8C5 Otherwise call routine28_19 to ... then restore BC and return. ???
C $B8CA If unknown48==4 then jump to $B8D8 to call PLOT-SUB in ROM / restore BC / return.  ???
C $B8D1 If unknown49 is in the range 1-7 then jump to $B8D8 to restore BC / return.
C $B8D8 Otherwise continue.
C $B8D8 Call PLOT-SUB in ROM to plot the pixel whose coordinates are on the calculator stack.
C $B8DB Restore BC.
C $B8DC Return.
