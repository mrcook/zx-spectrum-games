; IN PROGRESS -  routine52

D $C67A This routine ignores objects that belong to the current wizard, the current wizard, empty slots, dead creatures, ...
D $C67A My current best guess is that this is returning some sort of threat level based on distance from the current wizard.

C $C67A Load HL with the address of a position in #R$E01F.
C $C67D If the map position is empty then jump to #R$CD62 to return with A holding 0.
C $C681 Point HL at the corresponding byte in #R$E160 [animation frame]
C $C685 Load the animation byte.
C $C686 If the object is "dead" then jump to #R$C6D2 and return with A holding 0.
C $C68A Point HL into #R$E200.
C $C68D Add offset into #R$E200 [object properties]
C $C691 Load the byte from #R$E200 and mask off the owner bits.
C $C694 If the object belongs to the current wizard then jump to #R$C6D2 to return with A holding 0..
C $C69A We *finally* have a potential target/enemy so load HL again with the address of a position in #R$E01F.
C $C69D Load the object's code from the map and copy into E.
C $C69F Subtract 2 from E because object IDs start at 2 so that we get an offset into #R$C6D4.
C $C6A3 Load HL with the address of #R$C6D4.
C $C6A6 Add offset to HL based on object ID.
C $C6A7 Copy entry from #R$C6D4 to #R$C679 - the "THREAT" from the current object "???"
C $C6AB Load HL again with the address of a position in #R$E01F - i.e. an enemy or his creature.

C $C6AE Convert display coordinates of the enemy or his creature into map position coordinates.
C $C6B1 Store their coordinates in #R$BEE9.
C $C6B4 Load memory address of current wizard into HL.
C $C6B7 Convert display coordinates of current wizard into map position coordinates and store in #R$BEEB.

C $C6BD Calculate the distance between the current wizard and the enemy target.
C $C6C0 Load A with the distance between points.
C $C6C3 Also load it into E.
C $C6C4 Add 4 to the value loaded earlier from #R$C6D4 "???"
C $C6C9 And add "???" to it.
C $C6CD Subtract the distance to the target.
C $C6CE If the distance is greater than the threat "???" then jump to #R$C6D2 to return 0.
C $C6D1 Otherwise return with the current threat level "???"

C $C6D1 Return.
C $C6D2 Reset A.
C $C6D3 Return.
