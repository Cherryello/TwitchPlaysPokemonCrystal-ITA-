BillsHouseRB_MapScriptHeader:
	db 0
	db 0

BillsHouseRBComputerScript:
	checkevent EVENT_HELPED_BILL_RB
	iftrue .SystemStatusMonitor
	checkevent EVENT_000_STD
	iftrue .ActivateTeleporter
.SystemStatusMonitor
	jumptext _BillsHouseMonitorText

.ActivateTeleporter
	loadfont
	writetext _BillsHouseInitiatedText
	playmusic MUSIC_NONE
	playsound SFX_PUSH_BUTTON
	waitsfx
	closetext
	pause 15
	playsound SFX_BOOT_PC
	waitsfx
	pause 20
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	pause 10
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	pause 30
	playsound SFX_WARP_FROM
	waitsfx
	pause 20
	playsound SFX_WARP_TO
	waitsfx
	pause 30
	variablesprite SPRITE_EGK_BILL, SPRITE_BILL
	special Function14209
	moveperson $2, 1, 2
	appear $2
	playsound SFX_EXIT_BUILDING
	applymovement $2, Movement_BillExitsTeleporter
	waitsfx
	setevent EVENT_HELPED_BILL_RB
	playsound SFX_LEVEL_UP
	waitsfx
	special RestartMapMusic
	applymovement $2, Movement_BillWalksToPlayer
	spriteface 0, RIGHT
	applymovement $2, Movement_BillFinishesWalkToPlayer
	loadfont
BillsHouseRBBillScriptGiveTicket
	writetext _BillThankYouText
	buttonsound
	verbosegiveitem S_S_TICKET
	iffalse BillScriptRB_bag_full
	setevent EVENT_RECEIVED_S_S_TICKET_RB
	clearevent EVENT_CERULEAN_RB_ROCKET_1
	writetext _BillsHouseText_1e8cb
	waitbutton
BillScriptRB_bag_full:
	closetext
	applymovement $2, Movement_ResetBill
	moveperson $2, 6, 5
	end

BillsHouseRBBillScriptContinue:
	writetext _BillsHouseText_1e8cb
	waitbutton
	closetext
	end

BillsHouseRBBillScript:
	faceplayer
	loadfont
	checkevent EVENT_HELPED_BILL_RB
	iffalse .init_event
	checkevent EVENT_RECEIVED_S_S_TICKET_RB
	iftrue BillsHouseRBBillScriptContinue
	writetext _BillThankYouText
	buttonsound
	verbosegiveitem S_S_TICKET
	iffalse .bag_full
	setevent EVENT_RECEIVED_S_S_TICKET_RB
	clearevent EVENT_CERULEAN_RB_ROCKET_1
	writetext _BillsHouseText_1e8cb
	waitbutton
.bag_full
	closetext
	end


.init_event
	writetext _BillsHouseText_1e865
.loop
	yesorno
	iftrue .proceed
	writetext _BillsHouseText_1e86f
	jump .loop

.proceed
	writetext _BillsHouseText_1e86a
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal DOWN, .down
	spriteface $0, UP
	applymovement $2, Movement_BillGoesStraightIntoTeleporter
	disappear $2
	playsound SFX_ENTER_DOOR
	waitsfx
	end

.down
	spriteface $0, UP
	applymovement $2, Movement_BillMeandersAroundPlayerToEnterTeleporter
	disappear $2
	playsound SFX_ENTER_DOOR
	waitsfx
	end

Movement_BillGoesStraightIntoTeleporter:
	step_up
	step_up
	step_up
	step_end

Movement_BillMeandersAroundPlayerToEnterTeleporter:
	step_left
	step_up
	step_up
	step_right
	step_up
	step_end

Movement_BillWalksToPlayer:
	step_right
	step_down
	step_down
Movement_BillExitsTeleporter:
	step_down
	step_end

Movement_BillFinishesWalkToPlayer:
	step_left
	step_end

Movement_ResetBill:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

_BillsHouseText_1e865:
	text "Ohi! Io sono"
	line "un #mon!"
	cont "<...>Certo che non"
	cont "lo sono!"

	para "Chiamami Bill!"
	line "Sono un vero #-"
	cont "fanatico e sono"
	cont "anche in seria"
	cont "difficoltà!"
	
	para "Che c'é? Perché"
	line "mi guardi così?"

	para "Non ti sto piglia-"
	line "ndo in giro, ho"
	cont "fallito un esperi-"
	cont "mento e mi sono"
	cont "fuso a un #mon!"

	para "Embé, perché stai"
	line "lì senza far"
	cont "niente?"
	
	para "Dammi una mano!"
	done

_BillsHouseText_1e86a:
	text "Quando entro nel"
	line "teletrasporto, vai"
	cont "sul mio PC e avvia"
	cont "il Sistema di"
	cont "Separazione Cellu-"
	cont "lare!"
	done

_BillsHouseText_1e86f:
	text "No!? Eddai, non"
	line "puoi ignorare uno"
	cont "in una situazione"
	cont "simile!"

	para "Che dici, capo?"
	line "Allora? Okay?"
	cont "Benissimo!"
	done

_BillThankYouText:
	text "Bill: Ahah, sono"
	line "tornato!"
	para "Grazie, amico!"
	line "Te ne devo una!"

	para "Sei venuto fin"
	line "qui per vedere la"
	cont "mia collezione di"
	cont "#mon, giusto?"
	para "Ah, no?"
	line "Che peccato<...>"

	para "Devo ringraziarti"
	line "in qualche modo<...>"
	cont "Oh, forse un modo"
	cont "c'é."
	done

_BillsHouseText_1e8cb:
	text "Questa nave da"
	line "crociera, la"
	cont "M/N Anna, parte"
	cont "ad Aranciopoli."
	cont "E a bordo ci sono"
	cont "un sacco di alle-"
	cont "tori!"

	para "Sono stato invita-"
	line "to, ma le feste"
	cont "non mi sono mai"
	cont "piaciute. Perché"
	cont "non vai tu al mio"
	cont "posto?"
	done

_BillsHouseText_1e8da:
	text "Bill: Ehi, amico,"
	line "guarda un po' che"
	cont "#mon rari ho"
	cont "nel mio PC!"
	done

_BillsHouseMonitorText:
	text "Il programma del"
	line "Teletrasporto é"
	cont "avviato sul"
	cont "computer."
	done

_BillsHouseInitiatedText:
	text "<PLAYER> avvia il"
	line "Sistema di Separa-"
	cont "zione Cellulare!"
	done

BillsHouseRB_MapEventHeader:
	db 0, 0
	db 2
	warp_def 7, 2, 1, GROUP_ROUTE_25_RB, MAP_ROUTE_25_RB
	warp_def 7, 3, 1, GROUP_ROUTE_25_RB, MAP_ROUTE_25_RB

	db 0

	db 1
	signpost 5, 0, $1, BillsHouseRBComputerScript

	db 1
	person_event SPRITE_EGK_BILL, 9, 10, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, BillsHouseRBBillScript, EVENT_000_STD
