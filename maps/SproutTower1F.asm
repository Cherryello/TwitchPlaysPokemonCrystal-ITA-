SproutTower1F_MapScriptHeader: ; 0x1844fc
	; trigger count
	db 0

	; callback count
	db 0
; 0x1844fe

SageScript_0x1844fe: ; 0x1844fe
	jumptextfaceplayer UnknownText_0x1845d8
; 0x184501

SageScript_0x184501: ; 0x184501
	jumptextfaceplayer UnknownText_0x18460a
; 0x184504

GrannyScript_0x184504: ; 0x184504
	checkunit
	iftrue .imperial
	jumptextfaceplayer UnknownText_0x184649_Metric
.imperial
	jumptextfaceplayer UnknownText_0x184649
; 0x184507

TeacherScript_0x184507: ; 0x184507
	jumptextfaceplayer UnknownText_0x18469d
; 0x18450a

TrainerSageChow: ; 0x18450a
	; bit/flag number
	dw $411

	; trainer group && trainer id
	db SAGE, CHOW

	; text when seen
	dw SageChowSeenText

	; text when trainer beaten
	dw SageChowBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageChowScript
; 0x184516

SageChowScript: ; 0x184516
	talkaftercancel
	loadfont
	writetext UnknownText_0x184583
	waitbutton
	closetext
	end
; 0x18451e

ItemFragment_0x18451e: ; 0x18451e
	db PARLYZ_HEAL, 1
; 0x184520

MapSproutTower1FSignpost1Script: ; 0x184520
	jumptext UnknownText_0x1846d6
; 0x184523

SageChowSeenText: ; 0x184523
	text "Siamo di guardia"
	line "in questa torre."

	para "Qui rendiamo"
	line "omaggio a tutti"
	cont "i #mon."
	done
; 0x184574

SageChowBeatenText: ; 0x184574
	text "G-Grazie!"
	done
; 0x184583

UnknownText_0x184583: ; 0x184583
	text "Tutti gli esseri"
	line "viventi coesistono"
	cont "cooperando fra di"
	cont "essi."

	para "Dobbiamo esserne"
	line "sempre grati."
	done
; 0x1845d8

UnknownText_0x1845d8: ; 0x1845d8
	text "Solo se arriverai"
	line "in cima alla Torre"
	cont "potrai ottenere"
	cont "una Macchina"
	cont "Nascosta."
	done
; 0x18460a

UnknownText_0x18460a: ; 0x18460a
	text "La Torre Sprout fu"
	line "costruita molti"

	para "anni fa per alle-"
	line "nare i #mon."
	done
; 0x184649

UnknownText_0x184649: ; 0x184649
	text "Un Bellsprout alto"
	line "più di 100 piedi<...>"

	para "Si dice fosse il"
	line "pilastro centrale."
	done
; 0x18469d

UnknownText_0x184649_Metric: ; 0x184649
	text "Un Bellsprout alto"
	line "più di 30 metri<...>"

	para "Si dice fosse il"
	line "pilastro centrale."
	done
; 0x18469d

UnknownText_0x18469d: ; 0x18469d
	text "Vedi come oscilla"
	line "il pilastro?"

	para "Qualcuno si sta"
	line "allenando lassù."
	done
; 0x1846d6

UnknownText_0x1846d6: ; 0x1846d6
	text "Una statua di un"
	line "#mon<...>"

	para "Ha un aspetto"
	line "molto solenne."
	done
; 0x184703

SproutTower1F_MapEventHeader: ; 0x184703
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $f, $9, 7, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $f, $a, 7, GROUP_VIOLET_CITY, MAP_VIOLET_CITY
	warp_def $4, $6, 1, GROUP_SPROUT_TOWER_2F, MAP_SPROUT_TOWER_2F
	warp_def $6, $2, 2, GROUP_SPROUT_TOWER_2F, MAP_SPROUT_TOWER_2F
	warp_def $3, $11, 3, GROUP_SPROUT_TOWER_2F, MAP_SPROUT_TOWER_2F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 7, $0, MapSproutTower1FSignpost1Script
	signpost 15, 12, $0, MapSproutTower1FSignpost1Script

	; people-events
	db 6
	person_event SPRITE_SAGE, 8, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SageScript_0x1844fe, -1
	person_event SPRITE_SAGE, 11, 10, $2, 1, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SageScript_0x184501, -1
	person_event SPRITE_GRANNY, 16, 15, $8, 0, 0, -1, -1, 0, 0, 0, GrannyScript_0x184504, -1
	person_event SPRITE_TEACHER, 13, 13, $7, 0, 0, -1, -1, 0, 0, 0, TeacherScript_0x184507, -1
	person_event SPRITE_SAGE, 9, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerSageChow, -1
	person_event SPRITE_POKE_BALL, 11, 20, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18451e, EVENT_ITEM_SPROUT_TOWER_1F_PARLYZ_HEAL
; 0x18477a

