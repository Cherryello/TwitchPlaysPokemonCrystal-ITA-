PokemonFanClubRB_MapScriptHeader: ; 0x1917e7
	; trigger count
	db 0

	; callback count
	db 0
; 0x1917e9

FanClubChairmanScriptRB: ; 0x1917e9
	faceplayer
	loadfont
	checkevent EVENT_TALKED_TO_CHAIRMAN_RB
	iftrue .talk_after
	checkevent EVENT_002_STD
	iftrue .try_again_item
	writetext FanClubMeetChairText
	yesorno
	iffalse .refused
	writetext FanClubChairStoryText
	setevent EVENT_002_STD
.show_choices
	loadmenudata .MenuDataHeader
	interpretmenu2
	writebackup
	if_equal 1, .FireStone
	if_equal 2, .WaterStone
	verbosegiveitem THUNDERSTONE, 1
	iffalse .bag_full
	jump .return_from_item
.FireStone
	verbosegiveitem FIRE_STONE, 1
	iffalse .bag_full
	jump .return_from_item
.WaterStone
	verbosegiveitem WATER_STONE
	iffalse .bag_full
.return_from_item
	writetext ExplainStoneText
	setevent EVENT_TALKED_TO_CHAIRMAN_RB
.bag_full
	waitbutton
	closetext
	end

.try_again_item
	writetext FanClubChairTryAgainItemText
	jump .show_choices

.talk_after
	writetext FanClubChairFinalText
	waitbutton
	closetext
	end

.refused
	writetext FanClubNoStoryText
	waitbutton
	closetext
	end

.MenuDataHeader: ; 0xbce54
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option
; 0xbce5c

.MenuData2: ; 0xbce5c
	db $81 ; flags
	db 3 ; items
	db "Pietrafocaia@"
	db "Pietraidrica@"
	db "Pietratuono@"
; 0xbce7f


PokemonFanClubRB_ReceptionistScript: ; 0x191821
	jumptextfaceplayer _FanClubText6
; 0x191824

PokemonFanClubRB_FisherScript: ; 0x191824
	faceplayer
	loadfont
	checkevent EVENT_000_STD
	iftrue .hmmph
	writetext PikachuFanText
	waitbutton
	closetext
	setevent EVENT_001_STD
	end
.hmmph
	writetext PikachuFanBetterText
	waitbutton
	closetext
	clearevent EVENT_000_STD
	end

PokemonFanClubRB_TeacherScript: ; 0x19186b
	faceplayer
	loadfont
	checkevent EVENT_001_STD
	iftrue .hmmph
	writetext SeelFanText
	waitbutton
	closetext
	setevent EVENT_000_STD
	end
.hmmph
	writetext SeelFanBetterText
	waitbutton
	closetext
	clearevent EVENT_001_STD
	end
; 0x19186e

PokemonFanClubRB_PikachuScript: ; 0x19186e
	loadfont
	writetext FanClubPikachuText
	cry PIKACHU
	waitbutton
	closetext
	end
; 0x191871

PokemonFanClubRB_SeelScript: ; 0x191871
	loadfont
	writetext FanClubSeelText
	cry SEEL
	waitbutton
	closetext
	end
; 0x19187b

MapPokemonFanClubRBSignpost0Script: ; 0x19187b
	jumptext _FanClubText7
; 0x19187e

MapPokemonFanClubRBSignpost1Script: ; 0x19187e
	jumptext _FanClubText8
; 0x191881

PikachuFanText:
	text "Non trovia sia"
	line "bellissima la coda"
	cont "del mio Pikachu?"
	done

PikachuFanBetterText:
	text "Tsk! Il mio Pika-"
	line "chu é più bello"
	cont "almeno il doppio"
	cont "di quel Seel!"
	done

SeelFanText:
	text "Adoro il mio Seel!"

	para "Devi vedere com'é"
	line "contento quando"
	cont "lo abbraccio!"
	done

SeelFanBetterText:
	text "Perbacco!"

	para "Il mio Seel é"
	line "molto più bello!"
	done

FanClubPikachuText:
	text "Pikachu: Chu!"
	line "Pikachu!"
	done

FanClubSeelText:
	text "Seel: Kyuoo!"
	done

FanClubMeetChairText:
	text "Io sono il presi-"
	line "dente del #mon"
	cont "Fan Club!"

	para "Ho catturato più"
	line "di 100 #mon!"

	para "Divento molto"
	line "pignolo quando si"
	cont "parla di #mon!"

	para "Dunque<...>"

	para "Sei venuto qui per"
	line "sentir parlare dei"
	cont "miei #mon?"
	done

FanClubChairStoryText:
	text "Bene!"
	line "Allora ascolta!"

	para "Il mio preferito é"
	line "Rapidash<...>"

	para "È bello<...> dolce<...>"
	line "intelligente<...>"
	cont "e poi<...>"
	cont "é fantastico<...>"
	cont "non credi?<...>"
	cont "Oh vero<...> é anche<...>"
	cont "sbalorditivo<...>"
	cont "aggraziato<...>"
	cont "Lo adoro!"

	para "Abbracciarlo quan-"
	line "do dorme<...>"
	cont "é caldo<...>"
	cont "e morbido<...>"
	cont "spettacolare<...>"
	cont "incantevole<...>"

	para "<...> Oops! Ma guarda"
	line "che ora si é fat-"
	cont "ta!"
	para "Ti ho trattenuto"
	line "troppo!"

	para "Grazie per avermi"
	line "ascoltato! Voglio"
	cont "darti un regalo!"

	para "Puoi scegliere tu"
	line "quale vuoi tra"
	cont "questi tre."

	para "Avanti, prendine"
	line "una!"
	done

ExplainStoneText:
	text "Quella pietra ha"
	line "poteri incredibi-"
	cont "li."

	para "Alcuni #mon,"
	line "quando vengono"
	cont "esposti a essa,"
	cont "possono addirittu-"
	cont "ra evolversi."

	para "È un prezioso"
	line "oggetto per qual-"
	cont "siasi collezioni-"
	cont "sta di #mon!"
	done

FanClubNoStoryText:
	text "Oh. Torna pure"
	line "quando vorrai"
	cont "ascoltare la mia"
	cont "storia!"
	done

FanClubChairFinalText:
	text "Ciao, <PLAYER>!"

	para "Sei qui per sentir"
	line "parlare dei miei"
	cont "#mon di nuovo?"

	para "No? Che peccato!"
	done

FanClubChairTryAgainItemText:
	text "Ah, <PLAYER>!"

	para "Hai fatto un po'"
	line "di spazio per il"
	cont "mio regalo?"

	para "Avanti, scegli!"
	done

_FanClubText6:
	text "Al nostro presi-"
	line "dente piace molto "
	cont "parlare dei #-"
	cont "mon."
	done

_FanClubText7:
	text "Ascolta con educa-"
	line "zione gli altri"
	cont "allenatori!"
	done

_FanClubText8:
	text "Se qualcuno si"
	line "vanta a sproposi-"
	cont "to, beh, fallo"
	cont "anche tu!"
	done


PokemonFanClubRB_MapEventHeader: ; 0x191e4d
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB
	warp_def $7, $3, 3, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 7, $0, MapPokemonFanClubRBSignpost0Script
	signpost 0, 9, $0, MapPokemonFanClubRBSignpost1Script

	; people-events
	db 6
	person_event SPRITE_GENTLEMAN, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, FanClubChairmanScriptRB, -1
	person_event SPRITE_RECEPTIONIST, 5, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PokemonFanClubRB_ReceptionistScript, -1
	person_event SPRITE_FISHER, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_FisherScript, -1
	person_event SPRITE_TEACHER, 6, 11, $8, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_TeacherScript, -1
	person_event SPRITE_PIKACHU, 8, 6, $16, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_PikachuScript, -1
	person_event SPRITE_LAPRAS, 7, 11, $16, 0, 0, -1, -1, 0, 0, 0, PokemonFanClubRB_SeelScript, -1
; 0x191eb5

