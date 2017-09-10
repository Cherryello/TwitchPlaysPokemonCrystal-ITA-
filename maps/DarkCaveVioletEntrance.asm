DarkCaveVioletEntrance_MapScriptHeader: ; 0x18c68c
	; trigger count
	db 0

	; callback count
	db 0
; 0x18c68e

ItemFragment_0x18c68e: ; 0x18c68e
	db ULTRA_BALL, 1
; 0x18c690

ItemFragment_0x18c690: ; 0x18c690
	db FULL_HEAL, 1
; 0x18c692

ItemFragment_0x18c692: ; 0x18c692
	db HYPER_POTION, 1
; 0x18c694

ItemFragment_0x18c694: ; 0x18c694
	db DIRE_HIT, 1
; 0x18c696

RockScript_0x18c696: ; 0x18c696
	jumpstd smashrock

DarkCaveBoulderScript:
	jumpstd strengthboulder
; 0x18c699

MapDarkCaveVioletEntranceSignpostItem0: ; 0x18c699
	dw $009d
	db ELIXER

; 0x18c69c

DarkCaveVioletEntrance_MapEventHeader: ; 0x18c69c
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $f, $3, 3, GROUP_ROUTE_31, MAP_ROUTE_31
	warp_def $1, $11, 2, GROUP_DARK_CAVE_BLACKTHORN_ENTRANCE, MAP_DARK_CAVE_BLACKTHORN_ENTRANCE
	warp_def $21, $23, 3, GROUP_ROUTE_46, MAP_ROUTE_46

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 3, 26, $7, MapDarkCaveVioletEntranceSignpostItem0

	; people-events
	db 8
	person_event SPRITE_POKE_BALL, 12, 10, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c68e, EVENT_ITEM_DARKCAVEVOILETENTRANCE_POTION
	person_event SPRITE_BOULDER, 18, 20,  $19, 0, 0, -1, -1, 0, 0, 0, DarkCaveBoulderScript, -1
	person_event SPRITE_ROCK, 10, 31, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x18c696, -1
	person_event SPRITE_ROCK, 18, 11, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x18c696, -1
	person_event SPRITE_ROCK, 35, 40, $18, 0, 0, -1, -1, 0, 0, 0, RockScript_0x18c696, -1
	person_event SPRITE_POKE_BALL, 26, 40, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c690, EVENT_ITEM_DARKCAVEVOILETENTRANCE_FULL_HEAL
	person_event SPRITE_POKE_BALL, 13, 39, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c692, EVENT_ITEM_DARKCAVEVOILETENTRANCE_HYPER_POTION
	person_event SPRITE_POKE_BALL, 32, 34, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x18c694, EVENT_ITEM_DARKCAVEVOILETENTRANCE_DIRE_HIT
; 0x18c71e

