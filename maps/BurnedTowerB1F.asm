BurnedTowerB1F_MapScriptHeader: ; 0x186151
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x18615e, $0000
	dw UnknownScript_0x18615f, $0000

	; callback count
	db 1

	; callbacks

	dbw 1, UnknownScript_0x186160
; 0x18615e

UnknownScript_0x18615e: ; 0x18615e
	end
; 0x18615f

UnknownScript_0x18615f: ; 0x18615f
	end
; 0x186160

UnknownScript_0x186160: ; 0x186160
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue UnknownScript_0x18616a
	changeblock $6, $e, $2
UnknownScript_0x18616a: ; 0x18616a
	return
; 0x18616b

UnknownScript_0x18616b: ; 0x18616b
	playmusic MUSIC_NONE
	pause 30
	appear $3
	spriteface $0, $1
	pause 5
	disappear $6
	pause 15
	cry RAIKOU
	appear $4
	spriteface $0, $1
	pause 5
	disappear $7
	pause 15
	cry ENTEI
	appear $5
	spriteface $0, $1
	pause 5
	disappear $8
	pause 15
	cry SUICUNE
	pause 15
	playsound SFX_WARP_FROM
	spriteface $0, $2
	applymovement $3, MovementData_0x186236
	disappear $3
	waitsfx
	playsound SFX_WARP_FROM
	spriteface $0, $3
	applymovement $4, MovementData_0x18623b
	disappear $4
	waitsfx
	pause 15
	playsound SFX_WARP_FROM
	spriteface $0, $1
	applymovement $5, MovementData_0x186241
	playsound SFX_WARP_FROM
	spriteface $0, $0
	applymovement $5, MovementData_0x186248
	spriteface $0, $1
	pause 20
	cry SUICUNE
	pause 30
	playsound SFX_WARP_FROM
	applymovement $5, MovementData_0x186253
	spriteface $0, $0
	disappear $5
	waitsfx
	special RestartMapMusic
	dotrigger $1
	setevent EVENT_RELEASED_THE_BEASTS
	writebyte ROAM_RAIKOU | ROAM_ENTEI
	special InitRoamMons
	domaptrigger GROUP_ECRUTEAK_GYM, MAP_ECRUTEAK_GYM, $1
	domaptrigger GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY, $1
	clearevent EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	setevent EVENT_MORTY_RETURNED_TO_ECRUTEAK_GYM
	clearevent EVENT_OLD_MAN_OUTSIDE_BURNED_TOWER
	setevent EVENT_MORTY_IN_BURNED_TOWER_1F
	setevent EVENT_EUSINE_IN_BURNED_TOWER_1F
	appear $a
	refreshscreen $0
	changeblock $6, $e, $1b
	reloadmappart
	closetext
	dotrigger $1
	end
; 0x186212

SuperNerdScript_0x186212: ; 0x186212
	faceplayer
	loadfont
	writetext UnknownText_0x18626a
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal $1, UnknownScript_0x186226
	applymovement $a, MovementData_0x186263
	jump UnknownScript_0x18622a
; 0x186226

UnknownScript_0x186226: ; 0x186226
	applymovement $a, MovementData_0x18625c
UnknownScript_0x18622a: ; 0x18622a
	disappear $a
	playsound SFX_EXIT_BUILDING
	waitsfx
	end
; 0x186231

ItemFragment_0x186231: ; 0x186231
	db TM_WILLOWISP, 1
; 0x186233

BoulderScript_0x186233: ; 0x186233
	jumpstd strengthboulder
; 0x186236

MovementData_0x186236: ; 0x186236
	db $39 ; movement
	fast_jump_step_down
	fast_jump_step_left
	db $38 ; movement
	step_end
; 0x18623b

MovementData_0x18623b: ; 0x18623b
	db $39 ; movement
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x186241

MovementData_0x186241: ; 0x186241
	db $39 ; movement
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_left
	db $38 ; movement
	step_end
; 0x186248

MovementData_0x186248: ; 0x186248
	db $39 ; movement
	fast_jump_step_left
	fast_jump_step_up
	big_step_up
	fast_jump_step_right
	db $38 ; movement
	step_end
; 0x18624f

MovementData_0x18624f: ; 0x18624f
	db $39 ; movement
	big_step_down
	db $38 ; movement
	step_end
; 0x186253

MovementData_0x186253: ; 0x186253
	db $39 ; movement
	big_step_up
	fast_jump_step_right
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_down
	db $38 ; movement
	step_end
; 0x18625c

MovementData_0x18625c: ; 0x18625c
	step_left
	step_left
	step_down
	step_down
	step_left
	step_down
	step_end
; 0x186263

MovementData_0x186263: ; 0x186263
	step_down
	step_left
	step_left
	step_left
	step_down
	step_down
	step_end
; 0x18626a

UnknownText_0x18626a: ; 0x18626a
	text "EUSINE: I dug a"
	line "hole here, too<...>"

	para "I was shocked!"

	para "SUICUNE raced by"
	line "like a blur, right"

	para "in front of my"
	line "eyes!"

	para "For ten years I"
	line "chased SUICUNE,"

	para "and I finally got"
	line "to see it."

	para "I'm all choked up!"

	para "<PLAYER>, I owe"
	line "this all to you!"

	para "Thank you!"

	para "I heard that the"
	line "legendary #MON"

	para "of ECRUTEAK test"
	line "chosen humans by"

	para "allowing them to"
	line "get close."

	para "I'm going to track"
	line "SUICUNE."

	para "<PLAYER>, let's"
	line "meet again!"

	para "Farewell!"
	done
; 0x1863de

BurnedTowerB1F_MapEventHeader: ; 0x1863de
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $9, $a, 3, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $7, $11, 7, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $8, $a, 9, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $d, $3, 10, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $e, $11, 12, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F
	warp_def $f, $7, 14, GROUP_BURNED_TOWER_1F, MAP_BURNED_TOWER_1F

	; xy triggers
	db 1
	xy_trigger 0, $6, $a, $0, UnknownScript_0x18616b, $0, $0

	; signposts
	db 0

	; people-events
	db 9
	person_event SPRITE_BOULDER, 12, 21, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x186233, -1
	person_event SPRITE_RAIKOU, 7, 11, $16, 0, 0, -1, -1, 8 + PAL_OW_YELLOW, 0, 0, ObjectEvent, EVENT_DOGS_IN_BURNED_TOWER
	person_event SPRITE_ENTEI, 7, 16, $16, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, EVENT_DOGS_IN_BURNED_TOWER
	person_event SPRITE_SUICUNE, 8, 14, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ObjectEvent, EVENT_DOGS_IN_BURNED_TOWER
	person_event SPRITE_RAIKOU, 7, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_SILVER, 0, 0, ObjectEvent, EVENT_DOGS_IN_BURNED_TOWER_2
	person_event SPRITE_ENTEI, 7, 16, $6, 0, 0, -1, -1, 8 + PAL_OW_SILVER, 0, 0, ObjectEvent, EVENT_DOGS_IN_BURNED_TOWER_2
	person_event SPRITE_SUICUNE, 8, 14, $6, 0, 0, -1, -1, 8 + PAL_OW_SILVER, 0, 0, ObjectEvent, EVENT_DOGS_IN_BURNED_TOWER_2
	person_event SPRITE_POKE_BALL, 8, 20, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x186231, EVENT_ITEM_BURNED_TOWER_BF1_TM20
	person_event SPRITE_SUPER_NERD, 16, 14, $7, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SuperNerdScript_0x186212, EVENT_EUSINE_IN_BURNED_TOWER_B1F
; 0x18647f



