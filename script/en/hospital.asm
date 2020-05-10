	dc.b	loc_19950-Script_Hospital	; 1
	dc.b	loc_19960-loc_19950			; 2
	dc.b	loc_19982-loc_19960			; 3
	dc.b	loc_199A9-loc_19982			; 4
	dc.b	loc_199CC-loc_199A9			; 5
	dc.b	loc_199F7-loc_199CC			; 6
	dc.b	loc_19A0C-loc_199F7			; 7
	dc.b	loc_19A28-loc_19A0C			; 8
	dc.b	loc_19A3E-loc_19A28			; 9
	dc.b	loc_19A65-loc_19A3E			; $A

loc_19950:
	dc.b	"May I help you?"
	dc.b	$C5

loc_19960:
	dc.b	$BB, ", you don't seem to"
	dc.b	$C1
	dc.b	"be poisoned."
	dc.b	$C4

loc_19982:
	dc.b	"It will cost ", $C0, " Meseta"
	dc.b	$C1
	dc.b	"to care for you."
	dc.b	$C5

loc_199A9:
	dc.b	"If you don't have enough"
	dc.b	$C1
	dc.b	"money,", $47, $47, $47
	dc.b	$C4

loc_199CC:
	dc.b	"I see; well, then, take"
	dc.b	$C1
	dc.b	"care and good day."
	dc.b	$C4

loc_199F7:
	dc.b	"Take care. Good-bye."
	dc.b	$C4

loc_19A0C:
	dc.b	"Who do you want us to"
	dc.b	$C1
	dc.b	"cure?"
	dc.b	$C5

loc_19A28:
	dc.b	$BB, " is dead,I'm afraid."
	dc.b	$C4

loc_19A3E:
	dc.b	"Nobody seems to be"
	dc.b	$C1
	dc.b	"injured, I believe."
	dc.b	$C4

loc_19A65:
	dc.b	"Does anyone else need to"
	dc.b	$C1
	dc.b	"be cured?"
	dc.b	$C5