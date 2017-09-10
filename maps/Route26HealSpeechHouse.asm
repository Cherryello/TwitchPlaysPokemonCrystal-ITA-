Route26HealSpeechHouse_MapScriptHeader: ; 0x7b123
	; trigger count
	db 0

	; callback count
	db 0
; 0x7b125

TeacherScript_0x7b125: ; 0x7b125
	faceplayer
	loadfont
	writetext UnknownText_0x7b14d
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	special Function1060a2
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Function8c0ab
	special RestartMapMusic
	loadfont
	writetext UnknownText_0x7b18b
	waitbutton
	closetext
	end
; 0x7b14a

MapRoute26HealSpeechHouseSignpost1Script: ; 0x7b14a
	jumpstd picturebookshelf
; 0x7b14d

UnknownText_0x7b14d: ; 0x7b14d
	text "Your #MON look"
	line "a little tired."

	para "You should rest"
	line "them a while."
	done
; 0x7b18b

UnknownText_0x7b18b: ; 0x7b18b
	text "There!"

	para "Your #MON are"
	line "looking good!"

	para "Keep at it!"
	done
; 0x7b1bb

Route26HealSpeechHouse_MapEventHeader: ; 0x7b1bb
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 2, GROUP_ROUTE_26, MAP_ROUTE_26
	warp_def $7, $3, 2, GROUP_ROUTE_26, MAP_ROUTE_26

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapRoute26HealSpeechHouseSignpost1Script
	signpost 1, 1, $0, MapRoute26HealSpeechHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_TEACHER, 7, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, TeacherScript_0x7b125, -1
; 0x7b1e2

