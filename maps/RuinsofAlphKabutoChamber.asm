RuinsofAlphKabutoChamber_MapScriptHeader: ; 0x5871e
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x5872b, $0000
	dw UnknownScript_0x58736, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x58737
; 0x5872b

UnknownScript_0x5872b: ; 0x5872b
	checkevent EVENT_WALL_OPENED_IN_KABUTO_CHAMBER
	iftrue UnknownScript_0x58732
	end
; 0x58732

UnknownScript_0x58732: ; 0x58732
	priorityjump UnknownScript_0x58751
; 0x58735

UnknownScript_0x58735: ; 0x58735
	end
; 0x58736

UnknownScript_0x58736: ; 0x58736
	end
; 0x58737

UnknownScript_0x58737: ; 0x58737
	checkevent EVENT_WALL_OPENED_IN_KABUTO_CHAMBER
	iftrue UnknownScript_0x58741
	changeblock $4, $0, $2e
UnknownScript_0x58741: ; 0x58741
	checkevent EVENT_RUINS_OF_ALPH_KABUTO_CHAMBER_2A1 ; LORD DOME
	iffalse UnknownScript_0x58748
	return
; 0x58748

UnknownScript_0x58748: ; 0x58748
	changeblock $2, $2, $1
	changeblock $4, $2, $2
	return
; 0x58751

UnknownScript_0x58751: ; 0x58751
	pause 30
	earthquake 30
	showemote $0, $0, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock $4, $0, $30
	reloadmappart
	earthquake 50
	dotrigger $1
	closetext
	end
; 0x58769

ReceptionistScript_0x58769: ; 0x58769
	jumptextfaceplayer UnknownText_0x58800
; 0x5876c

MapRuinsofAlphKabutoChamberSignpost2Script: ; 0x5876c
	refreshscreen $0
	writebyte $0
	special Functionc360
	closetext
	iftrue UnknownScript_0x58778
	end
; 0x58778

UnknownScript_0x58778: ; 0x58778
	setevent EVENT_RESEARCHERS_ETC_IN_KABUTO_CHAMBER
	setevent EVENT_RUINS_OF_ALPH_KABUTO_CHAMBER_2A1 ; LORD DOME
	setflag ENGINE_UNLOCKED_UNOWNS_1
	setevent EVENT_KABUTO_CHAMBER_RECEPTIONIST
	domaptrigger GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER, $1
	earthquake 30
	showemote $0, $0, 15
	changeblock $2, $2, $18
	changeblock $4, $2, $19
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement $0, MovementData_0x587fe
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end
; 0x587a8

ScientistScript_0x587a8: ; 0x587a8
	faceplayer
	loadfont
	checkcode VAR_UNOWNCOUNT
	if_equal 26, UnknownScript_0x587cf
	checkevent EVENT_WALL_OPENED_IN_KABUTO_CHAMBER
	iftrue UnknownScript_0x587c9
	checkevent EVENT_RUINS_OF_ALPH_KABUTO_CHAMBER_2A1 ; LORD DOME
	iffalse UnknownScript_0x587c0
	writetext UnknownText_0x589b8
	buttonsound
UnknownScript_0x587c0: ; 0x587c0
	writetext UnknownText_0x588f5
	waitbutton
	closetext
	spriteface $3, $1
	end
; 0x587c9

UnknownScript_0x587c9: ; 0x587c9
	writetext UnknownText_0x5897c
	waitbutton
	closetext
	end
; 0x587cf

UnknownScript_0x587cf: ; 0x587cf
	writetext UnknownText_0x594cb
	waitbutton
	closetext
	end
; 0x587d5

MapRuinsofAlphKabutoChamberSignpost1Script: ; 0x587d5
	jumptext UnknownText_0x58b1a
; 0x587d8

MapRuinsofAlphKabutoChamberSignpost3Script: ; 0x587d8
	jumptext UnknownText_0x58b3f
; 0x587db

MapRuinsofAlphKabutoChamberSignpost4Script: ; 0x587db
	loadfont
	writetext UnknownText_0x58aa7
	writebyte $0
	special Function8ae68
	closetext
	end
; 0x587e6

MapRuinsofAlphKabutoChamberSignpost5Script: ; 0x587e6
	checkevent EVENT_WALL_OPENED_IN_KABUTO_CHAMBER
	iftrue UnknownScript_0x587f7
	loadfont
	writetext UnknownText_0x58ad9
	writebyte $0
	special Function8ae68
	closetext
	end
; 0x587f7

UnknownScript_0x587f7: ; 0x587f7
	loadfont
	writetext UnknownText_0x58afa
	waitbutton
	closetext
	end
; 0x587fe

MovementData_0x587fe: ; 0x587fe
	db $59 ; movement
	step_end
; 0x58800

UnknownText_0x58800: ; 0x58800
	text "Ti do il benvenuto"
	line "in questa grotta."

	para "Questi pannelli"
	line "mobili formano un"

	para "#mon disegnato"
	line "in tempi antichi."

	para "Spostando i"
	line "pannelli, formerai"
	cont "un'immagine."

	para "A destra vi é la"
	line "descrizione del"
	cont "#mon."

	para "Qui dietro, degli"
	line "scienziati stanno"

	para "esaminando dei"
	line "simboli che sono"
	cont "stati appena"
	cont "scoperti."
	done
; 0x588f5

UnknownText_0x588f5: ; 0x588f5
	text "Recentemente sono"
	line "apparsi questi"
	cont "simboli indecifra-"
	cont "bili."

	para "È strano. Fino a"
	line "poco tempo fa qui"
	cont "non c'era nulla<...>"

	para "Da' un'occhiata"
	line "alla parete."
	done
; 0x5897c

UnknownText_0x5897c: ; 0x5897c
	text "Ah! Ecco un'altra"
	line "apertura!"

	para "Ci si può entrare!"
	done
; 0x589b8

UnknownText_0x589b8: ; 0x589b8
	text "That tremor was"
	line "pretty scary!"

	para "But I'm more"
	line "concerned about"
	cont "this wall here<...>"
	done
; 0x58a03

; possibly unused
UnknownText_0x58a03: ; 0x58a03
	text "The patterns on"
	line "the wall appear to"
	cont "be words!"

	para "And those sliding"
	line "stone panels seem"

	para "to be signals of"
	line "some kind."

	para "I think they make"
	line "#MON appear,"

	para "but it's not clear"
	line "yet<...>"
	done
; 0x58aa7

UnknownText_0x58aa7: ; 0x58aa7
	text "Sono apparsi dei"
	line "simboli sulla"
	cont "parete<...>"
	done
; 0x58ac8

; possibly unused
UnknownText_0x58ac8: ; 0x58ac8
	text "È testo Unown!"
	done
; 0x58ad9

UnknownText_0x58ad9: ; 0x58ad9
	text "Sono apparsi dei"
	line "simboli sulla"
	cont "parete<...>"
	done
; 0x58afa

UnknownText_0x58afa: ; 0x58afa
	text "C'é una grossa"
	line "apertura nel muro!"
	done
; 0x58b1a

UnknownText_0x58b1a: ; 0x58b1a
	text "È il disegno di"
	line "un antico #mon."
	done
; 0x58b3f

UnknownText_0x58b3f: ; 0x58b3f
	text "Un #mon che"
	line "viveva sul fondo"
	cont "del mare. Con gli"

	para "occhi sul dorso si"
	line "guardava attorno."
	done
; 0x58b85

RuinsofAlphKabutoChamber_MapEventHeader: ; 0x58b85
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $9, $3, 2, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $9, $4, 2, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $3, $3, 4, GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $3, $4, 5, GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $0, $4, 1, GROUP_RUINS_OF_ALPH_KABUTO_ITEM_ROOM, MAP_RUINS_OF_ALPH_KABUTO_ITEM_ROOM

	; xy triggers
	db 0

	; signposts
	db 6
	signpost 3, 2, $0, MapRuinsofAlphKabutoChamberSignpost1Script
	signpost 3, 5, $0, MapRuinsofAlphKabutoChamberSignpost1Script
	signpost 2, 3, $1, MapRuinsofAlphKabutoChamberSignpost2Script
	signpost 2, 4, $1, MapRuinsofAlphKabutoChamberSignpost3Script
	signpost 0, 3, $1, MapRuinsofAlphKabutoChamberSignpost4Script
	signpost 0, 4, $1, MapRuinsofAlphKabutoChamberSignpost5Script

	; people-events
	db 2
	person_event SPRITE_RECEPTIONIST, 9, 9, $6, 0, 0, -1, -1, 0, 0, 0, ReceptionistScript_0x58769, EVENT_KABUTO_CHAMBER_RECEPTIONIST
	person_event SPRITE_SCIENTIST, 5, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x587a8, -1
; 0x58bdc

