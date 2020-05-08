	dc.b	loc_19655-Script_CloneLabs	; 1
	dc.b	loc_1969C-loc_19655			; 2
	dc.b	loc_196BF-loc_1969C			; 3
	dc.b	loc_196E5-loc_196BF			; 4
	dc.b	loc_196FD-loc_196E5			; 5
	dc.b	loc_1972B-loc_196FD			; 6
	dc.b	loc_19742-loc_1972B			; 7
	dc.b	loc_19767-loc_19742			; 8
	dc.b	loc_19825-loc_19767			; 9
	dc.b	loc_198AD-loc_19825			; $A
	dc.b	loc_198EC-loc_198AD			; $B

loc_19655:
	dc.b	"Welcome to the Clone"
	dc.b	$C1
	dc.b	"Labs! Who would you like"
	dc.b	$C3
	dc.b	"to have returned to you?"
	dc.b	$C5

loc_1969C:
	dc.b	"This is no place for"
	dc.b	$C1
	dc.b	"stupid jokes!"
	dc.b	$C4

loc_196BF:
	dc.b	"It will cost ", $C0, " "
	dc.b	$C1
	dc.b	"meseta."
	dc.b	$C3
	dc.b	"Will you pay?"
	dc.b	$C5

loc_196E5:
	dc.b	"All right, here you go."
	dc.b	$C4

loc_196FD:
	dc.b	"Is there anyone else you"
	dc.b	$C1
	dc.b	"would like returned?"
	dc.b	$C5

loc_1972B:
	dc.b	$BB, " is returned to"
	dc.b	$C1
	dc.b	"life!"
	dc.b	$C5

loc_19742:
	dc.b	"Who would you like to"
	dc.b	$C1
	dc.b	"have returned?"
	dc.b	$C5

loc_19767:
	dc.b	"Welcome to the Clone"
	dc.b	$C1
	dc.b	"Labs! Who would you like"
	dc.b	$C3
	dc.b	"to have returned to you?"
	dc.b	$C1
	dc.b	"Ahh, the one called Nei?"
	dc.b	$C3
	dc.b	"I'm sorry, but we really"
	dc.b	$C1
	dc.b	"aren't able to return"
	dc.b	$C3
	dc.b	"people who aren't human."
	dc.b	$C1
	dc.b	"It just doesn't work."
	dc.b	$C3

loc_19825:
	dc.b	"Just above Paseo is a"
	dc.b	$C1
	dc.b	"plateau; why not put her"
	dc.b	$C3
	dc.b	"to rest up there? Don't"
	dc.b	$C1
	dc.b	"be sad--everyone must"
	dc.b	$C3
	dc.b	"die sometime; your"
	dc.b	$C1
	dc.b	"friend led a full life!"
	dc.b	$C4

loc_198AD:
	dc.b	"Have you never heard"
	dc.b	$C1
	dc.b	"that \IMoney makes the"
	dc.b	$C3
	dc.b	"world go round?\I", $47, $47, $47
	dc.b	$C4

loc_198EC:
	dc.b	"What about that tired"
	dc.b	$C1
	dc.b	"young one over there? It"
	dc.b	$C3
	dc.b	"may be possible to bring"
	dc.b	$C1
	dc.b	"him back to life."
	dc.b	$C4