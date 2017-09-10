Route25RB_MapScriptHeader: ; 0x19ee94
	; trigger count
	db 0
	; callback count
	db 0
; 0x19ee9e

Route25RBTrainer1:
	trainer EVENT_ROUTE_25_YOUNGSTER_1_RB, YOUNGSTER, JOEY_RB, _Route25BattleText1, _Route25EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText1
	waitbutton
	closetext
	end

Route25RBTrainer2:
	trainer EVENT_ROUTE_25_YOUNGSTER_2_RB, YOUNGSTER, DAN_RB, _Route25BattleText2, _Route25EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText2
	waitbutton
	closetext
	end

Route25RBTrainer3:
	trainer EVENT_ROUTE_25_JR_TRAINER_RB, CAMPER, FLINT_RB, _Route25BattleText3, _Route25EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText3
	waitbutton
	closetext
	end

Route25RBTrainer4:
	trainer EVENT_ROUTE_25_LASS_1_RB, PICNICKER, KELSEY_RB, _Route25BattleText4, _Route25EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText4
	waitbutton
	closetext
	end

Route25RBTrainer5:
	trainer EVENT_ROUTE_25_YOUNGSTER_3_RB, YOUNGSTER, CHAD_RB, _Route25BattleText5, _Route25EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText5
	waitbutton
	closetext
	end

Route25RBTrainer6:
	trainer EVENT_ROUTE_25_LASS_2_RB, LASS, HALEY_RB, _Route25BattleText6, _Route25EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText6
	waitbutton
	closetext
	end

Route25RBTrainer7:
	trainer EVENT_ROUTE_25_HIKER_1_RB, HIKER, FRANK_RB, _Route25BattleText7, _Route25EndBattleText7, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText7
	waitbutton
	closetext
	end

Route25RBTrainer8:
	trainer EVENT_ROUTE_25_HIKER_2_RB, HIKER, WAYNE_RB, _Route25BattleText8, _Route25EndBattleText8, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText8
	waitbutton
	closetext
	end

Route25RBTrainer9:
	trainer EVENT_ROUTE_25_HIKER_3_RB, HIKER, NOB_RB, _Route25BattleText9, _Route25EndBattleText9, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route25AfterBattleText9
	waitbutton
	closetext
	end

Route25RB_TMBall:
	db TM_SEISMIC_TOSS, 1

Route25RB_HiddenEther:
	dwb EVENT_ROUTE_25_RB_HIDDEN_ETHER, ETHER

Route25RB_HiddenElixer:
	dwb EVENT_ROUTE_25_RB_HIDDEN_ELIXER, ELIXER

Route25RB_BillsHouseSignScript:
	jumptext _Route25Text11

_Route25BattleText1:
	text "Gli allenatori"
	line "del posto vengono"
	cont "qui ad allenarsi!"
	done

_Route25EndBattleText1:
	text "Sei decente."
	done

_Route25AfterBattleText1:
	text "Ogni #mon ha"
	line "dei punti deboli."
	cont "Devi addestrarne"
	cont "vari tipi."
	done

_Route25BattleText2:
	text "Papà mi ha portato"
	line "ad una grande fe-"
	cont "sta sulla M/N Anna"
	cont "ad Aranciopoli!"
	done

_Route25EndBattleText2:
	text "Non me la sono"
	line "presa!"
	done

_Route25AfterBattleText2:
	text "Sulla M/N Anna ho"
	line "incontrato allena-"
	cont "tori da tutto il"
	cont "mondo!"
	done

_Route25BattleText3:
	text "Sono proprio un"
	line "figo."
	cont "Ho la fidanzata."
	done

_Route25EndBattleText3:
	text "Ahi ahi<...>"
	done

_Route25AfterBattleText3:
	text "Oh beh. La mia ra-"
	line "gazza mi console-"
	cont "rà."
	done

_Route25BattleText4:
	text "Ciao! Il mio"
	line "ragazzo é forte!"
	done

_Route25EndBattleText4:
	text "Ero in una situa-"
	line "zione difficile!"
	done

_Route25AfterBattleText4:
	text "Ah, vorrei che"
	line "anche il mio"
	cont "ragazzo fosse"
	cont "come te!"
	done

_Route25BattleText5:
	text "Sapevo già che"
	line "avremmo lottato!"
	done

_Route25EndBattleText5:
	text "Sapevo già che"
	line "avrei perso<...>"
	done

_Route25AfterBattleText5:
	text "Se il tuo #mon"
	line "si confonde o si"
	cont "addormenta, sosti-"
	cont "tuiscilo!"
	done

_Route25BattleText6:
	text "Il mio amico ha un"
	line "sacco di #mon"
	cont "carini."
	para "Sono troppo invi-"
	line "diosa!"
	done

_Route25EndBattleText6:
	text "Non sono poi così"
	line "invidiosa!"
	done

_Route25AfterBattleText6:
	text "Vieni dal Monte"
	line "Luna? Mi dai un"
	cont "Clefairy?"
	done

_Route25BattleText7:
	text "Sono appena torna-"
	line "to dal Monte Luna,"
	cont "ma sono pronto!"
	done

_Route25EndBattleText7:
	text "Lavori sodo!"
	done

_Route25AfterBattleText7:
	text "Accidenti!"
	line "Prima uno Zubat"
	cont "mi ha aggredito!"
	done

_Route25BattleText8:
	text "Sto andando a"
	line "vedere i #mon"
	cont "del collezionista!"
	done

_Route25EndBattleText8:
	text "Mi hai stracciato."
	done

_Route25AfterBattleText8:
	text "Il collezionista"
	line "ha molti #mon"
	cont "rari."
	done

_Route25BattleText9:
	text "Stai andando a far"
	line "visita a Bill?"
	cont "Prima lottiamo!"
	done

_Route25EndBattleText9:
	text "Di certo sei un"
	line "valido allenatore."
	done

_Route25AfterBattleText9:
	text "Il passaggio qua"
	line "sotto é una"
	cont "scorciatoia per"
	cont "Celestopoli."
	done

_Route25Text11:
	text "Villa Miramare"
	line "Bill vive qui!"
	done

Route25RB_MapEventHeader: ; 0x19f58f
	; filler
	db 0, 0

	; warps
	db 1
	warp_def 3, 45, 1, GROUP_BILLS_HOUSE_RB, MAP_BILLS_HOUSE_RB

	; xy triggers
	db 0

	; signposts
	db 3
	signpost 3, 43, $0, Route25RB_BillsHouseSignScript
	signpost 3, 38, $7, Route25RB_HiddenEther
	signpost 1, 10, $7, Route25RB_HiddenElixer

	; people-events
	db 10
	person_event SPRITE_YOUNGSTER,      6, 18, $6, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer1, -1
	person_event SPRITE_YOUNGSTER,      9, 22, $7, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer2, -1
	person_event SPRITE_COOLTRAINER_M,  8, 28, $6, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer3, -1
	person_event SPRITE_LASS,          12, 22, $9, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer4, -1
	person_event SPRITE_YOUNGSTER,      7, 36, $8, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer5, -1
	person_event SPRITE_LASS,           8, 41, $6, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer6, -1
	person_event SPRITE_POKEFAN_M,      8, 12, $9, 0, 0, -1, -1, 0, 2, 3, Route25RBTrainer7, -1
	person_event SPRITE_POKEFAN_M,     13, 27, $7, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer8, -1
	person_event SPRITE_POKEFAN_M,     11, 17, $9, 0, 0, -1, -1, 0, 2, 2, Route25RBTrainer9, -1
	person_event SPRITE_POKE_BALL,      6, 26, $1, 0, 0, -1, -1, 0, 1, 0, Route25RB_TMBall, EVENT_ROUTE_25_TM19_RB
; 0x19f643
