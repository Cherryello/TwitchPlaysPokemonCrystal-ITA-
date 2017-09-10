Route2946Gate_MapScriptHeader: ; 0x7b5b9
	; trigger count
	db 0

	; callback count
	db 0
; 0x7b5bb

OfficerScript_0x7b5bb: ; 0x7b5bb
	jumptextfaceplayer UnknownText_0x7b5c1
; 0x7b5be

YoungsterScript_0x7b5be: ; 0x7b5be
	jumptextfaceplayer UnknownText_0x7b60d
; 0x7b5c1

UnknownText_0x7b5c1: ; 0x7b5c1
	text "I dislivelli là"
	line "fuori non si pos-"
	cont "sono scalare."

	para "Ma se scendi, puoi"
	line "risparmiare molta"
	cont "strada."
	done
; 0x7b60d

UnknownText_0x7b60d: ; 0x7b60d
	text "Di qui passano"
	line "molti tipi di"
	cont "#mon."

	para "Se vuoi acchiap-"
	line "parli tutti, devi"
    cont "guardare ovunque."
	done
; 0x7b674

Route2946Gate_MapEventHeader: ; 0x7b674
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4, 1, GROUP_ROUTE_46, MAP_ROUTE_46
	warp_def $0, $5, 2, GROUP_ROUTE_46, MAP_ROUTE_46
	warp_def $7, $4, 1, GROUP_ROUTE_29, MAP_ROUTE_29
	warp_def $7, $5, 1, GROUP_ROUTE_29, MAP_ROUTE_29

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_OFFICER, 8, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, OfficerScript_0x7b5bb, -1
	person_event SPRITE_YOUNGSTER, 8, 10, $4, 1, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x7b5be, -1
; 0x7b6a8



