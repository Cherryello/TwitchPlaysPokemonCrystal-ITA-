CherrygroveGymSpeechHouse_MapScriptHeader: ; 0x196adf
	; trigger count
	db 0

	; callback count
	db 0
; 0x196ae1

PokefanMScript_0x196ae1: ; 0x196ae1
	jumptextfaceplayer UnknownText_0x196aea
; 0x196ae4

BugCatcherScript_0x196ae4: ; 0x196ae4
	jumptextfaceplayer UnknownText_0x196b65
; 0x196ae7

MapCherrygroveGymSpeechHouseSignpost1Script: ; 0x196ae7
	jumpstd picturebookshelf
; 0x196aea

UnknownText_0x196aea: ; 0x196aea
	text "Vuoi testare le"
	line "tue abilità come"

	para "allenatore di"
	line "#mon?"

	para "Allora sfida le"
	line "Palestre #mon"

	para "della regione di"
	line "Johto per vincere"
	cont "le medaglie!"
	done
; 0x196b65

UnknownText_0x196b65: ; 0x196b65
	text "Da grande divente-"
	line "rò capopalestra!"

	para "Faccio lottare i"
	line "miei #mon con"

	para "quelli dei miei"
	line "amici per rinfor-"
	cont "zarli."
	done
; 0x196bd1

CherrygroveGymSpeechHouse_MapEventHeader: ; 0x196bd1
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $3, 3, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapCherrygroveGymSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapCherrygroveGymSpeechHouseSignpost1Script

	; people-events
	db 2
	person_event SPRITE_POKEFAN_M, 7, 6, $6, 0, 0, -1, -1, 0, 0, 0, PokefanMScript_0x196ae1, -1
	person_event SPRITE_BUG_CATCHER, 9, 9, $5, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, BugCatcherScript_0x196ae4, -1
; 0x196c05

