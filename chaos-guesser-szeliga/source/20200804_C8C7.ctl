; 4th August 2020	-	routine59
C $C8C7 Initialise #R$D3F2 and store address in #R$CD86.
C $C8D0 Store address of #R$CD2A in #R$CD3A.
C $C8D6 Store address of #R$CD88 in #R$CD90.
C $C8DC Copy map address of the moving object into #R$C78B.
C $C8E2 Set loop counter to 8.
C $C8E4 Preserve loop counter.
C $C8E5 Calculate address of a space "???" on the map and store address in #R$AC14. 
C $C8EC If a map location could not be found then jump to #R$C913.
C $C8EE Otherwise load HL with the display coord's of the wizard we are aiming at.
C $C8F1 Convert display coord's into map coord's and store in #R$BEE9.
C $C8F7 Convert the display coord's of the blank space into map coord's and store in #R$BEEB.
C $C900 Store the distance between the two places on the board in the next slot in #R$D3F2.
C $C90A Load A with the next byte/character from #R$CD88.
C $C90E Increment the pointer into #R$D3F2.
C $C912 Store the byte/character from #R$CD88 in #R$D3F2.
C $C913 Increment #R$CD90 's pointer into #R$CD88.
C $C91A Increment twice the pointer into #R$D3F2 and store in #R$CD86. "???"
C $C922 Copy the map address of the moving object into #R$AC14.
C $C928 Restore loop counter.
C $C929 Loop back.
C $C92B Sort the contents of #R$D3F2 into ascending order [I think "???"].
C $C933 Set #R$AC30 to 1.
C $C938 Copy the map address of the moving object into #R$AC14 and #R$AC12.
C $C941 Convert display coord's into map coord's.
C $C944 Store the result in #R$BC94 and #R$AC0A.
C $C94A Set #R$CD86 to point at "???" in #R$D3F2.
C $C950 Load BC with the map coord's of the moving object.
C $C954 Return.
