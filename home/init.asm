Reset:: ; 150
	di
	call SoundRestart
	xor a
	ld [$ffde], a
	call ClearPalettes
	xor a
	ld [rIF], a
	ld a, 1 ; VBlank int
	ld [rIE], a
	ei

	ld hl, wcfbe
	set 7, [hl]

	ld c, 32
	call DelayFrames

	jr Init
; 16e


_Start:: ; 16e
	cp $11
	jr z, .asm_175
	xor a
	jr .asm_177

.asm_175
	ld a, $1

.asm_177
	ld [hCGB], a
	ld a, $1
	ld [$ffea], a
; 17d


Init:: ; 17d

	di

	xor a
	ld [rIF], a
	ld [rIE], a
	ld [rRP], a
	ld [rSCX], a
	ld [rSCY], a
	ld [rSB], a
	ld [rSC], a
	ld [rWX], a
	ld [rWY], a
	ld [rBGP], a
	ld [rOBP0], a
	ld [rOBP1], a
	ld [rTMA], a
	ld [rTAC], a
	ld [$d000], a

	ld a, %100 ; Start timer at 4096Hz
	ld [rTAC], a

.wait
	ld a, [rLY]
	cp 145
	jr nz, .wait

	xor a
	ld [rLCDC], a

; Clear WRAM bank 0
	ld hl, $c000
	ld bc, $d000 - $c000
.asm_1b1
	ld [hl], 0
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, .asm_1b1

	ld sp, Stack

; Clear HRAM
	ld a, [hCGB]
	push af
	ld a, [$ffea]
	push af
	xor a
	ld hl, $ff80
	ld bc, $ffff - $ff80
	call ByteFill
	pop af
	ld [$ffea], a
	pop af
	ld [hCGB], a

	call ClearWRAM
	ld a, 1
	ld [rSVBK], a
	call ClearVRAM
	call ClearSprites
	call Function270


	ld a, BANK(LoadPushOAM)
	rst Bankswitch

	call LoadPushOAM

	xor a
	ld [$ffde], a
	ld [hSCX], a
	ld [hSCY], a
	ld [rJOYP], a

	ld a, $8 ; HBlank int enable
	ld [rSTAT], a

	ld a, $90
	ld [hWY], a
	ld [rWY], a

	ld a, 7
	ld [hWX], a
	ld [rWX], a

	ld a, %11100011
	; LCD on
	; Win tilemap 1
	; Win on
	; BG/Win tiledata 0
	; BG Tilemap 0
	; OBJ 8x8
	; OBJ on
	; BG on
	ld [rLCDC], a

	ld a, $ff
	ld [hLinkPlayer], a

	callba Function9890

	ld a, $9c
	ld [$ffd7], a

	xor a
	ld [hBGMapAddress], a

	callba StartClock

	xor a
	ld [MBC3LatchClock], a
	ld [MBC3SRamEnable], a

	ld a, [hCGB]
	and a
	jr z, .asm_22b
	call NormalSpeed
.asm_22b

	xor a
	ld [rIF], a
	ld a, %1111 ; VBlank, LCDStat, Timer, Serial interrupts
	ld [rIE], a
	ei

	call DelayFrame

	predef Function9853

	call SoundRestart
	xor a
	ld [wMapMusic], a
	jp GameInit
; 245


ClearVRAM:: ; 245
; Wipe VRAM banks 0 and 1

	ld a, 1
	ld [rVBK], a
	call .clear

	xor a
	ld [rVBK], a
.clear
	ld hl, VTiles0
	ld bc, $2000
	xor a
	call ByteFill
	ret
; 25a

ClearWRAM:: ; 25a
; Wipe swappable WRAM banks (1-7)

	ld a, 1
.asm_25c
	push af
	ld [rSVBK], a
	xor a
	ld hl, $d000
	ld bc, $1000
	call ByteFill
	pop af
	inc a
	cp 8
	jr nc, .asm_25c
	ret
; 270

Function270:: ; 270
	ld a, $0
	call GetSRAMBank
	ld hl, $a000
	ld bc, $0020
	xor a
	call ByteFill
	call CloseSRAM
	ret
; 283

