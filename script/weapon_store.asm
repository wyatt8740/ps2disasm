	dc.b	loc_19A91-Script_WeaponStore	; 1
	dc.b	loc_19AAF-loc_19A91				; 2
	dc.b	loc_19ADB-loc_19AAF				; 3
	dc.b	loc_19B0B-loc_19ADB				; 4
	dc.b	loc_19B30-loc_19B0B				; 5
	dc.b	loc_19B60-loc_19B30				; 6
	dc.b	loc_19B81-loc_19B60				; 7
	dc.b	loc_19BB2-loc_19B81				; 8
	dc.b	loc_19BBE-loc_19BB2				; 9

loc_19A91:
	dc.b	"Welcome. What would you"
	dc.b	$C1
	dc.b	"like?"
	dc.b	$C5

loc_19AAF:
	dc.b	$BF, $47, $47, $47, "ok. Which"
	dc.b	$C1
	dc.b	"of you lugs is gonna"
	dc.b	$C3
	dc.b	"hold it?"
	dc.b	$C5

loc_19ADB:
	dc.b	"You must be joking! Are"
	dc.b	$C1
	dc.b	"you sure you want that?"
	dc.b	$C5

loc_19B0B:
	dc.b	"All right, who's going"
	dc.b	$C1
	dc.b	"to take this?"
	dc.b	$C5

loc_19B30:
	dc.b	"Not so fast, chum! You"
	dc.b	$C1
	dc.b	"don't have enough money!"
	dc.b	$C4

loc_19B60:
	dc.b	"There you go! Use it or"
	dc.b	$C1
	dc.b	"lose it!"
	dc.b	$C4

loc_19B81:
	dc.b	"Here you go! Take it! Do"
	dc.b	$C1
	dc.b	"you want anything else?"
	dc.b	$C5

loc_19BB2:
	dc.b	"Later, ace!"
	dc.b	$C4

loc_19BBE:
	dc.b	"You're carryin' quite a"
	dc.b	$C1
	dc.b	"load! Lose some of it!"
	dc.b	$C4