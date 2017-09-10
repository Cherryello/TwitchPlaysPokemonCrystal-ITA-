OlivineLighthouse2F_MapScriptHeader: ; 0x5af6f
	; trigger count
	db 0

	; callback count
	db 0
; 0x5af71

TrainerGentlemanAlfred: ; 0x5af71
	; bit/flag number
	dw $49e

	; trainer group && trainer id
	db GENTLEMAN, ALFRED

	; text when seen
	dw GentlemanAlfredSeenText

	; text when trainer beaten
	dw GentlemanAlfredBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GentlemanAlfredScript
; 0x5af7d

GentlemanAlfredScript: ; 0x5af7d
	talkaftercancel
	loadfont
	writetext UnknownText_0x5b13e
	waitbutton
	closetext
	end
; 0x5af85

TrainerSailorHuey1: ; 0x5af85
	; bit/flag number
	dw $576

	; trainer group && trainer id
	db SAILOR, HUEY1

	; text when seen
	dw SailorHuey1SeenText

	; text when trainer beaten
	dw SailorHuey1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SailorHuey1Script
; 0x5af91

SailorHuey1Script: ; 0x5af91
	writecode VAR_CALLERID, $7
	talkaftercancel
	loadfont
	checkflag ENGINE_HUEY
	iftrue UnknownScript_0x5afc7
	checkcellnum $7
	iftrue UnknownScript_0x5b05f
	checkevent EVENT_SAILOR_HUEY_263
	iftrue UnknownScript_0x5afb0
	setevent EVENT_SAILOR_HUEY_263
	scall UnknownScript_0x5b053
	jump UnknownScript_0x5afb3
; 0x5afb0

UnknownScript_0x5afb0: ; 0x5afb0
	scall UnknownScript_0x5b057
UnknownScript_0x5afb3: ; 0x5afb3
	askforphonenumber $7
	if_equal $1, UnknownScript_0x5b067
	if_equal $2, UnknownScript_0x5b063
	trainertotext SAILOR, HUEY1, $0
	scall UnknownScript_0x5b05b
	jump UnknownScript_0x5b05f
; 0x5afc7

UnknownScript_0x5afc7: ; 0x5afc7
	scall UnknownScript_0x5b06b
	winlosstext SailorHuey1BeatenText, $0000
	copybytetovar wd9f4
	if_equal $3, UnknownScript_0x5afe2
	if_equal $2, UnknownScript_0x5afe8
	if_equal $1, UnknownScript_0x5afee
	if_equal $0, UnknownScript_0x5aff4
UnknownScript_0x5afe2: ; 0x5afe2
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x5b01b
UnknownScript_0x5afe8: ; 0x5afe8
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x5b00e
UnknownScript_0x5afee: ; 0x5afee
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x5b001
UnknownScript_0x5aff4: ; 0x5aff4
	loadtrainer SAILOR, HUEY1
	startbattle
	returnafterbattle
	loadvar wd9f4, $1
	clearflag ENGINE_HUEY
	end
; 0x5b001

UnknownScript_0x5b001: ; 0x5b001
	loadtrainer SAILOR, HUEY2
	startbattle
	returnafterbattle
	loadvar wd9f4, $2
	clearflag ENGINE_HUEY
	end
; 0x5b00e

UnknownScript_0x5b00e: ; 0x5b00e
	loadtrainer SAILOR, HUEY3
	startbattle
	returnafterbattle
	loadvar wd9f4, $3
	clearflag ENGINE_HUEY
	end
; 0x5b01b

UnknownScript_0x5b01b: ; 0x5b01b
	loadtrainer SAILOR, HUEY4
	startbattle
	returnafterbattle
	clearflag ENGINE_HUEY
	checkevent EVENT_HUEY_PROTEIN
	iftrue UnknownScript_0x5b03f
	checkevent EVENT_SAILOR_HUEY_265
	iftrue UnknownScript_0x5b03e
	scall UnknownScript_0x5b076
	verbosegiveitem PROTEIN, 1
	iffalse UnknownScript_0x5b06f
	setevent EVENT_SAILOR_HUEY_265
	jump UnknownScript_0x5b05f
; 0x5b03e

UnknownScript_0x5b03e: ; 0x5b03e
	end
; 0x5b03f

UnknownScript_0x5b03f: ; 0x5b03f
	loadfont
	writetext UnknownText_0x5b1b6
	waitbutton
	verbosegiveitem PROTEIN, 1
	iffalse UnknownScript_0x5b06f
	clearevent EVENT_HUEY_PROTEIN
	setevent EVENT_SAILOR_HUEY_265
	jump UnknownScript_0x5b05f
; 0x5b053

UnknownScript_0x5b053: ; 0x5b053
	jumpstd asknumber1m
	end
; 0x5b057

UnknownScript_0x5b057: ; 0x5b057
	jumpstd asknumber2m
	end
; 0x5b05b

UnknownScript_0x5b05b: ; 0x5b05b
	jumpstd registerednumberm
	end
; 0x5b05f

UnknownScript_0x5b05f: ; 0x5b05f
	jumpstd numberacceptedm
	end
; 0x5b063

UnknownScript_0x5b063: ; 0x5b063
	jumpstd numberdeclinedm
	end
; 0x5b067

UnknownScript_0x5b067: ; 0x5b067
	jumpstd phonefullm
	end
; 0x5b06b

UnknownScript_0x5b06b: ; 0x5b06b
	jumpstd rematchm
	end
; 0x5b06f

UnknownScript_0x5b06f: ; 0x5b06f
	setevent EVENT_HUEY_PROTEIN
	jumpstd packfullm
	end
; 0x5b076

UnknownScript_0x5b076: ; 0x5b076
	jumpstd rematchgiftm
	end
; 0x5b07a

SailorHuey1SeenText: ; 0x5b07a
	text "I have come to"
	line "recharge our"
	cont "ship's batteries"

	para "ahead of our"
	line "next journey!"
	done
; 0x5b0b0

SailorHuey1BeatenText: ; 0x5b0b0
	text "At least I have"
	line "my honor<...>"
	done
; 0x5b0be

; possibly unused
;UnknownText_0x5b0be: ; 0x5b0be
	;text "What power!"
;	line "How would you like"

	;para "to sail the seas"
	;line "with me?"
	;done
; 0x5b0f8

GentlemanAlfredSeenText: ; 0x5b0f8
	text "Hm? This is no"
	line "place for playing."
	done
; 0x5b11b

GentlemanAlfredBeatenText: ; 0x5b11b
	text "Ah! I can see that"
	line "you're serious."
	done
; 0x5b13e

UnknownText_0x5b13e: ; 0x5b13e
	text "Up top is a #-"
	line "MON that keeps the"
	cont "LIGHTHOUSE lit."

	para "But I hear that"
	line "it's sick now and"

	para "can't be cured by"
	line "ordinary medicine."
	done
; 0x5b1b6

UnknownText_0x5b1b6: ; 0x5b1b6
	text "Man! You're as"
	line "tough as ever!"

	para "Anyway, here's"
	line "that medicine from"
	cont "before."
	done
; 0x5b1fd

OlivineLighthouse2F_MapEventHeader: ; 0x5b1fd
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $b, $3, 3, GROUP_OLIVINE_LIGHTHOUSE_1F, MAP_OLIVINE_LIGHTHOUSE_1F
	warp_def $3, $5, 2, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $d, $10, 4, GROUP_OLIVINE_LIGHTHOUSE_1F, MAP_OLIVINE_LIGHTHOUSE_1F
	warp_def $d, $11, 5, GROUP_OLIVINE_LIGHTHOUSE_1F, MAP_OLIVINE_LIGHTHOUSE_1F
	warp_def $b, $10, 4, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F
	warp_def $b, $11, 5, GROUP_OLIVINE_LIGHTHOUSE_3F, MAP_OLIVINE_LIGHTHOUSE_3F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_SAILOR, 7, 13, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSailorHuey1, -1
	person_event SPRITE_GENTLEMAN, 12, 21, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerGentlemanAlfred, -1
; 0x5b23b

