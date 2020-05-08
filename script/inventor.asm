	dc.b	loc_1B214-Script_InventorHouse	; 1
	dc.b	loc_1B244-loc_1B214				; 2
	dc.b	loc_1B269-loc_1B244				; 3
	dc.b	loc_1B2A4-loc_1B269				; 4
	dc.b	loc_1B360-loc_1B2A4				; 5
	dc.b	loc_1B391-loc_1B360				; 6
	dc.b	loc_1B3FA-loc_1B391				; 7
	dc.b	loc_1B41F-loc_1B3FA				; 8

loc_1B214:
	dc.b	"Hi! I'm working on"
	dc.b	$C1
	dc.b	"inventing a new kind of"
	dc.b	$C3
	dc.b	"gum!"
	dc.b	$C4

loc_1B244:
	dc.b	"Do you know what MARUERA"
	dc.b	$C1
	dc.b	"LEAVES are?"
	dc.b	$C5

loc_1B269:
	dc.b	"I need some of those"
	dc.b	$C1
	dc.b	"leaves. If you find"
	dc.b	$C3
	dc.b	"any, let me know!"
	dc.b	$C4

loc_1B2A4:
	dc.b	"There is a MARUERA TREE"
	dc.b	$C1
	dc.b	"on an island in the sea."
	dc.b	$C3
	dc.b	"The leaves of that tree"
	dc.b	$C1
	dc.b	"produce a large amount"
	dc.b	$C3
	dc.b	"of oxygen; I want to"
	dc.b	$C1
	dc.b	"use the leaves to make"
	dc.b	$C3
	dc.b	"a special gum that lets"
	dc.b	$C1
	dc.b	"you breathe underwater!"
	dc.b	$C4

loc_1B360:
	dc.b	"That's it; a MARUERA"
	dc.b	$C1
	dc.b	"LEAF! Please give it to"
	dc.b	$C3
	dc.b	"me!"
	dc.b	$C5

loc_1B391:
	dc.b	"Thanks! If you'll wait,"
	dc.b	$C1
	dc.b	"I'll make the gum", $47, $47, $47
	dc.b	$C3
	dc.b	"Done! There's plenty, so"
	dc.b	$C1
	dc.b	"take some! There you go!"
	dc.b	$C3
	dc.b	"Farewell!"
	dc.b	$C4

loc_1B3FA:
	dc.b	"That's too bad. Well"
	dc.b	$C1
	dc.b	"then, good-bye!"
	dc.b	$C4

; referenced but immediately overwritten in the code, thus it's never seen
loc_1B41F:
	dc.b	"Now, let me see,"
	dc.b	$C1
	dc.b	"what can I work on?"
	dc.b	$C4