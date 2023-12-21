; 25th July 2020	RAISDO

C $86C3 Call #R$A18A to display turning animation at spell target.
C $86C6 Call #R$9760 to determine if a spell succeeds and then update the global Chaos/Law balance.
C $86C9 If the spell failed then return.
C $86CE Otherwise load HL with the cursor position.
C $86D1 Load DE with an offset into table 3 [animation frames].
C $86D4 Point HL into table 3.
C $86D5 Set the corresponding animation frame to 0 - PRAISE JESUS! HE IS RAISED FROM THE DEAD!
C $86D7 Load DE with an offset of 160 bytes.
C $86DA Point HL at the corresponding byte in table 4 [owners etc.]
C $86DB Load E with 96 to represent bit5=UNDEAD"???" and bit6="???"
C $86DD Load A with the current player number.
C $86E0 Set the two flags for the resurrected object.
C $86E1 Store the object's attributes in table 4.
C $86E2 Load DE with an offset into table 6 "???"
C $86E5 Point HL into table 6.
C $86E6 Set the byte to 0 because "???"
C $86E8 Call #R$C0DD to set empty cells in map 1 from '0' to '1'. set map 2 to '1' and draw the border.
C $86EB Call #R$97A3 to display whether the spell succeeded or failed.
C $86EE Return.
