; 25th July 2020	routine44	BDE7	loads data from tables 4,5,6

D $BDE7 Set up temporary variables.
C $BDE7 Load HL with the current cursor position.
C $BDEA Copy to #R$AC14.
C $BDED Load A with the object at the cursor.
C $BDF1 Save to #R$AC0C.
C $BDF4 Load A with the object properties from table 4.
C $BDF9 Save in #R$AC10.
C $BDFC Load A with the mounted wizard/trapped creature from table 5.
C $BE01 Save in #R$AC09.
C $BE04 Load A with the corresponding byte from table 6. [owner ID of creature in Table 5 "???"]
C $BE06 Save in #R$AC08.
C $BE09 Return.
