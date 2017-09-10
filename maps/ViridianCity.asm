ViridianCity_MapScriptHeader: ; 0x1a9a43
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x1a9a48
; 0x1a9a48

UnknownScript_0x1a9a48: ; 0x1a9a48
	setflag ENGINE_FLYPOINT_VIRIDIAN
	return
; 0x1a9a4c

GrampsScript_0x1a9a4c: ; 0x1a9a4c
	faceplayer
	loadfont
	writetext UnknownText_0x1a9aa5
	yesorno
	iffalse GrampsScript_ShowCatchingVideo
	writetext UnknownText_0x1a9b6f
	waitbutton
	closetext
	end
; 0x1a9a5b

GrampsScript_ShowCatchingVideo:
	writetext GrampsText_IntroCatchingVideo
	waitbutton
	closetext
	loadpokedata BUTTERFREE, 15
	catchtutorial BATTLETYPE_TUTORIAL
	loadfont
	writetext GrampsText_AfterCatchingVideo
	waitbutton
	closetext
	end

GrampsScript_0x1a9a61: ; 0x1a9a61
	faceplayer
	loadfont
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue UnknownScript_0x1a9a6f
	writetext UnknownText_0x1a9c11
	waitbutton
	closetext
	end
; 0x1a9a6f

UnknownScript_0x1a9a6f: ; 0x1a9a6f
	writetext UnknownText_0x1a9c7e
	waitbutton
	closetext
	end
; 0x1a9a75

FisherScript_0x1a9a75: ; 0x1a9a75
	faceplayer
	loadfont
		;checkevent EVENT_GOT_TM42_DREAM_EATER
		;iftrue UnknownScript_0x1a9a8a
		;writetext UnknownText_0x1a9cc4
		;buttonsound
		;verbosegiveitem TM_DREAM_EATER, 1
		;iffalse UnknownScript_0x1a9a8e
		;setevent EVENT_GOT_TM42_DREAM_EATER
UnknownScript_0x1a9a8a: ; 0x1a9a8a
	writetext UnknownText_0x1a9d86
	waitbutton
UnknownScript_0x1a9a8e: ; 0x1a9a8e
	closetext
	end
; 0x1a9a90

YoungsterScript_0x1a9a90: ; 0x1a9a90
	jumptextfaceplayer UnknownText_0x1a9daa
; 0x1a9a93

MapViridianCitySignpost0Script: ; 0x1a9a93
	jumptext UnknownText_0x1a9def
; 0x1a9a96

MapViridianCitySignpost1Script: ; 0x1a9a96
	jumptext UnknownText_0x1a9e1b
; 0x1a9a99

MapViridianCitySignpost2Script: ; 0x1a9a99
	jumptext UnknownText_0x1a9e60
; 0x1a9a9c

MapViridianCitySignpost3Script: ; 0x1a9a9c
	jumptext UnknownText_0x1a9e99
; 0x1a9a9f

MapViridianCitySignpost4Script: ; 0x1a9a9f
	jumpstd pokecentersign
; 0x1a9aa2

MapViridianCitySignpost5Script: ; 0x1a9aa2
	jumpstd martsign
; 0x1a9aa5

UnknownText_0x1a9aa5: ; 0x1a9aa5
	text "Hey, kid! I just"
	line "had a double shot"

	para "of espresso, and"
	line "I am wired!"

	para "I need to talk to"
	line "someone, so you'll"
	cont "have to do!"

	para "I might not look"
	line "like much now, but"

	para "I was an expert at"
	line "catching #MON."

	para "Do you believe me?"
	done
; 0x1a9b6f

UnknownText_0x1a9b6f: ; 0x1a9b6f
	text "Good, good. Yes, I"
	line "was something out"

	para "of the ordinary,"
	line "let me tell you!"
	done
; 0x1a9bb7

UnknownText_0x1a9bb7: ; 0x1a9bb7
	text "What? You little"
	line "whelp!"

	para "If I were just a"
	line "bit younger, I'd"

	para "show you a thing"
	line "or two. Humph!"
	done
; 0x1a9c11

GrampsText_IntroCatchingVideo:
	text "What? You little"
	line "whelp!"

	para "Lemme show you a"
	line "thing or two."

	para "Now where did I"
	line "put it", $56, "?"

	para "Ah, there it is!"

	para "Feast your eyes on"
	line "my TEACHY TV!"
	done

GrampsText_AfterCatchingVideo:
	text "There! Now wasn't"
	line "that enlightening?"
	done

UnknownText_0x1a9c11: ; 0x1a9c11
	text "This GYM didn't"
	line "have a LEADER"
	cont "until recently."

	para "A young man from"
	line "PALLET became the"

	para "LEADER, but he's"
	line "often away."
	done
; 0x1a9c7e

UnknownText_0x1a9c7e: ; 0x1a9c7e
	text "Are you going to"
	line "battle the LEADER?"

	para "Good luck to you."
	line "You'll need it."
	done
; 0x1a9cc4

;UnknownText_0x1a9cc4: ; 0x1a9cc4
;	text "Yawn!"

;	para "I must have dozed"
;	line "off in the sun."

;	para "<...>I had this dream"
;	line "about a DROWZEE"

;	para "eating my dream."
;	line "Weird, huh?"

;	para "Huh?"
;	line "What's this?"

;	para "Where did this TM"
;	line "come from?"

	;para "This is spooky!"
	;line "Here, you can have"
	;cont "this TM."
	;done
; 0x1a9d86

UnknownText_0x1a9d86: ; 0x1a9d86
	text "<...>Zzzzz<...>"
	done
; 0x1a9daa

UnknownText_0x1a9daa: ; 0x1a9daa
	text "I've heard that"
	line "celebrities hang"
	cont "out by the pond."

	para "What kind of"
	line "celebrities are"
	cont "they, I wonder?"
	done
; 0x1a9def

UnknownText_0x1a9def: ; 0x1a9def
	text "VIRIDIAN CITY"

	para "The Eternally"
	line "Green Paradise"
	done
; 0x1a9e1b

UnknownText_0x1a9e1b: ; 0x1a9e1b
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "LEADER: <...>"

	para "The rest of the"
	line "text is illegible<...>"
	done
; 0x1a9e60

UnknownText_0x1a9e60: ; 0x1a9e60
	text "WELCOME TO"
	line "VIRIDIAN CITY,"

	para "THE GATEWAY TO"
	line "INDIGO PLATEAU"
	done
; 0x1a9e99

UnknownText_0x1a9e99: ; 0x1a9e99
	text "TRAINER HOUSE"

	para "The Club for Top"
	line "Trainer Battles"
	done
; 0x1a9ec9

ViridianCity_MapEventHeader: ; 0x1a9ec9
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $7, $20, 1, GROUP_VIRIDIAN_GYM, MAP_VIRIDIAN_GYM
	warp_def $9, $15, 1, GROUP_VIRIDIAN_NICKNAME_SPEECH_HOUSE, MAP_VIRIDIAN_NICKNAME_SPEECH_HOUSE
	warp_def $f, $17, 1, GROUP_TRAINER_HOUSE_1F, MAP_TRAINER_HOUSE_1F
	warp_def $13, $1d, 2, GROUP_VIRIDIAN_MART, MAP_VIRIDIAN_MART
	warp_def $19, $17, 1, GROUP_VIRIDIAN_POKECENTER_1F, MAP_VIRIDIAN_POKECENTER_1F

	; xy triggers
	db 0

	; signposts
	db 6
	signpost 17, 17, $0, MapViridianCitySignpost0Script
	signpost 7, 27, $0, MapViridianCitySignpost1Script
	signpost 1, 19, $0, MapViridianCitySignpost2Script
	signpost 15, 21, $0, MapViridianCitySignpost3Script
	signpost 25, 24, $0, MapViridianCitySignpost4Script
	signpost 19, 30, $0, MapViridianCitySignpost5Script

	; people-events
	db 4
	person_event SPRITE_GRAMPS, 9, 22, $2, 2, 2, -1, -1, 0, 0, 0, GrampsScript_0x1a9a4c, -1
	person_event SPRITE_GRAMPS, 12, 34, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrampsScript_0x1a9a61, -1
	person_event SPRITE_FISHER, 27, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x1a9a75, -1
	person_event SPRITE_YOUNGSTER, 25, 21, $2, 3, 3, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x1a9a90, -1
; 0x1a9f3a

