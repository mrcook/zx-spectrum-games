> $5A26 ; SkoolKit disassembly for Tir Na Nog (48k)
> $5A26 ;
> $5A26 ; Copyright (c) Lunysoft (this disassembly)
> $5A26 ; Copyright (c) 1984 Carter Follis Software Associates / Gargoyle Games Ltd. (Tir Na Nog)
> $5A26 @start=$F51E
@ $5A26 org
b $5A26 Data block at 5A26
@ $5A26 label=Attr_WarningText
B $5A26,218,8*27,2
b $5B00 Holds the bitmaps which appear behind the hero. These get blitted back when scrolling.
@ $5B00 label=HeroBackground
B $5B00,304,8
b $5C30 Data block at 5C30
B $5C30,500,8*62,4
c $5E24 Unknown jumps
c $5E2A Vectors 1
D $5E2A Used by the routine at #R$F489.
@ $5E2A label=Vector_HeroInit
N $5E2D This entry point is used by the routine at #R$8A93.
@ $5E2D label=Vector_ScreenUpdate
N $5E33 This entry point is used by the routine at #R$F489.
@ $5E33 label=Vector_HeroInputHandler
N $5E36 This entry point is used by the routine at #R$7FA7.
@ $5E36 label=Vector_RunActions
N $5E39 This entry point is used by the routine at #R$80D0.
@ $5E39 label=Vector_HeroInit_0
N $5E3C This entry point is used by the routines at #R$7580 and #R$8A93.
@ $5E3C label=Vector_AreaUpdateData
C $5E3C,3 Jump Vector to AreaUpdateData
N $5E3F This entry point is used by the routine at #R$8A93.
@ $5E3F label=Vector_PrintLocationDescr
N $5E42 This entry point is used by the routines at #R$7C63 and #R$8DFC.
@ $5E42 label=Vector_Screen_DrawStage
@ $5E45 label=Vector_6a61
@ $5E48 label=Vector_6a67
@ $5E4B label=Vector_ActionWaterfall
N $5E4E This entry point is used by the routine at #R$F489.
@ $5E4E label=Vector_GameScrDisplay
N $5E51 This entry point is used by the routine at #R$7BDF.
@ $5E51 label=JmpVectorRotScrBlckLeft
C $5E51,3 Jump vector to RotateScreenBlockLeft
N $5E54 This entry point is used by the routine at #R$7BDF.
@ $5E54 label=JmpVectorRotScrBlckRight
C $5E54,3 Jump vector to RotateScreenBlockRight
N $5E57 This entry point is used by the routine at #R$8DB6.
@ $5E57 label=Vector_ActionWin
b $5E5A Data block at 5E5A
B $5E5A,4,4
c $5E5E Call HL vector.
D $5E5E Used by the routines at #R$5ECF, #R$5F71, #R$62AE and #R$69F1.
@ $5E5E label=Call_HL
b $5E5F Offsets used when detecting things of edge of screen. Each 8 bytes represent a rect offset for a compass setting.
@ $5E5F label=OffsetRectsA
W $5E5F,2,2 Compass 0, {x1, y1, x2, y2}
W $5E61,6,2
W $5E67,2,2 Compass 1
W $5E69,6,2
W $5E6F,2,2 Compass 2
W $5E71,6,2
W $5E77,2,2 Compass 3
W $5E79,6,2
N $5E7F Alternate set
@ $5E7F label=OffsetRectsB
W $5E7F,2,2 Compass 0
W $5E81,6,2
W $5E87,2,2 Compass 1
W $5E89,6,2
W $5E8F,2,2 Compass 2
W $5E91,6,2
W $5E97,2,2 Compass 3
W $5E99,6,2
c $5E9F Movement Vectors
@ $5E9F label=Vector_MovePositionA
@ $5EA1 label=Vector_Pos_Inc_y_axis
@ $5EA3 label=Vector_Pos_Dec_x_axis
@ $5EA5 label=Vector_Pos_Dec_y_axis
@ $5EA7 label=Vector_MovePositionB
c $5EAF Increase in x axis.
D $5EAF Used by the routine at #R$5E9F.
@ $5EAF label=Pos_Inc_x_axis
c $5EB7 Increase in y axis (0 is top).
D $5EB7 Used by the routine at #R$5E9F.
@ $5EB7 label=Pos_Inc_y_axis
c $5EBF Decrease in x axis.
D $5EBF Used by the routine at #R$5E9F.
@ $5EBF label=Pos_Dec_x_axis
c $5EC7 Decrease in y axis
D $5EC7 Used by the routine at #R$5E9F.
@ $5EC7 label=Pos_Dec_y_axis
c $5ECF Routine at 5ECF
D $5ECF Used by the routine at #R$65BF.
@ $5ECF label=HeroInputHandle
C $5ED9,3 Man is walking right.
C $5EDC,3 Facing EAST / WEST?
C $5EE3,3 Yes, so walking NORTH.
@ $5EE6 label=HeroInputHandle_0
C $5EE8,3 Right hand column of offscreen.
C $5EEB,4 Data?
C $5EF2,3 Using the camera workout which direction to move by calling the function which moves in the expected direction. (For Example; if camera is NORTH (0), we already know we are facing RIGHT (1), so call function which moves in EAST direction.)
@ $5F0F label=HeroInputHandle_1
@ $5F12 label=HeroInputHandle_2
@ $5F17 label=HeroInputHandle_3
@ $5F19 label=HeroInputHandle_4
c $5F46 Rotate left an area of the screen. (Clouds)
D $5F46 Used by the routine at #R$5E2A.
@ $5F46 label=RotateScreenBlockLeft
@ $5F4B label=RotateScreenBlockLeft_0
@ $5F51 label=RotateScreenBlockLeft_1
c $5F71 Routine at 5F71
D $5F71 Used by the routine at #R$5ECF.
N $5F76 This entry point is used by the routine at #R$5ECF.
N $5FA1 This entry point is used by the routine at #R$5ECF.
c $600E Rotate right an area of the screen (Clouds)
D $600E Used by the routine at #R$5E2A.
@ $600E label=RotateScreenBlockRight
@ $6013 label=RotateScreenBlockRight_0
@ $601B label=RotateScreenBlockRight_1
c $603B Routine at 603B
D $603B Used by the routine at #R$5F71.
N $6040 This entry point is used by the routine at #R$5F71.
c $6071 Update area data and set compass to correct direction.
D $6071 Used by the routines at #R$5E2A, #R$60AC and #R$61B8. Input:  A  New Area Index
@ $6071 label=AreaUpdateData
C $6071,3 Store new index
C $6074,1 Calculate area data address from index value
C $608A,3 Get previous area compass offset.
C $608D,3 Copy new area data as current area.
C $6092,1 Make sure the compass is correct for area and man is facing the right direction on entry.
c $60AB Routine at 60AB
c $60AC Initialise Hero
D $60AC Used by the routines at #R$5E2A and #R$65BF.
@ $60AC label=HeroInit
c $60EF Display Game Screen
D $60EF Used by the routine at #R$5E2A.
@ $60EF label=GameScrDisplay
c $60FD See which path intersects the hero position.
D $60FD Used by the routines at #R$61B8 and #R$638A.
@ $60FD label=PathIntersect
C $6104,3 Depending on the camera, decide which path data to use.
@ $6111 label=PathIntersect_0
@ $6116 label=PathIntersect_1
C $611C,3 Since man is currently walking through a doorway, offset position by +/-6 units.
@ $6129 label=PathIntersect_2
@ $6133 label=PathIntersect_3
@ $6136 label=PathIntersect_4
C $6136,1 BC now holds offset position. Store original position on stack. Remember this is either the X coord or Y coord depending on the camera.
N $6138 See if any paths, in the list, intersects the man's position.
@ $6138 label=TestPath
C $6139,3 Get the area index of path, if not the same as man then skip this path.
N $6145 Get Path Axis Position
@ $6145 label=PathIntersect_5
C $6145,3 Get start position of path
C $6148,2 End if Terminate Code (0xFF)
C $614C,1 (pos x 2) to scale upto real units.
C $6150,1 Get distance from man's position.
C $6153,2 If >= man's position...
@ $6160 label=PathIntersect_6
N $6168 Get Path End(1) Position
@ $6168 label=PathIntersect_7
N $6173 Get Path End(2) Position
N $617E Next Path
@ $617E label=NextPath
N $6186 Store 'No Path'
@ $6186 label=StoreNoPath
N $6194 Path Found
@ $6194 label=PathIntersect_8
C $6195,4 Store path address.
C $61A6,3 Make sure man is positioned correctly on path axis.
@ $61B4 label=PathIntersect_9
c $61B8 Get Next Path
D $61B8 Used by the routines at #R$5ECF and #R$5F71.
c $6236 Print Location Description
D $6236 Used by the routines at #R$5E2A, #R$60AC, #R$60EF and #R$61B8.
@ $6236 label=LocDescription
@ $624F label=LocDescription_0
b $6275 Data block at 6275
B $6275,10,1
c $627F Routine at 627F
@ $6282 label=LocDescription_1
@ $6291 label=LocDescription_2
@ $62A0 label=LocDescription_3
N $62AB This entry point is used by the routine at #R$6236.
@ $62AB label=LocDescription_4
c $62AE Draw the whole stage.
D $62AE Used by the routines at #R$5E2A and #R$638A.
@ $62AE label=Screen_DrawStage
C $62AE,3 Clear offscreen buffer.
C $62BB,3 Make sure positions are always even.
C $62CD,1 Store positions.
C $62DC,1 Camera is N/S so work on the E/W position.
@ $62DD label=Screen_DrawStage_0
C $62E4,1 Camera is N/E
@ $62EB label=Screen_DrawStage_1
@ $62F0 label=Screen_DrawStage_2
@ $62F8 label=Screen_DrawStage_3
C $6301,3 Get camera direction and calculate jump vector to move in the right direction based on value.
@ $631B label=Screen_DrawStage_4
@ $6323 label=Screen_DrawStage_5
C $632C,3 Get camera direction and calculate jump vector to move in the right direction based on value.
@ $6344 label=Screen_DrawStage_6
b $6352 Sky Colours
@ $6352 label=SkyColours
B $6352,32,8
@ $6372 label=CompassLettering
T $6372,8,8 Compass lettering.
@ $637A label=CompassAsciiPositioning
B $637A,4,4 Ascii codes for positioning compass lettering.
B $637E,12,3
c $638A Update the screen.
D $638A Used by the routines at #R$5E2A, #R$60AC, #R$60EF and #R$65BF.
@ $638A label=ScreenUpdate
@ $63CE label=ScreenUpdate_0
@ $63DF label=ScreenUpdate_1
@ $63E5 label=ScreenUpdate_2
@ $63FE label=ScreenUpdate_3
@ $6435 label=ScreenUpdate_4
@ $643A label=ScreenUpdate_5
@ $6450 label=ScreenUpdate_6
@ $6460 label=ScreenUpdate_7
@ $648B label=ScreenUpdate_8
@ $64CD label=ScreenUpdate_9
@ $64E6 label=ScreenUpdate_10
N $64FC Draw Compass
@ $64FC label=ScreenUpdate_11
C $64FC,3 Blit the compass image
N $6507 Update Compass
C $6507,3 Get camera direction and offset to get true NORTH for area.
C $6510,1 Using the true compass point work out which letter is needed for the top of the compass.
C $6517,3 Pointer to string holding ascii codes for positioning letter at top of compass. Made up of seven characters.
@ $651E label=ScreenUpdate_DisplayCompass
C $651E,1 Use ascii characters to position cursor.
C $6525,1 Now print the expected compass letter.
C $652A,2 From now on position codes are made up of three characters.
N $652F Blit offscreen to the DF.
c $6534 Routine at 6534
D $6534 Used by the routines at #R$5E2A and #R$65BF.
b $6588 Each byte represents a frame from our Hero's animation.
@ $6588 label=HeroAnimFrames
B $6588,7,7
b $658F Data block at 658F
B $658F,43,8*5,3
b $65BA Previous Input Flags
@ $65BA label=PreviousInputFlags_65BA
B $65BA,2,1
W $65BC,2,2
B $65BE,1,1
c $65BF Handle the input for hero.
D $65BF Used by the routine at #R$5E2A.
@ $65BF label=HeroInputHandler
C $65BF,3 See if Warning needs clearing
C $65C5,1 Decrease warning timer if greater than zero.
C $65C9,2 Ignore if not zero.
C $65CB,3 Clear warning message by blanking the attributes.
@ $65D6 label=HeroInputHandler_0
C $65D6,3 Thru Door Go
C $65DC,1 Decrease door go counter.
@ $65E3 label=HeroInputHandler_1
@ $65EA label=HeroInputHandler_2
C $65F1,3 See if man is stepping through a door.
C $65F8,3 Check input
C $65FE,2 Is Hero standing still (facing left or right)?
C $6602,3 Is game in demo mode?
@ $660D label=HeroInputHandler_3
@ $661E label=HeroInputHandler_4
C $661E,2 Check for previous rotation. If so then do not allow rotation again until user releases a key.
C $6630,2 Check for rotate
C $663B,3 Rotate clockwise
@ $6641 label=RotateCCW
C $6641,3 Rotate counter clockwise
@ $6645 label=RotateStore
C $6645,2 mask result and store new camera direction.
N $664E Check for object handling inputs (get/drop/select)
@ $664E label=HeroInputHandler_5
C $6655,3 Make sure user isn't holding down a key. If so do no object handling until key is released.
C $665C,3 Check for select input.
C $6663,3 Making sure user isn't holding key down.
N $666F Handle left/right.
@ $666F label=HeroInputHandler_6
@ $6681 label=HeroInputHandler_7
@ $6686 label=HeroInputHandler_8
C $668C,3 See if the current frame matches anything from the animation table.
C $669A,3 Workout which axis to move along.
@ $66AA label=HeroInputHandler_9
@ $66B1 label=HeroInputHandler_10
C $66B1,3 Get the walk inputs and store them. If both are pressed then do nothing.
@ $66BB label=HeroInputHandler_11
C $66BE,3 Halfway through a step so keep moving.
C $66CB,3 Attack key is down.
C $66E0,3 Get input for walking again.
C $66E3,2 Nothing pressed.
C $66EF,3 Standing still animation.
C $66F6,2 Set to facing the camera. Part of turning around. Setting heros direction to the opposite of camera.
@ $6706 label=HeroInputHandler_12
@ $6712 label=HeroInputHandler_13
@ $6714 label=HeroInputHandler_14
@ $6740 label=HeroInputHandler_15
@ $675B label=HeroInputHandler_16
@ $676C label=HeroInputHandler_17
@ $677A label=HeroInputHandler_18
@ $678D label=HeroInputHandler_19
@ $679F label=HeroInputHandler_20
@ $67A1 label=HeroInputHandler_21
@ $67CB label=HeroInputHandler_22
@ $67D6 label=HeroInputHandler_23
@ $67E3 label=HeroInputHandler_24
@ $67F0 label=HeroInputHandler_25
@ $67FB label=HeroInputHandler_26
@ $67FF label=HeroInputHandler_27
@ $6806 label=HeroInputHandler_28
@ $6809 label=HeroInputHandler_29
@ $680C label=HeroInputHandler_30
@ $6812 label=HeroInputHandler_31
@ $6829 label=HeroInputHandler_32
@ $6837 label=HeroInputHandler_33
@ $6844 label=HeroInputHandler_34
@ $684B label=HeroInputHandler_35
@ $6856 label=HeroInputHandler_36
@ $6864 label=HeroInputHandler_37
@ $6870 label=HeroInputHandler_38
@ $6872 label=HeroInputHandler_39
@ $689E label=HeroInputHandler_40
@ $68A6 label=HeroInputHandler_41
@ $68C3 label=HeroInputHandler_42
@ $68CC label=HeroInputHandler_43
@ $68F0 label=HeroInputHandler_44
@ $68F8 label=HeroInputHandler_45
@ $68FE label=HeroInputHandler_46
@ $690A label=HeroInputHandler_47
@ $690E label=HeroInputHandler_48
@ $692C label=HeroInputHandler_49
@ $6937 label=HeroInputHandler_50
@ $6944 label=HeroInputHandler_51
@ $694F label=HeroInputHandler_52
@ $695F label=HeroInputHandler_53
@ $696C label=HeroInputHandler_54
@ $6981 label=HeroInputHandler_55
@ $6987 label=HeroInputHandler_56
@ $69A9 label=HeroInputHandler_57
@ $69AC label=HeroInputHandler_58
@ $69BE label=HeroInputHandler_59
@ $69C9 label=HeroInputHandler_60
@ $69D8 label=HeroInputHandler_61
c $69F1 Routine at 69F1
D $69F1 Used by the routine at #R$5E2A.
@ $69F1 label=Actions_Run
C $69F1,4 Check for special action in the link list.
@ $69F5 label=Actions_Run_NextLink
C $69FB,1 Do nothing if 0000
C $69FF,2 Check flag, if 0 move from this list to other.
@ $6A0C label=Actions_Run_Call
C $6A0C,3 Call related function.
C $6A15,1 Move onto next link in list.
c $6A18 Blits an action item.
D $6A18 Used by the routine at #R$5E2A.
@ $6A18 label=Actions_Blit
@ $6A1C label=Actions_Blit_0
c $6A37 Routine at 6A37
c $6A61 Routine at 6A61
D $6A61 Used by the routine at #R$5E2A.
N $6A67 This entry point is used by the routine at #R$5E2A.
b $6A85 Data block at 6A85
T $6A85,7,7
B $6A8C,1,1
c $6A8D Routine at 6A8D
N $6A8F This entry point is used by the routine at #R$6A61.
b $6A92 Data block at 6A92
T $6A92,9,9
B $6A9B,1,1
c $6A9C Routine at 6A9C
D $6A9C Used by the routines at #R$6A61 and #R$6A8D.
N $6AC8 This entry point is used by the routine at #R$6A61.
c $6C83 Waterfall Action Function.
D $6C83 Used by the routine at #R$5E2A.
@ $6C83 label=ActionWaterfall
N $6C90 This entry point is used by the routine at #R$6A61.
@ $6C90 label=ActionWaterfall_0
N $6C93 This entry point is used by the routine at #R$6A61.
@ $6C93 label=ActionWaterfall_1
@ $6C9F label=ActionWaterfall_2
@ $6CA4 label=ActionWaterfall_3
c $6CCC Display the winning message and change the rooms colour.
D $6CCC Used by the routine at #R$5E2A.
@ $6CCC label=ActionWin
@ $6CD7 label=ActionWin_0
b $6CEB Data block at 6CEB
T $6CEB,7,7
B $6CF2,1,1
c $6CF3 Routine at 6CF3
b $6CF4 Data block at 6CF4
B $6CF4,8,8
c $6CFC Vectors
N $6CFF This entry point is used by the routines at #R$6236, #R$6A61, #R$7C63, #R$89AF, #R$8EC0, #R$8F3E, #R$8FE5 and #R$8FFF.
@ $6CFF label=PrintStringVector
C $6CFF,3 Print String Vector
N $6D02 This entry point is used by the routine at #R$7B47.
@ $6D02 label=PosToScrVector
C $6D02,3 Convert Pos to Screen Vector
N $6D05 This entry point is used by the routines at #R$6C83, #R$7DC5, #R$826E, #R$82F1, #R$859A, #R$88C7, #R$8D50, #R$8DFC and #R$F395.
@ $6D05 label=Vector_ABS(hl_minus_de)
N $6D08 This entry point is used by the routines at #R$87BF and #R$8A93.
@ $6D08 label=Vector_ActionsNewLink
N $6D0B This entry point is used by the routine at #R$69F1.
@ $6D0B label=Vector_LinkListInsert
@ $6D0E label=Vector_BlitBmpColumn
@ $6D11 label=Vector_RectIntersetion
N $6D14 This entry point is used by the routines at #R$5ECF, #R$5F71 and #R$62AE.
@ $6D14 label=Vector_Screen_DrawColumn
N $6D1A This entry point is used by the routine at #R$8DFC.
@ $6D1A label=Vector_Char_InsertIntoBitmap
@ $6D1D label=Vector_KeyboardScan
N $6D20 This entry point is used by the routine at #R$65BF.
@ $6D20 label=VectorToKeyboardInput
N $6D23 This entry point is used by the routines at #R$6534 and #R$7D49.
N $6D29 This entry point is used by the routines at #R$6534, #R$6C83, #R$7D49, #R$7FA7 and #R$85E1.
@ $6D29 label=Vector_BitmapMirror
N $6D2F This entry point is used by the routine at #R$7580.
@ $6D2F label=Vector_(HL)
c $6D30 hl = ABS(hl-de)
D $6D30 Used by the routines at #R$6CFC, #R$6DE8, #R$6F22, #R$7834 and #R$7A64.
@ $6D30 label=abs(hl_minus_de)
c $6D3C Print String
D $6D3C Used by the routine at #R$6CFC.
@ $6D3C label=PrintString
C $6D3C,1 Get return address from stack. This will point to the string to print.
@ $6D3D label=PrintStringNextChar
C $6D3D,1 Get next char.
C $6D3F,2 Use '^' as the end of string char.
C $6D43,3 Print char using the correct char set.
@ $6D48 label=PrintStringExit
C $6D48,1 Return using the address at the end of the string.
c $6D49 Converts a stored position to address of top bit of DF & ATTR.
D $6D49 Used by the routine at #R$6CFC. Input:  IX  Ptr to Y,X pos stored values.
@ $6D49 label=ConvertPosToScr
c $6D76 Create new link for Actions Link List.
D $6D76 Remove link from unused link list and insert at beginning of Actions list.
@ $6D76 label=Actions_NewLink
C $6D76,3 Make sure there is a link in the unused list.
C $6D7B,4 Take link and clear it.
C $6D95,3 Add new link to begining of Actions list.
c $6DA3 Insert link(IX) to begining of list start of unused links list.
D $6DA3 Used by the routine at #R$6CFC.
@ $6DA3 label=UnusedList_AddLink
C $6DA3,3 STARTS: [IX]->[DE]--->|  [DFBB]->[HL]--->|
C $6DB6,1 Retrieve return address.
C $6DB7,2 ENDS:  [POP]->[DE]--->|  [DFBB]->[IX]->HL--->|
c $6DC0 Check for alternate bitmap.
D $6DC0 Used by the routine at #R$6F22. Input:  A  Index of bitmap to look for. 6F1B  Holds item flags.
@ $6DC0 label=AltBitmapSearch
C $6DC1,3 Only look if flags are set.
C $6DC7,3 Array of matching bitmap indices.
C $6DCA,1 First two items zero, means empty list.
C $6DCE,1 See if bitmap index is in list.
C $6DD5,1 If it is then find alternate in matching list.
@ $6DE4 label=AltBitmapsSearch_Exit
b $6DE6 Data block at 6DE6
B $6DE6,2,2
c $6DE8 Draw a single column (8 pixels wide) of a bitmap using item data to calculate which column and where on the offscreen to draw.
D $6DE8 Used by the routines at #R$6CFC and #R$6F22. Input:  IX  Scenery Item Data pointer. HL  Y pos offset (?)
@ $6DE8 label=BlitBmpColumn
C $6DE8,3 Store
C $6DEB,3 Get bitmap data address from Item.BitmapIndex, offsetting to the width variable.
C $6DF7,1 Get x position on map for item and hero.
C $6E05,3 Get y position on map for item and hero.
C $6E11,3 Using camera decide which axis path runs along.
@ $6E19 label=BlitBmpColumn_0
C $6E19,3 Starting with other axis, convert item position, offset from hero, and height into physical offscreen Y position.
@ $6E2E label=BlitBmpColumn_1
@ $6E33 label=BlitBmpColumn_2
@ $6E37 label=BlitBmpColumn_3
C $6E5C,3 Using path axis, convert position, offset from hero's, into the column of bitmap to blit.
@ $6E7B label=BlitBmpColumn_4
@ $6E82 label=BlitBmpColumn_5
C $6E86,1 DE holds bytes offset for correct column, within image, to start blitting with.
C $6E87,3 Get bitmap index from item data.
N $6E8C HL=Bitmap Index DE=Bytes offset to start blitting from. (Column to blit)
@ $6E8C label=Blit_BmpColumn_Main
C $6E8C,1 Calculate image address from bitmap data.
C $6E96,1 Get back the amount to offset the bitmap start by.
C $6E97,1 and add the start of the bitmap to it, not forgetting the start of the bitmaps for the true address.
C $6E9F,3 Get offscreen address for item.
C $6EA2,1 Height of bitmap.
C $6EA7,1 Width of bitmap.
C $6EAD,3 Number of bytes to skip for next line down in offscreen.
C $6EB0,1 Height * 8 for number of rows / pixels down.
N $6EB5 Draw
@ $6EB5 label=BlitBmpColumn_Draw
c $6EC5 Rect Intersection Test. Returns carry set if not.
D $6EC5 Used by the routines at #R$6CFC and #R$6F22. Input:  A  Size of object. (Map units?) IX  Pointer to object data.
@ $6EC5 label=RectIntersection
C $6EC5,1 See if a scenery item intersects a store rectangle.
@ $6F0A label=Exit
b $6F0C Data block at 6F0C
@ $6F0C label=Rectangle_x1
@ $6F0E label=Rectangle_y1
@ $6F10 label=Rectangle_x2
@ $6F12 label=Rectangle_y2
W $6F0C,8,2
b $6F14 Address of offscreen column
@ $6F14 label=OffScrColPtr_6F14
W $6F14,2,2 Depending of direction of movement, holds an address to a column on the offscreen.
@ $6F16 label=OffScrTempPtr_6F16
W $6F16,2,2 Temporary store for offscreen address.
b $6F18 Data block at 6F18
B $6F18,1,1
b $6F19 When set to 1, there is a path leading off into the screen.
D $6F19 Temporary variables used by the Draw Column function.
@ $6F19 label=PathTopJunction
B $6F19,1,1
@ $6F1A label=PathBottomJunction
B $6F1A,1,1 When set to 1, there is a path leading out from the screen.
@ $6F1B label=T1
B $6F1B,1,1
N $6F1C Blit Item structure
@ $6F1C label=TempBlitItem_P
@ $6F1D label=TempBlitItem_S
@ $6F1E label=TempBlitItem_I
B $6F1C,6,1*3,3
c $6F22 Draws a single column on the screen using the next object based on position.
D $6F22 Used by the routine at #R$6CFC. Input:  HL  Holds address of column on offscreen based on direction of walking / scrolling. IX  Points to table of offsets based on camera /compass and walking direction.
@ $6F22 label=Screen_DrawColumn
C $6F22,3 Store draw to address on the offscreen.
C $6F25,3 Clear a column down at that address.
@ $6F2B label=Screen_DrawColumn_0
C $6F2F,3 See if hero is leaving area.
C $6F32,3 Workout a rectangle which is on the edge of the screen and the hero is walking towards.
@ $6F50 label=Screen_DrawColumn_1
@ $6F76 label=Screen_DrawColumn_2
N $6F8A Scan through the locations furniture.
@ $6F8E label=Screen_DrawColumn_3
C $6F8E,3 If both positions are zero, end of list
@ $6FA3 label=Screen_DrawColumn_4
C $6FA6,3 Workout bitmap data address from index.
C $6FB1,1 Get width of bitmap.
C $6FB9,3 See if an alternate bitmap is required and store back into item data.
C $6FC3,1 Get bitmap data address from item.BitmapIndex
C $6FCC,3 See if bitmap need flipping.
@ $6FDF label=Screen_DrawColumn_5
C $6FE5,3 Blit next column of bitmap onto edge of offscreen.
N $6FED Create an action for this scenery object.
@ $6FED label=Screen_DrawColumn_6
@ $6FF0 label=Screen_DrawColumn_7
@ $6FF4 label=DrawScenery_NextItem
b $6FFB Variables
@ $6FFB label=V1
@ $6FFD label=V2
@ $6FFF label=V3
W $6FFB,6,2
c $7001 Handle path junctions.
D $7001 Used by the routine at #R$6F22.
@ $7001 label=Screen_DrawColumn_8
C $7005,2 Index for the small path junction '/..\'
N $7015 Loop for top and bottom edges of path.
@ $7015 label=Screen_DrawColumn_9
@ $7040 label=Screen_DrawColumn_10
@ $704C label=Screen_DrawColumn_11
@ $705F label=Screen_DrawColumn_12
@ $7060 label=Screen_DrawColumn_13
N $7061 Iterate throught the list of paths.
@ $7061 label=Screen_DrawColumn_14
C $7063,3 Check to see if path is for current area.
@ $706F label=Screen_DrawColumn_15
C $706F,3 See if path intersects, at right angles, the test rectangle.
C $7081,3 It doesn't so move onto the next path in the list.
@ $7086 label=Screen_DrawColumn_16
C $7086,1 If the rectangle position is before the current path, no need to check the rest as all paths are in order.
@ $708B label=Screen_DrawColumn_17
@ $70AF label=Screen_DrawColumn_18
C $70CB,3 For path junctions.
N $70D0 Next path.
@ $70D0 label=Screen_DrawColumn_19
N $70D9 Loop again to do bottom edge of path.
@ $70D9 label=Screen_DrawColumn_20
C $70DB,2 Index for the large path junction '/....\'
N $70EE See which path edges need to be drawn.
@ $70FF label=Screen_DrawColumn_21
@ $7107 label=Screen_DrawColumn_22
C $7107,3 Check path is allowed for current area.
@ $7113 label=Screen_DrawColumn_23
C $7113,3 Get the axis of the next path. ( Always double for true position on map.)
C $711A,2 Check to see if man's position is same as path.
C $711E,3 If it is less then no edges to draw.
N $7121 Loop for next path on list.
@ $7121 label=Screen_DrawColumn_24
N $7128 TODO
@ $7128 label=Screen_DrawColumn_25
@ $7135 label=Screen_DrawColumn_26
@ $7139 label=Screen_DrawColumn_27
N $715A Blit the bottom edge of the path if required.
C $715D,1 Work out which half of the 16 pixel bitmap to blit.
C $716B,3 workout the address of the path edge bitmap from the bitmap data, offsetting to start from the half that needs to be blitted.
@ $7180 label=Screen_DrawColumn_28
C $7180,1 Blit one 8 pixel column of the path edge.
N $718C Draw top edge of path if required.
@ $718C label=Screen_DrawColumn_29
@ $71B8 label=Screen_DrawColumn_30
N $71C5 Draw middle path leading in, if needed. '/...\'
@ $71C5 label=Screen_DrawColumn_31
@ $71D3 label=Screen_DrawColumn_32
@ $71E9 label=Screen_DrawColumn_33
@ $7200 label=Screen_DrawColumn_34
@ $7215 label=Screen_DrawColumn_35
@ $721C label=Screen_DrawColumn_36
C $7227,3 For path ends and bends.
N $722A Draw Scenery Items
@ $722A label=S_DC_ItemDraw
@ $722E label=S_DC_ItemForEach
C $722E,3 Check for end of the list.
C $7237,3 Get area index, 0 means ignore.
C $723E,3 If it doesn't match, next item.
@ $7245 label=Screen_DrawColumn_37
C $7245,3 Store index of area value.
C $7248,3 Object width
C $724B,3 Is object with draw rect (column).
C $7251,3 Get positions of object and man and work out which is the path position and the axis position.
@ $7275 label=Screen_DrawColumn_38
C $7275,3 Using the axis position to see how close object is to man
C $7282,1 If farther than 8 units we do not draw.
@ $728C label=Screen_DrawColumn_39
C $728C,3 If less than 6 we force to 5 uints.
@ $7291 label=Screen_DrawColumn_40
C $7291,1 Calculate position on offscreen from this.
@ $7295 label=Screen_DrawColumn_41
C $72AC,1 Get path positions.
@ $72B5 label=Screen_DrawColumn_42
@ $72BD label=Screen_DrawColumn_43
@ $72D8 label=Screen_DrawColumn_44
@ $72DF label=Screen_DrawColumn_45
C $72E4,2 Remember the start address of the area data.
@ $72E7 label=Screen_DrawColumn_46
C $72E7,1 Store
C $72E8,3 Get each item in the scenery data and workout which one is next to draw.
@ $7306 label=Screen_DrawColumn_47
C $7306,3 Get index of item and store it.
C $730C,2 Get back start address of area data.
C $7324,1 Is item index the first one in list?
C $7329,1 Is item last in the list.
C $732E,1 Get index of item in list of items.
C $732F,3 Put the camera direction into the upper nibble.
C $7335,1 Onto the next data set.
C $7337,1 with the item index in the lower nibble.
C $7339,3 Get number of data sets.
C $733C,3 Size of each data set.
@ $733F label=Screen_DrawColumn_48
C $733F,3 See if camera / item index is the same as the one in the data set.
C $7342,2 Same area index OR area index is 0.
@ $7353 label=Screen_DrawColumn_49
@ $735A label=Screen_DrawColumn_50
@ $7368 label=Screen_DrawColumn_51
C $736E,3 Offset address of door bitmap.
C $737B,3 Offset address of slim door bitmap.
N $7389 Door Icon
@ $7389 label=Screen_DrawColumn_52
C $7389,3 Decide if door needs an icon character to be drawn on it.
@ $7398 label=Screen_DrawColumn_53
C $7398,2 Use 'space' if not.
@ $739A label=Screen_DrawColumn_54
C $739A,3 Insert graphic character into door bitmap.
N $73A0 Check for perpendicular exits
@ $73A0 label=Screen_DrawColumn_55
@ $73A6 label=Screen_DrawColumn_56
@ $73AA label=Screen_DrawColumn_57
@ $73B4 label=Screen_DrawColumn_58
@ $73C2 label=Screen_DrawColumn_59
@ $73DA label=Screen_DrawColumn_60
@ $73E4 label=Screen_DrawColumn_61
@ $73EF label=Screen_DrawColumn_62
@ $73F8 label=Screen_DrawColumn_63
@ $741A label=Screen_DrawColumn_64
@ $7427 label=Screen_DrawColumn_65
C $7427,3 Get bitmap index, add one to get sideways version.
C $742E,3 Use mirror state of stored bitmap.
@ $7439 label=Screen_DrawColumn_66
@ $744B label=Screen_DrawColumn_67
@ $746A label=Screen_DrawColumn_68
@ $7475 label=Screen_DrawColumn_69
C $7487,3 For scenery items.
@ $748C label=S_DC_NextItem
N $74A8 _
@ $74A8 label=Screen_DrawColumn_70
@ $74B1 label=Screen_DrawColumn_71
N $74BB Draw an object if required.
@ $74E4 label=Screen_DrawColumn_72
@ $74EB label=Screen_DrawColumn_73
@ $7513 label=Screen_DrawColumn_74
@ $751B label=Screen_DrawColumn_75
b $751C Data block at 751C
@ $751C label=Blit_Width
@ $751E label=Blit_1
B $751C,3,2,1
c $751F Mirror Bitmap.
D $751F Used by the routines at #R$6CFC and #R$6F22. Input:  HL  Frame index
@ $751F label=BitmapMirror
C $751F,1 Get correct sprite data address from index.
C $7525,1 Get offset to bitmap
C $7529,1 Get height in chars.
C $752E,1 Get width in chars.
C $7534,3 Convert offset into true bitmap address
@ $7546 label=BitmapMirror_0
@ $7548 label=BitmapMirror_1
@ $7553 label=BitmapMirror_2
b $757C Data block at 757C
B $757C,4,4
b $7580 Check for leaving the area.
@ $7580 label=ExitArea_ExitIndex
B $7580,2,2 Exit Test variables.
c $7582 See if man is within a 20 units margin on the boundary of the area.
D $7582 Used by the routine at #R$6F22.
@ $7582 label=ExitAreaCheck
C $7582,3 Get current position on map.
C $758C,2 Use the axis that hero is walking on. (If cam==N then use east/west).
N $7591 See if man is on boundary of area - Exit if not.
@ $7591 label=ExitArea_ExitIndex_0
C $7591,2 Test for N/E or S/W facing.
C $7595,3 Test to see which way man is facing.
@ $759C label=ExitArea_ExitIndex_1
C $759C,3 Facing right.
C $75A2,1 Exit if position is > $27
C $75A3,3 Offset position value again.
@ $75A9 label=ExitArea_ExitIndex_2
C $75A9,3 Test to see which way man is facing.
@ $75B0 label=ExitArea_ExitIndex_3
C $75B0,3 Facing right.
C $75B6,1 Exit if position < $01da
C $75B7,1 Offset position value again.
N $75C0 Is on boundary, see which area is next.
@ $75C0 label=ExitArea_OnBoundary
C $75C2,3 Store current positions.
C $75CD,3 Store current area index.
C $75D3,3 Using direction and compass we can workout the direction man is leaving an area.
C $75DE,3 Store as 'exit index'.
C $75E8,1 Get index of area the path exit leads to.
C $75EA,2 zero means no exit. Do nothing.
C $75EC,3 Get information on new area by temporary storing in heros information.
@ $75FE label=ExitArea_ExitIndex_4
@ $7604 label=ExitArea_ExitIndex_5
@ $760B label=ExitArea_ExitIndex_6
@ $7611 label=ExitArea_ExitIndex_7
@ $763A label=ExitArea_ExitIndex_8
@ $763B label=ExitArea_ExitIndex_9
@ $7643 label=ExitArea_ExitIndex_10
C $764A,1 Get calling function from stack and retrn back as a call.
N $764E Get back originally stored position info.
C $7659,3 Get temp stored area index (current) and update as current area.
@ $765F label=ExitAreaCheck_End
b $7663 Scenery Action Data [bitmap index, function pointer]
D $7663 The follow structure is made up of [bitmap index, function pointer]
@ $7663 label=Actions_Data
B $7663,1,1 Oracle's Rock
W $7664,2,2
B $7666,1,1 Olc Weed
W $7667,2,2
B $7669,1,1 Nathair
W $766A,2,2
B $766C,1,1 Tablet
W $766D,2,2
B $766F,1,1 Half Horse Shoe / Half Torc
W $7670,2,2
B $7672,1,1 Thing
W $7673,2,2
B $7675,1,1 Scroll
W $7676,2,2
B $7678,1,1 Waterfall
W $7679,2,2
B $767B,1,1 Blank bitmap.
W $767C,2,2
B $767E,1,1 Rock
W $767F,2,2
B $7681,1,1 Alter of the Seal
W $7682,2,2
B $7684,1,1 Busk / Face
W $7685,2,2
B $7687,1,1 Stone
W $7688,2,2
c $768A Create Action for a Scenery Object
D $768A Used by the routines at #R$6CFC and #R$6F22. Input:  IX  Pointer to scenery item.
@ $768A label=Actions_CreateObj
C $768A,3 Get item's bitmap index.
C $768D,3 Get address of first link in list.
C $7690,3 Using BC to check to see if HL == 0.
N $7693 Search to ned of list / Check to see if action exits.
@ $7693 label=Actions_CreateObj_0
C $7693,1 Check for end of list.
C $7698,1 If not end, get next link.
C $769C,1 If bitmap is already in list, do nothing.
N $76A1 Create a new action using bitmap.
@ $76A1 label=Actions_CreateObj_1
C $76A1,2 Remember item's address.
C $76A3,3 Get item's bitmap index and get the bitmap's width.
C $76AF,3 Get item's secondary position. (Adding 1 if width is odd).
C $76BB,2 Get item's primary position. (Adding 1 if width is odd).
C $76C0,3 Get bitmap index again.
C $76C3,1 Create an empty link and add to list. IX = address.
C $76C9,1 Store item's primary position. (True value)
C $76D0,1 Store item's secondary position. (True value)
C $76D7,1 Store item's bitmap index.
C $76DE,3 Search through the action data and find the related function address. This is the function called when the action is triggered.
@ $76E4 label=Actions_CreateObj_2
@ $76EC label=Actions_CreateObj_3
C $76EC,1 Store function pointer.
C $76F5,2 Restore item's address and return.
c $76F8 Scan in keyboard state
D $76F8 Used by the routines at #R$6CFC and #R$770D.
@ $76F8 label=KeyboardScan
C $76F8,3 Scan through all key states and store in memory as bit flags.
@ $7700 label=KeyboardScan_0
c $770D Convert keybard states stored, into movement.
D $770D Used by the routine at #R$6CFC.
@ $770D label=UpdateKeyboardInput
C $771D,3 Get key states for F S H K Enter (Rotate landscape right)
@ $772F label=UpdateKeyboardInput_0
C $772F,3 Get key states for A D G J L (Rotate landscape left)
@ $7741 label=UpdateKeyboardInput_1
C $7741,3 Get key states for X V N ss (Walk right)
@ $7753 label=UpdateKeyboardInput_2
C $7753,3 Get key states for Z C B M (Walk left)
@ $7765 label=UpdateKeyboardInput_3
C $7765,3 Get key states for W R Y I P (Drop)
@ $7777 label=UpdateKeyboardInput_4
C $7777,3 Get key states for Q E T U O  (Pick up)
@ $7789 label=UpdateKeyboardInput_5
C $7789,3 Get key states for top row.
@ $7795 label=UpdateKeyboardInput_6
@ $77A7 label=UpdateKeyboardInput_7
C $77A7,1 Store as a bit flag.
@ $77A8 label=UpdateKeyboardInput_8
c $77AC Routine at 77AC
D $77AC Used by the routine at #R$6CFC.
c $7834 Nathair Action Function Ptr.
D $7834 Used by the routine at #R$6CFC.
@ $7834 label=ActionNathair
@ $7863 label=ActionNathair_0
b $786E Data block at 786E
T $786E,8,8
B $7876,1,1
c $7877 Routine at 7877
N $78DD This entry point is used by the routine at #R$7834.
@ $78DD label=ActionNathair_1
@ $78F2 label=ActionNathair_2
N $78F9 This entry point is used by the routine at #R$7834.
@ $78F9 label=ActionNathair_3
@ $7916 label=ActionNathair_4
@ $7939 label=ActionNathair_5
@ $794F label=ActionNathair_6
@ $7960 label=ActionNathair_7
@ $7999 label=ActionNathair_8
@ $79C6 label=ActionNathair_9
@ $79CA label=ActionNathair_10
@ $79DA label=ActionNathair_11
@ $7A0B label=ActionNathair_12
@ $7A2A label=ActionNathair_13
c $7A35 Insert charcter bitmap into a sprite bitmap. (Key icon on a door).
D $7A35 Used by the routines at #R$6CFC and #R$6F22. Input:  A  Ascii character of icon. HL  - DE  - BC  - Width of bitmap (being written too).
@ $7A35 label=Char_InsertIntoBitmap
C $7A35,1 Calculate
@ $7A40 label=Char_InsertIntoBitmap_0
C $7A40,1 Work out character bitmap address.
@ $7A4D label=Char_InsertIntoBitmap_1
C $7A4D,1 Insert char bitmap into main bitmap by rotating nibbles around.
c $7A64 Routine at 7A64
D $7A64 Used by the routine at #R$6CFC.
@ $7A64 label=ActionOlcWeed
@ $7A80 label=ActionOlcWeed_0
@ $7A85 label=ActionOlcWeed_1
@ $7A9A label=ActionOlcWeed_2
@ $7AAC label=ActionOlcWeed_3
@ $7AB8 label=ActionOlcWeed_4
@ $7AC4 label=ActionOlcWeed_5
@ $7AC7 label=ActionOlcWeed_6
@ $7AE1 label=ActionOlcWeed_7
@ $7AF2 label=ActionOlcWeed_8
b $7B01 Data block at 7B01
B $7B01,11,8,3
c $7B0C Vectors
@ $7B0C label=Vectors
N $7B0F This entry point is used by the routines at #R$638A and #R$6A61.
@ $7B0F label=Vector_BlitBitmap
N $7B12 This entry point is used by the routine at #R$F489.
@ $7B12 label=Vector_BackgroundAnimate
C $7B12,3 Vector Animate Background
N $7B15 This entry point is used by the routine at #R$F489.
@ $7B15 label=Vector_Screen_ClearLower
N $7B18 This entry point is used by the routine at #R$60EF.
@ $7B18 label=Vector_UpdateInv
N $7B1E This entry point is used by the routine at #R$65BF.
@ $7B1E label=Vector_ObjectPickUp
C $7B1E,3 Object Pick Up.
N $7B21 This entry point is used by the routine at #R$65BF.
@ $7B21 label=Vector_ObjectDrop
C $7B21,3 Object Drop.
N $7B24 This entry point is used by the routine at #R$65BF.
@ $7B24 label=Vector_HandleSelection
C $7B24,3 Vector Handle Selection
N $7B27 This entry point is used by the routines at #R$638A and #R$65BF.
@ $7B27 label=Vector_MobilesUpdate2
N $7B2A This entry point is used by the routines at #R$638A and #R$65BF.
@ $7B2A label=Vector_MobilesUpdate1
N $7B2D This entry point is used by the routine at #R$F489.
@ $7B2D label=Vector_BgUpdate
C $7B2D,3 Updates the background for hero and sidhe.
@ $7B30 label=Vector_SidheBlitBg
@ $7B33 label=Vector_7B33
N $7B36 This entry point is used by the routines at #R$6A18, #R$6C83, #R$7834, #R$7A64, #R$8D11 and #R$8D50.
@ $7B36 label=Vector_SpriteBlit
@ $7B3F label=Vector_Action_FaceFunc
c $7B43 Routine at 7B43
@ $7B43 label=Temp_A
@ $7B44 label=Temp_W
@ $7B46 label=Temp_H
c $7B47 Routine at 7B47
D $7B47 Used by the routines at #R$7B0C and #R$7BDF. Input:  A  _todo L  Index to Bitmap Data B  Y position (in pixels). C X position (in pixels).
@ $7B47 label=BlitBitmap_7B47
C $7B54,2 (Bitmap Data Index)*4(size) + Start Address
C $7B5C,1 Get bitmap offset address
C $7B60,1 Get bitmaps height (in chars)
C $7B64,2 Mask off flag for true height in chars.
C $7B6A,1 Get width (in char blocks)
C $7B77,3 Get true bitmap address.
N $7B82 Draw
@ $7B82 label=BlitBitmap_7B47_0
@ $7B92 label=BlitBitmap_7B47_1
@ $7B9F label=BlitBitmap_7B47_2
C $7BA6,3 Get number of columns to draw and blit 1 scan of bitmap
@ $7BAD label=BlitBitmap_7B47_3
@ $7BB7 label=BlitBitmap_7B47_4
C $7BB7,1 Get next bitmap address.
C $7BB8,2 Draw for 8 scan lines down.
C $7BBA,1 Get next screen address to blit to.
N $7BBB Draw a block
@ $7BBB label=BlitBitmap_7B47_5
C $7BBD,3 Get number of columns to blit.
C $7BC2,2 Blit
C $7BC8,1 Get number of bytes per column and move onto next bitmap line.
C $7BC9,1 Get previous screen address and move down a scan.
C $7BCE,2 Update Y position to next block down (8 scans)
C $7BD6,1 Number of blocks left to draw.
b $7BDC Data block at 7BDC
B $7BDC,3,1
c $7BDF Animate Background
D $7BDF Used by the routine at #R$7B0C.
@ $7BDF label=BackgroundAnimate
C $7BDF,3 Tick
C $7BE7,3 Get background type. Do nothing if type 0
C $7C07,3 Clouds facing east. There is a return in the next function.
@ $7C0D label=BackgroundAnimate_0
C $7C0D,3 Clouds facing west. There is a return in the next function.
@ $7C13 label=BackgroundAnimate_1
@ $7C22 label=BackgroundAnimate_2
N $7C25 This entry point is used by the routine at #R$7C30.
@ $7C25 label=BackgroundAnimate_3
@ $7C2A label=BackgroundAnimate_4
c $7C30 Routine at 7C30
c $7C44 Clears the lower third screen area.
D $7C44 Used by the routine at #R$7B0C.
@ $7C44 label=Screen_ClearLowerThird
b $7C62 Data block at 7C62
B $7C62,1,1 Store
c $7C63 Print out the inventory.
D $7C63 Used by the routines at #R$7B0C, #R$7D49 and #R$7F5D.
@ $7C63 label=UpdateInv_A
N $7C64 This entry point is used by the routine at #R$7E90.
@ $7C64 label=UpdateInv_B
@ $7C6C label=UpdateInv_A_0
C $7C9E,4 Get number if items and index of item selected.
C $7CA2,1 Make sure the selection is not greater than the number of items in the inventory.
C $7CA7,1 Now holds the inventory index for the item selected.
@ $7CAB label=UpdateInv_A_1
C $7CAB,3 Print string at next address (defined by stack)
b $7CAE Data block at 7CAE
B $7CAE,1,1 String for INK(3), PAPER(0), BRIGHT(1)
B $7CAF,6,1
c $7CB5 Routine at 7CB5
C $7CB5,2 Return from print appears here.
C $7CB8,4 Man data holds pointer to first object carried.
@ $7CBC label=UpdateInv_A_2
C $7CBC,3 This offset holds the object pointer. Either first one in man data or next one held in object data iteself.
C $7CC2,1 zero means nothing carried.
C $7CC6,1 Store object address
C $7CC7,1 And copy into IX
C $7CE4,1 If D == 0 then we have hit the item which is selected.
C $7CF1,2 Print the '*' next to the selected item.
@ $7CF8 label=UpdateInv_A_3
C $7CF8,2 Print the ' ' next to the unselected item.
@ $7CFD label=UpdateInv_A_4
C $7CFD,3 Point to start of object string.
N $7D01 Print Object String.
@ $7D01 label=UpdateInv_A_5
C $7D03,2 '^' is end of string.
C $7D07,2 '+' is an extended message.
@ $7D10 label=UpdateInv_A_6
@ $7D22 label=UpdateInv_A_7
@ $7D2A label=UpdateInv_A_8
@ $7D39 label=UpdateInv_A_9
c $7D49 Routine at 7D49
D $7D49 Used by the routines at #R$7B0C, #R$7DC5 and #R$7E90.
c $7DC5 Pick up.
D $7DC5 Used by the routine at #R$7B0C.
@ $7DC5 label=ObjectPickUp
C $7DC5,3 Can't carry more than four objects
C $7DD1,4 Get pointer holding address of first object laying around in area.
C $7DD5,3 Offset so we get the value from the address.
@ $7DDA label=ObjectPickUp_0
C $7DDA,3 Get pointer to next object in link list.
C $7DE0,1 Zero is end of link list.
C $7DE3,4 Remember current object.
C $7DE7,1 Get pointer to next object.
C $7DEA,4 See if hero is standing close enough to pick up.
@ $7E07 label=ObjectPickUp_1
@ $7E0C label=ObjectPickUp_2
C $7E13,2 Not close enough move onto next object in list.
C $7E1D,3 Get pointer to next object in list.
@ $7E30 label=ObjectPickUp_3
@ $7E47 label=ObjectPickUp_4
@ $7E5F label=ObjectPickUp_5
@ $7E63 label=ObjectPickUp_6
C $7E63,3 Add object to top of inventory linked list.
C $7E70,4 Make next object in area list become the first.
C $7E7A,3 Increase number of objects carried.
C $7E88,3 Beep
c $7E90 Drop object
D $7E90 Used by the routine at #R$7B0C.
@ $7E90 label=ObjectDrop
C $7E90,3 Cannot drop if carrying no items.
C $7E95,3 Beep
C $7E9E,4 IX if offset so that we can get to the start of the inventory linked list.
C $7EA2,3 Get index of selected object. Run through the linked list until we get to the selected object.
@ $7EA7 label=ObjectDrop_0
C $7EAD,4 Remember object before.
C $7EB6,1 Ix nows points to the selected object.
C $7EC0,3 Are we in Cnoc Suil?
C $7EC7,4 ... and is the 'Oracle' flag set?
@ $7ECD label=ObjectDrop_1
C $7ECD,3 Not an oracle object.
@ $7EDE label=ObjectDrop_2
@ $7EEF label=ObjectDrop_3
@ $7F00 label=ObjectDrop_4
C $7F0A,2 Put selected object onto path at players location.
C $7F20,3 Decrease number of objects carried.
C $7F24,3 Are we in Cnoc Suil?
C $7F2C,4 ... and is the 'Oracle' flag set?
C $7F33,2 Update inventory display.
C $7F3A,1 Find objects message and display on screen.
@ $7F41 label=ObjectDrop_5
@ $7F47 label=ObjectDrop_6
@ $7F4F label=ObjectDrop_7
c $7F5D 'Select' key pressed.
D $7F5D Used by the routine at #R$7B0C.
@ $7F5D label=HandleSelectInput
C $7F5D,3 Get number of items carried
C $7F60,1 Do nothing if no items carried.
C $7F63,3 Move selection onto next item, wrapping round if max reached.
@ $7F6B label=HandleSelectInput_0
b $7F72 Direction of each frame for hero. (1 right, 2 left).
@ $7F72 label=HeroFrameDir
B $7F72,12,8,4
b $7F7E Data block at 7F7E
B $7F7E,9,8,1
b $7F87 Data block at 7F87
B $7F87,32,8
c $7FA7 Copy background into hero's background store and draw correct frame for hero.
D $7FA7 Used by the routine at #R$7B0C.
@ $7FA7 label=HeroDraw()
N $7FAA This entry point is used by the routine at #R$7B0C.
@ $7FAA label=HeroDraw(a)
@ $7FD3 label=HeroDraw()_0
@ $7FD5 label=HeroDraw()_1
@ $7FF0 label=HeroDraw()_2
@ $7FF1 label=HeroDraw()_3
@ $7FF3 label=HeroDraw()_4
@ $8006 label=HeroDraw()_5
@ $800B label=HeroDraw()_6
@ $801A label=HeroDraw()_7
@ $8032 label=HeroDraw()_8
@ $8050 label=HeroDraw()_9
@ $8097 label=HeroDraw()_10
@ $80AB label=HeroDraw()_11
@ $80B7 label=HeroDraw()_12
@ $80B9 label=HeroDraw()_13
c $80D0 Updates bitmaps behind hero and sidhe.
D $80D0 Used by the routine at #R$7B0C.
@ $80D0 label=BgUpdate
C $80DE,3 Get correct part of offscreen for wide sprite (attacking frame).
@ $80E9 label=BgUpdate_0
@ $80EB label=BgUpdate_1
@ $8108 label=BgUpdate_2
@ $8109 label=BgUpdate_3
@ $810B label=BgUpdate_4
@ $8120 label=BgUpdate_5
@ $8125 label=BgUpdate_6
@ $8136 label=BgUpdate_7
c $813C Routine at 813C
D $813C Used by the routine at #R$8456.
b $818A Data block at 818A
B $818A,4,4
c $818E Routine at 818E
D $818E Used by the routine at #R$8456.
c $826E Routine at 826E
D $826E Used by the routine at #R$82F1.
c $82CB Routine at 82CB
D $82CB Used by the routine at #R$8456.
b $82F1 Routine at 82F1
@ $82F1 label=SidheMove_DataFrame
B $82F1,1,1 Frame counter (0 or 1). Sidhe moves when 1.
B $82F2,4,4
c $82F6 This entry point is used by the routines at #R$7B0C and #R$859A.
D $82F6 Used by the routines at #R$7B0C and #R$859A.
@ $82F6 label=SideMove
C $82F6,3 Only handle every other frame.
@ $830D label=SidheMove_DataFrame_0
C $830D,3 Decrease moves left. If zero then check to see where to move next.
@ $8324 label=SidheMove_DataFrame_1
C $8327,3 Get direction.
C $832E,3 Get E/W position
@ $8336 label=SidheMove_DataFrame_2
C $8336,3 Get N/S position
N $833C Move in the correct direction.
@ $833C label=SidheMove_DataFrame_3
C $833C,2 Moving north?
C $8340,2 Moving west?
@ $8347 label=SidheMove_DataFrame_4
@ $8348 label=SidheMove_DataFrame_5
C $8348,2 Test compass for N/E
@ $8354 label=SidheMove_DataFrame_6
N $835A N
@ $835A label=SidheMove_DataFrame_7
@ $8399 label=SidheMove_Near
C $8399,3 See if the sidhe is with $14 units of the man.
C $83AF,3 Check again with the E/W position.
C $83C4,3 See if the warning message has already been displayed.
C $83CA,4 If not display it and set the flag.
b $83D1 Data block at 83D1
T $83D1,6,6
B $83D7,1,1
c $83D8 Routine at 83D8
D $83D8 Used by the routine at #R$82F6.
@ $83D8 label=SidheMove_DataFrame_8
@ $8400 label=SidheMove_DataFrame_9
N $840F This entry point is used by the routine at #R$82F6.
@ $840F label=SidheMove_Exit
C $840F,4 Clear message flag
N $8414 This entry point is used by the routine at #R$82F6.
@ $8414 label=SidheMove_WhatNext
C $8414,3 Decide what to do next
c $8456 Routine at 8456
D $8456 Used by the routine at #R$82F1.
c $859A Update Sidhe
D $859A Used by the routines at #R$7B0C and #R$7FA7.
@ $859A label=SidheUpdate
@ $85CE label=SidheUpdate_0
b $85E1 Baddy Sprite Blit
@ $85E1 label=SpriteBlit_DataWidth
W $85E1,2,2
@ $85E3 label=SpriteBlit_Data2
B $85E3,1,1
c $85E4 This entry point is used by the routines at #R$7B0C, #R$859A, #R$87BF and #R$88C7.
D $85E4 Used by the routines at #R$7B0C, #R$859A, #R$87BF and #R$88C7.
@ $85E4 label=SpriteBlit
C $85E4,2 Store sprite data pointer
C $85E6,3 Index to bitmap data. data_width+(i*4)
@ $8606 label=SpriteBlit_DataWidth_0
@ $862C label=SpriteBlit_DataWidth_1
C $862C,1 Get bitmap width
C $8639,1 Get bitmap height
C $8640,1 Get bitmap offset. $9436+(offset)
C $8650,3 Camera is E/W
@ $865B label=SpriteBlit_DataWidth_2
C $865B,3 Camera is N/S
@ $8664 label=SpriteBlit_DataWidth_3
C $8664,2 Test camera for N/E or S/W
C $8668,1 Camera is S/W
@ $8669 label=SpriteBlit_DataWidth_4
@ $869A label=SpriteBlit_DataWidth_5
@ $86C0 label=SpriteBlit_DataWidth_6
@ $86C4 label=SpriteBlit_DataWidth_7
@ $86F3 label=SpriteBlit_DataWidth_8
@ $8705 label=SpriteBlit_DataWidth_9
@ $8716 label=SpriteBlit_DataWidth_10
@ $8729 label=SpriteBlit_DataWidth_11
@ $872C label=SpriteBlit_DataWidth_12
@ $8745 label=SpriteBlit_DataWidth_13
@ $8754 label=SpriteBlit_DataWidth_14
@ $8766 label=SpriteBlit_DataWidth_15
@ $877B label=SpriteBlit_DataWidth_16
@ $8786 label=SpriteBlit_DataWidth_17
c $8798 Blit the background behind the Sidhe.
D $8798 Used by the routines at #R$7B0C and #R$80D0.
@ $8798 label=Sidhe_BlitBg
C $8798,4 Get where to blit on offscreen.
C $879F,4 Get width and height of Sidhe.
C $87A6,3 Get address of stored background.
@ $87A9 label=Sidhe_BlitBg_0
c $87BF Routine at 87BF
D $87BF Used by the routine at #R$7B0C.
c $88C7 Face Action Function.
D $88C7 Used by the routine at #R$7B0C.
@ $88C7 label=Action_FaceFunc
@ $88E3 label=Action_FaceFunc_0
@ $88E8 label=Action_FaceFunc_1
c $891F Vectors
D $891F Used by the routine at #R$65BF.
N $8922 This entry point is used by the routine at #R$65BF.
N $8925 This entry point is used by the routines at #R$6236, #R$638A, #R$6A61, #R$6D3C, #R$7C63 and #R$7E90.
@ $8925 label=Vector_PrintChar
C $8925,3 Vectors
@ $892B label=Vector_ActionOracle
N $8931 This entry point is used by the routines at #R$6A61, #R$6CCC, #R$7834, #R$82F1 and #R$F395.
@ $8931 label=Vector_DisplayWarning
@ $8934 label=Vector_ActionSeal
N $8937 This entry point is used by the routine at #R$F489.
@ $8937 label=Vector_DisplayMenu
@ $893A label=Vector_ActionTablet
b $893D Data block at 893D
B $893D,16,8
b $894D Cave Data
@ $894D label=CaveData
W $894D,2,2 Scenery Item Data Ptr
W $894F,2,2 Scenery Item String Ptr
W $8951,2,2 Primary Path Ptr
W $8953,2,2 Secondary Path Ptr
W $8955,2,2 Objects Ptr
W $8957,6,2
@ $895D label=CaveData_SceneryItems
B $895D,5,5 Cave Scenery Item Data (Changed for each cave).
B $8962,20,8*2,4
@ $8976 label=CaveData_SceneryString
B $8976,8,8 Cave Scenery String Data
B $897E,8,8
@ $8986 label=CaveDataSceneryString
B $8986,2,2 Position
B $8988,1,1 Number of columns.
B $8989,1,1 Compass
B $898A,1,1 Number of items.
B $898B,29,8,6,1*3,8,4
@ $89A8 label=CaveData_PathPrimary
B $89A8,4,4 [Area, axis, start, end]
@ $89AC label=CaveData_PathSecondary
B $89AC,3,2,1
c $89AF Display Warning
D $89AF Used by the routines at #R$891F and #R$89E0. Input:  SP  Stack holds pointer to warning string.
@ $89AF label=DisplayWarning
C $89B1,3 Clear text area.
C $89C5,2 Start timer.
C $89CA,3 Position cursor and set up text colours.
b $89CD Data block at 89CD
B $89CD,10,1
c $89D7 Routine at 89D7
C $89D9,3 Display warning using next stack data as string address.
b $89DC Data block at 89DC
@ $89DC label=Routine_DataDirection
@ $89DD label=Routine_DataCompass
@ $89DE label=Routine_Data2
@ $89DF label=Routine_Data3
B $89DC,4,1
c $89E0 Checks for an exit when hero walks off a path edge / end.
D $89E0 Used by the routine at #R$891F. Input:  A  Hero's direction.
@ $89E0 label=ExitCheck
@ $89FF label=ExitCheck_0
@ $8A06 label=ExitCheck_1
@ $8A12 label=ExitCheck_2
@ $8A15 label=ExitCheck_3
@ $8A1E label=ExitCheck_4
@ $8A1F label=ExitCheck_5
@ $8A27 label=ExitCheck_6
@ $8A40 label=ExitCheck_7
@ $8A45 label=ExitCheck_8
@ $8A51 label=ExitCheck_9
@ $8A55 label=ExitCheck_10
C $8A59,3 See if door is locked.
C $8A5C,1 Zero means not.
N $8A5F Try match an object to unlock door.
C $8A5F,1 Lock number.
C $8A60,4 Point to mand data for object carried.
N $8A64 This entry point is used by the routine at #R$8A7D.
@ $8A64 label=ExitCheck_11
C $8A64,3 Get object point next in list.
C $8A6A,1 0000 = End of list.
C $8A6E,3 So just display warning.
b $8A76 Data block at 8A76
T $8A76,6,6
B $8A7C,1,1
c $8A7D Routine at 8A7D
N $8A7E This entry point is used by the routine at #R$89E0.
@ $8A7E label=ExitCheck_12
C $8A7E,1 Does object's lock number match?
C $8A84,1 No, try next object.
N $8A87 Go through door.
@ $8A87 label=ExitCheck_13
b $8A8D Cave Action Function Pointer.
D $8A8D Data
@ $8A8D label=CaveActionPtrs
W $8A8D,6,2
c $8A93 Update data for new room.
D $8A93 Used by the routine at #R$891F.
@ $8A93 label=Exit_NewRoom
C $8A93,3 Clear action links.
C $8A96,4 Get exit data man has walked through.
C $8A9A,3 Holds room type. >0 means a cave within an area.
N $8AA2 New Area.
C $8AA2,3 Get new position for man to appear at.
C $8AB4,3 Get index of new area.
C $8AB7,3 Get and store old area index.
C $8ABB,3 Update everything for new area.
C $8AC1,1 Get previous area index for comparison.
C $8AC2,3 Is new area Glasmarsh?
C $8AC9,1 Yes, so see which cave type we have come from.
N $8B02 Enter room as normal.
@ $8B02 label=Exit_NewRoom_0
N $8B1F Entered cave / passageway.
@ $8B1F label=Exit_NewRoom_1
@ $8B57 label=Exit_NewRoom_2
@ $8B75 label=Exit_NewRoom_3
@ $8BA4 label=Exit_NewRoom_4
@ $8BD3 label=Exit_NewRoom_5
@ $8BDA label=Exit_NewRoom_6
@ $8BEC label=Exit_NewRoom_7
@ $8BFC label=Exit_NewRoom_8
@ $8C10 label=Exit_NewRoom_9
@ $8C35 label=Exit_NewRoom_10
@ $8C64 label=Exit_NewRoom_11
@ $8C9F label=Exit_NewRoom_12
@ $8CB0 label=Exit_NewRoom_13
@ $8CE8 label=Exit_NewRoom_14
c $8CFE Select character set and draw character. Anything less than 51 gets drawn in the ROM set, else it uses the special set.
D $8CFE Used by the routine at #R$891F. Input:  A  Character code to print.
@ $8CFE label=PrintChar
@ $8D08 label=PrintChar_0
@ $8D0B label=PrintChar_1
c $8D11 Routine at 8D11
D $8D11 Used by the routine at #R$891F.
c $8D50 Oracle Action Function.
D $8D50 Used by the routine at #R$891F.
@ $8D50 label=ActionOracle
@ $8D62 label=ActionOracle_0
@ $8D6C label=ActionOracle_1
@ $8D74 label=ActionOracle_2
@ $8D9A label=ActionOracle_3
b $8DA6 Data block at 8DA6
D $8DA6 Used by the routine at #R$891F.
B $8DA6,1,1
b $8DA7 Alter of the Seal Extended Action Data
@ $8DA7 label=ActionAlterDataExt
B $8DA7,9,3
B $8DB0,3,3 Dagda's Cauldron
B $8DB3,3,3
c $8DB6 Alter of the Seal Action Function.
D $8DB6 Used by the routine at #R$891F.
@ $8DB6 label=ActionSeal
C $8DB6,3 Test for camera (00)
C $8DBD,3 Set up for alter extended action data
N $8DCB Look to see if all items are complete.
@ $8DCB label=ActionSeal_0
N $8DD5 Still have objects left to drop.
@ $8DD5 label=ActionSeal_1
C $8DD5,3 Point to the Alter's bitmap.
C $8DDE,4 Set the size for the Alter.
C $8DE2,3 Get position for man and scenery ready...
C $8DEB,2 Jump to the Tablet code for checking for a correct drop and updating the Alter's bitmap.
b $8DED Tablet extended action data
D $8DED Shows which object gets changed into a compass letter on the tablet.
@ $8DED label=ActionTabletExt
B $8DED,3,3 Bottle, 'n'
B $8DF0,3,3 Candle, 'e'
B $8DF3,3,3 Bucket, 'n'
B $8DF6,3,3 Goblet, 'e'
b $8DF9 Data block at 8DF9
B $8DF9,3,3
c $8DFC Tablet / Alter Action Function.
D $8DFC Checks for a dropped object, if it matches the expected items Input:  IX  Pointer to scenery item action data.
@ $8DFC label=ActionTablet
C $8DFC,3 Only works if camera is facing (3)
C $8E03,3 Store address for tablet.
C $8E0C,3 Store address of the tablet's bitmap.
C $8E15,4 Along with the width.
N $8E22 This entry point is used by the routine at #R$8DB6.
@ $8E22 label=ActionAlterEntry
C $8E22,3 Get distance between man and scenery item.
C $8E25,3 If distance less than 22 (within range)?
C $8E2B,2 Yes.
C $8E2D,1 No, so see if man is within 7 units of item.
N $8E2E This entry point is used by the routine at #R$8DB6.
@ $8E2E label=ActionTablet_0
C $8E2E,1 If out of range, clear flags.
N $8E36 Item within range.
@ $8E36 label=ActionTablet_1
C $8E36,1 Get distance again.
C $8E37,3 Is man next to item flag set?
C $8E43,1 If not just return.
C $8E44,3 Set flags to show man is next to item, ready to drop an item.
N $8E52 Man next to item.
@ $8E52 label=ActionTablet_2
C $8E53,3 Has an object just been dropped.
C $8E5A,2 Yes, reset flag.
C $8E5F,3 Get address of dropped object.
C $8E64,1 Get its bitmap index.
C $8E67,3 Get pointer to extended scenery data.
N $8E6D Look for object within extended data.
@ $8E6D label=ActionTablet_3
C $8E6E,2 Object found.
C $8E75,2 Object not found.
N $8E77 Object found in list
@ $8E77 label=ActionTablet_4
C $8E77,2 Mark it off the list.
C $8E79,1 Get ascii value of icon to replace image on scenery
C $8E7C,2 Ignore if zero.
C $8E7E,1 Get bitmap offset to draw icon onto.
C $8E82,3 Get bitmap address to offset from first bitmap.
C $8E88,1 Add the two together to get true offset.
C $8E8C,3 Get bitmap width.
C $8E91,2 Draw compass letter onto scenery item to replace image of object.
C $8E96,3 Update everything.
@ $8E9B label=ActionTablet_5
C $8E9B,1 If man is range just return.
C $8EA4,3 If not then reset flags for this test.
b $8EAB Data block at 8EAB
B $8EAB,21,8*2,5
c $8EC0 Display Menu
D $8EC0 Used by the routines at #R$891F, #R$8F3E, #R$8F93 and #R$8FE5.
@ $8EC0 label=DisplayMenu
b $8EDB Data block at 8EDB
B $8EDB,1,1 Menu Text
B $8EDC,6,1
T $8EE2,7,7
B $8EE9,3,1
T $8EEC,19,19
B $8EFF,3,1
T $8F02,12,12
B $8F0E,3,1
T $8F11,15,15
B $8F20,1,1
c $8F21 Routine at 8F21
@ $8F21 label=DisplayMenu_0
C $8F21,4 Code
@ $8F25 label=DisplayMenu_1
@ $8F39 label=DisplayMenu_2
c $8F3E Display Start Tape
D $8F3E Used by the routine at #R$8EC0.
@ $8F3E label=Text_StartTape
b $8F44 Data block at 8F44
B $8F44,1,1 Text
B $8F45,2,1
T $8F47,27,27
B $8F62,1,1
c $8F63 Routine at 8F63
@ $8F67 label=Text_StartTape_0
@ $8F7D label=Text_StartTape_1
c $8F93 Routine at 8F93
D $8F93 Used by the routine at #R$8EC0.
c $8FC6 Routine at 8FC6
D $8FC6 Used by the routine at #R$8F3E.
N $8FCB This entry point is used by the routine at #R$8F93.
c $8FE5 Display Abandonded
D $8FE5 Used by the routine at #R$8FC6.
@ $8FE5 label=Text_Abandonded
N $8FE6 This entry point is used by the routines at #R$8F3E and #R$8F93.
@ $8FE6 label=Text_Abandonded_0
b $8FE9 Data block at 8FE9
B $8FE9,3,1
T $8FEC,9,9
B $8FF5,1,1
c $8FF6 Routine at 8FF6
@ $8FF8 label=Text_Abandonded_1
c $8FFF Display Enter Version Letter
D $8FFF Used by the routines at #R$8F3E and #R$8F93.
@ $8FFF label=Text_EnterVersionLetter
b $9002 Data block at 9002
B $9002,3,1
T $9005,20,20
B $9019,1,1
c $901A Routine at 901A
@ $901E label=Text_EnterVersionLetter_0
b $9030 Store; sprites [ y,x, height in pixels, width in chars]
@ $9030 label= s0
@ $9031 label= s1
@ $9032 label= s2
@ $9033 label= s3
B $9030,4,1
b $9034 Information on each bitmap.
@ $9034 label= BitmapData_E
W $9034,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9036,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
@ $9037 label=BitmapData_Width
B $9037,1,1 Width of bitmap inchar blocks.
@ $9038 label= BitmapData_ManWalk
W $9038,2,2 Offset to bitmap image. Add $943e for absolute address.
B $903A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $903B,1,1 Width of bitmap inchar blocks.
@ $903C label= BitmapData_951e
W $903C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $903E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $903F,1,1 Width of bitmap inchar blocks.
@ $9040 label= BitmapData_95fe
W $9040,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9042,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9043,1,1 Width of bitmap inchar blocks.
@ $9044 label= BitmapData_96de
W $9044,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9046,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9047,1,1 Width of bitmap inchar blocks.
@ $9048 label= BitmapData_97be
W $9048,2,2 Offset to bitmap image. Add $943e for absolute address.
B $904A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $904B,1,1 Width of bitmap inchar blocks.
@ $904C label= BitmapData_989e
W $904C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $904E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $904F,1,1 Width of bitmap inchar blocks.
@ $9050 label= BitmapData_997e
W $9050,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9052,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9053,1,1 Width of bitmap inchar blocks.
@ $9054 label= BitmapData_9a5e
W $9054,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9056,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9057,1,1 Width of bitmap inchar blocks.
@ $9058 label= BitmapData_9b3e
W $9058,2,2 Offset to bitmap image. Add $943e for absolute address.
B $905A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $905B,1,1 Width of bitmap inchar blocks.
@ $905C label= BitmapData_9c1e
W $905C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $905E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $905F,1,1 Width of bitmap inchar blocks.
@ $9060 label= BitmapData_9cfe
W $9060,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9062,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9063,1,1 Width of bitmap inchar blocks.
@ $9064 label= BitmapData_9dde
W $9064,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9066,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9067,1,1 Width of bitmap inchar blocks.
@ $9068 label= BitmapData_9ebe
W $9068,2,2 Offset to bitmap image. Add $943e for absolute address.
B $906A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $906B,1,1 Width of bitmap inchar blocks.
@ $906C label= BitmapData_9f9e
W $906C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $906E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $906F,1,1 Width of bitmap inchar blocks.
@ $9070 label= BitmapData_ManStand
W $9070,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9072,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9073,1,1 Width of bitmap inchar blocks.
@ $9074 label= BitmapData_a0ee
W $9074,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9076,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9077,1,1 Width of bitmap inchar blocks.
@ $9078 label= BitmapData_a15e
W $9078,2,2 Offset to bitmap image. Add $943e for absolute address.
B $907A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $907B,1,1 Width of bitmap inchar blocks.
@ $907C label= BitmapData_ManFacingIn
W $907C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $907E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $907F,1,1 Width of bitmap inchar blocks.
@ $9080 label= BitmapData_ManFacingOut
W $9080,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9082,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9083,1,1 Width of bitmap inchar blocks.
@ $9084 label= BitmapData_ManAttack
W $9084,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9086,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9087,1,1 Width of bitmap inchar blocks.
@ $9088 label= BitmapData_Blank1
W $9088,2,2 Offset to bitmap image. Add $943e for absolute address.
B $908A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $908B,1,1 Width of bitmap inchar blocks.
@ $908C label= BitmapData_Turf
W $908C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $908E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $908F,1,1 Width of bitmap inchar blocks.
@ $9090 label= BitmapData_NathairMouth1
W $9090,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9092,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9093,1,1 Width of bitmap inchar blocks.
@ $9094 label= BitmapData_9436
W $9094,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9096,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9097,1,1 Width of bitmap inchar blocks.
@ $9098 label= BitmapData_a4c6
W $9098,2,2 Offset to bitmap image. Add $943e for absolute address.
B $909A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $909B,1,1 Width of bitmap inchar blocks.
@ $909C label= BitmapData_a56e
W $909C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $909E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $909F,1,1 Width of bitmap inchar blocks.
@ $90A0 label= BitmapData_NathairEyes1
W $90A0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90A2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90A3,1,1 Width of bitmap inchar blocks.
@ $90A4 label= BitmapData_MathairEyes2
W $90A4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90A6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90A7,1,1 Width of bitmap inchar blocks.
@ $90A8 label= BitmapData_ManMask
W $90A8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90AA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90AB,1,1 Width of bitmap inchar blocks.
@ $90AC label= BitmapData_a5f6
W $90AC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90AE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90AF,1,1 Width of bitmap inchar blocks.
@ $90B0 label= BitmapData_a666
W $90B0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90B2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90B3,1,1 Width of bitmap inchar blocks.
@ $90B4 label= BitmapData_a746
W $90B4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90B6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90B7,1,1 Width of bitmap inchar blocks.
@ $90B8 label= BitmapData_a826
W $90B8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90BA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90BB,1,1 Width of bitmap inchar blocks.
@ $90BC label= BitmapData_a906
W $90BC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90BE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90BF,1,1 Width of bitmap inchar blocks.
@ $90C0 label= BitmapData_a9e6
W $90C0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90C2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90C3,1,1 Width of bitmap inchar blocks.
@ $90C4 label= BitmapData_aac6
W $90C4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90C6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90C7,1,1 Width of bitmap inchar blocks.
@ $90C8 label= BitmapData_aba6
W $90C8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90CA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90CB,1,1 Width of bitmap inchar blocks.
@ $90CC label= BitmapData_ac86
W $90CC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90CE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90CF,1,1 Width of bitmap inchar blocks.
@ $90D0 label= BitmapData_acf6
W $90D0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90D2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90D3,1,1 Width of bitmap inchar blocks.
@ $90D4 label= BitmapData_add6
W $90D4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90D6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90D7,1,1 Width of bitmap inchar blocks.
@ $90D8 label= BitmapData_Stone01
W $90D8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90DA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90DB,1,1 Width of bitmap inchar blocks.
@ $90DC label= BitmapData_Stone02
W $90DC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90DE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90DF,1,1 Width of bitmap inchar blocks.
@ $90E0 label= BitmapData_Stone03
W $90E0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90E2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90E3,1,1 Width of bitmap inchar blocks.
@ $90E4 label= BitmapData_Stone04
W $90E4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90E6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90E7,1,1 Width of bitmap inchar blocks.
@ $90E8 label= BitmapData_Stone05
W $90E8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90EA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90EB,1,1 Width of bitmap inchar blocks.
@ $90EC label= BitmapData_Stone06
W $90EC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90EE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90EF,1,1 Width of bitmap inchar blocks.
@ $90F0 label= BitmapData_Stone07
W $90F0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90F2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90F3,1,1 Width of bitmap inchar blocks.
@ $90F4 label= BitmapData_Bead
W $90F4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90F6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90F7,1,1 Width of bitmap inchar blocks.
@ $90F8 label= BitmapData_Daisy
W $90F8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90FA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90FB,1,1 Width of bitmap inchar blocks.
@ $90FC label= BitmapData_Blank2
W $90FC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $90FE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $90FF,1,1 Width of bitmap inchar blocks.
@ $9100 label= BitmapData_Blank3
W $9100,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9102,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9103,1,1 Width of bitmap inchar blocks.
@ $9104 label= BitmapData_Sting
W $9104,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9106,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9107,1,1 Width of bitmap inchar blocks.
@ $9108 label= BitmapData_Rock01
W $9108,2,2 Offset to bitmap image. Add $943e for absolute address.
B $910A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $910B,1,1 Width of bitmap inchar blocks.
@ $910C label= BitmapData_Rock02
W $910C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $910E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $910F,1,1 Width of bitmap inchar blocks.
@ $9110 label= BitmapData_Block01
W $9110,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9112,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9113,1,1 Width of bitmap inchar blocks.
@ $9114 label= BitmapData_DoorThin
W $9114,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9116,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9117,1,1 Width of bitmap inchar blocks.
@ $9118 label= BitmapData_DoorThinSide
W $9118,2,2 Offset to bitmap image. Add $943e for absolute address.
B $911A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $911B,1,1 Width of bitmap inchar blocks.
@ $911C label= BitmapData_Rock03
W $911C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $911E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $911F,1,1 Width of bitmap inchar blocks.
@ $9120 label= BitmapData_Rock04
W $9120,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9122,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9123,1,1 Width of bitmap inchar blocks.
@ $9124 label= BitmapData_RockEdge
W $9124,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9126,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9127,1,1 Width of bitmap inchar blocks.
@ $9128 label= BitmapData_StoneLarge
W $9128,2,2 Offset to bitmap image. Add $943e for absolute address.
B $912A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $912B,1,1 Width of bitmap inchar blocks.
@ $912C label= BitmapData_StoneTwin
W $912C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $912E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $912F,1,1 Width of bitmap inchar blocks.
@ $9130 label= BitmapData_Shrub01
W $9130,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9132,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9133,1,1 Width of bitmap inchar blocks.
@ $9134 label= BitmapData_DoorLarge
W $9134,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9136,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9137,1,1 Width of bitmap inchar blocks.
@ $9138 label= BitmapData_DoorLargeSide
W $9138,2,2 Offset to bitmap image. Add $943e for absolute address.
B $913A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $913B,1,1 Width of bitmap inchar blocks.
@ $913C label= BitmapData_Plant01
W $913C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $913E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $913F,1,1 Width of bitmap inchar blocks.
@ $9140 label= BitmapData_Wall01
W $9140,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9142,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9143,1,1 Width of bitmap inchar blocks.
@ $9144 label= BitmapData_Block02
W $9144,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9146,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9147,1,1 Width of bitmap inchar blocks.
@ $9148 label= BitmapData_BlockPanel
W $9148,2,2 Offset to bitmap image. Add $943e for absolute address.
B $914A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $914B,1,1 Width of bitmap inchar blocks.
@ $914C label= BitmapData_Shrub02
W $914C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $914E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $914F,1,1 Width of bitmap inchar blocks.
@ $9150 label= BitmapData_GorseMiddle
W $9150,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9152,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9153,1,1 Width of bitmap inchar blocks.
@ $9154 label= BitmapData_GorseEdge
W $9154,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9156,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9157,1,1 Width of bitmap inchar blocks.
@ $9158 label= BitmapData_StoneMedium
W $9158,2,2 Offset to bitmap image. Add $943e for absolute address.
B $915A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $915B,1,1 Width of bitmap inchar blocks.
@ $915C label= BitmapData_GorseEntrance
W $915C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $915E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $915F,1,1 Width of bitmap inchar blocks.
@ $9160 label= BitmapData_GorseEntranceSide
W $9160,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9162,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9163,1,1 Width of bitmap inchar blocks.
@ $9164 label= BitmapData_Plant02
W $9164,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9166,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9167,1,1 Width of bitmap inchar blocks.
@ $9168 label= BitmapData_Plant03
W $9168,2,2 Offset to bitmap image. Add $943e for absolute address.
B $916A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $916B,1,1 Width of bitmap inchar blocks.
@ $916C label= BitmapData_Plant04
W $916C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $916E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $916F,1,1 Width of bitmap inchar blocks.
@ $9170 label= BitmapData_Plant05
W $9170,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9172,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9173,1,1 Width of bitmap inchar blocks.
@ $9174 label= BitmapData_Plant06
W $9174,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9176,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9177,1,1 Width of bitmap inchar blocks.
@ $9178 label= BitmapData_Plant07
W $9178,2,2 Offset to bitmap image. Add $943e for absolute address.
B $917A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $917B,1,1 Width of bitmap inchar blocks.
@ $917C label= BitmapData_StoneOther
W $917C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $917E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
@ $917F label=BmpData_Rock1
B $917F,1,1 Width of bitmap inchar blocks.
@ $9180 label= BitmapData_Shrub0
W $9180,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9182,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9183,1,1 Width of bitmap inchar blocks.
@ $9184 label= BitmapData_WaterFall
W $9184,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9186,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
@ $9187 label=BmpData_Waterfall_width
B $9187,1,1 Width of bitmap inchar blocks.
@ $9188 label= BitmapData_Blank4
W $9188,2,2 Offset to bitmap image. Add $943e for absolute address.
B $918A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $918B,1,1 Width of bitmap inchar blocks.
@ $918C label= BitmapData_Lump
W $918C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $918E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $918F,1,1 Width of bitmap inchar blocks.
@ $9190 label= BitmapData_Tablet
W $9190,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9192,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9193,1,1 Width of bitmap inchar blocks.
@ $9194 label= BitmapData_Thing01
W $9194,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9196,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9197,1,1 Width of bitmap inchar blocks.
@ $9198 label= BitmapData_Thing02
W $9198,2,2 Offset to bitmap image. Add $943e for absolute address.
B $919A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $919B,1,1 Width of bitmap inchar blocks.
@ $919C label= BitmapData_Scorpian
W $919C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $919E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $919F,1,1 Width of bitmap inchar blocks.
@ $91A0 label= BitmapData_Tree01
W $91A0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91A2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91A3,1,1 Width of bitmap inchar blocks.
@ $91A4 label= BitmapData_Tree02
W $91A4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91A6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91A7,1,1 Width of bitmap inchar blocks.
@ $91A8 label= BitmapData_Tree03
W $91A8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91AA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91AB,1,1 Width of bitmap inchar blocks.
@ $91AC label= BitmapData_Cross
W $91AC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91AE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91AF,1,1 Width of bitmap inchar blocks.
@ $91B0 label= BitmapData_OlcWeed01
W $91B0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91B2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91B3,1,1 Width of bitmap inchar blocks.
@ $91B4 label= BitmapData_OlcWeed02
W $91B4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91B6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91B7,1,1 Width of bitmap inchar blocks.
@ $91B8 label= BitmapData_OlcWeed03
W $91B8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91BA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91BB,1,1 Width of bitmap inchar blocks.
@ $91BC label= BitmapData_OlcWeed04
W $91BC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91BE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91BF,1,1 Width of bitmap inchar blocks.
@ $91C0 label= BitmapData_OlcWeed05
W $91C0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91C2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91C3,1,1 Width of bitmap inchar blocks.
@ $91C4 label= BitmapData_OlcWeed06
W $91C4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91C6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91C7,1,1 Width of bitmap inchar blocks.
@ $91C8 label= BitmapData_Caudlron
W $91C8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91CA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91CB,1,1 Width of bitmap inchar blocks.
@ $91CC label= BitmapData_Blank5
W $91CC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91CE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91CF,1,1 Width of bitmap inchar blocks.
@ $91D0 label= BitmapData_Spear
W $91D0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91D2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91D3,1,1 Width of bitmap inchar blocks.
@ $91D4 label= BitmapData_Sword
W $91D4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91D6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91D7,1,1 Width of bitmap inchar blocks.
@ $91D8 label= BitmapData_Book
W $91D8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91DA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91DB,1,1 Width of bitmap inchar blocks.
@ $91DC label= BitmapData_Candle
W $91DC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91DE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91DF,1,1 Width of bitmap inchar blocks.
@ $91E0 label= BitmapData_Axe
W $91E0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91E2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91E3,1,1 Width of bitmap inchar blocks.
@ $91E4 label= BitmapData_Mace
W $91E4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91E6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91E7,1,1 Width of bitmap inchar blocks.
@ $91E8 label= BitmapData_Spade
W $91E8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91EA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91EB,1,1 Width of bitmap inchar blocks.
@ $91EC label= BitmapData_Torc
W $91EC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91EE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91EF,1,1 Width of bitmap inchar blocks.
@ $91F0 label= BitmapData_TorcHalf01
W $91F0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91F2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91F3,1,1 Width of bitmap inchar blocks.
@ $91F4 label= BitmapData_Dagger
W $91F4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91F6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91F7,1,1 Width of bitmap inchar blocks.
@ $91F8 label= BitmapData_Bucket
W $91F8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91FA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91FB,1,1 Width of bitmap inchar blocks.
@ $91FC label= BitmapData_Harp
W $91FC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $91FE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $91FF,1,1 Width of bitmap inchar blocks.
@ $9200 label= BitmapData_TabletSmall
W $9200,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9202,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9203,1,1 Width of bitmap inchar blocks.
@ $9204 label= BitmapData_Chain
W $9204,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9206,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9207,1,1 Width of bitmap inchar blocks.
@ $9208 label= BitmapData_Feather
W $9208,2,2 Offset to bitmap image. Add $943e for absolute address.
B $920A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $920B,1,1 Width of bitmap inchar blocks.
@ $920C label= BitmapData_Goblet
W $920C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $920E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $920F,1,1 Width of bitmap inchar blocks.
@ $9210 label= BitmapData_Hachett
W $9210,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9212,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9213,1,1 Width of bitmap inchar blocks.
@ $9214 label= BitmapData_Scroll
W $9214,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9216,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9217,1,1 Width of bitmap inchar blocks.
@ $9218 label= BitmapData_Antlers
W $9218,2,2 Offset to bitmap image. Add $943e for absolute address.
B $921A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $921B,1,1 Width of bitmap inchar blocks.
@ $921C label= BitmapData_Blank6
W $921C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $921E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $921F,1,1 Width of bitmap inchar blocks.
@ $9220 label= BitmapData_Crown
W $9220,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9222,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9223,1,1 Width of bitmap inchar blocks.
@ $9224 label= BitmapData_Crystal
W $9224,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9226,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9227,1,1 Width of bitmap inchar blocks.
@ $9228 label= BitmapData_Sword02
W $9228,2,2 Offset to bitmap image. Add $943e for absolute address.
B $922A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $922B,1,1 Width of bitmap inchar blocks.
@ $922C label= BitmapData_Leaf
W $922C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $922E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $922F,1,1 Width of bitmap inchar blocks.
@ $9230 label= BitmapData_Thing03
W $9230,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9232,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9233,1,1 Width of bitmap inchar blocks.
@ $9234 label= BitmapData_Bottle
W $9234,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9236,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9237,1,1 Width of bitmap inchar blocks.
@ $9238 label= BitmapData_Gem01
W $9238,2,2 Offset to bitmap image. Add $943e for absolute address.
B $923A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $923B,1,1 Width of bitmap inchar blocks.
@ $923C label= BitmapData_StoneThing
W $923C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $923E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $923F,1,1 Width of bitmap inchar blocks.
@ $9240 label= BitmapData_Flint?
W $9240,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9242,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9243,1,1 Width of bitmap inchar blocks.
@ $9244 label= BitmapData_Bit01
W $9244,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9246,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9247,1,1 Width of bitmap inchar blocks.
@ $9248 label= BitmapData_Bit02
W $9248,2,2 Offset to bitmap image. Add $943e for absolute address.
B $924A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $924B,1,1 Width of bitmap inchar blocks.
@ $924C label= BitmapData_key
W $924C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $924E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $924F,1,1 Width of bitmap inchar blocks.
@ $9250 label= BitmapData_Dot
W $9250,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9252,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9253,1,1 Width of bitmap inchar blocks.
@ $9254 label= BitmapData_Gem02
W $9254,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9256,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9257,1,1 Width of bitmap inchar blocks.
@ $9258 label= BitmapData_Sand
W $9258,2,2 Offset to bitmap image. Add $943e for absolute address.
B $925A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $925B,1,1 Width of bitmap inchar blocks.
@ $925C label= BitmapData_EggLarge
W $925C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $925E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $925F,1,1 Width of bitmap inchar blocks.
@ $9260 label= BitmapData_Iris
W $9260,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9262,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9263,1,1 Width of bitmap inchar blocks.
@ $9264 label= BitmapData_Pin
W $9264,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9266,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9267,1,1 Width of bitmap inchar blocks.
@ $9268 label= BitmapData_EggSmall
W $9268,2,2 Offset to bitmap image. Add $943e for absolute address.
B $926A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $926B,1,1 Width of bitmap inchar blocks.
@ $926C label= BitmapData_Ring
W $926C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $926E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $926F,1,1 Width of bitmap inchar blocks.
@ $9270 label= BitmapData_Weight
W $9270,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9272,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9273,1,1 Width of bitmap inchar blocks.
@ $9274 label= BitmapData_94361
W $9274,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9276,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9277,1,1 Width of bitmap inchar blocks.
@ $9278 label= BitmapData_94362
W $9278,2,2 Offset to bitmap image. Add $943e for absolute address.
B $927A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $927B,1,1 Width of bitmap inchar blocks.
@ $927C label= BitmapData_c5ae
W $927C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $927E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $927F,1,1 Width of bitmap inchar blocks.
@ $9280 label= BitmapData_94363
W $9280,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9282,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9283,1,1 Width of bitmap inchar blocks.
@ $9284 label= BitmapData_94364
W $9284,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9286,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9287,1,1 Width of bitmap inchar blocks.
@ $9288 label= BitmapData_c5ce
W $9288,2,2 Offset to bitmap image. Add $943e for absolute address.
B $928A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $928B,1,1 Width of bitmap inchar blocks.
@ $928C label= BitmapData_94365
W $928C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $928E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $928F,1,1 Width of bitmap inchar blocks.
@ $9290 label= BitmapData_94366
W $9290,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9292,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9293,1,1 Width of bitmap inchar blocks.
@ $9294 label= BitmapData_94367
W $9294,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9296,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9297,1,1 Width of bitmap inchar blocks.
@ $9298 label= BitmapData_c5d6
W $9298,2,2 Offset to bitmap image. Add $943e for absolute address.
B $929A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $929B,1,1 Width of bitmap inchar blocks.
@ $929C label= BitmapData_c5de
W $929C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $929E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $929F,1,1 Width of bitmap inchar blocks.
@ $92A0 label= BitmapData_c5e6
W $92A0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92A2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92A3,1,1 Width of bitmap inchar blocks.
@ $92A4 label= BitmapData_94368
W $92A4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92A6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92A7,1,1 Width of bitmap inchar blocks.
@ $92A8 label= BitmapData_c5ee
W $92A8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92AA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92AB,1,1 Width of bitmap inchar blocks.
@ $92AC label= BitmapData_c5f6
W $92AC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92AE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92AF,1,1 Width of bitmap inchar blocks.
@ $92B0 label= BitmapData_94369
W $92B0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92B2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92B3,1,1 Width of bitmap inchar blocks.
@ $92B4 label= BitmapData_943610
W $92B4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92B6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92B7,1,1 Width of bitmap inchar blocks.
@ $92B8 label= BitmapData_c5fe
W $92B8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92BA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92BB,1,1 Width of bitmap inchar blocks.
@ $92BC label= BitmapData_943611
W $92BC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92BE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92BF,1,1 Width of bitmap inchar blocks.
@ $92C0 label= BitmapData_943612
W $92C0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92C2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92C3,1,1 Width of bitmap inchar blocks.
@ $92C4 label= BitmapData_c606
W $92C4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92C6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92C7,1,1 Width of bitmap inchar blocks.
@ $92C8 label= BitmapData_c60e
W $92C8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92CA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92CB,1,1 Width of bitmap inchar blocks.
@ $92CC label= BitmapData_943613
W $92CC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92CE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92CF,1,1 Width of bitmap inchar blocks.
@ $92D0 label= BitmapData_c616
W $92D0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92D2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92D3,1,1 Width of bitmap inchar blocks.
@ $92D4 label= BitmapData_c61e
W $92D4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92D6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92D7,1,1 Width of bitmap inchar blocks.
@ $92D8 label= BitmapData_943614
W $92D8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92DA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92DB,1,1 Width of bitmap inchar blocks.
@ $92DC label= BitmapData_943615
W $92DC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92DE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92DF,1,1 Width of bitmap inchar blocks.
@ $92E0 label= BitmapData_943616
W $92E0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92E2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92E3,1,1 Width of bitmap inchar blocks.
@ $92E4 label= BitmapData_943617
W $92E4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92E6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92E7,1,1 Width of bitmap inchar blocks.
@ $92E8 label= BitmapData_c626
W $92E8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92EA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92EB,1,1 Width of bitmap inchar blocks.
@ $92EC label= BitmapData_c63e
W $92EC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92EE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92EF,1,1 Width of bitmap inchar blocks.
@ $92F0 label= BitmapData_c646
W $92F0,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92F2,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92F3,1,1 Width of bitmap inchar blocks.
@ $92F4 label= BitmapData_c64e
W $92F4,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92F6,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92F7,1,1 Width of bitmap inchar blocks.
@ $92F8 label= BitmapData_c656
W $92F8,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92FA,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92FB,1,1 Width of bitmap inchar blocks.
@ $92FC label= BitmapData_c6a6
W $92FC,2,2 Offset to bitmap image. Add $943e for absolute address.
B $92FE,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $92FF,1,1 Width of bitmap inchar blocks.
@ $9300 label= BitmapData_943618
W $9300,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9302,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9303,1,1 Width of bitmap inchar blocks.
@ $9304 label= BitmapData_c6e6
W $9304,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9306,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9307,1,1 Width of bitmap inchar blocks.
@ $9308 label= BitmapData_c786
W $9308,2,2 Offset to bitmap image. Add $943e for absolute address.
B $930A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $930B,1,1 Width of bitmap inchar blocks.
@ $930C label= BitmapData_c826
W $930C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $930E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $930F,1,1 Width of bitmap inchar blocks.
@ $9310 label= BitmapData_c8c6
W $9310,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9312,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9313,1,1 Width of bitmap inchar blocks.
@ $9314 label= BitmapData_c966
W $9314,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9316,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9317,1,1 Width of bitmap inchar blocks.
@ $9318 label= BitmapData_ca06
W $9318,2,2 Offset to bitmap image. Add $943e for absolute address.
B $931A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $931B,1,1 Width of bitmap inchar blocks.
@ $931C label= BitmapData_caa6
W $931C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $931E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $931F,1,1 Width of bitmap inchar blocks.
@ $9320 label= BitmapData_943619
W $9320,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9322,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9323,1,1 Width of bitmap inchar blocks.
@ $9324 label= BitmapData_cb46
W $9324,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9326,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9327,1,1 Width of bitmap inchar blocks.
@ $9328 label= BitmapData_cba6
W $9328,2,2 Offset to bitmap image. Add $943e for absolute address.
B $932A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $932B,1,1 Width of bitmap inchar blocks.
@ $932C label= BitmapData_cc06
W $932C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $932E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $932F,1,1 Width of bitmap inchar blocks.
@ $9330 label= BitmapData_cc36
W $9330,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9332,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9333,1,1 Width of bitmap inchar blocks.
@ $9334 label= BitmapData_cc46
W $9334,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9336,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9337,1,1 Width of bitmap inchar blocks.
@ $9338 label= BitmapData_cc56
W $9338,2,2 Offset to bitmap image. Add $943e for absolute address.
B $933A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $933B,1,1 Width of bitmap inchar blocks.
@ $933C label= BitmapData_cc76
W $933C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $933E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $933F,1,1 Width of bitmap inchar blocks.
@ $9340 label= BitmapData_cca6
W $9340,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9342,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9343,1,1 Width of bitmap inchar blocks.
@ $9344 label= BitmapData_ccd6
W $9344,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9346,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9347,1,1 Width of bitmap inchar blocks.
@ $9348 label= BitmapData_cd76
W $9348,2,2 Offset to bitmap image. Add $943e for absolute address.
B $934A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $934B,1,1 Width of bitmap inchar blocks.
@ $934C label= BitmapData_cdf6
W $934C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $934E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $934F,1,1 Width of bitmap inchar blocks.
@ $9350 label= BitmapData_ce16
W $9350,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9352,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9353,1,1 Width of bitmap inchar blocks.
@ $9354 label= BitmapData_943620
W $9354,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9356,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9357,1,1 Width of bitmap inchar blocks.
@ $9358 label= BitmapData_Compass
W $9358,2,2 Offset to bitmap image. Add $943e for absolute address.
B $935A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $935B,1,1 Width of bitmap inchar blocks.
@ $935C label= BitmapData_cf17
W $935C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $935E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $935F,1,1 Width of bitmap inchar blocks.
@ $9360 label= BitmapData_cf27
W $9360,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9362,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9363,1,1 Width of bitmap inchar blocks.
@ $9364 label= BitmapData_cf47
W $9364,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9366,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9367,1,1 Width of bitmap inchar blocks.
@ $9368 label= BitmapData_cf67
W $9368,2,2 Offset to bitmap image. Add $943e for absolute address.
B $936A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $936B,1,1 Width of bitmap inchar blocks.
@ $936C label= BitmapData_cf77
W $936C,2,2 Offset to bitmap image. Add $943e for absolute address.
B $936E,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $936F,1,1 Width of bitmap inchar blocks.
@ $9370 label= BitmapData_cf87
W $9370,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9372,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9373,1,1 Width of bitmap inchar blocks.
@ $9374 label= BitmapData_d087
W $9374,2,2 Offset to bitmap image. Add $943e for absolute address.
B $9376,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $9377,1,1 Width of bitmap inchar blocks.
@ $9378 label= BitmapData_d08f
W $9378,2,2 Offset to bitmap image. Add $943e for absolute address.
B $937A,1,1 Height of bitmap in number of char blocks. Bit 7 set means bitmap has been mirrored.
B $937B,1,1 Width of bitmap inchar blocks.
@ $937C label= BitmapData_d18f
@ $9380 label= BitmapData_d48f
@ $9384 label= BitmapData_d78f
@ $9388 label= BitmapData_d98f
@ $938C label= BitmapData_dc8f
@ $9390 label= BitmapData_dc97
@ $9394 label= BitmapData_dcc7
@ $9398 label= BitmapData_dcf7
@ $939C label= BitmapData_dd27
@ $93A0 label= BitmapData_943621
@ $93A4 label= BitmapData_943622
@ $93A8 label= BitmapData_943623
W $937C,48,2
@ $93AC label= BitmapData_dd57
B $93AC,4,4 Birds 1
@ $93B0 label= BitmapData_dd87
B $93B0,8,8 Birds 2
@ $93B8 label= BitmapData_decf
@ $93C0 label= BitmapData_df0f
@ $93C8 label= BitmapData_df4f
B $93B8,24,8
b $93D0 A link in the link list.
@ $93D0 label=Link
W $93D0,2,2 [0] Pointer to next link.
B $93D2,1,1 [2]
W $93D3,2,2 [3] Address of function.
B $93D5,4,4 [5]
B $93D9,1,1 [9] Y pos of offscreen.
B $93DA,1,1 [A] Movement left before next check.
B $93DB,1,1 [B] Bitmap index.
B $93DC,1,1 [C] Set if active
B $93DD,1,1 [D]
B $93DE,6,6
b $93E4 Next Link
B $93E4,82,8*10,2
b $9436 _9436
B $9436,8,8
b $943E _943e
B $943E,224,8
b $951E _951e
B $951E,224,8
b $95FE _95fe
B $95FE,224,8
b $96DE _96de
B $96DE,224,8
b $97BE _97be
B $97BE,224,8
b $989E _989e
B $989E,224,8
b $997E _997e
B $997E,224,8
b $9A5E _9a5e
B $9A5E,224,8
b $9B3E _9b3e
B $9B3E,224,8
b $9C1E _9c1e
B $9C1E,224,8
b $9CFE _9cfe
B $9CFE,224,8
b $9DDE _9dde
B $9DDE,224,8
b $9EBE _9ebe
B $9EBE,224,8
b $9F9E _9f9e
B $9F9E,224,8
b $A07E _a07e
B $A07E,112,8
b $A0EE _a0ee
B $A0EE,112,8
b $A15E _a15e
B $A15E,112,8
b $A1CE _a1ce
B $A1CE,224,8
b $A2AE _a2ae
B $A2AE,224,8
b $A38E _a38e
B $A38E,288,8
b $A4AE _a4ae
B $A4AE,8,8
b $A4B6 _a4b6
B $A4B6,16,8
b $A4C6 _a4c6
B $A4C6,168,8
b $A56E _a56e
B $A56E,8,8
b $A576 _a576
B $A576,8,8
b $A57E _a57e
B $A57E,8,8
b $A586 _a586
B $A586,112,8
b $A5F6 _a5f6
B $A5F6,112,8
b $A666 _a666
B $A666,224,8
b $A746 _a746
B $A746,224,8
b $A826 _a826
B $A826,224,8
b $A906 _a906
B $A906,224,8
b $A9E6 _a9e6
B $A9E6,224,8
b $AAC6 _aac6
B $AAC6,224,8
b $ABA6 _aba6
B $ABA6,224,8
b $AC86 _ac86
B $AC86,112,8
b $ACF6 _acf6
B $ACF6,224,8
b $ADD6 _add6
B $ADD6,288,8
b $AEF6 _aef6
B $AEF6,8,8
b $AEFE _aefe
B $AEFE,8,8
b $AF06 _af06
B $AF06,8,8
b $AF0E _af0e
B $AF0E,8,8
b $AF16 _af16
B $AF16,8,8
b $AF1E _af1e
B $AF1E,8,8
b $AF26 _af26
B $AF26,8,8
b $AF2E _af2e
B $AF2E,8,8
b $AF36 _af36
B $AF36,8,8
b $AF3E _af3e
B $AF3E,16,8
b $AF4E _af4e
B $AF4E,32,8
b $AF6E _af6e
B $AF6E,24,8
b $AF86 _af86
B $AF86,96,8
b $AFE6 _afe6
B $AFE6,96,8
b $B046 _b046
B $B046,48,8
b $B076 _b076
B $B076,96,8
b $B0D6 _b0d6
B $B0D6,96,8
b $B136 _b136
B $B136,96,8
b $B196 _b196
B $B196,96,8
b $B1F6 _b1f6
B $B1F6,96,8
b $B256 _b256
B $B256,48,8
b $B286 _b286
B $B286,64,8
b $B2C6 _b2c6
B $B2C6,200,8
b $B38E _b38e
B $B38E,192,8
b $B44E _b44e
B $B44E,96,8
b $B4AE _b4ae
B $B4AE,96,8
b $B50E _b50e
B $B50E,192,8
b $B5CE _b5ce
B $B5CE,96,8
b $B62E _b62e
B $B62E,96,8
b $B68E _b68e
B $B68E,240,8
b $B77E _b77e
B $B77E,192,8
b $B83E _b83e
B $B83E,96,8
b $B89E _b89e
B $B89E,48,8
b $B8CE _b8ce
B $B8CE,192,8
b $B98E _b98e
B $B98E,96,8
b $B9EE _b9ee
B $B9EE,128,8
b $BA6E _ba6e
B $BA6E,96,8
b $BACE _bace
B $BACE,144,8
b $BB5E _bb5e
B $BB5E,128,8
b $BBDE _bbde
B $BBDE,160,8
b $BC7E _bc7e
B $BC7E,80,8
b $BCCE _bcce
B $BCCE,32,8
b $BCEE _bcee
B $BCEE,160,8
b $BD8E _bd8e
B $BD8E,80,8
b $BDDE _bdde
B $BDDE,16,8
b $BDEE _bdee
B $BDEE,16,8
b $BDFE _bdfe
B $BDFE,96,8
b $BE5E _be5e
B $BE5E,8,8
b $BE66 _be66
B $BE66,8,8
b $BE6E _be6e
B $BE6E,128,8
b $BEEE _beee
B $BEEE,192,8
b $BFAE _bfae
B $BFAE,192,8
b $C06E _c06e
B $C06E,96,8
b $C0CE _c0ce
B $C0CE,120,8
b $C146 _c146
B $C146,64,8
b $C186 _c186
B $C186,64,8
b $C1C6 _c1c6
B $C1C6,48,8
b $C1F6 _c1f6
B $C1F6,48,8
b $C226 _c226
B $C226,48,8
b $C256 _c256
B $C256,64,8
b $C296 _c296
B $C296,32,8
b $C2B6 _c2b6
B $C2B6,8,8
b $C2BE _c2be
B $C2BE,24,8
b $C2D6 _c2d6
B $C2D6,32,8
b $C2F6 _c2f6
B $C2F6,16,8
b $C306 _c306
B $C306,32,8
b $C326 _c326
B $C326,32,8
b $C346 _c346
B $C346,24,8
b $C35E _c35e
B $C35E,16,8
b $C36E _c36e
B $C36E,32,8
b $C38E _c38e
B $C38E,16,8
b $C39E _c39e
B $C39E,16,8
b $C3AE _c3ae
B $C3AE,32,8
b $C3CE _c3ce
B $C3CE,32,8
b $C3EE _c3ee
B $C3EE,48,8
b $C41E _c41e
B $C41E,24,8
b $C436 _c436
B $C436,32,8
b $C456 _c456
B $C456,16,8
b $C466 _c466
B $C466,32,8
b $C486 _c486
B $C486,32,8
b $C4A6 _c4a6
B $C4A6,32,8
b $C4C6 _c4c6
B $C4C6,8,8
b $C4CE _c4ce
B $C4CE,32,8
b $C4EE _c4ee
B $C4EE,32,8
b $C50E _c50e
B $C50E,32,8
b $C52E _c52e
B $C52E,8,8
b $C536 _c536
B $C536,16,8
b $C546 _c546
B $C546,16,8
b $C556 _c556
B $C556,8,8
b $C55E _c55e
B $C55E,8,8
b $C566 _c566
B $C566,8,8
b $C56E _c56e
B $C56E,8,8
b $C576 _c576
B $C576,8,8
b $C57E _c57e
B $C57E,8,8
b $C586 _c586
B $C586,16,8
b $C596 _c596
B $C596,8,8
b $C59E _c59e
B $C59E,8,8
b $C5A6 _c5a6
B $C5A6,8,8
b $C5AE _c5ae
B $C5AE,32,8
b $C5CE _c5ce
B $C5CE,8,8
b $C5D6 _c5d6
B $C5D6,8,8
b $C5DE _c5de
B $C5DE,8,8
b $C5E6 _c5e6
B $C5E6,8,8
b $C5EE _c5ee
B $C5EE,8,8
b $C5F6 _c5f6
B $C5F6,8,8
b $C5FE _c5fe
B $C5FE,8,8
b $C606 _c606
B $C606,8,8
b $C60E _c60e
B $C60E,8,8
b $C616 _c616
B $C616,8,8
b $C61E _c61e
B $C61E,8,8
b $C626 _c626
B $C626,24,8
b $C63E _c63e
B $C63E,8,8
b $C646 _c646
B $C646,8,8
b $C64E _c64e
B $C64E,8,8
b $C656 _c656
B $C656,80,8
b $C6A6 _c6a6
B $C6A6,64,8
b $C6E6 _c6e6
B $C6E6,160,8
b $C786 _c786
B $C786,160,8
b $C826 _c826
B $C826,160,8
b $C8C6 _c8c6
B $C8C6,160,8
b $C966 _c966
B $C966,160,8
b $CA06 _ca06
B $CA06,160,8
b $CAA6 _caa6
B $CAA6,160,8
b $CB46 _cb46
B $CB46,96,8
b $CBA6 _cba6
B $CBA6,96,8
b $CC06 _cc06
B $CC06,48,8
b $CC36 _cc36
B $CC36,16,8
b $CC46 _cc46
B $CC46,16,8
b $CC56 _cc56
B $CC56,32,8
b $CC76 _cc76
B $CC76,48,8
b $CCA6 _cca6
B $CCA6,48,8
b $CCD6 _ccd6
B $CCD6,160,8
b $CD76 _cd76
B $CD76,128,8
b $CDF6 _cdf6
B $CDF6,32,8
b $CE16 _ce16
B $CE16,32,8
b $CE36 _ce36
B $CE36,225,8*28,1
b $CF17 _cf17
B $CF17,16,8
b $CF27 _cf27
B $CF27,32,8
b $CF47 _cf47
B $CF47,32,8
b $CF67 _cf67
B $CF67,16,8
b $CF77 _cf77
B $CF77,16,8
b $CF87 _cf87
B $CF87,256,8
b $D087 _d087
B $D087,8,8
b $D08F _d08f
B $D08F,256,8
b $D18F _d18f
B $D18F,768,8
b $D48F _d48f
B $D48F,768,8
b $D78F _d78f
B $D78F,512,8
b $D98F _d98f
B $D98F,768,8
b $DC8F _dc8f
B $DC8F,8,8
b $DC97 _dc97
B $DC97,48,8
b $DCC7 _dcc7
B $DCC7,48,8
b $DCF7 _dcf7
B $DCF7,48,8
b $DD27 _dd27
B $DD27,48,8
b $DD57 _dd57
B $DD57,48,8
b $DD87 _dd87
B $DD87,48,8
b $DDB7 _ddb7
B $DDB7,280,8
b $DECF _decf
B $DECF,40,8
b $DEF7 _def7
B $DEF7,24,8
b $DF0F _df0f
B $DF0F,24,8
b $DF27 _df27
B $DF27,40,8
b $DF4F _df4f
B $DF4F,24,8
b $DF67 _df67
B $DF67,27,8*3,3
c $DF82 Routine at DF82
D $DF82 Used by the routines at #R$6CFC, #R$7B0C and #R$88C7.
N $DF85 This entry point is used by the routine at #R$638A.
@ $DF85 label=Vector_OffScrBlit
@ $DF88 label=Vector_ActionTreasure
N $DF8B This entry point is used by the routines at #R$6236 and #R$8A93.
@ $DF8B label=Vector_LinkListInit
b $DF90 Data block at DF90
@ $DF91 label=Zeros
B $DF90,33,1,8*3,7,1
@ $DFB1 label=FlagsDemoMode
B $DFB1,1,1 Flags 2 = Demo
@ $DFB2 label=KeyStatesFirst
B $DFB2,7,7 Store for keyboard states
@ $DFB9 label=KeyStatesLast
B $DFB9,1,1 Last byte of stored keybaord states
@ $DFBA label=InputFlags_DFBA
B $DFBA,1,1 Input flags - 01 = right, 02 = left, 04 = rotate cw, 08 = rotate ccw, 10 = Attack, 20 = Pick up, 40 = Drop
@ $DFBB label=UnusedLinkListPtr
W $DFBB,2,2 Pointer to start of list holding unused links.
@ $DFBD label=Hero_Anim
B $DFBD,1,1 Hero's animation, $13 - Facing camera, $10 - Standing still (regardless of direction.)
B $DFBE,1,1
@ $DFBF label=Hero_AnimCount
B $DFBF,1,1 Animation count. (0x14 = Attack frame, 0x10 = At rest, )
@ $DFC0 label=Hero_AttackDir
B $DFC0,1,1 Hero attack direction (1 = right, 2 = left)
@ $DFC1 label=ActionsLinkListPtr
W $DFC1,2,2 Points to link list holding all the things.
b $DFC3 Man Data
@ $DFC3 label=ManData_PosPrimary_dfc3
@ $DFC5 label=ManData_PosSecondary_dfc5
W $DFC3,4,2
@ $DFC7 label=ManData_FirstObjectCarried
W $DFC7,2,2 Pointer to first object being carried.
@ $DFC9 label=ManData_InventoryCount_DFC9
B $DFC9,1,1 Inventory Count. Number of items being carried.
@ $DFCA label=ManData_SelectIndex_DFCA
B $DFCA,1,1 Index of selected object within inventory
@ $DFCB label=ManData_SelObj_02_DFCB
B $DFCB,1,1 Selected Object[0x02] value store.
@ $DFCC label=ManData_SelectedObjectPtr
W $DFCC,2,2 Address of selected object in inventory.
B $DFCE,4,4
b $DFD2 Directional Data
@ $DFD2 label=CamDirection_DFD2
B $DFD2,1,1 Camera direction. This is local to the area and is an offset direction, not absolute. Calculated from $DFE9
B $DFD3,1,1
@ $DFD4 label=ManWalkDirection_DFD4
B $DFD4,1,1 Direction of last walk; 1 = left; 2 = right
@ $DFD5 label=ManCamDirection_DFD5
B $DFD5,2,1
@ $DFD7 label=CurrentPathPtr
W $DFD7,2,2 Points to address of current path data structure.
B $DFD9,1,1
@ $DFDA label=PathScopes_DFDA
W $DFDA,2,2 Path Scopes
B $DFDC,1,1
@ $DFDD label=AreaDataCurrent_Index
W $DFDD,2,2 Area Index?
@ $DFDF label=AreaDataCurrent_SceneryPrimary
@ $DFE1 label=AreaDataCurrent_ScenerySecondary
@ $DFE3 label=AreaDataCurrent_Path_H
@ $DFE5 label=AreaDataCurrent_Path_V
W $DFDF,8,2
@ $DFE7 label=AreaDataCurrent_ObjectsPtr
W $DFE7,2,2 Handle to first object in location. Objects are stored in a link list.
@ $DFE9 label=AreaDataCurrent_CompassOffset
B $DFE9,1,1 Compass Direction offset; Seems to be a away of twisting paths. Camera compass, on screen, is calculated by (comp + cam) and 4
@ $DFEA label=Baddy_LinkPtr
W $DFEA,2,2 Pointer to the Baddy link list.
@ $DFEC label=BgType
@ $DFED label=BgColour
B $DFEC,3,1
@ $DFEF label=CurrentAreaExits
B $DFEF,4,4 Index of joining areas to current one.
@ $DFF3 label=CurrentAreaName
W $DFF3,6,2
@ $DFF9 label=Exits
W $DFF9,2,2 Available exits along path.
W $DFFB,6,2
@ $E001 label=AreaDataHandle_E001
W $E001,2,2 Handle to start of area data
@ $E003 label=DeathMode
B $E003,1,1 $02 = Death, pause then back to alter.
@ $E004 label=ThruDoorCounter_E004
B $E004,1,1 Counter for each step when walking through a doorway. (0 ~ 4)
@ $E005 label=ThruDoorGo_E005
B $E005,1,1 Door Go.
@ $E006 label=WarningTimer_E006
B $E006,1,1 Warning timer.
@ $E007 label=TripValue
B $E007,1,1 Value check used when dropping an object for tripping actions etc.
@ $E008 label=ActionFlags
B $E008,1,1
@ $E009 label=TripObjPtr
W $E009,2,2 Pointer to object that appears when tripping action.
@ $E00B label=ActionObjectDroppedPtr
W $E00B,2,2 Pointer to object being dropped.
W $E00D,2,2
B $E00F,1,1
b $E010 Area Data
D $E010 This data is copied to $DFDF when the hero enters the area.
@ $E010 label=AreaData0
W $E010,2,2 -> $DFDF
W $E012,2,2
W $E014,2,2 Paths N/S
W $E016,2,2 Paths E/W
W $E018,2,2 Objects Link List Pointer
B $E01A,1,1 Compass Offset
W $E01B,2,2 Baddies Link List Pointer
B $E01D,1,1 Background Type
B $E01E,1,1 Background Colour
B $E01F,1,1
B $E020,4,4 Area Exits
W $E024,2,2 Location Description String
W $E026,4,2
N $E02A Ceardach Calum
W $E02A,2,2 -> $DFDF
W $E02C,2,2
W $E02E,2,2 Paths N/S
W $E030,2,2 Paths E/W
W $E032,2,2 Objects Link List Pointer
B $E034,1,1 Compass Offset
W $E035,2,2 Baddies Link List Pointer
B $E037,1,1 Background Type
B $E038,1,1 Background Colour
B $E039,1,1
B $E03A,4,4 Area Exits
W $E03E,2,2 Location Description String
W $E040,4,2
N $E044 Forest of Cern
W $E044,2,2 -> $DFDF
W $E046,2,2
W $E048,2,2 Paths N/S
W $E04A,2,2 Paths E/W
W $E04C,2,2 Objects Link List Pointer
B $E04E,1,1 Compass Offset
W $E04F,2,2 Baddies Link List Pointer
B $E051,1,1 Background Type
B $E052,1,1 Background Colour
B $E053,1,1
B $E054,4,4 Area Exits
W $E058,2,2 Location Description String
W $E05A,4,2
N $E05E Plain of Lies
W $E05E,2,2 -> $DFDF
W $E060,2,2
W $E062,2,2 Paths N/S
W $E064,2,2 Paths E/W
W $E066,2,2 Objects Link List Pointer
B $E068,1,1 Compass Offset
W $E069,2,2 Baddies Link List Pointer
B $E06B,1,1 Background Type
B $E06C,1,1 Background Colour
B $E06D,1,1
B $E06E,4,4 Area Exits
W $E072,2,2 Location Description String
W $E074,4,2
N $E078 Alter of the Seal
W $E078,2,2 -> $DFDF
W $E07A,2,2
W $E07C,2,2 Paths N/S
W $E07E,2,2 Paths E/W
W $E080,2,2 Objects Link List Pointer
B $E082,1,1 Compass Offset
W $E083,2,2 Baddies Link List Pointer
B $E085,1,1 Background Type
B $E086,1,1 Background Colour
B $E087,1,1
B $E088,4,4 Area Exits
W $E08C,2,2 Location Description String
W $E08E,4,2
N $E092 Lon Liath
W $E092,2,2 -> $DFDF
W $E094,2,2
W $E096,2,2 Paths N/S
W $E098,2,2 Paths E/W
W $E09A,2,2 Objects Link List Pointer
B $E09C,1,1 Compass Offset
W $E09D,2,2 Baddies Link List Pointer
B $E09F,1,1 Background Type
B $E0A0,1,1 Background Colour
B $E0A1,1,1
B $E0A2,4,4 Area Exits
W $E0A6,2,2 Location Description String
W $E0A8,4,2
N $E0AC Tir Clachen
W $E0AC,2,2 -> $DFDF
W $E0AE,2,2
W $E0B0,2,2 Paths N/S
W $E0B2,2,2 Paths E/W
W $E0B4,2,2 Objects Link List Pointer
B $E0B6,1,1 Compass Offset
W $E0B7,2,2 Baddies Link List Pointer
B $E0B9,1,1 Background Type
B $E0BA,1,1 Background Colour
B $E0BB,1,1
B $E0BC,4,4 Area Exits
W $E0C0,2,2 Location Description String
W $E0C2,4,2
N $E0C6 Slige Warrens
W $E0C6,2,2 -> $DFDF
W $E0C8,2,2
W $E0CA,2,2 Paths N/S
W $E0CC,2,2 Paths E/W
W $E0CE,2,2 Objects Link List Pointer
B $E0D0,1,1 Compass Offset
W $E0D1,2,2 Baddies Link List Pointer
B $E0D3,1,1 Background Type
B $E0D4,1,1 Background Colour
B $E0D5,1,1
B $E0D6,4,4 Area Exits
W $E0DA,2,2 Location Description String
W $E0DC,4,2
N $E0E0 Badhelm
W $E0E0,2,2 -> $DFDF
W $E0E2,2,2
W $E0E4,2,2 Paths N/S
W $E0E6,2,2 Paths E/W
W $E0E8,2,2 Objects Link List Pointer
B $E0EA,1,1 Compass Offset
W $E0EB,2,2 Baddies Link List Pointer
B $E0ED,1,1 Background Type
B $E0EE,1,1 Background Colour
B $E0EF,1,1
B $E0F0,4,4 Area Exits
W $E0F4,2,2 Location Description String
W $E0F6,4,2
N $E0FA Stormbase
W $E0FA,2,2 -> $DFDF
W $E0FC,2,2
W $E0FE,2,2 Paths N/S
W $E100,2,2 Paths E/W
W $E102,2,2 Objects Link List Pointer
B $E104,1,1 Compass Offset
W $E105,2,2 Baddies Link List Pointer
B $E107,1,1 Background Type
B $E108,1,1 Background Colour
B $E109,1,1
B $E10A,4,4 Area Exits
W $E10E,2,2 Location Description String
W $E110,4,2
N $E114 Glasmarsh
W $E114,2,2 -> $DFDF
W $E116,2,2
W $E118,2,2 Paths N/S
W $E11A,2,2 Paths E/W
W $E11C,2,2 Objects Link List Pointer
B $E11E,1,1 Compass Offset
W $E11F,2,2 Baddies Link List Pointer
B $E121,1,1 Background Type
B $E122,1,1 Background Colour
B $E123,1,1
B $E124,4,4 Area Exits
W $E128,2,2 Location Description String
W $E12A,4,2
N $E12E Lava Flats
W $E12E,2,2 -> $DFDF
W $E130,2,2
W $E132,2,2 Paths N/S
W $E134,2,2 Paths E/W
W $E136,2,2 Objects Link List Pointer
B $E138,1,1 Compass Offset
W $E139,2,2 Baddies Link List Pointer
B $E13B,1,1 Background Type
B $E13C,1,1 Background Colour
B $E13D,1,1
B $E13E,4,4 Area Exits
W $E142,2,2 Location Description String
W $E144,4,2
N $E148 Cnoc Suil
W $E148,2,2 -> $DFDF
W $E14A,2,2
W $E14C,2,2 Paths N/S
W $E14E,2,2 Paths E/W
W $E150,2,2 Objects Link List Pointer
B $E152,1,1 Compass Offset
W $E153,2,2 Baddies Link List Pointer
B $E155,1,1 Background Type
B $E156,1,1 Background Colour
B $E157,1,1
B $E158,4,4 Area Exits
W $E15C,2,2 Location Description String
W $E15E,4,2
N $E162 Dun Dhomnuil
W $E162,2,2 -> $DFDF
W $E164,2,2
W $E166,2,2 Paths N/S
W $E168,2,2 Paths E/W
W $E16A,2,2 Objects Link List Pointer
B $E16C,1,1 Compass Offset
W $E16D,2,2 Baddies Link List Pointer
B $E16F,1,1 Background Type
B $E170,1,1 Background Colour
B $E171,1,1
B $E172,4,4 Area Exits
W $E176,2,2 Location Description String
W $E178,4,2
N $E17C An Lin, The Net
W $E17C,2,2 -> $DFDF
W $E17E,2,2
W $E180,2,2 Paths N/S
W $E182,2,2 Paths E/W
W $E184,2,2 Objects Link List Pointer
B $E186,1,1 Compass Offset
W $E187,2,2 Baddies Link List Pointer
B $E189,1,1 Background Type
B $E18A,1,1 Background Colour
B $E18B,1,1
B $E18C,4,4 Area Exits
W $E190,2,2 Location Description String
W $E192,4,2
N $E196 The Ice Cave
W $E196,2,2 -> $DFDF
W $E198,2,2
W $E19A,2,2 Paths N/S
W $E19C,2,2 Paths E/W
W $E19E,2,2 Objects Link List Pointer
B $E1A0,1,1 Compass Offset
W $E1A1,2,2 Baddies Link List Pointer
B $E1A3,1,1 Background Type
B $E1A4,1,1 Background Colour
B $E1A5,1,1
B $E1A6,4,4 Area Exits
W $E1AA,2,2 Location Description String
W $E1AC,4,2
N $E1B0 Tir Falamh, The Empty Lands
W $E1B0,2,2 -> $DFDF
W $E1B2,2,2
W $E1B4,2,2 Paths N/S
W $E1B6,2,2 Paths E/W
W $E1B8,2,2 Objects Link List Pointer
B $E1BA,1,1 Compass Offset
W $E1BB,2,2 Baddies Link List Pointer
B $E1BD,1,1 Background Type
B $E1BE,1,1 Background Colour
B $E1BF,1,1
B $E1C0,4,4 Area Exits
W $E1C4,2,2 Location Description String
W $E1C6,4,2
N $E1CA Ruads Retreat
W $E1CA,2,2 -> $DFDF
W $E1CC,2,2
W $E1CE,2,2 Paths N/S
W $E1D0,2,2 Paths E/W
W $E1D2,2,2 Objects Link List Pointer
B $E1D4,1,1 Compass Offset
W $E1D5,2,2 Baddies Link List Pointer
B $E1D7,1,1 Background Type
B $E1D8,1,1 Background Colour
B $E1D9,1,1
B $E1DA,4,4 Area Exits
W $E1DE,2,2 Location Description String
W $E1E0,4,2
N $E1E4 The Library
W $E1E4,2,2 -> $DFDF
W $E1E6,2,2
W $E1E8,2,2 Paths N/S
W $E1EA,2,2 Paths E/W
W $E1EC,2,2 Objects Link List Pointer
B $E1EE,1,1 Compass Offset
W $E1EF,2,2 Baddies Link List Pointer
B $E1F1,1,1 Background Type
B $E1F2,1,1 Background Colour
B $E1F3,1,1
B $E1F4,4,4 Area Exits
W $E1F8,2,2 Location Description String
W $E1FA,4,2
N $E1FE ?
W $E1FE,2,2 -> $DFDF
W $E200,2,2
W $E202,2,2 Paths N/S
W $E204,2,2 Paths E/W
W $E206,2,2 Objects Link List Pointer
B $E208,1,1 Compass Offset
W $E209,2,2 Baddies Link List Pointer
B $E20B,1,1 Background Type
B $E20C,1,1 Background Colour
B $E20D,1,1
B $E20E,4,4 Area Exits
W $E212,2,2 Location Description String
W $E214,4,2
N $E218 Reading Room
W $E218,2,2 -> $DFDF
W $E21A,2,2
W $E21C,2,2 Paths N/S
W $E21E,2,2 Paths E/W
W $E220,2,2 Objects Link List Pointer
B $E222,1,1 Compass Offset
W $E223,2,2 Baddies Link List Pointer
B $E225,1,1 Background Type
B $E226,1,1 Background Colour
B $E227,1,1
B $E228,4,4 Area Exits
W $E22C,2,2 Location Description String
W $E22E,4,2
N $E232 Storm Cave
W $E232,2,2 -> $DFDF
W $E234,2,2
W $E236,2,2 Paths N/S
W $E238,2,2 Paths E/W
W $E23A,2,2 Objects Link List Pointer
B $E23C,1,1 Compass Offset
W $E23D,2,2 Baddies Link List Pointer
B $E23F,1,1 Background Type
B $E240,1,1 Background Colour
B $E241,1,1
B $E242,4,4 Area Exits
W $E246,2,2 Location Description String
W $E248,4,2
N $E24C Badrigs Shrine
W $E24C,2,2 -> $DFDF
W $E24E,2,2
W $E250,2,2 Paths N/S
W $E252,2,2 Paths E/W
W $E254,2,2 Objects Link List Pointer
B $E256,1,1 Compass Offset
W $E257,2,2 Baddies Link List Pointer
B $E259,1,1 Background Type
B $E25A,1,1 Background Colour
B $E25B,1,1
B $E25C,4,4 Area Exits
W $E260,2,2 Location Description String
W $E262,4,2
b $E266 Area Names
@ $E266 label=CentralPlain$
T $E266,13,13
B $E273,1,1
@ $E274 label=CeardachCalum$
T $E274,14,14
B $E282,1,1
@ $E283 label=ForestOfCern$
T $E283,14,14
B $E291,1,1
@ $E292 label=PlainOfLies$
T $E292,13,13
B $E29F,1,1
@ $E2A0 label=AlterOfTheSeal$
T $E2A0,17,17
B $E2B1,1,1
@ $E2B2 label=LonLiath$
T $E2B2,9,9
B $E2BB,1,1
@ $E2BC label=TirClachen$
T $E2BC,11,11
B $E2C7,1,1
@ $E2C8 label=SligeWarrens$
T $E2C8,13,13
B $E2D5,1,1
@ $E2D6 label=Badhelm$
T $E2D6,7,7
B $E2DD,1,1
@ $E2DE label=Stormbase$
T $E2DE,9,9
B $E2E7,1,1
@ $E2E8 label=Glasmarsh$
T $E2E8,9,9
B $E2F1,1,1
@ $E2F2 label=LavaFlats$
T $E2F2,10,10
B $E2FC,1,1
@ $E2FD label=CnocSuil$
T $E2FD,9,9
B $E306,1,1
@ $E307 label=DunDhomnuil$
T $E307,12,12
B $E313,1,1
@ $E314 label=AnLin$
T $E314,14,14
B $E322,1,1
@ $E323 label=TheIceCave$
T $E323,12,12
B $E32F,1,1
@ $E330 label=TirFalamh$
T $E330,25,25
B $E349,1,1
@ $E34A label=RuadsRetreat$
T $E34A,13,13
B $E357,1,1
@ $E358 label=TheLibrary$
T $E358,11,11
B $E363,1,1
@ $E364 label=ReadingRoom$
T $E364,12,12
B $E370,1,1
@ $E371 label=StormCave$
T $E371,9,9
B $E37A,1,1
@ $E37B label=BadrigsShrine$
T $E37B,14,14
B $E389,1,1
b $E38A Mappings
@ $E38A label=Mappings1
@ $E396 label=Mappings2
@ $E39E label=Mappings3
@ $E3A6 label=Mappings4
@ $E3AE label=Mappings5
@ $E3B6 label=Mappings6
@ $E3BA label=Mappings7
@ $E3BE label=Mappings8
@ $E3C6 label=Mappings9
@ $E3CA label=Mappings10
@ $E3D2 label=Mappings11
@ $E3D3 label=Mappings12
@ $E3DC label=Mappings13
B $E38A,91,12,8*4,4*2,8,4,8,1,9
b $E3E5 Scenery Data
D $E3E5 Reading Room
@ $E3E5 label=SceneryData19
B $E3E5,2,2
N $E3E7 Paths
@ $E3E7 label=PathData1
B $E3E7,50,8*6,2
N $E419 Paths
@ $E419 label=PathData2
B $E419,54,8*6,6
N $E44F Central Plains
@ $E44F label=SceneryData1
B $E44F,26,8*3,2
N $E469 Central Plains
@ $E469 label=SceneryData2
B $E469,8,8 _
B $E471,73,5*2,7,1,7,5,8*5,3
N $E4BA Example scenery data
B $E4BA,5,5 Pos, size in columns,area index,num items.
B $E4BF,7,7 List of items bitmap indicies.
B $E4C6,177,8,4,8*20,5
N $E577 Central Plains sidhe Data.
@ $E577 label=CentralPlainsSidhe
B $E577,1,1 [0]
B $E578,1,1 [1]
B $E579,1,1 [2] Direction n[0] e[1] s[2] w[3]
B $E57A,1,1 [3]
B $E57B,1,1 [4]
W $E57C,2,2 [5] N/S position.
W $E57E,2,2 [7] E/W position.
B $E580,1,1 [9]
B $E581,1,1 [A]
B $E582,1,1 [B]
B $E583,1,1 [C]
B $E584,1,1 [D]
B $E585,1,1 [E]
B $E586,1,1 [F] Count down. Baddy only acts when zero.
B $E587,2,2 [10]...
B $E589,2,2
N $E58B Paths
@ $E58B label=PathData3
B $E58B,50,8*6,2
N $E5BD Paths
@ $E5BD label=PathData4
B $E5BD,90,8*11,2
N $E617 Caerdach Calum, Forest of Cern, Badhelm, Stormbase, Glasmarsh, Lava Flats, Dun Dhomnuil, An Lin
@ $E617 label=SceneryData3
B $E617,70,8*8,6
N $E65D _
@ $E65D label=SceneryData4
B $E65D,34,5,8*2,1,8,4
N $E67F _
B $E67F,300,8*37,4
N $E7AB Exits used by Forest Of Cern
B $E7AB,10,8,2
W $E7B5,2,2
B $E7B7,22,8,4,8,2
W $E7CD,2,2
B $E7CF,10,8,2
W $E7D9,2,2
B $E7DB,175,8*21,7
N $E88A Ceardach Calum, Forest of Cern, Dun Dhomnuil,
@ $E88A label=SidheData2
B $E88A,20,8*2,4
N $E89E Glasmarsh, Lava Flats
@ $E89E label=SidheData6
B $E89E,20,8*2,4
N $E8B2 Forest of Cern
@ $E8B2 label=PathData5
B $E8B2,74,8*9,2
N $E8FC _
@ $E8FC label=PathData6
B $E8FC,66,8*8,2
N $E93E Plain of Lies, Lon Liath, Tir Clachen, Slige Warrens
@ $E93E label=SceneryData5
B $E93E,66,4*16,2
N $E980 _
@ $E980 label=SceneryData6
B $E980,628,7,6,8,4,5,6,8
N $EBF4 Plain of lies; Scenery item list.
B $EBF4,2,2 Position on map.
B $EBF6,1,1 Number of screen columns (map unit) scenery takes.
B $EBF7,1,1
B $EBF8,1,1 Number of scenery items in list.
B $EBF9,8,8 List of items (bitmap indicies) in scenery.
B $EC01,4,4
B $EC05,1,1 Number of data sets
B $EC06,1,1 [0]
B $EC07,1,1 [1]
B $EC08,1,1 [2] Item bitmap index.
B $EC09,1,1 [3] Camera / position in array (match)
B $EC0A,1,1 [4] Bit [7] - 0 = door. [0 ~ 3] -
B $EC0B,1,1 [5] [Door] Key bitmap index. Matched for door icon (8c = key char.)
B $EC0C,1,1 [6]
B $EC0D,1,1 [7]
B $EC0E,1,1 [8] Primary position when appearing out the other side of exit.
B $EC0F,1,1 [9] Secondary position.
B $EC10,1,1 [A]
B $EC11,1,1 [B]
B $EC12,8,8 Data set 2
B $EC1A,4,4
N $EC1E _
B $EC1E,85,8*10,5
N $EC73 Plain of Lies
@ $EC73 label=SidheData3
B $EC73,20,8*2,4
N $EC87 Lon Liath
@ $EC87 label=SidheData4
B $EC87,20,8*2,4
N $EC9B Slige Warrens
@ $EC9B label=SidheData5
B $EC9B,20,8*2,4
N $ECAF Alter of the Seal
@ $ECAF label=PathData7
B $ECAF,1,1 Area index (00 = anywhere).
B $ECB0,1,1 Axis position.
B $ECB1,1,1 Start path position.
B $ECB2,1,1 End path postion.
@ $ECB3 label=PathData8
B $ECB3,2,2
@ $ECB5 label=SceneryItemData7
B $ECB5,1,1 Primary position
B $ECB6,1,1 Secondary position
B $ECB7,1,1 Bitmap index (bit 7 = mirror image).
B $ECB8,1,1 Area index (00 = anywhere).
B $ECB9,4,4
B $ECBD,2,2 00 - End of list.
@ $ECBF label=SceneryStringData8
B $ECBF,1,1
B $ECC0,1,1 Secondary position.
B $ECC1,1,1 Total length of scenery (in map units).
B $ECC2,1,1
B $ECC3,1,1 Number of bitmaps in scenery.
B $ECC4,3,3 Bitmap index [, bitmap index,...]
B $ECC7,1,1 Number of exits
B $ECC8,8,8 Exit data
B $ECD0,4,4
B $ECD4,2,2 Next String, 00 = end.
N $ECD6 Cnoc Suil
@ $ECD6 label=PathData9
@ $ECDA label=PathData10
@ $ECDC label=SceneryData9
@ $ECE6 label=SceneryData10
B $ECD6,39,4,2,8,2,8*2,7
N $ECFD Badrigs Shrine
@ $ECFD label=SceneryData22
B $ECFD,10,8,2
N $ED07 The Ice Cave
@ $ED07 label=PathData11
B $ED07,10,8,2
N $ED11 _
@ $ED11 label=PathData12
B $ED11,6,6
N $ED17 Ice Cave
@ $ED17 label=SceneryData11
B $ED17,18,8*2,2
N $ED29 _
@ $ED29 label=SceneryData12
B $ED29,68,8*8,4
N $ED6D Storm Cave Storm Cave
@ $ED6D label=SidheData7
B $ED6D,20,8*2,4
N $ED81 Tir Falamh
@ $ED81 label=SceneryData13
B $ED81,2,2
N $ED83 _
@ $ED83 label=SceneryData14
@ $EDAF label=PathData13
@ $EDB9 label=PathData14
B $ED83,64,8*5,4,8,2,8,2
N $EDC3 Ruads Retreat
@ $EDC3 label=SceneryData15
B $EDC3,2,2
N $EDC5 _
@ $EDC5 label=SceneryData16
@ $EE3F label=PathData15
@ $EE43 label=PathData16
B $EDC5,128,8*15,2,4,2
N $EE45 The Library
@ $EE45 label=SceneryData17
B $EE45,2,2
N $EE47 _
@ $EE47 label=SceneryData18
B $EE47,72,8
N $EE8F ?
@ $EE8F label=PathData17
B $EE8F,4,4
N $EE93 _
@ $EE93 label=PathData18
B $EE93,2,2
N $EE95 ?
@ $EE95 label=SceneryData20
B $EE95,44,8*5,4
N $EEC1 Reading Room
@ $EEC1 label=PathData19
@ $EECB label=PathData20
@ $EED5 label=SceneryData21
@ $EF01 label=SidheData8
B $EEC1,84,8,2,8,2,8*5,4,8*2,4
b $EF15 Pointers to list of objects in each area
@ $EF15 label=ObjsCentralPlains
@ $EF1D label=ObjsCeardachCalum
W $EF15,10,2
@ $EF1F label=ObjsForestOfCern
W $EF1F,2,2 Forest of Cern
@ $EF21 label=ObjsPlainOfLies
W $EF21,2,2 Plain of Lies.
W $EF23,2,2
@ $EF25 label=ObjsAlterOfTheSeal
W $EF25,2,2 Alter of the Seal
@ $EF27 label=ObjsLonLiath
W $EF27,2,2 Lon Liath
@ $EF29 label=ObjsTirClachen
W $EF29,2,2
@ $EF2B label=ObjsSligeWarrens
W $EF2B,2,2 Slige Warrens
@ $EF2D label=ObjsBadHelm
W $EF2D,2,2 Badhelm
@ $EF2F label=ObjsStormbase
@ $EF31 label=ObjsGlasmarsh
@ $EF33 label=ObjsLavaFlats
@ $EF35 label=ObjsCnocSuil
@ $EF37 label=ObjsDunDhomnuil
@ $EF39 label=ObjsAnLin
@ $EF3B label=ObjsTheIceCave
W $EF2F,14,2
@ $EF3D label=ObjsTirFalahm
W $EF3D,2,2 Tir Falahm
@ $EF41 label=ObjsRuadsRetreat
@ $EF47 label=ObjsTheLibrary
@ $EF4D label=Objs?
@ $EF4F label=ObjsReadingRoom
@ $EF51 label=ObjsStormCave
@ $EF53 label=ObjsBadrigsShrine
W $EF3F,24,2
@ $EF57 label=ObjsAlterOfTheSeal2
W $EF57,2,2 [33] Alter of the Seal (2)
W $EF59,56,2
b $EF91 Objects
B $EF91,1,1 [0] Position (NS)
B $EF92,1,1 [1] Position (EW)
B $EF93,1,1 [2] Bitmap Index.
B $EF94,1,1 Flags [B6 = Oracle object]
W $EF95,2,2 Points the next object in list for which this object belongs to. This can be the inventory or an area.
T $EF97,3,3 [0]
B $EF9A,1,1
B $EF9B,40,6:T33:1 [1]
B $EFC3,39,6:T32:1 [2]
B $EFEA,12,6:T5:1 [3]
B $EFF6,22,6:T15:1 [4]
B $F00C,10,6:T3:1 [5]
B $F016,18,6:T11:1 [6]
B $F028,14,6:T7:1 [7]
B $F036,12,6:T5:1 [8]
B $F042,12,6:T5:1 [9]
B $F04E,12,6:T5:1 [10]
B $F05A,12,6:T5:1 [11]
B $F066,12,6:T5:1 [12]
B $F072,12,6:T5:1 [13]
B $F07E,10,6:T3:1 [14]
B $F088,12,6:T5:1 [15]
B $F094,15,6:T8:1 [16]
B $F0A3,13,6:T6:1 [17]
B $F0B0,13,6:T6:1 [18]
B $F0BD,12,6:T5:1 [19]
B $F0C9,13,6:T6:1 [20]
B $F0D6,13,6:T6:1 [21]
B $F0E3,16,6:T9:1 [22]
B $F0F3,13,6:T6:1 [23]
B $F100,14,6:T7:1 [24]
B $F10E,35,6:T28:1 [25]
B $F131,11,6:T4:1 [26]
B $F13C,40,6:T33:1 [27]
B $F164,12,6:T5:1 [28]
B $F170,13,6:T6:1 [29]
B $F17D,7,7 [30]
B $F184,11,6:T4:1 [31]
B $F18F,15,6:T8:1 [32]
B $F19E,12,6:T5:1 [33]
B $F1AA,12,6:T5:1 [34]
B $F1B6,12,6:T5:1 [35]
B $F1C2,26,6:T19:1 [36]
B $F1DC,12,6:T5:1 [37]
B $F1E8,11,6:T4:1 [38]
B $F1F3,11,6:T4:1 [39]
B $F1FE,11,6:T4:1 [40]
B $F209,14,6:T7:1 [41]
B $F217,16,6:T9:1 [42]
B $F227,14,6:T7:1 [43]
B $F235,30,6:T23:1 [44]
B $F253,16,6:T9:1 [45]
B $F263,10,6:T3:1 [46]
B $F26D,14,6:T7:1 [47]
B $F27B,10,6:T3:1 [48]
B $F285,17,6:T10:1 [49]
B $F296,47,6:T40:1 [50]
B $F2C5,31,6:T24:1 [51]
B $F2E4,15,6:T8:1 [52]
B $F2F3,15,6:T8:1 [53]
B $F302,20,6:T13:1 [54]
B $F316,11,6:T4:1 [55]
B $F321,15,6:T8:1 [56]
B $F330,12,6:T5:1 [57]
B $F33C,14,6:T7:1 [58]
B $F34A,18,8:T9:1 [59]
B $F35C,21,7:T13:1 [60]
B $F371,20,7:T12:1 [61]
B $F385,16,7:T8:1 [62]
c $F395 Treasure Action Function.
D $F395 Used by the routine at #R$DF82.
@ $F395 label=ActionTreasure
N $F3B0 This entry point is used by the routine at #R$F417.
@ $F3B0 label=ActionTreasure_0
C $F3B0,1 Hot spot has come out of range, disable.
@ $F3B8 label=ActionTreasure_1
@ $F3CB label=ActionTreasure_2
@ $F3E1 label=ActionTreasure_3
N $F3E5 This entry point is used by the routine at #R$F417.
@ $F3E5 label=ActionTreasure_4
@ $F3FE label=ActionTreasure_5
b $F40E Data block at F40E
T $F40E,8,8
B $F416,1,1
c $F417 Routine at F417
N $F419 This entry point is used by the routine at #R$F395.
@ $F419 label=ActionTreasure_6
c $F429 Offscreen Blit to DF.
D $F429 Used by the routines at #R$DF82 and #R$F489.
@ $F429 label=OffScrBlit
@ $F434 label=OffScrBlit_0
@ $F438 label=OffScrBlit_1
@ $F43B label=OffScrBlit_2
c $F461 Creates a link list from a sequence of data blocks. The pointer to the next address (next block defined by C) is stored in the first word of the block.
D $F461 Used by the routine at #R$F472. Input:  B  Number of memory blocks to link. C  Size of memory block DE  Address of first block.
@ $F461 label=LinkListCreate
C $F461,1 Less one for loop.
@ $F462 label=LinkListCreate_Next
C $F462,1 Get address of next block.
C $F467,1 Store as link pointer in current block.
N $F46C ...
C $F46C,1 Terminate link pointer for last block.
c $F472 Initialise link lists.
D $F472 Used by the routines at #R$DF82 and #R$F489.
@ $F472 label=LinkListInit
b $F487 Stack Pointer Store
@ $F487 label=StackPtrStore
W $F487,2,2
c $F489 Routine at F489
D $F489 Used by the routine at #R$F515.
@ $F489 label=Start
@ $F48E label=StartInit
@ $F4A9 label=StartInitHero
@ $F4AC label=StartWarm
N $F4B2 Main loop
@ $F4B2 label=MainLoop
C $F4BA,3 Check for '6' key press.
C $F4C1,2 If so goto to main menu.
C $F4C3,3 Check for key press 1~5
N $F4CC Key press '5' (PAUSE)
@ $F4CD label=MainLoop_Pause
C $F4CD,2 Wait for key up '5'
@ $F4D3 label=MainLoopPause1
C $F4D3,2 Wait for press press '5' (UNPAUSE)
@ $F4D9 label=MainLoopPause2
C $F4D9,2 Wait for key up '5' again.
N $F4E0 Key press '4' (DEMO MODE)
@ $F4E0 label=MainLoop_DemoMode
C $F4E4,3 Demo Mode on.
@ $F4ED label=Start_0
C $F4ED,2 Wait for key up '4'
N $F4F4 Update
@ $F4F4 label=MainLoop_Update
c $F515 Main() & Run()
@ $F515 label=Run
C $F517,3 System:Set PRINT channel
N $F51E Main()
@ $F51E label=Main
@ $F52B label=Main_Clr
b $F536 Baddy offscreen address.
@ $F536 label=Baddy_OffscreenPtr
B $F536,2,2 Offscreen address (0 = not on screen.)
@ $F538 label=BaddyWidth
B $F538,1,1 Width, Height of baddy frame.
@ $F539 label=BaddyHeight
B $F539,208,1,8*25,7
b $F609 Offscreen  This is 34 columns wide to give an extra clipping column either end.
@ $F609 label=OffScreen0
B $F609,1527,30*50,27
b $FC00 This is used to point the system charset to the defined bitmaps.
@ $FC00 label=Charset_StartPtr
B $FC00,672,8
b $FEA0 TirNaNog charset
@ $FEA0 label=Charset_Bitmaps
B $FEA0,352,8
