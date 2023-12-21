; 28th July 2020	-	routine53
D $C703 Converts display coordinates into map position coordinates.

C $C703 Store current wizard position in #R$E005.
C $C706 Call #R$E007 to convert cursor position into coordinates (L, H).
C $C708 Return if PO flags set "???"
C $C709 Calculate the row number.
C $C70C Calculate the column number.
C $C70F Return.
