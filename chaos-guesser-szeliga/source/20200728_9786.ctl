; 28th July 2020  -  routine10

D $9786 Sees if a spell's target is in range and sets P flag if so.
C $9786 Load HL with the address of the current wizard in #R$E01F from #R$AC14.
C $9789 Call #R$C703 to calculate his map coordinates and store in #R$BEE9.
C $978F Load HL with the position of the cursor.
C $9792 Call #R$C703 to convert the cursor position into map coordinates and store in #R$BEEB.
C $9798 Call #R$BEEF to calculate distance to cursor and set #R$BEE8.
C $979B Load HL with the distance to the cursor.
C $979E Load A with the maximum casting distance for the current spell.
C $97A1 Compare the two values: if the distance to the target is less than or equal to the maximum then P will be set for success.
C $97A2 Return.
