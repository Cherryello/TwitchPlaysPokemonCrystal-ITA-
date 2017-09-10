TohjoFalls_MapScriptHeader: ; 0x18db00
	; trigger count
	db 0

	; callback count
	db 0
; 0x18db02

ItemFragment_0x18db02: ; 0x18db02
	db MOON_STONE, 1
; 0x18db04

TohjoFalls_MapEventHeader: ; 0x18db04
	; filler
	db 0, 0

	; warps
	db 4
	warp_def 27, 13, 2, GROUP_ROUTE_27, MAP_ROUTE_27
	warp_def 27, 25, 3, GROUP_ROUTE_27, MAP_ROUTE_27
	warp_def 3, 9, 1, GROUP_TOHJO_FALLS_BACK_ROOM, MAP_TOHJO_FALLS_BACK_ROOM
	warp_def 5, 37, 1, GROUP_SUICUNE_ROOM, MAP_SUICUNE_ROOM

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_POKE_BALL, 22, 6, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18db02, EVENT_ITEM_TOHJO_FALLS_MOON_STONE
; 0x18db21

