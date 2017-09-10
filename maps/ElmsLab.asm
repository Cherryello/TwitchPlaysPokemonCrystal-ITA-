ElmsLab_MapScriptHeader: ; 0x78b5d
	; trigger count
	db 6

	; triggers
	dw UnknownScript_0x78b7a, $0000
	dw UnknownScript_0x78b7e, $0000
	dw UnknownScript_0x78b7f, $0000
	dw UnknownScript_0x78b80, $0000
	dw UnknownScript_0x78b81, $0000
	dw UnknownScript_0x78b82, $0000

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x78b83
; 0x78b7a

UnknownScript_0x78b7a: ; 0x78b7a
	priorityjump UnknownScript_0x78b8c
	end
; 0x78b7e

UnknownScript_0x78b7e: ; 0x78b7e
	end
; 0x78b7f

UnknownScript_0x78b7f: ; 0x78b7f
	end
; 0x78b80

UnknownScript_0x78b80: ; 0x78b80
	end
; 0x78b81

UnknownScript_0x78b81: ; 0x78b81
	end
; 0x78b82

UnknownScript_0x78b82: ; 0x78b82
	end
; 0x78b83

UnknownScript_0x78b83: ; 0x78b83
	checktriggers
	iftrue UnknownScript_0x78b8b
	moveperson $2, $3, $4
UnknownScript_0x78b8b: ; 0x78b8b
	return
; 0x78b8c

UnknownScript_0x78b8c: ; 0x78b8c
	applymovement $0, MovementData_0x78f67
	showemote $0, $2, 15
	spriteface $2, $3
	loadfont
	writetext UnknownText_0x78fb6
UnknownScript_0x78b9b: ; 0x78b9b
	yesorno
	iftrue UnknownScript_0x78ba5
	writetext UnknownText_0x7911a
	jump UnknownScript_0x78b9b
; 0x78ba5

UnknownScript_0x78ba5: ; 0x78ba5
	writetext UnknownText_0x790fa
	buttonsound
	writetext UnknownText_0x7913a
	waitbutton
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote $0, $2, 10
	spriteface $2, $0
	loadfont
	writetext UnknownText_0x791ae
	waitbutton
	closetext
	loadfont
	spriteface $2, $3
	writetext UnknownText_0x791df
	waitbutton
	closetext
	applymovement $2, MovementData_0x78fa0
	spriteface $0, $1
	applymovement $2, MovementData_0x78fa2
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x792ff
	waitbutton
	dotrigger $1
	closetext
	end
; 0x78be0

ProfElmScript: ; 0x78be0
	faceplayer
	loadfont
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue UnknownScript_0x78bee
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue ElmGiveTicketScript
UnknownScript_0x78bee: ; 0x78bee
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue UnknownScript_0x78bfa
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
UnknownScript_0x78bfa: ; 0x78bfa
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue UnknownScript_0x78e16
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue UnknownScript_0x78e03
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse UnknownScript_0x78c35
	writebyte TOGEPI
	special Functionc284
	iftrue ShowElmTogepiScript
	writebyte TOGETIC
	special Functionc284
	iftrue ShowElmTogepiScript
	writetext UnknownText_0x79a40
	waitbutton
	closetext
	end
; 0x78c22

UnknownScript_0x78c22: ; 0x78c22
	writebyte TOGEPI
	special Functionc284
	iftrue ShowElmTogepiScript
	writebyte TOGETIC
	special Functionc284
	iftrue ShowElmTogepiScript
	jump UnknownScript_0x78c41
; 0x78c35

UnknownScript_0x78c35: ; 0x78c35
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse UnknownScript_0x78c41
	checkevent EVENT_TOGEPI_HATCHED
	iftrue UnknownScript_0x78c22
UnknownScript_0x78c41: ; 0x78c41
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext UnknownText_0x79375
	waitbutton
	closetext
	end
; 0x78c65

LabTryToLeaveScript: ; 0x78c65
	spriteface $2, $0
	loadfont
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement $0, MovementData_0x78f70
	end
; 0x78c73

CyndaquilPokeBallScript: ; 0x78c73
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	checkcode VAR_PARTYCOUNT
	if_not_equal 6, .okay
	checkcode VAR_BOXSPACE
	if_equal 0, ElmsLabNoRoomScript
.okay
	spriteface $2, $0
	refreshscreen $0
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	loadfont
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $4
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CYNDAQUIL, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CYNDAQUIL, 20, GOLD_BERRY, 0
	closetext
	checkcode VAR_FACING
	if_equal $3, ElmDirectionsScript
	applymovement $0, AfterCyndaquilMovement
	jump ElmDirectionsScript

TotodilePokeBallScript: ; 0x78cb5
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	checkcode VAR_PARTYCOUNT
	if_not_equal 6, .okay
	checkcode VAR_BOXSPACE
	if_equal 0, ElmsLabNoRoomScript
.okay
	spriteface $2, $0
	refreshscreen $0
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	loadfont
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $5
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem TOTODILE, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TOTODILE, 20, GOLD_BERRY, 0
	closetext
	applymovement $0, AfterTotodileMovement
	jump ElmDirectionsScript

ChikoritaPokeBallScript: ; 0x78cf1
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	checkcode VAR_PARTYCOUNT
	if_not_equal 6, .okay
	checkcode VAR_BOXSPACE
	if_equal 0, ElmsLabNoRoomScript
.okay
	spriteface $2, $0
	refreshscreen $0
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	loadfont
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear $6
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	pokenamemem CHIKORITA, $0
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHIKORITA, 20, GOLD_BERRY, 0
	closetext
	applymovement $0, AfterChikoritaMovement
	jump ElmDirectionsScript

DidntChooseStarterScript: ; 0x78d2d
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end
; 0x78d33
ElmsLabNoRoomScript:
	loadfont
	writetext ElmsLabNoRoomText
	waitbutton
	closetext
	end

ElmDirectionsScript: ; 0x78d33
	spriteface $0, $1
	loadfont
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum $4
	loadfont
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	spriteface $2, $2
	loadfont
	writetext ElmDirectionsText2
	waitbutton
	closetext
	spriteface $2, $0
	loadfont
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_SILVER_IN_CHERRYGROVE_CITY
	dotrigger $5
	domaptrigger GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN, $1
	end
; 0x78d67

ElmDescribesMrPokemonScript: ; 0x78d67
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end
; 0x78d6d

LookAtElmPokeBallScript: ; 0x78d6d
	loadfont
	writetext ElmPokeBallText
	waitbutton
	closetext
	end
; 0x78d74

MapElmsLabSignpost0Script: ; 0x78d74
	loadfont
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue UnknownScript_0x78d81
	writetext UnknownText_0x79690
	waitbutton
	closetext
	end
; 0x78d81

UnknownScript_0x78d81: ; 0x78d81
	writetext UnknownText_0x796aa
	yesorno
	iftrue UnknownScript_0x78d8a
	closetext
	end
; 0x78d8a

UnknownScript_0x78d8a: ; 0x78d8a
	special Function1060a2
	special HealParty
	special SaveMusic
	playmusic MUSIC_NONE
	writebyte $1
	special HealMachineAnim
	pause 30
	special RestoreMusic
	closetext
	end
; 0x78d9f

ElmAfterTheftDoneScript: ; 0x78d9f
	waitbutton
	closetext
	end
; 0x78da2

ElmAfterTheftScript: ; 0x78da2
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	buttonsound
	writetext ElmAfterTheftText2
	waitbutton
	takeitem MYSTERY_EGG, 1
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	waitbutton
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	buttonsound
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	writetext ElmAfterTheftText5
	buttonsound
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	domaptrigger GROUP_ROUTE_29, MAP_ROUTE_29, $1
	clearevent EVENT_YOUNGSTER_JOEY_ON_ROUTE_30
	setevent EVENT_YOUNGSTERS_BATTLE_ON_ROUTE_30
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	dotrigger $6
	end

.Female
    writetext ElmAfterTheftText5F
	buttonsound
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	domaptrigger GROUP_ROUTE_29, MAP_ROUTE_29, $1
	clearevent EVENT_YOUNGSTER_JOEY_ON_ROUTE_30
	setevent EVENT_YOUNGSTERS_BATTLE_ON_ROUTE_30
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	dotrigger $6
	end
	
; 0x78ddc

ElmStudyingEggScript: ; 0x78ddc
	writetext ElmStudyingEggText
	waitbutton
	closetext
	end
; 0x78de2

ElmAideHasEggScript: ; 0x78de2
	writetext ElmAideHasEggText
	waitbutton
	closetext
	end
; 0x78de8

ElmWaitingEggHatchScript: ; 0x78de8
	writetext ElmWaitingEggHatchText
	waitbutton
	closetext
	end
; 0x78dee

ShowElmTogepiScript: ; 0x78dee
	writetext ShowElmTogepiText1
	waitbutton
	closetext
	showemote $0, $2, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	loadfont
	writetext ShowElmTogepiText2
	buttonsound
	writetext ShowElmTogepiText3
	buttonsound
UnknownScript_0x78e03: ; 0x78e03
	writetext ElmGiveEverstoneText1
	buttonsound
	verbosegiveitem EVERSTONE, 1
	iffalse UnknownScript_0x78e1a
	writetext ElmGiveEverstoneText2
	waitbutton
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end
; 0x78e16

UnknownScript_0x78e16: ; 0x78e16
	writetext UnknownText_0x79c37
	waitbutton
UnknownScript_0x78e1a: ; 0x78e1a
	closetext
	end
; 0x78e1c

ElmGiveMasterBallScript: ; 0x78e1c
	writetext ElmGiveMasterBallText1
	buttonsound
	verbosegiveitem MASTER_BALL, 1
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetext
	end
; 0x78e2f

ElmGiveTicketScript: ; 0x78e2f
	writetext ElmGiveTicketText1
	buttonsound
	verbosegiveitem S_S_TICKET, 1
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetext
	end
; 0x78e3f

ElmJumpBackScript1: ; 0x78e3f
	closetext
	checkcode VAR_FACING
	if_equal $0, UnknownScript_0x78e6d
	if_equal $1, UnknownScript_0x78e67
	if_equal $2, UnknownScript_0x78e73
	if_equal $3, UnknownScript_0x78e79
	end
; 0x78e53

ElmJumpBackScript2: ; 0x78e53
	closetext
	checkcode VAR_FACING
	if_equal $0, UnknownScript_0x78e67
	if_equal $1, UnknownScript_0x78e6d
	if_equal $2, UnknownScript_0x78e79
	if_equal $3, UnknownScript_0x78e73
	end
; 0x78e67

UnknownScript_0x78e67: ; 0x78e67
	applymovement $2, MovementData_0x78f90
	loadfont
	end
; 0x78e6d

UnknownScript_0x78e6d: ; 0x78e6d
	applymovement $2, MovementData_0x78f94
	loadfont
	end
; 0x78e73

UnknownScript_0x78e73: ; 0x78e73
	applymovement $2, MovementData_0x78f98
	loadfont
	end
; 0x78e79

UnknownScript_0x78e79: ; 0x78e79
	applymovement $2, MovementData_0x78f9c
	loadfont
	end
; 0x78e7f

UnknownScript_0x78e7f: ; 0x78e7f
	applymovement $3, MovementData_0x78f7e
	spriteface $0, $0
	scall UnknownScript_0x78e9d
	applymovement $3, MovementData_0x78f87
	end
; 0x78e8e

UnknownScript_0x78e8e: ; 0x78e8e
	applymovement $3, MovementData_0x78f82
	spriteface $0, $0
	scall UnknownScript_0x78e9d
	applymovement $3, MovementData_0x78f8b
	end
; 0x78e9d

UnknownScript_0x78e9d: ; 0x78e9d
	loadfont
	writetext UnknownText_0x79f38
	buttonsound
	verbosegiveitem SUPER_POTION, 1
	writetext UnknownText_0x79f65
	waitbutton
	closetext
	dotrigger $2
	end
; 0x78ead

UnknownScript_0x78ead: ; 0x78ead
	applymovement $3, MovementData_0x78f7e
	spriteface $0, $0
	scall UnknownScript_0x78ecb
	applymovement $3, MovementData_0x78f87
	end
; 0x78ebc

UnknownScript_0x78ebc: ; 0x78ebc
	applymovement $3, MovementData_0x78f82
	spriteface $0, $0
	scall UnknownScript_0x78ecb
	applymovement $3, MovementData_0x78f8b
	end
; 0x78ecb

UnknownScript_0x78ecb: ; 0x78ecb
	loadfont
	writetext UnknownText_0x7a078
	buttonsound
	itemtotext GREAT_BALL, $1
	scall UnknownScript_0x78ee2
	giveitem GREAT_BALL, $5
	writetext UnknownText_0x7a09a
	buttonsound
	itemnotify
	closetext
	dotrigger $2
	end
; 0x78ee2

UnknownScript_0x78ee2: ; 0x78ee2
	jumpstd receiveitem
	end
; 0x78ee6

ElmsAideScript: ; 0x78ee6
	faceplayer
	loadfont
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue UnknownScript_0x78f0c
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x78f06
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue UnknownScript_0x78f00
	writetext UnknownText_0x79f65
	waitbutton
	closetext
	end
; 0x78f00

UnknownScript_0x78f00: ; 0x78f00
	writetext UnknownText_0x79f95
	waitbutton
	closetext
	end
; 0x78f06

UnknownScript_0x78f06: ; 0x78f06
	writetext UnknownText_0x7a09a
	waitbutton
	closetext
	end
; 0x78f0c

UnknownScript_0x78f0c: ; 0x78f0c
	writetext UnknownText_0x79c65
	waitbutton
	closetext
	end
; 0x78f12

UnknownScript_0x78f12: ; 0x78f12
	applymovement $0, MovementData_0x78f72
; 0x78f16

MeetCopScript: ; 0x78f16
	applymovement $0, MovementData_0x78f74
CopScript: ; 0x78f1a
	spriteface $7, $2
	loadfont
	writetext UnknownText_0x7a0f0
	buttonsound
	special SpecialNameRival
	writetext UnknownText_0x7a1c0
	waitbutton
	closetext
	applymovement $7, MovementData_0x78f78
	disappear $7
	dotrigger $2
	end
; 0x78f33

MapElmsLabSignpost14Script: ; 0x78f33
	loadfont
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue UnknownScript_0x78f49
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue UnknownScript_0x78f43
	jump UnknownScript_0x78f49
; 0x78f43

UnknownScript_0x78f43: ; 0x78f43
	writetext UnknownText_0x7a231
	waitbutton
	closetext
	end
; 0x78f49

UnknownScript_0x78f49: ; 0x78f49
	writetext UnknownText_0x7a1fd
	waitbutton
	closetext
	end
; 0x78f4f

MapElmsLabSignpost5Script: ; 0x78f4f
	jumptext UnknownText_0x7a24c
; 0x78f52

MapElmsLabSignpost6Script: ; 0x78f52
	jumptext UnknownText_0x7a28a
; 0x78f55

MapElmsLabSignpost7Script: ; 0x78f55
	jumptext UnknownText_0x7a2c6
; 0x78f58

MapElmsLabSignpost8Script: ; 0x78f58
	jumptext UnknownText_0x7a315
; 0x78f5b

MapElmsLabSignpost13Script: ; 0x78f5b
	jumptext UnknownText_0x7a370
; 0x78f5e

MapElmsLabSignpost15Script: ; 0x78f5e
	loadfont
	writetext UnknownText_0x7a3a6
	yesorno
	iffalse .skip
	special Function1559a
.skip
	closetext
	end
; 0x78f61

UnknownScript_0x78f61: ; 0x78f61
	jumpstd trashcan
; 0x78f64

MapElmsLabSignpost12Script: ; 0x78f64
	jumpstd difficultbookshelf
; 0x78f67

MovementData_0x78f67: ; 0x78f67
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end
; 0x78f70

MovementData_0x78f70: ; 0x78f70
	step_up
	step_end
; 0x78f72

MovementData_0x78f72: ; 0x78f72
	step_left
	step_end
; 0x78f74

MovementData_0x78f74: ; 0x78f74
	step_up
	step_up
	turn_head_right
	step_end
; 0x78f78

MovementData_0x78f78: ; 0x78f78
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x78f7e

MovementData_0x78f7e: ; 0x78f7e
	step_right
	step_right
	turn_head_up
	step_end
; 0x78f82

MovementData_0x78f82: ; 0x78f82
	step_right
	step_right
	step_right
	turn_head_up
	step_end
; 0x78f87

MovementData_0x78f87: ; 0x78f87
	step_left
	step_left
	turn_head_down
	step_end
; 0x78f8b

MovementData_0x78f8b: ; 0x78f8b
	step_left
	step_left
	step_left
	turn_head_down
	step_end
; 0x78f90

MovementData_0x78f90: ; 0x78f90
	fix_facing
	big_step_up
	remove_fixed_facing
	step_end
; 0x78f94

MovementData_0x78f94: ; 0x78f94
	fix_facing
	big_step_down
	remove_fixed_facing
	step_end
; 0x78f98

MovementData_0x78f98: ; 0x78f98
	fix_facing
	big_step_left
	remove_fixed_facing
	step_end
; 0x78f9c

MovementData_0x78f9c: ; 0x78f9c
	fix_facing
	big_step_right
	remove_fixed_facing
	step_end
; 0x78fa0

MovementData_0x78fa0: ; 0x78fa0
	step_up
	step_end
; 0x78fa2

MovementData_0x78fa2: ; 0x78fa2
	step_right
	step_right
	step_up
	turn_head_down
	step_end
; 0x78fa7

AfterCyndaquilMovement: ; 0x78fa7
	step_left
	step_up
	turn_head_up
	step_end
; 0x78fab

AfterTotodileMovement: ; 0x78fab
	step_left
	step_left
	step_up
	turn_head_up
	step_end
; 0x78fb0

AfterChikoritaMovement: ; 0x78fb0
	step_left
	step_left
	step_left
	step_up
	turn_head_up
	step_end
; 0x78fb6

UnknownText_0x78fb6: ; 0x78fb6
	text "Oh, ciao. Tu devi"
	line "essere <PLAY_G>!"

	para "Tua madre mi ha"
	line "detto tutto di te"
	cont "quando si é tra-"
	cont "sferita qui."

	para "Io sono il profes-"
	line "sor Elm. Piacere"
	cont "di conoscerti!"

	para "Elm: Potrei chie-"
	line "derti un favore?"

	para "Sto conducendo"
	line "delle nuove ricer-"
	cont "che sui #mon."

	para "Mi stavo chiedendo"
	line "se potessi darmi"
    cont "una mano, <PLAY_G>."

	para "Devi sapere<...>"

	para "Sto scrivendo un"
	line "discorso da pre-"

	para "sentare ad una"
	line "conferenza."

	para "Ma ci sono alcune"
	line "cose che non mi"

	para "sono del tutto"
	line "chiare."

	para "Dunque!"

	para "Vorrei che alle-"
	line "vassi un #mon"

	para "che ho catturato"
	line "recentemente."
	done
; 0x790fa

UnknownText_0x790fa: ; 0x790fa
	text "Grazie, <PLAY_G>!"

	para "Sei di grande"
	line "aiuto!"
	done
; 0x7911a

UnknownText_0x7911a: ; 0x7911a
	text "Ma<...> Ti prego, ho"
	line "bisogno di te!"
	done
; 0x7913a

UnknownText_0x7913a: ; 0x7913a
	text "Quando pubblicherò"
	line "le mie scoperte,"

	para "sono sicuro che"
	line "porteremo un po'"

	para "di luce sui tanti"
	line "misteri dei"
	cont "#mon."

	para "Puoi contarci!"
	done
; 0x791ae

UnknownText_0x791ae: ; 0x791ae
	text "Oh! Mi é arrivata"
	line "una mail!"

	para $56, $56, $56
	line "Hm<...> Uh-huh<...>"

	para "Okay<...>"
	done
; 0x791df

UnknownText_0x791df: ; 0x791df
	text "Ehi, ascolta."

	para "Ho una conoscenza"
	line "di nome Mr.#-"
	cont "mon."

	para "È da un po' che"
	line "continua a scopri-"
	cont "re cose strane e"

	para "ogni volta va su"
	line "di giri."

	para "Vabbé, comunque"
	line "sia mi ha appena"

	para "mandato una mail"
	line "in cui diceva che"
	cont "stavolta si tratta"
	cont "di roba grossa."

	para "È intrigante, ma"
	line "siamo molto impe-"

	para "gnati con le"
	line "nostre ricerche<...>"

	para "Oh!"

	para "Perché no?"

	para "<PLAY_G>, puoi"
	line "andare tu al mio"
	cont "posto!"
	done
; 0x792ff

UnknownText_0x792ff: ; 0x792ff
	text "Voglio che allevi"
	line "uno dei #mon"

	para "contenuti in"
	line "queste # Ball."

	para "Sarai il loro"
	line "primo partner,"
	cont "<PLAY_G>!"

	para "Avanti."
	line "Scegline uno!"
	done
; 0x79375

UnknownText_0x79375: ; 0x79375
	text "Se appare un #-"
	line "mon selvatico, fai"
	cont "combattere il tuo!"
	done
; 0x793a7

LabWhereGoingText: ; 0x793a7
	text "Elm: Aspetta! Dove"
	line "stai andando?"
	done
; 0x793c8

TakeCyndaquilText: ; 0x793c8
	text "Elm: Vuoi portare"
	line "con te Cyndaquil,"
	cont "il #mon di tipo"
	cont "fuoco?"              ; assolutamente sì!
	done
; 0x793f3

TakeTotodileText: ; 0x793f3
	text "Elm: Vuoi portare"
	line "con te Totodile,"
	cont "il #mon di tipo"
	cont "acqua?"   
	done
; 0x7941f

TakeChikoritaText: ; 0x7941f
	text "Elm: Vuoi portare"
	line "con te Chikorita,"
	cont "il #mon di tipo"
	cont "erba?"   
	done
; 0x7944d

DidntChooseStarterText: ; 0x7944d
	text "Elm: Pensaci bene."

	para "È una scelta"
	line "importante."
	done
; 0x79487

ChoseStarterText: ; 0x79487
	text "Elm: Anch'io credo"
	line "sia un ottimo"
	cont "#mon!"
	done
; 0x794ad

ReceivedStarterText: ; 0x794ad
	text "<PLAYER> riceve"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x794c0

ElmDirectionsText1: ; 0x794c0
	text "Mr.#mon vive un"
	line "po' dopo Fiorpe-"
    cont "scopoli."

	para "È quasi in linea"
	line "retta da qui,"

	para "quindi é impossi-"
	line "bile sbagliarsi."

	para "Però se ci dovesse"
	line "essere qualche"

	para "problema, ecco il"
	line "mio numero!"
	done
; 0x79581

ElmDirectionsText2: ; 0x79581
	text "Se il tuo #mon"
	line "dovesse subire dei"

	para "danni, curalo con"
	line "questa macchina."

	para "Usala pure quante"
	line "volte vuoi."
	done
; 0x795db

ElmDirectionsText3: ; 0x795db
	text "<PLAY_G>, conto"
	line "su di te!"
	done
; 0x795f3

GotElmsNumberText: ; 0x795f3
	text "<PLAYER> riceve"
	line "il numero di Elm."
	done
; 0x7960d

ElmDescribesMrPokemonText: ; 0x7960d
	text "Mr.#mon ovunque"
	line "va trova delle "
	cont "rarità."

	para "Peccato che molto"
	line "spesso siano rare"
	cont "ma totalmente inu-"
	cont "tili<...>"
	done
; 0x79668

ElmPokeBallText: ; 0x79668
	text "Contiene un #-"
	line "mon catturato dal"
	cont "professor Elm."
	done
; 0x79690

UnknownText_0x79690: ; 0x79690
	text "Chissà a cosa"
	line "serve<...>?"
	done
; 0x796aa

UnknownText_0x796aa: ; 0x796aa
	text "Vuoi curare i tuoi"
	line "#mon?"
	done
; 0x796cd

ElmAfterTheftText1: ; 0x796cd
	text "Elm: <PLAY_G>, é"
	line "terribile<...>"

	para "Oh, giusto, qual"
	line "era la grande"
	cont "scoperta di Mr."
	cont "#mon?"
	done
; 0x79712

ElmAfterTheftText2: ; 0x79712
	text "<PLAYER> porge"
	line "l'uovo misterioso"
	cont "al professor Elm."
	done
; 0x79739

ElmAfterTheftText3: ; 0x79739
	text "Elm: È questo?"
	done
; 0x79745

ElmAfterTheftText4: ; 0x79745
	text "Ma<...> È l'uovo di"
	line "un #mon?"

	para "Se sì, certo che é"
	line "una grande scoper-"
	cont "ta!"
	done
; 0x79780

ElmAfterTheftText5: ; 0x79780
	text "Elm: Cosa?!?"

	para "Il professor Oak"
	line "ti ha dato un"
	cont "#dex?!"

	para "<PLAY_G>, dici la"
	line "verità? M-ma é"
	cont "incredibile!"

	para "Oak sa riconoscere"
	line "all'istante il"
	cont "potenziale di un"
	cont "buon allenatore!"

	para "Wow, <PLAY_G>."
	line "Forse hai tutte le"

	para "carte in regola"
	line "per diventare un"
	cont "campione."

	para "Inoltre pare che"
	line "te la cavi bene"
	cont "con i #mon."

	para "Dovresti iniziare"
	line "a sfidare le"
	cont "palestre #mon."

	para "La palestra più"
	line "vicina si trova a"
	cont "Violapoli."
	done
; 0x798cf

ElmAfterTheftText5F: ; 0x79780
	text "Elm: Cosa?!?"

	para "Il professor Oak"
	line "ti ha dato un"
	cont "#dex?!"

	para "<PLAY_G>, dici la"
	line "verità? M-ma é"
	cont "incredible!"

	para "È un genio nel"
	line "vedere quanto"
	cont "potenziale si ab-"
	cont "bia come allenato-"
	cont "ri!"

	para "Wow, <PLAY_G>."
	line "Forse hai tutte le"

	para "carte in regola"
	line "per diventare una"
	cont "campionessa."

	para "Inoltre pare che"
	line "te la cavi bene"
	cont "con i #mon."

	para "Dovresti iniziare"
	line "a sfidare le"
	cont "palestre #mon."

	para "La palestra più"
	line "vicina si trova a"
	cont "Violapoli."
	done

ElmAfterTheftText6: ; 0x798cf
	text "<...><PLAY_G>. La"
	line "strada per diven-"

	para "tare campioni é"
	line "piena di diffi-"
	cont "coltà."

	para "Prima di partire,"
	line "assicurati di aver"
	cont "parlato con tua"
	cont "madre."
	done
; 0x7993c

ElmStudyingEggText: ; 0x7993c
	text "Elm: Ehi, non"
	line "arrenderti!"

	para "Ti chiamo non"
	line "appena scopro"
	cont "qualcosa su quell'"
	cont "uovo!"
	
	done
; 0x7997d

ElmAideHasEggText: ; 0x7997d
	text "Elm: <PLAY_G>?"
	line "Non hai ancora"
	cont "incontrato il mio"
	cont "assistente?"

	para "Ti stava aspettan-"
	line "do per l'uovo al"

	para "Centro #mon di"
	line "Violapoli."

	para "Di sicuro non lo"
	line "avrai notato. Pro-"
	cont "va ad andare lì."
	done
; 0x79a1b

ElmWaitingEggHatchText: ; 0x79a1b
	text "Elm: Ehi, aggior-"
	line "namenti sull'uovo?"
	done
; 0x79a40

UnknownText_0x79a40: ; 0x79a40
	text "<PLAY_G>? Credevo"
	line "che l'uovo si"
	cont "fosse schiuso."

	para "Dov'é il #mon?"
	done
; 0x79a72

ShowElmTogepiText1: ; 0x79a72
	text "Elm: <PLAY_G>, ti"
	line "vedo in forma!"
	done
; 0x79a8b

ShowElmTogepiText2: ; 0x79a8b
	text "Cosa?"
	line "Quel #mon<...>!?!"
	done
; 0x79a9f

ShowElmTogepiText3: ; 0x79a9f
	text "L'uovo si é"
	line "schiuso!"
	line "Dunque i #mon"
	cont "nascono dalle"
	cont "uova<...>"

	para "No, forse non pro-"
	line "prio tutti i #-"
	line "mon."

	para "Wow, ci sono anco-"
	line "ra molte ricerche"
	cont "da fare."
	done
; 0x79b1c

ElmGiveEverstoneText1: ; 0x79b1c
	text "Grazie, <PLAY_G>!"
	line "Ci stai aiutando"

	para "a scoprire i se-"
	line "greti dei #mon!"

	para "Voglio darti que-"
	line "sto in segno della"
	cont "mia gratitudine."
	done
; 0x79b8d

ElmGiveEverstoneText2: ; 0x79b8d
	text "È una"
	line "Pietrastante."

	para "Alcune specie di"
	line "#mon si evolvo-"

	para "no quando raggiun-"
	line "gono un certo"
	cont "livello."

	para "Un #mon che porta"
	line "una Pietrastante"
	cont "non si evolverà."

	para "Dalla a un #mon"
	line "che non vuoi far"
	cont "evolvere."
	done
; 0x79c37

UnknownText_0x79c37: ; 0x79c37
	text "Elm: <PLAY_G>, ti"
	line "chiamo se succede"
	cont "qualcosa."
	done
; 0x79c65

UnknownText_0x79c65: ; 0x79c65
	para "<...>sigh<...> Quel"
	line "#mon rubato<...>"

	para "Mi chiedo come se"
	line "la stia passando."

	para "Dicono che un"
	line "#mon allevato"

	para "da una cattiva"
	line "persona diventi"
	cont "cattivo a sua"
	cont "volta."
	done
; 0x79cd0

ElmGiveMasterBallText1: ; 0x79cd0
	text "Elm: Ehi, <PLAY_G>!"
	line "Grazie a te, le"

	para "ricerche vanno a"
	line "gonfie vele!"

	para "Voglio darti que-"
	line "sto in segno della"
	cont "mia gratitudine."
	done
; 0x79d31

ElmGiveMasterBallText2: ; 0x79d31
	text "La Master Ball é"
	line "il top!"

	para "È la Ball per"
	line "antonomasia!"

	para "Può catturare"
	line "qualsiasi #mon"
	cont "senza fallire!"

	para "Viene conferita"
	line "solo ai ricercato-"
	cont "ri #mon ricono-"
	cont "sciuti."

	para "Credo che tu possa"
	line "farne un utilizzo"

	para "migliore del mio,"
	line "<PLAY_G>!"
	done
; 0x79df3

ElmGiveTicketText1: ; 0x79df3
	text "Elm: <PLAY_G>!"
	line "Eccoti!"

	para "I called because I"
	line "have something for"
	cont "you."

	para "See? It's an"
	line "S.S.TICKET."

	para "Now you can catch"
	line "#MON in KANTO."
	done
; 0x79e6f

ElmGiveTicketText2: ; 0x79e6f
	text "The ship departs"
	line "from OLIVINE CITY."

	para "But you knew that"
	line "already, <PLAY_G>."

	para "After all, you've"
	line "traveled all over"
	cont "with your #MON."

	para "Give my regards to"
	line "PROF.OAK in KANTO!"
	done
; 0x79f0b

UnknownText_0x79f0b: ; 0x79f0b
	text "È l'uovo #mon"
	line "che il professor"
	cont "Elm sta studiando."
	done
; 0x79f38

UnknownText_0x79f38: ; 0x79f38
	text "<PLAY_G>, questo"
	line "ti aiuterà nel tuo"
	cont "incarico."
	done
; 0x79f65

UnknownText_0x79f65: ; 0x79f65
	text "Qui siamo solo in"
	line "due, quindi siamo"
	cont "sempre molto occu-"
	cont "pati."
	done
; 0x79f95

UnknownText_0x79f95: ; 0x79f95
	text "Abbiamo sentito un"
	line "forte rumore veni-"
	cont "re da fuori<...>"

	para "Quando siamo anda-"
	line "ti a controllare,"
	cont "qualcuno ha rubato"
	cont "il #mon."

	para "È assurdo che"
	line "qualcuno l'abbia"
	cont "fatto davvero!"

	para "<...>sigh<...> Quel"
	line "#mon rubato<...>"

	para "Mi chiedo come se"
	line "la stia passando."

	para "Dicono che un"
	line "#mon allevato"

	para "da una cattiva"
	line "persona diventi"
	cont "cattivo a sua"
	cont "volta."
	done
; 0x7a078

UnknownText_0x7a078: ; 0x7a078
	text "<PLAY_G>!"

	para "Usa queste per il"
	line "tuo #dex!"
	done
; 0x7a09a

UnknownText_0x7a09a: ; 0x7a09a
	text "Queste sono un"
	line "po' meglio delle"
	cont "# Ball."

	para "Con queste é più"
	line "facile catturare i"
	cont "#mon."
	done
; 0x7a0f0

UnknownText_0x7a0f0: ; 0x7a0f0
	text "Ho sentito che qui"
	line "hanno rubato un"
	cont "#mon<...>"

	para "Il professor Elm"
	line "mi stava appunto"
	cont "informando dell'"
	cont "accaduto."

	para "Pare che il colpe-"
	line "vole sia stato un"
	cont "ragazzo dai lunghi"
	cont "capelli rossi<...>"

	para "Come?"

	para "È la descrizione"
	line "di un allenatore"
	cont "che hai sfidato"
	cont "poco fa?"

	para "Ti ha detto per"
	line "caso il suo nome?"
	done
; 0x7a1c0

UnknownText_0x7a1c0: ; 0x7a1c0
	text "OK! Allora si" 
	line "chiama <RIVAL>."

	para "Grazie per aver"
	line "dato una mano con"
	cont "le indagini!"
	done
; 0x7a1fd

UnknownText_0x7a1fd: ; 0x7a1fd
	text "La finestra é"
	line "aperta."

	para "Una piacevole"
	line "brezza soffia"
	cont "all'interno."
	done
; 0x7a231

UnknownText_0x7a231: ; 0x7a231
	text "È entrato da qui!"
	done
; 0x7a24c

UnknownText_0x7a24c: ; 0x7a24c
	text "<PLAYER> apre un"
	line "libro."

	para "Consiglio di"
	line "viaggio n.1:"

	para "Premi Start per"
	line "aprire il menu."
	done
; 0x7a28a

UnknownText_0x7a28a: ; 0x7a28a
	text "<PLAYER> apre un"
	line "libro."

	para "Consiglio di"
	line "viaggio n.2:"

	para "Salva la tua av-"
	line "ventura col tasto"
	cont "Salva."
	done
; 0x7a2c6

UnknownText_0x7a2c6: ; 0x7a2c6
	text "<PLAYER> apre un"
	line "libro."

	para "Consiglio di"
	line "viaggio n.3:"

	para "Apri il tuo zaino"
	line "e premi Select"
	cont "per spostare gli"
	cont "strumenti."
	done
; 0x7a315

UnknownText_0x7a315: ; 0x7a315
	text "<PLAYER> apre un"
	line "libro."

	para "Consiglio di"
	line "viaggio n.4:"

	para "Controlla le mosse"
	line "del tuo #mon."

	para "Premi il tasto A"
	line "per spostare le"
	cont "mosse."
	done
; 0x7a370

UnknownText_0x7a370: ; 0x7a370
	text "È la carta della"
	line "merendina che il"
	cont "professor Elm ha"
	cont "mangiato<...>"
	done
; 0x7a3a6

UnknownText_0x7a3a6: ; 0x7a3a6
	text "Osservazioni sulla"
	line "evoluzione #mon"

	para "<...>C'é scritto que-"
	line "sto sullo schermo<...>"

	para "Vuoi uscire dal"
	line "profilo del pro-"
	cont "fessor Elm e usare"
	cont "il PC?"
	done
; 0x7a3de
ElmsLabNoRoomText:
	text "Non hai abbastanza"
	line "spazio in squadra"
	cont "o nel box!"
	done

ElmsLab_MapEventHeader: ; 0x7a3de
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $b, $4, 1, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $b, $5, 1, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN

	; xy triggers
	db 8
	xy_trigger 1, $6, $4, $0, LabTryToLeaveScript, $0, $0
	xy_trigger 1, $6, $5, $0, LabTryToLeaveScript, $0, $0
	xy_trigger 3, $5, $4, $0, MeetCopScript, $0, $0
	xy_trigger 3, $5, $5, $0, UnknownScript_0x78f12, $0, $0
	xy_trigger 5, $8, $4, $0, UnknownScript_0x78e7f, $0, $0
	xy_trigger 5, $8, $5, $0, UnknownScript_0x78e8e, $0, $0
	xy_trigger 6, $8, $4, $0, UnknownScript_0x78ead, $0, $0
	xy_trigger 6, $8, $5, $0, UnknownScript_0x78ebc, $0, $0

	; signposts
	db 16
	signpost 1, 2, $0, MapElmsLabSignpost0Script
	signpost 1, 6, $0, MapElmsLabSignpost12Script
	signpost 1, 7, $0, MapElmsLabSignpost12Script
	signpost 1, 8, $0, MapElmsLabSignpost12Script
	signpost 1, 9, $0, MapElmsLabSignpost12Script
	signpost 7, 0, $0, MapElmsLabSignpost5Script
	signpost 7, 1, $0, MapElmsLabSignpost6Script
	signpost 7, 2, $0, MapElmsLabSignpost7Script
	signpost 7, 3, $0, MapElmsLabSignpost8Script
	signpost 7, 6, $0, MapElmsLabSignpost12Script
	signpost 7, 7, $0, MapElmsLabSignpost12Script
	signpost 7, 8, $0, MapElmsLabSignpost12Script
	signpost 7, 9, $0, MapElmsLabSignpost12Script
	signpost 3, 9, $0, MapElmsLabSignpost13Script
	signpost 0, 5, $0, MapElmsLabSignpost14Script
	signpost 5, 3, $2, MapElmsLabSignpost15Script

	; people-events
	db 6
	person_event SPRITE_ELM, 6, 9, $6, 0, 0, -1, -1, 0, 0, 0, ProfElmScript, -1
	person_event SPRITE_SCIENTIST, 13, 6, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	person_event SPRITE_POKE_BALL, 7, 10, $1, 0, 0, -1, -1, 0, 0, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL
	person_event SPRITE_POKE_BALL, 7, 11, $1, 0, 0, -1, -1, 0, 0, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL
	person_event SPRITE_POKE_BALL, 7, 12, $1, 0, 0, -1, -1, 0, 0, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL
	person_event SPRITE_OFFICER, 7, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CopScript, EVENT_OFFICER_IN_ELMS_LAB
; 0x7a4cc

