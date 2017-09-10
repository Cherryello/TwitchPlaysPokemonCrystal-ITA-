
INCLUDE "engine/facings.asm"

Data4273:: ; 4273
	db $00, $00, $01, $02, $00, $00
	db $06, $00, $01, $0c, $00, $00
	db $03, $00, $01, $00, $00, $00
	db $04, $00, $01, $00, $00, $00
	db $01, $00, $01, $00, $00, $00
	db $02, $00, $01, $00, $00, $00
	db $06, $00, $01, $00, $00, $00
	db $06, $01, $01, $00, $00, $00
	db $06, $02, $01, $00, $00, $00
	db $06, $03, $01, $00, $00, $00
	db $05, $00, $01, $00, $00, $00
	db $07, $00, $01, $02, $00, $00
	db $08, $00, $01, $00, $00, $00
	db $09, $00, $01, $00, $00, $00
	db $0a, $00, $01, $00, $00, $00
	db $0b, $00, $01, $00, $00, $00
	db $0c, $00, $01, $00, $00, $00
	db $0d, $00, $01, $00, $00, $00
	db $0e, $00, $01, $00, $00, $00
	db $0f, $00, $01, $02, $00, $00
	db $10, $00, $01, $02, $00, $00
	db $15, $00, $09, $2e, $01, $c0
	db $16, $00, $0a, $2e, $00, $00
	db $06, $00, $01, $0c, $00, $00
	db $06, $00, $01, $2e, $10, $00
	db $11, $00, $01, $2e, $00, $40
	db $12, $00, $01, $02, $00, $00
	db $13, $00, $00, $8e, $01, $00
	db $14, $00, $08, $8e, $02, $00
	db $17, $00, $00, $82, $00, $00
	db $19, $02, $01, $00, $00, $00
	db $18, $03, $01, $00, $00, $00
	db $11, $00, $0c, $2e, $01, $c0
	db $11, $00, $0d, $2e, $01, $c0
	db $1a, $00, $0e, $8e, $01, $00
	db $1b, $00, $0f, $8e, $02, $00
	db $03, $00, $01, $00, $00, $20
	db $00, $00, $01, $00, $00, $00
	db $16, $00, $11, $2e, $00, $00
; 4357


Function4357:: ; 4357
	push bc
	ld hl, OBJECT_01
	add hl, bc
	ld a, [hl]
	push af
	ld h, b
	ld l, c
	ld bc, ObjectStruct2 - ObjectStruct1
	xor a
	call ByteFill
	pop af
	cp $ff
	jr z, .asm_4379
	bit 7, a
	jr nz, .asm_4379
	call GetMapObject
	ld hl, OBJECT_00
	add hl, bc
	ld [hl], $ff

.asm_4379
	pop bc
	ret
; 437b

Function437b: ; 437b
	call Function4386
	ret c
	call Function43f3
	call Function4427
	ret
; 4386

Function4386: ; 4386
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 6, [hl]
	ld a, [XCoord]
	ld e, a
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld a, [hl]
	add $1
	sub e
	jr c, .asm_43b2
	cp $c
	jr nc, .asm_43b2
	ld a, [YCoord]
	ld e, a
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld a, [hl]
	add $1
	sub e
	jr c, .asm_43b2
	cp $b
	jr nc, .asm_43b2
	jr .asm_43dc

.asm_43b2
	ld hl, OBJECT_FLAGS
	add hl, bc
	set 6, [hl]
	ld a, [XCoord]
	ld e, a
	ld hl, OBJECT_20
	add hl, bc
	ld a, [hl]
	add $1
	sub e
	jr c, .asm_43de
	cp $c
	jr nc, .asm_43de
	ld a, [YCoord]
	ld e, a
	ld hl, OBJECT_21
	add hl, bc
	ld a, [hl]
	add $1
	sub e
	jr c, .asm_43de
	cp $b
	jr nc, .asm_43de

.asm_43dc
	and a
	ret

.asm_43de
	ld hl, OBJECT_04
	add hl, bc
	bit 1, [hl]
	jr nz, .asm_43eb
	call Function4357
	scf
	ret

.asm_43eb
	ld hl, OBJECT_FLAGS
	add hl, bc
	set 6, [hl]
	and a
	ret
; 43f3

Function43f3: ; 43f3
	ld hl, OBJECT_09
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_4409
	ld hl, OBJECT_FLAGS
	add hl, bc
	bit 5, [hl]
	jr nz, .asm_4426
	cp $1
	jr z, .asm_4414
	jr .asm_4421

.asm_4409
	call Function47bc
	ld hl, OBJECT_FLAGS
	add hl, bc
	bit 5, [hl]
	jr nz, .asm_4426

.asm_4414
	call Function47dd
	ld hl, OBJECT_09
	add hl, bc
	ld a, [hl]
	and a
	ret z
	cp $1
	ret z

.asm_4421
	ld hl, Pointers4b45
	rst JumpTable
	ret

.asm_4426
	ret
; 4427

Function4427: ; 4427
	ld hl, OBJECT_04
	add hl, bc
	bit 0, [hl]
	jr nz, Function44a3

	ld hl, OBJECT_FLAGS
	add hl, bc
	bit 6, [hl]
	jr nz, Function44a3

	bit 5, [hl]
	jr nz, Function4448

	ld de, Pointers445f
	jr Function444d
; 4440

Function4440: ; 4440
	ld hl, OBJECT_04
	add hl, bc
	bit 0, [hl]
	jr nz, Function44a3
	; fallthrough
; 4448

Function4448: ; 4448
	ld de, Pointers445f + 2
	jr Function444d
; 444d

Function444d: ; 444d
	ld hl, OBJECT_11
	add hl, bc
	ld a, [hl]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call _hl_
	ret
; 445f

Pointers445f: ; 445f
	dw Function44a3, Function44a3
	dw Function44b5, Function44aa
	dw Function44c1, Function44aa
	dw Function4508, Function44aa
	dw Function4529, Function44aa
	dw Function4539, Function44a3
	dw Function456e, Function456e
	dw Function457b, Function44a3
	dw Function4582, Function4582
	dw Function4589, Function4589
	dw Function4590, Function45a4
	dw Function45ab, Function44aa
	dw Function45be, Function45be
	dw Function45c5, Function45c5
	dw Function45da, Function44a3
	dw Function45ed, Function44a3
	dw Function44e4, Function44aa
	dw Function4590_2, Function45a4_2
; 44a3

Function44a3: ; 44a3
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $ff
	ret
; 44aa

Function44aa: ; 44aa
	call GetSpriteDirection
	or $0
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 44b5

Function44b5: ; 44b5
	ld hl, OBJECT_FACING
	add hl, bc
	ld a, [hl]
	and $1
	jr nz, Function44c1
	jp Function44aa
; 44c1

Function44c1: ; 44c1
	ld hl, OBJECT_04
	add hl, bc
	bit 3, [hl]
	jp nz, Function44aa
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	inc a
	and $f
	ld [hl], a
	rrca
	rrca
	and $3
	ld d, a
	call GetSpriteDirection
	or $0
	or d
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 44e4

Function44e4: ; 44e4
	ld hl, OBJECT_04
	add hl, bc
	bit 3, [hl]
	jp nz, Function44aa
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	add $2
	and $f
	ld [hl], a
	rrca
	rrca
	and $3
	ld d, a
	call GetSpriteDirection
	or $0
	or d
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 4508

Function4508: ; 4508
	ld hl, OBJECT_04
	add hl, bc
	bit 3, [hl]
	jp nz, Function44aa
	ld hl, OBJECT_12
	add hl, bc
	inc [hl]
	ld a, [hl]
	rrca
	rrca
	rrca
	and $3
	ld d, a
	call GetSpriteDirection
	or $0
	or d
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 4529

Function4529: ; 4529
	call Function453f
	ld hl, OBJECT_08
	add hl, bc
	ld a, [hl]
	or $0
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 4539

Function4539: ; 4539
	call Function453f
	jp Function44a3
; 453f

Function453f: ; 453f
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	and $f0
	ld e, a
	ld a, [hl]
	inc a
	and $f
	ld d, a
	cp 1
	jr c, .asm_4558
	ld d, 0
	ld a, e
	add $10
	and $30
	ld e, a

.asm_4558
	ld a, d
	or e
	ld [hl], a

	ld hl, OBJECT_08
	add hl, bc
	ld e, [hl]
	rr e
	rr e
	ld d, 0
	ld hl, .Directions
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_08
	add hl, bc
	ld [hl], a
	ret
; 456a

.Directions ; 456a
	db $08, $00, $0c, $04
; 456e

Function456e: ; 456e
	call GetSpriteDirection
	rrca
	rrca
	add $10
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 457b

Function457b: ; 457b
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $15
	ret
; 4582

Function4582: ; 4582
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $14
	ret
; 4589

Function4589: ; 4589
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $17
	ret
; 4590

Function4590: ; 4590
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	inc a
	and $f
	ld [hl], a
	and $8
	jr z, Function45a4
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $4
	ret
; 45a4

Function45a4: ; 45a4
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $0
	ret
; 45ab

Function4590_2:
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	inc a
	and $f
	ld [hl], a
	and $8
	jr z, Function45a4_2
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], 27
	ret

Function45a4_2:
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], 32
	ret

Function45ab: ; 45ab
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	inc a
	ld [hl], a
	and $c
	rrca
	rrca
	add $18
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], a
	ret
; 45be

Function45be: ; 45be
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $16
	ret
; 45c5

Function45c5: ; 45c5
	ld a, [VariableSprites + 3]
	ld d, $17
	cp $33
	jr z, .asm_45d4
	cp $47
	jr z, .asm_45d4
	ld d, $16

.asm_45d4
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], d
	ret
; 45da

Function45da: ; 45da
	ld hl, OBJECT_12
	add hl, bc
	inc [hl]
	ld a, [hl]

	ld hl, OBJECT_FACING
	add hl, bc
	and 2
	ld a, $1c
	jr z, .asm_45eb
	inc a
.asm_45eb
	ld [hl], a
	ret
; 45ed

Function45ed: ; 45ed
	ld hl, OBJECT_12
	add hl, bc
	inc [hl]
	ld a, [hl]
	ld hl, OBJECT_FACING
	add hl, bc
	and 4
	ld a, $1e
	jr z, .asm_45fe
	inc a

.asm_45fe
	ld [hl], a
	ret
; 4600

Function4600: ; 4600

	ld hl, OBJECT_MAP_X
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_NEXT_MAP_X
	add hl, bc
	ld [hl], a

	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_NEXT_MAP_Y
	add hl, bc
	ld [hl], a

	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_NEXT_TILE
	add hl, bc
	ld [hl], a

	call Function4661
	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld a, [hl]

	call Function4679
	ret
; 462a

Function462a: ; 462a

	ld hl, OBJECT_NEXT_MAP_X
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld [hl], a

	ld hl, OBJECT_NEXT_MAP_Y
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld [hl], a

	ret
; 463f

Function463f: ; 463f
	ld hl, OBJECT_FLAGS
	add hl, bc
	bit 3, [hl]
	jr z, .asm_464f
	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld a, [hl]
	call Function4661

.asm_464f
	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld a, [hl]
	call Function4679
	ret c
	ld hl, OBJECT_NEXT_TILE
	add hl, bc
	ld a, [hl]
	call Function4679
	ret
; 4661

Function4661: ; 4661
	call CheckSuperTallGrassTile
	jr z, .grass
	call CheckGrassTile
	jr c, .not_grass

.grass
	ld hl, OBJECT_FLAGS
	add hl, bc
	set 3, [hl]
	ret

.not_grass
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 3, [hl]
	ret
; 4679

Function4679: ; 4679
	and a
	ret
; 467b

Function467b: ; 467b
	xor a
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_27
	add hl, bc
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ret
; 4690

Function4690: ; 4690
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_04
	add hl, bc
	bit 2, [hl]
	jr nz, .asm_46a6

	add a
	add a
	and $c
	ld hl, OBJECT_08
	add hl, bc
	ld [hl], a

.asm_46a6
	; fallthrough
; 46a6

Function46a6: ; 46a6

	call GetStepVector

	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], a

	ld a, d
	call Function4730
	ld hl, OBJECT_NEXT_MAP_X
	add hl, bc
	add [hl]
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld [hl], a
	ld d, a

	ld a, e
	call Function4730
	ld hl, OBJECT_NEXT_MAP_Y
	add hl, bc
	add [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld [hl], a
	ld e, a

	push bc
	call Function2a3c
	pop bc

	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld [hl], a

	ret
; 46d7

AddStepVector: ; 46d7

	call GetStepVector
	jr nc, .okay
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld a, [hl]
	cp 3
	jr nz, .okay
	ld a, d
	and a
	jr z, .no_d
	add a
	jr c, .dec_d
	inc d
	jr .okay
.dec_d
	dec d
	jr .okay

.no_d
	ld a, e
	add a
	jr c, .dec_e
	inc e
	jr .okay
.dec_e
	dec e
.okay
	ld hl, OBJECT_SPRITE_X
	add hl, bc
	ld a, [hl]
	add d
	ld [hl], a

	ld hl, OBJECT_SPRITE_Y
	add hl, bc
	ld a, [hl]
	add e
	ld [hl], a
	ret
; 46e9

GetStepVector: ; 46e9
; Return (x, y, duration, speed) in (d, e, a, h).
	ld hl, OBJECT_07
	add hl, bc
	ld a, [hl]
	and $f
	add a
	add a
	ld l, a
	ld h, 0
	ld de, StepVectors
	add hl, de
	ld d, [hl]
	inc hl
	ld e, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	push af
	push hl
	ld hl, OBJECT_07
	add hl, bc
	ld a, [hl]
	cp $c
	jr nc, .running
	pop hl
	pop af
	and a
	ret
.running
	pop hl
	pop af
	scf
	ret
; 4700

StepVectors: ; 4700
; x,  y, duration, speed
	; slow
	db  0,  1, 16, 1
	db  0, -1, 16, 1
	db -1,  0, 16, 1
	db  1,  0, 16, 1
	; normal
	db  0,  2,  8, 2
	db  0, -2,  8, 2
	db -2,  0,  8, 2
	db  2,  0,  8, 2
	; fast
	db  0,  4,  4, 4
	db  0, -4,  4, 4
	db -4,  0,  4, 4
	db  4,  0,  4, 4
	; running shoes
	db  0,  3,  5, 3
	db  0, -3,  5, 3
	db -3,  0,  5, 3
	db  3,  0,  5, 3

Function4730: ; 4730
	add a
	ret z
	ld a, 1
	ret nc
	ld a, -1
	ret
; 4738

Function4738: ; 4738
	ld hl, OBJECT_07
	add hl, bc
	ld a, [hl]
	and $3
	ld [wd151], a
	call AddStepVector
	ld a, [wd14e]
	add d
	ld [wd14e], a
	ld a, [wd14f]
	add e
	ld [wd14f], a
	ld hl, wd150
	set 5, [hl]
	ret
; 4759

Function4759: ; 4759
	push bc
	ld e, a
	ld d, 0
	ld hl, OBJECT_01
	add hl, bc
	ld a, [hl]
	call GetMapObject
	add hl, de
	ld a, [hl]
	pop bc
	ret
; 4769

Function4769: ; 4769
	ld hl, OBJECT_01
	add hl, bc
	ld a, [hl]
	cp $ff
	jr z, .asm_477d
	push bc
	call GetMapObject
	ld hl, $0004
	add hl, bc
	ld a, [hl]
	pop bc
	ret

.asm_477d
	ld a, $6
	ret
; 4780

Function4780: ; 4780
	ld hl, OBJECT_27
	add hl, bc
	ld [hl], $0
	ret
; 4787

Function4787: ; 4787
	ld hl, OBJECT_27
	add hl, bc
	inc [hl]
	ret
; 478d

Function478d: ; 478d
	ld hl, OBJECT_27
	add hl, bc
	dec [hl]
	ret
; 4793

Function4793: ; 4793
	ld hl, OBJECT_27
	add hl, bc
	ld a, [hl]
	pop hl
	rst JumpTable
	ret
; 479b

Function479b: ; 479b
	ld hl, OBJECT_28
	add hl, bc
	ld [hl], $0
	ret
; 47a2

Function47a2: ; 47a2
	ld hl, OBJECT_28
	add hl, bc
	inc [hl]
	ret
; 47a8

Function47a8: ; 47a8
	ld hl, OBJECT_28
	add hl, bc
	ld a, [hl]
	pop hl
	rst JumpTable
	ret
; 47b0

Function47b0: ; 47b0
	ld hl, OBJECT_28
	add hl, bc
	ld a, [hl]
	ret
; 47b6

Function47b6: ; 47b6
	ld hl, OBJECT_28
	add hl, bc
	ld [hl], a
	ret
; 47bc

Function47bc: ; 47bc
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld e, [hl]
	push bc
	call Function2a3c
	pop bc
	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld [hl], a
	call Function4600
	call Function467b
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 47dd

Function47dd: ; 47dd
	call Function479b
	call Function1a2f
	ld a, [hl]
	ld hl, .Pointers
	rst JumpTable
	ret
; 47e9

.Pointers ; 47e9
	dw Function4821
	dw Function4822
	dw Function482c
	dw Function4838
	dw Function4842
	dw Function4851
	dw Function4869
	dw Function487c
	dw Function4882
	dw Function4888
	dw Function488e
	dw Function4891
	dw Function4894
	dw Function4897
	dw Function489d
	dw Function48a0
	dw Function48a6
	dw Function48ac
	dw Function48ff
	dw Function49e5
	dw Function4a21
	dw Function4958
	dw Function496e
	dw Function4abc
	dw Function498d
	dw Function4984
	dw Function4a46
	dw Function4a89
; 4821

Function4821: ; 4821
	ret
; 4822

Function4822: ; 4822
	call Random
	ld a, [hRandomAdd]
	and 1
	jp Function4af0
; 482c

Function482c: ; 482c
	call Random
	ld a, [hRandomAdd]
	and 1
	or 2
	jp Function4af0
; 4838

Function4838: ; 4838
	call Random
	ld a, [hRandomAdd]
	and 3
	jp Function4af0
; 4842

Function4842: ; 4842
	call Random
	ld a, [hRandomAdd]
	and $c
	ld hl, OBJECT_08
	add hl, bc
	ld [hl], a
	jp Function4b1d
; 4851

Function4851: ; 4851
	ld hl, OBJECT_08
	add hl, bc
	ld a, [hl]
	and $c
	ld d, a
	call Random
	ld a, [hRandomAdd]
	and $c
	cp d
	jr nz, .asm_4865
	xor $c

.asm_4865
	ld [hl], a
	jp Function4b26
; 4869

Function4869: ; 4869
	call Function462a
	call Function467b
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $1
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $5
	ret
; 487c

Function487c: ; 487c
	ld hl, Function5000
	jp Function5041
; 4882

Function4882: ; 4882
	ld hl, Function5015
	jp Function5041
; 4888

Function4888: ; 4888
	ld hl, Function5026
	jp Function5041
; 488e

Function488e: ; 488e
	jp Function5037
; 4891

Function4891: ; 4891
	jp Function5037
; 4894

Function4894: ; 4894
	jp Function5037
; 4897

Function4897: ; 4897
	ld hl, Function5000
	jp Function5041
; 489d

Function489d: ; 489d
	jp Function5037
; 48a0

Function48a0: ; 48a0
	ld hl, Function54e6
	jp Function5041
; 48a6

Function48a6: ; 48a6
	ld hl, Function500e
	jp Function5041
; 48ac

Function48ac: ; 48ac
	call Function4793
	dw Function48b3
	dw Function48f8
; 48b3

Function48b3: ; 48b3
	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld a, [hl]
	call CheckPitTile
	jr z, .asm_48f5
	ld hl, OBJECT_FLAGS
	add hl, bc
	bit 2, [hl]
	res 2, [hl]
	jr z, .asm_48ee
	ld hl, OBJECT_32
	add hl, bc
	ld a, [hl]
	and $3
	or $0
	call Function4690
	call Function6ec1
	jr c, .asm_48eb
	ld de, SFX_STRENGTH
	call PlaySFX
	call Function5538
	call Function463f
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $f
	ret

.asm_48eb
	call Function462a

.asm_48ee
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ret

.asm_48f5
	call Function4787
	; fallthrough
; 48f8

Function48f8: ; 48f8
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ret
; 48ff

Function48ff: ; 48ff
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld e, [hl]
	ld hl, OBJECT_32
	add hl, bc
	ld a, [hl]
	push bc
	call Function1ae5
	ld hl, OBJECT_07
	add hl, bc
	ld a, [hl]
	cp $ff
	jr z, .asm_494a
	ld hl, OBJECT_NEXT_MAP_X
	add hl, bc
	ld a, [hl]
	cp d
	jr z, .asm_492d
	jr c, .asm_4929
	ld a, $3
	jr .asm_493d

.asm_4929
	ld a, $2
	jr .asm_493d

.asm_492d
	ld hl, OBJECT_NEXT_MAP_Y
	add hl, bc
	ld a, [hl]
	cp e
	jr z, .asm_494a
	jr c, .asm_493b
	ld a, $0
	jr .asm_493d

.asm_493b
	ld a, $1

.asm_493d
	ld d, a
	ld hl, OBJECT_07
	add hl, bc
	ld a, [hl]
	and $c
	or d
	pop bc
	jp Function5412

.asm_494a
	pop bc
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $1
	ret
; 4958

Function4958: ; 4958
	call Function467b
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $9
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $4
	ret
; 496e

Function496e: ; 496e
	call Function467b
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $a
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $4
	ret
; 4984

Function4984: ; 4984
	call Function4793
	dw Function4996
	dw Function499c
	dw Function49b8
; 498d

Function498d: ; 498d
	call Function4793
	dw Function4996
	dw Function499c
	dw Function49c4
; 4996

Function4996: ; 4996
	call Function467b
	call Function4787
	; fallthrough
; 499c

Function499c: ; 499c
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $1
	ld hl, OBJECT_32
	add hl, bc
	ld a, [hl]
	ld a, $10
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $3
	call Function4787
	ret
; 49b8

Function49b8: ; 49b8
	ld de, .data_49c0
	call Function49d0
	jr Function4984
; 49c0

.data_49c0 ; 49c0
	db $0c, $08, $00, $04
; 49c4

Function49c4: ; 49c4
	ld de, .data_49cc
	call Function49d0
	jr Function498d
; 49cc

.data_49cc ; 49cc
	db $08, $0c, $04, $00
; 49d0

Function49d0: ; 49d0
	ld hl, OBJECT_08
	add hl, bc
	ld a, [hl]
	and $c
	rrca
	rrca
	push hl
	ld l, a
	ld h, $0
	add hl, de
	ld a, [hl]
	pop hl
	ld [hl], a
	call Function478d
	ret
; 49e5

Function49e5: ; 49e5
	call Function4aa8
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $7
	ld hl, OBJECT_STEP_DURATION
	add hl, de
	ld a, [hl]
	inc a
	add a
	add $0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_07
	add hl, de
	ld a, [hl]
	and 3
	ld d, $e
	cp 0
	jr z, .asm_4a0f
	cp 1
	jr z, .asm_4a0f
	ld d, $c

.asm_4a0f
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], d
	ld hl, OBJECT_SPRITE_X_OFFSET
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $13
	ret
; 4a21

Function4a21: ; 4a21
	call Function467b
	call Function4aa8
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $8
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], $f0
	ld hl, OBJECT_SPRITE_X_OFFSET
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $13
	ret
; 4a46

Function4a46: ; 4a46
	call Function467b
	call Function4aa8
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $e
	ld hl, OBJECT_STEP_DURATION
	add hl, de
	ld a, [hl]
	inc a
	add a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_07
	add hl, de
	ld a, [hl]
	and 3
	ld e, a
	ld d, 0
	ld hl, .data_4a81
	add hl, de
	add hl, de
	ld d, [hl]
	inc hl
	ld e, [hl]
	ld hl, OBJECT_SPRITE_X_OFFSET
	add hl, bc
	ld [hl], d
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], e
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $13
	ret
; 4a81

.data_4a81  ; 4a81
	;   x,  y
	db  0, -4
	db  0,  8
	db  6,  2
	db -6,  2
; 4a89

Function4a89: ; 4a89
	call Function467b
	call Function4aa8
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $f
	ld hl, OBJECT_STEP_DURATION
	add hl, de
	ld a, [hl]
	add $ff
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $13
	ret
; 4aa8

Function4aa8: ; 4aa8
	ld hl, OBJECT_32
	add hl, bc
	ld a, [hl]
	push bc
	call Function1ae5
	ld d, b
	ld e, c
	pop bc
	ld hl, OBJECT_29
	add hl, bc
	ld [hl], e
	inc hl
	ld [hl], d
	ret
; 4abc

Function4abc: ; 4abc
	call Function467b
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_32
	add hl, bc
	ld a, [hl]
	call Function4ade
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], e
	ld hl, OBJECT_30
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $15
	ret
; 4ade

Function4ade: ; 4ade
	ld d, a
	and $3f
	ld e, a
	ld a, d
	rlca
	rlca
	and $3
	ld d, a
	inc d
	ld a, $1
.asm_4aeb
	dec d
	ret z
	add a
	jr .asm_4aeb
; 4af0

Function4af0: ; 4af0
	call Function4690
	call Function6ec1
	jr c, Function4b17
	call Function463f
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $2
	ld hl, wd4cf
	ld a, [$ffaf]
	cp [hl]
	jr z, .asm_4b10
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $7
	ret

.asm_4b10
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $6
	ret

Function4b17: ; 4b17
	call Function467b
	call Function462a
	; fallthrough
; 4b1d

Function4b1d: ; 4b1d
	call Random
	ld a, [hRandomAdd]
	and $7f
	jr Function4b2d
; 4b26

Function4b26: ; 4b26
	call Random
	ld a, [hRandomAdd]
	and $1f
	; fallthrough
; 4b2d

Function4b2d: ; 4b2d
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $1
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $3
	ret
; 4b45

Pointers4b45: ; 4b45
	dw Function47bc
	dw Function47dd
	dw Function4e2b
	dw Function4ddd
	dw Function4e21
	dw Function4e0c
	dw Function4e56
	dw Function4e47
	dw Function4b86
	dw Function4bbf
	dw Function4e83
	dw Function4dff
	dw Function4c18
	dw Function4c89
	dw Function4d14
	dw Function4ecd
	dw Function4d7e
	dw Function4daf
	dw Function4dc8
	dw Function4f04
	dw Function4f33
	dw Function4f33
	dw Function4f77
	dw Function4f7a
	dw Function4df0
	dw Function4f83
; 4b79

Function4b79: ; 4b79
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4b86

Function4b86: ; 4b86
	call Function47a8
	dw Function4b8d
	dw Function4ba9
; 4b8d

Function4b8d: ; 4b8d
	call AddStepVector
	call UpdateJumpPosition
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function4600
	call Function46a6
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 3, [hl]
	call Function47a2
	ret
; 4ba9

Function4ba9: ; 4ba9
	call AddStepVector
	call UpdateJumpPosition
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function4600
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4bbf

Function4bbf: ; 4bbf
	call Function47a8
	dw Function4bca
	dw Function4bd2
	dw Function4bf2
	dw Function4bfd
; 4bca

Function4bca: ; 4bca
	ld hl, wd150
	set 7, [hl]
	call Function47a2
;	fallthrough
; 4bd2

Function4bd2: ; 4bd2
	call UpdateJumpPosition
	call Function4738
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function4600
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 3, [hl]
	ld hl, wd150
	set 6, [hl]
	set 4, [hl]
	call Function47a2
	ret
; 4bf2

Function4bf2: ; 4bf2
	call Function46a6
	ld hl, wd150
	set 7, [hl]
	call Function47a2
;	fallthrough
; 4bfd

Function4bfd: ; 4bfd
	call UpdateJumpPosition
	call Function4738
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, wd150
	set 6, [hl]
	call Function4600
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4c18

Function4c18: ; 4c18
	call Function47a8
	dw Function4c23
	dw Function4c32
	dw Function4c42
	dw Function4c5d
; 4c23

Function4c23: ; 4c23
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
;	fallthrough
; 4c32

Function4c32: ; 4c32
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $4
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function47a2
	ret
; 4c42

Function4c42: ; 4c42
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_31
	add hl, bc
	ld [hl], $10
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 3, [hl]
	call Function47a2
;	fallthrough
; 4c5d

Function4c5d: ; 4c5d
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $4
	ld hl, OBJECT_31
	add hl, bc
	inc [hl]
	ld a, [hl]
	ld d, $60
	call Sine
	ld a, h
	sub $60
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4c89

Function4c89: ; 4c89
	call Function47a8
	dw Function4c9a
	dw Function4caa
	dw Function4cb3
	dw Function4cc9
	dw Function4ceb
	dw Function4cf5
	dw Function4d01
; 4c9a

Function4c9a: ; 4c9a
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
	ret
; 4caa

Function4caa: ; 4caa
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function47a2
;	fallthrough
; 4cb3

Function4cb3: ; 4cb3
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_31
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
	ret
; 4cc9

Function4cc9: ; 4cc9
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $4
	ld hl, OBJECT_31
	add hl, bc
	inc [hl]
	ld a, [hl]
	ld d, $60
	call Sine
	ld a, h
	sub $60
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function47a2
;	fallthrough
; 4ceb

Function4ceb: ; 4ceb
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
	ret
; 4cf5

Function4cf5: ; 4cf5
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $4
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
; 4d01

Function4d01: ; 4d01
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4d14

Function4d14: ; 4d14
	call Function47a8
	dw Function4d1f
	dw Function4d2e
	dw Function4d4f
	dw Function4d6b
; 4d1f

Function4d1f: ; 4d1f
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
;	fallthrough
; 4d2e

Function4d2e: ; 4d2e
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $2
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_31
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
;	fallthrough
; 4d4f

Function4d4f: ; 4d4f
	ld hl, OBJECT_31
	add hl, bc
	inc [hl]
	ld a, [hl]
	ld d, $60
	call Sine
	ld a, h
	sub $60
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function47a2
;	fallthrough
; 4d6b

Function4d6b: ; 4d6b
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4d7e

Function4d7e: ; 4d7e
	call Function47a8
	dw Function4d85
	dw Function4d94
; 4d85

Function4d85: ; 4d85
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $8
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], $0
	call Function47a2
	; fallthrough
; 4d94

Function4d94: ; 4d94
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld a, [hl]
	xor 1
	ld [hl], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4daf

Function4daf: ; 4daf
	call Function4db5
	jp Function4b79
; 4db5

Function4db5: ; 4db5
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld a, [hl]
	and $1
	ld a, $1
	jr z, .asm_4dc2
	ld a, $0

.asm_4dc2
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], a
	ret
; 4dc8

Function4dc8: ; 4dc8
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld a, [hl]
	and $1
	ld a, $4
	jr z, .asm_4dd5
	ld a, $5

.asm_4dd5
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], a
	jp Function4b79
; 4ddd

Function4ddd: ; 4ddd
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4df0

Function4df0: ; 4df0
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	jp Function4357
; 4dff

Function4dff: ; 4dff
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4e0c

Function4e0c: ; 4e0c
	call Function47a8
	dw Function4e13
	dw Function4e21
; 4e13

Function4e13: ; 4e13
	call Function4769
	call Function1a47
	ld hl, OBJECT_08
	add hl, bc
	ld [hl], a
	call Function47a2
	; fallthrough
; 4e21

Function4e21: ; 4e21
	call Function4fb2
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ret
; 4e2b

Function4e2b: ; 4e2b
	call Function4fb2
	call AddStepVector
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function4600
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4e47

Function4e47: ; 4e47
	call AddStepVector
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function4600
	jp Function4b1d
; 4e56

Function4e56: ; 4e56
; AnimateStep?
	call Function47a8
	dw Function4e5d
	dw Function4e65
; 4e5d

Function4e5d: ; 4e5d
	ld hl, wd150
	set 7, [hl]
	call Function47a2
	; fallthrough
; 4e65

Function4e65: ; 4e65
	call Function4738
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, wd150
	set 6, [hl]
	call Function4600
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4e83

Function4e83: ; 4e83
	call Function47a8
	dw Function4e8e
	dw Function4ea4
	dw Function4ead
	dw Function4ec0
; 4e8e

Function4e8e: ; 4e8e
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_12
	add hl, bc
	ld a, [hl]
	ld [hl], $2
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $2
	call Function47a2
	; fallthrough
; 4ea4

Function4ea4: ; 4ea4
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	call Function47a2
	; fallthrough
; 4ead

Function4ead: ; 4ead
	ld hl, OBJECT_29
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_08
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $2
	call Function47a2
	; fallthrough
; 4ec0

Function4ec0: ; 4ec0
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4ecd

Function4ecd: ; 4ecd
	call AddStepVector
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	push bc
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld e, [hl]
	ld hl, OBJECT_01
	add hl, bc
	ld a, [hl]
	ld b, a
	callba Function807e
	pop bc
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 2, [hl]
	call Function4600
	ld hl, OBJECT_07
	add hl, bc
	ld [hl], $ff
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4f04

Function4f04: ; 4f04
	ld hl, OBJECT_29
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, OBJECT_00
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_4f30
	ld hl, OBJECT_SPRITE_X
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_SPRITE_X
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_SPRITE_Y
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_SPRITE_Y
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld a, [hl]
	and a
	ret z
	dec [hl]
	ret nz

.asm_4f30
	jp Function4357
; 4f33

Function4f33: ; 4f33
	call Function47a8
	dw Function4f3a
	dw Function4f43
; 4f3a

Function4f3a: ; 4f3a
	xor a
	ld hl, OBJECT_29
	add hl, bc
	ld [hl], a
	call Function47a2
	; fallthrough
; 4f43

Function4f43: ; 4f43
	ld hl, OBJECT_29
	add hl, bc
	ld d, [hl]
	ld a, [wd14f]
	sub d
	ld [wd14f], a
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	jr z, .asm_4f68
	ld a, [hl]
	call Function4f6c
	ld hl, OBJECT_29
	add hl, bc
	ld [hl], a
	ld d, a
	ld a, [wd14f]
	add d
	ld [wd14f], a
	ret

.asm_4f68
	call Function4357
	ret
; 4f6c

Function4f6c: ; 4f6c
	ld hl, OBJECT_30
	add hl, bc
	and 1
	ld a, [hl]
	ret z
	cpl
	inc a
	ret
; 4f77

Function4f77: ; 4f77
	call Function47a8 ; ????
; 4f7a

Function4f7a: ; 4f7a
	call Function47a8
	dw Function4f83
	dw Function4f83
	dw Function4f83
; 4f83

Function4f83: ; 4f83
	call Function47a8
	dw Function4f8a
	dw Function4f99
; 4f8a

Function4f8a: ; 4f8a
	ld hl, OBJECT_11
	add hl, bc
	ld [hl], $10
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	ld [hl], $10
	call Function47a2
; 4f99

Function4f99: ; 4f99
	ld hl, OBJECT_STEP_DURATION
	add hl, bc
	dec [hl]
	ret nz
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], $60
	ld hl, OBJECT_12
	add hl, bc
	ld [hl], $0
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $1
	ret
; 4fb2

Function4fb2: ; 4fb2
	ret
; 4fb3

Function4fb3: ; 4fb3
	ld hl, OBJECT_29
	add hl, bc
	inc [hl]
	ld a, [hl]
	srl a
	srl a
	and 7
	ld l, a
	ld h, 0
	ld de, .y
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], a
	ret
; 4fcd

.y ; 4fcd
	db 0, -1, -2, -3, -4, -3, -2, -1
; 4fd5

UpdateJumpPosition: ; 4fd5
	call GetStepVector
	ld a, h
	ld hl, OBJECT_31
	add hl, bc
	ld e, [hl]
	add e
	ld [hl], a
	nop
	srl e
	ld d, 0
	ld hl, .y
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld [hl], a
	ret
; 4ff0

.y ; 4ff0
	db  -4,  -6,  -8, -10, -11, -12, -12, -12
	db -11, -10,  -9,  -8,  -6,  -4,   0,   0
; 5000

Function5000: ; 5000
	ld a, [wc2de]
	ld hl, wc2df
	ld [hl], a
	ld a, $3e
	ld [wc2de], a
	ld a, [hl]
	ret
; 500e

Function500e: ; 500e
	ld hl, wc2e3
	call Function1aae
	ret
; 5015

Function5015: ; 5015
	ld hl, OBJECT_27
	add hl, bc
	ld e, [hl]
	inc [hl]
	ld d, 0
	ld hl, wc2e2
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld a, [hl]
	ret
; 5026

Function5026: ; 5026
	ld hl, OBJECT_27
	add hl, bc
	ld e, [hl]
	inc [hl]
	ld d, 0
	ld hl, wc2e6
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld a, [hl]
	ret
; 5037

Function5037: ; 5037
	ld hl, Function503d
	jp Function5041
; 503d

Function503d: ; 503d
	ld a, [wc2e2]
	ret
; 5041

Function5041: ; 5041
	call Function5055
.asm_5044
	xor a
	ld [wc2ea], a
	call Function505e
	call Function506b
	ld a, [wc2ea]
	and a
	jr nz, .asm_5044
	ret
; 5055

Function5055: ; 5055
	ld a, l
	ld [wc2eb], a
	ld a, h
	ld [wc2ec], a
	ret
; 505e

Function505e: ; 505e
	ld hl, wc2eb
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp [hl]
; 5065

Function5065: ; 5065
	ld a, $1
	ld [wc2ea], a
	ret
; 506b

Function506b: ; 506b
	push af
	call Function54b8
	pop af
	ld hl, MovementPointers
	rst JumpTable
	ret
; 5075


; 5075
INCLUDE "engine/movement.asm"
; 54b8


Function54b8: ; 54b8
	ld e, a
	ld a, [wd4ce]
	cp $ff
	ret z
	ld a, [wd4cd]
	ld d, a
	ld a, [$ffaf]
	cp d
	ret nz
	ld a, e
	cp $3e
	ret z
	cp $47
	ret z
	cp $4b
	ret z
	cp $50
	ret z
	cp $8
	ret c
	push af
	ld hl, wd4d0
	inc [hl]
	ld e, [hl]
	ld d, 0
	ld hl, wd4d1
	add hl, de
	pop af
	ld [hl], a
	ret
; 54e6

Function54e6: ; 54e6
	ld hl, wd4d0
	ld a, [hl]
	and a
	jr z, .asm_5503
	cp $ff
	jr z, .asm_5503
	dec [hl]
	ld e, a
	ld d, 0
	ld hl, wd4d1
	add hl, de
	inc e
	ld a, $ff
.asm_54fc
	ld d, [hl]
	ld [hld], a
	ld a, d
	dec e
	jr nz, .asm_54fc
	ret

.asm_5503
	call Function550a
	ret c
	ld a, $3e
	ret
; 550a

Function550a: ; 550a
	ld a, [wd4cd]
	cp $ff
	jr z, .asm_5520
	push bc
	call Function1ae5
	ld hl, OBJECT_00
	add hl, bc
	ld a, [hl]
	pop bc
	and a
	jr z, .asm_5520
	and a
	ret

.asm_5520
	ld a, $ff
	ld [wd4ce], a
	ld a, $47
	scf
	ret
; 5529

Function5529: ; 5529
	push bc
	ld de, .data_5535
	call Function55b9
	call Function55ac
	pop bc
	ret

.data_5535
	db $00, $05, $1b
; 5538

Function5538: ; 5538
	push bc
	ld de, .data_5544
	call Function55b9
	call Function55ac
	pop bc
	ret

.data_5544
	db $00, $05, $22
; 5547

Function5547: ; 5547
	push bc
	ld de, .data_5553
	call Function55b9
	call Function55ac
	pop bc
	ret

.data_5553
	db $00, $05, $1c
; 5556

Function5556: ; 5556
	push bc
	ld de, .data_5562
	call Function55b9
	call Function55ac
	pop bc
	ret

.data_5562
	db $00, $06, $23
; 5565

Function5565: ; 5565
	push bc
	push af
	ld de, .data_5576
	call Function55b9
	pop af
	ld [wc2f5], a
	call Function55ac
	pop bc
	ret

.data_5576
	db $00, $05, $1d
; 5579

Function5579: ; 5579
	push bc
	ld a, [$ffaf]
	ld c, a
	call Function5582
	pop bc
	ret
; 5582

Function5582: ; 5582
	ld de, ObjectStructs
	ld a, $d
.asm_5587
	push af
	ld hl, OBJECT_04
	add hl, de
	bit 7, [hl]
	jr z, .asm_55a1
	ld hl, OBJECT_00
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_55a1
	push bc
	xor a
	ld bc, ObjectStruct2 - ObjectStruct1
	call ByteFill
	pop bc

.asm_55a1
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, de
	ld d, h
	ld e, l
	pop af
	dec a
	jr nz, .asm_5587
	ret
; 55ac

Function55ac: ; 55ac
	call Function1a13
	ret nc
	ld d, h
	ld e, l
	callba Function8286
	ret
; 55b9

Function55b9: ; 55b9
	ld hl, wc2f0
	ld [hl], $ff
	inc hl
	ld [hl], $ff
	inc hl
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ld a, [$ffaf]
	ld [hli], a
	push hl
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld e, [hl]
	pop hl
	ld [hl], d
	inc hl
	ld [hl], e
	inc hl
	ld [hl], $ff
	ret
; 55e0

Function55e0:: ; 55e0
	ld a, [VramState]
	bit 0, a
	ret z
	ld bc, ObjectStructs
	xor a
.asm_55ea
	ld [$ffaf], a ;loop from 0 to 13 (13 runs total)
	call Function1af1 ;hl = bc, a = [hl], and a
	jr z, .asm_55f4
	call Function565c

.asm_55f4
	ld hl, ObjectStruct2 - ObjectStruct1 ;go to next slot
	add hl, bc
	ld b, h
	ld c, l
	ld a, [$ffaf]
	inc a
	cp $d
	jr nz, .asm_55ea
	ret
; 5602

Function5602: ; 5602
	call Function5645
	ld a, $0
	call Function5629
	ld a, [wd459]
	bit 7, a
	jr z, .asm_5619
	ld a, [$ffe0]
	and a
	jr z, .asm_5619
	call Function5629

.asm_5619
	call Function5920
	ret
; 561d

Function561d: ; 561d
	call Function5645
	ld a, $0
	call Function5629
	call Function5920
	ret
; 5629

Function5629: ; 5629
	cp $10
	ret nc
	call GetMapObject
	ld hl, $0000
	add hl, bc
	ld a, [hl]
	cp $ff
	ret z
	cp $d
	ret nc
	call Function1ae5
	call Function1af1
	ret z
	call Function5673
	ret
; 5645

Function5645: ; 5645
	xor a
	ld bc, ObjectStructs
.asm_5649
	ld [$ffaf], a
	call Function5680
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	ld a, [$ffaf]
	inc a
	cp $d
	jr nz, .asm_5649
	ret
; 565c

Function565c: ; 565c
	push bc
	call Function56cd
	pop bc
	jr c, Function5680
	call Function56a3
	jr c, Function5680
	call Function5688
	callba Function4440
	xor a
	ret
; 5673

Function5673: ; 5673
	call Function56a3
	jr c, Function5680
	callba Function4440
	xor a
	ret
; 5680

Function5680: ; 5680
	ld hl, OBJECT_FACING
	add hl, bc
	ld [hl], $ff
	scf
	ret
; 5688

Function5688: ; 5688
	push bc
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld e, [hl]
	call Function2a3c
	pop bc
	ld hl, OBJECT_STANDING_TILE
	add hl, bc
	ld [hl], a
	callba Function463f
	ret
; 56a3

Function56a3: ; 56a3
	ld hl, OBJECT_MAP_X
	add hl, bc
	ld d, [hl]
	ld hl, OBJECT_MAP_Y
	add hl, bc
	ld e, [hl]
	inc d
	inc e
	ld a, [XCoord]
	cp d
	jr z, .asm_56bc
	jr nc, .asm_56cb
	add $b
	cp d
	jr c, .asm_56cb

.asm_56bc
	ld a, [YCoord]
	cp e
	jr z, .asm_56c9
	jr nc, .asm_56cb
	add $a
	cp e
	jr c, .asm_56cb

.asm_56c9
	xor a
	ret

.asm_56cb
	scf
	ret
; 56cd

Function56cd: ; 56cd
	ld a, [wd14c]
	ld d, a
	ld hl, OBJECT_SPRITE_X_OFFSET
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_SPRITE_X
	add hl, bc
	add [hl]
	add d
	cp $f0
	jr nc, .asm_56e5
	cp $a0
	jp nc, .asm_5768

.asm_56e5
	and $7
	ld d, $2
	cp $4
	jr c, .asm_56ef
	ld d, $3

.asm_56ef
	ld a, [hl]
	srl a
	srl a
	srl a
	cp $14
	jr c, .asm_56fc
	sub $20

.asm_56fc
	ld [$ffbd], a
	ld a, [wd14d]
	ld e, a
	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	ld a, [hl]
	ld hl, OBJECT_SPRITE_Y
	add hl, bc
	add [hl]
	add e
	cp $f0
	jr nc, .asm_5715
	cp $90
	jr nc, .asm_5768

.asm_5715
	and $7
	ld e, $2
	cp $4
	jr c, .asm_571f
	ld e, $3

.asm_571f
	ld a, [hl]
	srl a
	srl a
	srl a
	cp $12
	jr c, .asm_572c
	sub $20

.asm_572c
	ld [$ffbe], a
	ld hl, OBJECT_PALETTE
	add hl, bc
	bit 7, [hl]
	jr z, .asm_573e
	ld a, d
	add $2
	ld d, a
	ld a, e
	add $2
	ld e, a

.asm_573e
	ld a, d
	ld [$ffbf], a
.asm_5741
	ld a, [$ffbf]
	ld d, a
	ld a, [$ffbe]
	add e
	dec a
	cp $12
	jr nc, .asm_5763
	ld b, a
.asm_574d
	ld a, [$ffbd]
	add d
	dec a
	cp $14
	jr nc, .asm_5760
	ld c, a
	push bc
	call GetTileCoord
	pop bc
	ld a, [hl]
	cp $60
	jr nc, .asm_5768

.asm_5760
	dec d
	jr nz, .asm_574d

.asm_5763
	dec e
	jr nz, .asm_5741
	and a
	ret

.asm_5768
	scf
	ret
; 576a

Function576a:: ; 576a
	call Function5771
	call Function5781
	ret
; 5771

Function5771: ; 5771
	xor a
	ld [wd14e], a
	ld [wd14f], a
	ld [wd150], a
	ld a, $ff
	ld [wd151], a
	ret
; 5781

Function5781: ; 5781
	ld bc, ObjectStructs
	xor a
.asm_5785
	ld [$ffaf], a
	call Function1af1
	jr z, .asm_578f
	call Function437b

.asm_578f
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	ld a, [$ffaf]
	inc a
	cp $d
	jr nz, .asm_5785
	ret
; 579d

Function579d: ; 579d
	ld a, $3e
	ld [wc2de], a
	ld [wc2df], a
	xor a
	ld [wd04e], a
	ld [wd4e2], a
	call Function57bc
	callba Function149c6
	call c, Function57d9
	call Function57ca
	ret
; 57bc

Function57bc: ; 57bc
	ld hl, wd45b
	bit 7, [hl]
	jr nz, .asm_57c4
	ret

.asm_57c4
	ld a, $0
	ld [PlayerAction], a
	ret
; 57ca

Function57ca: ; 57ca
	ld hl, wd45b
	bit 5, [hl]
	ret z
	ld a, [wd45b]
	and $3
	add a
	add a
	jr Function57db
; 57d9

Function57d9: ; 57d9
	ld a, $0
	; fallthrough
; 57db

Function57db: ; 57db
	ld bc, PlayerStruct
	call Function1af8
	ret
; 57e2

Function57e2: ; 57e2
	ld a, d
	and $80
	ret z
	ld bc, $0000 ; debug?
	ld hl, OBJECT_08
	add hl, bc
	ld a, [hl]
	or d
	ld [hl], a
	ld a, d
	swap a
	and $7
	ld d, a
	ld bc, PlayerStruct
	ld hl, OBJECT_PALETTE
	add hl, bc
	ld a, [hl]
	and $f8
	or d
	ld [hl], a
	ret
; 5803

Function5803:: ; 5803
	push bc
	ld a, b
	call Function5815
	pop bc
	ret c
	ld a, c
	call Function582c
	callba Function848a
	ret
; 5815

Function5815: ; 5815
	call Function18de
	ret c
	ld a, [$ffb0]
	ld [wd4cd], a
	ret
; 581f

Function581f:: ; 581f
	call Function5826
	call Function5847
	ret
; 5826

Function5826: ; 5826
	ld a, $ff
	ld [wd4cd], a
	ret
; 582c

Function582c: ; 582c
	push af
	call Function5847
	pop af
	call Function18de
	ret c
	ld hl, OBJECT_03
	add hl, bc
	ld [hl], $13
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $0
	ld a, [$ffb0]
	ld [wd4ce], a
	ret
; 5847

Function5847: ; 5847
	ld a, [wd4ce]
	cp $ff
	ret z
	call Function1ae5
	callba Function58e3
	ld a, $ff
	ld [wd4ce], a
	ret
; 585c

Function585c:: ; 585c
	ld a, c
	call Function18de
	ret c
	push bc
	call Function587a
	pop bc
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 5, [hl]
	xor a
	ret
; 586e

Function586e: ; 586e
	call Function18de
	ret c
	ld hl, OBJECT_FLAGS
	add hl, bc
	set 5, [hl]
	xor a
	ret
; 587a

Function587a: ; 587a
	ld bc, ObjectStructs
	xor a
.asm_587e
	push af
	call Function1af1
	jr z, .asm_588a
	ld hl, OBJECT_FLAGS
	add hl, bc
	set 5, [hl]

.asm_588a
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	pop af
	inc a
	cp $d
	jr nz, .asm_587e
	ret
; 5897

Function5897:: ; 5897
	ld a, [wd4cd]
	cp $ff
	ret z
	push bc
	call Function1ae5
	ld hl, OBJECT_01
	add hl, bc
	ld a, [hl]
	pop bc
	cp c
	ret nz
	ld a, [wd4ce]
	cp $ff
	ret z
	call Function1ae5
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 5, [hl]
	ret
; 58b9

Function58b9:: ; 58b9
	push bc
	ld bc, ObjectStructs
	xor a
.asm_58be
	push af
	call Function1af1
	jr z, .asm_58ca
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 5, [hl]

.asm_58ca
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	pop af
	inc a
	cp $d
	jr nz, .asm_58be
	pop bc
	ret
; 58d8

Function58d8: ; 58d8
	call Function18de
	ret c
	ld hl, OBJECT_FLAGS
	add hl, bc
	res 5, [hl]
	ret
; 58e3

Function58e3: ; 58e3
	ld hl, OBJECT_01
	add hl, bc
	ld a, [hl]
	cp $ff
	jp z, Function5903
	push bc
	call GetMapObject
	ld hl, $0004
	add hl, bc
	ld a, [hl]
	pop bc
	ld hl, OBJECT_03
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $0
	ret
; 5903

Function5903: ; 5903
	call GetSpriteDirection
	rrca
	rrca
	ld e, a
	ld d, 0
	ld hl, .data_591c
	add hl, de
	ld a, [hl]
	ld hl, OBJECT_03
	add hl, bc
	ld [hl], a
	ld hl, OBJECT_09
	add hl, bc
	ld [hl], $0
	ret

.data_591c
	db 6, 7, 8, 9
; 5920

Function5920:: ; 5920
	ld a, [VramState]
	bit 0, a
	ret z
	xor a
	ld [$ffbd], a
	ld a, [hOAMUpdate]
	push af
	ld a, $1
	ld [hOAMUpdate], a
	call Function5991
	call Function593a
	pop af
	ld [hOAMUpdate], a
	ret
; 593a

Function593a: ; 593a
	ld a, [VramState]
	bit 1, a
	ld b, $a0
	jr z, .asm_5945
	ld b, $70

.asm_5945
	ld a, [$ffbd]
	cp b
	ret nc
	ld l, a
	ld h, $c4
	ld de, OBJECT_04
	ld a, b
	ld c, $a0
.asm_5952
	ld [hl], c
	add hl, de
	cp l
	jr nz, .asm_5952
	ret
; 5958

Function5958: ; 5958
	push hl
	push de
	push bc
	ld a, [wd14c]
	ld d, a
	ld a, [wd14d]
	ld e, a
	ld bc, ObjectStructs
	ld a, $d

.asm_5968
	push af
	call Function1af1
	jr z, .asm_597c

	ld hl, OBJECT_SPRITE_X
	add hl, bc
	ld a, [hl]
	add d
	ld [hl], a

	ld hl, OBJECT_SPRITE_Y
	add hl, bc
	ld a, [hl]
	add e
	ld [hl], a

.asm_597c
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	pop af
	dec a
	jr nz, .asm_5968

	xor a
	ld [wd14c], a
	ld [wd14d], a
	pop bc
	pop de
	pop hl
	ret
; 5991

Function5991: ; 5991
	call Function59a4
	ld c, $30
	call Function59f3
	ld c, $20
	call Function59f3
	ld c, $10
	call Function59f3
	ret
; 59a4

Function59a4: ; 59a4
	xor a
	ld hl, wc2eb
	ld bc, 13
	call ByteFill

	ld d, 0
	ld bc, ObjectStructs
	ld hl, wc2eb
.loop
	push hl
	call Function1af1
	jr z, .skip

	ld hl, OBJECT_FACING
	add hl, bc
	ld a, [hl]
	cp -1
	jr z, .skip

; Define the sprite priority.
	ld e, $10
	ld hl, OBJECT_FLAGS
	add hl, bc
	bit 0, [hl]
	jr nz, .add
	ld e, $20
	bit 1, [hl]
	jr z, .add
	ld e, $30
	jr .add

.skip
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	jr .next

.add
	ld hl, ObjectStruct2 - ObjectStruct1
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ld a, d
	or e
	ld [hli], a

.next
	inc d
	ld a, d
	cp $d
	jr nz, .loop
	ret
; 59f3

Function59f3: ; 59f3
	ld hl, wc2eb
.next
	ld a, [hli]
	ld d, a
	and $f0
	ret z
	cp c
	jr nz, .next

	push bc
	push hl
	ld a, d
	and $f
	call Function5ac2
	call Function5a0d
	pop hl
	pop bc
	jr .next
; 5a0d

Function5a0d: ; 5a0d
	ld hl, OBJECT_SPRITE
	add hl, bc
	ld a, [hl]
	and $7f
	ld [$ffc1], a

	xor a
	bit 7, [hl]
	jr nz, .asm_5a1d
	or 8
.asm_5a1d

	ld hl, OBJECT_FLAGS
	add hl, bc
	ld e, [hl]
	bit 7, e
	jr z, .asm_5a28
	or $80
.asm_5a28

	bit 4, e
	jr z, .asm_5a2e
	or $10
.asm_5a2e

	ld hl, OBJECT_PALETTE
	add hl, bc
	ld d, a
	ld a, [hl]
	and 7
	or d
	ld d, a

	xor a
	bit 3, e
	jr z, .asm_5a3f
	or $80
.asm_5a3f
	ld [$ffc2], a

	ld hl, OBJECT_SPRITE_X
	add hl, bc
	ld a, [hl]

	ld hl, OBJECT_SPRITE_X_OFFSET
	add hl, bc
	add [hl]

	add 8

	ld e, a
	ld a, [wd14c]
	add e
	ld [$ffbf], a

	ld hl, OBJECT_SPRITE_Y
	add hl, bc
	ld a, [hl]

	ld hl, OBJECT_SPRITE_Y_OFFSET
	add hl, bc
	add [hl]

	add 12

	ld e, a
	ld a, [wd14d]
	add e
	ld [$ffc0], a

	ld hl, OBJECT_FACING
	add hl, bc
	ld a, [hl]
	cp -1
	jp z, .done
	cp NUM_FACINGS
	jp nc, .done

	ld l, a
	ld h, 0
	add hl, hl
	ld bc, Facings
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld a, [$ffbd]
	ld c, a
	ld b, Sprites / $100
	ld a, [hli]
	ld [$ffbe], a
	add c
	cp SpritesEnd % $100
	jr nc, .full

.addsprite
	ld a, [$ffc0]
	add [hl]
	inc hl

	ld [bc], a
	inc c

	ld a, [$ffbf]
	add [hl]
	inc hl

	ld [bc], a
	inc c

	ld e, [hl]
	inc hl

	ld a, [$ffc1]
	bit 2, e
	jr z, .asm_5aa3
	xor a
.asm_5aa3
	add [hl]
	inc hl

	ld [bc], a
	inc c

	ld a, e
	bit 1, a
	jr z, .asm_5aaf
	ld a, [$ffc2]
	or e
.asm_5aaf
	and $f0
	or d
	ld [bc], a
	inc c

	ld a, [$ffbe]
	dec a
	ld [$ffbe], a
	jr nz, .addsprite

	ld a, c
	ld [$ffbd], a

.done
	xor a
	ret

.full
	scf
	ret
; 5ac2

Function5ac2: ; 5ac2
	ld c, a
	ld b, 0
	ld hl, .Addresses
	add hl, bc
	add hl, bc
	ld c, [hl]
	inc hl
	ld b, [hl]
	ret
; 5ace

.Addresses ; 5ace
	dw PlayerStruct
	dw ObjectStruct1
	dw ObjectStruct2
	dw ObjectStruct3
	dw ObjectStruct4
	dw ObjectStruct5
	dw ObjectStruct6
	dw ObjectStruct7
	dw ObjectStruct8
	dw ObjectStruct9
	dw ObjectStruct10
	dw ObjectStruct11
	dw ObjectStruct12
; 5ae8

