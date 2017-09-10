SproutTower3F_MapScriptHeader: ; 0x18493b
	; trigger count
	db 2

	; triggers
	dw UnknownScript_0x184945, $0000
	dw UnknownScript_0x184946, $0000

	; callback count
	db 0
; 0x184945

UnknownScript_0x184945: ; 0x184945
	end
; 0x184946

UnknownScript_0x184946: ; 0x184946
	end
; 0x184947

UnknownScript_0x184947: ; 0x184947
	spriteface $0, $1
	showemote $0, $0, 15
	special Functionc48f
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	applymovement $0, MovementData_0x184a1d
	applymovement $8, MovementData_0x184a22
	loadfont
	writetext UnknownText_0x184a27
	waitbutton
	closetext
	showemote $0, $8, 15
	spriteface $8, $0
	pause 15
	applymovement $8, MovementData_0x184a24
	playmusic MUSIC_RIVAL_ENCOUNTER
	loadfont
	writetext UnknownText_0x184aec
	waitbutton
	closetext
	spriteface $8, $1
	loadfont
	writetext UnknownText_0x184bc8
	pause 15
	closetext
	playsound SFX_WARP_TO
	special Special_FadeToBlack
	special Functiond91
	disappear $8
	waitsfx
	special Function8c0ab
	dotrigger $1
	special RestartMapMusic
	end
; 0x1849a6

SageLiScript: ; 0x1849a6
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM02_FLY
	iftrue UnknownScript_0x1849d1
	writetext SageLiSeenText
	waitbutton
	closetext
	winlosstext SageLiBeatenText, $0000
	loadtrainer SAGE, LI
	startbattle
	returnafterbattle
	loadfont
	writetext UnknownText_0x184cc2
	buttonsound
	verbosegiveitem HM_FLY, 1
	setevent EVENT_GOT_HM02_FLY
	setevent EVENT_BEAT_SAGE_LI
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse .skip_trigger
	domaptrigger GROUP_ROUTE_32, MAP_ROUTE_32, $1
.skip_trigger
	writetext UnknownText_0x184d13
	waitbutton
	closetext
	end
; 0x1849d1

UnknownScript_0x1849d1: ; 0x1849d1
	writetext UnknownText_0x184d88
	waitbutton
	closetext
	end
; 0x1849d7

TrainerSageJin: ; 0x1849d7
	; bit/flag number
	dw $413

	; trainer group && trainer id
	db SAGE, JIN

	; text when seen
	dw SageJinSeenText

	; text when trainer beaten
	dw SageJinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageJinScript
; 0x1849e3

SageJinScript: ; 0x1849e3
	talkaftercancel
	loadfont
	writetext UnknownText_0x184dfa
	waitbutton
	closetext
	end
; 0x1849eb

TrainerSageTroy: ; 0x1849eb
	; bit/flag number
	dw $414

	; trainer group && trainer id
	db SAGE, TROY

	; text when seen
	dw SageTroySeenText

	; text when trainer beaten
	dw SageTroyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageTroyScript
; 0x1849f7

SageTroyScript: ; 0x1849f7
	talkaftercancel
	loadfont
	writetext UnknownText_0x184ea4
	waitbutton
	closetext
	end
; 0x1849ff

TrainerSageNeal: ; 0x1849ff
	; bit/flag number
	dw $418

	; trainer group && trainer id
	db SAGE, NEAL

	; text when seen
	dw SageNealSeenText

	; text when trainer beaten
	dw SageNealBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw SageNealScript
; 0x184a0b

SageNealScript: ; 0x184a0b
	talkaftercancel
	loadfont
	writetext UnknownText_0x184f12
	waitbutton
	closetext
	end
; 0x184a13

MapSproutTower3FSignpost3Script: ; 0x184a13
	jumptext UnknownText_0x184f37
; 0x184a16

MapSproutTower3FSignpost5Script: ; 0x184a16
	jumptext UnknownText_0x184f61
; 0x184a19

ItemFragment_0x184a19: ; 0x184a19
	db SUPER_POTION, 1
; 0x184a1b

ItemFragment_0x184a1b: ; 0x184a1b
	db ESCAPE_ROPE, 1
; 0x184a1d

MovementData_0x184a1d: ; 0x184a1d
	step_up
	step_up
	step_up
	step_up
	step_end
; 0x184a22

MovementData_0x184a22: ; 0x184a22
	step_up
	step_end
; 0x184a24

MovementData_0x184a24: ; 0x184a24
	step_right
	step_down
	step_end
; 0x184a27

UnknownText_0x184a27: ; 0x184a27
	text "Anziano: Sei un"
	line "ottimo allenatore,"
	cont "é indubbio."

	para "Come promesso,"
	line "ecco la tua MN."

	para "Ma lascia che te"
	line "lo dica: dovresti"

	para "trattare meglio i"
	line "tuoi #mon."

	para "Il tuo modo di"
	line "lottare é decisa-"
	cont "mente troppo duro."

	para "I #mon non sono"
	line "strumenti di"
	cont "guerra<...>"
	done
; 0x184aec

UnknownText_0x184aec: ; 0x184aec
	text "<...>"
	line "<...>Mah!"

	para "Dice di essere"
	line "l'<``>Anziano<''>, ma é"
	cont "solo un debole."

	para "È logico in fondo,"
	line "no?"

	para "Non avrei potuto"
	line "perdere contro uno"
	cont "che dice un sacco"
	cont "di sciocchezze sul"
	cont "dover trattare"
	cont "bene i #mon."

	para "A me interessano"
	line "solo i #mon"
	cont "forti e vincenti."

	para "Quelli deboli mi"
	line "lasciano indiffe-"
	cont "rente."
	done
; 0x184bc8

UnknownText_0x184bc8: ; 0x184bc8
	text "<RIVAL> usa una"
	line "Fune di fuga!"
	done
; 0x184be0

SageLiSeenText: ; 0x184be0
	text "Sono felice che tu"
	line "sia qui."

	para "La Torre Sprout é"
	line "un luogo di alle-"
	cont "namento."

	para "Persone e #mon"
	line "mettono alla prova"

	para "il proprio legame,"
	line "costruendo un ra-"
	cont "dioso futuro."

	para "Io sono la prova"
	line "finale."

	para "Fammi vedere"
	line "quanto é forte il"

	para "legame tra te e i"
	line "tuoi #mon!"
	done
; 0x184cb2

SageLiBeatenText: ; 0x184cb2
	text "Ah, eccellente!"
	done
; 0x184cc2

UnknownText_0x184cc2: ; 0x184cc2
	text "Tu e i tuoi #-"
	line "mon non avrete"

	para "problemi ad usare"
	line "questa mossa."

	para "Prendi questa MN,"
	line "é Volo."
	done
; 0x184d13

UnknownText_0x184d13: ; 0x184d13
	text "La MN Volo può"
	line "portarti in qua-"
	cont "lunque città che"
	cont "hai già visitato."

	para "Ma per usarla"
	line "fuori dalla lotta,"

	para "ti serve la"
	line "medaglia della"
	cont "palestra di"
	cont "Violapoli."
	done
; 0x184d88

UnknownText_0x184d88: ; 0x184d88
	text "Spero che questo"
	line "viaggio ti farà"
	cont "crescere."
	done
; 0x184db6

SageJinSeenText: ; 0x184db6
	text "Mi alleno per tro-"
	line "vare nei #mon"
	cont "l'illuminazione!"
	done
; 0x184dde

SageJinBeatenText: ; 0x184dde
	text "Il mio allenamen-"
	line "to é incompleto<...>"
	done
; 0x184dfa

UnknownText_0x184dfa: ; 0x184dfa
	text "L'allenatore si"
	line "rafforza con i"
	cont "suoi #mon."

	para "Anzi, sono i"
	line "#mon che si"

	para "rafforzano con"
	line "l'allenatore."
	done
; 0x184e60

SageTroySeenText: ; 0x184e60
	text "Fammi vedere la"
	line "fiducia che hai"
	cont "nei tuoi #mon."
	done
; 0x184e8a

SageTroyBeatenText: ; 0x184e8a
	text "Sì, hai davvero"
	line "fiducia in loro!"
	done
; 0x184ea4

UnknownText_0x184ea4: ; 0x184ea4
	text "Una leggenda dice"
	line "che un Victreebel"
	cont "risieda in questa"
	cont "torre."

	para "Sta aspettando che"
	line "qualcuno abbastan-"
	cont "za valoroso si"
	cont "riveli."
	done
; 0x184ec1

SageNealSeenText: ; 0x184ec1
	text "La luce dell'MN"
	line "dell'anziano"
	cont "illumina anche il"
	cont "buio più fitto."
	done
; 0x184ef3

SageNealBeatenText: ; 0x184ef3
	text "Oh! La mia mente"
	line "era annebbiata!"
	done
; 0x184f12

UnknownText_0x184f12: ; 0x184f12
	text "Che il tuo cammino"
	line "non sia ostacolato"
	cont "da alcun limite."
	done
; 0x184f37

UnknownText_0x184f37: ; 0x184f37
	text "È un imponente"
	line "dipinto di un"
	cont "Bellsprout."
	done
; 0x184f61

UnknownText_0x184f61: ; 0x184f61
	text "Una statua di un"
	line "#mon<...>"

	para "Ha un aspetto"
	line "molto solenne."
	done
; 0x184f8e

SproutTower3F_MapEventHeader: ; 0x184f8e
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $e, $a, 4, GROUP_SPROUT_TOWER_2F, MAP_SPROUT_TOWER_2F

	; xy triggers
	db 1
	xy_trigger 0, $9, $b, $0, UnknownScript_0x184947, $0, $0

	; signposts
	db 6
	signpost 1, 8, $0, MapSproutTower3FSignpost5Script
	signpost 1, 11, $0, MapSproutTower3FSignpost5Script
	signpost 0, 9, $0, MapSproutTower3FSignpost3Script
	signpost 0, 10, $0, MapSproutTower3FSignpost3Script
	signpost 15, 5, $0, MapSproutTower3FSignpost5Script
	signpost 15, 14, $0, MapSproutTower3FSignpost5Script

	; people-events
	db 7
	person_event SPRITE_SAGE, 17, 12, $9, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSageJin, -1
	person_event SPRITE_SAGE, 12, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 2, TrainerSageTroy, -1
	person_event SPRITE_SAGE, 6, 14, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SageLiScript, -1
	person_event SPRITE_SAGE, 15, 15, $8, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 2, 3, TrainerSageNeal, -1
	person_event SPRITE_POKE_BALL, 18, 10, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x184a19, EVENT_ITEM_SPROUT_TOWER_3F_POTION
	person_event SPRITE_POKE_BALL, 5, 18, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x184a1b, EVENT_ITEM_SPROUT_TOWER_3F_ESCAPE_ROPE
	person_event SPRITE_SILVER, 8, 14, $7, 0, 0, -1, -1, 0, 0, 0, ObjectEvent, EVENT_SILVER_IN_SPROUT_TOWER
; 0x18501a

