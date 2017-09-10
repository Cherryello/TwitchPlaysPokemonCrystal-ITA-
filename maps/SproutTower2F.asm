SproutTower2F_MapScriptHeader: ; 0x18477a
	; trigger count
	db 0

	; callback count
	db 0
; 0x18477c

TrainerSageNico: ; 0x18477c
	; bit/flag number
	dw $412

	; trainer group && trainer id
	db SAGE, NICO

	; text when seen
	dw SageNicoSeenText

	; text when trainer beaten
	dw SageNicoBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageNicoScript
; 0x184788

SageNicoScript: ; 0x184788
	talkaftercancel
	loadfont
	writetext UnknownText_0x1847ff
	waitbutton
	closetext
	end
; 0x184790

TrainerSageEdmond: ; 0x184790
	; bit/flag number
	dw $417

	; trainer group && trainer id
	db SAGE, EDMOND

	; text when seen
	dw SageEdmondSeenText

	; text when trainer beaten
	dw SageEdmondBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageEdmondScript
; 0x18479c

SageEdmondScript: ; 0x18479c
	talkaftercancel
	loadfont
	writetext UnknownText_0x18486f
	waitbutton
	closetext
	end
; 0x1847a4

MapSproutTower2FSignpost0Script: ; 0x1847a4
	jumptext UnknownText_0x1848c8
; 0x1847a7

ItemFragment_0x1847a7: ; 0x1847a7
	db X_ACCURACY, 1
; 0x1847a9

SageNicoSeenText: ; 0x1847a9
	text "Per quanto possia-"
	line "mo lottare dura-"
	cont "mente, la torre"
	cont "non ne risentirà."
	done
; 0x1847df

SageNicoBeatenText: ; 0x1847df
	text "Ho combattuto con"
	line "impegno, ma sono"
	cont "troppo debole."
	done
; 0x1847ff

UnknownText_0x1847ff: ; 0x1847ff
	text "Le oscillazioni"
	line "del pilastro"

	para "proteggono la"
	line "torre persino"
	cont "dai terremoti."
	done
; 0x184841

SageEdmondSeenText: ; 0x184841
	text "<...>Danza come foglie"
	line "al vento<...>"
	done
; 0x184861

SageEdmondBeatenText: ; 0x184861
	text "Ah, sono troppo"
    line "debole!"
	done
; 0x18486f

UnknownText_0x18486f: ; 0x18486f
	text "Ho provato a "
	line "imitare le"

	para "eleganti movenze"
	line "di Bellsprout"
	cont "nella lotta<...>"

	para "Ma non mi sono al-"
	line "lenato abbastanza."
	done
; 0x1848c8

UnknownText_0x1848c8: ; 0x1848c8
	text "Una statua di un"
	line "#mon<...>"

	para "Ha un aspetto"
	line "molto solenne."
	done
; 0x1848f5

SproutTower2F_MapEventHeader: ; 0x1848f5
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $4, $6, 3, GROUP_SPROUT_TOWER_1F, MAP_SPROUT_TOWER_1F
	warp_def $6, $2, 4, GROUP_SPROUT_TOWER_1F, MAP_SPROUT_TOWER_1F
	warp_def $3, $11, 5, GROUP_SPROUT_TOWER_1F, MAP_SPROUT_TOWER_1F
	warp_def $e, $a, 1, GROUP_SPROUT_TOWER_3F, MAP_SPROUT_TOWER_3F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 15, 12, $0, MapSproutTower2FSignpost0Script

	; people-events
	db 3
	person_event SPRITE_SAGE, 7, 16, $a, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 4, TrainerSageNico, -1
	person_event SPRITE_SAGE, 18, 13, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 5, TrainerSageEdmond, -1
	person_event SPRITE_POKE_BALL, 5, 7, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x1847a7, EVENT_ITEM_SPROUT_TOWER_2F_X_ACCURACY
; 0x18493b

