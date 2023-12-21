; 24th July 2020	routine57

D $C859 Called by routine56 with an object code for a wizard in A.
C $C859 Subtract 41 from the wizard object code in A.
C $C85B Store the result in unknown60 - i.e. a player number 0 to 7.
C $C85E Point HL at the "current player" variable.
C $C861 Compare A with this variable.
C $C862 If they are the same value then return.
C $C863 Load HL with the address that the cursor relates to.
C $C866 Load DE with the address of the map area object table.
C $C869 Reset the carry flag.
C $C86A Calculate the offset between the start of the map and the cursor.
C $C86C Load it into A.
C $C86D Increment the value in BUFPNT.
C $C871 Store the offset at the location pointed to by BUFPNT - the offset between the target wizard and the current computer-controlled player.
C $C872 Point HL at the map area object table.
C $C875 Set loop counter for map length.
C $C877 Preserve loop counter.
C $C878 Preserve map pointer.
C $C879 Load the byte from the current map location.
C $C87A Load it into C.
C $C87B See if the map slot is empty.
C $C87C If it is then jump to routine57_1 $C8A1.
C $C87E Compare with the code for a Magic Castle.
C $C880 If it is later in the object table (Dark Citadel, Wall, Wizard) then jump to routine57_1 $C8A1.
C $C883 Otherwise the object has a code 2-38  so we point HL into table 4.
C $C887 Load the owner information into A.
C $C888 Mask off the owner number.
C $C88A Store the result in E.
C $C88B Load A with the player number 0-7 that was stored earlier at #R$C85B.
C $C88E Compare the two values.
C $C88F If they are not the same then jump to routine57_1 $C8A1.
C $C891 Otherwise point HL at THRTAB.
C $C894 Load A with the object code from the current map location -  see #R$C87A.
C $C898 Divide it by 4. "???"
C $C89C And add the entry pointed at by BUFPNT "???"



C $C8A1 Restore map pointer.
C $C8A2 Increment map pointer.
C $C8A3 Restore loop counter.
C $C8A4 Decrement loop counter and loop back.
C $C8A6 Once the loop is finished, load HL with the value of #R$CD86.
C $C8A9 Load A with the value of #R$CC55 "???"
C $C8AC Add the value from  #R$CD86. "???"
C $C8AD ...
C $C8AE Advance #R$CD86.
C $C8B6 Return.
