VioletMart_MapScriptHeader: ; 0x68293
	; trigger count
	db 0

	; callback count
	db 0
; 0x68295

ClerkScript_0x68295: ; 0x68295
	loadfont
	pokemart $0, $0002
	closetext
	end
; 0x6829c

GrannyScript_0x6829c: ; 0x6829c
	jumptextfaceplayer UnknownText_0x682a2
; 0x6829f

CooltrainerMScript_0x6829f: ; 0x6829f
	jumptextfaceplayer UnknownText_0x68323
; 0x682a2

UnknownText_0x682a2: ; 0x682a2
	text "Appena catturi un"
	line "#mon, questo"
	cont "potrebbe essere"
	cont "debole."

	para "Ma se trattato con"
	line "cura, potrebbe"
	cont "diventare forte."

	para "È essenziale trat-"
	line "tare i #mon con"
	cont "amore."
	done
; 0x68323

UnknownText_0x68323: ; 0x68323
	text "I #mon possono"
	line "tenere strumenti,"
	cont "come una Pozione o"
	cont "un Antidoto."

	para "Ma non hanno idea"
	line "di come utilizzare"
    cont "oggetti creati"
	cont "dall'essere umano."
	done
; 0x68389

VioletMart_MapEventHeader: ; 0x68389
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $7, $3, 1, GROUP_VIOLET_CITY, MAP_VIOLET_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x68295, -1
	person_event SPRITE_GRANNY, 10, 11, $5, 0, 1, -1, -1, 0, 0, 0, GrannyScript_0x6829c, -1
	person_event SPRITE_COOLTRAINER_M, 6, 9, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerMScript_0x6829f, -1
; 0x683c0

