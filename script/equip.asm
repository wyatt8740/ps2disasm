	dc.b	loc_193F1-Script_EquipAction	; 1
	dc.b	loc_19401-loc_193F1				; 2
	dc.b	loc_1940C-loc_19401				; 3
	dc.b	loc_19426-loc_1940C				; 4
	dc.b	loc_19433-loc_19426				; 5

loc_193F1:
	dc.b	$BB, " can't take"
	dc.b	$C1
	dc.b	$BF, "."
	dc.b	$C4

loc_19401:
	dc.b	$BB, " takes ", $BF, "."
	dc.b	$C4

loc_1940C:
	dc.b	$BB, " doesn't want to"
	dc.b	$C1
	dc.b	"take ", $BF, "."
	dc.b	$C4

loc_19426:
	dc.b	$BB, " removes ", $BF, "."
	dc.b	$C4

loc_19433:
	dc.b	$BF, " can't be"
	dc.b	$C1
	dc.b	"taken."
	dc.b	$C4