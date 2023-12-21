; IN PROGRESS	29th July 2020	CreatureCast

C $9975 Set #R$97Ce to 1 "???"
C $997A If the current player is computer-controlled then jump to #R$9984.
C $9980 Otherwise call #R$981A.
C $9983 Return.
C $9984 ...
C $998C If the current spell is for a movable creature then jump to #R$9999.
C $9994 ...
C $9999	...
C $999C ...
C $99A8 Return.
C $99A9 If HL holds the address of an object in the border then jump to #R$999C.
C $99AE ...
C $99B3 ...

C $99C3 Display wizard name, spell being cast, and spell casting range.
C $99C4 ...
C $99C6 Display a twirling animation at the target.
C $99C9 If the spell is for a non-movable object then jump to #R$99DE.
C $99D1 Otherwise ...
C $99D9 Set #R$9166 to 1 "???"
C $99DE Determine if the spell succeeds and update the global Chaos/Law balance.
C $99E1 If the spell succeeded then update map tables etc.
C $99E8 Set #R$9166 to 0 "???"
C $99ED Display whether the spell succeeded or failed.
C $99F0 Return.
