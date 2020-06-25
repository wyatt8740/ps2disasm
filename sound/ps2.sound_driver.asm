	dc.w	z80ptr(SoundPriorities)
	dc.w	z80ptr(MusicTempo)
	dc.w	z80ptr(MusicPtrs)
	dc.w	z80ptr(FMInsPtrs)
	dc.w	z80ptr(ModEnvelopePtrs)
	dc.w	z80ptr(MusicPtrs)
	dc.w	z80ptr(SFXPtrs)

SoundPriorities:	
; Music
	dc.b	$81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81
	dc.b	$81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81
	dc.b	$81, $81, $81, $81, $81, $81, $81, $81, $81
	
; SFX
	dc.b	$50, $70
	dc.b	$70, $70, $70, $70, $70, $70, $60, $70, $70, $70, $70
	dc.b	$00, $70, $70, $40, $70, $50, $50, $50, $50, $50, $50
	dc.b	$50, $50, $50, $50, $50, $50, $50, $50, $50, $50, $60
	dc.b	$60, $50, $50, $50, $50, $50, $50, $50, $50, $50, $50
	dc.b	$50, $50, $60, $50, $50, $50, $70, $80, $80, $70, $00

MusicTempo:
	dc.b	$06, $20, $07, $00, $00, $0A, $00, $00, $00, $00, $0A, $0A, $10, $18, $00, $00
	dc.b	$00, $00, $00, $00, $00, $00, $00 ;0x0 (0x000B8066-0x000B807D, Entry count: 0x00000017)
	dc.b	$00, $00, $00, $00, $00, $00, $00, $00, $00 ;0x0 (0x000B807D-0x000B8086, Entry count: 0x00000009) [Unknown data]

ModEnvelopePtrs:
	dc.w	z80ptr(ModEnvelope01)
	dc.w	z80ptr(ModEnvelope02)
	dc.w	z80ptr(ModEnvelope03)
	dc.w	z80ptr(ModEnvelope04)

ModEnvelope01:
	dc.b	$F8, $FA, $FC, $FE, $00, $00, $01, $00, $00, $00, $01, $01, $01, $00, $00, $00
	dc.b	$01, $01, $00, $00, $00, $00, $FF, $FF, $FE, $FD, $FD, $FC, $FE, $FF, $01, $01
	dc.b	$02, $02, $01, $01, $00, $FF, $FF, $FE, $FE, $FF, $FF, $84, $01, $85, $1D

ModEnvelope02:
	dc.b	$F0, $F4, $F2, $00, $02, $04, $06, $04, $02, $00, $FF, $FE, $FD, $FC, $84, $02, $85, $03

ModEnvelope03:
	dc.b	$E0, $E2, $E4, $E6, $E8, $EA, $EC, $EE, $F0, $F2, $F4, $F6, $F8, $FA, $FC, $FE
	dc.b	$00, $01, $02, $03, $04, $03, $02, $01, $00, $FF, $FE, $FD, $84, $02, $85, $0D ;0x0 (0x000B80CF-0x000B8100, Entry count: 0x00000031) [Unknown data]

ModEnvelope04:
	dc.b	$F8, $FC, $FE, $00, $01, $02, $04, $02, $01, $00, $FF, $FE, $FF, $84, $02, $85, $03 ;0x20


loc_B8100:
	dc.b	$06, $20, $07, $00, $00, $0A, $00, $00, $00, $00, $0A, $0A, $10, $18, $00, $00
	dc.b	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ;0x0 (0x000B8100-0x000B8120, Entry count: 0x00000020) [Unknown data]

loc_B8120:
	dc.b	$02, $02, $02, $02, $02, $02, $02, $02, $03, $02, $02, $02, $02, $02, $03, $03
	dc.b	$02, $02, $02, $01, $03, $02, $03 ;0x0 (0x000B8120-0x000B8137, Entry count: 0x00000017)
	dc.b	$00, $00, $00, $00, $00, $00, $00, $00, $00 ;0x0 (0x000B8137-0x000B8140, Entry count: 0x00000009) [Unknown data]
; ==========================================================================
MusicPtrs:

PtrMusic_Phantasy:			dc.w	z80ptr(Music_Phantasy)
PtrMusic_Restoration:		dc.w	z80ptr(Music_Restoration)
PtrMusic_SilentZone:		dc.w	z80ptr(Music_SilentZone)
PtrMusic_Pleasure:			dc.w	z80ptr(Music_Pleasure)
PtrMusic_ExcitingTown:		dc.w	z80ptr(Music_ExcitingTown)
PtrMusic_SecretWays:		dc.w	z80ptr(Music_SecretWays)
PtrMusic_Advanced:			dc.w	z80ptr(Music_Advanced)
PtrMusic_Mystery:			dc.w	z80ptr(Music_Mystery)
PtrMusic_Violation:			dc.w	z80ptr(Music_Violation)
PtrMusic_Under:				dc.w	z80ptr(Music_Under)
PtrMusic_StepUp:			dc.w	z80ptr(Music_StepUp)
PtrMusic_BrackyNews:		dc.w	z80ptr(Music_BrackyNews)
PtrMusic_MyHome:			dc.w	z80ptr(Music_MyHome)
PtrMusic_Pressure:			dc.w	z80ptr(Music_Pressure)
PtrMusic_Dream:				dc.w	z80ptr(Music_Dream)
PtrMusic_Power:				dc.w	z80ptr(Music_Power)
PtrMusic_Exclaim:			dc.w	z80ptr(Music_Exclaim)
PtrMusic_RiseOrFall:		dc.w	z80ptr(Music_RiseOrFall)
PtrMusic_ThePlaceOfDeath:	dc.w	z80ptr(Music_ThePlaceOfDeath)
PtrMusic_Movement:			dc.w	z80ptr(Music_Movement)
PtrMusic_Over:				dc.w	z80ptr(Music_Over)
PtrMusic_MovementVer2:		dc.w	z80ptr(Music_MovementVer2)
PtrMusic_NeverDream:		dc.w	z80ptr(Music_NeverDream)

	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
	dc.w	z80ptr(Music_Null)
; ==========================================================================

; ==========================================================================
SFXPtrs:

PtrSFX_Selection:			dc.w	z80ptr(SFX_Selection)
PtrSFX_LevelUp:				dc.w	z80ptr(SFX_LevelUp)
PtrSFX_ItemReceived:		dc.w	z80ptr(SFX_ItemReceived)
PtrSFX_Explosion:			dc.w	z80ptr(SFX_Explosion)
PtrSFX_MapChanged:		dc.w	z80ptr(SFX_MapChanged)
PtrSFX_FellInHole:			dc.w	z80ptr(SFX_FellInHole)
PtrSFX_Revived:				dc.w	z80ptr(SFX_Revived)
PtrSFX_PoisonCured:			dc.w	z80ptr(SFX_PoisonCured)
PtrSFX_Alarm:				dc.w	z80ptr(SFX_Alarm)
PtrSFX_Hidapipe:			dc.w	z80ptr(SFX_Hidapipe)
PtrSFX_Teleport:			dc.w	z80ptr(SFX_Teleport)
PtrSFX_DoorOpen:			dc.w	z80ptr(SFX_DoorOpen)
PtrSFX_DamOpened:			dc.w	z80ptr(SFX_DamOpened)
PtrSFX_JetScooter:			dc.w	z80ptr(SFX_JetScooter)
PtrSFX_SpaceshipDeparted:	dc.w	z80ptr(SFX_SpaceshipDeparted)
PtrSFX_SpaceshipLanded:		dc.w	z80ptr(SFX_SpaceshipLanded)
PtrSFX_DangerousFloor:		dc.w	z80ptr(SFX_DangerousFloor)
PtrSFX_Musik:				dc.w	z80ptr(SFX_Musik)
PtrSFX_Boomerang:			dc.w	z80ptr(SFX_Boomerang)
PtrSFX_Sword:				dc.w	z80ptr(SFX_Sword)
PtrSFX_Claw:				dc.w	z80ptr(SFX_Claw)
PtrSFX_Slasher:				dc.w	z80ptr(SFX_Slasher)
PtrSFX_Shotgun:				dc.w	z80ptr(SFX_Shotgun)
PtrSFX_StrongGun:			dc.w	z80ptr(SFX_StrongGun)
PtrSFX_B8:					dc.w	z80ptr(SFX_B8)
PtrSFX_B9:					dc.w	z80ptr(SFX_B9)
PtrSFX_DamageRedScreen:		dc.w	z80ptr(SFX_DamageRedScreen)
PtrSFX_Foi:					dc.w	z80ptr(SFX_Foi)
PtrSFX_Zan:					dc.w	z80ptr(SFX_Zan)
PtrSFX_Vol:					dc.w	z80ptr(SFX_Vol)
PtrSFX_Tsu:					dc.w	z80ptr(SFX_Tsu)
PtrSFX_Shinb:				dc.w	z80ptr(SFX_Shinb)
PtrSFX_Eijia:				dc.w	z80ptr(SFX_Eijia)
PtrSFX_Gaj:					dc.w	z80ptr(SFX_Gaj)
PtrSFX_Deban:				dc.w	z80ptr(SFX_Deban)
PtrSFX_Healed:				dc.w	z80ptr(SFX_Healed)
PtrSFX_C4:					dc.w	z80ptr(SFX_C4)
PtrSFX_NeifirstAttack:		dc.w	z80ptr(SFX_NeifirstAttack)
PtrSFX_Whip:				dc.w	z80ptr(SFX_Whip)
PtrSFX_WhistleAttack:		dc.w	z80ptr(SFX_WhistleAttack)
PtrSFX_PoleziAttack:		dc.w	z80ptr(SFX_PoleziAttack)
PtrSFX_PulserAttack:		dc.w	z80ptr(SFX_PulserAttack)
PtrSFX_TerakiteAttack:		dc.w	z80ptr(SFX_TerakiteAttack)
PtrSFX_FireAntAttack:		dc.w	z80ptr(SFX_FireAntAttack)
PtrSFX_BeeAttack:			dc.w	z80ptr(SFX_BeeAttack)
PtrSFX_AmoebaAttack:		dc.w	z80ptr(SFX_AmoebaAttack)
PtrSFX_BlasterAttack:		dc.w	z80ptr(SFX_BlasterAttack)
PtrSFX_VanAttack:			dc.w	z80ptr(SFX_VanAttack)
PtrSFX_SpinnerAttack:		dc.w	z80ptr(SFX_SpinnerAttack)
PtrSFX_MosquitoAttack:		dc.w	z80ptr(SFX_MosquitoAttack)
PtrSFX_LocustAttack:		dc.w	z80ptr(SFX_LocustAttack)
PtrSFX_ArmyEyeAttack:		dc.w	z80ptr(SFX_ArmyEyeAttack)
PtrSFX_EnemyKilled:			dc.w	z80ptr(SFX_EnemyKilled)
PtrSFX_Pause:				dc.w	z80ptr(SFX_Pause)
PtrSFX_Unpause:				dc.w	z80ptr(SFX_Unpause)

	dc.w	z80ptr(SFX_Null)
; ==========================================================================

SpcSFXPtrs:
	dc.w	z80ptr(SFX_JetScooter)


Music_Phantasy:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BB001)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BABA0)
	dc.b	$F4, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BAD85)
	dc.b	$00, $00, $00, $1C

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BAE9E)
	dc.b	$F4, $00, $00, $1C

Music_Restoration:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BB39B)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BB12E)
	dc.b	$F4, $01, $00, $0C

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BB200)
	dc.b	$F4, $00, $00, $18

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BB29A)
	dc.b	$F4, $00, $00, $1C

Music_SilentZone:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BB636)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BB481)
	dc.b	$FB, $00, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BB515)
	dc.b	$FB, $00, $00, $0C

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BB5AC)
	dc.b	$FB, $00, $00, $1A

Music_Pleasure:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BBA26)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BB6A4)
	dc.b	$FB, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BB794)
	dc.b	$FB, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BB8D9)
	dc.b	$FB, $00, $00, $14

Music_ExcitingTown:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BBCF6)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BBB64)
	dc.b	$F4, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BBBE4)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BBC51)
	dc.b	$F4, $00, $00, $1C

Music_SecretWays:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BBEE5)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BBD88)
	dc.b	$F4, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BBE07)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BBE63)
	dc.b	$F4, $00, $00, $14

Music_Advanced:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BC16E)
	dc.b	$F9, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BBF6A)
	dc.b	$F9, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BC037)
	dc.b	$F9, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BC0AB)
	dc.b	$F9, $00, $00, $20

Music_Mystery:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BC3D0)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BC1FB)
	dc.b	$F8, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BC278)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BC2D5)
	dc.b	$F8, $00, $00, $19

Music_Violation:
	dc.b	$04

	dc.b	$80, $80, $03
	dc.w	z80ptr(loc_BC5A3)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $00, $03
	dc.w	z80ptr(loc_BC465)
	dc.b	$F8, $01, $00, $14

	dc.b	$80, $01, $03
	dc.w	z80ptr(loc_BC4E0)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $03
	dc.w	z80ptr(loc_BC526)
	dc.b	$F8, $00, $00, $24

Music_Under:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BC7AD)
	dc.b	$F4, $02, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BC5E8)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BC699)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BC719)
	dc.b	$F4, $00, $00, $18

Music_StepUp:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BC959)
	dc.b	$F7, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BC82A)
	dc.b	$F7, $01, $00, $0C

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BC89C)
	dc.b	$F7, $00, $00, $1C

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BC8E0)
	dc.b	$F7, $00, $00, $14

Music_BrackyNews:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BCA82)
	dc.b	$FB, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BC9C4)
	dc.b	$FB, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BCA16)
	dc.b	$FB, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BCA34)
	dc.b	$FB, $00, $00, $24

Music_MyHome:
	dc.b	$06

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BCC46)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BCAC4)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BCB2E)
	dc.b	$F8, $00, $00, $1C

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BCB79)
	dc.b	$F8, $00, $00, $1C

	dc.b	$80, $04, $02
	dc.w	z80ptr(loc_BCBF8)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $05, $02
	dc.w	z80ptr(loc_BCAC2)
	dc.b	$F8, $00, $00, $1C

Music_Pressure:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BCDEA)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BCC8C)
	dc.b	$F8, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BCD39)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BCD86)
	dc.b	$F8, $00, $00, $24

Music_Dream:
	dc.b	$04

	dc.b	$80, $80, $03
	dc.w	z80ptr(loc_BCEA0)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $03
	dc.w	z80ptr(loc_BCE2E)
	dc.b	$F8, $01, $00, $14

	dc.b	$80, $01, $03
	dc.w	z80ptr(loc_BCE5D)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $03
	dc.w	z80ptr(loc_BCE80)
	dc.b	$F8, $00, $00, $24

Music_Power:
	dc.b	$04

	dc.b	$80, $80, $03
	dc.w	z80ptr(loc_BCF87)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $00, $03
	dc.w	z80ptr(loc_BCF00)
	dc.b	$F8, $01, $00, $14

	dc.b	$80, $01, $03
	dc.w	z80ptr(loc_BCF3F)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $03
	dc.w	z80ptr(loc_BCF4D)
	dc.b	$F8, $00, $00, $24

Music_Exclaim:
	dc.b	$04

	dc.b	$C0, $80, $02
	dc.w	z80ptr(loc_BD0B4)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BCFA5)
	dc.b	$F8, $02, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BD00B)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BD041)
	dc.b	$F8, $00, $00, $18

Music_RiseOrFall:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BD3AE)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BD111)
	dc.b	$F8, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BD1C9)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BD2D2)
	dc.b	$F8, $00, $00, $14

Music_ThePlaceOfDeath:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BD6E6)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BD442)
	dc.b	$F4, $01, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BD4FF)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BD5DE)
	dc.b	$F4, $00, $00, $14

Music_Movement:
	dc.b	$06

	dc.b	$C0, $80, $01
	dc.w	z80ptr(loc_BD7AD)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $00, $01
	dc.w	z80ptr(loc_BD796)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $01, $01
	dc.w	z80ptr(loc_BD7A3)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $02, $01
	dc.w	z80ptr(loc_BD794)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $04, $01
	dc.w	z80ptr(loc_BD7A1)
	dc.b	$00, $00, $00, $14

	dc.b	$80, $05, $01
	dc.w	z80ptr(loc_BD792)
	dc.b	$00, $00, $00, $14

Music_Over:
	dc.b	$04

	dc.b	$80, $80, $03
	dc.w	z80ptr(loc_BD896)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $00, $03
	dc.w	z80ptr(loc_BD7AE)
	dc.b	$F8, $00, $00, $10

	dc.b	$80, $01, $03
	dc.w	z80ptr(loc_BD81C)
	dc.b	$F8, $00, $00, $14

	dc.b	$80, $02, $03
	dc.w	z80ptr(loc_BD84C)
	dc.b	$F8, $00, $00, $14

Music_MovementVer2:
	dc.b	$04

	dc.b	$80, $80, $02
	dc.w	z80ptr(loc_BDA85)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $00, $02
	dc.w	z80ptr(loc_BD89E)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $01, $02
	dc.w	z80ptr(loc_BD92F)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $02, $02
	dc.w	z80ptr(loc_BD9A7)
	dc.b	$F4, $00, $00, $14

Music_NeverDream:
	dc.b	$04

	dc.b	$80, $80, $03
	dc.w	z80ptr(loc_BDBF4)
	dc.b	$00, $00, $00, $04

	dc.b	$80, $00, $03
	dc.w	z80ptr(loc_BDAA6)
	dc.b	$F4, $00, $00, $0C

	dc.b	$80, $01, $03
	dc.w	z80ptr(loc_BDB33)
	dc.b	$F4, $00, $00, $14

	dc.b	$80, $02, $03
	dc.w	z80ptr(loc_BDB89)
	dc.b	$00, $00, $00, $18

Music_Null:
	dc.b	$00

FMInsPtrs:	
	dc.w	z80ptr(loc_B863A)
	dc.w	z80ptr(loc_B8654)
	dc.w	z80ptr(loc_B866E)
	dc.w	z80ptr(loc_B8688)
	dc.w	z80ptr(loc_B86A2)
	dc.w	z80ptr(loc_B86BC)
	dc.w	z80ptr(loc_B86D6)
	dc.w	z80ptr(loc_B86F0)
	dc.w	z80ptr(loc_B870A)
	dc.w	z80ptr(loc_B8724)
	dc.w	z80ptr(loc_B873E)
	dc.w	z80ptr(loc_B8758)
	dc.w	z80ptr(loc_B8772)
	dc.w	z80ptr(loc_B878C)
	dc.w	z80ptr(loc_B87A6)
	dc.w	z80ptr(loc_B87C0)
	dc.w	z80ptr(loc_B87DA)
	dc.w	z80ptr(loc_B87F4)
	dc.w	z80ptr(loc_B880E)
	dc.w	z80ptr(loc_B8828)
	dc.w	z80ptr(loc_B8842)
	dc.w	z80ptr(loc_B885C)
	dc.w	z80ptr(loc_B8876)
	dc.w	z80ptr(loc_B8890)
	dc.w	z80ptr(loc_B88AA)
	dc.w	z80ptr(loc_B88C4)
	dc.w	z80ptr(loc_B88DE)
	dc.w	z80ptr(loc_B88F8)
	dc.w	z80ptr(loc_B8912)
	dc.w	z80ptr(loc_B892C)
	dc.w	z80ptr(loc_B8946)
	dc.w	z80ptr(loc_B8960)
	dc.w	z80ptr(loc_B897A)
	dc.w	z80ptr(loc_B8994)
	dc.w	z80ptr(loc_B89AE)
	dc.w	z80ptr(loc_B89C8)
	dc.w	z80ptr(loc_B89E2)
	dc.w	z80ptr(loc_B89FC)
	dc.w	z80ptr(loc_B8A16)
	dc.w	z80ptr(loc_B8A30)
	dc.w	z80ptr(loc_B8A4A)
	dc.w	z80ptr(loc_B8A64)
	dc.w	z80ptr(loc_B8A7E)
	dc.w	z80ptr(loc_B8A98)
	dc.w	z80ptr(loc_B8AB2)
	dc.w	z80ptr(loc_B8ACC)
	dc.w	z80ptr(loc_B8AE6)
	dc.w	z80ptr(loc_B8B00)
	dc.w	z80ptr(loc_B8B1A)
	dc.w	z80ptr(loc_B8B34)
	dc.w	z80ptr(loc_B8B4E)
	dc.w	z80ptr(loc_B8B68)
	dc.w	z80ptr(loc_B8B82)
	dc.w	z80ptr(loc_B8B9C)
	dc.w	z80ptr(loc_B8BB6)
	dc.w	z80ptr(loc_B8BD0)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8BEA)
	dc.w	z80ptr(loc_B8C04)
	dc.w	z80ptr(loc_B8C1E)
	dc.w	z80ptr(loc_B8C38)
	dc.w	z80ptr(loc_B8C52)
	dc.w	z80ptr(loc_B8C6C)
	dc.w	z80ptr(loc_B8C86)
	dc.w	z80ptr(loc_B8C9C)
	dc.w	z80ptr(loc_B8CB6)
	dc.w	z80ptr(loc_B8CD0)
	dc.w	z80ptr(loc_B8CEA)
	dc.w	z80ptr(loc_B8D04)
	dc.w	z80ptr(loc_B8D1E)
	dc.w	z80ptr(loc_B8D38)
	dc.w	z80ptr(loc_B8D52)
	dc.w	z80ptr(loc_B8D6C)
	dc.w	z80ptr(loc_B8D86)
	dc.w	z80ptr(loc_B8DA0)
	dc.w	z80ptr(loc_B8DBA)
	dc.w	z80ptr(loc_B8DD4)
	dc.w	z80ptr(loc_B8DEE)
	dc.w	z80ptr(loc_B8E08)
	dc.w	z80ptr(loc_B8E22)
	dc.w	z80ptr(loc_B8E3C)
	dc.w	z80ptr(loc_B8E56)
	dc.w	z80ptr(loc_B8E70)
	dc.w	z80ptr(loc_B8E8A)
	dc.w	z80ptr(loc_B8EA4)
	dc.w	z80ptr(loc_B8EBE)
	dc.w	z80ptr(loc_B8ED8)
	dc.w	z80ptr(loc_B8EF2)
	dc.w	z80ptr(loc_B8F0C)
	dc.w	z80ptr(loc_B8F26)
	dc.w	z80ptr(loc_B8F40)
	dc.w	z80ptr(loc_B8F5A)
	dc.w	z80ptr(loc_B8F74)
	dc.w	z80ptr(loc_B8F8E)
	dc.w	z80ptr(loc_B8FA8)
	dc.w	z80ptr(loc_B8FC2)
	dc.w	z80ptr(loc_B8FDC)
	dc.w	z80ptr(loc_B8FF2)

loc_B863A:
	dc.b	$13, $C0, $30, $30, $30, $00, $08, $16, $06, $02, $10, $1F, $1F, $1F, $01, $01
	dc.b	$00, $00, $0B, $00, $05, $09, $1F, $8F, $3F, $8F

loc_B8654:
	dc.b	$3C, $C0, $1E, $02, $05, $02, $67, $43, $32, $72, $1F, $1F, $1F, $1F, $00, $00
	dc.b	$00, $00, $16, $15, $12, $14, $11, $13, $15, $17

loc_B866E:
	dc.b	$24, $C0, $38, $00, $1A, $00, $06, $04, $0F, $04, $97, $1B, $9F, $1F, $09, $0D
	dc.b	$00, $0D, $00, $06, $00, $00, $2F, $AF, $0F, $AF

loc_B8688:
	dc.b	$F5, $C0, $01, $00, $00, $00, $11, $01, $20, $61, $15, $1B, $1F, $14, $12, $06
	dc.b	$00, $00, $04, $0A, $30, $02, $14, $16, $16, $46

loc_B86A2:
	dc.b	$17, $C0, $00, $00, $00, $00, $44, $42, $53, $10, $1A, $9E, $9F, $5F, $1F, $1F
	dc.b	$1F, $1B, $13, $12, $93, $10, $6F, $4F, $8F, $4F

loc_B86BC:
	dc.b	$04, $C0, $60, $00, $60, $00, $0C, $0F, $0C, $08, $1F, $1F, $1F, $1F, $00, $00
	dc.b	$00, $00, $00, $06, $00, $0E, $0F, $EF, $0F, $BF

loc_B86D6:
	dc.b	$05, $C0, $0E, $00, $00, $00, $37, $61, $72, $01, $1F, $1F, $1F, $1E, $00, $02
	dc.b	$15, $00, $02, $80, $65, $07, $0F, $0F, $BF, $0F

loc_B86F0:
	dc.b	$21, $F6, $07, $00, $12, $00, $B2, $1A, $3B, $43, $69, $85, $42, $0C, $89, $A2
	dc.b	$00, $0F, $04, $0B, $71, $10, $4F, $77, $24, $98

loc_B870A:
	dc.b	$14, $C0, $10, $00, $10, $00, $52, $B1, $41, $60, $04, $0C, $16, $4E, $05, $08
	dc.b	$08, $00, $0A, $04, $05, $03, $7C, $79, $0A, $59

loc_B8724:
	dc.b	$97, $C0, $10, $03, $03, $10, $02, $21, $61, $36, $10, $0B, $09, $10, $02, $01
	dc.b	$80, $80, $03, $21, $13, $82, $1C, $4C, $8C, $5D

loc_B873E:
	dc.b	$4C, $C0, $30, $00, $30, $00, $02, $22, $61, $36, $1F, $18, $1F, $16, $00, $02
	dc.b	$00, $01, $03, $21, $13, $82, $1F, $4F, $8F, $5F

loc_B8758:
	dc.b	$3D, $C0, $12, $00, $0C, $00, $2A, $64, $73, $40, $13, $0A, $0A, $0A, $1A, $0B
	dc.b	$0C, $0B, $23, $23, $07, $0E, $08, $68, $09, $56

loc_B8772:
	dc.b	$3A, $C0, $00, $00, $00, $00, $71, $51, $62, $54, $10, $10, $10, $0F, $00, $00
	dc.b	$04, $29, $80, $00, $C1, $80, $24, $29, $1F, $78

loc_B878C:
	dc.b	$3C, $C0, $13, $03, $15, $03, $13, $53, $62, $51, $14, $11, $1A, $B5, $04, $04
	dc.b	$04, $22, $52, $59, $34, $39, $1F, $8F, $1F, $8F

loc_B87A6:
	dc.b	$3D, $C0, $12, $00, $0C, $00, $2A, $64, $73, $40, $13, $0A, $0A, $0A, $1A, $0B
	dc.b	$0C, $0B, $23, $23, $07, $0E, $08, $68, $09, $56

loc_B87C0:
	dc.b	$3D, $C0, $12, $00, $0C, $00, $2A, $64, $73, $40, $13, $0A, $0A, $0A, $1A, $0B
	dc.b	$0C, $0B, $23, $23, $07, $0E, $08, $68, $09, $56

loc_B87DA:
	dc.b	$02, $C0, $04, $0D, $08, $03, $71, $82, $70, $51, $1F, $1F, $1F, $1F, $58, $44
	dc.b	$0D, $09, $17, $0B, $65, $07, $07, $17, $08, $09

loc_B87F4:
	dc.b	$05, $C0, $05, $07, $06, $04, $45, $53, $51, $62, $03, $0B, $0E, $09, $06, $09
	dc.b	$08, $02, $05, $05, $01, $09, $0F, $0F, $0A, $0F

loc_B880E:
	dc.b	$1B, $C0, $05, $05, $1A, $00, $6C, $4F, $0A, $8E, $1F, $1C, $18, $1F, $19, $10
	dc.b	$1A, $00, $0E, $30, $40, $00, $3F, $FF, $AF, $1F

loc_B8828:
	dc.b	$00, $C0, $01, $01, $00, $00, $91, $35, $30, $00, $0F, $9F, $C9, $1F, $48, $3A
	dc.b	$08, $08, $65, $20, $80, $02, $F4, $6D, $3E, $4B

loc_B8842:
	dc.b	$02, $C0, $24, $08, $07, $03, $03, $02, $02, $02, $1F, $1F, $1F, $1F, $14, $14
	dc.b	$0D, $19, $19, $0A, $15, $08, $1A, $1F, $1F, $0F

loc_B885C:
	dc.b	$3B, $C0, $10, $20, $10, $00, $15, $30, $32, $41, $1F, $1C, $18, $0F, $09, $20
	dc.b	$0A, $0F, $04, $00, $00, $11, $08, $F4, $A4, $17

loc_B8876:
	dc.b	$1D, $C0, $0D, $00, $00, $00, $54, $44, $64, $11, $15, $1F, $57, $5C, $06, $05
	dc.b	$0C, $01, $86, $05, $0C, $01, $6F, $1F, $5F, $8F

loc_B8890:
	dc.b	$05, $C0, $18, $00, $00, $00, $24, $71, $50, $40, $1F, $1F, $1C, $13, $04, $0B
	dc.b	$1C, $0B, $04, $82, $0E, $1E, $9F, $6F, $2F, $5F

loc_B88AA:
	dc.b	$05, $C0, $18, $00, $00, $00, $23, $27, $50, $41, $15, $1F, $1C, $0B, $04, $0B
	dc.b	$1C, $0B, $04, $82, $0E, $1E, $9F, $6F, $2F, $5F

loc_B88C4:
	dc.b	$1D, $C0, $09, $00, $00, $00, $63, $30, $33, $60, $10, $1F, $1F, $1F, $08, $0E
	dc.b	$12, $10, $04, $08, $0A, $0E, $1F, $1F, $1F, $1F

loc_B88DE:
	dc.b	$03, $C0, $10, $20, $0C, $00, $23, $63, $73, $70, $1F, $1F, $1F, $1F, $0F, $01
	dc.b	$00, $03, $08, $09, $08, $0C, $5F, $3F, $3F, $4F

loc_B88F8:
	dc.b	$39, $C0, $18, $10, $08, $00, $1B, $30, $31, $40, $D3, $D3, $D4, $0E, $09, $00
	dc.b	$00, $17, $2C, $40, $62, $26, $04, $15, $64, $07

loc_B8912:
	dc.b	$05, $C0, $30, $00, $00, $00, $63, $30, $AC, $42, $08, $0C, $0D, $0E, $0A, $00
	dc.b	$05, $00, $09, $04, $04, $07, $4F, $6F, $7F, $6F

loc_B892C:
	dc.b	$1D, $C0, $10, $00, $00, $00, $66, $32, $30, $60, $10, $1F, $1F, $1F, $08, $0E
	dc.b	$12, $10, $04, $08, $0A, $0C, $1F, $1F, $1F, $1F

loc_B8946:
	dc.b	$3D, $C0, $12, $00, $0C, $00, $24, $48, $55, $40, $15, $0A, $0C, $12, $1A, $1B
	dc.b	$1C, $0B, $04, $1A, $17, $1E, $0F, $1F, $3F, $5F

loc_B8960:
	dc.b	$3D, $C0, $10, $02, $1C, $05, $75, $40, $57, $43, $15, $0A, $0C, $11, $1A, $1B
	dc.b	$2C, $0B, $06, $2A, $27, $1E, $0E, $28, $38, $5E

loc_B897A:
	dc.b	$3C, $C0, $02, $00, $1F, $05, $71, $90, $50, $72, $10, $1F, $10, $1F, $0D, $04
	dc.b	$44, $49, $88, $58, $08, $24, $44, $38, $46, $E9

loc_B8994:
	dc.b	$34, $C0, $04, $00, $02, $05, $70, $90, $51, $A0, $10, $1A, $10, $19, $04, $06
	dc.b	$F4, $1F, $31, $28, $08, $2C, $74, $5B, $26, $1A

loc_B89AE:
	dc.b	$24, $C0, $1D, $07, $20, $07, $3F, $54, $67, $74, $1F, $58, $1F, $1F, $13, $08
	dc.b	$0E, $08, $04, $05, $05, $05, $55, $17, $62, $17

loc_B89C8:
	dc.b	$3C, $C0, $20, $04, $00, $00, $65, $43, $36, $78, $1F, $0E, $1F, $0E, $10, $00
	dc.b	$00, $00, $16, $15, $12, $12, $14, $13, $15, $12

loc_B89E2:
	dc.b	$34, $C0, $03, $00, $00, $03, $70, $7F, $31, $5F, $19, $0F, $72, $0B, $14, $01
	dc.b	$01, $58, $43, $01, $00, $04, $20, $26, $F4, $C4

loc_B89FC:
	dc.b	$3B, $C0, $0F, $13, $0F, $00, $05, $0B, $00, $02, $1F, $0F, $13, $17, $02, $02
	dc.b	$06, $02, $0F, $0A, $0C, $09, $24, $26, $26, $89

loc_B8A16:
	dc.b	$34, $C0, $14, $13, $0A, $00, $60, $51, $20, $10, $1F, $95, $9C, $54, $01, $02
	dc.b	$0E, $04, $00, $01, $00, $01, $34, $07, $D8, $17

loc_B8A30:
	dc.b	$03, $C0, $10, $18, $10, $00, $17, $1F, $70, $71, $1F, $18, $18, $1F, $01, $05
	dc.b	$03, $00, $00, $03, $00, $00, $0F, $1F, $0F, $1F

loc_B8A4A:
	dc.b	$03, $C0, $28, $16, $15, $00, $20, $20, $75, $72, $1F, $08, $1F, $1F, $0F, $02
	dc.b	$0A, $06, $00, $01, $00, $0C, $0F, $1F, $0F, $1F

loc_B8A64:
	dc.b	$22, $C0, $28, $2E, $16, $00, $18, $3F, $38, $06, $15, $0E, $8C, $8B, $02, $00
	dc.b	$00, $0E, $01, $00, $00, $06, $4F, $6F, $FF, $0F

loc_B8A7E:
	dc.b	$3B, $C0, $12, $00, $10, $00, $71, $00, $02, $31, $1F, $0E, $1F, $1F, $05, $01
	dc.b	$01, $01, $00, $02, $01, $03, $0F, $1F, $0F, $4F

loc_B8A98:
	dc.b	$1C, $C0, $20, $00, $18, $00, $65, $72, $79, $10, $15, $9B, $9B, $5F, $04, $02
	dc.b	$0A, $04, $06, $01, $06, $04, $6F, $5F, $8F, $8F

loc_B8AB2:
	dc.b	$1A, $C0, $10, $00, $00, $00, $16, $32, $38, $19, $55, $9E, $9C, $1F, $03, $09
	dc.b	$04, $08, $04, $03, $02, $06, $5F, $2F, $3F, $3F

loc_B8ACC:
	dc.b	$19, $C0, $20, $20, $10, $00, $31, $3B, $77, $17, $1F, $13, $1F, $1F, $0E, $05
	dc.b	$00, $00, $16, $04, $01, $00, $8F, $2F, $8F, $EF

loc_B8AE6:
	dc.b	$1C, $C0, $00, $00, $00, $00, $66, $7F, $72, $16, $07, $0F, $45, $0F, $04, $01
	dc.b	$04, $00, $00, $04, $0F, $04, $2F, $2F, $2F, $2F

loc_B8B00:
	dc.b	$38, $C0, $1D, $17, $0D, $00, $03, $01, $00, $00, $1F, $0E, $1A, $1F, $04, $00
	dc.b	$04, $06, $02, $02, $02, $02, $28, $27, $27, $33

loc_B8B1A:
	dc.b	$18, $C0, $10, $18, $0F, $06, $01, $00, $00, $00, $1B, $1F, $1F, $1F, $04, $04
	dc.b	$04, $06, $08, $08, $08, $0C, $24, $26, $26, $24

loc_B8B34:
	dc.b	$1C, $C0, $16, $09, $08, $00, $70, $75, $70, $1E, $04, $0E, $5A, $15, $08, $02
	dc.b	$01, $08, $00, $01, $00, $04, $2F, $7F, $FF, $2F

loc_B8B4E:
	dc.b	$34, $C0, $07, $0C, $03, $0D, $35, $76, $20, $56, $14, $0C, $0D, $11, $08, $04
	dc.b	$07, $03, $00, $09, $00, $02, $4B, $1F, $1F, $7F

loc_B8B68:
	dc.b	$1D, $C0, $0C, $00, $00, $00, $32, $63, $32, $34, $0A, $18, $18, $0E, $00, $0A
	dc.b	$0A, $0A, $08, $01, $02, $04, $1F, $6F, $4F, $6F

loc_B8B82:
	dc.b	$39, $C0, $12, $24, $0F, $00, $32, $00, $01, $30, $10, $10, $10, $18, $06, $02
	dc.b	$06, $02, $08, $05, $01, $01, $B9, $67, $44, $46

loc_B8B9C:
	dc.b	$34, $C0, $03, $00, $00, $03, $70, $7F, $31, $5F, $19, $0F, $52, $0B, $25, $01
	dc.b	$01, $58, $43, $01, $00, $04, $2F, $2F, $FF, $CF

loc_B8BB6:
	dc.b	$3A, $C0, $2A, $16, $44, $00, $01, $03, $01, $51, $0F, $9F, $0F, $13, $1F, $0E
	dc.b	$1F, $1F, $00, $00, $00, $00, $08, $F8, $08, $08

loc_B8BD0:
	dc.b	$24, $C0, $15, $00, $23, $00, $04, $02, $04, $04, $1F, $1F, $1F, $1F, $00, $00
	dc.b	$00, $0D, $00, $00, $00, $00, $0F, $0F, $0F, $0F

loc_B8BEA:
	dc.b	$1F, $C0, $00, $00, $00, $00, $73, $72, $11, $71, $1F, $1F, $1F, $1F, $0D, $1F
	dc.b	$1F, $1F, $01, $01, $01, $01, $FB, $0A, $0A, $0A

loc_B8C04:
	dc.b	$04, $C0, $20, $00, $20, $00, $03, $00, $41, $40, $1C, $17, $1C, $17, $1B, $0D
	dc.b	$17, $05, $F0, $01, $80, $85, $F3, $0A, $5A, $5A

loc_B8C1E:
	dc.b	$04, $C0, $08, $08, $10, $00, $02, $01, $41, $01, $1F, $1F, $24, $49, $1F, $45
	dc.b	$03, $00, $0C, $0B, $01, $0F, $19, $48, $8B, $E8

loc_B8C38:
	dc.b	$33, $C0, $10, $20, $20, $00, $22, $06, $02, $04, $88, $3C, $5F, $1F, $01, $08
	dc.b	$1F, $0F, $03, $08, $04, $00, $65, $68, $05, $08

loc_B8C52:
	dc.b	$21, $C0, $20, $30, $28, $00, $01, $01, $71, $31, $1F, $14, $14, $10, $02, $03
	dc.b	$04, $04, $04, $02, $02, $03, $2F, $2F, $2F, $2F

loc_B8C6C:
	dc.b	$1F, $C0, $20, $08, $28, $00, $33, $31, $73, $31, $9F, $1C, $9F, $9F, $0B, $1C
	dc.b	$10, $10, $05, $00, $00, $00, $9F, $0F, $0F, $0F

loc_B8C86:
	dc.b	$07, $C0, $00, $0A, $00, $00, $02, $39, $31, $60, $05, $C5, $88, $8C, $03, $00
	dc.b	$05, $00, $0F, $0F, $2F, $0F

loc_B8C9C:
	dc.b	$27, $C0, $10, $15, $10, $10, $02, $00, $71, $31, $12, $12, $12, $12, $00, $00
	dc.b	$00, $00, $00, $00, $00, $00, $0F, $0F, $0F, $0F

loc_B8CB6:
	dc.b	$3C, $C0, $38, $00, $1D, $00, $30, $01, $0F, $04, $8D, $52, $9F, $1F, $09, $00
	dc.b	$00, $0D, $00, $00, $00, $00, $2F, $0F, $0F, $FF

loc_B8CD0:
	dc.b	$39, $C0, $1C, $22, $1F, $00, $01, $51, $00, $00, $1F, $5F, $5F, $5F, $10, $11
	dc.b	$09, $09, $07, $00, $00, $00, $CF, $FF, $FF, $FF

loc_B8CEA:
	dc.b	$28, $C0, $17, $32, $14, $00, $39, $53, $02, $12, $DF, $DF, $81, $9F, $0C, $07
	dc.b	$0A, $0A, $07, $07, $07, $09, $2F, $1F, $1F, $FF

loc_B8D04:
	dc.b	$3C, $C0, $28, $08, $39, $00, $32, $71, $3F, $71, $4F, $55, $96, $9B, $03, $01
	dc.b	$0C, $04, $01, $01, $08, $01, $1F, $1F, $4F, $5F

loc_B8D1E:
	dc.b	$38, $C0, $20, $20, $20, $00, $01, $03, $53, $00, $1B, $1F, $1F, $1F, $14, $14
	dc.b	$14, $14, $00, $00, $00, $07, $FF, $FF, $FF, $8F

loc_B8D38:
	dc.b	$16, $C0, $50, $00, $08, $00, $51, $C1, $41, $42, $5F, $5A, $58, $0F, $07, $05
	dc.b	$07, $04, $06, $02, $03, $09, $EF, $4F, $6F, $3F

loc_B8D52:
	dc.b	$3C, $C0, $10, $00, $10, $00, $44, $42, $61, $01, $10, $5F, $18, $1F, $0F, $0A
	dc.b	$14, $10, $05, $0D, $11, $0F, $8F, $CF, $4F, $6F

loc_B8D6C:
	dc.b	$32, $C0, $26, $24, $20, $00, $12, $17, $13, $11, $1B, $15, $1A, $16, $02, $0A
	dc.b	$04, $0E, $06, $04, $05, $07, $1F, $2F, $FF, $7F

loc_B8D86:
	dc.b	$3D, $C0, $1F, $12, $27, $04, $01, $02, $02, $02, $14, $1F, $59, $1E, $08, $0E
	dc.b	$08, $0B, $00, $09, $09, $09, $1F, $4F, $4F, $4F

loc_B8DA0:
	dc.b	$3D, $C0, $1F, $08, $08, $07, $02, $01, $02, $02, $1F, $08, $8A, $0A, $08, $08
	dc.b	$08, $08, $00, $01, $00, $00, $0F, $1F, $1F, $1F

loc_B8DBA:
	dc.b	$3C, $C0, $1E, $00, $1F, $00, $01, $02, $01, $02, $CF, $0F, $CF, $0F, $00, $07
	dc.b	$00, $08, $00, $03, $00, $00, $0F, $3F, $0F, $3F

loc_B8DD4:
	dc.b	$3A, $C0, $18, $1F, $17, $00, $50, $60, $30, $00, $9F, $89, $5B, $4B, $09, $09
	dc.b	$1F, $03, $00, $00, $00, $00, $1F, $FF, $0F, $0F

loc_B8DEE:
	dc.b	$03, $C0, $12, $16, $1C, $00, $18, $71, $01, $01, $9B, $DF, $5F, $4E, $0C, $12
	dc.b	$0B, $08, $00, $01, $0B, $0D, $CF, $2F, $2F, $FF

loc_B8E08:
	dc.b	$3E, $C0, $40, $00, $00, $08, $70, $42, $81, $61, $1F, $1F, $16, $18, $13, $08
	dc.b	$09, $0A, $07, $0A, $03, $05, $8F, $8F, $4F, $4F

loc_B8E22:
	dc.b	$04, $C0, $00, $00, $1C, $00, $22, $26, $62, $04, $1F, $1F, $1F, $1F, $09, $0D
	dc.b	$0D, $0D, $05, $09, $11, $11, $AF, $5F, $9F, $BF

loc_B8E3C:
	dc.b	$0C, $C0, $18, $10, $21, $00, $58, $02, $20, $01, $1F, $1F, $05, $1F, $0A, $0B
	dc.b	$04, $02, $01, $04, $00, $00, $5F, $6F, $5F, $9F

loc_B8E56:
	dc.b	$0C, $C0, $18, $08, $21, $00, $58, $02, $20, $01, $1F, $1F, $05, $1F, $0A, $0B
	dc.b	$04, $06, $01, $04, $00, $00, $5F, $6F, $5F, $6F

loc_B8E70:
	dc.b	$3C, $C0, $1C, $05, $22, $00, $21, $51, $31, $21, $59, $4A, $59, $4A, $03, $05
	dc.b	$03, $05, $00, $00, $00, $00, $2F, $2F, $2F, $2F

loc_B8E8A:
	dc.b	$3C, $C0, $1C, $05, $28, $00, $21, $51, $31, $21, $59, $4A, $59, $4A, $03, $05
	dc.b	$03, $05, $00, $00, $00, $00, $2F, $2F, $2F, $2F

loc_B8EA4:
	dc.b	$20, $C0, $30, $37, $20, $00, $36, $35, $30, $31, $DF, $DF, $9F, $9F, $07, $06
	dc.b	$09, $06, $07, $06, $06, $08, $2F, $1F, $1F, $FF

loc_B8EBE:
	dc.b	$38, $C0, $20, $11, $21, $00, $31, $51, $31, $71, $17, $18, $1A, $1F, $17, $16
	dc.b	$0B, $07, $00, $00, $00, $00, $1F, $1F, $0F, $3F

loc_B8ED8:
	dc.b	$3C, $C0, $20, $00, $20, $00, $28, $51, $54, $32, $13, $1E, $1F, $0C, $0F, $02
	dc.b	$1F, $00, $00, $00, $00, $00, $2F, $0F, $0F, $0F

loc_B8EF2:
	dc.b	$3C, $C0, $20, $00, $30, $00, $34, $52, $52, $32, $1F, $1F, $1F, $1F, $10, $10
	dc.b	$17, $0C, $01, $03, $07, $0A, $1F, $2F, $6F, $6F

loc_B8F0C:
	dc.b	$50, $C0, $20, $20, $20, $00, $1A, $34, $30, $30, $1E, $19, $1C, $1D, $1E, $1F
	dc.b	$04, $08, $03, $03, $03, $05, $4F, $5F, $6F, $7F

loc_B8F26:
	dc.b	$6D, $C0, $20, $00, $00, $00, $72, $79, $A2, $81, $10, $1A, $59, $17, $02, $10
	dc.b	$01, $0A, $03, $18, $02, $05, $1F, $7F, $8F, $2F

loc_B8F40:
	dc.b	$55, $C0, $10, $00, $00, $00, $81, $22, $51, $52, $19, $1F, $1F, $1F, $00, $10
	dc.b	$07, $07, $00, $06, $0B, $0B, $8F, $BF, $8F, $AF

loc_B8F5A:
	dc.b	$22, $C0, $10, $10, $20, $00, $03, $02, $01, $01, $1F, $1F, $1F, $1F, $17, $16
	dc.b	$0B, $0F, $10, $10, $10, $05, $2F, $3F, $3F, $4F

loc_B8F74:
	dc.b	$3C, $C0, $28, $00, $14, $00, $33, $30, $51, $00, $0F, $0B, $0F, $0B, $04, $1F
	dc.b	$04, $1F, $00, $02, $00, $03, $1F, $0F, $1F, $0F

loc_B8F8E:
	dc.b	$36, $C0, $18, $00, $00, $00, $14, $01, $01, $02, $8F, $1F, $1F, $14, $1F, $1F
	dc.b	$0B, $3D, $09, $08, $07, $00, $0F, $0F, $0F, $7F

loc_B8FA8:
	dc.b	$2C, $C0, $17, $00, $19, $05, $70, $74, $32, $34, $19, $14, $19, $14, $01, $08
	dc.b	$02, $05, $01, $01, $02, $01, $1F, $8F, $1F, $3F

loc_B8FC2:
	dc.b	$24, $C0, $17, $00, $17, $00, $70, $74, $31, $33, $19, $14, $19, $14, $01, $08
	dc.b	$01, $08, $01, $01, $01, $01, $1F, $3F, $1F, $3F

loc_B8FDC:
	dc.b	$07, $C0, $00, $00, $00, $00, $02, $41, $31, $60, $05, $03, $08, $09, $03, $05
	dc.b	$05, $00, $2F, $2F, $2F, $0F

loc_B8FF2:
	dc.b	$AA, $C0, $08, $10, $10, $00, $52, $31, $31, $51, $1F, $1F, $1F, $1F, $10, $00
	dc.b	$10, $05, $08, $00, $00, $01, $5F, $0F, $5F, $5F

; =================================================================


SFX_Selection:
	dc.b	$01, $80, $05, $01, $16, $10, $00, $00, $00, $08, $EF, $00, $E3, $01, $01, $A5
	dc.b	$08, $80, $02, $F2

SFX_LevelUp:
	dc.b	$02, $80, $04, $01, $33, $10, $00, $01, $01, $00, $80, $05, $01, $33, $10, $00, $00
	dc.b	$01, $00, $EF, $01, $E3, $01, $01, $A9, $04
	dc.b	$B1, $B5, $B8, $BA, $BD, $F2


SFX_ItemReceived:
	dc.b	$02, $80, $04, $01, $53, $10, $03, $01, $02, $00, $80, $05, $01, $53, $10, $03, $01
	dc.b	$02, $00, $EF, $02, $B0, $03, $B3, $20, $F2

SFX_Explosion:
	dc.b	$02, $A0, $02, $01, $6D, $10, $00, $00, $03, $00, $A0, $05, $01, $72, $10, $00, $00
	dc.b	$03, $08, $FE, $03, $02, $01, $00, $EF, $03
	dc.b	$8D, $00, $D0, $03, $A5, $00, $10, $06, $BB, $00, $D0, $08, $EC, $08, $F7, $00, $05
	dc.b	$F6, $FF, $F2

SFX_MapChanged:
	dc.b	$01, $80, $02, $01, $92, $10, $00, $00, $04, $00, $EF, $04, $FE, $01, $01, $01, $00
	dc.b	$A4, $10, $10, $10, $20, $F2

SFX_FellInHole:
	dc.b	$02, $A0, $04, $02, $B2, $10, $2A, $00, $05, $00, $A0, $05, $02, $B2, $10, $0B, $00
	dc.b	$05, $00, $EF, $05, $BC, $04, $F6, $2A, $80
	dc.b	$00, $F1, $10, $F2

SFX_Revived:
	dc.b	$02, $A0, $04, $01, $D0, $10, $00, $00, $06, $08, $A0, $05, $01, $D0, $10, $00, $00
	dc.b	$06, $08, $EF, $06, $E3, $01, $01, $98, $00
	dc.b	$07, $03, $F7, $00, $02, $F8, $FF, $9D, $00, $09, $20, $F2

SFX_PoisonCured:
	dc.b	$02, $A0, $04, $01, $F6, $10, $00, $01, $07, $00, $A0, $05, $01, $F6, $10, $00, $00
	dc.b	$07, $00, $EF, $07, $E3, $01, $01, $9D, $F0
	dc.b	$49, $05, $99, $E0, $56, $0E, $80, $00, $00, $05, $F2

SFX_Alarm:
	dc.b	$01, $80, $02, $01, $12, $11, $F0, $00, $08, $00, $EF, $08, $E3, $01, $01, $FE, $00
	dc.b	$00, $01, $00, $81, $2E, $F2

SFX_Hidapipe:
	dc.b	$02, $80, $04, $02, $32, $11, $01, $01, $09, $08, $80, $05, $02, $3C, $11, $01, $00
	dc.b	$09, $08, $E0, $00, $80, $01, $F8, $08, $00
	dc.b	$E0, $01, $F2, $F8, $02, $00, $F2, $EF, $09, $E3, $01, $01, $B5, $12, $B1, $06, $30
	dc.b	$B8, $06, $B6, $0C, $B5, $06, $B3, $06, $B5
	dc.b	$0C, $B1, $06, $B1, $B3, $0C, $B5, $06, $B3, $24, $80, $0C, $F9

SFX_Teleport:
	dc.b	$02, $A0, $04, $02, $73, $11, $FD, $01, $0A, $00, $A0, $05, $02, $73, $11, $F9, $00
	dc.b	$0A, $00, $EF, $0A, $E3, $01, $01, $9C, $00
	dc.b	$F0, $03, $FB, $01, $F7, $00, $09, $F6, $FF, $F2

SFX_DoorOpen:
	dc.b	$02, $A0, $05, $01, $97, $11, $FD, $00, $0B, $00, $A0, $05, $01, $97, $11, $FE, $00
	dc.b	$0B, $00, $EF, $0B, $A5, $00, $00, $07, $A5
	dc.b	$F6, $27, $0B, $80, $00, $00, $20, $F2

SFX_DamOpened:
	dc.b	$03, $A0, $02, $01, $C2, $11, $05, $00, $0C, $00, $A0, $04, $01, $C2, $11, $00, $00
	dc.b	$0C, $00, $A0, $05, $01, $C2, $11, $F9, $00
	dc.b	$0C, $00, $EF, $0C, $E3, $01, $01, $FE, $00, $01, $00, $00, $99, $00, $00, $08, $A0
	dc.b	$05, $ED, $7A, $80, $00, $00, $01, $F2

SFX_JetScooter:
	dc.b	$01, $A0, $02, $01, $E3, $11, $00, $00, $0D, $10, $FE, $00, $03, $00, $01, $EF, $0D
	dc.b	$81, $E6, $50, $06, $F6, $F8, $FF

SFX_SpaceshipDeparted:
	dc.b	$02 ;0x0 (0x000B91F1-0x000B91F2, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$02
	dc.b	$02, $04, $12, $FD, $00, $0E, $00 ;0x0 (0x000B91F4-0x000B91FB, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $17, $12, $00, $00, $0E, $00, $EF, $0E, $E3, $01, $01, $FE, $01, $01, $00, $00, $99, $05 ;0x0 (0x000B91FD-0x000B9210, Entry count: 0x00000013) [Unknown data]
	dc.b	$FC
	dc.b	$01, $99, $F5, $1D, $20 ;0x0 (0x000B9211-0x000B9216, Entry count: 0x00000005) [Unknown data]
	dc.b	$F2
	dc.b	$EF, $0E, $E3, $01, $01, $99, $05 ;0x0 (0x000B9217-0x000B921E, Entry count: 0x00000007)
	dc.b	$FC
	dc.b	$01, $99, $F5, $1D, $20 ;0x0 (0x000B921F-0x000B9224, Entry count: 0x00000005) [Unknown data]
	dc.b	$FC
	dc.b	$00, $80, $10 ;0x0 (0x000B9225-0x000B9228, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_SpaceshipLanded:
	dc.b	$02 ;0x0 (0x000B9229-0x000B922A, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$02
	dc.b	$02, $3C, $12, $03, $00, $0F, $00 ;0x0 (0x000B922C-0x000B9233, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$02, $57, $12, $00, $00, $0F, $05, $EF, $0F, $FE, $00, $00, $00, $00, $B1, $05 ;0x0 (0x000B9235-0x000B9245, Entry count: 0x00000010) [Unknown data]
	dc.b	$FC
	dc.b	$01, $B1, $06, $E9, $20 ;0x0 (0x000B9246-0x000B924B, Entry count: 0x00000005) [Unknown data]
	dc.b	$FC
	dc.b	$00, $89, $02, $80, $02, $F7, $00, $05, $F8, $FF, $F2 ;0x0 (0x000B924C-0x000B9257, Entry count: 0x0000000B) [Unknown data]
	dc.b	$EF, $0F, $B1, $05 ;0x0 (0x000B9257-0x000B925B, Entry count: 0x00000004)
	dc.b	$FC
	dc.b	$01, $B1, $06, $E9, $20 ;0x0 (0x000B925C-0x000B9261, Entry count: 0x00000005) [Unknown data]
	dc.b	$FC
	dc.b	$00, $89, $02, $80, $02, $F7, $00, $05, $F8, $FF, $F2 ;0x0 (0x000B9262-0x000B926D, Entry count: 0x0000000B) [Unknown data]

SFX_DangerousFloor:
	dc.b	$01 ;0x0 (0x000B926D-0x000B926E, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$05
	dc.b	$01, $77, $12, $02, $00, $10, $00, $EF, $10, $A0, $04 ;0x0 (0x000B9270-0x000B927B, Entry count: 0x0000000B) [Unknown data]
	dc.b	$AE
	dc.b	$F2

SFX_Musik:
	dc.b	$02 ;0x0 (0x000B927C-0x000B927E, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$04
	dc.b	$02, $90, $12, $02, $00, $11, $03 ;0x0 (0x000B9280-0x000B9287, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$02, $A3, $12, $02, $00, $11, $06, $E0, $00, $EF, $11, $B5, $1B ;0x0 (0x000B9289-0x000B9296, Entry count: 0x0000000D) [Unknown data]
	dc.b	$B4
	dc.b	$12 ;0x0 (0x000B9297-0x000B9298, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$09 ;0x0 (0x000B9299-0x000B929A, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$09 ;0x0 (0x000B929B-0x000B929C, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B0, $B1, $1B ;0x0 (0x000B929D-0x000B92A0, Entry count: 0x00000003) [Unknown data]
	dc.b	$E0
	dc.b	$01, $F2, $EF, $11, $99, $09 ;0x0 (0x000B92A1-0x000B92A7, Entry count: 0x00000006) [Unknown data]
	dc.b	$A0
	dc.b	$A0, $99, $A0, $A0, $9E, $A5, $A7, $A9, $1B ;0x0 (0x000B92A8-0x000B92B1, Entry count: 0x00000009) [Unknown data]
	dc.b	$F2

SFX_Boomerang:
	dc.b	$02 ;0x0 (0x000B92B2-0x000B92B3, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $C5, $12, $FD, $00, $12, $00 ;0x0 (0x000B92B5-0x000B92BC, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $C5, $12, $FD, $00, $12, $00, $EF, $12, $B1, $00, $E0, $04 ;0x0 (0x000B92BE-0x000B92CB, Entry count: 0x0000000D) [Unknown data]
	dc.b	$B1
	dc.b	$00, $E0, $08 ;0x0 (0x000B92CC-0x000B92CF, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$00, $1F, $0B ;0x0 (0x000B92D0-0x000B92D3, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_Sword:
	dc.b	$02 ;0x0 (0x000B92D4-0x000B92D5, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$02
	dc.b	$01, $E7, $12, $FF, $00, $13, $00 ;0x0 (0x000B92D7-0x000B92DE, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $E7, $12, $FF, $00, $13, $00, $EF, $13, $FE, $00, $00, $01, $01, $A5, $05 ;0x0 (0x000B92E0-0x000B92F0, Entry count: 0x00000010) [Unknown data]
	dc.b	$B3
	dc.b	$08 ;0x0 (0x000B92F1-0x000B92F2, Entry count: 0x00000001) [Unknown data]
	dc.b	$F2

SFX_Claw:
	dc.b	$02 ;0x0 (0x000B92F3-0x000B92F4, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$04
	dc.b	$01, $06, $13, $09, $00, $14, $00 ;0x0 (0x000B92F6-0x000B92FD, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $06, $13, $09, $00, $14, $00, $EF, $14, $A5, $03, $FC, $01, $A5, $06, $E1, $05 ;0x0 (0x000B92FF-0x000B9310, Entry count: 0x00000011) [Unknown data]
	dc.b	$F2

SFX_Slasher:
	dc.b	$01 ;0x0 (0x000B9311-0x000B9312, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$02, $24, $13, $00, $01, $15, $00, $A0, $05, $02, $24, $13, $00, $01, $15, $00 ;0x0 (0x000B9314-0x000B9324, Entry count: 0x00000010) [Unknown data]
	dc.b	$EF, $15, $E3, $02, $02, $B0, $03, $00, $01, $E3, $03, $02, $B6, $03, $D4, $0A ;0x0 (0x000B9324-0x000B9334, Entry count: 0x00000010)
	dc.b	$F2

SFX_Shotgun:
	dc.b	$02 ;0x0 (0x000B9335-0x000B9336, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$02
	dc.b	$01, $48, $13, $00, $00, $16, $00 ;0x0 (0x000B9338-0x000B933F, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $48, $13, $03, $01, $16, $00, $EF, $16, $95, $00, $E0, $06 ;0x0 (0x000B9341-0x000B934E, Entry count: 0x0000000D) [Unknown data]
	dc.b	$A0
	dc.b	$00, $38, $10, $F2 ;0x0 (0x000B934F-0x000B9353, Entry count: 0x00000004) [Unknown data]

SFX_StrongGun:
	dc.b	$02 ;0x0 (0x000B9353-0x000B9354, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $66, $13, $00, $00, $17, $00 ;0x0 (0x000B9356-0x000B935D, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $66, $13, $F8, $01, $17, $00, $EF, $17, $E3, $01, $01, $A0, $06, $FC, $01, $A6
	dc.b	$03, $EA, $0A ;0x0 (0x000B935F-0x000B9373, Entry count: 0x00000014) [Unknown data]
	dc.b	$FB
	dc.b	$FF, $EC, $10, $F7, $00, $03, $F4 ;0x0 (0x000B9374-0x000B937B, Entry count: 0x00000007) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_B8:
	dc.b	$02, $80, $04, $01, $90, $13, $00, $00, $18, $01, $80, $05, $01, $90, $13, $06, $00
	dc.b	$18, $01, $EF, $18, $E3, $01, $01, $A0, $06, $A0, $06, $FC, $01, $A6 ;0x0 (0x000B937C-0x000B93D5, Entry count: 0x00000059) [Unknown data]
	dc.b	$03, $E8, $1A, $F2

SFX_B9:
	dc.b	$02, $A0, $02, $01, $B3, $13, $FD, $00, $19, $02, $A0, $05, $01, $CB, $13, $00, $00
	dc.b	$19, $00, $EF, $19, $E3, $01, $01, $FE, $00, $00, $02 ;0x20
	dc.b	$01, $A8, $00, $6E, $03, $F7, $00, $05, $F8, $FF, $AA, $04, $D3, $0B, $F2, $EF, $19
	dc.b	$E3, $01, $01, $A0, $00, $10, $10, $F2 ;0x40

SFX_DamageRedScreen:
	dc.b	$03 ;0x0 (0x000B93D5-0x000B93D6, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$02
	dc.b	$01, $F1, $13, $1A, $00, $1A, $03 ;0x0 (0x000B93D8-0x000B93DF, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $F5, $13, $1A, $00, $1A, $03 ;0x0 (0x000B93E1-0x000B93E8, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $F9, $13, $10, $00, $1A, $03, $80, $00, $00, $01, $80, $00, $00, $01, $EF, $1A
	dc.b	$E3, $01, $01, $85, $00, $10, $05 ;0x0 (0x000B93EA-0x000B9402, Entry count: 0x00000018) [Unknown data]
	dc.b	$85
	dc.b	$00, $30, $05 ;0x0 (0x000B9403-0x000B9406, Entry count: 0x00000003) [Unknown data]
	dc.b	$E3
	dc.b	$02, $01, $A0, $00, $F0, $01, $FB, $FF, $F7, $00, $18, $F3 ;0x0 (0x000B9407-0x000B9413, Entry count: 0x0000000C) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_Foi:
	dc.b	$02 ;0x0 (0x000B9414-0x000B9416, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$02
	dc.b	$01, $28, $14, $00, $00, $1B, $00 ;0x0 (0x000B9418-0x000B941F, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $2F, $14, $00, $00, $1B, $00, $FE, $00, $00, $01, $02, $8D, $01, $EF, $1B, $88, $06 ;0x0 (0x000B9421-0x000B9433, Entry count: 0x00000012) [Unknown data]
	dc.b	$FC
	dc.b	$01, $87, $00, $14, $04 ;0x0 (0x000B9434-0x000B9439, Entry count: 0x00000005) [Unknown data]
	dc.b	$8A
	dc.b	$00, $50, $0C ;0x0 (0x000B943A-0x000B943D, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$00, $00, $0C ;0x0 (0x000B943E-0x000B9441, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_Zan:
	dc.b	$02 ;0x0 (0x000B9442-0x000B9443, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $59, $14, $00, $00, $1C, $00 ;0x0 (0x000B9445-0x000B944C, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $59, $14, $00, $00, $1C, $00, $80, $00, $00, $01 ;0x0 (0x000B944E-0x000B9459, Entry count: 0x0000000B) [Unknown data]
	dc.b	$EF, $1C, $E3, $01, $01, $C2, $00, $30, $15 ;0x0 (0x000B9459-0x000B9462, Entry count: 0x00000009)
	dc.b	$96
	dc.b	$00, $FB, $03, $FB, $01, $F7, $00, $08, $F6 ;0x0 (0x000B9463-0x000B946C, Entry count: 0x00000009) [Unknown data]
	dc.b	$FF
	dc.b	$B6, $00, $68, $0B, $F2 ;0x0 (0x000B946D-0x000B9472, Entry count: 0x00000005) [Unknown data]

SFX_Vol:
	dc.b	$02 ;0x0 (0x000B9472-0x000B9473, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $85, $14, $03, $00, $1D, $00 ;0x0 (0x000B9475-0x000B947C, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $8B, $14, $03, $00, $1D, $00, $E3, $03, $04, $F6, $04 ;0x0 (0x000B947E-0x000B948A, Entry count: 0x0000000C) [Unknown data]
	dc.b	$00
	dc.b	$E3, $04, $04, $EF, $1C, $C2, $00, $30, $15 ;0x0 (0x000B948B-0x000B9494, Entry count: 0x00000009)
	dc.b	$EF
	dc.b	$1D, $86, $00, $A0, $02, $A8, $00, $A0, $02, $B6, $06, $E0, $10 ;0x0 (0x000B9495-0x000B94A2, Entry count: 0x0000000D) [Unknown data]
	dc.b	$F2

SFX_Tsu:
	dc.b	$01 ;0x0 (0x000B94A3-0x000B94A4, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $AD, $14, $03, $00, $1E, $00, $EF, $1E, $85, $0C, $66, $01, $A8, $0A, $1F, $14 ;0x0 (0x000B94A6-0x000B94B7, Entry count: 0x00000011) [Unknown data]
	dc.b	$F2

SFX_Shinb:
	dc.b	$01 ;0x0 (0x000B94B8-0x000B94B9, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $C2, $14, $00, $00, $1F, $00, $EF, $1F, $A5, $FC, $22, $10 ;0x0 (0x000B94BB-0x000B94C8, Entry count: 0x0000000D) [Unknown data]
	dc.b	$EC
	dc.b	$05, $FB, $FD, $F7, $00, $03, $F4 ;0x0 (0x000B94C9-0x000B94D0, Entry count: 0x00000007) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_Eijia:
	dc.b	$03 ;0x0 (0x000B94D1-0x000B94D3, Entry count: 0x00000002) [Unknown data]
	dc.b	$A0
	dc.b	$02
	dc.b	$01, $EE, $14, $00, $00, $20, $00 ;0x0 (0x000B94D5-0x000B94DC, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $EE, $14, $00, $00, $20, $00 ;0x0 (0x000B94DE-0x000B94E5, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $EE, $14, $00, $00, $20, $00, $FE, $01, $00, $00, $00, $EF, $1C, $E3, $01
	dc.b	$01, $C2, $00, $30, $15 ;0x0 (0x000B94E7-0x000B94FC, Entry count: 0x00000015) [Unknown data]
	dc.b	$EF
	dc.b	$20, $81, $F6, $3A, $03, $F7, $00, $06, $F6 ;0x0 (0x000B94FD-0x000B9506, Entry count: 0x00000009) [Unknown data]
	dc.b	$FF
	dc.b	$AB, $FD, $B9, $0D ;0x0 (0x000B9507-0x000B950B, Entry count: 0x00000004) [Unknown data]
	dc.b	$F2

SFX_Gaj:
	dc.b	$03 ;0x0 (0x000B950C-0x000B950D, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$02
	dc.b	$01, $28, $15, $05, $00, $21, $00 ;0x0 (0x000B950F-0x000B9516, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$04
	dc.b	$01, $28, $15, $05, $00, $21, $00 ;0x0 (0x000B9518-0x000B951F, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $3C, $15, $05, $00, $21, $00, $FE, $00, $00, $01, $03, $EF, $21, $83, $04 ;0x0 (0x000B9521-0x000B9531, Entry count: 0x00000010) [Unknown data]
	dc.b	$FC
	dc.b	$01, $96, $E0, $9A, $02, $A0, $17, $CE, $1A ;0x0 (0x000B9532-0x000B953B, Entry count: 0x00000009) [Unknown data]
	dc.b	$F2
	dc.b	$EF, $21, $83, $0C, $84, $15 ;0x0 (0x000B953C-0x000B9542, Entry count: 0x00000006)
	dc.b	$F2

SFX_Deban:
	dc.b	$02 ;0x0 (0x000B9543-0x000B9544, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$04
	dc.b	$01, $56, $15, $FD, $00, $22, $00 ;0x0 (0x000B9546-0x000B954D, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $63, $15, $F5, $00, $22, $00, $EF, $22, $A9, $03, $A5, $FB, $01, $F7, $00
	dc.b	$05, $F7 ;0x0 (0x000B954F-0x000B9561, Entry count: 0x00000012) [Unknown data]
	dc.b	$FF
	dc.b	$F2, $EF, $22, $80, $01, $A9, $03, $A5, $FB, $01, $F7, $00, $05, $F7 ;0x0 (0x000B9562-0x000B9570, Entry count: 0x0000000E) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_Healed:
	dc.b	$01 ;0x0 (0x000B9571-0x000B9573, Entry count: 0x00000002) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $7C, $15, $01, $00, $23, $00, $EF, $23, $A9, $FE, $1C, $0A ;0x0 (0x000B9575-0x000B9582, Entry count: 0x0000000D) [Unknown data]
	dc.b	$EC
	dc.b	$0B, $F7, $00, $05, $F6 ;0x0 (0x000B9583-0x000B9588, Entry count: 0x00000005) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_C4:
	dc.b	$02, $80, $02, $01, $9D, $15, $00, $00, $24, $00, $80, $05, $01, $A4, $15, $06
	dc.b	$00, $24, $00, $EF, $24, $FE, $03, $00, $00, $00, $EF, $24, $A3, $08, $AE ;0x0 (0x000B9589-0x000B95B0, Entry count: 0x00000027) [Unknown data]
	dc.b	$02, $F7, $00, $0C, $FA, $FF, $F2 ;0x20

SFX_NeifirstAttack:
	dc.b	$01 ;0x0 (0x000B95B0-0x000B95B1, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $BA, $15, $0E, $00, $00, $00, $EF, $25, $88, $A7, $53, $03, $EE, $01, $A7
	dc.b	$3D, $57, $03, $90, $CE, $97, $01, $EE, $00, $80, $00, $00, $08 ;0x0 (0x000B95B3-0x000B95D0, Entry count: 0x0000001D) [Unknown data]
	dc.b	$F2

SFX_Whip:
	dc.b	$02 ;0x0 (0x000B95D1-0x000B95D2, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $E4, $15, $00, $00, $26, $00 ;0x0 (0x000B95D4-0x000B95DB, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $E4, $15, $00, $00, $26, $00, $EF, $26, $A8, $96, $8E, $08 ;0x0 (0x000B95DD-0x000B95EA, Entry count: 0x0000000D) [Unknown data]
	dc.b	$90
	dc.b	$FE, $00, $08 ;0x0 (0x000B95EB-0x000B95EE, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_WhistleAttack:
	dc.b	$02 ;0x0 (0x000B95EF-0x000B95F0, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $02, $16, $03, $00, $27, $00 ;0x0 (0x000B95F2-0x000B95F9, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $02, $16, $00, $00, $27, $00, $EF, $27, $E3, $01, $01, $91, $C7, $23, $04 ;0x0 (0x000B95FB-0x000B960B, Entry count: 0x00000010) [Unknown data]
	dc.b	$F7
	dc.b	$00, $03, $F8 ;0x0 (0x000B960C-0x000B960F, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$D4, $30, $00, $0D ;0x0 (0x000B9610-0x000B9614, Entry count: 0x00000004) [Unknown data]
	dc.b	$80
	dc.b	$00, $00, $08 ;0x0 (0x000B9615-0x000B9618, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_PoleziAttack:
	dc.b	$02 ;0x0 (0x000B9619-0x000B961A, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $2C, $16, $00, $00, $28, $00 ;0x0 (0x000B961C-0x000B9623, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $2C, $16, $00, $00, $00, $00, $EF, $28, $8F, $B4, $CD, $03, $9B, $1F, $92, $02
	dc.b	$F7, $00, $06, $F4 ;0x0 (0x000B9625-0x000B963A, Entry count: 0x00000015) [Unknown data]
	dc.b	$FF
	dc.b	$80, $00, $00, $08 ;0x0 (0x000B963B-0x000B963F, Entry count: 0x00000004) [Unknown data]
	dc.b	$F2

SFX_PulserAttack:
	dc.b	$02 ;0x0 (0x000B9640-0x000B9641, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$02
	dc.b	$01, $53, $16, $00, $00, $29, $00 ;0x0 (0x000B9643-0x000B964A, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $53, $16, $00, $00, $29, $00, $FE, $03, $03, $00, $00, $EF, $29, $A0, $02, $FC
	dc.b	$01, $9D, $E3, $A1, $03, $A3, $30, $EC, $02, $F7, $00, $06, $F0 ;0x0 (0x000B964C-0x000B966A, Entry count: 0x0000001E) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_TerakiteAttack:
	dc.b	$02 ;0x0 (0x000B966B-0x000B966D, Entry count: 0x00000002) [Unknown data]
	dc.b	$A0
	dc.b	$02
	dc.b	$01, $7F, $16, $00, $00, $2A, $00 ;0x0 (0x000B966F-0x000B9676, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $7F, $16, $04, $00, $2A, $00, $FE, $01, $03, $02, $00, $EF, $2A, $93, $00
	dc.b	$40, $06 ;0x0 (0x000B9678-0x000B968A, Entry count: 0x00000012) [Unknown data]
	dc.b	$A0
	dc.b	$32, $AB, $03, $9D, $02, $F0, $20 ;0x0 (0x000B968B-0x000B9692, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$00, $00, $02, $F2 ;0x0 (0x000B9693-0x000B9697, Entry count: 0x00000004) [Unknown data]

SFX_FireAntAttack:
	dc.b	$02 ;0x0 (0x000B9697-0x000B9698, Entry count: 0x00000001)
	dc.b	$A8
	dc.b	$04
	dc.b	$01, $AA, $16, $10, $00, $2B, $00 ;0x0 (0x000B969A-0x000B96A1, Entry count: 0x00000007) [Unknown data]
	dc.b	$A8
	dc.b	$05
	dc.b	$01, $AA, $16, $15, $00, $2B, $00, $EF, $2B, $10, $20, $F0, $06 ;0x0 (0x000B96A3-0x000B96B0, Entry count: 0x0000000D) [Unknown data]
	dc.b	$FB
	dc.b	$60, $F7, $00, $05, $F6 ;0x0 (0x000B96B1-0x000B96B6, Entry count: 0x00000005) [Unknown data]
	dc.b	$FF
	dc.b	$20, $80, $F0, $10 ;0x0 (0x000B96B7-0x000B96BB, Entry count: 0x00000004) [Unknown data]
	dc.b	$F2

SFX_BeeAttack:
	dc.b	$02 ;0x0 (0x000B96BC-0x000B96BD, Entry count: 0x00000001) [Unknown data]
	dc.b	$A8
	dc.b	$04
	dc.b	$01, $CF, $16, $00, $00, $2C, $00 ;0x0 (0x000B96BF-0x000B96C6, Entry count: 0x00000007) [Unknown data]
	dc.b	$A8
	dc.b	$05
	dc.b	$01, $CF, $16, $0A, $00, $2C, $00, $EF, $2C, $20, $90, $F0, $07 ;0x0 (0x000B96C8-0x000B96D5, Entry count: 0x0000000D) [Unknown data]
	dc.b	$F7
	dc.b	$00, $02, $F8 ;0x0 (0x000B96D6-0x000B96D9, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$36, $80, $F0, $20 ;0x0 (0x000B96DA-0x000B96DE, Entry count: 0x00000004) [Unknown data]
	dc.b	$F2

SFX_AmoebaAttack:
	dc.b	$02 ;0x0 (0x000B96DF-0x000B96E0, Entry count: 0x00000001) [Unknown data]
	dc.b	$A8
	dc.b	$04
	dc.b	$01, $F2, $16, $02, $00, $2D, $18 ;0x0 (0x000B96E2-0x000B96E9, Entry count: 0x00000007) [Unknown data]
	dc.b	$A8
	dc.b	$05
	dc.b	$01, $F2, $16, $00, $00, $2D, $18, $EF, $2D, $E3, $02, $01, $20, $60, $10, $02
	dc.b	$EC, $FF, $FB, $10, $F7, $00, $06, $F4 ;0x0 (0x000B96EB-0x000B9703, Entry count: 0x00000018) [Unknown data]
	dc.b	$FF
	dc.b	$E3, $01, $01, $20, $60, $12, $0B ;0x0 (0x000B9704-0x000B970B, Entry count: 0x00000007) [Unknown data]
	dc.b	$F2

SFX_BlasterAttack:
	dc.b	$02, $A0 ;0x0 (0x000B970C-0x000B970E, Entry count: 0x00000002) [Unknown data]
	dc.b	$04
	dc.b	$01, $1F, $17, $F9, $00, $2E, $00 ;0x0 (0x000B970F-0x000B9716, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $1F, $17, $EE, $00, $2E, $00, $EF, $2E, $A5, $F8, $25, $08 ;0x0 (0x000B9718-0x000B9725, Entry count: 0x0000000D) [Unknown data]
	dc.b	$FB
	dc.b	$01, $F7, $00, $05, $F6 ;0x0 (0x000B9726-0x000B972B, Entry count: 0x00000005) [Unknown data]
	dc.b	$FF
	dc.b	$99, $00, $20, $10 ;0x0 (0x000B972C-0x000B9730, Entry count: 0x00000004) [Unknown data]
	dc.b	$F2

SFX_VanAttack:
	dc.b	$02 ;0x0 (0x000B9731-0x000B9732, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$04
	dc.b	$01, $44, $17, $FA, $00, $2F, $03 ;0x0 (0x000B9734-0x000B973B, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $51, $17, $04, $00, $30, $04, $EF, $2F, $8B, $05 ;0x0 (0x000B973D-0x000B9748, Entry count: 0x0000000B) [Unknown data]
	dc.b	$8F
	dc.b	$04 ;0x0 (0x000B9749-0x000B974A, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$02, $96, $12 ;0x0 (0x000B974B-0x000B974E, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$30 ;0x0 (0x000B974F-0x000B9750, Entry count: 0x00000001) [Unknown data]
	dc.b	$F2
	dc.b	$EF, $30, $83, $03, $FC, $01, $8D, $E9, $68, $09 ;0x0 (0x000B9751-0x000B975B, Entry count: 0x0000000A)
	dc.b	$FC
	dc.b	$00, $EE, $01, $8E, $18 ;0x0 (0x000B975C-0x000B9761, Entry count: 0x00000005) [Unknown data]
	dc.b	$EE
	dc.b	$00, $80, $10 ;0x0 (0x000B9762-0x000B9765, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_SpinnerAttack:
	dc.b	$02 ;0x0 (0x000B9766-0x000B9767, Entry count: 0x00000001)
	dc.b	$A8
	dc.b	$04
	dc.b	$01, $79, $17, $00, $00, $31, $00 ;0x0 (0x000B9769-0x000B9770, Entry count: 0x00000007) [Unknown data]
	dc.b	$A8
	dc.b	$05
	dc.b	$01, $79, $17, $0A, $00, $31, $00, $EF, $31, $E3, $01, $01, $20, $00, $04, $50 ;0x0 (0x000B9772-0x000B9782, Entry count: 0x00000010) [Unknown data]
	dc.b	$F2

SFX_MosquitoAttack:
	dc.b	$02 ;0x0 (0x000B9783-0x000B9784, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $96, $17, $00, $00, $32, $00 ;0x0 (0x000B9786-0x000B978D, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $96, $17, $00, $00, $32, $00, $EF, $32, $B8, $9C, $4D, $02, $B1, $6B, $8F
	dc.b	$02, $AD, $CD, $7E, $02, $A9, $49, $02, $02, $A6, $1D, $AA, $02, $A2, $17, $67 ;0x0 (0x000B978F-0x000B97C4, Entry count: 0x00000035) [Unknown data]
	dc.b	$01, $9E, $EF, $3D, $01, $9B, $3A, $06, $01, $97, $FF, $D8, $01, $93, $B4, $BB
	dc.b	$01, $90, $0C, $A6, $05 ;0x20
	dc.b	$80
	dc.b	$00, $00, $05 ;0x0 (0x000B97C5-0x000B97C8, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

SFX_LocustAttack:
	dc.b	$01 ;0x0 (0x000B97C9-0x000B97CA, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$02
	dc.b	$01, $D3, $17, $00, $00, $33, $00, $FE, $03, $03, $00, $00, $EF, $33, $E3, $01
	dc.b	$01, $98, $00, $20, $03, $A8, $00, $E8, $10 ;0x0 (0x000B97CC-0x000B97E5, Entry count: 0x00000019) [Unknown data]
	dc.b	$F2

SFX_ArmyEyeAttack:
	dc.b	$02 ;0x0 (0x000B97E6-0x000B97E7, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $F9, $17, $03, $00, $33, $00 ;0x0 (0x000B97E9-0x000B97F0, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $F9, $17, $00, $00, $34, $00, $EF, $33, $92, $00, $10, $03, $9A, $00, $EF
	dc.b	$02, $A0, $00, $F0, $0A ;0x0 (0x000B97F2-0x000B9807, Entry count: 0x00000015) [Unknown data]
	dc.b	$EC
	dc.b	$08, $F7, $00, $0A, $F6 ;0x0 (0x000B9808-0x000B980D, Entry count: 0x00000005) [Unknown data]
	dc.b	$FF
	dc.b	$F2

SFX_EnemyKilled:
	dc.b	$02 ;0x0 (0x000B980E-0x000B9810, Entry count: 0x00000002) [Unknown data]
	dc.b	$A0
	dc.b	$04
	dc.b	$01, $22, $18, $00, $00, $35, $00 ;0x0 (0x000B9812-0x000B9819, Entry count: 0x00000007) [Unknown data]
	dc.b	$A0
	dc.b	$05
	dc.b	$01, $26, $18, $03, $00, $00, $00, $80, $00, $00, $02, $EF, $35, $8D, $00, $F0, $05 ;0x0 (0x000B981B-0x000B982C, Entry count: 0x00000011) [Unknown data]
	dc.b	$99
	dc.b	$00, $F0, $02, $99, $00, $F0, $06 ;0x0 (0x000B982D-0x000B9834, Entry count: 0x00000007) [Unknown data]
	dc.b	$A5
	dc.b	$00, $10, $20 ;0x0 (0x000B9835-0x000B9838, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$00, $F0, $02, $F2 ;0x0 (0x000B9839-0x000B983D, Entry count: 0x00000004) [Unknown data]

SFX_Pause:
	dc.b	$02 ;0x0 (0x000B983D-0x000B983E, Entry count: 0x00000001)
	dc.b	$80
	dc.b	$04
	dc.b	$01, $50, $18, $00, $01, $36, $00 ;0x0 (0x000B9840-0x000B9847, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $69, $18, $00, $00, $00, $00, $F8, $23 ;0x0 (0x000B9849-0x000B9852, Entry count: 0x00000009) [Unknown data]
	dc.b	$00
	dc.b	$E8, $01, $F2

SFX_Unpause:
	dc.b	$02 ;0x0 (0x000B9853-0x000B9857, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$04
	dc.b	$01, $69, $18, $00, $01, $36, $00 ;0x0 (0x000B9859-0x000B9860, Entry count: 0x00000007) [Unknown data]
	dc.b	$80
	dc.b	$05
	dc.b	$01, $6F, $18, $00, $00, $00, $00, $80, $02, $F8, $08 ;0x0 (0x000B9862-0x000B986D, Entry count: 0x0000000B) [Unknown data]
	dc.b	$00
	dc.b	$F2, $F8, $04 ;0x0 (0x000B986E-0x000B9871, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$E8, $00, $F2, $EF, $36, $E3, $02, $01, $BD, $03, $BC, $03, $B8, $06 ;0x0 (0x000B9872-0x000B9880, Entry count: 0x0000000E)
	dc.b	$BD
	dc.b	$08 ;0x0 (0x000B9881-0x000B9882, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$08 ;0x0 (0x000B9883-0x000B9884, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

SFX_Null:
	dc.b	$00
	
	even

SoundDriverInput:
	btst	#6, $FFFFF8		; test if NTSC or PAL
	beq.w	loc_B98B4		; branch if NTSC
	move.b	$FFD01C, d0
	bne.w	loc_B98AE
	move.b	#4, $FFD01C
	bsr.w	loc_B98B4
	bsr.w	loc_B98B4
	rts
loc_B98AE:
	subq.b	#1, $FFD01C
loc_B98B4:
	move.b	Paused_mode&$FFFFFF, d0
	bne.w	+		; Don't do anything if game is paused
	lea	Music_tracks, a3
	bsr.w	DoSoundQueue
	bsr.w	PlaySoundID
	bsr.w	DoTempo
	bsr.w	DoFading
	bsr.w	UpdateTracks
+
	rts
; -----------------------------------------------------------------------
UpdateTracks:
	move.b	#0, Music_or_SFX	; 00 - Music Mode
	move.w	#5, d6			; 6 Music Tracks
	lea	Music_tracks, a3		; D030 - Music Tracks

-
	movem.l	d6, -(sp)
	btst	#7, (a3)		; is the 'in use' flag set?
	beq.w	+				; if not, branch
	bsr.w	UpdateTrack
+
	adda.w	#$30, a3
	movem.l	(sp)+, d6
	dbf	d6, -

	move.b	#$80, Music_or_SFX	; 80 - SFX Mode
	move.w	#3, d6			; 3 SFX	tracks
	lea	SFX_tracks, a3		; D150 - SFX Tracks

-
	movem.l	d6, -(sp)
	btst	#7, (a3)
	beq.w	+
	bsr.w	UpdateTrack
+
	adda.w	#$30, a3
	movem.l	(sp)+, d6
	dbf	d6, -

	rts

UpdateTrack:
	move.b	1(a3), d7		; get Channel Bits
	bmi.w	UpdateDrumTrack	; 80 - DAC Drum	track (no PSG tracks here)
	andi.b	#3, d7
	bra.w	UpdateFMTrack

UpdateDrumTrack:
	subq.w	#1, $A(a3)	; do TrackTimeout
	bne.w	loc_B99E2	; rts
	bsr.w	GetTrkPointer
	move.b	(a4)+, d5
loc_B9956:
	cmpi.b	#$E0, d5
	bcs.w	loc_B9964	; no coordination flag, so branch
	bsr.w	cfHandler
	bra.s	loc_B9956

loc_B9964:
	tst.b	d5
	bpl.w	loc_B997C	; there's a delay (00-7F), so branch
	move.b	d5, $C(a3)	; save drum note
	move.b	(a4)+, d5
	tst.b	d5
	bpl.w	loc_B997C	; branch if there's a delay
	move.b	-(a4), d5	; otherwise 'unget' last byte
	bra.w	loc_B9980
loc_B997C:
	bsr.w	TickMultiplier
loc_B9980:
	bsr.w	FinishTrkUpdate
	move.b	#$B6, d0		; Register 1B6 - FM6/DAC Stereo
	move.b	$C(a3), d7		; get Drum Note
	cmpi.b	#$80, d7
	beq.w	loc_B99A8		; 80 - Left Speaker (High Tom)
	cmpi.b	#$82, d7
	beq.w	loc_B99B4		; 82 - Right Speaker (Low Tom)
	move.b	#$C0, d1
	bsr.w	WriteFMII		; all others - Both Speakers
	bra.w	loc_B99BC

loc_B99A8:
	move.b	#$80, d1
	bsr.w	WriteFMII
	bra.w	loc_B99BC

loc_B99B4:
	move.b	#$40, d1
	bsr.w	WriteFMII
loc_B99BC:
	move.w	#$100, ($A11100).l	; Stop Z80

-
	btst	#0, ($A11100).l
	bne.s	-
	move.b	d7, ($A01FFF).l
	nop
	nop
	nop
	move.w	#0, ($A11100).l
loc_B99E2:
	rts


UpdateFMTrack:
	btst	#3, (a3)	; is this Raw Frequency Mode?
	bne.w	UpdateFM_RawFrq	; if so, branch
	btst	#5, (a3)	; is this Pitch Slide Mode?
	bne.w	UpdateFM_Slide	; if so, branch
	subq.w	#1, $A(a3)		; do TrackTimeout
	bne.w	loc_B9A0E
	bsr.w	ProcFMTrack
	bsr.w	SendFMFreq_A
	bsr.w	DoNoteOn_A
	bsr.w	StartPanAnim
	rts
loc_B9A0E:
	bsr.w	ExecPanAnim
	bsr.w	DoNoteStop
	bsr.w	ExecModEnv
	rts

ProcFMTrack:
	_bclr	#1, 0(a3)
	bsr.w	GetTrkPointer
	move.b	(a4)+, d5
loc_B9A28:
	cmpi.b	#$E0, d5
	bcs.w	loc_B9A36	; branch if there's no coordination flag
	bsr.w	cfHandler
	bra.s	loc_B9A28
loc_B9A36:
	_btst	#5, 0(a3)	; Pitch	Slide Mode?
	bne.w	loc_B9AB4	; was turned on	- branch to ProcFMTrack_Sld, Slide
loc_B9A40:
	bsr.w	DoNoteOff_A
	tst.b	d5			; is Delay (00-7F)?
	bpl.w	loc_B9A5E	; if so, branch
	bsr.w	GetFrequency_A
	move.b	(a4)+, d5
	tst.b	d5			; is Delay (00-7F)?
	bpl.w	loc_B9A5E	; if so, branch
	move.b	-(a4), d5	; otherwise 'unget' last byte
	bsr.w	FinishTrkUpdate
	rts

loc_B9A5E:
	bsr.w	TickMultiplier
	bsr.w	FinishTrkUpdate
	rts


UpdateFM_Slide:
	subq.w	#1, $A(a3)
	bne.w	loc_B9A82
	bsr.w	ProcFMTrack_Sld
	bsr.w	SendFMFreq_A
	bsr.w	DoNoteOn_A
	bsr.w	StartPanAnim
	rts

loc_B9A82:
	bsr.w	ExecPanAnim
	bsr.w	DoNoteStop
	bsr.w	DoPitchSlide
	bsr.w	SendFMFreq_A
	rts

ProcFMTrack_Sld:
	bsr.w	DoNoteOff_A
	bsr.w	GetTrkPointer
	move.b	(a4)+, d5
loc_B9A9E:
	cmpi.b	#$E0, d5
	bcs.w	loc_B9AAC		; branch if there's no coordination flag
	bsr.w	cfHandler
	bra.s	loc_B9A9E
loc_B9AAC:
	_btst	#5, 0(a3)		; Pitch	Slide Mode?
	beq.s	loc_B9A40		; if not, branch to ProcFMTrack, Normal
loc_B9AB4:
	bsr.w	GetFrequency_A
	move.b	(a4)+, d0		; get dummy value
	move.b	(a4)+, $10(a3)	; get Pitch Slide Speed
	move.b	(a4)+, d5		; get Note Length
	bpl.w	loc_B9AC8
	bra.w	FinishTrkUpdate
loc_B9AC8:
	bsr.w	TickMultiplier
	bsr.w	FinishTrkUpdate
	rts

DoPitchSlide:
	move.w	#0, d0
	move.w	$C(a3), d1	; get Frequency
	move.b	$10(a3), d0	; get Pitch Slide Speed
	bmi.w	loc_B9AFC	; branch if negative
	add.w	d0, d1		; Frequency = Frequency + Slide Speed
	move.w	d1, d0
	andi.w	#$3FF, d0	; mask Octave Bits out
	cmpi.w	#$4D1, d0
	bcs.w	+
	addi.w	#$59B, d1	; Frequency got	>= 4D2 - make it 26C in	higher octave
+
	move.w	d1, $C(a3)
	rts

loc_B9AFC:
	neg.b	d0
	sub.w	d0, d1		; Frequency = Frequency - Slide Speed
	move.w	d1, d0
	andi.w	#$3FF, d0
	cmpi.w	#$26C, d0
	bcc.w	+
	subi.w	#$59B, d1	; Frequency got	< 26C -	make it	4D1 in lower octave
+
	move.w	d1, $C(a3)
	rts

UpdateFM_RawFrq:
	btst	#5, (a3)	; Pitch	Slide Mode?
	bne.w	UpdateFM_RawSld
	subq.w	#1, $A(a3)
	bne.w	loc_B9B3A	; do TrackTimeout
	bsr.w	ProcFMTrack_Raw
	bsr.w	SendFMFreq_A
	bsr.w	DoNoteOn_A
	bsr.w	StartPanAnim
	rts
loc_B9B3A:
	bsr.w	ExecPanAnim
	bsr.w	DoNoteStop
	bsr.w	ExecModEnv
	rts
ProcFMTrack_Raw:
	bsr.w	DoNoteOff_A
	bsr.w	GetTrkPointer
	move.b	(a4)+, d5
loc_B9B52:
	cmpi.b	#$E0, d5
	bcs.w	loc_B9B60	; no coordination flag
	bsr.w	cfHandler
	bra.s	loc_B9B52
loc_B9B60:
	_btst	#5, 0(a3)	; Pitch	Slide Mode?
	bne.w	loc_B9BC0	; if so	- branch to ProcFMTrack_RS, Raw Freq + Slide)
loc_B9B6A:
	bsr.w	ReadRawFreq
	move.b	(a4)+, d5	; get Note Length
	bra.w	loc_B9AC8


UpdateFM_RawSld:
	subq.w	#1, $A(a3)
	bne.w	loc_B9B8E	; do TrackTimeout
	bsr.w	ProcFMTrack_RS
	bsr.w	SendFMFreq_A
	bsr.w	DoNoteOn_A
	bsr.w	StartPanAnim
	rts

loc_B9B8E:
	bsr.w	ExecPanAnim
	bsr.w	DoNoteStop
	bsr.w	DoPitchSlide
	bsr.w	SendFMFreq_A
	rts
ProcFMTrack_RS:
	bsr.w	DoNoteOff_A
	bsr.w	GetTrkPointer
	move.b	(a4)+, d5
loc_B9BAA:
	cmpi.b	#$E0, d5
	bcs.w	loc_B9BB8	; no coordination flag
	bsr.w	cfHandler
	bra.s	loc_B9BAA
loc_B9BB8:
	_btst	#5, 0(a3)	; Pitch	Slide Mode?
	beq.s	loc_B9B6A	; if not, branch to ProcFMTrack_Raw, Raw Freq
loc_B9BC0:
	bsr.w	ReadRawFreq
	move.b	(a4)+, $10(a3)	; get Slide Speed
	move.b	(a4)+, d5		; get Note Length
	bra.w	loc_B9AC8
TickMultiplier:
	move.w	#0, d0
	move.b	2(a3), d0
	andi.w	#$FF, d5
	mulu.w	d0, d5
	move.w	d5, $E(a3)		; write	final Note Length
	rts

FinishTrkUpdate:
	move.w	$E(a3), $A(a3)	; set Ticks until next Note
	move.l	a4, d5
	subi.l	#SoundDriverBase, d5	; make Track Pointer relative
	move.b	d5, 3(a3)		; save LSB
	lsr.w	#8, d5
	move.b	d5, 4(a3)		; save MSB
	_btst	#1, 0(a3)
	bne.w	loc_B9C32
	move.b	$21(a3), d6		; get Chord Mode track count
	beq.w	loc_B9C26		; disabled - do	once
	andi.w	#$FF, d6
	subq.w	#1, d6		; loop TrkRAM[21h] times
	movea.l	a3, a5

-
	bsr.w	loc_B9C26
	adda.l	#$30, a3
	dbf	d6, -

	movea.l	a5, a3
	rts

loc_B9C26:
	move.b	#0, $16(a3)		; reset	ModEnv State
	move.b	#0, $13(a3)		; reset	ModEnv Multiplier
loc_B9C32:
	rts
StartPanAnim:
	_btst	#1, 0(a3)
	bne.w	loc_B9D84
	move.b	$18(a3), d5		; read Pan Animation Type
	andi.l	#$FF, d5
	lsl.w	#2, d5
	jmp	StartPAJmpTbl(pc,d5.w)

; ===============================
StartPAJmpTbl:
	bra.w	loc_B9D84	; Pan Animation	Type 00; return
	bra.w	loc_B9CDC	; Pan Animation	Type 01
	bra.w	loc_B9C6A	; Pan Animation	Type 02
	bra.w	loc_B9CBC	; Pan Animation	Type 03
	bra.w	loc_B9CCC	; Pan Animation	Type 04
	bra.w	loc_B9CDC	; Pan Animation	Type 05
	bra.w	loc_B9CDC	; Pan Animation	Type 06
; ===============================

loc_B9C6A:
	tst.b	$1A(a3)		; Pan Ani Timeout == 0?
	bne.w	loc_B9CB2	; no - decrement
	move.b	$19(a3), $1A(a3)	; reset	Pan Ani	Timeout
	subq.b	#1, $1A(a3)
	move.b	$1B(a3), d0		; get Pan Ani Index
	andi.w	#$FF, d0
	lea	(PanAnimData).l, a0
	move.b	(a0,d0.w), d1	; get new Pan Data
	andi.b	#$1F, $17(a3)	; mask FMS/AMS bits out	from Pan/AMS/FMS bits
	or.b	d1, $17(a3)		; add new Pan bits in
	cmpi.w	#3, d0			; Pan Ani Index	reached	3?
	bne.w	loc_B9CAA		; not yet - increment
	move.b	#0, $1B(a3)		; yes -	reset to 0
	bra.w	loc_B9D56
loc_B9CAA:
	addq.b	#1, $1B(a3)
	bra.w	loc_B9D56
loc_B9CB2:
	subq.b	#1, $1A(a3)
	rts

; ================================
PanAnimData:
	dc.b	$80, $C0, $40, $C0
; ================================

loc_B9CBC:
	move.b	$19(a3), $1A(a3)
	andi.b	#$BF, $17(a3)
	bra.w	loc_B9D56
loc_B9CCC:
	move.b	$19(a3), $1A(a3)
	andi.b	#$7F, $17(a3)
	bra.w	loc_B9D56
loc_B9CDC:
	move.b	$19(a3), $1A(a3)
	andi.b	#$7F, $17(a3)
	bra.w	loc_B9D56
ExecPanAnim:
	move.b	$18(a3), d5
	andi.l	#$FF, d5
	lsl.w	#2, d5
	jmp	ExecPAJmpTbl(pc,d5.w)

; ========================
ExecPAJmpTbl:
	bra.w	loc_B9D84	; Pan Animation	Type 00
	bra.w	loc_B9D36	; Pan Animation	Type 01
	bra.w	loc_B9D18	; Pan Animation	Type 02
	bra.w	loc_B9D1A	; Pan Animation	Type 03
	bra.w	loc_B9D1A	; Pan Animation	Type 04
	bra.w	loc_B9D36	; Pan Animation	Type 05
	bra.w	loc_B9D36	; Pan Animation	Type 06
; ========================

loc_B9D18:
	rts			; Pan Animation	Type 07

loc_B9D1A:
	cmpi.b	#$C0, $17(a3)
	bpl.w	loc_B9D84
	subq.b	#1, $1A(a3)
	bne.w	loc_B9D84
	ori.b	#$C0, $17(a3)
	bra.w	loc_B9D56
loc_B9D36:
	move.b	$17(a3), d0
	cmpi.b	#$C0, d0
	bpl.w	loc_B9D84
	subq.b	#1, $1A(a3)
	bne.w	loc_B9D84
	move.b	$19(a3), $1A(a3)
	addi.b	#$40, $17(a3)
loc_B9D56:
	move.b	$17(a3), d1
	move.b	#$B4, d7
	move.b	d7, d0
	move.b	$21(a3), d6
	andi.w	#$FF, d6
	beq.w	WriteFMIorII
	subq.b	#1, d6
	movea.l	a3, a6
-
	move.b	d7, d0
	bsr.w	WriteFMIorII
	adda.l	#$30, a3
	dbf	d6, -

	movea.l	a6, a3
	rts
loc_B9D84:
	rts
DoNoteStop:
	cmpi.w	#3, $A(a3)	; 3 Ticks left?
	bne.w	+	; if not, return
	bsr.w	GetTrkPointer
	cmpi.b	#$E6, (a4)	; next Coord. Flag == Hold?
	beq.w	+			; if so, return
	bsr.w	DoNoteOff_A
+
	rts

ExecModEnv:
	move.b	6(a3), d7	; get Modulation Envelope
	beq.w	loc_B9DD0	; 00 - return
	tst.b	$16(a3)		; get Modulation Envelope State
	bne.w	loc_B9DD0	; if disabled, return
SendFMFreq_A:
	move.w	#0, d6
	move.b	$21(a3), d6
	beq.w	DoModEnv
	subq.b	#1, d6
	movea.l	a3, a5
-
	bsr.w	DoModEnv
	adda.w	#$30, a3
	dbf	d6, -

	movea.l	a5, a3
loc_B9DD0:
	rts

DoModEnv:
	move.w	$C(a3), d4	; get Frequency
	move.b	6(a3), d7	; get Modulation Envelope
	beq.w	SendFMFreq
	subq.w	#1, d7
	moveq	#0, d3
	move.b	$13(a3), d3
	move.b	d7, d0
	lea	(ModEnvelopePtrs).l, a0
	bsr.w	SndDrv_ReadPtr
	moveq	#0, d0
	move.b	$11(a3), d0		; get ModEnv Index

loc_B9DF8:
	move.b	(a0,d0.w), d1	; get Data Byte
	addq.w	#1, d0
	move.b	d0, $11(a3)		; write	incremented Index back
	cmpi.b	#$83, d1
	beq.w	ModEnv_Stop		; 83 - stop the	tone
	cmpi.b	#$81, d1
	beq.w	ModEnv_Stop		; 81 - hold the	envelope at current level
	cmpi.b	#$85, d1
	beq.w	ModEnv_Jump2Idx		; 85 xx	- jump to byte xx
	cmpi.b	#$84, d1
	beq.w	ModEnv_ChgMult		; 84 - change Modulation Multipler
	cmpi.b	#$80, d1
	beq.w	ModEnv_Reset	; 80 - loop back to beginning
	bcs.w	ModEnv_Positive
	ori.w	#$FFFF, d1	; broken; this is supposed to extend d1, but it's doing it incorrectly. You should use ext.w d1.
						; Alternatively you can use ori.w #$FF00, d1, because it only reaches this point when d1 is greater than $80.
ModEnv_Positive:
	mulu.w	d3, d1
	add.w	d1, d4
	bra.w	SendFMFreq

ModEnv_Stop:
	move.b	#$80, $16(a3)
	rts

ModEnv_Jump2Idx:
	move.b	(a0,d0.w), d0
	bra.s	loc_B9DF8

ModEnv_ChgMult:
	move.b	(a0,d0.w), d1
	add.b	d1, $13(a3)
	move.b	$13(a3), d3
	addq.w	#1, d0
	bra.s	loc_B9DF8
ModEnv_Reset:
	move.b	#0, d0
	bra.s	loc_B9DF8
SendFMFreq:
	_btst	#0, 0(a3)	; 'Special Mode' active?
	bne.w	SendFM3Freqs	; if so, branch
	move.w	d4, d1
	lsr.w	#8, d1
	move.b	#$A4, d0
	bsr.w	WriteFMIorII
	move.b	d4, d1
	move.b	#$A0, d0
	bsr.w	WriteFMIorII
	rts
SendFM3Freqs:
	cmpi.b	#2, 1(a3)
	bne.w	loc_B9EB4	; if not FM3, return
	move.w	#3, d6		; loop over 4 registers
	lea	Special_fm3_notes, a5
	lea	(SpcFM3Regs).l, a0

-
	move.w	d4, d3
	add.w	(a5)+, d3
	move.w	d3, d1
	lsr.w	#8, d1
	move.b	(a0)+, d0
	bsr.w	WriteFM1Main
	move.b	d3, d1
	subq.b	#4, d0
	bsr.w	WriteFM1Main
	dbf	d6, -

loc_B9EB4:
	rts

; ===============================
SpcFM3Regs:
	dc.b	$AD, $AE, $AC, $A6
; ===============================

GetTrkPointer:
	movea.l	#0, a4
	move.w	#0, d0
	move.w	d0, d1
	move.l	d0, d5
	move.b	3(a3), d0	; get Pointer LSB
	move.b	4(a3), d1	; get Pointer MSB
	lsl.w	#8, d1
	add.w	d0, d1		; D1 = relative	pointer
	movea.w	d1, a4
	adda.l	#SoundDriverBase, a4	; A4 = absolute	pointer
	rts

cfHandler:
	subi.b	#$E0, d5
	andi.l	#$FF, d5
	lsl.w	#2, d5
	jsr	cfJumpTable(pc,d5.w)
	move.b	(a4)+, d5
	rts

; ==================================
cfJumpTable:
	bra.w	cfE0_PlayBGM
	bra.w	cfE1_TrkEnd2
	bra.w	cfE2_PlaySnd
	bra.w	cfE3_PanAnim
	bra.w	cfE4_SetTempo
	bra.w	cfE5_ChordMode
	bra.w	cfE6_HoldOn
	bra.w	cfE7_ChordStop
	bra.w	cfE8_MusPause
	bra.w	cfE9_SetComm
	bra.w	cfEA_SetFMS
	bra.w	cfEB_SetAMS
	bra.w	cfEC_ChangeVol
	bra.w	cfED_unused
	bra.w	cfEE_HoldOnOff
	bra.w	cfEF_SetFMIns
	bra.w	cfF0_SetVol
	bra.w	cfF1_null
	bra.w	cfF2_TrkEnd
	bra.w	cfF3_NoiseMode
	bra.w	cfF4_ModType
	bra.w	cfF5_SetPSGIns
	bra.w	cfF6_GoTo
	bra.w	cfF7_Loop
	bra.w	cfF8_GoSub
	bra.w	cfF9_Return
	bra.w	cfFA_TickMult
	bra.w	cfFB_ChgTransp
	bra.w	cfFC_PitchSlide
	bra.w	cfFD_RawFrqMode
	bra.w	cfFE_FM3SpcMode
	bra.w	cfFF_Pan
; ==================================

cfE0_PlayBGM:
	move.b	(a4)+, d0
	beq.w	loc_B9FBA
	lea	Special_SFX_tracks, a0
	bclr	#2, (a0)
	lea	Music_tracks, a0
	moveq	#0, d0
	move.w	#5, d6
-
	movea.l	a0, a1
	move.w	#$B, d5
-
	move.l	d0, (a1)+
	dbf	d5, -

	adda.l	#$30, a0
	dbf	d6, --

	bsr.w	SilenceFM
	move.b	Coord_flag_e0, d0
	subi.b	#$81, d0
	bcs.w	loc_B9FE0
	bra.w	PlayMusic_JmpIn
loc_B9FBA:
	bsr.w	SilenceFM
	lea	Music_tracks, a0
	moveq	#0, d0
	move.w	#5, d6
-
	move.w	d0, (a0)
	adda.l	#$30, a0
	dbf	d6, -

	lea	Special_SFX_tracks, a0
	bset	#2, (a0)
loc_B9FE0:
	rts

cfE2_PlaySnd:
	move.b	(a4)+, Sound_queue&$FFFFFF	; put Sound ID into Sound Queue
	rts

cfE3_PanAnim:
	move.b	(a4)+, $18(a3)	; set Pan Anim:	Type
	move.b	(a4)+, $19(a3)	; set Pan Anim:	Initial	Timeout
	rts
cfE4_SetTempo:
	move.b	(a4), Init_tempo_value	; set Timeout Reset
	move.b	(a4)+, Tempo_timeout	; set current Timeout value
	rts

; -----------------------------------------------
cf_SetFMVol:				; unreferenced
	move.b	(a4)+, d3
	move.b	d3, 8(a3)	; write	Track Volume
	bsr.w	RefreshVolume
	rts
; -----------------------------------------------

cfE5_ChordMode:
	move.w	#0, d5
	move.b	(a4)+, d5
	move.b	d5, $21(a3)	; write	Chord Mode track count
	beq.w	+	; if disabled, return
	movea.l	a3, a6
	subq.w	#2, d5		; otherwise process the other (TrkCnt - 1) tracks
-
	adda.w	#$30, a6
	move.b	5(a3), 5(a6)	; copy Transpose
	move.b	6(a3), 6(a6)	; copy Modulation Envelope
	move.b	8(a3), 8(a6)	; copy Track Volume
	dbf	d5, -
+
	rts

cfE6_HoldOn:
	cmpi.b	#$80, (a4)
	bcc.w	loc_BA04A
	_bset	#1, 0(a3)	; set 'hold' bit (prevents Note Off)
loc_BA04A:
	rts

cfE7_ChordStop:
	cmpi.b	#$80, (a4)
	bcc.w	loc_BA05E
	bsr.w	DoNoteOff_A
	_bset	#1, 0(a3)
loc_BA05E:
	rts

; ------------------------------------------
cf_SetLFOSpd:				; unreferenced
	move.b	(a4)+, d1
	move.b	#$22, d0
	bra.w	WriteFM1Main
; ------------------------------------------

cfE8_MusPause:
	move.b	(a4)+, Paused_mode&$FFFFFF	; write "Music Paused" byte
	beq.w	loc_BA0D2		; 00 - unpause
	movea.l	a3, a6			; 01-FF	- pause
	lea	Music_tracks+$30, a3
	move.w	#8, d6
loc_BA080:
	_btst	#7, 0(a3)
	beq.w	loc_BA0FA
	_btst	#2, 0(a3)
	bne.w	loc_BA0A0
	move.w	#$FF, d3
	sub.b	8(a3), d3
	bsr.w	RefreshVolume
loc_BA0A0:
	adda.l	#$30, a3
	dbf	d6, loc_BA080
	lea	Special_SFX_tracks, a3
	_btst	#7, 0(a3)
	beq.w	loc_BA0CC
	_bset	#2, 0(a3)
	move.w	#$FF, d3
	sub.b	8(a3), d3
	bsr.w	RefreshVolume
loc_BA0CC:
	movea.l	a6, a3
	bra.w	cfF2_TrkEnd
loc_BA0D2:
	movea.l	a3, a6
	lea	Music_tracks+$30, a3
	move.w	#4, d6
loc_BA0DE:
	_btst	#7, 0(a3)
	beq.w	loc_BA0FA
	_btst	#2, 0(a3)
	bne.w	loc_BA0FA
	move.b	8(a3), d3
	bsr.w	RefreshVolume
loc_BA0FA:
	adda.l	#$30, a3
	dbf	d6, loc_BA0DE
	lea	Special_SFX_tracks, a3
	_bclr	#2, 0(a3)
	movea.l	a6, a3
	rts
cfE9_SetComm:
	move.b	(a4)+, Communication_byte	; set Communication Byte
	rts
cfEA_SetFMS:
	move.b	$17(a3), d1
	andi.b	#$F0, d1
	and.b	(a4)+, d1	; broken, should be or.b
	move.b	d1, $17(a3)
	move.b	#$B4, d0
	bra.w	WriteFMIorII
cfEB_SetAMS:
	move.b	$17(a3), d1
	andi.b	#$C3, d1
	and.b	(a4)+, d1	; broken, should be or.b
	move.b	d1, $17(a3)
	move.b	#$B4, d0
	bra.w	WriteFMIorII

; -------------------------------
cf_unused:
	move.b	#1,($FFD01A).l
	rts
; -------------------------------

cfED_unused:
	move.b	#0, $00FFD01A	; set unused variable to 00
	rts
cfEE_HoldOnOff:
	move.b	(a4)+, d0
	bne.w	loc_BA16A
	_bclr	#1, 0(a3)	; clear	'hold' bit
	rts

loc_BA16A:
	_bset	#1, 0(a3)	; set 'hold' bit (prevents Note Off)
	rts

cfEF_SetFMIns:
	move.b	(a4)+, d0
	move.b	d0, 7(a3)
	andi.w	#$FF, d0
	lea	(FMInsPtrs).l, a0
	bsr.w	SndDrv_ReadPtr
	move.w	#0, d7
	move.b	$21(a3), d7	; Chord	Mode
	beq.w	JmpTo_SetFMIns	; disabled - do	once
	subq.b	#1, d7
	movea.l	a3, a5
	movea.l	a0, a6
-
	move.b	7(a5), 7(a3)
	move.b	8(a5), 8(a3)
	bsr.w	SetFMIns
	adda.w	#$30, a3
	movea.l	a6, a0
	dbf	d7, -

	movea.l	a5, a3
	rts

JmpTo_SetFMIns:
	bra.w	SetFMIns


cfF0_SetVol:
	move.b	(a4)+, d3
	move.b	d3, 8(a3)
	bra.w	RefreshVolume
cfF1_null:
	rts
cfE1_TrkEnd2:
	move.b	#$80, Track_timer&$FFFFFF
cfF2_TrkEnd:
	move.b	#$80, Track_timer&$FFFFFF
	moveq	#0, d0
	_move.b	d0, 0(a3)
	move.b	d0, Current_sfx_priority
	bsr.w	DoNoteOff_A
	_bset	#1, 0(a3)
	tst.b	Music_or_SFX
	beq.w	loc_BA1FA		; branch if we are in music mode
	bsr.w	RestoreBGMChn
loc_BA1FA:
	move.l	(sp)+, d0
	rts
cfF3_NoiseMode:
	move.b	(a4)+, d0
	andi.b	#$E0, d0	; broken, should be ori.b
	move.b	d0, PSG_input
	rts
cfF4_ModType:
	move.b	(a4)+, 6(a3)
	rts
cfF5_SetPSGIns:
	move.b	(a4)+, 7(a3)
	rts
cfF6_GoTo:
	moveq	#0, d1
	move.b	(a4)+, d0
	andi.w	#$FF, d0
	move.b	(a4), d1
	lsl.w	#8, d1
	add.w	d0, d1
	adda.w	d1, a4
	rts
cfF7_Loop:
	move.b	(a4)+, d0
	move.b	(a4)+, d1
	tst.b	$22(a3,d0.w)
	bne.w	loc_BA23A
	move.b	d1, $22(a3,d0.w)
loc_BA23A:
	subq.b	#1, $22(a3,d0.w)
	bne.s	cfF6_GoTo
	move.b	(a4)+, d0
	move.b	(a4)+, d0
	rts
cfF8_GoSub:
	move.b	9(a3), d0
	andi.l	#$FF, d0
	subq.b	#4, d0
	move.l	a4, (a3,d0.w)
	move.b	d0, 9(a3)
	bra.s	cfF6_GoTo
cfF9_Return:
	move.b	9(a3), d0
	movea.l	(a3,d0.w), a4
	adda.l	#2, a4
	addq.b	#4, d0
	move.b	d0, 9(a3)
	rts
cfFA_TickMult:
	move.b	(a4)+, 2(a3)
	rts
cfFB_ChgTransp:
	move.b	(a4)+, d0
	add.b	d0, 5(a3)
	rts
cfFC_PitchSlide:
	tst.b	(a4)+
	beq.w	+
	_bset	#5, 0(a3)
	rts
+
	_bclr	#5, 0(a3)
	rts
cfFD_RawFrqMode:
	tst.b	(a4)+
	beq.w	+
	_bset	#3, 0(a3)
	rts
+
	_bclr	#3, 0(a3)
	rts
cfEC_ChangeVol:
	move.b	(a4)+, d3
	add.b	d3, 8(a3)
	move.b	8(a3), d3
	bra.w	RefreshVolume

cfFE_FM3SpcMode:
	_bset	#0, 0(a3)
	lea	Special_fm3_notes, a0
	lea	(FM3_Freqs).l, a1
	moveq	#3, d5
-
	move.b	(a4)+, d0
	lsl.w	#1, d0
	move.w	(a1,d0.w), (a0)+
	dbf	d5, -

	rts

; ================================
FM3_Freqs:
	dc.w	0, $132, $18E, $1E4
; ================================

cfFF_Pan:
	move.b	$17(a3), d1
	andi.b	#$3F, d1
	or.b	(a4)+, d1
	move.b	d1, $17(a3)
	move.b	#$B4, d0
	bra.w	WriteFM1Main
GetFrequency_A:
	subi.b	#$80, d5
	bne.w	loc_BA30C
	_bset	#1, 0(a3)	; set 'at rest'
	bra.w	DoNoteOff_A
loc_BA30C:
	move.w	#0, d6
	move.b	$21(a3), d6	; get Chord Mode track count
	beq.w	GetFMFreq	; if disabled, branch
	subq.b	#2, d6
	movea.l	a3, a5
	bsr.w	GetFMFreq
-
	adda.w	#$30, a3
	move.b	(a4)+, d5
	bsr.w	GetFMFreq
	dbf	d6, -

	movea.l	a5, a3
	rts

GetFMFreq:
	add.b	5(a3), d5
	andi.w	#$3F, d5
	lea	(FMFreqs).l, a0
	lsl.w	#1, d5
	move.w	(a0,d5.w), $C(a3)
	rts

ReadRawFreq:
	lsl.w	#8, d5
	add.b	(a4)+, d5
	moveq	#0, d0
	move.b	5(a3), d0
	bpl.w	loc_BA35C
	ori.w	#$FF00, d0
loc_BA35C:
	add.w	d0, d5
	move.w	d5, $C(a3)
	rts
; -----------------------------------------------------------------------
DoSoundQueue:
	moveq	#0, d0
	moveq	#0, d1
	lea	Sound_queue&$FFFFFF, a0
	lea	Current_sfx_priority, a1
	lea	(SoundPriorities).l, a2
	move.w	#2, d6		; 3 Sound Queue	Slots
-
	move.b	(a0), d0
	move.w	d0, d2
	cmpi.b	#$D8, d2
	bcc.w	loc_BA3B2	; branch if Sound ID >= D8
	move.b	#0, (a0)+
	subi.w	#$81, d0
	bmi.w	+	; branch if Sound ID < 81
	move.b	(a2,d0.w), d1	; get Priority of SoundID
	bmi.w	loc_BA3B6	; negative - execute always
	cmp.b	(a1), d1	; compare with current SFX priority
	bcs.w	+	; new <	old - jump and ignore
	move.b	d1, (a1)	; else set new Priority	(D008)
	move.b	d2, Play_sound_ID	; put into "execution" slot
+
	dbf	d6, -
	rts
loc_BA3B2:
	move.b	#0, (a0)
loc_BA3B6:
	move.b	d2, Play_sound_ID
	btst	#0, d1
	beq.w	loc_BA3CA
	move.b	d2, Coord_flag_e0
loc_BA3CA:
	rts
; -----------------------------------------------------------------------
PlaySoundID:
	moveq	#0, d0
	btst	#7, Play_sound_ID
	beq.w	StopAllSound	; 00-7F	- Stop All
	move.b	Play_sound_ID, d0
	cmpi.b	#$A0, d0
	bcs.w	PlayMusic	; 80-9F	- Music
	cmpi.b	#$D8, d0
	bcs.w	PlaySFX		; A0-D7	- SFX
	cmpi.b	#$D8, d0
	bcs.w	StopAllSound
	cmpi.b	#$E0, d0
	bcs.w	PlaySpcSFX	; D8-DF	- Special SFX
	cmpi.b	#$E4, d0
	bcs.w	PlaySnd_Command	; E0-E3	- Special Commands
	bra.w	StopAllSound	; E4-FF	- Stop All

PlaySnd_Command:
	subi.b	#$E0, d0	; Note:	only E0	and E1 are valid
	andi.l	#$FF, d0
	lsl.w	#2, d0
	jsr	CmdJumpTable(pc,d0.w)
	bra.w	loc_BA5C2

; ======================
CmdJumpTable:
	bra.w	FadeOutMusic
	bra.w	StopSFX
; ======================

PlaySFX:
	move.b	#0, Track_timer&$FFFFFF
	move.w	d0, -(sp)
	bsr.w	loc_BA656
	move.w	(sp)+, d0
	subi.b	#$A0, d0
	lea	(SFXPtrs).l, a0
	bsr.w	SndDrv_ReadPtr
	move.w	#0, d5
	move.b	(a0)+, d5
	subq.b	#1, d5
loc_BA44E:
	move.b	1(a0), d0
	subq.b	#2, d0
	lsl.b	#2, d0
	lea	(loc_BA49C).l, a1
	movea.l	(a1,d0.w), a2
	_bset	#2, 0(a2)
	adda.l	#$90, a2
	movea.l	a2, a1
	moveq	#0, d0
	moveq	#$B, d6
-
	move.l	d0, (a1)+
	dbf	d6, -

	movea.l	a0, a3
	bsr.w	SetMaxRelRate
	movea.l	a2, a1
	move.w	#8, d6
-
	move.b	(a0)+, (a1)+
	dbf	d6, -

	move.w	#1, $A(a2)
	adda.w	#$30, a2
	dbf	d5, loc_BA44E

	bra.w	loc_BA5C2

; ========================
loc_BA49C:
	dc.l	Music_tracks+$90
	dc.l	Music_tracks+$90
	dc.l	Music_tracks+$C0
	dc.l	Music_tracks+$F0
	dc.l	SFX_tracks
; ========================

PlaySpcSFX:
	subi.b	#$D8, d0
	lea	(SpcSFXPtrs).l, a0
	bsr.w	SndDrv_ReadPtr
	move.w	#0, d5
	move.b	(a0)+, d5
	move.w	#8, d6
	lea	Special_SFX_tracks, a1
	movea.l	a1, a2
loc_BA4D0:
	move.b	(a0)+, (a1)+
	dbf	d6, loc_BA4D0
	move.w	#1, $A(a2)
	bset	#2, Music_tracks+$90
	bra.w	loc_BA5C2
PlayMusic:
	subi.b	#$81, d0
	bcs.w	loc_BA5C2
	move.l	d0, -(sp)
	bsr.w	SilenceAll
	move.l	(sp)+, d0
PlayMusic_JmpIn:
	lea	(MusicTempo).l, a0
	btst	#6, $00FFFFF8
	beq.w	+				; branch if NTSC version
	lea	(loc_B8100).l, a0
+
	move.b	(a0,d0.w), Init_tempo_value
	move.b	(a0,d0.w), Tempo_timeout
	lea	(loc_B8120).l, a0
	move.b	(a0,d0.w), ($FFD01D).l
	lea	(MusicPtrs).l, a0
	bsr.w	SndDrv_ReadPtr
	moveq	#0, d5
	move.b	(a0)+, d5
	subq.b	#1, d5
	lea	Music_tracks, a2
loc_BA544:
	movea.l	a2, a1
	move.w	#8, d6
loc_BA54A:
	move.b	(a0)+, (a1)+
	dbf	d6, loc_BA54A

	move.w	#1, $A(a2)
	move.b	#$30, 9(a2)
	adda.l	#$30, a2
	dbf	d5, loc_BA544

	move.b	#4, $00FFD0F1
	move.b	#5, $00FFD121
	move.b	#6, $00FFD151
	btst	#6, $00FFFFF8
	beq.w	loc_BA5C2		; branch if NTSC version
	move.b	$00FFD01D, d0
	move.b	d0, $00FFD032
	move.b	d0, $00FFD062
	move.b	d0, $00FFD092
	move.b	d0, $00FFD0C2
	move.b	d0, $00FFD0F2
	move.b	d0, $00FFD122
	move.b	d0, $00FFD152
	bra.w	loc_BA5C2
StopAllSound:
	bsr.w	SilenceAll
loc_BA5C2:
	move.b	#$80, Play_sound_ID
	rts

SndDrv_ReadPtr:
	lsl.w	#1, d0
	move.w	(a0,d0.w), d1
	movea.l	#0, a0
	rol.w	#8, d1
	movea.w	d1, a0
	adda.l	#SoundDriverBase, a0
	rts

SilenceAll:
	move.b	#$2B, d0
	move.b	#$80, d1
	bsr.w	WriteFM1Main
	lea	Coord_flag_e0, a6
	move.b	(a6), d0
	move.b	Track_timer&$FFFFFF, d1
	move.w	#$83, d6
loc_BA602:
	move.l	#0, (a6)+
	dbf	d6, loc_BA602
	move.b	d0, Coord_flag_e0
	move.b	d1, Track_timer&$FFFFFF
	bsr.w	SilenceFM
	bsr.w	SilencePSG
	rts
; -----------------------------------------------------------------------
DoTempo:
	lea	Init_tempo_value, a0
	lea	Tempo_timeout, a1
	tst.b	(a0)
	beq.w	loc_BA654
	subq.b	#1, (a1)
	bne.w	loc_BA654
	move.b	(a0), (a1)
	lea	Music_tracks, a0
	move.w	#5, d6
-
	addq.w	#1, $A(a0)	; delay	all tracks by 1	frame
	adda.l	#$30, a0
	dbf	d6, -
loc_BA654:
	rts

loc_BA656:
	lea	SFX_tracks, a5
	exg	a5, a3
	moveq	#2, d7
loc_BA660:
	_tst.w	0(a3)
	bpl.w	loc_BA676
	_move.b	#0, 0(a3)
	bsr.w	DoNoteOff_A
	bsr.w	RestoreBGMChn
loc_BA676:
	adda.w	#$30, a3
	dbf	d7, loc_BA660
	exg	a5, a3
	rts
StopSFX:
	lea	SFX_tracks, a5
	exg	a5, a3
	moveq	#2, d7
loc_BA68C:
	_tst.w	0(a3)
	bpl.w	loc_BA6A2
	_move.b	#0, 0(a3)
	bsr.w	DoNoteOff_A
	bsr.w	RestoreBGMChn
loc_BA6A2:
	adda.w	#$30, a3
	dbf	d7, loc_BA68C
	lea	Special_SFX_tracks, a3
	_tst.w	0(a3)
	beq.w	loc_BA6CA
	_move.b	#0, 0(a3)
	bsr.w	DoNoteOff_A
	suba.w	#$90, a3
	bsr.w	RestoreBGMChn
loc_BA6CA:
	exg	a5, a3
	rts
FadeOutMusic:
	move.b	#$28, Fade_out_remain	; Fade Ticks: 28h
	move.b	#4, Fade_timeout	; Fade Timeout:	04
	move.b	#0, Music_tracks	; disable Drum Track
	lea	Music_tracks+$90, a0
	moveq	#0, d6
	move.b	$21(a0), d6		; Chord	Mode ...
	beq.w	loc_BA724
	subq.w	#1, d6
	lea	Music_tracks+$C0, a1
loc_BA6FE:
	move.b	$20(a0), $20(a1)	; copy Algorithm
	move.b	$1C(a0), $1C(a1)	; copy TL Operator values 1-4
	move.b	$27(a0), $27(a1)
	move.b	$1E(a0), $1E(a1)
	move.b	$1F(a0), $1F(a1)
	adda.w	#$30, a1
	dbf	d6, loc_BA6FE
loc_BA724:
	rts
; -----------------------------------------------------------------------
DoFading:
	moveq	#0, d0
	move.b	Fade_out_remain, d0
	beq.w	loc_BA774
	move.b	Fade_timeout, d0
	beq.w	loc_BA744
	subq.b	#1, Fade_timeout
	rts
loc_BA744:
	subq.b	#1, Fade_out_remain
	beq.w	SilenceAll
	move.b	#4, Fade_timeout
	lea	Music_tracks+$30, a3
	move.w	#4, d6
-
	addq.b	#1, 8(a3)
	move.b	8(a3), d3
	bsr.w	RefreshVolume
	adda.w	#$30, a3
	dbf	d6, -
loc_BA774:
	rts

RestoreBGMChn:
	movea.l	a3, a6
	suba.l	#$90, a3
	_bclr	#2, 0(a3)
	move.b	7(a3), d0
	andi.w	#$FF, d0
	lea	(FMInsPtrs).l, a0
	bsr.w	SndDrv_ReadPtr
	bsr.w	JmpTo_SetFMIns
	movea.l	a6, a3
	rts
SetMaxRelRate:
	move.w	#$80, d0
	move.w	#$FF, d1
	moveq	#3, d7
-
	bsr.w	WriteFMIorII
	addq.w	#4, d0
	dbf	d7, -
	rts
SilenceFM:
	move.w	#0, d7
	moveq	#6, d6
	move.b	#$28, d0
	move.b	#0, d1
-
	bsr.w	WriteFMIorII
	addq.b	#1, d1
	dbf	d6, -
	move.w	#$40, d0
	move.w	#$FF, d1
	move.w	#2, d7
-
	move.w	#3, d6
-
	bsr.w	WriteFMI
	bsr.w	WriteFMII
	addq.w	#4, d0
	dbf	d6, -

	subi.w	#$F, d0
	dbf	d7, --
	rts
SilencePSG:
	lea	(PSGMuteVals).l, a0
	move.b	(a0)+, $00C00011
	move.b	(a0)+, $00C00011
	move.b	(a0)+, $00C00011
	move.b	(a0)+, $00C00011
	rts

; ===============================
PSGMuteVals:
	dc.b	$9F, $BF, $DF, $FF
; ===============================
	
loc_BA818:
	dc.b	$B0, $B4, $40, $48, $44, $4C, $30, $38, $34, $3C, $50, $58, $54, $5C, $60, $68
	dc.b	$64, $6C, $70, $78, $74, $7C, $80, $88, $84, $8C ;0x0 (0x000BA818-0x000BA832, Entry count: 0x0000001A)
SetFMIns:
	moveq	#$19, d6
	lea	(loc_BA818).l, a1
	bsr.w	StopZ80
loc_BA83E:
	move.b	(a1)+, d0
	move.b	(a0)+, d1
	cmpi.b	#$B0, d0
	beq.s	loc_BA88A	; B0 - Algorithm
	cmpi.b	#$40, d0
	beq.s	loc_BA890	; 40 - Total Level Op 1
	cmpi.b	#$48, d0
	beq.s	loc_BA896	; 48 - Total Level Op 2
	cmpi.b	#$44, d0
	beq.s	loc_BA89C	; 44 - Total Level Op 3
	cmpi.b	#$4C, d0
	beq.s	loc_BA8A2	; 4C - Total Level Op 4
	cmpi.b	#$B4, d0
	beq.s	loc_BA8A8	; B4 - Pan/AMS/FMS
loc_BA866:
	_btst	#2, 0(a3)
	bne.s	loc_BA872
	bsr.w	loc_BA98C
loc_BA872:
	dbf	d6, loc_BA83E
	move.w	#0, ($A11100).l

	move.b	8(a3), d3	; load Track Volume
	beq.s	+
	bra.w	RefreshVolume
+
	rts

loc_BA88A:
	move.b	d1, $20(a3)
	bra.s	loc_BA866
loc_BA890:
	move.b	d1, $1C(a3)
	bra.s	loc_BA866
loc_BA896:
	move.b	d1, $27(a3)
	bra.s	loc_BA866
loc_BA89C:
	move.b	d1, $1E(a3)
	bra.s	loc_BA866
loc_BA8A2:
	move.b	d1, $1F(a3)
	bra.s	loc_BA866
loc_BA8A8:
	move.b	d1, $17(a3)
	bra.s	loc_BA866
RefreshVolume:
	move.b	$20(a3), d5
	andi.w	#7, d5
	lsl.w	#2, d5
	jmp	loc_BA8BC(pc,d5.w)

; ==========================
loc_BA8BC:
	bra.w	loc_BA906	; Algo 00 (Output Op. 4)
	bra.w	loc_BA906	; Algo 01 (Output Op. 4)
	bra.w	loc_BA906	; Algo 02 (Output Op. 4)
	bra.w	loc_BA906	; Algo 03 (Output Op. 4)
	bra.w	loc_BA8F8	; Algo 04 (Output Op. 2-4)
	bra.w	loc_BA8EA	; Algo 05 (Output Op. 2-4)
	bra.w	loc_BA8EA	; Algo 06 (Output Op. 2-3-4)
	bra.w	loc_BA8DC	; Algo 07 (Output Op. 1-2-3-4)
; ==========================

loc_BA8DC:
	move.b	#$40, d0
	move.b	d3, d1
	add.b	$1C(a3), d1
	bsr.w	WriteFMIorII
loc_BA8EA:
	move.b	#$44, d0
	move.b	d3, d1
	add.b	$1E(a3), d1
	bsr.w	WriteFMIorII
loc_BA8F8:
	move.b	#$48, d0
	move.b	d3, d1
	add.b	$27(a3), d1
	bsr.w	WriteFMIorII
loc_BA906:
	move.b	#$4C, d0
	move.b	d3, d1
	add.b	$1F(a3), d1
	bsr.w	WriteFMIorII
	rts

DoNoteOn_A:
	_btst	#1, 0(a3)
	bne.w	loc_BA952
	move.w	#0, d6
	move.b	$21(a3), d6	; get Chord Mode track count
	beq.w	DoNoteOn	; disabled - do	once
	subq.b	#1, d6
	movea.l	a3, a5
-
	bsr.w	DoNoteOn
	adda.w	#$30, a3
	dbf	d6, -
	movea.l	a5, a3
	rts
DoNoteOn:
	move.b	#$28, d0
	move.b	1(a3), d1
	ori.b	#$F0, d1
	bsr.w	WriteFM1Main
	rts
loc_BA952:
	rts
DoNoteOff_A:
	_btst	#1, 0(a3)	; is in	'Hold Mode'?
	bne.w	loc_BA98A	; if so, return
	move.w	#0, d6
	move.b	$21(a3), d6	; get Chord Mode track count
	beq.w	FMNoteOff	; disabled - jump (execute once)
	subq.b	#1, d6		; loop TrkRAM[21h] times
	movea.l	a3, a5
loc_BA96E:
	bsr.w	FMNoteOff
	adda.w	#$30, a3
	dbf	d6, loc_BA96E

	movea.l	a5, a3
	rts

FMNoteOff:
	move.b	#$28, d0
	move.b	1(a3), d1
	bsr.w	WriteFM1Main
loc_BA98A:
	rts
loc_BA98C:
	btst	#2, 1(a3)
	bne.s	loc_BA9BE
	add.b	1(a3), d0
loc_BA998:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BA998
	move.b	d0, $A04000
loc_BA9AA:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BA9AA
	move.b	d1, $A04001
	rts
loc_BA9BE:
	move.b	1(a3), d2
	bclr	#2, d2
	add.b	d2, d0
	move.b	$A04000, d2
	btst	#7, d2
	move.b	d0, $A04002
loc_BA9D8:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BA9D8
	move.b	d1, $A04003
	rts

WriteFMIorII:
	_btst	#2, 0(a3)
	bne.w	loc_BAA90
	btst	#2, 1(a3)
	bne.w	WriteFMIIPart
	add.b	1(a3), d0
WriteFM1Main:
	_btst	#2, 0(a3)
	bne.w	loc_BAA90	; overridden - return
WriteFMI:
	bsr.w	StopZ80
loc_BAA12:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BAA12
	move.b	d0, $A04000
loc_BAA24:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BAA24
	move.b	d1, $A04001
loc_BAA36:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BAA36
	move.w	#0, ($A11100).l
	rts

WriteFMIIPart:
	move.b	1(a3), d2
	bclr	#2, d2
	add.b	d2, d0
WriteFMII:
	bsr.w	StopZ80
	move.b	$A04000, d2
	btst	#7, d2
	move.b	d0, $A04002
loc_BAA6A:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BAA6A
	move.b	d1, $A04003
loc_BAA7C:
	move.b	$A04000, d2
	btst	#7, d2
	bne.s	loc_BAA7C
	move.w	#0, ($A11100).l
loc_BAA90:
	rts
StopZ80:
	move.w	#$100, ($A11100).l
loc_BAA9A:
	btst	#0, ($A11100).l
	bne.s	loc_BAA9A
	btst	#7, ($A01FFD).l
	beq.w	loc_BAAC4
	move.w	#0, ($A11100).l
	nop
	nop
	nop
	nop
	nop
	bra.s	StopZ80
loc_BAAC4:
	rts

FMFreqs:
	dc.w	0
	dc.w	$0A69
	dc.w	$0A8D
	dc.w	$0AB4
	dc.w	$0ADD
	dc.w	$0B09
	dc.w	$0B37
	dc.w	$0B68
	dc.w	$0B9C
	dc.w	$0BD3
	dc.w	$0C0D
	dc.w	$0C4B
	dc.w	$0C8C
	dc.w	$1269
	dc.w	$128D
	dc.w	$12B4
	dc.w	$12DD
	dc.w	$1309
	dc.w	$1337
	dc.w	$1368
	dc.w	$139C
	dc.w	$13D3
	dc.w	$140D
	dc.w	$144B
	dc.w	$148C
	dc.w	$1A69
	dc.w	$1A8D
	dc.w	$1AB4
	dc.w	$1ADD
	dc.w	$1B09
	dc.w	$1B37
	dc.w	$1B68
	dc.w	$1B9C
	dc.w	$1BD3
	dc.w	$1C0D
	dc.w	$1C4B
	dc.w	$1C8C
	dc.w	$2269
	dc.w	$228D
	dc.w	$22B4
	dc.w	$22DD
	dc.w	$2309
	dc.w	$2337
	dc.w	$2368
	dc.w	$239C
	dc.w	$23D3
	dc.w	$240D
	dc.w	$244B
	dc.w	$248C
	dc.w	$2A69
	dc.w	$2A8D
	dc.w	$2AB4
	dc.w	$2ADD
	dc.w	$2B09
	dc.w	$2B37
	dc.w	$2B68
	dc.w	$2B9C
	dc.w	$2BD3
	dc.w	$2C0D
	dc.w	$2C4B
	dc.w	$2C8C
	dc.w	$3269
	dc.w	$328D
	dc.w	$32B4
	dc.w	$32DD
	dc.w	$3309
	dc.w	$3337
	dc.w	$3368
	dc.w	$339C
	dc.w	$33D3
	dc.w	$340D
	dc.w	$344B
	dc.w	$348C
	dc.w	$3A69
	dc.w	$3A8D
	dc.w	$3AB4
	dc.w	$3ADD
	dc.w	$3B09
	dc.w	$3B37
	dc.w	$3B68
	dc.w	$3B9C
	dc.w	$3BD3
	dc.w	$3C0D
	dc.w	$3C4B
	dc.w	$3C8C

	dc.b	$06, $06, $06, $06, $06, $06, $06, $F9, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C ;0xA0
	dc.b	$0C, $F9, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03
	dc.b	$06, $03, $03, $06, $03, $03, $06, $03, $03, $F9 ;0xC0

loc_BABA0:
	dc.b	$EF, $41, $BF, $06 ;0x0 (0x000BABA0-0x000BABA4, Entry count: 0x00000004)
	dc.b	$BE
	dc.b	$BF, $BA, $1E ;0x0 (0x000BABA5-0x000BABA8, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$C1
	dc.b	$BD, $06 ;0x0 (0x000BABAB-0x000BABAD, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $BA, $18 ;0x0 (0x000BABAE-0x000BABB1, Entry count: 0x00000003) [Unknown data]
	dc.b	$B6
	dc.b	$03 ;0x0 (0x000BABB2-0x000BABB3, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$E6 ;0x0 (0x000BABB4-0x000BABB5, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$18 ;0x0 (0x000BABB6-0x000BABB7, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BABB8-0x000BABB9, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BC
	dc.b	$B9, $BC, $BF, $09 ;0x0 (0x000BABBB-0x000BABBF, Entry count: 0x00000004) [Unknown data]
	dc.b	$BC
	dc.b	$BF, $06 ;0x0 (0x000BABC0-0x000BABC2, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$18 ;0x0 (0x000BABC3-0x000BABC4, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$E6 ;0x0 (0x000BABC5-0x000BABC6, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BA
	dc.b	$B7, $BE, $BC, $BA, $0C ;0x0 (0x000BABC8-0x000BABCD, Entry count: 0x00000005) [Unknown data]
	dc.b	$B9
	dc.b	$06 ;0x0 (0x000BABCE-0x000BABCF, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$B9, $03 ;0x0 (0x000BABD0-0x000BABD2, Entry count: 0x00000002) [Unknown data]
	dc.b	$B7
	dc.b	$B5, $24 ;0x0 (0x000BABD3-0x000BABD5, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BABD6-0x000BABD7, Entry count: 0x00000001) [Unknown data]
	dc.b	$BE
	dc.b	$09 ;0x0 (0x000BABD8-0x000BABD9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BABDA-0x000BABDB, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$1B ;0x0 (0x000BABDC-0x000BABDD, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BE
	dc.b	$BF, $C1, $C6, $18 ;0x0 (0x000BABE0-0x000BABE4, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BD
	dc.b	$C2, $C6, $C9, $C8, $0C ;0x0 (0x000BABE7-0x000BABEC, Entry count: 0x00000005) [Unknown data]
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BABED-0x000BABEE, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$C8
	dc.b	$06 ;0x0 (0x000BABF1-0x000BABF2, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$0C ;0x0 (0x000BABF3-0x000BABF4, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$03 ;0x0 (0x000BABF5-0x000BABF6, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$C8
	dc.b	$06 ;0x0 (0x000BABF8-0x000BABF9, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$0C ;0x0 (0x000BABFA-0x000BABFB, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BABFC-0x000BABFD, Entry count: 0x00000001) [Unknown data]
	dc.b	$C9
	dc.b	$18 ;0x0 (0x000BABFE-0x000BABFF, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C6, $30 ;0x0 (0x000BAC00-0x000BAC02, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$EF
	dc.b	$40, $EC, $30, $C1, $02 ;0x0 (0x000BAC05-0x000BAC0A, Entry count: 0x00000005) [Unknown data]
	dc.b	$BE
	dc.b	$BA, $EC, $FE, $BF, $BC, $B8, $EC, $FE, $F7, $00, $10, $F1 ;0x0 (0x000BAC0B-0x000BAC17, Entry count: 0x0000000C) [Unknown data]
	dc.b	$FF
	dc.b	$EC, $10, $E4 ;0x0 (0x000BAC18-0x000BAC1B, Entry count: 0x00000003) [Unknown data]
	dc.b	$10
	dc.b	$EF, $44, $E6, $30, $E6, $30, $E6, $30, $BA, $03 ;0x0 (0x000BAC1C-0x000BAC26, Entry count: 0x0000000A) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $06 ;0x0 (0x000BAC27-0x000BAC29, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$03 ;0x0 (0x000BAC2A-0x000BAC2B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BE
	dc.b	$BF, $06 ;0x0 (0x000BAC2C-0x000BAC2E, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$18, $E7, $30, $E6, $30, $E6, $1E, $BA, $06 ;0x0 (0x000BAC2F-0x000BAC38, Entry count: 0x00000009) [Unknown data]
	dc.b	$BF
	dc.b	$BE, $E6 ;0x0 (0x000BAC39-0x000BAC3B, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$BA
	dc.b	$B8, $24, $E7, $30, $E6, $30, $E6, $1E, $C1, $06 ;0x0 (0x000BAC3D-0x000BAC47, Entry count: 0x0000000A) [Unknown data]
	dc.b	$BA
	dc.b	$BC, $E6 ;0x0 (0x000BAC48-0x000BAC4A, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$C4, $24, $E7, $30, $E6, $30, $E6, $24, $BF, $06 ;0x0 (0x000BAC4C-0x000BAC56, Entry count: 0x0000000A) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BAC57-0x000BAC58, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BAC5A-0x000BAC5B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$12 ;0x0 (0x000BAC5C-0x000BAC5D, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BAC5E-0x000BAC5F, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$E6, $30, $E6, $06, $BD, $BB, $BF, $BD, $0B ;0x0 (0x000BAC60-0x000BAC69, Entry count: 0x00000009) [Unknown data]
	dc.b	$BB
	dc.b	$07 ;0x0 (0x000BAC6A-0x000BAC6B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BAC6C-0x000BAC6D, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BF
	dc.b	$C1, $18 ;0x0 (0x000BAC70-0x000BAC72, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$BF
	dc.b	$E6 ;0x0 (0x000BAC74-0x000BAC75, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BC
	dc.b	$BA, $18 ;0x0 (0x000BAC77-0x000BAC79, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BAC7A-0x000BAC7B, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BC
	dc.b	$B8, $BA, $0C ;0x0 (0x000BAC7E-0x000BAC81, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$12 ;0x0 (0x000BAC82-0x000BAC83, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BAC86-0x000BAC87, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BAC88-0x000BAC89, Entry count: 0x00000001) [Unknown data]
	dc.b	$BB
	dc.b	$12 ;0x0 (0x000BAC8A-0x000BAC8B, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$BF, $1E ;0x0 (0x000BAC8C-0x000BAC8E, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$1E
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BAC91-0x000BAC92, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $E6 ;0x0 (0x000BAC93-0x000BAC95, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$BA
	dc.b	$BF, $BD, $0C ;0x0 (0x000BAC97-0x000BAC9A, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BAC9B-0x000BAC9C, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$BF, $E6 ;0x0 (0x000BAC9D-0x000BAC9F, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$BD
	dc.b	$C1, $BD, $0C ;0x0 (0x000BACA1-0x000BACA4, Entry count: 0x00000003) [Unknown data]
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BACA5-0x000BACA6, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C6, $E6, $30, $E7, $30, $E6, $30, $E6, $1E, $BA, $06 ;0x0 (0x000BACA7-0x000BACB2, Entry count: 0x0000000B) [Unknown data]
	dc.b	$BF
	dc.b	$BE, $E6 ;0x0 (0x000BACB3-0x000BACB5, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$BA
	dc.b	$B8, $24, $E6, $30, $E7, $30, $E6, $1E, $BF, $06 ;0x0 (0x000BACB7-0x000BACC1, Entry count: 0x0000000A) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BACC2-0x000BACC3, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$C4, $06, $E6, $30, $E6, $30, $E7, $30, $E6, $1E, $BF, $06 ;0x0 (0x000BACC4-0x000BACD0, Entry count: 0x0000000C) [Unknown data]
	dc.b	$BE
	dc.b	$BA, $E6 ;0x0 (0x000BACD1-0x000BACD3, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$B7, $24, $E6, $30, $E7, $30, $E6, $1E, $B5, $06 ;0x0 (0x000BACD5-0x000BACDF, Entry count: 0x0000000A) [Unknown data]
	dc.b	$B8
	dc.b	$03 ;0x0 (0x000BACE0-0x000BACE1, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BACE2-0x000BACE3, Entry count: 0x00000001) [Unknown data]
	dc.b	$BE
	dc.b	$03 ;0x0 (0x000BACE4-0x000BACE5, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$24 ;0x0 (0x000BACE6-0x000BACE7, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BACE8-0x000BACE9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$E6 ;0x0 (0x000BACEA-0x000BACEB, Entry count: 0x00000001) [Unknown data]
	dc.b	$24
	dc.b	$C6
	dc.b	$06 ;0x0 (0x000BACED-0x000BACEE, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$E7 ;0x0 (0x000BACEF-0x000BACF0, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$BE
	dc.b	$06 ;0x0 (0x000BACF2-0x000BACF3, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$BE, $BA, $12 ;0x0 (0x000BACF4-0x000BACF7, Entry count: 0x00000003) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BACF8-0x000BACF9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$E6 ;0x0 (0x000BACFA-0x000BACFB, Entry count: 0x00000001) [Unknown data]
	dc.b	$24
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BACFD-0x000BACFE, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$E6 ;0x0 (0x000BACFF-0x000BAD00, Entry count: 0x00000001) [Unknown data]
	dc.b	$18
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BAD02-0x000BAD03, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$E7 ;0x0 (0x000BAD04-0x000BAD05, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BAD07-0x000BAD08, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BAD09-0x000BAD0A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$12 ;0x0 (0x000BAD0B-0x000BAD0C, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$18 ;0x0 (0x000BAD0D-0x000BAD0E, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BAD0F-0x000BAD10, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$E6 ;0x0 (0x000BAD11-0x000BAD12, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BAD14-0x000BAD15, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BAD16-0x000BAD17, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $06 ;0x0 (0x000BAD18-0x000BAD1A, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BAD1B-0x000BAD1C, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BAD1D-0x000BAD1E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BAD1F-0x000BAD20, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BAD21-0x000BAD22, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $E7 ;0x0 (0x000BAD23-0x000BAD25, Entry count: 0x00000002) [Unknown data]
	dc.b	$0C
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BAD27-0x000BAD28, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $0C ;0x0 (0x000BAD29-0x000BAD2B, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BAD2C-0x000BAD2D, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$E6, $30, $E7, $30, $EF, $46, $B5, $24 ;0x0 (0x000BAD2E-0x000BAD36, Entry count: 0x00000008) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BAD37-0x000BAD38, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BAD39-0x000BAD3A, Entry count: 0x00000001) [Unknown data]
	dc.b	$1E
	dc.b	$06
	dc.b	$BD
	dc.b	$BC, $BA, $12 ;0x0 (0x000BAD3D-0x000BAD40, Entry count: 0x00000003) [Unknown data]
	dc.b	$C1
	dc.b	$1E ;0x0 (0x000BAD41-0x000BAD42, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BAD45-0x000BAD46, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$BF, $BD, $12 ;0x0 (0x000BAD47-0x000BAD4A, Entry count: 0x00000003) [Unknown data]
	dc.b	$BC
	dc.b	$1E ;0x0 (0x000BAD4B-0x000BAD4C, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B9
	dc.b	$06 ;0x0 (0x000BAD4F-0x000BAD50, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$BC, $BC, $12 ;0x0 (0x000BAD51-0x000BAD54, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $0C ;0x0 (0x000BAD55-0x000BAD57, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$30 ;0x0 (0x000BAD58-0x000BAD59, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$24 ;0x0 (0x000BAD5A-0x000BAD5B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BAD5C-0x000BAD5D, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BAD5E-0x000BAD5F, Entry count: 0x00000001) [Unknown data]
	dc.b	$1E
	dc.b	$06
	dc.b	$BD
	dc.b	$BC, $C2, $12 ;0x0 (0x000BAD62-0x000BAD65, Entry count: 0x00000003) [Unknown data]
	dc.b	$C1
	dc.b	$1E ;0x0 (0x000BAD66-0x000BAD67, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BAD6A-0x000BAD6B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $BC, $12 ;0x0 (0x000BAD6C-0x000BAD6F, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$BA, $0C ;0x0 (0x000BAD70-0x000BAD72, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$B9
	dc.b	$BA, $BC, $B8, $12 ;0x0 (0x000BAD75-0x000BAD79, Entry count: 0x00000004) [Unknown data]
	dc.b	$B7
	dc.b	$1E ;0x0 (0x000BAD7A-0x000BAD7B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$18 ;0x0 (0x000BAD7C-0x000BAD7D, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$BE, $30 ;0x0 (0x000BAD7E-0x000BAD80, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F6
	dc.b	$96 ;0x0 (0x000BAD83-0x000BAD84, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE

loc_BAD85:
	dc.b	$EF, $40, $96, $30 ;0x0 (0x000BAD85-0x000BAD89, Entry count: 0x00000004)
	dc.b	$E6
	dc.b	$30
	dc.b	$92
	dc.b	$E6 ;0x0 (0x000BAD8C-0x000BAD8D, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$9D
	dc.b	$E7 ;0x0 (0x000BAD8F-0x000BAD90, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$9B
	dc.b	$E6 ;0x0 (0x000BAD92-0x000BAD93, Entry count: 0x00000001) [Unknown data]
	dc.b	$18
	dc.b	$9D
	dc.b	$0C ;0x0 (0x000BAD95-0x000BAD96, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$96, $30 ;0x0 (0x000BAD97-0x000BAD99, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$92
	dc.b	$E6 ;0x0 (0x000BAD9C-0x000BAD9D, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$94
	dc.b	$91, $96, $E7, $30, $E6, $30, $E7, $30, $E6, $30, $E6, $30, $F8, $9F ;0x0 (0x000BAD9F-0x000BADAD, Entry count: 0x0000000E) [Unknown data]
	dc.b	$00
	dc.b	$92, $E6 ;0x0 (0x000BADAE-0x000BADB0, Entry count: 0x00000002)
	dc.b	$30
	dc.b	$F8
	dc.b	$99 ;0x0 (0x000BADB2-0x000BADB3, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$92, $F8, $B3 ;0x0 (0x000BADB4-0x000BADB7, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$F8, $92 ;0x0 (0x000BADB8-0x000BADBA, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$92, $E6 ;0x0 (0x000BADBB-0x000BADBD, Entry count: 0x00000002)
	dc.b	$30
	dc.b	$F8
	dc.b	$8C ;0x0 (0x000BADBF-0x000BADC0, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$92, $F8, $A6 ;0x0 (0x000BADC1-0x000BADC4, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BADC5-0x000BADC6, Entry count: 0x00000001)
	dc.b	$30
	dc.b	$FB
	dc.b	$F4, $9E, $06, $0C, $06, $0C, $A2, $06 ;0x0 (0x000BADC8-0x000BADD0, Entry count: 0x00000008) [Unknown data]
	dc.b	$9E
	dc.b	$E6, $06, $06, $0C, $A5, $06 ;0x0 (0x000BADD1-0x000BADD7, Entry count: 0x00000006) [Unknown data]
	dc.b	$9E
	dc.b	$0C, $06, $E6, $06, $80, $0C ;0x0 (0x000BADD8-0x000BADDE, Entry count: 0x00000006) [Unknown data]
	dc.b	$A2
	dc.b	$A2, $A2, $06 ;0x0 (0x000BADDF-0x000BADE2, Entry count: 0x00000003) [Unknown data]
	dc.b	$A4
	dc.b	$0C ;0x0 (0x000BADE3-0x000BADE4, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$A2, $A2, $9D, $12 ;0x0 (0x000BADE5-0x000BADE9, Entry count: 0x00000004) [Unknown data]
	dc.b	$0C
	dc.b	$A2
	dc.b	$06 ;0x0 (0x000BADEB-0x000BADEC, Entry count: 0x00000001) [Unknown data]
	dc.b	$A4
	dc.b	$A2, $E6 ;0x0 (0x000BADED-0x000BADEF, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$06
	dc.b	$A1
	dc.b	$0C ;0x0 (0x000BADF2-0x000BADF3, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$A1, $9B, $9B, $06, $0C, $06, $0C, $A0, $06 ;0x0 (0x000BADF4-0x000BADFD, Entry count: 0x00000009) [Unknown data]
	dc.b	$9D
	dc.b	$9D, $A0, $0C ;0x0 (0x000BADFE-0x000BAE01, Entry count: 0x00000003) [Unknown data]
	dc.b	$9B
	dc.b	$06 ;0x0 (0x000BAE02-0x000BAE03, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$A2
	dc.b	$06 ;0x0 (0x000BAE05-0x000BAE06, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$0C, $0C, $06, $06, $06, $E6, $06, $A2, $9E, $A5, $0C ;0x0 (0x000BAE07-0x000BAE12, Entry count: 0x0000000B) [Unknown data]
	dc.b	$06
	dc.b	$A2
	dc.b	$0C ;0x0 (0x000BAE14-0x000BAE15, Entry count: 0x00000001) [Unknown data]
	dc.b	$A4
	dc.b	$12 ;0x0 (0x000BAE16-0x000BAE17, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$A2, $0C ;0x0 (0x000BAE18-0x000BAE1A, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$A4
	dc.b	$A2, $0C ;0x0 (0x000BAE1D-0x000BAE1F, Entry count: 0x00000002) [Unknown data]
	dc.b	$A4
	dc.b	$A5, $9D, $12 ;0x0 (0x000BAE20-0x000BAE23, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$A4
	dc.b	$06 ;0x0 (0x000BAE25-0x000BAE26, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$0C ;0x0 (0x000BAE27-0x000BAE28, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$06 ;0x0 (0x000BAE29-0x000BAE2A, Entry count: 0x00000001) [Unknown data]
	dc.b	$A1
	dc.b	$0C ;0x0 (0x000BAE2B-0x000BAE2C, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$A2, $06 ;0x0 (0x000BAE2D-0x000BAE2F, Entry count: 0x00000002) [Unknown data]
	dc.b	$A1
	dc.b	$0C ;0x0 (0x000BAE30-0x000BAE31, Entry count: 0x00000001) [Unknown data]
	dc.b	$9B
	dc.b	$9B, $06, $0C, $06, $0C, $A0, $06 ;0x0 (0x000BAE32-0x000BAE39, Entry count: 0x00000007) [Unknown data]
	dc.b	$9B
	dc.b	$0C ;0x0 (0x000BAE3A-0x000BAE3B, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$A0
	dc.b	$9B, $0C ;0x0 (0x000BAE3D-0x000BAE3F, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$A2
	dc.b	$0C ;0x0 (0x000BAE41-0x000BAE42, Entry count: 0x00000001) [Unknown data]
	dc.b	$A6
	dc.b	$A9, $A2, $A2, $30 ;0x0 (0x000BAE43-0x000BAE47, Entry count: 0x00000004) [Unknown data]
	dc.b	$FB
	dc.b	$0C, $F6, $60 ;0x0 (0x000BAE48-0x000BAE4B, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$96, $2A, $06, $E6, $06, $06, $24, $92, $0C, $06, $1E, $E6, $06, $8F, $12 ;0x0 (0x000BAE4C-0x000BAE5B, Entry count: 0x0000000F)
	dc.b	$91
	dc.b	$0C ;0x0 (0x000BAE5C-0x000BAE5D, Entry count: 0x00000001) [Unknown data]
	dc.b	$92
	dc.b	$96, $2A, $06, $E6, $06, $06, $24, $E6, $12, $12, $06, $F9, $E6 ;0x0 (0x000BAE5E-0x000BAE6B, Entry count: 0x0000000D) [Unknown data]
	dc.b	$24
	dc.b	$06
	dc.b	$91
	dc.b	$E6 ;0x0 (0x000BAE6E-0x000BAE6F, Entry count: 0x00000001) [Unknown data]
	dc.b	$2A
	dc.b	$97
	dc.b	$06, $E6, $30, $E6, $92, $24, $06, $06, $E6, $24, $06, $91, $E6, $30, $E7, $0C
	dc.b	$97, $97, $06 ;0x0 (0x000BAE71-0x000BAE84, Entry count: 0x00000013) [Unknown data]
	dc.b	$12
	dc.b	$99
	dc.b	$30, $E6, $0C, $0C, $0C, $06, $06, $E6, $06, $06, $0C, $0C, $06, $06, $E6, $06
	dc.b	$06, $0C, $0C, $06, $96, $E6 ;0x0 (0x000BAE86-0x000BAE9C, Entry count: 0x00000016) [Unknown data]
	dc.b	$30
	dc.b	$F9

loc_BAE9E:
	dc.b	$E5, $03, $EF, $42, $E3, $01, $01, $B2, $AE, $B5, $30 ;0x0 (0x000BAE9E-0x000BAEA9, Entry count: 0x0000000B)
	dc.b	$E6
	dc.b	$30
	dc.b	$AA
	dc.b	$AE, $B1, $E6 ;0x0 (0x000BAEAC-0x000BAEAF, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$B0
	dc.b	$AD, $A9, $E6 ;0x0 (0x000BAEB1-0x000BAEB4, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$AE
	dc.b	$AB, $A7, $E6 ;0x0 (0x000BAEB6-0x000BAEB9, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$AE
	dc.b	$B5, $B2, $E6 ;0x0 (0x000BAEBB-0x000BAEBE, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$B1
	dc.b	$AE, $AA, $E6 ;0x0 (0x000BAEC0-0x000BAEC3, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$AC
	dc.b	$B3, $B0, $A9, $B0, $AD, $AE, $B2, $B5, $E6, $30, $E6, $30, $E6, $30, $E6, $2A, $EC, $30, $E6 ;0x0 (0x000BAEC5-0x000BAED8, Entry count: 0x00000013) [Unknown data]
	dc.b	$03
	dc.b	$EC
	dc.b	$FC, $F7, $00, $10, $F8 ;0x0 (0x000BAEDA-0x000BAEDF, Entry count: 0x00000005) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BAEE0-0x000BAEE1, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$EC
	dc.b	$08, $EF, $42, $F8, $61 ;0x0 (0x000BAEE3-0x000BAEE8, Entry count: 0x00000005) [Unknown data]
	dc.b	$00
	dc.b	$BE, $C1, $BA, $E6 ;0x0 (0x000BAEE9-0x000BAEED, Entry count: 0x00000004)
	dc.b	$30
	dc.b	$F8
	dc.b	$59 ;0x0 (0x000BAEEF-0x000BAEF0, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$BD, $C1, $B8, $E6, $30, $E7, $30, $EF, $47, $F8, $DD ;0x0 (0x000BAEF1-0x000BAEFC, Entry count: 0x0000000B)
	dc.b	$00
	dc.b	$B7, $BA, $B3, $BC, $BF, $B8, $F8, $D4 ;0x0 (0x000BAEFD-0x000BAF05, Entry count: 0x00000008)
	dc.b	$00
	dc.b	$BA, $B7, $B3, $BC, $BF, $B8, $BA, $BE, $C1, $E6 ;0x0 (0x000BAF06-0x000BAF10, Entry count: 0x0000000A)
	dc.b	$30
	dc.b	$F6
	dc.b	$D1 ;0x0 (0x000BAF12-0x000BAF13, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BAF14-0x000BAF15, Entry count: 0x00000001)
	dc.b	$0C
	dc.b	$B3
	dc.b	$B7, $BA, $B8, $B3, $BC, $18 ;0x0 (0x000BAF17-0x000BAF1D, Entry count: 0x00000006) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B3
	dc.b	$B7, $BA, $B3, $BC, $B8, $B3, $BA, $B7, $B7, $B3, $BA, $12 ;0x0 (0x000BAF20-0x000BAF2C, Entry count: 0x0000000C) [Unknown data]
	dc.b	$B8
	dc.b	$B5, $B1, $1E ;0x0 (0x000BAF2D-0x000BAF30, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$12
	dc.b	$80
	dc.b	$1E ;0x0 (0x000BAF33-0x000BAF34, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B7
	dc.b	$B3, $BA, $B8, $BC, $B3, $18 ;0x0 (0x000BAF37-0x000BAF3D, Entry count: 0x00000006) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B3
	dc.b	$B7, $BA, $B3, $B8, $BC, $B3, $BA, $BD, $F9, $F8, $C9 ;0x0 (0x000BAF40-0x000BAF4B, Entry count: 0x0000000B) [Unknown data]
	dc.b	$FF
	dc.b	$B3, $BC, $B8, $12 ;0x0 (0x000BAF4C-0x000BAF50, Entry count: 0x00000004)
	dc.b	$B3
	dc.b	$BA, $B7, $B7, $B3, $BA, $06 ;0x0 (0x000BAF51-0x000BAF57, Entry count: 0x00000006) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $B8, $E6 ;0x0 (0x000BAF58-0x000BAF5B, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$F8
	dc.b	$B6 ;0x0 (0x000BAF5D-0x000BAF5E, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$B3, $BC, $B8, $12 ;0x0 (0x000BAF5F-0x000BAF63, Entry count: 0x00000004)
	dc.b	$B3
	dc.b	$BA, $B8, $B8, $B3, $BA, $06 ;0x0 (0x000BAF64-0x000BAF6A, Entry count: 0x00000006) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $B8, $E6 ;0x0 (0x000BAF6B-0x000BAF6E, Entry count: 0x00000003) [Unknown data]
	dc.b	$18
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BAF70-0x000BAF71, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $B8, $06 ;0x0 (0x000BAF72-0x000BAF75, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $B0, $E6, $30, $E7, $0C, $AF, $B6, $B3, $AF, $B3, $B6, $06 ;0x0 (0x000BAF76-0x000BAF83, Entry count: 0x0000000D) [Unknown data]
	dc.b	$B6
	dc.b	$AF, $B3, $12 ;0x0 (0x000BAF84-0x000BAF87, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B8, $B5, $24 ;0x0 (0x000BAF88-0x000BAF8B, Entry count: 0x00000003) [Unknown data]
	dc.b	$B6
	dc.b	$BA, $B1, $06 ;0x0 (0x000BAF8C-0x000BAF8F, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$B1, $B5, $E6 ;0x0 (0x000BAF90-0x000BAF93, Entry count: 0x00000003) [Unknown data]
	dc.b	$24
	dc.b	$B1
	dc.b	$B8, $B5, $06 ;0x0 (0x000BAF95-0x000BAF98, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$B3, $B0, $E6, $30, $E7, $0C, $AF, $B6, $B3, $AF, $B3, $B6, $06 ;0x0 (0x000BAF99-0x000BAFA6, Entry count: 0x0000000D) [Unknown data]
	dc.b	$AF
	dc.b	$B3, $B6, $12 ;0x0 (0x000BAFA7-0x000BAFAA, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B8, $B5, $30 ;0x0 (0x000BAFAB-0x000BAFAE, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B1
	dc.b	$B8, $B5, $B1, $B6, $BA, $B1, $BC, $B8, $06 ;0x0 (0x000BAFB1-0x000BAFBA, Entry count: 0x00000009) [Unknown data]
	dc.b	$B8
	dc.b	$B1, $B5, $E6 ;0x0 (0x000BAFBB-0x000BAFBE, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$B5, $B1, $B5, $B8, $B1, $0C ;0x0 (0x000BAFC0-0x000BAFC6, Entry count: 0x00000006) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $BC, $B1, $B8, $E7 ;0x0 (0x000BAFC7-0x000BAFCD, Entry count: 0x00000006) [Unknown data]
	dc.b	$0C
	dc.b	$B1
	dc.b	$B8, $B5, $B1, $BA, $B6, $B1, $BC, $B8, $06 ;0x0 (0x000BAFCF-0x000BAFD8, Entry count: 0x00000009) [Unknown data]
	dc.b	$F9
	dc.b	$BA, $B6, $BD, $BC, $BF, $B6, $18 ;0x0 (0x000BAFD9-0x000BAFE0, Entry count: 0x00000007)
	dc.b	$BA
	dc.b	$B6, $BD, $0C ;0x0 (0x000BAFE1-0x000BAFE4, Entry count: 0x00000003) [Unknown data]
	dc.b	$B6
	dc.b	$BC, $BF, $BF, $C2, $BA, $12 ;0x0 (0x000BAFE5-0x000BAFEB, Entry count: 0x00000006) [Unknown data]
	dc.b	$C1
	dc.b	$BA, $BD, $1E ;0x0 (0x000BAFEC-0x000BAFEF, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$12
	dc.b	$80
	dc.b	$BA, $C1, $BD, $0C ;0x0 (0x000BAFF2-0x000BAFF6, Entry count: 0x00000004) [Unknown data]
	dc.b	$BA
	dc.b	$BD, $B5, $12 ;0x0 (0x000BAFF7-0x000BAFFA, Entry count: 0x00000003) [Unknown data]
	dc.b	$BC
	dc.b	$B5, $B9, $1E ;0x0 (0x000BAFFB-0x000BAFFE, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F9

loc_BB001:
	dc.b	$C0, $30, $F7, $00, $14, $FA ;0x0 (0x000BB001-0x000BB007, Entry count: 0x00000006)
	dc.b	$FF
	dc.b	$F8, $FF ;0x0 (0x000BB008-0x000BB00A, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$F8, $ED ;0x0 (0x000BB00B-0x000BB00D, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $0C, $84, $06, $88, $88, $84, $03 ;0x0 (0x000BB00E-0x000BB016, Entry count: 0x00000008)
	dc.b	$03, $06 ;0x0 (0x000BB016-0x000BB018, Entry count: 0x00000002) [Unknown data]
	dc.b	$A0, $0C, $88, $06, $84, $0C, $C0, $06, $88, $84, $0C, $F8, $E4 ;0x0 (0x000BB018-0x000BB025, Entry count: 0x0000000D)
	dc.b	$00
	dc.b	$F8, $D2 ;0x0 (0x000BB026-0x000BB028, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $0C, $84, $06, $88, $88, $84, $03 ;0x0 (0x000BB029-0x000BB031, Entry count: 0x00000008)
	dc.b	$03, $06 ;0x0 (0x000BB031-0x000BB033, Entry count: 0x00000002) [Unknown data]
	dc.b	$A0, $0C, $88, $06, $84, $C0, $C0, $88, $84, $88, $0C, $88, $06, $88, $C0, $C0
	dc.b	$88, $84, $88, $0C, $88, $06, $84, $C0, $88, $C0, $84, $C0, $88, $C0, $84, $C0 ;0x0 (0x000BB033-0x000BB0A0, Entry count: 0x0000006D)
	dc.b	$88, $84, $84, $84, $0C, $88, $06, $84, $C0, $C0, $88, $84, $88, $0C, $88, $06
	dc.b	$84, $C0, $C0, $88, $03, $88, $84, $06, $C0, $88, $88, $84, $88, $C0, $88, $84 ;0x20
	dc.b	$88, $88, $C0, $84, $C0, $88, $84, $84, $84, $88, $06, $C0, $84, $C0, $88, $C0
	dc.b	$84, $88, $0C, $88, $06, $84, $C0, $88, $C0, $84, $88, $0C, $88, $06, $84, $C0 ;0x40
	dc.b	$88, $C0, $84, $84, $C0, $0C, $C0, $C0, $C0, $F7, $00, $02, $68 ;0x60
	dc.b	$FF
	dc.b	$88, $06, $84, $84, $84, $80, $03, $06 ;0x0 (0x000BB0A1-0x000BB0A9, Entry count: 0x00000008) [Unknown data]
	dc.b	$81, $03, $84, $06, $88, $03 ;0x0 (0x000BB0A9-0x000BB0AF, Entry count: 0x00000006)
	dc.b	$03, $F8, $6D ;0x0 (0x000BB0AF-0x000BB0B2, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$88, $C0, $84, $C0, $C0, $88, $84, $C0, $F8, $62 ;0x0 (0x000BB0B3-0x000BB0BD, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$88, $88, $84, $88, $88, $84, $80, $03, $80, $81, $06, $F8, $54 ;0x0 (0x000BB0BE-0x000BB0CB, Entry count: 0x0000000D)
	dc.b	$00
	dc.b	$88, $C0, $84, $C0, $C0, $88, $84, $C0, $F8, $49 ;0x0 (0x000BB0CC-0x000BB0D6, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $80, $03 ;0x0 (0x000BB0D7-0x000BB0EB, Entry count: 0x00000014)
	dc.b	$06, $03, $81, $03, $06, $03 ;0x0 (0x000BB0EB-0x000BB0F1, Entry count: 0x00000006) [Unknown data]
	dc.b	$80, $80, $81, $81, $84, $0C, $F6, $0F ;0x0 (0x000BB0F1-0x000BB0F9, Entry count: 0x00000008)
	dc.b	$FF
	dc.b	$88, $0C, $84, $88, $84, $06, $88, $0C, $88, $06, $84, $0C, $88, $84, $F9, $F8, $EF ;0x0 (0x000BB0FA-0x000BB10B, Entry count: 0x00000011)
	dc.b	$FF
	dc.b	$88, $0C, $84, $06, $88, $12, $84, $06, $88, $0C, $88, $06, $84, $12, $88, $06, $84, $0C ;0x0 (0x000BB10C-0x000BB11E, Entry count: 0x00000012)
	dc.b	$F9 ;0x0 (0x000BB11E-0x000BB11F, Entry count: 0x00000001) [Unknown data]
	dc.b	$88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $F7, $00, $03, $F3 ;0x0 (0x000BB11F-0x000BB12C, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$F9

loc_BB12E:
	dc.b	$EF, $48, $E6, $30, $E6, $30, $E6, $2A, $C2, $06 ;0x0 (0x000BB12D-0x000BB138, Entry count: 0x0000000B) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BD
	dc.b	$BA, $24, $E7, $30, $E6, $30, $E6, $2A, $06 ;0x0 (0x000BB13B-0x000BB144, Entry count: 0x00000009) [Unknown data]
	dc.b	$E6, $06, $B8, $B5, $C1, $12 ;0x0 (0x000BB144-0x000BB14A, Entry count: 0x00000006)
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BB14B-0x000BB14C, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BB14F-0x000BB150, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BB151-0x000BB152, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$0C ;0x0 (0x000BB153-0x000BB154, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$12 ;0x0 (0x000BB155-0x000BB156, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C4, $0C ;0x0 (0x000BB157-0x000BB159, Entry count: 0x00000002) [Unknown data]
	dc.b	$C2
	dc.b	$12 ;0x0 (0x000BB15A-0x000BB15B, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C2, $06 ;0x0 (0x000BB15C-0x000BB15E, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$E6 ;0x0 (0x000BB15F-0x000BB160, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BF
	dc.b	$BD, $0C ;0x0 (0x000BB162-0x000BB164, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $BA, $B8, $06 ;0x0 (0x000BB165-0x000BB169, Entry count: 0x00000004) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BB16A-0x000BB16B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$B5, $06 ;0x0 (0x000BB16C-0x000BB16E, Entry count: 0x00000002) [Unknown data]
	dc.b	$B3
	dc.b	$0C ;0x0 (0x000BB16F-0x000BB170, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BB171-0x000BB172, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$0C ;0x0 (0x000BB173-0x000BB174, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B0, $06 ;0x0 (0x000BB175-0x000BB177, Entry count: 0x00000002) [Unknown data]
	dc.b	$B1
	dc.b	$0C ;0x0 (0x000BB178-0x000BB179, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$06 ;0x0 (0x000BB17A-0x000BB17B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$0C ;0x0 (0x000BB17C-0x000BB17D, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$06 ;0x0 (0x000BB17E-0x000BB17F, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B3, $E6 ;0x0 (0x000BB180-0x000BB182, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$B5
	dc.b	$B3, $B1, $B3, $0C ;0x0 (0x000BB184-0x000BB188, Entry count: 0x00000004) [Unknown data]
	dc.b	$B1
	dc.b	$E3, $01, $01, $B5, $04 ;0x0 (0x000BB189-0x000BB18E, Entry count: 0x00000005) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $B8, $BC, $BD, $BA, $BF, $BD, $B8, $BD, $BC, $B5, $BA, $BC, $B8, $BF, $BD
	dc.b	$BC, $BA, $BD, $C1, $BF, $BD, $BF, $06 ;0x0 (0x000BB18F-0x000BB1A7, Entry count: 0x00000018) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB1A8-0x000BB1A9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$1E ;0x0 (0x000BB1AA-0x000BB1AB, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$B5
	dc.b	$04 ;0x0 (0x000BB1AE-0x000BB1AF, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $B8, $BD, $BC, $BA, $BF, $BD, $B8, $C1, $BF, $BA, $C2, $C1, $BC, $C1, $BF
	dc.b	$BA, $BF, $BD, $BC, $C2, $C1, $C4, $06 ;0x0 (0x000BB1B0-0x000BB1C8, Entry count: 0x00000018) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB1C9-0x000BB1CA, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$1E ;0x0 (0x000BB1CB-0x000BB1CC, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$E3
	dc.b	$00, $00, $E6 ;0x0 (0x000BB1CF-0x000BB1D2, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BB1D4-0x000BB1D5, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BB1D6-0x000BB1D7, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$0C ;0x0 (0x000BB1D8-0x000BB1D9, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BB1DA-0x000BB1DB, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB1DC-0x000BB1DD, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$12 ;0x0 (0x000BB1DE-0x000BB1DF, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$0C ;0x0 (0x000BB1E0-0x000BB1E1, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$2A ;0x0 (0x000BB1E2-0x000BB1E3, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BB1E4-0x000BB1E5, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BB1E8-0x000BB1E9, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BB1EA-0x000BB1EB, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BB1EC-0x000BB1ED, Entry count: 0x00000001) [Unknown data]
	dc.b	$C8
	dc.b	$0C ;0x0 (0x000BB1EE-0x000BB1EF, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$12 ;0x0 (0x000BB1F0-0x000BB1F1, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C2, $0C ;0x0 (0x000BB1F2-0x000BB1F4, Entry count: 0x00000002) [Unknown data]
	dc.b	$C4
	dc.b	$2A ;0x0 (0x000BB1F5-0x000BB1F6, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BB1F7-0x000BB1F8, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BD
	dc.b	$E6 ;0x0 (0x000BB1FB-0x000BB1FC, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$2F ;0x0 (0x000BB1FE-0x000BB1FF, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
loc_BB200:
	dc.b	$EF, $40, $F8, $5F ;0x0 (0x000BB200-0x000BB204, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$06 ;0x0 (0x000BB205-0x000BB206, Entry count: 0x00000001) [Unknown data]
	dc.b	$06, $06, $06, $03, $9B, $9C, $06 ;0x0 (0x000BB206-0x000BB20D, Entry count: 0x00000007)
	dc.b	$9D
	dc.b	$9E, $F8, $52 ;0x0 (0x000BB20E-0x000BB211, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$06 ;0x0 (0x000BB212-0x000BB213, Entry count: 0x00000001) [Unknown data]
	dc.b	$06, $06, $06, $06, $06, $06, $9D, $F8, $5E ;0x0 (0x000BB213-0x000BB21C, Entry count: 0x00000009)
	dc.b	$00
	dc.b	$99, $99, $99, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $F8, $4B ;0x0 (0x000BB21D-0x000BB22F, Entry count: 0x00000012)
	dc.b	$00
	dc.b	$9B, $9B, $9B, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $9E, $9E, $F8, $40 ;0x0 (0x000BB230-0x000BB242, Entry count: 0x00000012)
	dc.b	$00
	dc.b	$A0, $E6, $06, $06, $06, $06, $06, $9D, $9E, $A0, $F8, $33 ;0x0 (0x000BB243-0x000BB24F, Entry count: 0x0000000C)
	dc.b	$00
	dc.b	$A4, $E6, $06, $06, $06, $06, $06, $A0, $A4, $A0, $99, $0C, $06, $1E, $E6, $30, $F6, $9E ;0x0 (0x000BB250-0x000BB262, Entry count: 0x00000012)
	dc.b	$FF
	dc.b	$A0, $06 ;0x0 (0x000BB263-0x000BB265, Entry count: 0x00000002)
	dc.b	$F7
	dc.b	$00, $17, $FB ;0x0 (0x000BB266-0x000BB269, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$9E, $06 ;0x0 (0x000BB26A-0x000BB26C, Entry count: 0x00000002) [Unknown data]
	dc.b	$F7
	dc.b	$00, $09, $FB ;0x0 (0x000BB26D-0x000BB270, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$A0, $06 ;0x0 (0x000BB271-0x000BB273, Entry count: 0x00000002) [Unknown data]
	dc.b	$F7
	dc.b	$00, $17, $FB ;0x0 (0x000BB274-0x000BB277, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$9E, $F9, $99, $06 ;0x0 (0x000BB278-0x000BB27C, Entry count: 0x00000004) [Unknown data]
	dc.b	$F7
	dc.b	$00, $10, $FB ;0x0 (0x000BB27D-0x000BB280, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$F9, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $9D, $9D, $9D, $9D, $9D, $9D, $9D
	dc.b	$9D, $A2, $A2, $A2, $A2, $A2, $A2, $A2, $F9

loc_BB29A:
	dc.b	$E5, $03, $EF, $40, $E3, $01, $01 ;0x0 (0x000BB281-0x000BB2A3, Entry count: 0x00000022) [Unknown data]
	dc.b	$F8, $83 ;0x20
	dc.b	$00
	dc.b	$F8, $80 ;0x0 (0x000BB2A4-0x000BB2A6, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$F8, $A8 ;0x0 (0x000BB2A7-0x000BB2A9, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$BA, $B6, $BD, $06 ;0x0 (0x000BB2AA-0x000BB2AE, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB2AF-0x000BB2B0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BB2B1-0x000BB2B4, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB2B5-0x000BB2B6, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $06 ;0x0 (0x000BB2B7-0x000BB2BA, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$80
	dc.b	$F8, $92 ;0x0 (0x000BB2BD-0x000BB2BF, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$BD, $B8, $B5, $06 ;0x0 (0x000BB2C0-0x000BB2C4, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB2C5-0x000BB2C6, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$B3, $B8, $06 ;0x0 (0x000BB2C7-0x000BB2CA, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB2CB-0x000BB2CC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$BD, $BA, $06 ;0x0 (0x000BB2CD-0x000BB2D0, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F8
	dc.b	$95 ;0x0 (0x000BB2D3-0x000BB2D4, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$B6, $BD, $BA, $06 ;0x0 (0x000BB2D5-0x000BB2D9, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB2DA-0x000BB2DB, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $1E ;0x0 (0x000BB2DC-0x000BB2DF, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB2E2-0x000BB2E3, Entry count: 0x00000001) [Unknown data]
	dc.b	$F8
	dc.b	$84 ;0x0 (0x000BB2E4-0x000BB2E5, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$BD, $C1, $C4, $06 ;0x0 (0x000BB2E6-0x000BB2EA, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB2EB-0x000BB2EC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $BF, $1E ;0x0 (0x000BB2ED-0x000BB2F0, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB2F3-0x000BB2F4, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $BF, $06 ;0x0 (0x000BB2F5-0x000BB2F8, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$BD, $C1, $0C ;0x0 (0x000BB2F9-0x000BB2FC, Entry count: 0x00000003) [Unknown data]
	dc.b	$F8
	dc.b	$86 ;0x0 (0x000BB2FD-0x000BB2FE, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$B8, $BC, $BF, $0C ;0x0 (0x000BB2FF-0x000BB303, Entry count: 0x00000004)
	dc.b	$B6
	dc.b	$BA, $B1, $2A ;0x0 (0x000BB304-0x000BB307, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B8, $B5, $06 ;0x0 (0x000BB308-0x000BB30B, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F8
	dc.b	$75 ;0x0 (0x000BB30E-0x000BB30F, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$B6, $BA, $BD, $0C ;0x0 (0x000BB310-0x000BB314, Entry count: 0x00000004)
	dc.b	$E6
	dc.b	$B8
	dc.b	$BC, $B3, $2A, $06, $E6, $30, $C1, $B8, $BD, $E6 ;0x0 (0x000BB316-0x000BB320, Entry count: 0x0000000A) [Unknown data]
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB322-0x000BB323, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$75 ;0x0 (0x000BB324-0x000BB325, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$BD, $B8, $B5, $06 ;0x0 (0x000BB326-0x000BB32A, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB32B-0x000BB32C, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BB32D-0x000BB330, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB331-0x000BB332, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$BA, $B6, $06 ;0x0 (0x000BB333-0x000BB336, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB337-0x000BB338, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $B8, $80, $12 ;0x0 (0x000BB339-0x000BB33D, Entry count: 0x00000004) [Unknown data]
	dc.b	$B5
	dc.b	$B8, $BD, $06 ;0x0 (0x000BB33E-0x000BB341, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB342-0x000BB343, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BB344-0x000BB347, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB348-0x000BB349, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $06 ;0x0 (0x000BB34A-0x000BB34D, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$80
	dc.b	$F9, $BD, $B8, $B5, $06 ;0x0 (0x000BB350-0x000BB355, Entry count: 0x00000005) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB356-0x000BB357, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BB358-0x000BB35B, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB35C-0x000BB35D, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$B8, $B3, $06 ;0x0 (0x000BB35E-0x000BB361, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB362-0x000BB363, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $B8, $80, $12 ;0x0 (0x000BB364-0x000BB368, Entry count: 0x00000004) [Unknown data]
	dc.b	$F9
	dc.b	$B8, $B1, $B5, $06 ;0x0 (0x000BB369-0x000BB36D, Entry count: 0x00000004)
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB36E-0x000BB36F, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$BA, $BD, $06 ;0x0 (0x000BB370-0x000BB373, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB374-0x000BB375, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$C1, $BD, $06 ;0x0 (0x000BB376-0x000BB379, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB37A-0x000BB37B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $BF, $12 ;0x0 (0x000BB37C-0x000BB37F, Entry count: 0x00000003) [Unknown data]
	dc.b	$B6
	dc.b	$BA, $BD, $0C ;0x0 (0x000BB380-0x000BB383, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9
	dc.b	$BA, $BF, $C2, $0C ;0x0 (0x000BB384-0x000BB388, Entry count: 0x00000004)
	dc.b	$06
	dc.b	$BA
	dc.b	$BD, $C1, $12 ;0x0 (0x000BB38A-0x000BB38D, Entry count: 0x00000003) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $BF, $0C ;0x0 (0x000BB38E-0x000BB391, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$C1, $BD, $0C ;0x0 (0x000BB392-0x000BB395, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$BF, $BC, $12 ;0x0 (0x000BB397-0x000BB39A, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9

loc_BB39B:
	dc.b	$F8, $9F ;0x0 (0x000BB39B-0x000BB39D, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $84, $C0, $88, $03, $88, $84, $06, $84, $80, $03, $81, $F8, $8F ;0x0 (0x000BB39E-0x000BB3AD, Entry count: 0x0000000F)
	dc.b	$00
	dc.b	$88, $06, $84, $C0, $80, $02, $80, $80, $81, $03, $81, $88, $80, $06, $81, $03, $F8, $93 ;0x0 (0x000BB3AE-0x000BB3C0, Entry count: 0x00000012)
	dc.b	$00
	dc.b	$88, $C0, $84, $C0, $88, $C0, $84, $C0, $F8, $88 ;0x0 (0x000BB3C1-0x000BB3CB, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$88, $80, $81, $82, $80, $03 ;0x0 (0x000BB3CC-0x000BB3D2, Entry count: 0x00000006)
	dc.b	$06 ;0x0 (0x000BB3D2-0x000BB3D3, Entry count: 0x00000001) [Unknown data]
	dc.b	$81, $03, $80, $81, $82, $02, $82, $80, $F8, $91 ;0x0 (0x000BB3D3-0x000BB3DD, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$88, $C0, $84, $88, $C0, $88, $84, $88, $0C, $88, $06, $84, $C0, $88, $03 ;0x0 (0x000BB3DE-0x000BB3ED, Entry count: 0x0000000F)
	dc.b	$06, $03 ;0x0 (0x000BB3ED-0x000BB3EF, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $0C, $F8, $7B ;0x0 (0x000BB3EF-0x000BB3F3, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$88, $C0, $84, $88, $C0, $88, $84, $12, $88, $06, $84, $C0, $88, $03 ;0x0 (0x000BB3F4-0x000BB402, Entry count: 0x0000000E)
	dc.b	$06, $03 ;0x0 (0x000BB402-0x000BB404, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $0C, $88, $06, $C0, $84, $88, $C0, $C0, $84, $C0, $88, $C0, $80, $03 ;0x0 (0x000BB404-0x000BB413, Entry count: 0x0000000F)
	dc.b	$06, $03 ;0x0 (0x000BB413-0x000BB415, Entry count: 0x00000002) [Unknown data]
	dc.b	$81, $02, $81, $81, $81, $03, $82, $84, $0C, $F6, $7B ;0x0 (0x000BB415-0x000BB420, Entry count: 0x0000000B)
	dc.b	$FF
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $C0, $84, $88, $C0, $88, $84
	dc.b	$C0, $88, $C0, $84, $C0, $88, $C0, $84, $88, $0C ;0x0 (0x000BB421-0x000BB43B, Entry count: 0x0000001A)
	dc.b	$F9, $F8, $E3 ;0x0 (0x000BB43B-0x000BB43E, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$88, $06, $84, $C0, $80, $02, $80, $80, $81, $03, $82, $84, $06, $C0, $03, $C0
	dc.b	$F8, $D0 ;0x0 (0x000BB43F-0x000BB451, Entry count: 0x00000012)
	dc.b	$FF
	dc.b	$F9 ;0x0 (0x000BB452-0x000BB453, Entry count: 0x00000001) [Unknown data]
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $C0, $84, $88, $C0, $88, $84
	dc.b	$C0, $88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $F9, $88, $06, $C0, $84, $88 ;0x0 (0x000BB453-0x000BB485, Entry count: 0x00000032)
	dc.b	$C0, $88, $84, $C0, $88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $F9

loc_BB481:
	dc.b	$EF, $46, $F8, $78 ;0x20
	dc.b	$00
	dc.b	$B1, $06 ;0x0 (0x000BB486-0x000BB488, Entry count: 0x00000002)
	dc.b	$AE
	dc.b	$B1, $B6, $B5, $B6, $B8, $B6, $BA, $B8, $B6, $B8, $B6, $B5, $B6, $B5, $B3, $0C ;0x0 (0x000BB489-0x000BB499, Entry count: 0x00000010) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BB49A-0x000BB49B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$1E ;0x0 (0x000BB49C-0x000BB49D, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F8
	dc.b	$5C ;0x0 (0x000BB4A0-0x000BB4A1, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$BA, $03 ;0x0 (0x000BB4A2-0x000BB4A4, Entry count: 0x00000002)
	dc.b	$B6
	dc.b	$B1, $B0, $AE, $06 ;0x0 (0x000BB4A5-0x000BB4A9, Entry count: 0x00000004) [Unknown data]
	dc.b	$B0
	dc.b	$0C ;0x0 (0x000BB4AA-0x000BB4AB, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$06 ;0x0 (0x000BB4AC-0x000BB4AD, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$AE, $E6 ;0x0 (0x000BB4AE-0x000BB4B0, Entry count: 0x00000002) [Unknown data]
	dc.b	$18
	dc.b	$AA
	dc.b	$0C ;0x0 (0x000BB4B2-0x000BB4B3, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$BA, $03 ;0x0 (0x000BB4B4-0x000BB4B6, Entry count: 0x00000002) [Unknown data]
	dc.b	$B6
	dc.b	$B1, $B0, $06 ;0x0 (0x000BB4B7-0x000BB4BA, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$03 ;0x0 (0x000BB4BB-0x000BB4BC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$06 ;0x0 (0x000BB4BD-0x000BB4BE, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$AA, $0C ;0x0 (0x000BB4BF-0x000BB4C1, Entry count: 0x00000002) [Unknown data]
	dc.b	$AE
	dc.b	$06 ;0x0 (0x000BB4C2-0x000BB4C3, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$18
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BB4C6-0x000BB4C7, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $06 ;0x0 (0x000BB4C8-0x000BB4CA, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BB4CB-0x000BB4CC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B3, $B5, $06 ;0x0 (0x000BB4CD-0x000BB4D0, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$18 ;0x0 (0x000BB4D1-0x000BB4D2, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$AF, $BB, $BA, $0C ;0x0 (0x000BB4D3-0x000BB4D7, Entry count: 0x00000004) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BB4D8-0x000BB4D9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BB4DA-0x000BB4DB, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$B6, $06 ;0x0 (0x000BB4DC-0x000BB4DE, Entry count: 0x00000002) [Unknown data]
	dc.b	$B1
	dc.b	$0C ;0x0 (0x000BB4DF-0x000BB4E0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$06 ;0x0 (0x000BB4E1-0x000BB4E2, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$0C ;0x0 (0x000BB4E3-0x000BB4E4, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$12 ;0x0 (0x000BB4E5-0x000BB4E6, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$0C ;0x0 (0x000BB4E7-0x000BB4E8, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$06 ;0x0 (0x000BB4E9-0x000BB4EA, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$0C ;0x0 (0x000BB4EB-0x000BB4EC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$12 ;0x0 (0x000BB4ED-0x000BB4EE, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$06 ;0x0 (0x000BB4EF-0x000BB4F0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B7, $B8, $BA, $B8, $B7, $B8, $B7, $18 ;0x0 (0x000BB4F1-0x000BB4F9, Entry count: 0x00000008) [Unknown data]
	dc.b	$B5
	dc.b	$F6, $85 ;0x0 (0x000BB4FA-0x000BB4FC, Entry count: 0x00000002) [Unknown data]
	dc.b	$FF
	dc.b	$B5, $06 ;0x0 (0x000BB4FD-0x000BB4FF, Entry count: 0x00000002)
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BB500-0x000BB501, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BD, $BC, $06 ;0x0 (0x000BB502-0x000BB505, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$BC, $0C ;0x0 (0x000BB506-0x000BB508, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$B1, $12 ;0x0 (0x000BB509-0x000BB50B, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$18 ;0x0 (0x000BB50C-0x000BB50D, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BB50E-0x000BB50F, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BB510-0x000BB511, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$E7 ;0x0 (0x000BB512-0x000BB513, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F9

loc_BB515:
	dc.b	$EF, $49, $E3, $01, $01, $F8, $39 ;0x0 (0x000BB515-0x000BB51C, Entry count: 0x00000007)
	dc.b	$00
	dc.b	$AC, $A2, $F8, $34 ;0x0 (0x000BB51D-0x000BB521, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$AE, $A4, $F8, $76 ;0x0 (0x000BB522-0x000BB526, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$A0, $A3, $A3, $A3, $A3, $A3, $A3, $A3, $A2, $E6, $06, $06, $06, $06, $03, $9D
	dc.b	$9E, $06 ;0x0 (0x000BB527-0x000BB539, Entry count: 0x00000012)
	dc.b	$9F
	dc.b	$A0, $F8, $5F ;0x0 (0x000BB53A-0x000BB53D, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$A2, $E6, $06, $06, $03, $9D, $A2, $06 ;0x0 (0x000BB53E-0x000BB546, Entry count: 0x00000008)
	dc.b	$A4
	dc.b	$A4, $A4, $03 ;0x0 (0x000BB547-0x000BB54A, Entry count: 0x00000003) [Unknown data]
	dc.b	$9E
	dc.b	$A4, $06 ;0x0 (0x000BB54B-0x000BB54D, Entry count: 0x00000002) [Unknown data]
	dc.b	$A5
	dc.b	$0C ;0x0 (0x000BB54E-0x000BB54F, Entry count: 0x00000001) [Unknown data]
	dc.b	$A4
	dc.b	$A2, $A0, $F6, $C1 ;0x0 (0x000BB550-0x000BB554, Entry count: 0x00000004) [Unknown data]
	dc.b	$FF
	dc.b	$A2, $06 ;0x0 (0x000BB555-0x000BB557, Entry count: 0x00000002)
	dc.b	$AE
	dc.b	$A2, $A9, $A2, $AE, $AC, $A2, $E6 ;0x0 (0x000BB558-0x000BB55F, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AE
	dc.b	$A2, $A9, $A2, $A7, $A9, $A2, $E6 ;0x0 (0x000BB561-0x000BB568, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AE
	dc.b	$A2, $A9, $A2, $AE, $AC, $A2, $E6 ;0x0 (0x000BB56A-0x000BB571, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AE
	dc.b	$A2, $A9, $A2, $AC, $A9, $9E, $E6 ;0x0 (0x000BB573-0x000BB57A, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AA
	dc.b	$9E, $A5, $9E, $A4, $A5, $9E, $E6 ;0x0 (0x000BB57C-0x000BB583, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AA
	dc.b	$9E, $A5, $9E, $A9, $A5, $9E, $E6 ;0x0 (0x000BB585-0x000BB58C, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AA
	dc.b	$9E, $A5, $9E, $A4, $A5, $9E, $E6 ;0x0 (0x000BB58E-0x000BB595, Entry count: 0x00000007) [Unknown data]
	dc.b	$06
	dc.b	$AA
	dc.b	$9E, $A5, $9E, $AE, $F9, $A5, $A5, $A5, $A5, $A5, $A0, $A5, $A0, $A4, $A4, $A4
	dc.b	$A4, $A4, $A0, $A4, $F9

loc_BB5AC:
	dc.b	$E5, $03, $EF, $4B, $AE, $B1, $B5, $24, $06, $06, $E7 ;0x0 (0x000BB597-0x000BB5BC, Entry count: 0x00000025) [Unknown data]
	dc.b	$1E, $B5, $AC, $B0, $12 ;0x20
	dc.b	$B5
	dc.b	$B1, $AE, $30 ;0x0 (0x000BB5BD-0x000BB5C0, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$B1
	dc.b	$AA, $AE, $24, $06, $06, $E7, $30, $B1, $AA, $AE, $E7 ;0x0 (0x000BB5C3-0x000BB5CE, Entry count: 0x0000000B) [Unknown data]
	dc.b	$0C
	dc.b	$B1
	dc.b	$AA, $AE, $0C ;0x0 (0x000BB5D0-0x000BB5D3, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$AC
	dc.b	$B0, $B3, $B1, $B5, $AE, $1E ;0x0 (0x000BB5D5-0x000BB5DB, Entry count: 0x00000006) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB5DC-0x000BB5DD, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$AE, $B1, $06, $E7, $1E, $0C, $06 ;0x0 (0x000BB5DE-0x000BB5E5, Entry count: 0x00000007) [Unknown data]
	dc.b	$E6, $30, $E7, $1E, $B5, $AE, $B1, $06 ;0x0 (0x000BB5E5-0x000BB5ED, Entry count: 0x00000008)
	dc.b	$B0
	dc.b	$AC, $B3, $0C ;0x0 (0x000BB5EE-0x000BB5F1, Entry count: 0x00000003) [Unknown data]
	dc.b	$AA
	dc.b	$AE, $B1, $24 ;0x0 (0x000BB5F2-0x000BB5F5, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB5F6-0x000BB5F7, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B1
	dc.b	$AA, $AE, $06 ;0x0 (0x000BB5FA-0x000BB5FD, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB5FE-0x000BB5FF, Entry count: 0x00000001) [Unknown data]
	dc.b	$AA
	dc.b	$B1, $AE, $0C, $06, $E6, $24, $80, $0C ;0x0 (0x000BB600-0x000BB608, Entry count: 0x00000008) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$AC
	dc.b	$B1, $B5, $24 ;0x0 (0x000BB60B-0x000BB60E, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$AC
	dc.b	$B0, $B3, $24 ;0x0 (0x000BB610-0x000BB613, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB614-0x000BB615, Entry count: 0x00000001) [Unknown data]
	dc.b	$AA
	dc.b	$AF, $B3, $2A ;0x0 (0x000BB616-0x000BB619, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$AE, $AA, $06 ;0x0 (0x000BB61A-0x000BB61D, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$AC
	dc.b	$B1, $B5, $24 ;0x0 (0x000BB620-0x000BB623, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$AC
	dc.b	$B0, $B3, $24 ;0x0 (0x000BB625-0x000BB628, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$B1
	dc.b	$AA, $AE, $30 ;0x0 (0x000BB62A-0x000BB62D, Entry count: 0x00000003) [Unknown data]
	dc.b	$AC
	dc.b	$B1, $B5, $24 ;0x0 (0x000BB62E-0x000BB631, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB632-0x000BB633, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$77 ;0x0 (0x000BB634-0x000BB635, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BB636:
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $88, $C0, $C0, $84, $C0, $88, $C0, $84
	dc.b	$C0, $F7, $00, $07, $EB ;0x0 (0x000BB636-0x000BB64B, Entry count: 0x00000015)
	dc.b	$FF
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $88, $C0, $C0, $84, $C0, $88, $80, $81, $82, $F8, $2C ;0x0 (0x000BB64C-0x000BB65F, Entry count: 0x00000013) [Unknown data]
	dc.b	$00
	dc.b	$88, $88, $84, $C0, $C0, $88, $84, $88, $06, $C0, $88, $84, $C0, $C0, $88, $84, $C0, $F8, $18 ;0x0 (0x000BB660-0x000BB673, Entry count: 0x00000013)
	dc.b	$00
	dc.b	$88, $88, $84, $C0, $C0, $88, $84, $88, $80, $80, $81, $84, $88, $80, $02, $81
	dc.b	$82, $81, $06, $84, $F6, $AC ;0x0 (0x000BB674-0x000BB68A, Entry count: 0x00000016)
	dc.b	$FF
	dc.b	$88, $88, $84, $C0, $C0, $88, $84, $C0, $88, $88, $84, $C0, $C0, $88, $84, $C0, $F9 ;0x0 (0x000BB68B-0x000BB69C, Entry count: 0x00000011)
	dc.b	$06 ;0x0 (0x000BB69C-0x000BB69D, Entry count: 0x00000001) [Unknown data]
	dc.b	$06, $06, $06, $06, $06, $06, $F9

loc_BB6A4:
	dc.b	$EF, $4C, $E3, $01, $01, $EC, $F1, $E7, $30, $E7, $30, $E6, $30, $E6, $BC, $03 ;0x0 (0x000BB69D-0x000BB6B4, Entry count: 0x00000017)
	dc.b	$B8
	dc.b	$BC, $06 ;0x0 (0x000BB6B5-0x000BB6B7, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$BC, $03 ;0x0 (0x000BB6B8-0x000BB6BA, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $06 ;0x0 (0x000BB6BB-0x000BB6BD, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$80, $E6, $30, $E6, $30, $E6, $30, $E6, $06, $BD, $BA, $B6, $0C ;0x0 (0x000BB6BF-0x000BB6CC, Entry count: 0x0000000D) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BB6CD-0x000BB6CE, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB6CF-0x000BB6D0, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BB6D3-0x000BB6D4, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BF, $B8, $BC, $09 ;0x0 (0x000BB6D5-0x000BB6D9, Entry count: 0x00000004) [Unknown data]
	dc.b	$B8
	dc.b	$03 ;0x0 (0x000BB6DA-0x000BB6DB, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $BC, $06 ;0x0 (0x000BB6DC-0x000BB6DF, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$BC, $03 ;0x0 (0x000BB6E0-0x000BB6E2, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $0C ;0x0 (0x000BB6E3-0x000BB6E5, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$E6, $30, $E6, $30, $E6, $06, $BD, $09 ;0x0 (0x000BB6E7-0x000BB6EF, Entry count: 0x00000008) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BB6F0-0x000BB6F1, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$0C ;0x0 (0x000BB6F2-0x000BB6F3, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BB6F4-0x000BB6F5, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$80, $0C ;0x0 (0x000BB6F6-0x000BB6F8, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$03 ;0x0 (0x000BB6F9-0x000BB6FA, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $06 ;0x0 (0x000BB6FB-0x000BB6FD, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$03
	dc.b	$B8
	dc.b	$BC, $06 ;0x0 (0x000BB700-0x000BB702, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$BF, $BF, $BF, $BF, $BC, $B8, $BC, $B8, $BF, $BC, $09, $06, $03, $06, $06, $80, $12 ;0x0 (0x000BB704-0x000BB715, Entry count: 0x00000011) [Unknown data]
	dc.b	$EC
	dc.b	$0F, $EF, $4D, $E3, $00, $00, $E6 ;0x0 (0x000BB716-0x000BB71D, Entry count: 0x00000007) [Unknown data]
	dc.b	$0C
	dc.b	$B8
	dc.b	$BA, $BC, $06 ;0x0 (0x000BB71F-0x000BB722, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$E7 ;0x0 (0x000BB723-0x000BB724, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BF
	dc.b	$BF, $06 ;0x0 (0x000BB726-0x000BB728, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BB729-0x000BB72A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BB72B-0x000BB72C, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BC
	dc.b	$BA, $12 ;0x0 (0x000BB72F-0x000BB731, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BB732-0x000BB733, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06, $E7, $30, $E6, $0C, $BC, $B3, $BF, $06 ;0x0 (0x000BB734-0x000BB73D, Entry count: 0x00000009) [Unknown data]
	dc.b	$BD
	dc.b	$E7 ;0x0 (0x000BB73E-0x000BB73F, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BC
	dc.b	$B8, $06 ;0x0 (0x000BB741-0x000BB743, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BB744-0x000BB745, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$24 ;0x0 (0x000BB746-0x000BB747, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BB748-0x000BB749, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BA, $30 ;0x0 (0x000BB74A-0x000BB74C, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B8
	dc.b	$BA, $BC, $06 ;0x0 (0x000BB74F-0x000BB752, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$E7 ;0x0 (0x000BB753-0x000BB754, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BF
	dc.b	$BF, $06 ;0x0 (0x000BB756-0x000BB758, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BB759-0x000BB75A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BB75B-0x000BB75C, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BC
	dc.b	$BA, $12 ;0x0 (0x000BB75F-0x000BB761, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BB762-0x000BB763, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BB764-0x000BB765, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$18
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BB768-0x000BB769, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $18 ;0x0 (0x000BB76A-0x000BB76C, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$BF, $BC, $B8, $30 ;0x0 (0x000BB76D-0x000BB771, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$EF
	dc.b	$51, $E7 ;0x0 (0x000BB774-0x000BB776, Entry count: 0x00000002) [Unknown data]
	dc.b	$30
	dc.b	$BD
	dc.b	$18 ;0x0 (0x000BB778-0x000BB779, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BB77A-0x000BB77B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$B3, $12 ;0x0 (0x000BB77C-0x000BB77E, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$1E, $E6, $30, $E7, $30, $BD, $12 ;0x0 (0x000BB77F-0x000BB786, Entry count: 0x00000007) [Unknown data]
	dc.b	$BA
	dc.b	$B6, $0C ;0x0 (0x000BB787-0x000BB789, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$24 ;0x0 (0x000BB78A-0x000BB78B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BB78C-0x000BB78D, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BB78E-0x000BB78F, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$1E ;0x0 (0x000BB790-0x000BB791, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$11 ;0x0 (0x000BB792-0x000BB793, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BB794:
	dc.b	$EF, $40, $F8, $FE ;0x0 (0x000BB794-0x000BB798, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$9E, $03, $03, $03, $03, $03, $03, $A0, $06, $06, $06, $03, $03, $06, $03, $03, $03
	dc.b	$03, $03, $03, $E6, $06, $06, $06, $03, $03, $06, $03, $03, $03, $03, $03 ;0x0 (0x000BB799-0x000BB7D7, Entry count: 0x0000003E)
	dc.b	$03, $E6, $06, $06, $06, $03, $03, $06, $03, $03, $03, $03, $9E, $9E, $9E, $06, $06
	dc.b	$06, $03, $03, $99, $06, $03, $03, $03, $03, $A0, $A0, $F8, $BF ;0x20
	dc.b	$00
	dc.b	$03 ;0x0 (0x000BB7D8-0x000BB7D9, Entry count: 0x00000001) [Unknown data]
	dc.b	$03, $03, $03, $9E, $9E, $9E, $06, $06, $06, $03, $03, $99, $06, $03, $03, $03, $03
	dc.b	$A0, $A0, $A0, $06, $06, $06, $03, $03, $99, $06, $03, $03, $03, $03, $03 ;0x0 (0x000BB7D9-0x000BB816, Entry count: 0x0000003D)
	dc.b	$03, $A0, $06, $06, $06, $03, $03, $06, $03, $03, $03, $03, $03, $03, $E6, $06, $06
	dc.b	$06, $03, $03, $06, $03, $03, $03, $03, $03, $03, $F8, $AF ;0x20
	dc.b	$00
	dc.b	$E6, $06, $06, $06, $06, $03, $99, $9A, $06 ;0x0 (0x000BB817-0x000BB820, Entry count: 0x00000009)
	dc.b	$9B
	dc.b	$9B, $A0, $F8, $77 ;0x0 (0x000BB821-0x000BB825, Entry count: 0x00000004) [Unknown data]
	dc.b	$FE
	dc.b	$9E, $F8, $73 ;0x0 (0x000BB826-0x000BB829, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$A4, $F8, $6F ;0x0 (0x000BB82A-0x000BB82D, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$A2, $F8, $6B ;0x0 (0x000BB82E-0x000BB831, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$F8, $91 ;0x0 (0x000BB832-0x000BB834, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BB835-0x000BB836, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$F8
	dc.b	$63 ;0x0 (0x000BB838-0x000BB839, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$9D, $F8, $5F ;0x0 (0x000BB83A-0x000BB83D, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$9B, $F8, $5B ;0x0 (0x000BB83E-0x000BB841, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$A0, $F8, $57 ;0x0 (0x000BB842-0x000BB845, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$A0, $80, $12 ;0x0 (0x000BB846-0x000BB849, Entry count: 0x00000003)
	dc.b	$A0
	dc.b	$06 ;0x0 (0x000BB84A-0x000BB84B, Entry count: 0x00000001) [Unknown data]
	dc.b	$9F
	dc.b	$12 ;0x0 (0x000BB84C-0x000BB84D, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$06 ;0x0 (0x000BB84E-0x000BB84F, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BB851-0x000BB852, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$06, $06, $E7, $15, $99, $03 ;0x0 (0x000BB853-0x000BB859, Entry count: 0x00000006) [Unknown data]
	dc.b	$9B
	dc.b	$06 ;0x0 (0x000BB85A-0x000BB85B, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$03 ;0x0 (0x000BB85C-0x000BB85D, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$06 ;0x0 (0x000BB85E-0x000BB85F, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$09 ;0x0 (0x000BB860-0x000BB861, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$06 ;0x0 (0x000BB862-0x000BB863, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BB865-0x000BB866, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$06, $06, $E6, $06, $A7, $A4, $A5, $0C ;0x0 (0x000BB867-0x000BB86F, Entry count: 0x00000008) [Unknown data]
	dc.b	$A4
	dc.b	$06 ;0x0 (0x000BB870-0x000BB871, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$0C ;0x0 (0x000BB872-0x000BB873, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$06 ;0x0 (0x000BB874-0x000BB875, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BB877-0x000BB878, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$06, $06, $E6, $06, $99, $9B, $A0, $0C ;0x0 (0x000BB879-0x000BB881, Entry count: 0x00000008) [Unknown data]
	dc.b	$A2
	dc.b	$06 ;0x0 (0x000BB882-0x000BB883, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$0C ;0x0 (0x000BB884-0x000BB885, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$06 ;0x0 (0x000BB886-0x000BB887, Entry count: 0x00000001) [Unknown data]
	dc.b	$F8
	dc.b	$13 ;0x0 (0x000BB888-0x000BB889, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$9E, $06, $06, $06, $06, $06, $06, $AC, $0C ;0x0 (0x000BB88A-0x000BB893, Entry count: 0x00000009)
	dc.b	$F6
	dc.b	$FF ;0x0 (0x000BB894-0x000BB895, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$A0, $06, $06, $06, $03, $03, $06, $03, $03, $03, $03, $03, $03, $E6, $06, $06
	dc.b	$06, $03, $03, $06, $03, $03, $03, $03, $03, $03, $E6, $06, $06, $06, $03, $03 ;0x0 (0x000BB896-0x000BB8C7, Entry count: 0x00000031)
	dc.b	$06, $03, $03, $03, $03, $03, $03, $E6, $06, $06, $06, $03, $03, $06, $F9, $A0, $06 ;0x20
	dc.b	$F8
	dc.b	$D3 ;0x0 (0x000BB8C8-0x000BB8C9, Entry count: 0x00000001) [Unknown data]
	dc.b	$FD
	dc.b	$E6 ;0x0 (0x000BB8CA-0x000BB8CB, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$F8
	dc.b	$CE ;0x0 (0x000BB8CD-0x000BB8CE, Entry count: 0x00000001) [Unknown data]
	dc.b	$FD
	dc.b	$E6 ;0x0 (0x000BB8CF-0x000BB8D0, Entry count: 0x00000001)
	dc.b	$9E
	dc.b	$9E, $9E, $9E, $9E, $9E, $9E, $9B, $F9

loc_BB8D9:
	dc.b	$E5, $03, $EF, $4E, $E3, $01, $01, $F8, $FE ;0x0 (0x000BB8D1-0x000BB8E2, Entry count: 0x00000011) [Unknown data]
	dc.b	$00
	dc.b	$B3, $BA, $BD, $80, $0C ;0x0 (0x000BB8E3-0x000BB8E8, Entry count: 0x00000005)
	dc.b	$B3
	dc.b	$B8, $BC, $1E ;0x0 (0x000BB8E9-0x000BB8EC, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BB8EF-0x000BB8F0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $F8, $EB ;0x0 (0x000BB8F1-0x000BB8F5, Entry count: 0x00000004) [Unknown data]
	dc.b	$00
	dc.b	$B3, $BD, $BA, $B3, $B8, $BC, $B3, $BA, $BD, $B3, $B8, $BC, $12 ;0x0 (0x000BB8F6-0x000BB903, Entry count: 0x0000000D)
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BB904-0x000BB907, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B1, $B6, $E6 ;0x0 (0x000BB908-0x000BB90B, Entry count: 0x00000003) [Unknown data]
	dc.b	$18
	dc.b	$B5
	dc.b	$B1, $B8, $0C ;0x0 (0x000BB90D-0x000BB910, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $06 ;0x0 (0x000BB911-0x000BB914, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $E6, $30, $E6, $06, $B3, $BA, $BD, $0C ;0x0 (0x000BB915-0x000BB91F, Entry count: 0x0000000A) [Unknown data]
	dc.b	$B3
	dc.b	$BA, $BD, $B3, $BA, $BD, $06 ;0x0 (0x000BB920-0x000BB926, Entry count: 0x00000006) [Unknown data]
	dc.b	$B3
	dc.b	$BA, $BD, $BA, $B3, $BD, $BD, $BA, $B3, $B8, $B3, $BC, $B3, $BA, $BD, $BC, $B3
	dc.b	$B8, $1E ;0x0 (0x000BB927-0x000BB939, Entry count: 0x00000012) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B3
	dc.b	$B8, $BC, $0C ;0x0 (0x000BB93C-0x000BB93F, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B6, $B1, $06 ;0x0 (0x000BB940-0x000BB943, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$B1
	dc.b	$B8, $B5, $B3, $BC, $B8, $15 ;0x0 (0x000BB946-0x000BB94C, Entry count: 0x00000006) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $0F ;0x0 (0x000BB94D-0x000BB950, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $B8, $0C ;0x0 (0x000BB951-0x000BB954, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $30 ;0x0 (0x000BB955-0x000BB958, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BB95B-0x000BB95C, Entry count: 0x00000001) [Unknown data]
	dc.b	$EF
	dc.b	$4F, $E3, $00, $00, $F8, $8C ;0x0 (0x000BB95D-0x000BB963, Entry count: 0x00000006) [Unknown data]
	dc.b	$00
	dc.b	$A7, $AC, $B0, $06, $06, $06, $06, $06, $06, $06, $A5, $AA, $AE, $E6 ;0x0 (0x000BB964-0x000BB972, Entry count: 0x0000000E)
	dc.b	$06
	dc.b	$A5
	dc.b	$AA, $AE, $06, $06, $06, $06, $06, $06, $06, $A7, $AB, $B0, $F8, $1A ;0x0 (0x000BB974-0x000BB982, Entry count: 0x0000000E) [Unknown data]
	dc.b	$FD
	dc.b	$A7, $AB, $AE, $F8, $14 ;0x0 (0x000BB983-0x000BB988, Entry count: 0x00000005)
	dc.b	$FD
	dc.b	$F8, $64 ;0x0 (0x000BB989-0x000BB98B, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$A9, $AD, $B0, $F8, $0B ;0x0 (0x000BB98C-0x000BB991, Entry count: 0x00000005)
	dc.b	$FD
	dc.b	$A7, $AB, $AE, $F8, $05 ;0x0 (0x000BB992-0x000BB997, Entry count: 0x00000005)
	dc.b	$FD
	dc.b	$A7, $AC, $B0, $F8, $FF ;0x0 (0x000BB998-0x000BB99D, Entry count: 0x00000005)
	dc.b	$FC
	dc.b	$A7, $AC, $B0, $80, $12 ;0x0 (0x000BB99E-0x000BB9A3, Entry count: 0x00000005)
	dc.b	$B0
	dc.b	$AC, $A7, $06 ;0x0 (0x000BB9A4-0x000BB9A7, Entry count: 0x00000003) [Unknown data]
	dc.b	$A7
	dc.b	$AE, $AB, $12 ;0x0 (0x000BB9A8-0x000BB9AB, Entry count: 0x00000003) [Unknown data]
	dc.b	$E3
	dc.b	$01, $01, $EF, $50, $F8, $65 ;0x0 (0x000BB9AC-0x000BB9B2, Entry count: 0x00000006) [Unknown data]
	dc.b	$00
	dc.b	$A7, $AC, $B0, $06 ;0x0 (0x000BB9B3-0x000BB9B7, Entry count: 0x00000004)
	dc.b	$A7
	dc.b	$B0, $AC, $80, $18 ;0x0 (0x000BB9B8-0x000BB9BC, Entry count: 0x00000004) [Unknown data]
	dc.b	$A7
	dc.b	$AC, $B0, $06 ;0x0 (0x000BB9BD-0x000BB9C0, Entry count: 0x00000003) [Unknown data]
	dc.b	$A7
	dc.b	$B0, $AC, $E7 ;0x0 (0x000BB9C1-0x000BB9C4, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$F8
	dc.b	$50 ;0x0 (0x000BB9C6-0x000BB9C7, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$A9, $AD, $B0, $06 ;0x0 (0x000BB9C8-0x000BB9CC, Entry count: 0x00000004)
	dc.b	$EF
	dc.b	$4F, $F8, $CC ;0x0 (0x000BB9CD-0x000BB9D0, Entry count: 0x00000003) [Unknown data]
	dc.b	$FC
	dc.b	$AA, $A5, $AE, $06, $06, $06, $0C, $06, $B0, $A7, $AC, $0C ;0x0 (0x000BB9D1-0x000BB9DD, Entry count: 0x0000000C)
	dc.b	$F6
	dc.b	$FA ;0x0 (0x000BB9DE-0x000BB9DF, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$B3, $BC, $B8, $30 ;0x0 (0x000BB9E0-0x000BB9E4, Entry count: 0x00000004)
	dc.b	$E7
	dc.b	$06
	dc.b	$B3
	dc.b	$BA, $BD, $0C, $0C, $06, $06, $06, $F9, $AC, $A7, $B0, $06 ;0x0 (0x000BB9E7-0x000BB9F3, Entry count: 0x0000000C) [Unknown data]
	dc.b	$F8
	dc.b	$A7 ;0x0 (0x000BB9F4-0x000BB9F5, Entry count: 0x00000001) [Unknown data]
	dc.b	$FC
	dc.b	$AC, $A7, $B0, $06 ;0x0 (0x000BB9F6-0x000BB9FA, Entry count: 0x00000004)
	dc.b	$F8
	dc.b	$A0 ;0x0 (0x000BB9FB-0x000BB9FC, Entry count: 0x00000001) [Unknown data]
	dc.b	$FC
	dc.b	$AA, $A5, $AE, $06, $06, $06, $06, $06, $06, $06, $AB, $A7, $AE, $E6 ;0x0 (0x000BB9FD-0x000BBA0B, Entry count: 0x0000000E)
	dc.b	$06
	dc.b	$AB
	dc.b	$A7, $AE, $06, $06, $06, $06, $06, $06, $06, $F9, $A5, $AA, $AE, $06 ;0x0 (0x000BBA0D-0x000BBA1B, Entry count: 0x0000000E) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BBA1D-0x000BBA1E, Entry count: 0x00000001) [Unknown data]
	dc.b	$A5
	dc.b	$AE, $AA, $06, $06, $E7, $30, $F9

loc_BBA26:
	dc.b	$F8, $B2 ;0x0 (0x000BBA1F-0x000BBA28, Entry count: 0x00000009) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $C0, $03, $C0, $84, $06, $88, $06, $F8, $B0 ;0x0 (0x000BBA29-0x000BBA34, Entry count: 0x0000000B)
	dc.b	$00
	dc.b	$F8, $C1 ;0x0 (0x000BBA35-0x000BBA37, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$80, $02, $80, $80, $82, $03, $80, $88, $82, $06 ;0x0 (0x000BBA38-0x000BBA42, Entry count: 0x0000000A)
	dc.b	$03 ;0x0 (0x000BBA42-0x000BBA43, Entry count: 0x00000001) [Unknown data]
	dc.b	$80, $80, $81, $81, $88, $84, $84, $84, $F8, $BB ;0x0 (0x000BBA43-0x000BBA4D, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $88, $C0, $09, $88, $03, $84, $06, $C0
	dc.b	$88, $09, $88, $03, $84, $06, $C0, $88, $09, $88, $03, $84, $06, $C0, $C0, $09 ;0x0 (0x000BBA4E-0x000BBA75, Entry count: 0x00000027)
	dc.b	$88, $03, $84, $06, $C0, $80, $03 ;0x20
	dc.b	$06 ;0x0 (0x000BBA75-0x000BBA76, Entry count: 0x00000001) [Unknown data]
	dc.b	$81, $03, $84, $06, $88, $03, $88, $80, $03, $80, $81, $81, $84, $0C, $F8, $82 ;0x0 (0x000BBA76-0x000BBA86, Entry count: 0x00000010)
	dc.b	$00
	dc.b	$F8, $B3 ;0x0 (0x000BBA87-0x000BBA89, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $C0, $84, $C0, $88, $C0, $81, $03, $81, $82, $06, $84, $C0, $80, $03 ;0x0 (0x000BBA8A-0x000BBA99, Entry count: 0x0000000F)
	dc.b	$06 ;0x0 (0x000BBA99-0x000BBA9A, Entry count: 0x00000001) [Unknown data]
	dc.b	$81, $03, $88, $06, $84, $12, $F8, $A5 ;0x0 (0x000BBA9A-0x000BBAA2, Entry count: 0x00000008)
	dc.b	$00
	dc.b	$88, $06, $88, $C0, $06 ;0x0 (0x000BBAA3-0x000BBAA8, Entry count: 0x00000005)
	dc.b	$03, $03 ;0x0 (0x000BBAA8-0x000BBAAA, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $06, $C0, $88, $88, $C0, $06 ;0x0 (0x000BBAAA-0x000BBAB1, Entry count: 0x00000007)
	dc.b	$03, $03, $06, $03, $03, $03, $03 ;0x0 (0x000BBAB1-0x000BBAB8, Entry count: 0x00000007) [Unknown data]
	dc.b	$88, $06, $84, $C0, $03 ;0x0 (0x000BBAB8-0x000BBABD, Entry count: 0x00000005)
	dc.b	$03, $F8, $87 ;0x0 (0x000BBABD-0x000BBAC0, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $88, $88, $88, $84, $88, $80, $03, $80, $81
	dc.b	$06 ;0x0 (0x000BBAC1-0x000BBAD3, Entry count: 0x00000012)
	dc.b	$03, $03 ;0x0 (0x000BBAD3-0x000BBAD5, Entry count: 0x00000002) [Unknown data]
	dc.b	$82, $82, $F6, $4D ;0x0 (0x000BBAD5-0x000BBAD9, Entry count: 0x00000004)
	dc.b	$FF
	dc.b	$88, $06, $C0, $03, $C0, $84, $06, $C0, $03, $C0, $88, $06, $C0, $03, $C0, $84, $06
	dc.b	$C0, $03, $C0, $88, $06, $C0, $03, $C0, $84, $06, $C0, $03, $C0, $88, $06 ;0x0 (0x000BBADA-0x000BBB06, Entry count: 0x0000002C)
	dc.b	$C0, $03, $C0, $84, $06, $C0, $03, $C0, $F7, $00, $08, $F2 ;0x20
	dc.b	$FF
	dc.b	$F9, $88, $06, $C0, $84, $C0, $88, $C0, $84, $88, $C0, $09, $88, $03, $84, $06, $C0
	dc.b	$88, $09, $88, $03, $84, $06, $88, $C0, $09, $88, $03, $84, $06, $C0, $C0 ;0x0 (0x000BBB07-0x000BBB45, Entry count: 0x0000003E) [Unknown data]
	dc.b	$09, $88, $03, $84, $06, $C0, $C0, $09, $88, $03, $84, $06, $C0, $88, $09, $88, $03
	dc.b	$84, $06, $C0, $F9, $88, $06, $C0, $84, $C0, $F7, $00, $04, $F7 ;0x20
	dc.b	$FF
	dc.b	$F9, $88, $06, $88, $C0, $06, $03, $03 ;0x0 (0x000BBB46-0x000BBB4E, Entry count: 0x00000008) [Unknown data]
	dc.b	$84, $06, $C0, $88, $88, $C0, $06 ;0x0 (0x000BBB4E-0x000BBB55, Entry count: 0x00000007)
	dc.b	$03, $03, $06, $03, $03, $03, $03, $03, $03 ;0x0 (0x000BBB55-0x000BBB5E, Entry count: 0x00000009) [Unknown data]
	dc.b	$84, $06, $C0, $03 ;0x0 (0x000BBB5E-0x000BBB62, Entry count: 0x00000004)
	dc.b	$03, $F9 ;0x0 (0x000BBB62-0x000BBB64, Entry count: 0x00000002) [Unknown data]

loc_BBB64:
	dc.b	$EF, $53, $BA, $12 ;0x0 (0x000BBB64-0x000BBB68, Entry count: 0x00000004)
	dc.b	$C1
	dc.b	$C3, $0C ;0x0 (0x000BBB69-0x000BBB6B, Entry count: 0x00000002) [Unknown data]
	dc.b	$C4
	dc.b	$C4, $06 ;0x0 (0x000BBB6C-0x000BBB6E, Entry count: 0x00000002) [Unknown data]
	dc.b	$C3
	dc.b	$12 ;0x0 (0x000BBB6F-0x000BBB70, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BBB71-0x000BBB72, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$30, $E6, $30, $E6, $12, $C1, $C3, $0C ;0x0 (0x000BBB73-0x000BBB7B, Entry count: 0x00000008) [Unknown data]
	dc.b	$C4
	dc.b	$C4, $06 ;0x0 (0x000BBB7C-0x000BBB7E, Entry count: 0x00000002) [Unknown data]
	dc.b	$C3
	dc.b	$12 ;0x0 (0x000BBB7F-0x000BBB80, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$0C ;0x0 (0x000BBB81-0x000BBB82, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$30 ;0x0 (0x000BBB83-0x000BBB84, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$B8
	dc.b	$12 ;0x0 (0x000BBB87-0x000BBB88, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BF, $0C ;0x0 (0x000BBB89-0x000BBB8B, Entry count: 0x00000002) [Unknown data]
	dc.b	$C4
	dc.b	$12 ;0x0 (0x000BBB8C-0x000BBB8D, Entry count: 0x00000001) [Unknown data]
	dc.b	$C3
	dc.b	$BF, $0C ;0x0 (0x000BBB8E-0x000BBB90, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$30, $E7, $30, $E6, $B8, $12 ;0x0 (0x000BBB91-0x000BBB97, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$BF, $0C ;0x0 (0x000BBB98-0x000BBB9A, Entry count: 0x00000002) [Unknown data]
	dc.b	$C4
	dc.b	$18 ;0x0 (0x000BBB9B-0x000BBB9C, Entry count: 0x00000001) [Unknown data]
	dc.b	$C3
	dc.b	$0C ;0x0 (0x000BBB9D-0x000BBB9E, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$C8, $12 ;0x0 (0x000BBB9F-0x000BBBA1, Entry count: 0x00000002) [Unknown data]
	dc.b	$C6
	dc.b	$1E ;0x0 (0x000BBBA2-0x000BBBA3, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$C8
	dc.b	$06 ;0x0 (0x000BBBA6-0x000BBBA7, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$C8, $C6, $1E ;0x0 (0x000BBBA8-0x000BBBAB, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$EF
	dc.b	$52, $C1, $06 ;0x0 (0x000BBBAE-0x000BBBB1, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$BF
	dc.b	$80, $0C ;0x0 (0x000BBBB3-0x000BBBB5, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $06 ;0x0 (0x000BBBB6-0x000BBBB8, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BBBBB-0x000BBBBC, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BF
	dc.b	$80, $0C ;0x0 (0x000BBBBE-0x000BBBC0, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$C4, $06 ;0x0 (0x000BBBC1-0x000BBBC3, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BBBC6-0x000BBBC7, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BF
	dc.b	$80, $0C ;0x0 (0x000BBBC9-0x000BBBCB, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $06 ;0x0 (0x000BBBCC-0x000BBBCE, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BBBD1-0x000BBBD2, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BBBD3-0x000BBBD4, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BBBD5-0x000BBBD6, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BC
	dc.b	$BD, $BC, $BF, $0C ;0x0 (0x000BBBD8-0x000BBBDC, Entry count: 0x00000004) [Unknown data]
	dc.b	$BD
	dc.b	$06, $06, $E7, $30, $F6, $81 ;0x0 (0x000BBBDD-0x000BBBE3, Entry count: 0x00000006) [Unknown data]
	dc.b	$FF

loc_BBBE4:
	dc.b	$EF, $40, $A2, $06 ;0x0 (0x000BBBE4-0x000BBBE8, Entry count: 0x00000004)
	dc.b	$F8
	dc.b	$5D ;0x0 (0x000BBBE9-0x000BBBEA, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$A2, $F8, $59 ;0x0 (0x000BBBEB-0x000BBBEE, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$A0, $F8, $55 ;0x0 (0x000BBBEF-0x000BBBF2, Entry count: 0x00000003) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BBBF3-0x000BBBF4, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$06 ;0x0 (0x000BBBF5-0x000BBBF6, Entry count: 0x00000001) [Unknown data]
	dc.b	$F8
	dc.b	$A4 ;0x0 (0x000BBBF7-0x000BBBF8, Entry count: 0x00000001) [Unknown data]
	dc.b	$FA
	dc.b	$E6 ;0x0 (0x000BBBF9-0x000BBBFA, Entry count: 0x00000001)
	dc.b	$A0
	dc.b	$06, $06, $06, $06, $06, $09, $03, $06, $A2, $F7, $00, $18, $FB ;0x0 (0x000BBBFB-0x000BBC08, Entry count: 0x0000000D) [Unknown data]
	dc.b	$FF
	dc.b	$A2, $A2, $A9, $A9, $AB, $AB, $AC, $AC, $A5, $A5, $A4, $80, $0C ;0x0 (0x000BBC09-0x000BBC16, Entry count: 0x0000000D) [Unknown data]
	dc.b	$A2
	dc.b	$A0, $06, $E6, $06, $06, $12, $80, $A5, $06 ;0x0 (0x000BBC17-0x000BBC20, Entry count: 0x00000009) [Unknown data]
	dc.b	$06
	dc.b	$A4
	dc.b	$80, $0C ;0x0 (0x000BBC22-0x000BBC24, Entry count: 0x00000002) [Unknown data]
	dc.b	$A2
	dc.b	$A7, $06, $E6, $06, $06 ;0x0 (0x000BBC25-0x000BBC2A, Entry count: 0x00000005) [Unknown data]
	dc.b	$A9, $A9, $AB, $AB, $A9, $A9, $A5, $A5, $A4, $80, $0C ;0x0 (0x000BBC2A-0x000BBC35, Entry count: 0x0000000B)
	dc.b	$A2
	dc.b	$A0, $06 ;0x0 (0x000BBC36-0x000BBC38, Entry count: 0x00000002) [Unknown data]
	dc.b	$F8
	dc.b	$62 ;0x0 (0x000BBC39-0x000BBC3A, Entry count: 0x00000001) [Unknown data]
	dc.b	$FA
	dc.b	$9E, $F8, $5E ;0x0 (0x000BBC3B-0x000BBC3E, Entry count: 0x00000003) [Unknown data]
	dc.b	$FA
	dc.b	$A5, $F8, $5A ;0x0 (0x000BBC3F-0x000BBC42, Entry count: 0x00000003) [Unknown data]
	dc.b	$FA
	dc.b	$06 ;0x0 (0x000BBC43-0x000BBC44, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$9E ;0x0 (0x000BBC45-0x000BBC46, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$06 ;0x0 (0x000BBC47-0x000BBC48, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $1A, $FB ;0x0 (0x000BBC49-0x000BBC4C, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$0C ;0x0 (0x000BBC4D-0x000BBC4E, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$06
	dc.b	$F9

loc_BBC51:
	dc.b	$E5, $03, $EF, $54, $BE, $BA, $C1, $06, $06, $06, $0C, $06, $80, $0C ;0x0 (0x000BBC51-0x000BBC5F, Entry count: 0x0000000E)
	dc.b	$F7
	dc.b	$00, $08, $F2 ;0x0 (0x000BBC60-0x000BBC63, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$BC, $B8, $BF, $06, $06, $06, $0C, $06, $80, $0C ;0x0 (0x000BBC64-0x000BBC6E, Entry count: 0x0000000A) [Unknown data]
	dc.b	$F7
	dc.b	$00, $06, $F2 ;0x0 (0x000BBC6F-0x000BBC72, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$BA, $BE, $C1, $06, $06, $06, $0C, $06, $80, $0C ;0x0 (0x000BBC73-0x000BBC7D, Entry count: 0x0000000A) [Unknown data]
	dc.b	$F7
	dc.b	$00, $03, $F2 ;0x0 (0x000BBC7E-0x000BBC81, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$BA, $BE, $C1, $06 ;0x0 (0x000BBC82-0x000BBC86, Entry count: 0x00000004) [Unknown data]
	dc.b	$F8
	dc.b	$14 ;0x0 (0x000BBC87-0x000BBC88, Entry count: 0x00000001) [Unknown data]
	dc.b	$FA
	dc.b	$E5, $03, $EF, $54, $E3, $01, $01, $B8, $C1, $BD, $C1, $B8, $BD, $B8, $BF, $BC
	dc.b	$80, $0C ;0x0 (0x000BBC89-0x000BBC9B, Entry count: 0x00000012)
	dc.b	$BA
	dc.b	$BD, $B5, $BC, $B8, $B3, $06 ;0x0 (0x000BBC9C-0x000BBCA2, Entry count: 0x00000006) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $F8, $F5 ;0x0 (0x000BBCA3-0x000BBCA7, Entry count: 0x00000004) [Unknown data]
	dc.b	$F9
	dc.b	$C1, $B8, $BD, $C1, $B8, $BD, $B8, $BC, $BF, $80, $0C ;0x0 (0x000BBCA8-0x000BBCB3, Entry count: 0x0000000B)
	dc.b	$BD
	dc.b	$B5, $BA, $BC, $B8, $BF, $06 ;0x0 (0x000BBCB4-0x000BBCBA, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$BF, $B8, $F8, $DD ;0x0 (0x000BBCBB-0x000BBCBF, Entry count: 0x00000004) [Unknown data]
	dc.b	$F9
	dc.b	$BD, $B8, $C1, $0C ;0x0 (0x000BBCC0-0x000BBCC4, Entry count: 0x00000004)
	dc.b	$B8
	dc.b	$BC, $BF, $06 ;0x0 (0x000BBCC5-0x000BBCC8, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BBCC9-0x000BBCCA, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$B5, $BA, $BC, $B8, $B3, $06 ;0x0 (0x000BBCCB-0x000BBCD1, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $B3, $06, $06, $06, $06, $06, $06, $06, $B6, $B1, $BA, $E6 ;0x0 (0x000BBCD2-0x000BBCDF, Entry count: 0x0000000D) [Unknown data]
	dc.b	$06
	dc.b	$B6
	dc.b	$BA, $B1, $06, $06, $06, $06, $06, $06, $B1, $B8, $B5, $E6 ;0x0 (0x000BBCE1-0x000BBCED, Entry count: 0x0000000C) [Unknown data]
	dc.b	$06
	dc.b	$E3
	dc.b	$00, $00, $80, $2A ;0x0 (0x000BBCEF-0x000BBCF3, Entry count: 0x00000004) [Unknown data]
	dc.b	$F6
	dc.b	$5C ;0x0 (0x000BBCF4-0x000BBCF5, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BBCF6:
	dc.b	$F8, $81 ;0x0 (0x000BBCF6-0x000BBCF8, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $88, $84, $88, $84, $03, $88, $06 ;0x0 (0x000BBCF9-0x000BBD01, Entry count: 0x00000008)
	dc.b	$03 ;0x0 (0x000BBD01-0x000BBD02, Entry count: 0x00000001) [Unknown data]
	dc.b	$84, $0C, $F8, $61 ;0x0 (0x000BBD02-0x000BBD06, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$80, $03, $80, $84, $06, $81, $03 ;0x0 (0x000BBD07-0x000BBD0E, Entry count: 0x00000007)
	dc.b	$06 ;0x0 (0x000BBD0E-0x000BBD0F, Entry count: 0x00000001) [Unknown data]
	dc.b	$82, $03, $88, $80, $06, $84, $03, $84, $0C, $88, $06, $88, $84, $C0, $C0, $88
	dc.b	$84, $88, $C0, $88, $84, $C0, $C0, $88, $84, $C0, $88, $88, $84, $C0, $C0, $88 ;0x0 (0x000BBD0F-0x000BBD39, Entry count: 0x0000002A)
	dc.b	$84, $88, $C0, $88, $84, $84, $84, $03, $88, $06 ;0x20
	dc.b	$03 ;0x0 (0x000BBD39-0x000BBD3A, Entry count: 0x00000001) [Unknown data]
	dc.b	$84, $0C, $88, $06, $88, $84, $C0, $C0, $88, $84, $88, $C0, $88, $84, $C0, $C0
	dc.b	$88, $84, $88, $C0, $88, $84, $88, $88, $C0, $84, $88, $C0, $88, $84, $C0, $80 ;0x0 (0x000BBD3A-0x000BBD66, Entry count: 0x0000002C)
	dc.b	$02, $80, $80, $81, $03, $82, $81, $81, $84, $06, $F6, $90 ;0x20
	dc.b	$FF
	dc.b	$88, $06, $88, $84, $88, $C0, $88, $84, $C0, $88, $06, $88, $84, $88, $C0, $88
	dc.b	$84, $C0, $88, $06, $88, $84, $88, $C0, $88, $84, $C0, $F7, $00, $07, $F3 ;0x0 (0x000BBD67-0x000BBD86, Entry count: 0x0000001F)
	dc.b	$FF
	dc.b	$F9

loc_BBD88:
	dc.b	$EF, $55, $C1, $06 ;0x0 (0x000BBD87-0x000BBD8C, Entry count: 0x00000005) [Unknown data]
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BBD8D-0x000BBD8E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BBD8F-0x000BBD90, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$04 ;0x0 (0x000BBD91-0x000BBD92, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$C1, $BD, $08 ;0x0 (0x000BBD93-0x000BBD96, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$04 ;0x0 (0x000BBD97-0x000BBD98, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $BC, $BA, $08 ;0x0 (0x000BBD99-0x000BBD9D, Entry count: 0x00000004) [Unknown data]
	dc.b	$B8
	dc.b	$04 ;0x0 (0x000BBD9E-0x000BBD9F, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BBDA0-0x000BBDA1, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BBDA2-0x000BBDA3, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$E6 ;0x0 (0x000BBDA4-0x000BBDA5, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$B5
	dc.b	$2A ;0x0 (0x000BBDA7-0x000BBDA8, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BA
	dc.b	$04 ;0x0 (0x000BBDAB-0x000BBDAC, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$C1, $BF, $06 ;0x0 (0x000BBDAD-0x000BBDB0, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$03 ;0x0 (0x000BBDB1-0x000BBDB2, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $BC, $06 ;0x0 (0x000BBDB3-0x000BBDB6, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BBDB7-0x000BBDB8, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BBDB9-0x000BBDBA, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BBDBB-0x000BBDBC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $0C ;0x0 (0x000BBDBD-0x000BBDBF, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BBDC0-0x000BBDC1, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$06 ;0x0 (0x000BBDC2-0x000BBDC3, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B3, $B1, $03 ;0x0 (0x000BBDC4-0x000BBDC7, Entry count: 0x00000003) [Unknown data]
	dc.b	$B0
	dc.b	$B1, $24 ;0x0 (0x000BBDC8-0x000BBDCA, Entry count: 0x00000002) [Unknown data]
	dc.b	$AE
	dc.b	$06 ;0x0 (0x000BBDCB-0x000BBDCC, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BBDCF-0x000BBDD0, Entry count: 0x00000001) [Unknown data]
	dc.b	$EF
	dc.b	$41, $E6 ;0x0 (0x000BBDD1-0x000BBDD3, Entry count: 0x00000002) [Unknown data]
	dc.b	$1E
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BBDD5-0x000BBDD6, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$03 ;0x0 (0x000BBDD7-0x000BBDD8, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BBDD9-0x000BBDDA, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$03 ;0x0 (0x000BBDDB-0x000BBDDC, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$04 ;0x0 (0x000BBDDD-0x000BBDDE, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BF, $28, $E7, $30, $E6, $0C, $C1, $04 ;0x0 (0x000BBDDF-0x000BBDE7, Entry count: 0x00000008) [Unknown data]
	dc.b	$BD
	dc.b	$BF, $BC, $BF, $BA, $10, $E7, $30, $E7, $0C, $B5, $04 ;0x0 (0x000BBDE8-0x000BBDF3, Entry count: 0x0000000B) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $BC, $BA, $B8, $BF, $0C ;0x0 (0x000BBDF4-0x000BBDFA, Entry count: 0x00000006) [Unknown data]
	dc.b	$BD
	dc.b	$18 ;0x0 (0x000BBDFB-0x000BBDFC, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BBDFD-0x000BBDFE, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$BC, $12 ;0x0 (0x000BBDFF-0x000BBE01, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $0C ;0x0 (0x000BBE02-0x000BBE04, Entry count: 0x00000002) [Unknown data]
	dc.b	$F6
	dc.b	$82 ;0x0 (0x000BBE05-0x000BBE06, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BBE07:
	dc.b	$EF, $40, $F8, $33 ;0x0 (0x000BBE07-0x000BBE0B, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BBE0C-0x000BBE0D, Entry count: 0x00000001) [Unknown data]
	dc.b	$09
	dc.b	$09
	dc.b	$A0
	dc.b	$12 ;0x0 (0x000BBE10-0x000BBE11, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BBE12-0x000BBE13, Entry count: 0x00000001) [Unknown data]
	dc.b	$F8
	dc.b	$29 ;0x0 (0x000BBE14-0x000BBE15, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BBE16-0x000BBE17, Entry count: 0x00000001) [Unknown data]
	dc.b	$09
	dc.b	$0F
	dc.b	$9E
	dc.b	$0C ;0x0 (0x000BBE1A-0x000BBE1B, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$F8, $37 ;0x0 (0x000BBE1C-0x000BBE1E, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$9D, $09 ;0x0 (0x000BBE1F-0x000BBE21, Entry count: 0x00000002) [Unknown data]
	dc.b	$09
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BBE23-0x000BBE24, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$09, $03, $E6, $12, $99, $1E ;0x0 (0x000BBE25-0x000BBE2B, Entry count: 0x00000006) [Unknown data]
	dc.b	$F8
	dc.b	$28 ;0x0 (0x000BBE2C-0x000BBE2D, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$9E, $09 ;0x0 (0x000BBE2E-0x000BBE30, Entry count: 0x00000002) [Unknown data]
	dc.b	$03
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BBE32-0x000BBE33, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$0C ;0x0 (0x000BBE34-0x000BBE35, Entry count: 0x00000001) [Unknown data]
	dc.b	$99
	dc.b	$06 ;0x0 (0x000BBE36-0x000BBE37, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BBE38-0x000BBE39, Entry count: 0x00000001) [Unknown data]
	dc.b	$9B
	dc.b	$1E ;0x0 (0x000BBE3A-0x000BBE3B, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$CA ;0x0 (0x000BBE3C-0x000BBE3D, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$A2, $09, $09, $06, $09, $09, $06, $E6, $09, $09, $06, $A0, $0C ;0x0 (0x000BBE3E-0x000BBE4B, Entry count: 0x0000000D)
	dc.b	$0C
	dc.b	$E6
	dc.b	$A2
	dc.b	$09, $09, $06, $09, $09, $06, $F9, $9D, $09 ;0x0 (0x000BBE4E-0x000BBE57, Entry count: 0x00000009) [Unknown data]
	dc.b	$09
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BBE59-0x000BBE5A, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$09, $03, $E6, $18, $9B, $0C ;0x0 (0x000BBE5B-0x000BBE61, Entry count: 0x00000006) [Unknown data]
	dc.b	$0C
	dc.b	$F9

loc_BBE63:
	dc.b	$E5, $03, $EF, $56, $E3, $01, $01, $F8, $3C ;0x0 (0x000BBE63-0x000BBE6C, Entry count: 0x00000009)
	dc.b	$00
	dc.b	$B1, $B8, $B5, $12 ;0x0 (0x000BBE6D-0x000BBE71, Entry count: 0x00000004)
	dc.b	$B0
	dc.b	$B3, $B8, $1E ;0x0 (0x000BBE72-0x000BBE75, Entry count: 0x00000003) [Unknown data]
	dc.b	$F8
	dc.b	$31 ;0x0 (0x000BBE76-0x000BBE77, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E7 ;0x0 (0x000BBE78-0x000BBE79, Entry count: 0x00000001)
	dc.b	$18
	dc.b	$B0
	dc.b	$B3, $B6, $0C ;0x0 (0x000BBE7B-0x000BBE7E, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$B0, $B3, $EF, $42, $F8, $39 ;0x0 (0x000BBE7F-0x000BBE85, Entry count: 0x00000006) [Unknown data]
	dc.b	$00
	dc.b	$B0, $B8, $B3, $09 ;0x0 (0x000BBE86-0x000BBE8A, Entry count: 0x00000004)
	dc.b	$B0
	dc.b	$B3, $B8, $03 ;0x0 (0x000BBE8B-0x000BBE8E, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BBE91-0x000BBE92, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B5, $B1, $1E ;0x0 (0x000BBE93-0x000BBE96, Entry count: 0x00000003) [Unknown data]
	dc.b	$F8
	dc.b	$26 ;0x0 (0x000BBE97-0x000BBE98, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$B0, $B8, $B3, $0C ;0x0 (0x000BBE99-0x000BBE9D, Entry count: 0x00000004)
	dc.b	$AC
	dc.b	$B5, $B1, $12 ;0x0 (0x000BBE9E-0x000BBEA1, Entry count: 0x00000003) [Unknown data]
	dc.b	$B7
	dc.b	$B3, $AE, $1E ;0x0 (0x000BBEA2-0x000BBEA5, Entry count: 0x00000003) [Unknown data]
	dc.b	$F6
	dc.b	$BC ;0x0 (0x000BBEA6-0x000BBEA7, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$E7 ;0x0 (0x000BBEA8-0x000BBEA9, Entry count: 0x00000001)
	dc.b	$18
	dc.b	$B1
	dc.b	$B8, $B5, $0C ;0x0 (0x000BBEAB-0x000BBEAE, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$E7 ;0x0 (0x000BBEAF-0x000BBEB0, Entry count: 0x00000001) [Unknown data]
	dc.b	$18
	dc.b	$B0
	dc.b	$B3, $B8, $0C ;0x0 (0x000BBEB2-0x000BBEB5, Entry count: 0x00000003) [Unknown data]
	dc.b	$B0
	dc.b	$B3, $B8, $B8, $B1, $B5, $80, $24 ;0x0 (0x000BBEB6-0x000BBEBD, Entry count: 0x00000007) [Unknown data]
	dc.b	$F9
	dc.b	$B0, $B3, $B8, $09 ;0x0 (0x000BBEBE-0x000BBEC2, Entry count: 0x00000004)
	dc.b	$B0
	dc.b	$B3, $B8, $80, $12 ;0x0 (0x000BBEC3-0x000BBEC7, Entry count: 0x00000004) [Unknown data]
	dc.b	$B0
	dc.b	$B8, $B3, $09 ;0x0 (0x000BBEC8-0x000BBECB, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$B0, $B3, $03 ;0x0 (0x000BBECC-0x000BBECF, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BBED2-0x000BBED3, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B6, $B1, $0C ;0x0 (0x000BBED4-0x000BBED7, Entry count: 0x00000003) [Unknown data]
	dc.b	$B6
	dc.b	$B1, $AE, $B8, $B3, $B0, $09 ;0x0 (0x000BBED8-0x000BBEDE, Entry count: 0x00000006) [Unknown data]
	dc.b	$B0
	dc.b	$B3, $B8, $03 ;0x0 (0x000BBEDF-0x000BBEE2, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BBEE3-0x000BBEE4, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

loc_BBEE5:
	dc.b	$88, $06, $88, $C0, $88, $84, $88, $C0, $88, $88, $88, $C0, $88, $84, $88, $84
	dc.b	$88, $F7, $00, $03, $EB ;0x0 (0x000BBEE5-0x000BBEFA, Entry count: 0x00000015)
	dc.b	$FF
	dc.b	$88, $06, $88, $C0, $88, $84, $88, $C0, $88, $88, $88, $C0, $84, $80, $03, $80
	dc.b	$81, $06, $82, $84, $F8, $34 ;0x0 (0x000BBEFB-0x000BBF11, Entry count: 0x00000016) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $88, $C0, $03 ;0x0 (0x000BBF12-0x000BBF17, Entry count: 0x00000005)
	dc.b	$03, $06 ;0x0 (0x000BBF17-0x000BBF19, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $04, $C0, $C0, $88, $06, $88, $C0, $84, $80, $04, $80, $81, $81, $81, $82
	dc.b	$84, $0C, $F8, $18 ;0x0 (0x000BBF19-0x000BBF2D, Entry count: 0x00000014)
	dc.b	$00
	dc.b	$88, $06, $88, $84, $C0, $C0, $88, $84, $C0, $88, $C0, $84, $C0, $80, $03, $80
	dc.b	$81, $06, $80, $0C, $F6, $A1 ;0x0 (0x000BBF2E-0x000BBF44, Entry count: 0x00000016)
	dc.b	$FF
	dc.b	$88, $06, $88, $C0, $03 ;0x0 (0x000BBF45-0x000BBF4A, Entry count: 0x00000005)
	dc.b	$03, $06 ;0x0 (0x000BBF4A-0x000BBF4C, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $04, $C0, $C0, $88, $06, $88, $C0, $04, $C0, $C0, $C0, $C0, $C0, $80
	dc.b	$80, $81, $82, $81, $82, $F9 ;0x0 (0x000BBF4C-0x000BBF61, Entry count: 0x00000015)
	dc.b	$00, $06 ;0x0 (0x000BBF61-0x000BBF63, Entry count: 0x00000002) [Unknown data]
	dc.b	$06, $06, $06, $06, $06, $06, $F9

loc_BBF6A:
	dc.b	$EF, $57, $E3, $00, $00, $F8, $BA ;0x0 (0x000BBF63-0x000BBF71, Entry count: 0x0000000E)
	dc.b	$00
	dc.b	$BF, $2A ;0x0 (0x000BBF72-0x000BBF74, Entry count: 0x00000002)
	dc.b	$80
	dc.b	$06 ;0x0 (0x000BBF75-0x000BBF76, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BF
	dc.b	$BF, $C1, $C2, $C1, $BF, $BF, $F8, $AA ;0x0 (0x000BBF79-0x000BBF81, Entry count: 0x00000008) [Unknown data]
	dc.b	$00
	dc.b	$BF, $12 ;0x0 (0x000BBF82-0x000BBF84, Entry count: 0x00000002)
	dc.b	$BC
	dc.b	$1E ;0x0 (0x000BBF85-0x000BBF86, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$B6
	dc.b	$03 ;0x0 (0x000BBF89-0x000BBF8A, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B6, $B5, $BA, $B8, $BA, $B8, $BC, $BA, $BC, $BA, $BD, $80, $BC, $06 ;0x0 (0x000BBF8B-0x000BBF99, Entry count: 0x0000000E) [Unknown data]
	dc.b	$B8
	dc.b	$03 ;0x0 (0x000BBF9A-0x000BBF9B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$B8, $06 ;0x0 (0x000BBF9C-0x000BBF9E, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BBF9F-0x000BBFA0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $B8, $BC, $BA, $BC, $06 ;0x0 (0x000BBFA1-0x000BBFA7, Entry count: 0x00000006) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $BF, $12 ;0x0 (0x000BBFA8-0x000BBFAB, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BBFAC-0x000BBFAD, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BA, $BC, $BD, $BF, $12 ;0x0 (0x000BBFAE-0x000BBFB3, Entry count: 0x00000005) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BBFB4-0x000BBFB5, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BA, $BC, $BA, $B6, $03 ;0x0 (0x000BBFB6-0x000BBFBB, Entry count: 0x00000005) [Unknown data]
	dc.b	$B5
	dc.b	$B6, $B5, $BA, $B8, $BA, $B8, $BC, $BA, $BC, $BA, $BD, $06 ;0x0 (0x000BBFBC-0x000BBFC8, Entry count: 0x0000000C) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $03 ;0x0 (0x000BBFC9-0x000BBFCB, Entry count: 0x00000002) [Unknown data]
	dc.b	$B7
	dc.b	$B8, $B7, $BC, $BA, $BC, $BA, $BD, $BC, $BD, $BF, $C1, $06 ;0x0 (0x000BBFCC-0x000BBFD8, Entry count: 0x0000000C) [Unknown data]
	dc.b	$BD
	dc.b	$C1, $12 ;0x0 (0x000BBFD9-0x000BBFDB, Entry count: 0x00000002) [Unknown data]
	dc.b	$C2
	dc.b	$1E ;0x0 (0x000BBFDC-0x000BBFDD, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$2A
	dc.b	$EF
	dc.b	$58, $E3, $01, $01, $B5, $06 ;0x0 (0x000BBFE0-0x000BBFE6, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$BC
	dc.b	$BA, $06 ;0x0 (0x000BBFE9-0x000BBFEB, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BBFEC-0x000BBFED, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BBFEE-0x000BBFEF, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$2A
	dc.b	$B5
	dc.b	$06, $E6, $06, $06 ;0x0 (0x000BBFF2-0x000BBFF6, Entry count: 0x00000004) [Unknown data]
	dc.b	$BC, $0C ;0x0 (0x000BBFF6-0x000BBFF8, Entry count: 0x00000002)
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BBFF9-0x000BBFFA, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BBFFB-0x000BBFFC, Entry count: 0x00000001) [Unknown data]
	dc.b	$C0
	dc.b	$06 ;0x0 (0x000BBFFD-0x000BBFFE, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$2A
	dc.b	$B5
	dc.b	$06, $E6, $06, $06 ;0x0 (0x000BC001-0x000BC005, Entry count: 0x00000004) [Unknown data]
	dc.b	$BC, $0C ;0x0 (0x000BC005-0x000BC007, Entry count: 0x00000002)
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BC008-0x000BC009, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BC00A-0x000BC00B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$06, $E6, $06, $06 ;0x0 (0x000BC00C-0x000BC010, Entry count: 0x00000004) [Unknown data]
	dc.b	$C1, $0C ;0x0 (0x000BC010-0x000BC012, Entry count: 0x00000002)
	dc.b	$C3
	dc.b	$06 ;0x0 (0x000BC013-0x000BC014, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$0C, $06, $E6, $06, $C3, $C3, $C3, $C3, $C3, $C1, $C1, $BF, $BF, $C6, $C6
	dc.b	$C4, $C4, $C3, $C3, $F6, $40 ;0x0 (0x000BC015-0x000BC02A, Entry count: 0x00000015) [Unknown data]
	dc.b	$FF
	dc.b	$B6, $03 ;0x0 (0x000BC02B-0x000BC02D, Entry count: 0x00000002)
	dc.b	$B5
	dc.b	$B6, $24 ;0x0 (0x000BC02E-0x000BC030, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BC031-0x000BC032, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$B7
	dc.b	$24 ;0x0 (0x000BC035-0x000BC036, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

loc_BC037:
	dc.b	$EF, $40, $92, $06 ;0x0 (0x000BC037-0x000BC03B, Entry count: 0x00000004)
	dc.b	$F8
	dc.b	$25 ;0x0 (0x000BC03C-0x000BC03D, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$93, $F8, $21 ;0x0 (0x000BC03E-0x000BC041, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$94, $F8, $1D ;0x0 (0x000BC042-0x000BC045, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$94, $F8, $19 ;0x0 (0x000BC046-0x000BC049, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$F7, $00, $03, $EB ;0x0 (0x000BC04A-0x000BC04E, Entry count: 0x00000004)
	dc.b	$FF
	dc.b	$92, $F8, $10 ;0x0 (0x000BC04F-0x000BC052, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$93, $F8, $0C ;0x0 (0x000BC053-0x000BC056, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$94, $F8, $08 ;0x0 (0x000BC057-0x000BC05A, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$94, $94, $94, $94, $94, $94, $94, $91, $E6, $06, $06, $0C, $06, $90, $0C ;0x0 (0x000BC05B-0x000BC06A, Entry count: 0x0000000F)
	dc.b	$8F
	dc.b	$06, $E6, $06, $06, $0C, $06, $0C ;0x0 (0x000BC06B-0x000BC072, Entry count: 0x00000007) [Unknown data]
	dc.b	$91, $06, $E6, $06 ;0x0 (0x000BC072-0x000BC076, Entry count: 0x00000004)
	dc.b	$06, $0C, $06 ;0x0 (0x000BC076-0x000BC079, Entry count: 0x00000003) [Unknown data]
	dc.b	$94, $0C ;0x0 (0x000BC079-0x000BC07B, Entry count: 0x00000002)
	dc.b	$95
	dc.b	$06, $E6, $06, $06, $0C, $06, $0C ;0x0 (0x000BC07C-0x000BC083, Entry count: 0x00000007) [Unknown data]
	dc.b	$91, $06, $E6, $06 ;0x0 (0x000BC083-0x000BC087, Entry count: 0x00000004)
	dc.b	$06, $0C, $06 ;0x0 (0x000BC087-0x000BC08A, Entry count: 0x00000003) [Unknown data]
	dc.b	$90, $0C ;0x0 (0x000BC08A-0x000BC08C, Entry count: 0x00000002)
	dc.b	$8F
	dc.b	$06, $E6, $06, $06, $0C, $06 ;0x0 (0x000BC08D-0x000BC093, Entry count: 0x00000006) [Unknown data]
	dc.b	$99, $0C ;0x0 (0x000BC093-0x000BC095, Entry count: 0x00000002)
	dc.b	$98
	dc.b	$06, $E6, $06, $06, $06, $06, $06, $06, $06, $06 ;0x0 (0x000BC096-0x000BC0A0, Entry count: 0x0000000A) [Unknown data]
	dc.b	$97, $97, $97, $97, $96, $96, $96, $96, $F6, $8D ;0x0 (0x000BC0A0-0x000BC0AA, Entry count: 0x0000000A)
	dc.b	$FF

loc_BC0AB:
	dc.b	$E5, $03, $EF, $52, $E3, $01, $06, $B1, $B6, $BA, $2A ;0x0 (0x000BC0AB-0x000BC0B6, Entry count: 0x0000000B)
	dc.b	$B7
	dc.b	$BA, $B2, $06 ;0x0 (0x000BC0B7-0x000BC0BA, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC0BD-0x000BC0BE, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$B3, $B8, $30 ;0x0 (0x000BC0BF-0x000BC0C2, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B3
	dc.b	$BC, $B8, $12 ;0x0 (0x000BC0C5-0x000BC0C8, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $30 ;0x0 (0x000BC0C9-0x000BC0CC, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B7, $B2, $24 ;0x0 (0x000BC0CD-0x000BC0D0, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC0D1-0x000BC0D2, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $30 ;0x0 (0x000BC0D3-0x000BC0D6, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$E3
	dc.b	$01, $01, $B3, $BC, $B8, $0C ;0x0 (0x000BC0D9-0x000BC0DF, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$B3, $B8, $B3, $BC, $B8, $06 ;0x0 (0x000BC0E0-0x000BC0E6, Entry count: 0x00000006) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $0C ;0x0 (0x000BC0E7-0x000BC0EA, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$BA, $B6, $06 ;0x0 (0x000BC0EB-0x000BC0EE, Entry count: 0x00000003) [Unknown data]
	dc.b	$F8
	dc.b	$72 ;0x0 (0x000BC0EF-0x000BC0F0, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$BA, $B2, $B7, $F8, $6C ;0x0 (0x000BC0F1-0x000BC0F6, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$B3, $B8, $BC, $F8, $66 ;0x0 (0x000BC0F7-0x000BC0FC, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$B3, $BC, $B8, $F8, $60 ;0x0 (0x000BC0FD-0x000BC102, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$BA, $B1, $B6, $F8, $5A ;0x0 (0x000BC103-0x000BC108, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$B2, $BA, $B7, $F8, $54 ;0x0 (0x000BC109-0x000BC10E, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$BC, $B3, $B8, $F8, $4E ;0x0 (0x000BC10F-0x000BC114, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$B3, $BC, $B8, $F8, $49 ;0x0 (0x000BC115-0x000BC11A, Entry count: 0x00000005)
	dc.b	$FE
	dc.b	$BC, $B5, $B9, $EC, $FC, $E5, $03, $EF, $46, $E6 ;0x0 (0x000BC11B-0x000BC125, Entry count: 0x0000000A)
	dc.b	$06
	dc.b	$BC
	dc.b	$B5, $B9, $06 ;0x0 (0x000BC127-0x000BC12A, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC12C-0x000BC12D, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$BC, $B9, $B3, $BA, $B7, $06 ;0x0 (0x000BC12E-0x000BC134, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$2A
	dc.b	$B5
	dc.b	$BC, $B9, $06, $E6, $06, $06, $0C, $06, $0C ;0x0 (0x000BC137-0x000BC140, Entry count: 0x00000009) [Unknown data]
	dc.b	$C0, $BD, $B9, $06 ;0x0 (0x000BC140-0x000BC144, Entry count: 0x00000004)
	dc.b	$E6
	dc.b	$2A
	dc.b	$B9
	dc.b	$BC, $B5, $06, $E6, $06, $06, $0C, $06, $0C ;0x0 (0x000BC147-0x000BC150, Entry count: 0x00000009) [Unknown data]
	dc.b	$B7, $BA, $B3, $06, $E6, $06 ;0x0 (0x000BC150-0x000BC156, Entry count: 0x00000006)
	dc.b	$06, $0C, $06, $0C ;0x0 (0x000BC156-0x000BC15A, Entry count: 0x00000004) [Unknown data]
	dc.b	$BF, $BC, $B7, $06 ;0x0 (0x000BC15A-0x000BC15E, Entry count: 0x00000004)
	dc.b	$E7
	dc.b	$06
	dc.b	$F8
	dc.b	$00 ;0x0 (0x000BC161-0x000BC162, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$BB, $B7, $BF, $F8, $FA ;0x0 (0x000BC163-0x000BC168, Entry count: 0x00000005)
	dc.b	$FD
	dc.b	$EC, $04, $F6, $3E ;0x0 (0x000BC169-0x000BC16D, Entry count: 0x00000004)
	dc.b	$FF

loc_BC16E:
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $88, $88, $C0, $84, $C0, $88, $C0, $84
	dc.b	$C0, $88, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $04, $88, $88, $84, $06, $88 ;0x0 (0x000BC16E-0x000BC1A0, Entry count: 0x00000032)
	dc.b	$03, $88, $C0, $06, $88, $03, $88, $84, $06, $C0, $88, $C0, $84, $C0, $F7, $00, $07, $F8 ;0x20
	dc.b	$FF
	dc.b	$80, $03, $80, $81, $81, $88, $06, $84, $03, $84, $88, $03, $03, $06 ;0x0 (0x000BC1A1-0x000BC1AF, Entry count: 0x0000000E) [Unknown data]
	dc.b	$84, $C0, $03, $C0, $F7, $00, $0E, $F4 ;0x0 (0x000BC1AF-0x000BC1B7, Entry count: 0x00000008)
	dc.b	$FF
	dc.b	$80, $02, $80, $81, $04, $82, $82, $03, $80, $06, $84, $03, $80, $80, $81, $81
	dc.b	$84, $06, $88, $C0, $88, $84, $C0, $88, $84, $88, $88, $C0, $88, $84, $C0, $C0 ;0x0 (0x000BC1B8-0x000BC1E2, Entry count: 0x0000002A) [Unknown data]
	dc.b	$88, $03, $88, $84, $06, $88, $F7, $00, $03, $E9 ;0x20
	dc.b	$FF
	dc.b	$C0, $88, $84, $C0, $C0, $88, $84, $88, $C0, $88, $84, $C0, $80, $03, $80, $81
	dc.b	$06, $03, $03 ;0x0 (0x000BC1E3-0x000BC1F6, Entry count: 0x00000013) [Unknown data]
	dc.b	$82, $06, $F6, $74 ;0x0 (0x000BC1F6-0x000BC1FA, Entry count: 0x00000004)
	dc.b	$FF

loc_BC1FB:
	dc.b	$EF, $59, $C1, $24 ;0x0 (0x000BC1FB-0x000BC1FF, Entry count: 0x00000004)
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BC200-0x000BC201, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BA, $B8, $06 ;0x0 (0x000BC202-0x000BC205, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$0C ;0x0 (0x000BC206-0x000BC207, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06, $E6, $30, $E6, $30, $BF, $24 ;0x0 (0x000BC208-0x000BC20F, Entry count: 0x00000007) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BC210-0x000BC211, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $BF, $06 ;0x0 (0x000BC212-0x000BC215, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC216-0x000BC217, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$06, $E6, $30, $E6, $30, $C1, $24 ;0x0 (0x000BC218-0x000BC21F, Entry count: 0x00000007) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BC220-0x000BC221, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BA, $B8, $06 ;0x0 (0x000BC222-0x000BC225, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BC226-0x000BC227, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06, $E6, $30, $E6, $30, $E6, $06, $B3, $B8, $BC, $0C ;0x0 (0x000BC228-0x000BC233, Entry count: 0x0000000B) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $06 ;0x0 (0x000BC234-0x000BC236, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$BF
	dc.b	$BC, $BF, $C4, $30 ;0x0 (0x000BC239-0x000BC23D, Entry count: 0x00000004) [Unknown data]
	dc.b	$BF
	dc.b	$EF, $5A, $C2, $06 ;0x0 (0x000BC23E-0x000BC242, Entry count: 0x00000004) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $80, $0C ;0x0 (0x000BC243-0x000BC246, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $06 ;0x0 (0x000BC247-0x000BC249, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$BC
	dc.b	$12 ;0x0 (0x000BC24C-0x000BC24D, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$06 ;0x0 (0x000BC24E-0x000BC24F, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$C1
	dc.b	$BD, $80, $0C ;0x0 (0x000BC252-0x000BC255, Entry count: 0x00000003) [Unknown data]
	dc.b	$C6
	dc.b	$C4, $06 ;0x0 (0x000BC256-0x000BC258, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$C2
	dc.b	$C4, $0C ;0x0 (0x000BC25B-0x000BC25D, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BC25E-0x000BC25F, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$06 ;0x0 (0x000BC260-0x000BC261, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $80, $0C ;0x0 (0x000BC262-0x000BC265, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $06, $E6, $06, $06 ;0x0 (0x000BC266-0x000BC26B, Entry count: 0x00000005) [Unknown data]
	dc.b	$BC, $0C ;0x0 (0x000BC26B-0x000BC26D, Entry count: 0x00000002)
	dc.b	$BD
	dc.b	$BA, $06 ;0x0 (0x000BC26E-0x000BC270, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$E6, $30, $E7, $30, $F6, $84 ;0x0 (0x000BC271-0x000BC277, Entry count: 0x00000006) [Unknown data]
	dc.b	$FF

loc_BC278:
	dc.b	$EF, $5B, $A0, $06 ;0x0 (0x000BC278-0x000BC27C, Entry count: 0x00000004)
	dc.b	$A2
	dc.b	$06 ;0x0 (0x000BC27D-0x000BC27E, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $0F, $FB ;0x0 (0x000BC27F-0x000BC282, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$F7, $01, $02, $F3 ;0x0 (0x000BC283-0x000BC287, Entry count: 0x00000004) [Unknown data]
	dc.b	$FF
	dc.b	$9E, $A0, $06 ;0x0 (0x000BC288-0x000BC28B, Entry count: 0x00000003) [Unknown data]
	dc.b	$F7
	dc.b	$00, $0F, $FB ;0x0 (0x000BC28C-0x000BC28F, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$F7, $01, $02, $F4 ;0x0 (0x000BC290-0x000BC294, Entry count: 0x00000004) [Unknown data]
	dc.b	$FF
	dc.b	$F7, $02, $02, $E1 ;0x0 (0x000BC295-0x000BC299, Entry count: 0x00000004) [Unknown data]
	dc.b	$FF
	dc.b	$F8, $26 ;0x0 (0x000BC29A-0x000BC29C, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$9E, $06 ;0x0 (0x000BC29D-0x000BC29F, Entry count: 0x00000002)
	dc.b	$E6
	dc.b	$06
	dc.b	$9D
	dc.b	$9E, $0C ;0x0 (0x000BC2A2-0x000BC2A4, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$A2
	dc.b	$0C ;0x0 (0x000BC2A6-0x000BC2A7, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$06, $E6, $06, $06, $9B, $0C ;0x0 (0x000BC2A8-0x000BC2AE, Entry count: 0x00000006) [Unknown data]
	dc.b	$0C
	dc.b	$9D
	dc.b	$F8, $10 ;0x0 (0x000BC2B0-0x000BC2B2, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$A2, $06, $E6, $30, $E6, $06, $9E, $9E, $9F, $A0, $80, $12 ;0x0 (0x000BC2B3-0x000BC2BF, Entry count: 0x0000000C)
	dc.b	$F6
	dc.b	$B7 ;0x0 (0x000BC2C0-0x000BC2C1, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$9E, $06 ;0x0 (0x000BC2C2-0x000BC2C4, Entry count: 0x00000002)
	dc.b	$9D
	dc.b	$9E, $80, $0C ;0x0 (0x000BC2C5-0x000BC2C8, Entry count: 0x00000003) [Unknown data]
	dc.b	$A2
	dc.b	$A0, $06, $E6, $06, $06 ;0x0 (0x000BC2C9-0x000BC2CE, Entry count: 0x00000005) [Unknown data]
	dc.b	$A2, $0C ;0x0 (0x000BC2CE-0x000BC2D0, Entry count: 0x00000002)
	dc.b	$A4
	dc.b	$06 ;0x0 (0x000BC2D1-0x000BC2D2, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$0C ;0x0 (0x000BC2D3-0x000BC2D4, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

loc_BC2D5:
	dc.b	$E5, $03, $EF, $50, $E3, $01, $02, $B3, $B8, $BC, $06 ;0x0 (0x000BC2D5-0x000BC2E0, Entry count: 0x0000000B)
	dc.b	$B5
	dc.b	$BA, $BD, $80, $24 ;0x0 (0x000BC2E1-0x000BC2E5, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B5
	dc.b	$BD, $BA, $0C ;0x0 (0x000BC2E8-0x000BC2EB, Entry count: 0x00000003) [Unknown data]
	dc.b	$1E
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BC2ED-0x000BC2F0, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BD, $80, $24 ;0x0 (0x000BC2F1-0x000BC2F5, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B5
	dc.b	$BA, $BD, $0C, $0C, $06, $0C, $B1, $BA, $B6, $06 ;0x0 (0x000BC2F8-0x000BC302, Entry count: 0x0000000A) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $80, $24 ;0x0 (0x000BC303-0x000BC307, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B3
	dc.b	$B8, $BC, $0C ;0x0 (0x000BC30A-0x000BC30D, Entry count: 0x00000003) [Unknown data]
	dc.b	$12
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC30F-0x000BC310, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $06 ;0x0 (0x000BC311-0x000BC314, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $80, $24 ;0x0 (0x000BC315-0x000BC319, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B3
	dc.b	$BC, $B8, $0C ;0x0 (0x000BC31C-0x000BC31F, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$12
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BC322-0x000BC325, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BD, $80, $24 ;0x0 (0x000BC326-0x000BC32A, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$12
	dc.b	$B5
	dc.b	$BD, $BA, $0C ;0x0 (0x000BC32D-0x000BC330, Entry count: 0x00000003) [Unknown data]
	dc.b	$12
	dc.b	$B3
	dc.b	$BC, $B8, $06 ;0x0 (0x000BC332-0x000BC335, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $BD, $80, $24 ;0x0 (0x000BC336-0x000BC33A, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B5
	dc.b	$BD, $BA, $0C ;0x0 (0x000BC33D-0x000BC340, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$12
	dc.b	$B1
	dc.b	$B6, $BA, $06 ;0x0 (0x000BC343-0x000BC346, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $80, $24 ;0x0 (0x000BC347-0x000BC34B, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B3
	dc.b	$B8, $BC, $80, $0C ;0x0 (0x000BC34E-0x000BC352, Entry count: 0x00000004) [Unknown data]
	dc.b	$B3
	dc.b	$BA, $BD, $B3, $B8, $BC, $B1, $BA, $B6, $06 ;0x0 (0x000BC353-0x000BC35C, Entry count: 0x00000009) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $80, $24 ;0x0 (0x000BC35D-0x000BC361, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$06
	dc.b	$B3
	dc.b	$BC, $B8, $0C, $0C, $06, $0C, $E3, $01, $01, $EF, $5C, $BA, $B6, $B1, $06 ;0x0 (0x000BC364-0x000BC373, Entry count: 0x0000000F) [Unknown data]
	dc.b	$B5
	dc.b	$B1, $B8, $B1, $B6, $BA, $80, $0C ;0x0 (0x000BC374-0x000BC37B, Entry count: 0x00000007) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BD, $B3, $BC, $B8, $06 ;0x0 (0x000BC37C-0x000BC382, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$F8
	dc.b	$DC ;0x0 (0x000BC385-0x000BC386, Entry count: 0x00000001) [Unknown data]
	dc.b	$FB
	dc.b	$E6 ;0x0 (0x000BC387-0x000BC388, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$B5
	dc.b	$B1, $B8, $B1, $B6, $BA, $80, $0C ;0x0 (0x000BC38A-0x000BC391, Entry count: 0x00000007) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BD, $B3, $BC, $B8, $06 ;0x0 (0x000BC392-0x000BC398, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$F8
	dc.b	$C6 ;0x0 (0x000BC39B-0x000BC39C, Entry count: 0x00000001) [Unknown data]
	dc.b	$FB
	dc.b	$BA, $B6, $B1, $B1, $B8, $B5, $B1, $B6, $BA, $80, $0C ;0x0 (0x000BC39D-0x000BC3A8, Entry count: 0x0000000B)
	dc.b	$B5
	dc.b	$BD, $BA, $BC, $B3, $B8, $06, $E6, $06, $06, $06, $06, $06, $06, $06 ;0x0 (0x000BC3A9-0x000BC3B7, Entry count: 0x0000000E) [Unknown data]
	dc.b	$B5, $BA, $BD, $E6 ;0x0 (0x000BC3B7-0x000BC3BB, Entry count: 0x00000004)
	dc.b	$18
	dc.b	$80
	dc.b	$E7 ;0x0 (0x000BC3BD-0x000BC3BE, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$B1
	dc.b	$B6, $AE, $B1, $B6, $AE, $B7, $B2, $AF, $B8, $B3, $B0, $80, $12 ;0x0 (0x000BC3C0-0x000BC3CD, Entry count: 0x0000000D) [Unknown data]
	dc.b	$F6
	dc.b	$06 ;0x0 (0x000BC3CE-0x000BC3CF, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BC3D0:
	dc.b	$F8, $69 ;0x0 (0x000BC3D0-0x000BC3D2, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$C0, $88, $84, $88, $81, $03, $81, $88, $88, $84, $0C, $F8, $5B ;0x0 (0x000BC3D3-0x000BC3E0, Entry count: 0x0000000D)
	dc.b	$00
	dc.b	$C0, $88, $84, $88, $80, $02, $80, $80, $81, $03, $82, $84, $0C, $88, $06, $88
	dc.b	$84, $C0, $C0, $88, $84, $88, $C0, $88, $84, $C0, $C0, $88, $84, $88, $C0, $88 ;0x0 (0x000BC3E1-0x000BC40D, Entry count: 0x0000002C)
	dc.b	$84, $C0, $C0, $88, $84, $88, $C0, $88, $84, $C0, $88, $03 ;0x20
	dc.b	$06, $03 ;0x0 (0x000BC40D-0x000BC40F, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $0C, $88, $06, $88, $84, $C0, $C0, $88, $84, $88, $C0, $88, $84, $C0, $80
	dc.b	$03, $80, $84, $06, $88, $88, $84, $C0, $84, $C0, $C0, $88, $03, $88, $84, $0C ;0x0 (0x000BC40F-0x000BC43A, Entry count: 0x0000002B)
	dc.b	$80, $03, $80, $81, $06, $88, $88, $84, $18, $F6, $96 ;0x20
	dc.b	$FF
	dc.b	$F8, $0D ;0x0 (0x000BC43B-0x000BC43D, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$C0, $88, $84, $88, $C0, $88, $84, $C0, $F8, $02 ;0x0 (0x000BC43E-0x000BC448, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$F9 ;0x0 (0x000BC449-0x000BC44A, Entry count: 0x00000001) [Unknown data]
	dc.b	$88, $06, $88, $84, $C0, $C0, $88, $84, $88, $C0, $88, $84, $88, $C0, $C0
	dc.b	$84, $C0, $88, $06, $88, $84, $C0, $C0, $88, $84, $88, $F9

loc_BC465:
	dc.b	$EF, $5E, $E3, $01, $01 ;0x0 (0x000BC44A-0x000BC46C, Entry count: 0x00000022)
	dc.b	$F8, $66 ;0x20
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BC46D-0x000BC46E, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$BD
	dc.b	$BA, $B5, $BF, $BC, $B8, $B5, $E6 ;0x0 (0x000BC470-0x000BC477, Entry count: 0x00000007) [Unknown data]
	dc.b	$30
	dc.b	$F8
	dc.b	$58 ;0x0 (0x000BC479-0x000BC47A, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BC47B-0x000BC47C, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$BD
	dc.b	$BA, $B5, $BF, $BC, $B8, $B6, $E6 ;0x0 (0x000BC47E-0x000BC485, Entry count: 0x00000007) [Unknown data]
	dc.b	$24
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC487-0x000BC488, Entry count: 0x00000001) [Unknown data]
	dc.b	$EF
	dc.b	$5D, $E3, $00, $00, $E6 ;0x0 (0x000BC489-0x000BC48E, Entry count: 0x00000005) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC48F-0x000BC490, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$B8, $B5, $BC, $B8, $80, $0C ;0x0 (0x000BC491-0x000BC497, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BC499-0x000BC49A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BA, $BC, $B7, $18 ;0x0 (0x000BC49B-0x000BC49F, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BC4A1-0x000BC4A2, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BC
	dc.b	$BE, $B7, $0C ;0x0 (0x000BC4A4-0x000BC4A7, Entry count: 0x00000003) [Unknown data]
	dc.b	$C1
	dc.b	$E6 ;0x0 (0x000BC4A8-0x000BC4A9, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$18 ;0x0 (0x000BC4AA-0x000BC4AB, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC4AC-0x000BC4AD, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BC4AE-0x000BC4AF, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC4B0-0x000BC4B1, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$B8, $B5, $BC, $B8, $80, $0C ;0x0 (0x000BC4B2-0x000BC4B8, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BC4BA-0x000BC4BB, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BF, $BC, $C1, $B5, $80, $0C ;0x0 (0x000BC4BC-0x000BC4C2, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$B3
	dc.b	$06 ;0x0 (0x000BC4C4-0x000BC4C5, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$BA, $B7, $BA, $0C ;0x0 (0x000BC4C6-0x000BC4CA, Entry count: 0x00000004) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BC4CB-0x000BC4CC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B9
	dc.b	$E6 ;0x0 (0x000BC4CD-0x000BC4CE, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$94 ;0x0 (0x000BC4D0-0x000BC4D1, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BC4D2-0x000BC4D3, Entry count: 0x00000001)
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC4D4-0x000BC4D5, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BA, $B5, $BC, $0C ;0x0 (0x000BC4D6-0x000BC4DA, Entry count: 0x00000004) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BC4DB-0x000BC4DC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$E6 ;0x0 (0x000BC4DD-0x000BC4DE, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F9

loc_BC4E0:
	dc.b	$EF, $5F, $E6 ;0x0 (0x000BC4E0-0x000BC4E3, Entry count: 0x00000003)
	dc.b	$A2
	dc.b	$0C ;0x0 (0x000BC4E4-0x000BC4E5, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $14, $FB ;0x0 (0x000BC4E6-0x000BC4E9, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BC4EA-0x000BC4EB, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$0C, $0C, $0C, $0C, $E6, $0C, $0C, $0C, $06, $9E, $E6, $06, $06, $0C, $0C, $0C
	dc.b	$E6, $9D, $9D, $9D, $9D, $E6 ;0x0 (0x000BC4EC-0x000BC502, Entry count: 0x00000016) [Unknown data]
	dc.b	$A4
	dc.b	$A4, $A4, $A4, $E6 ;0x0 (0x000BC503-0x000BC507, Entry count: 0x00000004) [Unknown data]
	dc.b	$9F
	dc.b	$9F, $9F, $9F, $E6 ;0x0 (0x000BC508-0x000BC50C, Entry count: 0x00000004) [Unknown data]
	dc.b	$9E
	dc.b	$9E, $9E, $9E, $E6 ;0x0 (0x000BC50D-0x000BC511, Entry count: 0x00000004) [Unknown data]
	dc.b	$9D
	dc.b	$9D, $9D, $9D, $E6 ;0x0 (0x000BC512-0x000BC516, Entry count: 0x00000004) [Unknown data]
	dc.b	$A0
	dc.b	$A0, $A0, $A0, $E6 ;0x0 (0x000BC517-0x000BC51B, Entry count: 0x00000004) [Unknown data]
	dc.b	$9B
	dc.b	$9B, $9B, $9B, $06 ;0x0 (0x000BC51C-0x000BC520, Entry count: 0x00000004) [Unknown data]
	dc.b	$9A
	dc.b	$E6 ;0x0 (0x000BC521-0x000BC522, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$BB ;0x0 (0x000BC524-0x000BC525, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BC526:
	dc.b	$E5, $03, $EF, $5C, $E3, $01, $01, $F8, $66 ;0x0 (0x000BC526-0x000BC52F, Entry count: 0x00000009)
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BC530-0x000BC531, Entry count: 0x00000001)
	dc.b	$BA
	dc.b	$BD, $C1, $18 ;0x0 (0x000BC532-0x000BC535, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$C4, $BA, $E6 ;0x0 (0x000BC536-0x000BC539, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$BA, $C1, $1E ;0x0 (0x000BC53A-0x000BC53D, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BC53E-0x000BC53F, Entry count: 0x00000001) [Unknown data]
	dc.b	$F8
	dc.b	$54 ;0x0 (0x000BC540-0x000BC541, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BC542-0x000BC543, Entry count: 0x00000001)
	dc.b	$BA
	dc.b	$BD, $C1, $24 ;0x0 (0x000BC544-0x000BC547, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$C1, $BD, $06 ;0x0 (0x000BC548-0x000BC54B, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$BA, $B6, $E6 ;0x0 (0x000BC54C-0x000BC54F, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$EF
	dc.b	$42, $E6 ;0x0 (0x000BC551-0x000BC553, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$B8, $BC, $0C, $0C, $0C, $0C, $E6, $B3, $B7, $BC, $0C, $0C, $0C, $0C, $E6, $B7
	dc.b	$BA, $B2, $0C, $0C, $0C, $0C, $E6, $BA, $B1, $B6, $0C, $0C, $0C, $0C, $E6, $B5 ;0x0 (0x000BC554-0x000BC587, Entry count: 0x00000033) [Unknown data]
	dc.b	$BC, $B8, $0C, $0C, $0C, $0C, $E6, $BC, $B3, $B8, $0C, $0C, $0C, $0C, $E6, $B7, $B3, $BA, $0C ;0x20
	dc.b	$0C
	dc.b	$0C
	dc.b	$B7
	dc.b	$B3, $BA, $06 ;0x0 (0x000BC58A-0x000BC58D, Entry count: 0x00000003) [Unknown data]
	dc.b	$B9
	dc.b	$B2, $80, $E6 ;0x0 (0x000BC58E-0x000BC591, Entry count: 0x00000003) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$92 ;0x0 (0x000BC593-0x000BC594, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$BA, $BD, $C1, $18 ;0x0 (0x000BC595-0x000BC599, Entry count: 0x00000004)
	dc.b	$BC
	dc.b	$B8, $C1, $BD, $BA, $C1, $24 ;0x0 (0x000BC59A-0x000BC5A0, Entry count: 0x00000006) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC5A1-0x000BC5A2, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

loc_BC5A3:
	dc.b	$F8, $31 ;0x0 (0x000BC5A3-0x000BC5A5, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $84, $88, $06, $84, $84, $84, $C0, $88, $84, $0C, $88, $84, $F8, $21 ;0x0 (0x000BC5A6-0x000BC5B5, Entry count: 0x0000000F)
	dc.b	$00
	dc.b	$88, $0C, $84, $88, $06, $C0, $84, $C0, $03, $C0, $84, $06, $84, $88, $03, $81
	dc.b	$06, $82, $03, $80, $02, $80, $80, $81, $03, $81, $84, $06, $88, $F6, $CE ;0x0 (0x000BC5B6-0x000BC5D5, Entry count: 0x0000001F)
	dc.b	$FF
	dc.b	$88, $0C, $84, $F7, $00, $0C, $F9 ;0x0 (0x000BC5D6-0x000BC5DD, Entry count: 0x00000007)
	dc.b	$FF
	dc.b	$F9, $00, $06 ;0x0 (0x000BC5DE-0x000BC5E1, Entry count: 0x00000003) [Unknown data]
	dc.b	$06, $06, $06, $06, $06, $06, $F9

loc_BC5E8:
	dc.b	$EF, $60, $E7 ;0x0 (0x000BC5E1-0x000BC5EB, Entry count: 0x0000000A)
	dc.b	$30
	dc.b	$F8
	dc.b	$8B ;0x0 (0x000BC5ED-0x000BC5EE, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BC5EF-0x000BC5F0, Entry count: 0x00000001)
	dc.b	$03
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC5F2-0x000BC5F4, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$BA, $0C ;0x0 (0x000BC5F5-0x000BC5F7, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $06 ;0x0 (0x000BC5F8-0x000BC5FA, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$03 ;0x0 (0x000BC5FB-0x000BC5FC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC5FD-0x000BC5FF, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BC600-0x000BC601, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC602-0x000BC603, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC604-0x000BC605, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$03
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC608-0x000BC60A, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $0C ;0x0 (0x000BC60B-0x000BC60D, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$B3, $06 ;0x0 (0x000BC60E-0x000BC610, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$03 ;0x0 (0x000BC611-0x000BC612, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC613-0x000BC615, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BC616-0x000BC617, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC618-0x000BC619, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC61A-0x000BC61B, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$B8
	dc.b	$C1, $BF, $EF, $61, $BD, $12 ;0x0 (0x000BC61E-0x000BC624, Entry count: 0x00000006) [Unknown data]
	dc.b	$BA
	dc.b	$BF, $0C ;0x0 (0x000BC625-0x000BC627, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$12 ;0x0 (0x000BC628-0x000BC629, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$BF, $0C ;0x0 (0x000BC62A-0x000BC62C, Entry count: 0x00000002) [Unknown data]
	dc.b	$C2
	dc.b	$06 ;0x0 (0x000BC62D-0x000BC62E, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC62F-0x000BC630, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BC631-0x000BC632, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC633-0x000BC634, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$E6, $30, $E6, $12, $BC, $C4, $0C ;0x0 (0x000BC635-0x000BC63C, Entry count: 0x00000007) [Unknown data]
	dc.b	$BF
	dc.b	$12 ;0x0 (0x000BC63D-0x000BC63E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$C4, $0C ;0x0 (0x000BC63F-0x000BC641, Entry count: 0x00000002) [Unknown data]
	dc.b	$C3
	dc.b	$24 ;0x0 (0x000BC642-0x000BC643, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$0C ;0x0 (0x000BC644-0x000BC645, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$C3, $C8, $C6, $EF, $60, $F8, $2C ;0x0 (0x000BC646-0x000BC64D, Entry count: 0x00000007) [Unknown data]
	dc.b	$00
	dc.b	$EF, $61, $B3, $0C ;0x0 (0x000BC64E-0x000BC652, Entry count: 0x00000004)
	dc.b	$B5
	dc.b	$B1, $B3, $AE, $18 ;0x0 (0x000BC653-0x000BC657, Entry count: 0x00000004) [Unknown data]
	dc.b	$B1
	dc.b	$0C ;0x0 (0x000BC658-0x000BC659, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $18 ;0x0 (0x000BC65A-0x000BC65C, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BC65D-0x000BC65E, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BD
	dc.b	$12 ;0x0 (0x000BC660-0x000BC661, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BC662-0x000BC663, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BC664-0x000BC665, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E6 ;0x0 (0x000BC666-0x000BC667, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$B3
	dc.b	$12 ;0x0 (0x000BC669-0x000BC66A, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $0C ;0x0 (0x000BC66B-0x000BC66D, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$18 ;0x0 (0x000BC66E-0x000BC66F, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BC670-0x000BC671, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$B7, $30 ;0x0 (0x000BC672-0x000BC674, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F6
	dc.b	$70 ;0x0 (0x000BC677-0x000BC678, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$B5, $03 ;0x0 (0x000BC679-0x000BC67B, Entry count: 0x00000002)
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC67C-0x000BC67E, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BC67F-0x000BC680, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC681-0x000BC682, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC683-0x000BC684, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$03
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC687-0x000BC689, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $80, $18 ;0x0 (0x000BC68A-0x000BC68D, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$03 ;0x0 (0x000BC68E-0x000BC68F, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$B5, $06 ;0x0 (0x000BC690-0x000BC692, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$12 ;0x0 (0x000BC693-0x000BC694, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC695-0x000BC696, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BC697-0x000BC698, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

loc_BC699:
	dc.b	$EF, $40, $A2, $06 ;0x0 (0x000BC699-0x000BC69D, Entry count: 0x00000004)
	dc.b	$06
	dc.b	$F7
	dc.b	$00, $47, $FB ;0x0 (0x000BC69F-0x000BC6A2, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$9E, $06 ;0x0 (0x000BC6A3-0x000BC6A5, Entry count: 0x00000002) [Unknown data]
	dc.b	$F7
	dc.b	$00, $18, $FB ;0x0 (0x000BC6A6-0x000BC6A9, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$9E, $9E, $9E, $9E, $9E, $03, $03, $06, $06, $06, $A0, $06 ;0x0 (0x000BC6AA-0x000BC6B6, Entry count: 0x0000000C) [Unknown data]
	dc.b	$F7
	dc.b	$00, $10, $FB ;0x0 (0x000BC6B7-0x000BC6BA, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$9B, $F8, $22 ;0x0 (0x000BC6BB-0x000BC6BE, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$A2, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $E6, $06, $06, $06
	dc.b	$06, $06, $06, $06, $03, $03, $E6, $A2, $06 ;0x0 (0x000BC6BF-0x000BC6D9, Entry count: 0x0000001A)
	dc.b	$F8
	dc.b	$05 ;0x0 (0x000BC6DA-0x000BC6DB, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BC6DC-0x000BC6DD, Entry count: 0x00000001)
	dc.b	$A2
	dc.b	$06, $06, $06, $06, $06, $06, $03, $03, $06, $E6, $06, $F8, $F5 ;0x0 (0x000BC6DE-0x000BC6EB, Entry count: 0x0000000D) [Unknown data]
	dc.b	$FE
	dc.b	$9E, $F8, $F1 ;0x0 (0x000BC6EC-0x000BC6EF, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$9D, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $F7, $00, $03, $F4 ;0x0 (0x000BC6F0-0x000BC6FC, Entry count: 0x0000000C)
	dc.b	$FF
	dc.b	$9E, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $F7, $00, $02, $F4 ;0x0 (0x000BC6FD-0x000BC709, Entry count: 0x0000000C) [Unknown data]
	dc.b	$FF
	dc.b	$9F, $F8, $D3 ;0x0 (0x000BC70A-0x000BC70D, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$E6 ;0x0 (0x000BC70E-0x000BC70F, Entry count: 0x00000001)
	dc.b	$9F
	dc.b	$9F, $9F, $9F, $9F, $80, $12 ;0x0 (0x000BC710-0x000BC716, Entry count: 0x00000006) [Unknown data]
	dc.b	$F6
	dc.b	$81 ;0x0 (0x000BC717-0x000BC718, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BC719:
	dc.b	$E5, $03, $EF, $62, $E3, $01, $05, $BA, $B5, $BD, $06 ;0x0 (0x000BC719-0x000BC724, Entry count: 0x0000000B)
	dc.b	$06
	dc.b	$F7
	dc.b	$00, $43, $FB ;0x0 (0x000BC726-0x000BC729, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$B5, $BA, $BD, $0C ;0x0 (0x000BC72A-0x000BC72E, Entry count: 0x00000004) [Unknown data]
	dc.b	$0C
	dc.b	$EF
	dc.b	$42, $E3, $01, $01, $BA, $B6, $B1, $12 ;0x0 (0x000BC730-0x000BC738, Entry count: 0x00000008) [Unknown data]
	dc.b	$80
	dc.b	$BA, $B1, $B6, $06, $06, $E6, $06, $80, $2A ;0x0 (0x000BC739-0x000BC742, Entry count: 0x00000009) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $12, $12, $0C, $E6, $24, $80, $0C ;0x0 (0x000BC743-0x000BC74C, Entry count: 0x00000009) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $24, $06, $06, $E6, $80, $24 ;0x0 (0x000BC74D-0x000BC755, Entry count: 0x00000008) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $0C ;0x0 (0x000BC756-0x000BC759, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B3, $B7, $24 ;0x0 (0x000BC75A-0x000BC75D, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$BE
	dc.b	$B5, $BA, $03, $09, $03, $09, $03, $09, $03, $09, $EF, $62, $B5, $BD, $BA, $06 ;0x0 (0x000BC75F-0x000BC76F, Entry count: 0x00000010) [Unknown data]
	dc.b	$06
	dc.b	$F7
	dc.b	$00, $1F, $FB ;0x0 (0x000BC771-0x000BC774, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$EF, $42, $E3, $01, $05, $B1, $B6, $BA, $12 ;0x0 (0x000BC775-0x000BC77E, Entry count: 0x00000009) [Unknown data]
	dc.b	$80
	dc.b	$B1, $BA, $B6, $06, $06, $E7, $30, $B1, $B6, $BA, $12, $12, $0C, $E6, $1E, $80, $12 ;0x0 (0x000BC77F-0x000BC790, Entry count: 0x00000011) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $24, $06, $06, $E7, $24, $BC, $B3, $B8, $0C ;0x0 (0x000BC791-0x000BC79C, Entry count: 0x0000000B) [Unknown data]
	dc.b	$B7
	dc.b	$BB, $B4, $06 ;0x0 (0x000BC79D-0x000BC7A0, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$F7
	dc.b	$00, $0B, $FB ;0x0 (0x000BC7A2-0x000BC7A5, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$BB, $B4, $B7, $18 ;0x0 (0x000BC7A6-0x000BC7AA, Entry count: 0x00000004) [Unknown data]
	dc.b	$F6
	dc.b	$6D ;0x0 (0x000BC7AB-0x000BC7AC, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BC7AD:
	dc.b	$88, $03, $C0, $C0, $06, $84, $C0, $03, $C0, $F7, $00, $0A, $F3 ;0x0 (0x000BC7AD-0x000BC7BA, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$F8, $0D ;0x0 (0x000BC7BB-0x000BC7BD, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$F8, $2F ;0x0 (0x000BC7BE-0x000BC7C0, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$F8, $07 ;0x0 (0x000BC7C1-0x000BC7C3, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$F8, $29 ;0x0 (0x000BC7C4-0x000BC7C6, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$F6, $E4 ;0x0 (0x000BC7C7-0x000BC7C9, Entry count: 0x00000002) [Unknown data]
	dc.b	$FF
	dc.b	$88, $03, $C0, $C0, $06, $84, $C0, $03, $C0, $F7, $00, $07, $F3 ;0x0 (0x000BC7CA-0x000BC7D7, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$80, $03, $80, $81, $82, $84, $0C, $F9 ;0x0 (0x000BC7D8-0x000BC7E0, Entry count: 0x00000008) [Unknown data]
	dc.b	$88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $F7, $00, $02, $F3 ;0x0 (0x000BC7E0-0x000BC7ED, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$F9, $F8, $EF ;0x0 (0x000BC7EE-0x000BC7F1, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$88, $06, $C0, $84, $88, $C0, $88, $84, $C0, $C0, $88, $84, $84, $80, $03, $80, $81, $06 ;0x0 (0x000BC7F2-0x000BC804, Entry count: 0x00000012)
	dc.b	$03, $03 ;0x0 (0x000BC804-0x000BC806, Entry count: 0x00000002) [Unknown data]
	dc.b	$82, $06, $F8, $D6 ;0x0 (0x000BC806-0x000BC80A, Entry count: 0x00000004)
	dc.b	$FF
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $03, $88, $84, $06, $88, $03, $88
	dc.b	$84, $06, $80, $02, $80, $80, $81, $03, $82, $80, $04, $81, $82, $F9

loc_BC82A:
	dc.b	$EF ;0x0 (0x000BC80B-0x000BC831, Entry count: 0x00000026)
	dc.b	$48, $E3, $01, $01, $F8, $36 ;0x20
	dc.b	$00
	dc.b	$C2, $03 ;0x0 (0x000BC832-0x000BC834, Entry count: 0x00000002)
	dc.b	$BD
	dc.b	$C2, $06 ;0x0 (0x000BC835-0x000BC837, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $03 ;0x0 (0x000BC838-0x000BC83A, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$06, $06, $03, $06, $C1, $C2, $24 ;0x0 (0x000BC83B-0x000BC842, Entry count: 0x00000007) [Unknown data]
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BC843-0x000BC844, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$BF, $30 ;0x0 (0x000BC845-0x000BC847, Entry count: 0x00000002) [Unknown data]
	dc.b	$F8
	dc.b	$1E ;0x0 (0x000BC848-0x000BC849, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$C2, $03 ;0x0 (0x000BC84A-0x000BC84C, Entry count: 0x00000002)
	dc.b	$BD
	dc.b	$C2, $06 ;0x0 (0x000BC84D-0x000BC84F, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $03 ;0x0 (0x000BC850-0x000BC852, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BC853-0x000BC854, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$09
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BC857-0x000BC858, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$30, $E7, $18, $0C ;0x0 (0x000BC859-0x000BC85D, Entry count: 0x00000004) [Unknown data]
	dc.b	$C6, $C8, $12 ;0x0 (0x000BC85D-0x000BC860, Entry count: 0x00000003)
	dc.b	$C6
	dc.b	$1E ;0x0 (0x000BC861-0x000BC862, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F6
	dc.b	$C4 ;0x0 (0x000BC865-0x000BC866, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$BD, $03 ;0x0 (0x000BC867-0x000BC869, Entry count: 0x00000002)
	dc.b	$BC
	dc.b	$BD, $06 ;0x0 (0x000BC86A-0x000BC86C, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $03 ;0x0 (0x000BC86D-0x000BC86F, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BC870-0x000BC871, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$03
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BC874-0x000BC875, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$03 ;0x0 (0x000BC876-0x000BC877, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $06 ;0x0 (0x000BC878-0x000BC87A, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$B8, $03 ;0x0 (0x000BC87B-0x000BC87D, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BC87E-0x000BC87F, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$03
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BC882-0x000BC883, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $12 ;0x0 (0x000BC884-0x000BC886, Entry count: 0x00000002) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $06 ;0x0 (0x000BC887-0x000BC889, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$E6 ;0x0 (0x000BC88A-0x000BC88B, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$E6
	dc.b	$C2
	dc.b	$03 ;0x0 (0x000BC88E-0x000BC88F, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$C2, $06 ;0x0 (0x000BC890-0x000BC892, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $03 ;0x0 (0x000BC893-0x000BC895, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$09 ;0x0 (0x000BC896-0x000BC897, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$C1
	dc.b	$BD, $0C ;0x0 (0x000BC899-0x000BC89B, Entry count: 0x00000002) [Unknown data]
	dc.b	$F9

loc_BC89C:
	dc.b	$EF, $40, $F8, $1C ;0x0 (0x000BC89C-0x000BC8A0, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$A0, $06 ;0x0 (0x000BC8A1-0x000BC8A3, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$A2
	dc.b	$A2, $A4, $A4, $A2, $A2, $F8, $10 ;0x0 (0x000BC8A5-0x000BC8AC, Entry count: 0x00000007) [Unknown data]
	dc.b	$00
	dc.b	$A0, $A0, $A0, $A0, $A2, $A2, $A2, $A2, $A2, $A2, $A2, $A2, $F6, $E1 ;0x0 (0x000BC8AD-0x000BC8BB, Entry count: 0x0000000E)
	dc.b	$FF
	dc.b	$A5, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $A2, $A2, $A2, $A2, $A2, $A2, $A2, $03 ;0x0 (0x000BC8BC-0x000BC8CD, Entry count: 0x00000011)
	dc.b	$03
	dc.b	$9D
	dc.b	$06 ;0x0 (0x000BC8CF-0x000BC8D0, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$9F, $9E, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $A0, $A0, $A0, $A0, $F9

loc_BC8E0:
	dc.b	$E5, $03, $EF, $4A, $E3, $01, $01, $B5, $B8, $BD, $0C, $0C, $0C, $0C, $0C, $0C, $0C ;0x0 (0x000BC8D1-0x000BC950, Entry count: 0x0000007F) [Unknown data]
	dc.b	$0C, $BD, $B5, $BA, $0C, $0C, $0C, $0C, $0C, $0C, $03, $03, $06, $06, $06, $BA, $BD
	dc.b	$B6, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $BF, $B8, $BC, $0C, $0C, $0C ;0x20
	dc.b	$0C, $09, $03, $06, $06, $03, $03, $06, $06, $06, $B5, $B8, $BD, $0C, $0C, $0C, $0C
	dc.b	$0C, $0C, $0C, $0C, $BD, $B5, $BA, $0C, $0C, $0C, $0C, $09, $03, $06, $06 ;0x40
	dc.b	$03, $03, $06, $06, $06, $BD, $BA, $B6, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $BF
	dc.b	$BC, $B8, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $BD, $BA, $B5, $12 ;0x60
	dc.b	$BA
	dc.b	$B5, $BD, $1E ;0x0 (0x000BC951-0x000BC954, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F6
	dc.b	$88 ;0x0 (0x000BC957-0x000BC958, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BC959:
	dc.b	$F8, $50 ;0x0 (0x000BC959-0x000BC95B, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $C0, $84, $C0, $88, $03 ;0x0 (0x000BC95C-0x000BC963, Entry count: 0x00000007)
	dc.b	$03, $06 ;0x0 (0x000BC963-0x000BC965, Entry count: 0x00000002) [Unknown data]
	dc.b	$84, $C0, $03, $C0, $F8, $40 ;0x0 (0x000BC965-0x000BC96B, Entry count: 0x00000006)
	dc.b	$00
	dc.b	$80, $09, $81, $03 ;0x0 (0x000BC96C-0x000BC970, Entry count: 0x00000004)
	dc.b	$06 ;0x0 (0x000BC970-0x000BC971, Entry count: 0x00000001) [Unknown data]
	dc.b	$82, $80, $03, $80, $81, $06 ;0x0 (0x000BC971-0x000BC977, Entry count: 0x00000006)
	dc.b	$03, $03 ;0x0 (0x000BC977-0x000BC979, Entry count: 0x00000002) [Unknown data]
	dc.b	$82, $06, $F8, $2E ;0x0 (0x000BC979-0x000BC97D, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$88, $06, $C0, $84, $C0, $81, $03, $81, $82, $06, $88, $84, $03, $84, $F8, $1D ;0x0 (0x000BC97E-0x000BC98E, Entry count: 0x00000010)
	dc.b	$00
	dc.b	$88, $06, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $C0, $84, $C0, $88
	dc.b	$C0, $84, $C0, $88, $81, $81, $84, $F6, $AF ;0x0 (0x000BC98F-0x000BC9AA, Entry count: 0x0000001B)
	dc.b	$FF
	dc.b	$88, $03, $C0, $C0, $06, $84, $C0, $03, $C0, $88, $06, $C0, $03, $C0, $84, $06, $C0, $03
	dc.b	$C0, $F7, $00, $03, $E9 ;0x0 (0x000BC9AB-0x000BC9C2, Entry count: 0x00000017)
	dc.b	$FF
	dc.b	$F9

loc_BC9C4:
	dc.b	$EF, $64, $E3, $01, $01, $A2, $06 ;0x0 (0x000BC9C3-0x000BC9CB, Entry count: 0x00000008) [Unknown data]
	dc.b	$AC
	dc.b	$AE, $B0, $9E, $AC, $AE, $B0, $A2, $AC, $AE, $05 ;0x0 (0x000BC9CC-0x000BC9D6, Entry count: 0x0000000A) [Unknown data]
	dc.b	$80
	dc.b	$01, $B0, $06 ;0x0 (0x000BC9D7-0x000BC9DA, Entry count: 0x00000003) [Unknown data]
	dc.b	$9E
	dc.b	$AC, $AE, $B0, $A2, $AC, $AE, $B0, $9E, $AC, $AE, $B0, $A2, $AC, $AE, $B0, $9E, $AC, $AE
	dc.b	$B0, $EF, $65, $E3, $01, $01, $9D, $06 ;0x0 (0x000BC9DB-0x000BC9F5, Entry count: 0x0000001A) [Unknown data]
	dc.b	$AE
	dc.b	$AD, $A9, $AC, $AB, $9D, $AE, $AD, $A9, $AC, $AB, $A9, $A7, $9D, $AE, $AD, $A9, $AC, $AB
	dc.b	$9D, $AE, $AD, $A9, $AC, $AB, $AC, $AE, $0C ;0x0 (0x000BC9F6-0x000BCA11, Entry count: 0x0000001B) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BCA12-0x000BCA13, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$AF ;0x0 (0x000BCA14-0x000BCA15, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BCA16:
	dc.b	$EF, $40, $A2, $18 ;0x0 (0x000BCA16-0x000BCA1A, Entry count: 0x00000004)
	dc.b	$9E
	dc.b	$A2, $9E, $A2, $9E, $A2, $9E, $9D, $9D, $0C, $0C, $E6, $18, $0C, $0C, $E6, $0C, $0C
	dc.b	$18, $E6, $0C, $0C, $18, $F6, $E3 ;0x0 (0x000BCA1B-0x000BCA33, Entry count: 0x00000018) [Unknown data]
	dc.b	$FF

loc_BCA34:
	dc.b	$E5, $03, $EF, $63, $E3, $01, $01, $BA, $BD, $C1, $18 ;0x0 (0x000BCA34-0x000BCA3F, Entry count: 0x0000000B)
	dc.b	$BA
	dc.b	$B6, $BD, $0C ;0x0 (0x000BCA40-0x000BCA43, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$BD, $C2, $BA, $18 ;0x0 (0x000BCA44-0x000BCA48, Entry count: 0x00000004) [Unknown data]
	dc.b	$B6
	dc.b	$BA, $BD, $0C ;0x0 (0x000BCA49-0x000BCA4C, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$BD, $C1, $BA, $80, $B6, $BA, $BD, $80, $C2, $BD, $BA, $80, $B6, $BA, $BD, $18 ;0x0 (0x000BCA4D-0x000BCA5D, Entry count: 0x00000010) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BD, $B5, $B9, $BC, $0C ;0x0 (0x000BCA5E-0x000BCA64, Entry count: 0x00000006) [Unknown data]
	dc.b	$B5
	dc.b	$B9, $BC, $E6 ;0x0 (0x000BCA65-0x000BCA68, Entry count: 0x00000003) [Unknown data]
	dc.b	$0C
	dc.b	$80
	dc.b	$B5, $BA, $BD, $18 ;0x0 (0x000BCA6A-0x000BCA6E, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B5
	dc.b	$BC, $B9, $BC, $B5, $B9, $18 ;0x0 (0x000BCA71-0x000BCA77, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$0C
	dc.b	$BD
	dc.b	$B5, $BA, $18 ;0x0 (0x000BCA7A-0x000BCA7D, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCA7E-0x000BCA7F, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$B3 ;0x0 (0x000BCA80-0x000BCA81, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BCA82:
	dc.b	$88, $0C, $C0, $84, $C0, $F7, $00, $03, $F7 ;0x0 (0x000BCA82-0x000BCA8B, Entry count: 0x00000009)
	dc.b	$FF
	dc.b	$88, $C0, $84, $81, $06, $82, $88, $0C, $88, $84, $88, $88, $84, $88, $88, $88, $84
	dc.b	$88, $88, $84, $88, $80, $06, $81, $84, $0C, $F6, $DA ;0x0 (0x000BCA8C-0x000BCAA8, Entry count: 0x0000001C) [Unknown data]
	dc.b	$FF
	dc.b	$00, $06 ;0x0 (0x000BCAA9-0x000BCAAB, Entry count: 0x00000002) [Unknown data]
	dc.b	$06, $06, $06, $06, $06, $06, $F9 ;0x0 (0x000BCAAB-0x000BCAB2, Entry count: 0x00000007)
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C ;0x0 (0x000BCAB2-0x000BCABB, Entry count: 0x00000009) [Unknown data]
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $F9

loc_BCAC2:
	dc.b	$80, $03

loc_BCAC4:
	dc.b	$EF, $64, $E3, $01, $01, $F8, $36 ;0x0 (0x000BCABB-0x000BCACB, Entry count: 0x00000010)
	dc.b	$00
	dc.b	$B1, $24 ;0x0 (0x000BCACC-0x000BCACE, Entry count: 0x00000002)
	dc.b	$B3
	dc.b	$06 ;0x0 (0x000BCACF-0x000BCAD0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B3, $30 ;0x0 (0x000BCAD1-0x000BCAD3, Entry count: 0x00000002) [Unknown data]
	dc.b	$E3
	dc.b	$01, $01, $F8, $29 ;0x0 (0x000BCAD4-0x000BCAD8, Entry count: 0x00000004) [Unknown data]
	dc.b	$00
	dc.b	$B1, $24 ;0x0 (0x000BCAD9-0x000BCADB, Entry count: 0x00000002)
	dc.b	$AE
	dc.b	$0C ;0x0 (0x000BCADC-0x000BCADD, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$24 ;0x0 (0x000BCADE-0x000BCADF, Entry count: 0x00000001) [Unknown data]
	dc.b	$EF
	dc.b	$5E, $E3, $01, $01, $06 ;0x0 (0x000BCAE0-0x000BCAE5, Entry count: 0x00000005) [Unknown data]
	dc.b	$BA
	dc.b	$F8, $38 ;0x0 (0x000BCAE6-0x000BCAE8, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$BD, $06 ;0x0 (0x000BCAE9-0x000BCAEB, Entry count: 0x00000002)
	dc.b	$BC
	dc.b	$BD, $BA, $1E ;0x0 (0x000BCAEC-0x000BCAEF, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$24
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BCAF2-0x000BCAF3, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$F8, $2A ;0x0 (0x000BCAF4-0x000BCAF6, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$B8, $24 ;0x0 (0x000BCAF7-0x000BCAF9, Entry count: 0x00000002)
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BCAFA-0x000BCAFB, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$E7 ;0x0 (0x000BCAFC-0x000BCAFD, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$C4 ;0x0 (0x000BCAFF-0x000BCB00, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$F8, $0B ;0x0 (0x000BCB01-0x000BCB03, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$B0, $2A ;0x0 (0x000BCB04-0x000BCB06, Entry count: 0x00000002)
	dc.b	$A9
	dc.b	$06 ;0x0 (0x000BCB07-0x000BCB08, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F8
	dc.b	$02 ;0x0 (0x000BCB0B-0x000BCB0C, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$F9 ;0x0 (0x000BCB0D-0x000BCB0E, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE, $06 ;0x0 (0x000BCB0E-0x000BCB10, Entry count: 0x00000002)
	dc.b	$B3
	dc.b	$B2, $AE, $AE, $B5, $B3, $B2, $AE, $B3, $B2, $AE, $AE, $B5, $B3, $B2, $F9, $BC, $0C ;0x0 (0x000BCB11-0x000BCB22, Entry count: 0x00000011) [Unknown data]
	dc.b	$B3
	dc.b	$09 ;0x0 (0x000BCB23-0x000BCB24, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$0F ;0x0 (0x000BCB25-0x000BCB26, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BCB27-0x000BCB28, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$18 ;0x0 (0x000BCB29-0x000BCB2A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BCB2B-0x000BCB2C, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$F9

loc_BCB2E:
	dc.b	$EF, $40, $A2, $12, $06, $18, $E6, $12, $06, $18, $9D, $12, $06, $18, $E6, $12, $06
	dc.b	$18, $A2, $12, $06, $18, $E6, $12, $06, $18, $9E, $12 ;0x0 (0x000BCB2D-0x000BCB4A, Entry count: 0x0000001D) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$A0
	dc.b	$12 ;0x0 (0x000BCB4D-0x000BCB4E, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$F7
	dc.b	$00, $02, $DC ;0x0 (0x000BCB51-0x000BCB54, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$E6, $12, $06, $18, $9B, $12 ;0x0 (0x000BCB55-0x000BCB5B, Entry count: 0x00000006) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$A2
	dc.b	$12 ;0x0 (0x000BCB5E-0x000BCB5F, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$9B
	dc.b	$12 ;0x0 (0x000BCB62-0x000BCB63, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$A0
	dc.b	$12 ;0x0 (0x000BCB66-0x000BCB67, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$9B
	dc.b	$12 ;0x0 (0x000BCB6A-0x000BCB6B, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$A0
	dc.b	$12 ;0x0 (0x000BCB6E-0x000BCB6F, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$A2
	dc.b	$12 ;0x0 (0x000BCB72-0x000BCB73, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$0C
	dc.b	$80
	dc.b	$F6, $B6 ;0x0 (0x000BCB76-0x000BCB78, Entry count: 0x00000002) [Unknown data]
	dc.b	$FF

loc_BCB79:
	dc.b	$E5, $00, $EF, $45, $E3, $01, $01, $F8, $54 ;0x0 (0x000BCB79-0x000BCB82, Entry count: 0x00000009)
	dc.b	$00
	dc.b	$BF, $BC, $B9, $B5, $BF, $BC, $B9, $B5, $BF, $BC, $B9, $B5, $BF, $BC, $B9, $B5, $F8, $41 ;0x0 (0x000BCB83-0x000BCB95, Entry count: 0x00000012)
	dc.b	$00
	dc.b	$BD, $BA, $B6, $B1, $BD, $BA, $B6, $B1, $BF, $BC, $B8, $B3, $BF, $BC, $B8, $B3, $F7
	dc.b	$00, $02, $D6 ;0x0 (0x000BCB96-0x000BCBAA, Entry count: 0x00000014)
	dc.b	$FF
	dc.b	$F8, $3B ;0x0 (0x000BCBAB-0x000BCBAD, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$A9, $06 ;0x0 (0x000BCBAE-0x000BCBB0, Entry count: 0x00000002)
	dc.b	$AE
	dc.b	$B2, $AE, $B5, $AE, $B2, $AE, $A7, $AB, $AE, $AB, $B3, $AE, $B7, $AE, $F8, $27 ;0x0 (0x000BCBB1-0x000BCBC1, Entry count: 0x00000010) [Unknown data]
	dc.b	$00
	dc.b	$A7, $06 ;0x0 (0x000BCBC2-0x000BCBC4, Entry count: 0x00000002)
	dc.b	$AC
	dc.b	$B0, $B3, $B8, $B3, $B0, $AC, $A9, $AE, $B2, $B5, $BA, $B5, $B2, $AE, $F6, $A4 ;0x0 (0x000BCBC5-0x000BCBD5, Entry count: 0x00000010) [Unknown data]
	dc.b	$FF
	dc.b	$C1, $06 ;0x0 (0x000BCBD6-0x000BCBD8, Entry count: 0x00000002)
	dc.b	$BE
	dc.b	$BA, $B5, $C1, $BE, $BA, $B5, $C1, $BE, $BA, $B5, $C1, $BE, $BA, $B5, $F9, $AC, $B3
	dc.b	$B0, $BA, $B8, $B3, $12 ;0x0 (0x000BCBD9-0x000BCBEF, Entry count: 0x00000016) [Unknown data]
	dc.b	$A7
	dc.b	$06 ;0x0 (0x000BCBF0-0x000BCBF1, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$AB, $B3, $AE, $AB, $12 ;0x0 (0x000BCBF2-0x000BCBF7, Entry count: 0x00000005) [Unknown data]
	dc.b	$F9

loc_BCBF8:
	dc.b	$EF, $4B, $E6, $30, $E6, $30, $E6, $30, $E6, $06, $A9, $06 ;0x0 (0x000BCBF8-0x000BCC04, Entry count: 0x0000000C)
	dc.b	$AE
	dc.b	$B2, $B5, $18, $E7, $30, $E6, $30, $E6, $30, $E6, $06, $B0, $AC, $A7, $B3, $18, $E6
	dc.b	$30, $E7, $30, $E6, $30, $E6, $06, $A9, $AE, $B2, $B5, $18, $E7, $30, $E6 ;0x0 (0x000BCC05-0x000BCC2A, Entry count: 0x00000025) [Unknown data]
	dc.b	$30, $E6, $30, $B3, $18 ;0x20
	dc.b	$B0
	dc.b	$B0, $18 ;0x0 (0x000BCC2B-0x000BCC2D, Entry count: 0x00000002) [Unknown data]
	dc.b	$AC
	dc.b	$A7, $30 ;0x0 (0x000BCC2E-0x000BCC30, Entry count: 0x00000002) [Unknown data]
	dc.b	$A9
	dc.b	$18 ;0x0 (0x000BCC31-0x000BCC32, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B3, $24 ;0x0 (0x000BCC33-0x000BCC35, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCC36-0x000BCC37, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$18 ;0x0 (0x000BCC38-0x000BCC39, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$A7, $30 ;0x0 (0x000BCC3A-0x000BCC3C, Entry count: 0x00000002) [Unknown data]
	dc.b	$AC
	dc.b	$18 ;0x0 (0x000BCC3D-0x000BCC3E, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B2, $24 ;0x0 (0x000BCC3F-0x000BCC41, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCC42-0x000BCC43, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$B3 ;0x0 (0x000BCC44-0x000BCC45, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BCC46:
	dc.b	$F8, $35 ;0x0 (0x000BCC46-0x000BCC48, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $80, $81, $82, $C0, $88, $84, $88, $F8, $29 ;0x0 (0x000BCC49-0x000BCC54, Entry count: 0x0000000B)
	dc.b	$00
	dc.b	$80, $C0, $81, $C0, $82, $C0, $81, $C0, $88, $C0, $C0, $88, $84, $C0, $82, $C0, $F7
	dc.b	$00, $06, $F4 ;0x0 (0x000BCC55-0x000BCC69, Entry count: 0x00000014)
	dc.b	$FF
	dc.b	$88, $C0, $88, $C0, $84, $C0, $88, $C0, $C0, $88, $84, $84, $80, $81, $82, $88, $F6, $CA ;0x0 (0x000BCC6A-0x000BCC7C, Entry count: 0x00000012) [Unknown data]
	dc.b	$FF
	dc.b	$88, $06, $C0, $84, $88, $88, $C0, $84, $C0, $F7, $00, $07, $F3 ;0x0 (0x000BCC7D-0x000BCC8A, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$F9

loc_BCC8C:
	dc.b	$EF, $5E, $E3, $01, $01, $C1, $06 ;0x0 (0x000BCC8B-0x000BCC93, Entry count: 0x00000008) [Unknown data]
	dc.b	$BC
	dc.b	$C1, $BC, $C6, $BC, $C1, $BC, $C0, $BC, $C0, $BC, $C6, $BC, $C0, $BC, $BA, $B8, $B7
	dc.b	$B8, $BA, $B8, $B7, $B8, $BC, $BB, $B9, $BB, $BC, $BB, $B9, $BB, $F7, $00 ;0x0 (0x000BCC94-0x000BCCB6, Entry count: 0x00000022) [Unknown data]
	dc.b	$02, $DB ;0x20
	dc.b	$FF
	dc.b	$E3, $01, $01, $F8, $60 ;0x0 (0x000BCCB7-0x000BCCBC, Entry count: 0x00000005) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BCCBD-0x000BCCBE, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$B7
	dc.b	$03 ;0x0 (0x000BCCC0-0x000BCCC1, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$0C
	dc.b	$B8
	dc.b	$03 ;0x0 (0x000BCCC4-0x000BCCC5, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BCCC8-0x000BCCC9, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$BC
	dc.b	$03, $03, $03, $03, $0C, $BB, $03 ;0x0 (0x000BCCCC-0x000BCCD3, Entry count: 0x00000007) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$B9
	dc.b	$03 ;0x0 (0x000BCCD6-0x000BCCD7, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$F8
	dc.b	$41 ;0x0 (0x000BCCDA-0x000BCCDB, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$BA, $06 ;0x0 (0x000BCCDC-0x000BCCDE, Entry count: 0x00000002)
	dc.b	$B8
	dc.b	$B7, $B8, $BA, $B8, $B7, $B8, $BC, $BB, $B9, $BB, $BC, $18 ;0x0 (0x000BCCDF-0x000BCCEB, Entry count: 0x0000000C) [Unknown data]
	dc.b	$EF
	dc.b	$5C, $E3, $00, $00, $C1, $12 ;0x0 (0x000BCCEC-0x000BCCF2, Entry count: 0x00000006) [Unknown data]
	dc.b	$BA
	dc.b	$1E ;0x0 (0x000BCCF3-0x000BCCF4, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$12 ;0x0 (0x000BCCF5-0x000BCCF6, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$1E ;0x0 (0x000BCCF7-0x000BCCF8, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$12
	dc.b	$C3
	dc.b	$06 ;0x0 (0x000BCCFB-0x000BCCFC, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$C6, $09 ;0x0 (0x000BCCFD-0x000BCCFF, Entry count: 0x00000002) [Unknown data]
	dc.b	$C4
	dc.b	$C3, $12 ;0x0 (0x000BCD00-0x000BCD02, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$1E ;0x0 (0x000BCD03-0x000BCD04, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$12 ;0x0 (0x000BCD05-0x000BCD06, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$1E ;0x0 (0x000BCD07-0x000BCD08, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$12 ;0x0 (0x000BCD09-0x000BCD0A, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$18 ;0x0 (0x000BCD0B-0x000BCD0C, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$06 ;0x0 (0x000BCD0D-0x000BCD0E, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$12
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BCD11-0x000BCD12, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$C1, $06 ;0x0 (0x000BCD13-0x000BCD15, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$30 ;0x0 (0x000BCD16-0x000BCD17, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F6
	dc.b	$71 ;0x0 (0x000BCD1A-0x000BCD1B, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$BC, $03 ;0x0 (0x000BCD1C-0x000BCD1E, Entry count: 0x00000002) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$C1
	dc.b	$03 ;0x0 (0x000BCD21-0x000BCD22, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$C6
	dc.b	$03 ;0x0 (0x000BCD25-0x000BCD26, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCD29-0x000BCD2A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BCD2B-0x000BCD2C, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$BC
	dc.b	$03 ;0x0 (0x000BCD2F-0x000BCD30, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$C0
	dc.b	$03 ;0x0 (0x000BCD33-0x000BCD34, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCD37-0x000BCD38, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9

loc_BCD39:
	dc.b	$EF, $40, $A2, $06 ;0x0 (0x000BCD39-0x000BCD3D, Entry count: 0x00000004)
	dc.b	$F8
	dc.b	$6B ;0x0 (0x000BCD3E-0x000BCD3F, Entry count: 0x00000001) [Unknown data]
	dc.b	$FD
	dc.b	$E6 ;0x0 (0x000BCD40-0x000BCD41, Entry count: 0x00000001)
	dc.b	$9C
	dc.b	$F8, $66 ;0x0 (0x000BCD42-0x000BCD44, Entry count: 0x00000002) [Unknown data]
	dc.b	$FD
	dc.b	$A0, $F8, $62 ;0x0 (0x000BCD45-0x000BCD48, Entry count: 0x00000003) [Unknown data]
	dc.b	$FD
	dc.b	$9F, $F8, $5E ;0x0 (0x000BCD49-0x000BCD4C, Entry count: 0x00000003) [Unknown data]
	dc.b	$FD
	dc.b	$F7, $00, $04, $EA ;0x0 (0x000BCD4D-0x000BCD51, Entry count: 0x00000004)
	dc.b	$FF
	dc.b	$F8, $25 ;0x0 (0x000BCD52-0x000BCD54, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$A2, $A2, $A2, $9B, $9B, $9B, $A2, $A2, $F8, $1A ;0x0 (0x000BCD55-0x000BCD5F, Entry count: 0x0000000A)
	dc.b	$00
	dc.b	$9B, $9B, $9B, $A2, $A2, $A2, $A2, $A2, $A7, $03, $03, $06, $03, $03, $06, $A2, $03
	dc.b	$03, $06, $03, $03, $06, $F6, $C1 ;0x0 (0x000BCD60-0x000BCD78, Entry count: 0x00000018)
	dc.b	$FF
	dc.b	$A2, $F8, $2E ;0x0 (0x000BCD79-0x000BCD7C, Entry count: 0x00000003) [Unknown data]
	dc.b	$FD
	dc.b	$A4, $F8, $2A ;0x0 (0x000BCD7D-0x000BCD80, Entry count: 0x00000003) [Unknown data]
	dc.b	$FD
	dc.b	$A5, $F8, $26 ;0x0 (0x000BCD81-0x000BCD84, Entry count: 0x00000003) [Unknown data]
	dc.b	$FD
	dc.b	$F9 ;0x0 (0x000BCD85-0x000BCD86, Entry count: 0x00000001) [Unknown data]

loc_BCD86:
	dc.b	$E5, $03, $EF, $60, $E3, $01, $01, $B0, $B5, $BA, $12 ;0x0 (0x000BCD86-0x000BCD91, Entry count: 0x0000000B)
	dc.b	$1E
	dc.b	$B4
	dc.b	$B0, $BA, $12 ;0x0 (0x000BCD93-0x000BCD96, Entry count: 0x00000003) [Unknown data]
	dc.b	$12
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCD98-0x000BCD99, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$B8, $B3, $12 ;0x0 (0x000BCD9A-0x000BCD9D, Entry count: 0x00000003) [Unknown data]
	dc.b	$12
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCD9F-0x000BCDA0, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $AF, $12 ;0x0 (0x000BCDA1-0x000BCDA4, Entry count: 0x00000003) [Unknown data]
	dc.b	$1E
	dc.b	$F7
	dc.b	$00, $04, $E4 ;0x0 (0x000BCDA6-0x000BCDA9, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$EF, $64, $AE, $B5, $B1, $30 ;0x0 (0x000BCDAA-0x000BCDB0, Entry count: 0x00000006) [Unknown data]
	dc.b	$B0
	dc.b	$AC, $B5, $24 ;0x0 (0x000BCDB1-0x000BCDB4, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCDB5-0x000BCDB6, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B8, $B4, $24 ;0x0 (0x000BCDB7-0x000BCDBA, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCDBB-0x000BCDBC, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$B3, $B7, $24 ;0x0 (0x000BCDBD-0x000BCDC0, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCDC1-0x000BCDC2, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B5, $B1, $24 ;0x0 (0x000BCDC3-0x000BCDC6, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCDC7-0x000BCDC8, Entry count: 0x00000001) [Unknown data]
	dc.b	$B0
	dc.b	$AC, $B5, $24 ;0x0 (0x000BCDC9-0x000BCDCC, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCDCD-0x000BCDCE, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$B8, $B5, $30 ;0x0 (0x000BCDCF-0x000BCDD2, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$BA, $B7, $B3, $B7, $BA, $03, $03, $06, $03, $03, $06, $BA, $C1, $BE, $03, $03
	dc.b	$06, $03, $03, $06, $F6, $9D ;0x0 (0x000BCDD3-0x000BCDE9, Entry count: 0x00000016) [Unknown data]
	dc.b	$FF

loc_BCDEA:
	dc.b	$F8, $37 ;0x0 (0x000BCDEA-0x000BCDEC, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $81, $82, $88, $88, $84, $81, $84, $F8, $2B ;0x0 (0x000BCDED-0x000BCDF8, Entry count: 0x0000000B)
	dc.b	$00
	dc.b	$88, $C0, $84, $C0, $84, $88, $84, $88, $88, $C0, $84, $88, $C0, $88, $84, $C0
	dc.b	$F7, $00, $08, $F4 ;0x0 (0x000BCDF9-0x000BCE0D, Entry count: 0x00000014)
	dc.b	$FF
	dc.b	$80, $03, $80, $81, $06, $03, $03 ;0x0 (0x000BCE0E-0x000BCE15, Entry count: 0x00000007) [Unknown data]
	dc.b	$82, $06, $88, $03 ;0x0 (0x000BCE15-0x000BCE19, Entry count: 0x00000004)
	dc.b	$03, $06 ;0x0 (0x000BCE19-0x000BCE1B, Entry count: 0x00000002) [Unknown data]
	dc.b	$81, $03, $81, $82, $06, $F6, $C8 ;0x0 (0x000BCE1B-0x000BCE22, Entry count: 0x00000007)
	dc.b	$FF
	dc.b	$88, $06, $C0, $84, $C0, $F7, $00, $0E, $F7 ;0x0 (0x000BCE23-0x000BCE2C, Entry count: 0x00000009)
	dc.b	$FF
	dc.b	$F9

loc_BCE2E:
	dc.b	$EF, $41, $BF, $18 ;0x0 (0x000BCE2D-0x000BCE32, Entry count: 0x00000005) [Unknown data]
	dc.b	$BB
	dc.b	$B8, $B3, $BB, $30 ;0x0 (0x000BCE33-0x000BCE37, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BF
	dc.b	$18 ;0x0 (0x000BCE3A-0x000BCE3B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BB
	dc.b	$B8, $C4, $C2, $30 ;0x0 (0x000BCE3C-0x000BCE40, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BD
	dc.b	$24 ;0x0 (0x000BCE43-0x000BCE44, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BCE45-0x000BCE46, Entry count: 0x00000001) [Unknown data]
	dc.b	$B4
	dc.b	$B6, $B8, $BD, $BB, $24 ;0x0 (0x000BCE47-0x000BCE4C, Entry count: 0x00000005) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BCE4D-0x000BCE4E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BB
	dc.b	$B8, $30 ;0x0 (0x000BCE4F-0x000BCE51, Entry count: 0x00000002) [Unknown data]
	dc.b	$B3
	dc.b	$18 ;0x0 (0x000BCE52-0x000BCE53, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $BF, $BD, $30 ;0x0 (0x000BCE54-0x000BCE58, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F6
	dc.b	$D2 ;0x0 (0x000BCE5B-0x000BCE5C, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BCE5D:
	dc.b	$EF, $40, $E6 ;0x0 (0x000BCE5D-0x000BCE60, Entry count: 0x00000003)
	dc.b	$A0
	dc.b	$0C ;0x0 (0x000BCE61-0x000BCE62, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$F7
	dc.b	$00, $17, $FB ;0x0 (0x000BCE64-0x000BCE67, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BCE68-0x000BCE69, Entry count: 0x00000001) [Unknown data]
	dc.b	$9B
	dc.b	$F8, $4E ;0x0 (0x000BCE6A-0x000BCE6C, Entry count: 0x00000002) [Unknown data]
	dc.b	$FC
	dc.b	$99, $F8, $4A ;0x0 (0x000BCE6D-0x000BCE70, Entry count: 0x00000003) [Unknown data]
	dc.b	$FC
	dc.b	$9D, $F8, $46 ;0x0 (0x000BCE71-0x000BCE74, Entry count: 0x00000003) [Unknown data]
	dc.b	$FC
	dc.b	$9B, $F8, $42 ;0x0 (0x000BCE75-0x000BCE78, Entry count: 0x00000003) [Unknown data]
	dc.b	$FC
	dc.b	$A2, $F8, $3E ;0x0 (0x000BCE79-0x000BCE7C, Entry count: 0x00000003) [Unknown data]
	dc.b	$FC
	dc.b	$F6, $DE ;0x0 (0x000BCE7D-0x000BCE7F, Entry count: 0x00000002) [Unknown data]
	dc.b	$FF

loc_BCE80:
	dc.b	$E5, $03, $EF, $42, $E3, $01, $01, $BB, $BF, $B8, $60 ;0x0 (0x000BCE80-0x000BCE8B, Entry count: 0x0000000B)
	dc.b	$60
	dc.b	$60
	dc.b	$B3
	dc.b	$BA, $B6, $60 ;0x0 (0x000BCE8E-0x000BCE91, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$B1, $B4, $B8, $B5, $BB, $B6, $BA, $B3, $B5, $BA, $BD, $F6, $E1 ;0x0 (0x000BCE92-0x000BCE9F, Entry count: 0x0000000D) [Unknown data]
	dc.b	$FF

loc_BCEA0:
	dc.b	$88, $0C, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $88, $84, $C0, $88, $C0, $84
	dc.b	$C0, $F7, $00, $03, $EB ;0x0 (0x000BCEA0-0x000BCEB5, Entry count: 0x00000015)
	dc.b	$FF
	dc.b	$88, $0C, $C0, $84, $C0, $88, $C0, $84, $C0, $88, $88, $84, $C0, $88, $06, $80
	dc.b	$0C, $81, $06, $84, $0C, $C0, $F6, $D2 ;0x0 (0x000BCEB6-0x000BCECE, Entry count: 0x00000018) [Unknown data]
	dc.b	$FF
	dc.b	$00, $06 ;0x0 (0x000BCECF-0x000BCED1, Entry count: 0x00000002) [Unknown data]
	dc.b	$06, $06, $06, $06, $06, $06, $F9 ;0x0 (0x000BCED1-0x000BCED8, Entry count: 0x00000007)
	dc.b	$0C ;0x0 (0x000BCED8-0x000BCED9, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $F9 ;0x0 (0x000BCED9-0x000BCEE8, Entry count: 0x0000000F)
	dc.b	$03 ;0x0 (0x000BCEE8-0x000BCEE9, Entry count: 0x00000001) [Unknown data]
	dc.b	$03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03
	dc.b	$06, $03, $03, $06, $03, $03, $F9

loc_BCF00:
	dc.b	$EF, $67, $F8, $2B ;0x0 (0x000BCEE9-0x000BCF04, Entry count: 0x0000001B)
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BCF05-0x000BCF06, Entry count: 0x00000001)
	dc.b	$18
	dc.b	$C1
	dc.b	$B5, $24 ;0x0 (0x000BCF08-0x000BCF0A, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BCF0B-0x000BCF0C, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BA
	dc.b	$BC, $BD, $BC, $0C ;0x0 (0x000BCF0F-0x000BCF13, Entry count: 0x00000004) [Unknown data]
	dc.b	$B8
	dc.b	$B5, $30 ;0x0 (0x000BCF14-0x000BCF16, Entry count: 0x00000002) [Unknown data]
	dc.b	$F8
	dc.b	$17 ;0x0 (0x000BCF17-0x000BCF18, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$BC, $12 ;0x0 (0x000BCF19-0x000BCF1B, Entry count: 0x00000002)
	dc.b	$B5
	dc.b	$06, $18, $E6, $06, $B8, $BA, $BC, $BA, $0C ;0x0 (0x000BCF1C-0x000BCF25, Entry count: 0x00000009) [Unknown data]
	dc.b	$B8
	dc.b	$B3, $12 ;0x0 (0x000BCF26-0x000BCF28, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$1E ;0x0 (0x000BCF29-0x000BCF2A, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F6
	dc.b	$D2 ;0x0 (0x000BCF2D-0x000BCF2E, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$B5, $18 ;0x0 (0x000BCF2F-0x000BCF31, Entry count: 0x00000002)
	dc.b	$C1
	dc.b	$BC, $30 ;0x0 (0x000BCF32-0x000BCF34, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BCF35-0x000BCF36, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $BC, $BA, $0C ;0x0 (0x000BCF37-0x000BCF3B, Entry count: 0x00000004) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $30 ;0x0 (0x000BCF3C-0x000BCF3E, Entry count: 0x00000002) [Unknown data]
	dc.b	$F9

loc_BCF3F:
	dc.b	$EF, $40, $96, $0C ;0x0 (0x000BCF3F-0x000BCF43, Entry count: 0x00000004)
	dc.b	$F7
	dc.b	$00, $3C, $FB ;0x0 (0x000BCF44-0x000BCF47, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$E6 ;0x0 (0x000BCF48-0x000BCF49, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$F3 ;0x0 (0x000BCF4B-0x000BCF4C, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BCF4D:
	dc.b	$E5, $03, $EF, $67, $E3, $01, $01, $BA, $B3, $B7, $30 ;0x0 (0x000BCF4D-0x000BCF58, Entry count: 0x0000000B)
	dc.b	$BC
	dc.b	$B9, $B5, $BA, $B6, $B1, $AE, $B5, $B2, $BA, $B7, $B3, $BC, $B9, $B5, $BA, $B1, $B6
	dc.b	$B5, $BC, $B9, $B7, $BA, $B3, $BC, $B9, $B5, $BA, $B1, $B6, $B5, $B2, $AE ;0x0 (0x000BCF59-0x000BCF83, Entry count: 0x0000002A) [Unknown data]
	dc.b	$B5, $AC, $B0, $B8, $B5, $B1, $BA, $B3, $B7, $E6 ;0x20
	dc.b	$30
	dc.b	$F6
	dc.b	$C7 ;0x0 (0x000BCF85-0x000BCF86, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BCF87:
	dc.b	$88, $0C, $C0, $84, $C0, $88, $88, $84, $C0, $F7, $00, $07, $F3 ;0x0 (0x000BCF87-0x000BCF94, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$88, $C0, $84, $C0, $88, $06, $80, $88, $82, $80, $81, $82, $88, $F6, $E3 ;0x0 (0x000BCF95-0x000BCFA4, Entry count: 0x0000000F) [Unknown data]
	dc.b	$FF

loc_BCFA5:
	dc.b	$EF, $67, $F8, $46 ;0x0 (0x000BCFA5-0x000BCFA9, Entry count: 0x00000004)
	dc.b	$00
	dc.b	$B0, $18 ;0x0 (0x000BCFAA-0x000BCFAC, Entry count: 0x00000002)
	dc.b	$B3
	dc.b	$AC, $B0, $A9, $30 ;0x0 (0x000BCFAD-0x000BCFB1, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F8
	dc.b	$3A ;0x0 (0x000BCFB4-0x000BCFB5, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$B3, $18 ;0x0 (0x000BCFB6-0x000BCFB8, Entry count: 0x00000002)
	dc.b	$AE
	dc.b	$B1, $B3, $B0, $30 ;0x0 (0x000BCFB9-0x000BCFBD, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$EC
	dc.b	$F8, $EF, $4B, $F8, $34 ;0x0 (0x000BCFC0-0x000BCFC5, Entry count: 0x00000005) [Unknown data]
	dc.b	$00
	dc.b	$B6, $B5, $2A, $B3, $03, $B1, $B0, $2A, $80, $06, $F8, $27, $00, $B3, $B1, $12, $B0
	dc.b	$1E, $E7, $30, $B5, $18, $BD, $0C, $BA, $BC, $18, $B8, $0C, $BC, $BA, $12 ;0x0 (0x000BCFC6-0x000BCFEF, Entry count: 0x00000029) [Unknown data]
	dc.b	$B9, $1E, $E7, $30, $EC, $08, $F6, $B7, $FF ;0x20
	dc.b	$AE, $18 ;0x0 (0x000BCFEF-0x000BCFF1, Entry count: 0x00000002)
	dc.b	$B5
	dc.b	$B1, $BA, $B5, $30 ;0x0 (0x000BCFF2-0x000BCFF6, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F9
	dc.b	$E6 ;0x0 (0x000BCFF9-0x000BCFFA, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$AA, $AE, $B0, $B1, $B0, $0C, $B1, $06, $B3, $B1, $0C, $B3, $06, $B5, $0C, $F9 ;0x0 (0x000BCFFB-0x000BD00B, Entry count: 0x00000010) [Unknown data]

loc_BD00B:
	dc.b	$EF, $40, $A2, $0C ;0x0 (0x000BD00B-0x000BD00F, Entry count: 0x00000004)
	dc.b	$F8
	dc.b	$C7 ;0x0 (0x000BD010-0x000BD011, Entry count: 0x00000001) [Unknown data]
	dc.b	$FE
	dc.b	$9D, $F8, $C3 ;0x0 (0x000BD012-0x000BD015, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$A2, $F8, $BF ;0x0 (0x000BD016-0x000BD019, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$9B, $F8, $C3 ;0x0 (0x000BD01A-0x000BD01D, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$9D, $F8, $BF ;0x0 (0x000BD01E-0x000BD021, Entry count: 0x00000003) [Unknown data]
	dc.b	$FE
	dc.b	$9E, $F8, $BB, $FE, $9D, $F8, $B7, $FE, $9E, $F8, $B3, $FE, $9D, $F8, $AF, $FE
	dc.b	$A2, $A2, $A2, $A2, $A0, $A0, $A0, $A0, $9D, $F8, $A3, $FE, $F6, $CB, $FF ;0x0 (0x000BD022-0x000BD041, Entry count: 0x0000001F) [Unknown data]

loc_BD041:
	dc.b	$E5, $03, $EF, $4B, $E3, $01, $01, $F8, $5D ;0x0 (0x000BD041-0x000BD04A, Entry count: 0x00000009)
	dc.b	$00
	dc.b	$B5, $BC, $B9, $06 ;0x0 (0x000BD04B-0x000BD04F, Entry count: 0x00000004)
	dc.b	$06
	dc.b	$80
	dc.b	$24 ;0x0 (0x000BD051-0x000BD052, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $04, $F5 ;0x0 (0x000BD053-0x000BD056, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$F8, $4E ;0x0 (0x000BD057-0x000BD059, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$B6, $B3, $BA, $06 ;0x0 (0x000BD05A-0x000BD05E, Entry count: 0x00000004)
	dc.b	$06
	dc.b	$80
	dc.b	$24 ;0x0 (0x000BD060-0x000BD061, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $02, $F5 ;0x0 (0x000BD062-0x000BD065, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$B5, $BC, $B9, $06 ;0x0 (0x000BD066-0x000BD06A, Entry count: 0x00000004) [Unknown data]
	dc.b	$06
	dc.b	$80
	dc.b	$24 ;0x0 (0x000BD06C-0x000BD06D, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $02, $F5 ;0x0 (0x000BD06E-0x000BD071, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$EF, $45, $BA, $B1, $B6, $24, $06, $06, $E6, $24, $0C, $B5, $B0, $B9, $2A, $06
	dc.b	$30, $B1, $BA, $B6, $24, $06, $06, $E6, $12, $80, $1E, $B0, $B5, $B9, $12, $1E ;0x0 (0x000BD072-0x000BD0A7, Entry count: 0x00000035) [Unknown data]
	dc.b	$E6, $30, $BA, $BD, $B5, $BC, $B3, $B8, $BD, $BA, $B5, $12, $B5, $B9, $BC, $1E
	dc.b	$E6, $30, $F6, $9B, $FF ;0x20
	dc.b	$B5, $BA, $BD, $06 ;0x0 (0x000BD0A7-0x000BD0AB, Entry count: 0x00000004)
	dc.b	$06
	dc.b	$80
	dc.b	$24 ;0x0 (0x000BD0AD-0x000BD0AE, Entry count: 0x00000001) [Unknown data]
	dc.b	$F7
	dc.b	$00, $04, $F5 ;0x0 (0x000BD0AF-0x000BD0B2, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$F9

loc_BD0B4:
	dc.b	$88, $06, $88, $C0, $0C, $84, $88, $F7, $00, $0F, $F5 ;0x0 (0x000BD0B3-0x000BD0BF, Entry count: 0x0000000C) [Unknown data]
	dc.b	$FF
	dc.b	$81, $06, $81, $80, $82, $88, $84, $80, $03, $80, $81, $06, $88, $0C, $C0, $84
	dc.b	$88, $06, $88, $88, $0C, $C0, $88, $84, $F7, $00, $03, $F0, $FF, $88, $C0, $84 ;0x0 (0x000BD0C0-0x000BD111, Entry count: 0x00000051) [Unknown data]
	dc.b	$88, $06, $88, $80, $03, $80, $81, $06, $84, $88, $80, $03, $80, $81, $06, $84
	dc.b	$0C, $88, $0C, $88, $84, $88, $88, $C0, $84, $C0, $88, $88, $84, $C0, $88, $06 ;0x20
	dc.b	$80, $03, $81, $82, $06, $88, $80, $06, $81, $03, $81, $84, $06, $88, $F6, $A4, $FF ;0x40

loc_BD111:
	dc.b	$EF, $61, $EF, $68, $BA, $18 ;0x0 (0x000BD111-0x000BD117, Entry count: 0x00000006)
	dc.b	$BC
	dc.b	$BD, $12 ;0x0 (0x000BD118-0x000BD11A, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$80, $0C ;0x0 (0x000BD11B-0x000BD11D, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$18 ;0x0 (0x000BD11E-0x000BD11F, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $12 ;0x0 (0x000BD120-0x000BD122, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BD123-0x000BD124, Entry count: 0x00000001) [Unknown data]
	dc.b	$12
	dc.b	$BA
	dc.b	$18 ;0x0 (0x000BD126-0x000BD127, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $12 ;0x0 (0x000BD128-0x000BD12A, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$80, $0C ;0x0 (0x000BD12B-0x000BD12D, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$18 ;0x0 (0x000BD12E-0x000BD12F, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $12 ;0x0 (0x000BD130-0x000BD132, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BD133-0x000BD134, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$06
	dc.b	$B9
	dc.b	$30 ;0x0 (0x000BD137-0x000BD138, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$30 ;0x0 (0x000BD139-0x000BD13A, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BD13B-0x000BD13C, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD13D-0x000BD13E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BD13F-0x000BD140, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$12 ;0x0 (0x000BD141-0x000BD142, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$0C ;0x0 (0x000BD143-0x000BD144, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BD145-0x000BD146, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$1E ;0x0 (0x000BD147-0x000BD148, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BD149-0x000BD14A, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BD14B-0x000BD14C, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$12 ;0x0 (0x000BD14D-0x000BD14E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BD14F-0x000BD150, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$E6 ;0x0 (0x000BD151-0x000BD152, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BD154-0x000BD155, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD156-0x000BD157, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BD158-0x000BD159, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$C4, $06 ;0x0 (0x000BD15A-0x000BD15C, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$C6
	dc.b	$06 ;0x0 (0x000BD15F-0x000BD160, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$1E ;0x0 (0x000BD161-0x000BD162, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BF
	dc.b	$C1, $BF, $BD, $0C ;0x0 (0x000BD165-0x000BD169, Entry count: 0x00000004) [Unknown data]
	dc.b	$BF
	dc.b	$C1, $BD, $06 ;0x0 (0x000BD16A-0x000BD16D, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$1E ;0x0 (0x000BD16E-0x000BD16F, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0C ;0x0 (0x000BD170-0x000BD171, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD172-0x000BD173, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BD174-0x000BD175, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$C4, $06 ;0x0 (0x000BD176-0x000BD178, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$C2, $C4, $BD, $1E ;0x0 (0x000BD179-0x000BD17D, Entry count: 0x00000004) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BC
	dc.b	$BD, $BC, $B8, $0C ;0x0 (0x000BD180-0x000BD184, Entry count: 0x00000004) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BD185-0x000BD186, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$E7 ;0x0 (0x000BD187-0x000BD188, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$AE
	dc.b	$06 ;0x0 (0x000BD18A-0x000BD18B, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$AC
	dc.b	$AE, $B3, $B5, $B8, $BD, $BC, $18 ;0x0 (0x000BD18D-0x000BD194, Entry count: 0x00000007) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BD195-0x000BD196, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $12 ;0x0 (0x000BD197-0x000BD199, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$B3, $0C ;0x0 (0x000BD19A-0x000BD19C, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BD19F-0x000BD1A0, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$B6
	dc.b	$B8, $0C, $12, $E6, $03, $B3, $0F ;0x0 (0x000BD1A2-0x000BD1A9, Entry count: 0x00000007) [Unknown data]
	dc.b	$B0
	dc.b	$1E ;0x0 (0x000BD1AA-0x000BD1AB, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BD1AC-0x000BD1AD, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$B8
	dc.b	$BA, $0C, $12, $E6, $06, $B3, $B5, $BA, $1E ;0x0 (0x000BD1AF-0x000BD1B8, Entry count: 0x00000009) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BD1B9-0x000BD1BA, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$B6
	dc.b	$B8, $0C, $12, $E6, $18, $B5, $B9, $30 ;0x0 (0x000BD1BC-0x000BD1C4, Entry count: 0x00000008) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F6
	dc.b	$49 ;0x0 (0x000BD1C7-0x000BD1C8, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BD1C9:
	dc.b	$EF, $40, $9E, $06, $06, $06, $03, $03, $06, $06, $06, $03, $03, $E6, $06, $06
	dc.b	$06, $03, $03, $06, $06, $03, $03, $03, $03, $F7, $00, $04, $E5 ;0x0 (0x000BD1C9-0x000BD1E6, Entry count: 0x0000001D)
	dc.b	$FF
	dc.b	$9D, $06, $06, $06, $06, $06, $06, $06, $06, $E6, $06, $06, $06, $06, $18, $F8
	dc.b	$7B ;0x0 (0x000BD1E7-0x000BD1F8, Entry count: 0x00000011) [Unknown data]
	dc.b	$00
	dc.b	$9E, $06, $03, $03, $06, $03, $03, $06, $03, $03, $A0, $06 ;0x0 (0x000BD1F9-0x000BD205, Entry count: 0x0000000C)
	dc.b	$03
	dc.b	$03
	dc.b	$F8
	dc.b	$6A ;0x0 (0x000BD208-0x000BD209, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$9E, $06, $03, $03, $06, $A0, $03, $03, $06, $03, $03, $06, $03, $03, $E6, $06
	dc.b	$03, $03, $06, $03, $03, $06, $03, $03, $03, $03, $03, $03, $E6, $06, $03, $03 ;0x0 (0x000BD20A-0x000BD26B, Entry count: 0x00000061)
	dc.b	$06, $03, $03, $06, $03, $03, $03, $03, $03, $03, $A2, $06, $03, $03, $06, $03
	dc.b	$03, $06, $03, $03, $06, $03, $03, $E6, $06, $03, $03, $06, $03, $03, $06, $03 ;0x20
	dc.b	$03, $06, $03, $03, $A0, $06, $03, $03, $06, $03, $03, $06, $03, $03, $03, $03
	dc.b	$03, $03, $E6, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $06, $9D, $F8 ;0x40
	dc.b	$65 ;0x60
	dc.b	$FC
	dc.b	$9D, $F8, $61 ;0x0 (0x000BD26C-0x000BD26F, Entry count: 0x00000003) [Unknown data]
	dc.b	$FC
	dc.b	$F6, $57 ;0x0 (0x000BD270-0x000BD272, Entry count: 0x00000002) [Unknown data]
	dc.b	$FF
	dc.b	$A2, $06, $03, $03, $06, $03, $03, $06, $03, $03, $03, $03, $06, $E6, $06, $03
	dc.b	$03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $A0, $06, $03, $03, $06, $03 ;0x0 (0x000BD273-0x000BD2DB, Entry count: 0x00000068)
	dc.b	$03, $06, $03, $03, $03, $03, $06, $E6, $06, $03, $03, $06, $03, $03, $06, $03
	dc.b	$03, $03, $03, $03, $03, $A2, $06, $03, $03, $06, $03, $03, $06, $03, $03, $03 ;0x20
	dc.b	$03, $03, $03, $E6, $06, $03, $03, $06, $03, $03, $06, $03, $03, $03, $03, $03
	dc.b	$03, $A0, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $F9

loc_BD2D2:
	dc.b	$E5 ;0x40
	dc.b	$03, $EF, $68, $E3, $00, $00, $F8, $9C ;0x60
	dc.b	$00
	dc.b	$B6, $B1, $BA, $18 ;0x0 (0x000BD2DC-0x000BD2E0, Entry count: 0x00000004)
	dc.b	$B1
	dc.b	$BC, $B8, $B6, $BA, $BD, $12 ;0x0 (0x000BD2E1-0x000BD2E7, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$B6, $BF, $0C ;0x0 (0x000BD2E8-0x000BD2EB, Entry count: 0x00000003) [Unknown data]
	dc.b	$B6
	dc.b	$BC, $BF, $12 ;0x0 (0x000BD2EC-0x000BD2EF, Entry count: 0x00000003) [Unknown data]
	dc.b	$F8
	dc.b	$86 ;0x0 (0x000BD2F0-0x000BD2F1, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$B6, $B1, $BA, $18 ;0x0 (0x000BD2F2-0x000BD2F6, Entry count: 0x00000004)
	dc.b	$B1
	dc.b	$B8, $BC, $B6, $BA, $BD, $12 ;0x0 (0x000BD2F7-0x000BD2FD, Entry count: 0x00000006) [Unknown data]
	dc.b	$B8
	dc.b	$BF, $BC, $0C ;0x0 (0x000BD2FE-0x000BD301, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $BF, $B8, $BF, $BC, $06 ;0x0 (0x000BD302-0x000BD308, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$B5, $B9, $30 ;0x0 (0x000BD309-0x000BD30C, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$B5
	dc.b	$BC, $B9, $06, $06, $06, $18, $EF, $5C, $E3, $01, $01, $F8, $6C ;0x0 (0x000BD30F-0x000BD31C, Entry count: 0x0000000D) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BD31D-0x000BD31E, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$BA
	dc.b	$B1, $B6, $0C, $0C, $06, $0C, $F8, $60 ;0x0 (0x000BD320-0x000BD328, Entry count: 0x00000008) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BD329-0x000BD32A, Entry count: 0x00000001)
	dc.b	$B1
	dc.b	$B6, $BA, $12 ;0x0 (0x000BD32B-0x000BD32E, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $1E ;0x0 (0x000BD32F-0x000BD332, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $06 ;0x0 (0x000BD333-0x000BD336, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$B1
	dc.b	$B6, $BA, $B3, $B8, $BC, $1E ;0x0 (0x000BD338-0x000BD33E, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B3
	dc.b	$BC, $B8, $12 ;0x0 (0x000BD341-0x000BD344, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BD, $0C ;0x0 (0x000BD345-0x000BD348, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $06 ;0x0 (0x000BD349-0x000BD34C, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $BD, $0C ;0x0 (0x000BD34D-0x000BD350, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$B5, $BA, $12 ;0x0 (0x000BD351-0x000BD354, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD357-0x000BD358, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $06 ;0x0 (0x000BD359-0x000BD35C, Entry count: 0x00000003) [Unknown data]
	dc.b	$BC
	dc.b	$B3, $B8, $B1, $B6, $BA, $BC, $B8, $B3, $1E ;0x0 (0x000BD35D-0x000BD366, Entry count: 0x00000009) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$BC
	dc.b	$B3, $B8, $12 ;0x0 (0x000BD369-0x000BD36C, Entry count: 0x00000003) [Unknown data]
	dc.b	$B9
	dc.b	$B5, $B0, $30 ;0x0 (0x000BD36D-0x000BD370, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD373-0x000BD374, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$5C ;0x0 (0x000BD375-0x000BD376, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$B6, $B1, $BA, $18 ;0x0 (0x000BD377-0x000BD37B, Entry count: 0x00000004)
	dc.b	$BC
	dc.b	$B8, $B1, $B6, $BA, $BD, $12 ;0x0 (0x000BD37C-0x000BD382, Entry count: 0x00000006) [Unknown data]
	dc.b	$BC
	dc.b	$B6, $BF, $80, $0C ;0x0 (0x000BD383-0x000BD387, Entry count: 0x00000004) [Unknown data]
	dc.b	$F9
	dc.b	$B5, $BA, $BD, $06, $06, $06, $1E, $E6, $1E, $12, $B3, $BC, $B8, $0C, $06, $0C
	dc.b	$12, $E6, $24, $80, $0C ;0x0 (0x000BD388-0x000BD39D, Entry count: 0x00000015)
	dc.b	$B5
	dc.b	$BD, $BA, $06, $06, $06, $1E, $E6, $12, $80, $0C ;0x0 (0x000BD39E-0x000BD3A8, Entry count: 0x0000000A) [Unknown data]
	dc.b	$12
	dc.b	$B3
	dc.b	$BC, $B8, $30 ;0x0 (0x000BD3AA-0x000BD3AD, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9

loc_BD3AE:
	dc.b	$F8, $64 ;0x0 (0x000BD3AE-0x000BD3B0, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$88, $06, $C0, $03, $C0, $84, $06, $C0, $03, $C0, $F7, $00, $02, $F2 ;0x0 (0x000BD3B1-0x000BD3BF, Entry count: 0x0000000E)
	dc.b	$FF
	dc.b	$88, $06, $84, $03, $03, $06, $06, $06 ;0x0 (0x000BD3C0-0x000BD3C8, Entry count: 0x00000008) [Unknown data]
	dc.b	$80, $03, $80, $81, $06, $88, $F8, $53 ;0x0 (0x000BD3C8-0x000BD3D0, Entry count: 0x00000008)
	dc.b	$00
	dc.b	$88, $06, $80, $03, $80, $81, $06, $82, $81, $03, $81, $88, $06, $88, $84, $F8, $41 ;0x0 (0x000BD3D1-0x000BD3E2, Entry count: 0x00000011)
	dc.b	$00
	dc.b	$80, $06, $81, $03, $81, $84, $84, $88, $06, $81, $04, $81, $81, $84, $06, $88
	dc.b	$03, $88, $F8, $3B ;0x0 (0x000BD3E3-0x000BD3F7, Entry count: 0x00000014)
	dc.b	$00
	dc.b	$84, $06, $88, $88, $84, $88, $88, $84, $84, $88, $06, $80, $02, $80, $81, $84
	dc.b	$06, $88, $81, $04, $81, $82, $84, $06, $88, $F6, $9B ;0x0 (0x000BD3F8-0x000BD413, Entry count: 0x0000001B)
	dc.b	$FF
	dc.b	$88, $06, $88, $03, $88, $84, $06, $88, $03, $88, $F7, $00, $02, $F2 ;0x0 (0x000BD414-0x000BD422, Entry count: 0x0000000E)
	dc.b	$FF
	dc.b	$88, $06, $88, $03, $88, $84, $06, $88, $03, $88, $F7, $00, $02, $F2 ;0x0 (0x000BD423-0x000BD431, Entry count: 0x0000000E) [Unknown data]
	dc.b	$FF
	dc.b	$88, $06, $88, $03, $88, $84, $06, $88, $03, $88, $F7, $00, $0C, $F2 ;0x0 (0x000BD432-0x000BD440, Entry count: 0x0000000E) [Unknown data]
	dc.b	$FF
	dc.b	$F9

loc_BD442:
	dc.b	$EF, $52, $E7 ;0x0 (0x000BD441-0x000BD445, Entry count: 0x00000004) [Unknown data]
	dc.b	$30
	dc.b	$F8
	dc.b	$A6 ;0x0 (0x000BD447-0x000BD448, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BD449-0x000BD44A, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$B9
	dc.b	$BA, $BC, $B5, $0C ;0x0 (0x000BD44C-0x000BD450, Entry count: 0x00000004) [Unknown data]
	dc.b	$BF
	dc.b	$BD, $18 ;0x0 (0x000BD451-0x000BD453, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$E6 ;0x0 (0x000BD454-0x000BD455, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$BF
	dc.b	$C1, $C2, $BA, $0C ;0x0 (0x000BD457-0x000BD45B, Entry count: 0x00000004) [Unknown data]
	dc.b	$C8
	dc.b	$C5, $30 ;0x0 (0x000BD45C-0x000BD45E, Entry count: 0x00000002) [Unknown data]
	dc.b	$F8
	dc.b	$8E ;0x0 (0x000BD45F-0x000BD460, Entry count: 0x00000001) [Unknown data]
	dc.b	$00
	dc.b	$E6 ;0x0 (0x000BD461-0x000BD462, Entry count: 0x00000001)
	dc.b	$06
	dc.b	$BC
	dc.b	$B5, $B9, $0C ;0x0 (0x000BD464-0x000BD467, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BD468-0x000BD469, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$BC, $BD, $18 ;0x0 (0x000BD46A-0x000BD46D, Entry count: 0x00000003) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BD46E-0x000BD46F, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BD470-0x000BD471, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$BA, $30 ;0x0 (0x000BD472-0x000BD474, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$EF
	dc.b	$64, $BC, $0C ;0x0 (0x000BD477-0x000BD47A, Entry count: 0x00000003) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD47B-0x000BD47C, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$12 ;0x0 (0x000BD47D-0x000BD47E, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD47F-0x000BD480, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$BD, $06 ;0x0 (0x000BD481-0x000BD483, Entry count: 0x00000002) [Unknown data]
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BD484-0x000BD485, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $06 ;0x0 (0x000BD486-0x000BD488, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$12 ;0x0 (0x000BD489-0x000BD48A, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$1E ;0x0 (0x000BD48B-0x000BD48C, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BD48F-0x000BD490, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BD491-0x000BD492, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BD493-0x000BD494, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BD495-0x000BD496, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BD497-0x000BD498, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BD499-0x000BD49A, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$0C ;0x0 (0x000BD49B-0x000BD49C, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$0F ;0x0 (0x000BD49D-0x000BD49E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$03 ;0x0 (0x000BD49F-0x000BD4A0, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BD4A3-0x000BD4A4, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$E6 ;0x0 (0x000BD4A5-0x000BD4A6, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$BD
	dc.b	$0C ;0x0 (0x000BD4A8-0x000BD4A9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BD4AA-0x000BD4AB, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD4AC-0x000BD4AD, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$BD, $06, $E6, $06, $06 ;0x0 (0x000BD4AE-0x000BD4B3, Entry count: 0x00000005) [Unknown data]
	dc.b	$BA, $80, $0C ;0x0 (0x000BD4B3-0x000BD4B6, Entry count: 0x00000003)
	dc.b	$C2
	dc.b	$06 ;0x0 (0x000BD4B7-0x000BD4B8, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD4B9-0x000BD4BA, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$2A ;0x0 (0x000BD4BB-0x000BD4BC, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD4BD-0x000BD4BE, Entry count: 0x00000001) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BD4C1-0x000BD4C2, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD4C3-0x000BD4C4, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD4C5-0x000BD4C6, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0B ;0x0 (0x000BD4C7-0x000BD4C8, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$07, $E6, $1E, $06 ;0x0 (0x000BD4C9-0x000BD4CD, Entry count: 0x00000004) [Unknown data]
	dc.b	$BA, $BC, $E6, $06, $06, $06, $80, $0C ;0x0 (0x000BD4CD-0x000BD4D5, Entry count: 0x00000008)
	dc.b	$BD
	dc.b	$BC, $06, $E6, $06, $06, $06 ;0x0 (0x000BD4D6-0x000BD4DC, Entry count: 0x00000006) [Unknown data]
	dc.b	$80, $0C ;0x0 (0x000BD4DC-0x000BD4DE, Entry count: 0x00000002)
	dc.b	$BD
	dc.b	$BC, $06, $E6, $06, $06, $0C, $0C ;0x0 (0x000BD4DF-0x000BD4E6, Entry count: 0x00000007) [Unknown data]
	dc.b	$BD, $06 ;0x0 (0x000BD4E6-0x000BD4E8, Entry count: 0x00000002)
	dc.b	$BC
	dc.b	$E6 ;0x0 (0x000BD4E9-0x000BD4EA, Entry count: 0x00000001) [Unknown data]
	dc.b	$30
	dc.b	$F6
	dc.b	$55 ;0x0 (0x000BD4EC-0x000BD4ED, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$B5, $06 ;0x0 (0x000BD4EE-0x000BD4F0, Entry count: 0x00000002)
	dc.b	$BA
	dc.b	$B9, $B5, $1E ;0x0 (0x000BD4F1-0x000BD4F4, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$B1
	dc.b	$06 ;0x0 (0x000BD4F7-0x000BD4F8, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$B5, $B1, $1E ;0x0 (0x000BD4F9-0x000BD4FC, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$F9

loc_BD4FF:
	dc.b	$EF, $40, $E6 ;0x0 (0x000BD4FF-0x000BD502, Entry count: 0x00000003)
	dc.b	$18
	dc.b	$9F
	dc.b	$0C ;0x0 (0x000BD504-0x000BD505, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$F8, $B8 ;0x0 (0x000BD506-0x000BD508, Entry count: 0x00000002) [Unknown data]
	dc.b	$00
	dc.b	$A0, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $9D, $06, $03
	dc.b	$03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $F8, $9B ;0x0 (0x000BD509-0x000BD525, Entry count: 0x0000001C)
	dc.b	$00
	dc.b	$A2, $06, $03, $03, $06, $03, $03, $06, $03, $03, $06, $03, $03, $E6, $06, $03
	dc.b	$03, $06, $03, $03, $06, $06, $A1, $A1, $A0, $A0, $A0, $A0, $03, $03, $06, $06 ;0x0 (0x000BD526-0x000BD57F, Entry count: 0x00000059)
	dc.b	$06, $03, $03, $E6, $06, $06, $06, $03, $03, $06, $06, $06, $06, $99, $99, $99
	dc.b	$99, $03, $03, $06, $06, $06, $03, $03, $E6, $06, $06, $06, $03, $03, $06, $06 ;0x20
	dc.b	$06, $06, $A2, $A2, $A2, $A2, $03, $03, $06, $06, $06, $06, $E6, $06, $06, $06
	dc.b	$03, $03, $06, $06, $06, $06, $9B, $F8, $52 ;0x40
	dc.b	$F9
	dc.b	$9D, $E6 ;0x0 (0x000BD580-0x000BD582, Entry count: 0x00000002)
	dc.b	$06
	dc.b	$F8
	dc.b	$4B ;0x0 (0x000BD584-0x000BD585, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9
	dc.b	$9E, $F8, $47 ;0x0 (0x000BD586-0x000BD589, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9
	dc.b	$9E, $F8, $43 ;0x0 (0x000BD58A-0x000BD58D, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9
	dc.b	$99, $F8, $3F ;0x0 (0x000BD58E-0x000BD591, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9
	dc.b	$99, $F8, $3B ;0x0 (0x000BD592-0x000BD595, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9
	dc.b	$9B, $F8, $37 ;0x0 (0x000BD596-0x000BD599, Entry count: 0x00000003) [Unknown data]
	dc.b	$F9
	dc.b	$9B, $9B, $9B, $9B, $9B, $9B, $9B, $9D, $E6, $06, $06, $06, $80, $0C ;0x0 (0x000BD59A-0x000BD5A8, Entry count: 0x0000000E)
	dc.b	$9D
	dc.b	$9D, $06, $E6, $06, $06, $06 ;0x0 (0x000BD5A9-0x000BD5AF, Entry count: 0x00000006) [Unknown data]
	dc.b	$80, $0C ;0x0 (0x000BD5AF-0x000BD5B1, Entry count: 0x00000002)
	dc.b	$9D
	dc.b	$12, $E6, $0C, $06 ;0x0 (0x000BD5B2-0x000BD5B6, Entry count: 0x00000004) [Unknown data]
	dc.b	$80, $0C ;0x0 (0x000BD5B6-0x000BD5B8, Entry count: 0x00000002)
	dc.b	$9D
	dc.b	$9D, $06 ;0x0 (0x000BD5B9-0x000BD5BB, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$F6
	dc.b	$40 ;0x0 (0x000BD5BE-0x000BD5BF, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF
	dc.b	$A2, $06 ;0x0 (0x000BD5C0-0x000BD5C2, Entry count: 0x00000002)
	dc.b	$F8
	dc.b	$24 ;0x0 (0x000BD5C3-0x000BD5C4, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9
	dc.b	$9E, $06 ;0x0 (0x000BD5C5-0x000BD5C7, Entry count: 0x00000002)
	dc.b	$F8
	dc.b	$1F ;0x0 (0x000BD5C8-0x000BD5C9, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9
	dc.b	$9D, $06 ;0x0 (0x000BD5CA-0x000BD5CC, Entry count: 0x00000002)
	dc.b	$F8
	dc.b	$26 ;0x0 (0x000BD5CD-0x000BD5CE, Entry count: 0x00000001) [Unknown data]
	dc.b	$F9
	dc.b	$A5, $06, $03, $03, $06, $03, $03, $A4, $06, $03, $03, $06, $03, $03, $F9

loc_BD5DE:
	dc.b	$E5, $03, $EF, $42, $E3, $01, $01, $E6 ;0x0 (0x000BD5CF-0x000BD5E6, Entry count: 0x00000017)
	dc.b	$30
	dc.b	$B5
	dc.b	$AE, $B2, $06 ;0x0 (0x000BD5E8-0x000BD5EB, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD5EC-0x000BD5ED, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B2, $B5, $1E, $E6, $1E, $12, $06 ;0x0 (0x000BD5EE-0x000BD5F5, Entry count: 0x00000007) [Unknown data]
	dc.b	$80, $0C ;0x0 (0x000BD5F5-0x000BD5F7, Entry count: 0x00000002)
	dc.b	$AE
	dc.b	$AA, $B1, $1E ;0x0 (0x000BD5F8-0x000BD5FB, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD5FE-0x000BD5FF, Entry count: 0x00000001) [Unknown data]
	dc.b	$A9
	dc.b	$B0, $AD, $30 ;0x0 (0x000BD600-0x000BD603, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$A9, $AE, $18 ;0x0 (0x000BD604-0x000BD607, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$B0, $AC, $B3, $B0, $AC, $30 ;0x0 (0x000BD608-0x000BD60E, Entry count: 0x00000006) [Unknown data]
	dc.b	$B0
	dc.b	$A9, $AD, $B5, $B2, $AE, $06 ;0x0 (0x000BD60F-0x000BD615, Entry count: 0x00000006) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD616-0x000BD617, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$AE, $B2, $1E ;0x0 (0x000BD618-0x000BD61B, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B2
	dc.b	$AE, $B5, $06 ;0x0 (0x000BD61E-0x000BD621, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD622-0x000BD623, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$AA, $AE, $06 ;0x0 (0x000BD624-0x000BD627, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD628-0x000BD629, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$AA, $AE, $1E ;0x0 (0x000BD62A-0x000BD62D, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B1
	dc.b	$AE, $AA, $12 ;0x0 (0x000BD630-0x000BD633, Entry count: 0x00000003) [Unknown data]
	dc.b	$B0
	dc.b	$A9, $AD, $30 ;0x0 (0x000BD634-0x000BD637, Entry count: 0x00000003) [Unknown data]
	dc.b	$A9
	dc.b	$B1, $AE, $18 ;0x0 (0x000BD638-0x000BD63B, Entry count: 0x00000003) [Unknown data]
	dc.b	$A9
	dc.b	$AC, $B0, $B5, $AE, $B2, $30 ;0x0 (0x000BD63C-0x000BD642, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD645-0x000BD646, Entry count: 0x00000001) [Unknown data]
	dc.b	$EF
	dc.b	$4B, $B8, $B3, $BC, $0C ;0x0 (0x000BD647-0x000BD64C, Entry count: 0x00000005) [Unknown data]
	dc.b	$06
	dc.b	$06
	dc.b	$80
	dc.b	$18 ;0x0 (0x000BD64F-0x000BD650, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$B8, $BC, $0C, $06, $0C, $12, $B1, $B8, $B5, $12, $1E, $E6, $06, $0C, $1E, $AE
	dc.b	$B5, $B1, $0C, $06, $06, $18, $B5, $AE, $B1, $0C, $06, $0C, $12, $B3, $B7, $BA ;0x0 (0x000BD651-0x000BD672, Entry count: 0x00000021) [Unknown data]
	dc.b	$24 ;0x20
	dc.b	$06
	dc.b	$BC
	dc.b	$B9, $B5, $E6 ;0x0 (0x000BD674-0x000BD677, Entry count: 0x00000003) [Unknown data]
	dc.b	$24
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD679-0x000BD67A, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$BA, $B1, $B1, $BA, $B6, $06 ;0x0 (0x000BD67B-0x000BD681, Entry count: 0x00000006) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD682-0x000BD683, Entry count: 0x00000001) [Unknown data]
	dc.b	$B1
	dc.b	$BA, $B6, $BA, $B1, $B6, $06 ;0x0 (0x000BD684-0x000BD68A, Entry count: 0x00000006) [Unknown data]
	dc.b	$E6
	dc.b	$06
	dc.b	$BA
	dc.b	$B6, $B1, $B1, $BA, $B6, $80, $0C ;0x0 (0x000BD68D-0x000BD694, Entry count: 0x00000007) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $12 ;0x0 (0x000BD695-0x000BD698, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B8, $B5, $2A, $06, $E6, $1E, $12, $B7, $BA, $B3, $0C ;0x0 (0x000BD699-0x000BD6A4, Entry count: 0x0000000B) [Unknown data]
	dc.b	$BA
	dc.b	$B7, $B3, $06 ;0x0 (0x000BD6A5-0x000BD6A8, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD6A9-0x000BD6AA, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$BA, $B7, $0C, $06, $E6, $1E, $06, $06, $06, $E6, $06, $BC, $B9, $B5, $B5, $BC, $B9, $80, $0C ;0x0 (0x000BD6AB-0x000BD6BE, Entry count: 0x00000013) [Unknown data]
	dc.b	$B5
	dc.b	$BC, $B9, $0C, $06, $E6, $06, $BC, $B5, $B9, $BC, $B5, $B9, $80, $0C ;0x0 (0x000BD6BF-0x000BD6CD, Entry count: 0x0000000E) [Unknown data]
	dc.b	$B5
	dc.b	$BC, $B9, $0C, $06, $E6, $06, $BC, $B5, $B9, $BC, $B5, $B9, $80, $12 ;0x0 (0x000BD6CE-0x000BD6DC, Entry count: 0x0000000E) [Unknown data]
	dc.b	$BC
	dc.b	$B5, $B9, $06, $06, $E6, $30, $F6, $F9 ;0x0 (0x000BD6DD-0x000BD6E5, Entry count: 0x00000008) [Unknown data]
	dc.b	$FE

loc_BD6E6:
	dc.b	$C0, $06, $03, $03 ;0x0 (0x000BD6E6-0x000BD6EA, Entry count: 0x00000004) [Unknown data]
	dc.b	$F7, $00, $04, $F8 ;0x0 (0x000BD6EA-0x000BD6EE, Entry count: 0x00000004)
	dc.b	$FF
	dc.b	$F8, $32 ;0x0 (0x000BD6EF-0x000BD6F1, Entry count: 0x00000002) [Unknown data]
	dc.b	$FD
	dc.b	$81, $03, $06, $03 ;0x0 (0x000BD6F2-0x000BD6F6, Entry count: 0x00000004) [Unknown data]
	dc.b	$88, $06, $84, $03, $84, $81, $02, $81, $81, $81, $03, $82, $84, $06, $88, $F8, $1C ;0x0 (0x000BD6F6-0x000BD707, Entry count: 0x00000011)
	dc.b	$FD
	dc.b	$88, $06, $80, $02, $80, $80, $81, $06, $82, $88, $80, $81, $82, $F8, $1B ;0x0 (0x000BD708-0x000BD717, Entry count: 0x0000000F)
	dc.b	$FD
	dc.b	$88, $06, $C0, $03, $C0, $84, $06, $88, $03, $88, $88, $06, $C0, $03, $C0, $84
	dc.b	$06, $84, $C0, $88, $84, $88, $81, $02, $81, $81, $84, $82, $82, $81, $04, $81 ;0x0 (0x000BD718-0x000BD747, Entry count: 0x0000002F)
	dc.b	$82, $88, $06, $C0, $03, $C0, $84, $06, $88, $03, $88, $F7, $00, $0B, $F2 ;0x20
	dc.b	$FF
	dc.b	$88, $06, $81, $82, $88, $C0, $03, $C0, $88, $06, $84, $06, $C0, $03, $C0, $C0
	dc.b	$03, $C0, $88, $06, $84, $06, $88, $03, $C0, $F7, $00, $02, $E8 ;0x0 (0x000BD748-0x000BD765, Entry count: 0x0000001D) [Unknown data]
	dc.b	$FF
	dc.b	$C0, $03, $C0, $88, $06, $84, $06, $C0, $03, $C0, $C0, $03, $C0, $88, $06, $84
	dc.b	$06, $80, $02, $80, $80, $81, $03, $81, $82, $06, $88, $03, $81, $81, $06, $80 ;0x0 (0x000BD766-0x000BD790, Entry count: 0x0000002A) [Unknown data]
	dc.b	$03, $81, $82, $06, $84, $03, $03, $06, $F6, $56 ;0x20
	dc.b	$FF

	even

loc_BD792:
	dc.b	$80, $01

loc_BD794:
	dc.b	$80, $01

loc_BD796:
	dc.b	$EF, $43, $A5, $06 ;0x0 (0x000BD792-0x000BD79A, Entry count: 0x00000008)
	dc.b	$AC
	dc.b	$B1, $B8, $1E ;0x0 (0x000BD79B-0x000BD79E, Entry count: 0x00000003) [Unknown data]
	dc.b	$E2
	dc.b	$96, $F2

loc_BD7A1:
	dc.b	$80, $01

loc_BD7A3:
	dc.b	$EF, $43, $E6 ;0x0 (0x000BD79F-0x000BD7A6, Entry count: 0x00000007) [Unknown data]
	dc.b	$B1
	dc.b	$06 ;0x0 (0x000BD7A7-0x000BD7A8, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B8, $BD, $1E ;0x0 (0x000BD7A9-0x000BD7AC, Entry count: 0x00000003) [Unknown data]
	dc.b	$F2

loc_BD7AD:
	dc.b	$F2 ;0x0 (0x000BD7AD-0x000BD7AE, Entry count: 0x00000001) [Unknown data]

loc_BD7AE:
	dc.b	$EF, $48, $C1, $03 ;0x0 (0x000BD7AE-0x000BD7B2, Entry count: 0x00000004)
	dc.b	$0C
	dc.b	$BD
	dc.b	$09 ;0x0 (0x000BD7B4-0x000BD7B5, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BD7B6-0x000BD7B7, Entry count: 0x00000001) [Unknown data]
	dc.b	$80
	dc.b	$BD, $03 ;0x0 (0x000BD7B8-0x000BD7BA, Entry count: 0x00000002) [Unknown data]
	dc.b	$09
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BD7BC-0x000BD7BD, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$B3, $B5, $24 ;0x0 (0x000BD7BE-0x000BD7C1, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD7C2-0x000BD7C3, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BD7C6-0x000BD7C7, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$BD
	dc.b	$03 ;0x0 (0x000BD7CA-0x000BD7CB, Entry count: 0x00000001) [Unknown data]
	dc.b	$09
	dc.b	$B8
	dc.b	$03 ;0x0 (0x000BD7CD-0x000BD7CE, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BD7D1-0x000BD7D2, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$06
	dc.b	$C1
	dc.b	$03 ;0x0 (0x000BD7D5-0x000BD7D6, Entry count: 0x00000001) [Unknown data]
	dc.b	$03
	dc.b	$0C
	dc.b	$80
	dc.b	$BD, $BA, $06 ;0x0 (0x000BD7D9-0x000BD7DC, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$12 ;0x0 (0x000BD7DD-0x000BD7DE, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$1E ;0x0 (0x000BD7DF-0x000BD7E0, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$18 ;0x0 (0x000BD7E1-0x000BD7E2, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$0C ;0x0 (0x000BD7E3-0x000BD7E4, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C2, $03 ;0x0 (0x000BD7E5-0x000BD7E7, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BD7E8-0x000BD7E9, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BD7EA-0x000BD7EB, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $B8, $B6, $0F ;0x0 (0x000BD7EC-0x000BD7F0, Entry count: 0x00000004) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD7F1-0x000BD7F2, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$03
	dc.b	$B1
	dc.b	$06 ;0x0 (0x000BD7F5-0x000BD7F6, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$03 ;0x0 (0x000BD7F7-0x000BD7F8, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B6, $06 ;0x0 (0x000BD7F9-0x000BD7FB, Entry count: 0x00000002) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BD7FC-0x000BD7FD, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$BA, $BC, $06 ;0x0 (0x000BD7FE-0x000BD801, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$03 ;0x0 (0x000BD802-0x000BD803, Entry count: 0x00000001) [Unknown data]
	dc.b	$BD
	dc.b	$BC, $06 ;0x0 (0x000BD804-0x000BD806, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$BD, $09 ;0x0 (0x000BD807-0x000BD809, Entry count: 0x00000002) [Unknown data]
	dc.b	$C2
	dc.b	$06 ;0x0 (0x000BD80A-0x000BD80B, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$09 ;0x0 (0x000BD80C-0x000BD80D, Entry count: 0x00000001) [Unknown data]
	dc.b	$C4
	dc.b	$06 ;0x0 (0x000BD80E-0x000BD80F, Entry count: 0x00000001) [Unknown data]
	dc.b	$C2
	dc.b	$09 ;0x0 (0x000BD810-0x000BD811, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$03 ;0x0 (0x000BD812-0x000BD813, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$03
	dc.b	$C2
	dc.b	$06 ;0x0 (0x000BD816-0x000BD817, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$27 ;0x0 (0x000BD818-0x000BD819, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$93 ;0x0 (0x000BD81A-0x000BD81B, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BD81C:
	dc.b	$EF, $40, $96, $06 ;0x0 (0x000BD81C-0x000BD820, Entry count: 0x00000004)
	dc.b	$A2
	dc.b	$9D, $9B, $1E ;0x0 (0x000BD821-0x000BD824, Entry count: 0x00000003) [Unknown data]
	dc.b	$F7
	dc.b	$00, $08, $F6 ;0x0 (0x000BD825-0x000BD828, Entry count: 0x00000003) [Unknown data]
	dc.b	$FF
	dc.b	$92, $06 ;0x0 (0x000BD829-0x000BD82B, Entry count: 0x00000002) [Unknown data]
	dc.b	$9E
	dc.b	$99, $98, $12 ;0x0 (0x000BD82C-0x000BD82F, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD830-0x000BD831, Entry count: 0x00000001) [Unknown data]
	dc.b	$92
	dc.b	$06 ;0x0 (0x000BD832-0x000BD833, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$98, $99, $12 ;0x0 (0x000BD834-0x000BD837, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD838-0x000BD839, Entry count: 0x00000001) [Unknown data]
	dc.b	$92
	dc.b	$06 ;0x0 (0x000BD83A-0x000BD83B, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$99, $98, $12 ;0x0 (0x000BD83C-0x000BD83F, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD840-0x000BD841, Entry count: 0x00000001) [Unknown data]
	dc.b	$92
	dc.b	$06 ;0x0 (0x000BD842-0x000BD843, Entry count: 0x00000001) [Unknown data]
	dc.b	$9E
	dc.b	$98, $99, $0C ;0x0 (0x000BD844-0x000BD847, Entry count: 0x00000003) [Unknown data]
	dc.b	$9E
	dc.b	$12 ;0x0 (0x000BD848-0x000BD849, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$D1 ;0x0 (0x000BD84A-0x000BD84B, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BD84C:
	dc.b	$E5, $03, $E3, $01, $01, $EF, $44, $AE, $B1, $B5, $18 ;0x0 (0x000BD84C-0x000BD857, Entry count: 0x0000000B)
	dc.b	$B3
	dc.b	$B6, $AE, $B5, $B8, $AE, $B3, $B6, $AE, $B5, $B1, $AE, $30 ;0x0 (0x000BD858-0x000BD864, Entry count: 0x0000000C) [Unknown data]
	dc.b	$B1
	dc.b	$AA, $AE, $B5, $B1, $AE, $18 ;0x0 (0x000BD865-0x000BD86B, Entry count: 0x00000006) [Unknown data]
	dc.b	$B6
	dc.b	$B3, $AE, $B5, $AE, $B8, $B1, $AE, $B5, $B1, $BC, $B8, $12 ;0x0 (0x000BD86C-0x000BD878, Entry count: 0x0000000C) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $1E ;0x0 (0x000BD879-0x000BD87C, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$B1
	dc.b	$AA, $AE, $A5, $AE, $AA, $AA, $B1, $AE, $24 ;0x0 (0x000BD87F-0x000BD888, Entry count: 0x00000009) [Unknown data]
	dc.b	$B1
	dc.b	$B5, $AA, $0C ;0x0 (0x000BD889-0x000BD88C, Entry count: 0x00000003) [Unknown data]
	dc.b	$AA
	dc.b	$B3, $B0, $18 ;0x0 (0x000BD88D-0x000BD890, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$AE, $AA, $F6, $B7 ;0x0 (0x000BD891-0x000BD895, Entry count: 0x00000004) [Unknown data]
	dc.b	$FF

loc_BD896:
	dc.b	$88, $0C, $C0, $84, $C0, $F6, $F9 ;0x0 (0x000BD896-0x000BD89D, Entry count: 0x00000007)
	dc.b	$FF

loc_BD89E:
	dc.b	$EF, $4D, $BF, $06 ;0x0 (0x000BD89E-0x000BD8A2, Entry count: 0x00000004)
	dc.b	$C1
	dc.b	$C6, $C6, $0C ;0x0 (0x000BD8A3-0x000BD8A6, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BD8A7-0x000BD8A8, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C6, $BF, $C1, $C6, $BF, $0C ;0x0 (0x000BD8A9-0x000BD8AF, Entry count: 0x00000006) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BD8B0-0x000BD8B1, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$C6, $BF, $C1, $C6, $C6, $0C ;0x0 (0x000BD8B2-0x000BD8B8, Entry count: 0x00000006) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BD8B9-0x000BD8BA, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C6, $BF, $C6, $C1, $BF, $C1, $BF, $C6, $BF, $BF, $C1, $C6, $C6, $0C ;0x0 (0x000BD8BB-0x000BD8C9, Entry count: 0x0000000E) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BD8CA-0x000BD8CB, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C6, $BF, $C1, $C6, $BF, $0C ;0x0 (0x000BD8CC-0x000BD8D2, Entry count: 0x00000006) [Unknown data]
	dc.b	$C1
	dc.b	$06 ;0x0 (0x000BD8D3-0x000BD8D4, Entry count: 0x00000001) [Unknown data]
	dc.b	$C6
	dc.b	$C6, $BF, $C1, $C6, $C6, $0C ;0x0 (0x000BD8D5-0x000BD8DB, Entry count: 0x00000006) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BD8DC-0x000BD8DD, Entry count: 0x00000001) [Unknown data]
	dc.b	$C1
	dc.b	$C6, $C6, $0C ;0x0 (0x000BD8DE-0x000BD8E1, Entry count: 0x00000003) [Unknown data]
	dc.b	$C1
	dc.b	$BF, $C1, $EF, $56, $B5, $06 ;0x0 (0x000BD8E2-0x000BD8E8, Entry count: 0x00000006) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $B5, $BF, $B5, $BC, $B5, $BA, $B5, $B8, $BA, $0C ;0x0 (0x000BD8E9-0x000BD8F4, Entry count: 0x0000000B) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BD8F5-0x000BD8F6, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B8, $E6 ;0x0 (0x000BD8F7-0x000BD8F9, Entry count: 0x00000002) [Unknown data]
	dc.b	$06
	dc.b	$B5
	dc.b	$BA, $09 ;0x0 (0x000BD8FB-0x000BD8FD, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$03 ;0x0 (0x000BD8FE-0x000BD8FF, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$06 ;0x0 (0x000BD900-0x000BD901, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $C1, $E6 ;0x0 (0x000BD902-0x000BD905, Entry count: 0x00000003) [Unknown data]
	dc.b	$06
	dc.b	$BE
	dc.b	$BC, $C1, $0C ;0x0 (0x000BD907-0x000BD90A, Entry count: 0x00000003) [Unknown data]
	dc.b	$BE
	dc.b	$06 ;0x0 (0x000BD90B-0x000BD90C, Entry count: 0x00000001) [Unknown data]
	dc.b	$BC
	dc.b	$0C ;0x0 (0x000BD90D-0x000BD90E, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$06 ;0x0 (0x000BD90F-0x000BD910, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$BF, $B5, $C1, $B5, $BF, $B5, $BA, $B5, $BF, $B5, $C1, $B5, $BF, $B5, $BF, $B5
	dc.b	$C1, $B5, $C6, $B5, $C1, $BF, $E7 ;0x0 (0x000BD911-0x000BD928, Entry count: 0x00000017) [Unknown data]
	dc.b	$0C
	dc.b	$C1
	dc.b	$BF, $C1, $F6, $70 ;0x0 (0x000BD92A-0x000BD92E, Entry count: 0x00000004) [Unknown data]
	dc.b	$FF

loc_BD92F:
	dc.b	$EF, $40, $A2, $0C, $06, $0C, $06, $06, $06, $E6, $06, $06, $06, $0C, $06, $06
	dc.b	$06, $E6, $0C, $06, $0C, $06, $0C, $9E, $9E, $06 ;0x0 (0x000BD92F-0x000BD949, Entry count: 0x0000001A)
	dc.b	$A0
	dc.b	$0C, $06, $06, $06, $A2, $0C, $06, $0C, $06, $06, $06, $E6, $06, $06, $06, $0C
	dc.b	$06, $06, $06, $E6, $0C, $06, $0C, $06, $0C, $9E, $06 ;0x0 (0x000BD94A-0x000BD965, Entry count: 0x0000001B) [Unknown data]
	dc.b	$06
	dc.b	$06
	dc.b	$A0
	dc.b	$0C, $06, $06, $06, $A2, $0C, $06, $0C, $06, $06, $06, $E6, $06, $06, $06, $0C
	dc.b	$06, $06, $06, $E6, $0C, $06, $0C, $06, $06, $06, $E6, $06, $06, $06, $0C, $06 ;0x0 (0x000BD968-0x000BD98C, Entry count: 0x00000024) [Unknown data]
	dc.b	$0C, $9D, $9D, $06 ;0x20
	dc.b	$A2
	dc.b	$0C, $06, $06, $06, $E6, $06, $06, $06, $0C, $06, $0C, $9E, $9E, $9E, $9E, $06 ;0x0 (0x000BD98D-0x000BD99D, Entry count: 0x00000010) [Unknown data]
	dc.b	$A0
	dc.b	$E6, $06, $06, $0C, $0C, $0C, $F6, $89 ;0x0 (0x000BD99E-0x000BD9A6, Entry count: 0x00000008) [Unknown data]
	dc.b	$FF

loc_BD9A7:
	dc.b	$E5, $03, $E3, $01, $01, $EF, $44, $B5, $BA, $BF, $0C ;0x0 (0x000BD9A7-0x000BD9B2, Entry count: 0x0000000B)
	dc.b	$B5
	dc.b	$BA, $BF, $06 ;0x0 (0x000BD9B3-0x000BD9B6, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BE, $BA, $12 ;0x0 (0x000BD9B7-0x000BD9BA, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$B8, $BC, $0C ;0x0 (0x000BD9BB-0x000BD9BE, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$B8, $BC, $24 ;0x0 (0x000BD9BF-0x000BD9C2, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD9C3-0x000BD9C4, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $BF, $BA, $B5, $BF, $06 ;0x0 (0x000BD9C5-0x000BD9CB, Entry count: 0x00000006) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BE, $12 ;0x0 (0x000BD9CC-0x000BD9CF, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $B5, $0C ;0x0 (0x000BD9D0-0x000BD9D3, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $B1, $BA, $B6, $06 ;0x0 (0x000BD9D4-0x000BD9DA, Entry count: 0x00000006) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $12 ;0x0 (0x000BD9DB-0x000BD9DE, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BD9DF-0x000BD9E0, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$BF, $B5, $06 ;0x0 (0x000BD9E1-0x000BD9E4, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BF, $BA, $BF, $BA, $B5, $B5, $BA, $BE, $12 ;0x0 (0x000BD9E5-0x000BD9EE, Entry count: 0x00000009) [Unknown data]
	dc.b	$B5
	dc.b	$B8, $BC, $0C ;0x0 (0x000BD9EF-0x000BD9F2, Entry count: 0x00000003) [Unknown data]
	dc.b	$B8
	dc.b	$BC, $B5, $18 ;0x0 (0x000BD9F3-0x000BD9F6, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$BA, $B5, $BF, $06 ;0x0 (0x000BD9F7-0x000BD9FB, Entry count: 0x00000004) [Unknown data]
	dc.b	$B5
	dc.b	$BF, $BA, $BF, $BA, $B5, $B5, $BE, $BA, $12 ;0x0 (0x000BD9FC-0x000BDA05, Entry count: 0x00000009) [Unknown data]
	dc.b	$B8
	dc.b	$B5, $BC, $0C ;0x0 (0x000BDA06-0x000BDA09, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$BA, $B6, $06 ;0x0 (0x000BDA0A-0x000BDA0D, Entry count: 0x00000003) [Unknown data]
	dc.b	$B1
	dc.b	$B6, $BA, $0C ;0x0 (0x000BDA0E-0x000BDA11, Entry count: 0x00000003) [Unknown data]
	dc.b	$B3
	dc.b	$BC, $B8, $12 ;0x0 (0x000BDA12-0x000BDA15, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BDA16-0x000BDA17, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$B5, $BA, $BF, $BA, $B5, $06 ;0x0 (0x000BDA18-0x000BDA1E, Entry count: 0x00000006) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BE, $1E ;0x0 (0x000BDA1F-0x000BDA22, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$B5, $BA, $06 ;0x0 (0x000BDA23-0x000BDA26, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BE, $B5, $BF, $BA, $BA, $B5, $BE, $1E ;0x0 (0x000BDA27-0x000BDA30, Entry count: 0x00000009) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $BF, $0C ;0x0 (0x000BDA31-0x000BDA34, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$B5, $BA, $06 ;0x0 (0x000BDA35-0x000BDA38, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BE, $1E ;0x0 (0x000BDA39-0x000BDA3C, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$BF, $B5, $06 ;0x0 (0x000BDA3D-0x000BDA40, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $BE, $0C ;0x0 (0x000BDA41-0x000BDA44, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BA, $BE, $B5, $BE, $BA, $06 ;0x0 (0x000BDA45-0x000BDA4B, Entry count: 0x00000006) [Unknown data]
	dc.b	$BE
	dc.b	$B5, $BA, $0C ;0x0 (0x000BDA4C-0x000BDA4F, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$BA, $B5, $B5, $BF, $BA, $06 ;0x0 (0x000BDA50-0x000BDA56, Entry count: 0x00000006) [Unknown data]
	dc.b	$BA
	dc.b	$BE, $B5, $1E ;0x0 (0x000BDA57-0x000BDA5A, Entry count: 0x00000003) [Unknown data]
	dc.b	$BF
	dc.b	$BA, $B5, $06 ;0x0 (0x000BDA5B-0x000BDA5E, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $BE, $BF, $B5, $BA, $BA, $BE, $B5, $0C ;0x0 (0x000BDA5F-0x000BDA68, Entry count: 0x00000009) [Unknown data]
	dc.b	$B5
	dc.b	$BE, $BA, $06 ;0x0 (0x000BDA69-0x000BDA6C, Entry count: 0x00000003) [Unknown data]
	dc.b	$B5
	dc.b	$BE, $BA, $0C ;0x0 (0x000BDA6D-0x000BDA70, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$B1
	dc.b	$B6, $BA, $B1, $BA, $B6, $B1, $B6, $BA, $06 ;0x0 (0x000BDA73-0x000BDA7C, Entry count: 0x00000009) [Unknown data]
	dc.b	$BC
	dc.b	$B3, $B8, $E6 ;0x0 (0x000BDA7D-0x000BDA80, Entry count: 0x00000003) [Unknown data]
	dc.b	$18
	dc.b	$80
	dc.b	$F6, $23 ;0x0 (0x000BDA82-0x000BDA84, Entry count: 0x00000002) [Unknown data]
	dc.b	$FF

loc_BDA85:
	dc.b	$88, $06, $88, $84, $88, $C0, $88, $84, $88, $F7, $00, $07, $F3 ;0x0 (0x000BDA85-0x000BDA92, Entry count: 0x0000000D)
	dc.b	$FF
	dc.b	$88, $06, $88, $84, $88, $80, $02, $80, $80, $81, $03, $81, $82, $82, $84, $84, $F6, $E0 ;0x0 (0x000BDA93-0x000BDAA5, Entry count: 0x00000012) [Unknown data]
	dc.b	$FF

loc_BDAA6:
	dc.b	$EF, $48, $E3, $02, $01, $B5, $06 ;0x0 (0x000BDAA6-0x000BDAAD, Entry count: 0x00000007)
	dc.b	$BA
	dc.b	$BF, $0C ;0x0 (0x000BDAAE-0x000BDAB0, Entry count: 0x00000002) [Unknown data]
	dc.b	$BE
	dc.b	$BA, $06 ;0x0 (0x000BDAB1-0x000BDAB3, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$E7 ;0x0 (0x000BDAB4-0x000BDAB5, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BA
	dc.b	$BC, $BE, $B8, $2A ;0x0 (0x000BDAB7-0x000BDABB, Entry count: 0x00000004) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BDABC-0x000BDABD, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDAC0-0x000BDAC1, Entry count: 0x00000001) [Unknown data]
	dc.b	$B5
	dc.b	$06 ;0x0 (0x000BDAC2-0x000BDAC3, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$BF, $0C ;0x0 (0x000BDAC4-0x000BDAC6, Entry count: 0x00000002) [Unknown data]
	dc.b	$BE
	dc.b	$BA, $06 ;0x0 (0x000BDAC7-0x000BDAC9, Entry count: 0x00000002) [Unknown data]
	dc.b	$B5
	dc.b	$E7 ;0x0 (0x000BDACA-0x000BDACB, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BA
	dc.b	$BC, $BE, $C1, $30 ;0x0 (0x000BDACD-0x000BDAD1, Entry count: 0x00000004) [Unknown data]
	dc.b	$E7
	dc.b	$0C
	dc.b	$BF
	dc.b	$C1, $C3, $C4, $12 ;0x0 (0x000BDAD4-0x000BDAD8, Entry count: 0x00000004) [Unknown data]
	dc.b	$BF
	dc.b	$06 ;0x0 (0x000BDAD9-0x000BDADA, Entry count: 0x00000001) [Unknown data]
	dc.b	$12
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BDADC-0x000BDADD, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$BE
	dc.b	$06 ;0x0 (0x000BDAE0-0x000BDAE1, Entry count: 0x00000001) [Unknown data]
	dc.b	$BF
	dc.b	$C1, $C1, $12 ;0x0 (0x000BDAE2-0x000BDAE5, Entry count: 0x00000003) [Unknown data]
	dc.b	$BE
	dc.b	$06 ;0x0 (0x000BDAE6-0x000BDAE7, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$C6
	dc.b	$C1, $1E ;0x0 (0x000BDAE9-0x000BDAEB, Entry count: 0x00000002) [Unknown data]
	dc.b	$BD
	dc.b	$06 ;0x0 (0x000BDAEC-0x000BDAED, Entry count: 0x00000001) [Unknown data]
	dc.b	$C0
	dc.b	$BD, $BA, $12 ;0x0 (0x000BDAEE-0x000BDAF1, Entry count: 0x00000003) [Unknown data]
	dc.b	$B7
	dc.b	$06 ;0x0 (0x000BDAF2-0x000BDAF3, Entry count: 0x00000001) [Unknown data]
	dc.b	$12
	dc.b	$B3
	dc.b	$06 ;0x0 (0x000BDAF5-0x000BDAF6, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$BA
	dc.b	$BB, $30 ;0x0 (0x000BDAF9-0x000BDAFB, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$B6
	dc.b	$06 ;0x0 (0x000BDAFE-0x000BDAFF, Entry count: 0x00000001) [Unknown data]
	dc.b	$B8
	dc.b	$0C ;0x0 (0x000BDB00-0x000BDB01, Entry count: 0x00000001) [Unknown data]
	dc.b	$B9
	dc.b	$12 ;0x0 (0x000BDB02-0x000BDB03, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$06 ;0x0 (0x000BDB04-0x000BDB05, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BC
	dc.b	$BB, $12 ;0x0 (0x000BDB07-0x000BDB09, Entry count: 0x00000002) [Unknown data]
	dc.b	$B9
	dc.b	$06 ;0x0 (0x000BDB0A-0x000BDB0B, Entry count: 0x00000001) [Unknown data]
	dc.b	$B7
	dc.b	$0C ;0x0 (0x000BDB0C-0x000BDB0D, Entry count: 0x00000001) [Unknown data]
	dc.b	$B6
	dc.b	$B7, $12 ;0x0 (0x000BDB0E-0x000BDB10, Entry count: 0x00000002) [Unknown data]
	dc.b	$B2
	dc.b	$AF, $06 ;0x0 (0x000BDB11-0x000BDB13, Entry count: 0x00000002) [Unknown data]
	dc.b	$B0
	dc.b	$B2, $18 ;0x0 (0x000BDB14-0x000BDB16, Entry count: 0x00000002) [Unknown data]
	dc.b	$80
	dc.b	$BC, $12 ;0x0 (0x000BDB17-0x000BDB19, Entry count: 0x00000002) [Unknown data]
	dc.b	$B9
	dc.b	$06 ;0x0 (0x000BDB1A-0x000BDB1B, Entry count: 0x00000001) [Unknown data]
	dc.b	$0C
	dc.b	$BF
	dc.b	$BE, $12 ;0x0 (0x000BDB1D-0x000BDB1F, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BDB20-0x000BDB21, Entry count: 0x00000001) [Unknown data]
	dc.b	$BA
	dc.b	$0C ;0x0 (0x000BDB22-0x000BDB23, Entry count: 0x00000001) [Unknown data]
	dc.b	$B9
	dc.b	$BA, $06 ;0x0 (0x000BDB24-0x000BDB26, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$BE, $0C ;0x0 (0x000BDB27-0x000BDB29, Entry count: 0x00000002) [Unknown data]
	dc.b	$BC
	dc.b	$06 ;0x0 (0x000BDB2A-0x000BDB2B, Entry count: 0x00000001) [Unknown data]
	dc.b	$BE
	dc.b	$BF, $0C ;0x0 (0x000BDB2C-0x000BDB2E, Entry count: 0x00000002) [Unknown data]
	dc.b	$C1
	dc.b	$30 ;0x0 (0x000BDB2F-0x000BDB30, Entry count: 0x00000001) [Unknown data]
	dc.b	$F6
	dc.b	$74 ;0x0 (0x000BDB31-0x000BDB32, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BDB33:
	dc.b	$EF, $40, $A2, $2A ;0x0 (0x000BDB33-0x000BDB37, Entry count: 0x00000004)
	dc.b	$9D
	dc.b	$06 ;0x0 (0x000BDB38-0x000BDB39, Entry count: 0x00000001) [Unknown data]
	dc.b	$E6
	dc.b	$18
	dc.b	$A2
	dc.b	$0C ;0x0 (0x000BDB3C-0x000BDB3D, Entry count: 0x00000001) [Unknown data]
	dc.b	$A9
	dc.b	$A0, $30 ;0x0 (0x000BDB3E-0x000BDB40, Entry count: 0x00000002) [Unknown data]
	dc.b	$E7
	dc.b	$1E
	dc.b	$9B
	dc.b	$0C ;0x0 (0x000BDB43-0x000BDB44, Entry count: 0x00000001) [Unknown data]
	dc.b	$A0
	dc.b	$06 ;0x0 (0x000BDB45-0x000BDB46, Entry count: 0x00000001) [Unknown data]
	dc.b	$A2
	dc.b	$30, $E6, $1E, $06 ;0x0 (0x000BDB47-0x000BDB4B, Entry count: 0x00000004) [Unknown data]
	dc.b	$9D, $0C ;0x0 (0x000BDB4B-0x000BDB4D, Entry count: 0x00000002)
	dc.b	$A9
	dc.b	$12 ;0x0 (0x000BDB4E-0x000BDB4F, Entry count: 0x00000001) [Unknown data]
	dc.b	$9D
	dc.b	$06, $18, $E6, $30, $A0, $12, $06, $18, $E6, $0C, $9B, $9B, $18 ;0x0 (0x000BDB50-0x000BDB5D, Entry count: 0x0000000D) [Unknown data]
	dc.b	$A2
	dc.b	$12, $06, $18, $E6, $30, $9B, $E6 ;0x0 (0x000BDB5E-0x000BDB65, Entry count: 0x00000007) [Unknown data]
	dc.b	$18
	dc.b	$9F
	dc.b	$A3, $30 ;0x0 (0x000BDB67-0x000BDB69, Entry count: 0x00000002) [Unknown data]
	dc.b	$E6
	dc.b	$30
	dc.b	$A6
	dc.b	$12 ;0x0 (0x000BDB6C-0x000BDB6D, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$A4
	dc.b	$12 ;0x0 (0x000BDB70-0x000BDB71, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$9F
	dc.b	$12, $06, $18, $E6, $18, $A3, $A4, $12 ;0x0 (0x000BDB74-0x000BDB7C, Entry count: 0x00000008) [Unknown data]
	dc.b	$05
	dc.b	$19
	dc.b	$A2
	dc.b	$12 ;0x0 (0x000BDB7F-0x000BDB80, Entry count: 0x00000001) [Unknown data]
	dc.b	$06
	dc.b	$18
	dc.b	$9D
	dc.b	$9D, $9D, $30 ;0x0 (0x000BDB83-0x000BDB86, Entry count: 0x00000003) [Unknown data]
	dc.b	$F6
	dc.b	$AB ;0x0 (0x000BDB87-0x000BDB88, Entry count: 0x00000001) [Unknown data]
	dc.b	$FF

loc_BDB89:
	dc.b	$E5, $03, $E3, $01, $05, $EF, $44, $B2, $AE, $B5, $30 ;0x0 (0x000BDB89-0x000BDB94, Entry count: 0x0000000B)
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDB97-0x000BDB98, Entry count: 0x00000001) [Unknown data]
	dc.b	$B3
	dc.b	$AC, $B0, $30 ;0x0 (0x000BDB99-0x000BDB9C, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDB9F-0x000BDBA0, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B5, $B2, $30 ;0x0 (0x000BDBA1-0x000BDBA4, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDBA7-0x000BDBA8, Entry count: 0x00000001) [Unknown data]
	dc.b	$AD
	dc.b	$B5, $B0, $30 ;0x0 (0x000BDBA9-0x000BDBAC, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$12
	dc.b	$80
	dc.b	$1E ;0x0 (0x000BDBAF-0x000BDBB0, Entry count: 0x00000001) [Unknown data]
	dc.b	$AC
	dc.b	$B0, $B3, $30 ;0x0 (0x000BDBB1-0x000BDBB4, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDBB7-0x000BDBB8, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B5, $B2, $30 ;0x0 (0x000BDBB9-0x000BDBBC, Entry count: 0x00000003) [Unknown data]
	dc.b	$E6
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDBBF-0x000BDBC0, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B7, $B3, $30 ;0x0 (0x000BDBC1-0x000BDBC4, Entry count: 0x00000003) [Unknown data]
	dc.b	$E7
	dc.b	$30
	dc.b	$AB
	dc.b	$AF, $B3, $E6 ;0x0 (0x000BDBC7-0x000BDBCA, Entry count: 0x00000003) [Unknown data]
	dc.b	$1E
	dc.b	$80
	dc.b	$12 ;0x0 (0x000BDBCC-0x000BDBCD, Entry count: 0x00000001) [Unknown data]
	dc.b	$B2
	dc.b	$AD, $AA, $30 ;0x0 (0x000BDBCE-0x000BDBD1, Entry count: 0x00000003) [Unknown data]
	dc.b	$AB
	dc.b	$B0, $B3, $24 ;0x0 (0x000BDBD2-0x000BDBD5, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BDBD6-0x000BDBD7, Entry count: 0x00000001) [Unknown data]
	dc.b	$AF
	dc.b	$AB, $B2, $24 ;0x0 (0x000BDBD8-0x000BDBDB, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BDBDC-0x000BDBDD, Entry count: 0x00000001) [Unknown data]
	dc.b	$AF
	dc.b	$AB, $B2, $30 ;0x0 (0x000BDBDE-0x000BDBE1, Entry count: 0x00000003) [Unknown data]
	dc.b	$B0
	dc.b	$AB, $B3, $24 ;0x0 (0x000BDBE2-0x000BDBE5, Entry count: 0x00000003) [Unknown data]
	dc.b	$80
	dc.b	$0C ;0x0 (0x000BDBE6-0x000BDBE7, Entry count: 0x00000001) [Unknown data]
	dc.b	$AE
	dc.b	$B2, $B5, $30 ;0x0 (0x000BDBE8-0x000BDBEB, Entry count: 0x00000003) [Unknown data]
	dc.b	$BA
	dc.b	$B5, $B0, $B5, $B9, $B0, $F6, $96 ;0x0 (0x000BDBEC-0x000BDBF3, Entry count: 0x00000007) [Unknown data]
	dc.b	$FF

loc_BDBF4:
	dc.b	$88, $0C, $C0, $A0, $88, $88, $0C, $C0, $A0, $C0, $F7, $00, $07, $F2 ;0x0 (0x000BDBF4-0x000BDC02, Entry count: 0x0000000E)
	dc.b	$FF
	dc.b	$88, $0C, $C0, $82, $88, $88, $C0, $03, $C0, $C0, $C0, $81, $0C, $82, $88, $0C
	dc.b	$C0, $06, $88, $88, $0C, $A0, $F7, $00, $07, $F4 ;0x0 (0x000BDC03-0x000BDC1D, Entry count: 0x0000001A) [Unknown data]
	dc.b	$FF
	dc.b	$88, $0C, $C0, $06, $88, $88, $0C, $82, $F6, $CC ;0x0 (0x000BDC1E-0x000BDC28, Entry count: 0x0000000A) [Unknown data]
	dc.b	$FF

	even