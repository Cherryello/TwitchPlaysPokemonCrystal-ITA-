SSAnne10_MapScriptHeader:
	db 0
	db 0

Trainer_SSAnne10Sailor1:
	trainer EVENT_S_S_ANNE_10_SAILOR_1, SAILOR, PHILLIP_RB, _SSAnne10BattleText1, _SSAnne10EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText1
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor2:
	trainer EVENT_S_S_ANNE_10_SAILOR_2, SAILOR, HUEY_RB, _SSAnne10BattleText2, _SSAnne10EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText2
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor3:
	trainer EVENT_S_S_ANNE_10_SAILOR_3, SAILOR, DYLAN_RB, _SSAnne10BattleText3, _SSAnne10EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText3
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor4:
	trainer EVENT_S_S_ANNE_10_SAILOR_4, SAILOR, DUNCAN_RB, _SSAnne10BattleText4, _SSAnne10EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText4
	waitbutton
	closetext
	end

Trainer_SSAnne10Sailor5:
	trainer EVENT_S_S_ANNE_10_SAILOR_5, SAILOR, LEONARD_RB, _SSAnne10BattleText5, _SSAnne10EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText5
	waitbutton
	closetext
	end

Trainer_SSAnne10Fisher:
	trainer EVENT_S_S_ANNE_10_FISHER, FISHER, BARNY_RB, _SSAnne10BattleText6, _SSAnne10EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne10AfterBattleText6
	waitbutton
	closetext
	end

SSAnne10CooltrainerMScript:
	jumptextfaceplayer _SSAnne10Text7

SSAnne10MachopScript:
	loadfont
	writetext _SSAnne10Text8
	cry MACHOKE
	waitbutton
	closetext
	end

SSAnne10Ether:
	db ETHER, 1
SSAnne10Nugget:
	db NUGGET, 1
SSAnne10MaxPotion:
	db MAX_POTION, 1

SSAnne10BedScript:
	loadfont
	writetext _SSAnne10BedText1
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	playmusic MUSIC_HEAL
	special HealParty
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iffalse .skip_timer
	special DecrementSSAnneTimer
.skip_timer
	blackoutmod GROUP_S_S_ANNE_10, MAP_S_S_ANNE_10
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female
	writetext _SSAnne10BedText2
	waitbutton
	closetext
	end
.female
	writetext _SSAnne10BedText2F
	waitbutton
	closetext
	end

_SSAnne10Text8:
	text "Machoke: Gwoh!"
	line "Goggoh!"
	done

_SSAnne10BattleText1:
	text "Già sai cosa si"
	line "dice sui marinai"
	cont "e sulle risse!"
	done

_SSAnne10EndBattleText1:
	text "Bene!"
	line "Bella lotta!"
	done

_SSAnne10AfterBattleText1:
	text "Haha! Vuoi essere"
	line "un marinaio?"
	done

_SSAnne10BattleText2:
	text "Sto mettendo in"
	line "gioco il mio orgo-"
	cont "glio da marinaio!"
	done

_SSAnne10EndBattleText2:
	text "Il tuo spirito mi"
	line "ha fatto annegare!"
	done

_SSAnne10AfterBattleText2:
	text "Conosci per caso"
	line "il Guru Pescatore"
	cont "di Aranciopoli?"
	done

_SSAnne10BattleText3:
	text "Anche noi marinai"
	line "abbiamo dei #-"
	cont "mon!"
	done

_SSAnne10EndBattleText3:
	text "OK, non sei male."
	done

_SSAnne10AfterBattleText3:
	text "Tutti i #mon"
	line "che abbiamo vengo-"
	cont "no dal mare!"
	done

_SSAnne10BattleText4:
	text "Mi piacciono i"
	line "bambini determina-"
	cont "ti come te!@@"

_SSAnne10EndBattleText4:
	text "Argh! Perso!"
	done

_SSAnne10AfterBattleText4:
	text "I #mon di mare"
	line "vivono nelle acque"
	cont "profonde. Serve un"
	cont "amo per prenderli!"
	done

_SSAnne10BattleText5:
	text "Ehi, se perdi,"
	line "dopo dovrai cammi-"
	cont "nare sul ponte!"
	done

_SSAnne10EndBattleText5:
	text "Argh!"
	line "Battuto da un"
	cont "bambino!"
	done

_SSAnne10AfterBattleText5:
	text "A volte delle"
	line "meduse finiscono"
	cont "nella nave."
	done

_SSAnne10BattleText6:
	text "Ciao straniero!"
	line "Fermati e facciamo"
	cont "due chiacchiere!"

	para "Lo sai che tutti i"
	line "nostri #mon"
	cont "vengono dal mare?"
	done

_SSAnne10EndBattleText6:
	text "Acc<...>!"
	para "L'ho fatto"
	line "scappare!"
	done

_SSAnne10AfterBattleText6:
	text "Volevo far diven-"
	line "tare anche te un"
	cont "mio assistente!"
	done

_SSAnne10Text7:
	text "Il mio compagno,"
	line "Machoke, é super"
	cont "forte!"

	para "Ha abbastanza"
	line "Forza da muovere"
	cont "grossi massi!"
	done

_SSAnne10BedText1:
	text "È un letto comodo."
	line "Dormiamo un po'<...>"
	done

_SSAnne10BedText2:
_SSAnne10BedText2F:
	text "<PLAYER> e i suoi"
	line "#mon si sentono"
	cont "rigenerati!"
	done
	
SSAnne10_MapEventHeader:
	db 0, 0
	db 12
	db  5,  2, 5, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5,  3, 5, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 12, 4, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 13, 4, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 22, 3, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db  5, 23, 3, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15,  2, 2, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15,  3, 2, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 12, 1, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 13, 1, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 22, 7, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	db 15, 23, 7, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4

	db 0

	db 2
	signpost 11, 23, $0, SSAnne10BedScript
	signpost 12, 23, $0, SSAnne10BedScript

	db 11
	person_event SPRITE_SAILOR, 17,  4, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor1, -1
	person_event SPRITE_SAILOR, 15,  6, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor2, -1
	person_event SPRITE_SAILOR,  7, 16, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor3, -1
	person_event SPRITE_SAILOR,  6, 26, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor4, -1
	person_event SPRITE_SAILOR,  6,  4, $9, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Sailor5, -1
	person_event SPRITE_FISHER,  8,  4, $9, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne10Fisher, -1
	person_event SPRITE_COOLTRAINER_M, 17, 14, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne10CooltrainerMScript, -1
	person_event SPRITE_MACHOP, 16, 15, $16, 0, 0, -1, -1, 0, 0, 0, SSAnne10MachopScript, -1
	person_event SPRITE_POKE_BALL, 6, 24, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne10Ether, EVENT_S_S_ANNE_10_ETHER
	person_event SPRITE_POKE_BALL, 6, 14, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne10Nugget, EVENT_S_S_ANNE_10_NUGGET
	person_event SPRITE_POKE_BALL, 15, 16, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne10MaxPotion, EVENT_S_S_ANNE_10_MAX_POTION
