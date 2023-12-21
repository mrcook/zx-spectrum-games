; IN PROGRESS		14th August		-	routine82

C $D7EE Set the number of attempts for this spell to a max value of 8.
C $D7F3 If the current spell is Magic Wood or Shadow Wood then jump to #R$9AEF.
C $D7FB Otherwise set the number of spell attempts to 1 [for a castle or citadel].
C $D800 If the current player is computer-controlled then jump to #R$D811.
C $D806 If the current spell is for a Magic Wood then jump to #R$D830. [but there is no path to here "???"
C $D80D Interact with the user to place and cast the current spell.
C $D810 Return.
C $D811 If the current spell is a Magic Castle or earlier then jump to #R$9B1C.
C $D819 Otherwise if the object at the cursor is a Wood or a Wall then jump to #R$9B1C.
C $D827 Set #R$975F to 0 "???"
C $D82C Return.
