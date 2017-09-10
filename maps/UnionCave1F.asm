UnionCave1F_MapScriptHeader: ; 0x59b9a
	; trigger count
	db 0

	; callback count
	db 0
; 0x59b9c

TrainerPokemaniacLarry: ; 0x59b9c
	; bit/flag number
	dw $4e4

	; trainer group && trainer id
	db POKEMANIAC, LARRY

	; text when seen
	dw PokemaniacLarrySeenText

	; text when trainer beaten
	dw PokemaniacLarryBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PokemaniacLarryScript
; 0x59ba8

PokemaniacLarryScript: ; 0x59ba8
	talkaftercancel
	loadfont
	writetext UnknownText_0x59d31
	waitbutton
	closetext
	end
; 0x59bb0

TrainerHikerRussell: ; 0x59bb0
	; bit/flag number
	dw $525

	; trainer group && trainer id
	db HIKER, RUSSELL

	; text when seen
	dw HikerRussellSeenText

	; text when trainer beaten
	dw HikerRussellBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerRussellScript
; 0x59bbc

HikerRussellScript: ; 0x59bbc
	talkaftercancel
	loadfont
	writetext UnknownText_0x59c6c
	waitbutton
	closetext
	end
; 0x59bc4

TrainerHikerDaniel: ; 0x59bc4
	; bit/flag number
	dw $535

	; trainer group && trainer id
	db HIKER, DANIEL

	; text when seen
	dw HikerDanielSeenText

	; text when trainer beaten
	dw HikerDanielBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw HikerDanielScript
; 0x59bd0

HikerDanielScript: ; 0x59bd0
	talkaftercancel
	loadfont
	writetext UnknownText_0x59dc9
	waitbutton
	closetext
	end
; 0x59bd8

TrainerFirebreatherBill: ; 0x59bd8
	; bit/flag number
	dw $44a

	; trainer group && trainer id
	db FIREBREATHER, BILL

	; text when seen
	dw FirebreatherBillSeenText

	; text when trainer beaten
	dw FirebreatherBillBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FirebreatherBillScript
; 0x59be4

FirebreatherBillScript: ; 0x59be4
	talkaftercancel
	loadfont
	writetext UnknownText_0x59e6f
	waitbutton
	closetext
	end
; 0x59bec

TrainerFirebreatherRay: ; 0x59bec
	; bit/flag number
	dw $44c

	; trainer group && trainer id
	db FIREBREATHER, RAY

	; text when seen
	dw FirebreatherRaySeenText

	; text when trainer beaten
	dw FirebreatherRayBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw FirebreatherRayScript
; 0x59bf8

FirebreatherRayScript: ; 0x59bf8
	talkaftercancel
	loadfont
	writetext UnknownText_0x59efc
	waitbutton
	closetext
	end
; 0x59c00

ItemFragment_0x59c00: ; 0x59c00
	db ULTRA_BALL, 1
; 0x59c02

ItemFragment_0x59c02: ; 0x59c02
	db X_ATTACK, 1
; 0x59c04

ItemFragment_0x59c04: ; 0x59c04
	db SUPER_POTION, 1
; 0x59c06

ItemFragment_0x59c06: ; 0x59c06
	db AWAKENING, 1
; 0x59c08

UnknownScript_0x59c08: ; 0x59c08
	jumptext UnknownText_0x59f29
; 0x59c0b

HikerRussellSeenText: ; 0x59c0b
	text "Vai ad Azalina,"
	line "vero?"

	para "I miei #mon"
	line "vogliono vedere"
	cont "come lotti."
	done
; 0x59c5f

HikerRussellBeatenText: ; 0x59c5f
	text "Oh, oh, oh!"
	done
; 0x59c6c

UnknownText_0x59c6c: ; 0x59c6c
	text "E va bene, me"
	line "ne vado."

	para "Tornerò quando"
	line "i miei #mon"
	cont "saranno più forti!"
	done
; 0x59cb5

PokemaniacLarrySeenText: ; 0x59cb5
	text "Cammino molto per"
	line "catturare dei"
	cont "#mon."

	para "Sei anche tu in"
	line "cerca di #mon?"

	para "Beh, allora siamo"
	line "rivali!"
	done
; 0x59d1b

PokemaniacLarryBeatenText: ; 0x59d1b
	text "I miei poveri"
	line "#mon<...>"
	done
; 0x59d31

UnknownText_0x59d31: ; 0x59d31
	text "Ogni venerdì"
	line "dal fondo della"

	para "grotta provengono"
	line "versi di #mon."
	done
; 0x59d73

HikerDanielSeenText: ; 0x59d73
	text "Ehi, ma che"
	line "sorpresa!"

	para "Non pensavo che"
	line "avrei trovato"
	cont "qualcuno qui!"
	done
; 0x59dae

HikerDanielBeatenText: ; 0x59dae
	text "Mi hai dato una"
	line "bella lezione!"
	done
; 0x59dc9

UnknownText_0x59dc9: ; 0x59dc9
	text "Mi hanno rifilato"
	line "questa Codaslow-"
	cont "poke."

	para "Ora mi spiace per"
	line "il povero"
	cont "Slowpoke<...>"
	done
; 0x59e15

FirebreatherBillSeenText: ; 0x59e15
	text "Si trovano molti"
	line "Swinub qui di"
	cont "giorno."

	para "Non sono nulla di"
	line "preoccupante per"
	cont "i miei #mon"
    cont "fuoco!"
	done
; 0x59e60

FirebreatherBillBeatenText: ; 0x59e60
	text "Sono fritto!"
	done
; 0x59e6f

UnknownText_0x59e6f: ; 0x59e6f
	text "Puoi trovare #-"
	line "mon diversi in"

	para "base al momento"
	line "della giornata."
	done
; 0x59eaf

FirebreatherRaySeenText: ; 0x59eaf
	text "Una grotta non fa"
	line "paura se é"
	cont "illuminata."

	para "E se sei forte,"
	line "nessun #mon"
	cont "può farti paura."
	done
; 0x59ef4

FirebreatherRayBeatenText: ; 0x59ef4
	text "Flash!"
	done
; 0x59efc

UnknownText_0x59efc: ; 0x59efc
	text "Il fuoco del mio"
	line "#mon illumina"
	cont "la grotta."
	done
; 0x59f29

UnknownText_0x59f29: ; 0x59f29
	text "Grotta di Mezzo"
	done
; 0x59f35

UnionCave1F_MapEventHeader: ; 0x59f35
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $13, $5, 3, GROUP_UNION_CAVE_B1F, MAP_UNION_CAVE_B1F
	warp_def $21, $3, 4, GROUP_UNION_CAVE_B1F, MAP_UNION_CAVE_B1F
	warp_def $1f, $11, 1, GROUP_ROUTE_33, MAP_ROUTE_33
	warp_def $3, $11, 4, GROUP_ROUTE_32, MAP_ROUTE_32

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 9
	person_event SPRITE_POKEFAN_M, 10, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerHikerDaniel, -1
	person_event SPRITE_SUPER_NERD, 25, 8, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerPokemaniacLarry, -1
	person_event SPRITE_POKEFAN_M, 12, 15, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 1, TrainerHikerRussell, -1
	person_event SPRITE_FISHER, 31, 19, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerFirebreatherRay, -1
	person_event SPRITE_FISHER, 23, 18, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerFirebreatherBill, -1
	person_event SPRITE_POKE_BALL, 25, 21, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x59c00, EVENT_ITEM_UNION_CAVE_1F_GREAT_BALL
	person_event SPRITE_POKE_BALL, 6, 8, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x59c02, EVENT_ITEM_UNION_CAVE_1F_X_ATTACK
	person_event SPRITE_POKE_BALL, 21, 8, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x59c04, EVENT_ITEM_UNION_CAVE_1F_POTION
	person_event SPRITE_POKE_BALL, 37, 16, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x59c06, EVENT_ITEM_UNION_CAVE_1F_AWAKENING
; 0x59fc4

