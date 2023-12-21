; 25th July 2020	ShadowForm spell updates


C $84C6 Get the moodifier byte for the current wizard.
C $84C9 If the wizard does not yet have Shadow Form then jump to #R$84D3.
C $84CD Otherwise set #R$975F to 0.
C $84D2 Return.
C $84D3 Display wizard's data, update L/C balance, and display a twirling effect on his sprite.
C $84D9 Return if the spell failed.

; this is how he makes the wizard "flash" - OOER!!!
C $84E1 Set up pointer to wizard animation first frame.
C $84E4 Set up offset to second frame.
C $84E8 Set frame attribute colours to black on black.
C $84EA Set up offset to fourth frame.
C $84EE Set frame attribute colours to black on black.

C $84F0 Set the Shadow Form flag on this wizard's modifier byte.
C $84F6 Return.
