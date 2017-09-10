
PewterMuseumOfScience1F_MapScriptHeader:
	; trigger count
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0

	; callback count
	db 1
	dbw 1, .ResetTrigger

.Trigger0
	end
.Trigger1
	end
.ResetTrigger
	checkcode VAR_XCOORD
	if_equal 7, .skip
	dotrigger 0
.skip
	return

PewterMuseumOfScience1FPayWall:
	spriteface $2, LEFT
	spriteface $0, RIGHT
	loadfont
	special Function24ae8
	writetext _Museum1FText_5c21f
	yesorno
	iffalse .send_back
	checkmoney 0, 50
	if_equal 2, .insufficient_funds
	takemoney 0, 50
	special Function24ae8
	playsound SFX_TRANSACTION
	waitsfx
	writetext _Museum1FText_5c224
	waitbutton
	closetext
	dotrigger 1
	end
.send_back
	writetext _Museum1FText_5c21a
	jump .finish
.insufficient_funds
	writetext _Museum1FText_5c229
.finish
	waitbutton
	closetext
	applymovement $0, PlayerStepsDown_PewterMuseumOfScience
	end

PewterMuseumOfScience1FScientist1Script:
	faceplayer
	loadfont
	checkcode VAR_FACING
	if_equal LEFT, .back_way
	if_equal DOWN, .back_way
	checktriggers
	iftrue .already_paid
	writetext _Museum1FText_5c23d
	jump .finish
.already_paid
	writetext _Museum1FText_5c242
.finish
	waitbutton
	closetext
	end
.back_way
	writetext _Museum1FText_5c22e
	yesorno
	iffalse .no
	writetext _Museum1FText_5c233
	jump .finish2
.no
	writetext _Museum1FText_5c238
.finish2
	waitbutton
	closetext
	spriteface $2, LEFT
	end

PewterMuseumOfScience1FUnusedGuyScript:
	jumptextfaceplayer _Museum1FText_5c251

PewterMuseumOfScience1FScientist2Script:
	faceplayer
	loadfont
	checkevent EVENT_PEWTER_MUSEUM_OLD_AMBER
	iftrue .got_amber
	writetext _Museum1FText_5c28e
	waitbutton
	verbosegiveitem OLD_AMBER, 1
	iffalse .bag_full
	disappear $6
.bag_full
	closetext
	end
.got_amber
	writetext _Museum1FText_5c299
	waitbutton
	closetext
	end

PewterMuseumOfScience1FScientist3Script:
	jumptextfaceplayer _Museum1FText_5c2ad

PewterMuseumOfScience1FOldAmberScript:
	jumptext _Museum1FText_5c2bc

PlayerStepsDown_PewterMuseumOfScience:
	step_down
	step_end

PewterMuseumOfScience1FAerodactylFossilScript:
	refreshscreen $0
	; pokepic AERODACTYL
	fossilpic 0
	waitbutton
	closepokepic
	loadfont
	writetext _AerodactylFossilText
	waitbutton
	closetext
	end

PewterMuseumOfScience1FKabutopsFossilScript:
	refreshscreen $0
	; pokepic KABUTOPS
	fossilpic 1
	waitbutton
	closepokepic
	loadfont
	writetext _KabutopsFossilText
	waitbutton
	closetext
	end

_Museum1FText_5c21a:
	text "Torna presto!"
	done

_Museum1FText_5c21f:
	text "Il prezzo per i"
	line "bambini é ¥50."

	para "Vuoi entrare?"
	done

_Museum1FText_5c224:
	text "Bene, sono ¥50!"
	line "Grazie!"
	done

_Museum1FText_5c229:
	text "Non hai abbastanza"
	line "soldi."
	done

_Museum1FText_5c22e:
	text "Ehi, non puoi"
	line "entrare dal retro!"

	para "Oh, vabbé!"
	line "Sai cos'é un'"
	cont "ambra?"
	done

_Museum1FText_5c233:
	text "C'é un laboratorio"
	line "da qualche parte"
	cont "dove fanno resu-"
	cont "scitare #mon"
	cont "antichi!"
	
	para "Utilizzano l'ambra"
	line "contenente mate-"
	cont "riale genetico di"
	cont "quei #mon!"
	done

_Museum1FText_5c238:
	text "L'ambra non é"
	line "altro che resina"
	cont "fossile."
	done

_Museum1FText_5c23d:
	text "Adesso vai dall'"
	line "altra parte però!"
	done

_Museum1FText_5c242:
	text "Buona visita"
	line "al museo."
	done

_Museum1FText_5c251:
	text "Questo fossile"
	line "é magnifico!"
	done

_Museum1FText_5c28e:
	text "Ssh! Credo che"
	line "quest'ambra con-"
	cont "tenga del materia-"
	cont "le genetico di un"
	cont "#mon!"

	para "Sarebbe grandioso"
	line "se si potesse far"
	cont "resuscitare un"
	cont "#mon!"

	para "Però i miei colle-"
	line "ghi non mi ascol-"
	cont "tano!"

	para "Quindi devo"
	line "chiederti un"
	cont "favore!"

	para "Porta quest'ambra"
	line "ad un laboratorio"
	cont "#mon e falla"
	cont "analizzare!"
	done

_Museum1FText_5c299:
	text "Ssh! Fa' analizza-"
	line "re quell'ambra"
	cont "antica!"
	done

_Museum1FText_5c29e:
	text "Non hai abbastanza"
	line "spazio!"
	done

_Museum1FText_5c2ad:
	text "Siamo orgogliosi"
	line "di poter mostrare"
	cont "due fossili di"
	cont "#mon preistori-"
	cont "ci molto rari!"
	done

_Museum1FText_5c2bc:
	text "Un'ambra bella e"
	line "scintillante!"
	done

_AerodactylFossilText:
	text "Fossile di un"
	line "Aerodactyl, raro"
	cont "#mon primitivo."
	done

_KabutopsFossilText:
	text "Fossile di un"
	line "Kabutops, un raro"
	cont "#mon primitivo."
	done


PewterMuseumOfScience1F_MapEventHeader:
	db 0, 0 ; filler
	db 5 ; warps
	warp_def 7, 10, 6, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def 7, 11, 6, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def 7, 16, 7, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def 7, 17, 7, GROUP_PEWTER_CITY_RB, MAP_PEWTER_CITY_RB
	warp_def 7,  7, 1, GROUP_PEWTER_MUSEUM_2F_RB, MAP_PEWTER_MUSEUM_2F_RB

	db 2 ; coord events
	xy_trigger 0, 4,  9, $0, PewterMuseumOfScience1FPayWall, 0, 0
	xy_trigger 0, 4, 10, $0, PewterMuseumOfScience1FPayWall, 0, 0

	db 2 ; signposts
	signpost 3, 2, $0, PewterMuseumOfScience1FAerodactylFossilScript
	signpost 6, 2, $0, PewterMuseumOfScience1FKabutopsFossilScript

	db 5 ; objects
	person_event SPRITE_SCIENTIST, 8, 16, $8, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience1FScientist1Script, -1
	person_event SPRITE_UNUSED_GUY, 8, 5, $3, 0, 0, -1, -1, 8 + PAL_OW_BLUE, 0, 0, PewterMuseumOfScience1FUnusedGuyScript, -1
	person_event SPRITE_SCIENTIST, 6, 19, $6, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience1FScientist2Script, -1
	person_event SPRITE_SCIENTIST, 8, 21, $3, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience1FScientist3Script, -1
	person_event SPRITE_OLD_AMBER, 6, 20, $1, 0, 0, -1, -1, 0, 0, 0, PewterMuseumOfScience1FOldAmberScript, EVENT_PEWTER_MUSEUM_OLD_AMBER

