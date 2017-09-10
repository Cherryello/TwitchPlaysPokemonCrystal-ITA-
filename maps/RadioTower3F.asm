RadioTower3F_MapScriptHeader: ; 0x5e53e
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x5e543
; 0x5e543

UnknownScript_0x5e543: ; 0x5e543
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue UnknownScript_0x5e54a
	return
; 0x5e54a

UnknownScript_0x5e54a: ; 0x5e54a
	changeblock $e, $2, $2a
	changeblock $e, $4, $1
	return
; 0x5e553

SuperNerdScript_0x5e553: ; 0x5e553
	jumptextfaceplayer UnknownText_0x5e621
; 0x5e556

GymGuyScript_0x5e556: ; 0x5e556
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x5e564
	writetext UnknownText_0x5e682
	waitbutton
	closetext
	end
; 0x5e564

UnknownScript_0x5e564: ; 0x5e564
	writetext UnknownText_0x5e6eb
	waitbutton
	closetext
	end
; 0x5e56a

CooltrainerFScript_0x5e56a: ; 0x5e56a
	faceplayer
	loadfont
	checkevent EVENT_GOT_SUNNY_DAY_FROM_RADIO_TOWER
	iftrue UnknownScript_0x5e59d
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue UnknownScript_0x5e58a
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue UnknownScript_0x5e584
	writetext UnknownText_0x5e754
	waitbutton
	closetext
	end
; 0x5e584

UnknownScript_0x5e584: ; 0x5e584
	writetext UnknownText_0x5e7cb
	waitbutton
	closetext
	end
; 0x5e58a

UnknownScript_0x5e58a: ; 0x5e58a
	writetext UnknownText_0x5e7e2
	buttonsound
	verbosegiveitem TM_RETURN, 1
	iffalse UnknownScript_0x5e5a1
	writetext UnknownText_0x5e821
	waitbutton
	closetext
	setevent EVENT_GOT_SUNNY_DAY_FROM_RADIO_TOWER
	end
; 0x5e59d

UnknownScript_0x5e59d: ; 0x5e59d
	writetext UnknownText_0x5e85c
	waitbutton
UnknownScript_0x5e5a1: ; 0x5e5a1
	closetext
	end
; 0x5e5a3

TrainerGruntM7: ; 0x5e5a3
	; bit/flag number
	dw $4f7

	; trainer group && trainer id
	db GRUNTM, 7

	; text when seen
	dw GruntM7SeenText

	; text when trainer beaten
	dw GruntM7BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM7Script
; 0x5e5af

GruntM7Script: ; 0x5e5af
	talkaftercancel
	loadfont
	writetext UnknownText_0x5e8d0
	waitbutton
	closetext
	end
; 0x5e5b7

TrainerGruntM8: ; 0x5e5b7
	; bit/flag number
	dw $4f8

	; trainer group && trainer id
	db GRUNTM, 8

	; text when seen
	dw GruntM8SeenText

	; text when trainer beaten
	dw GruntM8BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM8Script
; 0x5e5c3

GruntM8Script: ; 0x5e5c3
	talkaftercancel
	loadfont
	writetext UnknownText_0x5e944
	waitbutton
	closetext
	end
; 0x5e5cb

TrainerGruntM9: ; 0x5e5cb
	; bit/flag number
	dw $4f9

	; trainer group && trainer id
	db GRUNTM, 9

	; text when seen
	dw GruntM9SeenText

	; text when trainer beaten
	dw GruntM9BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM9Script
; 0x5e5d7

GruntM9Script: ; 0x5e5d7
	talkaftercancel
	loadfont
	writetext UnknownText_0x5e9d0
	waitbutton
	closetext
	end
; 0x5e5df

TrainerScientistMarc: ; 0x5e5df
	; bit/flag number
	dw $4a2

	; trainer group && trainer id
	db SCIENTIST, MARC

	; text when seen
	dw ScientistMarcSeenText

	; text when trainer beaten
	dw ScientistMarcBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw ScientistMarcScript
; 0x5e5eb

ScientistMarcScript: ; 0x5e5eb
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ea61
	waitbutton
	closetext
	end
; 0x5e5f3

MapRadioTower3FSignpost2Script:: ; 0x5e5f3
	loadfont
	writetext UnknownText_0x5eaa4
	waitbutton
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue UnknownScript_0x5e603
	checkitem CARD_KEY
	iftrue UnknownScript_0x5e605
UnknownScript_0x5e603: ; 0x5e603
	closetext
	end
; 0x5e605

UnknownScript_0x5e605: ; 0x5e605
	writetext UnknownText_0x5eabc
	waitbutton
	setevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	playsound SFX_ENTER_DOOR
	changeblock $e, $2, $2a
	changeblock $e, $4, $1
	reloadmappart
	closetext
	waitsfx
	end
; 0x5e61b

MapRadioTower3FSignpost0Script: ; 0x5e61b
	jumptext UnknownText_0x5ead6
; 0x5e61e

MapRadioTower3FSignpost1Script: ; 0x5e61e
	jumptext UnknownText_0x5eae4
; 0x5e621

UnknownText_0x5e621: ; 0x5e621
	text "We have recordings"
	line "of the cries of"

	para "all #MON that"
	line "have been found."

	para "We must have about"
	line "200 kinds."
	done
; 0x5e682

UnknownText_0x5e682: ; 0x5e682
	text "To trainers, #-"
	line "MON are their"
	cont "beloved partners."

	para "It's terrible how"
	line "TEAM ROCKET is"

	para "trying to control"
	line "#MON."
	done
; 0x5e6eb

UnknownText_0x5e6eb: ; 0x5e6eb
	text "We run 24 hours a"
	line "day to broadcast"

	para "entertaining pro-"
	line "grams."

	para "I'll do my best to"
	line "run around the"
	cont "clock too!"
	done
; 0x5e754

UnknownText_0x5e754: ; 0x5e754
	text "The TEAM ROCKET"
	line "boss has locked"
	cont "himself in."

	para "But the DIRECTOR"
	line "can open it."

	para "He's up on the"
	line "fifth floor."

	para "Please save him!"
	done
; 0x5e7cb

UnknownText_0x5e7cb: ; 0x5e7cb
	text "Is the DIRECTOR"
	line "safe?"
	done
; 0x5e7e2

UnknownText_0x5e7e2: ; 0x5e7e2
	text "Thank you!"
	line "You're my hero!"

	para "This is a token of"
	line "my appreciation."
	done
; 0x5e821

UnknownText_0x5e821: ; 0x5e821
	text "It's RETURN."

	para "The more the user"
	line "likes its trainer"
	cont "the more it hurts."

	para "Unleash your"
	line "annihilation of"
	cont "LOOOVE!!"
	done
; 0x5e85c

UnknownText_0x5e85c: ; 0x5e85c
	text "You were simply"
	line "marvelous!"
	done
; 0x5e878

GruntM7SeenText: ; 0x5e878
	text "I've been given"
	line "strict orders."

	para "I'm to crush any-"
	line "one who challenges"
	cont "TEAM ROCKET!"
	done
; 0x5e8c8

GruntM7BeatenText: ; 0x5e8c8
	text "What?!"
	done
; 0x5e8d0

UnknownText_0x5e8d0: ; 0x5e8d0
	text "I failed in my"
	line "duties<...>"

	para "I'll be docked pay"
	line "for this<...>"
	done
; 0x5e904

GruntM8SeenText: ; 0x5e904
	text "It feels great"
	line "ordering #MON"
	cont "to commit crimes."
	done
; 0x5e934

GruntM8BeatenText: ; 0x5e934
	text "You're kidding!"
	done
; 0x5e944

UnknownText_0x5e944: ; 0x5e944
	text "I feel lousy over"
	line "losing!"

	para "Darn it! I hate"
	line "useless #MON!"
	done
; 0x5e97d

GruntM9SeenText: ; 0x5e97d
	text "Why did the shut-"
	line "ter open? Did you"

	para "have something to"
	line "do with this?"
	done
; 0x5e9c2

GruntM9BeatenText: ; 0x5e9c2
	text "I'm done for!"
	done
; 0x5e9d0

UnknownText_0x5e9d0: ; 0x5e9d0
	text "What?! You made it"
	line "past our men in"
	cont "the UNDERGROUND?"

	para "How could you<...>"
	done
; 0x5ea14

ScientistMarcSeenText: ; 0x5ea14
	text "#MON isn't"
	line "all about levels!"

	para "I will show you"
	line "how important"
	cont "strategies are!"
	done
; 0x5ea43

ScientistMarcBeatenText: ; 0x5ea43
	text "How is this"
	line "possible!?"
	done
; 0x5ea61

UnknownText_0x5ea61: ; 0x5ea61
	text "Tactics is a big"
	line "part of #MON."

	para "For me it all"
	line "started with using"

	para "SMOG on a Grass-"
	line "type #MON."
	done
; 0x5eaa4

UnknownText_0x5eaa4: ; 0x5eaa4
	text "It's the CARD KEY"
	line "slot."
	done
; 0x5eabc

UnknownText_0x5eabc: ; 0x5eabc
	text "<PLAYER> inserted"
	line "the CARD KEY."
	done
; 0x5ead6

UnknownText_0x5ead6: ; 0x5ead6
	text "3F PERSONNEL"
	done
; 0x5eae4

UnknownText_0x5eae4: ; 0x5eae4
	text "#MON MUSIC with"
	line "Host DJ BEN"
	done
; 0x5eb01

RadioTower3F_MapEventHeader: ; 0x5eb01
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $0, 1, GROUP_RADIO_TOWER_2F, MAP_RADIO_TOWER_2F
	warp_def $0, $7, 2, GROUP_RADIO_TOWER_4F, MAP_RADIO_TOWER_4F
	warp_def $0, $11, 4, GROUP_RADIO_TOWER_4F, MAP_RADIO_TOWER_4F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 0, 3, $0, MapRadioTower3FSignpost0Script
	signpost 0, 9, $0, MapRadioTower3FSignpost1Script
	signpost 2, 14, $1, MapRadioTower3FSignpost2Script

	; people-events
	db 7
	person_event SPRITE_SUPER_NERD, 8, 11, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x5e553, EVENT_CIVILIANS_EVACUATED_RADIO_TOWER_UPPER_FLOORS
	person_event SPRITE_GYM_GUY, 8, 7, $a, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GymGuyScript_0x5e556, -1
	person_event SPRITE_COOLTRAINER_F, 7, 15, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, CooltrainerFScript_0x5e56a, -1
	person_event SPRITE_ROCKET, 5, 9, $9, 0, 0, -1, -1, 0, 2, 2, TrainerGruntM7, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 6, 10, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM8, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_ROCKET, 10, 20, $7, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM9, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
	person_event SPRITE_SCIENTIST, 10, 13, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 5, TrainerScientistMarc, EVENT_ROCKET_TAKEOVER_OF_GOLDENROD
; 0x5eb80

