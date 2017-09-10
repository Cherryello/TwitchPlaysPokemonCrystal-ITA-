TrainerNotes_:
	call TN_PrintToD
	call TN_PrintLocation
	call TN_PrintLV
	jp TN_PrintCharacteristics

TN_PrintToD
	ld de, .caughtat
	hlcoord 1, 9
	call PlaceString
	ld a, [TempMonCaughtTime]
	and $c0
	ld de, .unknown
	jr z, .print
	rlca
	rlca
	cp 2
	ld de, .morn
	jr c, .print
	ld de, .day
	jr z, .print
	ld de, .nite
.print
	hlcoord 5, 9
	jp PlaceString

.caughtat
	db "Trov@"

.morn
	db "ato di mattina@"

.day
	db "ato di giorno@"

.nite
	db "ato di notte@"

.unknown
	db "ato a oraignota@"

TN_PrintLocation:
	ld de, .unknown
	ld a, [TempMonCaughtLocation]
	and $7f
	jr z, .print
	cp $7e
	jr z, .print
	ld de, .event
	cp $7f
	jr z, .print
	ld e, a
	callba GetLandmarkName
	ld de, StringBuffer1
.print
	hlcoord 1, 11
	jp PlaceString

.unknown
	db "Zona Ignota@"

.event
	db "#mon Evento@"

TN_PrintLV:
	ld a, [TempMonCaughtLevel]
	and $3f
	hlcoord 1, 13
	jr z, .unknown
	cp 1
	jr z, .hatched
	cp 63
	jr z, .max
	ld [Buffer2], a
	ld de, .metat
	call PlaceString
	ld de, Buffer2
	ld bc, $0103
	hlcoord 8, 13
	jp PrintNum
.hatched
	ld de, .egg
	jp PlaceString
.unknown
	ld de, .str_unknown
	jp PlaceString
.max
	ld de, .str_max
	call PlaceString
	hlcoord 11, 13
	ld [hl], $35
	ret

.metat
	db "Al lvl ", $6e, "@"

.egg
	db "Da un uovo@"

.str_unknown
	db "Da uno scambio@"

.str_max
	db "Al lvl ", $6e, "63@"

TN_PrintCharacteristics:
	ld hl, TempMonDVs
	ld d, 0 ; hp
	ld a, [hl]
	and $f
	ld c, a ; def
	ld a, [hli]
	swap a
	and $f ; atk
	cp c
	ld e, 2
	ld b, c
	jr c, .atk
	ld e, 1
	ld b, a
.atk
	srl a
	rl d
	srl c
	rl d
	ld a, [hl]
	and $f
	ld c, a ; spe
	ld a, [hl]
	swap a
	and $f ; spx
	cp c
	ld l, 5
	ld h, c
	jr c, .spx
	ld l, 3
	ld h, a
.spx
	srl a
	rl d
	srl c
	rl d
	ld a, b
	cp h
	jr nc, .skip
	ld e, l
	ld b, h
.skip
	ld a, b
	cp d
	jr nc, .skiphp
	ld e, 0
	ld b, d
.skiphp
	ld a, 3
	cp e
	jr nz, .skipspx
	; since DVs don't have SpA/SpD split so we have to determine it by OT ID
	ld a, [TempMonID + 1]
	bit 0, a
	jr z, .skipspx
	inc e
.skipspx
	ld a, b
	ld c, 5
	call SimpleDivide
	ld b, a
	ld a, e
	call SimpleMultiply
	add b
	ld l, a
	ld h, 0
	ld bc, Characteristics
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	decoord 1, 15
	push de
.loop
	ld a, [hli]
	cp "@"
	jr z, .done
	cp $4e
	jr z, .line
	ld [de], a
	inc de
	jr .loop

.line
	pop de
	push hl
	ld hl, $0014
	add hl, de
	ld d, h
	ld e, l
	pop hl
	push de
	jr .loop

.done
	pop de
	ret


Characteristics:
	dw Chara_HP0, Chara_HP1, Chara_HP2, Chara_HP3, Chara_HP4
	dw Chara_ATK0, Chara_ATK1, Chara_ATK2, Chara_ATK3, Chara_ATK4
	dw Chara_DEF0, Chara_DEF1, Chara_DEF2, Chara_DEF3, Chara_DEF4
	dw Chara_SPA0, Chara_SPA1, Chara_SPA2, Chara_SPA3, Chara_SPA4
	dw Chara_SPD0, Chara_SPD1, Chara_SPD2, Chara_SPD3, Chara_SPD4
	dw Chara_SPE0, Chara_SPE1, Chara_SPE2, Chara_SPE3, Chara_SPE4

Chara_HP0:  db "Adora mangiare@"
Chara_HP1:  db "Si addormenta"
	next "spesso@"
Chara_HP2:  db "Dorme a lungo@"
Chara_HP3:  db "Lascia cose"
	next "in giro@"
Chara_HP4:  db "Adora rilassarsi@"

Chara_ATK0: db "La forza é il"
	next "suo vanto@"
Chara_ATK1: db "Adora dimenarsi@"

Chara_ATK2: db "Si arrabbia"
	next "facilmente@"
Chara_ATK3: db "Adora combattere@"
Chara_ATK4: db "Facilmente irri-"
    next "tabile@"
Chara_DEF0: db "Ha un corpo"
    next "robusto@"
Chara_DEF1: db "Forte in attacco@"

Chara_DEF2: db "Molto ostinato@"
Chara_DEF3: db "Molto paziente@"
Chara_DEF4: db "Molto tenace@"

Chara_SPA0: db "Grande ficcanaso@"
Chara_SPA1: db "Alquanto vivace@"
Chara_SPA2: db "Estremamente"
	next "sagace@"
Chara_SPA3: db "Si perde nel"
	next "suo mondo@"
Chara_SPA4: db "Molto esigente@"

Chara_SPD0: db "Sa il fatto suo@"
Chara_SPD1: db "Abbastanza super-"
    next "ficiale@"
Chara_SPD2: db "Molto insolente@"
Chara_SPD3: db "Non sopporta"
    next "perdere@"
Chara_SPD4: db "Un po' testardo@"

Chara_SPE0: db "Adora correre@"
Chara_SPE1: db "Fa attenzione ai"
    next "suoni@"
Chara_SPE2: db "Irruente e semplice@"
Chara_SPE3: db "Una specie di"
	next "buffone@"
Chara_SPE4: db "Sa fuggire"
    next "velocemente@"
