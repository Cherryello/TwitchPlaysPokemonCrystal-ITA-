PrintItemDescription: ; 0x1c8955
; Print the description for item [CurSpecies] at de.

	ld a, [CurSpecies]
	cp TM_DYNAMICPUNCH
	jr c, .not_a_tm

	ld [CurItem], a
	push de
	callba GetTMHMItemMove
	pop hl
	ld a, [wd265]
	ld [CurSpecies], a
	predef PrintMoveDesc
	ret

.not_a_tm
	push de
	cp S_S_TICKET
	jr nz, .not_ss_ticket
	ld a, [StatusFlags]
	bit 5, a
	ld de, SSTicketEGKDesc
	jr z, .okay
.not_ss_ticket
	ld hl, ItemDescriptions
	ld a, [CurSpecies]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
.okay
	pop hl
	jp PlaceString
; 0x1c8987


ItemDescriptions:
	dw MasterBallDesc
	dw UltraBallDesc
	dw BrightpowderDesc
	dw GreatBallDesc
	dw PokeBallDesc
	dw PremierBallDesc
	dw BicycleDesc
	dw MoonStoneDesc
	dw AntidoteDesc
	dw BurnHealDesc
	dw IceHealDesc
	dw AwakeningDesc
	dw ParlyzHealDesc
	dw FullRestoreDesc
	dw MaxPotionDesc
	dw HyperPotionDesc
	dw SuperPotionDesc
	dw PotionDesc
	dw EscapeRopeDesc
	dw RepelDesc
	dw MaxElixerDesc
	dw FireStoneDesc
	dw ThunderStoneDesc
	dw WaterStoneDesc
	dw PoisonGuardDesc
	dw HPUpDesc
	dw ProteinDesc
	dw IronDesc
	dw CarbosDesc
	dw LuckyPunchDesc
	dw CalciumDesc
	dw RareCandyDesc
	dw XAccuracyDesc
	dw LeafStoneDesc
	dw MetalPowderDesc
	dw NuggetDesc
	dw PokeDollDesc
	dw FullHealDesc
	dw ReviveDesc
	dw MaxReviveDesc
	dw GuardSpecDesc
	dw SuperRepelDesc
	dw MaxRepelDesc
	dw DireHitDesc
	dw BurnGuardDesc
	dw FreshWaterDesc
	dw SodaPopDesc
	dw LemonadeDesc
	dw XAttackDesc
	dw FreezeGuardDesc
	dw XDefendDesc
	dw XSpeedDesc
	dw XSpecialDesc
	dw CoinCaseDesc
	dw ItemfinderDesc
	dw PokeFluteDesc
	dw ExpShareDesc
	dw OldRodDesc
	dw GoodRodDesc
	dw SilverLeafDesc
	dw SuperRodDesc
	dw PPUpDesc
	dw EtherDesc
	dw MaxEtherDesc
	dw ElixerDesc
	dw RedScaleDesc
	dw SecretPotionDesc
	dw SSTicketDesc
	dw MysteryEggDesc
	dw ClearBellDesc
	dw SilverWingDesc
	dw MoomooMilkDesc
	dw QuickClawDesc
	dw PsnCureBerryDesc
	dw GoldLeafDesc
	dw SoftSandDesc
	dw SharpBeakDesc
	dw PrzCureBerryDesc
	dw BurntBerryDesc
	dw IceBerryDesc
	dw PoisonBarbDesc
	dw KingsRockDesc
	dw BitterBerryDesc
	dw MintBerryDesc
	dw RedApricornDesc
	dw TinyMushroomDesc
	dw BigMushroomDesc
	dw SilverPowderDesc
	dw BluApricornDesc
	dw SleepGuardDesc
	dw AmuletCoinDesc
	dw YlwApricornDesc
	dw GrnApricornDesc
	dw CleanseTagDesc
	dw MysticWaterDesc
	dw TwistedSpoonDesc
	dw WhtApricornDesc
	dw BlackbeltDesc
	dw BlkApricornDesc
	dw ParlyzGuardDesc
	dw PnkApricornDesc
	dw BlackGlassesDesc
	dw SlowpokeTailDesc
	dw PinkBowDesc
	dw StickDesc
	dw SmokeBallDesc
	dw NeverMeltIceDesc
	dw MagnetDesc
	dw MiracleBerryDesc
	dw PearlDesc
	dw BigPearlDesc
	dw EverStoneDesc
	dw SpellTagDesc
	dw RageCandyBarDesc
	dw GSBallDesc
	dw BlueCardDesc
	dw MiracleSeedDesc
	dw ThickClubDesc
	dw FocusBandDesc
	dw ConfuseGuardDesc
	dw EnergyPowderDesc
	dw EnergyRootDesc
	dw HealPowderDesc
	dw RevivalHerbDesc
	dw HardStoneDesc
	dw LuckyEggDesc
	dw CardKeyDesc
	dw MachinePartDesc
	dw EggTicketDesc
	dw LostItemDesc
	dw StardustDesc
	dw StarPieceDesc
	dw BasementKeyDesc
	dw PassDesc
	dw HelixFossilDesc
	dw DomeFossilDesc
	dw OldAmberDesc
	dw CharcoalDesc
	dw BerryJuiceDesc
	dw ScopeLensDesc
	dw OaksParcelDesc
	dw PowerHerbDesc
	dw MetalCoatDesc
	dw DragonFangDesc
	dw FriendCharmDesc
	dw LeftoversDesc
	dw ResearchNotesDesc
	dw TeruSama16Desc
	dw TeruSama17Desc
	dw MysteryBerryDesc
	dw DragonScaleDesc
	dw BerserkGeneDesc
	dw TeruSama18Desc
	dw XSpDefDesc
	dw TeruSama20Desc
	dw SacredAshDesc
	dw HeavyBallDesc
	dw FlowerMailDesc
	dw LevelBallDesc
	dw LureBallDesc
	dw FastBallDesc
	dw TeruSama21Desc
	dw LightBallDesc
	dw FriendBallDesc
	dw MoonBallDesc
	dw LoveBallDesc
	dw NormalBoxDesc
	dw GorgeousBoxDesc
	dw SunStoneDesc
	dw PolkadotBowDesc
	dw TeruSama22Desc
	dw UpGradeDesc
	dw BerryDesc
	dw GoldBerryDesc
	dw SquirtBottleDesc
	dw TeruSama23Desc
	dw ParkBallDesc
	dw RainbowWingDesc
	dw TeruSama24Desc
	dw BrickPieceDesc
	dw SurfMailDesc
	dw LiteBlueMailDesc
	dw PortraitMailDesc
	dw LovelyMailDesc
	dw EonMailDesc
	dw MorphMailDesc
	dw BlueSkyMailDesc
	dw MusicMailDesc
	dw MewMailDesc
	dw TeruSama25Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama26Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama27Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama28Desc
	dw TeruSama29Desc
	dw TeruSama30Desc
	dw TeruSama31Desc
	dw TeruSama32Desc
	dw TeruSama33Desc

MasterBallDesc:
	db   "La migliore ball:"
	next "cattura assicurata@"

UltraBallDesc:
	db   "Altissima probabi-"
	next "lità di successo.@"

BrightpowderDesc:
	db   "Riduce la preci-"
	next "sione del nemico.@"

GreatBallDesc:
	db   "Discrete possibi-"
	next "lità di successo.@"

PokeBallDesc:
	db   "Si usa per cattu-"
	next "rare i #mon.@"

PremierBallDesc:
	db   "Ball particolare"
	next "per un evento.@"

BicycleDesc:
	db   "Bici pieghevole"
	next "per andare veloce.@"

AntidoteDesc:
	db   "Cura i #mon"
	next "avvelenati.@"

BurnHealDesc:
	db   "Cura i #mon"
	next "scottati.@"

IceHealDesc:
	db   "Cura i #mon"
	next "congelati.@"

AwakeningDesc:
	db   "Sveglia i #mon"
	next "addormentati.@"

ParlyzHealDesc:
	db   "Cura i #mon"
	next "paralizzati.@"

FullRestoreDesc:
	db   "Ridà i PS e azzera"
	next "problemi di stato.@"

MaxPotionDesc:
	db   "Restituisce tutti"
	next "i PS a un #mon.@"

HyperPotionDesc:
	db   "Restituisce 200 PS"
	next "ad un #mon.@"

SuperPotionDesc:
	db   "Restituisce 50 PS"
	next "ad un #mon.@"

PotionDesc:
	db   "Restituisce 20 PS"
	next "ad un #mon.@"

EscapeRopeDesc:
	db   "Si usa per uscire"
	next "da grotte, etc<...>@"

RepelDesc:
	db   "Allontana #mon"
	next "deboli ×100 passi.@"

MaxElixerDesc:
	db   "Ridà tutti i PP"
	next "ad un #mon.@"

FireStoneDesc:
WaterStoneDesc:
ThunderStoneDesc:
LeafStoneDesc:
SunStoneDesc:
MoonStoneDesc:
	db   "Fa evolvere certi"
	next "tipi di #mon.@"

TeruSama2Desc:
	db   "?@"

HPUpDesc:
	db   "Aumenta i PS di"
	next "un #mon.@"

ProteinDesc:
	db   "Aumenta l'Attacco"
	next "di un #mon.@"

IronDesc:
	db   "Aumenta la Difesa"
	next "di un #mon.@"

CarbosDesc:
	db   "Aumenta Velocità"
	next "di un #mon.@"

LuckyPunchDesc:
	db   "Aumenta brutti"
	next "colpi a Chansey.@"

CalciumDesc:
	db   "Aumenta Speciali"
	next "di un #mon.@"

RareCandyDesc:
	db   "Aumenta di 1 il"
	next "lv. di un #mon.@"

XAccuracyDesc:
	db   "Migliora la"
	next "precisione.(lotta)@"

MetalPowderDesc:
	db   "Aumenta la Difesa"
	next "di Ditto.@"

NuggetDesc:
	db   "Placcata in oro"
	next "vero. Vale molto.@"

PokeDollDesc:
	db   "Per fuggire da un"
	next "#mon selvatico.@"

FullHealDesc:
	db   "Risolve tutti i"
	next "problemi di stato.@"

ReviveDesc:
	db   "Un #mon esausto"
	next "recupera 1/2 PS.@"

MaxReviveDesc:
	db   "Un #mon esausto"
	next "recupera ogni PS.@"

GuardSpecDesc:
	db   "Previene riduzione"
	next "stat. (lotta)@"

SuperRepelDesc:
	db   "Allontana #mon"
	next "deboli ×200 passi.@"

MaxRepelDesc:
	db   "Allontana #mon"
	next "deboli ×250 passi.@"

DireHitDesc:
	db   "Brutti colpi più"
	next "probabili.(lotta)@"

TeruSama3Desc:
	db   "?@"

FreshWaterDesc:
	db   "Restituisce 50 PS"
	next "ad un #mon.@"

SodaPopDesc:
	db   "Restituisce 60 PS"
	next "ad un #mon.@"

LemonadeDesc:
	db   "Restituisce 80 PS"
	next "ad un #mon.@"

XAttackDesc:
	db   "Migliora la stat."
	next "Attacco. (lotta)@"

TeruSama4Desc:
	db   "?@"

XDefendDesc:
	db   "Migliora la stat."
	next "Difesa. (lotta)@"

XSpeedDesc:
	db   "Migliora la stat."
	next "Velocità. (lotta)@"

XSpecialDesc:
	db   "Migliora l'Attacco"
	next "Speciale. (lotta)@"

CoinCaseDesc:
	db   "Può contenere"
	next "50.000 gettoni.@"

ItemfinderDesc:
	db   "Cerca strumenti"
	next "nella zona.@"

PokeFluteDesc:
	db   "Risveglia tutti i"
	next "#mon dormienti.@"

ExpShareDesc:
	db   "Fa condividere i"
	next "punti ESP.@"

OldRodDesc:
	db   "Serve a pescare"
	next "i #mon d'acqua.@"

GoodRodDesc:
	db   "Un buon amo per i"
	next "#mon acquatici.@"

SilverLeafDesc:
	db   "Una strana foglia"
	next "di color argento.@"

SuperRodDesc:
	db   "L'amo migliore per"
	next "cattturare #mon.@"

PPUpDesc:
	db   "Aumenta i PP max"
	next "di una data mossa.@"

EtherDesc:
	db   "Restituisce 10 PP"
	next "ad una mossa.@"

MaxEtherDesc:
	db   "Restituisce tutti"
	next "i PP ad una mossa.@"

ElixerDesc:
	db   "Restituisce 10 PP"
	next "a tutte le mosse.@"

RedScaleDesc:
	db   "Una squama dal"
	next "Gyarados rosso.@"

SecretPotionDesc:
	db   "Ricarica pienamen-"
	next "te tutti i <PKMN>.@"

SSTicketDesc:
	db   "Un biglietto per"
	next "la M/N Acqua.@"

MysteryEggDesc:
	db   "Un uovo ricevuto"
	next "da Mr #mon.@"

ClearBellDesc:
	db   "Produce un suono"
	next "delicato.@"

SilverWingDesc:
	db   "Una strana piuma"
	next "argentata.@"

MoomooMilkDesc:
	db   "Restituisce 100 PS"
	next "ad un #mon.@"

QuickClawDesc:
	db   "Talvolta fa attac-"
	next "care per primi.@"

PsnCureBerryDesc:
	db   "Se mangiata, cura"
	next "dal veleno.@"

GoldLeafDesc:
	db   "Una strana piuma"
	next "dorata.@"

SoftSandDesc:
	db   "Potenzia le mosse"
	next "di tipo terra.@"

SharpBeakDesc:
	db   "Potenzia le mosse"
	next "di tipo volante.@"

PrzCureBerryDesc:
	db   "Se mangiata, cura"
	next "dalla paralisi.@"

BurntBerryDesc:
	db   "Se mangiata, cura"
	next "dal congelamento.@"

IceBerryDesc:
	db   "Se mangiata, cura"
	next "dalle scottature.@"

PoisonBarbDesc:
	db   "Potenzia le mosse"
	next "di tipo veleno.@"

KingsRockDesc:
	db   "Talvolta fa ten-"
	next "tennare il nmc.@"

BitterBerryDesc:
	db   "Se mangiata, cura"
	next "dalla confusione.@"

MintBerryDesc:
	db   "Se mangiata, cura"
	next "dal sonno.@"

RedApricornDesc:
	db   "Una ghicocca"
	next "rossa.@"

TinyMushroomDesc:
	db   "Un comunissimo"
	next "fungo. Vale poco.@"

BigMushroomDesc:
	db   "Un raro fungo."
	next "Vale molto.@"

SilverPowderDesc:
	db   "Potenzia le mosse"
	next "di tipo coleott.@"

BluApricornDesc:
	db   "Una ghicocca blu.@"

TeruSama6Desc:
	db   "?@"

AmuletCoinDesc:
	db   "Raddoppia i guada-"
	next "gni in lotta.@"

YlwApricornDesc:
	db   "Una ghicocca"
	next "gialla.@"

GrnApricornDesc:
	db   "Una ghicocca"
	next "verde.@"

CleanseTagDesc:
	db   "Aiuta ad allonta-"
	next "#mon selvatici.@"

MysticWaterDesc:
	db   "Potenzia le mosse"
	next "di tipo acqua.@"

TwistedSpoonDesc:
	db   "Potenzia le mosse"
	next "di tipo psico.@"

WhtApricornDesc:
	db   "Una ghicocca"
	next "bianca.@"

BlackbeltDesc:
	db   "Potenzia le mosse"
	next "di tipo lotta.@"

BlkApricornDesc:
	db   "Una ghicocca nera.@"

TeruSama7Desc:
	db   "?@"

PnkApricornDesc:
	db   "Una ghicocca rosa.@"

BlackGlassesDesc:
	db   "Potenzia le mosse"
	next "di tipo buio.@"

SlowpokeTailDesc:
	db   "Molto gustosa."
	next "Vale molto.@"

PinkBowDesc:
	db   "Potenzia le mosse"
	next "di tipo folletto.@"

StickDesc:
	db   "Un gambo da dare a"
	next "Farfetch'd.@"

SmokeBallDesc:
	db   "Per fuggire dai"
	next "#mon selvatici.@"

NeverMeltIceDesc:
	db   "Potenzia le mosse"
	next "di tipo ghiaccio.@"

MagnetDesc:
	db   "Potenzia le mosse"
	next "di tipo elettro.@"

MiracleBerryDesc:
	db   "Risolve tutti i"
	next "problemi di stato.@"

PearlDesc:
	db   "Bellissima perla."
	next "Ma vale poco.@"

BigPearlDesc:
	db   "Grande, bellissima"
	next "perla. Vale molto.@"

EverStoneDesc:
	db   "Blocca il processo"
	next "di evoluzione.@"

SpellTagDesc:
	db   "Potenzia le mosse"
	next "di tipo spettro.@"

RageCandyBarDesc:
	db   "Restituisce 20 PS"
	next "ad un #mon.@"

GSBallDesc:
	db   "La misteriosa"
	next "ball.@"

BlueCardDesc:
	db   "Per conservare"
	next "punti.@"

MiracleSeedDesc:
	db   "Potenzia le mosse"
	next "di tipo erba.@"

ThickClubDesc:
	db   "Un osso di qualche"
	next "sorta. Vale poco.@"

FocusBandDesc:
	db   "Può far resistere"
	next "a colpi da KO.@"

TeruSama8Desc:
	db   "?@"

EnergyPowderDesc:
	db   "Restituisce 50 PS"
	next "ma é amara.@"

EnergyRootDesc:
	db   "Restituisce 200 PS"
	next "ma é amara.@"

HealPowderDesc:
	db   "Cura da variaz. di"
	next "stato. È amara.@"

RevivalHerbDesc:
	db   "Riporta in salute"
	next "un #mon. Amara.@"

HardStoneDesc:
	db   "Potenzia le mosse"
	next "di tipo roccia.@"

LuckyEggDesc:
	db   "Fa guadagnare ult-"
	next "eriori punti ESP.@"

CardKeyDesc:
	db   "Apriporta per la"
	next "Torre Radio.@"

MachinePartDesc:
	db   "Un pezzo meccanico"
	next "della centrale.@"

EggTicketDesc:
	db   "Portalo al casinò"
	next "di Fiordoropoli.@"

LostItemDesc:
	db   "La #bambola"
	next "persa da Copiona.@"

StardustDesc:
	db   "Splendida sabbia"
	next "rossa. Vale molto.@"

StarPieceDesc:
	db   "Gemma rossa enorme"
	next "Vale moltissimo.@"

BasementKeyDesc:
	db   "Apre le porte.@"

PassDesc:
	db   "Biglietto per il"
	next "Supertreno.@"

TeruSama9Desc:
	db   "?@"

TeruSama10Desc:
	db   "?@"

TeruSama11Desc:
	db   "?@"

CharcoalDesc:
	db   "Potenzia le mosse"
	next "di tipo fuoco.@"

BerryJuiceDesc:
	db   "Restituisce 20 PS"
	next "ad un #mon.@"

ScopeLensDesc:
	db   "Aumenta probabili-"
	next "tà brutti colpi.@"

OaksParcelDesc:
	db   "Un pacco per il"
	next "Professor Oak.@"

PowerHerbDesc:
	db   "Annulla turni di"
	next "ricarica.@"

MetalCoatDesc:
	db   "Potenzia le mosse"
	next "di tipo acciaio.@"

DragonFangDesc:
	db   "Potenzia le mosse"
	next "di tipo drago.@"

FriendCharmDesc:
	db   "Aumenta la proba-"
	next "bilità di cattura@"

LeftoversDesc:
	db   "Ridà PS durante la"
	next "battaglia.@"

ResearchNotesDesc:
	db   "Descrizione di un"
	next "raro #mon.@"

TeruSama16Desc:
	db   "?@"

TeruSama17Desc:
	db   "?@"

MysteryBerryDesc:
	db   "Se mangiata, fa"
	next "recuperare i PP.@"

DragonScaleDesc:
	db   "Un raro strumento"
	next "di tipo drago.@"

BerserkGeneDesc:
	db   "Aumenta l'Attacco,"
	next "ma confonde.@"

TeruSama18Desc:
	db   "?@"

XSpDefDesc:
	db   "Migliora la Difesa"
	next "Speciale. (lotta)@"

TeruSama20Desc:
	db   "?@"

SacredAshDesc:
	db   "Revitalizza tutti"
	next "i <PKMN> esausti.@"

HeavyBallDesc:
	db   "Serve a catturare"
	next "#mon pesanti.@"

FlowerMailDesc:
	db   "Messaggio con"
	next "fiori.@"

LevelBallDesc:
	db   "Per #mon di"
	next "livello basso.@"

LureBallDesc:
	db   "Per catturare i"
	next "#mon pescati.@"

FastBallDesc:
	db   "Per catturare"
	next "#mon veloci.@"

TeruSama21Desc:
	db   "?@"

LightBallDesc:
	db   "Una bizzarra sfera"
	next "luminosa.@"

FriendBallDesc:
	db   "Rende i #mon"
	next "amichevoli.@"

MoonBallDesc:
	db   "Per chi si evolve"
	next "con la Pietraluna.@"

LoveBallDesc:
	db   "Per catturare il"
	next "genere opposto.@"

NormalBoxDesc:
	db   "Aprila e vedi"
	next "cosa c'é dentro.@"

GorgeousBoxDesc:
	db   "Aprila e vedi"
	next "cosa c'é dentro.@"

PolkadotBowDesc:
	db   "Potenzie le mosse"
	next "di tipo normale.@"

TeruSama22Desc:
	db   "?@"

UpGradeDesc:
	db   "Una strana scatola"
	next "della Silph SpA.@"

BerryDesc:
	db   "Se mangiata, fa"
	next "recuperare 10 PS.@"

GoldBerryDesc:
	db   "Se mangiata, fa"
	next "recuperare 30 PS.@"

SquirtBottleDesc:
	db   "Serve ad annaffiar"
	next "le piante.@"

TeruSama23Desc:
	db   "?@"

ParkBallDesc:
	db   "Ball della Gara"
	next "Pigliamosche.@"

RainbowWingDesc:
	db   "Una piuma magica"
	next "dai mille colori.@"

TeruSama24Desc:
	db   "?@"

BrickPieceDesc:
	db   "Un raro pezzo di"
	next "un coccio.@"

SurfMailDesc:
	db   "Messaggio con"
	next "un Lapras.@"

LiteBlueMailDesc:
	db   "Messaggio con un"
	next "Dratini.@"

PortraitMailDesc:
	db   "Un messaggio per-"
	next "sonalizzato.@"

LovelyMailDesc:
	db   "Messaggio con un"
	next "cuore.@"

EonMailDesc:
	db   "Messaggio con un"
	next "Eevee.@"

MorphMailDesc:
	db   "Messaggio con un"
	next "Ditto.@"

BlueSkyMailDesc:
	db   "Messaggio con un"
	next "bel cielo terso.@"

MusicMailDesc:
	db   "Messaggio con un"
	next "Natu.@"

MewMailDesc:
	db   "Messaggio con un"
	next "Mew.@"

DomeFossilDesc:
	db   "Un fossile di un"
	next "antico #mon.@"

HelixFossilDesc:
	db   "Un fossile di un"
	next "antico #mon.@"

OldAmberDesc:
	db   "Una pietra conte-"
	next "nente geni <PKMN>.@"

PoisonGuardDesc:
	db	 "Se tenuto, impedi-"
	next "sce avvelenamento.@"

BurnGuardDesc:
	db	 "Se tenuto, impedi-"
	next "sce la scottatura.@"

FreezeGuardDesc:
	db	 "Se tenuto, impedi-"
	next "sce congelamento.@"

SleepGuardDesc:
	db	 "Se tenuto, impedi-"
	next "sce il sonno.@"

ParlyzGuardDesc:
	db	 "Se tenuto, impedi-"
	next "sce la paralisi.@"

ConfuseGuardDesc:
	db	 "Se tenuto, impedi-"
	next "sce la confusione.@"

TeruSama25Desc:
	db   "?@"

TeruSama26Desc:
	db   "?@"

TeruSama27Desc:
	db   "?@"

TeruSama28Desc:
	db   "?@"

TeruSama29Desc:
	db   "?@"

TeruSama30Desc:
	db   "?@"

TeruSama31Desc:
	db   "?@"

TeruSama32Desc:
	db   "?@"

TeruSama33Desc:
	db   "?@"

SSTicketEGKDesc:
	db   "Un biglietto per"
	next "la M/N Anna.@"
