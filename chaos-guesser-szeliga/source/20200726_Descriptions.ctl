; 26th July 2020	tables/routines descriptions
; tables
D $AC16 Each byte in this table represents the modifiers for each wizard. Bits 0,1=Magic Bow; Bit 1=Magic Knife; Bit 2=Magic Sword; Bit 3=Shadow Form; Bit 4=Killed; Bit 5=Magic Wings; Bit 6=Magic Shield; Bits 6,7=Magic Armour.
D $E01F Holds the IDs of objects to be *displayed* on the game board. See #R$E2A0.
D $E200 Bit 4 is the ILLUSION flag for this creature.
D $E2A0 This table holds the IDs of wizards who are mounted on the objects in #R$E01F.
; routines
D $834B routine03: Returns the modifier byte for the #R$AC0E [current_player].
D $8357 routine04: This is called by spells that the wizard casts on himself. It displays his data, updates L/C balance, and displays a twirling effect on his sprite.
D $9385 routine05: Used when casting a spell [#R$9168] to display a list of the wizard's spells and choose one to cast.



TODO:cook


D $97C7 routine06: Used when casting a spell [#R$9168] to load wizard modifier, determine if the spell will succeed => update L/C balance & cast spell.
D $96D1 routine07: A busy wait loop that also plays a sound effect.
D $96F3 routine08: 
D $9760 routine09: Determines if a spell succeeds and then updates the global Chaos/Law balance.
D $9768 routine10: Sets the P flag is the target of a spell is in range.
D $97A3 routine11: Displays whether the spell succeeded or failed.
D $97D1 routine12: The wizard is casting on the spells (such as Magic Armour) on himself. This routine finds the current wizard on the map to save the player having to navigate and highlight themselves!
D $981A routine13: From looking at $9AFC it looks like this routine is used to cast a Shadow Wood. Perhaps other stuff too!
D $98DB routine14: 
D $98F1 routine15: 
D $9941 routine16: 
D $9B85 routine17: 
D $9BB3 routine18:
D $9C0F routine19: 
D $A18A routine20: Displays a twirling animation at the target when the spell is cast.
D $AC36 routine21: Displays the name of the current wizard and highlights their creations.
D $ACC6 routine22: Displays cursor and processes key presses [S to select, 0 to exit map]
D $ACED routine23: [IN PROGRESS] Selects the object under the cursor.
D $B0A8 routine24  [IN PROGRESS] 
D $B168 routine25: 
D $B375 routine26: [looks like an attack routine]
D $B60D routine27: 
D $B626 routine28: Animates a lightning bolt from the wizard to the target of the spell.
D $B746 routine29: Used by #R$B626 to ...
D $B7D3 routine30: Used by #R$B746 to ...

D $B8DD routine35: Deals with ranged attacks.
D $BABE routine36: Deletes a sprite at the position given by #R$E005.
D $94A7 routine37: Display information about a spell or an object on the board
D $BC96 routine41: Handles keyboard and displaying information about objects on screen.
D $BDA5 routine42: Displays a 2x2 sprite [used by #R$BC96].
D $BDE7 routine44: Sets up temporary variables with values for tables 4,5,6.
D $BE21 routine45: 
D $BE52 routine46: 
D $BEB2 routine47: Displays the "ENGAGED TO ENEMY" message.
D $BEEF routine48: 
D $C0D8 routine49: Sets empty slots in #R$E01F to '1', animation frames to 0 in map3 and draws the border.
D $C63D routine51: 
D $C67A routine52: 
D $C703 routine53: 
D $C710 routine54: 
D $C78D routine55: 
D $C825 routine56: 
D $C859 routine57: Called by #R$C825 to ...
D $C8B9 routine58: 
D $C8C7 routine59: 
D $C955 routine60: 
D $C9D4 routine61: 
D $CA19 routine62: 
D $CA7C routine63: 
D $CA92 routine64: 
D $CBB9 routine65: 
D $CBC7 routine66: 
D $CCC3 routine67: 
D $CD92 routine68: 
D $CDB8 routine69: 
D $CDC0 routine70: 
D $D392 routine71: Highlights a wizard and all his creations.
D $D52E routine72: Applies a spell to a target.
D $D588 routine73: 
D $D5EC routine74: 
D $D602 routine75: 
D $D652 routine76: 
D $D686 routine77: 
D $D702 routine78: Subroutines of #R$99F1 to select a target for the spell.
D $D732 routine79: Deals with a successful #R$99F1.
D $D763 routine80: Displays explosion animation and sound effect.
D $D7A6 routine81: 
D $D7EE routine82: 
D $D82D routine83: 
D $D887 routine84: 
D $D8DE routine85: 

D $8F8B TREPUT:    The Magic Wood spell has a random chance of giving a wizard a new spell but this only happens if the wizard is *INSIDE* the tree, and then the tree dies. So I think that map 1 is for what to display on the screen, and map 5 is for wizard locations. Must also be used for mounted creatures so will check those next.
