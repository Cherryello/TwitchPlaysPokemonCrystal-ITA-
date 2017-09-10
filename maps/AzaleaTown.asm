AzaleaTown_MapScriptHeader: ; 0x198000
	; trigger count
	db 3

	; triggers
	dw UnknownScript_0x198011, $0000
	dw UnknownScript_0x198012, $0000
	dw UnknownScript_0x198013, $0000

	; callback count
	db 1

	; callbacks

	dbw 5, UnknownScript_0x198014
; 0x198011

UnknownScript_0x198011: ; 0x198011
	end
; 0x198012

UnknownScript_0x198012: ; 0x198012
	end
; 0x198013

UnknownScript_0x198013: ; 0x198013
	end
; 0x198014

UnknownScript_0x198014: ; 0x198014
	setflag ENGINE_FLYPOINT_AZALEA
	return
; 0x198018

UnknownScript_0x198018: ; 0x198018
	moveperson $b, $b, $b
	spriteface $0, $3
	showemote $0, $0, 15
	special Functionc48f
	pause 15
	appear $b
	applymovement $b, MovementData_0x198134
	spriteface $0, $0
	jump UnknownScript_0x198049
; 0x198034

UnknownScript_0x198034: ; 0x198034
	spriteface $0, $3
	showemote $0, $0, 15
	special Functionc48f
	pause 15
	appear $b
	applymovement $b, MovementData_0x19813c
	spriteface $0, $1
UnknownScript_0x198049: ; 0x198049
	playmusic MUSIC_RIVAL_ENCOUNTER
	loadfont
	writetext UnknownText_0x19814d
	waitbutton
	closetext
	setevent EVENT_UNKNOWN_ROCKET_IN_AZALEA_TOWN
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue UnknownScript_0x198071
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue UnknownScript_0x198081
	winlosstext UnknownText_0x1981e6, UnknownText_0x19835b
	setlasttalked $b
	loadtrainer RIVAL1, RIVAL1_6
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x198091
; 0x198071

UnknownScript_0x198071: ; 0x198071
	winlosstext UnknownText_0x1981e6, UnknownText_0x19835b
	setlasttalked $b
	loadtrainer RIVAL1, RIVAL1_4
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x198091
; 0x198081

UnknownScript_0x198081: ; 0x198081
	winlosstext UnknownText_0x1981e6, UnknownText_0x19835b
	setlasttalked $b
	loadtrainer RIVAL1, RIVAL1_5
	startbattle
	reloadmapmusic
	returnafterbattle
	jump UnknownScript_0x198091
; 0x198091

UnknownScript_0x198091: ; 0x198091
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	loadfont
	writetext UnknownText_0x198233
	waitbutton
	closetext
	spriteface $0, $2
	applymovement $b, MovementData_0x198144
	playsound SFX_EXIT_BUILDING
	disappear $b
	variablesprite SPRITE_AZALEA_ROCKET, SPRITE_ROCKET
	dotrigger $0
	waitsfx
	playmapmusic
	end
; 0x1980ab

AzaleaRocketScript_0x1980ab: ; 0x1980ab
	jumptextfaceplayer UnknownText_0x19837b
; 0x1980ae

AzaleaRocketScript_0x1980ae: ; 0x1980ae
	jumptextfaceplayer UnknownText_0x1983c7
; 0x1980b1

GrampsScript_0x1980b1: ; 0x1980b1
	faceplayer
	loadfont
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue UnknownScript_0x1980bf
	writetext UnknownText_0x19841b
	waitbutton
	closetext
	end
; 0x1980bf

UnknownScript_0x1980bf: ; 0x1980bf
	writetext UnknownText_0x198473
	waitbutton
	closetext
	end
; 0x1980c5

TeacherScript_0x1980c5: ; 0x1980c5
	jumptextfaceplayer UnknownText_0x1984ce
; 0x1980c8

YoungsterScript_0x1980c8: ; 0x1980c8
	jumptextfaceplayer UnknownText_0x19851a
; 0x1980cb

SlowpokeScript_0x1980cb: ; 0x1980cb
	loadfont
	writetext UnknownText_0x1985b0
	pause 60
	writetext UnknownText_0x1985c3
	cry SLOWPOKE
	waitbutton
	closetext
	end
; 0x1980da

WoosterScript: ; 0x1980da
; unused
	faceplayer
	loadfont
	writetext WoosterText
	cry QUAGSIRE
	waitbutton
	closetext
	end
; 0x1980e5

UnknownScript_0x1980e5: ; 0x1980e5
	applymovement $0, MovementData_0x198148
	loadfont
	writetext UnknownText_0x1985df
	buttonsound
	spriteface $d, $3
	writetext UnknownText_0x19860b
	buttonsound
	writetext UnknownText_0x198628
	waitbutton
	verbosegiveitem GS_BALL, 1
	spriteface $d, $2
	setflag ENGINE_HAVE_EXAMINED_GS_BALL
	clearevent EVENT_LASS_IN_ILEX_FOREST_ROUTE_34_GATE_2
	setevent EVENT_LASS_IN_ILEX_FOREST_ROUTE_34_GATE
	dotrigger $0
	closetext
	end
; 0x19810c

KurtOutsideScript_0x19810c: ; 0x19810c
	faceplayer
	loadfont
	writetext UnknownText_0x198628
	waitbutton
	spriteface $d, $2
	closetext
	end
; 0x198117

MapAzaleaTownSignpost0Script: ; 0x198117
	jumptext UnknownText_0x19865a
; 0x19811a

MapAzaleaTownSignpost1Script: ; 0x19811a
	jumptext UnknownText_0x198693
; 0x19811d

MapAzaleaTownSignpost2Script: ; 0x19811d
	jumptext UnknownText_0x1986a1
; 0x198120

MapAzaleaTownSignpost3Script: ; 0x198120
	jumptext UnknownText_0x1986e7
; 0x198123

MapAzaleaTownSignpost4Script: ; 0x198123
	jumptext UnknownText_0x19878d
; 0x198126

MapAzaleaTownSignpost7Script: ; 0x198126
	jumptext UnknownText_0x19879c
; 0x198129

MapAzaleaTownSignpost5Script: ; 0x198129
	jumpstd pokecentersign
; 0x19812c

MapAzaleaTownSignpost6Script: ; 0x19812c
	jumpstd martsign
; 0x19812f

FruitTreeScript_0x19812f: ; 0x19812f
	fruittree $14
; 0x198131

MapAzaleaTownSignpostItem8: ; 0x198131
	dw $00b1
	db FULL_HEAL

; 0x198134

MovementData_0x198134: ; 0x198134
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_up
	step_end
; 0x19813c

MovementData_0x19813c: ; 0x19813c
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_down
	step_end
; 0x198144

MovementData_0x198144: ; 0x198144
	step_left
	step_left
	step_left
	step_end
; 0x198148

MovementData_0x198148: ; 0x198148
	step_left
	step_left
	step_up
	turn_head_left
	step_end
; 0x19814d

UnknownText_0x19814d: ; 0x19814d
	text "<...>Dimmi un po'."

	para "È vero che il"
	line "Team Rocket é"
	cont "ritornato?"

	para "Cosa? Li hai"
	line "battuti? Ma non"
	cont "farmi ridere."

	para "Non stai scher-"
	line "zando? Allora ve-"
	cont "diamo quanto vali."
	done
; 0x1981e6

UnknownText_0x1981e6: ; 0x1981e6
	text "<...> Pff! Che"
	line "#mon scarsi!"

	para "Hai vinto soltanto"
	line "perché i miei"

	para "#mon erano"
	line "deboli."
	done
; 0x198233

UnknownText_0x198233: ; 0x198233
	text "Odio i deboli."

	para "#mon o allena-"
	line "tori che siano."

	para "Sarò fortissimo e"
	line "schiaccerò i più"
	cont "deboli."

	para "Lo stesso vale per"
	line "quel Team Rocket."

	para "In gruppo sono"
	line "forti, ma presi"

	para "uno per uno non"
	line "valgono niente."

	para "Li odio tutti."

	para "E tu stammi alla"
	line "larga. Sei troppo"

	para "debole, mi distrai"
	line "solamente."
	done
; 0x19835b

UnknownText_0x19835b: ; 0x19835b
	text "<...>Tsk! Sapevo"
	line "stessi mentendo."
	done
; 0x19837b

UnknownText_0x19837b: ; 0x19837b
	text "È pericoloso là"
	line "dentro, quindi"
	cont "sto di guardia."

	para "Che brava persona"
	line "che sono, eh?"
	done
; 0x1983c7

UnknownText_0x1983c7: ; 0x1983c7
	text "Ma lo sai che la"
	line "Codaslowpoke é"
	cont "davvero saporita?"

	para "Ho fatto una cosa"
	line "buona a dirtelo,"
	cont "no?"
	done
; 0x19841b

UnknownText_0x19841b: ; 0x19841b
	text "Gli Slowpoke sono"
	line "scomparsi dal"
	cont "paese<...>"

	para "Pare che qualcuno"
	line "venda le loro"
	cont "code."
	done
; 0x198473

UnknownText_0x198473: ; 0x198473
	text "Gli Slowpoke sono"
	line "ritornati."

	para "Conoscendoli, si"
	line "saranno nascosti"

	para "da qualche parte"
	line "per un po'."
	done
; 0x1984ce

UnknownText_0x1984ce: ; 0x1984ce
	text "Sei qui per chie-"
	line "dere a Franz di"
	cont "farti delle Ball?"

	para "Molti se le fanno"
	line "fare da lui."
	done
; 0x19851a

UnknownText_0x19851a: ; 0x19851a
	text "Da Azalina arrivi"
	line "al Bosco di Lecci."

	para "Ma gli alberi sono"
	line "molto fitti e"

	para "intralciano il"
	line "passaggio."

	para "Il #mon del"
	line "carbonaio può"
	cont "tagliare gli"
	cont "alberi con Taglio."
	done
; 0x1985b0

UnknownText_0x1985b0: ; 0x1985b0
	text "Slowpoke: <...>"

	para $56, " ", $56, " ", $56
	done
; 0x1985c3

UnknownText_0x1985c3: ; 0x1985c3
	text $56, " ", $56, "Yawn?"
	done
; 0x1985cd

WoosterText: ; 0x1985cd
	text "Juan: Gugyoo<...>"
	done
; 0x1985df

UnknownText_0x1985df: ; 0x1985df
	text "Il Bosco di Lecci"
	line "é inquieto!"

	para "Cosa sta succe-"
	line "dendo?"
	done
; 0x19860b

UnknownText_0x19860b: ; 0x19860b
	text "<PLAYER>, rieccoti"
	line "la GS Ball!"
	done
; 0x198628

UnknownText_0x198628: ; 0x198628
	text "Potresti andare a"
	line "vedere come mai il"
	cont "bosco é così"
	cont "inquieto?"
	done
; 0x19865a

UnknownText_0x19865a: ; 0x19865a
	text "Azalina"
	line "Dove #mon e"

	para "umani vivono in"
	line "armonia."
	done
; 0x198693

UnknownText_0x198693: ; 0x198693
	text "Casa di Franz"
	done
; 0x1986a1

UnknownText_0x1986a1: ; 0x1986a1
	text "Azalina"
	line "Capopalestra:"
	cont "Raffaello"

	para "L'enciclopedia"
	line "vivente dei #-"
	cont "mon coleottero."
	done
; 0x1986e7

UnknownText_0x1986e7: ; 0x1986e7
	text "Pozzo Slowpoke"

	para "Detto anche Pozzo"
	line "della Pioggia."

	para "Si dice che se uno"
	line "Slowpoke sbadigli,"
	cont "possa far piovere."

	para "Quattrocento anni"
	line "fa, lo sbadiglio"

	para "di uno Slowpoke"
	line "pose fine ad una"
	cont "tremenda siccità."
	done
; 0x19878d

UnknownText_0x19878d: ; 0x19878d
	text "Fornace della"
	line "Carbonella"
	done
; 0x19879c

UnknownText_0x19879c: ; 0x19879c
	text "Bosco di Lecci"

	para "Passaggio"
	line "d'ingresso"
	done
; 0x1987c1

AzaleaTown_MapEventHeader: ; 0x1987c1
	; filler
	db 0, 0

	; warps
	db 8
	warp_def $9, $f, 1, GROUP_AZALEA_POKECENTER_1F, MAP_AZALEA_POKECENTER_1F
	warp_def $d, $15, 1, GROUP_CHARCOAL_KILN, MAP_CHARCOAL_KILN
	warp_def $5, $15, 2, GROUP_AZALEA_MART, MAP_AZALEA_MART
	warp_def $5, $9, 1, GROUP_KURTS_HOUSE, MAP_KURTS_HOUSE
	warp_def $f, $a, 1, GROUP_AZALEA_GYM, MAP_AZALEA_GYM
	warp_def $7, $1f, 1, GROUP_SLOWPOKE_WELL_B1F, MAP_SLOWPOKE_WELL_B1F
	warp_def $a, $2, 3, GROUP_ILEX_FOREST_AZALEA_GATE, MAP_ILEX_FOREST_AZALEA_GATE
	warp_def $b, $2, 4, GROUP_ILEX_FOREST_AZALEA_GATE, MAP_ILEX_FOREST_AZALEA_GATE

	; xy triggers
	db 3
	xy_trigger 1, $a, $5, $0, UnknownScript_0x198018, $0, $0
	xy_trigger 1, $b, $5, $0, UnknownScript_0x198034, $0, $0
	xy_trigger 2, $6, $9, $0, UnknownScript_0x1980e5, $0, $0

	; signposts
	db 9
	signpost 9, 19, $0, MapAzaleaTownSignpost0Script
	signpost 9, 10, $0, MapAzaleaTownSignpost1Script
	signpost 15, 14, $0, MapAzaleaTownSignpost2Script
	signpost 7, 29, $0, MapAzaleaTownSignpost3Script
	signpost 13, 19, $0, MapAzaleaTownSignpost4Script
	signpost 9, 16, $0, MapAzaleaTownSignpost5Script
	signpost 5, 22, $0, MapAzaleaTownSignpost6Script
	signpost 9, 3, $0, MapAzaleaTownSignpost7Script
	signpost 6, 31, $7, MapAzaleaTownSignpostItem8

	; people-events
	db 12
	person_event SPRITE_AZALEA_ROCKET, 13, 35, $6, 0, 0, -1, -1, 0, 0, 0, AzaleaRocketScript_0x1980ab, EVENT_GOOD_SAMARITAN_ROCKET_IN_AZALEA_TOWN
	person_event SPRITE_GRAMPS, 13, 25, $2, 2, 1, -1, -1, 0, 0, 0, GrampsScript_0x1980b1, -1
	person_event SPRITE_TEACHER, 17, 19, $4, 2, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TeacherScript_0x1980c5, -1
	person_event SPRITE_YOUNGSTER, 13, 11, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, YoungsterScript_0x1980c8, -1
	person_event SPRITE_SLOWPOKE, 21, 12, $1, 0, 0, -1, -1, 0, 0, 0, SlowpokeScript_0x1980cb, EVENT_SLOWPOKE_IN_AZALEA_TOWN
	person_event SPRITE_SLOWPOKE, 13, 22, $1, 0, 0, -1, -1, 0, 0, 0, SlowpokeScript_0x1980cb, EVENT_SLOWPOKE_IN_AZALEA_TOWN
	person_event SPRITE_SLOWPOKE, 13, 33, $1, 0, 0, -1, -1, 0, 0, 0, SlowpokeScript_0x1980cb, EVENT_SLOWPOKE_IN_AZALEA_TOWN
	person_event SPRITE_SLOWPOKE, 19, 19, $1, 0, 0, -1, -1, 0, 0, 0, SlowpokeScript_0x1980cb, EVENT_SLOWPOKE_IN_AZALEA_TOWN
	person_event SPRITE_FRUIT_TREE, 6, 12, $1, 0, 0, -1, -1, 0, 0, 0, FruitTreeScript_0x19812f, -1
	person_event SPRITE_AZALEA_ROCKET, 14, 15, $8, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_UNKNOWN_ROCKET_IN_AZALEA_TOWN
	person_event SPRITE_AZALEA_ROCKET, 20, 14, $6, 0, 0, -1, -1, 0, 0, 0, AzaleaRocketScript_0x1980ae, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_KURT_OUTSIDE, 9, 10, $8, 0, 0, -1, -1, 0, 0, 0, KurtOutsideScript_0x19810c, EVENT_KURT_OUTSIDE_IN_AZALEA_TOWN
; 0x1988d0

