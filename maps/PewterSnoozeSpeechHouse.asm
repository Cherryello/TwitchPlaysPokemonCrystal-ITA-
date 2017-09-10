PewterSnoozeSpeechHouse_MapScriptHeader: ; 0x1a3057
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a3059

GrampsScript_0x1a3059: ; 0x1a3059
	jumptextfaceplayer UnknownText_0x1a305f
; 0x1a305c

MapPewterSnoozeSpeechHouseSignpost1Script: ; 0x1a305c
	jumpstd picturebookshelf
; 0x1a305f

UnknownText_0x1a305f: ; 0x1a305f
	text "I like snoozing"
	line "with the radio on<...>"
	cont "<...>Zzzz<...>"
	done
; 0x1a308a

PewterSnoozeSpeechHouse_MapEventHeader: ; 0x1a308a
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_PEWTER_CITY, MAP_PEWTER_CITY
	warp_def $7, $3, 5, GROUP_PEWTER_CITY, MAP_PEWTER_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapPewterSnoozeSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapPewterSnoozeSpeechHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_GRAMPS, 7, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrampsScript_0x1a3059, -1
; 0x1a30b1



