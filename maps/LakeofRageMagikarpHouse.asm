LakeofRageMagikarpHouse_MapScriptHeader: ; 0x19a6ac
	; trigger count
	db 0

	; callback count
	db 0
; 0x19a6ae

FishingGuruScript_0x19a6ae: ; 0x19a6ae
	faceplayer
	loadfont
	checkevent EVENT_SHOWED_A_BIG_MAGIKARP_BUT_NO_ROOM
	iftrue UnknownScript_0x19a6fe
	checkevent EVENT_INITIATED_SHOWING_OF_THE_MAGIKARP
	iftrue UnknownScript_0x19a6e0
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue UnknownScript_0x19a6d7
	checkevent EVENT_TALKED_TO_LAKE_OF_RAGE_FISHERMAN_ABOUT_GYARADOS
	iftrue UnknownScript_0x19a6d1
	writetext UnknownText_0x19a72e
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_LAKE_OF_RAGE_FISHERMAN_ABOUT_GYARADOS
	end
; 0x19a6d1

UnknownScript_0x19a6d1: ; 0x19a6d1
	writetext UnknownText_0x19a84d
	waitbutton
	closetext
	end
; 0x19a6d7

UnknownScript_0x19a6d7: ; 0x19a6d7
	writetext UnknownText_0x19a890
	waitbutton
	closetext
	setevent EVENT_INITIATED_SHOWING_OF_THE_MAGIKARP
	end
; 0x19a6e0

UnknownScript_0x19a6e0: ; 0x19a6e0
	writebyte MAGIKARP
	special Functionc276
	iffalse UnknownScript_0x19a6d7
	writetext UnknownText_0x19a93e
	waitbutton
	special Functionfbb32
	if_equal $0, UnknownScript_0x19a71c
	if_equal $1, UnknownScript_0x19a722
	if_equal $2, UnknownScript_0x19a716
	jump UnknownScript_0x19a6fe
; 0x19a6fe

UnknownScript_0x19a6fe: ; 0x19a6fe
	writetext UnknownText_0x19a977
	buttonsound
	verbosegiveitem ELIXER, 1
	iffalse UnknownScript_0x19a711
	writetext UnknownText_0x19a9c3
	waitbutton
	closetext
	clearevent EVENT_SHOWED_A_BIG_MAGIKARP_BUT_NO_ROOM
	end
; 0x19a711

UnknownScript_0x19a711: ; 0x19a711
	closetext
	setevent EVENT_SHOWED_A_BIG_MAGIKARP_BUT_NO_ROOM
	end
; 0x19a716

UnknownScript_0x19a716: ; 0x19a716
	writetext UnknownText_0x19aa01
	waitbutton
	closetext
	end
; 0x19a71c

UnknownScript_0x19a71c: ; 0x19a71c
	writetext UnknownText_0x19aa5c
	waitbutton
	closetext
	end
; 0x19a722

UnknownScript_0x19a722: ; 0x19a722
	writetext UnknownText_0x19aa79
	waitbutton
	closetext
	end
; 0x19a728

UnknownScript_0x19a728: ; 0x19a728
	jumptext UnknownText_0x19aabc
; 0x19a72b

MapLakeofRageMagikarpHouseSignpost1Script: ; 0x19a72b
	jumpstd difficultbookshelf
; 0x19a72e

UnknownText_0x19a72e: ; 0x19a72e
	text "LAKE OF RAGE is"
	line "actually a crater"

	para "made by rampaging"
	line "GYARADOS."

	para "The crater filled"
	line "up with rainwater"

	para "and the LAKE was"
	line "formed."

	para "That's the story"
	line "passed on from my"

	para "great-great-great-"
	line "great-great-great-"

	para "great-great-great-"
	line "great-great-great-"

	para "great-great-great-"
	line "great-grandpa."

	para "It used to be that"
	line "you could catch"

	para "lively MAGIKARP"
	line "there, but<...>"

	para "I don't understand"
	line "what's happening."
	done
; 0x19a84d

UnknownText_0x19a84d: ; 0x19a84d
	text "The LAKE hasn't"
	line "been normal since"

	para "those men wearing"
	line "black arrived."
	done
; 0x19a890

UnknownText_0x19a890: ; 0x19a890
	text "LAKE OF RAGE is"
	line "back to normal."

	para "The MAGIKARP have"
	line "returned."

	para "I may yet realize"
	line "my dream of see-"
	cont "ing the world's"
	cont "largest MAGIKARP."

	para "Do you have a ROD?"
	line "Please help me if"
	cont "you do."
	done
; 0x19a93e

UnknownText_0x19a93e: ; 0x19a93e
	text "Ah, you have a"
	line "MAGIKARP! Let's"

	para "see how big that"
	line "baby is."
	done
; 0x19a977

UnknownText_0x19a977: ; 0x19a977
	text "Wow! This one is"
	line "outstanding!"

	para "I tip my hat to"
	line "you!"

	para "Take this as a"
	line "memento!"
	done
; 0x19a9c3

UnknownText_0x19a9c3: ; 0x19a9c3
	text "The record is the"
	line "important thing."

	para "Think of that as"
	line "a bonus!"
	done
; 0x19aa01

UnknownText_0x19aa01: ; 0x19aa01
	text "Wow! This one is"
	line "outstanding!"

	para "<...>I wish I could"
	line "say that, but I've"

	para "seen a bigger one"
	line "before."
	done
; 0x19aa5c

UnknownText_0x19aa5c: ; 0x19aa5c
	text "What? That's not a"
	line "MAGIKARP!"
	done
; 0x19aa79

UnknownText_0x19aa79: ; 0x19aa79
	text "Oh<...> So you didn't"
	line "get one good"

	para "enough to show me?"
	line "Maybe next time."
	done
; 0x19aabc

UnknownText_0x19aabc: ; 0x19aabc
	text "CURRENT RECORD"

	para "@"
	text_from_ram StringBuffer3
	text " caught by"
	line "@"
	text_from_ram StringBuffer4
	db "@@"
; 0x19aae2

LakeofRageMagikarpHouse_MapEventHeader: ; 0x19aae2
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_LAKE_OF_RAGE, MAP_LAKE_OF_RAGE
	warp_def $7, $3, 2, GROUP_LAKE_OF_RAGE, MAP_LAKE_OF_RAGE

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapLakeofRageMagikarpHouseSignpost1Script
	signpost 1, 1, $0, MapLakeofRageMagikarpHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x19a6ae, -1
; 0x19ab09

