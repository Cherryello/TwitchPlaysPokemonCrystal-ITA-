CeruleanGymBadgeSpeechHouseRB_MapScriptHeader: ; 0x188000
	; trigger count
	db 0

	; callback count
	db 0
; 0x188002

GymBadgeSpeechHouseRBScript: ; 0x188002
	faceplayer
	loadfont
	writetext _CeruleanHouse2Text_74e77
.loop
	buttonsound
	writetext _CeruleanHouse2Text_74e7c
	loadmenudata .MenuDataHeader
	interpretmenu2
	writebackup
	iffalse .quit
	if_equal 1, .boulder
	if_equal 2, .cascade
	if_equal 3, .thunder
	if_equal 4, .rainbow
	if_equal 5, .soul
	if_equal 6, .marsh
	if_equal 7, .volcano
	if_equal 8, .earth
.quit
	writetext _CeruleanHouse2Text_74e81
	waitbutton
	closetext
	end

.boulder
	writetext _CeruleanHouse2Text_74e96
	jump .loop
.cascade
	writetext _CeruleanHouse2Text_74e9b
	jump .loop
.thunder
	writetext _CeruleanHouse2Text_74ea0
	jump .loop
.rainbow
	writetext _CeruleanHouse2Text_74ea5
	jump .loop
.soul
	writetext _CeruleanHouse2Text_74eaa
	jump .loop
.marsh
	writetext _CeruleanHouse2Text_74eaf
	jump .loop
.volcano
	writetext _CeruleanHouse2Text_74eb4
	jump .loop
.earth
	writetext _CeruleanHouse2Text_74eb9
	jump .loop

.MenuDataHeader
	db $40 ; flags
	db 00, 00 ; start coords
	db 17, 15 ; end coords
	dw .MenuData2
	db 1 ; default option
.MenuData2
	db $a0 ; flags
	db 8
	db "Med. Sasso@"
	db "Med. Cascata@"
	db "Med. Tuono@"
	db "Med. Arcobal.@"
	db "Med. Anima@"
	db "Med. Palude@"
	db "Med. Vulcano@"
	db "Med. Terra@"

_CeruleanHouse2Text_74e77:
	text "Solo gli allenato-"
	line "ri più abili pos-"
	cont "seggono le"
	cont "medaglie."

	para "Vedo che ne hai"
	line "almeno una."

	para "Queste medaglie"
	line "custodiscono"
	cont "grandi segreti!"
	done

_CeruleanHouse2Text_74e7c:
	text "Ora dimmi<...>"

	para "Quale delle 8"
	line "medaglie vuoi che"
	cont "ti descriva?"

	para ""
	done

_CeruleanHouse2Text_74e81:
	text "Vieni a trovarmi"
	line "quando desideri."
	done

_CeruleanHouse2Text_74e96:
	text "L'Attacco di tutti"
	line "i #mon aumenta"
	cont "un po'."

	para "Inoltre potrai"
	line "usare Flash anche"
	cont "fuori dalla lotta."
	done

_CeruleanHouse2Text_74e9b:
	text "I #mon fino al"
	line "livello 30 ti"
	cont "obbediranno."

	para "Oltre quel livello"
	line "potrebbero essere"
	cont "incontrollabili!"

	para "Inoltre, potrai"
	line "usare Taglio anche"
	cont "fuori dalla lotta."
	done

_CeruleanHouse2Text_74ea0:
	text "La Velocità di"
	line "tutti i #mon"
	cont "aumenta un po'."

	para "Inoltre, potrai"
	line "usare Volo anche"
	cont "fuori dalla lotta."
	done

_CeruleanHouse2Text_74ea5:
	text "I #mon fino al"
	line "livello 50 ti"
	cont "obbediranno."

	para "Oltre quel livello"
	line "potrebbero essere"
	cont "incontrollabili!"

	para "Inoltre, potrai"
	line "usare Forza anche"
	cont "fuori dalla lotta."
	done

_CeruleanHouse2Text_74eaa:
	text "La Difesa di tutti"
	line "i #mon aumenta"
	cont "un po'."

	para "Inoltre, potrai"
	line "usare Surf anche"
	cont "fuori dalla lotta."
	done

_CeruleanHouse2Text_74eaf:
	text "I #mon fino al"
	line "livello 70 ti"
	cont "obbediranno."

	para "Oltre tale livello"
	line "potrebbero essere"
	cont "incontrollabili!"
	done

_CeruleanHouse2Text_74eb4:
	text "L'Attacco Speciale"
	line "di tutti i #mon"
	cont "aumenta un po'."
	done

_CeruleanHouse2Text_74eb9:
	text "Tutti i tuoi"
	line "#mon ti obbedi-"
	cont "ranno!"
	done

CeruleanGymBadgeSpeechHouseRB_MapEventHeader: ; 0x18802b
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $2, 1, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def $7, $3, 1, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB
	warp_def $0, $3, 6, GROUP_CERULEAN_CITY_RB, MAP_CERULEAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_POKEFAN_M, 7, 6, $9, 0, 0, -1, -1, 0, 0, 0, GymBadgeSpeechHouseRBScript, -1
; 0x188048

