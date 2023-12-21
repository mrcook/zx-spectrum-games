; 25th July 2020	More on the "Subversion" spell
C $851B Call #R$85EC to load HL with the cursor position.
C $851E If there was a byte in table 5 then jump back to #R$8505 - is this because table 5 holds Wizard IDs and you cannot subvert a wizard?
C $8520 Load HL with the cursor position.
C $8523 Load A with the current object.
C $8524 If it is a gooey blob or later object from the object table, then jump back to #R$8505 - because you cannot take control of these objects either.
C $8529 If the map is empty at the cursor, jump back to #R$8505 - you cannot control what is not there!
C $852C Call routine to see if the target is in range [I think].
C $852F Jump back to  #R$8505 if it is not in range [I think].
C $8532 Call routine to see if there is line of sight to the object - the routine uses 'LOF' which might be 'Line Of Fire' ????
C $8535 Jump back to  #R$8505 if ... if it's not???
C $8537 All conditions are met so call #R$859C to carry out the spell.
C $853A Return.
C $853B ...
C $8557 ...
C $8563 Call routine to pause for a while.
C $8566 Return.


C $859B Return.
C $859C ...

C $85A2 Call #R$967A to display wizard name, spell being cast, and spell casting range.
C $85A5 Call #R$A18A to display a twirling animation at the cursor coordinates 

C $85B7 Load E with 19 which is the offset to a creature's MAGIC RESISTANCE.
C $85B9 Call routine to load A with the target creature's magic resistance.
C $85BC Increment the value.
C $85BD Store the increment value in #R$A172.
C $85C0 Call #R$904B  to load A with a random number that is greater than or equal to 10.
C $85C3 If the value in A is less than the creature's magic resistance then the spell succeeded so jump to #R$85D3.
C $85CA The spell failed so load A with 0.
C $85CC Set #R$9167 to 0.
C $85CF Call routine to display a message that the spell failed.
C $85D2 Return.
C $85D3 The spell succeeded so load HL with the cursor position.
C $85D6 Load DE with an offset to the 4th table.
C $85D9 Point HL at the corresponding byte in the 4th table.
C $85DA Load A with the byte from the 4th table.
C $85DB Blank out the owner from the bottom three bits.
C $85DD Save the modified byte from A into e.
C $85DE Load A with the number of the current player.
C $85E1 Add the saved bits onto A from E.
C $85E2 Save the updated byte back into the 4th table - i.e. we have changed the owner of the creature.
C $85E3 Set the #R$9167 flag to 1.
C $85E8 Call routine to say that the spell succeeded.
C $85EB Return.
C $85EC Load DE with an offset of 4 tables.
C $85EF Point HL into table 5.
C $85F3 Load A with the corresponding byte from table 5.
C $85F4 Set the zero flag if A is empty.
C $85F5 Return.
