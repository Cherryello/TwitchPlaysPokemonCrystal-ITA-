EarlsPokemonAcademy_MapScriptHeader: ; 0x68a5a
	; trigger count
	db 0

	; callback count
	db 0
; 0x68a5c

FisherScript_0x68a5c: ; 0x68a5c
	applymovement $2, MovementData_0x68b2d
	faceplayer
	loadfont
	writetext UnknownText_0x68b3b
	yesorno
	iffalse UnknownScript_0x68a70
	writetext UnknownText_0x68bbd
	yesorno
	iffalse UnknownScript_0x68a7d
UnknownScript_0x68a70: ; 0x68a70
	writetext UnknownText_0x68c51
	yesorno
	iffalse UnknownScript_0x68a7d
	writetext UnknownText_0x68c7b
	waitbutton
	closetext
	end
; 0x68a7d

UnknownScript_0x68a7d: ; 0x68a7d
	writetext UnknownText_0x68d31
	waitbutton
	closetext
	end
; 0x68a83

YoungsterScript_0x68a83: ; 0x68a83
	jumptextfaceplayer UnknownText_0x68d80
; 0x68a86

GameboyKidScript_0x68a86: ; 0x68a86
	faceplayer
	loadfont
	writetext UnknownText_0x68dda
	waitbutton
	closetext
	spriteface $4, $0
	end
; 0x68a91

GameboyKidScript_0x68a91: ; 0x68a91
	faceplayer
	loadfont
	writetext UnknownText_0x68e07
	waitbutton
	closetext
	spriteface $5, $0
	end
; 0x68a9c

YoungsterScript_0x68a9c: ; 0x68a9c
	jumptextfaceplayer UnknownText_0x68e39
; 0x68a9f

MapEarlsPokemonAcademySignpost3Script: ; 0x68a9f
	loadfont
	writetext UnknownText_0x68eb2
UnknownScript_0x68aa3: ; 0x68aa3
	loadmenudata MenuDataHeader_0x68ae1
	interpretmenu
	writebackup
	if_equal $1, UnknownScript_0x68abe
	if_equal $2, UnknownScript_0x68ac5
	if_equal $3, UnknownScript_0x68acc
	if_equal $4, UnknownScript_0x68ad3
	if_equal $5, UnknownScript_0x68ada
	closetext
	end
; 0x68abe

UnknownScript_0x68abe: ; 0x68abe
	writetext UnknownText_0x68efe
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ac5

UnknownScript_0x68ac5: ; 0x68ac5
	writetext UnknownText_0x68f80
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68acc

UnknownScript_0x68acc: ; 0x68acc
	writetext UnknownText_0x68fe2
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ad3

UnknownScript_0x68ad3: ; 0x68ad3
	writetext UnknownText_0x69055
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ada

UnknownScript_0x68ada: ; 0x68ada
	writetext UnknownText_0x690cb
	waitbutton
	jump UnknownScript_0x68aa3
; 0x68ae1


MenuDataHeader_0x68ae1: ; 0x68ae1
	db $40 ; flags
	db 00, 00 ; start coords
	db 08, 11 ; end coords
	dw MenuData2_0x68ae9
	db 1 ; default option
; 0x68ae9

MenuData2_0x68ae9: ; 0x68ae9
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dbw BANK(UnknownText_0x68af2), UnknownText_0x68af2
	dbw $1a, $0000
; 0x68af2

UnknownText_0x68af2: ; 0x68af2
	db "Vln@"
	db "Par@"
	db "Drm@"
	db "Bru@"
	db "Gel@"
	db "Esci@"
; 0x68b0b


PokedexScript_0x68b0b: ; 0x68b0b
	loadfont
	writetext UnknownText_0x69136
	yesorno
	iffalse UnknownScript_0x68b25
	writetext UnknownText_0x69197
	yesorno
	iffalse UnknownScript_0x68b25
	writetext UnknownText_0x69207
	yesorno
	iffalse UnknownScript_0x68b25
	writetext UnknownText_0x69287
	waitbutton
UnknownScript_0x68b25: ; 0x68b25
	closetext
	end
; 0x68b27

UnknownScript_0x68b27: ; 0x68b27
	jumptext UnknownText_0x69344
; 0x68b2a

MapEarlsPokemonAcademySignpost1Script: ; 0x68b2a
	jumpstd difficultbookshelf
; 0x68b2d

MovementData_0x68b2d: ; 0x68b2d
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x68b3b

UnknownText_0x68b3b: ; 0x68b3b
	text "Sono il Primo!"

	para "Fantasmagorici i"
	line "#mon, vero?"

	para "Tutto ti insegnerò"
	line "per diventare un"
	cont "ottimo allenatore!"

	para "Se ti piacerà d'"
	line "ascoltarmi, farò"
	cont "di te un vincente."
	done
; 0x68bbd

UnknownText_0x68bbd: ; 0x68bbd
	text "Bene! Veniamo"
	line "orsù al dunque:"

	para "Il #mon in"
	line "cima alla lista"
	cont "é sempre il primo"
	cont "a lottare."

	para "Se l'ordine provi"
	line "a cambiare, magari"
	cont "migliorare potrai!"

	para "Qualcosa d'altro"
	line "vuoi da me sapere?"
	done
; 0x68c51

UnknownText_0x68c51: ; 0x68c51
	text "Sapere vuoi come"
	line "allenare #mon"
	cont "in perfetta manie-"
	cont "ra?"
	done
; 0x68c7b

UnknownText_0x68c7b: ; 0x68c7b
	text "Bene, é presto"
	line "detto!"

	para "Un #mon guada-"
	line "gna esperienza se"
    cont "entra in battaglia"
	cont "anche per poco."

	para "Manda in campo per"
	line "primo un #mon"
	cont "debole e poi"
	cont "cambialo subito!"

	para "Se un #mon de-"
	line "bole forte diven-"
	cont "terà, la tua sorte"
	cont "cambiare potrà."
	done
; 0x68d31

UnknownText_0x68d31: ; 0x68d31
	text "Oh! Studente"
	line "sapiente tu sei."
	cont "Nient'altro devo"
	cont "te insegnare."

	para "Ricorda: i tuoi"
	line "#mon ben trat-"
	cont "tare dovrai!"
	done
; 0x68d80

UnknownText_0x68d80: ; 0x68d80
	text "Sto prendendo"
	line "appunti sulla"
	cont "lezione del pro-"
	cont "fessore."

	para "Dovrò anche copia-"
	line "re ciò che é"
	cont "scritto sulla la-"
	cont "vagna."
	done
; 0x68dda

UnknownText_0x68dda: ; 0x68dda
	text "Ho scambiato il "
	line "mio #mon"
	cont "migliore con il"
	cont "ragazzo di fianco."
	done
; 0x68e07

UnknownText_0x68e07: ; 0x68e07
	text "Oh? Il #mon che"
	line "ho appena ricevuto"
	cont "ha uno strumento"
	cont "con sé."
	done
; 0x68e39

UnknownText_0x68e39: ; 0x68e39
	text "Un #mon che"
	line "tiene una bacca"
	cont "può curarsi nella"
	cont "lotta."

	para "I #mon possono"
	line "tenere molti altri"
	cont "strumenti<...>"

	para "È davvero dura"
	line "prendere appunti<...>"
	done
; 0x68eb2

UnknownText_0x68eb2: ; 0x68eb2
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	done
; 0x68eeb

UnknownText_0x68eeb: ; 0x68eeb
	text "Read which topic?"
	done
; 0x68efe

UnknownText_0x68efe: ; 0x68efe
	text "If poisoned, a"
	line "#MON steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "ANTIDOTE."
	done
; 0x68f80

UnknownText_0x68f80: ; 0x68f80
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It's important to"
	line "remember that"
	cont "electric #MON"
	cont "are immune to PRZ."

	para "It remains after"
	line "battle, so use"
	cont "a PARLYZ HEAL."
	done
; 0x68fe2

UnknownText_0x68fe2: ; 0x68fe2
	text "If asleep, your"
	line "#MON can't make"
	cont "a move."

	para "A sleeping #MON"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an AWAKENING."
	done
; 0x69055

UnknownText_0x69055: ; 0x69055
	text "A burn steadily"
	line "consumes HP."

	para "It also reduces"
	line "attack power,"

	para "but fire types"
	line "shrug it off."

	para "A burn lingers"
	line "after battle."

	para "Use a BURN HEAL as"
	line "the cure."
	done
; 0x690cb

UnknownText_0x690cb: ; 0x690cb
	text "If your #MON is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an ICE HEAL."
	done
; 0x69136

UnknownText_0x69136: ; 0x69136
	text "It's this kid's"
	line "notebook<...>"

	para "Catch #MON"
	line "using # BALLS."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done
; 0x69197

UnknownText_0x69197: ; 0x69197
	text "Before throwing a"
	line "# BALL, weaken"
	cont "the target first."

	para "A poisoned or"
	line "burned #MON is"
	cont "easier to catch."

	para "Keep reading?"
	done
; 0x69207

UnknownText_0x69207: ; 0x69207
	text "Some moves may"
	line "cause confusion."

	para "Confusion may make"
	line "a #MON attack"
	cont "itself."

	para "Leaving battle"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done
; 0x69287

UnknownText_0x69287: ; 0x69287
	text "People who catch"
	line "and use #MON"

	para "in battle are"
	line "#MON trainers."

	para "They are expected"
	line "to visit #MON"

	para "GYMS and defeat"
	line "other trainers."

	para "The next page"
	line "is<...> Blank!"

	para "Boy: E-he-he<...>"

	para "I haven't written"
	line "anymore<...>"
	done
; 0x69344

UnknownText_0x69344: ; 0x69344
	text "Questo super mac-"
	line "chinario stampa i"
	cont "dati sottoforma di"
	cont "adesivi!"
	done
; 0x69375

EarlsPokemonAcademy_MapEventHeader: ; 0x69375
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $3, 3, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $f, $4, 3, GROUP_VIOLET_CITY, MAP_VIOLET_CITY

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 1, 0, $0, MapEarlsPokemonAcademySignpost1Script
	signpost 1, 1, $0, MapEarlsPokemonAcademySignpost1Script
	signpost 0, 3, $0, MapEarlsPokemonAcademySignpost3Script
	signpost 0, 4, $0, MapEarlsPokemonAcademySignpost3Script

	; people-events
	db 6
	person_event SPRITE_FISHER, 6, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x68a5c, EVENT_EARL_INSIDE
	person_event SPRITE_YOUNGSTER, 9, 6, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x68a83, -1
	person_event SPRITE_GAMEBOY_KID, 15, 7, $6, 0, 0, -1, -1, 0, 0, 0, GameboyKidScript_0x68a86, -1
	person_event SPRITE_GAMEBOY_KID, 15, 8, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, GameboyKidScript_0x68a91, -1
	person_event SPRITE_YOUNGSTER, 11, 8, $7, 0, 0, -1, -1, 0, 0, 0, YoungsterScript_0x68a9c, -1
	person_event SPRITE_POKEDEX, 8, 6, $1, 0, 0, -1, -1, 0, 0, 0, PokedexScript_0x68b0b, -1
; 0x693e7

