
SpawnPoints: ; 0x152ab

	const_def

spawn: MACRO
; name, map, x, y
	const SPAWN_\1
	map \2
	db \3, \4
ENDM

	spawn HOME,             REDS_HOUSE_2F_RB,            3,  6
	spawn DEBUG,            VERMILION_PORT,             10, 10

	spawn PALLET,           PALLET_TOWN,                 5,  6
	spawn VIRIDIAN,         VIRIDIAN_CITY,              23, 26
	spawn PEWTER,           PEWTER_CITY,                13, 26
	spawn CERULEAN,         CERULEAN_CITY,              19, 22
	spawn ROCK_TUNNEL,      ROUTE_10_NORTH,              9,  2
	spawn VERMILION,        VERMILION_CITY,              9,  6 ; 8
	spawn LAVENDER,         LAVENDER_TOWN,               5,  6
	spawn SAFFRON,          SAFFRON_CITY,                9, 30
	spawn CELADON,          CELADON_CITY,               29, 10
	spawn FUCHSIA,          FUCHSIA_CITY,               19, 28
	spawn CINNABAR,         CINNABAR_ISLAND,            11, 16
	spawn INDIGO,           ROUTE_23,                    9,  6

	spawn NEW_BARK,         NEW_BARK_TOWN,              13,  6
	spawn CHERRYGROVE,      CHERRYGROVE_CITY,           29,  4 ; 16
	spawn VIOLET,           VIOLET_CITY,                31, 26
	spawn UNION_CAVE,       ROUTE_32,                   11, 74
	spawn AZALEA,           AZALEA_TOWN,                15, 10
	spawn CIANWOOD,         CIANWOOD_CITY,              23, 44
	spawn GOLDENROD,        GOLDENROD_CITY,             14, 28
	spawn OLIVINE,          OLIVINE_CITY,               13, 22
	spawn ECRUTEAK,         ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY,         MAHOGANY_TOWN,              15, 14 ; 24
	spawn LAKE,             LAKE_OF_RAGE,               21, 29
	spawn BLACKTHORN,       BLACKTHORN_CITY,            21, 30
	spawn MT_SILVER,        SILVER_CAVE_OUTSIDE,        23, 20
	spawn MT_MOON,          ROUTE_3,                    47,  4
	spawn FAST_SHIP,        FAST_SHIP_CABINS_SW_SSW_NW,  6,  2

	spawn PALLET_RB,        PALLET_TOWN_RB,              5,  6
	spawn VIRIDIAN_RB,      VIRIDIAN_CITY_RB,           23, 26
	spawn PEWTER_RB,        PEWTER_CITY_RB,             13, 26 ; 32
	spawn CERULEAN_RB,      CERULEAN_CITY_RB,           19, 18
	spawn MT_MOON_RB,       ROUTE_3_RB,                 47,  4
	spawn VERMILION_RB,     VERMILION_CITY_RB,          11,  4
	spawn S_S_ANNE,         S_S_ANNE_10,                22, 11
	spawn S_S_ANNE_CAPTAIN, S_S_ANNE_7,                  2,  1

	db -1, -1, -1

	const NUM_SPAWNS
GLOBAL NUM_SPAWNS

LoadSpawnPoint: ; 1531f
	push hl
	push de
	ld a, [wd001]
	cp -1
	jr z, .asm_15341
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, SpawnPoints
	add hl, de
	ld a, [hli]
	ld [MapGroup], a
	ld a, [hli]
	ld [MapNumber], a
	ld a, [hli]
	ld [XCoord], a
	ld a, [hli]
	ld [YCoord], a
.asm_15341
	pop de
	pop hl
	ret
; 15344


IsSpawnPoint: ; 15344
	ld hl, SpawnPoints
	ld c, 0
.asm_15349
	ld a, [hl]
	cp -1
	jr z, .asm_1535f
	cp d
	jr nz, .asm_15356
	inc hl
	ld a, [hld]
	cp e
	jr z, .asm_15361

.asm_15356
	push bc
	ld bc, 4
	add hl, bc
	pop bc
	inc c
	jr .asm_15349

.asm_1535f
	and a
	ret

.asm_15361
	scf
	ret
; 15363
