OlivineLighthouse6F_MapScriptHeader: ; 0x60b8f
	; trigger count
	db 0

	; callback count
	db 1

	dbw 1, OlivineLighthouse6F_ElevatorDoorScript
; 0x60b91

OlivineLighthouse6F_ElevatorDoorScript:
	checkevent EVENT_TALKED_TO_JASMINE_ABOUT_AMPHY
	iffalse OlivineLighthouse6F_ElevatorDoorScriptReturn
	changeblock 10, 1, $16
OlivineLighthouse6F_ElevatorDoorScriptReturn:
	return

JasmineScript_0x60b91: ; 0x60b91
	faceplayer
	loadfont
	checkitem SECRETPOTION
	iftrue UnknownScript_0x60bab
	checkevent EVENT_TALKED_TO_JASMINE_ABOUT_AMPHY
	iftrue UnknownScript_0x60ba5
	writetext UnknownText_0x60c81
	buttonsound
	setevent EVENT_TALKED_TO_JASMINE_ABOUT_AMPHY
	changeblock 10, 1, $16
UnknownScript_0x60ba5: ; 0x60ba5
	writetext UnknownText_0x60d64
	waitbutton
	closetext
	end
; 0x60bab

UnknownScript_0x60bab: ; 0x60bab
	writetext UnknownText_0x60d99
	yesorno
	iffalse UnknownScript_0x60c25
	writetext UnknownText_0x60dc3
	buttonsound
	takeitem SECRETPOTION, 1
	writetext UnknownText_0x60dea
	waitbutton
	closetext
	spriteface $2, $3
	pause 15
	spriteface $3, $2
	loadfont
	playmusic MUSIC_HEAL
	writetext UnknownText_0x60e44
	pause 60
	buttonsound
	closetext
	special RestartMapMusic
	cry AMPHAROS
	special Function8c084
	pause 10
	special Function8c079
	loadfont
	writetext UnknownText_0x60f3d
	waitbutton
	closetext
	spriteface $3, $3
	pause 10
	spriteface $3, $2
	pause 10
	spriteface $3, $3
	pause 10
	spriteface $3, $2
	pause 10
	faceplayer
	loadfont
	writetext UnknownText_0x60e6c
	waitbutton
	closetext
	setevent EVENT_JASMINE_RETURNED_TO_GYM
	clearevent EVENT_JASMINE_IN_OLIVINE_GYM
	checkcode VAR_FACING
	if_equal $0, UnknownScript_0x60c17
	if_equal $3, UnknownScript_0x60c1e
	applymovement $2, MovementData_0x60c68
	disappear $2
	end
; 0x60c17

UnknownScript_0x60c17: ; 0x60c17
	applymovement $2, MovementData_0x60c70
	disappear $2
	end
; 0x60c1e

UnknownScript_0x60c1e: ; 0x60c1e
	applymovement $2, MovementData_0x60c79
	disappear $2
	end
; 0x60c25

UnknownScript_0x60c25: ; 0x60c25
	writetext UnknownText_0x60edf
	waitbutton
	closetext
	spriteface $2, $3
	pause 15
	spriteface $3, $2
	loadfont
	writetext UnknownText_0x60ef1
	waitbutton
	closetext
	end
; 0x60c39

UnknownScript_0x60c39: ; 0x60c39
	end
; 0x60c3a

MonsterScript_0x60c3a: ; 0x60c3a
	faceplayer
	loadfont
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue UnknownScript_0x60c51
	writetext UnknownText_0x60f03
	writebyte AMPHAROS
	special Functionfb841
	buttonsound
	writetext UnknownText_0x60f19
	waitbutton
	closetext
	end
; 0x60c51

UnknownScript_0x60c51: ; 0x60c51
	writetext UnknownText_0x60f3d
	cry AMPHAROS
	waitbutton
	closetext
	special Function8c084
	special Function8c079
	special Function8c084
	special Function8c079
	end
; 0x60c66

ItemFragment_0x60c66: ; 0x60c66
	db MAX_POTION, 1
; 0x60c68

MovementData_0x60c68: ; 0x60c68
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	accelerate_last
	accelerate_last
	step_end
; 0x60c70

MovementData_0x60c70: ; 0x60c70
	slow_step_down
	slow_step_right
	slow_step_right
	slow_step_right
	slow_step_up
	slow_step_right
	slow_step_right
	slow_step_right
	step_end
; 0x60c79

MovementData_0x60c79: ; 0x60c79
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	slow_step_up
	accelerate_last
	step_end
; 0x60c81

UnknownText_0x60c81: ; 0x60c81
	text "JASMINE: <...> This"
	line "#MON always"

	para "kept the sea lit"
	line "at night."

	para "<...>But it suddenly"
	line "got sick<...> It's"
	cont "gasping for air<...>"

	para "<...>I understand"
	line "that there is a"

	para "wonderful PHARMACY"
	line "in CIANWOOD<...>"

	para "But that's across"
	line "the sea<...>"

	para "And I can't leave"
	line "AMPHY unattended<...>"
	done
; 0x60d64

UnknownText_0x60d64: ; 0x60d64
	text "<...>May I ask you to"
	line "get some medicine"
	cont "for me? Please?"
	done
; 0x60d99

UnknownText_0x60d99: ; 0x60d99
	text "JASMINE: <...>Will"
	line "that medicine cure"
	cont "AMPHY?"
	done
; 0x60dc3

UnknownText_0x60dc3: ; 0x60dc3
	text "<PLAYER> handed the"
	line "SECRETPOTION to"
	cont "JASMINE."
	done
; 0x60dea

UnknownText_0x60dea: ; 0x60dea
	text "JASMINE: <...>Um,"
	line "please don't be"
	cont "offended<...>"

	para "<...>AMPHY will not"
	line "take anything from"
	cont "anyone but me<...>"
	done
; 0x60e44

UnknownText_0x60e44: ; 0x60e44
	text "JASMINE: <...>"

	para "AMPHY, how are you"
	line "feeling?"
	done
; 0x60e6c

UnknownText_0x60e6c: ; 0x60e6c
	text "JASMINE: <...>Oh, I'm"
	line "so relieved<...>"

	para "This is just so"
	line "wonderful<...>"

	para "Thank you so very,"
	line "very much."

	para "<...>I will return to"
	line "the GYM<...>"
	done
; 0x60edf

UnknownText_0x60edf: ; 0x60edf
	text "JASMINE: <...>I see<...>"
	done
; 0x60ef1

UnknownText_0x60ef1: ; 0x60ef1
	text "<...>AMPHY, hang on!"
	done
; 0x60f03

UnknownText_0x60f03: ; 0x60f03
	text "AMPHY: <...>"
	line "<...>Pa<...> paloo<...>"
	done
; 0x60f19

UnknownText_0x60f19: ; 0x60f19
	text "Its breathing is"
	line "terribly labored<...>"
	done
; 0x60f3d

UnknownText_0x60f3d: ; 0x60f3d
	text "AMPHY: Palu!"
	line "Palulu!"
	done
; 0x60f53

OlivineLighthouse6F_MapEventHeader: ; 0x60f53
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $f, $9, 1, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F
	warp_def $5, $10, 6, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F
	warp_def $5, $11, 7, GROUP_OLIVINE_LIGHTHOUSE_5F, MAP_OLIVINE_LIGHTHOUSE_5F
	warp_def $1, $a, 1, GROUP_OLIVINE_LIGHTHOUSE_ELEVATOR, MAP_OLIVINE_LIGHTHOUSE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_JASMINE, 12, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, JasmineScript_0x60b91, EVENT_JASMINE_IN_LIGHTHOUSE
	person_event SPRITE_MONSTER, 12, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, MonsterScript_0x60c3a, -1
	person_event SPRITE_POKE_BALL, 8, 7, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x60c66, EVENT_ITEM_OLIVINE_LIGHTHOUSE_6F_SUPER_POTION
; 0x60f8f

