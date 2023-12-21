D $AC0F This variable store the number of players in the current game.
D $D391 This variable is used in #R$BCA3 to store the number of the currently selected player.
D $C3B3 This routine displays the information screen for the object under the cursor.

D $BC96 Handles keyboard and displaying information about objects on screen.
C $BC96 Call KEYBOARD in ROM.
C $BC99 If decoded key is not 'I' then jump to #R$BCA3 to see if the player is holding down a wizard number.
C $BC9D Call #R$C3B3 to display the information screen for the object under the cursor.
C $BCA0 Wait for an interrupt and then jump to #R$BCE5 to check for cursor being moved.
D $BCA3 This routine deals with the player pressing a key in the range 1 to 8 and then highlights that player's creations on the game board.
C $BCA3 Call KEYBOARD in ROM to get the current key being pressed.
C $BCA6 We only want to deal with keys 1-8 so if decoded key is greater than '8' or less than '1' then jump to #R$BCE5 to deal with cursor being moved instead.
C $BCB0 Subtract $31 to convert keycode into player number.
C $BCB2 If value is greater than or equal to the number of players in the current game then jump to #R$BCE5 to deal with cursor movement instead.
C $BCB9 Store the number being pressed by the user to select a player in #R$D391 (previously 'unknown68').
C $BCBC Call #R$C0D8 to draw the blue border and reset frame animation value for empty cells in map area table 3.
C $BCBF Wait for an interrupt.
C $BCC0 Call #R$D392 to make the currently selected wizard and his creations flash.
C $BCC3 Set A up to "point" to the currently selected player's name by loading the currently selected player number back into A and add $29 as offset to wizards in game messages table 1.
C $BCC8 Set BC to coordinates (0,22) and set ATTR-T to $46 (bright yellow on black).
C $BCD0 Print the currently selected wizard's name.
C $BCD3 Now append "'s creations" to the wizard's name.
C $BCD8 Call KEY_SCAN routine in ROM.
C $BCDB If E is not $FF jump back to routine41_1. This prints messages and flashes the wizard and his creatures again while key is held down.
C $BCDE Clear the bottom row of the display, e.g. delete "GANDALF'S CREATIONS"
C $BCE1 Call #R$C0D8 to draw the blue border and reset frame animation value for empty cells in map area table 3.
C $BCE4 Wait for next interrupt.
C $BCEF Reset Carry flag and subtract BC from HL - why???
C $BCF0 Clear the bottom row of the display if the cursor is not on an object ???
C $BCF5 Store cursor coordinates in LBC94.
C $BCFA Call routine42 to display UDG at cursor coordinates.
C $BCFD Look up in map area table 4 the wizard number for the current object and store in unknown27.
C $BC00 ... (where did this bit go? ....)
C $BD0A Copy entry into unknown27.
C $BC0E ... (where did this bit go? ....)
C $BD11 Set ATTR T to bright cyan on black.
C $BD16 Load object ID and jump to routine41_7 if there is no object at the current map coordinates.
C $BD1A Display the current object name at (0,22).
C $BD20 Set ATTR T to bright green on black.
D $AC10 Bit 3 is used to indicate whether the current object is ASLEEP. Bits 0-2 for the owner/wizard.
C $BD25 Test bit 3 of unknown27 to see if is ASLEEP. Jump to #R$BD33 if not ASLEEP.
C $BD2C Print ASLEEP string.
C $BD31 ???
C $BD33 See if the current animation value in map area table 3 is '4' to represent 'DEAD'.
C $BD3A If object is not dead then jump to routine41_4, otherwise display "DEAD" string.
C $BD43 Point into map area table 3 [Ed: he means table 5] which contains the animation value.
C $BD47 Set ATTR T to bright white on black (usually for NEUTRAL).
C $BD4C If the current object's animation frame is not zero then jump to routine41_5.
C $BD50 Otherwise look up the owner wizard number and if it is not 0 then set ATTR T to bright cyan on black (usually for CHAOS).
C $BD5D Display '#' character.
C $BD62 If the object under the cursor is one of the other wizards then jump to #R$BD88.
C $BD6B Otherwise point HL into corresponding slot in map area table 4 which contains owner numbers.
C $BD6F We want to display the wizard's name in brackets after the creature name so set ATTR T to bright yellow on black.
C $BD74 Preserve HL, and print '(', and restore HL.
C $BD7B Display wizard name and print ')'.
C $BD88 Delay loop.
C $BD92 Call routine42 to display current UDG at the cursor.
C $BD98 Return if there is no object at the cursor.
C $BD9B Otherwise halt for a bit and set the corresponding entry in second map table to '1' to indicate ...?
C $BDA4 Return.


D $D392 This routine makes the currently selected wizard and his creations flash. The player number is stored in #R$D391
C $D392 Flashing routine...



















