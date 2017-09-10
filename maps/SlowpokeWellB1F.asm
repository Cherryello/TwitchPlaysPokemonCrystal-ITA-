SlowpokeWellB1F_MapScriptHeader: ; 0x5a5d3
	; trigger count
	db 0

	; callback count
	db 0
; 0x5a5d5

KurtScript_0x5a5d5: ; 0x5a5d5
	jumptextfaceplayer UnknownText_0x5a6b5
; 0x5a5d8

TrainerGruntM29: ; 0x5a5d8
	; bit/flag number
	dw $50d

	; trainer group && trainer id
	db GRUNTM, 29

	; text when seen
	dw GruntM29SeenText

	; text when trainer beaten
	dw GruntM29BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM29Script
; 0x5a5e4

GruntM29Script: ; 0x5a5e4
	talkaftercancel
	loadfont
	writetext TrainerGruntM29SlowpokeProfitText
	waitbutton
	closetext
	end
; 0x5a5ec

TrainerGruntM1: ; 0x5a5ec
	; bit/flag number
	dw $4f1

	; trainer group && trainer id
	db GRUNTM, 1

	; text when seen
	dw GruntM1SeenText

	; text when trainer beaten
	dw GruntM1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM1Script
; 0x5a5f8

GruntM1Script: ; 0x5a5f8
	loadfont
	writetext TrainerGruntM1WhenTalkText
	waitbutton
	closetext
	special Special_FadeToBlack
	special Functiond91
	disappear $2
	disappear $3
	disappear $4
	disappear $5
	pause 15
	special Function8c0ab
	disappear $8
	moveperson $8, $b, $6
	appear $8
	applymovement $8, KurtSlowpokeWellVictoryMovementData
	spriteface $0, $3
	loadfont
	writetext KurtLeaveSlowpokeWellText
	waitbutton
	closetext
	setevent EVENT_CLEARED_SLOWPOKE_WELL
	variablesprite $6, $4
	domaptrigger GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN, $1
	clearevent EVENT_APPRENTICE_IN_ILEX_FOREST
	clearevent EVENT_ILEX_FOREST_FARFETCHD
	setevent EVENT_FARFETCHD_IN_CHARCOAL_KILN
	setevent EVENT_APPRENTICE_IN_CHARCOAL_KILN
	setevent EVENT_SLOWPOKE_IN_THE_WELL
	setevent EVENT_KURT_IN_HIS_HOUSE_3
	clearevent EVENT_SLOWPOKE_IN_AZALEA_TOWN
	clearevent EVENT_SLOWPOKE_IN_KURTS_HOUSE
	clearevent EVENT_KURT_IN_HIS_HOUSE_1
	special Function8c084
	special HealParty
	pause 15
	warp GROUP_KURTS_HOUSE, MAP_KURTS_HOUSE, $3, $3
	end
; 0x5a659

TrainerGruntM2: ; 0x5a659
	; bit/flag number
	dw $4f2

	; trainer group && trainer id
	db GRUNTM, 2

	; text when seen
	dw GruntM2SeenText

	; text when trainer beaten
	dw GruntM2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM2Script
; 0x5a665

GruntM2Script: ; 0x5a665
	talkaftercancel
	loadfont
	writetext UnknownText_0x5aaf2
	waitbutton
	closetext
	end
; 0x5a66d

TrainerGruntF1: ; 0x5a66d
	; bit/flag number
	dw $510

	; trainer group && trainer id
	db GRUNTF, 1

	; text when seen
	dw GruntF1SeenText

	; text when trainer beaten
	dw GruntF1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntF1Script
; 0x5a679

GruntF1Script: ; 0x5a679
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ab8d
	waitbutton
	closetext
	end
; 0x5a681

SlowpokeScript_0x5a681: ; 0x5a681
	faceplayer
	loadfont
	cry SLOWPOKE
	writetext UnknownText_0x5abcb
	yesorno
	iftrue UnknownScript_0x5a68f
	closetext
	end
; 0x5a68f

UnknownScript_0x5a68f: ; 0x5a68f
	writetext UnknownText_0x5ac09
	waitbutton
	closetext
	end
; 0x5a695

SlowpokeScript_0x5a695: ; 0x5a695
	faceplayer
	loadfont
	writetext UnknownText_0x5ac61
	cry SLOWPOKE
	waitbutton
	closetext
	end
; 0x5a6a0

BoulderScript_0x5a6a0: ; 0x5a6a0
	jumpstd strengthboulder
; 0x5a6a3

ItemFragment_0x5a6a3: ; 0x5a6a3
	db HYPER_POTION, 1
; 0x5a6a5

KurtSlowpokeWellVictoryMovementData: ; 0x5a6a5
	step_left
	step_left
	step_left
	step_left
	step_up
	accelerate_last
	accelerate_last
	accelerate_last
	step_left
	step_up
	step_up
	accelerate_last
	accelerate_last
	accelerate_last
	turn_head_left
	step_end
; 0x5a6b5

UnknownText_0x5a6b5: ; 0x5a6b5
	text "Franz: Ehi, tu,"
	line "<PLAYER>!"

	para "La guardia lassù"
	line "se l'é filata"
	cont "quando ho iniziato"
	cont "a urlargli contro."

	para "Ma poi sono caduto"
	line "giù nel pozzo."

	para "Sono caduto di"
	line "schiena e non"
	cont "riesco più a"
	cont "muovermi<...>"

	para "Razza di cani! Se"
	line "fossi in forma, i"

	para "miei #mon li"
	line "farebbero a"
	cont "fettine!"

	para "Ah, non ce la"
	line "faccio."

	para "<PLAYER>, lotta"
	line "per me e fagliela"
	cont "vedere!"
	done
; 0x5a7ca

KurtLeaveSlowpokeWellText: ; 0x5a7ca
	text "Franz: Ce l'hai"
	line "fatta, <PLAYER>!"

	para "Hai messo in fuga"
	line "il Team Rocket."

	para "E la mia schiena"
	line "va un po' meglio."
	
	para "Possiamo andarcene"
	line "da qui."
	done
; 0x5a825

GruntM29SeenText: ; 0x5a825
	text "Acc! Stavo di"
	line "guardia lassù"

	para "quando ho sentito"
	line "un vecchio bacucco"
	cont "gridarmi contro."

	para "Mi ha spaventato"
	line "così tanto che"
	cont "sono caduto qui!"

	para "Penso che sfogherò"
	line "la mia ira su di"
	cont "te!"
	done
; 0x5a8cc

GruntM29BeatenText: ; 0x5a8cc
	text "Grr! Non é PROPRIO"
	line "la mia giornata!"
	done
; 0x5a8e8

TrainerGruntM29SlowpokeProfitText: ; 0x5a8e8
	text "Certo, abbiamo"
	line "tagliato la coda"

	para "agli Slowpoke per"
	line "rivenderle."

	para "Facciamo tutto per"
	line "profitto."

	para "È logico!"
	line "Noi siamo il Team"

	para "Rocket e facciamo"
	line "tutto per soldi!"
	done
; 0x5a98b

GruntM1SeenText: ; 0x5a98b
	text "Che vuoi?"

	para "Se interrompi il"
	line "nostro lavoro,"
	cont "possiamo essere"
	cont "spietati!"
	done
; 0x5a9d0

GruntM1BeatenText: ; 0x5a9d0
	text "Oggi ti é andata"
	line "bene, ma la"
	cont "prossima volta"
	cont "vedrai!"
	done
; 0x5a9fc

TrainerGruntM1WhenTalkText: ; 0x5a9fc
	text "Sì, il Team Rocket"
	line "si é sciolto"
	cont "tre mesi fa."

	para "Ma abbiamo"
	line "continuato le"
	cont "nostre attività"
	cont "di nascosto."

	para "Ora potrai diver-"
	line "tirti vedendoci"
	cont "seminare il"
	cont "panico!"
	done
; 0x5aa8d

GruntM2SeenText: ; 0x5aa8d
	text "Dovremmo finirla"
	line "di tagliare le"
	cont "code agli"
	cont "Slowpoke?"

	para "Se ti obbedissimo,"
	line "la reputazione del"
	cont "Team Rocket"
	cont "sarebbe distrutta!"
	done
; 0x5aadf

GruntM2BeatenText: ; 0x5aadf
	text "Sei troppo<...>"
	line "forte<...>"
	done
; 0x5aaf2

UnknownText_0x5aaf2: ; 0x5aaf2
	text "Ci servono soldi,"
	line "ma vendere le"
	cont "Codeslowpoke?"

	para "Non é facile esse-"
	line "re una recluta"
	cont "Rocket!"
	done
; 0x5ab43

GruntF1SeenText: ; 0x5ab43
	text "Smettere di"
	line "tagliare le code?"

	para "Certo, prima prova"
	line "a sconfiggerci!"
	done
; 0x5ab7b

GruntF1BeatenText: ; 0x5ab7b
	text "Pulce schifosa!"
	done
; 0x5ab8d

UnknownText_0x5ab8d: ; 0x5ab8d
	text "Le Codeslowpoke"
	line "crescono in"
	cont "fretta!"

	para "Che c'é di male"
	line "nel venderle?"
	done
; 0x5abcb

UnknownText_0x5abcb: ; 0x5abcb
	text "Uno Slowpoke con"
	line "la coda tagliata<...>"

	para "Ha una lettera."
	line "Vuoi leggerla?"
	done
; 0x5ac09

UnknownText_0x5ac09: ; 0x5ac09
	text "<PLAYER> legge"
	line "la lettera."

	para "Comportati bene e"
	line "bada alla casa con"

	para "il nonno e"
	line "Slowpoke."

	para "Con affetto,"
	line "       il tuo Papà"
	done
; 0x5ac61

UnknownText_0x5ac61: ; 0x5ac61
	text "Uno Slowpoke con"
	line "la coda tagliata<...>"
	done
; 0x5ac84

SlowpokeWellB1F_MapEventHeader: ; 0x5ac84
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $11, 6, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $b, $7, 1, GROUP_SLOWPOKE_WELL_B2F, MAP_SLOWPOKE_WELL_B2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 9
	person_event SPRITE_ROCKET, 11, 19, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM29, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_ROCKET, 6, 9, $6, 0, 0, -1, -1, 0, 2, 1, TrainerGruntM1, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_ROCKET, 10, 9, $9, 0, 0, -1, -1, 0, 2, 2, TrainerGruntM2, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_ROCKET_GIRL, 8, 14, $9, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 4, TrainerGruntF1, EVENT_ROCKET_TAKEOVER_OF_AZALEA_TOWN
	person_event SPRITE_SLOWPOKE, 8, 11, $1, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SlowpokeScript_0x5a681, EVENT_SLOWPOKE_IN_THE_WELL
	person_event SPRITE_SLOWPOKE, 6, 10, $1, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SlowpokeScript_0x5a695, EVENT_SLOWPOKE_IN_THE_WELL
	person_event SPRITE_KURT, 18, 20, $7, 0, 0, -1, -1, 0, 0, 0, KurtScript_0x5a5d5, EVENT_KURT_IN_HIS_HOUSE_3
	person_event SPRITE_BOULDER, 6, 7, $19, 0, 0, -1, -1, 0, 0, 0, BoulderScript_0x5a6a0, -1
	person_event SPRITE_POKE_BALL, 7, 14, $1, 0, 0, -1, -1, 0, 1, 0, ItemFragment_0x5a6a3, EVENT_ITEM_SLOWPOKE_WELL_B1F_SUPER_POTION
; 0x5ad09

