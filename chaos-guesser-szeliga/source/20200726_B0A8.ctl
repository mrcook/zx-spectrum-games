; 26th July 2020	routine24	B0A8

C $B0A8 Load A with ... "???"
C $B0AB Preserve map coordinates.
C $B0AC ...

C $B0AF Set ATTR T to bright cyan on black.
C $B0B4 Display #R$D05A "(FLYING)" at (11,16)
C $B0BC Wait for no key to be pressed.
C $B0BF Wait for a key to be pressed.
C $B0C2 If the current player is human then jump to #R$B0CB.
C $B0C8 Otherwise call #R$C955.
C $B0CB Clear the bottom row of the screen.
C $B0CE Restore map coordinates.
C $B0CF Save map coordinates in #R$AC04.
C $B0D3 Dunno ... "???"
C $B0DE If the current player is human then jump to #R$B0E9.
C $B0E4 Otherwise call #R$C9DC to ... "???" and jump to #R$B0F8.
C $B0E9 Set UDG system variable to #R$C35D for winged sprite.
C $B0EF Call #R$BC96 to handles keyboard and display information about objects on screen.
C $B0F2 Call KEYBOARD in ROM.
C $B0F5 Store the key in #R$AC32.
C $B0F8 Load the pressed key code into A.
C $B0FB If they pressed 'I' for information then call #R$C3B3.
C $B100 If they did NOT press 'K' to cancel then jump to #R$B114.
C $B104 Otherwise play #R$C2B1.
C $B10A Enable interrupts.
C $B10B ...

C $B131 Set ATTR T to bright yellow on black.
C $B136 Print #R$D03A "OUT OF RANGE STRING" at (0,22).
C $B13E Set busy wait loop counter.
C $B140 Wait for an interrupt.
C $B141 Loop back to #R$B140.
C $B143 Wait for a key to be pressed.
C $B146 Jump to #R$B0DE.
C $B148 Play #R$C2BB.
C $B14E Enable interrupts.
C $B14F ...
C $B15E Jump to #R$AE7A.
