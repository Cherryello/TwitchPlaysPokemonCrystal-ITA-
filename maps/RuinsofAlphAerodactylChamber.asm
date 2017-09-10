RuinsofAlphAerodactylChamber_MapScriptHeader: ; 0x58da0
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x58dad, $0000
	dw UnknownScript_0x58db8, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x58db9
; 0x58dad

UnknownScript_0x58dad: ; 0x58dad
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue UnknownScript_0x58db4
	end
; 0x58db4

UnknownScript_0x58db4: ; 0x58db4
	priorityjump UnknownScript_0x58dd3
	end
; 0x58db8

UnknownScript_0x58db8: ; 0x58db8
	end
; 0x58db9

UnknownScript_0x58db9: ; 0x58db9
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue UnknownScript_0x58dc3
	changeblock $4, $0, $2e
UnknownScript_0x58dc3: ; 0x58dc3
	checkevent EVENT_RUINS_OF_ALPH_AERODACTYL_CHAMBER_2A3 ; LORD AMBER
	iffalse UnknownScript_0x58dca
	return
; 0x58dca

UnknownScript_0x58dca: ; 0x58dca
	changeblock $2, $2, $1
	changeblock $4, $2, $2
	return
; 0x58dd3

UnknownScript_0x58dd3: ; 0x58dd3
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
; 0x58deb

MapRuinsofAlphAerodactylChamberSignpost2Script: ; 0x58deb
	refreshscreen $0
	writebyte $2
	special Functionc360
	closetext
	iftrue UnknownScript_0x58df7
	end
; 0x58df7

UnknownScript_0x58df7: ; 0x58df7
	setevent EVENT_RESEARCHERS_ETC_IN_KABUTO_CHAMBER
	setevent EVENT_RUINS_OF_ALPH_AERODACTYL_CHAMBER_2A3 ; LORD AMBER
	setflag ENGINE_UNLOCKED_UNOWNS_3
	domaptrigger GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER, $1
	earthquake 30
	showemote $0, $0, 15
	changeblock $2, $2, $18
	changeblock $4, $2, $19
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement $0, MovementData_0x58e4d
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end
; 0x58e24

MapRuinsofAlphAerodactylChamberSignpost1Script: ; 0x58e24
	jumptext UnknownText_0x58ec2
; 0x58e27

MapRuinsofAlphAerodactylChamberSignpost3Script: ; 0x58e27
	jumptext UnknownText_0x58ee7
; 0x58e2a

MapRuinsofAlphAerodactylChamberSignpost4Script: ; 0x58e2a
	loadfont
	writetext UnknownText_0x58e4f
	writebyte $1
	special Function8ae68
	closetext
	end
; 0x58e35

MapRuinsofAlphAerodactylChamberSignpost5Script: ; 0x58e35
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue UnknownScript_0x58e46
	loadfont
	writetext UnknownText_0x58e81
	writebyte $1
	special Function8ae68
	closetext
	end
; 0x58e46

UnknownScript_0x58e46: ; 0x58e46
	loadfont
	writetext UnknownText_0x58ea2
	waitbutton
	closetext
	end
; 0x58e4d

MovementData_0x58e4d: ; 0x58e4d
	db $59 ; movement
	step_end
; 0x58e4f

UnknownText_0x58e4f: ; 0x58e4f
	text "Sono apparsi dei"
	line "simboli sulla"
	cont "parete<...>"
	done
; 0x58e70

; possibly unused.. again?
UnknownText_0x58e70: ; 0x58e70
	text "È testo Unown!"
	done
; 0x58e81

UnknownText_0x58e81: ; 0x58e81
	text "Sono apparsi dei"
	line "simboli sulla"
	cont "parete<...>"
	done
; 0x58ea2

UnknownText_0x58ea2: ; 0x58ea2
	text "C'é una grossa"
	line "apertura nel muro!"
	done
; 0x58ec2

UnknownText_0x58ec2: ; 0x58ec2
	text "È il disegno di"
	line "un antico #mon."
	done
; 0x58ee7

UnknownText_0x58ee7: ; 0x58ee7
	text "Questo #mon "
	line "volante attaccava"

	para "le sue prede con i"
	line "denti acuminati."
	done
; 0x58f22

RuinsofAlphAerodactylChamber_MapEventHeader: ; 0x58f22
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $9, $3, 4, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $9, $4, 4, GROUP_RUINS_OF_ALPH_OUTSIDE, MAP_RUINS_OF_ALPH_OUTSIDE
	warp_def $3, $3, 8, GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $3, $4, 9, GROUP_RUINS_OF_ALPH_INNER_CHAMBER, MAP_RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $0, $4, 1, GROUP_RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, MAP_RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM

	; xy triggers
	db 0

	; signposts
	db 6
	signpost 3, 2, $0, MapRuinsofAlphAerodactylChamberSignpost1Script
	signpost 3, 5, $0, MapRuinsofAlphAerodactylChamberSignpost1Script
	signpost 2, 3, $1, MapRuinsofAlphAerodactylChamberSignpost2Script
	signpost 2, 4, $1, MapRuinsofAlphAerodactylChamberSignpost3Script
	signpost 0, 3, $1, MapRuinsofAlphAerodactylChamberSignpost4Script
	signpost 0, 4, $1, MapRuinsofAlphAerodactylChamberSignpost5Script

	; people-events
	db 0
; 0x58f5f

