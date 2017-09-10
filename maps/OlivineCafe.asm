OlivineCafe_MapScriptHeader: ; 0x9c8bf
	; trigger count
	db 0

	; callback count
	db 0
; 0x9c8c1

SailorScript_0x9c8c1: ; 0x9c8c1
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue UnknownScript_0x9c8d3
	writetext UnknownText_0x9c8df
	buttonsound
	verbosegiveitem TM_SOLARBEAM, 1
	setevent EVENT_GOT_HM04_STRENGTH
UnknownScript_0x9c8d3: ; 0x9c8d3
	writetext UnknownText_0x9c965
	waitbutton
	closetext
	end
; 0x9c8d9

FishingGuruScript_0x9c8d9: ; 0x9c8d9
	jumptextfaceplayer UnknownText_0x9c9c5
; 0x9c8dc

SailorScript_0x9c8dc: ; 0x9c8dc
	jumptextfaceplayer UnknownText_0x9ca09
; 0x9c8df

UnknownText_0x9c8df: ; 0x9c8df
	text "Hah! Your #MON"
	line "sure look pale!"

	para "They need to get"
	line "outside and see"
	cont "the sun!"

	para "Here, use this"
	line "and get them"
	cont "a tan!"
	done
; 0x9c965

UnknownText_0x9c965: ; 0x9c965
	text "On the sea, the"
	line "only thing you can"

	para "count on is your"
	line "own good self!"

	para "I'm so proud of my"
	line "crisp tan!"
	done
; 0x9c9c5

UnknownText_0x9c9c5: ; 0x9c9c5
	text "OLIVINE CAFE's"
	line "menu is chock full"

	para "of hearty fare for"
	line "beefy SAILORS!"
	done
; 0x9ca09

UnknownText_0x9ca09: ; 0x9ca09
	text "Whenever I roll"
	line "into this town, I"

	para "always visit the"
	line "OLIVINE CAFE."

	para "Everything on the"
	line "menu makes me feel"

	para "stronger. I can't"
	line "stop eating!"
	done
; 0x9ca8e

OlivineCafe_MapEventHeader: ; 0x9ca8e
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 7, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	warp_def $7, $3, 7, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_SAILOR, 7, 8, $8, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x9c8c1, -1
	person_event SPRITE_FISHING_GURU, 7, 11, $4, 1, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x9c8d9, -1
	person_event SPRITE_SAILOR, 10, 10, $7, 0, 0, -1, -1, 0, 0, 0, SailorScript_0x9c8dc, -1
; 0x9cac5

