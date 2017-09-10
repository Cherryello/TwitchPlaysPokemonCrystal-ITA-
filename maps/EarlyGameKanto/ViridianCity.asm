ViridianCityRB_MapScriptHeader: ; 0x1a9a43
	; trigger count
	db 3
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0

	; callback count
	db 0

.Trigger0
	end
.Trigger1
	end
.Trigger2
	end

ViridianCityRBAngryGrandpaTrigger:
	spriteface $0, LEFT
	scall ViridianCityRBAngryGrandpaScript
	applymovement $0, ViridianCityRB_PlayerStepsDown
	end

ViridianCityRBAngryGrandpaScript:
	loadfont
	writetext _ViridianCityText_19191
	waitbutton
	closetext
	end

ViridianCityRBGymDoorTrigger:
	spriteface $0, UP
	loadfont
	writetext _ViridianCityText14
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement $0, ViridianCityRB_PlayerJumpsDown
	end

ViridianCityRB_CatchingTutorial:
	faceplayer
	loadfont
	writetext _ViridianCityText_1920a
	yesorno
	iftrue .DeclineTutorial
	writetext _ViridianCityText_1920f
	waitbutton
	closetext
	loadpokedata WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	loadfont
	writetext _ViridianCityText_19219
	waitbutton
	closetext
	end

.DeclineTutorial
	writetext _ViridianCityText_19214
	waitbutton
	closetext
	end

ViridianCityRB_GirlShoppingScript:
	jumptextfaceplayer _ViridianCityText_1917a

ViridianCityRB_GirlApologyScript:
	jumptextfaceplayer _ViridianCityText_19175

ViridianCityRB_BugSpeechYoungster:
	faceplayer
	loadfont
	writetext _ViridianCityText_1914d
	yesorno
	iffalse .declined
	writetext _ViridianCityText_19157
	waitbutton
	closetext
	end

.declined
	writetext _ViridianCityText_19152
	waitbutton
	closetext
	end

ViridianCityRB_WhereIsTheLeader:
	jumptextfaceplayer _ViridianCityText_19122

ViridianCityRB_PokeballsAtWaistYoungster:
	jumptextfaceplayer _ViridianCityText1

MapViridianCityRBTownSignScript: ; 0x1a9a93
	jumptext _ViridianCityText8
; 0x1a9a96

MapViridianCityRBGymSignScript: ; 0x1a9a96
	jumptext _ViridianCityText13
; 0x1a9a99

MapViridianCityRBTrainerTips1SignScript: ; 0x1a9a99
	jumptext _ViridianCityText9
; 0x1a9a9c

MapViridianCityRBTrainerTips2SignScript: ; 0x1a9a99
	jumptext _ViridianCityText10
; 0x1a9a9c

MapViridianCityRBHiddenPotion: ; 0x1a9a9c
	dw EVENT_VIRIDIAN_CITY_RB_HIDDEN_POTION
	db POTION
; 0x1a9a9f

MapViridianCityRBPokecenterSignScript: ; 0x1a9a9f
	jumpstd pokecentersign
; 0x1a9aa2

MapViridianCityRBPokemartSignScript: ; 0x1a9aa2
	jumpstd martsign
; 0x1a9aa5

ViridianCityRB_PlayerStepsDown:
	step_down
	step_end

ViridianCityRB_PlayerJumpsDown:
	jump_step_down
	step_end

_ViridianCityText1:
	text "Nella cintura hai"
	line "delle #ball,"
	cont "vero?"

	para "È una gran cosa"
	line "poter portare i"
	cont "propri #mon"
	cont "ovunque!"
	done

_ViridianCityText_19122:
	text "Questa palestra é"
	line "sempre chiusa."

	para "Mi chiedo chi sia"
	line "il capopalestra<...>"
	done

_ViridianCityText_1914d:
	text "Vuoi informazioni"
	line "sulle due specie"
	cont "di #mon simili"
	cont "a bruchi?"
	done

_ViridianCityText_19152:
	text "Oh, okay!"
	done

_ViridianCityText_19157:
	text "Caterpie non ha"
	line "veleno, Weedle"
	cont "però sì!"

	para "Attenzione alla"
	line "sua Velenospina!"
	done

_ViridianCityText_19175:
	text "Oh, nonno! Non"
	line "essere sgarbato!"
	cont "Scusalo, sai!"
	cont "Non ha ancora"
	cont "preso il caffé<...>"
	done

_ViridianCityText_1917a:
	text "Quando vado a fare"
	line "spese a Plumbeopo-"
	cont "li, devo percorre-"
	cont "re ogni volta il"
	cont "tortuoso sentiero"
	cont "del bosco"
	cont "Smeraldo."
	done

_ViridianCityText_19191:
	text "Non puoi passare"
	line "da qui!"

	para "È proprietà"
	line "privata!"
	done

_ViridianCityText_1920a:
	text "Ah, dopo il caffé"
	line "mi sento meglio!"
	
	para "Ma l'ho fatto"
	line "troppo forte:"
	cont "mi é venuto il"
	cont "mal di testa!"

	para "Comunque, certo"
	line "che puoi passare!"

	para "Ma dimmi, vai di"
	line "fretta?"
	done

_ViridianCityText_1920f:
	text "Vedo che hai"
	line "un #dex."

	para "Quando catturi un"
	line "#mon, il #-"
	cont "dex si aggiorna"
	cont "automaticamente."

	para "Cosa? Non sai"
	line "come si cattura"
	cont "un #mon?"

	para "Allora ti mostro"
	line "come si fa."
	done

_ViridianCityText_19214:
	text "Il tempo é denaro<...>"
	line "Vai, allora."
	done

_ViridianCityText_19219:
	text "Prima di tutto,"
	line "devi indebolire il"
	cont "#mon selvatico."
	
	para "Solo dopo puoi"
	line "decidere se usare"
	cont "una # Ball o"
	cont "infliggergli una"
	cont "variazione di"
	cont "stato."
	
	para "Spero di esserti"
	line "stato d'aiuto!"
	done

_ViridianCityText8:
	text "Smeraldopoli"
	line "L'eterno paradiso"
	cont "verde"
	done

_ViridianCityText9:
	text "Consigli utili"

	para "Cattura i #mon"
	line "e amplia la tua"
	cont "collezione!"

	para "Più ne hai, più"
	line "facile sarà poi"
	cont "combattere!"
	done

_ViridianCityText10:
	text "Consigli utili"

	para "Le mosse dei #-"
	line "mon dipendono dai"
	cont "loro Punti Potenza"
	cont "detti anche PP."

	para "Per recuperare PP,"
	line "fai riposare i"
	cont "tuoi #mon al"
	cont "Centro #mon!"
	done

_ViridianCityText13:
	text "Smeraldopoli"
	line "Palestra #mon"
	done

_ViridianCityText14:
	text "La porta della"
	line "palestra é"
	cont "chiusa<...>"
	done

ViridianCityRB_MapEventHeader: ; 0x1a9ec9
	; filler
	db 0, 0

	; warps
	db 4
	warp_def  $9, $15, 1, GROUP_VIRIDIAN_NICKNAME_SPEECH_HOUSE_RB, MAP_VIRIDIAN_NICKNAME_SPEECH_HOUSE_RB
	warp_def  $f, $15, 1, GROUP_VIRIDIAN_TRAINER_SCHOOL_RB, MAP_VIRIDIAN_TRAINER_SCHOOL_RB
	warp_def $13, $1d, 2, GROUP_VIRIDIAN_MART_RB, MAP_VIRIDIAN_MART_RB
	warp_def $19, $17, 1, GROUP_VIRIDIAN_POKECENTER_1F_RB, MAP_VIRIDIAN_POKECENTER_1F_RB

	; xy triggers
	db 3
	xy_trigger 0, 6, 19, $0, ViridianCityRBAngryGrandpaTrigger, 0, 0
	xy_trigger 0, 8, 32, $0, ViridianCityRBGymDoorTrigger, 0, 0
	xy_trigger 1, 8, 32, $0, ViridianCityRBGymDoorTrigger, 0, 0

	; signposts
	db 7
	signpost 17, 17, $0, MapViridianCityRBTownSignScript
	signpost  7, 27, $0, MapViridianCityRBGymSignScript
	signpost  1, 19, $0, MapViridianCityRBTrainerTips1SignScript
	signpost 29, 21, $0, MapViridianCityRBTrainerTips2SignScript
	signpost  4, 14, $7, MapViridianCityRBHiddenPotion
	signpost 25, 24, $0, MapViridianCityRBPokecenterSignScript
	signpost 19, 30, $0, MapViridianCityRBPokemartSignScript

	; people-events
	db 8
	person_event SPRITE_SIDEWAYS_GRAMPS, 10, 22, $0, 0, 0, -1, -1, 0, 0, 0, ViridianCityRBAngryGrandpaScript, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_LYING_DOWN
	person_event SPRITE_GRAMPS, 10, 22, $5, 0, 1, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianCityRB_CatchingTutorial, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_WALKING_ABOUT
	person_event SPRITE_GRAMPS, 12, 34, $6, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, ViridianCityRB_WhereIsTheLeader, -1
	person_event SPRITE_FISHER, 27, 10, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ObjectEvent, -1
	person_event SPRITE_YOUNGSTER, 25, 21, $2, 3, 3, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_PokeballsAtWaistYoungster, -1
	person_event SPRITE_YOUNGSTER, 29, 34, $2, 2, 2, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_BugSpeechYoungster, -1
	person_event SPRITE_TEACHER, 10, 21, $9, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_GirlApologyScript, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_LYING_DOWN
	person_event SPRITE_TEACHER, 13, 22, $5, 0, 1, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianCityRB_GirlShoppingScript, EVENT_VIRIDIAN_CITY_RB_OLD_MAN_WALKING_ABOUT
; 0x1a9f3a

