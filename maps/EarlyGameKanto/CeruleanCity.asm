CeruleanCityRB_MapScriptHeader: ; 0x184000
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 1
	dbw 5, .Callback
.Trigger0
	end
.Trigger1
	end
.Callback
	disappear $2
	return

CeruleanCityRivalBattleLeftTrigger:
	scall CeruleanCityRivalBattle
	spriteface $0, RIGHT
	applymovement $2, Movement_CeruleanRivalExitsRight
	spriteface $0, DOWN
	applymovement $2, Movement_CeruleanRivalExits
	disappear $2
	special RestartMapMusic
	end

CeruleanCityRivalBattleRightTrigger:
	moveperson $2, 21, 2
	scall CeruleanCityRivalBattle
	spriteface $0, LEFT
	applymovement $2, Movement_CeruleanRivalExitsLeft
	spriteface $0, DOWN
	applymovement $2, Movement_CeruleanRivalExits
	disappear $2
	special RestartMapMusic
	end

CeruleanCityRivalBattle:
	appear $2
	setlasttalked $2
	playmusic MUSIC_RIVAL_RB
	applymovement $2, Movement_CeruleanRivalEnters
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_intro
	writetext _CeruleanCityText_19668F
	jump .selectbattle
.male_intro
	writetext _CeruleanCityText_19668
.selectbattle
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_3C
	jump .startbattle
.squirtle
	loadtrainer BLUE_RB, BLUE_RB_3B
	jump .startbattle
.charmander
	loadtrainer BLUE_RB, BLUE_RB_3A
.startbattle
	winlosstext _CeruleanCityText_1966d, _CeruleanCityText_19672
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext _CeruleanCityText_1966dF, _CeruleanCityText_19672F
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_outro
	writetext _CeruleanCityText_19677F
	jump .finish
.male_outro
	writetext _CeruleanCityText_19677
.finish
	waitbutton
	closetext
	dotrigger $1
	playmusic MUSIC_RIVAL_AFTER_RB
	end

CeruleanCityRBSuperNerdScript:
	jumptextfaceplayer _CeruleanCityText3

CeruleanCityRBCooltrainerM1Script:
	faceplayer
	loadfont
	checkevent EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	iftrue .after
	writetext _CeruleanCityText4
	waitbutton
	closetext
	end
.after
	writetext _CeruleanCityText4After
	waitbutton
	closetext
	end

CeruleanCityRBCooltrainerM2Script:
	jumptextfaceplayer _CeruleanCityText5

CeruleanCityRBLass1Script:
	random 3
	if_equal 1, .text1
	if_equal 2, .text2
	jumptext _CeruleanCityText_19730
.text1
	jumptext _CeruleanCityText_19735
.text2
	loadfont
	writetext _CeruleanCityText_1973a
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext _CeruleanCityText_1973a_2
	waitbutton
	closetext
	checkevent EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	iftrue .post_robbery_sprite
	spriteface $6, LEFT
	end
.post_robbery_sprite
	spriteface $7, LEFT
	end

CeruleanCityRBSlowbroScript:
	waitsfx
	cry SLOWBRO
	random 4
	if_equal 1, .text1
	if_equal 2, .text2
	if_equal 3, .text3
	jumptext _CeruleanCityText_1976f
.text1
	jumptext _CeruleanCityText_19774
.text2
	jumptext _CeruleanCityText_19779
.text3
	jumptext _CeruleanCityText_1977e

CeruleanCityRBLass2Script:
	jumptextfaceplayer _CeruleanCityText9

CeruleanCityRBRocketScript:
	loadfont
	writetext CeruleanCityRBRocketText1
	waitbutton
	closetext
	pause 15
	showemote $0, $c, 15
	pause 15
	faceplayer
	playmusic MUSIC_HIKER_ENCOUNTER
	loadfont
	writetext CeruleanCityRBRocketText2
	waitbutton
	closetext
	loadtrainer GRUNTM, 37
	winlosstext CeruleanCityRBRocketWinText, 0
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	writetext CeruleanCityRBRocketText3
	waitbutton
	closetext
	disappear $6
	disappear $8
	appear $7
	appear $9
	moveperson $d, 27, 11
	checkcode VAR_FACING
	if_equal RIGHT, CeruleanRBGrampsScript_Right
	if_equal LEFT, CeruleanRBGrampsScript_Left
	spriteface $0, LEFT
	applymovement $c, Movement_CeruleanRocketRBRunsAway_playerbelow
	disappear $c
	pause 15
	appear $d
	playsound SFX_EXIT_BUILDING
	waitsfx
	applymovement $d, Movement_CeruleanGrampsRBApproaches_playerbelow
	loadfont
	writetext CeruleanCityRBRocketText4
	buttonsound
	verbosegiveitem TM_THIEF, 1
	iffalse .bag_full_up
	writetext CeruleanCityRBRocketText5
	waitbutton
	closetext
	applymovement $d, Movement_CeruleanGrampsRBRetreats_playerbelow
	disappear $d
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.bag_full_up
	closetext
	applymovement $d, Movement_CeruleanGrampsRBPartialRetreat_playerbelow
	spriteface $d, DOWN
	end

CeruleanRBGrampsScript_Left
	spriteface $0, LEFT
	applymovement $c, Movement_CeruleanRocketRBRunsAway_playerright
	disappear $c
	pause 15
	appear $d
	playsound SFX_EXIT_BUILDING
	waitsfx
	applymovement $d, Movement_CeruleanGrampsRBApproaches_playerright
	loadfont
	writetext CeruleanCityRBRocketText4
	buttonsound
	verbosegiveitem TM_THIEF, 1
	iffalse .bag_full_left
	writetext CeruleanCityRBRocketText5
	waitbutton
	closetext
	applymovement $d, Movement_CeruleanGrampsRBRetreats_playerright
	disappear $d
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.bag_full_left
	closetext
	applymovement $d, Movement_CeruleanGrampsRBPartialRetreat_playerright
	spriteface $d, DOWN
	end

CeruleanRBGrampsScript_Right
	spriteface $0, LEFT
	applymovement $c, Movement_CeruleanRocketRBRunsAway_playerleft
	disappear $c
	pause 15
	appear $d
	playsound SFX_EXIT_BUILDING
	waitsfx
	follow $0, $d
	applymovement $0, Movement_CeruleanGrampsRBApproaches_playerleft
	stopfollow
	spriteface $d, RIGHT
	loadfont
	writetext CeruleanCityRBRocketText4
CeruleanCityRBGrampsScriptContinue:
	buttonsound
	verbosegiveitem TM_THIEF, 1
	iffalse .bag_full_right
	writetext CeruleanCityRBRocketText5
	waitbutton
	closetext
	applymovement $d, Movement_CeruleanGrampsRBRetreats_playerleft
	disappear $d
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.bag_full_right
	closetext
	spriteface $d, DOWN
	end

CeruleanCityRBGrampsScript:
	faceplayer
	loadfont
	writetext CeruleanCityRBRocketText6
	jump CeruleanCityRBGrampsScriptContinue

MapCeruleanCityRBSignpost0Script:
	jumptext _CeruleanCityText12

MapCeruleanCityRBSignpost1Script:
	jumptext _CeruleanCityText17

MapCeruleanCityRBSignpost2Script:
	jumptext _CeruleanCityText16

MapCeruleanCityRBSignpost3Script:
	jumptext _CeruleanCityText13

MapCeruleanCityRBSignpost6Script:
	jumpstd pokecentersign

MapCeruleanCityRBSignpost7Script:
	jumpstd martsign

MapCeruleanCityRBLockedDoorScript:
	jumptext Text_CeruleanCityRBLockedDoor

MapCeruleanCityRBHiddenRareCandy:
	dwb EVENT_CERULEAN_CITY_HIDDEN_RARE_CANDY, RARE_CANDY

Movement_CeruleanRivalExitsRight:
	slow_step_right
	step_end

Movement_CeruleanRivalExitsLeft
	slow_step_left
	step_end

Movement_CeruleanRivalExits:
	slow_step_down
	slow_step_down
Movement_CeruleanRivalEnters:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	step_end

Movement_CeruleanRocketRBRunsAway_playerleft:
	big_step_down
Movement_CeruleanRocketRBRunsAway_playerbelow:
Movement_CeruleanRocketRBRunsAway_playerright:
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end

Movement_CeruleanGrampsRBApproaches_playerleft:
	step_right
	turn_head_left
	step_end

Movement_CeruleanGrampsRBApproaches_playerright:
	step_down
	step_right
	step_end

Movement_CeruleanGrampsRBApproaches_playerbelow:
	step_down
	step_down
	turn_head_right
	step_end

Movement_CeruleanGrampsRBRetreats_playerbelow:
	step_up
Movement_CeruleanGrampsRBPartialRetreat_playerbelow
	step_up
	step_end

Movement_CeruleanGrampsRBRetreats_playerright:
	step_left
Movement_CeruleanGrampsRBRetreats_playerleft:
	step_up
	step_end

Movement_CeruleanGrampsRBPartialRetreat_playerright:
	step_left
	step_end

_CeruleanCityText_19668F:
	text "<GREEN>: <PLAYER>!"
	line "Che piacere rive-"
	cont "derti!"

	para "Come stai?"
	line "Pare che i tuoi"
	cont "#mon siano"
	cont "molto legati a te."

	para "Io ho catturato"
	line "un po' di #mon"
	cont "carini dall'ultima"
	cont "volta che ci siamo"
	cont "visti."

	para "Lascia che ti"
	line "mostri quanto sia-"
	cont "no carini!"
	done

_CeruleanCityText_19668:
	text "<GREEN>: Ehi!"
	line "<PLAYER>!"

	para "Stai ancora"
	line "bazzicando da"
	cont "queste parti?"

	para "A me va alla"
	line "grande! Ho preso"
	cont "di recente #mon"
	cont "forti e intelli-"
	cont "genti!"

	para "Lascia che ti"
	line "mostri come se"
	cont "la cavano!"
	done

_CeruleanCityText_1966dF:
	text "Wow, pure i tuoi"
	line "#mon hanno del"
	cont "potenziale!"
	done

_CeruleanCityText_1966d:
	text "Ehi! Calma!"
	line "Hai vinto!"
	done

_CeruleanCityText_19672F:
	text "Oh<...> Pare che"
	line "abbia vinto io"
	cont "stavolta!"
	done

_CeruleanCityText_19672:
	text "Heh! Non sei nulla"
	line "per un allenatore"
	cont "del mio calibro!"
	done

_CeruleanCityText_19677F:
	text "<GREEN>: Poco fa"
	line "sono andata al"

	para "promontorio e ho"
	line "incontrato un tipo"
	cont "molto gentile"
	cont "di nome Bill."

	para "È un più un colle-"
	line "zionista che un"
	cont "allenatore, e mi"
	cont "ha mostrato i suoi"
	cont "#mon preferiti."
	
	para "Ah, lo sapevi?"
	line "Bill gestisce il"
	cont "Sistema di Memoria"
	cont "#mon per PC!"

	para "Dovresti andare a"
	line "fargli visita!"

	para "Bene, adesso devo"
	line "andare."
	cont "È stato un"
	cont "piacere!"
	done

_CeruleanCityText_19677:
	text "<GREEN>: Ehi,"
	line "sai cosa?"

	para "Sono andato da"
	line "Bill e mi sono"
	cont "fatto mostrare"
	cont "i suoi #mon"
	cont "rari!"

	para "Così ho aggiunto"
	line "un bel po' di"
	cont "pagine al #dex!"

	para "Beh, dopotutto"
	line "Bill é famoso in"
	cont "tutto il mondo"
	cont "come #fanatico!"

	para "E ha inventato"
	line "il Sistema di"
	cont "Memoria #mon!"

	para "Dal momento che"
	line "stai usando il"
	cont "suo sistema, do-"
	cont "vresti andare a"
	cont "ringraziarlo!"

	para "Beh, ora devo"
	line "proprio andare!"
	cont "Ci vediamo, bella!"
	done

_CeruleanCityText3:
	text "Anche tu un alle-"
	line "natore, eh?"

	para "Ho capito! Sei qui"
	line "per sfidare Misty,"
	cont "non é così?"

	para "Buona fortuna"
	line "allora!"
	done

_CeruleanCityText4:
	text "Quello Slowbro di"
	line "fronte al negozio"
	cont "é un bel problema."

	para "Mi spiace per"
	line "l'allenatrice<...>"
	done

_CeruleanCityText4After:
	text "Anche i #mon"
	line "hanno dei senti-"
	cont "menti."

	para "Se li fai perdere"
	line "spesso, inizieran-"
	cont "no a perdere"
	cont "fiducia in te."
	done

_CeruleanCityText5:
	text "La capopalestra é"
	line "di una forza"
	cont "disumana."
	cont "Pensaci bene!"
	done

_CeruleanCityText_19730:
	text "OK, Slowbro!"
	line "Usa Sonicboom!"
	para "Avanti, Slowbro,"
	line "presta attenzione!"
	done

_CeruleanCityText_19735:
	text "Slowbro, sferra un"
	line "pugno!"
	para "No! Hai mancato"
	line "ancora!"
	done

_CeruleanCityText_1973a:
	text "Slowbro, Ritirata!"
	line "No! Non va bene!"
	done

_CeruleanCityText_1973a_2:
	text "È proprio diffici-"
	line "le controllare i"
	cont "#mon<...>!"

	para "L'obbedienza dei"
	line "tuoi #mon"
	cont "dipende dalla tua"
	cont "abilità di allena-"
	cont "tore!"
	done

_CeruleanCityText_1976f:
	text "Slowbro fa un"
	line "pisolino<...>"
	done

_CeruleanCityText_19774:
	text "Slowbro fa il"
	line "pigrone<...>"
	done

_CeruleanCityText_19779:
	text "Slowbro ignora"
	line "gli ordini<...>"
	done

_CeruleanCityText_1977e:
	text "Slowbro é total-"
	line "mente perso<...>"
	done

_CeruleanCityText9:
	text "Voglio una bici-"
	line "cletta rosso"
	cont "fiammante!"

	para "Quando tornerà"
	line "il proprietario"
	cont "del negozio?"
	done

_CeruleanCityText12:
	text "Celestopoli"
	line "Città circondata"
	cont "da una misteriosa"
	cont "aura celeste"
	done

_CeruleanCityText13:
	text "Consigli utili"

	para "Puoi bloccare il"
	line "processo di evolu-"
	cont "zione premendo"
	cont "il tasto B."
	done

_CeruleanCityText16:
	text "Negozio di bici"
	line "Per sfrecciare in"
	cont "praterie e grotte!"

	para "    CHIUSO PER"
	line "       FERIE"
	done

_CeruleanCityText17:
	text "Capopalestra di"
	line "Celestopoli:"
	cont "Misty"

	para "La sirena"
	line "maschiaccio!"
	done

Text_CeruleanCityRBLockedDoor:
	text "È chiusa<...>"
	done

CeruleanCityRBRocketText1:
	text "Quindi é qui che"
	line "la tiene<...>"
	done

CeruleanCityRBRocketText2:
	text "Cosa? Stavo solo"
	line "pensando ad alta"
	cont "voce."

	para "Sono innocente!"
	line "Non mi credi?"
	done

CeruleanCityRBRocketWinText:
	text "OK! Mi arrendo!"
	line "Me ne andrò senza"
	cont "provocare danni!"
	done

CeruleanCityRBRocketText3:
	text "Dannazione! Sta'"
	line "certo che te la"
	cont "farò pagare cara!"
	done

CeruleanCityRBRocketText4:
	text "Cos'era tutta"
	line "quella confusione?"

	para "<...> Oh? Quell'uomo"
	line "voleva la mia MT?"

	para "Grazie per averlo"
	line "allontanato."

	para "Se solo avessi"
	line "qualche anno in"
	cont "meno<...>"

	para "Ah, non posso"
	line "farci niente."

	para "Tieni, lascia che"
	line "ti ringrazi per"
	cont "il disturbo."
	done

CeruleanCityRBRocketText5:
	text "Quell'MT insegna"
	line "Furto."

	para "Non che tu debba"
	line "compierne uno."
	done

CeruleanCityRBRocketText6:
	text "Eccoti! L'ho"
	line "conservata per te!"
	done

CeruleanCityRB_MapEventHeader: ; 0x18445d
	; filler
	db 0, 0

	; warps
	db 6
	warp_def 11,  9, 1, GROUP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB, MAP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB
	warp_def 15, 13, 1, GROUP_CERULEAN_TRADE_SPEECH_HOUSE_RB, MAP_CERULEAN_TRADE_SPEECH_HOUSE_RB
	warp_def 17, 19, 1, GROUP_CERULEAN_POKECENTER_1F_RB, MAP_CERULEAN_POKECENTER_1F_RB
	warp_def 19, 30, 1, GROUP_CERULEAN_GYM_RB, MAP_CERULEAN_GYM_RB
	warp_def 25, 25, 2, GROUP_CERULEAN_MART_RB, MAP_CERULEAN_MART_RB
	warp_def  9,  9, 3, GROUP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB, MAP_CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB

	; xy triggers
	db 2
	xy_trigger 0,  7, 20, $0, CeruleanCityRivalBattleLeftTrigger, 0, 0
	xy_trigger 0,  7, 21, $0, CeruleanCityRivalBattleRightTrigger, 0, 0

	; signposts
	db 9
	signpost 19, 23, $0, MapCeruleanCityRBSignpost0Script
	signpost 21, 27, $0, MapCeruleanCityRBSignpost1Script
	signpost 25, 11, $0, MapCeruleanCityRBSignpost2Script
	signpost 29, 17, $0, MapCeruleanCityRBSignpost3Script
	signpost 17, 20, $0, MapCeruleanCityRBSignpost6Script
	signpost 25, 26, $0, MapCeruleanCityRBSignpost7Script
	signpost 25, 14, $0, MapCeruleanCityRBLockedDoorScript
	signpost 11, 27, $0, MapCeruleanCityRBLockedDoorScript
	signpost  8, 17, $7, MapCeruleanCityRBHiddenRareCandy

	; people-events
	db 13
	person_event SPRITE_EGK_RIVAL,  6, 24, $0, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_BEAT_RIVAL_IN_EGK_CERULEAN
	person_event SPRITE_SUPER_NERD, 24, 35, $6, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBSuperNerdScript, -1
	person_event SPRITE_COOLTRAINER_M, 22, 19, $2, 1, 1, -1, -1, 0, 0, 0, CeruleanCityRBCooltrainerM1Script, -1
	person_event SPRITE_COOLTRAINER_M, 25, 13, $4, 2, 0, -1, -1, 0, 0, 0, CeruleanCityRBCooltrainerM2Script, -1
	person_event SPRITE_LASS, 31, 24, $8, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBLass1Script, EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	person_event SPRITE_LASS, 30, 24, $8, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBLass1Script, EVENT_CERULEAN_CITY_RB_NOT_YET_ROBBERY
	person_event SPRITE_SLOWPOKE, 31, 23, $1, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBSlowbroScript, EVENT_CERULEAN_CITY_RB_STOPPED_ROBBERY
	person_event SPRITE_SLOWPOKE, 30, 23, $1, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBSlowbroScript, EVENT_CERULEAN_CITY_RB_NOT_YET_ROBBERY
	person_event SPRITE_LASS, 31, 13, $5, 0, 2, -1, -1, 0, 0, 0, CeruleanCityRBLass2Script, -1
	person_event SPRITE_COOLTRAINER_M, 16, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, ObjectEvent, EVENT_BLUE_REMATCH
	person_event SPRITE_ROCKET, 16, 32, $7, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBRocketScript, EVENT_CERULEAN_RB_ROCKET_1
	person_event SPRITE_GRAMPS, 16, 31, $3, 0, 0, -1, -1, 0, 0, 0, CeruleanCityRBGrampsScript, EVENT_CERULEAN_RB_ROCKET_2
; 0x1844fc

