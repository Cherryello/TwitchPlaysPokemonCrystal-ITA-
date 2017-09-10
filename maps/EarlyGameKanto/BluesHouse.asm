BluesHouseRB_MapScriptHeader: ; 0x19b0ce
	; trigger count
	db 0

	; callback count
	db 0
; 0x19b0d0

EGK_DaisyScript: ; 0x19b0d0
	faceplayer
	loadfont
	checkflag ENGINE_MAP_CARD
	iftrue .AfterTownMap
	checkflag ENGINE_POKEDEX
	iffalse .BeforePokedex
	writetext Text_DaisyGiveTownMap
	waitbutton
	disappear $3
	setflag ENGINE_MAP_CARD
	writetext Text_ReceivedMapCard
	playsound SFX_ITEM
	waitsfx
	writetext Text_DaisyExplainMapCard
	jump .FinishDaisy

.AfterTownMap
	writetext Text_DaisyAfterMapCard
	jump .FinishDaisy

.BeforePokedex
	writetext Text_DaisyBeforePokedex
.FinishDaisy
	waitbutton
	closetext
	spriteface $2, RIGHT
	end

TownMapScript_EGKBluesHouse:
	jumptext Text_MapCard

Text_DaisyGiveTownMap:
	text "Il professor Oak"
	line "ti ha chiesto di"
	cont "partire per lui?"

	para "Ecco, questa ti"
	line "aiuterà di sicuro!"
	done

Text_ReceivedMapCard:
	text "<PLAYER> riceve"
	line "una Map Card!"
	done

Text_DaisyExplainMapCard:
	text "Applica la Map"
	line "Card al PokéGear"

	para "per vedere dove"
	line "ti trovi."
	done

Text_MapCard:
	text "Sembra una card"
	line "per il PokéGear."

	para "Forse mi potrebbe"
	line "essere utile<...>"
	done

Text_DaisyBeforePokedex:
	text "Ciao, <PLAYER>!"
	line "<GREEN> al momento"
	cont "si trova al"
	cont "laboratorio del"
	cont "professore."
	done

Text_DaisyAfterMapCard:
	text "I Pokémon sono"
	line "esseri viventi!"

	para "Se si stancano,"
	line "falli riposare!"
	done

BluesHouseRB_MapEventHeader: ; 0x19b3a8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB
	warp_def $7, $3, 2, GROUP_PALLET_TOWN_RB, MAP_PALLET_TOWN_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_DAISY, 7, 6, $3, 0, 0, -1, -1, 0, 0, 0, EGK_DaisyScript, -1
	person_event SPRITE_PAPER, 7, 7, $0, 0, 0, -1, -1, 0, 0, 0, TownMapScript_EGKBluesHouse, EVENT_GOT_MAP_CARD
; 0x19b3c5

