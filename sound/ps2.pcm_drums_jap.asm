	cpu Z80
	listing off

PCMDrumsStart:
	di
	di
	ld	sp, 1FF0h
	ld	a, 80h
	ld	c, 2Bh
	call zloc_F
	jp	zloc_68
	
zloc_F:
	push af
	ld	a, 80h
	ld	(1FFDh), a
	ld	a, c
	ld	(4000h), a

zloc_19:
	ld	a, (4000h)
	bit	7, a
	jr	nz, zloc_19
	pop	af
	nop
	ld	(4001h), a
	xor	a
	ld	(1FFDh), a
	ret
	
	rept 14
		db	0
	endm
	
zVBlank:
	reti
	
	rept 44
		db	0
	endm
	
NMI_Handler:
	 retn
	
zloc_68:
	ld	a, (1FFFh)
	bit	7, a
	jp	z, zloc_96
	bit	0, a
	jp	nz, zloc_BA
	bit	1, a
	jp	nz, zloc_C5
	bit	2, a
	jp	nz, zloc_A4
	bit	3, a
	jp	nz, zloc_99
	bit	4, a
	jp	nz, zloc_E6
	bit	5, a
	jp	nz, zloc_D0
	bit	6, a
	jp	nz, zloc_DB
	jp	zloc_AF
	
zloc_96:
	jp	zloc_68
	
zloc_99:
	ld	de, zloc_118
	ld	hl, 181h
	ld	a, 5
	jp	zloc_EE
	
zloc_A4:
	ld	de, zloc_299
	ld	hl, 801h
	ld	a, 0Eh
	jp	zloc_EE
	
zloc_AF:
	ld	de, zloc_A98
	ld	hl, 801h
	ld	a, 2
	jp	zloc_EE
	
zloc_BA:
	ld	de, zloc_A98
	ld	hl, 801h
	ld	a, 4
	jp	zloc_EE
	
zloc_C5:
	ld	de, zloc_A98
	ld	hl,	801h
	ld	a, 8
	jp	zloc_EE
	
zloc_D0:
	ld	de, zloc_1299
	ld	hl, 601h
	ld	a, 4
	jp	zloc_EE
	
zloc_DB:
	ld	de, zloc_189A
	ld	hl, 201h
	ld	a, 4
	jp	zloc_EE
	
zloc_E6:
	ld	de, zloc_1A9B
	ld	hl, 201h
	ld	a, 4
	
zloc_EE:
	ld	(1FFEh), a
	xor	a
	ld	(1FFFh), a
	ld	a, (1FFEh)
zloc_F8:
	ld	b, a
	
-	djnz -

	ex	af, af'
	ld	a, (de)
	ld	c, 2Ah
	call zloc_F
	inc	de
	dec	hl
	ld	a, l
	or	h
	jr	z, zloc_115
	ld	a, (1FFFh)
	or	a
	jp	nz, zloc_68
	ex	af, af'
	jp	zloc_F8
	
zloc_115:
	jp	zloc_68
	
zloc_118:
	db	78h, 6Eh, 58h, 51h, 4Ch, 00h, 00h, 00h
	db	00h, 00h, 02h, 00h, 00h, 04h, 00h, 04h, 00h, 00h, 11h, 8Dh, 00h, 33h, 00h, 7Dh
	db	0E2h, 0FFh, 0FFh, 0FFh, 0FFh, 92h, 0FFh, 4Eh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0A5h, 0CAh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
	db	00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
	db	00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 2Ch, 36h, 49h, 5Fh
	db	0B6h, 50h, 0FFh, 0D7h, 0D1h, 0FFh, 0FFh, 0EFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0EEh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0BFh, 0FFh, 0FFh, 0ABh, 0E3h, 0EAh, 0A3h, 0FFh
	db	97h, 0A7h, 0B8h, 0BEh, 80h, 0E9h, 0C1h, 91h, 85h, 90h, 0C5h, 8Ch, 2Fh, 0B4h, 39h, 7Fh
	db	5Eh, 0AFh, 64h, 6Eh, 59h, 0E6h, 4Eh, 85h, 0D3h, 7Dh, 87h, 0F9h, 0A8h, 0BFh, 0F6h, 0B6h
	db	0E4h, 0CCh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0F9h, 0FFh, 0FFh, 0F7h, 0ADh, 0B5h, 0B1h, 85h, 74h
	db	5Bh, 49h, 33h, 3Ah, 00h, 19h, 13h, 00h, 1Dh, 00h, 00h, 00h, 00h, 00h, 00h, 00h
	db	00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
	db	1Ah, 07h, 0Ah, 13h, 00h, 15h, 41h, 45h, 24h, 2Ch, 3Bh, 00h, 31h, 71h, 43h, 3Dh
	db	31h, 61h, 4Dh, 37h, 2Bh, 41h, 31h, 3Bh, 3Fh, 3Fh, 4Ch, 71h, 36h, 6Dh, 47h, 4Ah
	db	63h, 63h, 63h, 54h, 85h, 6Fh, 69h, 8Ch, 7Bh, 6Fh, 59h, 9Fh, 74h, 7Eh, 8Ch, 64h
	db	90h, 77h, 80h, 5Eh, 61h, 7Ah, 70h, 84h, 7Fh, 96h, 85h, 5Fh, 82h, 8Ch, 82h, 6Fh
	db	87h, 88h, 71h, 7Bh, 76h, 80h, 6Ah, 89h, 67h, 81h, 6Eh, 80h, 81h, 71h, 75h, 93h
	db	85h, 77h, 69h, 7Ah, 76h, 8Dh, 91h, 90h, 9Fh, 84h, 0A3h, 96h, 0A3h, 0A5h, 9Bh, 0ACh
	db	0A4h, 0AFh, 0BAh, 0B3h, 99h, 0C4h, 0C1h, 0B2h, 0B3h, 0C4h, 0B6h, 0C7h, 0CDh, 0C9h, 0C2h, 0C1h
	db	0C5h, 0B6h, 0BDh, 0C6h, 0B3h, 0B1h, 0C1h, 0ACh, 0B1h, 0C2h, 0ABh, 0AAh, 0ACh, 0A9h, 9Fh, 0AAh
	db	0A5h, 9Fh, 9Ch, 97h, 9Dh, 92h, 87h, 87h, 7Eh
	

zloc_299:
	db	80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h
	db	80h, 80h, 80h, 80h, 7Fh, 7Fh, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 7Fh, 7Fh
	db	80h, 80h, 80h, 80h, 80h, 7Fh, 80h, 80h, 7Fh, 7Fh, 80h, 80h, 7Fh, 7Fh, 80h, 7Fh
	db	80h, 7Fh, 80h, 7Fh, 7Fh, 80h, 7Fh, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h
	db	80h, 7Fh, 80h, 80h, 7Fh, 7Fh, 80h, 80h, 7Fh, 7Fh, 80h, 80h, 80h, 80h, 80h, 80h
	db	80h, 80h, 7Fh, 7Fh, 80h, 80h, 80h, 80h, 80h, 7Fh, 80h, 80h, 81h, 81h, 85h, 84h
	db	7Ah, 76h, 97h, 4Eh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0FFh, 0FFh, 0FFh
	
; 307
	db	0FFh, 0FFh, 0FFh, 0FFh, 39h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 0FFh, 0FFh
	db	0BBh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0F7h, 0FFh, 00h, 00h, 00h, 97h, 25h, 00h, 31h, 00h, 00h, 00h
	db	00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 07h
	db	00h, 41h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 3Dh, 0FFh, 0FFh, 0FFh, 00h, 00h
	db	00h, 00h, 00h, 00h, 00h, 00h, 8Ah, 23h, 0A7h, 0FFh, 0C8h, 7Dh, 0FFh, 0FFh, 0FFh, 0BEh
	db	00h, 00h, 13h, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 20h, 00h, 0E1h, 0FFh, 0FFh, 0FFh, 0FFh, 0D4h, 0FFh, 0FFh, 0FFh, 0FFh, 00h, 00h, 00h
	db	00h, 28h, 0DBh, 00h, 00h, 0CFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0B5h, 00h, 5Fh
	db	0B6h, 05h, 98h, 00h, 49h, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 5Fh, 39h, 01h, 00h, 00h
	db	00h, 00h, 00h, 04h, 0ABh, 0C1h, 0FFh, 0D7h, 0FEh, 0FFh, 0FFh, 0FFh, 0FFh, 49h, 37h, 86h
	db	62h, 0CAh, 9Bh, 0BBh, 7Ch, 0DDh, 0FFh, 0FFh, 0FFh, 0FFh, 0ECh, 0FFh, 0FFh, 0FFh, 0FFh, 00h
	db	00h, 7Dh, 0FFh, 84h, 10h, 75h, 41h, 77h, 0BDh, 52h, 00h, 00h, 00h, 77h, 7Bh, 00h
	db	00h, 00h, 00h, 32h, 59h, 01h, 12h, 4Ch, 0FFh, 0C7h, 0D3h, 96h, 00h, 01h, 0D7h, 0D6h
	db	33h, 00h, 00h, 00h, 64h, 35h, 00h, 1Fh, 05h, 73h, 00h, 0FFh, 00h, 01h, 99h, 00h
	db	9Eh, 6Eh, 00h, 00h, 95h, 01h, 00h, 65h, 1Dh, 0Ch, 33h, 0FBh, 00h, 0CDh, 0B5h, 0E7h
;407
	db	0FDh, 2Ah, 0Ch, 0B9h, 13h, 0E9h, 3Ch, 00h, 1Fh, 80h, 0FFh, 0FFh, 9Eh, 0B3h, 6Fh, 0D8h
	db	82h, 00h, 54h, 00h, 43h, 0B7h, 00h, 56h, 4Eh, 00h, 25h, 28h, 6Bh, 0E9h, 0F5h, 0FFh
	db	1Eh, 0D7h, 0DEh, 00h, 36h, 23h, 0FFh, 0B5h, 0B4h, 8Dh, 0E3h, 96h, 0B5h, 69h, 0FFh, 55h
	db	6Eh, 0FAh, 0E1h, 82h, 2Eh, 99h, 00h, 90h, 0F6h, 3Fh, 00h, 41h, 00h, 3Bh, 0FFh, 00h
	db	49h, 00h, 4Bh, 69h, 0EFh, 09h, 0BFh, 0C1h, 0CEh, 52h, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0D9h
	db	64h, 0FFh, 4Ch, 67h, 8Ah, 0A1h, 0EDh, 0FFh, 0FFh, 52h, 0BDh, 24h, 0E2h, 43h, 94h, 3Dh
	db	0A4h, 0FFh, 91h, 04h, 73h, 01h, 0A9h, 0FFh, 8Dh, 00h, 58h, 0FFh, 0FFh, 0B1h, 56h, 0Bh
	db	36h, 61h, 0FFh, 7Ah, 60h, 13h, 0ECh, 26h, 0FFh, 0C7h, 9Dh, 9Ah, 0BBh, 0A9h, 0FFh, 0C1h
	db	95h, 9Bh, 23h, 2Eh, 91h, 01h, 0C7h, 00h, 00h, 00h, 7Bh, 64h, 0FFh, 49h, 88h, 19h
	db	0B4h, 0D1h, 0CFh, 00h, 0B0h, 0DFh, 94h, 0FCh, 7Bh, 00h, 62h, 91h, 8Dh, 33h, 00h, 00h
	db	4Fh, 1Fh, 0EDh, 6Eh, 0A9h, 7Fh, 61h, 0FFh, 0FFh, 0FFh, 0EDh, 78h, 0F8h, 0CDh, 0D8h, 66h
	db	00h, 51h, 00h, 7Bh, 6Dh, 0A7h, 7Ch, 00h, 6Ch, 00h, 58h, 7Ch, 00h, 01h, 14h, 0FFh
	db	85h, 05h, 1Dh, 9Ch, 0FFh, 0FFh, 0FFh, 21h, 0A8h, 0B4h, 0CBh, 0A2h, 0BDh, 8Fh, 51h, 1Eh
	db	0Fh, 6Bh, 08h, 2Bh, 00h, 4Fh, 83h, 4Bh, 7Fh, 0CFh, 27h, 0EDh, 0FFh, 0F3h, 0C4h, 05h
	db	0AAh, 0B9h, 70h, 85h, 2Ch, 01h, 00h, 00h, 0B7h, 72h, 0FFh, 58h, 0E5h, 0C3h, 44h, 0BBh
	db	9Bh, 60h, 00h, 15h, 0FFh, 01h, 85h, 19h, 00h, 0C3h, 0FFh, 00h, 3Ah, 0EFh, 0F7h, 8Dh
; 507
	db	90h, 38h, 2Bh, 0C8h, 00h, 01h, 7Bh, 0FFh, 62h, 81h, 0DBh, 0ACh, 77h, 65h, 67h, 0B9h
	db	86h, 5Bh, 46h, 0BAh, 0CAh, 01h, 0C5h, 0B0h, 5Fh, 00h, 0FFh, 0C6h, 41h, 3Fh, 0B9h, 63h
	db	6Dh, 85h, 73h, 0DFh, 0D7h, 33h, 0FFh, 0BEh, 3Fh, 0B9h, 0BCh, 85h, 37h, 41h, 59h, 0B6h
	db	87h, 0FFh, 0CCh, 0BBh, 0D8h, 8Fh, 0E9h, 7Dh, 5Dh, 1Eh, 00h, 34h, 67h, 77h, 2Eh, 78h
	db	0CAh, 0AFh, 0A9h, 0FFh, 3Dh, 0DBh, 5Bh, 0F3h, 0A0h, 33h, 86h, 44h, 46h, 0Fh, 88h, 49h
	db	84h, 81h, 0CFh, 58h, 97h, 0Dh, 70h, 8Eh, 68h, 0CFh, 7Bh, 73h, 3Dh, 0FFh, 0FFh, 0FFh
	db	7Bh, 0B1h, 32h, 7Fh, 7Eh, 25h, 0A9h, 00h, 00h, 51h, 95h, 6Bh, 36h, 71h, 73h, 0BCh
	db	0C7h, 66h, 62h, 0BAh, 66h, 45h, 0FFh, 94h, 87h, 7Fh, 52h, 92h, 0B6h, 0D1h, 89h, 0D0h
	db	0FFh, 46h, 58h, 0C1h, 4Ah, 4Fh, 5Eh, 31h, 4Bh, 36h, 0BBh, 81h, 0B5h, 3Dh, 0ADh, 24h
	db	89h, 52h, 96h, 75h, 60h, 73h, 92h, 15h, 70h, 83h, 52h, 0BFh, 75h, 88h, 0D2h, 8Dh
	db	44h, 53h, 8Fh, 8Dh, 0A3h, 77h, 47h, 0CCh, 0FEh, 0C1h, 0D2h, 0C6h, 97h, 83h, 8Ah, 9Bh
	db	0Ah, 70h, 71h, 53h, 00h, 46h, 91h, 23h, 0DDh, 93h, 55h, 83h, 7Ch, 0A5h, 0ACh, 0A5h
	db	97h, 73h, 1Fh, 0A7h, 4Eh, 66h, 0BAh, 0A4h, 79h, 0E3h, 56h, 0AEh, 85h, 73h, 0B6h, 6Eh
	db	93h, 3Dh, 6Ch, 90h, 67h, 5Fh, 0B9h, 4Dh, 0A9h, 0BFh, 59h, 3Bh, 58h, 0C6h, 31h, 0C3h
	db	43h, 7Ch, 0C8h, 49h, 96h, 0CFh, 8Ch, 97h, 8Ah, 92h, 8Bh, 79h, 62h, 58h, 39h, 74h
	db	7Ch, 71h, 6Fh, 9Fh, 9Eh, 0E9h, 0AAh, 89h, 96h, 0CAh, 56h, 0FFh, 0E2h, 94h, 75h, 76h
; 607
	db	54h, 91h, 3Bh, 2Fh, 4Ch, 50h, 89h, 5Eh, 18h, 7Eh, 86h, 8Ch, 0A6h, 96h, 8Fh, 86h
	db	0B5h, 0D5h, 5Ch, 89h, 0C2h, 0A2h, 98h, 0C9h, 9Eh, 13h, 96h, 71h, 37h, 61h, 0D2h, 1Ch
	db	58h, 0B3h, 79h, 9Ch, 95h, 58h, 76h, 0A0h, 6Ch, 4Bh, 0A9h, 4Bh, 89h, 0A5h, 0A9h, 99h
	db	87h, 94h, 4Bh, 5Ah, 9Fh, 54h, 59h, 75h, 00h, 5Bh, 57h, 70h, 88h, 0A3h, 84h, 0C6h
	db	0ACh, 0A5h, 0C1h, 98h, 0C4h, 3Dh, 46h, 85h, 8Ch, 84h, 72h, 0A3h, 9Fh, 80h, 47h, 75h
	db	96h, 39h, 69h, 4Ch, 67h, 4Ch, 81h, 63h, 25h, 58h, 93h, 0D1h, 90h, 0A7h, 0A4h, 0DBh
	db	0C4h, 96h, 94h, 69h, 76h, 29h, 99h, 9Ah, 90h, 75h, 94h, 02h, 76h, 3Ch, 1Ah, 58h
	db	9Bh, 6Ch, 43h, 0BBh, 79h, 0CDh, 0CDh, 0CBh, 2Fh, 0A9h, 9Dh, 98h, 0C4h, 80h, 72h, 0A9h
	db	8Dh, 64h, 97h, 84h, 28h, 39h, 5Ah, 61h, 73h, 8Ah, 0Ch, 5Dh, 7Ch, 58h, 55h, 67h
	db	67h, 0A9h, 80h, 0A7h, 0E1h, 0DBh, 8Fh, 93h, 99h, 0A1h, 77h, 7Dh, 81h, 80h, 39h, 85h
	db	2Ah, 40h, 5Eh, 63h, 41h, 67h, 84h, 7Bh, 96h, 9Ah, 9Ah, 0C7h, 0BBh, 5Dh, 92h, 0C2h
	db	0CAh, 0B4h, 0A1h, 5Bh, 7Dh, 8Ch, 4Ch, 3Ch, 2Ch, 71h, 69h, 4Fh, 58h, 43h, 80h, 7Fh
	db	52h, 0A5h, 0ABh, 0B9h, 0E3h, 0A9h, 0B8h, 0CFh, 0BCh, 0B7h, 79h, 87h, 67h, 62h, 55h, 1Ah
	db	54h, 29h, 33h, 54h, 82h, 7Dh, 86h, 84h, 0AFh, 96h, 7Eh, 78h, 97h, 82h, 7Dh, 87h
	db	0B8h, 78h, 79h, 8Ch, 0C6h, 0B5h, 91h, 77h, 67h, 61h, 87h, 67h, 46h, 79h, 33h, 5Ah
	db	8Ch, 61h, 6Eh, 0AAh, 77h, 0A7h, 9Ah, 8Dh, 65h, 97h, 0A7h, 41h, 95h, 0A9h, 9Fh, 68h
; 707
	db	5Ch, 87h, 0A2h, 95h, 0AAh, 8Dh, 72h, 87h, 45h, 6Ch, 74h, 58h, 23h, 7Ah, 87h, 6Ah
	db	70h, 89h, 74h, 99h, 0BFh, 0A9h, 99h, 93h, 6Ch, 62h, 0B5h, 0A0h, 67h, 4Dh, 68h, 78h
	db	94h, 77h, 5Ch, 77h, 78h, 7Fh, 80h, 93h, 7Ah, 85h, 5Ah, 99h, 0A9h, 85h, 70h, 61h
	db	81h, 0A5h, 7Fh, 8Ah, 90h, 0B1h, 74h, 7Eh, 81h, 58h, 7Ch, 71h, 5Bh, 77h, 94h, 8Eh
	db	9Fh, 77h, 9Eh, 89h, 6Bh, 9Dh, 9Ah, 53h, 86h, 75h, 73h, 89h, 71h, 5Ch, 78h, 8Ah
	db	6Fh, 84h, 97h, 84h, 6Dh, 8Eh, 6Eh, 64h, 9Fh, 59h, 83h, 0B3h, 84h, 85h, 8Bh, 0ADh
	db	7Eh, 87h, 0A4h, 95h, 74h, 62h, 89h, 70h, 9Ah, 7Fh, 56h, 5Bh, 72h, 73h, 8Dh, 8Bh
	db	77h, 81h, 7Eh, 0A5h, 82h, 77h, 6Fh, 85h, 87h, 7Dh, 8Bh, 6Ch, 8Dh, 71h, 8Bh, 9Ch
	db	8Dh, 54h, 80h, 7Eh, 93h, 76h, 84h, 8Ah, 51h, 97h, 84h, 7Ah, 8Ah, 7Fh, 9Ah, 81h
	db	81h, 92h, 7Dh, 77h, 59h, 51h, 9Ah, 68h, 7Fh, 87h, 5Dh, 81h, 79h, 0A9h, 6Eh, 73h
	db	85h, 8Ah, 7Bh, 0A7h, 7Eh, 78h, 84h, 9Bh, 7Dh, 6Ch, 97h, 58h, 88h, 7Dh, 64h, 74h
	db	80h, 8Dh, 0AAh, 0A3h, 7Fh, 89h, 95h, 7Fh, 94h, 6Dh, 76h, 90h, 80h, 56h, 8Bh, 63h
	db	54h, 73h, 62h, 62h, 5Bh, 63h, 6Ch, 5Eh, 0AFh, 8Eh, 90h, 0B3h, 93h, 96h, 0AFh, 8Bh
	db	84h, 0A9h, 87h, 63h, 81h, 83h, 7Ah, 62h, 63h, 5Dh, 81h, 79h, 80h, 80h, 85h, 88h
	db	78h, 8Ch, 86h, 8Ch, 8Fh, 9Ah, 8Bh, 8Bh, 0A0h, 7Eh, 70h, 75h, 61h, 86h, 74h, 8Fh
	db	87h, 84h, 79h, 63h, 7Ch, 83h, 69h, 7Eh, 90h, 86h, 80h, 89h, 77h, 7Ah, 9Ah, 9Dh
; 807
	db	8Bh, 79h, 0B8h, 96h, 8Fh, 71h, 83h, 5Fh, 73h, 5Ch, 58h, 54h, 6Dh, 7Fh, 83h, 80h
	db	7Ch, 86h, 91h, 92h, 8Eh, 81h, 64h, 80h, 6Bh, 80h, 88h, 76h, 95h, 97h, 93h, 8Eh
	db	8Fh, 0A1h, 0A9h, 97h, 71h, 63h, 7Ah, 8Ah, 70h, 77h, 8Ch, 8Bh, 82h, 7Ch, 6Fh, 68h
	db	82h, 8Bh, 7Ah, 89h, 82h, 91h, 76h, 9Bh, 7Dh, 5Dh, 85h, 7Bh, 84h, 87h, 82h, 5Eh
	db	85h, 77h, 63h, 86h, 85h, 90h, 7Dh, 92h, 7Dh, 94h, 86h, 8Bh, 95h, 80h, 6Fh, 83h
	db	78h, 96h, 87h, 69h, 77h, 87h, 86h, 93h, 8Ch, 87h, 84h, 7Dh, 81h, 7Dh, 7Bh, 64h
	db	6Ch, 92h, 74h, 7Dh, 71h, 66h, 76h, 77h, 79h, 86h, 8Fh, 9Ah, 73h, 81h, 84h, 75h
	db	6Fh, 71h, 89h, 8Eh, 83h, 8Ch, 87h, 87h, 8Dh, 8Ah, 94h, 85h, 7Dh, 88h, 85h, 7Dh
	db	73h, 8Ah, 60h, 83h, 93h, 77h, 7Ch, 7Ah, 70h, 85h, 8Eh, 75h, 69h, 76h, 72h, 72h
	db	87h, 71h, 7Eh, 83h, 7Fh, 77h, 91h, 96h, 8Ah, 8Dh, 97h, 89h, 73h, 8Ah, 74h, 70h
	db	7Bh, 79h, 7Eh, 98h, 93h, 77h, 7Ch, 67h, 91h, 75h, 7Fh, 78h, 72h, 90h, 8Bh, 71h
	db	74h, 78h, 7Ah, 8Ah, 84h, 68h, 71h, 8Bh, 87h, 86h, 7Dh, 78h, 75h, 7Dh, 94h, 79h
	db	7Ch, 76h, 85h, 77h, 86h, 80h, 8Bh, 86h, 83h, 7Fh, 0A4h, 8Eh, 7Eh, 84h, 75h, 7Bh
	db	81h, 6Bh, 86h, 73h, 70h, 6Ch, 82h, 79h, 9Ah, 83h, 86h, 73h, 81h, 88h, 8Fh, 75h
	db	7Dh, 8Ch, 87h, 85h, 7Fh, 78h, 7Bh, 7Fh, 86h, 82h, 77h, 75h, 7Fh, 7Bh, 87h, 8Ah
	db	81h, 8Ah, 80h, 80h, 89h, 95h, 8Bh, 82h, 8Eh, 82h, 85h, 82h, 70h, 7Fh, 71h, 7Dh
; 907
	db	85h, 83h, 82h, 78h, 79h, 73h, 79h, 74h, 78h, 66h, 69h, 94h, 90h, 7Ah, 70h, 87h
	db	94h, 97h, 9Ch, 79h, 83h, 85h, 8Ah, 8Ch, 8Ah, 7Bh, 74h, 79h, 78h, 83h, 6Fh, 7Fh
	db	76h, 7Dh, 83h, 7Fh, 87h, 89h, 84h, 8Ch, 86h, 8Fh, 8Ch, 73h, 88h, 83h, 85h, 80h
	db	7Eh, 74h, 6Fh, 7Ch, 84h, 7Fh, 89h, 86h, 88h, 85h, 82h, 82h, 85h, 83h, 6Eh, 6Eh
	db	90h, 71h, 7Fh, 78h, 73h, 83h, 8Fh, 7Ch, 71h, 8Bh, 96h, 7Dh, 82h, 82h, 72h, 89h
	db	7Ch, 6Eh, 7Eh, 90h, 7Dh, 7Fh, 89h, 80h, 83h, 80h, 7Eh, 87h, 7Fh, 87h, 7Ch, 7Fh
	db	8Bh, 73h, 83h, 84h, 81h, 71h, 84h, 89h, 77h, 74h, 88h, 7Dh, 80h, 82h, 7Ah, 83h
	db	84h, 7Ah, 87h, 89h, 7Bh, 81h, 8Ch, 8Ah, 78h, 78h, 87h, 85h, 81h, 8Ah, 82h, 84h
	db	85h, 7Ah, 85h, 81h, 80h, 81h, 67h, 70h, 7Dh, 80h, 71h, 82h, 81h, 8Fh, 83h, 94h
	db	7Dh, 8Ah, 7Fh, 85h, 7Fh, 77h, 80h, 76h, 7Ch, 7Ah, 7Fh, 7Bh, 7Ch, 7Dh, 89h, 7Eh
	db	87h, 79h, 7Ch, 85h, 7Dh, 8Ch, 7Fh, 82h, 78h, 87h, 96h, 8Ah, 87h, 85h, 78h, 82h
	db	7Eh, 73h, 82h, 71h, 72h, 7Fh, 83h, 81h, 71h, 84h, 85h, 7Dh, 84h, 87h, 7Eh, 85h
	db	84h, 7Ah, 89h, 88h, 78h, 7Fh, 82h, 7Ch, 87h, 88h, 82h, 85h, 92h, 79h, 7Ch, 8Eh
	db	80h, 7Ah, 80h, 76h, 7Ah, 79h, 86h, 84h, 84h, 7Dh, 86h, 77h, 7Ch, 81h, 84h, 7Fh
	db	7Eh, 80h, 85h, 74h, 7Eh, 87h, 80h, 86h, 84h, 82h, 82h, 80h, 7Ah, 7Ah, 83h, 85h
	db	82h, 81h, 79h, 81h, 8Ah, 84h, 8Ch, 8Ch, 87h, 8Ah, 83h, 87h, 79h, 81h, 81h, 79h
; A07
	db	6Fh, 74h, 7Fh, 6Fh, 8Ah, 83h, 7Dh, 7Fh, 79h, 84h, 84h, 8Ah, 84h, 87h, 7Bh, 8Bh
	db	80h, 7Ch, 84h, 82h, 82h, 87h, 7Dh, 86h, 7Fh, 7Eh, 7Fh, 7Fh, 85h, 79h, 7Dh, 88h
	db	7Ah, 7Ch, 81h, 7Dh, 7Fh, 8Bh, 7Ah, 7Bh, 7Ch, 86h, 7Bh, 83h, 80h, 79h, 8Ah, 7Dh
	db	7Fh, 88h, 83h, 82h, 80h, 82h, 81h, 7Ah, 80h, 7Eh, 7Ch, 7Eh, 7Bh, 80h, 7Fh, 84h
	db	85h, 88h, 84h, 81h, 82h, 86h, 7Bh, 8Dh, 8Eh, 86h, 7Ch, 87h, 7Dh, 80h, 7Bh, 7Bh
	db	7Ah, 7Ch, 7Fh, 7Bh, 76h, 7Ch, 82h, 81h, 81h, 84h, 85h, 85h, 88h, 85h, 81h, 83h
	db	88h, 87h, 80h, 87h, 83h, 78h, 7Eh, 80h, 76h, 7Bh, 87h, 7Ch, 7Fh, 85h, 82h, 80h
	db	87h, 7Fh, 79h, 7Bh, 80h, 79h, 81h, 7Fh, 80h, 82h, 83h, 83h, 81h, 89h, 80h, 7Bh
	db	8Ah, 80h, 7Ch, 80h, 73h, 7Eh, 84h, 7Bh, 7Fh, 85h, 81h, 86h, 83h, 86h, 84h, 85h
	db	88h
	
zloc_A98:
	db	7Fh, 80h, 81h, 82h, 83h, 84h, 85h, 86h, 85h, 85h, 86h, 86h, 86h, 87h, 88h
	db	89h, 89h, 8Ah, 8Ah, 8Ah, 8Ah, 89h, 88h, 88h, 89h, 88h, 87h, 87h, 87h, 86h, 84h
	db	84h, 83h, 82h, 81h, 81h, 7Fh, 7Fh, 7Eh, 7Dh, 7Bh, 7Bh, 7Bh, 7Ah, 79h, 79h, 79h
	db	78h, 77h, 77h, 76h, 76h, 76h, 76h, 76h, 76h, 77h, 77h, 77h, 78h, 79h, 79h, 7Eh
	db	82h, 85h, 84h, 89h, 92h, 98h, 0A6h, 95h, 9Eh, 0FFh, 00h, 00h, 00h, 00h, 00h, 00h
	db	00h, 00h, 0Bh, 00h, 0DBh, 3Ch, 00h, 07h, 0C6h, 0E6h, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 7Dh, 00h, 2Bh, 00h, 7Fh, 0FFh, 0FDh, 0FFh, 0FFh, 0BAh, 4Ah
; B07
	db	23h, 48h, 40h, 65h, 0B1h, 0A9h, 0FFh, 0FFh, 0FFh, 0DCh, 0AEh, 3Ah, 00h, 00h, 00h, 00h
	db	00h, 00h, 6Eh, 0B9h, 8Fh, 97h, 0A6h, 21h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 43h
	db	51h, 0B9h, 98h, 96h, 0F7h, 0CAh, 90h, 0E1h, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0E9h, 0F6h, 0CFh, 0E0h, 0B0h, 67h, 6Bh, 0C6h, 0C9h, 0E4h, 0F7h, 95h, 44h, 00h, 00h
	db	00h, 00h, 00h, 00h, 20h, 3Ah, 2Ch, 24h, 45h, 50h, 41h, 2Dh, 3Fh, 00h, 00h, 54h
	db	58h, 90h, 0CBh, 0D1h, 0A0h, 0C4h, 90h, 0A2h, 0AAh, 8Ch, 50h, 67h, 76h, 0FDh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0F5h, 0FFh, 0FDh, 0FFh, 0CBh, 0CAh, 0E9h, 0CBh, 0BDh, 86h, 0D5h, 96h, 5Fh
	db	27h, 4Fh, 00h, 10h, 2Fh, 27h, 53h, 35h, 35h, 18h, 2Bh, 2Eh, 00h, 00h, 00h, 00h
	db	00h, 04h, 00h, 5Fh, 2Fh, 70h, 85h, 4Eh, 4Ch, 50h, 93h, 0F9h, 0FFh, 0FFh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0FFh, 0FFh, 0D0h, 0C9h, 9Fh, 86h, 7Dh, 9Bh, 0B5h, 0D5h, 0DBh, 9Fh, 92h
	db	8Dh, 76h, 58h, 3Ch, 5Bh, 3Dh, 1Dh, 5Bh, 79h, 52h, 57h, 4Eh, 4Dh, 34h, 56h, 61h
	db	4Ah, 4Eh, 59h, 54h, 54h, 4Bh, 5Fh, 23h, 27h, 5Dh, 51h, 25h, 1Dh, 35h, 5Ah, 6Ah
	db	65h, 85h, 72h, 4Fh, 65h, 75h, 9Ch, 0B7h, 0A8h, 0D0h, 0FFh, 0FFh, 0EBh, 0FBh, 0FFh, 0FFh
	db	0FFh, 0FFh, 0FFh, 0DBh, 0C1h, 87h, 6Ah, 97h, 8Ah, 5Ah, 54h, 5Eh, 75h, 2Ah, 11h, 20h
	db	03h, 22h, 6Fh, 7Dh, 5Eh, 59h, 59h, 38h, 5Fh, 43h, 1Fh, 0Eh, 3Dh, 2Ah, 17h, 53h
	db	61h, 54h, 5Bh, 67h, 72h, 67h, 59h, 5Ah, 75h, 7Ch, 7Ch, 76h, 89h, 0B3h, 0BBh, 0A3h
; C07
	db	0CEh, 0C2h, 0CFh, 0D6h, 0B6h, 0D5h, 0CAh, 0C5h, 0D7h, 0DFh, 0ECh, 0BFh, 0D9h, 0E5h, 0E5h, 0C8h
	db	0D8h, 0A7h, 0A4h, 99h, 54h, 42h, 2Fh, 2Ch, 3Ch, 3Dh, 16h, 04h, 19h, 07h, 01h, 0Fh
	db	28h, 16h, 15h, 21h, 3Dh, 43h, 4Ch, 4Ah, 3Ah, 54h, 6Ch, 82h, 90h, 8Bh, 81h, 8Dh
	db	0B1h, 0AFh, 0C3h, 0A7h, 0BAh, 9Ah, 9Dh, 0A8h, 0A2h, 0B5h, 0B1h, 0BDh, 0C7h, 0DEh, 0DAh, 0C8h
	db	0AFh, 0C7h, 0B2h, 9Eh, 0A9h, 9Ch, 93h, 90h, 92h, 8Fh, 8Dh, 91h, 0AFh, 9Fh, 7Ch, 47h
	db	44h, 43h, 37h, 25h, 37h, 31h, 3Bh, 35h, 42h, 25h, 29h, 3Ah, 30h, 2Dh, 1Dh, 23h
	db	2Ah, 49h, 5Eh, 6Dh, 81h, 85h, 88h, 87h, 0A1h, 9Bh, 95h, 0BFh, 0C3h, 0BBh, 0CBh, 0C6h
	db	0BFh, 0A4h, 0BFh, 9Fh, 0A0h, 0A6h, 0B3h, 0B3h, 0A7h, 0ADh, 0ACh, 0BFh, 0BCh, 0ADh, 9Eh, 0A9h
	db	98h, 7Ah, 78h, 7Bh, 69h, 7Eh, 7Bh, 6Ah, 5Bh, 53h, 4Bh, 58h, 5Eh, 5Eh, 61h, 59h
	db	5Ah, 48h, 37h, 41h, 52h, 63h, 6Dh, 67h, 60h, 4Ah, 37h, 34h, 49h, 50h, 5Bh, 54h
	db	58h, 80h, 8Eh, 85h, 97h, 0ADh, 97h, 0A2h, 9Eh, 0ADh, 0B6h, 0B6h, 0B3h, 0BBh, 0BAh, 0B7h
	db	0B8h, 0AAh, 0A7h, 0A3h, 0B1h, 0B2h, 0B9h, 0ADh, 9Fh, 9Bh, 0A9h, 0A3h, 9Bh, 91h, 9Eh, 78h
	db	69h, 5Ah, 63h, 5Ah, 65h, 65h, 65h, 56h, 4Eh, 3Ch, 3Dh, 45h, 40h, 47h, 5Ch, 61h
	db	56h, 44h, 41h, 4Ah, 55h, 5Eh, 6Ch, 6Dh, 69h, 70h, 6Eh, 72h, 74h, 80h, 77h, 7Ch
	db	78h, 74h, 80h, 95h, 0A0h, 0B4h, 0ACh, 0BAh, 0C2h, 0BDh, 0B7h, 0B6h, 0B7h, 0ABh, 0B1h, 0AEh
	db	0B4h, 0BBh, 0BCh, 0B7h, 0BCh, 0B2h, 96h, 7Ch, 8Ah, 87h, 96h, 83h, 70h, 74h, 79h, 69h
; D07
	db	5Ch, 61h, 60h, 58h, 4Dh, 54h, 4Ah, 3Dh, 45h, 45h, 53h, 4Ah, 4Dh, 4Ch, 4Dh, 4Ah
	db	44h, 46h, 51h, 6Bh, 5Eh, 6Eh, 7Eh, 83h, 89h, 8Ch, 8Ch, 8Ah, 90h, 9Eh, 9Dh, 0AFh
	db	0ABh, 0AAh, 0A5h, 0B2h, 0B0h, 0ADh, 0B5h, 0AFh, 0A9h, 0A0h, 98h, 0A5h, 0A7h, 0A9h, 0A6h, 9Bh
	db	0A1h, 98h, 92h, 89h, 93h, 97h, 96h, 90h, 90h, 85h, 73h, 5Ah, 5Eh, 58h, 55h, 57h
	db	58h, 52h, 4Fh, 4Fh, 4Eh, 51h, 52h, 54h, 58h, 5Eh, 5Eh, 50h, 4Eh, 62h, 6Bh, 69h
	db	66h, 63h, 6Ah, 67h, 69h, 65h, 73h, 87h, 94h, 98h, 9Ah, 9Bh, 9Eh, 0A5h, 0B4h, 0AFh
	db	0A9h, 0A4h, 0ACh, 0B2h, 0A7h, 0A5h, 0A4h, 0B3h, 0B3h, 0A9h, 0A8h, 0ABh, 0A3h, 9Bh, 91h, 98h
	db	8Ah, 8Dh, 8Dh, 91h, 8Ah, 7Fh, 78h, 75h, 6Fh, 6Ah, 67h, 5Dh, 52h, 4Fh, 51h, 4Ah
	db	51h, 56h, 58h, 59h, 57h, 59h, 53h, 4Fh, 51h, 52h, 57h, 67h, 6Fh, 71h, 80h, 7Eh
	db	76h, 7Ah, 81h, 79h, 79h, 81h, 88h, 9Bh, 0A1h, 0A6h, 0A4h, 0A4h, 0A7h, 0A0h, 0A5h, 0A7h
	db	0A9h, 0B2h, 0AFh, 0B6h, 0AFh, 0A5h, 0AFh, 0A5h, 0A7h, 9Dh, 9Bh, 97h, 94h, 8Fh, 93h, 8Fh
	db	83h, 7Eh, 78h, 6Eh, 62h, 62h, 60h, 60h, 62h, 60h, 5Ch, 59h, 52h, 4Dh, 57h, 5Ch
	db	59h, 54h, 50h, 4Ch, 4Ch, 4Fh, 55h, 60h, 70h, 78h, 73h, 76h, 77h, 75h, 77h, 7Dh
	db	85h, 90h, 9Ah, 9Eh, 0A9h, 0A8h, 0B1h, 0B3h, 0B2h, 0A7h, 9Dh, 97h, 97h, 9Ah, 96h, 9Bh
	db	9Bh, 9Fh, 95h, 95h, 91h, 8Bh, 8Ah, 8Dh, 95h, 95h, 8Fh, 95h, 94h, 98h, 98h, 93h
	db	8Bh, 83h, 7Ch, 76h, 6Dh, 68h, 62h, 5Ah, 5Bh, 5Ah, 53h, 55h, 54h, 54h, 57h, 5Ah
; E07
	db	5Bh, 5Eh, 5Ah, 5Ah, 5Ah, 5Fh, 61h, 6Bh, 6Bh, 65h, 69h, 6Dh, 6Bh, 73h, 79h, 81h
	db	89h, 8Dh, 8Ch, 94h, 9Ch, 9Ah, 9Eh, 0A9h, 0ACh, 0AAh, 0A7h, 0A7h, 0A9h, 0A7h, 0AAh, 0AFh
	db	0ADh, 0A9h, 0A7h, 0A1h, 9Bh, 9Ah, 94h, 96h, 95h, 92h, 8Ah, 84h, 89h, 88h, 7Bh, 73h
	db	74h, 75h, 6Ch, 60h, 5Dh, 64h, 65h, 5Fh, 61h, 62h, 5Fh, 5Fh, 5Dh, 64h, 65h, 67h
	db	67h, 61h, 5Eh, 5Ah, 61h, 6Bh, 6Ch, 6Ah, 65h, 64h, 66h, 65h, 5Bh, 69h, 76h, 78h
	db	7Ch, 88h, 98h, 9Ah, 9Bh, 99h, 9Dh, 9Eh, 9Bh, 9Fh, 9Fh, 9Fh, 0A7h, 0AAh, 0ACh, 0ADh
	db	0B0h, 0B4h, 0B4h, 0AEh, 0A6h, 0A3h, 9Eh, 9Ch, 93h, 99h, 97h, 92h, 89h, 7Fh, 78h, 72h
	db	6Fh, 6Fh, 64h, 5Fh, 5Eh, 58h, 55h, 5Ah, 5Bh, 5Ch, 5Bh, 55h, 54h, 51h, 54h, 5Dh
	db	61h, 5Dh, 5Bh, 61h, 67h, 63h, 5Bh, 5Eh, 62h, 68h, 73h, 7Eh, 81h, 86h, 87h, 91h
	db	93h, 95h, 95h, 95h, 99h, 0A1h, 0A9h, 0A7h, 0A1h, 98h, 99h, 94h, 97h, 99h, 9Eh, 0A5h
	db	0AFh, 0AEh, 0AEh, 0AEh, 0A7h, 0ADh, 0ADh, 0A7h, 0A6h, 0A2h, 98h, 91h, 8Eh, 87h, 7Eh, 74h
	db	64h, 5Eh, 5Ah, 55h, 4Eh, 4Eh, 4Fh, 53h, 52h, 50h, 50h, 4Fh, 54h, 54h, 56h, 5Bh
	db	63h, 5Eh, 5Fh, 63h, 64h, 67h, 69h, 69h, 6Bh, 70h, 76h, 79h, 78h, 7Ah, 7Dh, 80h
	db	8Ah, 99h, 0A3h, 0ADh, 0B1h, 0B3h, 0B0h, 0AEh, 0AAh, 0A7h, 0AEh, 0AFh, 0B2h, 0ADh, 0AFh, 0A7h
	db	9Dh, 97h, 98h, 95h, 93h, 91h, 91h, 91h, 90h, 8Bh, 86h, 84h, 86h, 80h, 7Dh, 7Ah
	db	73h, 73h, 74h, 6Eh, 65h, 61h, 5Eh, 5Fh, 62h, 62h, 5Eh, 54h, 53h, 50h, 4Ch, 4Fh
; F07
	db	4Fh, 52h, 52h, 53h, 53h, 51h, 52h, 58h, 63h, 6Fh, 77h, 85h, 8Dh, 8Fh, 93h, 98h
	db	9Dh, 0A5h, 0A4h, 0A3h, 0A6h, 0ACh, 0AAh, 0A9h, 0A7h, 0A7h, 0ACh, 0A5h, 0A7h, 0A2h, 0A1h, 0A3h
	db	0A7h, 0A5h, 0A0h, 9Ch, 98h, 93h, 97h, 9Ah, 99h, 95h, 90h, 89h, 85h, 81h, 79h, 73h
	db	6Bh, 61h, 59h, 50h, 49h, 4Ah, 4Dh, 52h, 56h, 58h, 5Bh, 59h, 5Ah, 5Bh, 5Eh, 5Eh
	db	5Dh, 61h, 68h, 6Eh, 6Bh, 6Bh, 67h, 6Ah, 69h, 68h, 6Ch, 74h, 7Ah, 83h, 8Dh, 95h
	db	9Bh, 9Bh, 9Ch, 0A0h, 0A5h, 0A7h, 0A5h, 0A4h, 0A5h, 0A2h, 0A2h, 0A5h, 0AAh, 0A9h, 0A5h, 0A7h
	db	0A8h, 0ACh, 0A9h, 9Ch, 98h, 94h, 95h, 91h, 91h, 91h, 8Dh, 83h, 77h, 72h, 6Dh, 6Dh
	db	68h, 6Ch, 6Bh, 67h, 5Fh, 5Ch, 58h, 57h, 56h, 59h, 5Bh, 5Ch, 5Dh, 5Dh, 59h, 58h
	db	5Bh, 5Eh, 60h, 5Fh, 5Eh, 64h, 6Ah, 6Dh, 6Dh, 72h, 7Ch, 82h, 87h, 8Eh, 90h, 92h
	db	95h, 98h, 9Ah, 9Eh, 0A1h, 0A3h, 0A5h, 0A3h, 9Eh, 9Bh, 9Bh, 9Eh, 9Dh, 9Ah, 97h, 94h
	db	98h, 99h, 9Dh, 9Dh, 0A0h, 9Dh, 9Bh, 95h, 8Fh, 86h, 82h, 7Fh, 7Dh, 79h, 75h, 72h
	db	72h, 70h, 6Fh, 6Fh, 6Bh, 68h, 68h, 69h, 67h, 63h, 61h, 66h, 67h, 64h, 64h, 65h
	db	67h, 66h, 67h, 64h, 64h, 62h, 64h, 68h, 6Ch, 71h, 71h, 77h, 77h, 7Ah, 7Dh, 83h
	db	8Bh, 90h, 93h, 91h, 94h, 92h, 92h, 93h, 97h, 9Bh, 9Eh, 9Eh, 99h, 98h, 99h, 9Ch
	db	0A0h, 0A2h, 0A3h, 0A3h, 0A3h, 0A1h, 9Fh, 9Ch, 97h, 92h, 8Eh, 8Bh, 84h, 7Ch, 73h, 6Dh
	db	6Ch, 69h, 69h, 68h, 6Ah, 69h, 67h, 63h, 67h, 6Dh, 70h, 73h, 76h, 76h, 73h, 70h
;1007
	db	6Bh, 67h, 64h, 61h, 61h, 61h, 62h, 61h, 63h, 67h, 69h, 69h, 6Ch, 6Fh, 72h, 77h
	db	79h, 7Eh, 82h, 87h, 8Dh, 95h, 9Ch, 0A3h, 0A6h, 0A5h, 0A1h, 9Eh, 9Dh, 9Dh, 9Eh, 9Fh
	db	0A3h, 0A4h, 0A5h, 0A1h, 9Dh, 9Dh, 9Ch, 9Ch, 99h, 96h, 94h, 90h, 8Ch, 88h, 86h, 81h
	db	7Eh, 78h, 77h, 75h, 6Dh, 64h, 5Fh, 5Fh, 60h, 61h, 5Eh, 5Ch, 5Ch, 5Dh, 5Eh, 5Ch
	db	5Ch, 5Bh, 5Bh, 5Ch, 5Fh, 60h, 63h, 6Ah, 6Fh, 71h, 75h, 7Ah, 7Bh, 7Dh, 80h, 83h
	db	86h, 88h, 8Bh, 8Eh, 93h, 95h, 92h, 90h, 90h, 93h, 93h, 95h, 99h, 9Eh, 0A0h, 0A0h
	db	0A1h, 0A2h, 0A3h, 9Fh, 9Eh, 9Eh, 9Eh, 9Fh, 9Dh, 9Bh, 97h, 93h, 8Fh, 88h, 81h, 7Bh
	db	77h, 75h, 75h, 72h, 6Dh, 69h, 64h, 60h, 5Fh, 5Fh, 62h, 64h, 65h, 67h, 67h, 67h
	db	65h, 63h, 63h, 62h, 60h, 5Fh, 60h, 62h, 66h, 68h, 6Ch, 6Fh, 72h, 78h, 7Dh, 81h
	db	85h, 8Ah, 8Fh, 95h, 98h, 9Ah, 9Ch, 9Ch, 9Ch, 9Ch, 9Bh, 99h, 97h, 94h, 91h, 91h
	db	93h, 95h, 96h, 97h, 98h, 97h, 94h, 90h, 8Dh, 8Bh, 8Ch, 8Dh, 8Ch, 8Dh, 8Dh, 8Bh
	db	86h, 81h, 7Eh, 7Bh, 78h, 73h, 6Fh, 6Dh, 69h, 67h, 65h, 65h, 69h, 6Dh, 6Bh, 69h
	db	66h, 63h, 62h, 61h, 63h, 65h, 69h, 6Dh, 6Fh, 6Fh, 6Fh, 71h, 73h, 73h, 73h, 73h
	db	74h, 7Ah, 80h, 85h, 8Ah, 8Fh, 91h, 92h, 93h, 95h, 96h, 97h, 97h, 9Ah, 9Ah, 9Ch
	db	9Eh, 9Eh, 9Eh, 9Dh, 9Ch, 9Ah, 99h, 97h, 96h, 93h, 8Fh, 8Eh, 8Eh, 8Ch, 87h, 83h
	db	7Fh, 7Ah, 77h, 73h, 73h, 74h, 75h, 75h, 77h, 77h, 74h, 6Fh, 6Bh, 6Ah, 67h, 67h
;1107
	db	69h, 6Bh, 6Bh, 6Bh, 69h, 67h, 66h, 68h, 69h, 68h, 67h, 67h, 68h, 6Ch, 71h, 74h
	db	76h, 7Ah, 7Dh, 7Fh, 81h, 85h, 89h, 8Bh, 8Ch, 90h, 92h, 92h, 92h, 94h, 96h, 99h
	db	99h, 9Ah, 9Bh, 9Ch, 9Ch, 9Eh, 9Fh, 9Fh, 9Eh, 9Ch, 9Ah, 99h, 96h, 92h, 90h, 8Dh
	db	89h, 83h, 7Eh, 78h, 74h, 73h, 72h, 71h, 6Eh, 6Dh, 6Ah, 67h, 69h, 6Ah, 6Ah, 6Ah
	db	6Bh, 6Ch, 6Bh, 69h, 67h, 65h, 63h, 62h, 63h, 65h, 68h, 6Dh, 6Fh, 72h, 76h, 79h
	db	7Ch, 7Dh, 7Fh, 80h, 82h, 85h, 88h, 8Ch, 90h, 93h, 93h, 93h, 92h, 93h, 92h, 91h
	db	91h, 92h, 93h, 93h, 96h, 97h, 98h, 96h, 96h, 95h, 95h, 95h, 93h, 92h, 91h, 90h
	db	8Dh, 8Ah, 87h, 83h, 80h, 7Dh, 79h, 75h, 72h, 6Fh, 6Dh, 6Ah, 68h, 68h, 67h, 69h
	db	6Ch, 6Eh, 6Fh, 6Fh, 6Fh, 6Fh, 6Fh, 6Dh, 6Dh, 6Bh, 6Bh, 6Ch, 6Eh, 6Fh, 6Fh, 71h
	db	72h, 75h, 76h, 79h, 7Bh, 7Dh, 80h, 85h, 89h, 8Bh, 8Ch, 8Dh, 8Fh, 90h, 92h, 94h
	db	95h, 96h, 96h, 96h, 97h, 98h, 97h, 97h, 97h, 96h, 95h, 93h, 91h, 90h, 8Eh, 8Ch
	db	8Ah, 88h, 87h, 85h, 83h, 81h, 80h, 7Fh, 7Dh, 7Bh, 79h, 77h, 75h, 72h, 6Fh, 6Eh
	db	6Eh, 6Dh, 6Dh, 6Dh, 6Dh, 6Bh, 68h, 68h, 69h, 69h, 68h, 69h, 6Ah, 6Ch, 6Eh, 70h
	db	72h, 75h, 78h, 79h, 7Bh, 7Eh, 81h, 84h, 87h, 8Bh, 8Dh, 8Eh, 8Ch, 8Bh, 89h, 89h
	db	88h, 89h, 89h, 89h, 8Bh, 8Dh, 90h, 93h, 97h, 98h, 98h, 98h, 97h, 96h, 95h, 95h
	db	94h, 95h, 93h, 90h, 8Ch, 89h, 87h, 83h, 80h, 7Dh, 79h, 76h, 74h, 73h, 71h, 6Fh
; 1207
	db	6Dh, 6Dh, 6Ch, 6Dh, 6Eh, 6Dh, 6Dh, 6Dh, 6Fh, 6Fh, 6Fh, 6Eh, 6Eh, 6Dh, 6Dh, 6Fh
	db	6Fh, 71h, 71h, 73h, 73h, 75h, 77h, 79h, 7Bh, 7Fh, 83h, 84h, 87h, 89h, 8Ch, 8Fh
	db	90h, 91h, 91h, 92h, 92h, 92h, 91h, 91h, 91h, 91h, 91h, 92h, 93h, 91h, 91h, 91h
	db	91h, 91h, 90h, 8Fh, 8Ch, 8Ah, 87h, 83h, 81h, 7Fh, 7Eh, 7Ch, 7Ch, 7Ch, 7Bh, 7Bh
	db	7Ah, 79h, 77h, 75h, 73h, 72h, 71h, 6Fh, 6Dh, 6Bh, 6Bh, 6Bh, 6Bh, 69h, 67h, 67h
	db	67h, 69h, 6Dh, 70h, 73h, 74h, 75h, 77h, 7Bh, 7Fh, 81h, 83h, 86h, 89h, 8Ah, 8Bh
	db	8Bh, 8Dh, 8Eh, 8Eh, 8Fh, 8Fh, 8Fh, 8Fh, 8Fh, 8Eh, 8Fh, 90h, 91h, 92h, 93h, 93h
	db	91h, 90h, 8Fh, 8Eh, 8Dh, 8Bh, 8Bh, 8Ah, 89h, 87h, 85h, 83h, 81h, 7Fh, 7Ch, 79h
	db	77h, 77h, 75h, 75h, 75h, 75h, 75h, 75h, 75h, 74h, 73h, 71h, 70h, 6Fh, 6Eh, 6Eh
	db	6Ch, 6Bh
	
zloc_1299:
	db	82h, 4Dh, 7Eh, 81h, 6Bh, 79h, 0ADh, 0A0h, 0AEh, 78h, 78h, 6Bh, 0B7h, 79h
	db	9Ah, 7Dh, 96h, 61h, 4Ah, 52h, 78h, 94h, 0B2h, 82h, 79h, 93h, 74h, 4Ah, 97h, 66h
	db	5Ah, 7Ch, 80h, 84h, 87h, 88h, 70h, 62h, 84h, 88h, 0A6h, 9Dh, 0BBh, 7Fh, 80h, 61h
	db	6Ch, 46h, 0A1h, 55h, 9Ch, 88h, 0A9h, 6Fh, 8Eh, 7Fh, 69h, 83h, 58h, 8Ah, 6Dh, 0AFh
	db	72h, 97h, 5Fh, 81h, 4Ah, 72h, 51h, 0B1h, 94h, 9Bh, 78h, 4Bh, 6Ah, 68h, 72h, 0A5h
	db	78h, 0A3h, 96h, 97h, 9Dh, 96h, 83h, 82h, 69h, 7Bh, 71h, 0A3h, 8Bh, 74h, 90h, 40h
	db	6Eh, 99h, 0BFh, 0B4h, 9Bh, 77h, 64h, 3Bh, 83h, 63h, 8Bh, 6Bh, 64h, 58h, 98h, 0ACh
; 1307
	db	95h, 79h, 8Dh, 42h, 95h, 98h, 9Fh, 84h, 91h, 56h, 55h, 7Ch, 79h, 68h, 0BEh, 0AAh
	db	0A3h, 82h, 96h, 87h, 75h, 72h, 62h, 70h, 91h, 91h, 6Dh, 9Dh, 80h, 7Eh, 66h, 0A9h
	db	78h, 7Ch, 0BAh, 89h, 64h, 9Ah, 75h, 6Dh, 7Eh, 73h, 7Bh, 8Ch, 94h, 65h, 6Ch, 6Eh
	db	4Bh, 6Ah, 76h, 84h, 7Eh, 7Bh, 90h, 77h, 73h, 7Ch, 54h, 6Fh, 77h, 84h, 81h, 91h
	db	65h, 69h, 85h, 6Ch, 8Eh, 92h, 9Dh, 7Fh, 90h, 77h, 9Ch, 58h, 81h, 72h, 83h, 81h
	db	8Bh, 98h, 0A2h, 91h, 79h, 62h, 99h, 73h, 91h, 6Ch, 8Bh, 65h, 63h, 62h, 75h, 87h
	db	8Fh, 80h, 7Fh, 8Fh, 86h, 0A1h, 9Eh, 7Fh, 7Fh, 76h, 5Fh, 76h, 57h, 88h, 79h, 6Eh
	db	54h, 87h, 77h, 91h, 86h, 76h, 92h, 90h, 97h, 8Eh, 70h, 7Ch, 69h, 7Eh, 56h, 8Dh
	db	70h, 8Bh, 7Fh, 68h, 7Bh, 89h, 72h, 7Dh, 8Fh, 7Ah, 0A7h, 87h, 0A6h, 75h, 84h, 7Bh
	db	79h, 6Eh, 6Ah, 78h, 50h, 67h, 81h, 83h, 85h, 9Bh, 6Fh, 8Eh, 79h, 98h, 84h, 85h
	db	71h, 6Bh, 67h, 73h, 5Eh, 83h, 9Ch, 65h, 84h, 6Eh, 97h, 89h, 93h, 80h, 6Ch, 85h
	db	71h, 7Eh, 88h, 83h, 74h, 78h, 73h, 87h, 7Fh, 0A4h, 87h, 8Ah, 90h, 84h, 74h, 79h
	db	6Ch, 72h, 74h, 87h, 79h, 9Dh, 93h, 96h, 6Bh, 70h, 79h, 86h, 85h, 8Dh, 84h, 82h
	db	80h, 6Ch, 68h, 76h, 85h, 8Fh, 99h, 7Ch, 9Bh, 83h, 9Ah, 78h, 7Eh, 79h, 5Eh, 86h
	db	7Bh, 80h, 8Fh, 99h, 7Dh, 64h, 67h, 85h, 63h, 95h, 6Eh, 79h, 72h, 6Dh, 7Fh, 82h
	db	80h, 8Eh, 6Fh, 87h, 84h, 79h, 82h, 85h, 4Fh, 6Dh, 78h, 8Dh, 95h, 96h, 8Dh, 7Fh
; 1407
	db	7Fh, 79h, 79h, 97h, 7Fh, 8Eh, 60h, 81h, 7Eh, 62h, 8Bh, 75h, 80h, 8Bh, 90h, 73h
	db	97h, 7Eh, 7Bh, 7Bh, 8Eh, 85h, 8Fh, 86h, 87h, 7Bh, 94h, 63h, 9Ch, 5Bh, 7Fh, 74h
	db	84h, 7Bh, 80h, 5Ch, 8Ch, 5Ah, 96h, 73h, 7Bh, 7Fh, 84h, 54h, 89h, 0A0h, 8Dh, 7Bh
	db	87h, 7Bh, 59h, 99h, 8Fh, 6Bh, 8Ah, 55h, 6Fh, 65h, 95h, 94h, 70h, 83h, 6Fh, 63h
	db	9Eh, 79h, 90h, 9Bh, 6Eh, 5Ah, 6Dh, 90h, 7Ah, 89h, 0A7h, 72h, 74h, 8Bh, 8Ah, 79h
	db	83h, 8Ah, 67h, 8Dh, 90h, 74h, 8Ch, 0AFh, 6Ch, 86h, 81h, 7Bh, 71h, 9Ch, 87h, 7Fh
	db	89h, 77h, 70h, 80h, 86h, 75h, 7Eh, 78h, 7Eh, 66h, 98h, 6Ch, 81h, 78h, 76h, 57h
	db	99h, 8Eh, 98h, 7Fh, 87h, 6Dh, 71h, 6Bh, 77h, 67h, 7Fh, 65h, 6Dh, 57h, 8Fh, 83h
	db	8Bh, 96h, 85h, 7Dh, 0A1h, 88h, 8Ah, 5Fh, 80h, 50h, 61h, 78h, 82h, 8Dh, 9Bh, 84h
	db	78h, 7Ch, 6Bh, 83h, 9Bh, 81h, 99h, 8Bh, 8Ah, 90h, 8Fh, 83h, 63h, 78h, 66h, 7Bh
	db	88h, 61h, 87h, 6Ah, 65h, 6Bh, 6Bh, 81h, 94h, 0B3h, 87h, 9Ch, 69h, 77h, 7Fh, 77h
	db	59h, 84h, 5Dh, 78h, 5Fh, 80h, 81h, 85h, 63h, 7Ah, 75h, 9Bh, 0A7h, 0B9h, 97h, 7Dh
	db	70h, 69h, 80h, 96h, 0AAh, 86h, 7Ah, 79h, 7Ah, 50h, 94h, 74h, 6Dh, 7Ch, 9Fh, 71h
	db	0A3h, 8Eh, 93h, 61h, 8Eh, 85h, 93h, 85h, 8Ch, 89h, 77h, 5Ch, 5Fh, 81h, 82h, 7Fh
	db	8Eh, 0A1h, 7Fh, 83h, 8Eh, 71h, 66h, 8Bh, 83h, 7Dh, 75h, 86h, 7Dh, 80h, 7Fh, 87h
	db	6Fh, 7Ch, 65h, 6Eh, 85h, 73h, 84h, 7Bh, 83h, 81h, 87h, 96h, 89h, 9Fh, 7Dh, 91h
; 1507
	db	87h, 6Eh, 6Ch, 94h, 6Dh, 91h, 62h, 9Fh, 81h, 83h, 78h, 84h, 6Fh, 78h, 88h, 9Bh
	db	71h, 7Bh, 81h, 6Ch, 80h, 72h, 99h, 81h, 62h, 97h, 69h, 7Dh, 8Dh, 7Dh, 8Ch, 75h
	db	7Ch, 73h, 77h, 88h, 86h, 8Dh, 90h, 65h, 8Eh, 80h, 70h, 0A7h, 7Ch, 9Bh, 61h, 85h
	db	73h, 90h, 96h, 87h, 82h, 84h, 6Dh, 82h, 6Ah, 0A6h, 92h, 61h, 88h, 7Fh, 7Bh, 90h
	db	81h, 82h, 70h, 5Ch, 91h, 90h, 0A0h, 6Ah, 93h, 6Bh, 7Ah, 61h, 82h, 93h, 8Fh, 78h
	db	81h, 71h, 69h, 85h, 9Ah, 8Ch, 88h, 96h, 6Fh, 6Dh, 6Dh, 82h, 73h, 6Fh, 95h, 92h
	db	7Bh, 81h, 0A5h, 68h, 90h, 80h, 74h, 90h, 78h, 82h, 7Ah, 77h, 8Ah, 71h, 7Fh, 78h
	db	7Ah, 6Bh, 8Dh, 84h, 8Fh, 8Eh, 8Ah, 8Ch, 89h, 80h, 56h, 9Ch, 8Eh, 7Ah, 7Dh, 90h
	db	61h, 7Bh, 7Eh, 0AAh, 78h, 99h, 8Eh, 5Eh, 7Ch, 82h, 63h, 79h, 72h, 74h, 6Dh, 66h
	db	83h, 6Bh, 9Fh, 63h, 87h, 86h, 90h, 67h, 9Dh, 70h, 8Dh, 69h, 9Ah, 67h, 7Fh, 9Bh
	db	73h, 5Ah, 99h, 73h, 74h, 86h, 91h, 81h, 8Eh, 8Ah, 8Bh, 80h, 84h, 7Eh, 75h, 8Fh
	db	7Ah, 87h, 8Ah, 89h, 72h, 60h, 84h, 69h, 84h, 85h, 73h, 7Dh, 91h, 86h, 8Ah, 8Bh
	db	98h, 60h, 9Eh, 6Bh, 8Dh, 68h, 6Bh, 5Dh, 4Eh, 62h, 69h, 77h, 89h, 95h, 8Fh, 8Dh
	db	65h, 79h, 55h, 9Bh, 6Bh, 7Dh, 74h, 73h, 56h, 70h, 6Dh, 75h, 78h, 90h, 84h, 97h
	db	97h, 91h, 89h, 86h, 7Eh, 8Dh, 80h, 6Fh, 88h, 61h, 95h, 69h, 6Bh, 8Ah, 8Dh, 81h
	db	81h, 85h, 8Fh, 7Bh, 78h, 6Bh, 7Fh, 6Dh, 7Ah, 81h, 7Fh, 89h, 8Eh, 85h, 82h, 7Fh
; 1607
	db	61h, 75h, 78h, 8Ch, 86h, 73h, 85h, 81h, 76h, 74h, 8Ah, 76h, 90h, 79h, 85h, 73h
	db	93h, 5Ch, 88h, 8Dh, 78h, 70h, 88h, 7Fh, 87h, 88h, 84h, 7Ah, 7Fh, 96h, 70h, 9Fh
	db	89h, 8Dh, 78h, 87h, 68h, 69h, 7Bh, 89h, 5Bh, 95h, 70h, 91h, 75h, 9Ah, 71h, 91h
	db	7Ch, 90h, 6Fh, 96h, 70h, 86h, 82h, 64h, 66h, 87h, 87h, 75h, 71h, 90h, 7Ah, 84h
	db	77h, 92h, 68h, 8Ch, 75h, 73h, 75h, 82h, 7Fh, 68h, 77h, 61h, 7Ch, 8Ch, 6Dh, 7Ah
	db	7Ch, 73h, 82h, 83h, 9Ah, 8Eh, 94h, 7Ah, 6Eh, 76h, 79h, 78h, 7Bh, 72h, 80h, 7Eh
	db	79h, 7Fh, 77h, 8Bh, 81h, 90h, 70h, 78h, 91h, 91h, 73h, 93h, 68h, 82h, 77h, 70h
	db	7Bh, 79h, 7Fh, 87h, 6Eh, 76h, 80h, 7Ch, 84h, 94h, 7Ch, 83h, 78h, 86h, 77h, 96h
	db	63h, 7Dh, 86h, 6Bh, 80h, 7Ch, 6Bh, 7Ah, 79h, 6Bh, 88h, 75h, 88h, 86h, 8Ch, 78h
	db	8Bh, 74h, 7Fh, 86h, 7Ch, 83h, 8Dh, 85h, 8Bh, 8Bh, 6Fh, 7Bh, 80h, 79h, 8Ch, 82h
	db	75h, 92h, 8Eh, 8Dh, 89h, 87h, 8Fh, 85h, 8Eh, 87h, 7Fh, 86h, 67h, 7Fh, 6Ah, 71h
	db	76h, 82h, 97h, 90h, 89h, 86h, 8Bh, 85h, 86h, 6Fh, 7Fh, 73h, 88h, 71h, 90h, 61h
	db	7Dh, 6Dh, 89h, 7Dh, 92h, 7Bh, 7Fh, 77h, 8Eh, 7Bh, 8Bh, 8Bh, 81h, 86h, 84h, 87h
	db	7Ch, 81h, 6Dh, 62h, 68h, 6Dh, 89h, 7Eh, 8Fh, 86h, 88h, 86h, 85h, 88h, 83h, 80h
	db	77h, 77h, 8Dh, 79h, 7Ah, 85h, 70h, 95h, 7Fh, 7Dh, 0A0h, 82h, 8Ah, 87h, 99h, 61h
	db	83h, 74h, 81h, 83h, 8Eh, 7Ah, 7Fh, 7Eh, 80h, 7Ch, 71h, 80h, 90h, 6Ch, 95h, 91h
; 1707
	db	72h, 91h, 7Eh, 7Bh, 89h, 80h, 74h, 8Bh, 86h, 79h, 7Dh, 84h, 70h, 8Ah, 86h, 87h
	db	94h, 77h, 85h, 89h, 6Eh, 83h, 7Bh, 87h, 85h, 7Dh, 6Fh, 8Dh, 84h, 83h, 8Ah, 6Fh
	db	7Bh, 78h, 8Bh, 80h, 8Fh, 71h, 8Dh, 7Fh, 8Eh, 75h, 94h, 85h, 8Fh, 7Eh, 77h, 79h
	db	73h, 83h, 84h, 7Ch, 89h, 87h, 7Bh, 79h, 8Eh, 7Fh, 7Fh, 75h, 80h, 79h, 7Dh, 90h
	db	7Bh, 73h, 80h, 66h, 79h, 87h, 7Fh, 9Bh, 78h, 81h, 77h, 8Bh, 89h, 71h, 88h, 7Bh
	db	79h, 8Dh, 6Fh, 90h, 74h, 72h, 6Ch, 72h, 7Eh, 73h, 78h, 8Eh, 74h, 84h, 85h, 90h
	db	79h, 7Dh, 86h, 7Eh, 71h, 7Bh, 6Eh, 79h, 87h, 70h, 7Bh, 79h, 84h, 82h, 89h, 82h
	db	90h, 76h, 88h, 6Bh, 84h, 74h, 7Eh, 87h, 82h, 76h, 7Dh, 78h, 80h, 80h, 84h, 8Bh
	db	7Bh, 84h, 7Eh, 7Eh, 8Ah, 86h, 76h, 82h, 8Dh, 75h, 83h, 97h, 7Fh, 79h, 6Eh, 7Eh
	db	81h, 8Fh, 8Ah, 8Eh, 5Dh, 80h, 7Bh, 7Dh, 80h, 87h, 76h, 84h, 84h, 70h, 7Fh, 7Fh
	db	7Dh, 85h, 78h, 7Ch, 89h, 88h, 79h, 91h, 6Fh, 80h, 6Dh, 81h, 82h, 88h, 7Ah, 7Fh
	db	7Dh, 76h, 7Ch, 8Bh, 78h, 78h, 8Bh, 78h, 83h, 7Dh, 8Ah, 84h, 80h, 6Fh, 72h, 7Fh
	db	87h, 81h, 7Bh, 75h, 83h, 75h, 83h, 6Eh, 8Fh, 85h, 85h, 6Fh, 8Dh, 7Bh, 7Ah, 85h
	db	86h, 6Ch, 87h, 87h, 7Ch, 77h, 86h, 81h, 78h, 7Ah, 79h, 81h, 8Dh, 7Bh, 71h, 73h
	db	73h, 7Fh, 80h, 80h, 88h, 83h, 85h, 81h, 7Bh, 80h, 81h, 7Fh, 87h, 76h, 71h, 6Fh
	db	89h, 83h, 7Fh, 84h, 69h, 7Dh, 85h, 84h, 7Ah, 8Fh, 74h, 85h, 6Fh, 83h, 6Ah, 80h
; 1807
	db	85h, 7Bh, 78h, 7Dh, 88h, 85h, 84h, 76h, 7Eh, 77h, 81h, 78h, 82h, 7Fh, 85h, 89h
	db	89h, 85h, 83h, 83h, 81h, 83h, 78h, 77h, 8Ah, 7Dh, 75h, 89h, 88h, 7Bh, 82h, 84h
	db	69h, 93h, 89h, 86h, 8Ah, 94h, 7Ch, 85h, 8Ah, 83h, 7Fh, 8Dh, 8Ah, 67h, 63h, 7Bh
	db	80h, 7Dh, 7Bh, 7Ch, 75h, 82h, 97h, 79h, 91h, 8Dh, 77h, 89h, 8Bh, 7Fh, 81h, 79h
	db	7Bh, 7Dh, 78h, 7Ch, 79h, 7Eh, 77h, 83h, 69h, 86h, 92h, 97h, 8Bh, 91h, 85h, 8Fh
	db	87h, 8Dh, 7Dh, 8Ch, 84h, 78h, 61h, 7Eh, 85h, 84h, 86h, 85h, 75h, 7Dh, 8Bh, 82h
	db	97h, 89h, 84h, 82h, 70h, 79h, 74h, 8Bh, 7Fh, 67h, 8Fh, 73h, 6Dh, 7Fh, 86h, 75h
	db	84h, 83h, 70h, 82h, 97h, 8Bh, 7Ch, 7Dh, 86h, 7Ah, 87h, 80h, 8Bh, 7Dh, 7Eh, 86h
	db	7Bh, 8Ch, 83h, 84h, 84h, 65h, 76h, 8Fh, 85h, 7Dh, 83h, 70h, 87h, 7Eh, 7Fh, 78h
	db	90h, 86h, 70h
	
zloc_189A:
	db	93h, 51h, 6Fh, 3Ch, 3Bh, 6Ch, 0E0h, 0A8h, 50h, 3Eh, 67h, 8Bh, 40h
	db	56h, 85h, 6Bh, 23h, 5Ah, 69h, 71h, 81h, 38h, 0DEh, 52h, 96h, 79h, 91h, 87h, 87h
	db	9Fh, 93h, 87h, 0B4h, 0B7h, 8Ch, 63h, 9Ah, 89h, 9Fh, 0FFh, 73h, 7Dh, 51h, 91h, 8Ch
	db	64h, 94h, 9Fh, 7Fh, 61h, 80h, 7Fh, 7Bh, 72h, 5Fh, 0ACh, 56h, 82h, 6Bh, 6Fh, 80h
	db	0D4h, 55h, 8Bh, 9Ch, 86h, 0A4h, 7Fh, 6Ah, 5Eh, 95h, 92h, 88h, 98h, 98h, 0A1h, 54h
	db	60h, 60h, 69h, 6Dh, 75h, 74h, 0BEh, 10h, 0B5h, 99h, 0C0h, 62h, 43h, 8Ch, 2Bh, 0AEh
	db	0A0h, 0B1h, 58h, 7Ch, 7Ah, 64h, 0B3h, 8Bh, 5Eh, 73h, 6Ch, 74h, 0C3h, 61h, 82h, 9Bh
; 1907
	db	7Dh, 9Dh, 0CFh, 56h, 70h, 88h, 83h, 9Ah, 0A2h, 0C0h, 8Fh, 8Ah, 6Ch, 86h, 69h, 76h
	db	8Dh, 79h, 0BAh, 81h, 6Dh, 7Dh, 86h, 7Dh, 9Bh, 0A9h, 5Ch, 8Eh, 50h, 71h, 94h, 78h
	db	73h, 80h, 44h, 9Eh, 3Dh, 0A7h, 43h, 0C1h, 8Fh, 0A9h, 8Ch, 9Eh, 64h, 0B6h, 0A3h, 8Fh
	db	8Eh, 86h, 7Fh, 92h, 92h, 57h, 7Ah, 61h, 67h, 0A1h, 47h, 8Dh, 7Dh, 95h, 7Dh, 0A4h
	db	47h, 5Dh, 41h, 8Bh, 75h, 97h, 9Bh, 95h, 5Eh, 9Bh, 61h, 54h, 95h, 65h, 76h, 0A6h
	db	0A7h, 6Eh, 9Eh, 0B4h, 6Dh, 7Ch, 0A4h, 8Dh, 89h, 8Bh, 6Bh, 58h, 59h, 0A6h, 8Bh, 92h
	db	5Bh, 7Ch, 76h, 83h, 74h, 7Ch, 99h, 84h, 5Fh, 97h, 76h, 4Ch, 76h, 79h, 5Bh, 83h
	db	7Fh, 7Dh, 6Eh, 94h, 6Ah, 88h, 60h, 0A9h, 97h, 79h, 86h, 63h, 90h, 8Eh, 90h, 85h
	db	73h, 80h, 85h, 43h, 93h, 6Eh, 8Bh, 74h, 80h, 77h, 75h, 7Fh, 81h, 7Bh, 7Fh, 61h
	db	8Ah, 7Bh, 8Dh, 70h, 7Dh, 87h, 84h, 89h, 9Eh, 5Dh, 91h, 8Bh, 86h, 79h, 87h, 8Dh
	db	5Eh, 7Dh, 81h, 79h, 86h, 79h, 8Bh, 6Ch, 7Ah, 7Fh, 76h, 81h, 86h, 6Dh, 74h, 71h
	db	7Bh, 85h, 8Bh, 6Ch, 76h, 74h, 79h, 91h, 78h, 74h, 6Fh, 80h, 7Dh, 89h, 7Ah, 8Fh
	db	7Eh, 91h, 7Fh, 81h, 61h, 73h, 8Dh, 85h, 8Fh, 84h, 92h, 8Bh, 8Fh, 84h, 7Eh, 85h
	db	93h, 77h, 75h, 89h, 70h, 7Eh, 7Dh, 6Bh, 75h, 91h, 77h, 7Fh, 89h, 84h, 7Fh, 7Fh
	db	87h, 74h, 6Dh, 72h, 77h, 7Ch, 7Eh, 7Bh, 79h, 8Bh, 7Fh, 8Ah, 89h, 88h, 8Dh, 8Fh
	db	7Dh, 82h, 8Dh, 78h, 8Fh, 76h, 81h, 78h, 7Eh, 85h, 7Fh, 6Eh, 78h, 81h, 7Dh, 79h
; 1A07
	db	86h, 7Fh, 79h, 7Ch, 81h, 83h, 72h, 86h, 80h, 7Eh, 89h, 72h, 79h, 87h, 80h, 87h
	db	86h, 84h, 84h, 86h, 87h, 82h, 87h, 7Ch, 82h, 86h, 85h, 83h, 7Ch, 86h, 89h, 7Bh
	db	80h, 83h, 7Eh, 7Ah, 82h, 7Ch, 7Ah, 81h, 7Bh, 84h, 7Fh, 77h, 7Fh, 74h, 82h, 83h
	db	83h, 7Bh, 7Ch, 84h, 7Ch, 80h, 83h, 87h, 7Bh, 84h, 83h, 80h, 80h, 80h, 82h, 84h
	db	7Fh, 81h, 85h, 7Bh, 7Fh, 7Fh, 81h, 7Ch, 7Ch, 83h, 7Ch, 7Ah, 83h, 7Fh, 7Bh, 86h
	db	83h, 85h, 7Bh, 84h, 7Eh, 7Fh, 83h, 83h, 85h, 7Dh, 82h, 80h, 80h, 7Fh, 7Dh, 82h
	db	7Ch, 7Ch, 83h, 84h, 7Dh, 83h, 85h, 7Dh, 81h, 7Eh, 7Ah, 79h, 7Dh, 7Ch, 7Eh, 7Dh
	db	7Fh, 80h, 7Dh, 7Fh, 7Fh, 81h, 7Eh, 7Eh, 82h, 81h, 84h, 7Dh, 87h, 7Dh, 7Fh, 85h
	db	83h, 80h, 82h, 80h, 84h, 83h, 81h, 7Eh, 7Dh, 83h, 7Fh, 7Dh, 7Ch, 7Eh, 80h, 7Dh
	db	7Ch, 80h, 80h, 81h
	
zloc_1A9B:
	db	00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
	db	00h, 00h, 00h, 00h, 00h, 07h, 3Eh

PCMDrumsEnd: