MobileTradeRoomMobile_MapScriptHeader: ; 0x19356c
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x193576, $0000
	dw UnknownScript_0x19357a, $0000

	; callback count
	db 0
; 0x193576

UnknownScript_0x193576: ; 0x193576
	priorityjump UnknownScript_0x19357b
	end
; 0x19357a

UnknownScript_0x19357a: ; 0x19357a
	end
; 0x19357b

UnknownScript_0x19357b: ; 0x19357b
	dotrigger $1
	domaptrigger GROUP_POKECENTER_2F, MAP_POKECENTER_2F, $4
	end
; 0x193582

MapMobileTradeRoomMobileSignpost0Script: ; 0x193582
	refreshscreen $0
	special Function1037c2
	writetext UnknownText_0x193591
	waitbutton
	reloadmappart
	special Function101231
	closetext
	end
; 0x193591

UnknownText_0x193591: ; 0x193591
	text "Establishing"
	line "communications<...>"
	done
; 0x1935af

MobileTradeRoomMobile_MapEventHeader: ; 0x1935af
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $4, 5, GROUP_POKECENTER_2F, MAP_POKECENTER_2F
	warp_def $7, $5, 5, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 2, 4, $1, MapMobileTradeRoomMobileSignpost0Script

	; people-events
	db 0
; 0x1935c4

