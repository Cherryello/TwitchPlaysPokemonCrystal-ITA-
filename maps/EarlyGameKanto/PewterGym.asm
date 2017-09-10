PewterGymRB_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

PewterGymRB_BrockScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM_SANDSTORM
	iftrue .have_tm
	checkflag ENGINE_BOULDERBADGE
	iftrue .have_badge
	writetext PewterGymRB_BrockIntroText
	waitbutton
	closetext
	winlosstext PewterGymRB_BrockLostText, $0000
	loadtrainer BROCK_RB, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BROCK_RB
	setevent EVENT_BEAT_CAMPER_JERRY_RB ; Moved camper 2 tiles down, allowing player to skip him
	loadfont
	writetext PewterGymRB_GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	setevent EVENT_RIVAL_ROUTE_22_RB
	domaptrigger GROUP_ROUTE_22_RB, MAP_ROUTE_22_RB, 0
	writetext PewterGymRB_BrockCongratsText
	waitbutton
	scall .tm
	closetext
	end

.have_badge
	writetext PewterGymRB_BrockCongratsText
	waitbutton
	scall.tm
	closetext
	end

.have_tm
	writetext PewterGymRB_BrockAfterText
	waitbutton
	scall .tm
	closetext
	end

.tm:
	givetm TM_SANDSTORM, EVENT_GOT_TM_SANDSTORM, .already_had_it, .bag_full
	writetext PewterGymRB_TMText
	waitbutton
.already_had_it:
.bag_full:
	end

TrainerCamperJerryRB:
	trainer EVENT_BEAT_CAMPER_JERRY_RB, CAMPER, JERRY_RB, CamperJerryRBSeenText, CamperJerryRBBeatenText, NULL, CamperJerryRBScript

CamperJerryRBScript:
	talkaftercancel
	loadfont
	writetext CamperJerryRBAfterText
	waitbutton
	closetext
	end

PewterGymRB_GymGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_BROCK_RB
	iffalse .NotChallengedYet
	writetext PewterGymRB_GymGuyWinText
	waitbutton
	closetext
	end

.NotChallengedYet
	writetext PewterGymRB_GymGuyText
	yesorno
	iffalse .no
	writetext PewterGymRB_GymGuyYesText
	jump .ok
.no
	writetext PewterGymRB_GymGuyNoText
.ok
	buttonsound
	writetext PewterGymRB_AdviceText
	waitbutton
	closetext
	end

PewterGymRB_StatueScript:
	trainertotext BROCK_RB, 1, $1
	checkflag ENGINE_BOULDERBADGE
	iftrue .HaveBadge
	jumpstd gymstatue1

.HaveBadge:
	jumpstd gymstatue2

PewterGymRB_BrockIntroText:
	text "Io sono Brock!"
	line "Sono il capopale-"
	cont "stra di Plumbeo-"
	cont "poli!"

	para "Mi affido a una"
	line "difesa granitica"
	cont "e alla forza della"
	cont "determinazione!"

	para "Ecco perché i miei"
	line "#mon sono tutti"
	cont "di tipo roccia!"

	para "Vuoi ancora sfi-"
	line "darmi?"

	para "Bene allora! Ti"
	line "mostrerò di cosa"
	cont "sono fatto!"
	done

PewterGymRB_BrockLostText:

	text "Brock: Ti ho sot-"
	line "tovalutato."

	para "Come prova della"
	line "tua vittoria, ti"
	cont "prego di accettare"
	cont "questa Medaglia"
	cont "Sasso!"
	done

PewterGymRB_GotBadgeText:
	text "<PLAYER> riceve la"
	line "Medaglia Sasso!"
	done

PewterGymRB_BrockCongratsText:

	text "Brock: <PLAY_G>,"
	line "grazie. Mi sono"

	para "davvero divertito"
	line "a lottare con te,"
	cont "anche se sono un"
	cont "po' deluso di me"
	cont "stesso."

	para "La Medaglia Sasso"
	line "renderà i tuoi"

	para "#mon ancora più"
	line "forti."

	para "Ecco, prendi anche"
	line "questa."
	done

PewterGymRB_BrockAfterText:
	text "Nel mondo ci sono"
	line "allenatori di"
	cont "tutti i tipi!"

	para "E tu sembri essere"
	line "un allenatore di"
	cont "#mon in gamba!"

	para "Vai nella palestra"
	line "di Celestopoli e"
	cont "metti alla prova"
	cont "le tue abilità!"
	done

PewterGymRB_TMText:
	text "Un'MT contiene"
	line "una tecnica da"
	para "insegnare a un"
	line "#mon!"

	para "Inoltre puoi usare"
	line "un'MT quante volte"

	para "vuoi, non finirà"
	line "mai!"

	para "L'MT37 contiene"
	line "Terrempesta!"

	para "Scatena una tempe-"
	line "sta di sabbia che"
	cont "danneggia i #-"
	cont "mon in campo per"
	cont "5 turni."

	para "Però alcuni #-"
	line "mon ne sono immu-"
	cont "ni, quindi usala"
	cont "con cognizione."
	done


CamperJerryRBSeenText:
	text "Alto là, piccolo!"

	para "Sei ancora lontano"
	line "anni luce da"
	cont "Brock!"
	done

CamperJerryRBBeatenText:
	text "Giusto!"

	para "Gli anni luce"
	line "non indicano il"
	cont "tempo, ma la"
	cont "distanza!"
	done

CamperJerryRBAfterText:
	text "Sei forte, ma non"
	line "quanto Brock!"
	done

PewterGymRB_GymGuyText:
	text "Ehi, tu! Posso"
	line "darti una mano per"
	cont "diventare un abile"
	cont "campione di #-"
	cont "mon!"

	para "Non sono un alle-"
	line "natore, ma posso"
	cont "dirti come vince-"
	cont "re!"
	done

PewterGymRB_GymGuyYesText:
	text "Bene! Iniziamo!"
	done

PewterGymRB_AdviceText:
	text "Il primo #mon"
	line "della squadra é"
	para "quello che schie-"
	line "rerai subito all'"
	cont "inizio di una"
	cont "lotta!"

	para "Cambiando l'ordine"
	line "dei #mon, le"
	para "lotte risulteranno"
	line "più facili!"
	done

PewterGymRB_GymGuyNoText:
	text "È un servizio"
	line "gratuito!"
	cont "Sono consigli di"
	cont "chi se ne intende!"
	done

PewterGymRB_GymGuyWinText:
	text "Come pensavo!"
	line "Hai la stoffa del"
	cont "del campione!"

	para "Il modo in cui"
	line "attaccavi era da-"
	para "vero d'ispirazio-"
	line "ne. Sul serio."
	done

PewterGymRB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 13, 4, 2, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def 13, 5, 2, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 11, 2, $0, PewterGymRB_StatueScript
	signpost 11, 7, $0, PewterGymRB_StatueScript

	; people-events
	db 3
	person_event SPRITE_BROCK, 5, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PewterGymRB_BrockScript, -1
	person_event SPRITE_YOUNGSTER, 11, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerCamperJerryRB, -1
	person_event SPRITE_GYM_GUY, 15, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 1, PewterGymRB_GymGuyScript, -1

