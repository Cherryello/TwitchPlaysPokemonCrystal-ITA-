ViridianTrainerSchoolRB_MapScriptHeader:
	db 0
	db 0

ViridianTrainerSchoolRBLassScript:
	jumptextfaceplayer _SchoolText1

ViridianTrainerSchoolRBTeacherScript:
	jumptextfaceplayer _SchoolText2

ViridianTrainerSchoolRBBookcaseScript:
	jumpstd difficultbookshelf

ViridianTrainerSchoolRBBlackboardScript:
	loadfont
	writetext _ViridianSchoolBlackboardText1
	buttonsound
.loop
	writetext _ViridianSchoolBlackboardText2
	loadmenudata .MenuDataHeader
	interpretmenu
	writebackup
	if_equal 1, .Psn
	if_equal 2, .Par
	if_equal 3, .Slp
	if_equal 4, .Brn
	if_equal 5, .Frz
	closetext
	end

.Psn
	writetext _ViridianBlackboardPoisonText
	buttonsound
	jump .loop

.Par
	writetext _ViridianBlackboardPrlzText
	buttonsound
	jump .loop

.Slp
	writetext _ViridianBlackboardSleepText
	buttonsound
	jump .loop

.Brn
	writetext _ViridianBlackboardBurnText
	buttonsound
	jump .loop

.Frz
	writetext _ViridianBlackboardFrozenText
	buttonsound
	jump .loop

.MenuDataHeader
	db $40 ; flags
	db 00, 00 ; start coords
	db 08, 11 ; end coords
	dw .MenuData2
	db 1 ; default option
; 0x68ae9

.MenuData2
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Strings
	dbw BANK(ViridianTrainerSchoolRB_MapScriptHeader), $0000
; 0x68af2

.Strings
	db "VLN@"
	db "PAR@"
	db "DRM@"
	db "BRU@"
	db "GEL@"
	db "Esci@"
; 0x68b0b

ViridianTrainerSchoolRB_NotebookScript
	loadfont
	writetext _ViridianSchoolNotebookText1
	buttonsound
	writetext _TurnPageText
	yesorno
	iffalse .quit
	writetext _ViridianSchoolNotebookText2
	buttonsound
	writetext _TurnPageText
	yesorno
	iffalse .quit
	writetext _ViridianSchoolNotebookText3
	buttonsound
	writetext _TurnPageText
	yesorno
	iffalse .quit
	writetext _ViridianSchoolNotebookText4
	buttonsound
	waitsfx
	spriteface $2, UP
	writetext _ViridianSchoolNotebookText5
	waitbutton
.quit
	closetext
	end

_SchoolText1:
	text "Sto cercando di"
	line "memorizzare tutti"
	cont "gli appunti."
	done

_SchoolText2:
	text "Bene!"

	para "Leggi molto atten-"
	line "tamente la lava-"
	cont "gna!"
	done

_ViridianSchoolBlackboardText1:
	text "La lavagna indica"
	line "i cambiamenti di"
	cont "stato dei #mon"
	cont "durante le lotte."
	done

_ViridianSchoolBlackboardText2:
	text "Quale argomento"
	line "vuoi leggere?"
	done

_ViridianBlackboardSleepText:
	text "Un #mon non può"
	line "attaccare se sta"
	cont "dormendo!"

	para "I #mon conti-"
	line "nuano a dormire"
	cont "anche dopo la"
	cont "lotta."

	para "Usa una sveglia"
	line "per svegliarli!"
	done

_ViridianBlackboardPoisonText:
	text "Se avvelenati, i"
	line "#mon perdono"
	cont "continuamente"
	cont "energia."

	para "Il veleno rimane"
	line "nel loro corpo"
	cont "dopo la lotta."

	para "Usa un antidoto"
	line "per curare i tuoi"
	cont "#mon!"
	done

_ViridianBlackboardPrlzText:
	text "La paralisi riduce"
	line "la velocità e può"
	cont "impedire a un"
	cont "#mon di muover-"
	cont "si."

	para "La paralisi perma-"
	line "ne anche dopo la"
	cont "lotta."

	para "Usa un antiparali-"
	line "si per curarla."
	done

_ViridianBlackboardBurnText:
	text "Le scottature ri-"
	line "ducono l'attacco,"
	cont "oltre a causare"
	cont "una progressiva"
	cont "perdita di PS."

	para "Le scottature per-"
	line "sistono anche dopo"
	cont "la lotta."

	para "Il rimedio adatto"
	line "é l'antiscottatu-"
	cont "ra!"
	done

_ViridianBlackboardFrozenText:
	text "I #mon congela-"
	line "ti sono immobiliz-"
	cont "zati!"

	para "Il problema persi-"
	line "ste anche dopo la"
	cont "lotta."

	para "Usa l'antigelo per"
	line "scongelarli!"
	done

_TurnPageText:
	text "Girare pagina?"
	done

_ViridianSchoolNotebookText5:
	text "Ragazza: Ehi! Spii"
	line "i miei appunti?!"
	done

_ViridianSchoolNotebookText1:
	text "Leggi il quaderno."

	para "Pagina 1<...>"

	para "Le #ball servo-"
	line "no per catturare"
	cont "i #mon."

	para "Si possono portare"
	line "fino a 6 #mon."

	para "L'allenatore é chi"
	line "addestra e fa"
	cont "lottare i suoi"
	cont "#mon."
	done

_ViridianSchoolNotebookText2:
	text "Pagina 2<...>"

	para "È dura catturare i"
	line "#mon nel pieno"
	cont "delle forze!"

	para "Prima, quindi, é"
	line "meglio indebo-"
	cont "lirli."
	
	para "Anche causare"
	line "scottature, avve-"
	cont "lenamenti e simi-"
	cont "li problemi di"
	cont "stato é molto"
	cont "utile."
	done

_ViridianSchoolNotebookText3:
	text "Pagina 3<...>"

	para "Ogni allenatore di"
	line "#mon ne cerca"
	cont "altri con cui"
	cont "lottare."

	para "Nelle palestre"
	line "sono sempre in"
	cont "corso lotte con"
	cont "i #mon."
	done

_ViridianSchoolNotebookText4:
	text "Pagina 4<...>"

	para "Lo scopo di tutti"
	line "gli allenatori é"
	cont "battere gli 8"
	cont "capipalestra"
	cont "migliori."

	para "Solo così potrai"
	line "sfidare<...>"

	para "<...>i Superquattro"
	line "della Lega #-"
	cont "mon!"
	done


ViridianTrainerSchoolRB_MapEventHeader:
	db 0, 0
	; warps
	db 2
	warp_def $7, $2, 2, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB
	warp_def $7, $3, 2, GROUP_VIRIDIAN_CITY_RB, MAP_VIRIDIAN_CITY_RB

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 3, $0, ViridianTrainerSchoolRBBlackboardScript
	signpost 4, 3, $0, ViridianTrainerSchoolRB_NotebookScript

	; people-events
	db 2
	person_event SPRITE_LASS, 9, 7, $7, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ViridianTrainerSchoolRBLassScript, -1
	person_event SPRITE_TEACHER, 5, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, ViridianTrainerSchoolRBTeacherScript, -1
