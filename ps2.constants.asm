; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

; Character statistics. Enemies share some of them
; 'mod' means a stat modified by equipment
status = 0	; byte
paralyze_timer = 1	; byte
curr_hp = 2	; word
max_hp = 4	; word
curr_tp = 6	; word
max_tp	= 8	; word
level = $A	; word
exp = $C	; longword
strength = $10	; word
mental = $12	; word
agility = $14	; word
luck = $16	; word
dexterity = $18	; word
attack = $1A	; word
attack_mod = $1C	; word
defense = $1E	; word
equipment = $20
head = $20	; byte
right_hand = $21	; byte
left_hand = $22	; byte
body = $23	; byte
legs = $24	; byte
battle_tech_num = $25	; byte
map_tech_num = $26	; byte
item_num = $27	; byte
items = $28
items_2 = $30
name = $38	; 2 longwords ; the 1st longword contains spaces only; the 2nd longword is the character's name

; Enemy statistics
enemy_type = 1
enemy_meseta = $A
enemy_exp = $C
enemy_tech = $25
enemy_tech_use_rate = $26
enemy_tech_success_rate = $27

; ---------------------------------------------------------------------------
; Character status
StatusDefend = 0
StatusDeban = 1
StatusAsleep = 6
StatusPoison = 7

; Status masks
StatusDefend_Mask =  1<<StatusDefend	; $01
StatusDeban_Mask =  1<<StatusDeban	; $02
StatusAsleep_Mask =  1<<StatusAsleep	; $40
StatusPoison_Mask =  1<<StatusPoison	; $80
; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------
; Global properties and constants for objects
object_size = $40
next_object = object_size

obj_id = 0	; word
render_flags = 2	; bitfield; bit 0 = if set, delete object
					;           bit 1 = if set, don't render sprite;
					;           bit 4 = if set, use absolute screen coordinates;
					;           bit 5 = if set, object has top priority for Sprite_table_input (drawn above all other objects)
					;			bit 7 = if set, object is on-screen, otherwise off-screen
mappings = 4	; longword
art_tile = 8	; word
x_pos = $A	; longword
y_pos = $E	; longword
routine = $22	; word

child_mappings = mappings+object_size

parent_mappings = -(object_size-mappings)
; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------
; Properties and constants applicable to map objects
interacted_flag = 3	; generally for NPCs, however other objects such as chests seem to use this flag;
					; if $FF, it means we're in the middle of a conversation with an NPC
x_move_steps = $14	; word
y_move_steps = $18	; word
sprite_y_pos = $1E	; word ; Y position for sprites
sprite_x_pos = $20 ; word ; X position for sprites
mapping_frame = $24	; word
anim_frame_timer = $26	; word
step_duration = $28	; word ; determines how many frames characters can move at a single press of a button
facing_dir = $2A	; word	; 0 = UP; 3 = DOWN; 6 = LEFT; 9 = RIGHT
type = $2E	; byte
subtype = $2F	; byte
anim_frame = $32	; word
; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------
; Properties and constants applicable to battle objects
battle_status = 3	; bitfield;	bit 0 = attacking flag; bit 1 = animation for child objects, if set, use parent animation number + 1; bit 3 = display dead message flag; bit 4 = no damage flag; bit 5 = killed flag; bit 6 = hit flag; bit 7 = is-target flag
saved_x_pos = $C	; word
saved_y_pos = $10	; word
battle_anim = $16	; word
battle_anim_frame = $1A	; word
attack_x_offset = $1C	; word
anim_timer_start = $28	; word
battle_target = $2C	; word
hit_timer = $30	; word
fighter_id = $36	; word

child_battle_anim = $16+object_size	; word
child_battle_anim_frame = $1A+object_size	; word
child_attack_x_offset = $1C+object_size	; word
child_anim_timer_start = $28+object_size	; word
child_battle_target = $2C+object_size	; word
child_enemy_group_start = $36+object_size	; word

parent_battle_status = -(object_size-battle_status)
; ---------------------------------------------------------------------------


; function to determine the id in a table
; ptr = address of pointer in the table
; offset = start address of the table
; ptrsize = size of the pointer
; idstart = id start number
id function ptr, ((ptr-offset)/ptrsize+idstart)

; Game modes

offset	:=	GameModeTable
ptrsize	:=	2
idstart	:=	0

GameModeID_Sega =		id(PtrGameMode_Sega)		; 0
GameModeID_Title = 	id(PtrGameMode_Title)		; 4
GameModeID_Ending =	id(PtrGameMode_Ending)	; 8
GameModeID_Map = 	id(PtrGameMode_Map)		; $C
GameModeID_Scene = id(PtrGameMode_Scene)	; $10
GameModeID_Battle = 	id(PtrGameMode_Battle)	; $14
GameModeID_Intro = 	id(PtrGameMode_Intro)		; $18

; Characters
CharID_Rolf =  0
CharID_Nei =  1
CharID_Rudo =  2
CharID_Amy =  3
CharID_Hugh =  4
CharID_Anna =  5
CharID_Kain =  6
CharID_Shir =  7
; Character masks
CharID_Rolf_Mask =  1<<CharID_Rolf	; $01
CharID_Nei_Mask =  1<<CharID_Nei	; $02
CharID_Rudo_Mask =  1<<CharID_Rudo	; $04
CharID_Amy_Mask =  1<<CharID_Amy	; $08
CharID_Hugh_Mask =  1<<CharID_Hugh	; $10
CharID_Anna_Mask =  1<<CharID_Anna	; $20
CharID_Kain_Mask =  1<<CharID_Kain	; $40
CharID_Shir_Mask =  1<<CharID_Shir	; $80

CharNumber = 8;
CharNameLength = 4

; Objects
offset	:=	ObjectTable
ptrsize	:=	4
idstart	:=	1

ObjID_RedCursor =  id(PtrObj_RedCursor)								; 1
ObjID_InputWindowCursor =  id(PtrObj_InputWindowCursor)				; 2
ObjID_NameDestinationTile =  id(PtrObj_NameDestinationTile)			; 3
ObjID_BattleCursor =  id(PtrObj_BattleCursor)						; 4
ObjID_CharSelectCursor =  id(PtrObj_CharSelectCursor)				; 5
ObjID_CommandSelectCursor =  id(PtrObj_CommandSelectCursor)			; 6
ObjID_MonitorExplosion =  id(PtrObj_MonitorExplosion)				; 7
ObjID_EndingSpaceship =  id(PtrObj_EndingSpaceship)					; 8
ObjID_Null1 =  id(PtrObj_Null1)										; 9
ObjID_BattleCharacter =  id(PtrObj_BattleCharacter)					; $A
ObjID_BattleLongRangeAttack =  id(PtrObj_BattleLongRangeAttack)		; $B
ObjID_BattleCloseRangeAttack =  id(PtrObj_BattleCloseRangeAttack)	; $C
ObjID_BattleTechnique =  id(PtrObj_BattleTechnique)					; $D
ObjID_Null2 =  id(PtrObj_Null2)										; $E
ObjID_BattleEnemy =  id(PtrObj_BattleEnemy)							; $F
ObjID_EnemyAttack =  id(PtrObj_EnemyAttack)							; $10
ObjID_EnemySkill =  id(PtrObj_EnemySkill)							; $11
ObjID_EnemySkill2 =  id(PtrObj_EnemySkill2)							; $12
ObjID_EnemyAttack2 =  id(PtrObj_EnemyAttack2)						; $13
ObjID_MapCharacter =  id(PtrObj_MapCharacter)						; $14
ObjID_FollowingCharacter =  id(PtrObj_FollowingCharacter)			; $15
ObjID_MotaMan =  id(PtrObj_MotaMan)									; $16
ObjID_MotaWoman =  id(PtrObj_MotaWoman)								; $17
ObjID_MotaOldMan =  id(PtrObj_MotaOldMan)							; $18
ObjID_MotaChild =  id(PtrObj_MotaChild)								; $19
ObjID_Dezolian =  id(PtrObj_Dezolian)								; $1A
ObjID_Motavian =  id(PtrObj_Motavian)								; $1B
ObjID_MuskCat =  id(PtrObj_MuskCat)									; $1C
ObjID_MotaMan2 =  id(PtrObj_MotaMan2)								; $1D
ObjID_MotaMan3 =  id(PtrObj_MotaMan3)								; $1E
ObjID_MotaWoman2 =  id(PtrObj_MotaWoman2)							; $1F
ObjID_MotaOldMan2 =  id(PtrObj_MotaOldMan2)							; $20
ObjID_MotaChild2 =  id(PtrObj_MotaChild2)							; $21
ObjID_JetScooter =  id(PtrObj_JetScooter)							; $22
ObjID_CryogenicChamberPart1 =  id(PtrObj_CryogenicChamberPart1)		; $23
ObjID_CryogenicChamberPart2 =  id(PtrObj_CryogenicChamberPart2)		; $24
ObjID_CryogenicChamberPart3 =  id(PtrObj_CryogenicChamberPart3)		; $25
ObjID_CryogenicChamberPart4 =  id(PtrObj_CryogenicChamberPart4)		; $26
ObjID_CryogenicChamberPart5 =  id(PtrObj_CryogenicChamberPart5)		; $27
ObjID_Earthman =  id(PtrObj_Earthman)								; $28
ObjID_Darum =  id(PtrObj_Darum)										; $29
ObjID_Teim =  id(PtrObj_Teim)										; $2A
ObjID_DarumTeimExplosion =  id(PtrObj_DarumTeimExplosion)			; $2B
ObjID_MotherBrain =  id(PtrObj_MotherBrain)							; $2C
ObjID_Explosion =  id(PtrObj_Explosion)								; $2D
ObjID_Esper =  id(PtrObj_Esper)										; $2E
ObjID_Corpse =  id(PtrObj_Corpse)									; $2F
ObjID_MovingEsper =  id(PtrObj_MovingEsper)							; $30
ObjID_LutzChair =  id(PtrObj_LutzChair)								; $31
ObjID_Neifirst =  id(PtrObj_Neifirst)								; $32
ObjID_Lutz =  id(PtrObj_Lutz)										; $33
ObjID_InvisibleBlock =  id(PtrObj_InvisibleBlock)					; $37
ObjID_InvisibleBlock2 =  id(PtrObj_InvisibleBlock2)					; $38
ObjID_DezoTreasureChest =  id(PtrObj_DezoTreasureChest)				; $39
ObjID_MotaTreasureChest =  id(PtrObj_MotaTreasureChest)				; $3A
ObjID_Door =  id(PtrObj_Door)										; $3B
ObjID_BreakableDoor =  id(PtrObj_BreakableDoor)						; $3C
ObjID_PouringWater =  id(PtrObj_PouringWater)						; $3D
ObjID_PushStartButton1 =  id(PtrObj_PushStartButton1)				; $3E
ObjID_PushStartButton2 =  id(PtrObj_PushStartButton2)				; $3F
ObjID_PushStartButton3 =  id(PtrObj_PushStartButton3)				; $40
ObjID_PushStartButton4 =  id(PtrObj_PushStartButton4)				; $41
ObjID_PushStartButton5 =  id(PtrObj_PushStartButton5)				; $42
ObjID_CopyrightText =  id(PtrObj_CopyrightText)						; $43
ObjID_Spaceship =  id(PtrObj_Spaceship)								; $44
ObjID_EyeBeam =  id(PtrObj_EyeBeam)									; $45

ObjectSize = 64


; Maps
offset	:=	MapData
ptrsize	:=	20
idstart	:=	0

MapID_MotaOverworld =  id(Map_MotaOverworld)	; 0
MapID_SkureB2 =  id(Map_SkureB2)	; 1
MapID_SkureB1 =  id(Map_SkureB1)	; 2
MapID_DezolisSkure =  id(Map_DezolisSkure)	; 3
MapID_Paseo  = id(Map_Paseo)		; 4
MapID_Arima  = id(Map_Arima)		; 5
MapID_Oputa  = id(Map_Oputa)		; 6
MapID_Zema  = id(Map_Zema)		; 7
MapID_Kueri  = id(Map_Kueri)		; 8
MapID_Piata  = id(Map_Piata)		; 9
MapID_Aukba  = id(Map_Aukba)		; $A
MapID_Zosa  = id(Map_Zosa)		; $B
MapID_Ryuon  = id(Map_Ryuon)		; $C
MapID_TubeNearPaseo  = id(Map_TubeNearPaseo)		; $D
MapID_DarumTube  =  id(Map_DarumTube)		; $E
MapID_TubeLockedDoor  =  id(Map_TubeLockedDoor)		; $F
MapID_EsperMansionB1  =  id(Map_EsperMansionB1)		; $10
MapID_EsperMansionF1  =  id(Map_EsperMansionF1)		; $11
MapID_Uzo  = id(Map_Uzo)		; $12
MapID_UnderwaterPassage  = id(Map_UnderwaterPassage)		; $13
MapID_CreviceB2  = id(Map_CreviceB2)		; $14
MapID_CreviceB1  = id(Map_CreviceB1)		; $15
MapID_CreviceGroundF  = id(Map_CreviceGroundF)		; $16
MapID_ShureGroundF  = id(Map_ShureGroundF)		; $17
MapID_ShureF1  = id(Map_ShureF1)		; $18
MapID_ShureF2  = id(Map_ShureF2)		; $19
MapID_ShureF3  = id(Map_ShureF3)		; $1A
MapID_NidoGroundF  = id(Map_NidoGroundF)		; $1B
MapID_NidoF1  = id(Map_NidoF1)		; $1C
MapID_NidoF2  = id(Map_NidoF2)		; $1D
MapID_RoronB5  = id(Map_RoronB5)		; $1E
MapID_RoronB4  = id(Map_RoronB4)		; $1F
MapID_RoronB3  = id(Map_RoronB3)		; $20
MapID_RoronB2  = id(Map_RoronB2)		; $21
MapID_RoronB1  = id(Map_RoronB1)		; $22
MapID_RoronGroundF  = id(Map_RoronGroundF)	; $23
MapID_YellowDamGroundF  = id(Map_YellowDamGroundF)	; $24
MapID_YellowDamF1  = id(Map_YellowDamF1)		; $25
MapID_YellowDamF2  = id(Map_YellowDamF2)		; $26
MapID_YellowDamF3  = id(Map_YellowDamF3)		; $27
MapID_RedDamGroundF  = id(Map_RedDamGroundF)	; $28
MapID_RedDamF1  = id(Map_RedDamF1)		; $29
MapID_RedDamF2  = id(Map_RedDamF2)		; $2A
MapID_BlueDamGroundF  = id(Map_BlueDamGroundF)	; $2B
MapID_BlueDamF1  = id(Map_BlueDamF1)		; $2C
MapID_BlueDamF2  = id(Map_BlueDamF2)		; $2D
MapID_BlueDamF3  = id(Map_BlueDamF3)		; $2E
MapID_BlueDamF4  = id(Map_BlueDamF4)		; $2F
MapID_GreenDamGroundF  = id(Map_GreenDamGroundF)	; $30
MapID_GreenDamF1  = id(Map_GreenDamF1)		; $31
MapID_BiosystemsLabB1  = id(Map_BiosystemsLabB1)		; $32
MapID_BiosystemsLabGroundF  = id(Map_BiosystemsLabGroundF)		; $33
MapID_BiosystemsLabF1  = id(Map_BiosystemsLabF1)		; $34
MapID_BiosystemsLabF2  = id(Map_BiosystemsLabF2)		; $35
MapID_ClimatrolGroundF  = id(Map_ClimatrolGroundF)		; $36
MapID_ClimatrolF1  = id(Map_ClimatrolF1)		; $37
MapID_ClimatrolF2  = id(Map_ClimatrolF2)		; $38
MapID_ClimatrolF3  = id(Map_ClimatrolF3)		; $39
MapID_ClimatrolF4  = id(Map_ClimatrolF4)		; $3A
MapID_ClimatrolF5  = id(Map_ClimatrolF5)		; $3B
MapID_ClimatrolF6  = id(Map_ClimatrolF6)		; $3C
MapID_ClimatrolF7  = id(Map_ClimatrolF7)		; $3D
MapID_ControlTowerGroundF  = id(Map_ControlTowerGroundF)		; $3E
MapID_ControlTowerF1  = id(Map_ControlTowerF1)		; $3F
MapID_TubeNearZema  = id(Map_TubeNearZema)		; $40
MapID_Gaira  = id(Map_Gaira)		; $41
MapID_Gaira_Copy  = id(Map_Gaira_Copy)		; $42
MapID_NavalGroundF  = id(Map_NavalGroundF)		; $43
MapID_NavalF1  = id(Map_NavalF1)		; $44
MapID_NavalF2  = id(Map_NavalF2)		; $45
MapID_NavalF3  = id(Map_NavalF3)		; $46
MapID_NavalF4  = id(Map_NavalF4)		; $47
MapID_MenobeGroundF  = id(Map_MenobeGroundF)		; $48
MapID_MenobeF1  = id(Map_MenobeF1)		; $49
MapID_MenobeF2  = id(Map_MenobeF2)		; $4A
MapID_MenobeF3  = id(Map_MenobeF3)		; $4B
MapID_IkutoB6  = id(Map_IkutoB6)		; $4C
MapID_IkutoB5  = id(Map_IkutoB5)		; $4D
MapID_IkutoB4  = id(Map_IkutoB4)		; $4E
MapID_IkutoB3  = id(Map_IkutoB3)		; $4F
MapID_IkutoB2  = id(Map_IkutoB2)		; $50
MapID_IkutoB1  = id(Map_IkutoB1)		; $51
MapID_IkutoGroundF  = id(Map_IkutoGroundF)		; $52
MapID_GuaronGroundF  = id(Map_GuaronGroundF)		; $53
MapID_GuaronF1  = id(Map_GuaronF1)		; $54
MapID_GuaronF2  = id(Map_GuaronF2)		; $55
MapID_GuaronF3  = id(Map_GuaronF4)		; $56
MapID_GuaronF4  = id(Map_GuaronF4)		; $57
MapID_GuaronF5  = id(Map_GuaronF5)		; $58
MapID_GuaronF6  = id(Map_GuaronF6)		; $59
MapID_GuaronF7  = id(Map_GuaronF7)		; $5A
MapID_GuaronF8  = id(Map_GuaronF8)		; $5B
MapID_GuaronF9  = id(Map_GuaronF9)		; $5C
MapID_GuaronF10  = id(Map_GuaronF10)		; $5D
MapID_GuaronF11  = id(Map_GuaronF11)		; $5E
MapID_GuaronF12  = id(Map_GuaronF12)		; $5F
MapID_GuaronF13  = id(Map_GuaronF13)		; $60
MapID_GuaronF14  = id(Map_GuaronF14)		; $61
MapID_GuaronF15  = id(Map_GuaronF15)		; $62
MapID_NoahGroundF  = id(Map_NoahGroundF)		; $63
MapID_NoahF1  = id(Map_NoahF1)		; $64

; Portraits
offset	:=	PortraitTable
ptrsize	:=	4
idstart	:=	1

PortraitID_Nei  =  id(PtrPortrait_Nei)	; 1
PortraitID_Rudo  =  id(PtrPortrait_Rudo)	; 2
PortraitID_Amy  =  id(PtrPortrait_Amy)	; 3
PortraitID_Hugh  =  id(PtrPortrait_Hugh)	; 4
PortraitID_Anna  =  id(PtrPortrait_Anna)	; 5
PortraitID_Kain  =  id(PtrPortrait_Kain)	; 6
PortraitID_Shir  =  id(PtrPortrait_Shir)	; 7
PortraitID_Librarian  =  id(PtrPortrait_Librarian)	; 8
PortraitID_MotaSaveEmployer  =  id(PtrPortrait_MotaSaveEmployer)	; 9
PortraitID_MotaDoctor  =  id(PtrPortrait_MotaDoctor)	; $A
PortraitID_CloneLabGrandma  =  id(PtrPortrait_CloneLabGrandma)	; $B
PortraitID_MotaItemSeller  =  id(PtrPortrait_MotaItemSeller)	; $C
PortraitID_MotaWeaponSeller  =  id(PtrPortrait_MotaWeaponSeller)	; $D
PortraitID_MotaArmorSeller  =  id(PtrPortrait_MotaArmorSeller)	; $E
PortraitID_Ustvestia  =  id(PtrPortrait_Ustvestia)	; $F
PortraitID_Dezolian1  =  id(PtrPortrait_Dezolian1)	; $10
PortraitID_Dezolian2  =  id(PtrPortrait_Dezolian2)	; $11
PortraitID_Dezolian3  =  id(PtrPortrait_Dezolian3)	; $12
PortraitID_Dezolian4  =  id(PtrPortrait_Dezolian4)	; $13
PortraitID_ItemKeeper  =  id(PtrPortrait_ItemKeeper)	; $14
PortraitID_CentralTowerOutside  =  id(PtrPortrait_CentralTowerOutside)	; $15
PortraitID_CentralTowerOutside_Copy  =  id(PtrPortrait_CentralTowerOutside_Copy)	; $16
PortraitID_Governor  =  id(PtrPortrait_Governor)	; $17
PortraitID_Spaceship  =  id(PtrPortrait_Spaceship)	; $18
PortraitID_CentralTowerOutside2  =  id(PtrPortrait_CentralTowerOutside2)	; $19
PortraitID_LibraryGraph  =  id(PtrPortrait_LibraryGraph)	; $1A
PortraitID_Radar  =  id(PtrPortrait_Radar)	; $1B
PortraitID_CentralTowerOutside3  =  id(PtrPortrait_CentralTowerOutside3)	; $1C
PortraitID_CentralTowerOutside3_Copy  =  id(PtrPortrait_CentralTowerOutside3_Copy)	; $1D
PortraitID_MotaTeleportEmployer  =  id(PtrPortrait_MotaTeleportEmployer)	; $1E

; Palettes
offset	:=	PalettePtrs
ptrsize	:=	8
idstart	:=	0

PalID_Sega =  id(PtrPal_Sega)		; 0
PalID_Title =  id(PtrPal_Title)		; 1
PalID_Party =  id(PtrPal_Party)		; 2
PalID_MotaOverworld =  id(PtrPal_MotaOverworld)		; 3
PalID_DezolisSkure =  id(PtrPal_DezolisSkure)		; 4
PalID_MotaTown =  id(PtrPal_MotaTown)		; 5
PalID_Uzo =  id(PtrPal_Uzo)		; 6
PalID_UnderwaterPassage =  id(PtrPal_UnderwaterPassage)		; 7
PalID_Unknown =  id(PtrPal_Unknown)		; 8
PalID_Tube =  id(PtrPal_Tube)		; 9
PalID_BlueDam =  id(PtrPal_BlueDam)		; $A
PalID_YellowDam =  id(PtrPal_YellowDam)		; $B
PalID_GreenDam =  id(PtrPal_GreenDam)		; $C
PalID_RedDam =  id(PtrPal_RedDam)		; $D
PalID_ShureNido =  id(PtrPal_ShureNido)		; $E
PalID_Climatrol =  id(PtrPal_Climatrol)		; $F
PalID_Roron =  id(PtrPal_Roron)		; 10
PalID_RolfPortrait =  id(PtrPal_RolfPort)		; $11
PalID_NeiPortrait =  id(PtrPal_NeiPort)		; $12
PalID_RudoPortrait =  id(PtrPal_RudoPort)		; $13
PalID_AmyPortrait =  id(PtrPal_AmyPort)		; $14
PalID_HughPortrait =  id(PtrPal_HughPort)		; $15
PalID_AnnaPortrait =  id(PtrPal_AnnaPort)		; $16
PalID_KainPortrait =  id(PtrPal_KainPort)		; $17
PalID_ShirPortrait =  id(PtrPal_ShirPort)		; $18
PalID_LibrarianPortrait =  id(PtrPal_LibrPort)		; $19
PalID_MotaSaveEmplPortrait =  id(PtrPal_MotSvEmPort)		; $1A
PalID_MotaDoctorPortrait =  id(PtrPal_MotDocPort)		; $1B
PalID_GrandmaPortrait =  id(PtrPal_GrandmaPort)		; $1C
PalID_MotaItemSellerPortrait =  id(PtrPal_MtImSllPort)		; $1D
PalID_MotaWpnSellerPortrait =  id(PtrPal_MtWpnSlPort)		; $1E
PalID_MotaArmorSellerPortrait =  id(PtrPal_MtArmSlPort)		; $1F
PalID_UstvestiaPortrait =  id(PtrPal_UstvesPort)		; $20
PalID_Dezolian1Portrait =  id(PtrPal_Dezolian1Portrait)		; $21
PalID_Dezolian2Portrait =  id(PtrPal_Dezolian2Portrait)		; $22
PalID_Dezolian3Portrait =  id(PtrPal_Dezolian3Portrait)		; $23
PalID_Dezolian4Portrait =  id(PtrPal_Dezolian4Portrait)		; $24
PalID_ItemKeeperPortrait =  id(PtrPal_ItmKprPort)		; $25
PalID_CentTowerOutsidePortrait =  id(PtrPal_CTwOut1Port)		; $26
PalID_CentTowerOutsidePortrait_Copy =  id(PtrPal_CTwOut1Port_Copy)		; $27
PalID_GovernorPortrait =  id(PtrPal_GvrnPort)		; $28
PalID_SpaceshipPortrait =  id(PtrPal_RoofPort)		; $29
PalID_CentTowerOutside2Portrait =  id(PtrPal_CTwOut2Port)		; $2A
PalID_LibraryGraphPortrait =  id(PtrPal_GraphPort)		; $2B
PalID_RadarPortrait =  id(PtrPal_RadarPort)		; $2C
PalID_CentTowerOutside3Portrait =  id(PtrPal_CTwOut3Port)		; $2D
PalID_CentTowerOutside3Portrait_Copy =  id(PtrPal_CTwOut3Port_Copy)		; $2E
PalID_Battle =  id(PtrPal_Battle)		; $2F
PalID_GameStart =  id(PtrPal_GameStart)		; $30
PalID_MotaTeleportEmplPortrait =  id(PtrPal_TeleEmpPort)		; $31
PalID_Graph =  id(PtrPal_Graph)		; $32
PalID_BiosystemsLab =  id(PtrPal_BiosystemsLab)		; $33
PalID_ControlTower =  id(PtrPal_ControlTower)		; $34
PalID_NeiDeath =  id(PtrPal_NeiDeath)		; $35
PalID_NeiDeath2 =  id(PtrPal_NeiDeath2)		; $36
PalID_Crevice =  id(PtrPal_Crevice)		; $37
PalID_Gaira =  id(PtrPal_Gaira)		; $38
PalID_PlanetMota =  id(PtrPal_PlanetMota)		; $39
PalID_PlanetDezo =  id(PtrPal_PlanetDezo)		; $3A
PalID_SceneLutz =  id(PtrPal_SceneLutz)		; $3B
PalID_SpaceTravel =  id(PtrPal_SpaceTravel)		; $3C
PalID_EsperMansion =  id(PtrPal_EsperMansion)		; $3D
PalID_Noah =  id(PtrPal_Noah)		; $3E
PalID_Naval =  id(PtrPal_Naval)		; $3F
PalID_Menobe =  id(PtrPal_Menobe)		; $40
PalID_Ikuto =  id(PtrPal_Ikuto)		; $41
PalID_Guaron =  id(PtrPal_Guaron)		; $42
PalID_EndingRudo_Unused =  id(PtrPal_EndingRudo_Unused)		; $43
PalID_EndingRudo =  id(PtrPal_EndingRudo)		; $44
PalID_EndingAmy =  id(PtrPal_EndingAmy)		; $45
PalID_EndingKain =  id(PtrPal_EndingKain)		; $46
PalID_EndingShir =  id(PtrPal_EndingShir)		; $47
PalID_EndingHugh =  id(PtrPal_EndingHugh)		; $48
PalID_EndingAnna =  id(PtrPal_EndingAnna)		; $49
PalID_EndingRolf =  id(PtrPal_EndingRolf)		; $4A
PalID_Credits =  id(PtrPal_Credits)		; $4B
PalID_DezoTown =  id(PtrPal_DezoTown)		; $4C


; Inventory

offset	:=	InventoryData
ptrsize	:=	16
idstart	:=	0

ItemID_None =  id(Item_None)			 ; 0

ItemID_SmallKey =	id(Item_SmallKey)	 ; 1
ItemID_Dynamite =  id(Item_Dynamite)	 ; 2
ItemID_KeyTube =  id(Item_KeyTube)		 ; 3
ItemID_MruraGum =  id(Item_MruraGum)	 ; 4
ItemID_GreenCard =  id(Item_GreenCard)	 ; 5
ItemID_BlueCard =  id(Item_BlueCard)	 ; 6
ItemID_YellowCard =  id(Item_YellowCard) ; 7
ItemID_RedCard =  id(Item_RedCard)		 ; 8
ItemID_Letter =  id(Item_Letter)		 ; 9
ItemID_Recorder =  id(Item_Recorder)	 ; $A
ItemID_MruraLeaf =  id(Item_MruraLeaf)	 ; $B
ItemID_PlsmRing =  id(Item_PlsmRing)	 ; $C
ItemID_Prism =  id(Item_Prism)			 ; $D

ItemID_Telepipe =  id(Item_Telepipe)	 ; $E
ItemID_Escapipe =  id(Item_Escapipe)	 ; $F
ItemID_Hidapipe =  id(Item_Hidapipe)	 ; $10

ItemID_Monomate =  id(Item_Monomate)	 ; $11
ItemID_Dimate =  id(Item_Dimate)		 ; $12
ItemID_Trimate =  id(Item_Trimate)		 ; $13
ItemID_Antidote =  id(Item_Antidote)	 ; $14
ItemID_StarMist =  id(Item_StarMist)	 ; $15
ItemID_MoonDew =  id(Item_MoonDew)		 ; $16

ItemID_Headgear =  id(Item_Headgear)	 ; $17
ItemID_Ribbon =  id(Item_Ribbon)		 ; $18
ItemID_Fibergear =  id(Item_Fibergear)	 ; $19
ItemID_SilRibbon =  id(Item_SilRibbon)	 ; $1A
ItemID_SilCrown =  id(Item_SilCrown)	 ; $1B
ItemID_Titanigear =  id(Item_Titanigear) ; $1C
ItemID_Titanimet =  id(Item_Titanimet)	 ; $1D
ItemID_JwlCrown =  id(Item_JwlCrown)	 ; $1E
ItemID_JwlRibbon =  id(Item_JwlRibbon)	 ; $1F
ItemID_Crescegear =  id(Item_Crescegear) ; $20
ItemID_SnowCrown =  id(Item_SnowCrown)	 ; $21
ItemID_WindScarf =  id(Item_WindScarf)	 ; $22
ItemID_ColorScarf =  id(Item_ColorScarf) ; $23
ItemID_StormGear =  id(Item_StormGear)	 ; $24
ItemID_Laconigear =  id(Item_Laconigear) ; $25
ItemID_Laconimet =  id(Item_Laconiamet)	 ; $26
ItemID_Neimet =  id(Item_Neimet)		 ; $27
ItemID_NeiCrown =  id(Item_NeiCrown)	 ; $28

ItemID_MagicCap =  id(Item_MagicCap)	 ; $29
ItemID_MogicCap =  id(Item_MogicCap)	 ; $2A

ItemID_CarbonSuit =  id(Item_CarbonSuit) ; $2B
ItemID_CarbonVest =  id(Item_CarbonVest) ; $2C
ItemID_FiberCoat =  id(Item_FiberCoat)	 ; $2D
ItemID_FiberCape =  id(Item_FiberCape)	 ; $2E
ItemID_FiberVest =  id(Item_FiberVest)	 ; $2F
ItemID_TtnmArmor =  id(Item_TtnmArmor)	 ; $30
ItemID_TtnmCape =  id(Item_TtnmCape)	 ; $31
ItemID_TtnmChest =  id(Item_TtnmChest)	 ; $32
ItemID_CrmcArmor =  id(Item_CrmcArmor)	 ; $33
ItemID_CrmcCape =  id(Item_CrmcCape)	 ; $34
ItemID_CrmcChest =  id(Item_CrmcChest)	 ; $35
ItemID_AmberRobe =  id(Item_AmberRobe)	 ; $36
ItemID_Crystanish =  id(Item_crystanish) ; $37
ItemID_CrystCape =  id(Item_CrystCape)	 ; $38
ItemID_CrystChest =  id(Item_CrystChest) ; $39
ItemID_Laconinish =  id(Item_Laconinish) ; $3A
ItemID_LaconCape =  id(Item_LaconCape)	 ; $3B
ItemID_LaconChest =  id(Item_LaconChest) ; $3C
ItemID_NeiArmor =  id(Item_NeiArmor)	 ; $3D
ItemID_NeiCape =  id(Item_NeiCape)		 ; $3E

ItemID_Shoes =  id(Item_Shoes)			 ; $3F
ItemID_Sandals =  id(Item_Sandals)		 ; $40
ItemID_Boots =  id(Item_Boots)			 ; $41
ItemID_KnifeBoots =  id(Item_KnifeBoots) ; $42
ItemID_LongBoots =  id(Item_LongBoots)	 ; $43
ItemID_HirzaBoots =  id(Item_HirzaBoots) ; $44
ItemID_ShuneBoots =  id(Item_ShuneBoots) ; $45
ItemID_GardaBoots =  id(Item_GardaBoots) ; $46

ItemID_CrbnShield =  id(Item_CrbnShield) ; $47
ItemID_CrbnEmel =  id(Item_CrbnEmel)	 ; $48
ItemID_FibrShield =  id(Item_FibrShield) ; $49
ItemID_FiberEmel =  id(Item_FiberEmel)	 ; $4A
ItemID_MirShield =  id(Item_MirShield)	 ; $4B
ItemID_MirEmel =  id(Item_MirEmel)		 ; $4C
ItemID_CerShield =  id(Item_CerShield)	 ; $4D
ItemID_CerEmel =  id(Item_CerEmel)		 ; $4E
ItemID_Aegis =  id(Item_Aegis)			 ; $4F
ItemID_GrSleeves =  id(Item_GrSleeves)	 ; $50
ItemID_TruthSlvs =  id(Item_TruthSlvs)	 ; $51
ItemID_LaconEmel =  id(Item_LaconEmel)	 ; $52
ItemID_LacShield =  id(Item_LacShield)	 ; $53
ItemID_NeiShield =  id(Item_NeiShield)	 ; $54
ItemID_NeiEmel =  id(Item_NeiEmel)		 ; $55

ItemID_Knife =  id(Item_Knife)			 ; $56
ItemID_Dagger =  id(Item_Dagger)		 ; $57
ItemID_Scalpel =  id(Item_Scalpel)		 ; $58
ItemID_SteelBar =  id(Item_SteelBar)	 ; $59
ItemID_Boomerang =  id(Item_Boomerang)	 ; $5A
ItemID_Slasher =  id(Item_Slasher)		 ; $5B
ItemID_Sword =  id(Item_Sword)			 ; $5C
ItemID_Whip =  id(Item_Whip)			 ; $5D
ItemID_CrmcSword =  id(Item_CrmcSword)	 ; $5E
ItemID_CeramKnife =  id(Item_CeramKnife) ; $5F
ItemID_CeramBar =  id(Item_CeramBar)	 ; $60
ItemID_LasrSlshr =  id(Item_LasrSlshr)	 ; $61
ItemID_LasrSword =  id(Item_LasrSword)	 ; $62
ItemID_LaserBar =  id(Item_LaserBar)	 ; $63
ItemID_LaserKnife =  id(Item_LaserKnife) ; $64
ItemID_SwdOfAnger =  id(Item_SwdOfAnger) ; $65
ItemID_FireSlshr =  id(Item_FireSlshr)	 ; $66
ItemID_FireStaff =  id(Item_FireStaff)	 ; $67
ItemID_LacnMace =  id(Item_LacnMace)	 ; $68
ItemID_LacDagger =  id(Item_LacDagger)	 ; $69
ItemID_AcSlasher =  id(Item_ACSlasher)	 ; $6A
ItemID_LacSword =  id(Item_LacSword)	 ; $6B
ItemID_NeiSword =  id(Item_NeiSword)	 ; $6C
ItemID_NeiSlasher =  id(Item_NeiSlasher) ; $6D

ItemID_Bowgun =  id(Item_BowGun)		 ; $6E
ItemID_SonicGun =  id(Item_SonicGun)	 ; $6F
ItemID_Shotgun =  id(Item_Shotgun)	 	 ; $70
ItemID_SilentShot =  id(Item_SilentShot) ; $71
ItemID_PoisonShot =  id(Item_PoisonShot) ; $72
ItemID_AcidShot =  id(Item_AcidShot)	 ; $73
ItemID_Cannon =  id(Item_Cannon)		 ; $74
ItemID_Vulcan =  id(Item_Vulcan)		 ; $75
ItemID_LaserShot =  id(Item_LaserShot)	 ; $76
ItemID_LsrCannon =  id(Item_LsrCannon)	 ; $77
ItemID_PlsCannon =  id(Item_PlsCannon)	 ; $78
ItemID_PulseVlcn =  id(Item_PulseVlcn)	 ; $79
ItemID_NeiShot =  id(Item_NeiShot)		 ; $7A

ItemID_PrsnClths =  id(Item_PrsnClths)	 ; $7B

ItemID_Teim =  id(Item_Teim)			 ; $7C
ItemID_Visiphone =  id(Item_Visiphone)	 ; $7D
ItemID_Unknown1 =  id(Item_Unknown1)	 ; $7E
ItemID_Unknown2 =  id(Item_Unknown2)	 ; $7F

ItemNameLength = 10

; Techniques

offset	:=	TechniqueData
ptrsize	:=	8
idstart	:=	0

TechID_None =  id(Tech_None)	; 0

TechID_Foi =  id(Tech_Foi)		; 1
TechID_Gifoi =  id(Tech_Gifoi)	; 2
TechID_Nafoi =  id(Tech_Nafoi)	; 3
TechID_Zan =  id(Tech_Zan)		; 4
TechID_Gizan =  id(Tech_Gizan)	; 5
TechID_Nazan =  id(Tech_Nazan)	; 6
TechID_Gra =  id(Tech_Gra)		; 7
TechID_Gigra =  id(Tech_Gigra)	; 8
TechID_Nagra =  id(Tech_Nagra)	; 9
TechID_Tsu =  id(Tech_Tsu)		; $A
TechID_Githu =  id(Tech_Githu)	; $B
TechID_Nathu =  id(Tech_Nathu)	; $C
TechID_Shift =  id(Tech_Shift)	; $D
TechID_Fanbi =  id(Tech_Fanbi)	; $E
TechID_Eijia =  id(Tech_Eijia)	; $F
TechID_Brose =  id(Tech_Brose)	; $10
TechID_Conte =  id(Tech_Conte)	; $11
TechID_Gaj =  id(Tech_Gaj)		; $12
TechID_Gigaj =  id(Tech_Gigaj)	; $13
TechID_Nagaj =  id(Tech_Nagaj)	; $14
TechID_Sag =  id(Tech_Sag)		; $15
TechID_Gisag =  id(Tech_Gisag)	; $16
TechID_Nasag =  id(Tech_Nasag)	; $17
TechID_Gen =  id(Tech_Gen)		; $18
TechID_Sagen =  id(Tech_Sagen)	; $19
TechID_Vol =  id(Tech_Vol)		; $1A
TechID_Savol =  id(Tech_Savol)	; $1B
TechID_Shiza =  id(Tech_Shiza)	; $1C
TechID_Doran =  id(Tech_Doran)	; $1D
TechID_Rimit =  id(Tech_Rimit)	; $1E
TechID_Shinb =  id(Tech_Shinb)	; $1F
TechID_Forsa =  id(Tech_Forsa)	; $20
TechID_Rimet =  id(Tech_Rimet)	; $21
TechID_Shu =  id(Tech_Shu)		; $22
TechID_Sashu =  id(Tech_Sashu)	; $23
TechID_Deban =  id(Tech_Deban)	; $24
TechID_Ner =  id(Tech_Ner)		; $25
TechID_Saner =  id(Tech_Saner)	; $26
TechID_Res =  id(Tech_Res)		; $27
TechID_Gires =  id(Tech_Gires)	; $28
TechID_Nares =  id(Tech_Nares)	; $29
TechID_Sar =  id(Tech_Sar)		; $2A
TechID_Gisar =  id(Tech_Gisar)	; $2B
TechID_Nasar =  id(Tech_Nasar)	; $2C
TechID_Sak =  id(Tech_Sak)		; $2D
TechID_Nasak =  id(Tech_Nasak)	; $2E
TechID_Anti =  id(Tech_Anti)	; $2F
TechID_Rever =  id(Tech_Rever)	; $30
TechID_Ryuka =  id(Tech_Ryuka)	; $31
TechID_Hinas =  id(Tech_Hinas)	; $32
TechID_Musik =  id(Tech_Musik)	; $33
TechID_Megid =  id(Tech_Megid)	; $34
TechID_Unknown1 =  id(Tech_Unknown1)	; $35

TechNameLength =  5

; Scenes

offset	:=	SceneIndex
ptrsize	:=	4
idstart	:=	0

SceneID_RolfHouseStart =  id(PtrScene_RolfHouseStart)	; 0
SceneID_RolfHouse =  id(PtrScene_RolfHouse)			; 1
SceneID_DataMemory =  id(PtrScene_DataMemory)		; 2
SceneID_CloneLabs =  id(PtrScene_CloneLabs)		; 3
SceneID_Hospital =  id(PtrScene_Hospital)		; 4
SceneID_WeaponStore =  id(PtrScene_WeaponStore)		; 5
SceneID_ArmorStore =  id(PtrScene_ArmorStore)		; 6
SceneID_ItemStore =  id(PtrScene_ItemStore)		; 7
SceneID_CentralTowerOutside =  id(PtrScene_CentralTowerOutside)		; 8
SceneID_CentralTowerRoom =  id(PtrScene_CentralTowerRoom)		; 9
SceneID_Library =  id(PtrScene_Library)		; $A
SceneID_CentralTowerRoof =  id(PtrScene_CentralTowerRoof)		; $B
SceneID_UstvestiaHouse =  id(PtrScene_UstvestiaHouse)		; $C
SceneID_InventorHouse =  id(PtrScene_InventorHouse)		; $D
SceneID_CentralTowerGovernor =  id(PtrScene_CentralTowerGovernor)		; $E
SceneID_TeleportStation =  id(PtrScene_TeleportStation)		; $F
SceneID_GairaControlPanel =  id(PtrScene_GairaControlPanel)		; $10
SceneID_TylerSpaceship =  id(PtrScene_TylerSpaceship)		; $11
SceneID_EsperMansion =  id(PtrScene_EsperMansion)		; $12

; Windows

offset	:=	WindowArtLayoutPtrs
ptrsize	:=	8
idstart	:=	1

WinID_PlayerMenu =  id(PtrWin_PlayerMenu)	; 1
WinID_MenuItemChar =  id(PtrWin_MenuItemChar)	; 2
WinID_MenuItemList =  id(PtrWin_MenuItemList)	; 3
WinID_MenuItemList2 =  id(PtrWin_MenuItemList2)	; 4
WinID_ItemAction =  id(PtrWin_ItemAction)	; 5
WinID_ChosenItemChar =  id(PtrWin_ChosenItemChar)	; 6
WinID_MenuCharStats =  id(PtrWin_MenuCharStats)	; 7
WinID_ScriptMessage =  id(PtrWin_ScriptMessage)	; 8
WinID_YesNo =  id(PtrWin_YesNo)	; 9
WinID_StateOrder =  id(PtrWin_StateOrder)	; $A
WinID_FirstCharStats =  id(PtrWin_FirstCharStats)	; $B
WinID_SecondCharStats =  id(PtrWin_SecondCharStats)	; $C
WinID_ThirdCharStats =  id(PtrWin_ThirdCharStats)	; $D
WinID_FourthCharStats =  id(PtrWin_FourthCharStats)	; $E
WinID_MenuMeseta =  id(PtrWin_MenuMeseta)	; $F
WinID_CharOrderDestination =  id(PtrWin_CharOrderDestination)	; $10
WinID_CharList2 =  id(PtrWin_CharList2)	; $11
WinID_MapTechList =  id(PtrWin_MapTechList)	; $12
WinID_MapTechList2 =  id(PtrWin_MapTechList2)	; $13
WinID_StrngHPTP =  id(PtrWin_StrngHPTP)	; $14
WinID_StrngStats =  id(PtrWin_StrngStats)	; $15
WinID_StrngEquip =  id(PtrWin_StrngEquip)	; $16
WinID_StrngLVEXP =  id(PtrWin_StrngLVEXP)	; $17
WinID_EquipStats =  id(PtrWin_EquipStats)	; $18
WinID_EqpEquipList =  id(PtrWin_EqpEquipList)	; $19
WinID_ItemList2 =  id(PtrWin_ItemList2)	; $1A
WinID_ItemList3 =  id(PtrWin_ItemList3)	; $1B
WinID_ScriptMessageBig =  id(PtrWin_ScriptMessageBig)	; $1C
WinID_FullTechList =  id(PtrWin_FullTechList)	; $1D
WinID_FullTechList2 =  id(PtrWin_FullTechList2)	; $1E
WinID_YesNo2 =  id(PtrWin_YesNo2)	; $1F
WinID_YesNo3 =  id(PtrWin_YesNo3)	; $20
WinID_ScriptMessage2 =  id(PtrWin_ScriptMessage2)	; $21
WinID_BuySell =  id(PtrWin_BuySell)	; $22
WinID_StoreMeseta =  id(PtrWin_StoreMeseta)	; $23
WinID_NameInput =  id(PtrWin_NameInput)	; $24
WinID_SaveSlots =  id(PtrWin_SaveSlots)	; $25
WinID_LibraryOptions =  id(PtrWin_LibraryOptions)	; $26
WinID_HealCure =  id(PtrWin_HealCure)	; $27
WinID_StoreInventory =  id(PtrWin_StoreInventory)	; $28
WinID_RolfHouseOptions =  id(PtrWin_RolfHouseOptions)	; $29
WinID_ProfileCharList =  id(PtrWin_ProfileCharList)	; $2A
WinID_RolfProfile =  id(PtrWin_RolfProfile)	; $2B
WinID_NeiProfile =  id(PtrWin_NeiProfile)	; $2C
WinID_RudoProfile =  id(PtrWin_RudoProfile)	; $2D
WinID_AmyProfile =  id(PtrWin_AmyProfile)	; $2E
WinID_HughProfile =  id(PtrWin_HughProfile)	; $2F
WinID_AnnaProfile =  id(PtrWin_AnnaProfile)	; $30
WinID_KainProfile =  id(PtrWin_KainProfile)	; $31
WinID_ShirProfile =  id(PtrWin_ShirProfile)	; $32
WinID_RegroupCharList =  id(PtrWin_RegroupCharList)	; $33
WinID_RegroupSelectedChar =  id(PtrWin_RegroupSelectedChar)	; $34
WinID_CentTowerOptions =  id(PtrWin_CentTowerOptions)	; $35
WinID_CentTowerOptions2 =  id(PtrWin_CentTowerOptions2)	; $36
WinID_GameSelect =  id(PtrWin_GameSelect)	; $37
WinID_RoomOptions =  id(PtrWin_RoomOptions)	; $38
WinID_RightLeft =  id(PtrWin_RightLeft)	; $39
WinID_StrngCharList =  id(PtrWin_StrngCharList)	; $3A

WinID_PortraitStart =  id(PtrWin_PortraitStart)	; $3B

WinID_RolfPortrait =  id(PtrWin_RolfPortrait)	; $3B
WinID_NeiPortrait =  id(PtrWin_NeiPortrait)	; $3C
WinID_RudoPortrait =  id(PtrWin_RudoPortrait)	; $3D
WinID_AmyPortrait =  id(PtrWin_AmyPortrait)	; $3E
WinID_HughPortrait =  id(PtrWin_HughPortrait)	; $3F
WinID_AnnaPortrait =  id(PtrWin_AnnaPortrait)	; $40
WinID_KainPortrait =  id(PtrWin_KainPortrait)	; $41
WinID_ShirPortrait =  id(PtrWin_ShirPortrait)	; $42
WinID_LibrarianPortrait =  id(PtrWin_LibrarianPortrait)	; $43
WinID_MotaSaveEmplPortrait =  id(PtrWin_MotaSaveEmplPortrait)	; $44
WinID_MotaDoctorPortrait =  id(PtrWin_MotaDoctorPortrait)	; $45
WinID_GrandmaPortrait =  id(PtrWin_GrandmaPortrait)	; $46
WinID_MotaItemSellerPortrait =  id(PtrWin_MotaItemSellerPortrait)	; $47
WinID_MotaWpnSellerPortrait =  id(PtrWin_MotaWpnSellerPortrait)	; $48
WinID_MotaArmorSellerPortrait =  id(PtrWin_MotaArmorSellerPortrait)	; $49
WinID_UstvestiaPortrait =  id(PtrWin_UstvestiaPortrait)	; $4A
WinID_Dezolian1Portrait =  id(PtrWin_Dezolian1Portrait)	; $4B
WinID_Dezolian2Portrait =  id(PtrWin_Dezolian2Portrait)	; $4C
WinID_Dezolian3Portrait =  id(PtrWin_Dezolian3Portrait)	; $4D
WinID_Dezolian4Portrait =  id(PtrWin_Dezolian4Portrait)	; $4E
WinID_ItemKeeperPortrait =  id(PtrWin_ItemKeeperPortrait)	; $4F
WinID_CentTowerOutsidePortrait =  id(PtrWin_CentTowerOutsidePortrait)	; $50
WinID_CentTowerOutsidePortraitCopy =  id(PtrWin_CentTowerOutsidePortraitCopy)	; $51
WinID_GovernorPortrait =  id(PtrWin_GovernorPortrait)	; $52
WinID_SpaceshipPortrait =  id(PtrWin_SpaceshipPortrait)	; $53
WinID_MotaTeleportEmplPortrait =  id(PtrWin_MotaTeleportEmplPortrait)	; $54
WinID_LibraryGraphPortrait =  id(PtrWin_LibraryGraphPortrait)	; $55
WinID_RadarPortrait =  id(PtrWin_RadarPortrait)	; $56
WinID_CentTowerOutsidePortrait3 =  id(PtrWin_CentTowerOutsidePortrait3)	; $57
WinID_CentTowerOutsidePortrait3_2 =  id(PtrWin_CentTowerOutsidePortrait3_2)	; $58
WinID_MotaTeleportEmplPortrait2 =  id(PtrWin_MotaTeleportEmplPortrait2)	; $59
WinID_HouseLVEXP =  id(PtrWin_HouseLVEXP)	; $5A
WinID_StoreCharList =  id(PtrWin_StoreCharList)	; $5B

WinID_BattleCharStats =  id(PtrWin_BattleCharStats)	; $5C

WinID_BattleFirstCharStats =  id(PtrWin_BattleFirstCharStats)	; $5C
WinID_BattleSecondCharStats =  id(PtrWin_BattleSecondCharStats)	; $5D
WinID_BattleThirdCharStats =  id(PtrWin_BattleThirdCharStats)	; $5E
WinID_BattleFourthCharStats =  id(PtrWin_BattleFourthCharStats)	; $5F

WinID_BattleOptions =  id(PtrWin_BattleOptions)	; $60
WinID_BattleOptions2 =  id(PtrWin_BattleOptions2)	; $61
WinID_BattleCharName =  id(PtrWin_BattleCharName)	; $62
WinID_BattleCommands =  id(PtrWin_BattleCommands)	; $63
WinID_EnemyGroups =  id(PtrWin_EnemyGroups)	; $64
WinID_BattleMessage =  id(PtrWin_BattleMessage)	; $65
WinID_BattleTechList =  id(PtrWin_BattleTechList)	; $66
WinID_BattleItemList =  id(PtrWin_BattleItemList)	; $67
WinID_BattleItemUsed =  id(PtrWin_BattleItemUsed)	; $68
WinID_BattleTechUsed =  id(PtrWin_BattleTechUsed)	; $69
WinID_FirstEnemyName =  id(PtrWin_FirstEnemyName)	; $6A
WinID_SecondEnemyName =  id(PtrWin_SecondEnemyName)	; $6B
WinID_FirstEnemyInfo =  id(PtrWin_FirstEnemyInfo)	; $6C
WinID_SecondEnemyInfo =  id(PtrWin_SecondEnemyInfo)	; $6D

WinID_BattleEmptySpots =  id(PtrWin_BattleEmptySpotStart)	; $6E

WinID_BattleFirstEmptySpot =  id(PtrWin_BattleFirstEmptySpot)	; $6E
WinID_BattleSecondEmptySpot =  id(PtrWin_BattleSecondEmptySpot)	; $6F
WinID_BattleThirdEmptySpot =  id(PtrWin_BattleThirdEmptySpot)	; $70
WinID_BattleFourthEmptySpot =  id(PtrWin_BattleFourthEmptySpot)	; $71

WinID_RolfPortrait2 =  id(PtrWin_RolfPortrait2)	; $72
WinID_TeleportPlaceNames =  id(PtrWin_TeleportPlaceNames)	; $73
WinID_UstvestiaSoundtracks =  id(PtrWin_UstvestiaSoundtracks)	; $74


dyn_windows_size =  (DynamicWindowsEnd-DynamicWindowsStart)+$B2


; Enemies
offset	:=	EnemyData
ptrsize	:=	64
idstart	:=	1

EnemyID_FireAnt  =  id(Enemy_FireAnt)	; 1
EnemyID_ArmorAnt  =  id(Enemy_ArmorAnt)	; 2
EnemyID_PinchAnt  =  id(Enemy_PinchAnt)	; 3
EnemyID_Mosquito  =  id(Enemy_Mosquito)	; 4
EnemyID_Waspy  =  id(Enemy_Waspy)	; 5
EnemyID_Stinger  =  id(Enemy_Stinger)	; 6
EnemyID_Spinner  =  id(Enemy_Spinner)	; 7
EnemyID_Vortex  =  id(Enemy_Vortex)	; 8
EnemyID_Whirly  =  id(Enemy_Whirly)	; 9
EnemyID_Bee  =  id(Enemy_Bee)	; $A
EnemyID_Buzzer  =  id(Enemy_Buzzer)	; $B
EnemyID_Insecta  =  id(Enemy_Insecta)	; $C
EnemyID_Poisoner  =  id(Enemy_Poisoner)	; $D
EnemyID_Spitkill  =  id(Enemy_Spitkill)	; $E
EnemyID_Spitfang  =  id(Enemy_Spitfang)	; $F
EnemyID_HitTail  =  id(Enemy_HitTail)	; $10
EnemyID_Center  =  id(Enemy_Center)	; $11
EnemyID_Scaly  =  id(Enemy_Scaly)	; $12
EnemyID_Froggy  =  id(Enemy_Froggy)	; $13
EnemyID_Toader  =  id(Enemy_Toader)	; $14
EnemyID_Squat  =  id(Enemy_Squat)	; $15
EnemyID_Carrier  =  id(Enemy_Carrier)	; $16
EnemyID_Mushroom  =  id(Enemy_Mushroom)	; $17
EnemyID_HeadRot  =  id(Enemy_HeadRot)	; $18
EnemyID_Whistle  =  id(Enemy_Whistle)	; $19
EnemyID_Informer  =  id(Enemy_Informer)	; $1A
EnemyID_Tracer  =  id(Enemy_Tracer)	; $1B
EnemyID_Locust  =  id(Enemy_Locust)	; $1C
EnemyID_Locusta  =  id(Enemy_Locusta)	; $1D
EnemyID_Fanbite  =  id(Enemy_Fanbite)	; $1E
EnemyID_Amoeba  =  id(Enemy_Amoeba)	; $1F
EnemyID_Jelly  =  id(Enemy_Jelly)	; $20
EnemyID_Slugmess  =  id(Enemy_Slugmess)	; $21
EnemyID_Polezi  =  id(Enemy_Polezi)	; $22
EnemyID_Poleziax  =  id(Enemy_Poleziax)	; $23
EnemyID_Poleziss  =  id(Enemy_Poleziss)	; $24
EnemyID_Leecher  =  id(Enemy_Leecher)	; $25
EnemyID_Fang  =  id(Enemy_Fang)	; $26
EnemyID_Python  =  id(Enemy_Python)	; $27
EnemyID_S  =  id(Enemy_S)	; $28
EnemyID_K  =  id(Enemy_K)	; $29
EnemyID_H  =  id(Enemy_H)	; $2A
EnemyID_Pulser  =  id(Enemy_Pulser)	; $2B
EnemyID_Blaster  =  id(Enemy_Blaster)	; $2C
EnemyID_Blastoid  =  id(Enemy_Blastoid)	; $2D
EnemyID_RotWood  =  id(Enemy_RotWood)	; $2E
EnemyID_Blockhed  =  id(Enemy_Blockhed)	; $2F
EnemyID_Firia  =  id(Enemy_Firia)	; $30
EnemyID_Wolfang  =  id(Enemy_Wolfang)	; $31
EnemyID_Burnwolf  =  id(Enemy_Burnwolf)	; $32
EnemyID_Flarewlf  =  id(Enemy_Flarewlf)	; $33
EnemyID_PugHit  =  id(Enemy_PugHit)	; $34
EnemyID_PugBrat  =  id(Enemy_PugBrat)	; $35
EnemyID_PugKill  =  id(Enemy_PugKill)	; $36
EnemyID_S2  =  id(Enemy_S2)	; $37
EnemyID_S3  =  id(Enemy_S3)	; $38
EnemyID_S4  =  id(Enemy_S4)	; $39
EnemyID_Wireface  =  id(Enemy_Wireface)	; $3A
EnemyID_Wirehead  =  id(Enemy_Wirehead)	; $3B
EnemyID_PodHead  =  id(Enemy_PodHead)	; $3C
EnemyID_Terakite  =  id(Enemy_Terakite)	; $3D
EnemyID_Reptile  =  id(Enemy_Reptile)	; $3E
EnemyID_KiteDrgn  =  id(Enemy_KiteDrgn)	; $3F
EnemyID_FireEye  =  id(Enemy_FireEye)	; $40
EnemyID_Glowstik  =  id(Enemy_Glowstik)	; $41
EnemyID_Forest  =  id(Enemy_Forest)	; $42
EnemyID_Catman  =  id(Enemy_Catman)	; $43
EnemyID_Catfang  =  id(Enemy_Catfang)	; $44
EnemyID_Cateye  =  id(Enemy_Cateye)	; $45
EnemyID_Mechoman  =  id(Enemy_Mechoman)	; $46
EnemyID_Sonomech  =  id(Enemy_Sonomech)	; $47
EnemyID_Attmech  =  id(Enemy_Attmech)	; $48
EnemyID_Mazgamma  =  id(Enemy_Mazgamma)	; $49
EnemyID_Firgamma  =  id(Enemy_Firgamma)	; $4A
EnemyID_Kilgamma  =  id(Enemy_Kilgamma)	; $4B
EnemyID_Metalman  =  id(Enemy_Metalman)	; $4C
EnemyID_TwigMan  =  id(Enemy_TwigMan)	; $4D
EnemyID_Twigtall  =  id(Enemy_Twigtall)	; $4E
EnemyID_Cooley61  =  id(Enemy_Cooley61)	; $4F
EnemyID_Monster  =  id(Enemy_Monster)	; $50
EnemyID_Lrgminer  =  id(Enemy_Lrgminer)	; $51
EnemyID_Eyesore  =  id(Enemy_Eyesore)	; $52
EnemyID_Hvysolid  =  id(Enemy_Hvysolid)	; $53
EnemyID_GunBust  =  id(Enemy_GunBust)	; $54
EnemyID_ArmyEye  =  id(Enemy_ArmyEye)	; $55
EnemyID_Trcrbase  =  id(Enemy_Trcrbase)	; $56
EnemyID_Specter  =  id(Enemy_Specter)	; $57
EnemyID_Van  =  id(Enemy_Van)	; $58
EnemyID_Vanleadr  =  id(Enemy_Vanleadr)	; $59
EnemyID_Aerotank  =  id(Enemy_Aerotank)	; $5A
EnemyID_Orangah  =  id(Enemy_Orangah)	; $5B
EnemyID_Orangoo  =  id(Enemy_Orangoo)	; $5C
EnemyID_Ohx  =  id(Enemy_Ohx)	; $5D
EnemyID_Mastodon  =  id(Enemy_Mastodon)	; $5E
EnemyID_Eletusk  =  id(Enemy_Eletusk)	; $5F
EnemyID_Elephant  =  id(Enemy_Elephant)	; $60
EnemyID_DezoOwl  =  id(Enemy_DezoOwl)	; $61
EnemyID_Skytiara  =  id(Enemy_Skytiara)	; $62
EnemyID_Owltalon  =  id(Enemy_Owltalon)	; $63
EnemyID_Rabbit  =  id(Enemy_Rabbit)	; $64
EnemyID_Rabitta  =  id(Enemy_Rabitta)	; $65
EnemyID_Rabitgut  =  id(Enemy_Rabitgut)	; $66
EnemyID_Wrestler  =  id(Enemy_Wrestler)	; $67
EnemyID_Sakoff  =  id(Enemy_Sakoff)	; $68
EnemyID_Mesoman  =  id(Enemy_Mesoman)	; $69
EnemyID_Lung  =  id(Enemy_Lung)	; $6A
EnemyID_Glosword  =  id(Enemy_Glosword)	; $6B
EnemyID_Desrona  =  id(Enemy_Desrona)	; $6C
EnemyID_Darkside  =  id(Enemy_Darkside)	; $6D
EnemyID_MrDeath  =  id(Enemy_MrDeath)	; $6E
EnemyID_Shadow  =  id(Enemy_Shadow)	; $6F
EnemyID_Mystcape  =  id(Enemy_Mystcape)	; $70
EnemyID_Illusnst  =  id(Enemy_Illusnst)	; $71
EnemyID_Imagiomg  =  id(Enemy_Imagiomg)	; $72
EnemyID_ArchDrgn  =  id(Enemy_ArchDrgn)	; $73
EnemyID_Frdragon  =  id(Enemy_Frdragon)	; $74
EnemyID_Mxdragon  =  id(Enemy_Mxdragon)	; $75
EnemyID_Firefall  =  id(Enemy_Firefall)	; $76
EnemyID_Vorcano  =  id(Enemy_Vorcano)	; $77
EnemyID_Kinglava  =  id(Enemy_Kinglava)	; $78
EnemyID_Wizard  =  id(Enemy_Wizard)	; $79
EnemyID_Capeone  =  id(Enemy_Capeone)	; $7A
EnemyID_Fiend  =  id(Enemy_Fiend)	; $7B
EnemyID_Neifirst  =  id(Enemy_Neifirst)	; $7C
EnemyID_DarkFrce  =  id(Enemy_DarkFrce)	; $7D
EnemyID_MotherBrain  =  id(Enemy_MotherBrain)	; $7E

EnemyNameLength =	10

; Music
offset	:=	MusicPtrs
ptrsize	:=	2
idstart	:=	$81

MusicID_Phantasy =  id(PtrMusic_Phantasy)	; $81
MusicID_Restoration =  id(PtrMusic_Restoration)	; $82
MusicID_SilentZone =  id(PtrMusic_SilentZone)	; $83
MusicID_Pleasure =  id(PtrMusic_Pleasure)	; $84
MusicID_ExcitingTown =  id(PtrMusic_ExcitingTown)	; $85
MusicID_SecretWays =  id(PtrMusic_SecretWays)	; $86
MusicID_Advanced =  id(PtrMusic_Advanced)	; $87
MusicID_Mystery =  id(PtrMusic_Mystery)	; $88
MusicID_Violation =  id(PtrMusic_Violation)	; $89
MusicID_Under =  id(PtrMusic_Under)	; $8A
MusicID_StepUp =  id(PtrMusic_StepUp)	; $8B
MusicID_BrackyNews =  id(PtrMusic_BrackyNews)	; $8C
MusicID_MyHome =  id(PtrMusic_MyHome)	; $8D
MusicID_Pressure = id(PtrMusic_Pressure) ; $8E
MusicID_Dream =  id(PtrMusic_Dream)	; $8F
MusicID_Power =  id(PtrMusic_Power)	; $90
MusicID_Exclaim =  id(PtrMusic_Exclaim)	; $91
MusicID_RiseOrFall =  id(PtrMusic_RiseOrFall)	; $92
MusicID_ThePlaceOfDeath =  id(PtrMusic_ThePlaceOfDeath)	; $93
MusicID_Movement =  id(PtrMusic_Movement)	; $94
MusicID_Over =  id(PtrMusic_Over)	; $95
MusicID_MovementVer2 =  id(PtrMusic_MovementVer2)	; $96
MusicID_NeverDream =  id(PtrMusic_NeverDream)	; $97

; SFX
offset	:=	SFXPtrs
ptrsize	:=	2
idstart	:=	$A0

SFXID_Selection =  id(PtrSFX_Selection)	; $A0
SFXID_LevelUp =  id(PtrSFX_LevelUp)	; $A1
SFXID_ItemReceived =  id(PtrSFX_ItemReceived)	; $A2
SFXID_Explosion =  id(PtrSFX_Explosion)	; $A3
SFXID_MapChanged =  id(PtrSFX_MapChanged)	; $A4
SFXID_FellInHole =  id(PtrSFX_FellInHole)	; $A5
SFXID_Revived =  id(PtrSFX_Revived)	; $A6
SFXID_PoisonCured =  id(PtrSFX_PoisonCured)	; $A7
SFXID_Alarm =  id(PtrSFX_Alarm)	; $A8
SFXID_Hidapipe =  id(PtrSFX_Hidapipe)	; $A9
SFXID_Teleport =  id(PtrSFX_Teleport)	; $AA
SFXID_DoorOpen =  id(PtrSFX_DoorOpen)	; $AB
SFXID_DamOpened =  id(PtrSFX_DamOpened)	; $AC
SFXID_JetScooter =  id(PtrSFX_JetScooter)	; $AD
SFXID_SpaceshipDeparted =  id(PtrSFX_SpaceshipDeparted)	; $AE
SFXID_SpaceshipLanded =  id(PtrSFX_SpaceshipLanded)	; $AF
SFXID_DangerousFloor =  id(PtrSFX_DangerousFloor)	; $B0
SFXID_Musik =  id(PtrSFX_Musik)	; $B1
SFXID_Boomerang =  id(PtrSFX_Boomerang)	; $B2
SFXID_Sword =  id(PtrSFX_Sword)	; $B3
SFXID_Claw =  id(PtrSFX_Claw)	; $B4
SFXID_Slasher =  id(PtrSFX_Slasher)	; $B5
SFXID_Shotgun =  id(PtrSFX_Shotgun)	; $B6
SFXID_StrongGun =  id(PtrSFX_StrongGun)	; $B7
SFXID_B8 =  id(PtrSFX_B8)	; $B8
SFXID_B9 =  id(PtrSFX_B9)	; $B9
SFXID_DamageRedScreen =  id(PtrSFX_DamageRedScreen)	; $BA
SFXID_Foi =  id(PtrSFX_Foi)	; $BB
SFXID_Zan =  id(PtrSFX_Zan)	; $BC
SFXID_Vol =  id(PtrSFX_Vol)	; $BD
SFXID_Tsu =  id(PtrSFX_Tsu)	; $BE
SFXID_Shinb =  id(PtrSFX_Shinb)	; $BF
SFXID_Eijia =  id(PtrSFX_Eijia)	; $C0
SFXID_Gaj =  id(PtrSFX_Gaj)	; $C1
SFXID_Deban =  id(PtrSFX_Deban)	; $C2
SFXID_Healed =  id(PtrSFX_Healed)	; $C3
SFXID_C4 =  id(PtrSFX_C4)	; $C4
SFXID_NeifirstAttack =  id(PtrSFX_NeifirstAttack)	; $C5
SFXID_Whip =  id(PtrSFX_Whip)	; $C6
SFXID_WhistleAttack =  id(PtrSFX_WhistleAttack)	; $C7
SFXID_PoleziAttack =  id(PtrSFX_PoleziAttack)	; $C8
SFXID_PulserAttack =  id(PtrSFX_PulserAttack)	; $C9
SFXID_TerakiteAttack =  id(PtrSFX_TerakiteAttack)	; $CA
SFXID_FireAntAttack =  id(PtrSFX_FireAntAttack)	; $CB
SFXID_BeeAttack =  id(PtrSFX_BeeAttack)	; $CC
SFXID_AmoebaAttack =  id(PtrSFX_AmoebaAttack)	; $CD
SFXID_BlasterAttack =  id(PtrSFX_BlasterAttack)	; $CE
SFXID_VanAttack =  id(PtrSFX_VanAttack)	; $CF
SFXID_SpinnerAttack =  id(PtrSFX_SpinnerAttack)	; $D0
SFXID_MosquitoAttack =  id(PtrSFX_MosquitoAttack)	; $D1
SFXID_LocustAttack =  id(PtrSFX_LocustAttack)	; $D2
SFXID_ArmyEyeAttack =  id(PtrSFX_ArmyEyeAttack)	; $D3
SFXID_EnemyKilled =  id(PtrSFX_EnemyKilled)	; $D4
SFXID_Pause =  id(PtrSFX_Pause)	; $D5
SFXID_Unpause =  id(PtrSFX_Unpause)	; $D6


SoundtrackNameLength = 12	; Ustvestia text pointer character length

; Chest Flags
Chest_Skure15000Meseta = 1
Chest_SkureMogicCap = 2
Chest_Skure18000Meseta = 3
Chest_SkureMagicCap = 4
Chest_Skure7800Meseta = 5
Chest_SkureLaconChest = 6
Chest_Skure5600Meseta = 7
Chest_SkureGardaBoots = 8
Chest_Skure8600 = 9
Chest_SkureMagicCap2 = $A
Chest_Skure12000 = $B
Chest_Skure6400 = $C
Chest_Unknown200Meseta = $D
Chest_Prism = $E
Chest_NeiSword = $F
Chest_ShureMonomate = $10
Chest_Shure150Meseta = $11
Chest_ShureDynamite = $12
Chest_ShureDynamite2 = $13
Chest_Shure40Meseta = $14
Chest_ShureDimate = $15
Chest_ShureHeadgear = $16
Chest_Shure200Meseta = $17
Chest_ShureSilRibbon = $18
Chest_Nido20Meseta = $19
Chest_Nido100Meseta = $1A
Chest_NidoDimate = $1B
Chest_NidoTrimate = $1C
Chest_Nido60Meseta = $1D
Chest_RoronGarbage = $1E
Chest_RoronGarbage2 = $1F
Chest_RoronCeramBar = $20
Chest_RoronGarbage3 = $21
Chest_RoronCannon = $22
Chest_RoronGarbage4 = $23
Chest_YellowDamEscapipe = $24
Chest_YellowDamCrystanish = $25
Chest_YellowDamCrystCape = $26
Chest_YellowDamCrystChest = $27
Chest_YellowDamAmberRobe = $28
Chest_RedDamSwdOfAnger = $29
Chest_RedDamFireSlshr = $2A
Chest_RedDamFireStaff = $2B
Chest_BlueDamAntidote = $2C
Chest_BlueDamCresceGear = $2D
Chest_BlueDamSnowCrown = $2E
Chest_BlueDamStarMist = $2F
Chest_BlueDamWindScarf = $30
Chest_BlueDamColorScarf = $31
Chest_BlueDamTrimate = $32
Chest_BlueDamStormGear = $33
Chest_GreenDamStarMist = $34
Chest_GreenDamAegis = $35
Chest_GreenDamTelepipe = $36
Chest_GreenDamGrSleeves = $37
Chest_GreenDamTruthSlvs = $38
Chest_BiosystemTrimate = $39
Chest_BiosystemAntidote = $3A
Chest_BiosystemPoisonShot = $3B
Chest_BiosystemAntidote2 = $3C
Chest_BiosystemScalpel = $3D
Chest_BiosystemStarMist = $3E
Chest_BiosystemDynamite = $3F
Chest_ClimatrolJwlRibbon = $40
Chest_ClimatrolFiberVest = $41
Chest_ClimatrolKnifeBoots = $42
Chest_ClimatrolSilRibbon = $43
Chest_ClimatrolSandals = $44
Chest_ClimatrolLaserBar = $45
Chest_ClimatrolCeramBar = $46
Chest_NeiShield = $47
Chest_NeiEmel = $48
Chest_NavalTruthSlvs = $49
Chest_NavalTrimate = $4A
Chest_NavalMirEmel = $4B
Chest_NavalLaconEmel = $4C
Chest_NavalGrSleeves = $4D
Chest_NeiCrown = $4E
Chest_MenobeStormGear = $4F
Chest_Neimet = $50
Chest_MenobeColorScarf = $51
Chest_NeiSlasher = $52
Chest_NeiShot = $53
Chest_IkutoFireStaff = $54
Chest_IkutoLacnMace = $55
Chest_IkutoPlsCannon = $56
Chest_IkutoLacDagger = $57
Chest_GuaronAmberRobe = $58
Chest_GuaronLaconinish = $59
Chest_GuaronCrystChest = $5A
Chest_NeiCape = $5B
Chest_GuaronCrystCape = $5C
Chest_NeiArmor = $5D

; ---------------------------------------------------------------------------
; Controller Buttons
;
; Buttons bit numbers
ButtonUp =  0
ButtonDown =  1
ButtonLeft =  2
ButtonRight =  3
Button_B =  4
Button_C =  5
Button_A =  6
ButtonStart =  7
; Buttons masks
ButtonUp_Mask = 1<<ButtonUp	; $01
ButtonDown_Mask =  1<<ButtonDown	; $02
ButtonLeft_Mask =  1<<ButtonLeft	; $04
ButtonRight_Mask =  1<<ButtonRight	; $08
Button_B_Mask =  1<<Button_B	; $10
Button_C_Mask =  1<<Button_C	; $20
Button_A_Mask =  1<<Button_A	; $40
ButtonStart_Mask =  1<<ButtonStart	; $80
; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------
; Address Constants
; ---------------------------------------------------------------------------


; VDP
VDP_data_port =  $C00000
VDP_control_port =  $C00004
VDP_counter =  $C00008

PSG_input =  $C00011

; Z80
Z80_RAM =  $A00000	; start of Z80 RAM
Z80_RAM_end =  $A02000	; end of non-reserved Z80 RAM
Z80_bus_request =  $A11100
Z80_reset =  $A11200

Security_addr =  $A14000

; I/O area
HW_version =  $A10001
HW_port_1_data =  $A10003
HW_port_2_data =  $A10005
HW_expansion_data =  $A10007
HW_port_1_control =  $A10009
HW_port_2_control =  $A1000B
HW_expansion_control =  $A1000D

; RAM
; Make sure RAM address constants work in both 16-bit and 32-bit addressing modes
ramaddr function x,-(-x)&$FFFFFFFF


RAM_start =  ramaddr($FFFF0000)

Chunk_table = ramaddr($FFFF6800)

Window_art_buffer =  ramaddr($FFFF8000)	; used to store art tiles for windows; mainly for dynamic windows

Map_layout_BG =  ramaddr($FFFF9000)	; map layout for plane B
Map_layout_FG =  ramaddr($FFFFA800)	; map layout for plane A

Character_stats =  ramaddr($FFFFC000)
Rolf_stats =  ramaddr($FFFFC000)
Nei_stats =  ramaddr($FFFFC040)
Rudo_stats =  ramaddr($FFFFC080)
Amy_stats =  ramaddr($FFFFC0C0)
Hugh_stats =  ramaddr($FFFFC100)
Anna_stats =  ramaddr($FFFFC140)
Kain_stats =  ramaddr($FFFFC180)
Shir_stats =  ramaddr($FFFFC1C0)
Enemy_stats =  ramaddr($FFFFC200)

Party_members_num =  ramaddr($FFFFC600)		; current number of party members
Party_members_joined =  ramaddr($FFFFC604)		; number of party members that joined (incremented when going home to recruit new character)
Party_member_join_next =  ramaddr($FFFFC606)	; incremented when you reach a new town, so when you go to Rolf's house, it will use this variable to determine the event
Party_member_ID =  ramaddr($FFFFC608)		; ID's for the current party members; so if Rolf is leading, the first ID value is 0; if Nei is leading, then the first value is 1, etc...

Current_money =  ramaddr($FFFFC620)			; amount of money that you own at the moment

Chosen_letter_position =  ramaddr($FFFFC63A)	; position of the cursor when you choose letters for characters' names

Map_index =  ramaddr($FFFFC640)			; index of the map you are in
Map_Y_pos =  ramaddr($FFFFC642)
Map_X_pos =  ramaddr($FFFFC644)

Jet_Scooter_flag =  ramaddr($FFFFC652)		; flag: 0 = not on jet scooter; 1 = on jet scooter
Jet_Scooter_Y_pos =  ramaddr($FFFFC654)
Jet_Scooter_X_pos =  ramaddr($FFFFC656)

Planet_index =  ramaddr($FFFFC658)			; 0 = Motavia; 1 = Dezolis

Character_names =  ramaddr($FFFFC660)


Town_flags =  ramaddr($FFFFC700)
Event_flags =  ramaddr($FFFFC710)
Map_event_load =  ramaddr($FFFFC710)
Map_event_run =  ramaddr($FFFFC711)
Treasure_chest_flags =  ramaddr($FFFFC780)	; space where open/close flags for treasure chests are

Battle_character_stats =  ramaddr($FFFFC900)	; save all characters data so that you can retrieve it after the end of a battle

Enemy_formation =  ramaddr($FFFFCB00)
Enemy_group_2_start_num =  ramaddr($FFFFCB02)
Formations_index_1 =  ramaddr($FFFFCB06)
Formations_index_2 =  ramaddr($FFFFCB08)
Encounter_step_flag =  ramaddr($FFFFCB0A)	; set to 1 if we're moving; 0 if not; used to determine if we can enter a random battle
Encounter_step_counter =  ramaddr($FFFFCB0C)
Encounter_rate_decreased_flag =  ramaddr($FFFFCB0E)	; affected by Hidapipe
Enemy_num_1 =  ramaddr($FFFFCB10)
Enemy_1 =  ramaddr($FFFFCB12)
Enemy_num_2 =  ramaddr($FFFFCB14)
Enemy_2 =  ramaddr($FFFFCB16)
Escape_rate =  ramaddr($FFFFCB18)
Enemy_damage_1 =  ramaddr($FFFFCB20)	; HP loss when enemy is attacked (first group)
Enemy_damage_2 =  ramaddr($FFFFCB22)	; HP loss when enemy is attacked (second group)
Enemy_total_EXP =  ramaddr($FFFFCB30)
Enemy_total_meseta =  ramaddr($FFFFCB34)

Battle_main_routine_index =  ramaddr($FFFFCC00)
Fight_active_flag =  ramaddr($FFFFCC02)		; flag: determines if you chose option "FIGHT" in battle; 0 = not fighting; 1 = fighting
Fight_interrupted_flag =  ramaddr($FFFFCC04)	; flag: determines if you want to interrupt the fight and select other commands; 0 = continue fight; 1 = interrupt fight
Fight_action_steps =  ramaddr($FFFFCC06)
Battle_script_ID =	ramaddr($FFFFCC0C)
Battle_command_used =  ramaddr($FFFFCC0E)
Char_battle_commands =  ramaddr($FFFFCC10)	; 16 bytes per character;
												; bytes 1-2 = Command index; 0 = attack; 1 = technique; 2 = item; 3 = defense
												; bytes 3-4 = ID of technique or item if those commands are used
												; bytes 5-6 = ID of target

Battle_turn_index = ramaddr($FFFFCC90)	; word
Plasma_ring_countup = ramaddr($FFFFCC92)	; word	; incremented each time Army Eye has a turn; when it reaches 9, one of the enemies will use Plasma Ring
Battle_turn_order = ramaddr($FFFFCCA0)	; 4 bytes per fighter; bytes 1-2 = ID of fighter; bytes 3-4 = agility

Script_queue =  ramaddr($FFFFCD00)		; 16 bytes total, 2 bytes per entry
										; 	entry definition: byte 1: index of script table
										;					  byte 2: index of text to load
Script_flag =  ramaddr($FFFFCD10)
Text_offset =	ramaddr($FFFFCD12)	; longword
Text_plane_offset =	ramaddr($FFFFCD16)	; word
Text_plane_offset_start =	ramaddr($FFFFCD18)	; word
Text_curr_line =	ramaddr($FFFFCD1A)	; word
Text_max_line_num =	ramaddr($FFFFCD1C)	; word
Text_line_scroll_speed =	ramaddr($FFFFCD1E)	; word
Text_render_type =  ramaddr($FFFFCD20)	; word ; 0 = prints one letter at the time; 1 = prints all text in one frame
Text_auto_timer =  ramaddr($FFFFCD22)	; word ; when it reaches 0, text will continue automatically
Text_buffer =  ramaddr($FFFFCD40)

Sound_RAM =  ramaddr($FFFFD000)

Coord_flag_e0 = $FFD000
Tempo_timeout =  $FFD001
Init_tempo_value =  $FFD002
Play_sound_ID =  $FFD003
Sound_queue =  ramaddr($FFFFD004)
Current_sfx_priority =  $FFD008
Track_timer =  ramaddr($FFFFD009)
Special_fm3_notes =  $FFD00A
Paused_mode =  ramaddr($FFFFD012)
Communication_byte = $FFD014
Fade_out_remain = $FFD016
Fade_timeout = $FFD017
Music_or_SFX = $FFD01B
Music_tracks = $FFD030
SFX_tracks = $FFD150
Special_SFX_tracks = $FFD1E0

Character_pos_table = ramaddr($FFFFDD00)

Window_mem_block = ramaddr($FFFFDE00)

Win_backup_tiles_addr = ramaddr($FFFFDE00)
Windows_opened_num =  ramaddr($FFFFDE04)		; number of objects that were populated in the object ram
Window_queue =  ramaddr($FFFFDE10)		; 16 bytes total, 2 bytes per entry
										;	entry definition: byte 1: bitfield holding various flags for processing
										;							bit 0 = initialization flag
										;							bit 1 = if clear, open window with a clipping effect; if set, window appears fully in one frame
										;							bit 2 = if set, draw window without tracking it in memory (static window)
										;							bit 7 = if set, destroy window; byte 2 holds the number of windows to destroy rather than the window index 
										;					  byte 2: window index

Window_index =  ramaddr($FFFFDE54)
Window_routine =  ramaddr($FFFFDE56)	; 0 = generally used for initialization before being opened
										; 1 = load additional stuff such as the red cursor for navigating
										; 2 = main logic


Event_routine =  ramaddr($FFFFDE58)			; index for offset tables
Event_routine_2 =  ramaddr($FFFFDE5A)		; index for offset tables in child tables
Event_routine_3 =  ramaddr($FFFFDE5C)

Character_index =  ramaddr($FFFFDE60)		; id for the characters; 0 = Rolf; 1 = Nei; 2 = Rudo; 3 = Amy; 4 = Hugh; 5 = Anna; 6 = Kain; 7 = Shir
Character_index_2 =  ramaddr($FFFFDE62)		; same as above. Seems to be used when character gets something from another character (e.g. healing technique)
Enemy_index =  ramaddr($FFFFDE64)		; id for the enemies
Technique_index =  ramaddr($FFFFDE66)		; id for the techniques
Tech_TP_consumption =  ramaddr($FFFFDE67)	; holds the value of the TP consumption for techniques
Item_index =  ramaddr($FFFFDE68)
Meseta_value =  ramaddr($FFFFDE6A)			; price for items, services, etc...
EXP_points_buffer =  ramaddr($FFFFDE6A)		; used to hold the value for exp points, such as when you defeat all enemies and you want to display text containing the value
Interaction_type =  ramaddr($FFFFDE6E)
Interaction_subtype =  ramaddr($FFFFDE6F)
Interaction_routine =  ramaddr($FFFFDE70)
Interaction_routine_2 =  ramaddr($FFFFDE72)

Yes_no_input =  ramaddr($FFFFDE90)			; 0 = yes; 1 = no

Window_draw_cache = ramaddr($FFFFDF00)

Object_RAM =  ramaddr($FFFFE000)
Push_start_button_text =  ramaddr($FFFFE000)	; blinking text in Title Screen
Copyright_text =  ramaddr($FFFFE040)			; text apperearing at bottom right corner of the Title Screen
Characters_RAM = ramaddr($FFFFE400)
Enemies_RAM = ramaddr($FFFFE800)

Sprite_table_input = ramaddr($FFFFF000)	; $400 (1024) bytes; holds addresses of objects whose properties will be copied to the Sprite table in VRAM
										; This section is divided into 64 lines and each line is 16 bytes long; the first word for each line is the number of
										; of objects followed by the object addresses. Objects are ordered from highest to lowest Y position, that is starting from the bottom of the screen

Decom_buffer =  ramaddr($FFFFF400)

Game_mode_index =  ramaddr($FFFFF600)

Joypad_ctrl =  ramaddr($FFFFF602)
Joypad_held =  ramaddr($FFFFF602)
Joypad_pressed =  ramaddr($FFFFF603)

Sprite_table_current_entry =  ramaddr($FFFFF608)

VDP_reg1_values =  ramaddr($FFFFF610)

Sprite_count =  ramaddr($FFFFF618)		; number of sprite counter. Starts from 80 and when it reaches 0, you cannot create more sprites

General_timer =  ramaddr($FFFFF61A)

V_int_routine =  ramaddr($FFFFF62A)

Link_field_count =  ramaddr($FFFFF62C)		; counter for link field Sprite attribute

RNG_seed =  ramaddr($FFFFF636)

Paused_flag =  ramaddr($FFFFF63A)		; flag: 0 = not paused; 1 = paused

Current_sound =  ramaddr($FFFFF640)
Battle_saved_sound =  ramaddr($FFFFF642)

DMA_last_write =  ramaddr($FFFFF644)

Chunk_table_addr =  ramaddr($FFFFF714)

Camera_Y_pos_FG =  ramaddr($FFFFF718)
Camera_X_pos_FG =  ramaddr($FFFFF71A)
Camera_Y_pos_BG =  ramaddr($FFFFF71C)
Camera_X_pos_BG =  ramaddr($FFFFF71E)
Camera_max_Y_pos =  ramaddr($FFFFF720)
Camera_max_X_pos =  ramaddr($FFFFF722)
Camera_Y_step_counter =  ramaddr($FFFFF724)
Camera_X_step_counter =  ramaddr($FFFFF726)

Map_collision_data_addr =  ramaddr($FFFFF72E)
Collision_map_layout_addr =  ramaddr($FFFFF732)	; either $9000 or $A800; determines which map layout we want to check collision detection from
Screen_changed_flag =  ramaddr($FFFFF734)
Map_transition_addr =  ramaddr($FFFFF736)
Character_pos_table_index = ramaddr($FFFFF740)
Cutscene_flag =  ramaddr($FFFFF750)			; flag: determines if there are events and CPU input should be handled; 0 = cutscene off; 1 = cutscene ongoing
Cutscene_index =  ramaddr($FFFFF752)			; determines what cutscene should be run
Cutscene_input_frame =  ramaddr($FFFFF754)		; determines joypad button to press for cutscenes
Cutscene_joypad =  ramaddr($FFFFF756)

Scene_index =  ramaddr($FFFFF760)
Portrait_index =  ramaddr($FFFFF762)

Decom_queue_chunk_num =  ramaddr($FFFFF790)
Decom_queue_next_flag =  ramaddr($FFFFF792)
Decom_queue_unknown =  ramaddr($FFFFF794)
Decom_chunk_buffer =  ramaddr($FFFFF7A0)
Decom_queue =  ramaddr($FFFFF7C0)
Decom_queue_destination =  ramaddr($FFFFF7C6)

Sprite_table_buffer =  ramaddr($FFFFF800)

Palette_table_buffer =  ramaddr($FFFFFB00)
Palette_line_2 =  ramaddr($FFFFFB20)
Palette_line_3 =  ramaddr($FFFFFB40)
Palette_line_4 =  ramaddr($FFFFFB60)

System_stack =  ramaddr($FFFFFE00)

Opening_ending_flag =  ramaddr($FFFFFFF0)

Graphics_flags =  ramaddr($FFFFFFF8) 			; only bits 6 and 7 are used; bit 6 = video (NTSC or PAL); bit 7 = Hardware region
Checksum_four_CC =  ramaddr($FFFFFFFC) 		; four bytes: string that is checked for the checksum routine.