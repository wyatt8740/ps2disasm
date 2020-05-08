	dc.b	loc_19268-Script_TechAction	; 1
	dc.b	loc_19280-loc_19268			; 2
	dc.b	loc_1928B-loc_19280			; 3
	dc.b	loc_1929A-loc_1928B			; 4
	dc.b	loc_192C7-loc_1929A			; 5
	dc.b	loc_192EF-loc_192C7			; 6
	dc.b	loc_19319-loc_192EF			; 7
	dc.b	loc_19341-loc_19319			; 8
	dc.b	loc_19363-loc_19341			; 9
	dc.b	loc_1937A-loc_19363			; $A
	dc.b	loc_1939C-loc_1937A			; $B
	dc.b	loc_193B2-loc_1939C			; $C

loc_19268:
	dc.b	$BB, " can't use"
	dc.b	$C1
	dc.b	"techniques."
	dc.b	$C4

loc_19280:
	dc.b	$BC, " is dead."
	dc.b	$C4

loc_1928B:
	dc.b	"Not enough TP!"
	dc.b	$C4

loc_1929A:
	dc.b	$BB, " touches ", $BC, "'s"
	dc.b	$C1
	dc.b	"wounds. The wounds are"
	dc.b	$C3
	dc.b	"healed."
	dc.b	$C4

loc_192C7:
	dc.b	$BB, " touches ", $BC, "; ", $BC
	dc.b	$C1
	dc.b	"is cured of the poison."
	dc.b	$C4

loc_192EF:
	dc.b	$BB, " gives up part of"
	dc.b	$C1
	dc.b	"her life to the others."
	dc.b	$C4

loc_19319:
	dc.b	$BB, " embraces ", $BC, " and"
	dc.b	$C1
	dc.b	"gives part of her life"
	dc.b	$C3
	dc.b	"to ", $BC, "."
	dc.b	$C4

loc_19341:
	dc.b	$BB, " heals everybody's"
	dc.b	$C1
	dc.b	"wounds."
	dc.b	$C4

loc_19363:
	dc.b	$BB, " uses ", $BE
	dc.b	$C1
	dc.b	"successfully."
	dc.b	$C4

loc_1937A:
	dc.b	$BB, " touches ", $BC, "'s"
	dc.b	$C1
	dc.b	"cheek; ", $BC, " comes back"
	dc.b	$C3
	dc.b	"to life!"
	dc.b	$C4

loc_1939C:
	dc.b	$BB, " touches ", $BC, "'s"
	dc.b	$C1
	dc.b	"wounds."
	dc.b	$C4

loc_193B2:
	dc.b	"But the poison still"
	dc.b	$C1
	dc.b	"remains; ", $BC, " can't be"
	dc.b	$C3
	dc.b	"healed."
	dc.b	$C4