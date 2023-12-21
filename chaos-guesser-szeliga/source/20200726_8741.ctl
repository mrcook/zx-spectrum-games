; 26th July 2020	TUR_DO

D $8741 The Turmoil spell jumbles objects around on the board. Gollop once said there is a bug so the spell doesn't work as often as it should!
C $8741 Call #R$9760 to determine whether the spell will succeed.
C $8744 If the spell failed then jump to #R$87EB to display message and return.
C $874B Call #R$A173 to set all objects as movable.
C $874E Point HL at #R$E01F.
C $8751 Copy the address of #R$E01F into #R$AC14.
C $8754 Set loop counter to map size.
C $8756 Preserve loop counter.
C $8757 Load the byte at the current position.
C $8758 If the map is empty at this position then jump to #R$87DF to move on.
C $875C Point HL at the corresponding byte in table 4.
C $8760 Test bit 7 for the current object to see if it is movable in this turn.
C $8762 If we are not moving this object then jump to #R$87DF to move along.
C $8764 Load HL with address of current map position.
C $8767 Store the current object code in #R$873C [CREature 000?]
C $876A Set up offset into table 3.
C $876D Point HL into table 3 [animation frame].
C $876E Load the animation byte into A.
C $876F Store it in #R$8740.
C $8772 Set up offset to table 4.
C $8775 Point HL into table 4 [owner + flags].
C $8776 Load A with the owner/flags info for the current object.
C $8777 Store it in #R$873D.
C $877A Point HL into table 5.
C $877B Copy the byte from table 5 into #R$873E, in case a wizard was mounted on this creature.
C $877F Point HL into table 6 ["???"]
C $8780 Copy the byte from table 6 into #R$873F.
C $8784 Call #R$904B to put a random number in #R$907A.
C $8787 Point HL at #R$907A.
C $878A If the value in A is greater than or equal to 159, which would take us off the map, then jump back to #$8784.
C $8790 A now has a value that is a position in the map so load HL with #R$E01F.
C $8793 Set up the random offset in DE.
C $8796 Add the offset to HL and store in #R$AC12.
C $879A Load the object code for the random position.
C $879B If the destination is not available then jump to #R$8784.
C $879E If the object is in the border then jump to #R$8784.
C $87A3 Call #R$A18A to display the twirling animation over the object.
C $87A6 Load HL with the cursor position, i.e. destination.
C $87A9 Load A with the object code.
C $87AC Store the object in the new position.
C $87AD Set up an offset to table 3 [animation].
C $87B0 Point HL at the animation byte for the new position.
C $87B1 Copy the object's animation data to the new position.
C $87B5 Point HL into table 4 [owner/flags].
C $87B9 Load A with the owner/flag info the current object
C $87BC Make sure bit 7 is set to show that the object has been moved.
C $87BE Store the owner/flag information for the current object.
C $87BF Point HL into table 5 - IDs of mounted wizards.
C $87C0 Copy the wizard ID [could have been 0 if no wizard was mounted on the creature] for this object into table 5, indicating that this wizard is now mounted.
C $87C4 Point HL into table 6 which contains ..."???"
C $87C5 Copy the byte that was in the old table 6 position to the new position "???"
C $87C9 Load HL with the current map pointer.
C $87CC Set the current map slot to empty.
C $87CE Set the corresponding slot in map 5 to empty.
C $87D4 Set the corresponding slot in map 6 to empty.
C $87DA Call #R$C0D8 to set empty cells in map 1 to '1' ,  and draw the border.
C $87DD Wait for an interrupt.
C $87DE Wait for an interrupt.
C $87DF Reload current map position into HL.
C $87E2 Increment map pointer.
C $87E3 Store it in #R$AC14.
C $87E6 Restore loop counter.
C $87E7 Decrement loop counter.
C $87E8 Loop back.
C $87EB Call #R$97A3 to display whether the spell succeeded or failed.
C $87EE Return.
