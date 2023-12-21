; 20th July 2020    routine09, as called by routine04.
;
D $8357 This is called by spells that the wizard casts on himself.

C $8357 If player is human, display wizard name, spell being cast, and spell casting range.
C $8360 Call routine09 to determine if a spell succeeds and then updates the global Chaos/Law balance.
C $8363 Call routine12 to calculate the coordinates of the current player.
C $8366 Call routine20 to display the twirling effect on the target of the spell.
C $8369 Return

; HMM - let's do routine09 first then, eh, chaps?

; routine 09
D $9631 that line copies the illusion flag/byte from the illusion table uinto unknown2 so that we know whether the wizard is trying to cast an illusion or a real creature.
D $9166 unknown02 is used as a copy of the byte in the illusion table, to indicate if the current spell is an illusion. See #R$9760.

D $9760 This routine determines if a spell succeeds and then updates the global Chaos/Law balance.
C $9760 Load unknown2 which is set at $9631 as a flag for an illusionary target.
C $9763 If they are casting an illusion then jump to $9778 because illusions ALWAYS succeed. Like budgies.
C $9766 They want to cast a real creature so call get_random to see if they suck seed.  NB: I think the comments for the routine at $BE94 are incorrect, in that I think we are returned a number in the range 0-10 and not 11-15. I checked this in the debugger.
C $9769 Load the casting chance value of the current spell into E and increment the value.
C $976E Compare the random number with the casting chance in E. If the random number is less than E then the spell failed.
C $9772 Set spell_success_flag to 0. How American. "You didn't fail, you just didn't succeed."
C $9777 Return.
C $9778 Right - we've got rid of the boys, this is where the MEN hang out!  Let's start by setting the spell_success_flag to 1 (since that's what SET means, after all).
C $977D Oh FFS, another unknown - biab...   Well, looking at $930E we are loading the current spell's effect on the Chaos/Law balance of our universe.
C $9780 This makes sense - we have just successfully cast the spell so add the current CH_LAW value to the spell's delta and store back in the global CH_LAW variable.
C $9785 Return.
