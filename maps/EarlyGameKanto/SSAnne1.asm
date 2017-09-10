SSAnne1_MapScriptHeader:
	db 2
	dw .Trigger0, 0
	dw .Trigger1, 0
	db 0
.Trigger0
	end
.Trigger1
	end

SSAnne1GentlemanScript:
	jumptextfaceplayer _SSAnne1Text1

SSAnne1Sailor1Script:
	faceplayer
	loadfont
	checkevent EVENT_S_S_ANNE_RUBBED_CAPTAINS_BACK
	iftrue SailorContinue_SSAnne1RefuseExit
	writetext _SSAnne1Text2
	waitbutton
	closetext
	end

SSAnne1PreventExitTrigger:
	spriteface $3, LEFT
	spriteface $0, RIGHT
	loadfont
SailorContinue_SSAnne1RefuseExit
	writetext SSAnne1SailorDepartedText
	waitbutton
	closetext
	spriteface $3, DOWN
	applymovement $0, Movement_SSAnne1PlayerWalksBack
	end

SSAnne1Rocket1Script:
	jumptextfaceplayer SSAnne1Rocket1Text

SSAnne1Sailor2Script:
	jumptext SSAnne1Sailor2Text

SSAnne1Rocket2Script:
	jumptext SSAnne1Rocket2Text

Movement_SSAnne1PlayerWalksBack:
	step_down
	step_end

_SSAnne1Text1:
	text "Bonjour!"
	line "Je suis le garson"
	cont "di questa nave!"

	para "Sarò lieto di"
	line "servirti in qual-"
	cont "siasi cosa!"

	para "Ah! Le tipo"
	line "timide ma fort!"
	done

_SSAnne1Text2:
	text "I passeggeri sono"
	line "instancabili!"

	para "Qualcuno tra i più"
	line "annoiati potrebbe"
	cont "anche sfidarti!"
	done

SSAnne1SailorDepartedText:
	text "Arriveremo ad"
	line "Olivinopoli nel"
	cont "giro di qualche"
	cont "giorno."
	done

SSAnne1Rocket1Text:
	text "Non vogliamo che"
	line "tu ti faccia male,"
	cont "quindi ritorna in"
	cont "cabina."
	done

SSAnne1Sailor2Text:
	text "Cosa credi di"
	line "fare?!"

	para "Non te ne andrai"
	line "da qui!"
	done

SSAnne1Rocket2Text:
	text "Tanto parlare solo"
	line "per uno con dei"
	cont "#mon così debo-"
	cont "li."

	para "Non vale nemmeno"
	line "lo sforzo per"
	cont "rubarli."
	done

SSAnne1_MapEventHeader:
	db 0, 0
	db 11
	warp_def  0, 26, 2, GROUP_VERMILION_DOCK, MAP_VERMILION_DOCK
	warp_def  0, 27, 2, GROUP_VERMILION_DOCK, MAP_VERMILION_DOCK
	warp_def  8, 31, 1, GROUP_S_S_ANNE_8, MAP_S_S_ANNE_8
	warp_def  8, 23, 2, GROUP_S_S_ANNE_8, MAP_S_S_ANNE_8
	warp_def  8, 19, 3, GROUP_S_S_ANNE_8, MAP_S_S_ANNE_8
	warp_def  8, 15, 4, GROUP_S_S_ANNE_8, MAP_S_S_ANNE_8
	warp_def  8, 11, 5, GROUP_S_S_ANNE_8, MAP_S_S_ANNE_8
	warp_def  8,  7, 6, GROUP_S_S_ANNE_8, MAP_S_S_ANNE_8
	warp_def  6,  2, 7, GROUP_S_S_ANNE_2, MAP_S_S_ANNE_2
	warp_def 15, 37, 6, GROUP_S_S_ANNE_4, MAP_S_S_ANNE_4
	warp_def 16,  3, 1, GROUP_S_S_ANNE_6, MAP_S_S_ANNE_6

	db 1
	xy_trigger 1, 5, 26, $0, SSAnne1PreventExitTrigger, 0, 0

	db 0

	db 6
	person_event SPRITE_GENTLEMAN, 10, 16, $5, 0, 3, -1, -1, 8 + PAL_OW_BLUE, 0, 0, SSAnne1GentlemanScript, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_SAILOR, 9, 31, $3, 0, 0, -1, -1, 0, 0, 0, SSAnne1Sailor1Script, EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	person_event SPRITE_ROCKET, 4, 30, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne1Rocket1Script, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 4, 31, $6, 0, 0, -1, -1, 0, 0, 0, SSAnne1Rocket1Script, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_SAILOR, 10, 16, $8, 0, 0, -1, -1, 0, 0, 0, SSAnne1Sailor2Script, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
	person_event SPRITE_ROCKET, 10, 15, $9, 0, 0, -1, -1, 0, 0, 0, SSAnne1Rocket2Script, EVENT_ROCKETS_NOT_YET_BOARDED_SS_ANNE
