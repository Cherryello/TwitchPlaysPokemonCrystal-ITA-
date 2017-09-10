AzaleaPokeCenter1F_MapScriptHeader: ; 0x18db21
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x18db27, $0000

	; callback count
	db 0
; 0x18db27

UnknownScript_0x18db27: ; 0x18db27
	end
; 0x18db28

NurseScript_0x18db28: ; 0x18db28
	jumpstd pokecenternurse
; 0x18db2b

GentlemanScript_0x18db2b: ; 0x18db2b
	jumptextfaceplayer UnknownText_0x18db34
; 0x18db2e

FishingGuruScript_0x18db2e: ; 0x18db2e
	jumptextfaceplayer UnknownText_0x18dbee
; 0x18db31

PokefanFScript_0x18db31: ; 0x18db31
	jumptextfaceplayer UnknownText_0x18dc19
; 0x18db34

UnknownText_0x18db34: ; 0x18db34
	text "I tuoi #mon"
	line "conoscono delle"
	cont "MN?"

	para "Queste mosse si"
	line "possono usare"

	para "anche se il #-"
	line "mon é KO."
	done
; 0x18db88

UnknownText_0x18db88: ; 0x18db88
	text "Un certo Bill ha"
	line "creato il sistema"

	para "di deposito #-"
	line "mon per i PC."

	para "Il suo PC può"
	line "contenere fino a"
	cont "20 #mon per"
	cont "box."
	done
; 0x18dbee

UnknownText_0x18dbee: ; 0x18dbee
	text "Il PC di Bill può"
	line "contenere fino a"
	cont "20 #mon per"
	cont "box."
	done
; 0x18dc19

UnknownText_0x18dc19: ; 0x18dc19
	text "Conosci le"
	line "ghicocche?"

	para "Aprine una e"
	line "applicala ad un"

	para "particolare"
	line "dispositivo."

	para "In questo modo"
	line "potrai catturare"
	cont "i #mon."

	para "Prima che fossero"
	line "inventate le #"

	para "Ball, tutti usava-"
	line "no le ghicocche."
	done
; 0x18dccf

AzaleaPokeCenter1F_MapEventHeader: ; 0x18dccf
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 1, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $4, 1, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, 0, 0, -1, -1, 0, 0, 0, NurseScript_0x18db28, -1
	person_event SPRITE_GENTLEMAN, 10, 13, $4, 1, 0, -1, -1, 0, 0, 0, GentlemanScript_0x18db2b, -1
	person_event SPRITE_FISHING_GURU, 5, 10, $6, 0, 0, -1, -1, 0, 0, 0, FishingGuruScript_0x18db2e, -1
	person_event SPRITE_POKEFAN_F, 8, 5, $2, 2, 1, -1, -1, 0, 0, 0, PokefanFScript_0x18db31, -1
; 0x18dd18

