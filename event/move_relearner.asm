	const_def
	const MOVERELEARNERTEXT_INTRO
	const MOVERELEARNERTEXT_WHICHMON
	const MOVERELEARNERTEXT_WHICHMOVE
	const MOVERELEARNERTEXT_COMEAGAIN
	const MOVERELEARNERTEXT_EGG
	const MOVERELEARNERTEXT_NOTAPOKEMON
	const MOVERELEARNERTEXT_NOTENOUGHMONEY
	const MOVERELEARNERTEXT_NOMOVESTOLEARN

MoveRelearner:
	ld a, MOVERELEARNERTEXT_INTRO
	call PrintMoveRelearnerText
	callba Function24ae8
	call YesNoBox
	jp c, .cancel
	ld hl, .cost_to_relearn
	ld de, $ffc3
	ld bc, 3
	call CopyBytes
	ld bc, $ffc3
	ld de, Money
	callba Function1600b
	jp c, .not_enough_money
	ld a, MOVERELEARNERTEXT_WHICHMON
	call PrintMoveRelearnerText
	call Functiona36

	ld b, $6
	callba Function50000
	jr c, .cancel

	ld a, [CurPartySpecies]
	cp EGG
	jr z, .egg

	call IsAPokemon
	jr c, .no_mon

	call GetRelearnableMoves
	jr z, .no_moves

	ld a, MOVERELEARNERTEXT_WHICHMOVE
	call PrintMoveRelearnerText
	call Functiona36

	call ChooseMoveToLearn
	jr c, .skip_learn
	ld a, [MenuSelection]
	ld [wd265], a
	call GetMoveName
	ld hl, StringBuffer1
	ld de, StringBuffer2
	ld bc, StringBuffer2 - StringBuffer1
	call CopyBytes
	ld b, 0
	predef LearnMove
	ld a, b
	and a
	jr z, .skip_learn
	ld hl, .cost_to_relearn
	ld de, $ffc3
	ld bc, 3
	call CopyBytes
	ld bc, $ffc3
	ld de, Money
	callba Function15ffa
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
.skip_learn
	call Function2b3c
	call SpeechTextBox
.cancel
	ld a, MOVERELEARNERTEXT_COMEAGAIN
	call PrintMoveRelearnerText
	ret
.egg
	ld a, MOVERELEARNERTEXT_EGG
	call PrintMoveRelearnerText
	ret
.not_enough_money
	ld a, MOVERELEARNERTEXT_NOTENOUGHMONEY
	call PrintMoveRelearnerText
	ret
.no_mon
	ld a, MOVERELEARNERTEXT_NOTAPOKEMON
	call PrintMoveRelearnerText
	ret
.no_moves
	ld a, MOVERELEARNERTEXT_NOMOVESTOLEARN
	call PrintMoveRelearnerText
	ret

.cost_to_relearn
	dt 1000

GetRelearnableMoves:
	GLOBAL EvosAttacksPointers, EvosAttacks
	; Get moves relearnable by CurPartyMon
	; Returns z if no moves can be relearned.
	ld hl, wd002
	xor a
	ld [hli], a
	ld [hl], $ff
	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld a, [hl]
	ld [CurPartySpecies], a
	push af
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [CurPartyLevel], a
	ld b, 0
	ld de, wd002 + 1
.loop
	push bc
	ld a, [CurPartySpecies]
	dec a
	ld c, a
	ld b, 0
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarHalfword
.skip_evos
	ld a, BANK(EvosAttacks)
	call GetFarByte2
	and a
	jr nz, .skip_evos
.loop_moves
	ld a, BANK(EvosAttacks)
	call GetFarByte2
	and a
	jr z, .done
	ld c, a
	ld a, [CurPartyLevel]
	cp c
	ld a, BANK(EvosAttacks)
	call GetFarByte2
	jr c, .loop_moves
.okay
	ld c, a
	call CheckAlreadyInList
	jr c, .loop_moves
	call CheckPokemonAlreadyKnowsMove
	jr c, .loop_moves
	ld a, c
	ld [de], a
	inc de
	ld a, $ff
	ld [de], a
	pop bc
	inc b
	push bc
	jr .loop_moves
.done
	callba GetPreEvolution
	pop bc
	jr c, .loop
	pop af
	ld [CurPartySpecies], a
	ld a, b
	ld [wd002], a
	and a
	ret

CheckAlreadyInList:
	push hl
	ld hl, wd002 + 1
.loop
	ld a, [hli]
	cp $ff
	jr z, .nope
	cp c
	jr nz, .loop
	pop hl
	scf
	ret
.nope
	pop hl
	and a
	ret

CheckPokemonAlreadyKnowsMove:
	; Check if move c is in the selected pokemon's movepool already.
	; Returns c if yes.
	push hl
	push bc
	ld a, MON_MOVES
	call GetPartyParamLocation
	ld b, 4
.loop
	ld a, [hli]
	cp c
	jr z, .yes
	dec b
	jr nz, .loop
	pop bc
	pop hl
	and a
	ret
.yes
	pop bc
	pop hl
	scf
	ret

ChooseMoveToLearn:
	; Open a full-screen scrolling menu
	; Number of items stored in wd002
	; List of items stored in wd002 + 1
	; Print move names, PP, details, and descriptions
	; Enable Up, Down, A, and B
	; Up scrolls up
	; Down scrolls down
	; A confirms selection
	; B backs out
	call FadeToMenu
	callba Function8000
	call Function1ad2
	ld hl, .MenuDataHeader
	call Function1d3c
	xor a
	ld [wcf88], a
	ld a, 1
	ld [wd0e4], a
	call Function350c
	call SpeechTextBox
	ld a, [wcf73]
	cp B_BUTTON
	jr z, .carry
	ld a, [MenuSelection]
	ld [wd262], a
	and a
	ret

.carry
	scf
	ret

.MenuDataHeader: ; 0x15e18
	db $40 ; flags
	db 01, 01 ; start coords
	db 11, 19 ; end coords
	dw .menudata2
	db 1 ; default option
; 0x15e20

.menudata2: ; 0x15e20
	db $30 ; pointers
	db 5, 8 ; rows, columns
	db 1 ; horizontal spacing
	dbw 0, wd002
	dba .PrintMoveName
	dba .PrintDetails
	dba .PrintMoveDesc

.PrintMoveName
	push de
	ld a, [MenuSelection]
	ld [wd265], a
	call GetMoveName
	pop hl
	call PlaceString
	ret
.PrintDetails
	ld hl, StringBuffer1
	ld bc, StringBuffer2 - StringBuffer1
	ld a, " "
	call ByteFill
	ld a, [MenuSelection]
	cp $ff
	ret z
	push de
	dec a
	ld bc, MOVE_LENGTH
	ld hl, Moves + MOVE_TYPE
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld [wd265], a
	; get move type
	and $3f
	; 5 characters
	ld c, a
	add a
	add a
	add c
	ld c, a
	ld b, 0
	ld hl, .Types
	add hl, bc
	ld d, h
	ld e, l

	ld hl, StringBuffer1
	ld bc, 5
	call PlaceString
	ld hl, StringBuffer1 + 4
	ld [hl], "/"
	; get move class
	ld a, [wd265]
	and $c0
	rlca
	rlca
	ld c, a
	add a
	add a
	add c
	ld c, a
	ld b, 0
	ld hl, .Classes
	add hl, bc
	ld d, h
	ld e, l

	ld hl, StringBuffer1 + 5
	ld bc, 5
	call PlaceString
	ld hl, StringBuffer1 + 9
	ld [hl], "/"

	ld a, [MenuSelection]
	dec a
	ld bc, MOVE_LENGTH
	ld hl, Moves + MOVE_PP
	call AddNTimes
	ld a, BANK(Moves)
	call GetFarByte
	ld [EngineBuffer1], a
	ld hl, StringBuffer1 + 10
	ld de, EngineBuffer1
	ld bc, $102
	call PrintNum
	ld hl, StringBuffer1 + 12
	ld [hl], "@"

	ld hl, SCREEN_WIDTH - 5
	pop de
	add hl, de
	push de
	ld de, StringBuffer1
	call PlaceString
	pop de
	ret

.Types
	db "Norm@"
	db "Lott@"
	db " Vol@"
	db " Vel@"
	db "Terr@"
	db "Rocc@"
	db "Ucll@"
	db " Col@"
	db "Sptt@"
	db " Acc@"

	db "Tp10@"
	db "Tp11@"
	db "Tp12@"
	db "Tp13@"
	db "Tp14@"
	db "Tp15@"
	db "Tp16@"
	db "Tp17@"
	db "Tp18@"
	db "Mldz@"

	db "Fuoc@"
	db "Acqu@"
	db "Erba@"
	db "Elet@"
	db "Psic@"
	db "Ghia@"
	db "Drgo@"
	db "Buio@"
	db " FRY@"
.Classes
	db " Fis@"
	db "Spec@"
	db "Stat@"

.PrintMoveDesc
	push de
	call SpeechTextBox
	ld a, [MenuSelection]
	cp $ff
	pop de
	ret z
	ld [CurSpecies], a
	hlcoord 1, 14
	predef PrintMoveDesc
	ret

PrintMoveRelearnerText:
    ld e, a
    ld d, 0
    ld hl, .TextPointers
    add hl, de
    add hl, de
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call PrintText
    ret
.TextPointers
	dw .Intro
	dw .WhichMon
	dw .WhichMove
	dw .ComeAgain
	dw .Egg
	dw .NotMon
	dw .NotEnoughMoney
	dw .NoMovesToLearn

.Intro
	text "Ciao! Io sono"
	line "l'Insegnamosse."

	para "Ma puoi chiamarmi"
	line "Holden."

	para "Conosco tutte le"
	line "mosse che un Poké-"

	para "mon possa impara-"
	line "re."

	para "Per soli ¥1000,"
	line "posso condividere"

	para "con te questa co-"
	line "noscenza."
	cont "Che ne dici?"
	done
.WhichMon
	text "Perfetto! A quale"
	line "Pokémon devo far"
	cont "ricordare una"
	cont "mossa?"
	done
.WhichMove
	text "Che mossa vuoi che"
	line "ricordi?"
	done
.ComeAgain
	text "Se volessi far ri-"
	line "cordare una mossa"
	cont "a un Pokémon, tor-"
	cont "na pure a farmi"
	cont "visita."
	done
.Egg
	text "Un uovo non può"
	line "ricordare!"
	done
.NotMon
	text "Cosa?! Ma non é"
	line "un Pokémon!"
	done
.NotEnoughMoney
	text "Spiacente, ma non"
	line "hai abbastanza"
	cont "soldi."
	done
.NoMovesToLearn
	text "Non posso far ri-"
	line "cordare mosse a"
	cont "questo Pokémon."
	done
