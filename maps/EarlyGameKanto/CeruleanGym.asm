CeruleanGymRB_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

CeruleanGymRB_MistyScript:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM_RAIN_DANCE
	iftrue .got_tm
	checkflag ENGINE_CASCADEBADGE
	iftrue .have_badge
	writetext CeruleanGymRB_MistyIntroText
	waitbutton
	closetext
	winlosstext CeruleanGymRB_MistyLostText, $0000
	loadtrainer MISTY_RB, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_MISTY_RB
	setevent EVENT_BEAT_SWIMMERM_PARKER_RB
	setevent EVENT_BEAT_SWIMMERF_DIANA_RB
	loadfont
	writetext CeruleanGymRB_GotBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.have_badge:
	writetext CeruleanGymRB_MistyCongratsText
	waitbutton
.got_tm
	scall .tm
	waitbutton
	closetext
	end

.tm:
	givetm TM_RAIN_DANCE, EVENT_GOT_TM_RAIN_DANCE, .already_had_it, .bag_full
	writetext CeruleanGymRB_TMText
	end

.already_had_it:
	writetext CeruleanGymRB_TMText
	end

.bag_full:
	writetext CeruleanGymRB_NeedTMText
	end

TrainerSwimmerfDianaRB:
	trainer EVENT_BEAT_SWIMMERF_DIANA_RB, SWIMMERF, DIANA_RB, CeruleanGymRB_BattleText1, CeruleanGymRB_EndBattleText1, NULL, .After

.After:
	talkaftercancel
	loadfont
	writetext CeruleanGymRB_AfterBattleText1
	waitbutton
	closetext
	end

TrainerSwimmermParkerRB:
	trainer EVENT_BEAT_SWIMMERM_PARKER_RB, SWIMMERM, PARKER_RB, CeruleanGymRB_BattleText2, CeruleanGymRB_EndBattleText2, NULL, .After

.After:
	talkaftercancel
	loadfont
	writetext CeruleanGymRB_AfterBattleText2
	waitbutton
	closetext
	end

CeruleanGymRB_GymGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_MISTY_RB
	iftrue .Won
	writetext CeruleanGymRB_GymGuyText
	waitbutton
	closetext
	end

.Won
	writetext CeruleanGymRB_GymGuyWinText
	waitbutton
	closetext
	end

CeruleanGymRB_StatueScript:
	trainertotext MISTY_RB, 1, $1
	checkflag ENGINE_CASCADEBADGE
	iftrue .HaveBadge
	jumpstd gymstatue1

.HaveBadge:
	jumpstd gymstatue2

CeruleanGymRB_MistyIntroText:
	text "Oh, una faccia"
	line "nuova!"

	para "Gli allenatori che"
	line "aspirano alla vit-"
	para "toria hanno biso-"
	line "gno di una strate-"
	cont "gia!"

	para "A cosa pensi quan-"
	line "do catturi dei"
	cont "nuovi #mon?"

	para "La mia strategia é"
	line "pura offensiva con"
	para "#mon d'acqua!"
	done

CeruleanGymRB_MistyLostText:
	text "Wow!"
	line "Strabiliante!"

	para "Bene!"

	para "Puoi avere questa"
	line "Medaglia Cascata"
	cont "come prova della"
	cont "mia sconfitta!"
	done

CeruleanGymRB_GotBadgeText:
	text "<PLAYER> riceve la"
	line "Medaglia Cascata."
	done

CeruleanGymRB_MistyCongratsText:
	text "Con la Medaglia"
	line "Cascata, ti obbe-"
	cont "diranno #mon fi-"
	cont "no al livello 30!"

	para "Include anche i"
	line "#mon ottenuti"
	cont "tramite scambi!"

	para "Inoltre, ora puoi"
	line "usare Taglio anche"
	cont "fuori dalla lotta!"

	para "Puoi tagliare via"
	line "piccoli alberi in"
	cont "modo da poter"
	cont "andare in luoghi"
	cont "inesplorati!"

	para "Ed eccoti anche la"
	line "mia MT preferita!"
	done

CeruleanGymRB_TMText:
	text "L'MT18 insegna"
	line "Pioggiadanza!"

	para "Usala sui #mon"
	line "di tipo Acqua!"
	done

CeruleanGymRB_NeedTMText:
	text "Meglio che tu fac-"
	line "cia un po' di spa-"
	cont "zio per questa MT!"
	done

CeruleanGymRB_BattleText1:
	text "Sono abbastanza"
	line "forte per sconfig-"
	cont "gerti!"

	para "Misty può attende-"
	line "re!"
	done

CeruleanGymRB_EndBattleText1:
	text "Sei decisamente"
	line "oltre per me!"
	done

CeruleanGymRB_AfterBattleText1:
	text "Devi misurarti con"
	line "molti allenatori"
	cont "per vedere quanto"
	cont "vali davvero."
	done

CeruleanGymRB_BattleText2:
	text "Splash!"

	para "Sono il primo!"
	line "Avanti!"
	done

CeruleanGymRB_EndBattleText2:
	text "Impossibile!"
	done

CeruleanGymRB_AfterBattleText2:
	text "Misty migliora"
	line "continuamente!"

	para "Non perderà certo"
	line "contro di te!"
	done

CeruleanGymRB_GymGuyText:
	text "Ehi! Campione in"
	line "erba!"

	para "Ecco il mio consi-"
	line "glio!"

	para "La capopalestra,"
	line "Misty, é specia-"
	cont "lizzata in #mon"
	cont "di tipo Acqua."

	para "Puoi assorbire"
	line "tutta la loro"
	cont "acqua con dei"
	cont "#mon Erba!"

	para "Altrimenti, usa"
	line "l'elettricità per"
	cont "shockarli!"
	done

CeruleanGymRB_GymGuyWinText:
	text "Hai battuto Misty!"
	line "Cosa ti avevo"
	cont "detto?"

	para "Tu e io insieme"
	line "facciamo un'accop-"
	cont "piata perfetta!"
	done


CeruleanGymRB_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def 15, 4, 4, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def 15, 5, 4, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 2, $0, CeruleanGymRB_StatueScript
	signpost 13, 6, $0, CeruleanGymRB_StatueScript

	; people-events
	db 4
	person_event SPRITE_MISTY, 7, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, CeruleanGymRB_MistyScript, -1
	person_event SPRITE_LASS, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 2, 3, TrainerSwimmerfDianaRB, -1
	person_event SPRITE_SWIMMER_GUY, 13, 12, $8, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 3, TrainerSwimmermParkerRB, -1
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CeruleanGymRB_GymGuyScript, -1

