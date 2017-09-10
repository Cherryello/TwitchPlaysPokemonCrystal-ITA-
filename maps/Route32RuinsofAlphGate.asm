Route32RuinsofAlphGate_MapScriptHeader: ; 0x69a2b
	; trigger count
	db 0

	; callback count
	db 0
; 0x69a2d

OfficerScript_0x69a2d: ; 0x69a2d
	jumptextfaceplayer UnknownText_0x69a36
; 0x69a30

PokefanMScript_0x69a30: ; 0x69a30
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	jumptextfaceplayer UnknownText_0x69a81
	
.Female
	jumptextfaceplayer UnknownText_0x69a81F
; 0x69a33

YoungsterScript_0x69a33: ; 0x69a33
	jumptextfaceplayer UnknownText_0x69abd
; 0x69a36

UnknownText_0x69a36: ; 0x69a36
	text "Rovine d'Alfa"

	para "Un interattivo"
	line "sito turistico"

	para "Prova a spostare i"
	line "pannelli di"
	cont "pietra!"
	done
; 0x69a81

UnknownText_0x69a81: ; 0x69a81
	text "Stai studiando le"
	line "Rovine?"

	para "Ti vedo già come"
	line "futuro archeologo."
	done
; 0x69abd

UnknownText_0x69a81F:
	text "Stai studiando le"
	line "Rovine?"

	para "Ti vedo già come"
	line "futura archeologa."
	done

UnknownText_0x69abd: ; 0x69abd
	text "Ci sono dei pan-"
	line "nelli di pietra."

	para "Ho provato a"
	line "spostarli<...>"
	cont "Mi chiedo cosa"
	cont "significhino."
	done
; 0x69b0f

Route32RuinsofAlphGate_MapEventHeader: ; 0x69b0f
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $0, 10, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $5, $0, 11, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $4, $9, 2, GROUP_ROUTE_32, MAP_ROUTE_32
	warp_def $5, $9, 3, GROUP_ROUTE_32, MAP_ROUTE_32

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_OFFICER, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, OfficerScript_0x69a2d, -1
	person_event SPRITE_POKEFAN_M, 6, 12, $4, 1, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PokefanMScript_0x69a30, -1
	person_event SPRITE_YOUNGSTER, 10, 5, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x69a33, -1
; 0x69b50

