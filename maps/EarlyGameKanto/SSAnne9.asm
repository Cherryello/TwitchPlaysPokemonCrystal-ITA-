SSAnne9_MapScriptHeader:
	db 0
	db 0

SSAnne9Trainer_Gentleman1:
	trainer EVENT_S_S_ANNE_9_GENTLEMAN_1, GENTLEMAN, BROOKS_RB, _SSAnne9BattleText1, _SSAnne9EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText1
	waitbutton
	closetext
	end

SSAnne9Trainer_Fisher:
	trainer EVENT_S_S_ANNE_9_FISHER, FISHER, DALE_RB, _SSAnne9BattleText2, _SSAnne9EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText2
	waitbutton
	closetext
	end

SSAnne9Trainer_Gentleman2:
	trainer EVENT_S_S_ANNE_9_GENTLEMAN_2, GENTLEMAN, LAMAR_RB, _SSAnne9BattleText3, _SSAnne9EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText3
	waitbutton
	closetext
	end

SSAnne9Trainer_Lass:
	trainer EVENT_S_S_ANNE_9_LASS, LASS, DAWN_RB, _SSAnne9BattleText4, _SSAnne9EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne9AfterBattleText4
	waitbutton
	closetext
	end


SSAnne9Gentleman1Script:
	faceplayer
	loadfont
	writetext _SSAnne9Text_61bf2
	waitbutton
	closetext
	refreshscreen $0
	pokepic SNORLAX
	waitbutton
	closepokepic
	reloadmappart
	end

SSAnne9MaxEther:
	db MAX_ETHER, 1

SSAnne9Gentleman2Script:
	jumptextfaceplayer _SSAnne9Text_61c01

SSAnne9GrampsScript:
	jumptextfaceplayer _SSAnne9Text_61c10

SSAnne9RareCandy:
	db RARE_CANDY, 1

SSAnne9Gentleman3Script:
	jumptextfaceplayer _SSAnne9Text_61c1f

SSAnne9BugCatcherScript:
	jumptextfaceplayer _SSAnne9Text_61c2e

SSAnne9BuenaScript:
	jumptextfaceplayer _SSAnne9Text_61c3d

SSAnne9PokefanFScript:
	jumptextfaceplayer _SSAnne9Text_61c4c

_SSAnne9Text_61bf2:
	text "In tutti i miei"
	line "viaggi non ho mai"
	cont "visto un #mon"
	cont "dormire come"
	cont "questo qui!"

	para "Era qualcosa del"
	line "genere!"
	done

_SSAnne9Text_61c01:
	text "Ho visto #mon"
	line "traghettare delle"
	cont "persone sul mare!"
	done

_SSAnne9Text_61c10:
	text "I #mon possono"
	line "tagliare piccoli"
	cont "alberi."
	done

_SSAnne9Text_61c1f:
	text "Non sei mai andato"
	line "alla Zona Safari"
	cont "di Fucsiapoli?"

	para "Puoi trovarvi un"
	line "sacco di tipi di"
	cont "#mon!!"
	done

_SSAnne9Text_61c2e:
	text "Io e Papà pensiamo"
	line "che la Zona Safari"
	cont "sia fantastica!"
	done

_SSAnne9Text_61c3d:
	text "Il capitano mi"
	line "pareva davvero"
	cont "molto pallido!"
	done

_SSAnne9Text_61c4c:
	text "Ho sentito che"
	line "molti soffrono il"
	cont "mal di mare!"
	done

_SSAnne9BattleText1:
	text "Sfidare i giovani"
	line "mi fa sentire a"
	cont "mia volta giovane."
	done

_SSAnne9EndBattleText1:
	text "Bella sfida!"
	line "Ah, mi sento"
	cont "ringiovanito!"
	done

_SSAnne9AfterBattleText1:
	text "15 anni fa ce"
	line "l'avrei fatta!"
	done

_SSAnne9BattleText2:
	text "Guarda cosa ho"
	line "pescato!"
	done

_SSAnne9EndBattleText2:
	text "Eheh!"
	done

_SSAnne9AfterBattleText2:
	text "La festa?"

	para "La festa della"
	line "crociera dovrebbe"
	cont "essere già finita."
	done

_SSAnne9BattleText3:
	text "Cosa preferisci,"
	line "#mon forti o"
	cont "#mon rari?"
	done

_SSAnne9EndBattleText3:
	text "Tanto di cappello!"
	done

_SSAnne9AfterBattleText3:
	text "Io preferisco"
	line "#mon forti e"
	cont "rari."
	done

_SSAnne9BattleText4:
	text "Non ti ho visto"
	line "alla festa."
	done

_SSAnne9EndBattleText4:
	text "Prendila con più"
	line "leggerezza!"
	done

_SSAnne9AfterBattleText4:
	text "Oh, adoro i tuoi"
	line "forti #mon!"
	done



SSAnne9_MapEventHeader:
	db 0, 0

	db 12
	warp_def  5,  2, 1, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5,  3, 1, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 12, 2, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 13, 2, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 22, 3, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def  5, 23, 3, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15,  2, 4, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15,  3, 4, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 12, 5, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 13, 5, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 22, 6, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 23, 6, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2

	db 0

	db 0

	db 13
	person_event SPRITE_GENTLEMAN,    6, 14, $9, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Gentleman1, -1
	person_event SPRITE_FISHER,       8, 17, $8, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Fisher, -1
	person_event SPRITE_GENTLEMAN,   18,  4, $9, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Gentleman2, -1
	person_event SPRITE_LASS,        15,  6, $6, 0, 0, -1, -1, 0, 2, 3, SSAnne9Trainer_Lass, -1
	person_event SPRITE_GENTLEMAN,    6,  5, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne9Gentleman1Script, -1
	person_event SPRITE_POKE_BALL,    5, 16, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne9MaxEther, EVENT_S_S_ANNE_9_MAX_ETHER
	person_event SPRITE_GENTLEMAN,    6, 25, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne9Gentleman2Script, -1
	person_event SPRITE_GRAMPS,       5, 26, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne9GrampsScript, -1
	person_event SPRITE_POKE_BALL,   16,  4, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne9RareCandy, EVENT_S_S_ANNE_9_RARE_CANDY
	person_event SPRITE_GENTLEMAN,   16, 16, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne9Gentleman3Script, -1
	person_event SPRITE_BUG_CATCHER, 18, 15, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne9BugCatcherScript, -1
	person_event SPRITE_BUENA,       16, 26, $8, 0, 0, -1, -1, 0, 0, 0, SSAnne9BuenaScript, -1
	person_event SPRITE_POKEFAN_F,   16, 24, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne9PokefanFScript, -1
