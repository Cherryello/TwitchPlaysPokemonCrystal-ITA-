BlackthornGym1F_MapScriptHeader: ; 0x194e00
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x194e05
; 0x194e05

UnknownScript_0x194e05: ; 0x194e05
	checkevent EVENT_BLACKTHORN_GYM_BOULDER_1
	iffalse UnknownScript_0x194e0f
	changeblock $8, $2, $3b
UnknownScript_0x194e0f: ; 0x194e0f
	checkevent EVENT_BLACKTHORN_GYM_BOULDER_2
	iffalse UnknownScript_0x194e19
	changeblock $2, $4, $3a
UnknownScript_0x194e19: ; 0x194e19
	checkevent EVENT_BLACKTHORN_GYM_BOULDER_3
	iffalse UnknownScript_0x194e23
	changeblock $8, $6, $3b
UnknownScript_0x194e23: ; 0x194e23
	return
; 0x194e24

ClairScript_0x194e24: ; 0x194e24
	faceplayer
	loadfont
	checkflag ENGINE_RISINGBADGE
	iftrue UnknownScript_0x194e69
	checkevent EVENT_BEAT_CLAIR
	iftrue UnknownScript_0x194e63
	writetext UnknownText_0x194efa
	waitbutton
	closetext
	winlosstext UnknownText_0x194fd6, $0000
	loadtrainer CLAIR, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_CLAIR
	loadfont
	writetext UnknownText_0x19500e
	waitbutton
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	clearevent EVENT_MAHOGANY_MART_TRUE_OWNERS
	setevent EVENT_GRAMPS_BLOCKING_DRAGONS_DEN
	clearevent EVENT_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end
; 0x194e63

UnknownScript_0x194e63: ; 0x194e63
	writetext UnknownText_0x195162
	waitbutton
	closetext
	end
; 0x194e69

UnknownScript_0x194e69: ; 0x194e69
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue UnknownScript_0x194e94
	writetext UnknownText_0x195196
	buttonsound
	giveitem TM_DRAGON_PULSE, $1
	iffalse UnknownScript_0x194e8e
	itemtotext TM_DRAGON_PULSE, $0
	writetext UnknownText_0x1951bf
	playsound SFX_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext UnknownText_0x1951d1
	buttonsound
	jump UnknownScript_0x194e94
; 0x194e8e

UnknownScript_0x194e8e: ; 0x194e8e
	writetext UnknownText_0x19524f
	waitbutton
	closetext
	end
; 0x194e94

UnknownScript_0x194e94: ; 0x194e94
	writetext UnknownText_0x195272
	waitbutton
	closetext
	end
; 0x194e9a

TrainerCooltrainermPaul: ; 0x194e9a
	; bit/flag number
	dw $54a

	; trainer group && trainer id
	db COOLTRAINERM, PAUL

	; text when seen
	dw CooltrainermPaulSeenText

	; text when trainer beaten
	dw CooltrainermPaulBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermPaulScript
; 0x194ea6

CooltrainermPaulScript: ; 0x194ea6
	talkaftercancel
	loadfont
	writetext UnknownText_0x1953f1
	waitbutton
	closetext
	end
; 0x194eae

TrainerCooltrainermMike: ; 0x194eae
	; bit/flag number
	dw $54c

	; trainer group && trainer id
	db COOLTRAINERM, MIKE

	; text when seen
	dw CooltrainermMikeSeenText

	; text when trainer beaten
	dw CooltrainermMikeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermMikeScript
; 0x194eba

CooltrainermMikeScript: ; 0x194eba
	talkaftercancel
	loadfont
	writetext UnknownText_0x195467
	waitbutton
	closetext
	end
; 0x194ec2

TrainerCooltrainerfLola: ; 0x194ec2
	; bit/flag number
	dw $55e

	; trainer group && trainer id
	db COOLTRAINERF, LOLA

	; text when seen
	dw CooltrainerfLolaSeenText

	; text when trainer beaten
	dw CooltrainerfLolaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfLolaScript
; 0x194ece

CooltrainerfLolaScript: ; 0x194ece
	talkaftercancel
	loadfont
	writetext UnknownText_0x195516
	waitbutton
	closetext
	end
; 0x194ed6

BlackthornGymGuyScript: ; 0x194ed6
	faceplayer
	loadfont
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuyWinScript
	writetext BlackthornGymGuyText
	waitbutton
	closetext
	end

.BlackthornGymGuyWinScript
	writetext BlackthornGymGuyWinText
	waitbutton
	closetext
	end
; 0x194eea

MapBlackthornGym1FSignpost1Script: ; 0x194eea
	checkflag ENGINE_RISINGBADGE
	iftrue UnknownScript_0x194ef3
	jumpstd gymstatue1
; 0x194ef3

UnknownScript_0x194ef3: ; 0x194ef3
	trainertotext CLAIR, 1, $1
	jumpstd gymstatue2
; 0x194efa

UnknownText_0x194efa: ; 0x194efa
	text "I am CLAIR."

	para "The world's best"
	line "dragon master."

	para "I can hold my own"
	line "against even the"

	para "#MON LEAGUE's"
	line "ELITE FOUR."

	para "Do you still want"
	line "to take me on?"

	para "<...>Fine."
	line "Let's do it!"

	para "As a GYM LEADER,"
	line "I will use my full"

	para "power against any"
	line "opponent!"
	done
; 0x194fd6

UnknownText_0x194fd6: ; 0x194fd6
	text "I lost?"

	para "I don't believe"
	line "it. There must be"
	cont "some mistake<...>"
	done
; 0x19500e

UnknownText_0x19500e: ; 0x19500e
	text "I won't admit"
	line "this."

	para "I may have lost,"
	line "but you're still"

	para "not ready for the"
	line "#MON LEAGUE."

	para "I know. You should"
	line "take the dragon"
	cont "user challenge."

	para "Behind this GYM is"
	line "a place called"
	cont "DRAGON'S DEN."

	para "There is a small"
	line "shrine at its"

	para "center."
	line "Go there."

	para "If you can prove"
	line "that you've lost"

	para "your lazy ideals,"
	line "I will recognize"

	para "you as a trainer"
	line "worthy of a GYM"
	cont "BADGE!"
	done
; 0x195162

UnknownText_0x195162: ; 0x195162
	text "What's the matter?"

	para "Is it too much to"
	line "expect of you?"
	done
; 0x195196

UnknownText_0x195196: ; 0x195196
	text "You've kept me"
	line "waiting!"

	para "Here! Take this!"
	done
; 0x1951bf

UnknownText_0x1951bf: ; 0x1951bf
	text "<PLAYER> received"
	line "TM24."
	done
; 0x1951d1

UnknownText_0x1951d1: ; 0x1951d1
	text "That contains"
	line "DRAGON PULSE."

	para "It fires a huge"
	line "energy blast of"
	cont "some kind."

	para "If you don't want"
	line "it, you don't have"
	cont "to take it<...>"
	done
; 0x19524f

UnknownText_0x19524f: ; 0x19524f
	text "What is this? You"
	line "don't have room?"
	done
; 0x195272

UnknownText_0x195272: ; 0x195272
	text "What's the matter?"

	para "Aren't you headed"
	line "to the #MON"
	cont "LEAGUE?"

	para "Don't you know"
	line "where it is?"

	para "From here, go to"
	line "NEW BARK TOWN."

	para "Then SURF east."
	line "The route there is"
	cont "very tough."

	para "Don't you dare"
	line "lose at the #-"
	cont "MON LEAGUE!"

	para "If you do, I'll"
	line "feel even worse"

	para "about having lost"
	line "to you!"

	para "Give it every-"
	line "thing you've got."
	done
; 0x195396

CooltrainermPaulSeenText: ; 0x195396
	text "Your first battle"
	line "against dragons?"

	para "I'll show you how"
	line "tough they are!"
	done
; 0x1953db

CooltrainermPaulBeatenText: ; 0x1953db
	text "My dragon #MON"
	line "lost?"
	done
; 0x1953f1

UnknownText_0x1953f1: ; 0x1953f1
	text "LANCE told you"
	line "that he'd like to"

	para "see you again?"
	line "Not a chance!"
	done
; 0x19542f

CooltrainermMikeSeenText: ; 0x19542f
	text "My chance of"
	line "losing? Not even"
	cont "one percent!"
	done
; 0x19545b

CooltrainermMikeBeatenText: ; 0x19545b
	text "That's odd."
	done
; 0x195467

UnknownText_0x195467: ; 0x195467
	text "I know my short-"
	line "comings now."

	para "Thanks for showing"
	line "me!"
	done
; 0x19549d

CooltrainerfLolaSeenText: ; 0x19549d
	text "Dragons are sacred"
	line "#MON."

	para "They are full of"
	line "life energy."

	para "My #MON might"
	line "not be dragon-type"

	para "but don't"
	line "underestimate it!"
	done
; 0x19550a

CooltrainerfLolaBeatenText: ; 0x19550a
	text "Way to go!"
	done
; 0x195516

UnknownText_0x195516: ; 0x195516
	text "Dragons are weak"
	line "against dragon-"
	cont "type moves."

	para "If you want to"
	line "beat CLAIR,"
	cont "remember that!"
	done
; 0x195544

BlackthornGymGuyText: ; 0x195544
	text "Yo! CHAMP in"
	line "making!"

	para "It's been a long"
	line "journey, but we"

	para "are almost done!"
	line "Count on me!"

	para "CLAIR uses the"
	line "mythical and sac-"
	cont "red dragon-type"
	cont "#MON."

	para "They resist many"
	line "common types,"

	para "but reptiles"
	line "dislike ice,"

	para "and fairies have"
	line "a huge advantage."
	done
; 0x195632

BlackthornGymGuyWinText: ; 0x195632
	text "You were great to"
	line "beat CLAIR!"

	para "All that's left is"
	line "the #MON LEAGUE"
	cont "challenge."

	para "You're on the way"
	line "to becoming the"
	cont "#MON CHAMPION!"
	done
; 0x1956ae

BlackthornGym1F_MapEventHeader: ; 0x1956ae
	; filler
	db 0, 0

	; warps
	db 7
	warp_def $11, $4, 1, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $11, $5, 1, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $7, $1, 1, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $9, $7, 2, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $6, $2, 3, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $7, $7, 4, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F
	warp_def $6, $7, 5, GROUP_BLACKTHORN_GYM_2F, MAP_BLACKTHORN_GYM_2F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, MapBlackthornGym1FSignpost1Script
	signpost 15, 6, $0, MapBlackthornGym1FSignpost1Script

	; people-events
	db 5
	person_event SPRITE_CLAIR, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ClairScript_0x194e24, -1
	person_event SPRITE_COOLTRAINER_M, 10, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermMike, -1
	person_event SPRITE_COOLTRAINER_M, 18, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerCooltrainermPaul, -1
	person_event SPRITE_COOLTRAINER_F, 6, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerCooltrainerfLola, -1
	person_event SPRITE_GYM_GUY, 19, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BlackthornGymGuyScript, -1
; 0x195722

