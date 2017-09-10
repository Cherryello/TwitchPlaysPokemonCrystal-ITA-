OlivinePort_MapScriptHeader: ; 0x748a2
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x748ac, $0000
	dw UnknownScript_0x748ad, $0000

	; callback count
	db 0
; 0x748ac

UnknownScript_0x748ac: ; 0x748ac
	end
; 0x748ad

UnknownScript_0x748ad: ; 0x748ad
	priorityjump UnknownScript_0x748b1
	end
; 0x748b1

UnknownScript_0x748b1: ; 0x748b1
	applymovement $0, MovementData_0x74a32
	appear $2
	dotrigger $0
	setevent EVENT_000_STD
	blackoutmod GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	end
; 0x748c0

SailorScript_0x748c0: ; 0x748c0
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x74919
	writetext UnknownText_0x74a55
	waitbutton
	closetext
	spriteface $2, $0
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear $2
	waitsfx
	applymovement $0, MovementData_0x74a30
	playsound SFX_EXIT_BUILDING
	special Function8c084
	waitsfx
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse UnknownScript_0x7490a
	clearevent EVENT_FAST_SHIP_POPULATION_2
	setevent EVENT_FAST_SHIP_POPULATION_3
	clearevent EVENT_BEAT_COOLTRAINERM_SEAN
	clearevent EVENT_BEAT_COOLTRAINERF_CAROL
	clearevent EVENT_BEAT_GENTLEMAN_EDWARD
	clearevent EVENT_BEAT_BEAUTY_CASSIE
	clearevent EVENT_BEAT_PSYCHIC_RODNEY
	clearevent EVENT_BEAT_SUPER_NERD_SHAWN
	clearevent EVENT_BEAT_SAILOR_GARRETT
	clearevent EVENT_BEAT_FISHER_JONAH
	clearevent EVENT_BEAT_BLACKBELT_WAI
UnknownScript_0x7490a: ; 0x7490a
	clearevent EVENT_FAST_SHIP_WESTBOUND
	appear $2
	domaptrigger GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $1
	warp GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $19, $1
	end
; 0x74919

UnknownScript_0x74919: ; 0x74919
	writetext UnknownText_0x74a80
	waitbutton
	closetext
	end
; 0x7491f

UnknownScript_0x7491f: ; 0x7491f
	spriteface $4, $3
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x7498b
	checkevent EVENT_001_STD
	iftrue UnknownScript_0x7498b
	spriteface $0, $2
	loadfont
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse UnknownScript_0x7494e
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, UnknownScript_0x74977
	if_equal SATURDAY, UnknownScript_0x74977
	if_equal TUESDAY, UnknownScript_0x74981
	if_equal WEDNESDAY, UnknownScript_0x74981
	if_equal THURSDAY, UnknownScript_0x74981
UnknownScript_0x7494e: ; 0x7494e
	writetext UnknownText_0x74a9c
	yesorno
	iffalse UnknownScript_0x74992
	writetext UnknownText_0x74ada
	buttonsound
	checkitem S_S_TICKET
	iffalse UnknownScript_0x7496d
	writetext UnknownText_0x74b11
	waitbutton
	closetext
	setevent EVENT_001_STD
	applymovement $0, MovementData_0x74a37
	jump SailorScript_0x748c0
; 0x7496d

UnknownScript_0x7496d: ; 0x7496d
	writetext UnknownText_0x74b41
	waitbutton
	closetext
	applymovement $0, MovementData_0x74a34
	end
; 0x74977

UnknownScript_0x74977: ; 0x74977
	writetext UnknownText_0x74ba8
	waitbutton
	closetext
	applymovement $0, MovementData_0x74a34
	end
; 0x74981

UnknownScript_0x74981: ; 0x74981
	writetext UnknownText_0x74bce
	waitbutton
	closetext
	applymovement $0, MovementData_0x74a34
	end
; 0x7498b

UnknownScript_0x7498b: ; 0x7498b
	end
; 0x7498c

UnknownScript_0x7498c: ; 0x7498c
	writetext UnknownText_0x74af6
	waitbutton
	closetext
	end
; 0x74992

UnknownScript_0x74992: ; 0x74992
	writetext UnknownText_0x74af6
	waitbutton
	closetext
	applymovement $0, MovementData_0x74a34
	end
; 0x7499c

SailorScript_0x7499c: ; 0x7499c
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue UnknownScript_0x74919
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse UnknownScript_0x749c0
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, UnknownScript_0x749f2
	if_equal SATURDAY, UnknownScript_0x749f2
	if_equal TUESDAY, UnknownScript_0x749f8
	if_equal WEDNESDAY, UnknownScript_0x749f8
	if_equal THURSDAY, UnknownScript_0x749f8
UnknownScript_0x749c0: ; 0x749c0
	writetext UnknownText_0x74a9c
	yesorno
	iffalse UnknownScript_0x7498c
	writetext UnknownText_0x74ada
	buttonsound
	checkitem S_S_TICKET
	iffalse UnknownScript_0x749ec
	writetext UnknownText_0x74b11
	waitbutton
	closetext
	setevent EVENT_001_STD
	checkcode VAR_FACING
	if_equal $3, UnknownScript_0x749e5
	applymovement $0, MovementData_0x74a3f
	jump SailorScript_0x748c0
; 0x749e5

UnknownScript_0x749e5: ; 0x749e5
	applymovement $0, MovementData_0x74a49
	jump SailorScript_0x748c0
; 0x749ec

UnknownScript_0x749ec: ; 0x749ec
	writetext UnknownText_0x74b41
	waitbutton
	closetext
	end
; 0x749f2

UnknownScript_0x749f2: ; 0x749f2
	writetext UnknownText_0x74ba8
	waitbutton
	closetext
	end
; 0x749f8

UnknownScript_0x749f8: ; 0x749f8
	writetext UnknownText_0x74bce
	waitbutton
	closetext
	end
; 0x749fe

SailorScript_0x749fe: ; 0x749fe
	jumptextfaceplayer UnknownText_0x74cd7
; 0x74a01

FishingGuruScript_0x74a01: ; 0x74a01
	faceplayer
	loadfont
	writetext UnknownText_0x74bf4
	waitbutton
	closetext
	spriteface $5, $1
	end
; 0x74a0c

FishingGuruScript_0x74a0c: ; 0x74a0c
	faceplayer
	loadfont
	writetext UnknownText_0x74c35
	waitbutton
	closetext
	spriteface $6, $1
	end
; 0x74a17

YoungsterScript_0x74a17: ; 0x74a17
	faceplayer
	loadfont
	writetext UnknownText_0x74c76
	waitbutton
	closetext
	spriteface $7, $0
	end
; 0x74a22

CooltrainerFScript_0x74a22: ; 0x74a22
	faceplayer
	loadfont
	writetext UnknownText_0x74ca2
	waitbutton
	closetext
	spriteface $8, $0
	end
; 0x74a2d

MapOlivinePortSignpostItem0: ; 0x74a2d
	dw $00ea
	db PROTEIN

; 0x74a30

MovementData_0x74a30: ; 0x74a30
	step_down
	step_end
; 0x74a32

MovementData_0x74a32: ; 0x74a32
	step_up
	step_end
; 0x74a34

MovementData_0x74a34: ; 0x74a34
	step_right
	turn_head_left
	step_end
; 0x74a37

MovementData_0x74a37: ; 0x74a37
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x74a3f

MovementData_0x74a3f: ; 0x74a3f
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x74a49

MovementData_0x74a49: ; 0x74a49
	step_up
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x74a55

UnknownText_0x74a55: ; 0x74a55
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done
; 0x74a80

UnknownText_0x74a80: ; 0x74a80
	text "Sorry. You can't"
	line "board now."
	done
; 0x74a9c

UnknownText_0x74a9c: ; 0x74a9c
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done
; 0x74ada

UnknownText_0x74ada: ; 0x74ada
	text "May I see your"
	line "S.S.TICKET?"
	done
; 0x74af6

UnknownText_0x74af6: ; 0x74af6
	text "We hope to see you"
	line "again!"
	done
; 0x74b11

UnknownText_0x74b11: ; 0x74b11
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "That's it."
	line "Thank you!"
	done
; 0x74b41

UnknownText_0x74b41: ; 0x74b41
	text "<PLAYER> tried to"
	line "show the S.S."
	cont "TICKET<...>"

	para "<...>But no TICKET!"

	para "Sorry!"
	line "You may board only"

	para "if you have an"
	line "S.S.TICKET."
	done
; 0x74ba8

UnknownText_0x74ba8: ; 0x74ba8
	text "The FAST SHIP will"
	line "sail next Monday."
	done
; 0x74bce

UnknownText_0x74bce: ; 0x74bce
	text "The FAST SHIP will"
	line "sail next Friday."
	done
; 0x74bf4

UnknownText_0x74bf4: ; 0x74bf4
	text "CHINCHOU are easy"
	line "to catch here."

	para "They're kind of"
	line "rare elsewhere."
	done
; 0x74c35

UnknownText_0x74c35: ; 0x74c35
	text "How many RODS do"
	line "you have?"

	para "Different RODS"
	line "catch different"
	cont "#MON."
	done
; 0x74c76

UnknownText_0x74c76: ; 0x74c76
	text "S.S.AQUA uses jets"
	line "to skim over the"
	cont "waves!"
	done
; 0x74ca2

UnknownText_0x74ca2: ; 0x74ca2
	text "There are lots of"
	line "#MON in KANTO."

	para "I wish I could go<...>"
	done
; 0x74cd7

UnknownText_0x74cd7: ; 0x74cd7
	text "We don't want you"
	line "to fall into the"

	para "sea, so you're not"
	line "allowed in."
	done
; 0x74d18

OlivinePort_MapEventHeader: ; 0x74d18
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $b, 5, GROUP_OLIVINE_PORT_PASSAGE, MAP_OLIVINE_PORT_PASSAGE
	warp_def $17, $7, 1, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 1
	xy_trigger 0, $f, $7, $0, UnknownScript_0x7491f, $0, $0

	; signposts
	db 1
	signpost 22, 1, $7, MapOlivinePortSignpostItem0

	; people-events
	db 7
	person_event SPRITE_SAILOR, 27, 11, $7, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x748c0, EVENT_SAILOR_IN_OLIVINE_PORT
	person_event SPRITE_SAILOR, 19, 11, $7, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x749fe, EVENT_OLIVINE_PORT_NO_SERVICE_CROWD
	person_event SPRITE_SAILOR, 19, 10, $9, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x7499c, EVENT_OLIVINE_PORT_IN_SERVICE_CROWD
	person_event SPRITE_FISHING_GURU, 18, 8, $7, 0, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x74a01, EVENT_OLIVINE_PORT_NO_SERVICE_CROWD
	person_event SPRITE_FISHING_GURU, 18, 17, $7, 0, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x74a0c, EVENT_OLIVINE_PORT_NO_SERVICE_CROWD
	person_event SPRITE_YOUNGSTER, 19, 8, $6, 0, 0, -1, -1, 0, 0, 0, YoungsterScript_0x74a17, EVENT_OLIVINE_PORT_IN_SERVICE_CROWD
	person_event SPRITE_COOLTRAINER_F, 19, 15, $6, 0, 0, -1, -1, 0, 0, 0, CooltrainerFScript_0x74a22, EVENT_OLIVINE_PORT_IN_SERVICE_CROWD
; 0x74d90

