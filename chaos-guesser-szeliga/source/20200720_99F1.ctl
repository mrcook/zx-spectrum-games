; 20th July 2020 - DISBELIEVE spell

C $99F1 Jump to disbelieve_spell_6 if this routine is being called for a computer-controlled player.
C $99F8 Call routine41 to display the board and allow the player to interact with objects on-screen.
C $99FB Call KEYBOARD in ROM to see if the player has pressed a key.
C $9A00 We are only checking here to see if they pressed either 'S' (Select) or 'K' (Cancel). If the user pressed 'S' to select an object to disbelieve then jump to disbelieve_spell_1.
C $9A02 If the user didn't press either 'S' or 'K' then jump back to $99F8 to wait for one of these keys.
C $9A06 The user pressed 'K' to cancel their current choice so play sound effect 11.
D $C2F6 This sound is played when the user cancels a spell (and perhaps at other times too).
C $9A0C The user has cancelled the spell so enable interrupts and return.
C $9A0E Right - let's get cracking with this spell. Er, by waiting for them not to be pressing a key.
C $9A11 Load the object at the current cursor position into and if the cretin of a player has tried to select an empty cell then jump back to disbelieve_spell_0 to start again.
C $9A18 Similarly, if they have selected an object that can't be disbelieved (object code for Gooey Blob onwards) then go back to let them choose something else.
C $9A1D They have chosen an object that can be disbelieved (2 King Cobra - 33 Zombie) so call disbelieve_spell_2 to carry out the spell.
C $9A20 Return.
C $9A21 Call routine20 to display a twirling animation at the cursor to indicate that a spell is being cast there.
C $9A24 Now we need to see if the spell is going to succeed or fail. Load HL with the address in map_area_object_table for the current cursor position.
C $9A27 Set spell_success_flag to 0.
C $9A2C Point HL at the entry for the owner number/asleep/undead information in map_area_table_4 that corresponds to the cursor position.
C $9A30 If the creature is real then jump to #R$9A45.
C $9A34 If the creature is an illusion then we need to see if the wizard has MOUNTED it so set HL to the corresponding entry in map_area_table_5
C $9A38 Copy the byte (a wizard ID) from table 5 to the map area. This is because when the spell is cast on a mounted wizard, the mount disappears so we are going to move the wizard from table 5 to table 1.
C $9A3D Call disbelieve_spell_4 to play sound effect and animate an explosion.
C $9A40 Set spell_success_flag to 1.
C $9A45 Call routine11 to display a message on the bottom line as to whether the casting spell of the spell succeeded or failed.
C $9A4B Set bit 5 of the object's byte in map_area_table_5 so that the object is marked to be disbelieved at #R$9ABE.
C $9A52 Play sound effect 3.
C $9A5B Set ATTR T to bright yellow on black.
C $9A60 Set explosion_sprite_pointer to the first frame of the explosion animation.
C $9A66 We need to convert the address of the map object into coordinates: Store the cursor position in unknown66 ready for use in the call to address_to_coordinate.
C $9A6F HL now contains game board coordinates in the form (L,H) of where to display the animation so store them in LC_POS.
C $9A72 Set loop counter to 7 for the seven frames of animation of the explosion.
C $9A74 Disable interrupts.
C $9A75 Preserve loop counter.
C $9A76 Print the current animation frame for the explosion.
C $9A7F Play sound effect.
C $9A82 Point HL at the next animation frame - 32 bytes per frame since we are using 2x2 sprites.
C $9A8C Restore loop counter.
C $9A8D Loop back round to display the next frame of the explosion animation.
C $9A8F Call routine49_0 to update the map area data, animation frame data and redraw the border.
C $9A92 Enable interrupts.
C $9A93 Wait for an interrupt.
C $9A94 Return.

D $9A95 Called for computer-controlled players.
C $9A95 Load HL with the map position of an enemy wizard.
C $9A98 Store the enemy wizard's address in #R$C78B.
C $9A9B ... "???"
C $


C $9AB1 Call GETPLA to increment HL through the map area and load the current object code into A.
C $9AB4 If the current object code is *NOT* FF then jump ahead to disbelieve_spell_8 to process it (I saw this somewhere else, and at the time wondered if he is using FF as an 'EOF'-type marker).
C $9AB8 We are at the end of the map so reset unknown10 [I can only ever see this being assigned to, not read...] ???
C $9ABD Return.
C $9ABE Point HL at the map area object table and load the byte for the current position into A (as indicated by the offset DE).
C $9AC9 Similarly to earlier at $9A18, if the current object cannot be disbelieved then jump back to disbelieve_spell7 
C $9ACE Point HL to the current object's entry in map_area_table_4 and test bit 5 to see if the object has been set as 'disbelieved'.
C $9AD4 If bit 5 is not set then jump back to  disbelieve_spell_7 to process the next map object, i.e. keep looking for the object which is set to be disbelieved.
C $9AD6 We have an object that has been set as disbelieved so display a message at the bottom of the screen with the wizard's name, spell name, spell range  by calling display_wizard_spell_range.
C $9AD9 Jump to the routine that displays the twirling animation / sees if the spell will succeed / play sound effect / etc.
C $9ADC Return.
