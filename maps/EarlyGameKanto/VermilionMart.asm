VermilionMartRB_MapScriptHeader: ; 0x191f7c
	; trigger count
	db 0

	; callback count
	db 0
; 0x191f7e

VermilionMartRBClerkScript: ; 0x191f7e
	loadfont
	pokemart $0, $002c
	closetext
	end
; 0x191f85

VermilionMartRBSuperNerdScript: ; 0x191f85
	jumptextfaceplayer _VermilionMartText2
; 0x191f88

VermilionMartRBBuenaScript: ; 0x191f88
	jumptextfaceplayer _VermilionMartText3
; 0x191f8b

_VermilionMartText2: ; 0x191f8b
	text "C'é della gente"
	line "cattiva che usa i"
	cont "#mon per atti"
	cont "criminosi."

	para "Quelli del Team"
	line "Rocket trafficano"
	cont "i #mon rari."

	para "E abbandonano i"
	line "#mon che non"
	cont "ritengono utili"
	cont "o commerciabili."
	done

; 0x191fca

_VermilionMartText3: ; 0x191fca
	text "Credo ci siano"
	line "#mon buoni e"
	cont "cattivi. Tutto "
	cont "dipende da che ti-"
	cont "po é l'allenatore."
	done

; 0x191ff8

VermilionMartRB_MapEventHeader: ; 0x191ff8
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB
	warp_def $7, $3, 5, GROUP_VERMILION_CITY_RB, MAP_VERMILION_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_CLERK, 7, 5, $9, 0, 0, -1, -1, 0, 0, 0, VermilionMartRBClerkScript, -1
	person_event SPRITE_SUPER_NERD, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, VermilionMartRBSuperNerdScript, -1
	person_event SPRITE_BUENA, 10, 12, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, VermilionMartRBBuenaScript, -1
; 0x19202f

