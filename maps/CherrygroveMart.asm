CherrygroveMart_MapScriptHeader: ; 0x196808
	; trigger count
	db 0

	; callback count
	db 0
; 0x19680a

ClerkScript_0x19680a: ; 0x19680a
	loadfont
	pokemart $0, $0001
	closetext
	end
; 0x19681d

CooltrainerMScript_0x19681d: ; 0x19681d
	faceplayer
	loadfont
	;checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	;iftrue UnknownScript_0x19682b
	;writetext UnknownText_0x196834
	;waitbutton
	;closetext
	;end
; 0x19682b

UnknownScript_0x19682b: ; 0x19682b
	writetext UnknownText_0x196873
	waitbutton
	closetext
	end
; 0x196831

YoungsterScript_0x196831: ; 0x196831
	jumptextfaceplayer UnknownText_0x1968a0
; 0x196834

UnknownText_0x196834: ; 0x196834
	text "Hanno finito le"
	line "# Ball!"

	para "Quando ne ordine-"
	line "ranno delle altre?"
	done
; 0x196873

UnknownText_0x196873: ; 0x196873
	text "Sono arrivate le"
	line "# Ball! Ora"
	cont "posso catturare"
	cont "dei #mon!"
	done
; 0x1968a0

UnknownText_0x1968a0: ; 0x1968a0
	text "Quando stavo cam-"
	line "minando nell'erba"

	para "alta, un #mon"
	line "ha avvelenato un"
	cont "mio #mon!"

	para "È stato terribile<...>"
	line "Il mio #mon si"
	cont "é indebolito sem-"
	cont "pre di più!"

	para "Dovresti sempre"
	line "avere un antidoto"
	cont "a portata di mano."
	done
; 0x196934

CherrygroveMart_MapEventHeader: ; 0x196934
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $3, 1, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, ClerkScript_0x19680a, -1
	person_event SPRITE_COOLTRAINER_M, 10, 11, $5, 0, 2, -1, -1, 0, 0, 0, CooltrainerMScript_0x19681d, -1
	person_event SPRITE_YOUNGSTER, 9, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x196831, -1
; 0x19696b

