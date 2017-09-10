ViridianPokeCenter1FRB_MapScriptHeader: ; 0x9b68e
	; trigger count
	db 0

	; callback count
	db 0
; 0x9b690

ViridianPokeCenterRBNurseScript: ; 0x9b690
	jumpstd pokecenternurse
; 0x9b693

ViridianPokeCenter1FCooltrainerMScript: ; 0x9b693
	jumptextfaceplayer _ViridianPokeCenterText1

ViridianPokeCenter1FCooltrainerFScript: ; 0x9b6a7
	jumptextfaceplayer _ViridianPokeCenterText3
; 0x9b6aa

ViridianPokeCenter1FBugCatcherScript: ; 0x9b6aa
	jumptextfaceplayer _ViridianCityPokecenterGuyText
; 0x9b6ad

_ViridianPokeCenterText1:
	text "Si può usare il"
	line "PC là nell'angolo."

	para "Me l'hanno detto"
	line "al banco di accet-"
	cont "tazione, che gen-"
	cont "tili!"
	done

_ViridianPokeCenterText3:
	text "Troverai un Centro"
	line "#mon in ogni"
	cont "città."

	para "I servizi che of-"
	line "frono sono tutti"
	cont "gratis!"
	done

_ViridianCityPokecenterGuyText::
	text "I Centri #mon"
	line "ricaricano i tuoi"
	cont "#mon stanchi,"
	cont "feriti o esausti!"
	done

ViridianPokeCenter1FRB_LinkScript:
	jumpstd pokecenterlinkegk

ViridianPokeCenter1FRB_MapEventHeader: ; 0x9b7ef
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $5, 4, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB
	warp_def $7, $6, 4, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 5
	person_event SPRITE_NURSE, 5, 9, $6, 0, 0, -1, -1, 0, 0, 0, ViridianPokeCenterRBNurseScript, -1
	person_event SPRITE_GENTLEMAN, 9, 16, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ViridianPokeCenter1FCooltrainerMScript, -1
	person_event SPRITE_COOLTRAINER_M, 7, 10, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianPokeCenter1FCooltrainerFScript, -1
	person_event SPRITE_BUG_CATCHER, 8, 6, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianPokeCenter1FBugCatcherScript, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianPokeCenter1FRB_LinkScript, -1
; 0x9b838

