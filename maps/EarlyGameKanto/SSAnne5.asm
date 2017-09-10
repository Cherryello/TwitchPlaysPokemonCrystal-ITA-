SSAnne5_MapScriptHeader:
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0
	db 0
.Trigger0
	end
.Trigger1
	priorityjump .InfiniteRockets
	end

.InfiniteRockets
	dotrigger 0
	disappear $2
	disappear $3
	loadvar EngineBuffer1, 0
	jump .next_rocket
.loop
	loadfont
	writetext SSAnne10Text_WontGetAwayWithThis
	waitbutton
	closetext
	checkevent EVENT_ROCKETS_SS_ANNE_1
	iftrue .female
	applymovement $2, Movement_SSAnneRocketRetreat
	disappear $2
	jump .okay
.female
	applymovement $3, Movement_SSAnneRocketRetreat
	disappear $3
.okay
	playsound SFX_EXIT_BUILDING
	waitsfx
	copybytetovar EngineBuffer1
	if_equal 100, .next_rocket
	addvar 1
	copyvartobyte EngineBuffer1
.next_rocket
	playmusic MUSIC_ROCKET_ENCOUNTER
	random 2
	iffalse .male
	loadtrainer GRUNTF, 0
	moveperson $3, 8, 6
	appear $3
	applymovement $3, Movement_SSAnneRocketOneStepRight
	showemote $0, $3, 15
	pause 15
	applymovement $3, Movement_SSAnneRocketApproachesPlayer
	jump .got_class
.male
	loadtrainer GRUNTM, 0
	moveperson $2, 8, 6
	appear $2
	applymovement $2, Movement_SSAnneRocketOneStepRight
	showemote $0, $2, 15
	pause 15
	applymovement $2, Movement_SSAnneRocketApproachesPlayer
.got_class
	loadfont
	scall .GetWinText
	waitbutton
	closetext
	special SampleRandomRocket
	startbattle
	reloadmap
	iffalse .loop
	loadfont
	writetext SSAnne5TextAfter
	waitbutton
	closetext
	pause 30
	playmusic MUSIC_NONE
	earthquake 100
	pause 30
	loadfont
	writetext SSAnne5ShipwreckText
	waitbutton
	closetext
	checkevent EVENT_ROCKETS_SS_ANNE_1
	iftrue .female2
	showemote $0, $2, 15
	pause 15
	spriteface $2, LEFT
	jump .finish
.female2
	showemote $0, $3, 15
	pause 15
	spriteface $3, LEFT
.finish
	loadfont
	writetext SSAnne5ShipwreckText2
	closetext
	special Special_FadeToBlack
	special Functiond91
	playsound SFX_HYDRO_PUMP
	pause 8
	playsound SFX_HYDRO_PUMP
	pause 8
	playsound SFX_HYDRO_PUMP
	pause 8
	playsound SFX_HYDRO_PUMP
	pause 180
	setflag ENGINE_EARLY_GAME_KANTO
	domaptrigger GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY, 2
	blackoutmod GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warpfacing DOWN, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY, 10, 9
	end

.GetWinText
	random 8
	if_equal 0, .one
	if_equal 1, .two
	if_equal 2, .three
	if_equal 3, .four
	if_equal 4, .five
	if_equal 5, .six
	if_equal 6, .seven
	if_equal 7, .eight
.one
	writetext RandomRocketsBeforeText1
	winlosstext RandomRocketsWinText1, 0
	end
.two
	writetext RandomRocketsBeforeText2
	winlosstext RandomRocketsWinText2, 0
	end
.three
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female3
	writetext RandomRocketsBeforeText3
	winlosstext RandomRocketsWinText3, 0
	end

.Female3
	writetext RandomRocketsBeforeText3F
	winlosstext RandomRocketsWinText3, 0
	end

.four
	writetext RandomRocketsBeforeText4
	winlosstext RandomRocketsWinText4, 0
	end
.five
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female4
	writetext RandomRocketsBeforeText5
	winlosstext RandomRocketsWinText5, 0
	end
	
.female4
	writetext RandomRocketsBeforeText5F
	winlosstext RandomRocketsWinText5, 0
	end

.six
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female6
	writetext RandomRocketsBeforeText6
	winlosstext RandomRocketsWinText6, 0
	end

.female6
	writetext RandomRocketsBeforeText6
	winlosstext RandomRocketsWinText6F, 0
	end
	
.seven
	writetext RandomRocketsBeforeText7
	winlosstext RandomRocketsWinText7, 0
	end
.eight
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .female5
	writetext RandomRocketsBeforeText8
	winlosstext RandomRocketsWinText8, 0
	end

.female5
	writetext RandomRocketsBeforeText8F
	winlosstext RandomRocketsWinText8, 0
	end

	
SSAnne5CooltrainerMScript:
	faceplayer
	loadfont
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iftrue .departed_text
	writetext _SSAnne5Text1
	waitbutton
	closetext
	end
.departed_text
	writetext _SSAnne5Text1b
	waitbutton
	closetext
	end
SSAnne5SailorScript:
	jumptextfaceplayer _SSAnne5Text2
SSAnne5SuperNerdScript:
	jumptextfaceplayer _SSAnne5Text3
SSAnee5Sailor1Battle:
	trainer EVENT_S_S_ANNE_5_SAILOR1, SAILOR, TREVOR_RB, _SSAnne5BattleText1, _SSAnne5EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne5AfterBattleText1
	waitbutton
	closetext
	end

SSAnee5Sailor2Battle:
	trainer EVENT_S_S_ANNE_5_SAILOR2, SAILOR, EDMOND_RB, _SSAnne5BattleText2, _SSAnne5EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _SSAnne5AfterBattleText2
	waitbutton
	closetext
	end

Movement_SSAnneRocketApproachesPlayer:
	big_step_right
	big_step_right
Movement_SSAnneRocketOneStepRight:
	big_step_right
	step_end

Movement_SSAnneRocketRetreat:
	big_step_down
	big_step_right
	step_end

RandomRocketsBeforeText1:
	text "I ragazzacci inso-"
	line "lenti devono esse-"
	cont "re eliminati!"
	done

RandomRocketsBeforeText2:
	text "Vuoi mettere i"
	line "bastoni fra le"
	cont "ruote al Team"
	cont "Rocket?"
	done

RandomRocketsBeforeText3:
	text "Sei tu quel bimbo"
	line "che ha rovinato i"
	cont "nostri piani al"
	cont "Monte Luna?"
	done
	
RandomRocketsBeforeText3F:
	text "Sei tu quella"
	line "bimba che ha rovi-"
	cont "nato i nostri"
	cont "piani al Monte"
	cont "Luna?"
	done

RandomRocketsBeforeText4:
	text "Dammi i tuoi #-"
	line "mon!"
	done

RandomRocketsBeforeText5:
	text "Non avresti dovuto"
	line "venire qui, bimbo."
	done

RandomRocketsBeforeText5F:
	text "Non avresti dovuto"
	line "venire qui, bimba."
	done
	
RandomRocketsBeforeText6:
	text "Sei abbastanza im-"
	line "prudente se ti"
	cont "vuoi mettere aper-"
	cont "tamente contro il"
	cont "Team Rocket."
	done

RandomRocketsBeforeText7:
	text "Sarà questione di"
	line "poco tempo."
	done

RandomRocketsBeforeText8:
	text "Ritorna al sicuro"
	line "nelle cabine,"
	cont "bamboccio."
	done
	
RandomRocketsBeforeText8F:
	text "Ritorna al sicuro"
	line "nelle cabine,"
	cont "bimbetta."
	done

RandomRocketsWinText1:
	text "Arrgh!!"
	done
RandomRocketsWinText2:
	text "No!"
	done
RandomRocketsWinText3:
	text "Assurdo!"
	done
RandomRocketsWinText4:
	text "Ci rinuncio."
	done
RandomRocketsWinText5:
	text "Come fai ad essere"
	line "così forte?"
	done
RandomRocketsWinText6:
	text "Battuto da un"
	line "bambino<...>?"
	done
RandomRocketsWinText6F:
	text "Battuto da una"
	line "bambina<...>?"
	done
RandomRocketsWinText7:
	text "Non ci vedo più!"
	done
RandomRocketsWinText8:
	text "Grrrr<...>"
	done

SSAnne5TextAfter:
	text "Hah, ti sta bene!"

	para "Nessuno, e ripeto,"
	line "NESSUNO la passa"
	cont "liscia se si mette"
	cont "contro il Team"
	cont "Rocket!"
	done

SSAnne10Text_WontGetAwayWithThis:
	text "Non la scamperai"
	line "così facilmente!"
	done
	
_SSAnne5Text1:
	text "La festa é finita."
	line "La nave salperà"
	cont "a breve."
	done

_SSAnne5Text1b:
	text "Non vedo l'ora di"
	line "arrivare a Olivi-"
	cont "nopoli!"

	para "Si dice che le"
	line "feste lì siano"
	cont "ancora meglio di"
	cont "quelle di Arancio-"
	cont "poli!"
	done

_SSAnne5Text2:
	text "Pulire la coperta"
	line "é un lavoraccio!"
	done

_SSAnne5Text3:
	text "Ugh. Non mi sento"
	line "per niente bene<...>"

	para "Sono venuto qui a"
	line "prendere una boc-"
	cont "cata d'aria."
	done

_SSAnne5BattleText1:
	text "We wé!"

	para "Facciamo una bella"
	line "rissa!"
	para "Tra #mon ovvia-"
	line "mente!"
	done

_SSAnne5EndBattleText1:
	text "Questo é un K.O."
	line "vero e proprio!"
	done

_SSAnne5AfterBattleText1:
	text "Quanti tipi di"
	line "#mon esistono"
	cont "secondo te?"
	done

_SSAnne5BattleText2:
	text "Ehilà!"
	line "Hai mica il mal"
	cont "di mare?"
	done

_SSAnne5EndBattleText2:
	text "Non ho prestato"
	line "attenzione!"
	done

_SSAnne5AfterBattleText2:
	text "Il capitano ha"
	line "detto che esistono"
	cont "150 specie diverse"
	cont "di #mon."
	para "Ma io credo ce ne"
	line "siano di più."
	done

SSAnne5ShipwreckText:
	text "Voce: A tutte le"
	line "reclute!"
	cont "A tutte le reclu-"
	cont "te!"

	para "La nave é in rotta"
	line "di collisione."
	cont "Annullare la"
	cont "missione!"

	para "Ripeto:"
	line "Annullare la"
	cont "missione!"
	done

SSAnne5ShipwreckText2:
	text "Dobbiamo andarcene"
	line "da qui!"

	para "Abbandonare la"
	line "nave!"
	cont "Abbando"
	done

SSAnne5_MapEventHeader:
	db 0, 0
	db 2
	warp_def 6, 13, 1, GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3
	warp_def 7, 13, 1, GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3

	db 0
	db 0
	db 9
	person_event SPRITE_ROCKET,        10, 13, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKETS_SS_ANNE_1
	person_event SPRITE_ROCKET_GIRL,   10, 13, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_ROCKETS_SS_ANNE_2
	person_event SPRITE_COOLTRAINER_M,  6,  9, $7, 0, 0, -1, -1, 0, 0, 0, SSAnne5CooltrainerMScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR,        13,  8, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne5SailorScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SUPER_NERD,    15, 11, $2, 1, 1, -1, -1, 0, 0, 0, SSAnne5SuperNerdScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR,         8,  8, $6, 0, 0, -1, -1, 0, 2, 3, SSAnee5Sailor1Battle, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR,        12, 14, $7, 0, 0, -1, -1, 0, 2, 3, SSAnee5Sailor2Battle, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_ROCKET,         11, 15, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET,          9, 14, $9, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
