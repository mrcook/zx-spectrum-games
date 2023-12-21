; 25th July 2020	routine80 - Displays explosion animation and sound effect.

D $D763 Displays explosion animation and sound effect.
C $D763 Play #R$9121.
C $D76C Set ATTR T to bright yellow on black.
C $D771 Set pointer for explosion animation.
C $D777 Load HL with cursor coordinates.
C $D77A Store a copy in #R$E005.
C $D77D Call #R$E007 to get game board object into coordinates in HL.
C $D780 Store them in #R$DF4C.
C $D783 Set loop counter to 7.
C $D786 Disable interrupts.
C $D787 Load HL with the explosion animation pointer.
C $D78A Copy to #R$DF4A.
C $D78D Print the current explosion animation frame.
C $D790 Play sound effect.
C $D793 Set HL to point to the next animation frame.
C $D79A Store pointer to next animation frame in #R$A188.
C $D79D Restore loop counter.
C $D79E Decrement and loop.
C $D7A0 Call #R$C0D8.
C $D7A3 Enable interrupts.
C $D7A4 Wait for an interrupt.
C $D7A5 Return.
