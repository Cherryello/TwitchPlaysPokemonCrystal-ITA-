RuinsofAlphHoOhChamber_MapScriptHeader: ; 0x58560
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x5856d, $0000
	dw UnknownScript_0x5857b, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x5857c
; 0x5856d

UnknownScript_0x5856d: ; 0x5856d
	special SpecialHoOhChamber
	checkevent EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	iftrue UnknownScript_0x58577
	end
; 0x58577

UnknownScript_0x58577: ; 0x58577
	priorityjump UnknownScript_0x58596
	end
; 0x5857b

UnknownScript_0x5857b: ; 0x5857b
	end
; 0x5857c

UnknownScript_0x5857c: ; 0x5857c
	checkevent EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	iftrue UnknownScript_0x58586
	changeblock $4, $0, $2e
UnknownScript_0x58586: ; 0x58586
	checkevent EVENT_RUINS_OF_ALPH_HOOH_CHAMBER_2A0 ; BIRD JESUS ASCENDED
	iffalse UnknownScript_0x5858d
	return
; 0x5858d

UnknownScript_0x5858d: ; 0x5858d
	changeblock $2, $2, $1
	changeblock $4, $2, $2
	return
; 0x58596

UnknownScript_0x58596: ; 0x58596
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
; 0x585ae

MapRuinsofAlphHoOhChamberSignpost2Script: ; 0x585ae
	refreshscreen $0
	writebyte $3
	special Functionc360
	closetext
	iftrue UnknownScript_0x585ba
	end
; 0x585ba

UnknownScript_0x585ba: ; 0x585ba
	setevent EVENT_RESEARCHERS_ETC_IN_KABUTO_CHAMBER
	setevent EVENT_RUINS_OF_ALPH_HOOH_CHAMBER_2A0 ; BIRD JESUS ASCENDED
	setflag ENGINE_UNLOCKED_UNOWNS_4
	domaptrigger GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER, $1
	earthquake 30
	showemote $0, $0, 15
	changeblock $2, $2, $18
	changeblock $4, $2, $19
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement $0, MovementData_0x58610
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end
; 0x585e7

MapRuinsofAlphHoOhChamberSignpost1Script: ; 0x585e7
	jumptext UnknownText_0x58685
; 0x585ea

MapRuinsofAlphHoOhChamberSignpost3Script: ; 0x585ea
	jumptext UnknownText_0x586aa
; 0x585ed

MapRuinsofAlphHoOhChamberSignpost4Script: ; 0x585ed
	loadfont
	writetext UnknownText_0x58612
	writebyte $3
	special Function8ae68
	closetext
	end
; 0x585f8

MapRuinsofAlphHoOhChamberSignpost5Script: ; 0x585f8
	checkevent EVENT_WALL_OPENED_IN_HO_OH_CHAMBER
	iftrue UnknownScript_0x58609
	loadfont
	writetext UnknownText_0x58644
	writebyte $3
	special Function8ae68
	closetext
	end
; 0x58609

UnknownScript_0x58609: ; 0x58609
	loadfont
	writetext UnknownText_0x58665
	waitbutton
	closetext
	end
; 0x58610

MovementData_0x58610: ; 0x58610
	db $59 ; movement
	step_end
; 0x58612

UnknownText_0x58612: ; 0x58612
	text "Sono apparsi dei"
	line "simboli sulla"
	cont "parete<...>"
	done
; 0x58633

; possibly unused
UnknownText_0x58633: ; 0x58633
	text "È testo Unown!"
	done
; 0x58644

UnknownText_0x58644: ; 0x58644
	text "Sono apparsi dei"
	line "simboli sulla"
	cont "parete<...>"
	done
; 0x58665

UnknownText_0x58665: ; 0x58665
	text "C'é una grossa"
	line "apertura nel muro!"
	done
; 0x58685

UnknownText_0x58685: ; 0x58685
	text "È il disegno di"
	line "un antico #mon."
	done
; 0x586aa

UnknownText_0x586aa: ; 0x586aa
	text "Un #mon che"
	line "volava libero con"

	para "le sue ali dai"
	line "colori dell'arco-"
	cont "baleno."
	done
; 0x586e1

RuinsofAlphHoOhChamber_MapEventHeader: ; 0x586e1
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $9, $3, 1, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $9, $4, 1, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $3, $3, 2, GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $3, $4, 3, GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $0, $4, 1, GROUP_RUINS_OF_ALPH_HO_OH_ITEM_ROOM, MAP_RUINS_OF_ALPH_HO_OH_ITEM_ROOM

	; xy triggers
	db 0

	; signposts
	db 6
	signpost 3, 2, $0, MapRuinsofAlphHoOhChamberSignpost1Script
	signpost 3, 5, $0, MapRuinsofAlphHoOhChamberSignpost1Script
	signpost 2, 3, $1, MapRuinsofAlphHoOhChamberSignpost2Script
	signpost 2, 4, $1, MapRuinsofAlphHoOhChamberSignpost3Script
	signpost 0, 3, $1, MapRuinsofAlphHoOhChamberSignpost4Script
	signpost 0, 4, $1, MapRuinsofAlphHoOhChamberSignpost5Script

	; people-events
	db 0
; 0x5871e

