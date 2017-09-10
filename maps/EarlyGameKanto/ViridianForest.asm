ViridianForestRB_MapScriptHeader: ; 0x1ac2ba
	; trigger count
	db 0

	; callback count
	db 0
; 0x1ac2bc

ViridianForestRBFruitTree:
	fruittree $19

ViridianForestRBCameHereWithFriendsScript:
	jumptextfaceplayer _ViridianForestText1

ViridianForestRBRanOutOfBallsScript:
	jumptextfaceplayer _ViridianForestText8

Trainer_BugCatcherRick:
	trainer EVENT_BUG_CATCHER_RICK, BUG_CATCHER, RICK_RB, BugCatcherRickSeenText, BugCatcherRickBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherRickAfterText
	waitbutton
	closetext
	end

Trainer_BugCatcherDoug:
	trainer EVENT_BUG_CATCHER_DOUG, BUG_CATCHER, DOUG_RB, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherDougAfterText
	waitbutton
	closetext
	end

Trainer_BugCatcherChuck:
	trainer EVENT_BUG_CATCHER_CHUCK, BUG_CATCHER, CHUCK_RB, BugCatcherChuckSeenText, BugCatcherChuckBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherChuckAfterText
	waitbutton
	closetext
	end

Trainer_BugCatcherSammy:
	trainer EVENT_BUG_CATCHER_SAMMY, BUG_CATCHER, SAMMY_RB, BugCatcherSammySeenText, BugCatcherSammyBeatenText, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext BugCatcherSammyAfterText
	waitbutton
	closetext
	end

MapViridianForestRBAntidote:
	db ANTIDOTE, 1

MapViridianForestRBPotion:
	db POTION, 1

MapViridianForestRBPokeBall:
	db POKE_BALL, 1

MapViridianForestRBHiddenAntidote:
	dwb EVENT_VIRIDIAN_FOREST_RB_HIDDEN_ANTIDOTE, ANTIDOTE

MapViridianForestRBHiddenPotion:
	dwb EVENT_VIRIDIAN_FOREST_RB_HIDDEN_POTION, POTION

MapViridianForestRBSignpost0Script:
	jumptext ViridianForestRBSignpostText1

MapViridianForestRBSignpost1Script:
	jumptext ViridianForestRBSignpostText2

MapViridianForestRBSignpost2Script:
	jumptext ViridianForestRBSignpostText3

MapViridianForestRBSignpost3Script:
	jumptext ViridianForestRBSignpostText4

MapViridianForestRBSignpost4Script:
	jumptext ViridianForestRBSignpostText5

MapViridianForestRBSignpost5Script:
	jumptext ViridianForestRBSignpostText6

_ViridianForestText1: ; 8031d (20:431d)
	text "Sono qui con"
	line "alcuni amici!"

	para "Stiamo catturando"
	line "#mon di tipo"
	cont "coleottero per"
	cont "lottare!"
	done

BugCatcherRickSeenText: ; 80359 (20:4359)
	text "Ehi! Hai dei"
	line "#mon! Avanti,"
	cont "lottiamo!"
	done

BugCatcherRickBeatenText: ; 80387 (20:4387)
	text "No!"
	line "Caterpie non può"
	cont "perdere!"
	done

BugCatcherRickAfterText: ; 803a2 (20:43a2)
	text "Ssh! Piano, o"
	line "farai scappare"
	cont "tutti gli insetti!"
	done

BugCatcherDougSeenText: ; 803c3 (20:43c3)
	text "Ohi! Non puoi fi-"
	line "lartela così se"
	cont "sei un allenatore"
	cont "di #mon!"
	done

BugCatcherDougBeatenText: ; 803f2 (20:43f2)
	text "Eh?"
	line "Non ho altri"
	cont "#mon!"
	done

BugCatcherDougAfterText: ; 8040b (20:440b)
	text "Maledizione!"
	line "Devo catturarne"
	cont "di più forti!"
	done

BugCatcherChuckSeenText:
	text "I #mon di tipo"
	line "coleottero si"
	cont "evolvono facilmen-"
	cont "te. Comodo, no?"
	done

BugCatcherChuckBeatenText:
	text "I tuoi #mon"
	line "sono pure più"
	cont "forti!"
	done

BugCatcherChuckAfterText:
	text "Se i tuoi #mon"
	line "si evolvono troppo"

	para "presto, potrebbero"
	line "non trarre vantag-"
	cont "gio dalle loro"
	cont "forme non evolute."
	done

BugCatcherSammySeenText: ; 80438 (20:4438)
	text "Ehi, che c'é?"
	line "Come mai vai così"
	cont "di fretta?"
	done

BugCatcherSammyBeatenText: ; 80458 (20:4458)
	text "Basta! Sei troppo"
	line "forte!"
	done

BugCatcherSammyAfterText: ; 80475 (20:4475)
	text "A volte si trovano"
	line "delle cose per"
	cont "terra!"

	para "Infatti sto cer-"
	line "cando delle cose"
	cont "che ho perso<...>"
	
	para "Mi daresti una"
	line "mano?"
	done

_ViridianForestText8: ; 804c7 (20:44c7)
	text "Accidenti! Non ho"
	line "più # Ball per"
	cont "prendere i #-"
	cont "mon!"

	para "Dovresti sempre"
	line "averne alcune di"
	cont "scorta!"
	done

ViridianForestRBSignpostText1:
	text "Consigli utili"

	para "Indebolisci i"
	line "#mon prima di"
	cont "tentare di cat-"
	cont "turarli!"

	para "Se ancora forti,"
	line "scapperanno!"
	done

ViridianForestRBSignpostText2:
	text "Per contrastare il"
	line "veleno, usa un"
	cont "antidoto! Lo puoi"
	cont "trovare nei"
	cont "#mon Market!"
	done

ViridianForestRBSignpostText3:
	text "Consigli utili"

	para "Se non vuoi lotta-"
	line "re, evita l'erba"
	cont "alta!"
	done

ViridianForestRBSignpostText4:
	text "Consigli utili"

	para "Contatta il Pro-"
	line "fessor Oak via PC"
	cont "per avere la valu-"
	cont "tazione del tuo"
	cont "#dex!"
	done

ViridianForestRBSignpostText5:
	text "Consigli utili"

	para "Non puoi rubare i"
	line "#mon di altri"
	cont "allenatori!"
	
	para "Solo i #mon"
	line "selvatici possono"
	cont "essere catturati."
	done

ViridianForestRBSignpostText6:
	text "Arrivederci nel"
	line "Bosco Smeraldo!"
	cont "Prossima città:"
	cont "Plumbeopoli"
	done

ViridianForestRB_MapEventHeader: ; 0x1ac4af
	; filler
	db 0, 0

	; warps
	db 3
	warp_def 47, 16, 3, GROUP_VIRIDIAN_FOREST_SOUTH_RB, MAP_VIRIDIAN_FOREST_SOUTH_RB
	warp_def 47, 17, 3, GROUP_VIRIDIAN_FOREST_SOUTH_RB, MAP_VIRIDIAN_FOREST_SOUTH_RB
	warp_def  1,  1, 1, GROUP_VIRIDIAN_FOREST_NORTH_RB, MAP_VIRIDIAN_FOREST_NORTH_RB

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 45, 18, $0, MapViridianForestRBSignpost0Script
	signpost 32, 16, $0, MapViridianForestRBSignpost1Script
	signpost 40, 24, $0, MapViridianForestRBSignpost2Script
	signpost 17, 26, $0, MapViridianForestRBSignpost3Script
	signpost 24,  4, $0, MapViridianForestRBSignpost4Script
	signpost  3,  2, $0, MapViridianForestRBSignpost5Script
	signpost 42, 16, $7, MapViridianForestRBHiddenAntidote
	signpost 18,  1, $7, MapViridianForestRBHiddenPotion

	; people-events
	db 10
	person_event SPRITE_BUG_CATCHER, 47, 20, $3, 0, 0, -1, -1, 0, 0, 0, ViridianForestRBCameHereWithFriendsScript, -1 ; I came here with friends
	person_event SPRITE_BUG_CATCHER, 44, 31, $2, 1, 1, -1, -1, 0, 0, 0, ViridianForestRBRanOutOfBallsScript, -1 ; You should carry extra balls
	person_event SPRITE_BUG_CATCHER, 37, 34, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_BugCatcherRick, -1 ; Bug Catcher Rick - Caterpie, Weedle
	person_event SPRITE_BUG_CATCHER, 23, 34, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_BugCatcherDoug, -1 ; Bug Catcher Doug - Weedle, Kakuna, Weedle
	person_event SPRITE_BUG_CATCHER,  6, 21, $3, 0, 0, -1, -1, 0, 2, 0, Trainer_BugCatcherChuck, -1 ; Bug Catcher Chuck - Metapod, Caterpie, Metapod
	person_event SPRITE_BUG_CATCHER, 22,  6, $8, 0, 0, -1, -1, 0, 2, 1, Trainer_BugCatcherSammy, -1 ; Bug Catcher Sammy - Weedle
	person_event SPRITE_POKE_BALL,   15, 29, $1, 0, 0, -1, -1, 0, 1, 0, MapViridianForestRBAntidote, EVENT_VIRIDIAN_FOREST_RB_ANTIDOTE
	person_event SPRITE_POKE_BALL,   33, 16, $1, 0, 0, -1, -1, 0, 1, 0, MapViridianForestRBPotion, EVENT_VIRIDIAN_FOREST_RB_POTION
	person_event SPRITE_POKE_BALL,   35,  5, $1, 0, 0, -1, -1, 0, 1, 0, MapViridianForestRBPokeBall, EVENT_VIRIDIAN_FOREST_RB_POKE_BALL
	person_event SPRITE_FRUIT_TREE,   6, 35, $1, 0, 0, -1, -1, 0, 0, 0, ViridianForestRBFruitTree, -1
; 0x1ac554

