D $E005 Used as a temporary variable to preserve pointer to game board object - see #R$D3C8
D $E007 Converts a pointer to a game board object into coordinates in HL as (L, H)
D $E200 The bottom three bits hold the wizard number for the object in the corresponding slot in #R$E01F

D $D392 This routine makes the currently selected wizard and his creations flash. The player number is stored in #R$D391.
C $D392 Disable interrupts and preserve registers.
C $D397 Point HL at #R$E01F.
C $D39A Set loop counter to 159 to cover all 160 bytes in the map.
C $D39C Preserve pointer to current map location and loop counter.
C $D39E Load byte for current map location into A.
C $D39F If it contains 0 then jump to #R$D3BE in order to process the next location in the map.
C $D3A2 Load A with the corresponding byte from #R$E160.
C $D3A7 See if A holds the value 4 which represents ??? which we ignore and move onto the next location by calling #R$D3BE.
C $D3AB Find the wizard associated with the current object by loading A with the corresponding byte from #R$E200.
C $D3B0 Point HL back at the selected object on the game board by selecting the corresponding byte in #R$E01F.
C $D3B5 Load E with lowest three bits of A.
C $D3B8 Load A with player number from #R$D391.
C $D3BB If the player number matches the value of E from #R$E200 then jump to #R$D3C8 to be a FLASHER!!!
C $D3BE Restore loop counter and pointer to current location in the map.
C $D3C0 Increment map location pointer.
C $D3C1 Loop back to #R$D39C to process the next map location.
C $D3C3 All map locations processed so restore registers and return.
C $D3C8 Store HL in #R$E005 - formerly 'unknown66'.
C $D3CD Call the CHAN-OPEN routine in ROM to open upper screen for writing to.
C $D3D0 Call #R$E007 to ... convert HL pointer into coordinates for printing???
C $D3D3 Print a filled-in square at the coord's in HL, i.e. (L, H) - i.e. top-left of flashing square
C $D3DD Print another filled-in square for the top-right of the flashing square.
C $D3E0 Move down a row and print the bottom-left of the flasing square.
C $D3E8 Print bottom-right of the flashing square.
C $D3EE Jump to #R$D3BE to restore registers and return.
