KrissHouse1F_MapScriptHeader: ; 0x7a4cc
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 0
; 0x7a4d6
.Trigger0
	priorityjump MomElatedToSeeYouAlive
	end

.Trigger1
	end

MomElatedToSeeYouAlive:
	; put script here
	spriteface $2, DOWN
	loademote $0, $2, 15
	pause 15
	applymovement $2, NBT_MomApproaches
	loadfont
	writetext MomText1_Johto
	buttonsound
	stringtotext .phonecardname, $1
	scall .jumpstdRecvItem
	dotrigger 1
	setevent EVENT_MOM_POSITION_1
	clearevent EVENT_MOM_POSITION_2
	setflag ENGINE_PHONE_CARD
	domaptrigger GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN, 2
	addcellnum $1 ; PHONE_MOM
	writetext MomText4_Johto
	yesorno
	iffalse .declined
	writetext MomText5
	buttonsound
	jump .finish

.declined
	writetext MomText6
	buttonsound
.finish
	writetext MomText7
	waitbutton
	closetext
	spriteface $7, LEFT
	spriteface $0, RIGHT
	loadfont
	writetext NBTLadyText_KrisHouse1F
	waitbutton
	closetext
	spriteface $7, UP
	pause 30
	spriteface $7, DOWN
	pause 5
	disappear $7
	playsound SFX_EXIT_BUILDING
	waitsfx
	pause 20
	spriteface $0, UP
	loadfont
	writetext MomText8
	waitbutton
	closetext
	special RestartMapMusic
	applymovement $2, ResetMomKrissHouse1F
	end

.jumpstdRecvItem
	jumpstd receiveitem

.phonecardname
	db "la Phone Card@"

MomScript_0x7a582: ; 0x7a582
	faceplayer
	loadfont
	checkevent EVENT_SPOKE_TO_MOM_AFTER_DELIVERING_MYSTERY_EGG
	iftrue UnknownScript_0x7a5af
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue UnknownScript_0x7a5b8
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x7a5b5
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue UnknownScript_0x7a5a9
	writetext UnknownText_0x7a8b5
	waitbutton
	closetext
	end
; 0x7a5a9

UnknownScript_0x7a5a9: ; 0x7a5a9
	writetext UnknownText_0x7a8e5
	waitbutton
	closetext
	end
; 0x7a5af

UnknownScript_0x7a5af: ; 0x7a5af
	writetext UnknownText_0x7a957
	waitbutton
	closetext
	end
; 0x7a5b5

UnknownScript_0x7a5b5: ; 0x7a5b5
	setevent EVENT_SPOKE_TO_MOM_AFTER_DELIVERING_MYSTERY_EGG
UnknownScript_0x7a5b8: ; 0x7a5b8
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special Function16218
	waitbutton
	closetext
	end
; 0x7a5c1

PokefanFScript_0x7a5c1: ; 0x7a5c1
	faceplayer
	loadfont
	checkmorn
	iftrue UnknownScript_0x7a5d2
	checkday
	iftrue UnknownScript_0x7a5d9
	checknite
	iftrue UnknownScript_0x7a5e0
UnknownScript_0x7a5d2: ; 0x7a5d2
	writetext UnknownText_0x7a97d
	buttonsound
	jump UnknownScript_0x7a5e7
; 0x7a5d9

UnknownScript_0x7a5d9: ; 0x7a5d9
	writetext UnknownText_0x7a99c
	buttonsound
	jump UnknownScript_0x7a5e7
; 0x7a5e0

UnknownScript_0x7a5e0: ; 0x7a5e0
	writetext UnknownText_0x7a9b4
	buttonsound
	jump UnknownScript_0x7a5e7
; 0x7a5e7

UnknownScript_0x7a5e7: ; 0x7a5e7
	writetext UnknownText_0x7a9d3
	waitbutton
	closetext
	spriteface $6, $3
	end
; 0x7a5f0

MapKrissHouse1FSignpost3Script: ; 0x7a5f0
	jumptext UnknownText_0x7aad0
; 0x7a5f3

MapKrissHouse1FSignpost0Script: ; 0x7a5f3
	jumptext UnknownText_0x7aa3a
; 0x7a5f6

MapKrissHouse1FSignpost1Script: ; 0x7a5f6
	jumptext UnknownText_0x7aa64
; 0x7a5f9

MapKrissHouse1FSignpost2Script: ; 0x7a5f9
	jumptext UnknownText_0x7aa91
; 0x7a5fc

NBT_MomApproaches:
	slow_step_down
	step_sleep 20
	step_down
	big_step_left
	turn_head_down
	step_end

ResetMomKrissHouse1F:
	step_up
	step_right
	step_up
	turn_head_left
	step_end

UnknownText_0x7a8b5: ; 0x7a8b5
	text "Il professor Elm"
	line "ti sta aspettando."

	para "Vai, su!"
	done
; 0x7a8e5

UnknownText_0x7a8e5: ; 0x7a8e5
	text "Allora, qual é l'"
	line "incarico di Elm?"

	para "<...>"

	para "Non sembra per"
	line "niente facile."

	para "Ma dovresti andare"
	line "fiero che delle"
	cont "persone si appog-"
	cont "giano su di te."
	done
; 0x7a957

UnknownText_0x7a957: ; 0x7a957
	text "<PLAYER>, dai!"

	para "Conto su di te!"
	done
; 0x7a97d

UnknownText_0x7a97d: ; 0x7a97d
	text "Buongiorno,"
	line "<PLAY_G>!"

	para "Sono venuta a"
	line "fare una visita!"
	done
; 0x7a99c

UnknownText_0x7a99c: ; 0x7a99c
	text "Ciao, <PLAY_G>!"

	para "Sono venuta a"
	line "fare una visita!"
	done
; 0x7a9b4

UnknownText_0x7a9b4: ; 0x7a9b4
	text "Buonasera,"
	line "<PLAY_G>!"

	para "Sono venuta a"
	line "fare una visita!"
	done
; 0x7a9d3

UnknownText_0x7a9d3: ; 0x7a9d3
	text "<PLAY_G>, hai"
	line "sentito?"

	para "Mia figlia é dav-"
	line "vero decisa di"

	para "diventare l'assi-"
	line "stente di Elm."

	para "Adora con tutta se"
	line "stessa i #mon!"
	done
; 0x7aa3a

UnknownText_0x7aa3a: ; 0x7aa3a
	text "La specialità di"
	line "mamma!"

	para "L'<``>Isola Cannella"
	line "Burger<''>!"
	done
; 0x7aa64

UnknownText_0x7aa64: ; 0x7aa64
	text "Il lavandino é"
	line "immacolato. Alla"
	cont "mamma piace molto"
	cont "tenerlo pulito."
	done
; 0x7aa91

UnknownText_0x7aa91: ; 0x7aa91
	text "Vediamo che c'é"
	line "in frigo<...>"

	para "Dell'Acqua Fresca"
	line "e una buona Limo-"
	cont "nata!"
	done
; 0x7aad0

UnknownText_0x7aad0: ; 0x7aad0
	text "C'é un film in TV:"
	line "Le stelle macchia-"

	para "no il cielo quando"
	line "due ragazzi parto-"
	cont "no su di un treno<...>"

	para "Meglio che vada"
	line "anch'io!"
	done
; 0x7ab31

MomText1_Johto:
	text "<PLAY_G>? Sei vera-"
	line "mente tu, amore?"

	para "Per tutto questo"
	line "tempo ho creduto"
	cont "che<...>"

	para "Non importa."
	line "L'importante é che"
	cont "ora tu sia qui al"
	cont "sicuro."

	para "Oh, <PLAY_G><...>"

	para "Ero così in pena"
	line "per te!"

	para "Quando ho sentito"
	line "la notizia<...>"

	para "Non spaventarmi"
	line "mai più in questo"
	cont "modo!"

	para "Avrei dovuto"
	line "installare questo"
	cont "nel tuo #Gear"
	cont "fin da subito!"
	done

MomText4_Johto:
	text "Ho già registrato"
	line "il mio numero."

	para "Per favore, dai"
	line "notizie di te ogni"
	cont "tanto."
    cont "Va bene, amore?"

	para "Non augurerei mai"
	line "a nessuno di stare"
	cont "così come sono"
	cont "stata fino ad ora."

	para "Comunque, sai come"
	line "usare il telefono?"
	done
; 0x7a7cb

MomText5: ; 0x7a7cb
	text "Devi semplicemente"
	line "accendere il #-"

	para "Gear e selezionare"
	line "l'icona del tele-"
	cont "fono."
	done
; 0x7a807

MomText6: ; 0x7a807
	text "Ti leggo le"
	line "istruzioni."

	para "<``>Accendi il #-"
	line "Gear e seleziona"
	cont "l'icona del tele-"
	cont "fono.<''>"
	done
; 0x7a850

MomText7: ; 0x7a850
	text "I numeri di tele-"
	line "fono sono memoriz-"
	cont "zati all'interno"
	cont "del #Gear."

	para "Ti basta selezio-"
	line "nare il nome di"
	cont "chi vuoi chiamare."

	para "Comodo, no?"

	para $56, " ", $56, " ", $56
	line "<PLAY_G><...>"

	para "Non dimenticare"
	line "mai che ti voglio"
	cont "bene."
	done

NBTLadyText_KrisHouse1F:
	text "Ora devo andare."

	para "È stato veramente"
	line "bello rivederti,"
	cont "<PLAY_G>!"
	done

MomText8:
	text "Oh! Quasi dimenti-"
	line "cavo!"

	para "Un collega del"
	line "professor Oak é un"
	cont "nostro vicino."

	para "Si chiama Elm. Il"
	line "suo laboratorio é"
	cont "proprio l'edificio"
	cont "qui affianco."

	para "Sarebbe ottimo se"
	line "andassi a presen-"
	cont "tarti."

	para "Lo avviserò io del"
	line "tuo arrivo."
	done

KrissHouse1F_MapEventHeader: ; 0x7ab31
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $6, 2, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $7, $7, 2, GROUP_NEW_BARK_TOWN, MAP_NEW_BARK_TOWN
	warp_def $0, $9, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; xy triggers
	db 0
	; xy_trigger 0, $4, $8, $0, UnknownScript_0x7a4d8, $0, $0
	; xy_trigger 0, $4, $9, $0, UnknownScript_0x7a4db, $0, $0

	; signposts
	db 4
	signpost 1, 0, $0, MapKrissHouse1FSignpost0Script
	signpost 1, 1, $0, MapKrissHouse1FSignpost1Script
	signpost 1, 2, $0, MapKrissHouse1FSignpost2Script
	signpost 1, 4, $0, MapKrissHouse1FSignpost3Script

	; people-events
	db 7
	person_event SPRITE_MOM, 8, 11, $8, 0, 0, -1, -1, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_1
	person_event SPRITE_MOM, 6, 6, $7, 0, 0, -1, 1, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_2
	person_event SPRITE_MOM, 8, 11, $8, 0, 0, -1, 2, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_2
	person_event SPRITE_MOM, 6, 4, $7, 0, 0, -1, 4, 0, 0, 0, MomScript_0x7a582, EVENT_MOM_POSITION_2
	person_event SPRITE_POKEFAN_F, 8, 8, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PokefanFScript_0x7a5c1, EVENT_NEIGHBOR_IN_YOUR_HOUSE_1F
	person_event SPRITE_TEACHER, 11, 11, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_MOM_POSITION_1
; 0x7abab

