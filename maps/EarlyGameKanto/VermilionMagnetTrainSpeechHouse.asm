VermilionMagnetTrainSpeechHouseRB_MapScriptHeader: ; 0x191eb5
	; trigger count
	db 0

	; callback count
	db 0
; 0x191eb7

VermilionMagnetTrainSpeechHousePokefanFScript: ; 0x191eb7
	jumptextfaceplayer _VermilionHouse1Text1
; 0x191eba

VermilionMagnetTrainSpeechHouseRBPidgeyScript: ; 0x191eba
	faceplayer
	loadfont
	writetext _VermilionHouse1Text2
	cry PIDGEY
	waitbutton
	closetext
	end

VermilionMagnetTrainSpeechHouseRBPaperScript:
	jumptext _VermilionHouse1Text3

MapVermilionMagnetTrainSpeechHouseRBSignpost1Script: ; 0x191ebd
	jumpstd picturebookshelf
; 0x191ec0

_VermilionHouse1Text1:
	text "Puoi usare i mes-"
	line "saggi per mandare"
	para "un testo a qual-"
	line "cuno dandolo a un"
	cont "#mon e scam-"
	para "biandolo."
	line "Tra poco farò vo-"
	para "lare a Zafferano-"
	line "poli, a nord, il"
	cont "mio Pidgey per"
	cont "mandare un messag-"
	cont "gio!"
	done

_VermilionHouse1Text2:
	text "Pidgey: Kurukkoo!"
	done

_VermilionHouse1Text3:
	text "Caro Pippi,"
	line "spero di vederti"
	cont "presto."

	para "Ho saputo che Zaf-"
	line "feranopoli ha pro-"
	cont "blemi con il Team"
	cont "Rocket."

	para "Aranciopoli sembra"
	line "salva per ora."
	done

VermilionMagnetTrainSpeechHouseRB_MapEventHeader: ; 0x191f48
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 4, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB
	warp_def $7, $3, 4, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, $0, MapVermilionMagnetTrainSpeechHouseRBSignpost1Script
	signpost 1, 1, $0, MapVermilionMagnetTrainSpeechHouseRBSignpost1Script

	; people-events
	db 3
	person_event SPRITE_POKEFAN_F, 7, 6, $8, 0, 0, -1, -1, 0, 0, 0, VermilionMagnetTrainSpeechHousePokefanFScript, -1
	person_event SPRITE_BIRD, 7, 4, $2, 1, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, VermilionMagnetTrainSpeechHouseRBPidgeyScript, -1
	person_event SPRITE_PAPER, 7, 4, $1, 0, 0, -1, -1, 0, 0, 0, VermilionMagnetTrainSpeechHouseRBPaperScript, -1
; 0x191f7c

