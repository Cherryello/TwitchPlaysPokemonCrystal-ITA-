MountMortar1FOutside_MapScriptHeader: ; 0x7ddf4
	; trigger count
	db 0

	; callback count
	db 0
; 0x7ddf6

ItemFragment_0x7ddf6: ; 0x7ddf6
	db ETHER, 1
; 0x7ddf8

ItemFragment_0x7ddf8: ; 0x7ddf8
	db REVIVE, 1
; 0x7ddfa

MapMountMortar1FOutsideSignpostItem0: ; 0x7ddfa
	dw $0090
	db HYPER_POTION

; 0x7ddfd

MountMortar1FOutside_MapEventHeader: ; 0x7ddfd
	; filler
	db 0, 0

	; warps
	db 9
	warp_def $21, $3, 3, GROUP_ROUTE_42, MAP_ROUTE_42
	warp_def $21, $11, 4, GROUP_ROUTE_42, MAP_ROUTE_42
	warp_def $21, $25, 5, GROUP_ROUTE_42, MAP_ROUTE_42
	warp_def $5, $11, 1, GROUP_MOUNT_MORTAR_2F_INSIDE, MAP_MOUNT_MORTAR_2F_INSIDE
	warp_def $15, $b, 1, GROUP_MOUNT_MORTAR_1F_INSIDE, MAP_MOUNT_MORTAR_1F_INSIDE
	warp_def $15, $1d, 2, GROUP_MOUNT_MORTAR_1F_INSIDE, MAP_MOUNT_MORTAR_1F_INSIDE
	warp_def $1d, $11, 2, GROUP_MOUNT_MORTAR_B1F, MAP_MOUNT_MORTAR_B1F
	warp_def $d, $7, 3, GROUP_MOUNT_MORTAR_1F_INSIDE, MAP_MOUNT_MORTAR_1F_INSIDE
	warp_def $d, $21, 4, GROUP_MOUNT_MORTAR_1F_INSIDE, MAP_MOUNT_MORTAR_1F_INSIDE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 22, 25, $7, MapMountMortar1FOutsideSignpostItem0

	; people-events
	db 2
	person_event SPRITE_POKE_BALL, 19, 17, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7ddf6, EVENT_ITEM_MT_MORTAR_1F_OUTSIDE_ETHER
	person_event SPRITE_POKE_BALL, 22, 35, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x7ddf8, EVENT_ITEM_MT_MORTAR_1F_OUTSIDE_REVIVE
; 0x7de4f

