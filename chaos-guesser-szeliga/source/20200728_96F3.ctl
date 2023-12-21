; IN PROGRESS	28th July 2020	routine08

C $96F3 Load HL with the address of #R$AC16 [the modifiers for wizards].
C $96F6 Load A with the code for the current wizard.
C $96F9 Set an offset for the current wizard.
C $96FC Point HL at the modifier byte for the current wizard.
C $96FD If the wizard HAS BEEN SLAIN then jump to #R$9668.
C $9702 Otherwise, praise be, he prevails still and we get a pointer to his TOME OF MIGHTY SPELLS.
C $9705 Get a random number from the bug-infested RANDY. Lie down with dogs, wake up with fleas. JUST SAYING.
C $9708 Add to A so that it contains 12 to 21. "???"
C $9717 Set loop counter to 20 for the wizard's maximum number of spells.
C $9719 Preserve loop counter.
C $971A "???"
C $971F Load the wizard's spell into A.
C $9723 Skip it if it is 0, and jump to #R$9751 to get the next one.
C $9726 Store the current spell in #R$937B and calculate the chance of casting the curret spell.
C $972C ...
C $9735 ...
C $9738 Clear the bottom line of the screen.
C $973B "???"
C $9741 ...
C $974D ...
C $9751 ...
C $975C Jump to #R$9668.
