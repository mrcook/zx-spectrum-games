; 25th July 2020	routine78

D $D702 Subroutines of the #R$99F1.
C $D702 Load A with the value of #R$AC2E.
C $D705 If the player is computer-controlled then jump to #R$9A95.
C $D709 Call #R$BC96 to handle the keyboard and enable displaying information about objects on screen.
C $D70C Call KEYBOARD in ROM.
C $D70F If 'S' was pressed to select an object then jump to #R$D71F.
C $D713 Otherwise if anything other than 'K' was pressed jump back to #R$D709 to get another key.
C $D717 'K' was pressed to cancel the current operation so play #R$C2B1.
C $D71D Enable interrupts.
C $D71E Return.
C $D71F Wait for no key to be pressed.
C $D722 Load HL with the cursor position.
C $D725 Load A with the current object.
C $D726 If there is nothing there then jump to #R$D709 to keep going.
C $D729 If the object code is greater than or equal to 34 (Gooey blob onwards) then jump to #R$99F1 as these cannot be disbelieved.
C $D72E Otherwise jump to #R$99F1 to cast the disbelieve spell on the target.
C $D731 Return.
