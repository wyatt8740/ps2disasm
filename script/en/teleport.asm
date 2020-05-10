	dc.b	loc_1B44C-Script_TeleportStation	; 1
	dc.b	loc_1B46D-loc_1B44C					; 2
	dc.b	loc_1B498-loc_1B46D					; 3
	dc.b	loc_1B517-loc_1B498					; 4
	dc.b	loc_1B535-loc_1B517					; 5
	dc.b	loc_1B55A-loc_1B535					; 6
	dc.b	loc_1B576-loc_1B55A					; 7
	dc.b	loc_1B59B-loc_1B576					; 8

loc_1B44C:
	dc.b	"Welcome to the Teleport"
	dc.b	$C1
	dc.b	"Station!"
	dc.b	$C4

loc_1B46D:
	dc.b	"Where would you like"
	dc.b	$C1
	dc.b	"to teleport?"
	dc.b	$C5

; ------------------------
; leftover data
	dc.b	" want to"
	dc.b	$C1
; ------------------------

loc_1B498:
	dc.b	"For just ", $C0, " meseta, we"
	dc.b	$C1
	dc.b	"can teleport you to any"
	dc.b	$C3
	dc.b	"town which you know of."
	dc.b	$C1
	dc.b	"If you know the name of"
	dc.b	$C3
	dc.b	"a town, you can use our"
	dc.b	$C1
	dc.b	"service!"
	dc.b	$C4

loc_1B517:
	dc.b	"Well, then, come again"
	dc.b	$C1
	dc.b	"later!"
	dc.b	$C4

loc_1B535:
	dc.b	"It will cost ", $C0, " meseta."
	dc.b	$C1
	dc.b	"Will you pay?"
	dc.b	$C5

loc_1B55A:
	dc.b	"Sorry we couldn't help"
	dc.b	$C1
	dc.b	"you."
	dc.b	$C4

loc_1B576:
	dc.b	"You don't seem to have"
	dc.b	$C1
	dc.b	"enough money."
	dc.b	$C4

loc_1B59B:
	dc.b	"Teleport on! Bye-bye!"
	dc.b	$C4