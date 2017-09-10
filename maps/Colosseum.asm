Colosseum_MapScriptHeader: ; 0x19345d
ColosseumKanto_MapScriptHeader: ; 0x19345d
	; trigger count
	db 3

	; triggers
	dw UnknownScript_0x193471, $0000
	dw UnknownScript_0x193475, $0000
	dw UnknownScript_0x193476, $0000

	; callback count
	db 2

	; callbacks

	dbw 2, UnknownScript_0x193477

	dbw 5, UnknownScript_0x193487
; 0x193471

UnknownScript_0x193471: ; 0x193471
	priorityjump UnknownScript_0x19348c
	end
; 0x193475

UnknownScript_0x193475: ; 0x193475
	end
; 0x193476

UnknownScript_0x193476: ; 0x193476
	end
; 0x193477

UnknownScript_0x193477: ; 0x193477
	special Function29f47
	iffalse UnknownScript_0x193482
	disappear $3
	appear $2
	return
; 0x193482

UnknownScript_0x193482: ; 0x193482
	disappear $2
	appear $3
	return
; 0x193487

UnknownScript_0x193487: ; 0x193487
	domaptrigger GROUP_POKECENTER_2F, MAP_POKECENTER_2F, $2
	return
; 0x19348c

UnknownScript_0x19348c: ; 0x19348c
	dotrigger $1
	domaptrigger GROUP_POKECENTER_2F, MAP_POKECENTER_2F, $2
	end
; 0x193493

MapColosseumSignpost1Script: ; 0x193493
	special Function29ed9
	newloadmap $f8
	end
; 0x193499

ChrisScript_0x193499: ; 0x193499
	loadfont
	writetext UnknownText_0x1934a0
	waitbutton
	closetext
	end
; 0x1934a0

UnknownText_0x1934a0: ; 0x1934a0
	text "Your friend is"
	line "ready."
	done
; 0x1934b7

Colosseum_MapEventHeader: ; 0x1934b7
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $4, 3, GROUP_POKECENTER_2F, MAP_POKECENTER_2F
	warp_def $7, $5, 3, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 4, 4, $3, MapColosseumSignpost1Script
	signpost 4, 5, $4, MapColosseumSignpost1Script

	; people-events
	db 2
	person_event SPRITE_RUST, 8, 7, $9, 0, 0, -1, -1, 0, 0, 0, ChrisScript_0x193499, EVENT_000_STD
	person_event SPRITE_RUST, 8, 10, $8, 0, 0, -1, -1, 0, 0, 0, ChrisScript_0x193499, EVENT_001_STD
; 0x1934eb

ColosseumKanto_MapEventHeader: ; 0x1934b7
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $4, 3, GROUP_POKECENTER_2F_KANTO, MAP_POKECENTER_2F_KANTO
	warp_def $7, $5, 3, GROUP_POKECENTER_2F_KANTO, MAP_POKECENTER_2F_KANTO

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 4, 4, $3, MapColosseumSignpost1Script
	signpost 4, 5, $4, MapColosseumSignpost1Script

	; people-events
	db 2
	person_event SPRITE_RUST, 8, 7, $9, 0, 0, -1, -1, 0, 0, 0, ChrisScript_0x193499, EVENT_000_STD
	person_event SPRITE_RUST, 8, 10, $8, 0, 0, -1, -1, 0, 0, 0, ChrisScript_0x193499, EVENT_001_STD
; 0x1934eb

