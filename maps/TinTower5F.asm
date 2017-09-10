TinTower5F_MapScriptHeader: ; 0x185aa7
	; trigger count
	db 0

	; callback count
	db 0
; 0x185aa9

ItemFragment_0x185aa9: ; 0x185aa9
	db RARE_CANDY, 1
; 0x185aab

MapTinTower5FSignpostItem0: ; 0x185aab
	dw $007e
	db FULL_RESTORE

; 0x185aae

MapTinTower5FSignpostItem1: ; 0x185aae
	dw $007f
	db CARBOS

; 0x185ab1

TinTower5F_MapEventHeader: ; 0x185ab1
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $f, $b, 2, GROUP_TIN_TOWER_6F, MAP_TIN_TOWER_6F
	warp_def $4, $2, 1, GROUP_TIN_TOWER_4F, MAP_TIN_TOWER_4F
	warp_def $e, $2, 3, GROUP_TIN_TOWER_4F, MAP_TIN_TOWER_4F
	warp_def $f, $11, 4, GROUP_TIN_TOWER_4F, MAP_TIN_TOWER_4F

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 14, 16, $7, MapTinTower5FSignpostItem0
	signpost 15, 3, $7, MapTinTower5FSignpostItem1

	; people-events
	db 1
	person_event SPRITE_POKE_BALL, 13, 13, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x185aa9, EVENT_ITEM_TIN_TOWER_5F_RARE_CANDY
; 0x185ae2

