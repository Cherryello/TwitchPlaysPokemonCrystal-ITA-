PowerPlant_MapScriptHeader: ; 0x188db9
	; trigger count
	db 2

	; triggers
	dw .Trigger0, $0000
	dw .Trigger1, $0000

	; callback count
	db 1
	dbw 1, .OpenSesame
; 0x188dc3

.Trigger0: ; 0x188dc3
	end
; 0x188dc4

.Trigger1: ; 0x188dc4
	end
; 0x188dc5
.OpenSesame
	checkevent EVENT_FIRST_TIME_BABA
	iffalse .skip
	changeblock 0, 6, $5
.skip
	return

UnknownScript_0x188dc5: ; 0x188dc5
	playsound SFX_CALL
	showemote $0, $2, 15
	waitsfx
	pause 30
	applymovement $2, MovementData_0x188ed5
	spriteface $3, $0
	spriteface $4, $0
	loadfont
	writetext UnknownText_0x188f22
	waitbutton
	closetext
	spriteface $2, $2
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x188f7f
	waitbutton
	closetext
	spriteface $0, $0
	applymovement $2, MovementData_0x188eda
	dotrigger $0
	end
; 0x188df5

OfficerScript_0x188df5: ; 0x188df5
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e0f
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue UnknownScript_0x188e09
	writetext UnknownText_0x188ee0
	waitbutton
	closetext
	end
; 0x188e09

UnknownScript_0x188e09: ; 0x188e09
	writetext UnknownText_0x188f7f
	waitbutton
	closetext
	end
; 0x188e0f

UnknownScript_0x188e0f: ; 0x188e0f
	writetext UnknownText_0x188fa2
	waitbutton
	closetext
	end
; 0x188e15

GymGuyScript_0x188e15: ; 0x188e15
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e23
	writetext UnknownText_0x188fcf
	waitbutton
	closetext
	end
; 0x188e23

UnknownScript_0x188e23: ; 0x188e23
	writetext UnknownText_0x189038
	waitbutton
	closetext
	end
; 0x188e29

GymGuyScript_0x188e29: ; 0x188e29
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e37
	writetext UnknownText_0x189079
	waitbutton
	closetext
	end
; 0x188e37

UnknownScript_0x188e37: ; 0x188e37
	writetext UnknownText_0x1890ef
	waitbutton
	closetext
	end
; 0x188e3d

OfficerScript_0x188e3d: ; 0x188e3d
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e4b
	writetext UnknownText_0x18910e
	waitbutton
	closetext
	end
; 0x188e4b

UnknownScript_0x188e4b: ; 0x188e4b
	writetext UnknownText_0x18917f
	waitbutton
	closetext
	end
; 0x188e51

GymGuyScript_0x188e51: ; 0x188e51
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188e5f
	writetext UnknownText_0x1891c2
	waitbutton
	closetext
	end
; 0x188e5f

UnknownScript_0x188e5f: ; 0x188e5f
	writetext UnknownText_0x189225
	waitbutton
	closetext
	end
; 0x188e65

FisherScript_0x188e65: ; 0x188e65
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x188eac
	checkitem MACHINE_PART
	iftrue UnknownScript_0x188e93
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue UnknownScript_0x188e8d
	writetext UnknownText_0x189264
	waitbutton
	closetext
	setevent EVENT_MET_MANAGER_AT_POWER_PLANT
	clearevent EVENT_ROCKET_IN_CERULEAN_GYM
	clearevent EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM
	domaptrigger GROUP_CERULEAN_GYM, MAP_CERULEAN_GYM, $1
	dotrigger $1
	end
; 0x188e8d

UnknownScript_0x188e8d: ; 0x188e8d
	writetext UnknownText_0x189308
	waitbutton
	closetext
	end
; 0x188e93

UnknownScript_0x188e93: ; 0x188e93
	writetext UnknownText_0x18936e
	buttonsound
	takeitem MACHINE_PART, 1
	setevent EVENT_RETURNED_MACHINE_PART
	clearevent EVENT_LADIES_IN_SAFFRON_STATION
	setevent EVENT_MEN_BLOCKING_UNDERGROUND_PATH_ROUTES_5_6
	setevent EVENT_ROCKET_ON_ROUTE_24
	setevent EVENT_RESTORED_POWER_TO_KANTO
	clearevent EVENT_MAGNET_TRAIN_PRESIDENT_IN_GOLDENROD_STATION
UnknownScript_0x188eac: ; 0x188eac
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue UnknownScript_0x188ec5
	writetext UnknownText_0x1893c4
	buttonsound
	verbosegiveitem TM_THUNDER, 1
	iffalse UnknownScript_0x188ec3
	setevent EVENT_GOT_TM07_ZAP_CANNON
	writetext UnknownText_0x1893f4
	waitbutton
UnknownScript_0x188ec3: ; 0x188ec3
	closetext
	end
; 0x188ec5

UnknownScript_0x188ec5: ; 0x188ec5
	writetext UnknownText_0x189475
	waitbutton
	closetext
	end
; 0x188ecb

GymGuyScript_0x188ecb: ; 0x188ecb
	faceplayer
	loadfont
	trade $6
	waitbutton
	closetext
	end
; 0x188ed2

MapPowerPlantSignpost1Script: ; 0x188ed2
	jumpstd difficultbookshelf
; 0x188ed5

MovementData_0x188ed5: ; 0x188ed5
	step_right
	step_right
	step_up
	step_up
	step_end
; 0x188eda

MovementData_0x188eda: ; 0x188eda
	step_down
	step_down
	step_left
	step_left
	turn_head_down
	step_end
; 0x188ee0

UnknownText_0x188ee0: ; 0x188ee0
	text "A thief broke into"
	line "the POWER PLANT<...>"

	para "What is the world"
	line "coming to?"
	done
; 0x188f22

UnknownText_0x188f22: ; 0x188f22
	text "I just got word"
	line "from CERULEAN."

	para "It appears that a"
	line "shady character"

	para "has been loitering"
	line "around."
	done
; 0x188f7f

UnknownText_0x188f7f: ; 0x188f7f
	text "Could I ask for"
	line "your cooperation?"
	done
; 0x188fa2

UnknownText_0x188fa2: ; 0x188fa2
	text "We'll have to beef"
	line "up our security"
	cont "presence."
	done
; 0x188fcf

UnknownText_0x188fcf: ; 0x188fcf
	text "Someone made off"
	line "with a part that's"

	para "essential for the"
	line "generator."

	para "Without it, the"
	line "new generator's"
	cont "useless!"
	done
; 0x189038

UnknownText_0x189038: ; 0x189038
	text "The generator's up"
	line "and running. It's"

	para "making electricity"
	line "to spare."
	done
; 0x189079

UnknownText_0x189079: ; 0x189079
	text "This POWER PLANT"
	line "had been abandoned"
	cont "in the past."

	para "We got it back up"
	line "and running to"

	para "provide power to"
	line "the MAGNET TRAIN."
	done
; 0x1890ef

UnknownText_0x1890ef: ; 0x1890ef
	text "The generator's"
	line "running again!"
	done
; 0x18910e

UnknownText_0x18910e: ; 0x18910e
	text "The POWER PLANT's"
	line "MANAGER is up"
	cont "ahead."

	para "But since someone"
	line "wrecked the gener-"
	cont "ator, he's been"
	cont "both sad and"
	cont "furious<...>"
	done
; 0x18917f

UnknownText_0x18917f: ; 0x18917f
	text "Since the gener-"
	line "ator's been fixed,"

	para "the MANAGER has"
	line "been cheerful."
	done
; 0x1891c2

UnknownText_0x1891c2: ; 0x1891c2
	text "The MAGNET TRAIN"
	line "consumes a lot of"
	cont "electricity."

	para "It can't move if"
	line "the new generator"
	cont "isn't operating."
	done
; 0x189225

UnknownText_0x189225: ; 0x189225
	text "All right! We can"
	line "finally get the"

	para "MAGNET TRAIN"
	line "running again."
	done
; 0x189264

UnknownText_0x189264: ; 0x189264
	text "MANAGER: I, I, I'm"
	line "ready to blast"
	cont "someone!"

	para "Who would dare"
	line "ruin my generator?"

	para "I spent so much"
	line "time on it!"

	para "If I catch him,"
	line "he's going to get"

	para "a taste of my"
	line "THUNDERSHOT!"
	done
; 0x189308

UnknownText_0x189308: ; 0x189308
	text "MANAGER: I won't"
	line "forgive him!"

	para "The culprit can"
	line "cry and apologize,"

	para "but I'll still"
	line "hammer him!"

	para "Gahahahah!"
	done
; 0x18936e

UnknownText_0x18936e: ; 0x18936e
	text "MANAGER: Ah! Yeah!"

	para "That's the missing"
	line "PART from my be-"
	cont "loved generator!"
	cont "You found it?"
	done
; 0x1893c4

UnknownText_0x1893c4: ; 0x1893c4
	text "Wahah! Thanks!"

	para "Here! Take this TM"
	line "as a reward!"
	done
; 0x1893f4

UnknownText_0x1893f4: ; 0x1893f4
	text "MANAGER: TM25 is"
	line "THUNDER."

	para "It's a powerful"
	line "technique!"

	para "It's not what any-"
	line "one would consider"

	para "accurate, but it"
	line "packs a wallop!"
	done
; 0x189475

UnknownText_0x189475: ; 0x189475
	text "MANAGER: My be-"
	line "loved generator!"

	para "Keep pumping the"
	line "electricity out!"
	done
; 0x1894b9

PowerPlant_MapEventHeader: ; 0x1894b9
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $11, $2, 2, GROUP_ROUTE_10_NORTH, MAP_ROUTE_10_NORTH
	warp_def $11, $3, 2, GROUP_ROUTE_10_NORTH, MAP_ROUTE_10_NORTH
	warp_def 6, 1, 1, GROUP_POWERPLANTB1, MAP_POWERPLANTB1

	; xy triggers
	db 1
	xy_trigger 1, $c, $5, $0, UnknownScript_0x188dc5, $0, $0

	; signposts
	db 2
	signpost 1, 0, $0, MapPowerPlantSignpost1Script
	signpost 1, 1, $0, MapPowerPlantSignpost1Script

	; people-events
	db 7
	person_event SPRITE_OFFICER, 18, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, OfficerScript_0x188df5, -1
	person_event SPRITE_GYM_GUY, 13, 6, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188e15, -1
	person_event SPRITE_GYM_GUY, 15, 10, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188e29, -1
	person_event SPRITE_OFFICER, 7, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, OfficerScript_0x188e3d, -1
	person_event SPRITE_GYM_GUY, 6, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188e51, -1
	person_event SPRITE_FISHER, 14, 18, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, FisherScript_0x188e65, -1
	person_event SPRITE_GYM_GUY, 9, 9, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GymGuyScript_0x188ecb, -1
; 0x189536

