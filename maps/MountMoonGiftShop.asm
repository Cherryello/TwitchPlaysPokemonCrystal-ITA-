MountMoonGiftShop_MapScriptHeader: ; 0x771a6
	; trigger count
	db 0

	; callback count
	db 0
; 0x771a8

GrampsScript_0x771a8: ; 0x771a8
	faceplayer
	loadfont
	pokemart $0, $001f
	closetext
	end
; 0x771b0

LassScript_0x771b0: ; 0x771b0
	jumptextfaceplayer UnknownText_0x771b3
; 0x771b3

UnknownText_0x771b3: ; 0x771b3
	text "When the sun goes"
	line "down, CLEFAIRY"
	cont "come out to play."
	done
; 0x771e7

MountMoonGiftShop_MapEventHeader: ; 0x771e7
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $3, 3, GROUP_MOUNT_MOON_SQUARE, MAP_MOUNT_MOON_SQUARE
	warp_def $7, $4, 3, GROUP_MOUNT_MOON_SQUARE, MAP_MOUNT_MOON_SQUARE

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_GRAMPS, 7, 8, $6, 0, 0, -1, 1, 0, 0, 0, GrampsScript_0x771a8, -1
	person_event SPRITE_GRAMPS, 6, 5, $9, 0, 0, -1, 2, 0, 0, 0, GrampsScript_0x771a8, -1
	person_event SPRITE_LASS, 10, 5, $5, 0, 1, -1, 1, 0, 0, 0, LassScript_0x771b0, -1
	person_event SPRITE_LASS, 8, 9, $4, 1, 0, -1, 2, 0, 0, 0, LassScript_0x771b0, -1
; 0x7722b

