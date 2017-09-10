PewterSnoozeSpeechHouseRB_MapScriptHeader: ; 0x1a3057
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a3059

PewterSnoozeSpeechHouseRB_GrampsScript: ; 0x1a3059
	jumptextfaceplayer _PewterHouse2Text1
; 0x1a305c

PewterSnoozeSpeechHouseRB_BugCatcherScript:
	jumptextfaceplayer _PewterHouse2Text2

MapPewterSnoozeSpeechHouseRBSignpost1Script: ; 0x1a305c
	jumpstd picturebookshelf
; 0x1a305f

_PewterHouse2Text1:
	text "I #mon imparano"
	line "nuove tecniche"
	cont "crescendo!"

	para "Alcune però dovrà"
	line "insegnargliele"
	cont "l'allenatore!"
	done

_PewterHouse2Text2:
	text "Un #mon che ha"
	line "subito un problema"
	cont "di stato é più"
	cont "facile da cattu-"
	cont "rare."

	para "Sonno, paralisi,"
	line "avvelenamento o"
	cont "scottatura aumen-"
	cont "tano le probabi-"
	cont "lità di cattura."
	
	para "Non puoi tuttavia"
	line "averne la totale"
	cont "certezza."
	done

PewterSnoozeSpeechHouseRB_MapEventHeader: ; 0x1a308a
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def $7, $3, 5, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapPewterSnoozeSpeechHouseRBSignpost1Script
	signpost 1, 1, $0, MapPewterSnoozeSpeechHouseRBSignpost1Script

	; people-events
	db 2
	person_event SPRITE_GRAMPS, 7, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterSnoozeSpeechHouseRB_GrampsScript, -1
	person_event SPRITE_BUG_CATCHER, 9, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PewterSnoozeSpeechHouseRB_BugCatcherScript, -1
; 0x1a30b1



