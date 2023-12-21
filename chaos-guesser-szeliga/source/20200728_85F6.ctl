; IN PROGRESS	28th July 2020	RaiseDead

C $85F6 If the current player is computer-controlled then jump to #R$8639.
C $85FC Hugh Mann:  Clear bottom row of the screen.
C $85FF Set P FLAG to 3 so that "OVER 1" is activated for printing.
C $8604 Allow user to interact with the objects on the map.
C $8607 Call KEYBOARD in ROM.
C $860A If they pressed 'S' to select a creature then jump to #R$861A.
C $860E If they pressed 'K' to cancel then jump to #R$8604.
C $8612 Play #R$C2B1 - the "CANCEL" sound effect.
C $8618 Enable interrupts.
C $8619 Return.
C $861A Load A with the object at the cursor.
C $861F If the monstrous retard has tried to resurrect AN EMPTY CELL then jump to #R$8604.
C $8621 Otherwise cbeck that they haven't been equally stupid and tried to RAISE A LIVING CREATURE...
C $8628 Sigh, they did, so jump to #R$8604.
C $862A This seems a brighter player so call #R$9786 to see if the dead creature is in range.
C $862D Nope - jump to #R$8604.
C $8630 It is in range but do we have line of sight to it? [I think "???"] 
C $8633 Nope - jump to #R$8604.
C $8635 My goodness, conditions met - HOLD ON, LAZARUS, I'M ON MY WAY!
C $8638 Return.
C $8639 Store address of #R$D3F2 in #R$CD86.
C $863F Store address of #R$E01F in #R$AC12.
C $8645 Set loop counter to map size.
C $8647 Preserve loop counter.
C $8648 Load A with the object code from the map.
C $8649 Store it temporarily in #R$A172.
C $864C Point HL at byte in #R$E160.
C $8650 Load A with animation frame info.
C $8651 If the object IS NOT DEAD, DAMMIT, jump to #R$8676.
C $8655 The thing's kicked the bucket so point HL at #R$C6D4 "???"
C $8658 ... "???"
C $865A Load A with the object code.
C $865D ...

C $867D Restore loop counter.
C $867E Loop back to #R$8647.

C $8694 Set #R$975F to 0.  "???"
C $8699 Return.
C $869A Load HL with address of #R$E01F.
C $869D Set up offset to "???"
C $86A0 Load HL with the address of "???"
C $86A4 ...
C $86A8 Point HL into #R$E160.
C $86AC If the object is not dead then jump to #R$868D.

C $86B1 Is the spell's target in range?
C $86B4 Nope - jump to #R$868D.
C $86B7 Is ....?
C $86Ba Nope - jump to #R$868D.
C $86BC Display information message.
C $86Bf My goodness, conditions met - HOLD ON, LAZARUS, I'M ON MY WAY!
C $86C2 Return.
