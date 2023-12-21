; 29th July 2020	OFBORD

D $980E Sets the Z flag if the x-coord of the cursor is in the right-hand border.
D $980E The map slots go from (1,1) to (15,10)
C $980E Preserve HL.
C $980F Load HL with the address of a map object.
C $9812 Convert address into map position coordinates.
C $9815 Set Z flag if x-coordinate is 16, i.e. in the border.
C $9818 Restore HL.
C $9819 Return.
