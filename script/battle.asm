	dc.b	loc_1D2A5-Script_Battle	; 1
	dc.b	loc_1D2B3-loc_1D2A5		; 2
	dc.b	loc_1D2CB-loc_1D2B3		; 3
	dc.b	loc_1D2E0-loc_1D2CB		; 4
	dc.b	loc_1D2ED-loc_1D2E0		; 5
	dc.b	loc_1D2FC-loc_1D2ED		; 6
	dc.b	loc_1D307-loc_1D2FC		; 7
	dc.b	loc_1D326-loc_1D307		; 8
	dc.b	loc_1D341-loc_1D326 	; 9
	dc.b	loc_1D35D-loc_1D341		; $A
	dc.b	loc_1D369-loc_1D35D		; $B
	dc.b	loc_1D37C-loc_1D369		; $C
	dc.b	loc_1D38C-loc_1D37C		; $D
	dc.b	loc_1D3A7-loc_1D38C		; $E
	dc.b	loc_1D3BA-loc_1D3A7		; $F
	dc.b	loc_1D3CD-loc_1D3BA		; $10
	dc.b	loc_1D3E0-loc_1D3CD		; $11
	dc.b	loc_1D3FC-loc_1D3E0		; $12
	dc.b	loc_1D411-loc_1D3FC		; $13
	dc.b	loc_1D423-loc_1D411		; $14
	dc.b	loc_1D434-loc_1D423		; $15
	dc.b	loc_1D444-loc_1D434		; $16
	dc.b	loc_1D454-loc_1D444		; $17
	dc.b	loc_1D46D-loc_1D454		; $18
	dc.b	loc_1D4AA-loc_1D46D		; $19
	dc.b	loc_1D4C3-loc_1D4AA		; $1A
	dc.b	loc_1D4C3-loc_1D4C3		; $1B
	dc.b	loc_1D4C3-loc_1D4C3		; $1C
	dc.b	loc_1D4D7-loc_1D4C3		; $1D
	dc.b	loc_1D4E6-loc_1D4D7		; $1E
	dc.b	loc_1D501-loc_1D4E6		; $1F
	dc.b	loc_1D514-loc_1D501		; $20
	dc.b	loc_1D52E-loc_1D514		; $21
	dc.b	loc_1D53E-loc_1D52E		; $22
	dc.b	loc_1D558-loc_1D53E		; $23
	dc.b	loc_1D568-loc_1D558		; $24
	dc.b	loc_1D59E-loc_1D568		; $25
	dc.b	loc_1D5B2-loc_1D59E		; $26
	dc.b	loc_1D5E1-loc_1D5B2		; $27
	dc.b	loc_1D60C-loc_1D5E1		; $28
	dc.b	loc_1D63C-loc_1D60C		; $29
	dc.b	loc_1D65C-loc_1D63C		; $2A

loc_1D2A5:
	dc.b	$BB, " fell asleep!"
	dc.b	$C6

loc_1D2B3:
	dc.b	$BB, " and friends"
	dc.b	$C3
	dc.b	"run away!"
	dc.b	$C6

loc_1D2CB:
	dc.b	"But they're"
	dc.b	$C3
	dc.b	"trapped!"
	dc.b	$C6

loc_1D2E0:
	dc.b	"Didn't work!"
	dc.b	$C6

loc_1D2ED:
	dc.b	$BB, " can't fight!"
	dc.b	$C4

loc_1D2FC:
	dc.b	$BB, " is dead!"
	dc.b	$C6

loc_1D307:
	dc.b	$BB, " doesn't know"
	dc.b	$C3
	dc.b	"any techniques!"
	dc.b	$C4

loc_1D326:
	dc.b	$BB, " and party are"
	dc.b	$C3
	dc.b	"destroyed!"
	dc.b	$C6

loc_1D341:
	dc.b	"Fighting ability"
	dc.b	$C3
	dc.b	"increases!"
	dc.b	$C6

loc_1D35D:
	dc.b	$BD, " is quiet."
	dc.b	$C6

loc_1D369:
	dc.b	$BD, " has gone"
	dc.b	$C3
	dc.b	"insane!"
	dc.b	$C6

loc_1D37C:
	dc.b	$BD, " is"
	dc.b	$C3
	dc.b	"paralyzed!"
	dc.b	$C6

loc_1D38C:
	dc.b	"Defense ability"
	dc.b	$C3
	dc.b	"increases!"
	dc.b	$C6

loc_1D3A7:
	dc.b	"Agility increases!"
	dc.b	$C6

loc_1D3BA:
	dc.b	$BB, " gives up a"
	dc.b	$C3
	dc.b	"life!"
	dc.b	$C6

loc_1D3CD:
	dc.b	"Something's wrong!"
	dc.b	$C6

loc_1D3E0:
	dc.b	$BB, " and party are"
	dc.b	$C3
	dc.b	"victorious!"
	dc.b	$C4

loc_1D3FC:
	dc.b	$C0, " experience"
	dc.b	$C3
	dc.b	"points!"
	dc.b	$C4

loc_1D411:
	dc.b	"Receive ", $C0
	dc.b	$C3
	dc.b	"meseta!"
	dc.b	$C4

loc_1D423:
	dc.b	$BB, " gains a level."
	dc.b	$C4

loc_1D434:
	dc.b	"New HP maximum!"
	dc.b	$C4

loc_1D444:
	dc.b	"New TP maximum!"
	dc.b	$C4

loc_1D454:
	dc.b	"Learned a new"
	dc.b	$C3
	dc.b	"technique!"
	dc.b	$C4

loc_1D46D:
	dc.b	$BB, " and the others"
	dc.b	$C1
	dc.b	"failed to restore peace"
	dc.b	$C1
	dc.b	"to the planet Algo."
	dc.b	$C5

loc_1D4AA:
	dc.b	"Trapped by plasma"
	dc.b	$C3
	dc.b	"rings!"
	dc.b	$C4

loc_1D4C3:
	dc.b	"Too tired to"
	dc.b	$C3
	dc.b	"fight!"
	dc.b	$C6

loc_1D4D7:
	dc.b	$BB, " is poisoned!"
	dc.b	$C6

loc_1D4E6:
	dc.b	"Defense ability"
	dc.b	$C3
	dc.b	"decreased!"
	dc.b	$C6

loc_1D501:
	dc.b	"Agility decreased!"
	dc.b	$C6

loc_1D514:
	dc.b	"Attack ability"
	dc.b	$C3
	dc.b	"decreased!"
	dc.b	$C6

loc_1D52E:
	dc.b	$BB, " is paralyzed!"
	dc.b	$C6

loc_1D53E:
	dc.b	$BB, " is no longer"
	dc.b	$C3
	dc.b	"paralyzed!"
	dc.b	$C6

loc_1D558:
	dc.b	$BB, " becomes evil!"
	dc.b	$C6

loc_1D568:
	dc.b	$BB, " turns traitor"
	dc.b	$C3
	dc.b	"and tries to run,"
	dc.b	$C3
	dc.b	"but can't get"
	dc.b	$C3
	dc.b	"away!"
	dc.b	$C6

loc_1D59E:
	dc.b	"Crushed by"
	dc.b	$C3
	dc.b	"despair!"
	dc.b	$C6

loc_1D5B2:
	dc.b	$BB, " turns greedy"
	dc.b	$C3
	dc.b	"and searches the"
	dc.b	$C3
	dc.b	"others' items!"
	dc.b	$C6

loc_1D5E1:
	dc.b	$BB, " turns"
	dc.b	$C3
	dc.b	"doubtful!"
	dc.b	$C3
	dc.b	$BB, " fights less"
	dc.b	$C3
	dc.b	"furiously!"
	dc.b	$C6

loc_1D60C:
	dc.b	$BB, " loses"
	dc.b	$C3
	dc.b	"confidence!"
	dc.b	$C3
	dc.b	$BB, " can't use"
	dc.b	$C3
	dc.b	"any techniques!"
	dc.b	$C6

loc_1D63C:
	dc.b	$BB, " gets lazy!"
	dc.b	$C3
	dc.b	"Agility decreases!"
	dc.b	$C6

loc_1D65C:
	dc.b	"The Neisword emits"
	dc.b	$C3
	dc.b	"a bright light!"
	dc.b	$C3
	dc.b	"The evil is"
	dc.b	$C3
	dc.b	"dispelled!"
	dc.b	$C6