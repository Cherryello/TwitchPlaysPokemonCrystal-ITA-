Route39Barn_MapScriptHeader: ; 0x9cc74
	; trigger count
	db 0

	; callback count
	db 0
; 0x9cc76

TwinScript_0x9cc76: ; 0x9cc76
	faceplayer
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue UnknownScript_0x9cc87
	writetext UnknownText_0x9cd2e
	waitbutton
	closetext
	spriteface $2, $3
	end
; 0x9cc87

UnknownScript_0x9cc87: ; 0x9cc87
	writetext UnknownText_0x9cd5a
	waitbutton
	closetext
	spriteface $2, $3
	end
; 0x9cc90

TwinScript_0x9cc90: ; 0x9cc90
	faceplayer
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue UnknownScript_0x9cca1
	writetext UnknownText_0x9cd2e
	waitbutton
	closetext
	spriteface $3, $2
	end
; 0x9cca1

UnknownScript_0x9cca1: ; 0x9cca1
	writetext UnknownText_0x9cd5a
	waitbutton
	closetext
	spriteface $3, $2
	end
; 0x9ccaa

TaurosScript_0x9ccaa: ; 0x9ccaa
	loadfont
	checkevent EVENT_HEALED_MOOMOO
	iftrue UnknownScript_0x9cd25
	writetext UnknownText_0x9cd70
	writebyte MILTANK
	special Functionfb841
	buttonsound
	writetext UnknownText_0x9cd80
	checkevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	iftrue UnknownScript_0x9ccc6
	waitbutton
	closetext
	end
; 0x9ccc6

UnknownScript_0x9ccc6: ; 0x9ccc6
	buttonsound
	writetext UnknownText_0x9cda2
	yesorno
	iffalse UnknownScript_0x9cd1f
	checkitem BERRY
	iffalse UnknownScript_0x9cd19
	takeitem BERRY, 1
	copybytetovar MooMooBerries
	addvar $1
	copyvartobyte MooMooBerries
	if_equal $3, UnknownScript_0x9ccf0
	if_equal $5, UnknownScript_0x9ccfa
	if_equal $7, UnknownScript_0x9cd04
	writetext UnknownText_0x9cdbc
	waitbutton
	closetext
	end
; 0x9ccf0

UnknownScript_0x9ccf0: ; 0x9ccf0
	writetext UnknownText_0x9cdbc
	buttonsound
	writetext UnknownText_0x9cdd8
	waitbutton
	closetext
	end
; 0x9ccfa

UnknownScript_0x9ccfa: ; 0x9ccfa
	writetext UnknownText_0x9cdbc
	buttonsound
	writetext UnknownText_0x9cdfc
	waitbutton
	closetext
	end
; 0x9cd04

UnknownScript_0x9cd04: ; 0x9cd04
	playmusic MUSIC_HEAL
	writetext UnknownText_0x9cdbc
	pause 60
	buttonsound
	special RestartMapMusic
	writetext UnknownText_0x9ce1b
	waitbutton
	closetext
	setevent EVENT_HEALED_MOOMOO
	end
; 0x9cd19

UnknownScript_0x9cd19: ; 0x9cd19
	writetext UnknownText_0x9ce3c
	waitbutton
	closetext
	end
; 0x9cd1f

UnknownScript_0x9cd1f: ; 0x9cd1f
	writetext UnknownText_0x9ce4f
	waitbutton
	closetext
	end
; 0x9cd25

UnknownScript_0x9cd25: ; 0x9cd25
	writetext UnknownText_0x9cd92
	cry MILTANK
	waitbutton
	closetext
	end
; 0x9cd2e

UnknownText_0x9cd2e: ; 0x9cd2e
	text "MOOMOO is sick<...>"

	para "She needs lots of"
	line "ORAN BERRIES."
	done
; 0x9cd5a

UnknownText_0x9cd5a: ; 0x9cd5a
	text "We're feeding"
	line "MOOMOO!"
	done
; 0x9cd70

UnknownText_0x9cd70: ; 0x9cd70
	text "MILTANK: <...>Moo<...>"
	done
; 0x9cd80

UnknownText_0x9cd80: ; 0x9cd80
	text "Its cry is weak<...>"
	done
; 0x9cd92

UnknownText_0x9cd92: ; 0x9cd92
	text "MILTANK: Mooo!"
	done
; 0x9cda2

UnknownText_0x9cda2: ; 0x9cda2
	text "Give an ORAN BERRY"
	line "to MILTANK?"
	done
; 0x9cdbc

UnknownText_0x9cdbc: ; 0x9cdbc
	text "<PLAYER> gave an"
	line "ORAN BERRY to"
	cont "MILTANK."
	done
; 0x9cdd8

UnknownText_0x9cdd8: ; 0x9cdd8
	text "MILTANK became a"
	line "little healthier!"
	done
; 0x9cdfc

UnknownText_0x9cdfc: ; 0x9cdfc
	text "MILTANK became"
	line "quite healthy!"
	done
; 0x9ce1b

UnknownText_0x9ce1b: ; 0x9ce1b
	text "MILTANK became"
	line "totally healthy!"
	done
; 0x9ce3c

UnknownText_0x9ce3c: ; 0x9ce3c
	text "<PLAYER> has no"
	line "ORAN BERRIES<...>"
	done
; 0x9ce4f

UnknownText_0x9ce4f: ; 0x9ce4f
	text "<PLAYER> wouldn't"
	line "give a ORAN BERRY."

	para "MILTANK looks sad."
	done
; 0x9ce7b

Route39Barn_MapEventHeader: ; 0x9ce7b
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $3, 1, GROUP_ROUTE_39, MAP_ROUTE_39
	warp_def $7, $4, 1, GROUP_ROUTE_39, MAP_ROUTE_39

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_TWIN, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, TwinScript_0x9cc76, -1
	person_event SPRITE_TWIN, 7, 8, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, TwinScript_0x9cc90, -1
	person_event SPRITE_TAUROS, 7, 7, $16, 0, 0, -1, -1, 0, 0, 0, TaurosScript_0x9ccaa, -1
; 0x9ceb2

