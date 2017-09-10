VioletGym_MapScriptHeader: ; 0x683c0
	; trigger count
	db 0

	; callback count
	db 0
; 0x683c2

FalknerScript_0x683c2: ; 0x683c2
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue FalknerPostgameRematchScript
	checkevent EVENT_FALKNER_REMATCH
	iftrue FalknerAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue FalknerRematchScript
	checkevent EVENT_BEAT_FALKNER
	iftrue UnknownScript_0x683ec
	writetext UnknownText_0x68473
	waitbutton
	closetext
	winlosstext UnknownText_0x6854a, $0000
	loadtrainer FALKNER, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_FALKNER
	loadfont
	writetext UnknownText_0x685af
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x68418
UnknownScript_0x683ec: ; 0x683ec
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue UnknownScript_0x68412
	setevent EVENT_BEAT_BIRD_KEEPER_ROD
	setevent EVENT_BEAT_BIRD_KEEPER_ABE
	domaptrigger GROUP_ELMS_LAB, MAP_ELMS_LAB, $2
	specialphonecall $3
	writetext UnknownText_0x685c8
	buttonsound
	verbosegiveitem TM_SKY_ATTACK, 1
	iffalse UnknownScript_0x68416
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext UnknownText_0x68648
	waitbutton
	closetext
	end
; 0x68412

FalknerRematchScript:
	checkevent EVENT_FOUGHT_ARTICUNO
	iffalse FalknerReject
	checkevent EVENT_FOUGHT_ZAPDOS
	iffalse FalknerReject
	checkevent EVENT_FOUGHT_MOLTRES
	iffalse FalknerReject
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	writetext FalknerRematchTextBefore
	waitbutton
	closetext
	winlosstext FalknerRematchBeatenText, $0000
	loadtrainer FALKNER, 2
	startbattle
	returnafterbattle
	setevent EVENT_FALKNER_REMATCH
	loadfont
	
.Female
	writetext FalknerRematchTextBeforeF
	waitbutton
	closetext
	winlosstext FalknerRematchBeatenText, $0000
	loadtrainer FALKNER, 2
	startbattle
	returnafterbattle
	setevent EVENT_FALKNER_REMATCH
	loadfont

FalknerAfterRematch:
	writetext FalknerAfterRematchText
	waitbutton
	closetext
	end

FalknerReject:
	writetext FalknerRejectText
	waitbutton
	closetext
	end

FalknerPostgameRematchScript:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female4
    writetext FalknerPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer FALKNER, 2
    winlosstext FalknerPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext FalknerPostgameAfterText
    waitbutton
.return
    closetext
    end
	
.Female4
    writetext FalknerPostgameRematchTextF
    yesorno
    iffalse .return
    closetext
    loadtrainer FALKNER, 2
    winlosstext FalknerPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext FalknerPostgameAfterText
    waitbutton
	
FalknerRejectText:
	text "Articuno<...>"

	para "Zapdos<...>"

	para "Moltres<...>"

	para "Taming these"
	line "legendary bird"

	para "#MON has been"
	line "the ultimate test"

	para "of power in my"
	line "family for gene-"
	cont "rations."

	para "You're on a quest"
	line "to fill your #-"
	cont "DEX, right?"

	para "Then you should"
	line "take on this chal-"
	cont "lenge yourself."

	para "Go find the three"
	line "legendary birds"

	para "and catch them"
	line "where they roost!"

	para "Once you have done"
	line "that, come back"
	cont "here."

	para "Come back and show"
	line "me how high you"
	cont "can soar!"
	done

UnknownScript_0x68412: ; 0x68412
	writetext UnknownText_0x68735
	waitbutton
UnknownScript_0x68416: ; 0x68416
	closetext
	end
; 0x68418

UnknownScript_0x68418: ; 0x68418
	if_equal $7, UnknownScript_0x68424
	if_equal $6, UnknownScript_0x68421
	end
; 0x68421

UnknownScript_0x68421: ; 0x68421
	jumpstd goldenrodrockets
; 0x68424

UnknownScript_0x68424: ; 0x68424
	jumpstd radiotowerrockets
; 0x68427

TrainerBird_keeperRod: ; 0x68427
	; bit/flag number
	dw $3fb

	; trainer group && trainer id
	db BIRD_KEEPER, ROD

	; text when seen
	dw Bird_keeperRodSeenText

	; text when trainer beaten
	dw Bird_keeperRodBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperRodScript
; 0x68433

Bird_keeperRodScript: ; 0x68433
	talkaftercancel
	loadfont
	writetext UnknownText_0x68837
	waitbutton
	closetext
	end
; 0x6843b

TrainerBird_keeperAbe: ; 0x6843b
	; bit/flag number
	dw $3fc

	; trainer group && trainer id
	db BIRD_KEEPER, ABE

	; text when seen
	dw Bird_keeperAbeSeenText

	; text when trainer beaten
	dw Bird_keeperAbeBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bird_keeperAbeScript
; 0x68447

Bird_keeperAbeScript: ; 0x68447
	talkaftercancel
	loadfont
	writetext UnknownText_0x688c7
	waitbutton
	closetext
	end
; 0x6844f

VioletGymGuyScript: ; 0x6844f
	faceplayer
	loadfont
	checkevent EVENT_BEAT_FALKNER
	iftrue .VioletGymGuyWinScript
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female2
	writetext VioletGymGuyText
	waitbutton
	closetext
	end

.Female2
    writetext VioletGymGuyTextF
	waitbutton
	closetext
	end
	
.VioletGymGuyWinScript
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female3
	writetext VioletGymGuyWinText
	waitbutton
	closetext
	end
; 0x68463

.Female3
	writetext VioletGymGuyWinTextF
	waitbutton
	closetext
	end

MapVioletGymSignpost1Script: ; 0x68463
	checkflag ENGINE_ZEPHYRBADGE
	iftrue UnknownScript_0x6846c
	jumpstd gymstatue1
; 0x6846c

UnknownScript_0x6846c: ; 0x6846c
	trainertotext FALKNER, 1, $1
	jumpstd gymstatue2
; 0x68473

UnknownText_0x68473: ; 0x68473
	text "Io sono Valerio,"
	line "il capopalestra di"
	cont "Violapoli!"

	para "Dicono che i"
	line "#mon uccello"

	para "possano essere"
	line "neutralizzati solo"
	cont "con una piccola"
	cont "scarica elettrica<...>"

	para "Non permetterò un"
	line "tale affronto ai"
	cont "#mon uccello!"

	para "Ti mostrerò la"
	line "vera potenza dei"

	para "magnifici #mon"
	line "uccello!"
	done
; 0x6854a

FalknerRematchTextBefore:
	text "Bentornato."

	para "Anni or sono, mio"
	line "padre domò i tre"
	
	para "#mon uccello"
	line "leggendari."

	para "Tu, che sei arri-"
	line "vato sino a questo"
	cont "livello, ti stagli"
	para "dinanzi a me, il"
	line "suo erede."

	para "Permetti che ti"
	line "mostri la vera"
	cont "potenza della mia"
	cont "famiglia!"
	done
	
FalknerRematchTextBeforeF:
	text "Bentornata."
	
	para "Anni or sono, mio"
	line "padre domò i tre"
	
	para "#mon uccello"
	line "leggendari."

	para "Tu, che sei arri-"
	line "vata sino a questo"
	cont "livello, ti stagli"
	para "dinanzi a me, il"
	line "suo erede."

	para "Permetti che ti"
	line "mostri la vera"
	cont "potenza della mia"
	cont "famiglia!"
	done

FalknerRematchBeatenText:
	text "<...>No! Nemmeno gli"
	line "uccelli leggenda-"
	cont "ri<...>"
	done

FalknerAfterRematchText:
	text "Una sconfitta é"
	line "una sconfitta."

	para "Sei forte."

	para "Mi allenerò ancora"
	line "con i miei #mon"
	para "per diventare il"
	line "miglior Avicoltore"
	cont "di sempre!"
    done

FalknerPostgameRematchText:
	text "Rieccoti."

	para "Ti sei allenato,"
	line "si vede<...>"

	para "Sei qui per sfi-"
	line "darmi di nuovo,"
	cont "non é vero?"
    done
	
FalknerPostgameRematchTextF:
	text "Rieccoti."

	para "Ti sei allenata,"
	line "si vede<...>"

	para "Sei qui per sfi-"
	line "darmi di nuovo,"
	cont "non é vero?"
    done
	
FalknerPostgameBeatenText:
	text "I miei #mon"
	line "uccello<...>"
	
	para "Non siamo ancora"
	line "abbastanza forti."
	done
	
FalknerPostgameAfterText:

	text "La tua forza é"
	line "incredibile!"

	para "Non dovrebbe esse-"
	line "re una sorpresa il"
	
	para "fatto che abbia"
	line "domato delle crea-"
	cont "ture leggendarie<...>"

	done

UnknownText_0x6854a: ; 0x6854a
	text "<...>No! Gli amati"
	line "uccelli di mio"
	cont "padre<...>"

	para "Bene. Tieni."

	para "È una medaglia"
	line "ufficiale della"
	cont "Lega #mon, la"
	cont "medaglia Zefiro."
	done
; 0x685af

UnknownText_0x685af: ; 0x685af
	text "<PLAYER> riceve la"
	line "medaglia Zefiro."
	done
; 0x685c8

UnknownText_0x685c8: ; 0x685c8
	text "La medaglia Zefiro"
	line "aumenta la potenza"
	cont "d'attacco dei tuoi"
	cont "#mon."

	para "Inoltre consente"
	line "anche ai tuoi"

	para "#mon di usare"
	line "Volo in qualsiasi"
	cont "momento."

	para "Ecco, prendi anche"
	line "questa."
	done
; 0x68648

UnknownText_0x68648: ; 0x68648
	text "L'MT31 contiene"
	line "Aeroattacco."

	para "È la mossa volante"
	line "più potente!"

	para "Carica prima una"
	line "enorme potenza,"

	para "per poi scatenarla"
	line "tutta sul nemico."

	para "Utilizzala per"
	line "domare i cieli!"
	done
; 0x68735

UnknownText_0x68735: ; 0x68735
	text "Vi sono palestre"
	line "#mon anche in"
	cont "altri paesi e"
	cont "città."

	para "Sarebbero un'otti-"
	line "ma occasione per"
	cont "provare le tue"
	cont "abilità."

	para "Io mi allenerò"
	line "ancora più dura-"
	cont "mente per diventa-"

	para "re il migliore"
	line "allenatore di"
	cont "#mon uccello!"
	done
; 0x687cd

Bird_keeperRodSeenText: ; 0x687cd
	text "Sono nato e"
	line "cresciuto nella"
	cont "regione di Kanto!"

	para "Sono volato a"
	line "Johto solcando i"
	cont "cieli con il mio"
	cont "#mon uccello!"

	para "Credi di poter vo-"
	line "lare più in alto"
	cont "di noi?"
	done
; 0x6882f

Bird_keeperRodBeatenText: ; 0x6882f
	text "Gaaah!"
	done
; 0x68837

UnknownText_0x68837: ; 0x68837
	text "Io volo sulle ali"
	line "del mio Fearow!"
	done
; 0x6887f

Bird_keeperAbeSeenText: ; 0x6887f
	text "I nostri #mon"
	line "vengono tutti da"
	cont "Kanto."

	para "Sono di gran lunga"
	line "superiori ai #-"
	cont "mon volanti loca-"
	cont "li."
	done
; 0x688b3

Bird_keeperAbeBeatenText: ; 0x688b3
	text "Non può essere"
	line "vero!"
	done
; 0x688c7

UnknownText_0x688c7: ; 0x688c7
	text "A Kanto si trovano"
	line "molti più #mon"
	cont "uccello!"

	para "Da queste parti,"
	line "invece, si trovano"
	cont "solo Hoothoot<...>"
	done
; 0x688f9

VioletGymGuyText: ; 0x688f9
	text "Ehi, campione in"
	line "erba!"

	para "Vuoi sfidare le"
	line "palestre di Johto?"

	para "I #mon qui sono"
	line "più forti di quel-"
	cont "li che trovavi a"
	cont "Kanto!"

	para "Valerio, il capo-"
	line "palestra, é spe-"
	cont "cializzato in"
	cont "#mon di tipo"
	cont "volante."

	para "Se hai un team di"
	line "soli #mon erba,"

	para "faresti meglio a"
	line "fare attenzione!"
	done
; 0x689c8

VioletGymGuyTextF: ; 0x688f9
	text "Ehi, campionessa"
	line "in erba!"

	para "Vuoi sfidare le"
	line "palestre di Johto?"

	para "I #mon qui sono"
	line "più forti di quel-"
	cont "li che trovavi a"
	cont "Kanto!"

	para "Valerio, il capo-"
	line "palestra, é spe-"
	cont "cializzato in"
	cont "#mon di tipo"
	cont "volante."

	para "Se hai un team di"
	line "soli #mon erba,"

	para "faresti meglio a"
	line "fare attenzione!"
	done

VioletGymGuyWinText: ; 0x689c8
	text "Bella lotta!"
	line "Continua così, e"

	para "diventerai campio-"
	line "ne in men che non"
	cont "si dica!"
	done
; 0x68a0c

VioletGymGuyWinTextF: ; 0x689c8
	text "Bella lotta!"
	line "Continua così, e"

	para "diventerai campio-"
	line "nessa in men che"
	cont "non si dica!"
	done

VioletGym_MapEventHeader: ; 0x68a0c
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $4, 2, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $f, $5, 2, GROUP_VIOLET_CITY, MAP_VIOLET_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 3, $0, MapVioletGymSignpost1Script
	signpost 13, 6, $0, MapVioletGymSignpost1Script

	; people-events
	db 4
	person_event SPRITE_FALKNER, 5, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, FalknerScript_0x683c2, -1
	person_event SPRITE_YOUNGSTER, 10, 11, $8, 0, 2, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperRod, -1
	person_event SPRITE_YOUNGSTER, 14, 6, $9, 0, 2, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerBird_keeperAbe, -1
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, VioletGymGuyScript, -1
; 0x68a5a

