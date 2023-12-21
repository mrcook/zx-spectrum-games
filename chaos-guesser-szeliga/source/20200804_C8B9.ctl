; 4th August 2020	-	routine58

D $C8B9 Sets the value of #R$C8B7 to be the map address of the target wizard. The spell will later be attempted to be cast in the slot next to the casting wizard which is in the direction of the target wizard.

C $C8B9 Load E with the 2nd byte from #R$D3F2. This value is the code of an enemy wizard in whose direction a spell will be cast.
C $C8BD Point HL at the map.
C $C8C0 Add the map offset from E.
C $C8C3 Store the map address of the target in #R$C8B7 so that the spell can be cast in an adjacent map slot in the direction of the target wizard.
C $C8C6 Return.
