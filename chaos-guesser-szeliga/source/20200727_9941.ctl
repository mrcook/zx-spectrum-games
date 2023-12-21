; 27th July 2020	routine16

D $9941 Sets information in #R$E0C0, #R$E160, #R$E200 for a new object.
C $9941 Load HL with the cursor position.
C $9944 Load A with the code of the current spell being cast.
C $9947 If it is for a gooey blob (7E47) or Magic Fire (7E4E) then jump to #R$9958.
C $994F Copy the object code at the cursor coordinates to #R$E340. "???"
C $9955 Load A with the code of the current spell.
C $9958 Load HL with the cursor position.
C $995B Load A with the code of the current spell being cast.
C $995C Set the animation frame timeout in #R$E0C0 to 1.
C $9962 Set the animation frame in #R$E160 to 0.
C $9966 Store the owner number in #R$E200.
C $996B Load A with #R$9166 - this is a copy of the byte from #R$915E to indicate whether the current spell is an illusion.
C $996F If it is a real object then jump to #R$9973.
C $9971 Otherwise set bit 4 in #R$E200 to indicate the object is an illusion.
C $9973 Wait for an interrupt.
C $9974 Return.
