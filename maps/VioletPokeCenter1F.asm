VioletPokeCenter1F_MapScriptHeader: ; 0x694c7
	; trigger count
	db 0

	; callback count
	db 0
; 0x694c9

NurseScript_0x694c9: ; 0x694c9
	jumpstd pokecenternurse
; 0x694cc

ScientistScript_0x694cc: ; 0x694cc
	faceplayer
	loadfont
	checkevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	iftrue UnknownScript_0x6953a
	writetext UnknownText_0x69555
UnknownScript_0x694d7: ; 0x694d7
	yesorno
	iffalse UnknownScript_0x69531
	checkcode VAR_PARTYCOUNT
	if_equal $6, UnknownScript_0x6952b
	giveegg TOGEPI, 1
	stringtotext .eggname, $1
	scall UnknownScript_0x69527
	setevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	clearevent EVENT_ELMS_AIDE_IN_LAB
	clearevent EVENT_TOGEPI_HATCHED
	checkevent EVENT_GOT_HM02_FLY
	iffalse .skip_trigger
	domaptrigger GROUP_ROUTE_32, MAP_ROUTE_32, $1
.skip_trigger
	writetext UnknownText_0x695c5
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal $1, .UnknownScript_0x69511
	spriteface $0, $0
	applymovement $6, MovementData_0x69549
	playsound SFX_EXIT_BUILDING
	disappear $6
	waitsfx
	end

.UnknownScript_0x69511 ; 0x69511
	applymovement $6, MovementData_0x6954e
	spriteface $0, $0
	applymovement $6, MovementData_0x69551
	playsound SFX_EXIT_BUILDING
	disappear $6
	waitsfx
	end
; 0x69523

.eggname ; 0x69523
	db "l'uovo@"
; 0x69527

UnknownScript_0x69527: ; 0x69527
	jumpstd receivetogepiegg
	end
; 0x6952b

UnknownScript_0x6952b: ; 0x6952b
	writetext UnknownText_0x69693
	waitbutton
	closetext
	end
; 0x69531

UnknownScript_0x69531: ; 0x69531
	writetext UnknownText_0x696f2
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	end
; 0x6953a

UnknownScript_0x6953a: ; 0x6953a
	writetext UnknownText_0x69712
	jump UnknownScript_0x694d7
; 0x69540

GameboyKidScript_0x69540: ; 0x69540
	jumptextfaceplayer UnknownText_0x69809
; 0x69543

GentlemanScript_0x69543: ; 0x69543
	jumptextfaceplayer UnknownText_0x6983c
; 0x69546

YoungsterScript_0x69546: ; 0x69546
	jumptextfaceplayer UnknownText_0x698b8
; 0x69549

MovementData_0x69549: ; 0x69549
	step_down
	step_down
	step_down
	step_down
	step_end
; 0x6954e

MovementData_0x6954e: ; 0x6954e
	step_left
	step_down
	step_end
; 0x69551

MovementData_0x69551: ; 0x69551
	step_down
	step_down
	step_down
	step_end
; 0x69555

UnknownText_0x69555: ; 0x69555
	text "<PLAY_G>, é da un"
	line "po' che non ci si"
	cont "vede."

	para "Il Professore mi"
	line "ha chiesto di"
	cont "cercarti."

	para "Ha un altro compi-"
	line "to per te."

	para "Vorresti portare"
	line "tu l'uovo #mon?"
	done
; 0x695c5

UnknownText_0x695c5: ; 0x695c5
	text "Abbiamo scoperto"
	line "che un uovo #-"
	cont "mon, affinché si"
	cont "schiuda, deve tro-"
	cont "varsi insieme ad"
	cont "altri #mon in"
	cont "forma."

	para "<PLAY_G>, tu sei"
	line "l'unica persona"
	cont "che può aiutarci!"

	para "Mi raccomando,"
	line "chiama il Profes-"
	cont "sore quando si"
	cont "schiude l'uovo!"
	done
; 0x69693

UnknownText_0x69693: ; 0x69693
	text "Oh, no. Non hai"
	line "spazio nella tua"
	cont "squadra."

	para "Ritorna quando"
	line "avrai fatto spazio"
	cont "per l'uovo."
	
	para "Io nel frattempo"
	line "ti aspetterò qui."
	done
; 0x696f2

UnknownText_0x696f2: ; 0x696f2
	text "M-ma<...> È il Pro-"
	line "fessor Elm a chie-"
	cont "dertelo<...>"
	done
; 0x69712

UnknownText_0x69712: ; 0x69712
	text "<PLAY_G>, porterai"
	line "l'uovo con te?"
	done
; 0x6972d

UnknownText_0x6972d: ; 0x6972d
	text "Stavo pensando a"
	line "quanto sarebbe"
	cont "bello collegarsi"

	para "e lottare con i"
	line "miei amici che"

	para "vivono lontano da"
	line "qui."
	done
; 0x69791

UnknownText_0x69809: ; 0x69809
	text "Un tipo chiamato"
	line "Bill ha creato il"
	cont "Sistema Memoria"
	cont "#mon per PC."
	done
; 0x6983c

UnknownText_0x6983c: ; 0x6983c
	text "Era circa tre"
	line "mesi fa."

	para "Il Team Rocket"
	line "voleva commettere"
	cont "atti criminosi"
	cont "attraverso l'uti-"
	cont "lizzo dei #mon."

	para "Ma la giustizia"
	line "prevalse: un bam-"
	cont "bino li sconfisse."
	done
; 0x698b8

UnknownText_0x698b8: ; 0x698b8
	text "I #mon sono"
	line "intelligenti."
	cont "Non obbediranno ad"

	para "un allenatore che"
	line "non rispettano."

	para "Senza le giuste"
	line "medaglie, faranno"

	para "semplicemente di"
	line "testa loro."
	done
; 0x69935

VioletPokeCenter1F_MapEventHeader: ; 0x69935
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 5, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $7, $4, 5, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 5
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x694c9, -1
	person_event SPRITE_GAMEBOY_KID, 10, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, GameboyKidScript_0x69540, -1
	person_event SPRITE_GENTLEMAN, 8, 5, $3, 0, 0, -1, -1, 0, 0, 0, GentlemanScript_0x69543, -1
	person_event SPRITE_YOUNGSTER, 5, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, YoungsterScript_0x69546, -1
	person_event SPRITE_SCIENTIST, 7, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ScientistScript_0x694cc, EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
; 0x6998b

