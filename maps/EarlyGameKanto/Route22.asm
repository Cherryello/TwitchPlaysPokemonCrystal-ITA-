Route22RB_MapScriptHeader:
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

Route22RBRivalBattleTriggerBottom:
	playmusic MUSIC_RIVAL_RB
	applymovement $2, Route22RB_RivalWalksIn_PlayerOnBottom
	scall Route22RBRivalBattle
	applymovement $2, Route22RB_RivalWalksOut_PlayerOnBottom
	disappear $2
	dotrigger $0
	special RestartMapMusic
	end

Route22RBRivalBattleTriggerTop:
	playmusic MUSIC_RIVAL_RB
	applymovement $2, Route22RB_RivalWalksIn_PlayerOnTop
	spriteface $0, DOWN
	scall Route22RBRivalBattle
	applymovement $2, Route22RB_RivalWalksOut_PlayerOnTop
	disappear $2
	dotrigger $0
	special RestartMapMusic
	end

Route22RBRivalBattle:
	setlasttalked $2
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_1
	writetext _Route22RivalBeforeBattleText1F
	jump .done_intro_text

.male_rival_1
	writetext _Route22RivalBeforeBattleText1
.done_intro_text
	waitbutton
	closetext
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .charmander
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .squirtle
	loadtrainer BLUE_RB, BLUE_RB_2C
	jump .StartBattle

.charmander
	loadtrainer BLUE_RB, BLUE_RB_2A
	jump .StartBattle

.squirtle
	loadtrainer BLUE_RB, BLUE_RB_2B
.StartBattle
	winlosstext _Route22RivalDefeatedText1, _Route22RivalLossText
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .got_rival_gender
	loadvar OtherTrainerClass, BLUE_RB_F
	winlosstext _Route22RivalDefeatedText1F, _Route22RivalLossTextF
.got_rival_gender
	writecode VAR_BATTLETYPE, BATTLETYPE_RIVAL_RB
	startbattle
	returnafterbattle
	special RestartMapMusic
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .male_rival_2
	writetext _Route22RivalAfterBattleText1F
	jump .done_outro_text

.male_rival_2
	writetext _Route22RivalAfterBattleText1
.done_outro_text
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_AFTER_RB
	end

Route22RB_RivalWalksIn_PlayerOnTop:
	step_right
	step_right
	step_right
	step_right
	step_right
	turn_head_up
	step_end

Route22RB_RivalWalksIn_PlayerOnBottom:
	step_right
	step_right
	step_right
	step_right
	step_end

Route22RB_RivalWalksOut_PlayerOnBottom:
	step_up
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Route22RB_RivalWalksOut_PlayerOnTop:
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_end

MapRoute22RBSignpost0Script:
	jumptext _Route22FrontGateText

_Route22RivalBeforeBattleText1::
	text "<GREEN>: Ehi!"
	line "<PLAYER>!"

	para "Vuoi andare alla"
	line "Lega #mon, eh?"

	para "Beh, scordatelo!"
	line "Non hai alcuna"
	cont "medaglia!"

	para "La guardia non ti"
	line "farà passare!"

	para "Di lì non potrai"
	line "passare mai senza"
	cont "delle medaglie!"

	para "Comunque sia, hai"
	line "allenato un po' i"
	cont "tuoi #mon?"
	done

_Route22RivalAfterBattleText1::
	text "Ho sentito che"
	line "alla Lega #mon"
	cont "ci sono un sacco"
	cont "di allenatori"
	cont "forti!"

	para "Troverò di sicuro"
	line "un modo per"
	cont "batterli!"

	para "Dovresti smetterla"
	line "di perdere tempo!"
	done

_Route22RivalDefeatedText1::
	text "<GREEN>: Tsk!"
	line "Solo fortuna<...>"
	done

_Route22RivalLossText:
	text "<GREEN>: Oh sì!"
	line "Sono proprio"
	cont "forte!"
	done

_Route22RivalBeforeBattleText1F::
	text "<GREEN>: Oh, ciao,"
	line "<PLAYER>!"

	para "Stai andando alla"
	line "Lega #mon?"

	para "Mi spiace deluder-"
	line "ti, ma<...>"
	cont "Non prenderti il"
    cont "disturbo."
	
	para "Non ti faranno mai"
	line "passare se non hai"
	cont "alcuna medaglia<...>"

	para "Comunque, ti stai"
	line "prendendo cura dei"
	cont "tuoi #mon?"
	done

_Route22RivalAfterBattleText1F::
	text "Ho sentito un po'"
	line "di cose sulla"
	cont "Lega #mon<...>"

	para "So che ci sono un"
	line "sacco di allenato-"
	cont "ri formidabili"
	cont "laggiù."

	para "Mi piacerebbe ve-"
	line "ramente vedere"
	cont "qualche loro"
	cont "tecnica<...>"

	para "Oh, scusami."
	line "Ci vediamo."
	done

_Route22RivalDefeatedText1F::
	text "<GREEN>: Oh<...>"
	line "davvero non male."
	done

_Route22RivalLossTextF:
	text "<GREEN>: Oh<...> Mi"
	line "spiace. Avrei do-"
	cont "vuto andarci più"
	cont "leggera<...>"
	done

_Route22FrontGateText::
	text "Lega #mon"
	line "Ingresso"
	cont "principale"
	done

Route22RB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $5, $8, 1, GROUP_VICTORY_ROAD_GATE_RB, MAP_VICTORY_ROAD_GATE_RB

	; xy triggers
	db 2
	xy_trigger 1, 4, 29, $0, Route22RBRivalBattleTriggerTop, 0, 0
	xy_trigger 1, 5, 29, $0, Route22RBRivalBattleTriggerBottom, 0, 0

	; signposts
	db 1
	signpost 11, 7, $0, MapRoute22RBSignpost0Script

	; people-events
	db 1
	person_event SPRITE_EGK_RIVAL, 9, 28, $0, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_RIVAL_ROUTE_22_RB
; 0x7c038

