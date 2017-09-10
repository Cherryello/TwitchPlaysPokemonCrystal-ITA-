CeruleanMartRB_MapScriptHeader: ; 0x188abe
	; trigger count
	db 0

	; callback count
	db 0
; 0x188ac0

CeruleanMartRBClerk: ; 0x188ac0
	loadfont
	pokemart $0, $2a
	closetext
	end
; 0x188ac7

CeruleanMartRBCooltrainerMScript: ; 0x188ac7
	jumptextfaceplayer _CeruleanMartText2
; 0x188aca

CeruleanMartRBLassScript: ; 0x188aca
	jumptextfaceplayer _CeruleanMartText3
; 0x188acd

_CeruleanMartText2:
	text "Usa il Repellente"
	line "per allontanare"
	cont "insetti e #mon"
	cont "deboli."

	para "Metti il #mon"
	line "più forte al primo"
	cont "posto in squadra,"
	cont "così il Repellente"
	cont "avrà più effica-"
	cont "cia!"
	done

_CeruleanMartText3:
	text "Non hai mai usato"
	line "una Caramella"
	cont "Rara?"

	para "Dovrebbe far sali-"
	line "re di 1 il livello"
	cont "di un #mon!"
	
	para "Non la vendono nei"
	line "negozi però."
	done

CeruleanMartRB_MapEventHeader: ; 0x188b9b
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def $7, $3, 5, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, CeruleanMartRBClerk, -1
	person_event SPRITE_COOLTRAINER_M, 10, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CeruleanMartRBCooltrainerMScript, -1
	person_event SPRITE_LASS, 6, 11, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, CeruleanMartRBLassScript, -1
; 0x188bd2

