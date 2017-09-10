PewterNidoranSpeechHouse_MapScriptHeader: ; 0x1a2805
	; trigger count
	db 0

	; callback count
	db 0
; 0x1a2807

SuperNerdScript_0x1a2807: ; 0x1a2807
	jumptextfaceplayer UnknownText_0x1a2814
; 0x1a280a

GrowlitheScript_0x1a280a: ; 0x1a280a
	loadfont
	writetext UnknownText_0x1a2825
	cry NIDORAN_M
	waitbutton
	closetext
	end
; 0x1a2814

UnknownText_0x1a2814: ; 0x1a2814
	text "NIDORAN, shake!"
	done
; 0x1a2825

UnknownText_0x1a2825: ; 0x1a2825
	text "NIDORAN: Gau gau!"
	done
; 0x1a2838

PewterNidoranSpeechHouse_MapEventHeader: ; 0x1a2838
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_PEWTER_CITY, MAP_PEWTER_CITY
	warp_def $7, $3, 1, GROUP_PEWTER_CITY, MAP_PEWTER_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	person_event SPRITE_SUPER_NERD, 9, 7, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, SuperNerdScript_0x1a2807, -1
	person_event SPRITE_GROWLITHE, 9, 8, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, GrowlitheScript_0x1a280a, -1
; 0x1a2862

