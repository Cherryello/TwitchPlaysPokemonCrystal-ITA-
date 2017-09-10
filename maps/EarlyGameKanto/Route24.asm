Route24RB_MapScriptHeader: ; 0x1adbf8
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 0
.Trigger0
	end
.Trigger1
	end

Route24RBTrainerCamper:
	trainer EVENT_ROUTE_24_JR_TRAINER_RB, CAMPER, SHANE_RB, _Route24BattleText1, _Route24EndBattleText1, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText1
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer5:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_5_RB, CAMPER, ETHAN_RB, _Route24BattleText2, _Route24EndBattleText2, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText2
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer4:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_4_RB, LASS, RELI_RB, _Route24BattleText3, _Route24EndBattleText3, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText3
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer3:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_3_RB, YOUNGSTER, TIMMY_RB, _Route24BattleText4, _Route24EndBattleText4, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText4
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer2:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_2_RB, LASS, ALI_RB, _Route24BattleText5, _Route24EndBattleText5, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText5
	waitbutton
	closetext
	end

NuggetBridgeRBTrainer1:
	trainer EVENT_NUGGET_BRIDGE_TRAINER_1_RB, BUG_CATCHER, CALE_RB, _Route24BattleText6, _Route24EndBattleText6, 0, .script
.script
	talkaftercancel
	loadfont
	writetext _Route24AfterBattleText6
	waitbutton
	closetext
	end

Route24RBRocketBattleTrigger:
	setlasttalked $2
	spriteface $0, RIGHT
NuggetBridgeRBEndGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_NUGGET_BRIDGE_TRAINER_6_RB
	iftrue .after_text
	writetext Route24RBRocketText1a
	writetext Route24RBRocketText1b
	buttonsound
	verbosegiveitem NUGGET, 1
	writetext Route24RBRocketText2a
.loop1
	yesorno
	iffalse .ask2
	writetext Route24RBOakIntervenesText
	jump .loop1

.ask2
	writetext Route24RBRocketText2b
	yesorno
	iftrue .ask3
	writetext Route24RBOakIntervenesText
.loop2
	yesorno
	iffalse .ask3
	writetext Route24RBOakIntervenesText
	jump .loop2

.ask3
	writetext Route24RBRocketText2c
.loop3
	yesorno
	iffalse .ask4
	writetext Route24RBOakIntervenesText
	jump .loop3

.ask4
	writetext Route24RBRocketText2d
.loop4
	yesorno
	iffalse .startbattle
	writetext Route24RBOakIntervenesText
	jump .loop4

.startbattle
	playmusic MUSIC_HIKER_ENCOUNTER
	writetext Route24RBRocketText3
	waitbutton
	closetext
	loadtrainer GRUNTM, 36
	winlosstext Route24RBRocketWinText, 0
	startbattle
	returnafterbattle
	special RestartMapMusic
	dotrigger $1
	setevent EVENT_NUGGET_BRIDGE_TRAINER_6_RB
	loadfont
.after_text
	writetext Route24RBRocketText4
	waitbutton
	closetext
	end

Route24RBTM45:
	db TM_THUNDER_WAVE, 1

Route24RBRocketText1a:
	text "Congratulazioni!"
	para "Hai sconfitto i"
	line "nostri 5 allena-"
	cont "tori!@"
	sound0x02
	text_waitsfx
	db "@"

Route24RBRocketText1b:
	text "Meriti un favoloso"
	line "premio!"
	done

Route24RBRocketText2a:
	text "Comunque sia, ti"
	line "andrebbe di"
	cont "far parte del"
	cont "Team Rocket?"

	para "Siamo una banda"
	line "devota al male che"
	cont "usa i #mon per"
	cont "il proprio torna-"
	cont "conto!"

	para "Che ne pensi?"
	done

Route24RBRocketText2b:
	text "No? Ne sei sicuro?"
	done

Route24RBRocketText2c:
	text "Dai, cosa ti"
	line "cambia!"
	done

Route24RBRocketText2d:
	text "Ti sto dicendo di"
	line "entrare!"
	done

Route24RBRocketText3:
	text "OK, allora dovrò"
	line "convincerti con"
	cont "le cattive!"

	para "Ti farò un'offerta"
	line "che non potrai"
	cont "rifiutare!"
	done

Route24RBOakIntervenesText:
	text "Le parole di Oak"
	line "rimbombano<...>"

	para "<PLAYER>! È vera-"
	line "mente la cosa"
	cont "giusta da fare?"

	para $56, $56, $56
	line $56, $56, $56

	para "Perché stai esi-"
	line "tando? È una"
	cont "grande proposta!"
	cont "Coglila!"
	done

Route24RBRocketWinText:
	text "Arrgh!"
	line "Sei forte!"
	done

Route24RBRocketText4:
	text "Con le tue capaci-"
	line "tà, potresti di-"
	cont "ventare un grande"
	cont "capo del Team"
	cont "Rocket!"
	done

_Route24BattleText1:
	text "Ti ho visto batte-"
	line "re tutti, prima!"
	done

_Route24EndBattleText1:
	text "Cavolo!"
	done

_Route24AfterBattleText1:
	text "Mi sono nascosto"
	line "qui perché la"
	cont "gente sul ponte"
	cont "mi faceva paura!"
	done

_Route24BattleText2:
	text "Sono il numero 5!"
	line "Ti schiaccherò!"
	done

_Route24EndBattleText2:
	text "Whoa! È troppo!"
	done

_Route24AfterBattleText2:
_Route24AfterBattleText3:
_Route24AfterBattleText4:
_Route24AfterBattleText5:
_Route24AfterBattleText6:
	text "Ho fatto del mio"
	line "meglio, non ho"
	cont "rimpianti!"
	done

_Route24BattleText3:
	text "Sono la numero 4!"
	line "Ti stai stancando?"
	done

_Route24EndBattleText3:
	text "Anch'io ho perso!"
	done

_Route24BattleText4:
	text "Sono il numero 3!"
	line "Non ci andrò"
	cont "piano!"
	done

_Route24EndBattleText4:
	text "Ooh! Totalmente"
	line "schiacciato!"
	done

_Route24BattleText5:
	text "Sono la numero 2!"
	line "Ora si fa sul"
	cont "serio!"
	done

_Route24EndBattleText5:
	text "Come ho potuto"
	line "perdere?"
	done

_Route24BattleText6:
	text "Questo é il Ponte"
	line "Pepita! Sconfiggi"
	cont "noi 5 allenatori e"
	cont "vincerai un premio"
	cont "favoloso!"

	para "Pensi di farcela?"
	done

_Route24EndBattleText6:
	text "Whoo! Non male!"
	done

Route24RB_MapEventHeader: ; 0x1adf50
	; filler
	db 0, 0

	; warps
	db 0

	; xy triggers
	db 1
	xy_trigger 0, 15, 10, $0, Route24RBRocketBattleTrigger, 0, 0

	; signposts
	db 0

	; people-events
	db 8
	person_event SPRITE_COOLTRAINER_M, 19, 15, $8, 0, 0, -1, -1, 0, 0, 0, NuggetBridgeRBEndGuyScript, -1
	person_event SPRITE_COOLTRAINER_M, 24,  9, $7, 0, 0, -1, -1, 0, 2, 4, Route24RBTrainerCamper,     -1
	person_event SPRITE_COOLTRAINER_M, 22, 15, $8, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer5,     -1
	person_event SPRITE_LASS,          25, 14, $9, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer4,     -1
	person_event SPRITE_YOUNGSTER,     28, 15, $8, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer3,     -1
	person_event SPRITE_LASS,          31, 14, $9, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer2,     -1
	person_event SPRITE_BUG_CATCHER,   34, 15, $8, 0, 0, -1, -1, 0, 2, 1, NuggetBridgeRBTrainer1,     -1
	person_event SPRITE_POKE_BALL,      9, 14, $1, 0, 0, -1, -1, 0, 1, 0, Route24RBTM45, EVENT_ROUTE_24_TM45_RB
; 0x1adf63

