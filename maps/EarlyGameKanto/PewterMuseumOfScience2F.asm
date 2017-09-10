
PewterMuseumOfScience2F_MapScriptHeader:
	db 0 ; triggers
	db 0 ; callbacks

PewterMuseumOfScience2FBugCatcherScript:
	jumptextfaceplayer _Museum2FText1

PewterMuseumOfScience2FGrampsScript:
	jumptextfaceplayer _Museum2FText2

PewterMuseumOfScience2FScientistScript:
	jumptextfaceplayer _Museum2FText3

PewterMuseumOfScience2FLassScript:
	jumptextfaceplayer _Museum2FText4

PewterMuseumOfScience2FHikerScript:
	jumptextfaceplayer _Museum2FText5

PewterMuseumOfScience2FSpaceShuttleScript:
	jumptext _Museum2FText6

PewterMuseumOfScience2FMeteoriteSignScript
	jumptext _Museum2FText7

_Museum2FText1:
	text "Pietralunare?"

	para "Cosa c'é di tanto"
	line "speciale?"
	done

_Museum2FText2:
	text "12 febbraio 2015!"

	para "Il giorno in cui"
	line "iniziò la partita"
	cont "per il primo anni-"
	cont "versario!"

	para "Mi comprai un"
	line "tablet per veder-"
	cont "la!"
	done

_Museum2FText3:
	text "Abbiamo allestito"
	line "anche una mostra"
	cont "sullo spazio."
	done

_Museum2FText4:
	text "Voglio un Pikachu!"
	line "È così carino!"

	para "Ho chiesto a papà"
	line "di prendermene"
	cont "uno!"
	done

_Museum2FText5:
	text "Sì promesso, avrai"
	line "un Pikachu!"
	done

_Museum2FText6:
	text "Space Shuttle"
	line "Columbia"
	done

_Museum2FText7:
	text "Meteorite caduto"
	line "sul Monte Luna."
	cont "(pare si tratti di"
	cont "una Pietralunare)"
	done


PewterMuseumOfScience2F_MapEventHeader:
	db 0, 0 ; filler
	db 1 ; warps
	warp_def 7, 7, 5, GROUP_PEWTER_MUSEUM_1F_RB, MAP_PEWTER_MUSEUM_1F_RB

	db 0 ; coord events

	db 2 ; signposts

	signpost 2, 11, $0, PewterMuseumOfScience2FSpaceShuttleScript
	signpost 5, 2, $0, PewterMuseumOfScience2FMeteoriteSignScript

	db 5 ; objects
	person_event SPRITE_BUG_CATCHER, 11, 5, $5, 0, 2, -1, -1, 0, 0, 0, PewterMuseumOfScience2FBugCatcherScript, -1
	person_event SPRITE_GRAMPS, 9, 4, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterMuseumOfScience2FGrampsScript, -1
	person_event SPRITE_SCIENTIST, 9, 11, $6, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience2FScientistScript, -1
	person_event SPRITE_LASS, 9, 15, $3, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience2FLassScript, -1
	person_event SPRITE_POKEFAN_M, 9, 16, $6, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience2FHikerScript, -1
