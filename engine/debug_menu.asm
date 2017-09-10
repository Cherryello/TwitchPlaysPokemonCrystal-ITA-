; DED playback is a part of cry playback

make_textbox: MACRO
	hlcoord \1, \2
	ld c, \3
	ld b, \4
	call TextBox
ENDM

play_sound: MACRO
	ld de, \1
	call PlayWaitSFX
ENDM

set_map_mode: MACRO
	ld a, \1
	ld [hBGMapMode], a
ENDM

debug_exit: MACRO ;exit mode, exit script
	if _NARG > 2
		lb de, \3, \1
		ld bc, \2
	else
		if _NARG > 1
			lb de, BANK(\2), \1
			ld bc, \2
		else
			ld de, \1 & $ff
			ld bc, 0
		endc
	endc
	call DebugMenuExit
ENDM

MENU_EXIT_RETURN            EQU 0
MENU_EXIT_ALL               EQU 1
MENU_EXIT_FUNCTION          EQU 2
MENU_EXIT_SCRIPT_CLOSE_TEXT EQU 3
MENU_EXIT_SCRIPT            EQU 4
MENU_EXIT_RETURN_END        EQU 5
MENU_EXIT_RETURN_REDRAW     EQU 6

debug_menu: MACRO ;name, parent, options, default action, load action
	dw \2 ;parent menu, 0 exits
	dw \3 ;options
	if _NARG > 3
		dw \4 ;default action, 0 for none
		if _NARG > 4
			dw \5 ;load action, 0 for none
		else
			dw 0
		endc
	else
		dw 0, 0
	endc
	db \1 ;menu name, will be displayed on the title bar
	db "@"
ENDM

debug_menu_options: MACRO
	assert _NARG <= 13, "Too many menu options given"
	rept _NARG
		dw \1
		shift
	endr
	dw 0
ENDM

debug_option: MACRO ;name, action, cursors, select
	if _NARG > 1
		dw \2 ;action, 0 for none
		if _NARG > 2
			dw \3 ;cursors, 0 for none
			if _NARG > 3
				dw \4 ;select, 0 for none
			else
				dw 0
			endc
		else
			dw 0, 0
		endc
	else
		dw 0, 0, 0
	endc
	db \1 ;name
	db "@"
ENDM


DebugMenu:
	xor a
	ld hl, hInMenu
	ld a, [hl]
	push af
	ld [hl], 1
	call ClearBGPalettes
	ld hl, VTiles1 + $570
	ld de, PlusSignTile
	lb bc, BANK(PlusSignTile), 1
	call Request1bpp
	ld bc, DebugMainMenu
	call DebugMenuLoad
.menu_main_loop
	ld a, [wDebugMenuFlags]
	bit 6, a
	jr nz, .exit_debug
	bit 7, a
	jr z, .menu_joypad_loop
	call DebugMenuRefresh
	jr nz, .menu_joypad_loop
	xor a
	jr .exit_debug
.menu_joypad_loop
	call .display_time
	call DelayFrame
	call JoyTextDelay
	ld a, [hJoyPressed]
	call DebugMenuExecuteAction
	jr .menu_main_loop
.exit_debug
	and 7
	ld b, a
	pop af
	ld [hInMenu], a
	ld a, 1
	ld [rSVBK], a
	ld a, b
	ret
.display_time
	ld hl, wDebugMenuCurrentMenu
	ld a, [hli]
	cp DebugMainMenu % $100
	ret nz
	ld a, [hl]
	cp DebugMainMenu >> 8
	ret nz
	ld hl, GameTimeHours
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld de, 3600
	call Multiply16
	ld a, [hli]
	ld c, a
	ld a, [hli]
	push hl
	ld l, a
	ld h, 0
	ld b, h
	ld a, 60
	rst AddNTimes
	add hl, de
	ld a, h
	ld [hProduct + 2], a
	ld a, l
	ld [hProduct + 3], a
	jr nc, .no_carry
	ld hl, hProduct + 1
	inc [hl]
	jr nz, .no_carry
	dec hl
	inc [hl]
.no_carry
	ld a, 60
	ld [hMultiplier], a
	callba Multiply
	ld hl, hProduct
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld e, [hl]
	pop hl
	ld a, [hl]
	add a, e
	ld e, a
	jr nc, .no_carry_2
	inc d
	jr nz, .no_carry_2
	inc c
	jr nz, .no_carry_2
	inc b
.no_carry_2
	callba FormatStopwatchCounter
	push bc
	push de
	ld a, [hLongQuotient + 2]
	ld d, a
	ld a, [hLongQuotient + 3]
	ld e, a
	ld bc, 0
	hlcoord 1, 16
	ld a, "I"
	ld [hli], a
	ld a, "G"
	ld [hli], a
	ld a, "T"
	ld [hli], a
	inc hl
	ld a, 5
	ld [hDigitsFlags], a
	set_map_mode 0
	predef PrintBigNumber
	hlcoord 18, 16
	pop de
	ld a, e
	call .print_value
	ld [hl], "."
	dec hl
	ld a, d
	call .print_value
	ld [hl], ":"
	dec hl
	pop bc
	ld a, c
	call .print_value
	ld [hl], ":"
	set_map_mode 1
	ret
.print_value
	ld c, 10
	call SimpleDivide
	add a, "0"
	ld [hld], a
	ld a, b
	add a, "0"
	ld [hld], a
	ret

DebugMenuRefresh:
	ld hl, wDebugMenuFlags
	res 7, [hl]
	ld hl, wDebugMenuNextMenu
	ld a, [hli]
	ld c, a
	ld b, [hl]
	or b
	ret z
	ld hl, wDebugMenuCurrentMenu
	ld a, c
	ld [hli], a
	ld [hl], b
	push bc
	call ClearBGPalettes
	make_textbox 0, 0, 18, 1
	make_textbox 0, 3, 18, 13
	pop bc
	ld hl, 8
	add hl, bc
	ld d, h
	ld e, l
	hlcoord 1, 1
	push bc
	call PlaceString
	pop bc
	ld hl, 2
	add hl, bc
	push bc
	xor a
	ld [wDebugMenuOptionCount], a
	ld [wDebugMenuCurrentOption], a
	ld a, [hli]
	ld c, a
	ld b, [hl]
.display_option
	ld h, b
	ld l, c
	ld a, [hli]
	ld e, a
	ld d, [hl]
	or d
	jr z, .options_done
	push bc
	ld hl, 6
	add hl, de
	ld d, h
	ld e, l
	hlcoord 2, 4
	ld bc, SCREEN_WIDTH
	ld a, [wDebugMenuOptionCount]
	rst AddNTimes
	call PlaceString
	pop bc
	inc bc
	inc bc
	ld hl, wDebugMenuOptionCount
	inc [hl]
	jr .display_option
.options_done
	hlcoord 1, 4
	ld [hl], $ed
	pop bc
	ld hl, 6
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	call nz, _hl_ ; from the callba routines, just jumps to [hl]
	set_map_mode 1
	call ApplyTilemapInVBlank
	ld hl, wDebugMenuFlags
	bit 5, [hl]
	res 5, [hl]
	jr nz, .noSGBLayout
	ld b, SCGB_SCROLLINGMENU
	predef GetSGBLayout
.noSGBLayout
	call SetPalettes
	ld a, 1
	and a
	ret

DebugMenuExecuteAction:
	bit B_BUTTON_F, a
	jp nz, DebugMenuCancel
	bit START_F, a
	jp nz, DebugMenuExecuteDefault
	bit A_BUTTON_F, a
	ld de, 0
	jp nz, DebugMenuExecuteOption
	bit SELECT_F, a
	ld e, 4
	jp nz, DebugMenuExecuteOption
	ld b, a
	and D_UP | D_DOWN
	ld a, b
	jr z, .not_option_change
	bit D_UP_F, a
	scf
	jp z, DebugMenuChangeOption
	ccf
	jp DebugMenuChangeOption
.not_option_change
	and D_LEFT | D_RIGHT
	ret z
	bit D_LEFT_F, a
	scf
	jp z, DebugMenuApplyCursors
	ccf
	jp DebugMenuApplyCursors

DebugMenuCancel:
	xor a
	call DebugGetCurrentMenuPointer
	ld b, h
	ld c, l
	jp DebugMenuLoad

DebugMenuChangeOption:
	push af
	hlcoord 1, 4
	ld bc, SCREEN_WIDTH
	ld a, [wDebugMenuCurrentOption]
	rst AddNTimes
	ld [hl], $7f
	pop af
	jr nc, .option_prev
	ld a, [wDebugMenuCurrentOption]
	ld hl, wDebugMenuOptionCount
	inc a
	cp [hl]
	jr c, .selected
	xor a
	jr .selected
.option_prev
	ld a, [wDebugMenuCurrentOption]
	and a
	jr z, .last_option
	dec a
	jr .selected
.last_option
	ld a, [wDebugMenuOptionCount]
	dec a
.selected
	ld [wDebugMenuCurrentOption], a
	hlcoord 1, 4
	ld bc, SCREEN_WIDTH
	rst AddNTimes
	ld [hl], $ed
	ret

DebugMenuExecuteOption:
	call DebugMenuGetCurrentOptionPointer
	add hl, de
	jp CallNonNullLocalPointer

DebugMenuExecuteDefault:
	ld a, 2
	call DebugGetCurrentMenuPointer
	ld a, h
	or l
	ret z
	jp hl

DebugMenuApplyCursors:
	push af
	call DebugMenuGetCurrentOptionPointer
	ld bc, 2
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	jr z, .no_cursors
	pop af
	jp hl
.no_cursors
	pop af
	ret

DebugMenuLoad:
	; marks the menu in bc to be loaded next loop iteration
	ld hl, wDebugMenuNextMenu
	ld a, c
	ld [hli], a
	ld a, b
	ld [hli], a
	ld [hl], $80
	ret

DebugMenuExit:
	; exits with the mode in e, and loads d:bc into the queued script address if bc is nonzero
	ld a, [rSVBK]
	push af
	ld a, 1
	ld [rSVBK], a
	ld a, b
	or c
	jr z, .no_queued_script
	ld hl, wQueuedScriptBank
	ld [hl], d
	ld hl, wQueuedScriptAddr
	ld a, c
	ld [hli], a
	ld [hl], b
.no_queued_script
	ld a, e
	and 7
	set 6, a
	ld [wDebugMenuFlags], a
	pop af
	ld [rSVBK], a
	ret

DebugGetCurrentMenuPointer:
	ld hl, wDebugMenuCurrentMenu
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, b
	ld b, [hl]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

DebugMenuGetCurrentOptionPointer:
	ld a, 1
	call DebugGetCurrentMenuPointer
	ld b, h
	ld c, l
	ld hl, wDebugMenuCurrentOption
	ld l, [hl]
	ld h, 0
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

DebugMenuModifyByPowerOfTen:
	; bcde += 10^a * (-1)^(!carry)
	push bc
	ccf
	adc a
	sla a
	sla a
	cp 80
	ret nc
	ld c, a
	ld b, 0
	ld hl, .powers
	add hl, bc
	ld a, [hli]
	ld c, [hl]
	inc hl
	push hl
	ld l, a
	ld h, c
	add hl, de
	ld d, h
	ld e, l
	pop hl
	pop bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr nc, .no_increment
	inc hl
.no_increment
	add hl, bc
	ld b, h
	ld c, l
	ret
.powers
_CURRENT = 1
	rept 10
		dw _CURRENT & $ffff
		dw _CURRENT >> 16
		dw -_CURRENT & $ffff
		dw (-_CURRENT) >> 16
_CURRENT = _CURRENT * 10
	endr

DEBUG_FLAG_SET equ $d7 ; +
DEBUG_FLAG_CLEAR equ $e3 ; -

DebugFlagGridBase:
	; Function list (function in a):
	; 0: display status (hl: flag array, bc: flag offset, de: cursor position)
	; 1: cursor left (de: cursor position)
	; 2: cursor right (de: cursor position)
	; 3: toggle (hl: flag array, bc: flag offset, de: cursor position, [wDebugMenuCurrentOption]: selected option)
	; 4: display clear (d: first flag, e: last flag)
	; 5: show help text (no parameters)
	and a
	jp z, .display_status
	dec a
	jp z, .cursor_left
	dec a
	jp z, .cursor_right
	dec a
	jp z, .toggle
	dec a
	jp z, .display_clear
	dec a
	jp z, .show_help
	ret
.display_status
	push hl
	push bc
	ld a, [de]
	ld c, a
	push bc
	ld de, .header_line
	hlcoord 6, 4
	call PlaceString
	pop bc
	hlcoord 9, 4
	ld b, 0
	ld de, 0
	ld a, 9
	cp c
	jr nc, .no_special_cursor
	ld de, -13
.no_special_cursor
	add hl, bc
	add hl, de
	ld [hl], $ee
	pop bc
	ld a, c
	and 7
	rept 3
		sra b
		rr c
	endr
	pop hl
	add hl, bc
	ld e, a
	ld d, [hl]
	inc hl
	inc e
.skip_loop
	dec e
	jr z, .done_skipping
	srl d
	jr .skip_loop
.done_skipping
	xor 7
	inc a
	ld e, a
	ld c, 0
.display_loop
	ld a, 9
	cp c
	ret c
	push bc
	call .display_line
	pop bc
	inc c
	jr .display_loop
.display_line
	; c: current line, d: data, e: remaining bits, hl: reload address
	push hl
	ld b, 0
	push bc
	ld a, SCREEN_WIDTH
	hlcoord 2, 5
	rst AddNTimes
	pop bc
	ld a, "0"
	add a, c
	ld [hli], a
	ld a, "0"
	ld [hli], a
	ld a, ":"
	ld [hli], a
	rept 4
		inc hl
	endr
	pop bc
	ld a, 11
.flag_loop
	dec a
	jr z, .line_done
	bit 0, d
	jr z, .flag_is_clear
	ld [hl], DEBUG_FLAG_SET
	jr .flag_printed
.flag_is_clear
	ld [hl], DEBUG_FLAG_CLEAR
.flag_printed
	inc hl
	srl d
	dec e
	call z, .reload
	jr .flag_loop
.line_done
	ld h, b
	ld l, c
	ret
.reload
	push af
	ld a, [bc]
	inc bc
	ld d, a
	pop af
	ld e, 8
	ret
.cursor_left
	ld a, [de]
	sub 1 ;sets all flags... unlike dec
	jr nc, .cursor_selected
	ld a, 11
	jr .cursor_selected
.cursor_right
	ld a, [de]
	inc a
	cp 12
	jr c, .cursor_selected
	xor a
.cursor_selected
	ld [de], a
	ret
.toggle
	push hl
	push de
	ld h, b
	ld l, c
	ld a, [wDebugMenuCurrentOption]
	dec a
	ld bc, 10
	rst AddNTimes
	pop de
	ld a, [de]
	cp 10
	jr nc, .set_multiple
	add a, l
	ld e, a
	ld a, h
	adc a, 0
	ld d, a
	pop hl
	ld b, 2
	push de
	push hl
	call BigFlagAction
	pop hl
	pop de
	ld a, $ff
	add a, c ;transfer flag into carry
	sbc a
	inc a
	ld b, a
	jp BigFlagAction
.set_multiple
	ld d, h
	ld e, l
	pop hl
	ld c, 10
	sub 11
	and 1
	ld b, a
.set_loop
	push hl
	push de
	push bc
	call BigFlagAction
	pop bc
	pop de
	pop hl
	inc de
	dec c
	jr nz, .set_loop
	ret
.display_clear
	ld a, 100
	cp e
	jr nc, .valid_last_flag
	ld e, 100
.valid_last_flag
	inc e
	ld c, 0
	xor a
.clear_line_loop
	cp 100
	ret nc
	ld b, 0
	push af
	push bc
	hlcoord 9, 5
	ld a, SCREEN_WIDTH
	rst AddNTimes
	pop bc
	pop af
	ld b, -10
.clear_cell_loop
	cp d
	jr c, .clear_cell
	cp e
	jr nc, .clear_cell
	jr .next_cell
.clear_cell
	ld [hl], $7f
.next_cell
	inc hl
	inc a
	inc b
	jr nz, .clear_cell_loop
	inc c
	jr .clear_line_loop
.show_help
	hlcoord 1, 6
	ld de, .help_text
	jp PlaceText
.header_line db DEBUG_FLAG_SET, DEBUG_FLAG_CLEAR, " 0123456789@"
.help_text
	ctxt "U/D: select row"
	nl   "L/R: column"
	nl   "A: toggle flag"
	nl   "START: save"
	nl   "SELECT: reload"
	nl   "B: cancel"
	nl   "The two leftmost"
	nl   "columns change the"
	nl   "whole row at once."
	nl   $d7, ": flag set (1)"
	nl   $e3, ": flag clear (0)"
	done


;DEBUG MENUS

DebugMainMenu: debug_menu " DEBUG MAIN MENU", 0, .options, DebugMenuCancel
.options debug_menu_options .get_pokemon, .manage_items, .manage_money, .warp, .edit_flags, .memory_access, .misc, .pics, .cancel
.get_pokemon debug_option "Get #mon", .load_get_pokemon_menu
.manage_items debug_option "Manage Items", .load_manage_items_menu
.manage_money debug_option "Manage Money", .load_money_menu
.warp debug_option "Warp Anywhere", .load_warp_menu
.edit_flags debug_option "Edit flags", .load_edit_flags_menu
.memory_access debug_option "Memory Access", .load_memory_access_menu
.misc debug_option "Miscellaneous", .load_misc_menu
.pics debug_option "Pics", .load_pics_menu
.cancel debug_option "Cancel", DebugMenuCancel
.load_get_pokemon_menu
	ld bc, DebugGetPokemonMainMenu
	jp DebugMenuLoad
.load_manage_items_menu
	ld bc, DebugManageItemsMenu
	jp DebugMenuLoad
.load_warp_menu
	ld bc, DebugWarpMenu
	jp DebugMenuLoad
.load_money_menu
	ld bc, DebugMoneyMenu
	jp DebugMenuLoad
.load_edit_flags_menu
	ld bc, DebugFlagsMenu
	jp DebugMenuLoad
.load_memory_access_menu
	ld bc, DebugMemoryAccessMenu
	jp DebugMenuLoad
.load_misc_menu
	ld bc, DebugMiscellaneousMenu
	jp DebugMenuLoad
.load_pics_menu
	ld bc, DebugPicTestMenu
	jp DebugMenuLoad

DebugGetPokemonMainMenu: debug_menu " Get #mon", DebugMainMenu, .options, DebugMenuCancel
.options debug_menu_options .give_pokemon, .give_egg, .back, .cancel
.give_pokemon debug_option "Get #mon", .load_get_pokemon_menu
.give_egg debug_option "Get egg", .load_get_egg_menu
.back debug_option "Go back", DebugMenuCancel
.cancel debug_option "Cancel", .close_all
.load_get_pokemon_menu
	ld bc, DebugGetPokemonMenu
	jp DebugMenuLoad
.load_get_egg_menu
	ld bc, DebugGetEggMenu
	jp DebugMenuLoad
.close_all
	debug_exit MENU_EXIT_ALL
	ret

DebugManageItemsMenu: debug_menu " Manage Items", DebugMainMenu, .options, DebugMenuCancel
.options debug_menu_options .give_item, .manage_tm_hm, .back, .cancel
.give_item debug_option "Get item", .load_get_item_menu
.manage_tm_hm debug_option "Manage TMs/HMs", .load_tm_hm_menu
.back debug_option "Go back", DebugMenuCancel
.cancel debug_option "Cancel", .close_all
.load_get_item_menu
	ld bc, DebugGetItemMenu
	jp DebugMenuLoad
.load_tm_hm_menu
	xor a
	ld [wDebugMenuParameter], a
	ld bc, DebugTMHMMenu
	jp DebugMenuLoad
.close_all
	debug_exit MENU_EXIT_ALL
	ret

DebugFlagsMenu: debug_menu " Edit flags", DebugMainMenu, .options, DebugMenuCancel
.options debug_menu_options .edit_engine_flags, .edit_event_flags, .back, .cancel
.edit_engine_flags debug_option "Edit engine flags", .load_engine_flag_menu
.edit_event_flags debug_option "Edit event flags", .load_event_flag_menu
.back debug_option "Go back", DebugMenuCancel
.cancel debug_option "Cancel", .close_all
.load_engine_flag_menu
	xor a
	ld [wDebugMenuParameter], a
	ld bc, DebugEngineFlagMenu
	jp DebugMenuLoad
.load_event_flag_menu
	xor a
	ld [wDebugMenuParameter], a
	ld bc, DebugEventFlagMenu
	jp DebugMenuLoad
.close_all
	debug_exit MENU_EXIT_ALL
	ret

DebugMemoryAccessMenu: debug_menu " Memory Access", DebugMainMenu, .options, DebugMenuCancel
.options debug_menu_options .edit_wram, .execute_function, .back, .cancel
.edit_wram debug_option "Edit WRAM memory", .load_edit_memory_menu
.execute_function debug_option "Execute function", .load_execute_function_menu
.back debug_option "Go back", DebugMenuCancel
.cancel debug_option "Cancel", .close_all
.load_edit_memory_menu
	ld bc, DebugEditMemoryMenu
	jp DebugMenuLoad
.load_execute_function_menu
	ld bc, DebugExecuteFunctionMenu
	jp DebugMenuLoad
.close_all
	debug_exit MENU_EXIT_ALL
	ret

DebugPicTestMenu: debug_menu " Pic Test", DebugMainMenu, .options, DebugMenuCancel
.options debug_menu_options .trainer, .pokemon, .exit
.trainer debug_option "Trainer", .load_trainer
.pokemon debug_option "#mon", .load_pokemon
.exit debug_option "Go back", DebugMenuCancel

.load_trainer
	ld bc, DebugTrainerPicTestMenu
	jp DebugMenuLoad

.load_pokemon
	ld bc, DebugPokemonPicTestMenu
	jp DebugMenuLoad

DebugTrainerPicTestMenu: debug_menu " Trainer Pic Test", DebugPicTestMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .class, .back
.class debug_option "", 0, .change_class, .change_step
.back debug_option "Go back", DebugMenuCancel, 0, .change_step

.change_class
	ld de, wDebugMenuScratchSpace + 1
	ld hl, wDebugMenuScratchSpace
	lb bc, 1, NUM_TRAINER_CLASSES - 2
	call DebugMenuChangeValueLimited
	jr .update_pic

.change_step
	ld hl, wDebugMenuScratchSpace + 1
	call DebugMenuChangeStep
	jr .update_pic

.initialize
	ld a, JOSIAH
	ld [wDebugMenuScratchSpace], a
	ld [wDebugMenuScratchSpace + 1], a
	ld [rSVBK], a
.update_pic
	set_map_mode 0
	ld de, wDebugMenuScratchSpace
	hlcoord 2, 4
	call DebugPrintTrainerClassName
	ld a, [wDebugMenuScratchSpace]
	ld [TrainerClass], a
	ld e, 0
	callba ApplyMonOrTrainerPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ld de, VTiles2
	predef GetTrainerPic
	xor a
	ld [hGraphicStartTile], a
	hlcoord 7, 9
	lb bc, 7, 7
	predef PlaceGraphic
	set_map_mode 1
	ld hl, wDebugMenuFlags
	set 5, [hl]
	jp ApplyTilemapInVBlank

DebugPokemonPicTestMenu: debug_menu " #mon Pic Test", DebugPicTestMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .class, .back
.class debug_option "", 0, .change_class, .change_step
.back debug_option "Go back", DebugMenuCancel, 0, .change_step

.change_class
	ld de, wDebugMenuScratchSpace + 1
	ld hl, wDebugMenuScratchSpace
	lb bc, 1, NUM_POKEMON
	call DebugMenuChangeValueLimited
	scf
	jr .update_pic

.change_step
	ld hl, wDebugMenuScratchSpace + 1
	call DebugMenuChangeStep
	and a
	jr .update_pic

.initialize
	ld a, BULBASAUR
	ld [wDebugMenuScratchSpace], a
	ld [wDebugMenuScratchSpace + 1], a
	ld [rSVBK], a
	hlcoord 1, 15
	ld de, .help_info
	call PlaceText
	scf
.update_pic
	push af
	set_map_mode 0
	ld de, wDebugMenuScratchSpace
	hlcoord 2, 4
	call DebugPrintPokemonName
	hlcoord 2, 7
	lb bc, 7, 15
	call ClearBox
	hlcoord 16, 15
	ld a, [wDebugMenuScratchSpace + 1]
	ld e, a
	ld d, 0
	ld bc, 0
	predef PrintBigNumber
	xor a
	ld [hRunPicAnim], a
	ld hl, wcf64
	res 6, [hl]
	ld a, [wDebugMenuScratchSpace]
	ld [wCurPartySpecies], a
	ld e, 1
	callba ApplyMonOrTrainerPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ld hl, wDebugMenuFlags
	set 5, [hl]
	xor a
	ld [wBoxAlignment], a
	ld de, VTiles2 + (7 * 7) tiles
	predef GetBackpic
	hlcoord 2, 8
	ld a, [wDebugMenuScratchSpace]
	cp EGG
	lb bc, 6, 6
	jr nz, .okay
	lb bc, 5, 5
.okay
	ld a, 7 * 7
	ld [hGraphicStartTile], a
	predef PlaceGraphic

	ld de, VTiles2
	predef GetAnimatedFrontpic
	hlcoord 10, 7
	pop af
	jr nc, .egg
	ld a, [wDebugMenuScratchSpace]
	cp EGG
	jr z, .egg
	lb de, $0, ANIM_MON_MENU
	predef LoadMonAnimation
	ld hl, wcf64
	set 6, [hl]
	ld a, $1
	ld [hRunPicAnim], a
.anim_loop
	callba StatsScreen_WaitAnim
	ld a, [wcf64]
	bit 6, a
	jr nz, .anim_loop
	jr .done

.egg
	lb bc, 7, 7
	xor a
	ld [hGraphicStartTile], a
	predef PlaceGraphic
.done
	set_map_mode 1
	ret

.help_info
	ctxt "L/R: change by"
	nl   "SEL: change step"
	done

DebugMiscellaneousMenu: debug_menu " Miscellaneous", DebugMainMenu, .options, DebugMenuCancel
.options debug_menu_options .mult_div_test, .sound_test, .stopwatch_test, .experience_groups_test, .back, .cancel
.mult_div_test debug_option "Mult/div test", .load_mult_div_test_menu
.sound_test debug_option "Sound test", .load_sound_test_menu
.stopwatch_test debug_option "Stopwatch test", .load_stopwatch_test_menu
.experience_groups_test debug_option "Exp Groups", .load_exp_grp_menu
.back debug_option "Go back", DebugMenuCancel
.cancel debug_option "Cancel", .close_all
.load_mult_div_test_menu
	ld bc, DebugMultDivTestMenu
	jp DebugMenuLoad
.load_sound_test_menu
	ld bc, DebugSoundTestMenu
	jp DebugMenuLoad
.load_stopwatch_test_menu
	ld bc, DebugStopwatchTestMenu
	jp DebugMenuLoad
.load_exp_grp_menu
	ld bc, DebugExpGrpMenu
	jp DebugMenuLoad
.close_all
	debug_exit MENU_EXIT_ALL
	ret

DebugGetPokemonMenu: debug_menu " Get Any #mon", DebugGetPokemonMainMenu, .options, .get_pokemon, .initialize
.options: debug_menu_options .species, .level, .helditem, .receive, .back
.species: debug_option "", 0, .change_species, .change_step
.level: debug_option "Level:", 0, .change_level, .change_step
.helditem: debug_option "", 0, .change_held_item, .change_step
.receive: debug_option "Get #mon!", .get_pokemon, 0, .change_step
.back: debug_option "Back", DebugMenuCancel, 0, .change_step
.initialize
	ld a, 1
	ld [wDebugMenuScratchSpace], a
	ld [wDebugMenuScratchSpace + 1], a
	ld [wDebugMenuScratchSpace + 2], a
	ld [rSVBK], a
	xor a
	ld [wDebugMenuScratchSpace + 3], a
	ld de, DebugMenuInfoString
	hlcoord 2, 14
	call PlaceText
.show_status
	set_map_mode 0
	ld bc, 0
	ld d, 0
	ld a, [wDebugMenuScratchSpace + 2]
	ld e, a
	hlcoord 17, 14
	ld a, 2
	ld [hDigitsFlags], a
	predef PrintBigNumber
	ld bc, 0
	ld d, 0
	ld a, [wDebugMenuScratchSpace + 1]
	ld e, a
	ld a, 3
	ld [hDigitsFlags], a
	hlcoord 9, 5
	predef PrintBigNumber
	hlcoord 2, 4
	ld de, wDebugMenuScratchSpace
	call DebugPrintPokemonName
	hlcoord 2, 6
	ld de, wDebugMenuScratchSpace + 3
	call DebugPrintItemName
	set_map_mode 1
	ret
.change_species
	ld de, wDebugMenuScratchSpace + 2
	ld hl, wDebugMenuScratchSpace
	call DebugMenuChangeValue
	jp .show_status
.change_step
	ld hl, wDebugMenuScratchSpace + 2
	call DebugMenuChangeStep
	jp .show_status
.change_level
	ld de, wDebugMenuScratchSpace + 2
	ld hl, wDebugMenuScratchSpace + 1
	lb bc, 1, 100
	call DebugMenuChangeValueLimited
	jp .show_status
.change_held_item
	ld de, wDebugMenuScratchSpace + 2
	ld hl, wDebugMenuScratchSpace + 3
	call DebugMenuChangeValue
	jp .show_status
.get_pokemon
	ld a, [wDebugMenuScratchSpace]
	and a
	jp z, .invalid_pokemon
	cp EGG
	jp z, .invalid_pokemon
	cp 255
	jp z, .invalid_pokemon
	ld b, a
	ld a, [wDebugMenuScratchSpace + 1]
	ld c, a
	ld a, [wDebugMenuScratchSpace + 3]
	ld d, a
	push bc
	push de
	ld hl, .get_pokemon_script
	ld de, wDebugMenuScratchSpace
	ld bc, .end_copied_script - .get_pokemon_script
	rst CopyBytes
	pop de
	pop bc
	ld hl, wDebugMenuScratchSpace + 1
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld [hl], d
	debug_exit MENU_EXIT_SCRIPT, wDebugMenuScratchSpace, BANK(.get_pokemon_script)
	play_sound SFX_TRANSACTION
	ret
.invalid_pokemon
	play_sound SFX_WRONG
	ret
.get_pokemon_script
	givepoke 0, 0, 0, 0
	if_greater_than 1, .no_room
	closetext
	end
.end_copied_script
	assert (.end_copied_script - .get_pokemon_script) <= 24
.no_room
	jumptext .no_room_text
.no_room_text
	ctxt "You don't have"
	line "enough room in"
	cont "your party or box"
	cont "to receive another"
	cont "#mon."
	done

DebugMenuInfoString:
	ctxt "L/R: change by"
	nl   "SEL: change step"
	nl   "START: confirm"
	done
DebugMenuNoneString: db "(none)@"

DebugMenuClearString12: db "    "
DebugMenuClearString8: db " "
DebugMenuClearString7: db "  "
DebugMenuClearString5: db " "
DebugMenuClearString4: db "    @"

DebugMenuChangeStep:
	; changes the step value in [hl], rotating 1, 4, 10, 25
	ld a, [hl]
	cp 4
	jr nc, .step_over_1
	ld a, 4
	jr .step_chosen
.step_over_1
	cp a, 10
	jr nc, .step_over_4
	ld a, 10
	jr .step_chosen
.step_over_4
	cp a, 25
	jr nc, .step_over_10
	ld a, 25
	jr .step_chosen
.step_over_10
	ld a, 1
.step_chosen
	ld [hl], a
	ret

DebugMenuChangeValue:
	; changes the value in [hl] by an increment/decrement of [de] according to carry
	ld a, [de]
	ld b, a
	ld a, [hl]
	jr nc, .value_down
	add a, b
	jr .value_selected
.value_down
	sub b
.value_selected
	ld [hl], a
	ret

DebugMenuChangeValueLimited:
	; changes the value in [hl] by [de], requiring b <= value <= c
	push af
	push bc
	push hl
	call DebugMenuChangeValue
	pop hl
	pop bc
	ld a, c
	sub b
	inc a
	ld e, a
	pop af
	ld a, [hl]
	jr c, .check_valid_add
.check_valid_sub
	ld d, c
	inc d
	cp d
	jr nc, .underflow
	cp b
	jr c, .underflow
	jr .done
.check_valid_add
	ld d, c
	inc d
	cp d
	jr nc, .overflow
	cp b
	jr c, .underflow
.done
	ld [hl], a
	ret
.overflow
	sub e
	jr .check_valid_add
.underflow
	add a, e
	jr .check_valid_sub

DebugGetItemMenu: debug_menu " Get Any Item(s)", DebugManageItemsMenu, .options, .get_item, .initialize
.options debug_menu_options .item, .quantity, .receive, .back
.item debug_option "", 0, .change_item, .change_step
.quantity debug_option "Quantity:", 0, .change_quantity, .change_step
.receive debug_option "Get item(s)!", .get_item, 0, .change_step
.back debug_option "Back", DebugMenuCancel, 0, .change_step
.initialize
	ld a, 1
	ld [wDebugMenuScratchSpace], a
	ld [wDebugMenuScratchSpace + 1], a
	ld [wDebugMenuScratchSpace + 2], a
	ld [rSVBK], a
	ld de, DebugMenuInfoString
	hlcoord 2, 14
	call PlaceText
.show_status
	set_map_mode 0
	ld bc, 0
	ld d, 0
	ld a, [wDebugMenuScratchSpace + 2]
	ld e, a
	hlcoord 17, 14
	ld a, 2
	ld [hDigitsFlags], a
	predef PrintBigNumber
	hlcoord 2, 4
	ld de, wDebugMenuScratchSpace
	call DebugPrintItemName
	ld bc, 0
	ld d, 0
	ld a, [wDebugMenuScratchSpace + 1]
	ld e, a
	hlcoord 12, 5
	predef PrintBigNumber
	set_map_mode 1
	ret
.change_step
	ld hl, wDebugMenuScratchSpace + 2
	call DebugMenuChangeStep
	jp .show_status
.change_item
	ld de, wDebugMenuScratchSpace + 2
	ld hl, wDebugMenuScratchSpace
	call DebugMenuChangeValue
	jp .show_status
.change_quantity
	ld hl, wDebugMenuScratchSpace + 1
	ld de, wDebugMenuScratchSpace + 2
	lb bc, 1, 99
	call DebugMenuChangeValueLimited
	jp .show_status
.get_item
	ld a, [wDebugMenuScratchSpace]
	and a
	jr z, .invalid_item
	ld hl, .give_item_script
	ld de, wDebugMenuScratchSpace + 2
	ld bc, .end_give_item_script - .give_item_script
	rst CopyBytes
	ld a, [wDebugMenuScratchSpace]
	ld [wDebugMenuScratchSpace + 3], a
	ld a, [wDebugMenuScratchSpace + 1]
	ld [wDebugMenuScratchSpace + 4], a
	debug_exit MENU_EXIT_SCRIPT, wDebugMenuScratchSpace + 2, BANK(.give_item_script) ;so we can jump to something in this ROM bank
	ret
.invalid_item
	play_sound SFX_WRONG
	ret
.give_item_script
	verbosegiveitem 0, 0
	closetext
	end
.end_give_item_script
	assert (.end_give_item_script - .give_item_script) <= 22

DebugPrintPokemonName:
	ld bc, GetPokemonName
	jr DebugPrintPokemonOrItemName

DebugPrintItemName:
	ld bc, GetItemName
	jr DebugPrintPokemonOrItemName

DebugPrintTrainerClassName:
	ld bc, GetTrainerClassName

DebugPrintPokemonOrItemName:
	push bc
	ld a, [de]
	ld bc, 0
	ld d, 0
	ld [wd265], a
	ld e, a
	ld a, 3
	push hl
	ld [hDigitsFlags], a
	predef PrintBigNumber
	pop hl
	ld de, 4
	add hl, de
	push hl
	ld de, DebugMenuClearString12
	call PlaceString
	pop hl
	ld a, [wd265]
	and a
	jr z, .no_item
	pop bc
	call .jp_bc
	ld de, wStringBuffer1
	jr .got_item
.no_item
	ld de, DebugMenuNoneString
.got_item
	jp PlaceString
.jp_bc
	push bc
	ret

DebugWarpMenu: debug_menu " Warp Anywhere", DebugMainMenu, .options, .warp, .initialize
.options debug_menu_options .map_group, .map, .coordinates, .warp_option, .back
.map_group debug_option "Map group:", 0, .change_value, .change_step
.map debug_option "Map number:", 0, .change_value, .change_step
.coordinates debug_option "Pos:", .change_current_coordinate, .change_coordinate_value, .change_step
.warp_option debug_option "Warp!", .warp, 0, .change_step
.back debug_option "Go back", DebugMenuCancel, 0, .change_step
.initialize
	ld de, DebugMenuInfoString
	hlcoord 2, 14
	call PlaceText
	ld de, .extra_coord_info_string
	hlcoord 2, 13
	call PlaceText
	ld a, 1
	ld [rSVBK], a
	ld hl, wDebugMenuScratchSpace
	ld a, [MapGroup]
	ld [hli], a
	ld a, [MapNumber]
	ld [hli], a
	ld a, [XCoord]
	ld [hli], a
	ld a, [YCoord]
	ld [hli], a
	xor a
	ld [hli], a
	ld [hl], 1
.show_values
	set_map_mode 0
	ld a, [wDebugMenuScratchSpace]
	ld e, a
	ld d, 0
	ld bc, 0
	ld a, 3
	hlcoord 15, 4
	ld [hDigitsFlags], a
	predef PrintBigNumber
	ld a, [wDebugMenuScratchSpace + 1]
	ld e, a
	ld d, 0
	ld bc, 0
	hlcoord 15, 5
	predef PrintBigNumber
	ld a, [wDebugMenuScratchSpace + 2]
	ld e, a
	ld d, 0
	ld bc, 0
	hlcoord 8, 6
	ld a, "("
	ld [hli], a
	ld a, [wDebugMenuScratchSpace + 4]
	xor 1
	call .load_arrow_if_selected
	ld [hli], a
	ld a, 3
	ld [hDigitsFlags], a
	predef PrintBigNumber
	ld a, [wDebugMenuScratchSpace + 3]
	ld e, a
	ld d, 0
	ld bc, 0
	hlcoord 13, 6
	ld a, ","
	ld [hli], a
	ld a, [wDebugMenuScratchSpace + 4]
	call .load_arrow_if_selected
	ld [hli], a
	predef PrintBigNumber
	hlcoord 18, 6
	ld [hl], ")"
	ld a, [wDebugMenuScratchSpace + 5]
	ld e, a
	ld d, 0
	ld bc, 0
	hlcoord 17, 14
	ld a, 2
	ld [hDigitsFlags], a
	predef PrintBigNumber
	set_map_mode 1
	ret
.change_value
	push af
	ld hl, wDebugMenuScratchSpace
	ld a, [wDebugMenuCurrentOption]
	bit 0, a
	jr z, .change_value_for_variable
	inc hl
	jr .change_value_for_variable
.change_coordinate_value
	push af
	ld hl, wDebugMenuScratchSpace + 2
	ld a, [wDebugMenuScratchSpace + 4]
	bit 0, a
	jr z, .change_value_for_variable
	inc hl
.change_value_for_variable
	; called with af pushed
	pop af
	ld d, h
	ld e, l
	ld a, [de]
	ld hl, wDebugMenuScratchSpace + 5
	jr nc, .lower_value_for_variable
	add a, [hl]
	jr nc, .updated_value_for_variable
	ld a, $ff
	jr .updated_value_for_variable
.lower_value_for_variable
	sub [hl]
	jr nc, .updated_value_for_variable
	xor a
.updated_value_for_variable
	ld [de], a
	jp .show_values
.change_step
	ld hl, wDebugMenuScratchSpace + 5
	call DebugMenuChangeStep
	jp .show_values
.change_current_coordinate
	ld a, [wDebugMenuScratchSpace + 4]
	xor 1
	ld [wDebugMenuScratchSpace + 4], a
	jp .show_values
.warp
	ld hl, wDebugMenuScratchSpace
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld e, a
	push de
	push bc
	ld hl, .warp_script
	ld de, wDebugMenuScratchSpace
	ld bc, .end_warp_script - .warp_script
	rst CopyBytes
	ld hl, wDebugMenuScratchSpace + 1
	rept 2
		pop bc
		ld a, b
		ld [hli], a
		ld a, c
		ld [hli], a
	endr
	debug_exit MENU_EXIT_SCRIPT, wDebugMenuScratchSpace, BANK(.warp_script)
	ret
.extra_coord_info_string 
	ctxt "A: select coord"
	done
.load_arrow_if_selected
	bit 0, a
	jr z, .not_selected
	ld a, $ed
	ret
.not_selected
	ld a, $7f
	ret
.warp_script
	warp N_A, 0, 0
	end
.end_warp_script
	assert (.end_warp_script - .warp_script) <= 24

DebugGetEggMenu: debug_menu " Get #mon Eggs", DebugGetPokemonMainMenu, .options, .receive_egg, .initialize
.options debug_menu_options .species, .level, .receive, .back
.species debug_option "", 0, .change_species, .change_step
.level debug_option "Level:", 0, .change_level, .change_step
.receive debug_option "Receive egg!", .receive_egg, 0, .change_step
.back debug_option "Go back", DebugMenuCancel, 0, .change_step
.initialize
	ld de, DebugMenuInfoString
	hlcoord 2, 14
	call PlaceText
	ld a, 1
	ld [rSVBK], a
	ld hl, wDebugMenuScratchSpace
	ld [hli], a
	ld [hli], a
	ld [hli], a
.show_status
	set_map_mode 0
	ld bc, 0
	ld d, 0
	ld a, [wDebugMenuScratchSpace + 2]
	ld e, a
	hlcoord 17, 14
	ld a, 2
	ld [hDigitsFlags], a
	predef PrintBigNumber
	ld bc, 0
	ld d, 0
	ld a, [wDebugMenuScratchSpace + 1]
	ld e, a
	ld a, 3
	hlcoord 9, 5
	ld [hDigitsFlags], a
	predef PrintBigNumber
	hlcoord 2, 4
	ld de, wDebugMenuScratchSpace
	call DebugPrintPokemonName
	set_map_mode 1
	ret
.change_species
	ld de, wDebugMenuScratchSpace + 2
	ld hl, wDebugMenuScratchSpace
	call DebugMenuChangeValue
	jp .show_status
.change_step
	ld hl, wDebugMenuScratchSpace + 2
	call DebugMenuChangeStep
	jp .show_status
.change_level
	ld de, wDebugMenuScratchSpace + 2
	ld hl, wDebugMenuScratchSpace + 1
	lb bc, 1, 100
	call DebugMenuChangeValueLimited
	jp .show_status
.receive_egg
	ld a, [wDebugMenuScratchSpace]
	and a
	jp z, .invalid_pokemon
	cp 253
	jp z, .invalid_pokemon
	cp 255
	jp z, .invalid_pokemon
	ld b, a
	ld a, [wDebugMenuScratchSpace + 1]
	ld c, a
	push bc
	ld hl, .get_egg_script
	ld de, wDebugMenuScratchSpace
	ld bc, .end_copied_script - .get_egg_script
	rst CopyBytes
	pop bc
	ld hl, wDebugMenuScratchSpace + (.script_insertion_point - .get_egg_script) + 1
	ld a, b
	ld [hli], a
	ld [hl], c
	debug_exit MENU_EXIT_SCRIPT, wDebugMenuScratchSpace, BANK(.get_egg_script)
	play_sound SFX_TRANSACTION
	ret
.invalid_pokemon
	play_sound SFX_WRONG
	ret
.get_egg_script
	checkcode VAR_PARTYCOUNT
	if_greater_than 5, .no_room
.script_insertion_point
	giveegg 0, 0
	jumptext .egg_received_text
.end_copied_script
	assert (.end_copied_script - .get_egg_script) <= 24
.no_room
	jumptext .no_room_text
.no_room_text
	ctxt "You have 6 #mon"
	line "currently in your"
	cont "party. You have"
	cont "no room to"
	cont "receive this Egg."
	done
.egg_received_text
	ctxt "You received the"
	line "chosen Egg!"
	done

DebugMoneyMenu: debug_menu " Manage Money", DebugMainMenu, .options, .save_changes, .initialize
.options debug_menu_options .unit_selector, .own_money, .saved_money, .saving_money, .save, .reset, .cancel
.unit_selector debug_option "(cursor)", 0, .change_current_digit, .reset_current_digit
.own_money debug_option "Money:", 0, .change_money, .zero_out_money
.saved_money debug_option "Saved:", 0, .change_money, .zero_out_money
.saving_money debug_option "Saving:", 0, .toggle_saving, .toggle_saving
.save debug_option "Save changes", .save_changes
.reset debug_option "Reset changes", .initialize
.cancel debug_option "Go back", DebugMenuCancel
.help_message
	ctxt "Negative values"
	nl   "are only shown as"
	nl   "a calculation aid."
	nl   "They will not be"
	nl   "treated as signed!"
	done
.initialize
	ld de, .help_message
	hlcoord 1, 12
	call PlaceText
	ld a, 1
	ld [rSVBK], a
	ld hl, Money
	ld de, wDebugMenuScratchSpace
	ld bc, 6
	rst CopyBytes
	ld a, [wBankSavingMoney]
	and 1
	ld [wDebugMenuScratchSpace + 6], a
	xor a
	ld [wDebugMenuScratchSpace + 7], a
.show_status
	set_map_mode 0
	ld hl, wDebugMenuScratchSpace
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, c
	add $20
	sbc a
	ld b, a
	hlcoord 10, 5
	ld a, 8
	ld [hDigitsFlags], a
	predef PrintBigNumber
	ld hl, wDebugMenuScratchSpace + 3
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, c
	add $20
	sbc a
	ld b, a
	hlcoord 10, 6
	predef PrintBigNumber
	hlcoord 11, 4
	ld de, DebugMenuClearString7
	call PlaceString
	ld a, [wDebugMenuScratchSpace + 7]
	cpl
	ld c, a
	ld b, $ff
	hlcoord 18, 4
	add hl, bc
	ld [hl], $ee
	ld hl, wDebugMenuScratchSpace + 6
	bit 0, [hl]
	hlcoord 15, 7
	call DebugMenuPrintYesNo
	set_map_mode 1
	ret
.change_current_digit
	ld a, [wDebugMenuScratchSpace + 7]
	jr c, .decrease_current_digit
	inc a
	cp 7
	jr c, .current_digit_selected
	xor a
	jr .current_digit_selected
.decrease_current_digit
	and a
	jr z, .highest_digit_selected
	dec a
	jr .current_digit_selected
.highest_digit_selected
	ld a, 6
	jr .current_digit_selected
.reset_current_digit
	xor a
.current_digit_selected
	ld [wDebugMenuScratchSpace + 7], a
	jp .show_status
.change_money
	call .select_money_variable
	push hl
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld e, [hl]
	ld a, [wDebugMenuScratchSpace + 7]
	call DebugMenuModifyByPowerOfTen
	pop hl
	ld a, c
	ld [hli], a
	ld a, d
	ld [hli], a
	ld [hl], e
	jp .show_status
.zero_out_money
	call .select_money_variable
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	jp .show_status
.select_money_variable
	push af
	ld hl, wDebugMenuScratchSpace
	ld a, [wDebugMenuCurrentOption]
	dec a
	ld b, a
	sla b
	add a, b
	ld c, a
	ld b, 0
	add hl, bc
	pop af
	ret
.toggle_saving
	ld a, [wDebugMenuScratchSpace + 6]
	xor 1
	ld [wDebugMenuScratchSpace + 6], a
	jp .show_status
.save_changes
	ld hl, wDebugMenuScratchSpace
	ld de, Money
	ld bc, 6
	rst CopyBytes
	ld a, [wBankSavingMoney]
	ld hl, wDebugMenuScratchSpace + 6
	and a, $fe
	or a, [hl]
	ld [wBankSavingMoney], a
	play_sound SFX_TRANSACTION
	debug_exit MENU_EXIT_ALL
	ret

DebugMenuPrintYesNo:
	;yes on nz, no on z
	jr z, .show_no
	ld de, .yes
	jp PlaceText
.show_no
	ld de, .no
	jp PlaceText
.yes
	text "yes"
	done
.no
	text " no"
	done

DebugTMHMMenu: debug_menu " Manage TMs/HMs", DebugManageItemsMenu, .options, .save, .initialize
.options debug_menu_options .cursors, .data, .data, .data, .data, .data, .data, .data, .data, .data, .data, .hm_list, .help
.cursors debug_option "", 0, .move_cursors, .reload
.data debug_option "", .toggle, .move_cursors, .reload
.hm_list debug_option "HM:", .toggle_hm, .move_cursors, .reload
.help debug_option "Help", .load_help, .move_cursors, .reload
.initialize
	ld a, 1
	ld [rSVBK], a
	ld a, [wDebugMenuParameter]
	and a
	call z, .initial_data_load
	xor a
	ld [wDebugMenuScratchSpace], a
.show_status
	set_map_mode 0
	xor a
	call .call_base_fn
	lb de, 1, NUM_TMS
	ld a, 4
	call DebugFlagGridBase
	hlcoord 10, 15
	ld a, [wDebugMenuScratchSpace + 15]
	ld c, NUM_HMS
.show_hm
	rrca
	jr nc, .hm_is_clear
	ld [hl], DEBUG_FLAG_SET
	jr .hm_shown
.hm_is_clear
	ld [hl], DEBUG_FLAG_CLEAR
.hm_shown
	inc hl
	dec c
	jr nz, .show_hm
	set_map_mode 1
	ret
.initial_data_load
	ld a, 1
	ld [wDebugMenuParameter], a
.load_data
	ld hl, TMsHMs
	ld bc, (NUM_TMS + 7) >> 3
	ld de, wDebugMenuScratchSpace + 2
	rst CopyBytes
	ld de, NUM_TMS
	ld b, NUM_HMS + 1
	ld c, 0
.load_hm_loop
	dec b
	ret z
	push de
	push bc
	ld hl, TMsHMs
	ld b, 2
	call BigFlagAction
	ld b, 1
	jr nz, .has_hm
	dec b
.has_hm
	pop de
	push de
	ld d, 0
	ld hl, wDebugMenuScratchSpace + 15
	call BigFlagAction
	pop bc
	pop de
	inc de
	inc c
	jr .load_hm_loop
.call_base_fn
	ld de, wDebugMenuScratchSpace
	ld hl, wDebugMenuScratchSpace + 1
	ld bc, 7
	jp DebugFlagGridBase
.toggle
	ld a, 3
	call .call_base_fn
	jp .show_status
.toggle_hm
	ld a, [wDebugMenuScratchSpace]
	and a
	ret z
	cp 9
	ret z
	jr nc, .toggle_multiple_hms
	ld c, 1
.hm_selection_loop
	dec a
	jr z, .hm_selected
	sla c
	jr .hm_selection_loop
.hm_selected
	ld a, [wDebugMenuScratchSpace + 15]
	xor c
	ld [wDebugMenuScratchSpace + 15], a
	jp .show_status
.toggle_multiple_hms
	rra
	ccf
	sbc a
	ld [wDebugMenuScratchSpace + 15], a
	jp .show_status
.move_cursors
	ccf
	sbc a
	add a, 2
	call .call_base_fn
	jp .show_status
.reload
	call .load_data
	play_sound SFX_MENU
	jp .show_status
.save
	call .save_data
	play_sound SFX_TRANSACTION
	ret
.save_data
	ld de, TMsHMs
	ld bc, (NUM_TMS + 7) >> 3
	ld hl, wDebugMenuScratchSpace + 2
	rst CopyBytes
	ld bc, NUM_TMS
	ld d, NUM_HMS + 1
	ld e, 0
.save_hm_loop
	dec d
	ret z
	push de
	push bc
	ld hl, wDebugMenuScratchSpace + 15
	ld d, 0
	ld b, 2
	call BigFlagAction
	ld b, 1
	jr nz, .set_hm
	dec b
.set_hm
	pop de
	push de
	ld hl, TMsHMs
	call BigFlagAction
	pop bc
	pop de
	inc bc
	inc e
	jr .save_hm_loop
.load_help
	ld bc, DebugTMHMHelpMenu
	jp DebugMenuLoad

DebugTMHMHelpMenu: debug_menu " Manage TMs/HMs", DebugTMHMMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .help
.help debug_option "HELP (A: back)", DebugMenuCancel
.initialize
	ld a, 5
	jp DebugFlagGridBase

DebugEngineFlagMenu: debug_menu " Engine Flags", DebugFlagsMenu, .options, .save_changes, .initialize
.options debug_menu_options .cursors, .data, .data, .data, .data, .data, .data, .data, .data, .data, .data, .page, .help
.cursors debug_option "", 0, .move_cursors, .reload
.data debug_option "", .toggle, .move_cursors, .reload
.page debug_option "", 0, .change_page, .reload
.help debug_option "Help", .load_help, 0, .reload
.initialize
	ld a, [wDebugMenuParameter]
	and a
	call z, .initial_data_load
	ld a, BANK(wDebugMenuScratchArea)
	ld [rSVBK], a
	xor a
	ld [wDebugMenuScratchSpace], a
.show_status
	lb bc, (NUM_ENGINE_FLAGS + 99) / 100, (NUM_ENGINE_FLAGS + 99) % 100
	jp DebugEngineEventFlagShowStatus
.move_cursors
	call DebugEngineEventFlagMoveCursors
	jp .show_status
.initial_data_load
	ld a, 1
	ld [wDebugMenuParameter], a
.load
	ld de, 0
.flag_load_loop
	push de
	ld a, 1
	ld [rSVBK], a
	ld b, 2
	callba EngineFlagAction
	ld a, BANK(wDebugMenuScratchArea)
	ld [rSVBK], a
	ld a, $ff
	add c
	ccf
	sbc a
	inc a
	ld b, a
	pop de
	push de
	ld hl, wDebugMenuScratchArea
	call BigFlagAction
	pop de
	inc de
	ld a, NUM_ENGINE_FLAGS >> 8
	cp d
	ret c
	jr nz, .flag_load_loop
	ld a, e
	cp NUM_ENGINE_FLAGS & $ff
	jr c, .flag_load_loop
	ret
.reload
	call .load
	play_sound SFX_MENU
	jp .show_status
.toggle
	ld a, 3
	call DebugEngineEventFlagCallBase
	jp .show_status
.change_page
	ld b, (NUM_ENGINE_FLAGS + 99) / 100
	call DebugEngineEventFlagChangePage
	jp .show_status
.save_changes
	call .save
	play_sound SFX_TRANSACTION
	ld a, BANK(wDebugMenuScratchArea)
	ld [rSVBK], a
	jp .show_status
.save
	ld de, 0
.flag_save_loop
	push de
	ld a, BANK(wDebugMenuScratchArea)
	ld [rSVBK], a
	ld hl, wDebugMenuScratchArea
	ld b, 2
	call BigFlagAction
	ld a, $ff
	add c
	ccf
	sbc a
	inc a
	ld b, a
	pop de
	push de
	ld a, 1
	ld [rSVBK], a
	callba EngineFlagAction
	pop de
	inc de
	ld a, NUM_ENGINE_FLAGS >> 8
	cp d
	ret c
	jr nz, .flag_save_loop
	ld a, e
	cp NUM_ENGINE_FLAGS & $ff
	jr c, .flag_save_loop
	ret
.load_help
	ld bc, DebugEngineFlagHelpMenu
	jp DebugMenuLoad

DebugEngineEventFlagCallBase:
	push af
	ld a, [wDebugMenuParameter]
	ld bc, 100
	ld hl, -100
	rst AddNTimes
	pop af
	ld b, h
	ld c, l
	ld de, wDebugMenuScratchSpace
	ld hl, wDebugMenuScratchArea
	jp DebugFlagGridBase

DebugEngineEventFlagMoveCursors:
	ccf
	sbc a
	add a, 2
	ld de, wDebugMenuScratchSpace
	jp DebugFlagGridBase

DebugEngineEventFlagShowStatus:
	; b: number of pages, c: last element in last page
	push bc
	set_map_mode 0
	xor a
	call DebugEngineEventFlagCallBase
	hlcoord 3, 15
	ld [hl], $df
	hlcoord 17, 15
	ld [hl], $eb
	hlcoord 10, 15
	ld [hl], "-"
	ld a, [wDebugMenuParameter]
	ld bc, 100
	ld hl, -100
	rst AddNTimes
	ld d, h
	ld e, l
	push de
	ld bc, 0
	hlcoord 5, 15
	ld a, 4
	ld [hDigitsFlags], a
	predef PrintBigNumber
	pop de
	ld a, [wDebugMenuParameter]
	pop bc
	cp b
	jp z, .show_last_page_status
	ld hl, 99
	add hl, de
	ld d, h
	ld e, l
	hlcoord 12, 15
	ld bc, 0
	predef PrintBigNumber
	set_map_mode 1
	ret
.show_last_page_status
	ld l, c
	ld h, 0
	push hl
	add hl, de
	ld d, h
	ld e, l
	hlcoord 12, 15
	ld bc, 0
	ld a, 4
	ld [hDigitsFlags], a
	predef PrintBigNumber
	pop de
	ld a, 4
	call DebugFlagGridBase
	set_map_mode 1
	ret

DebugEngineEventFlagChangePage:
	; b: last page
	ld a, [wDebugMenuParameter]
	jr c, .page_up
	dec a
	jr nz, .page_selected
	ld a, b
	jr .page_selected
.page_up
	inc a
	cp b
	jr c, .page_selected
	jr z, .page_selected
	ld a, 1
.page_selected
	ld [wDebugMenuParameter], a
	ret

DebugEngineFlagHelpMenu: debug_menu " Engine Flags", DebugEngineFlagMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .help
.help debug_option "HELP (A: back)", DebugMenuCancel
.initialize
	ld a, 5
	jp DebugFlagGridBase

DebugEventFlagMenu: debug_menu " Event Flags", DebugFlagsMenu, .options, .save_changes, .initialize
.options debug_menu_options .cursors, .data, .data, .data, .data, .data, .data, .data, .data, .data, .data, .page, .help
.cursors debug_option "", 0, .move_cursors, .reload
.data debug_option "", .toggle, .move_cursors, .reload
.page debug_option "", 0, .change_page, .reload
.help debug_option "Help", .load_help, 0, .reload
.initialize
	ld a, [wDebugMenuParameter]
	and a
	call z, .initial_data_load
	ld a, BANK(wDebugMenuScratchArea)
	ld [rSVBK], a
	xor a
	ld [wDebugMenuScratchSpace], a
.show_status
	lb bc, (NUM_EVENTS + 99) / 100, (NUM_EVENTS + 99) % 100
	jp DebugEngineEventFlagShowStatus
.initial_data_load
	ld a, 1
	ld [wDebugMenuParameter], a
	call .load
	jr .show_status
.load
	ln a, BANK(wDebugMenuScratchArea), BANK(EventFlags)
	ld hl, EventFlags
	ld de, wDebugMenuScratchArea
	ld bc, (NUM_EVENTS + 7) >> 3
	jp DoubleFarCopyWRAM

.move_cursors
	call DebugEngineEventFlagMoveCursors
	jp .show_status
.toggle
	ld a, 3
	call DebugEngineEventFlagCallBase
	jp .show_status
.reload
	call .load
	play_sound SFX_MENU
	jp .show_status
.save_changes
	call .save
	play_sound SFX_TRANSACTION
	jp .show_status
.save
	ln a, BANK(EventFlags), BANK(wDebugMenuScratchArea)
	ld hl, wDebugMenuScratchArea
	ld de, EventFlags
	ld bc, (NUM_EVENTS + 7) >> 3
	jp DoubleFarCopyWRAM

.change_page
	ld b, (NUM_EVENTS + 99) / 100
	call DebugEngineEventFlagChangePage
	jp .show_status
.load_help
	ld bc, DebugEventFlagHelpMenu
	jp DebugMenuLoad

DebugEventFlagHelpMenu: debug_menu " Event Flags", DebugEventFlagMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .help
.help debug_option "HELP (A: back)", DebugMenuCancel
.initialize
	ld a, 5
	jp DebugFlagGridBase

DebugEditMemoryMenu: debug_menu " Edit WRAM Memory", DebugMemoryAccessMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .cursor, .address, .value, .read, .write, .back
.cursor debug_option "(cursor)", 0, .move_cursor, .change_mode
.address debug_option "Address:", 0, .change_address, .change_mode
.value debug_option "Contents:", 0, .change_value, .change_mode
.read debug_option "Read contents", .read_contents, 0, .change_mode
.write debug_option "Write contents", .write_contents, 0, .change_mode
.back debug_option "Go back", DebugMenuCancel, 0, .change_mode
.initialize
	xor a
	ld hl, wDebugMenuScratchSpace
	rept 6
		ld [hli], a
	endr
	hlcoord 1, 11
	ld de, .information_text
	call PlaceText
.show_status
	set_map_mode 0
	hlcoord 14, 5
	ld a, [wDebugMenuScratchSpace + 1]
	call DebugMenuPrintHexValue
	ld a, [wDebugMenuScratchSpace]
	call DebugMenuPrintHexValue
	hlcoord 14, 6
	ld a, [wDebugMenuScratchSpace + 3]
	call DebugMenuPrintHexValue
	ld a, [wDebugMenuScratchSpace + 2]
	call DebugMenuPrintHexValue
	hlcoord 14, 4
	push hl
	ld de, DebugMenuClearString4
	call PlaceString
	pop hl
	ld a, [wDebugMenuScratchSpace + 4]
	xor 3
	ld c, a
	ld b, 0
	add hl, bc
	ld [hl], $ee
	ld hl, wDebugMenuScratchSpace + 5
	bit 0, [hl]
	ld de, .little_text
	jr z, .display_endian_chosen
	ld de, .big_text
.display_endian_chosen
	hlcoord 13, 11
	call PlaceText
	set_map_mode 1
	ret
.move_cursor
	jr c, .move_cursor_forwards
	ld hl, wDebugMenuScratchSpace + 4
	inc [hl]
	res 2, [hl]
	jp .show_status
.move_cursor_forwards
	ld a, [wDebugMenuScratchSpace + 4]
	dec a
	and 3
	ld [wDebugMenuScratchSpace + 4], a
	jp .show_status
.change_address
	push af
	ld a, [wDebugMenuScratchSpace + 4]
	cp 1
	ld e, a
	ld a, 1
	adc a, 0
	ld d, a
	ld hl, wDebugMenuScratchSpace
	ld c, [hl]
	inc hl
	ld b, [hl]
	pop af
	call DebugMenuChangeHexValue
	res 7, b
	ld [hl], b
	dec hl
	ld [hl], c
	jp .show_status
.change_value
	push af
	ld hl, wDebugMenuScratchSpace + 2
	ld c, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld e, [hl]
	ld d, 1
	pop af
	call DebugMenuChangeHexValue
	dec hl
	ld [hl], b
	dec hl
	ld [hl], c
	jp .show_status
.read_contents
	call .select_address
	ld a, [hli]
	ld c, a
	ld b, [hl]
	call .endianness_swap
	ld hl, wDebugMenuScratchSpace + 2
	ld a, c
	ld [hli], a
	ld [hl], b
	play_sound SFX_TRANSACTION
	jp .show_status
.write_contents
	ld hl, wDebugMenuScratchSpace + 2
	ld a, [hli]
	ld c, a
	ld b, [hl]
	call .endianness_swap
	call .select_address
	ld a, h
	cp $c0
	jr z, .invalid_write_address
	cp $cf
	jr nz, .valid_write_address
	ld a, l
	cp (wDebugMenuScratchSpace - 8) & $ff
	jr c, .valid_write_address
	cp (wDebugMenuScratchSpace + 5) & $ff
	jr c, .invalid_write_address
.valid_write_address
	ld a, c
	ld [hli], a
	ld [hl], b
	play_sound SFX_TRANSACTION
	ret
.invalid_write_address
	play_sound SFX_WRONG
	ret
.select_address
	ld hl, wDebugMenuScratchSpace + 1
	ld a, [hl]
	swap a
	and 7
	jr z, .not_banked
	ld [rSVBK], a
.not_banked
	xor 7
	cp 7
	adc a, 5
	swap a
	add a, [hl]
	dec hl
	ld l, [hl]
	ld h, a
	ret
.endianness_swap
	ld hl, wDebugMenuScratchSpace + 5
	bit 0, [hl]
	ret z
	ld a, c
	ld c, b
	ld b, a
	ret
.change_mode
	ld hl, wDebugMenuScratchSpace + 5
	ld a, 1
	xor [hl]
	ld [hl], a
	jp .show_status
.information_text
	ctxt "Endianness:"
	nl   "(SELECT: toggle)"
	nl   "Note: address is"
	nl   "absolute unbanked."
	nl   "Top nibble maps to"
	nl   "bank, rest: offset"
	done
.little_text
	ctxt "little"
	done
.big_text
	ctxt "   big"
	done

DebugMenuChangeHexValue:
	;change 16-bit value bc by d << (4 * e), direction of change given by carry (c: +, nc: -)
	;requires d < 16, e < 4; preserves hl
	ld a, e
	ld e, 0
	push af
	bit 0, a
	jr z, .no_swap
	swap d
.no_swap
	bit 1, a
	jr nz, .no_change_byte
	ld e, d
	ld d, 0
.no_change_byte
	pop af
	jr c, .not_negative
	ld a, d
	cpl
	ld d, a
	ld a, e
	cpl
	ld e, a
	inc de
.not_negative
	ld a, c
	add a, e
	ld c, a
	ld a, b
	adc a, d
	ld b, a
	ret

DebugMenuPrintHexValue:
	;prints the value at a in the coordinates specified by hl
	;exits with hl pointing to the end of the value, af destroyed, rest unchanged
	push af
	swap a
	and 15
	add a, "0"
	set 7, a
	ld [hli], a
	pop af
	and 15
	add a, "0"
	set 7, a
	ld [hli], a
	ret

DebugExecuteFunctionMenu: debug_menu " Execute Function", DebugMemoryAccessMenu, .options, .execute, .initialize
.options debug_menu_options .cursor, .address
.cursor debug_option "(cursor)", 0, .move_cursor, .change_mode
.address debug_option "Address:   :", 0, .change_address, .change_mode
.initialize
	xor a
	ld hl, wDebugMenuScratchSpace
	rept 4
		ld [hli], a
	endr
	ld [hl], 2
	ld a, 1
	ld [rSVBK], a
	hlcoord 2, 7
	ld de, .help_text
	call PlaceText
.show_status
	set_map_mode 0
	ld a, $7f
	ldcoord_a 1, 8
	ldcoord_a 1, 10
	ldcoord_a 1, 12
	ld a, [wDebugMenuScratchSpace + 4]
	hlcoord 1, 4
	ld bc, 2 * SCREEN_WIDTH
	rst AddNTimes
	ld [hl], $ed
	ld a, [wDebugMenuScratchSpace + 2]
	hlcoord 11, 5
	call DebugMenuPrintHexValue
	inc hl
	ld a, [wDebugMenuScratchSpace + 1]
	call DebugMenuPrintHexValue
	ld a, [wDebugMenuScratchSpace]
	call DebugMenuPrintHexValue
	hlcoord 11, 4
	push hl
	ld de, DebugMenuClearString7
	call PlaceString
	ld hl, wDebugMenuScratchSpace + 3
	ld a, 5
	sub [hl]
	pop hl
	ld c, a
	ld b, 0
	cp 2
	jr c, .cursor_in_bank
	inc c
.cursor_in_bank
	add hl, bc
	ld [hl], $ee
	set_map_mode 1
	ret
.move_cursor
	ld a, [wDebugMenuScratchSpace + 3]
	jr c, .move_cursor_forwards
	inc a
	cp 6
	jr c, .cursor_moved
	xor a
	jr .cursor_moved
.move_cursor_forwards
	sub 1
	jr nc, .cursor_moved
	ld a, 5
.cursor_moved
	ld [wDebugMenuScratchSpace + 3], a
	jp .show_status
.change_address
	push af
	ld d, 1
	ld hl, wDebugMenuScratchSpace + 3
	ld e, [hl]
	bit 2, e
	jr nz, .change_bank
	ld hl, wDebugMenuScratchSpace
	ld a, [hli]
	ld b, [hl]
	ld c, a
	pop af
	call DebugMenuChangeHexValue
	ld [hl], b
	dec hl
	ld [hl], c
	jp .show_status
.change_bank
	res 2, e
	ld hl, wDebugMenuScratchSpace + 2
	ld c, [hl]
	ld b, 0
	pop af
	call DebugMenuChangeHexValue
	res 7, c
	ld [hl], c
	jp .show_status
.change_mode
	ld a, [wDebugMenuScratchSpace + 4]
	inc a
	cp a, 5
	jr c, .mode_changed
	ld a, 2
.mode_changed
	ld [wDebugMenuScratchSpace + 4], a
	jp .show_status
.execute
	ld hl, wDebugMenuScratchSpace
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	or c
	jr z, .address_is_zero
	ld d, [hl]
	ld a, [wDebugMenuScratchSpace + 4]
	ld e, a
	push bc
	push de
	play_sound SFX_TRANSACTION
	pop de
	pop bc
	jp DebugMenuExit
.address_is_zero
	play_sound SFX_WRONG
	ret
.help_text
	ctxt "Calling modes:"
	nl   "2: close text,"
	nl   "   call directly"
	nl   "3: close text,"
	nl   "   execute script"
	nl   "4: no close text,"
	nl   "   execute script"
	nl   ""
	nl   "SEL: change mode"
	nl   "START: close/exec"
	done

DebugMultDivTestMenu: debug_menu " Mult/Div Test", DebugMiscellaneousMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .cursor, .first, .second, .back
.cursor debug_option "(cursor)", 0, .move_cursor
.first debug_option "1st number:", 0, .change_number
.second debug_option "2nd number:", 0, .change_number
.back debug_option "Go back", DebugMenuCancel
.initialize
	xor a
	ld hl, wDebugMenuScratchSpace
	rept 5
		ld [hli], a
	endr
	ld de, .labels
	hlcoord 2, 11
	call PlaceText
.show_status
	set_map_mode 0
	hlcoord 14, 4
	push hl
	ld de, DebugMenuClearString5
	call PlaceString
	pop hl
	ld a, [wDebugMenuScratchSpace + 4]
	cpl
	add a, 5
	ld c, a
	ld b, 0
	add hl, bc
	ld [hl], $ee
	ld a, [wDebugMenuScratchSpace]
	ld e, a
	ld a, [wDebugMenuScratchSpace + 1]
	ld d, a
	push de
	ld bc, 0
	ld a, 5
	hlcoord 14, 5
	ld [hDigitsFlags], a
	predef PrintBigNumber
	ld a, [wDebugMenuScratchSpace + 2]
	ld e, a
	ld a, [wDebugMenuScratchSpace + 3]
	ld d, a
	push de
	ld bc, 0
	hlcoord 14, 6
	predef PrintBigNumber
	pop de
	pop bc
	push bc
	push de
	call Multiply16
	hlcoord 9, 12
	ld a, 10 | $80
	ld [hDigitsFlags], a
	predef PrintBigNumber
	pop de
	pop bc
	call .show_division_result
	set_map_mode 1
	ret
.show_division_result
	ld a, d
	or e
	jr z, .division_by_zero
	call Divide16
	push bc
	ld bc, 0
	ld a, 5
	hlcoord 5, 15
	ld [hDigitsFlags], a
	predef PrintBigNumber
	pop de
	ld bc, 0
	hlcoord 14, 15
	predef_jump PrintBigNumber
.division_by_zero
	ld de, .div0
	push de
	hlcoord 5, 15
	call PlaceText
	pop de
	hlcoord 14, 15
	jp PlaceText
.move_cursor
	ld a, [wDebugMenuScratchSpace + 4]
	jr c, .move_cursor_forwards
	inc a
	cp 5
	jr c, .cursor_moved
	xor a
	jr .cursor_moved
.move_cursor_forwards
	sub 1
	jr nc, .cursor_moved
	ld a, 4
.cursor_moved
	ld [wDebugMenuScratchSpace + 4], a
	jp .show_status
.change_number
	push af
	ld hl, wDebugMenuScratchSpace - 2
	ld a, [wDebugMenuCurrentOption]
	ld bc, 2
	rst AddNTimes
	ld bc, 0
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop af
	push hl
	ld a, [wDebugMenuScratchSpace + 4]
	call DebugMenuModifyByPowerOfTen
	pop hl
	ld a, d
	ld [hld], a
	ld [hl], e
	jp .show_status
.labels
	ctxt "Multiplication:"
	nl   "    P:"
	nl   ""
	nl   "Division:"
	nl   "Q:       R:"
	done
.div0
	text "-----"
	done

DebugSoundTestMenu: debug_menu " Sound test", DebugMiscellaneousMenu, .options, .restart_back, .initialize
.options debug_menu_options .music, .sound, .cry, .restart, .restart_go_back, .exit
.music debug_option "Play music:", .play_music, .change_music, .change_step
.sound debug_option "Play sound:", .play_sound, .change_sound, .change_step
.cry debug_option "Play cry:", .play_cry, .change_cry, .change_step
.restart debug_option "Restart map music", RestartMapMusic, 0, .change_step
.restart_go_back debug_option "Restart/go back", .restart_back, 0, .change_step
.exit debug_option "Exit all menus", .exit_all, 0, .change_step
.initialize
	xor a
	ld hl, wDebugMenuScratchSpace
	ld [hli], a
	ld [hli], a
	inc a
	ld [hli], a
	ld [hl], a
	ld de, .help_info
	hlcoord 2, 14
	call PlaceText
	jr .show_status

.change_music
	ld hl, wDebugMenuScratchSpace
	ld de, wDebugMenuScratchSpace + 2
	lb bc, 0, NUM_MUSIC - 1
	call DebugMenuChangeValueLimited
	jr .show_status

.change_sound
	ld hl, wDebugMenuScratchSpace + 1
	ld de, wDebugMenuScratchSpace + 2
	lb bc, 0, NUM_SFX - 1
	call DebugMenuChangeValueLimited
	jr .show_status

.change_cry
	ld hl, wDebugMenuScratchSpace + 3
	ld de, wDebugMenuScratchSpace + 2
	lb bc, 1, 254
	call DebugMenuChangeValueLimited
	jr .show_status

.change_step
	ld hl, wDebugMenuScratchSpace + 2
	call DebugMenuChangeStep
.show_status
	set_map_mode 0
	ld a, 3
	ld [hDigitsFlags], a
	ld a, [wDebugMenuScratchSpace]
	hlcoord 16, 4
	call .print_index
	ld a, [wDebugMenuScratchSpace + 1]
	hlcoord 16, 5
	call .print_index
	ld a, [wDebugMenuScratchSpace + 3]
	hlcoord 16, 6
	call .print_index
	ld a, 2
	ld [hDigitsFlags], a
	ld a, [wDebugMenuScratchSpace + 2]
	hlcoord 17, 14
	call .print_index
	set_map_mode 1
	ret

.print_index
	ld e, a
	ld d, 0
	ld bc, 0
	predef_jump PrintBigNumber

.play_music
	ld de, 0
	call PlayMusic
	call DelayFrame
	ld a, [wDebugMenuScratchSpace]
	ld e, a
	ld d, 0
	jp PlayMusic
.play_sound
	ld a, [wDebugMenuScratchSpace + 1]
	ld e, a
	ld d, 0
	call WaitPlaySFX
	jp WaitSFX
.play_cry
	ld a, [wDebugMenuScratchSpace + 3]
	jp PlayCry
.restart_back
	call RestartMapMusic
	jp DebugMenuCancel
.exit_all
	debug_exit MENU_EXIT_ALL
	ret
.help_info
	ctxt "L/R: change by"
	nl   "SEL: change step"
	nl   "A: play selected"
	done

DebugStopwatchTestMenu: debug_menu " Stopwatch test", DebugMiscellaneousMenu, .options, DebugMenuCancel, .initialize
.options debug_menu_options .number, .read, .toggle, .reset, .back
.number debug_option "Stopwatch:", 0, .change_stopwatch
.read debug_option "Read:", .read_stopwatch
.toggle debug_option "Start/stop", .toggle_stopwatch
.reset debug_option "Reset", .reset_stopwatch
.back debug_option "Go back", DebugMenuCancel
.initialize
	xor a
	ld [wDebugMenuScratchSpace], a
.show_stopwatch_number
	hlcoord 18, 4
	ld a, [wDebugMenuScratchSpace]
	add a, "0"
	ld [hl], a
	ret
.change_stopwatch
	sbc a
	and 2
	dec a
	ld hl, wDebugMenuScratchSpace
	add a, [hl]
	and 7
	ld [hl], a
	call .clear_read_field
	jr .show_stopwatch_number
.read_stopwatch
	ld a, [wDebugMenuScratchSpace]
	ld c, a
	ld b, 0
	decoord 11, 5
	jpba PrintStopwatchValue
.toggle_stopwatch
	ld a, [wDebugMenuScratchSpace]
	ld c, 1
	and a
	jr z, .stopwatch_selected
.selection_loop
	sla c
	dec a
	jr nz, .selection_loop
.stopwatch_selected
	ld a, [wStopwatchControl]
	xor c
	ld [wStopwatchControl], a
	jr .clear_read_field
.reset_stopwatch
	ld a, [wDebugMenuScratchSpace]
	ld c, a
	ld b, STOPWATCH_RESET
	callba ReadStopwatch
.clear_read_field
	ld de, DebugMenuClearString8
	hlcoord 11, 5
	jp PlaceString

DebugExpGrpMenu:
	debug_menu " Gen 3 Exp Test", DebugMiscellaneousMenu, .options, DebugMenuCancel, .initialize

.options
	debug_menu_options .grp, .level, .back
.grp
	debug_option "Group:", .calc_exp, .change_grp, .change_step
.level
	debug_option "Level:", .calc_exp, .change_level, .change_step
.back
	debug_option "Go Back", DebugMenuCancel, 0, .change_step

.initialize
	xor a
	ld [wDebugMenuScratchSpace], a
	ld [wDebugMenuScratchSpace + 2], a ; growth rate
	inc a
	ld [wDebugMenuScratchSpace + 1], a ; level
	ld [wDebugMenuScratchSpace + 3], a ; step size

	ld de, .result_str
	hlcoord 4, 7
	call PlaceText

	ld de, .help_info
	hlcoord 2, 14
	call PlaceText
.calc_exp
	set_map_mode 0
	ld a, [wDebugMenuScratchSpace + 1] ; level
	ld d, a
	ld a, [wDebugMenuScratchSpace + 2] ; growth rate
	ld b, a

	ld a, [rSVBK]
	push af
	ld a, BANK(BaseGrowthRate)
	ld [rSVBK], a
	ld a, b
	ld [BaseGrowthRate], a
	callba CalcExpAtLevel
	pop af
	ld [rSVBK], a
	ld hl, hProduct + 1
	ld b, 0
	ld c, [hl]
	inc hl
	ld d, [hl]
	inc hl
	ld e, [hl]
	hlcoord 4, 8
	ld a, $88
	ld [hDigitsFlags], a
	predef PrintBigNumber
	jr .update_remaining_display

.change_grp
	ld hl, wDebugMenuScratchSpace + 2 ; growth rate
	ld de, .byte
	lb bc, 0, FLUCTUATING
	call DebugMenuChangeValueLimited
	jr .update_display

.change_level
	ld hl, wDebugMenuScratchSpace + 1 ; level
	ld de, wDebugMenuScratchSpace + 3 ; step size
	lb bc, 1, MAX_LEVEL
	call DebugMenuChangeValueLimited
	jr .update_display

.change_step
	ld hl, wDebugMenuScratchSpace + 3 ; step size
	call DebugMenuChangeStep
.update_display
	set_map_mode 0
.update_remaining_display
	ld a, [wDebugMenuScratchSpace + 2] ; growth rate
	ld bc, .FluctuatingString - .ErraticString
	ld hl, .GrowthRatesStrings
	rst AddNTimes
	decoord SCREEN_WIDTH - STRLEN("Fluctuating@"), 4
	rst CopyBytes

	ld a, 3
	ld [hDigitsFlags], a
	ld a, [wDebugMenuScratchSpace + 1]
	hlcoord 16, 5
	call .print_index

	ld a, 2
	ld [hDigitsFlags], a
	ld a, [wDebugMenuScratchSpace + 3]
	hlcoord 17, 14
.print_index
	ld e, a
	ld d, 0
	ld bc, 0
	predef PrintBigNumber
	set_map_mode 1
	ret

.GrowthRatesStrings:
.MedFastString     db "Medium Fast"
.SlightFastString  db "Slight Fast"
.SlightSlowString  db "Slight Slow"
.MedSlowString     db "Medium Slow"
.SlowString        db "       Slow"
.FastString        db "       Fast"
.ErraticString     db "    Erratic"
.FluctuatingString db "Fluctuating"

.result_str 
	ctxt "Results:"
	done

.help_info
	ctxt "L/R: change by"
	nl   "SEL: change step"
	nl   "  A: calculate"
	done

.byte
	db 1
