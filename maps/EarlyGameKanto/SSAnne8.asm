SSAnne8_MapScriptHeader:
	db 0
	db 0

Trainer_SSAnne8Gentleman1:
	trainer EVENT_S_S_ANNE_8_GENTLEMAN_1, GENTLEMAN, ARTHUR_RB, _SSAnne8BattleText1, _SSAnne8EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText1
	waitbutton
	closetext
	end

Trainer_SSAnne8Gentleman2:
	trainer EVENT_S_S_ANNE_8_GENTLEMAN_2, GENTLEMAN, THOMAS_RB, _SSAnne8BattleText2, _SSAnne8EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText2
	waitbutton
	closetext
	end

Trainer_SSAnne8Youngster:
	trainer EVENT_S_S_ANNE_8_YOUNGSTER, YOUNGSTER, TYLER_RB, _SSAnne8BattleText3, _SSAnne8EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText3
	waitbutton
	closetext
	end

Trainer_SSAnne8Lass:
	trainer EVENT_S_S_ANNE_8_LASS, LASS, ANN_RB, _SSAnne8BattleText4, _SSAnne8EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne8EndBattleText4
	waitbutton
	closetext
	end

SSAnne8Teacher1Script:
    checkflag ENGINE_PLAYER_IS_FEMALE
    iftrue .Female
    jumptextfaceplayer _SSAnne8Text5

.Female:
    jumptextfaceplayer _SSAnne8Text5F
	
SSAnne8PokefanMScript:
	jumptextfaceplayer _SSAnne8Text6
SSAnne8TwinScript:
	jumptextfaceplayer _SSAnne8Text7
SSAnne8WigglytuffScript:
	faceplayer
	loadfont
	writetext _SSAnne8Text8
	cry WIGGLYTUFF
	waitbutton
	closetext
	end
SSAnne8Teacher2Script:
	jumptextfaceplayer _SSAnne8Text9
SSAnne8GentlemanScript:
	jumptextfaceplayer _SSAnne8Text11

SSAnne8RareCandy:
	db TM_ROCK_SMASH, 1

_SSAnne8Text8:
	text "Wigglytuff: Puup"
	line "pupuu!"
	done

_SSAnne8BattleText1:
	text "Io viaggio sempre"
	line "da solo."

	para "I miei unici amici"
	line "sono i #mon!"
	done

_SSAnne8EndBattleText1:
	text "I miei amici<...>"
	done

_SSAnne8AfterBattleText1:
	text "Dovresti compor-"
	line "tarti bene con gli"
	cont "amici!"
	done

_SSAnne8BattleText2:
	text "Ehi, tu!"
	line "Come osi entrare?"
	done

_SSAnne8EndBattleText2:
	text "Hmpf!"
	line "Che maleducazione!"
	done

_SSAnne8AfterBattleText2:
	text "Voglio rimanere da"
	line "solo! Vattene!"
	done

_SSAnne8BattleText3:
	text "Io amo i #mon!"
	line "Tu?"
	done

_SSAnne8EndBattleText3:
	text "Wow! Sei forte!"
	done

_SSAnne8AfterBattleText3:
	text "Diventiamo amici,"
	line "va bene?"

	para "Così possiamo"
	line "scambiare!"
	done

_SSAnne8BattleText4:
	text "I #mon che ho"
	line "catturato vengono"
	cont "da tutto il mondo!"
	done

_SSAnne8EndBattleText4:
	text "Oh no!"
	line "Ho girato il mondo"
	cont "per questi!"
	done

_SSAnne8AfterBattleText4:
	text "Hai sconfitto i"
	line "miei #mon"
	cont "mondiali!"

	para "Devi portarmeli al"
	line "Centro #mon!"
	done

_SSAnne8Text5:
	text "Cameriere, vorrei"
	line "una torta di"
	cont "ciliegie, grazie!"
	done

_SSAnne8Text5F:
	text "Cameriera, vorrei"
	line "una torta di"
	cont "ciliegie, grazie!"
	done
	
_SSAnne8Text6:
	text "Le crociere posso-"
	line "no essere eleganti"
	cont "e accoglienti allo"
	cont "stesso tempo."
	done

_SSAnne8Text7:
	text "Io viaggio sempre"
	line "con Wigglytuff!"
	done

_SSAnne8Text9:
	text "Noi viaggiamo in"
	line "giro per il mondo."
	done

_SSAnne8Text11:
	text "Ssh! Lavoro per la"
	line "Polizia Interna-"
	cont "zionale!"

	para "Sto lavorando al"
	line "caso Rocket!"
	done

SSAnne8_MapEventHeader:
	db 0, 0
	db 6
	warp_def  0,  0, 3, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def  0, 10, 4, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def  0, 20, 5, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 10,  0, 6, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 10, 10, 7, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1
	warp_def 10, 20, 8, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1

	db 0

	db 0

	db 11
	person_event SPRITE_GENTLEMAN,  7,  6, $8, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, Trainer_SSAnne8Gentleman1, -1
	person_event SPRITE_GENTLEMAN,  8, 15, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne8Gentleman2, -1
	person_event SPRITE_YOUNGSTER, 18, 15, $7, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne8Youngster, -1
	person_event SPRITE_LASS, 15, 17, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_SSAnne8Lass, -1
	person_event SPRITE_TEACHER, 7, 26, $4, 2, 0, -1, -1, 0, 0, 0, SSAnne8Teacher1Script, -1
	person_event SPRITE_POKEFAN_M, 18, 4, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne8PokefanMScript, -1
	person_event SPRITE_TWIN, 15, 6, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne8TwinScript, -1
	person_event SPRITE_FAIRY, 15, 7, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne8WigglytuffScript, -1
	person_event SPRITE_TEACHER, 17, 14, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne8Teacher2Script, -1
	person_event SPRITE_POKE_BALL, 19, 16, $1, 0, 0, -1, -1, 0, 1, 0, SSAnne8RareCandy, EVENT_S_S_ANNE_8_RARE_CANDY
	person_event SPRITE_GENTLEMAN, 17, 25, $5, 0, 2, -1, -1, 8 + PAL_OW_BROWN, 0, 0, SSAnne8GentlemanScript, -1
