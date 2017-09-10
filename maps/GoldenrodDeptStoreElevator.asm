GoldenrodDeptStoreElevator_MapScriptHeader: ; 0x56697
	; trigger count
	db 0

	; callback count
	db 0
; 0x56699

MapGoldenrodDeptStoreElevatorSignpost0Script: ; 0x56699
	loadfont
	elevator Elevator_0x566e0
	closetext
	iffalse UnknownScript_0x566df
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	checkevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_4
	iftrue UnknownScript_0x566df
	checkevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_1
	iftrue UnknownScript_0x566cb
	checkevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_2
	iftrue UnknownScript_0x566d5
	checkevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_3
	iftrue UnknownScript_0x566c1
UnknownScript_0x566c1: ;0x566c1
	setevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_2
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_3
	end
; 0x566cb

UnknownScript_0x566cb: ; 0x566cb
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_1
	setevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_2
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_3
	end
; 0x566d5

UnknownScript_0x566d5: ; 0x566d5
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_2
	setevent EVENT_GOLDENROD_DEPT_STORE_BASEMENT_LAYOUT_3
	end
; 0x566df

UnknownScript_0x566df: ; 0x566df
	end
; 0x566e0


Elevator_0x566e0: ; 0x566e0
	db 7 ; floors
	db _B1F, 2, GROUP_GOLDENROD_DEPT_STORE_B1F, MAP_GOLDENROD_DEPT_STORE_B1F
	db _1F,  4, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F
	db _2F,  3, GROUP_GOLDENROD_DEPT_STORE_2F, MAP_GOLDENROD_DEPT_STORE_2F
	db _3F,  3, GROUP_GOLDENROD_DEPT_STORE_3F, MAP_GOLDENROD_DEPT_STORE_3F
	db _4F,  3, GROUP_GOLDENROD_DEPT_STORE_4F, MAP_GOLDENROD_DEPT_STORE_4F
	db _5F,  3, GROUP_GOLDENROD_DEPT_STORE_5F, MAP_GOLDENROD_DEPT_STORE_5F
	db _6F,  2, GROUP_GOLDENROD_DEPT_STORE_6F, MAP_GOLDENROD_DEPT_STORE_6F
	db $ff ; end
; 0x566fe


GoldenrodDeptStoreElevator_MapEventHeader: ; 0x566fe
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $3, $1, 255, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F
	warp_def $3, $2, 255, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 0, 3, $0, MapGoldenrodDeptStoreElevatorSignpost0Script

	; people-events
	db 0
; 0x56713

