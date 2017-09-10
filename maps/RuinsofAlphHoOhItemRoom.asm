RuinsofAlphHoOhItemRoom_MapScriptHeader: ; 0x59916
	; trigger count
	db 0

	; callback count
	db 0
; 0x59918

ItemFragment_0x59918: ; 0x59918
	db SACRED_ASH, 1
; 0x5991a

ItemFragment_0x5991a: ; 0x5991a
	db MYSTERYBERRY, 1
; 0x5991c

ItemFragment_0x5991c: ; 0x5991c
	db REVIVAL_HERB, 1
; 0x5991e

ItemFragment_0x5991e: ; 0x5991e
	db CHARCOAL, 1
; 0x59920

MapRuinsofAlphHoOhItemRoomSignpost1Script: ; 0x59920
	jumptext UnknownText_0x59923
; 0x59923

UnknownText_0x59923: ; 0x59923
	text "È il disegno di"
	line "un antico #mon."
	done
; 0x59948

RuinsofAlphHoOhItemRoom_MapEventHeader: ; 0x59948
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $9, $3, 5, GROUP_RUINS_OF_ALPH_HO_OH_CHAMBER, MAP_RUINS_OF_ALPH_HO_OH_CHAMBER
	warp_def $9, $4, 5, GROUP_RUINS_OF_ALPH_HO_OH_CHAMBER, MAP_RUINS_OF_ALPH_HO_OH_CHAMBER
	warp_def $1, $3, 1, GROUP_RUINS_OF_ALPH_HO_OH_WORD_ROOM, MAP_RUINS_OF_ALPH_HO_OH_WORD_ROOM
	warp_def $1, $4, 2, GROUP_RUINS_OF_ALPH_HO_OH_WORD_ROOM, MAP_RUINS_OF_ALPH_HO_OH_WORD_ROOM

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 2, $0, MapRuinsofAlphHoOhItemRoomSignpost1Script
	signpost 1, 5, $0, MapRuinsofAlphHoOhItemRoomSignpost1Script

	; people-events
	db 4
	person_event SPRITE_POKE_BALL, 10, 6, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x59918, EVENT_PICKED_UP_GOLD_BERRY_FROM_HO_OH_ITEM_ROOM
	person_event SPRITE_POKE_BALL, 10, 9, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5991a, EVENT_PICKED_UP_MYSTERYBERRY_FROM_HO_OH_ITEM_ROOM
	person_event SPRITE_POKE_BALL, 8, 6, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5991c, EVENT_PICKED_UP_REVIVAL_HERB_FROM_HO_OH_ITEM_ROOM
	person_event SPRITE_POKE_BALL, 8, 9, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5991e, EVENT_PICKED_UP_CHARCOAL_FROM_HO_OH_ITEM_ROOM
; 0x599a0

