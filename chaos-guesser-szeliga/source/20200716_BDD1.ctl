D $BDD1 This routine returns with HL set to the entry in #R$E01F that corresponds to the 'S' game cursor
C $BDD1 Preserve coordinates of 'S' cursor on game board
C $BDD2 Decrement each coordinate since we will be calculating an offset into #R$E01F
C $BDD4 LET C += 16*B then LET B=0 in order to calculate the offset. NB: even though the playing area is 15 columns by 10 rows, it seems to me that Gollop has used 1 16x10 map area, perhaps to simplify the maths a little?
C $BDDC Store the offset in BC
C $BDE1 Point HL at #R$E01F and add the offset from BC
C $BDE5 Restore the cursor's coordinates into BC
C $BDE6 Return with HL pointing at the selected entry in #R$E01F
