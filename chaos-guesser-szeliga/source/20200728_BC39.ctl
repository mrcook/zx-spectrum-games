; IN PROGRESS	28th July 2020	WIZKIL

C $BC39 ...

C $B4CF Point HL at cursor position of the KILLED WIZARD!!!!
C $B4D2 Load object code of the brutally murdered wizard into A.
C $B4D1 [XOR H is not in the debugger...!]
C $B4D2 Subtract 41 to get player number associated with the BUTCHERED VICTIM and store in #R$AC00
C $B4D8 Set object code to 0 - GANDALF, NOOOOOO!!!!
C $B4DA Load HL with the address of the modifier for this wizard.
C $B4E1 Set bit 4 to show this wizard, sadly, is NO MORE....
C $B4E3 Point HL into #R$E340.
C $B4EA Copy the byte from the #R$E340 to #R$E01F. "???"
C $B4EF Update map 1's empty slots, animation frames & draw border.
C $B4F2 Wait for an intterupt.
C $B4F3 Disable interrupts.
C $B4F4 Play #R$C2C5.
C $B4FA [Now all of the wizard's creations get canned, with the WOOP_D animation on each]

C $B60A Return.
