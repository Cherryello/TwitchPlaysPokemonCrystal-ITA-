Route30BerrySpeechHouse_MapScriptHeader: ; 0x196d62
	; trigger count
	db 0

	; callback count
	db 0
; 0x196d64

PokefanMScript_0x196d64: ; 0x196d64
	faceplayer
	loadfont
	checkevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
	iftrue UnknownScript_0x196d79
	writetext UnknownText_0x196d82
	buttonsound
	verbosegiveitem GOLD_BERRY, 1
	iffalse UnknownScript_0x196d7d
	setevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
UnknownScript_0x196d79: ; 0x196d79
	writetext UnknownText_0x196dec
	waitbutton
UnknownScript_0x196d7d: ; 0x196d7d
	closetext
	end
; 0x196d7f

MapRoute30BerrySpeechHouseSignpost1Script: ; 0x196d7f
	jumpstd magazinebookshelf
; 0x196d82

UnknownText_0x196d82: ; 0x196d82
	text "Come ben sai, i"
	line "#mon mangiano"
	cont "le bacche."

	para "Beh, i miei #-"
	line "hanno riacquistato"

	para "energie mangiando"
	line "una Baccacedro."

	para "Ecco. Ne do una"
	line "anche a te!"
	done
; 0x196dec

UnknownText_0x196dec: ; 0x196dec
	text "Prova a controlla-"
	line "re gli alberi da"
	cont "frutta. Potrebbero"
	cont "avere qualche"
	cont "bacca pronta da"
	cont "cogliere!"
	done
; 0x196e20

Route30BerrySpeechHouse_MapEventHeader: ; 0x196e20
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 1, GROUP_ROUTE_30, MAP_ROUTE_30
	warp_def $7, $3, 1, GROUP_ROUTE_30, MAP_ROUTE_30

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapRoute30BerrySpeechHouseSignpost1Script
	signpost 1, 1, $0, MapRoute30BerrySpeechHouseSignpost1Script

	; people-events
	db 1
	person_event SPRITE_POKEFAN_M, 7, 6, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 0, 0, PokefanMScript_0x196d64, -1
; 0x196e47

