FuchsiaBillSpeechHouse_MapScriptHeader: ; 0x1963bb
	; trigger count
	db 0

	; callback count
	db 0
; 0x1963bd

PokefanFScript_0x1963bd: ; 0x1963bd
	jumptextfaceplayer UnknownText_0x1963c3
; 0x1963c0

YoungsterScript_0x1963c0: ; 0x1963c0
	jumptextfaceplayer UnknownText_0x1963f9
; 0x1963c3

UnknownText_0x1963c3: ; 0x1963c3
	text "My grandpa is at "
	line "my brother BILL's"
	cont "on CERULEAN CAPE."
	done
; 0x1963f9

UnknownText_0x1963f9: ; 0x1963f9
	text "I saw a swarm of"
	line "BEEDRILL on"
	cont "CYCLING ROAD."

	para "It was scary."
	done
; 0x196428

FuchsiaBillSpeechHouse_MapEventHeader: ; 0x196428
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 4, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY
	warp_def $7, $3, 4, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_POKEFAN_F, 7, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanFScript_0x1963bd, -1
	person_event SPRITE_YOUNGSTER, 8, 10, $4, 1, 0, -1, -1, 0, 0, 0, YoungsterScript_0x1963c0, -1
; 0x196452

