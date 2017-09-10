Route36RuinsofAlphgate_MapScriptHeader: ; 0x6aa18
	; trigger count
	db 0

	; callback count
	db 0
; 0x6aa1a

OfficerScript_0x6aa1a: ; 0x6aa1a
	jumptextfaceplayer UnknownText_0x6aa20
; 0x6aa1d

GrampsScript_0x6aa1d: ; 0x6aa1d
	jumptextfaceplayer UnknownText_0x6aa5b
; 0x6aa20

UnknownText_0x6aa20: ; 0x6aa20
	text "Non ti chiedi chi"
	line "abbia mai potuto"
	cont "costruire una cosa"
	cont "come questa, e"
	cont "perché?"
	done
; 0x6aa5b

UnknownText_0x6aa5b: ; 0x6aa5b
	text "Non hai visto"
	line "quello strano"
	cont "albero sulla"
	cont "strada?"

	para "Potrebbe essere il"
	line "motivo per cui sta"

	para "venendo poca gente"
	line "a visitare le"
	cont "Rovine d'Alfa."
	done
; 0x6aac9

Route36RuinsofAlphgate_MapEventHeader: ; 0x6aac9
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4, 3, GROUP_ROUTE_36, MAP_ROUTE_36
	warp_def $0, $5, 4, GROUP_ROUTE_36, MAP_ROUTE_36
	warp_def $7, $4, 9, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $7, $5, 9, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_OFFICER, 8, 4, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, OfficerScript_0x6aa1a, -1
	person_event SPRITE_GRAMPS, 9, 11, $2, 2, 1, -1, -1, 8 + PAL_OW_BROWN, 0, 0, GrampsScript_0x6aa1d, -1
; 0x6aafd

