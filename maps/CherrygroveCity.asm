CherrygroveCity_MapScriptHeader: ; 0x19c000
	; trigger count
	db 4

	; triggers
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0
	dw .Trigger3, 0

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x19c00f
; 0x19c00d

.Trigger0: ; 0x19c00d
	end
; 0x19c00e

.Trigger1: ; 0x19c00e
	end

.Trigger2:
	priorityjump Cherrygrove_WashedUpOnShore
	end

.Trigger3:
	end

Cherrygrove_WashedUpOnShore:
	disappear $2
	moveperson $2, 14, 6
	appear $2
	applymovement $2, Movement_GuideGentWalksUpToPlayerAfterShipwreck
	spriteface $0, UP
	loadfont
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	writetext Text_GuideGentExplainsWhatHappened
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow $2, $0
	applymovement $2, Movement_GuideGentTakesPlayerToPokecenter
	stopfollow
	pause 60
	spriteface $2, LEFT
	spriteface $0, RIGHT
	loadfont
	writetext Text_GuideGentForcesPlayerToHealParty
	waitbutton
	closetext
	special RestartMapMusic
	applymovement $2, Movement_GuideGentResetPosition
	dotrigger 3
	moveperson $2, 32, 6
	end

.Female
	writetext Text_GuideGentExplainsWhatHappenedF
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow $2, $0
	applymovement $2, Movement_GuideGentTakesPlayerToPokecenter
	stopfollow
	pause 60
	spriteface $2, LEFT
	spriteface $0, RIGHT
	loadfont
	writetext Text_GuideGentForcesPlayerToHealParty
	waitbutton
	closetext
	special RestartMapMusic
	applymovement $2, Movement_GuideGentResetPosition
	dotrigger 3
	moveperson $2, 32, 6
	end
	
UnknownScript_0x19c00f: ; 0x19c00f
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	return
; 0x19c013

GrampsScript_0x19c013: ; 0x19c013
	faceplayer
	loadfont
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .first_landed
	writetext UnknownText_0x19c1e3
	yesorno
	iffalse UnknownScript_0x19c0a4
	writetext UnknownText_0x19c26f
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow $2, $0
	applymovement $2, MovementData_0x19c195
	loadfont
	writetext UnknownText_0x19c285
	waitbutton
	closetext
	applymovement $2, MovementData_0x19c19b
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x19c304
	waitbutton
	closetext
	applymovement $2, MovementData_0x19c1a3
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x19c359
	waitbutton
	closetext
	applymovement $2, MovementData_0x19c1ac
	spriteface $0, $2
	loadfont
	writetext UnknownText_0x19c3a7
	waitbutton
	closetext
	applymovement $2, MovementData_0x19c1b6
	spriteface $0, $1
	pause 60
	spriteface $2, $2
	spriteface $0, $3
	loadfont
	writetext UnknownText_0x19c3ec
	buttonsound
	checkflag ENGINE_MAP_CARD
	iftrue .alreadyhavemapcard
	stringtotext .mapcardname, $1
	scall .UnknownScript_0x19c097
	setflag ENGINE_MAP_CARD
	writetext UnknownText_0x19c438
	buttonsound
	writetext UnknownText_0x19c451
	jump .finish
.alreadyhavemapcard
	writetext Text_AlreadyHaveMapCard
.finish
	waitbutton
	closetext
	stopfollow
	showemote $0, $2, 15
	pause 15
	loadfont
	writetext Text_GuideGentHasRunningShoes2
	buttonsound
	stringtotext .runningshoesname, $1
	scall .UnknownScript_0x19c097
	writetext Text_GuideGentHasRunningShoes3
	waitbutton
	closetext
	special RestartMapMusic
	spriteface $0, $1
	applymovement $2, MovementData_0x19c1cb
	playsound SFX_ENTER_DOOR
	disappear $2
	clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
	waitsfx
	end

.UnknownScript_0x19c097 ; 0x19c097
	jumpstd receiveitem
	end

.mapcardname ; 0x19c09b
	db "Map Card@"

.runningshoesname
	db "Scarpe da Corsa@"
; 0x19c0a4
.first_landed
	checkevent EVENT_HEALED_IN_CHERRYGROVE
	iffalse .healyourpokemon
	writetext GuideGentDirectsPlayerToNewBark
	waitbutton
	closetext
	dotrigger 0
	end

.healyourpokemon
	writetext Text_PleaseHealYourPokemon
	waitbutton
	closetext
	end

UnknownScript_0x19c0a4: ; 0x19c0a4
	writetext UnknownText_0x19c49f
	waitbutton
	closetext
	end
; 0x19c0aa

UnknownScript_0x19c0aa: ; 0x19c0aa
	moveperson $3, $27, $7
; 0x19c0ae

UnknownScript_0x19c0ae: ; 0x19c0ae
	spriteface $0, $3
	showemote $0, $0, 15
	special Functionc48f
	pause 15
	appear $3
	applymovement $3, MovementData_0x19c1ce
	spriteface $0, $3
	playmusic MUSIC_RIVAL_ENCOUNTER
	loadfont
	writetext UnknownText_0x19c4e2
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x19c0ee
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x19c104
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female2
	winlosstext UnknownText_0x19c57f, UnknownText_0x19c5e6
	setlasttalked $3
	loadtrainer RIVAL1, RIVAL1_3
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	iftrue UnknownScript_0x19c11a
	jump UnknownScript_0x19c126
; 0x19c0ee

.Female2
    winlosstext UnknownText_0x19c57fF, UnknownText_0x19c5e6
	setlasttalked $3
	loadtrainer RIVAL1, RIVAL1_3
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	iftrue UnknownScript_0x19c11a
	jump UnknownScript_0x19c126

UnknownScript_0x19c0ee: ; 0x19c0ee
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female3
	winlosstext UnknownText_0x19c57f, UnknownText_0x19c5e6
	setlasttalked $3
	loadtrainer RIVAL1, RIVAL1_1
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	iftrue UnknownScript_0x19c11a
	jump UnknownScript_0x19c126
	
.Female3
	winlosstext UnknownText_0x19c57fF, UnknownText_0x19c5e6
	setlasttalked $3
	loadtrainer RIVAL1, RIVAL1_1
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	iftrue UnknownScript_0x19c11a
	jump UnknownScript_0x19c126

; 0x19c104

UnknownScript_0x19c104: ; 0x19c104
    checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female4
	winlosstext UnknownText_0x19c57f, UnknownText_0x19c5e6
	setlasttalked $3
	loadtrainer RIVAL1, RIVAL1_2
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	iftrue UnknownScript_0x19c11a
	jump UnknownScript_0x19c126
; 0x19c11a

.Female4
	winlosstext UnknownText_0x19c57fF, UnknownText_0x19c5e6
	setlasttalked $3
	loadtrainer RIVAL1, RIVAL1_2
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmapmusic
	reloadmap
	iftrue UnknownScript_0x19c11a
	jump UnknownScript_0x19c126

UnknownScript_0x19c11a: ; 0x19c11a
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	loadfont
	writetext UnknownText_0x19c608
	waitbutton
	closetext
	jump UnknownScript_0x19c12f
; 0x19c126

UnknownScript_0x19c126: ; 0x19c126
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	loadfont
	writetext UnknownText_0x19c59e
	waitbutton
	closetext
UnknownScript_0x19c12f: ; 0x19c12f
	playsound SFX_TACKLE
	applymovement $0, MovementData_0x19c1d4
	spriteface $0, $2
	applymovement $3, MovementData_0x19c1da
	disappear $3
	dotrigger $0
	special HealParty
	playmapmusic
	end
; 0x19c146

TeacherScript_0x19c146: ; 0x19c146
	faceplayer
	loadfont
	checkflag ENGINE_MAP_CARD
	iftrue UnknownScript_0x19c154
	writetext UnknownText_0x19c650
	waitbutton
	closetext
	end
; 0x19c154

UnknownScript_0x19c154: ; 0x19c154
	writetext UnknownText_0x19c6a8
	waitbutton
	closetext
	end
; 0x19c15a

YoungsterScript_0x19c15a: ; 0x19c15a
	faceplayer
	loadfont
	checkflag ENGINE_POKEDEX
	iftrue UnknownScript_0x19c168
	writetext UnknownText_0x19c6d6
	waitbutton
	closetext
	end
; 0x19c168

UnknownScript_0x19c168: ; 0x19c168
	writetext UnknownText_0x19c701
	; special SpecialPokeSeer
	waitbutton
	closetext
	end
; 0x19c16e

FisherScript_0x19c16e: ; 0x19c16e
	faceplayer
	loadfont
	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	iftrue UnknownScript_0x19c183
	writetext UnknownText_0x19c766
	buttonsound
	verbosegiveitem MYSTIC_WATER, 1
	iffalse UnknownScript_0x19c187
	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
UnknownScript_0x19c183: ; 0x19c183
	writetext UnknownText_0x19c7c1
	waitbutton
UnknownScript_0x19c187: ; 0x19c187
	closetext
	end
; 0x19c189

MapCherrygroveCitySignpost0Script: ; 0x19c189
	jumptext UnknownText_0x19c7e0
; 0x19c18c

MapCherrygroveCitySignpost1Script: ; 0x19c18c
	jumptext UnknownText_0x19c815
; 0x19c18f

MapCherrygroveCitySignpost3Script: ; 0x19c18f
	jumpstd pokecentersign
; 0x19c192

MapCherrygroveCitySignpost2Script: ; 0x19c192
	jumpstd martsign
; 0x19c195
Cherrygrove_PleaseHealYourPokemon:
	spriteface $2, DOWN
	spriteface $0, UP
	loadfont
	checkevent EVENT_HEALED_IN_CHERRYGROVE
	iftrue .directtonewbark
	writetext Text_PleaseHealYourPokemon
	waitbutton
	closetext
	applymovement $0, Movement_PlayerPushedBackIntoCherrygrove
	end

.directtonewbark
	writetext GuideGentDirectsPlayerToNewBark
	waitbutton
	closetext
	dotrigger 0
	end

CherrygroveYoungsterScript1:
	jumptext CherrygroveYoungsterText1
CherrygroveYoungsterScript2:
	jumptext CherrygroveYoungsterText2

MovementData_0x19c195: ; 0x19c195
	step_left
	step_left
	step_up
	step_left
	turn_head_up
	step_end
; 0x19c19b

MovementData_0x19c19b: ; 0x19c19b
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_up
	step_end
; 0x19c1a3

MovementData_0x19c1a3: ; 0x19c1a3
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_up
	step_end
; 0x19c1ac

MovementData_0x19c1ac: ; 0x19c1ac
	step_left
	step_left
	step_left
	step_down
	step_left
	step_left
	step_left
	step_down
	turn_head_left
	step_end
; 0x19c1b6

MovementData_0x19c1b6: ; 0x19c1b6
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	turn_head_up
	step_end
; 0x19c1cb

MovementData_0x19c1cb: ; 0x19c1cb
	step_up
	step_up
	step_end
; 0x19c1ce

MovementData_0x19c1ce: ; 0x19c1ce
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end
; 0x19c1d4

MovementData_0x19c1d4: ; 0x19c1d4
	big_step_down
	turn_head_up
	step_end
; 0x19c1d7

MovementData_0x19c1d7: ; 0x19c1d7
	step_left
	turn_head_down
	step_end
; 0x19c1da

MovementData_0x19c1da: ; 0x19c1da
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	step_end
; 0x19c1e3

Movement_GuideGentWalksUpToPlayerAfterShipwreck:
	step_left
	step_left
	step_left
	step_left
	step_down
	step_down
	step_end

Movement_GuideGentTakesPlayerToPokecenter:
	step_up
	step_up
	step_right
	step_right
	step_right
	step_right
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_right
	turn_head_up
	step_end

Movement_GuideGentResetPosition:
	step_down
	step_down
	step_right
	step_right
	turn_head_down
	step_end

Movement_PlayerPushedBackIntoCherrygrove:
	step_left
	step_end

UnknownText_0x19c1e3: ; 0x19c1e3
	text "Ah, <PLAYER>, che"
	line "bello rivederti!"

	para "Già che sei qui,"
	line "posso mostrarti"
	cont "il paese?"
	done
; 0x19c26f

UnknownText_0x19c26f: ; 0x19c26f
	text "Bene allora!"
	line "Seguimi!"
	done
; 0x19c285

UnknownText_0x19c285: ; 0x19c285
	text "Questo é il nostro"
	line "Centro #mon."

	para "Già dovresti sape-"
	line "re di che si "
	cont "tratta."
	done
; 0x19c304

UnknownText_0x19c304: ; 0x19c304
	text "Ecco il nostro"
	line "#mon Market."

	para "È sempre ben ri-"
	line "fornito, quindi"
	cont "potrai comprare"
	cont "tutto ciò che ti"
	cont "serve prima di"
	cont "lasciare il paese."
	done
; 0x19c359

UnknownText_0x19c359: ; 0x19c359
	text "Il Percorso 30 é"
	line "lungo questa via."

	para "Troverai allenato-"
	line "ri pronti a far"

	para "combattere i loro"
	line "fidati #mon."
	done
; 0x19c3a7

UnknownText_0x19c3a7: ; 0x19c3a7
	text $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "Credo non sia"
	line "necessario mensio-"
	cont "nare questa parte."
	done
; 0x19c3ec

UnknownText_0x19c3ec: ; 0x19c3ec
	text "Eccola<...>"

	para "Questa é casa mia!"
	line "Grazie per la tua"
	cont "compagnia."

	para "Lascia che ti dia"
	line "un piccolo regalo."
	done
; 0x19c438

UnknownText_0x19c438: ; 0x19c438
	text "Il #Gear adesso"
	line "ha una mappa!"
	done
; 0x19c451

UnknownText_0x19c451: ; 0x19c451
	text "Il #Gear diven-"
	line "ta molto utile se"
	cont "aggiungi le Card."
	done
; 0x19c49f

UnknownText_0x19c49f: ; 0x19c49f
	text "Oh<...> È una cosa"
	line "che adoro fare<...>"

	para "Bene. Torna a tro-"
	line "varmi quando vuoi."
	done
; 0x19c4e2

UnknownText_0x19c4e2: ; 0x19c4e2
	text $56, " ", $56, " ", $56

	para "Ti hanno dato un"
	line "#mon al labora-"
	cont "torio?"

	para "Che spreco."
	
    para "Ad una mezza cal-"
	line "zetta come te<...>"

	para $56, " ", $56, " ", $56

	para "Non capisci cosa"
	line "voglio dire?"

	para "Beh, anche io ho"
	line "un buon #mon."

	para "Ti mostrerò a cosa"
	line "mi riferisco!"
	done
; 0x19c57f

UnknownText_0x19c57f: ; 0x19c57f
	text "Pff. Sei contento"
	line "adesso?"
	done
; 0x19c59e

UnknownText_0x19c57fF: ; 0x19c57f
	text "Pff. Sei contenta"
	line "adesso?"
	done
; 0x19c59e

UnknownText_0x19c59e: ; 0x19c59e
	text $56, " ", $56, " ", $56

	para "Mi chiamo ???."

	para "E diventerò il più"
	line "grande allenatore"
	cont "di #mon di sem-"
	cont "pre."
	done
; 0x19c5e6

UnknownText_0x19c5e6: ; 0x19c5e6
	text "È stata solo una"
	line "perdita di tempo."
	done
; 0x19c608

UnknownText_0x19c608: ; 0x19c608
	text $56, " ", $56, " ", $56

	para "Mi chiamo ???."

	para "E diventerò il più"
	line "grande allenatore"
	cont "di #mon di sem-"
	cont "pre."
	done
; 0x19c650

UnknownText_0x19c650: ; 0x19c650
	text "Hai già parlato"
	line "con quell'anziano"
	cont "vicino al Centro"
	cont "#mon?"

	para "Se gli parli, in-"
	line "stallerà una mappa"
	cont "di Johto sul tuo"
	cont "#Gear."
	done
; 0x19c6a8

UnknownText_0x19c6a8: ; 0x19c6a8
	text "È sempre diverten-"
	line "te andare in giro"
	cont "con i #mon."
	done
; 0x19c6d6

UnknownText_0x19c6d6: ; 0x19c6d6
	text "La casa di Mr."
	line "#mon si trova"
	cont "lungo questa"
	cont "strada."
	done
; 0x19c701

UnknownText_0x19c701: ; 0x19c701
	text "Ho sfidato gli"
	line "allenatori lungo"
	cont "la strada."

	para "I miei #mon"
	line "hanno perso e sono"
	cont "malridotti."

	para "Ho dovuto subito"
	line "portarli in un"
    cont "Centro #mon<...>"
	done
; 0x19c766

UnknownText_0x19c766: ; 0x19c766
	text "Un #mon che ho"
	line "catturato aveva un"
	cont "strumento con sé."

	para "Credo fosse dell'"
	line "Acqua Mistica."

	para "Non ne ho bisogno,"
	line "la vorresti tu?"
	done
; 0x19c7c1

UnknownText_0x19c7c1: ; 0x19c7c1
	text "Ritorno a pescare"
	line "allora."
	done
; 0x19c7e0

UnknownText_0x19c7e0: ; 0x19c7e0
	text "Fiorpescopoli"

	para "Città dei bei,"
	line "profumati fiori"
	done
; 0x19c815

UnknownText_0x19c815: ; 0x19c815
	text "Casa della Guida"
	done
; 0x19c829

Text_GuideGentHasRunningShoes2:
	text "Oh giusto, quasi"
	line "dimenticavo."

	para "Volevo cederti"
	line "anche queste."
	done

Text_GuideGentHasRunningShoes3:
	text "<PLAY_G> si mette"
	line "le Scarpe da"
	cont "Corsa!"

	para "Sono delle scarpe"
	line "da corsa."

	para "Ti leggo le"
	line "istruzioni."

	para "<``>Tieni premuto il"
	line "tasto B e corri"
	cont "come il vento!<''>"

	para "Dovrebbe essere un"
	line "oggetto fondamen-"
	cont "tale per un alle-"
	cont "natore come te!"

	para "Ti auguro il me-"
	line "glio per la tua"
	cont "avventura!"
	done

Text_GuideGentExplainsWhatHappened:
	text "Ehi, piccolino,"
	line "tutto bene?"
	
	para "<...>"
	
	para "Eri sulla M/N Anna"
	line "quando si é"
	cont "schiantata?"

	para "In tutti questi"
	line "anni non ho mai"
	
	para "visto una nave"
	line "tanto imponente"
	cont "subire un così"
	cont "tragico destino."

	para "Sembri totalmente"
	line "illeso. È un sol-"
	cont "lievo."

	para "Oh? Ma i tuoi"
	line "#mon sono tutti"
	cont "esausti!"

	para "Diamogli una botta"
	line "di energia."

	para "Seguimi."
	done

Text_GuideGentExplainsWhatHappenedF:
	text "Ehi, piccolina,"
	line "tutto bene?"
	
	para "<...>"
	
	para "Eri sulla M/N Anna"
	line "quando si é"
	cont "schiantata?"

	para "In tutti questi"
	line "anni non ho mai"
	
	para "visto una nave"
	line "tanto imponente"
	cont "subire un così"
	cont "tragico destino."

	para "Sembri totalmente"
	line "illesa."
	cont "È un sollievo."

	para "Oh? Ma i tuoi"
	line "#mon sono tutti"
	cont "esausti!"

	para "Diamogli una botta"
	line "di energia."

	para "Seguimi."
	done
	
Text_GuideGentForcesPlayerToHealParty:
	text "Eccoci."

	para "Oh, le mie scuse."
	line "Non ti ho ancora"
	cont "detto dove <``>qui<''>"
	cont "di fatto fosse!"

	para "Ti trovi a"
	line "Fiorpescopoli."

	para "Questo é il Centro"
	line "#mon locale."
	
	para "L'infermiera all'"
	line "interno ricariche-"
	cont "rà i tuoi #mon."

	para "Avanti, va' a par-"
	line "lare con lei!"
	done

Text_PleaseHealYourPokemon:
	text "Dove stai andando?"

	para "Dovresti prima far"
	line "curare i tuoi"
	cont "#mon!"
	done

GuideGentDirectsPlayerToNewBark:
	text "Oh bene, pare che"
	line "i tuoi #mon"
	cont "siano tornati in"
	cont "forma!"

	para "Oh, ma dove ho"
	line "messo le buone ma-"
	cont "niere? Non ti ho"
	cont "ancora chiesto"
	cont "come ti chiami!"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "Hm, <PLAYER>?"
	line "È  un bel nome."

	para "Puoi chiamarmi"
	line "semplicemente la"
	cont "<``>Guida<''>"

	para "E ora, permettimi"
	line "di aiutarti."

	para "Se cerchi aiuto"
	line "per tornare a ca-"
	cont "sa, allora dovre-"
	cont "sti parlare col"
	cont "Professor Elm."

	para "Gestisce un labo-"
	line "ratorio a Borgo"
	cont "Foglianova, a est"
	cont "di qui."

	para "Tra qui e Foglia-"
	line "nova c'é solo un"
	cont "breve tratto in"
	cont "discesa."

	para "Ti auguro il"
	line "meglio!"
	done

CherrygroveYoungsterText1:
	text "Vincerò di sicuro!"
	done

CherrygroveYoungsterText2:
	text "Tu vincere? Haha!"
	line "Nei tuoi sogni!"
	done

Text_AlreadyHaveMapCard:
	text "Oh? Ma pare che tu"
	line "abbia già una Map"
	cont "Card."

	para "È pure l'ultima"
	line "versione."
	
	para "Non me lo sarei"
	line "aspettato."
	done

CherrygroveCity_MapEventHeader: ; 0x19c829
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $3, $17, 2, GROUP_CHERRYGROVE_MART, MAP_CHERRYGROVE_MART
	warp_def $3, $1d, 1, GROUP_CHERRYGROVE_POKECENTER_1F, MAP_CHERRYGROVE_POKECENTER_1F
	warp_def $7, $11, 1, GROUP_CHERRYGROVE_GYM_SPEECH_HOUSE, MAP_CHERRYGROVE_GYM_SPEECH_HOUSE
	warp_def $9, $19, 1, GROUP_GUIDE_GENTS_HOUSE, MAP_GUIDE_GENTS_HOUSE
	warp_def $b, $1f, 1, GROUP_CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, MAP_CHERRYGROVE_EVOLUTION_SPEECH_HOUSE

	; xy triggers
	db 5
	xy_trigger 1, $6, $21, $0, UnknownScript_0x19c0ae, $0, $0
	xy_trigger 1, $7, $21, $0, UnknownScript_0x19c0aa, $0, $0
	xy_trigger 3, $7, $20, $0, Cherrygrove_PleaseHealYourPokemon, $0, $0
	xy_trigger 3, $8, $20, $0, Cherrygrove_PleaseHealYourPokemon, $0, $0
	xy_trigger 3, $9, $20, $0, Cherrygrove_PleaseHealYourPokemon, $0, $0

	; signposts
	db 4
	signpost 8, 30, $0, MapCherrygroveCitySignpost0Script
	signpost 9, 23, $0, MapCherrygroveCitySignpost1Script
	signpost 3, 24, $0, MapCherrygroveCitySignpost2Script
	signpost 3, 30, $0, MapCherrygroveCitySignpost3Script

	; people-events
	db 7
	person_event SPRITE_GRAMPS, 10, 36, $6, 0, 0, -1, -1, 0, 0, 0, GrampsScript_0x19c013, EVENT_GUIDE_GENT_VISIBLE_IN_HIS_HOUSE
	person_event SPRITE_SILVER, 10, 43, $3, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_SILVER_IN_CHERRYGROVE_CITY
	person_event SPRITE_TEACHER, 16, 31, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TeacherScript_0x19c146, -1
	person_event SPRITE_YOUNGSTER, 11, 27, $5, 0, 1, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x19c15a, -1
	person_event SPRITE_FISHER, 16, 11, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x19c16e, -1
	person_event SPRITE_YOUNGSTER, 7, 20, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CherrygroveYoungsterScript1, EVENT_GOT_A_POKEMON_FROM_ELM
	person_event SPRITE_YOUNGSTER, 7, 21, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, CherrygroveYoungsterScript2, EVENT_GOT_A_POKEMON_FROM_ELM
; 0x19c8ad

