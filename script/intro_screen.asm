	dc.b	loc_1D6A6-Script_IntroScreen	; 1
	dc.b	loc_1D6F5-loc_1D6A6				; 2
	dc.b	loc_1D719-loc_1D6F5				; 3
	dc.b	loc_1D762-loc_1D719				; 4
	dc.b	loc_1D784-loc_1D762				; 5
	dc.b	loc_1D7AC-loc_1D784				; 6
	dc.b	loc_1D7D4-loc_1D7AC				; 7
	dc.b	loc_1D7FF-loc_1D7D4				; 8
	dc.b	loc_1D81A-loc_1D7FF				; 9
	dc.b	loc_1D837-loc_1D81A				; $A
	dc.b	loc_1D873-loc_1D837				; $B
	dc.b	loc_1D891-loc_1D873				; $C
	dc.b	loc_1D8A7-loc_1D891				; $D
	dc.b	loc_1D8E7-loc_1D8A7				; $E
	dc.b	loc_1D90A-loc_1D8E7				; $F
	dc.b	loc_1D950-loc_1D90A				; 10

loc_1D6A6:
	dc.b	"There is no room to save"
	dc.b	$C1
	dc.b	"any more data; do you"
	dc.b	$C3
	dc.b	"still want to start a"
	dc.b	$C1
	dc.b	"new game?"
	dc.b	$C5

loc_1D6F5:
	dc.b	"What is the name of your"
	dc.b	$C1
	dc.b	"character?"
	dc.b	$C5

loc_1D719:
	dc.b	"Some of the existing"
	dc.b	$C1
	dc.b	"data needs to be erased"
	dc.b	$C3
	dc.b	"before starting a new"
	dc.b	$C1
	dc.b	"game."
	dc.b	$C4

loc_1D762:
	dc.b	"Well, then, let's begin"
	dc.b	$C1
	dc.b	"the game!"
	dc.b	$C4

loc_1D784:
	dc.b	"Which number game do you"
	dc.b	$C1
	dc.b	"want to start?"
	dc.b	$C5

loc_1D7AC:
	dc.b	"Which number game do you"
	dc.b	$C1
	dc.b	"want to erase?"
	dc.b	$C5

loc_1D7D4:
	dc.b	"Do you really want to"
	dc.b	$C1
	dc.b	"erase game number ", $C0, "?"
	dc.b	$C5

loc_1D7FF:
	dc.b	"Now erasing game number"
	dc.b	$C1
	dc.b	$C0, "."
	dc.b	$C4

loc_1D81A:
	dc.b	"Ok, I won't erase that"
	dc.b	$C1
	dc.b	"game."
	dc.b	$C4

loc_1D837:
	dc.b	"There is no data for"
	dc.b	$C1
	dc.b	"that number. Enter a"
	dc.b	$C3
	dc.b	"different number."
	dc.b	$C5

loc_1D873:
	dc.b	"Let me check the backup"
	dc.b	$C1
	dc.b	"data."
	dc.b	$C7

loc_1D891:
	dc.b	"The data for ", $C0, " is ok."
	dc.b	$C5

loc_1D8A7:
	dc.b	"There is a problem with"
	dc.b	$C1
	dc.b	"the data. Let me see if"
	dc.b	$C3
	dc.b	"I can fix it", $47, $47, $47
	dc.b	$C7

loc_1D8E7:
	dc.b	"Ok, I was able to fix"
	dc.b	$C1
	dc.b	"the problem."
	dc.b	$C4

loc_1D90A:
	dc.b	"I'm sorry, I can't seem"
	dc.b	$C1
	dc.b	"to fix things right."
	dc.b	$C3
	dc.b	"Game ", $C0, " cannot be"
	dc.b	$C1
	dc.b	"played."
	dc.b	$C4

loc_1D950:
	dc.b	"Data check complete."
	dc.b	$C7