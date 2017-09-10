PewterCityRB_MapScriptHeader: ; 0x18c000
	; trigger count
	db 0

	; callback count
	db 0

PewterCityRBLassScript:
	jumptextfaceplayer _PewterCityText1

PewterCityRBCooltrainerMScript:
	jumptextfaceplayer _PewterCityText2

PewterCityRBPokemaniac1Script:
	faceplayer
	loadfont
	writetext _PewterCityText_193f1
	yesorno
	iffalse .no
	writetext _PewterCityText_193f6
	waitbutton
	closetext
	end

.no
	writetext _PewterCityText_193fb
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow $4, $0
	applymovement $4, Movement_PewterRBPokemaniacDragsPlayerToMuseum
	stopfollow
	loadfont
	writetext _PewterCityText13
	waitbutton
	closetext
	special RestartMapMusic
	applymovement $4, Movement_PewterRBPokemaniacReturns
	disappear $4
	moveperson $4, 27, 17
	appear $4
	end

PewterCityRBPokemaniac2Script:
	faceplayer
	loadfont
	writetext _PewterCityText_19427
	yesorno
	iffalse .no
	writetext _PewterCityText_1942c
	jump .finish
.no
	writetext _PewterCityText_19431
.finish
	waitbutton
	closetext
	end

PewterRBFruitTree1:
	fruittree $1c

PewterRBFruitTree2:
	fruittree $1d

MapPewterCityRBSignpost0Script:
	jumptext _PewterCityText12

MapPewterCityRBSignpost1Script:
	jumptext _PewterCityText11

MapPewterCityRBSignpost2Script:
	jumptext _PewterCityText10

MapPewterCityRBSignpost3Script:
	jumptext _PewterCityText7

MapPewterCityRBSignpost4Script:
	jumptext _PewterCityText6

MapPewterCityRBSignpost5Script:
	jumpstd pokecentersign

MapPewterCityRBSignpost6Script:
	jumpstd martsign

Movement_PewterRBPokemaniacDragsPlayerToMuseum:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_left
	turn_head_up
	step_end

Movement_PewterRBPokemaniacReturns:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	step_end

_PewterCityText1:
	text "Si dice che i"
	line "Clefairy vengano"
	cont "dalla luna!"

	para "È apparso quando"
	line "la Pietralunare é"
	cont "caduta sul Monte"
	cont "Luna!"
	done

_PewterCityText2:
	text "Non ci sono tanti"
	line "allenatori di"
	cont "#mon seri qui!"

	para "Sono tutti dei"
	line "Pigliamosche!"
	
	para "Si salva solo"
	line "Brock, il capopa-"
	cont "lestra!"
	done

_PewterCityText_193f1:
	text "Hai già visitato"
	line "il museo?"
	done

_PewterCityText_193f6:
	text "Interessanti i"
	line "fossili trovati"
	cont "sul Monte Luna,"
	cont "vero?"
	done

_PewterCityText_193fb:
	text "No?"
	line "Devi andarci"
	cont "assolutamente!"
	done

_PewterCityText13:
	text "Eccolo!"
	line "Si paga per entra-"
	cont "re, ma ne vale la"
	cont "pena! Ciao!"
	done

_PewterCityText_19427:
	text "Psssst!"
	line "Sai cosa faccio?"
	done

_PewterCityText_1942c:
	text "Esatto!"
	line "È un lavoro duro!"
	done

_PewterCityText_19431:
	text "Spruzzo il repel-"
	line "lente per tenere"
	cont "lontano i #mon"
	cont "dal mio giardino."
	done

_PewterCityText6:
	text "Consigli utili"

	para "Tutti i #mon"
	line "impegnati in una"
	cont "lotta, seppure"
	cont "breve, crescono in"
	cont "esperienza!"
	done

_PewterCityText7:
	text "Avviso!"

	para "Sono stati rubati"
	line "i fossili #mon"
	cont "al Monte Luna!"
	
	para "Chiunque abbia"
	line "informazioni,"
	cont "chiami la polizia"
	cont "di Plumbeopoli!"
	done

_PewterCityText10:
	text "Museo della"
	line "Scienza di Plum-"
	cont "beopoli"
	done

_PewterCityText11:
	text "Palestra #mon"
	line "di Plumbeopoli"
	para "Capopalestra:"
	line "Brock"

	para "L'allenatore di"
	line "#mon più duro"
	cont "di una roccia!"
	done

_PewterCityText12:
	text "Plumbeopoli"
	line "Città grigia"
	cont "come il piombo"
	done



PewterCityRB_MapEventHeader: ; 0x18c2f5
	; filler
	db 0, 0

	; warps
	db 7
	warp_def $d, $1d, 1, GROUP_PEWTER_NIDORAN_SPEECH_HOUSE_RB, MAP_PEWTER_NIDORAN_SPEECH_HOUSE_RB
	warp_def $11, $10, 1, GROUP_PEWTER_GYM_RB, MAP_PEWTER_GYM_RB
	warp_def $11, $17, 2, GROUP_PEWTER_MART_RB, MAP_PEWTER_MART_RB
	warp_def $19, $d, 1, GROUP_PEWTER_POKECENTER_1F_RB, MAP_PEWTER_POKECENTER_1F_RB
	warp_def $1d, $7, 1, GROUP_PEWTER_SNOOZE_SPEECH_HOUSE_RB, MAP_PEWTER_SNOOZE_SPEECH_HOUSE_RB
	warp_def $7, $e, 1, GROUP_PEWTER_MUSEUM_1F_RB, MAP_PEWTER_MUSEUM_1F_RB
	warp_def $5, $13, 3, GROUP_PEWTER_MUSEUM_1F_RB, MAP_PEWTER_MUSEUM_1F_RB ; this one should be inaccessible without cut

	; xy triggers
	db 0

	; signposts
	db 7
	signpost 23, 25, $0, MapPewterCityRBSignpost0Script
	signpost 17, 11, $0, MapPewterCityRBSignpost1Script
	signpost  9, 15, $0, MapPewterCityRBSignpost2Script
	signpost 19, 33, $0, MapPewterCityRBSignpost3Script
	signpost 29, 19, $0, MapPewterCityRBSignpost4Script
	signpost 25, 14, $0, MapPewterCityRBSignpost5Script
	signpost 17, 24, $0, MapPewterCityRBSignpost6Script

	; people-events
	db 6
	person_event SPRITE_TEACHER, 19, 12, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PewterCityRBLassScript, -1
	person_event SPRITE_YOUNGSTER, 29, 21, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, PewterCityRBCooltrainerMScript, -1
	person_event SPRITE_SUPER_NERD, 21, 31, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterCityRBPokemaniac1Script, -1
	person_event SPRITE_YOUNGSTER, 29, 30, $5, 0, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, PewterCityRBPokemaniac2Script, -1
	person_event SPRITE_FRUIT_TREE, 7, 36, $1, 0, 0, -1, -1, 0, 0, 0, PewterRBFruitTree1, -1
	person_event SPRITE_FRUIT_TREE, 7, 34, $1, 0, 0, -1, -1, 0, 0, 0, PewterRBFruitTree2, -1
