SaffronTrainStation_MapScriptHeader: ; 0x18a817
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x18a81d, $0000

	; callback count
	db 0
; 0x18a81d

UnknownScript_0x18a81d: ; 0x18a81d
	end
; 0x18a81e

OfficerScript_0x18a81e: ; 0x18a81e
	faceplayer
	loadfont
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x18a82c
	writetext UnknownText_0x18a8a9
	waitbutton
	closetext
	end
; 0x18a82c

UnknownScript_0x18a82c: ; 0x18a82c
	writetext UnknownText_0x18a8dd
	yesorno
	iffalse UnknownScript_0x18a85c
	checkitem PASS
	iffalse UnknownScript_0x18a856
	writetext UnknownText_0x18a917
	waitbutton
	closetext
	applymovement $2, MovementData_0x18a88f
	applymovement $0, MovementData_0x18a898
	writebyte $1
	special Function8cc04
	warpcheck
	newloadmap $f9
	applymovement $0, MovementData_0x18a854
	wait $14
	end
; 0x18a854

MovementData_0x18a854: ; 0x18a854
	turn_head_down
	step_end
; 0x18a856

UnknownScript_0x18a856: ; 0x18a856
	writetext UnknownText_0x18a956
	waitbutton
	closetext
	end
; 0x18a85c

UnknownScript_0x18a85c: ; 0x18a85c
	writetext UnknownText_0x18a978
	waitbutton
	closetext
	end
; 0x18a862

UnknownScript_0x18a862: ; 0x18a862
	applymovement $2, MovementData_0x18a88f
	applymovement $0, MovementData_0x18a8a1
	applymovement $2, MovementData_0x18a894
	loadfont
	writetext UnknownText_0x18a993
	waitbutton
	closetext
	end
; 0x18a875

GymGuyScript_0x18a875: ; 0x18a875
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x18a883
	writetext UnknownText_0x18a9ca
	waitbutton
	closetext
	end
; 0x18a883

UnknownScript_0x18a883: ; 0x18a883
	writetext UnknownText_0x18aa61
	waitbutton
	closetext
	end
; 0x18a889

TeacherScript_0x18a889: ; 0x18a889
	jumptextfaceplayer UnknownText_0x18aaab
; 0x18a88c

LassScript_0x18a88c: ; 0x18a88c
	jumptextfaceplayer UnknownText_0x18ab20
; 0x18a88f

MovementData_0x18a88f: ; 0x18a88f
	step_up
	step_up
	step_right
	turn_head_left
	step_end
; 0x18a894

MovementData_0x18a894: ; 0x18a894
	step_left
	step_down
	step_down
	step_end
; 0x18a898

MovementData_0x18a898: ; 0x18a898
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end
; 0x18a8a1

MovementData_0x18a8a1: ; 0x18a8a1
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end
; 0x18a8a9

UnknownText_0x18a8a9: ; 0x18a8a9
	text "I'm sorry, but the"
	line "MAGNET TRAIN isn't"
	cont "operating now."
	done
; 0x18a8dd

UnknownText_0x18a8dd: ; 0x18a8dd
	text "We'll soon depart"
	line "for GOLDENROD."

	para "Are you coming on"
	line "board?"
	done
; 0x18a917

UnknownText_0x18a917: ; 0x18a917
	text "May I see your"
	line "rail PASS, please?"

	para "OK. Right this"
	line "way, please."
	done
; 0x18a956

UnknownText_0x18a956: ; 0x18a956
	text "Sorry, but you"
	line "don't have a PASS."
	done
; 0x18a978

UnknownText_0x18a978: ; 0x18a978
	text "We hope to see you"
	line "again."
	done
; 0x18a993

UnknownText_0x18a993: ; 0x18a993
	text "We have arrived in"
	line "SAFFRON."

	para "We hope to see you"
	line "again."
	done
; 0x18a9ca

UnknownText_0x18a9ca: ; 0x18a9ca
	text "The MAGNET TRAIN"
	line "is a super-modern"

	para "rail liner that"
	line "uses electricity"

	para "and magnets to"
	line "attain incredible"
	cont "speed."

	para "However, if there"
	line "isn't any elec-"
	cont "tricity<...>"
	done
; 0x18aa61

UnknownText_0x18aa61: ; 0x18aa61
	text "Whew<...>"

	para "How many times"
	line "have I gone back"

	para "and forth between"
	line "KANTO and JOHTO?"
	done
; 0x18aaab

UnknownText_0x18aaab: ; 0x18aaab
	text "Before the MAGNET"
	line "TRAIN STATION was"

	para "built, there was a"
	line "house there."

	para "A little girl"
	line "named COPYCAT used"
	cont "to live there."
	done
; 0x18ab20

UnknownText_0x18ab20: ; 0x18ab20
	text "Hi. Do you have a"
	line "rail PASS? I have"

	para "one. All the peo-"
	line "ple in SAFFRON who"

	para "ride the MAGNET"
	line "TRAIN have PASSES."
	done
; 0x18ab8d

SaffronTrainStation_MapEventHeader: ; 0x18ab8d
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $11, $8, 6, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $11, $9, 6, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $5, $6, 4, GROUP_GOLDENROD_MAGNET_TRAIN_STATION, MAP_GOLDENROD_MAGNET_TRAIN_STATION
	warp_def $5, $b, 3, GROUP_GOLDENROD_MAGNET_TRAIN_STATION, MAP_GOLDENROD_MAGNET_TRAIN_STATION

	; xy triggers
	db 1
	xy_trigger 0, $6, $b, $0, UnknownScript_0x18a862, $0, $0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_OFFICER, 13, 13, $6, 0, 0, -1, -1, 0, 0, 0, OfficerScript_0x18a81e, -1
	person_event SPRITE_GYM_GUY, 18, 14, $2, 1, 1, -1, -1, 0, 0, 0, GymGuyScript_0x18a875, -1
	person_event SPRITE_TEACHER, 15, 10, $9, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x18a889, EVENT_LADIES_IN_SAFFRON_STATION
	person_event SPRITE_LASS, 14, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LassScript_0x18a88c, EVENT_LADIES_IN_SAFFRON_STATION
; 0x18abe3

