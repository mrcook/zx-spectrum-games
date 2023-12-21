; 23rd July 2020	$9ADD	Trees&Castles spell

D $937B This variable holds the number of the spell currently being cast.
D $9ADD There are various trees/castles dealt with by this spell.
D $981A From looking at $9AFC & $9B76 it looks like this routine is used to cast a Shadow Wood, Walls. I suspect we are choosing where to place spells that have multiple attempts. Perhaps other stuff too!

C $9ADD Set unknown11 at $97CE to 8.
C $9AE2 Load the code for the current spell into A.
C $9AE5 If it is for the Magic Wood or Shadow Wood then jump to $9AEF.
C $9AEA Set unknown11 at $97CE to 1 --> is that so we know we are looking at a castle instead?
C $9AEF If the current player is computer-controlled then jump to $9B00.
C $9AF5 This is a human player so load A with the current spell.
C $9AF8 If it is for a Magic Wood then jump to $9B1F.
C $9AFC Otherwise it is for a Shadow Wood so call $981A to ... ???
C $9AFF Return
C $9B00 Pointlessly load A with the current spell.
C $9B01 Load A with the value in E....???????????????????
C $9B02 Then subtract the value in E from A ... which will always give 0...??????????
C $9B03 Compare 0 with 38 and always jump to $9B1C?!??
C $9B08 Otherwise load the object code at the cursor into A.
C $9B0C Compare it with the code for a Magic Castle.
C $9B0E If it is earlier in the object table (i.e. a wood) then jump to $9B1C.
C $9B11 If it is a wizard then reset unknown 10 $975F.
C $9B1B Return.
C $9B1C Call routine to display wizard's name, spell and range.
C $9B1F ...

C $9B2A Call routine to see if the spell succeeds and then updates the global Chaos/Law balance.
C $9B2D ...

C $9B52 Display a twirling animation at the cursor coordinates when the spell is cast.
C $9B55 If the spell failed then jump to $9B71.
C $9B5B Otherwise load A with the number of the current spell.
C $955E Load HL with the current cursor position.
C $9B61 Store the current spell number in the map.
C $9B62 Set up an offset of 3 tables.
C $9B65 Move HL into table 4 [owner numbers etc].
C $9B66 Store the current player number in table 4.
C $9B6A Call $C0D8 (???) to update tables and draw border.
C $9B6D Restore loop counter.
C $9B6E Loop back to $9B31.
C $9B70 Return.
C $9B71 Display whether spell succeeded or failed.
C $9B74 ...
C $9B75 Return.
