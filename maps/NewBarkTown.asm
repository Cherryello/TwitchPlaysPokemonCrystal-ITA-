NewBarkTown_MapScriptHeader: ; 0x1a8000
	; trigger count
	db 3

	; triggers
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0

	; callback count
	db 1

	; callbacks

	dbw 5, .flypoint

.Trigger0
	end
.Trigger1
	end
.Trigger2
	end

.flypoint: ; 0x1a800f
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_SPOKE_TO_MOM_AFTER_DELIVERING_MYSTERY_EGG
	return
; 0x1a8016

UnknownScript_0x1a8016: ; 0x1a8016
	playmusic MUSIC_MOM
	spriteface $2, $2
	loadfont
	writetext UnknownText_0x1a8134
	waitbutton
	closetext
	spriteface $0, $3
	applymovement $2, MovementData_0x1a80d4
	loadfont
	writetext UnknownText_0x1a813e
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, MovementData_0x1a80e0
	stopfollow
	spriteface $0, UP
	disappear $2
	playsound SFX_ENTER_DOOR
	waitsfx
	applymovement $0, MovementData_NewBarkTown_PlayerEntersHome
	warpcheck
	end
; 0x1a8041

UnknownScript_0x1a8041: ; 0x1a8041
	playmusic MUSIC_MOM
	spriteface $2, $2
	loadfont
	writetext UnknownText_0x1a8134
	waitbutton
	closetext
	spriteface $0, $3
	applymovement $2, MovementData_0x1a80d9
	spriteface $0, $1
	loadfont
	writetext UnknownText_0x1a813e
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, MovementData_0x1a80e6
	stopfollow
	disappear $2
	playsound SFX_ENTER_DOOR
	waitsfx
	applymovement $0, MovementData_NewBarkTown_PlayerEntersHome
	warpcheck
	end
; 0x1a806f

TeacherScript_0x1a806f: ; 0x1a806f
	faceplayer
	loadfont
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue UnknownScript_0x1a8095
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x1a808f
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue UnknownScript_0x1a8089
	writetext UnknownText_0x1a80f7
	waitbutton
	closetext
	end
; 0x1a8089

UnknownScript_0x1a8089: ; 0x1a8089
	writetext UnknownText_0x1a81c4
	waitbutton
	closetext
	end
; 0x1a808f

UnknownScript_0x1a808f: ; 0x1a808f
	writetext UnknownText_0x1a81f2
	waitbutton
	closetext
	end
; 0x1a8095

UnknownScript_0x1a8095: ; 0x1a8095
	writetext UnknownText_0x1a8236
	waitbutton
	closetext
	end
; 0x1a809b

FisherScript_0x1a809b: ; 0x1a809b
	jumptextfaceplayer UnknownText_0x1a8274
; 0x1a809e

SilverScript_0x1a809e: ; 0x1a809e
	loadfont
	writetext UnknownText_0x1a82a6
	waitbutton
	closetext
	spriteface $4, $2
	loadfont
	writetext UnknownText_0x1a82cd
	waitbutton
	closetext
	follow $0, $4
	applymovement $0, MovementData_0x1a80ed
	stopfollow
	pause 5
	spriteface $4, $0
	pause 5
	playsound SFX_TACKLE
	applymovement $0, MovementData_0x1a80f0
	applymovement $4, MovementData_0x1a80f5
	end
; 0x1a80c8



NewBarkTown_TeacherStopsYouTrigger1: ; 0x1a8016
	playmusic MUSIC_MOM
	spriteface $2, LEFT
	loadfont
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface $0, RIGHT
	applymovement $2, MovementData_0x1a80d9
	spriteface $0, UP
	loadfont
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	loadfont
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouTrigger2: ; 0x1a8041
	playmusic MUSIC_MOM
	spriteface $2, LEFT
	loadfont
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface $0, RIGHT
	applymovement $2, MovementData_0x1a80d4
	loadfont
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow $2, $0
	applymovement $2, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	loadfont
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

; 0x1a806f


MapNewBarkTownSignpost0Script: ; 0x1a80c8
	jumptext UnknownText_0x1a82e8
; 0x1a80cb

MapNewBarkTownSignpost1Script: ; 0x1a80cb
	jumptext UnknownText_0x1a8328
; 0x1a80ce

MapNewBarkTownSignpost2Script: ; 0x1a80ce
	jumptext UnknownText_0x1a8332
; 0x1a80d1

MapNewBarkTownSignpost3Script: ; 0x1a80d1
	jumptext UnknownText_0x1a8340
; 0x1a80d4

MovementData_0x1a80d4: ; 0x1a80d4
	step_left
	step_left
	step_left
	step_left
	step_end
; 0x1a80d9

MovementData_0x1a80d9: ; 0x1a80d9
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_down
	step_end
; 0x1a80e0

Movement_TeacherBringsYouBack1_NBT: ; 0x1a80e6
	step_right
Movement_TeacherBringsYouBack2_NBT: ; 0x1a80e0
	step_right
	step_right
	step_right
	step_right
	turn_head_left
	step_end

MovementData_0x1a80e6: ; 0x1a80e6
	step_right
MovementData_0x1a80e0: ; 0x1a80e0
	step_right
	step_right
	step_right
	step_right
	step_up
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
MovementData_NewBarkTown_PlayerEntersHome:
	step_up
	step_end
; 0x1a80e6

MovementData_0x1a80ed: ; 0x1a80ed
	turn_head_up
	step_down
	step_end
; 0x1a80f0

MovementData_0x1a80f0: ; 0x1a80f0
	turn_head_up
	fix_facing
	jump_step_down
	remove_fixed_facing
	step_end
; 0x1a80f5

MovementData_0x1a80f5: ; 0x1a80f5
	step_right
	step_end
; 0x1a80f7

UnknownText_0x1a80f7: ; 0x1a80f7
	text "Wow, il tuo #-"
	line "Gear é fantastico!"

	para "Te l'ha dato tua"
	line "madre?"
	done
; 0x1a8134

UnknownText_0x1a8134: ; 0x1a8134
	text "Oh? Sei tu<...>"
	line "<...><PLAY_G>?"
	done
; 0x1a813e

UnknownText_0x1a813e: ; 0x1a813e
	text "Tua madre ha tras-"
	line "locato qui da non"
	cont "molto tempo."

	para "Continua a dire di"
	line "come ti abbia"
	cont "perso in quell'in-"
	cont "cidente della"
	cont "M/N Anna."

	para "Sarà felicissima"
	line "di sapere che ce"
	cont "l'hai fatta!"

	para "Dai, su!"
	line "Vieni con me!"
	done
; 0x1a815e

UnknownText_0x1a81c4: ; 0x1a81c4
	text "Oh! Il tuo #mon"
	line "é adorabile!"
	cont "Vorrei averne uno"
	cont "anch'io!"
	done
; 0x1a81f2

UnknownText_0x1a81f2: ; 0x1a81f2
	text "Ciao, <PLAY_G>!"
	line "Parti di nuovo?"

	para "Dovresti dirlo a"
	line "tua madre, nel"
	cont "caso."
	done
; 0x1a8236

UnknownText_0x1a8236: ; 0x1a8236
	text "Chiama tua madre"
	line "sul #Gear per"

	para "farle sapere cosa"
	line "stai facendo."
	done
; 0x1a8274

Text_WaitPlayer:
	text "Aspetta, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "Cosa pensi di"
	line "fare?"
	done

Text_ItsDangerousToGoAlone:
	text "Il professor Elm"
	line "sta cercando degli"
	cont "aiutanti."

	para "Il suo laboratorio"
	line "é a nord di qui."

	para "Perché non vai a"
	line "presentarti?"
	done

UnknownText_0x1a8274: ; 0x1a8274
	text "Ehi, <PLAYER>!"

	para "Ho sentito che il"
	line "professor Elm ha"
	cont "scoperto nuovi"
	cont "#mon."
	done
; 0x1a82a6

UnknownText_0x1a82a6: ; 0x1a82a6
	text $56

	para "Quindi é questo il"
	line "famoso laboratorio"
	cont "del professor Elm<...>"
	done
; 0x1a82cd

UnknownText_0x1a82cd: ; 0x1a82cd
	text "<...>Mh?"
	
	para "Che vuoi?"
	line "Vattene!"
	done
; 0x1a82e8

UnknownText_0x1a82e8: ; 0x1a82e8
	text "Borgo Foglianova"

	para "Città dove soffia"
	line "il vento di un"
	cont "nuovo inizio"
	done
; 0x1a8328

UnknownText_0x1a8328: ; 0x1a8328
	text "Casa di <PLAYER>"
	done
; 0x1a8332

UnknownText_0x1a8332: ; 0x1a8332
	text "Laboratorio di"
	line "Ricerca di Elm"
	done
; 0x1a8340

UnknownText_0x1a8340: ; 0x1a8340
	text "Casa di Elm"
	done
; 0x1a834d

NewBarkTown_MapEventHeader: ; 0x1a834d
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $3, $6, 1, GROUP_ELMS_LAB, MAP_ELMS_LAB
	warp_def $5, $d, 1, GROUP_KRISS_HOUSE_1F, MAP_KRISS_HOUSE_1F
	warp_def $b, $3, 1, GROUP_KRISS_NEIGHBORS_HOUSE, MAP_KRISS_NEIGHBORS_HOUSE
	warp_def $d, $b, 1, GROUP_ELMS_HOUSE, MAP_ELMS_HOUSE

	; xy triggers
	db 4
	xy_trigger 0, $8, $1, $0, UnknownScript_0x1a8016, $0, $0
	xy_trigger 0, $9, $1, $0, UnknownScript_0x1a8041, $0, $0
	xy_trigger 2, $8, $1, $0, NewBarkTown_TeacherStopsYouTrigger2, $0, $0
	xy_trigger 2, $9, $1, $0, NewBarkTown_TeacherStopsYouTrigger1, $0, $0

	; signposts
	db 4
	signpost 8, 8, $0, MapNewBarkTownSignpost0Script
	signpost 5, 11, $0, MapNewBarkTownSignpost1Script
	signpost 3, 3, $0, MapNewBarkTownSignpost2Script
	signpost 13, 9, $0, MapNewBarkTownSignpost3Script

	; people-events
	db 3
	person_event SPRITE_TEACHER, 12, 10, $3, 0, 1, -1, -1, 0, 0, 0, TeacherScript_0x1a806f, -1
	person_event SPRITE_FISHER, 13, 16, $4, 1, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, FisherScript_0x1a809b, -1
	person_event SPRITE_SILVER, 6, 7, $9, 0, 0, -1, -1, 0, 0, 0, SilverScript_0x1a809e, EVENT_SILVER_IN_NEW_BARK_TOWN
; 0x1a83b2

