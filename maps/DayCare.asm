DayCare_MapScriptHeader: ; 0x62f76
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x62f7b
; 0x62f7b

UnknownScript_0x62f7b: ; 0x62f7b
	checkflag ENGINE_DAYCARE_MONS_ARE_COMPATIBLE
	iftrue UnknownScript_0x62f88
	clearevent EVENT_DAYCARE_MAN_INSIDE
	setevent EVENT_DAYCARE_MAN_OUTSIDE
	return
; 0x62f88

UnknownScript_0x62f88: ; 0x62f88
	setevent EVENT_DAYCARE_MAN_INSIDE
	clearevent EVENT_DAYCARE_MAN_OUTSIDE
	return
; 0x62f8f

GrampsScript_0x62f8f: ; 0x62f8f
	faceplayer
	loadfont
	checkevent EVENT_GOT_ODD_EGG
	iftrue UnknownScript_0x62fbd
	writetext UnknownText_0x630ce
	buttonsound
	checkcode VAR_PARTYCOUNT
	if_equal $6, UnknownScript_0x62fb6
	special Function117656
	loadfont
	writetext UnknownText_0x631ae
	playsound SFX_KEY_ITEM
	waitsfx
	writetext UnknownText_0x631c3
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end
; 0x62fb6

UnknownScript_0x62fb6: ; 0x62fb6
	loadfont
	writetext UnknownText_0x63237
	waitbutton
	closetext
	end
; 0x62fbd

UnknownScript_0x62fbd: ; 0x62fbd
	special Function166d6
	waitbutton
	closetext
	end
; 0x62fc3

GrannyScript_0x62fc3: ; 0x62fc3
	faceplayer
	loadfont
	checkflag ENGINE_DAYCARE_MONS_ARE_COMPATIBLE
	iftrue UnknownScript_0x62fd1
	special Function1672a
	waitbutton
	closetext
	end
; 0x62fd1

UnknownScript_0x62fd1: ; 0x62fd1
	writetext UnknownText_0x62fda
	waitbutton
	closetext
	end
; 0x62fd7

MapDayCareSignpost1Script: ; 0x62fd7
	jumpstd difficultbookshelf
; 0x62fda

UnknownText_0x62fda: ; 0x62fda
	text "Mio marito ti"
	line "cercava."
	done
; 0x62ff7

;UnknownText_0x62ff7: ; 0x62ff7
;	text "I'm the DAY-CARE"
;	line "MAN."

;	para "There's something"
;	line "new in GOLDENROD"

;	para "called the TRADE"
;	line "CORNER."

;	para "I was given an EGG"
;	line "TICKET that can be"

;	para "traded in for a"
;	line "ODD EGG."

;	para "But since we run a"
;	line "DAY-CARE, we don't"

	;para "need it. You may"
	;line "as well have it."
;	done
; 0x630ce

UnknownText_0x630ce: ; 0x630ce
	text "Sono l'anziano"
	line "della pensione."

	para "Hai mai sentito"
	line "parlare delle"
	cont "uova #mon?"

	para "Stavo allevando"
	line "dei #mon con"
	cont "mia moglie, come"
    cont "al solito."

	para "Ci impressionammo"
	line "moltissimo quando"
	cont "trovammo un uovo!"

	para "È incredibile,"
	line "vero?"

	para "Beh, che dici, ti"
	line "piacerebbe averlo"
	cont "tutto per te?"

	para "Bene allora, trat-"
	line "talo con cura!"
	done
; 0x631a1

UnknownText_0x631a1: ; 0x631a1
	text "Torna quando vuoi."
	done
; 0x631ae

UnknownText_0x631ae: ; 0x631ae
	text "<PLAYER> riceve"
	line "lo strano uovo!"
	done
; 0x631c3

UnknownText_0x631c3: ; 0x631c3
	text "L'ho trovato"
	line "mentre mi stavo"

	para "prendendo cura"
	line "dei #mon di"
	cont "un allenatore."

	para "Ma quell'allenato-"
	line "re non voleva"
	cont "l'uovo, quindi"
	cont "ho dovuto tenerlo"
	cont "con me."
	done
; 0x63237

UnknownText_0x63237: ; 0x63237
	text "Non hai spazio"
	line "in squadra."
	done
; 0x63250

DayCare_MapEventHeader: ; 0x63250
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $5, $0, 3, GROUP_ROUTE_34, MAP_ROUTE_34
	warp_def $6, $0, 4, GROUP_ROUTE_34, MAP_ROUTE_34
	warp_def $7, $2, 5, GROUP_ROUTE_34, MAP_ROUTE_34
	warp_def $7, $3, 5, GROUP_ROUTE_34, MAP_ROUTE_34

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapDayCareSignpost1Script
	signpost 1, 1, $0, MapDayCareSignpost1Script

	; people-events
	db 2
	person_event SPRITE_GRAMPS, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x62f8f, EVENT_DAYCARE_MAN_INSIDE
	person_event SPRITE_GRANNY, 7, 9, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GrannyScript_0x62fc3, -1
; 0x6328e


