Route3RB_MapScriptHeader: ; 0x1adf63
	; trigger count
	db 0

	; callback count
	db 0
; 0x1adf65

Route3RBSuperNerdScript:
	jumptextfaceplayer _Route3Text1

Trainer_BugCatcherGreg:
	trainer EVENT_BUG_CATCHER_GREG, BUG_CATCHER, GREG_RB, _Route3BattleText1, _Route3EndBattleText1, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText1
	waitbutton
	closetext
	end

Trainer_YoungsterBen:
	trainer EVENT_YOUNGSTER_BEN, YOUNGSTER, BEN_RB, _Route3BattleText2, _Route3EndBattleText2, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText2
	waitbutton
	closetext
	end

Trainer_LassJanice:
	trainer EVENT_LASS_JANICE, LASS, JANICE_RB, _Route3BattleText3, _Route3EndBattleText3, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText3
	waitbutton
	closetext
	end

Trainer_BugCatcherColton:
	trainer EVENT_BUG_CATCHER_COLTON, BUG_CATCHER, COLTON_RB, _Route3BattleText4, _Route3EndBattleText4, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText4
	waitbutton
	closetext
	end

Trainer_LassSally:
	trainer EVENT_LASS_SALLY, LASS, SALLY_RB, _Route3BattleText5, _Route3EndBattleText5, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText5
	waitbutton
	closetext
	end

Trainer_YoungsterCalvin:
	trainer EVENT_YOUNGSTER_CALVIN, YOUNGSTER, CALVIN_RB, _Route3BattleText6, _Route3EndBattleText6, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText6
	waitbutton
	closetext
	end

Trainer_BugCatcherJames:
	trainer EVENT_BUG_CATCHER_JAMES, BUG_CATCHER, JAMES_RB, _Route3BattleText7, _Route3EndBattleText7, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText7
	waitbutton
	closetext
	end

Trainer_LassRobin:
	trainer EVENT_LASS_ROBIN, LASS, ROBIN_RB, _Route3BattleText8, _Route3EndBattleText8, 0, .Script
.Script
	talkaftercancel
	loadfont
	writetext _Route3AfterBattleText8
	waitbutton
	closetext
	end

Route3RBRocketsScript:
	applymovement $b, Route3RBMovement_HalfStepRight
	loadfont
	writetext Route3RBRocketsText1
	waitbutton
	closetext
	applymovement $c, Route3RBMovement_HalfStepLeft
	loadfont
	writetext Route3RBRocketsText2
	waitbutton
	closetext
	pause 16
	faceperson $b, $0
	faceperson $c, $0
	loadfont
	checkflag ENGINE_BOULDERBADGE
	iftrue .battle
	writetext Route3RBRocketsText3
	waitbutton
	closetext
	spriteface $b, RIGHT
	spriteface $c, LEFT
	end

.battle
	playmusic MUSIC_HIKER_ENCOUNTER
	writetext Route3RBRocketsText4
	waitbutton
	closetext
	loadtrainer GRUNTM, 32
	winlosstext Route3RBRocketsWinText1, 0
	setlasttalked $b
	startbattle
	returnafterbattle
	playmusic MUSIC_HIKER_ENCOUNTER
	loadfont
	writetext Route3RBRocketsText5
	waitbutton
	closetext
	loadtrainer GRUNTM, 33
	winlosstext Route3RBRocketsWinText2, 0
	setlasttalked $c
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	writetext Route3RBRocketsText6
	waitbutton
	closetext
	follow $b, $c
	applymovement $b, Route3RBMovement_StepUp
	stopfollow
	disappear $b
	playsound SFX_EXIT_BUILDING
	applymovement $c, Route3RBMovement_StepUp
	disappear $c
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

Route3RBLassScript:
	checkevent EVENT_ROUTE_3_ROCKETS
	iftrue .true
	jumptextfaceplayer Route3RBLassTextBeforeRockets
.true
	jumptextfaceplayer Route3RBLassText

MapRoute3RBSignpost0Script:
	jumptext _Route3Text10

MapRoute3RBPokecenterSign:
	jumpstd pokecentersign

Route3RBMovement_HalfStepRight:
	half_step_right
	step_end

Route3RBMovement_HalfStepLeft
	half_step_left
	step_end

Route3RBMovement_StepUp
	step_up
	step_end

_Route3Text1:
	text "Uff<...> Meglio ripo-"
	line "sarsi un po'<...>"
	cont "Che stanchezza<...>!!"

	para "Questo tunnel per"
	line "Celestopoli é"
	cont "davvero tosto!"
	done

_Route3BattleText1:
	text "Ehi! Ci siamo già"
	line "incontrati al"
	cont "Bosco Smeraldo!"
	done

_Route3EndBattleText1:
	text "Mi hai battuto"
	line "di nuovo!"
	done

_Route3AfterBattleText1:
	text "Ci sono altre"
	line "specie di #mon"
	cont "oltre a quelle che"
	cont "si trovano nel"
	cont "bosco."
	done

_Route3BattleText2:
	text "Ciao! Mi piacciono"
	line "un sacco i panta-"
	cont "loncini corti!"
	cont "Sono facili da"
	cont "indossare!"
	done

_Route3EndBattleText2:
	text "Non posso creder-"
	line "ci!"
	done

_Route3AfterBattleText2:
	text "Stai depositando"
	line "i tuoi #mon nel"
	cont "PC? Ogni box può"
	cont "contenere fino a"
	cont "20 #mon!"
	done

_Route3BattleText3:
	text "Mi stavi guardan-"
	line "do, eh?"
	done

_Route3EndBattleText3:
	text "Sei cattivo!"
	done

_Route3AfterBattleText3:
	text "Smettila di fis-"
	line "sarmi, se non vuoi"
	cont "guai!"
	done

_Route3BattleText4:
	text "Sei un allenatore?"
	line "Lottiamo!"
	done

_Route3EndBattleText4:
	text "Se avessi avuto"
	line "#mon nuovi,"
	cont "avrei vinto!"
	done

_Route3AfterBattleText4:
	text "Se un box del PC"
	line "é pieno, passa a"
	cont "un altro!"
	done

_Route3BattleText5:
	text "Quello sguardo che"
	line "mi hai lanciato"
	cont "era così intrigan-"
	cont "te!"
	done

_Route3EndBattleText5:
	text "Comportati bene!"
	done

_Route3AfterBattleText5:
	text "Evita le lotte"
	line "nascondendoti da"
	cont "certa gente!"
	done

_Route3BattleText6:
	text "Ehi! Non stai in-"
	line "dossando i panta-"
	cont "loncini!"
	done

_Route3EndBattleText6:
	text "Via, via, via!"
	done

_Route3AfterBattleText6:
	text "Porto sempre i"
	line "pantaloncini,"
	cont "anche d'inverno!"
	done

_Route3BattleText7:
	text "Ora puoi lottare"
	line "contro il mio"
	cont "nuovo #mon!"
	done

_Route3EndBattleText7:
	text "Sconfitta totale!"
	done

_Route3AfterBattleText7:
	text "I #mon allenati"
	line "sono più forti di"
	cont "quelli selvatici!"
	done

_Route3BattleText8:
	text "Eeh!! Mi hai"
	line "toccata?!"
	done

_Route3EndBattleText8:
	text "O sbaglio?"
	done

_Route3AfterBattleText8:
	text "Il Percorso 4 é"
	line "ai piedi del"
	cont "Monte Luna."
	done

_Route3Text10:
	text "Percorso 3 -"
	line "Per il Monte Luna"
	done

Route3RBRocketsText1:
	text "<...>"

	para "Il capo vuole che"
	line "andiamo là dentro"
	cont "a pigliare dei"
	cont "sassi vecchi e"
	cont "fatiscenti?"
	done

Route3RBRocketsText2:
	text "Non lo capisco"
	line "nemmeno io."

	para "Pare quasi li"
	line "adori<...>"
	done

Route3RBRocketsText3:
	text "Ehi! Questa é"
	line "una conversazione"
	cont "privata! Vattene!"
	done

Route3RBRocketsText4:
	text "Ehi! Ci stavi"
	line "ascoltando?!"

	para "Hai sentito troppe"
	line "cose, allora."

	para "Assaggia l'ira"
	line "del Team Rocket!"
	done

Route3RBRocketsWinText1:
	text "Ma come<...>?"
	done

Route3RBRocketsText5:
	text "Ora tocca a me."
	line "Ti farò piangere"
	cont "dalla disperazio-"
	cont "ne!"
	done

Route3RBRocketsWinText2:
	text "Questa forza<...>"
	done

Route3RBRocketsText6:
	text "Noi siamo il Team"
	line "Rocket, e il"
	cont "nostro compito é"
	cont "quello di control-"
	cont "lare tutti i #-"
	cont "mon."

	para "Vuoi ostacolare i"
	line "piani del nostro"
	cont "capo?"
	cont "Preparati!"

	para "<...> O questo avrei"
	line "detto, ma ci hai"
	cont "devastato, ragaz-"
	cont "zetto."
	para "Ci ricorderemo"
	line "di te."
	done

Route3RBLassTextBeforeRockets:
	text "Quei tipi loschi<...>"

	para "Di cosa stanno"
	line "parlando?"
	done

Route3RBLassText:
	text "Ahia! Poco fa sono"
	line "inciampata in un"
	cont "Geodude!"
	done

Route3RB_MapEventHeader: ; 0x1ae18a
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $1, $34, 1, GROUP_MT_MOON_B1F_RB, MAP_MT_MOON_B1F_RB
	warp_def $3, $2f, 1, GROUP_MOUNT_MOON_POKECENTER_1F_RB, MAP_MOUNT_MOON_POKECENTER_1F_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 49, $0, MapRoute3RBSignpost0Script
	signpost  3, 48, $0, MapRoute3RBPokecenterSign

	; people-events
	db 12
	person_event SPRITE_SUPER_NERD, 16, 56, $3, 0, 0, -1, -1, 0, 0, 0, Route3RBSuperNerdScript, -1
	person_event SPRITE_BUG_CATCHER, 8, 10, $9, 0, 0, -1, -1, 0, 2, 2, Trainer_BugCatcherGreg, -1
	person_event SPRITE_YOUNGSTER, 6, 14, $6, 0, 0, -1, -1, 0, 2, 3, Trainer_YoungsterBen, -1
	person_event SPRITE_LASS, 11, 16, $8, 0, 0, -1, -1, 0, 2, 2, Trainer_LassJanice, -1
	person_event SPRITE_BUG_CATCHER, 7, 19, $6, 0, 0, -1, -1, 0, 2, 1, Trainer_BugCatcherColton, -1
	person_event SPRITE_LASS, 6, 23, $8, 0, 0, -1, -1, 0, 2, 4, Trainer_LassSally, -1
	person_event SPRITE_YOUNGSTER, 11, 22, $8, 0, 0, -1, -1, 0, 2, 3, Trainer_YoungsterCalvin, -1
	person_event SPRITE_BUG_CATCHER, 8, 24, $9, 0, 0, -1, -1, 0, 2, 3, Trainer_BugCatcherJames, -1
	person_event SPRITE_LASS, 17, 28, $7, 0, 0, -1, -1, 0, 2, 2, Trainer_LassRobin, -1
	person_event SPRITE_ROCKET, 6, 56, $9, 0, 0, -1, -1, 0, 0, 0, Route3RBRocketsScript, EVENT_ROUTE_3_ROCKETS
	person_event SPRITE_ROCKET, 6, 57, $8, 0, 0, -1, -1, 0, 0, 0, Route3RBRocketsScript, EVENT_ROUTE_3_ROCKETS
	person_event SPRITE_LASS, 7, 54, $4, 2, 0, -1, -1, 0, 0, 0, Route3RBLassScript, -1
; 0x1ae1ce

