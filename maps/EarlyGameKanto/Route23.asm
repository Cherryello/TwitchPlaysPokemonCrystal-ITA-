Route23RB_MapScriptHeader:
	db 3
	dw .Trigger0, 0
	dw .Trigger1, 0
	dw .Trigger2, 0
	db 0
.Trigger0
	end
.Trigger1
	end
.Trigger2
	end


Route23RB_CascadeBadgeCheckTrigger:
	faceperson $2, $0
	faceperson $0, $2
	scall Route23RBScript_ContinueCascade
	iftrue .permit
	applymovement $0, Movement_PlayerStepsDown_Route23RB
.permit
	end

Route23RB_CascadeBadgeCheckOfficerScript:
	faceplayer
Route23RBScript_ContinueCascade:
	loadfont
	checkflag ENGINE_CASCADEBADGE
	iftrue .permit
	writetext _VictoryRoadGuardText1
	waitbutton
	closetext
	spriteface $2, DOWN
	end

.permit
	writetext _VictoryRoadGuardText2
	playsound SFX_LEVEL_UP
	waitsfx
	buttonsound
	writetext _VictoryRoadGuardText_513a3
	waitbutton
	closetext
	dotrigger $1
	spriteface $2, DOWN
	end

Route23RB_ThunderBadgeCheckOfficerScript:
	faceperson $3, $0
	faceperson $0, $3
	scall Route23RBScript_ContinueThunder
	iftrue .permit
	applymovement $0, Movement_PlayerStepsDown_Route23RB
.permit
	end

Route23RB_ThunderBadgeCheckTrigger:
	faceplayer
Route23RBScript_ContinueThunder:
	loadfont
	checkflag ENGINE_THUNDERBADGE
	iftrue .permit
	writetext _VictoryRoadGuardText3
	waitbutton
	closetext
	spriteface $3, DOWN
	end

.permit
	writetext _VictoryRoadGuardText4
	playsound SFX_LEVEL_UP
	waitsfx
	buttonsound
	writetext _VictoryRoadGuardText_513a3
	waitbutton
	closetext
	dotrigger $2
	spriteface $3, DOWN
	end


Movement_PlayerStepsDown_Route23RB:
	step_down
	step_end

_VictoryRoadGuardText1:
	text "Puoi passare di"
	line "qui solo se hai la"
	cont "Medaglia Cascata!"

	para "Ma non hai la"
	line "Medaglia Cascata!"

	para "È un requisito ne-"
	line "cessario per acce-"
	cont "dere alla Lega"
	cont "#mon!"
	done

_VictoryRoadGuardText2:
	text "Puoi passare di"
	line "qui solo se hai la"
	cont "Medaglia Cascata!"

	para "Oh! Quella é la"
	line "Medaglia Cascata!"
	done

_VictoryRoadGuardText_513a3:
	text "Bene allora, vai"
	line "pure!"
	done

_VictoryRoadGuardText3:
	text "Puoi passare di"
	line "qui solo se hai la"
	cont "Medaglia Tuono!"

	para "Ma non hai la"
	line "Medaglia Tuono!"

	para "È un requisito ne-"
	line "cessario per acce-"
	cont "dere alla Lega"
	cont "#mon!"
	done

_VictoryRoadGuardText4:
	text "Puoi passare di"
	line "qui solo se hai la"
	cont "Medaglia Tuono!"

	para "Oh! Quella é la"
	line "Medaglia Tuono!"
	done

_Route23Text8:
	text "Ingresso"
	line "Via Vittoria -"
	line "Lega #mon"
	done



Route23RB_MapEventHeader:
	db 0, 0
	db 2
	warp_def $23, $7, 3, GROUP_VICTORY_ROAD_GATE_RB, MAP_VICTORY_ROAD_GATE_RB
	warp_def $23, $8, 4, GROUP_VICTORY_ROAD_GATE_RB, MAP_VICTORY_ROAD_GATE_RB

	db 4
	xy_trigger 0, 31, 6, $0, Route23RB_CascadeBadgeCheckTrigger, 0, 0
	xy_trigger 0, 31, 7, $0, Route23RB_CascadeBadgeCheckTrigger, 0, 0
	xy_trigger 0, 31, 9, $0, Route23RB_CascadeBadgeCheckTrigger, 0, 0
	xy_trigger 1, 15, 9, $0, Route23RB_ThunderBadgeCheckTrigger, 0, 0
	db 0

	db 2
	person_event SPRITE_OFFICER, 35, 12, $6, 0, 0, -1, -1, 0, 0, 0, Route23RB_CascadeBadgeCheckOfficerScript, -1
	person_event SPRITE_OFFICER, 19, 12, $6, 0, 0, -1, -1, 0, 0, 0, Route23RB_ThunderBadgeCheckOfficerScript, -1
