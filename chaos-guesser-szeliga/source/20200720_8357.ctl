
; 20th July 2020    routine09, as called by routine04.
;
D $8357 This is called by spells that the wizard casts on himself.

C $8357 If player is human, display wizard name, spell being cast, and spell casting range.
C $8360 Call routine09 to determine if a spell succeeds and then updates the global Chaos/Law balance.
C $8363 Call routine12 to calculate the coordinates of the current player.
C $8366 Call routine20 to display the twirling effect on the target of the spell.
C $8369 Return
