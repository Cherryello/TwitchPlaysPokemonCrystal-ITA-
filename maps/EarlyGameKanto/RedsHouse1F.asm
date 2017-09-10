RedsHouse1FRB_MapScriptHeader: ; 0x19ae9c
	; trigger count
	db 2

	; triggers
	dw RedsHouse1FRB_Trigger1, $0000
	dw RedsHouse1FRB_Trigger2, $0000

	; callback count
	db 0
; 0x19aea2

RedsHouse1FRB_Trigger1: ; 0x19aea2
	end
; 0x19aea3
RedsHouse1FRB_Trigger2:
	end

MomsScript_Start4:
	setevent EVENT_000_STD
MomsScript_Start3:
	setevent EVENT_003_STD
	playmusic MUSIC_MOM
	showemote $0, $2, 15
	spriteface $0, $0
	checkevent EVENT_000_STD
	iffalse RedsHouse1FRB_Movement3
	applymovement $2, MovementData_MomWalkUp
	jump RedsHouse1FRB_SkipMovement

RedsHouse1FRB_Movement3:
	applymovement $2, MovementData_MomLookUp
	jump RedsHouse1FRB_SkipMovement

MomsScript_Start1: ; 0x7a4d8
	setevent EVENT_000_STD
; 0x7a4db

MomsScript_Start2: ; 0x7a4db
	playmusic MUSIC_MOM
	showemote $0, $2, 15
	spriteface $0, $2
	checkevent EVENT_000_STD
	iffalse RedsHouse1FRB_Movement2
	applymovement $2, MovementData_0x7a5fc
	jump RedsHouse1FRB_SkipMovement
; 0x7a4f2

RedsHouse1FRB_Movement2: ; 0x7a4f2
	applymovement $2, MovementData_0x7a5fe
RedsHouse1FRB_SkipMovement: ; 0x7a4f6
	loadfont
	writetext MomText1
	buttonsound
	stringtotext RedsHouse1FRB_GearName, $1
	scall RedsHouse1FRB_GetItem
	setflag ENGINE_POKEGEAR
	dotrigger $1
	writetext MomText2
	buttonsound
	special Function90913
RedsHouse1FRB_DSTLoop: ; 0x7a519
	writetext MomText3
	yesorno
	iffalse RedsHouse1FRB_NotDST
	special Function90a54
	yesorno
	iffalse RedsHouse1FRB_DSTLoop
	jump RedsHouse1FRB_TimeIsSet
; 0x7a52a

RedsHouse1FRB_NotDST: ; 0x7a52a
	special Function90a88
	yesorno
	iffalse RedsHouse1FRB_DSTLoop
RedsHouse1FRB_TimeIsSet: ; 0x7a531
	writetext MomText4
	; yesorno
	; iffalse RedsHouse1FRB_DontNeedPhoneExplanation
	; writetext MomText5
	; buttonsound
	; jump RedsHouse1FRB_AfterPhoneExplanation
; ; 0x7a542

; RedsHouse1FRB_DontNeedPhoneExplanation: ; 0x7a542
	; writetext MomText6
	; buttonsound
; ; 0x7a549

; RedsHouse1FRB_AfterPhoneExplanation: ; 0x7a549
	; writetext MomText7
	waitbutton
	closetext
	checkevent EVENT_003_STD
	iftrue RedsHouse1FRB_MoveBack3
	checkevent EVENT_000_STD
	iftrue RedsHouse1FRB_MoveBack1
	checkevent EVENT_001_STD
	iffalse RedsHouse1FRB_MoveBack2
	jump RedsHouse1FRB_DontMoveBack
; 0x7a55d

RedsHouse1FRB_MoveBack1: ; 0x7a55d
	applymovement $2, MovementData_0x7a600
	jump RedsHouse1FRB_DontMoveBack
; 0x7a564

RedsHouse1FRB_MoveBack2: ; 0x7a564
	applymovement $2, MovementData_0x7a602
	jump RedsHouse1FRB_DontMoveBack

RedsHouse1FRB_MoveBack3:
	checkevent EVENT_000_STD
	iftrue RedsHouse1FRB_MoveBack4
	applymovement $2, MovementData_0x7a600
	jump RedsHouse1FRB_DontMoveBack

RedsHouse1FRB_MoveBack4:
	applymovement $2, MovementData_MomWalksDownLooksLeft

RedsHouse1FRB_DontMoveBack: ; 0x7a56b
	special RestartMapMusic
	spriteface $2, LEFT
	blackoutmod GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	end
; 0x7a572

MomScript2: ; 0x7a572
	playmusic MUSIC_MOM
	jump RedsHouse1FRB_SkipMovement
; 0x7a578

RedsHouse1FRB_GearName: ; 0x7a578
	db "#Gear@"
; 0x7a57e

RedsHouse1FRB_GetItem: ; 0x7a57e
	jumpstd receiveitem
	end
; 0x7a582

MomScript1:
	faceplayer
	setevent EVENT_001_STD
	checktriggers
	iffalse MomScript2
	loadfont
	checkevent EVENT_GOT_POKEMON_FROM_OAK
	iftrue .heal
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext MomText_AllBoysLeaveHomeSomeday
	jump .finish
.female
	writetext MomText_AllGirlsLeaveHomeSomeday
.finish
	waitbutton
	closetext
	end

.heal
	checkevent EVENT_002_STD
	iftrue .skip_heal
	writetext MomHealsYouText
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	special Function1060a2
	playmusic MUSIC_HEAL
	special HealParty
	blackoutmod GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	setevent EVENT_002_STD
.skip_heal
	writetext MomAfterHealText
	waitbutton
	closetext
	end
; 0x19aeba

MapRedsHouse1FRBSignpost2Script: ; 0x19aeba
	jumptext MovieOnTVText_RedsHouse1FRB
; 0x19aebd

MapRedsHouse1FRBSignpost1Script: ; 0x19aebd
	jumpstd picturebookshelf
; 0x19aec0

MovementData_0x7a5fc: ; 0x7a5fc
	turn_head_right
	step_end
; 0x7a5fe

MovementData_0x7a5fe: ; 0x7a5fe
	slow_step_right
	step_end
; 0x7a600
MovementData_MomWalksDownLooksLeft:
	slow_step_down
MovementData_0x7a600: ; 0x7a600
	turn_head_left
	step_end
; 0x7a602

MovementData_0x7a602: ; 0x7a602
	slow_step_left
	step_end
; 0x7a604

MovementData_MomWalkUp:
	slow_step_up
	step_end

MovementData_MomLookUp:
	turn_head_up
	step_end

MomText1: ; 0x7a604
	text "Oh, <PLAYER><...>! Il"
	line "nostro vicino, il"

	para "professor Oak, ti"
	line "stava cercando."

	para "Ha detto che ti"
	line "voleva per fare"
	cont "qualcosa per lui."

	para "Oh! Mi stavo quasi"
	line "dimenticando!"

	para "Il tuo #mon"
	line "Gear é tornato"
	cont "dall'assistenza."

	para "Eccolo!"
	done
; 0x7a6bd

MomText2: ; 0x7a6bd
	text "Il #mon Gear,"
	line "o abbreviato"
	cont "#Gear, é"

	para "indispensabile per"
	line "qualsiasi allena-"
	cont "tore che si"
	cont "rispetti."

	para "Oh, non é stato"
	line "impostato il gior-"
	cont "no della settima-"
	cont "na."

	para "Non dovresti mai"
	line "dimenticartelo!"
	done
; 0x7a742

MomText3: ; 0x7a742
	text "È attiva l'ora"
	line "legale?"
	done
; 0x7a763

MomText4: ; 0x7a763
	text "Torna a casa se"
	line "vuoi rimettere"

	para "o togliere l'ora"
	line "legale."
	done

MomText_AllBoysLeaveHomeSomeday:
	text "Bene. Tutti i"
	line "ragazzi lasciano"
	cont "casa prima o poi."
	cont "Così dice la TV."

	para "Comunque sia, il"
	line "professor Oak,"
	cont "porta affianco,"
	cont "ti stava cercando."
	done

MomText_AllGirlsLeaveHomeSomeday:
	text "Bene. Tutte le"
	line "ragazze lasciano"
	cont "casa prima o poi."
	cont "Così dice la TV."

	para "Comunque sia, il"
	line "professor Oak,"
	cont "porta affianco,"
	cont "ti stava cercando."
	done

MomHealsYouText:
	text "Mamma: <PLAYER>!"
	line "Dovresti riposarti"
	cont "un po'."
	done

MomAfterHealText:
	text "Mamma: Oh, bene!"
	line "Tu e i tuoi"
	para "#mon sembrate"
	line "in perfetta forma!"
	para "Fate attenzione!"
	done

MovieOnTVText_RedsHouse1FRB:
	text "C'é un film in TV."

	para "Quattro ragazzi"
	line "stanno camminando"
	cont "su dei binari."

	para "Ma meglio che ora"
	line "vada."
	done

RedsHouse1FRB_MapEventHeader: ; 0x19b017
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 1, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $7, $3, 1, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $0, $7, 1, GROUP_REDS_HOUSE_2F_RB, MAP_REDS_HOUSE_2F_RB

	; xy triggers
	db 4
	xy_trigger 0, $3, $6, 0, MomsScript_Start1, $0, $0
	xy_trigger 0, $3, $7, 0, MomsScript_Start2, $0, $0
	xy_trigger 0, $2, $5, 0, MomsScript_Start3, $0, $0
	xy_trigger 0, $1, $5, 0, MomsScript_Start4, $0, $0

	; signposts
	db 3
	signpost 1, 0, $0, MapRedsHouse1FRBSignpost1Script
	signpost 1, 1, $0, MapRedsHouse1FRBSignpost1Script
	signpost 1, 2, $0, MapRedsHouse1FRBSignpost2Script

	; people-events
	db 1
	person_event SPRITE_MOM, 7, 9, $8, 0, 0, -1, -1, 0, 0, 0, MomScript1, -1
; 0x19b048

