WhirlIslandLugiaChamber_MapScriptHeader: ; 0x18c4ff
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks

	dbw 2, UnknownScript_0x18c504
; 0x18c504

UnknownScript_0x18c504: ; 0x18c504
	checkevent EVENT_FOUGHT_LUGIA
	iftrue UnknownScript_0x18c515
	checkitem SILVER_WING
	iftrue UnknownScript_0x18c512
	jump UnknownScript_0x18c515
; 0x18c512

UnknownScript_0x18c512: ; 0x18c512
	appear $2
	return
; 0x18c515

UnknownScript_0x18c515: ; 0x18c515
	disappear $2
	return
; 0x18c518

LugiaScript_0x18c518: ; 0x18c518
	faceplayer
	loadfont
	writetext UnknownText_0x18c531
	cry LUGIA
	pause 15
	closetext
	writecode VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadpokedata LUGIA, 100
	startbattle
	writebyte LUGIA
	special SpecialMonCheck
	iffalse DontKillLugia
	setevent EVENT_FOUGHT_LUGIA
	disappear $2
	returnafterbattle
	end

DontKillLugia:
	returnafterbattle
	end
; 0x18c531

UnknownText_0x18c531: ; 0x18c531
	text "Gyaaas!"
	done
; 0x18c53a

WhirlIslandLugiaChamber_MapEventHeader: ; 0x18c53a
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $d, $9, 3, GROUP_WHIRL_ISLAND_B2F, MAP_WHIRL_ISLAND_B2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_LUGIA, 9, 13, $16, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, LugiaScript_0x18c518, EVENT_LUGIA_IS_HERE
; 0x18c552

