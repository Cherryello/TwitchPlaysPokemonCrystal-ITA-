CharcoalKiln_MapScriptHeader: ; 0x18dd18
	; trigger count
	db 0

	; callback count
	db 0
; 0x18dd1a

BlackBeltScript_0x18dd1a: ; 0x18dd1a
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x18dd34
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue UnknownScript_0x18dd2e
	writetext UnknownText_0x18dd74
	waitbutton
	closetext
	end
; 0x18dd2e

UnknownScript_0x18dd2e: ; 0x18dd2e
	writetext UnknownText_0x18ddfd
	waitbutton
	closetext
	end
; 0x18dd34

UnknownScript_0x18dd34: ; 0x18dd34
	writetext UnknownText_0x18de73
	waitbutton
	closetext
	end
; 0x18dd3a

YoungsterScript_0x18dd3a: ; 0x18dd3a
	faceplayer
	loadfont
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue UnknownScript_0x18dd5d
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x18dd4e
	writetext UnknownText_0x18dee0
	waitbutton
	closetext
	end
; 0x18dd4e

UnknownScript_0x18dd4e: ; 0x18dd4e
	writetext UnknownText_0x18df25
	buttonsound
	verbosegiveitem CHARCOAL, 1
	iffalse UnknownScript_0x18dd61
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	closetext
	end
; 0x18dd5d

UnknownScript_0x18dd5d: ; 0x18dd5d
	writetext UnknownText_0x18df93
	waitbutton
UnknownScript_0x18dd61: ; 0x18dd61
	closetext
	end
; 0x18dd63

MoltresScript_0x18dd63: ; 0x18dd63
	faceplayer
	loadfont
	writetext UnknownText_0x18dfe5
	cry FARFETCH_D
	waitbutton
	closetext
	end
; 0x18dd6e

MapCharcoalKilnSignpost1Script: ; 0x18dd6e
	jumpstd magazinebookshelf
; 0x18dd71

MapCharcoalKilnSignpost2Script: ; 0x18dd71
	jumpstd radio2
; 0x18dd74

UnknownText_0x18dd74: ; 0x18dd74
	text "Tutti gli Slowpoke"
	line "sono spariti dal"
	cont "paese."

	para "Il protettore"
	line "della foresta deve"
	cont "essere arrabbiato"
	cont "con noi<...>"

	para "Potrebbe essere un"
	line "cattivo presagio."
	cont "Meglio rimanere"
	cont "in casa."
	done
; 0x18ddfd

UnknownText_0x18ddfd: ; 0x18ddfd
	text "Gli Slowpoke sono"
	line "tornati<...>"

	para "Ma il mio appren-"
	line "dista é ancora nel"
	cont "Bosco di Lecci."

	para "Che starà facendo"
	line "quello sfaticato?"
	done
; 0x18de73

UnknownText_0x18de73: ; 0x18de73
	text "Hai inseguito il"
	line "Team Rocket e sei"

	para "andato al Bosco"
	line "di Lecci da solo?"

	para "Ci vuole coraggio!"
	line "Mi piaci. Vieni ad"
	cont "allenarti con noi."
	done
; 0x18dee0

UnknownText_0x18dee0: ; 0x18dee0
	text "Dove sono finiti"
	line "tutti gli Slow-"
	cont "poke?"

	para "Sono andati a gio-"
	line "care da qualche"
	cont "parte chissà dove?"
	done
; 0x18df25

UnknownText_0x18df25: ; 0x18df25
	text "Mi spiace, mi sono"
	line "dimenticato di"
	cont "ringraziarti."

	para "Questa é la"
	line "carbonella che"
	cont "ho fatto io."

	para "I #mon fuoco"
	line "saranno felici di"
	cont "tenerla."
	done
; 0x18df93

UnknownText_0x18df93: ; 0x18df93
	text "Gli Slowpoke sono"
	line "ritornati, e hai"
	cont "persino ritrovato"
	cont "Farfetch'd."

	para "Sei davvero"
	line "incredibile!"
	done
; 0x18dfe5

UnknownText_0x18dfe5: ; 0x18dfe5
	text "Farfetch'd: Kwaa!"
	done
; 0x18dff8

CharcoalKiln_MapEventHeader: ; 0x18dff8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $3, 2, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 1, 0, $0, MapCharcoalKilnSignpost1Script
	signpost 1, 1, $0, MapCharcoalKilnSignpost1Script
	signpost 1, 7, $0, MapCharcoalKilnSignpost2Script

	; people-events
	db 3
	person_event SPRITE_BLACK_BELT, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x18dd1a, EVENT_CHARCOAL_MASTER_IN_CHARCOAL_KILN
	person_event SPRITE_YOUNGSTER, 7, 9, $2, 1, 1, -1, -1, 0, 0, 0, YoungsterScript_0x18dd3a, EVENT_APPRENTICE_IN_CHARCOAL_KILN
	person_event SPRITE_SPEAROW, 10, 9, $16, 2, 2, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MoltresScript_0x18dd63, EVENT_FARFETCHD_IN_CHARCOAL_KILN
; 0x18e03e

