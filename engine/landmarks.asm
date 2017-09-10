GetLandmarkCoords: ; 0x1ca896
; Return coordinates (d, e) of landmark e.
	push hl
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	ret
; 0x1ca8a5


GetLandmarkName:: ; 0x1ca8a5
; Copy the name of landmark e to StringBuffer1.
	push hl
	push de
	push bc

	ld a, e
	cp LAV_RADIO_TOWER
	jr nz, .normal
	ld a, [StatusFlags]
	bit 5, a
	jr nz, .normal
	ld hl, .PokemonTower
	jr .okay

.normal
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks + 2
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
.okay
	ld de, StringBuffer1
	ld c, 18
.copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copy

	pop bc
	pop de
	pop hl
	ret
; 0x1ca8c3
.PokemonTower
	db "Torre", $1f, "Pokémon@"

Landmarks: ; 0x1ca8c3

landmark: MACRO
	db \1, \2
	dw \3
ENDM

	landmark   0,   0, SpecialMapName
	landmark 148, 116, NewBarkTownName
	landmark 136, 116, Route29Name
	landmark 108, 116, CherrygroveCityName
	landmark 108,  96, Route30Name
	landmark 104,  76, Route31Name
	landmark  92,  76, VioletCityName
	landmark  93,  74, SproutTowerName
	landmark  92, 108, Route32Name
	landmark  84,  92, RuinsOfAlphName
	landmark  92, 140, UnionCaveName
	landmark  90, 140, Route33Name
	landmark  76, 140, AzaleaTownName
	landmark  78, 138, SlowpokeWellName
	landmark  60, 136, IlexForestName
	landmark  60, 128, Route34Name
	landmark  60, 108, GoldenrodCityName
	landmark  58, 108, RadioTowerName
	landmark  60,  92, Route35Name
	landmark  60,  76, NationalParkName
	landmark  72,  76, Route36Name
	landmark  76,  68, Route37Name
	landmark  76,  60, EcruteakCityName
	landmark  78,  58, TinTowerName
	landmark  74,  58, BurnedTowerName
	landmark  60,  60, Route38Name
	landmark  44,  64, Route39Name
	landmark  44,  76, OlivineCityName
	landmark  46,  78, LighthouseName
	landmark  36,  72, BattleTowerName
	landmark  36,  80, Route40Name
	landmark  36, 108, WhirlIslandsName
	landmark  36, 116, Route41Name
	landmark  28, 116, CianwoodCityName
	landmark 100,  60, Route42Name
	landmark  92,  60, MtMortarName
	landmark 116,  60, MahoganyTownName
	landmark 116,  52, Route43Name
	landmark 116,  44, LakeOfRageName
	landmark 128,  60, Route44Name
	landmark 138,  54, IcePathName
	landmark 140,  60, BlackthornCityName
	landmark 140,  52, DragonsDenName
	landmark 140,  80, Route45Name
	landmark 120,  88, DarkCaveName
	landmark 132, 104, Route46Name
	landmark 156,  84, SilverCaveName
	landmark  60, 124, PalletTownName
	landmark  60, 108, Route1Name
	landmark  60,  92, ViridianCityName
	landmark  60,  80, Route2Name
	landmark  60,  76, ViridianForestName
	landmark  60,  68, PewterCityName
	landmark  72,  68, Route3Name
	landmark  84,  68, MtMoonName
	landmark  96,  68, Route4Name
	landmark 108,  68, CeruleanCityName
	landmark 104,  64, CeruleanCaveName
	landmark 108,  60, Route24Name
	landmark 116,  52, Route25Name
	landmark 108,  76, Route5Name
	landmark 116,  92, UndergroundName
	landmark 108,  92, Route6Name
	landmark 108, 100, VermilionCityName
	landmark 110,  98, SSAnneName
	landmark  96,  76, DiglettsCaveName
	landmark  96,  84, Route7Name
	landmark 124,  84, Route8Name
	landmark 124,  68, Route9Name
	landmark 140,  68, RockTunnelName
	landmark 140,  72, Route10Name
	landmark 140,  76, PowerPlantName
	landmark 140,  84, LavenderTownName
	landmark 148,  84, LavRadioTowerName
	landmark  84,  84, CeladonCityName
	landmark  82,  86, BattleTentRuinsName
	landmark 108,  84, SaffronCityName
	landmark 124, 100, Route11Name
	landmark 140,  96, Route12Name
	landmark 132, 116, Route13Name
	landmark 124, 128, Route14Name
	landmark 112, 132, Route15Name
	landmark  76,  84, Route16Name
	landmark  76, 108, Route17Name
	landmark  88, 132, Route18Name
	landmark 100, 132, FuchsiaCityName
	landmark 100, 144, Route19Name
	landmark  84, 148, Route20Name
	landmark  76, 148, SeafoamIslandsName
	landmark  60, 148, CinnabarIslandName
	landmark  64, 152, CinnabarVolcanoName
	landmark  60, 136, Route21Name
	landmark  44,  84, Route22Name
	landmark  92, 108, MewIslandName
	landmark  36,  68, VictoryRoadName
	landmark  36,  60, Route23Name
	landmark  36,  52, IndigoPlateauName
	landmark  36, 108, Route26Name
	landmark  28, 116, Route27Name
	landmark  20, 116, TohjoFallsName
	landmark  28,  84, Route28Name
	landmark 148, 132, FastShipName


NewBarkTownName:     db "Borgo", $1f, "Foglianova@"
CherrygroveCityName: db "Fiorpescopoli@"
VioletCityName:      db "Violapoli@"
AzaleaTownName:      db "Azalina@"
GoldenrodCityName:   db "Fiordoropoli@"
EcruteakCityName:    db "Amarantopoli@"
OlivineCityName:     db "Olivinopoli@"
CianwoodCityName:    db "Fiorlisopoli@"
MahoganyTownName:    db "Mogania@"
BlackthornCityName:  db "Ebanopoli@"
LakeOfRageName:      db "Lago d'Ira@"
SilverCaveName:      db "Monte", $1f, "Argento@"
SproutTowerName:     db "Torre", $1f, "Sprout@"
RuinsOfAlphName:     db "Rovine", $1f, "d'Alfa@"
UnionCaveName:       db "Grotta di", $1f, "Mezzo@"
SlowpokeWellName:    db "Pozzo", $1f, "Slowpoke@"
RadioTowerName:      db "Torre Radio@"
PowerPlantName:      db "Centrale", $1f, "Elettr.@"
NationalParkName:    db "Parco", $1f, "Nazionale@"
TinTowerName:        db "Torre di", $1f, "Latta@"
LighthouseName:      db "Faro@"
WhirlIslandsName:    db "Isole", $1f, "Vorticose@"
MtMortarName:        db "Monte", $1f, "Scodella@"
DragonsDenName:      db "Tana del", $1f, "Drago@"
IcePathName:         db "Grotta", $1f, "Gelata@"
NotApplicableName:   db "N/A@"
PalletTownName:      db "Biancavilla@"
ViridianCityName:    db "Smeraldopoli@"
PewterCityName:      db "Plumbeopoli@"
CeruleanCityName:    db "Celestopoli@"
LavenderTownName:    db "Lavandonia@"
VermilionCityName:   db "Aranciopoli@"
CeladonCityName:     db "Azzurropoli@"
SaffronCityName:     db "Zafferanopoli@"
FuchsiaCityName:     db "Fucsiapoli@"
CinnabarIslandName:  db "Isola", $1f, "Cannella@"
CinnabarVolcanoName: db "Vulcano", $1f, "Cannella@"
IndigoPlateauName:   db "Altopiano", $1f, "Blu@"
VictoryRoadName:     db "Via", $1f, "Vittoria@"
MtMoonName:          db "Monte Luna@"
RockTunnelName:      db "Tunnel", $1f, "Roccioso@"
LavRadioTowerName:   db "Lav.", $1f, "Torre Radio@"
SilphCoName:         db "Silph S.p.A.@"
SafariZoneName:      db "Zona Safari@"
SeafoamIslandsName:  db "Isole", $1f, "Spumarine@"
PokemonMansionName:  db "Villa", $1f, "Pokémon@"
CeruleanCaveName:    db "Grotta", $1f, "Celeste@"
MewIslandName:       db "Guyana@"
Route1Name:          db "Percorso 1@"
Route2Name:          db "Percorso 2@"
Route3Name:          db "Percorso 3@"
Route4Name:          db "Percorso 4@"
Route5Name:          db "Percorso 5@"
Route6Name:          db "Percorso 6@"
Route7Name:          db "Percorso 7@"
Route8Name:          db "Percorso 8@"
Route9Name:          db "Percorso 9@"
Route10Name:         db "Percorso 10@"
Route11Name:         db "Percorso 11@"
Route12Name:         db "Percorso 12@"
Route13Name:         db "Percorso 13@"
Route14Name:         db "Percorso 14@"
Route15Name:         db "Percorso 15@"
Route16Name:         db "Percorso 16@"
Route17Name:         db "Percorso 17@"
Route18Name:         db "Percorso 18@"
Route19Name:         db "Percorso 19@"
Route20Name:         db "Percorso 20@"
Route21Name:         db "Percorso 21@"
Route22Name:         db "Percorso 22@"
Route23Name:         db "Percorso 23@"
Route24Name:         db "Percorso 24@"
Route25Name:         db "Percorso 25@"
Route26Name:         db "Percorso 26@"
Route27Name:         db "Percorso 27@"
Route28Name:         db "Percorso 28@"
Route29Name:         db "Percorso 29@"
Route30Name:         db "Percorso 30@"
Route31Name:         db "Percorso 31@"
Route32Name:         db "Percorso 32@"
Route33Name:         db "Percorso 33@"
Route34Name:         db "Percorso 34@"
Route35Name:         db "Percorso 35@"
Route36Name:         db "Percorso 36@"
Route37Name:         db "Percorso 37@"
Route38Name:         db "Percorso 38@"
Route39Name:         db "Percorso 39@"
Route40Name:         db "Percorso 40@"
Route41Name:         db "Percorso 41@"
Route42Name:         db "Percorso 42@"
Route43Name:         db "Percorso 43@"
Route44Name:         db "Percorso 44@"
Route45Name:         db "Percorso 45@"
Route46Name:         db "Percorso 46@"
DarkCaveName:        db "Grotta", $1f, "Scura@"
IlexForestName:      db "Bosco", $1f, "di Lecci@"
BurnedTowerName:     db "Torre", $1f, "Bruciata@"
FastShipName:        db "M/N Acqua@"
ViridianForestName:  db "Bosco", $1f, "Smeraldo@"
DiglettsCaveName:    db "Grotta", $1f, "Diglett@"
TohjoFallsName:      db "Cascate Tohjo@"
UndergroundName:     db "Sotterranei@"
BattleTowerName:     db "Torre Lotta@"
SpecialMapName:      db "Speciale@"
BattleTentRuinsName: db "Tenda Lotta", $1f, "Rovine@"
SSAnneName:          db "M/N Anna@"

SpecialRegionCheck:
	call RegionCheck
	ld a, e
	ld [ScriptVar], a
	ret

RegionCheck: ; 0x1caea1
; Checks if the player is in Kanto or Johto.
; If in Johto, returns 0 in e.
; If in Kanto, returns 1 in e.
	ld a, [MapGroup]
	ld b, a
	ld a, [MapNumber]
	ld c, a
	call GetWorldMapLocation
	cp FAST_SHIP ; S.S. Aqua
	jr z, .johto
	cp SPECIAL_MAP
	jr nz, .checkagain

; In a special map, get the backup map group / map id
	ld a, [BackupMapGroup]
	ld b, a
	ld a, [BackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.checkagain
	cp KANTO_LANDMARK
	jr c, .johto

; Victory Road area is considered to be Johto.
	cp VICTORY_ROAD
	jr c, .kanto

.johto
	ld e, 0
	ret
.kanto
	ld e, 1
	ret

