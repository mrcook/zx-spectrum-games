; IN PROGRESS	-	routine56

C $C825 Initialise the contents of #R$D3F2 to $FF00 etc.
C $C82E Point #R$AC12 at #R$E01F.
C $C834 Set loop counter to map size.
C $C836 Preserve loop counter.
C $C837 Load the current object code from the map.
C $C83B If it is a wizard then call #R$C859 to ... "???"
C $C840 Load HL with the address of the current position in the map.
C $C843 Load A with the corresponding byte from #R$E2A0 [mounted wizards]
C $C84A If the wizard is mounted then call #R$C859 to ... "???"
C $C84D Increment the map pointer.
C $C854 Loop back.
C $C857 Return.
