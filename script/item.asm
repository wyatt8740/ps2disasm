	dc.b	loc_18C72-Script_ItemAction	; 1
	dc.b	loc_18C7F-loc_18C72			; 2
	dc.b	loc_18C96-loc_18C7F			; 3
	dc.b	loc_18CB0-loc_18C96			; 4
	dc.b	loc_18CC1-loc_18CB0			; 5
	dc.b	loc_18CD3-loc_18CC1			; 6
	dc.b	loc_18CDE-loc_18CD3			; 7
	dc.b	loc_18D0A-loc_18CDE			; 8
	dc.b	loc_18D1A-loc_18D0A			; 9
	dc.b	loc_18D3F-loc_18D1A			; $A
	dc.b	loc_18D51-loc_18D3F			; $B
	dc.b	loc_18D77-loc_18D51			; $C
	dc.b	loc_18D95-loc_18D77			; $D
	dc.b	loc_18DBC-loc_18D95			; $E
	dc.b	loc_18DC7-loc_18DBC			; $F
	dc.b	loc_18DE3-loc_18DC7			; $10
	dc.b	loc_18E02-loc_18DE3			; $11
	dc.b	loc_18E31-loc_18E02			; $12
	dc.b	loc_18E4C-loc_18E31			; $13
	dc.b	loc_18E74-loc_18E4C			; $14
	dc.b	loc_18E9A-loc_18E74			; $15
	dc.b	loc_18EBD-loc_18E9A			; $16
	dc.b	loc_18EEA-loc_18EBD			; $17
	dc.b	loc_18EFF-loc_18EEA			; $18
	dc.b	loc_18F10-loc_18EFF			; $19
	dc.b	loc_18F6B-loc_18F10			; $1A
	dc.b	loc_18F9B-loc_18F6B			; $1B
	dc.b	loc_18FCB-loc_18F9B			; $1C
	dc.b	loc_18FFA-loc_18FCB			; $1D
	dc.b	loc_1902A-loc_18FFA			; $1E
	dc.b	loc_19056-loc_1902A			; $1F
	dc.b	loc_19085-loc_19056			; $20
	dc.b	loc_19138-loc_19085			; $21
	dc.b	loc_1916E-loc_19138			; $22
	dc.b	loc_191BA-loc_1916E			; $23
	dc.b	loc_191D5-loc_191BA			; $24
	dc.b	loc_191F5-loc_191D5			; $25
	dc.b	loc_1921C-loc_191F5			; $26
	dc.b	loc_1921C-loc_1921C			; $27
	dc.b	loc_19235-loc_1921C			; $28

loc_18C72:
	dc.b	$BB, " uses ", $BF, $47, $47, $47, $47
	dc.b	$C4

loc_18C7F:
	dc.b	$BC, "'s wounds are"
	dc.b	$C1
	dc.b	"healed."
	dc.b	$C4

loc_18C96:
	dc.b	$BC, " is cured of the"
	dc.b	$C1
	dc.b	"poison."
	dc.b	$C4

loc_18CB0:
	dc.b	"Nothing happens."
	dc.b	$C4

loc_18CC1:
	dc.b	$BC, " is alive again."
	dc.b	$C4

loc_18CD3:
	dc.b	$BB, " is dead."
	dc.b	$C4

loc_18CDE:
	dc.b	"The prism shines with a"
	dc.b	$C1
	dc.b	"strange brilliance."
	dc.b	$C4

loc_18D0A:
	dc.b	$BB, " gives "
	dc.b	$BF
	dc.b	$C1
	dc.b	"to ", $BC, "."
	dc.b	$C4

loc_18D1A:
	dc.b	$BC, " takes ", $BF
	dc.b	$C1
	dc.b	"from ", $BB, "'s sack."
	dc.b	$C4

loc_18D3F:
	dc.b	$BC, " can't carry any"
	dc.b	$C1
	dc.b	"more items."
	dc.b	$C4

loc_18D51:
	dc.b	"It's not a good idea to"
	dc.b	$C1
	dc.b	"throw ", $BF, " away."
	dc.b	$C4

loc_18D77:
	dc.b	"Do you really want to"
	dc.b	$C1
	dc.b	"drop ", $BF, "?"
	dc.b	$C5

loc_18D95:
	dc.b	$BB, " changes his mind"
	dc.b	$C1
	dc.b	"and keeps the item."
	dc.b	$C4

loc_18DBC:
	dc.b	$BB, " drops ", $BF, "."
	dc.b	$C4

loc_18DC7:
	dc.b	$BB, " can't let go of the"
	dc.b	$C1
	dc.b	"item!"
	dc.b	$C4

loc_18DE3:
	dc.b	"A strong scent fills the"
	dc.b	$C1
	dc.b	"area."
	dc.b	$C4

loc_18E02:
	dc.b	"This is a leaf from a"
	dc.b	$C1
	dc.b	"Maruera tree. It's soft."
	dc.b	$C4

loc_18E31:
	dc.b	$BB, "'s body feels very"
	dc.b	$C1
	dc.b	"light."
	dc.b	$C5

loc_18E4C:
	dc.b	"The tones cover the"
	dc.b	$C1
	dc.b	"sound of "
	dc.b	$BB, "'s steps."
	dc.b	$C5

loc_18E74:
	dc.b	$BB, " takes out"
	dc.b	$C1
	dc.b	$BF, ", but then"
	dc.b	$C3
	dc.b	"puts it back."
	dc.b	$C4

loc_18E9A:
	dc.b	"It is a key for a small"
	dc.b	$C1
	dc.b	"container."
	dc.b	$C4

loc_18EBD:
	dc.b	"It is a metal pole,"
	dc.b	$C1
	dc.b	"20cm long,with markings."
	dc.b	$C4

loc_18EEA:
	dc.b	"The container opens."
	dc.b	$C4

loc_18EFF:
	dc.b	$BB, " puts ", $BF
	dc.b	$C1
	dc.b	"inside."
	dc.b	$C4

loc_18F10:
	dc.b	"The party eats"
	dc.b	$C1
	dc.b	$BF, ". With each"
	dc.b	$C3
	dc.b	"bite, everyone's mouth"
	dc.b	$C1
	dc.b	"fills with air!"
	dc.b	$C3
	dc.b	"Could help underwater", $47, $47
	dc.b	$C4

loc_18F6B:
	dc.b	"The ocean bottom would"
	dc.b	$C1
	dc.b	"be a good testing place."
	dc.b	$C4

loc_18F9B:
	dc.b	"The dam locks open, and"
	dc.b	$C1
	dc.b	"rushing water is heard."
	dc.b	$C4

loc_18FCB:
	dc.b	"It's a card which shines"
	dc.b	$C1
	dc.b	"like a green emerald!"
	dc.b	$C4

loc_18FFA:
	dc.b	"It's a card which is a"
	dc.b	$C1
	dc.b	"bluish aquamarine color."
	dc.b	$C4

loc_1902A:
	dc.b	"It's a yellow card, like"
	dc.b	$C1
	dc.b	"the sands of Mota."
	dc.b	$C4

loc_19056:
	dc.b	"It's a card which is red"
	dc.b	$C1
	dc.b	"like the setting sun."
	dc.b	$C4

loc_19085:
	dc.b	"The note said;"
	dc.b	$C1
	dc.b	"\IDarum! I have your"
	dc.b	$C3
	dc.b	"daughter Teim locked in"
	dc.b	$C1
	dc.b	"Nido tower. Pay 50,000"
	dc.b	$C3
	dc.b	"meseta in one month if"
	dc.b	$C1
	dc.b	"you ever want to see her"
	dc.b	$C3
	dc.b	"again,\I"
	dc.b	$C1
	dc.b	"To get the money, Darum"
	dc.b	$C3
	dc.b	"turned to crime."
	dc.b	$C4

loc_19138:
	dc.b	"This device records all"
	dc.b	$C1
	dc.b	"events in the Biosystems"
	dc.b	$C3
	dc.b	"lab."
	dc.b	$C4

loc_1916E:
	dc.b	"If this can be delivered"
	dc.b	$C1
	dc.b	"to Paseo, we will know"
	dc.b	$C3
	dc.b	"what caused the"
	dc.b	$C1
	dc.b	"Biohazards."
	dc.b	$C4

loc_191BA:
	dc.b	$BB, " isn't carrying"
	dc.b	$C1
	dc.b	"anything."
	dc.b	$C4

loc_191D5:
	dc.b	$BB, " takes out"
	dc.b	$C1
	dc.b	$BF, " and puts it"
	dc.b	$C3
	dc.b	"back."
	dc.b	$C4

loc_191F5:
	dc.b	"How can I get father to"
	dc.b	$C1
	dc.b	"mend his ways?"
	dc.b	$C4

loc_1921C:
	dc.b	"That can't be used here."
	dc.b	$C4

loc_19235:
	dc.b	"Making contact with the"
	dc.b	$C1
	dc.b	"data memory"
	dc.b	$47, $47, $47
	dc.b	$C4
