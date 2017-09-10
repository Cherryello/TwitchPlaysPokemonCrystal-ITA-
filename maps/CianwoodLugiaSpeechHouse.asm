CianwoodLugiaSpeechHouse_MapScriptHeader: ; 0x9e1ae
	; trigger count
	db 0

	; callback count
	db 0
; 0x9e1b0

TeacherScript_0x9e1b0: ; 0x9e1b0
	jumptextfaceplayer UnknownText_0x9e1bc
; 0x9e1b3

LassScript_0x9e1b3: ; 0x9e1b3
	jumptextfaceplayer UnknownText_0x9e23f
; 0x9e1b6

TwinScript_0x9e1b6: ; 0x9e1b6
	jumptextfaceplayer UnknownText_0x9e2a9
; 0x9e1b9

MapCianwoodLugiaSpeechHouseSignpost1Script: ; 0x9e1b9
	jumpstd picturebookshelf
; 0x9e1bc

UnknownText_0x9e1bc: ; 0x9e1bc
	text "You came from"
	line "OLIVINE?"

	para "Do you remember"
	line "the four islands"
	cont "along the way?"

	para "I heard that a "
	line "mythical sea crea-"
	cont "ture is hiding in"
	cont "them."
	done
; 0x9e23f

UnknownText_0x9e23f: ; 0x9e23f
	text "I heard that you"
	line "can only see it if"

	para "you have a SILVER"
	line "WING."

	para "It must have the"
	line "same scent as the"
	cont "creature."
	done
; 0x9e2a9

UnknownText_0x9e2a9: ; 0x9e2a9
	text "I've heard that"
	line "the whirlpools"

	para "around the islands"
	line "are caused by the"
	cont "sea creature."

	para "You might need a"
	line "special move to"
	cont "get past them."
	done
; 0x9e32b

CianwoodLugiaSpeechHouse_MapEventHeader: ; 0x9e32b
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 6, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $3, 6, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapCianwoodLugiaSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapCianwoodLugiaSpeechHouseSignpost1Script

	; people-events
	db 3
	person_event SPRITE_TEACHER, 8, 6, $6, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x9e1b0, -1
	person_event SPRITE_LASS, 9, 10, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x9e1b3, -1
	person_event SPRITE_TWIN, 6, 4, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TwinScript_0x9e1b6, -1
; 0x9e36c

