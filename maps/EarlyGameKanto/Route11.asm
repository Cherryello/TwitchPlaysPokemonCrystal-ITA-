Route11RB_MapScriptHeader: ; 0x68000
	; trigger count
	db 0

	; callback count
	db 0
; 0x68002
Trainer_Route11RBGambler1:
	trainer EVENT_ROUTE_11_GAMBLER_1_RB, GENTLEMAN, HUGO_RB, _Route11BattleText1, _Route11EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText1
	waitbutton
	closetext
	end

Trainer_Route11RBGambler2:
	trainer EVENT_ROUTE_11_GAMBLER_2_RB, GENTLEMAN, JASPER_RB, _Route11BattleText2, _Route11EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText2
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster1:
	trainer EVENT_ROUTE_11_YOUNGSTER_1_RB, YOUNGSTER, EDDIE_RB, _Route11BattleText3, _Route11EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText3
	waitbutton
	closetext
	end

Trainer_Route11RBRocker1:
	trainer EVENT_ROUTE_11_ROCKER_1_RB, GUITARIST, BERNIE_RB, _Route11BattleText4, _Route11EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText4
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster2:
	trainer EVENT_ROUTE_11_YOUNGSTER_2_RB, YOUNGSTER, DAVE_RB, _Route11BattleText5, _Route11EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText5
	waitbutton
	closetext
	end

Trainer_Route11RBGambler3:
	trainer EVENT_ROUTE_11_GAMBLER_3_RB, GENTLEMAN, DARIAN_RB, _Route11BattleText6, _Route11EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText6
	waitbutton
	closetext
	end

Trainer_Route11RBGambler4:
	trainer EVENT_ROUTE_11_GAMBLER_4_RB, GENTLEMAN, DIRK_RB, _Route11BattleText7, _Route11EndBattleText7, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText7
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster3:
	trainer EVENT_ROUTE_11_YOUNGSTER_3_RB, YOUNGSTER, DILLON_RB, _Route11BattleText8, _Route11EndBattleText8, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText8
	waitbutton
	closetext
	end

Trainer_Route11RBRocker2:
	trainer EVENT_ROUTE_11_ROCKER_2_RB, GUITARIST, BRAXTON_RB, _Route11BattleText9, _Route11EndBattleText9, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText9
	waitbutton
	closetext
	end

Trainer_Route11RBYoungster4:
	trainer EVENT_ROUTE_11_YOUNGSTER_4_RB, YOUNGSTER, YASU_RB, _Route11BattleText10, _Route11EndBattleText10, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route11AfterBattleText10
	waitbutton
	closetext
	end


Route11RBFruitTree:
	fruittree $18

MapRoute11RBSignpost0Script:
	jumptext Route11RBSignpostText

Route11RBHiddenEscapeRope:
	dwb EVENT_ROUTE_11_HIDDEN_ESCAPE_ROPE_RB, ESCAPE_ROPE

_Route11BattleText1:
	text "Vinci, perdi, o"
	line "pareggia!"
	done

_Route11EndBattleText1:
	text "Acc<...>!"
	line "Non mi é andata"
	cont "bene stavolta!"
	done

_Route11AfterBattleText1:
	text "I #mon sono"
	line "vita! E vivere"
	cont "é giocare!"
	done

_Route11BattleText2:
	text "Il gioco! Non po-"
	line "trei mai smettere"
	cont "di giocare!"
	done

_Route11EndBattleText2:
	text "Ho avuto una"
	line "possibilità!"
	done

_Route11AfterBattleText2:
	text "Non puoi essere"
	line "un codardo nel"
	cont "mondo dei #mon!"
	done

_Route11BattleText3:
	text "Lottiamo, ma non"
	line "imbrogliare!"
	done

_Route11EndBattleText3:
	text "Eh?"
	line "Non é giusto!"
	done

_Route11AfterBattleText3:
	text "Ho dato del mio"
	line "meglio! Non ho"
    cont "rimpianti!"
	done

_Route11BattleText4:
	text "Tutto é elettri-"
	line "ficato, sono pron-"
	cont "to a scatenarmi!"
	done

_Route11EndBattleText4:
	text "Decisamente metal!"
	done

_Route11AfterBattleText4:
	text "Bisogna sempre"
	line "controllare che i"
	cont "tuoi strumenti"
	cont "siano correttamen-"
	cont "te funzionanti."
	done

_Route11BattleText5:
	text "Sono appena diven-"
	line "tato un allenato-"
	cont "re! Ma credo di"
	cont "poter vincere!"
	done

_Route11EndBattleText5:
	text "I miei #mon non"
	line "ce l'hanno fatta!"
	done

_Route11AfterBattleText5:
	text "Che vuoi?"
	line "Lasciami in pace!"
	done

_Route11BattleText6:
	text "Muahaha! Non ho"
	line "mai perso!"
	done

_Route11EndBattleText6:
	text "La mia prima"
	line "sconfitta<...>!"
	done

_Route11AfterBattleText6:
	text "La fortuna del"
	line "principiante!"
	done

_Route11BattleText7:
	text "Non ho mai vinto"
	line "nemmeno una lotta<...>"
	done

_Route11EndBattleText7:
	text "Me lo sarei"
	line "aspettato<...>"
	done

_Route11AfterBattleText7:
	text "È stata solo"
	line "sfortuna. O forse"
	cont "era destino?"
	done

_Route11BattleText8:
	text "Sono il più forte"
	line "della classe!"
	done

_Route11EndBattleText8:
	text "Cavolo!"
	line "Devo rafforzare"
	cont "i miei #mon!"
	done

_Route11AfterBattleText8:
	text "C'é un #mon"
	line "grasso che é"
	cont "sceso dai monti."

	para "È molto forte,"
	line "prova a catturar-"
	cont "lo!"
	done

_Route11BattleText9:
	text "Gotta catch 'em"
	line "all! Catch 'em"
	cont "all!"

	para "All the #mon!"
	line "#mon!"

	para "Dai, canta con me!"
	done

_Route11EndBattleText9:
	text "Viva i #mon!"
	line "#mooon!"
	done

_Route11AfterBattleText9:
	text "Voglio andare dove"
	line "mi va!"
	para "E non fermarmi"
	line "qua!"
	done

_Route11BattleText10:
	text "I miei #mon"
	line "dovrebbero essere"
	cont "pronti adesso!"
	done

_Route11EndBattleText10:
	text "Troppo forte,"
	line "troppo giovane!"
	done

_Route11AfterBattleText10:
	text "Sarà meglio tro-"
	line "varne di più"
	cont "forti!"
	done

Route11RBSignpostText: ; 0x68238
	text "Percorso 11"
	done

Route11RB_MapEventHeader: ; 0x68242
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 8, 33, 1, GROUP_ROUTE_11_GATE_RB, MAP_ROUTE_11_GATE_RB
	warp_def 9, 33, 2, GROUP_ROUTE_11_GATE_RB, MAP_ROUTE_11_GATE_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 7, 3, $0, MapRoute11RBSignpost0Script
	signpost 5, 32, $7, Route11RBHiddenEscapeRope

	; people-events
	db 11
	person_event SPRITE_GENTLEMAN, 18, 8, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBGambler1, -1
	person_event SPRITE_GENTLEMAN, 13, 19, $6, 0, 0, -1, -1, 0, 2, 2, Trainer_Route11RBGambler2, -1
	person_event SPRITE_YOUNGSTER, 9, 11, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBYoungster1, -1
	person_event SPRITE_COOLTRAINER_M, 15, 26, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBRocker1, -1
	person_event SPRITE_YOUNGSTER, 8, 16, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBYoungster2, -1
	person_event SPRITE_GENTLEMAN, 17, 35, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBGambler3, -1
	person_event SPRITE_GENTLEMAN, 7, 23, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBGambler4, -1
	person_event SPRITE_YOUNGSTER, 9, 32, $9, 0, 0, -1, -1, 0, 2, 4, Trainer_Route11RBYoungster3, -1
	person_event SPRITE_COOLTRAINER_M, 20, 33, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_Route11RBRocker2, -1
	person_event SPRITE_YOUNGSTER, 16, 16, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_Route11RBYoungster4, -1
	person_event SPRITE_FRUIT_TREE, 6, 36, $1, 0, 0, -1, -1, 0, 0, 0, Route11RBFruitTree, -1
; 0x68293

