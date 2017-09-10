SSAnne7_MapScriptHeader:
	db 0
	db 0

SSAnne7CaptainScript:
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iftrue .rubbed_back
	loadfont
	writetext _SSAnne7RubText
	playmusic MUSIC_HEAL
	pause 60
	setevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	special RestartMapMusic
	waitbutton
	closetext
	faceplayer
	loadfont
	writetext _NotReceivingHM01Text
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	playmusic MUSIC_HEAL
	special HealParty
	blackoutmod GROUP_S_S_ANNE_10, MAP_S_S_ANNE_10
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	writetext _SSAnne7Text_61932
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, Movement_CaptainReturnsToHisPost
	stopfollow
	loadfont
	writetext SSAnne7Text_CaptainSetsSail1
	pause 30
	writetext SSAnne7Text_CaptainSetsSail2
	pause 30
	writetext SSAnne7Text_CaptainSetsSail3
	pause 30
	closetext
	pause 15
	playsound SFX_BOAT
	earthquake 45
	pause 15
	faceplayer
	loadfont
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	writetext SSAnne7Text_CaptainSetsSail4
	waitbutton
	closetext
	special StartSSAnneTimer
	disappear $2
	appear $3
	domaptrigger GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1, 1
	end
	
.Female
    writetext SSAnne7Text_CaptainSetsSail4F
	waitbutton
	closetext
	special StartSSAnneTimer
	disappear $2
	appear $3
	domaptrigger GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1, 1
	end

.rubbed_back
	faceplayer
	loadfont
	writetext SSAnne7Text_CaptainSetsSail5
	waitbutton
	closetext
	checkflag ENGINE_51
	iffalse .end
	appear $4
	playsound SFX_EXIT_BUILDING
	waitsfx
	spriteface $3, DOWN
	spriteface $0, DOWN
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement $4, SSAnne7_RocketRunsUpToCaptain
	spriteface $0, RIGHT
	appear $5
	playsound SFX_EXIT_BUILDING
	waitsfx
	spriteface $0, DOWN
	applymovement $5, SSAnne7_GiovanniRunsUpToCaptain
	spriteface $0, RIGHT
	spriteface $3, RIGHT
	loadfont
	writetext SSAnne7Text_RocketsText
	waitbutton
	closetext
	loadfont
	writetext SSAnne7Text_CaptainConfused
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $3
	disappear $4
	disappear $5
	clearevent EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	setevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	domaptrigger GROUP_S_S_ANNE_5, MAP_S_S_ANNE_5, 1
	domaptrigger GROUP_S_S_ANNE_3, MAP_S_S_ANNE_3, 1
	playmusic MUSIC_NONE
	playsound SFX_TACKLE
	waitsfx
	pause 15
	playsound SFX_TACKLE
	waitsfx
	pause 60
	special HealParty
	blackoutmod GROUP_S_S_ANNE_7, MAP_S_S_ANNE_7
	playsound SFX_EXIT_BUILDING
	waitsfx
	playsound SFX_EXIT_BUILDING
	waitsfx
	special Function8c0ab
	takeitem S_S_TICKET, 1
	playmapmusic
.end
	end

SSAnne7TrashcanScript:
	jumptext _SSAnne7Text2
SSAnne7SeasicknessBookScript:
	jumptext _SSAnne7Text3

Movement_CaptainReturnsToHisPost:
	step_left
	step_up
	step_left
	step_left
	turn_head_down
	step_end

SSAnne7_RocketRunsUpToCaptain:
	big_step_up
	big_step_up
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	turn_head_left
	step_end

SSAnne7_GiovanniRunsUpToCaptain:
	step_up
	step_up
	step_sleep 30
	step_right
	step_right
	step_up
	step_up
	turn_head_left
	step_end

_SSAnne7RubText:
	text "Capitano: Ooargh<...>"
	line "Mi sento uno"
	cont "strazio<...>"
	cont "Urrp! Credo di"
	cont "avere il mal di"
	cont "mare<...>"

	para "<PLAYER> massaggia"
	line "la schiena al"
	cont "capitano!"

	para "Rub-rub<...>"
	line "Rub-rub<...>"
	done

_NotReceivingHM01Text:
	text "Capitano: Wow!"
	line "Grazie! Ora mi"
	cont "sento molto"
	cont "meglio!"

	para "Vuoi vedere la mia"
	line "tecnica di taglio?"

	para "Te la mostrerei,"
	line "se stessi bene<...>"

	para "Ma sì! Lascia che"
	line "curi i tuoi #-"
	cont "mon."

	para "È il minimo che"
	line "possa fare."
	done

_SSAnne7Text_61932:
	text "Capitano: Wow!"

	para "Ora che mi sento"
	line "bene, penso sia il"
	cont "momento giusto."
	done

SSAnne7Text_CaptainSetsSail1:
	text "Siamo tutti pronti"
	line "alla partenza?"
	done

SSAnne7Text_CaptainSetsSail2:
	text "Voce: Sì, signor"
	line "capitano!"
	done

SSAnne7Text_CaptainSetsSail3:
	text "Allora spieghiamo"
	line "le vele, uomini!"
	done

SSAnne7Text_CaptainSetsSail4:
	text "E<...> partiti!"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, "Uh?"

	para "Volevi rimanere ad"
	line "Aranciopoli?"

	para "Oh, non credevo<...>"

	para "Se tornassimo ora,"
	line "gli altri passeg-"
	cont "geri di certo non"
	cont "gradirebbero."

	para "Ritorneremo ad"
	line "Aranciopoli tra"
	cont "un anno."

	para "La nostra prossima"
	line "fermata di porto é"
	cont "Olivinopoli tra"
	cont "una settimana."

	para "Quando arriveremo"
	line "lì, potremo far"
	cont "partire per te la"
	cont "Nave Veloce per"
	cont "Aranciopoli."

	para "Nel frattempo,"
	line "puoi goderti con"
	cont "tutta tranquillità"
	cont "i servizi di lusso"
	cont "offerti sulla"
	cont "nave."

	para "Secondo il tuo"
	line "biglietto<...>"

	para "La tua cabina si"
	line "trova nella sotto-"
	cont "coperta."

	para "Sentiti libero"
	line "di riposarti lì."
	done
	
SSAnne7Text_CaptainSetsSail4F:
	text "E<...> partiti!"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, "Uh?"

	para "Volevi rimanere ad"
	line "Aranciopoli?"

	para "Oh, non credevo<...>"

	para "Se tornassimo ora,"
	line "gli altri passeg-"
	cont "geri di certo non"
	cont "gradirebbero."

	para "Ritorneremo ad"
	line "Aranciopoli tra"
	cont "un anno."

	para "La nostra prossima"
	line "fermata di porto é"
	cont "Olivinopoli tra"
	cont "una settimana."

	para "Quando arriveremo"
	line "lì, potremo far"
	cont "partire per te la"
	cont "Nave Veloce per"
	cont "Aranciopoli."

	para "Nel frattempo,"
	line "puoi goderti con"
	cont "tutta tranquillità"
	cont "i servizi di lusso"
	cont "offerti sulla"
	cont "nave."

	para "In base al tuo"
	line "biglietto<...>"

	para "La tua cabina si"
	line "trova nella sotto-"
	cont "coperta."

	para "Sentiti libera"
	line "di riposarti lì."
	done

SSAnne7Text_CaptainSetsSail5:
	text "Ah, <PLAYER>!"

	para "Ti stai trovando"
	line "bene in questa"
	cont "crociera a bordo"
	cont "della M/N Anna?"
	done

SSAnne7Text_RocketsText:
	text "Non una parola di"
	line "più, Capitano."
	cont "Questo é un ammu-"
	cont "tinamento."

	para "Le chiediamo di"
	line "collaborare, al-"
	cont "trimenti potremo"
	cont "non rispondere"
	cont "delle nostre"
	cont "azioni."
	done

SSAnne7Text_CaptainConfused:
	text "D-di cosa sta"
	line "parlando?"
	cont "Un ammutinamento?!"
	done

_SSAnne7Text2:
	text "Bleah! Non avrei"
	line "dovuto guardare!"
	done

_SSAnne7Text3:
	text "'Come combattere"
	line "il mal di mare'<...>"
	para "Il capitano sta"
	line "leggendo questo!"
	done

SSAnne7_MapEventHeader:
	db 0, 0
	db 1
	warp_def 7, 0, 9, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2

	db 0
	db 2
	signpost 1, 4, $0, SSAnne7TrashcanScript
	signpost 2, 1, $0, SSAnne7SeasicknessBookScript

	db 4
	person_event SPRITE_CAPTAIN, 6, 8, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne7CaptainScript, EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	person_event SPRITE_CAPTAIN, 5, 5, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne7CaptainScript, EVENT_S_S_ANNE_NOT_YET_DEPARTED
	person_event SPRITE_ROCKET, 10, 5, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_S_S_ANNE_7_ROCKETS
	person_event SPRITE_GIOVANNI, 10, 5, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_S_S_ANNE_7_ROCKETS
