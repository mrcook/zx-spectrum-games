D $E2A0 When I killed an enemy creature, a '*' appeared in the fuse fifth map area memory map - code $2A.
D $unknown71 Bit 1 is set if the current object is a wizard.
D $unknown87 This is the first column value used when displaying attributes.
D $unknown88 These are alternating row and column values used when displaying attributes.
D $C3B3 Displays information about the current wizard/creature/object.

C $C3B3 Disable interrupts and preserve registers.
C $C3B8 If the user is inspecting a blank cell then jump to #R$C5E8 to clean up and return.
C $C3C0 Store code for current object in #R$C39F.
C $C3C3 Bit 1 of unknown71 is set if the current object is a wizard.
C $C3CF Look up corresponding byte in fifth_map_area_table and jump to routine50_1 if it is 0   ???
C $C3DA Otherwise store in unknown70 and set bit 2 of unknown71   Not called for equipped wizard...???
C $C3E2 Clear the screen and play sound effect 22.
C $C3EB Set ATTR T to bright green on black and draw the border.
C $C3F3 Set ATTR T to black on bright green and display "PRESS ANY KEY" at (0,16).
C $C400 Set ATTR T to bright yellow on black and display creature's name at (4,2).
C $C40E Clear 'display comma flag' and if we are looking at a wizard then skip ahead to routine50_7.
C $C419 Not a wizard so we need to display properties for creatures and objects.
C $C429 Display 'KNIFE' property?
C $C435 Display 'SWORD' property?
C $C441 Display 'ARMOUR' property?
C $C44F Display 'SHIELD' property?
C $C45D Display 'FLYING' property?
C $C469 Display 'SHADOW' property?
C $C476 Properties have been displayed for creatures/objects so jump to routine50_14.
C $C479 Get LAW/CHAOS attribute of current object. Skip to routine50_9 if it is 0, or routine50_8 if negative for CHAOS.
C $C486 Preserve LAW value.
C $C48A Set ATTR T to bright cyan on black and print "(LAW".
C $C494 Restore LAW value and display, then close bracket.
C $C49F Jump to routine50_9.
C $C4A1 Set ATTR T to bright magenta on black and display "(CHAOS".
C $C4AB Restore LAW/CHAOS value and negate it.
C $C4AE Display CHAOS value and close bracket.
C $C4B8 Set ATTR T to bright green on black and display coord's to (4,4).
C $C4C0 Don't display spell properties for MOUNTable creatures --> skip to routine50_10.
C $C4CD Print "MOUNT".
C $C4D2 Jump to routine50_11 if unknown71 is zero... ARE WE CHECKING IF A DIRTY WIZARD HAS MOUNTED THE HORSE?!
C $C4D8 Preserve value of unknown70, print "(", Wizard's name, ")".
C $C4E7 Set the comma flag in case there are more properties to display.
C $C4EC Only display "FLYING" for valid creatures.
C $C4FE Only display "UNDEAD" for valid creatures and as long as bit 6 in map area 4 is set.
C $C51B Set ATTR T to bright cyan on black.
C $C520 Store message number and offset into object data.
C $C52A Point HL at the data block containing display coord's for attributes.
C $C52D Set loop counter to 7 for the 7 attributes.
C $C52F Preserve loop counter and load coord's for next attribute into (B, C), incrementing HL after each.
C $C534 Preserve pointer to coord's.
C $C535 Display the current attribute name and numerical value.
C $C538 Restore pointer to display coord's.
C $C539 Restore loop counter and loop.
C $C53C If bit 0 of unknown71 is set then we have a wizard and need to jump to routine50_18 to display his spells.
C $C543 Set ATTR T to bright cyan on black.
C $C548 Display "CASTING CHANCE=" at (4,18)
C $C550 Load A with the value of unknown67 (which is initialised to 2) and increment A.
C $C554 If A=10 then jump to routine50_16
C $C558 Spell is guaranteed to succeed so display "10" and jump to routine50_17 to add the "0%".
C $C55A Print the message "10".
C $C55D Jump to routine50_17 to append "0%".
C $C55F Print "0"
C $C564 Print "0%" as two separate characters.
C $C56E Only display spells and abilities for wizards. Jump to routine50_21 otherwise.
C $C575 Set ATTR T to bright yellow on black, ready to print SPELLS=... and ABILITY=...
C $C577 Display "SPELLS="
C $C582 Get the value for the current object, i.e. number of spells.
C $C58B If it is less than 10 then jump to routine50_20.
C $C590 If it is not 20 then jump to routine50_19.
C $C594 The number of spells is in the range 10-19 so print a leading '1' digit.
C $C599 Load A with 0 and jump to routine50_20.
C $C59D Print the second digit of the number of spells.
C $C5A6 Print the single digit for the number of spells.
C $C5AB Print "ABILITY=" at (14,12).
C $C5B3 Display the current creature's ABILITY as a digit.
C $C5C1 Jump to routine50_22 if a wizard is not selected.
C $C5C7 Reset flag (?) in unknown71 and reset unknown70.
C $C5D3 Call routines to randomise the seed.
C $C5D9 Jump back to routine50_1 because if the wizard had MOUNTED a creature then we now need to display ITS properties.
C $C5DC Randomise seed and clear screen.
C $C5E5 Call routine49_0 to ... (we don't know yet).
C $C5E8 Restore registers, enable interrupts and return.
