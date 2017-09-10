BlackthornCity_MapScriptHeader: ; 0x1a46d0
	; trigger count
	db 0

	; callback count
	db 2

	; callbacks

	dbw 5, UnknownScript_0x1a46d8

	dbw 2, SantosCallback

UnknownScript_0x1a46d8: ; 0x1a46d8
	setflag ENGINE_FLYPOINT_BLACKTHORN
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue EliteFloorBlackthorn
	warpmod 1, GROUP_BLACKTHORN_GYM_1F, MAP_BLACKTHORN_GYM_1F
	return
EliteFloorBlackthorn:
	warpmod 1, GROUP_BLACKTHORNGYMREMATCH1F, MAP_BLACKTHORNGYMREMATCH1F
	return

; 0x1a46dc

SantosCallback:
	checkcode VAR_WEEKDAY
	if_equal SATURDAY, .SantosAppears
	disappear $9
	return

.SantosAppears
	appear $9
	return

SuperNerdScript_0x1a46e8: ; 0x1a46e8
	faceplayer
	loadfont
	checkevent EVENT_BEAT_CLAIR
	iftrue UnknownScript_0x1a4702
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x1a46fc
	writetext UnknownText_0x1a477a
	waitbutton
	closetext
	end
; 0x1a46fc

UnknownScript_0x1a46fc: ; 0x1a46fc
	writetext UnknownText_0x1a47f3
	waitbutton
	closetext
	end
; 0x1a4702

UnknownScript_0x1a4702: ; 0x1a4702
	writetext UnknownText_0x1a4865
	waitbutton
	closetext
	end
; 0x1a4708

GrampsScript_0x1a4708: ; 0x1a4708
	jumptextfaceplayer UnknownText_0x1a48c3
; 0x1a470b

GrampsScript_0x1a470b: ; 0x1a470b
	jumptextfaceplayer UnknownText_0x1a48fb
; 0x1a470e

BlackBeltScript_0x1a470e: ; 0x1a470e
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x1a471c
	writetext UnknownText_0x1a494a
	waitbutton
	closetext
	end
; 0x1a471c

UnknownScript_0x1a471c: ; 0x1a471c
	writetext UnknownText_0x1a4983
	waitbutton
	closetext
	end
; 0x1a4722

CooltrainerFScript_0x1a4722: ; 0x1a4722
	jumptextfaceplayer UnknownText_0x1a49bd
; 0x1a4725

YoungsterScript_0x1a4725: ; 0x1a4725
	jumptextfaceplayer UnknownText_0x1a49f1
; 0x1a4728

CooltrainerFScript_0x1a4728: ; 0x1a4728
	jumptextfaceplayer UnknownText_0x1a4b1e
; 0x1a472b

SantosScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue SantosSaturdayScript
	checkcode VAR_WEEKDAY
	if_not_equal SATURDAY, SantosNotSaturdayScript
	checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iftrue .MetSantos
	writetext MeetSantosText
	buttonsound
	setevent EVENT_MET_SANTOS_OF_SATURDAY
.MetSantos
	writetext SantosGivesGiftText
	buttonsound
	verbosegiveitem SPELL_TAG, 1
	iffalse SantosDoneScript
	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	writetext SantosGaveGiftText
	waitbutton
	closetext
	end

SantosSaturdayScript:
	writetext SantosSaturdayText
	waitbutton
SantosDoneScript:
	closetext
	end

SantosNotSaturdayScript:
	writetext SantosNotSaturdayText
	waitbutton
	closetext
	end

MapBlackthornCitySignpost0Script: ; 0x1a4765
	jumptext UnknownText_0x1a4b67
; 0x1a4768

MapBlackthornCitySignpost1Script: ; 0x1a4768
	jumptext UnknownText_0x1a4b91
; 0x1a476b

MapBlackthornCitySignpost2Script: ; 0x1a476b
	jumptext UnknownText_0x1a4bd9
; 0x1a476e

MapBlackthornCitySignpost3Script: ; 0x1a476e
	jumptext UnknownText_0x1a4bef
; 0x1a4771

MapBlackthornCitySignpost4Script: ; 0x1a4771
	jumptext UnknownText_0x1a4c03
; 0x1a4774

MapBlackthornCitySignpost6Script: ; 0x1a4774
	jumpstd pokecentersign
; 0x1a4777

MapBlackthornCitySignpost5Script: ; 0x1a4777
	jumpstd martsign
; 0x1a477a

BlackthornEGKRivalMovement1:
	step_up
	turn_head_right
	step_end

BlackthornEGKRivalMovement2:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
BlackthornPlayerMovement:
	slow_step_down
	step_end


UnknownText_0x1a477a: ; 0x1a477a
	text "I am sorry."

	para "CLAIR, our GYM"
	line "LEADER, entered"

	para "the DRAGON'S DEN"
	line "behind the GYM."

	para "I have no idea"
	line "when our LEADER"
	cont "will return."
	done
; 0x1a47f3

UnknownText_0x1a47f3: ; 0x1a47f3
	text "CLAIR, our GYM"
	line "LEADER, is waiting"
	cont "for you."

	para "However, it would"
	line "be impossible for"

	para "a run-of-the-mill"
	line "trainer to win."
	done
; 0x1a4865

UnknownText_0x1a4865: ; 0x1a4865
	text "You defeated"
	line "CLAIR?"

	para "That's amazing!"

	para "I've never heard"
	line "of her losing to"

	para "anyone other than"
	line "LANCE."
	done
; 0x1a48c3

UnknownText_0x1a48c3: ; 0x1a48c3
	text "No. Only chosen"
	line "trainers may train"

	para "here."
	line "Please leave."
	done
; 0x1a48fb

UnknownText_0x1a48fb: ; 0x1a48fb
	text "If CLAIR allows"
	line "it, her grand-"
	cont "father--our MASTER"
	cont "--will also."

	para "You may enter."
	done
; 0x1a494a

UnknownText_0x1a494a: ; 0x1a494a
	text "My radio's busted?"
	line "Lately, I only get"
	cont "this weird signal."
	done
; 0x1a4983

UnknownText_0x1a4983: ; 0x1a4983
	text "Arooo! Voices in"
	line "my head!"

	para "Huh? I'm listening"
	line "to my radio!"
	done
; 0x1a49bd

UnknownText_0x1a49bd: ; 0x1a49bd
	text "Are you going to"
	line "make your #MON"
	cont "forget some moves?"
	done
; 0x1a49f1

UnknownText_0x1a49f1: ; 0x1a49f1
	text "Dragon masters all"
	line "come from the city"
	cont "of BLACKTHORN."
	done
; 0x1a4a27

MeetSantosText:
	text "SANTOS: <...>"

	para "It's Saturday<...>"

	para "I'm SANTOS of"
	line "Saturday<...>"
	done

SantosGivesGiftText:
	text "You can have this<...>"
	done

SantosGaveGiftText:
	text "SANTOS: <...>"

	para "SPELL TAG<...>"

	para "Ghost-type moves"
	line "get stronger<...>"

	para "It will frighten"
	line "you<...>"
	done

SantosSaturdayText:
	text "SANTOS: <...>"

	para "See you again on"
	line "another Saturday<...>"

	para "I won't have any"
	line "more gifts<...>"
	done

SantosNotSaturdayText:
	text "SANTOS: Today's"
	line "not Saturday<...>"
	done

UnknownText_0x1a4b1e: ; 0x1a4b1e
	text "Wow, you came"
	line "through the ICE"
	cont "PATH?"

	para "You must be a real"
	line "hotshot trainer!"
	done
; 0x1a4b67

UnknownText_0x1a4b67: ; 0x1a4b67
	text "BLACKTHORN CITY"

	para "A Quiet Mountain"
	line "Retreat"
	done
; 0x1a4b91

UnknownText_0x1a4b91: ; 0x1a4b91
	text "BLACKTHORN CITY"
	line "#MON GYM"
	cont "LEADER: CLAIR"

	para "The Blessed User"
	line "of Dragon #MON"
	done
; 0x1a4bd9

UnknownText_0x1a4bd9: ; 0x1a4bd9
	text "MOVE DELETER'S"
	line "HOUSE"
	done
; 0x1a4bef

UnknownText_0x1a4bef: ; 0x1a4bef
	text "DRAGON'S DEN"
	line "AHEAD"
	done
; 0x1a4c03

UnknownText_0x1a4c03: ; 0x1a4c03
	text "TRAINER TIPS"

	para "A #MON holding"
	line "a LUM BERRY will"

	para "cure itself of any"
	line "status problem."
	done
; 0x1a4c57


BlackthornCity_MapEventHeader: ; 0x1a4c57
	; filler
	db 0, 0

	; warps
	db 8
	warp_def $b, $12, -1, 0, 0 ;Blackthorn Gym
	warp_def $15, $d, 1, GROUP_BLACKTHORN_DRAGON_SPEECH_HOUSE, MAP_BLACKTHORN_DRAGON_SPEECH_HOUSE
	warp_def $17, $1d, 1, GROUP_BLACKTHORN_DODRIO_TRADE_HOUSE, MAP_BLACKTHORN_DODRIO_TRADE_HOUSE
	warp_def $1d, $f, 2, GROUP_BLACKTHORN_MART, MAP_BLACKTHORN_MART
	warp_def $1d, $15, 1, GROUP_BLACKTHORN_POKECENTER_1F, MAP_BLACKTHORN_POKECENTER_1F
	warp_def $1f, $9, 1, GROUP_MOVE_DELETERS_HOUSE, MAP_MOVE_DELETERS_HOUSE
	warp_def $9, $24, 2, GROUP_ICE_PATH_1F, MAP_ICE_PATH_1F
	warp_def $1, $14, 1, GROUP_DRAGONS_DEN_1F, MAP_DRAGONS_DEN_1F

	; xy triggers
	db 0

	; signposts
	db 7
	signpost 24, 34, $0, MapBlackthornCitySignpost0Script
	signpost 13, 17, $0, MapBlackthornCitySignpost1Script
	signpost 31, 7, $0, MapBlackthornCitySignpost2Script
	signpost 3, 21, $0, MapBlackthornCitySignpost3Script
	signpost 25, 5, $0, MapBlackthornCitySignpost4Script
	signpost 29, 16, $0, MapBlackthornCitySignpost5Script
	signpost 29, 22, $0, MapBlackthornCitySignpost6Script

	; people-events
	db 9
	person_event SPRITE_SUPER_NERD, 16, 22, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SuperNerdScript_0x1a46e8, EVENT_GUY_BLOCKING_BLACKTHORN_GYM
	person_event SPRITE_SUPER_NERD, 16, 23, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SuperNerdScript_0x1a46e8, EVENT_GUY_NOT_BLOCKING_BLACKTHORN_GYM
	person_event SPRITE_GRAMPS, 6, 24, $6, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x1a4708, EVENT_GRAMPS_BLOCKING_DRAGONS_DEN
	person_event SPRITE_GRAMPS, 6, 25, $8, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x1a470b, EVENT_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	person_event SPRITE_BLACK_BELT, 35, 28, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, BlackBeltScript_0x1a470e, -1
	person_event SPRITE_COOLTRAINER_F, 29, 13, $5, 0, 2, -1, -1, 8 + PAL_OW_RED, 0, 0, CooltrainerFScript_0x1a4722, -1
	person_event SPRITE_YOUNGSTER, 19, 17, $5, 0, 1, -1, -1, 0, 0, 0, YoungsterScript_0x1a4725, -1
	person_event SPRITE_YOUNGSTER, 24, 26, $6, 0, 0, -1, -1, 0, 0, 0, SantosScript, EVENT_SANTOS_OF_SATURDAY
	person_event SPRITE_COOLTRAINER_F, 23, 39, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x1a4728, -1
