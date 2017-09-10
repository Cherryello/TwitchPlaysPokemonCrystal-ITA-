Route44_MapScriptHeader: ; 0x19d822
	; trigger count
	db 0

	; callback count
	db 0
; 0x19d824

TrainerBird_keeperVance1: ; 0x19d824
	; bit/flag number
	dw $401

	; trainer group && trainer id
	db BIRD_KEEPER, VANCE1

	; text when seen
	dw Bird_keeperVance1SeenText

	; text when trainer beaten
	dw Bird_keeperVance1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperVance1Script
; 0x19d830

Bird_keeperVance1Script: ; 0x19d830
	writecode VAR_CALLERID, $20
	talkaftercancel
	loadfont
	checkflag ENGINE_VANCE
	iftrue UnknownScript_0x19d86a
	checkcellnum $20
	iftrue UnknownScript_0x19d8eb
	checkevent EVENT_ROUTE_44_295
	iftrue UnknownScript_0x19d853
	writetext UnknownText_0x19dbf3
	buttonsound
	setevent EVENT_ROUTE_44_295
	scall UnknownScript_0x19d8df
	jump UnknownScript_0x19d856
; 0x19d853

UnknownScript_0x19d853: ; 0x19d853
	scall UnknownScript_0x19d8e3
UnknownScript_0x19d856: ; 0x19d856
	askforphonenumber $20
	if_equal $1, UnknownScript_0x19d8f3
	if_equal $2, UnknownScript_0x19d8ef
	trainertotext BIRD_KEEPER, VANCE1, $0
	scall UnknownScript_0x19d8e7
	jump UnknownScript_0x19d8eb
; 0x19d86a

UnknownScript_0x19d86a: ; 0x19d86a
	scall UnknownScript_0x19d8f7
	winlosstext Bird_keeperVance1BeatenText, $0000
	copybytetovar wda09
	if_equal $2, UnknownScript_0x19d881
	if_equal $1, UnknownScript_0x19d887
	if_equal $0, UnknownScript_0x19d88d
UnknownScript_0x19d881: ; 0x19d881
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x19d8a7
UnknownScript_0x19d887: ; 0x19d887
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x19d89a
UnknownScript_0x19d88d: ; 0x19d88d
	loadtrainer BIRD_KEEPER, VANCE1
	startbattle
	returnafterbattle
	loadvar wda09, $1
	clearflag ENGINE_VANCE
	end
; 0x19d89a

UnknownScript_0x19d89a: ; 0x19d89a
	loadtrainer BIRD_KEEPER, VANCE2
	startbattle
	returnafterbattle
	loadvar wda09, $2
	clearflag ENGINE_VANCE
	end
; 0x19d8a7

UnknownScript_0x19d8a7: ; 0x19d8a7
	loadtrainer BIRD_KEEPER, VANCE3
	startbattle
	returnafterbattle
	clearflag ENGINE_VANCE
	checkevent EVENT_VANCE_CARBOS
	iftrue UnknownScript_0x19d8cb
	checkevent EVENT_ROUTE_44_267
	iftrue UnknownScript_0x19d8ca
	scall UnknownScript_0x19d90a
	verbosegiveitem CARBOS, 1
	iffalse UnknownScript_0x19d903
	setevent EVENT_ROUTE_44_267
	jump UnknownScript_0x19d8eb
; 0x19d8ca

UnknownScript_0x19d8ca: ; 0x19d8ca
	end
; 0x19d8cb

UnknownScript_0x19d8cb: ; 0x19d8cb
	loadfont
	writetext UnknownText_0x19dc67
	waitbutton
	verbosegiveitem CARBOS, 1
	iffalse UnknownScript_0x19d903
	clearevent EVENT_VANCE_CARBOS
	setevent EVENT_ROUTE_44_267
	jump UnknownScript_0x19d8eb
; 0x19d8df

UnknownScript_0x19d8df: ; 0x19d8df
	jumpstd asknumber1m
	end
; 0x19d8e3

UnknownScript_0x19d8e3: ; 0x19d8e3
	jumpstd asknumber2m
	end
; 0x19d8e7

UnknownScript_0x19d8e7: ; 0x19d8e7
	jumpstd registerednumberm
	end
; 0x19d8eb

UnknownScript_0x19d8eb: ; 0x19d8eb
	jumpstd numberacceptedm
	end
; 0x19d8ef

UnknownScript_0x19d8ef: ; 0x19d8ef
	jumpstd numberdeclinedm
	end
; 0x19d8f3

UnknownScript_0x19d8f3: ; 0x19d8f3
	jumpstd phonefullm
	end
; 0x19d8f7

UnknownScript_0x19d8f7: ; 0x19d8f7
	jumpstd rematchm
	end
; 0x19d8fb

UnknownScript_0x19d8fb: ; 0x19d8fb
	jumpstd giftm
	end
; 0x19d8ff

UnknownScript_0x19d8ff: ; 0x19d8ff
	jumpstd packfullm
	end
; 0x19d903

UnknownScript_0x19d903: ; 0x19d903
	setevent EVENT_VANCE_CARBOS
	jumpstd packfullm
	end
; 0x19d90a

UnknownScript_0x19d90a: ; 0x19d90a
	jumpstd rematchgiftm
	end
; 0x19d90e

TrainerPsychicPhil: ; 0x19d90e
	; bit/flag number
	dw $441

	; trainer group && trainer id
	db PSYCHIC_T, PHIL

	; text when seen
	dw PsychicPhilSeenText

	; text when trainer beaten
	dw PsychicPhilBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicPhilScript
; 0x19d91a

PsychicPhilScript: ; 0x19d91a
	talkaftercancel
	loadfont
	writetext UnknownText_0x19dcfc
	waitbutton
	closetext
	end
; 0x19d922

TrainerFisherWilton1: ; 0x19d922
	; bit/flag number
	dw $457

	; trainer group && trainer id
	db FISHER, WILTON1

	; text when seen
	dw FisherWilton1SeenText

	; text when trainer beaten
	dw FisherWilton1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherWilton1Script
; 0x19d92e

FisherWilton1Script: ; 0x19d92e
	writecode VAR_CALLERID, $21
	talkaftercancel
	loadfont
	checkflag ENGINE_WILTON
	iftrue UnknownScript_0x19d96e
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue UnknownScript_0x19d9b4
	checkcellnum $21
	iftrue UnknownScript_0x19d8eb
	checkevent EVENT_ROUTE_44_297
	iftrue UnknownScript_0x19d957
	checkunit
	iftrue .imperial
	writetext UnknownText_0x19daa8_Metric
	jump .skip
.imperial
	writetext UnknownText_0x19daa8
.skip
	buttonsound
	setevent EVENT_ROUTE_44_297
	scall UnknownScript_0x19d8df
	jump UnknownScript_0x19d95a
; 0x19d957

UnknownScript_0x19d957: ; 0x19d957
	scall UnknownScript_0x19d8e3
UnknownScript_0x19d95a: ; 0x19d95a
	askforphonenumber $21
	if_equal $1, UnknownScript_0x19d8f3
	if_equal $2, UnknownScript_0x19d8ef
	trainertotext FISHER, WILTON1, $0
	scall UnknownScript_0x19d8e7
	jump UnknownScript_0x19d8eb
; 0x19d96e

UnknownScript_0x19d96e: ; 0x19d96e
	scall UnknownScript_0x19d8f7
	winlosstext FisherWilton1BeatenText, $0000
	copybytetovar wda0a
	if_equal $2, UnknownScript_0x19d985
	if_equal $1, UnknownScript_0x19d98b
	if_equal $0, UnknownScript_0x19d991
UnknownScript_0x19d985: ; 0x19d985
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue UnknownScript_0x19d9ab
UnknownScript_0x19d98b: ; 0x19d98b
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue UnknownScript_0x19d99e
UnknownScript_0x19d991: ; 0x19d991
	loadtrainer FISHER, WILTON1
	startbattle
	returnafterbattle
	loadvar wda0a, $1
	clearflag ENGINE_WILTON
	end
; 0x19d99e

UnknownScript_0x19d99e: ; 0x19d99e
	loadtrainer FISHER, WILTON2
	startbattle
	returnafterbattle
	loadvar wda0a, $2
	clearflag ENGINE_WILTON
	end
; 0x19d9ab

UnknownScript_0x19d9ab: ; 0x19d9ab
	loadtrainer FISHER, WILTON3
	startbattle
	returnafterbattle
	clearflag ENGINE_WILTON
	end
; 0x19d9b4

UnknownScript_0x19d9b4: ; 0x19d9b4
	scall UnknownScript_0x19d8fb
	checkevent EVENT_WILTON_HAS_ULTRA_BALL
	iftrue UnknownScript_0x19d9c9
	checkevent EVENT_WILTON_HAS_GREAT_BALL
	iftrue UnknownScript_0x19d9d2
	checkevent EVENT_WILTON_HAS_POKE_BALL
	iftrue UnknownScript_0x19d9db
UnknownScript_0x19d9c9: ; 0x19d9c9
	verbosegiveitem ULTRA_BALL, 1
	iffalse UnknownScript_0x19d9e7
	jump UnknownScript_0x19d9e1
; 0x19d9d2

UnknownScript_0x19d9d2: ; 0x19d9d2
	verbosegiveitem GREAT_BALL, 1
	iffalse UnknownScript_0x19d9e7
	jump UnknownScript_0x19d9e1
; 0x19d9db

UnknownScript_0x19d9db: ; 0x19d9db
	verbosegiveitem POKE_BALL, 1
	iffalse UnknownScript_0x19d9e7
UnknownScript_0x19d9e1: ; 0x19d9e1
	clearflag ENGINE_WILTON_HAS_ITEM
	jump UnknownScript_0x19d8eb
; 0x19d9e7

UnknownScript_0x19d9e7: ; 0x19d9e7
	jump UnknownScript_0x19d8ff
; 0x19d9ea

TrainerFisherEdgar: ; 0x19d9ea
	; bit/flag number
	dw $458

	; trainer group && trainer id
	db FISHER, EDGAR

	; text when seen
	dw FisherEdgarSeenText

	; text when trainer beaten
	dw FisherEdgarBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FisherEdgarScript
; 0x19d9f6

FisherEdgarScript: ; 0x19d9f6
	talkaftercancel
	loadfont
	writetext UnknownText_0x19db6f
	waitbutton
	closetext
	end
; 0x19d9fe

TrainerCooltrainerfCybil: ; 0x19d9fe
	; bit/flag number
	dw $56a

	; trainer group && trainer id
	db COOLTRAINERF, CYBIL

	; text when seen
	dw CooltrainerfCybilSeenText

	; text when trainer beaten
	dw CooltrainerfCybilBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainerfCybilScript
; 0x19da0a

CooltrainerfCybilScript: ; 0x19da0a
	talkaftercancel
	loadfont
	writetext UnknownText_0x19df4d
	waitbutton
	closetext
	end
; 0x19da12

TrainerPokemaniacZach: ; 0x19da12
	; bit/flag number
	dw $4f0

	; trainer group && trainer id
	db POKEMANIAC, ZACH

	; text when seen
	dw PokemaniacZachSeenText

	; text when trainer beaten
	dw PokemaniacZachBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokemaniacZachScript
; 0x19da1e

PokemaniacZachScript: ; 0x19da1e
	talkaftercancel
	loadfont
	writetext UnknownText_0x19dd7e
	waitbutton
	closetext
	end
; 0x19da26

TrainerCooltrainermAllen: ; 0x19da26
	; bit/flag number
	dw $55a

	; trainer group && trainer id
	db COOLTRAINERM, ALLEN

	; text when seen
	dw CooltrainermAllenSeenText

	; text when trainer beaten
	dw CooltrainermAllenBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw CooltrainermAllenScript
; 0x19da32

CooltrainermAllenScript: ; 0x19da32
	talkaftercancel
	loadfont
	writetext UnknownText_0x19de66
	waitbutton
	closetext
	end
; 0x19da3a

MapRoute44Signpost0Script: ; 0x19da3a
	jumptext UnknownText_0x19dfb3
; 0x19da3d

MapRoute44Signpost1Script: ; 0x19da3d
	jumptext UnknownText_0x19dfcc
; 0x19da40

FruitTreeScript_0x19da40: ; 0x19da40
	fruittree $10
; 0x19da42

ItemFragment_0x19da42: ; 0x19da42
	db MAX_REVIVE, 1
; 0x19da44

ItemFragment_0x19da44: ; 0x19da44
	db ULTRA_BALL, 1
; 0x19da46

ItemFragment_0x19da46: ; 0x19da46
	db MAX_REPEL, 1
; 0x19da48

MapRoute44SignpostItem2: ; 0x19da48
	dw $00ae
	db ELIXER

; 0x19da4b

FisherWilton1SeenText: ; 0x19da4b
	text "Aack! You made me"
	line "lose a POLIWAG!"

	para "What are you going"
	line "to do about it?"
	done
; 0x19da91

FisherWilton1BeatenText: ; 0x19da91
	text "Just forget about"
	line "it."
	done
; 0x19daa8

UnknownText_0x19daa8: ; 0x19daa8
	text "That POLIWAG that"
	line "got away<...>"
	cont "It was huge."

	para "I swear it must've"
	line "been 16 feet long!"
	done
; 0x19daf7

UnknownText_0x19daa8_Metric: ; 0x19daa8
	text "That POLIWAG that"
	line "got away<...>"
	cont "It was huge."

	para "I swear it must've"
	line "been 5 meters long"
	done
; 0x19daf7

FisherEdgarSeenText: ; 0x19daf7
	text "I fish until I"
	line "can't anymore."

	para "I also battle"
	line "until I drop."

	para "That's my"
	line "relationship"
	cont "with my #MON."
	done
; 0x19db55

FisherEdgarBeatenText: ; 0x19db55
	text "Hmmmm<...> "
	line "This isn't right."
	done
; 0x19db6f

UnknownText_0x19db6f: ; 0x19db6f
	text "That's 100 wins"
	line "to 101 losses."

	para "I won't battle"
	line "again for a while."
	done
; 0x19dbaf

Bird_keeperVance1SeenText: ; 0x19dbaf
	text "Do you know about"
	line "the legendary bird"
	cont "#MON?"
	done
; 0x19dbdb

Bird_keeperVance1BeatenText: ; 0x19dbdb
	text "Whew! You're hot"
	line "stuff."
	done
; 0x19dbf3

UnknownText_0x19dbf3: ; 0x19dbf3
	text "ARTICUNO, ZAPDOS"
	line "and MOLTRES are"

	para "the three legend-"
	line "ary bird #MON."

	para "I heard there are"
	line "other legendary"
	cont "birds, though."
	done
; 0x19dc67

UnknownText_0x19dc67: ; 0x19dc67
	text "Why can't I ever"
	line "beat you?"

	para "Oh yeah, here you"
	line "go. It's that gift"

	para "I couldn't give"
	line "you last time."
	done
; 0x19dcc4

PsychicPhilSeenText: ; 0x19dcc4
	text "I'm gonna win,"
	line "for sure!"
	done
; 0x19dcdd

PsychicPhilBeatenText: ; 0x19dcdd
	text "Arrgh<...> That's a"
	line "shocking loss<...>"
	done
; 0x19dcfc

UnknownText_0x19dcfc: ; 0x19dcfc
	text "It's important to"
	line "have conviction"
	cont "on your side."
	done
; 0x19dd2c

PokemaniacZachSeenText: ; 0x19dd2c
	text "I'll do anything"
	line "to get my hands on"
	cont "rare #MON!"
	done
; 0x19dd5b

PokemaniacZachBeatenText: ; 0x19dd5b
	text "Oooh, your #MON"
	line "are so appealing."
	done
; 0x19dd7e

UnknownText_0x19dd7e: ; 0x19dd7e
	text "Never seen a"
	line "SLOWKING before?"

	para "I found this one"
	line "one deep into"
	cont "SLOWPOKE WELL."
	done
; 0x19dddc

CooltrainermAllenSeenText: ; 0x19dddc
	text "I can tell you're"
	line "a good trainer by"
	cont "looking at you."

	para "I'm good at #-"
	line "MON, and I can see"
	cont "that you are too."
	done
; 0x19de43

CooltrainermAllenBeatenText: ; 0x19de43
	text "Tch! It's a total"
	line "loss on my part."
	done
; 0x19de66

UnknownText_0x19de66: ; 0x19de66
	text "Wow. You have a"
	line "lot of BADGES."

	para "No wonder you're"
	line "so tough."

	para "I wonder if"
	line "ECRUTEAK GYM's"

	para "MORTY is still in"
	line "training?"

	para "He really hammered"
	line "me."
	done
; 0x19deed

CooltrainerfCybilSeenText: ; 0x19deed
	text "You look strong."

	para "Good trainers seek"
	line "tough opponents"
	cont "instinctively."
	done
; 0x19df31

CooltrainerfCybilBeatenText: ; 0x19df31
	text "Nope! This won't"
	line "do at all."
	done
; 0x19df4d

UnknownText_0x19df4d: ; 0x19df4d
	text "We all get better"
	line "by experiencing"
	cont "many battles."

	para "I battled a lot to"
	line "become what I am"
	cont "today--an elite."
	done
; 0x19dfb3

UnknownText_0x19dfb3: ; 0x19dfb3
	text "ROUTE 44"
	line "ICE PATH AHEAD"
	done
; 0x19dfcc

UnknownText_0x19dfcc: ; 0x19dfcc
	text "ROUTE 44"

	para "MAHOGANY TOWN -"
	line "BLACKTHORN CITY"
	done
; 0x19dff6

Route44_MapEventHeader: ; 0x19dff6
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $7, $38, 1, GROUP_ICE_PATH_1F, MAP_ICE_PATH_1F

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 7, 53, $0, MapRoute44Signpost0Script
	signpost 10, 6, $0, MapRoute44Signpost1Script
	signpost 9, 32, $7, MapRoute44SignpostItem2

	; people-events
	db 11
	person_event SPRITE_FISHER, 7, 39, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerFisherWilton1, -1
	person_event SPRITE_FISHER, 17, 23, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 1, TrainerFisherEdgar, -1
	person_event SPRITE_YOUNGSTER, 13, 14, $1f, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerPsychicPhil, -1
	person_event SPRITE_SUPER_NERD, 6, 47, $1f, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerPokemaniacZach, -1
	person_event SPRITE_YOUNGSTER, 9, 55, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 2, TrainerBird_keeperVance1, -1
	person_event SPRITE_COOLTRAINER_M, 19, 45, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 5, TrainerCooltrainermAllen, -1
	person_event SPRITE_COOLTRAINER_F, 18, 35, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 5, TrainerCooltrainerfCybil, -1
	person_event SPRITE_FRUIT_TREE, 9, 13, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x19da40, -1
	person_event SPRITE_POKE_BALL, 12, 34, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19da42, EVENT_ITEM_ROUTE_44_MAX_REVIVE
	person_event SPRITE_POKE_BALL, 8, 49, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19da44, EVENT_ITEM_ROUTE_44_ULTRA_BALL
	person_event SPRITE_POKE_BALL, 13, 18, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x19da46, EVENT_ITEM_ROUTE_44_MAX_REPEL
; 0x19e09f

