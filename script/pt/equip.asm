	dc.b	loc_193E5-Script_EquipAction
	dc.b	loc_193F9-loc_193E5
	dc.b	loc_19403-loc_193F9
	dc.b	loc_19417-loc_19403
	dc.b	loc_19423-loc_19417

loc_193E5:
	dc.b	$BB, " nao pode pegar"
	dc.b	$C1
	dc.b	$BF, "."
	dc.b	$C4
loc_193F9:
	dc.b	$BB, " pega ", $BF, "."
	dc.b	$C4
loc_19403:
	dc.b	$BB, " nao quer"
	dc.b	$C1
	dc.b	"pegar ", $BF, "."
	dc.b	$C4
loc_19417:
	dc.b	$BB, " remove ", $BF, "."
	dc.b	$C4
loc_19423:
	dc.b	$BF, " nao pode ser"
	dc.b	$C1
	dc.b	"usado."
	dc.b	$C4