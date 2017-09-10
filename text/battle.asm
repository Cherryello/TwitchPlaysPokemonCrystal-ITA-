BattleText_0x80730: ; 0x80730
	text $52, " vince"
	line "¥@"
	deciram wPayDayMoney, $36
	text "!"
	prompt
; 0x80746

WildPokemonAppearedText: ; 0x80746
	text "Appare @"
	text_from_ram EnemyMonNick
	text ""
	line "selvatico!"
	prompt
; 0x8075c

HookedPokemonAttackedText: ; 0x8075c
	text "@"
	text_from_ram EnemyMonNick
	text $55
	db "pescato attacca!"
	prompt
; 0x80778

PokemonFellFromTreeText: ; 0x80778
	text_from_ram EnemyMonNick
	text " é cadu-"
	line "to dall'albero!"
	prompt
; 0x80793

WildCelebiAppearedText: ; 0x80793
	text "Appare @"
	text_from_ram EnemyMonNick
	text ""
	line "selvatico!"
	prompt
; 0x807a9

WantsToBattleText:: ; 0x807a9
	text $3f
	line "vuole lottare!"
	prompt
; 0x807bd

BattleText_0x807bd: ; 0x807bd
	text "@"
	text_from_ram EnemyMonNick
	text ""
	line "selvatico fugge!"
	prompt
; 0x807cf

BattleText_0x807cf: ; 0x807cf
	text "@"
	text_from_ram EnemyMonNick
	text ""
	line "selvatico fugge!"
	prompt
; 0x807e2

HurtByPoisonText: ; 0x807e2
	text $5a, " é"
	line "avvelenato!"
	prompt
; 0x807f8

HurtByBurnText: ; 0x807f8
	text $5a, " é"
	line "scottato!"
	prompt
; 0x8080e

LeechSeedSapsText: ; 0x8080e
	text "Parassiseme sot-"
	line "trae energia da"
	cont $5a, "!"
	prompt
; 0x80822

HasANightmareText: ; 0x80822
	text $5a
	line "ha un incubo!"
	prompt
; 0x80836

HurtByCurseText: ; 0x80836
	text $5a, "é colpito"
	line "dalla maledizione!"
	prompt
; 0x8084d

SandstormHitsText: ; 0x8084d
	text "La tempesta di"
	line "sabbia infligge"
	cont "danni a"
	cont $5a, "!"
	prompt
; 0x80864

PerishCountText: ; 0x80864
	text "A ", $5a
	line "restano @"
	deciram wd265, $11
	text " turni!"
	prompt
; 0x80880

BattleText_0x80880: ; 0x80880
	text $59
	line "recupera con"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x80899

BattleText_0x80899: ; 0x80899
	text $5a
	line "recupera PP con"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x808b6

BattleText_0x808b6: ; 0x808b6
	text $59
	line "é stato colpito da"
	cont "Divinazione!"
	prompt
; 0x808d2

BattleText_0x808d2: ; 0x808d2
	text "La Salvaguardia"
	line "é ceduta!"
	prompt
; 0x808e7

BattleText_0x808e7: ; 0x808e7
	text "Lo Schermoluce"
	line "é ceduto!"
	prompt
; 0x80905

BattleText_PkmnReflectFaded: ; 0x80905
	text "Il Riflesso é"
	line "ceduto!"
	prompt
; 0x8091f

BattleText_0x8091f: ; 0x8091f
	text "Continua a"
	line "piovere."
	prompt
; 0x80938

BattleText_0x80938: ; 0x80938
	text "La luce solare"
	line "é intensa!"
	prompt
; 0x80951

BattleText_0x80951: ; 0x80951
	text "La tempesta di"
	line "sabbia imperversa."
	prompt
; 0x80967

BattleText_0x80967: ; 0x80967
	text "Smette di piovere."
	prompt
; 0x8097a

BattleText_0x8097a: ; 0x8097a
	text "La luce solare"
	line "torna normale."
	prompt
; 0x8098f

BattleText_0x8098f: ; 0x8098f
	text "La tempesta di"
	line "sabbia cessa."
	prompt
; 0x809a8

BattleText_0x809a8: ; 0x809a8
    text "@"
	text_from_ram EnemyMonNick
	text ""
	line "é esausto!"
	prompt
; 0x809be

BattleText_0x809be: ; 0x809be
	text $52, " vince"
	line "¥@"
	deciram wc686, $36
	text "!"
	prompt
; 0x809da

BattleText_0x809da: ; 0x809da
	text "Hai sconfitto"
	line $3f, "!"
	prompt
; 0x809eb

TiedAgainstText: ; 0x809eb
	text "Hai pareggiato con"
	line $3f, "!"
	prompt
; 0x809fc

BattleText_0x809fc: ; 0x809fc
	text $52, " vince"
	deciram wc686, $36
	text "¥@"
	line "!"
	line "Ne mandi un po'"
	cont "alla mamma!"
	prompt
; 0x80a2a

BattleText_0x80a2a: ; 0x80a2a
	text "Ne mandi metà alla"
	line "mamma!"
	prompt
; 0x80a3d

BattleText_0x80a3d: ; 0x80a3d
	text "Mandi tutto alla"
	line "mamma!"
	prompt
; 0x80a4f

BattleText_0x80a4f: ; 0x80a4f
	text $53, ": Eh?"
	line "Avrei dovuto sce-"
	cont "gliere il tuo"
	cont "#mon!"
	prompt
; 0x80a75

BattleText_0x80a75: ; 0x80a75
	text_from_ram BattleMonNick
	text ""
	line "é esausto!"
	prompt
; 0x80a83

BattleText_0x80a83: ; 0x80a83
	text "Vuoi usare un"
    line "altro #mon?"
	done
; 0x80a93

BattleText_0x80a93: ; 0x80a93
	text $53, ": Sì!"
	line "Credo di aver"
	cont "scelto un buon"
	cont "#mon!"
	prompt
; 0x80ab9

LostAgainstText: ; 0x80ab9
	text "Hai perso contro"
	line $3f, "!"
	prompt
; 0x80aca

BattleText_0x80aca: ; 0x80aca
	text $3f
	line "vuole usare"
	cont "@"
	text_from_ram EnemyMonNick
	text "."

	para "Vuoi cambiare"
	line "#mon?"
	done
; 0x80af8

BattleText_0x80af8: ; 0x80af8
	text $3f
	line "manda @"
	text_from_ram EnemyMonNick
	text "!"
	done
; 0x80b0b

BattleText_0x80b0b: ; 0x80b0b
	text "È troppo stanco"
	line "per combattere!"
	prompt
; 0x80b26

BattleText_0x80b26: ; 0x80b26
	text "Un uovo non può"
	line "combattere!"
	prompt
; 0x80b3b

BattleText_0x80b3b: ; 0x80b3b
	text "Non si scappa!"
	prompt
; 0x80b49

BattleText_0x80b49: ; 0x80b49
	text "No! Non puoi"
	line "scappare da una"
	cont "lotta contro un"
	cont "allenatore!"
	prompt
; 0x80b77

BattleText_0x80b77: ; 0x80b77
	text "Scampato pericolo!"
	prompt
; 0x80b89

BattleText_0x80b89: ; 0x80b89
	text $5a
	line "scappa usando una"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80ba0

BattleText_0x80ba0: ; 0x80ba0
	text "Non si scappa!"
	prompt
; 0x80bae

BattleText_0x80bae: ; 0x80bae
	text $5a, " é"
	line "ferito dalle"
	cont "punte!"
	prompt
; 0x80bc2

RecoveredUsingText: ; 0x80bc2
	text $59
	line "recupera PS usando"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80bde

BattleText_0x80bde: ; 0x80bde
	text "@"
	text_from_ram StringBuffer1
	text "di ", $5a
	text $55
	db "si attiva!"
	prompt
; 0x80bf3

BattleText_0x80bf3: ; 0x80bf3
	text "Non puoi usare"
	line "strumenti qui."
	prompt
; 0x80c0d

BattleText_0x80c0d: ; 0x80c0d
	text_from_ram BattleMonNick
	text ""
	line "é già in campo."
	prompt
; 0x80c22

BattleText_0x80c22: ; 0x80c22
	text_from_ram BattleMonNick
	text ""
	line "non può essere"
	cont "sostituito!"
	prompt
; 0x80c39

BattleText_0x80c39: ; 0x80c39
	text "Non ci sono PP"
	line "rimanenti!"
	prompt
; 0x80c5b

BattleText_0x80c5b: ; 0x80c5b
	text "La mossa é stata"
	line "bloccata!"
	prompt
; 0x80c72

BattleText_0x80c72: ; 0x80c72
	text_from_ram BattleMonNick
	text ""
	line "non può attaccare!"
	done
; 0x80c8a

BattleText_0x80c8a: ; 0x80c8a
	text "Finisce l'effetto"
	line "di Ripeti!"
	prompt
; 0x80c9c

BattleText_0x80c9c: ; 0x80c9c
	text_from_ram StringBuffer1
	text " sale al"
	line "livello @"
	deciram CurPartyLevel, $13
	text "!@"
	sound0
	db "@"
; 0x80cb9

BattleText_0x80cb9: ; 0x80cb9
	db "@"
; 0x80cba

BattleText_0x80cba: ; 0x80cba
	text "@"
	line "selvatico"
	text_from_ram EnemyMonNick
	text ""
	line "sta mangiando!"
	prompt
; 0x80cd1

BattleText_0x80cd1: ; 0x80cd1
	text "@"
	line "selvatico"
	text_from_ram EnemyMonNick
	text ""
	line "é arrabbiato!"
	prompt
; 0x80ce7

FastAsleepText: ; 0x80ce7
	text $5a, ""
	line "dorme!"
	prompt
; 0x80cfa

WokeUpText: ; 0x80cfa
	text $5a
	line "si sveglia!"
	prompt
; 0x80d06

FrozenSolidText: ; 0x80d06
	text $5a
	line "é congelato!"
	prompt
; 0x80d1a

FlinchedText: ; 0x80d1a
	text $5a
	line "tentenna!"
	prompt
; 0x80d27

MustRechargeText: ; 0x80d27
	text $5a
	line "deve ricaricarsi!"
	prompt
; 0x80d39

DisabledNoMoreText: ; 0x80d39
	text "La mossa di"
	line $5a, " non"
	cont "é più bloccata!"
	prompt
; 0x80d4f

IsConfusedText: ; 0x80d4f
	text $5a
	line "é confuso!"
	prompt
; 0x80d5f

HurtItselfText: ; 0x80d5f
	text "È così confuso da"
	line "colpirsi da solo!"
	prompt
; 0x80d81

ConfusedNoMoreText: ; 0x80d81
	text $5a, " non"
	line "é più confuso!"
	prompt
; 0x80d97

BecameConfusedText: ; 0x80d97
	text $59, ""
	line "é confuso!"
	prompt
; 0x80dab
FatigueConfusedText: ; 0x80d97
	text $5a
	line "si confonde per"
	cont "la fatica!"
	prompt
; 0x80dab


BattleText_0x80dab: ; 0x80dab
	text "@"
	text_from_ram StringBuffer1
	text $59, ""
	line "non é più"
	cont "confuso."
	prompt
; 0x80dcc

AlreadyConfusedText: ; 0x80dcc
	text $59, ""
	line "é già confuso!"
	prompt
; 0x80de2

BattleText_0x80de2: ; 0x80de2
	text $5a, " é"
	line "ferito da"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80df5

BattleText_0x80df5: ; 0x80df5
	text $5a
	line "was released from"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80e11

UsedBindText: ; 0x80e11
	text $5a
	line "usa Pazienza su"
	cont $59, "!"
	prompt
; 0x80e24

WhirlpoolTrapText: ; 0x80e24
	text $59, ""
	line "é intrappolato!"
	prompt
; 0x80e34

FireSpinTrapText: ; 0x80e34
	text $59, ""
	line "é intrappolato!"
	prompt
; 0x80e44

WrappedByText: ; 0x80e44
	text $59, ""
	line "é stritolato da"
	cont $5a, "!"
	prompt
; 0x80e59

ClampedByText: ; 0x80e59
	text $59, ""
	line "was CLAMPED by"
	cont $5a, "!"
	prompt
; 0x80e6e

StoringEnergyText: ; 0x80e6e
	text $5a
	line "is storing energy!"
	prompt
; 0x80e84

UnleashedEnergyText: ; 0x80e84
	text $5a
	line "unleashed energy!"
	prompt
; 0x80e99

HungOnText: ; 0x80e99
	text $59, ""
	line "hung on with"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x80eb0

EnduredText: ; 0x80eb0
	text $59, ""
	line "resiste al colpo!"
	prompt
; 0x80ec4

InLoveWithText: ; 0x80ec4
	text $5a
	line "é innamorato di"
	cont $59, "!"
	prompt
; 0x80eda

InfatuationText: ; 0x80eda
	text "L'innamoramento"
	line "impedisce a"
	cont $5a, " di"
	cont "attaccare!"
	prompt
; 0x80f02

DisabledMoveText: ; 0x80f02
	text "@"
	text_from_ram StringBuffer1
	text " di"
	line $5a
	cont "é bloccata!"
	prompt
; 0x80f19

LoafingAroundText: ; 0x80f19
	text_from_ram BattleMonNick
	text " sta"
	line "poltrendo!"
	prompt
; 0x80f31

BeganToNapText: ; 0x80f31
	text_from_ram BattleMonNick
	text ""
	line "schiaccia"
	cont "un pisolino!"
	prompt
; 0x80f44

WontObeyText: ; 0x80f44
	text_from_ram BattleMonNick
	text " non"
	line "obbedisce!"
	prompt
; 0x80f54

TurnedAwayText: ; 0x80f54
	text_from_ram BattleMonNick
	text " si gira"
	line "di lato!"
	prompt
; 0x80f66

IgnoredOrdersText: ; 0x80f66
	text_from_ram BattleMonNick
	text " ignora"
	line "gli ordini!"
	prompt
; 0x80f7b

IgnoredSleepingText: ; 0x80f7b
	text_from_ram BattleMonNick
	text " ignora"
	line "gli ordini<...>"
	cont "e si mette a"
	cont "dormire!"
	prompt
; 0x80f99

NoPPLeftText: ; 0x80f99
	text "Ma non ci sono"
	line "PP sufficienti!"
	prompt
; 0x80fba

HasNoPPLeftText: ; 0x80fba
	text $5a
	line "non ha PP suffi-"
	cont "cienti per"
	cont "@"
	text_from_ram StringBuffer2
	text "!"
	prompt
; 0x80fd7

WentToSleepText: ; 0x80fd7
	text $5a, " s'é"
	line "addormentato!"
	done
; 0x80fe9

RestedText: ; 0x80fe9
	text $5a
	line "si mette a dormi-"
	cont "re!"
	done
; 0x8100c

RegainedHealthText: ; 0x8100c
	text $5a
	line "s'é ripreso!"
	prompt
; 0x81020

AttackMissedText: ; 0x81020
	text $5a
	line "fallisce!"
	prompt
; 0x81033

AttackMissed2Text: ; 0x81033
	text $5a
	line "fallisce!"
	prompt
; 0x81046

CrashedText: ; 0x81046
	text $5a
	line "fallisce e si"
	cont "schianta al suolo!"
	prompt
; 0x81061

UnaffectedText: ; 0x81061
	text "Non ha effetto su"
	line $59, "!"
	prompt
; 0x81071

DoesntAffectText: ; 0x81071
	text "Non ha effetto su"
	line $59, "!"
	prompt
; 0x81086

CriticalHitText: ; 0x81086
	text "Brutto colpo!"
	prompt
; 0x81097

OneHitKOText: ; 0x81097
	text "È un KO!"
	prompt
; 0x810aa

SuperEffectiveText: ; 0x810aa
	text "È superefficace!"
	prompt
; 0x810c1

NotVeryEffectiveText: ; 0x810c1
	text "Non é molto"
	line "efficace<...>"
	prompt
; 0x810da

TookDownWithItText: ; 0x810da
	text $59, ""
	line "porta con sé"
	cont $5a, "!"
	prompt
; 0x810f3

RageBuildingText: ; 0x810f3
	text "L'ira di"
	line $5a, " cresce!"
	prompt
; 0x81109

GotAnEncoreText: ; 0x81109
	text $59, ""
	line "é colpito da" 
	cont "Ripeti!"
	prompt
; 0x8111b

SharedPainText: ; 0x8111b
	text "I #mon dividono"
	line "i propri PS in"
	cont "parti uguali!"
	prompt
; 0x81136

TookAimText: ; 0x81136
	text $5a
	line "took aim!"
	prompt
; 0x81143

SketchedText: ; 0x81143
	text $5a
	line "copia"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x81156

DestinyBondEffectText: ; 0x81156
	text $5a, ""
	line "sta provando a"
	cont "portare con sé"
	cont "il suo nemico!"
	prompt
; 0x8117f

SpiteEffectText: ; 0x8117f
	text "@"
	text_from_ram StringBuffer1
	text "di ", $59
	cont "scende di @"
	deciram wd265, $11
	text "!"
	prompt
; 0x811a0

BellChimedText: ; 0x811a0
	text "Ha suonato una"
	line "campana!"
	prompt
; 0x811b1

FellAsleepText: ; 0x811b1
	text $59, ""
	line "s'é addormentato!"
	prompt
; 0x811c1

AlreadyAsleepText: ; 0x811c1
	text $59, ""
	line "sta già dormendo!"
	prompt
; 0x811d5
UserAlreadyAsleepText:
	text $5a, " sta"
	line "già dormendo!"
	prompt

WasPoisonedText: ; 0x811d5
	text $59, ""
	line "viene avvelenato!"
	prompt
; 0x811e6

BadlyPoisonedText: ; 0x811e6
	text $59, ""
	line "é stato intossi-"
	cont "cato!"
	prompt
; 0x811fa

AlreadyPoisonedText: ; 0x811fa
	text $59, ""
	line "é già avvelenato!"
	prompt
; 0x81210

SuckedHealthText: ; 0x81210
	text "Assorbe la salute"
	line "da ", $59, "!"
	prompt
; 0x81227

DreamEatenText: ; 0x81227
	text "Il sogno di"
	line $59
	cont "é stato mangiato!"
	prompt
; 0x8123c

WasBurnedText: ; 0x8123c
	text $59
	line "é scottato!"
	prompt
; 0x8124b

AlreadyBurnedText:
	text $59
	line "é già scottato!"
	prompt

DefrostedOpponentText: ; 0x8124b
	text $59
	line "si scongela!"
	prompt
; 0x8125d

WasFrozenText: ; 0x8125d
	text $59
	line "si congela!"
	prompt
; 0x81272

WontRiseAnymoreText: ; 0x81272
	text "La statistica"
	line "@"
	text_from_ram StringBuffer2
	text " non può"
	cont "più aumentare!"
	prompt
; 0x8128f

WontDropAnymoreText: ; 0x8128f
	text "La statistica"
	line "@"
	text_from_ram StringBuffer2
	text " non può"
	cont "più ridursi!"
	prompt
; 0x812ac

FledFromBattleText:: ; 0x812ac
	text $5a
	line "scappa!"
	prompt
; 0x812c1

FledInFearText: ; 0x812c1
	text $59
	line "scappa per la"
	cont "paura!"
	prompt
; 0x812d2

BlownAwayText: ; 0x812d2
	text $59
	line "é stato tirato"
	cont "via!"
	prompt
; 0x812e5

PlayerHitTimesText: ; 0x812e5
	text "Attacca @"
	deciram PlayerDamageTaken, $11
	text " volte!"
	prompt
; 0x812f8

EnemyHitTimesText: ; 0x812f8
	text "Attacca @"
	deciram EnemyDamageTaken, $11
	text " volte!"
	prompt
; 0x8130b

MistText: ; 0x8130b
	text $5a, " é"
	line "avvolto nella"
	cont "nebbia!"
	prompt
; 0x81321

ProtectedByMistText: ; 0x81321
	text $59
	line "é protetto dalla"
	cont "nebbia."
	prompt
; 0x81338

GettingPumpedText: ; 0x81338
	interpret_data
	text $5a, " si"
	line "concentra!"
	prompt
; 0x8134d

RecoilText: ; 0x8134d
	text $5a
	line "subisce il"
	cont "contraccolpo!"
	prompt
; 0x81362

MadeSubstituteText: ; 0x81362
	text $5a
	line "crea un sostituto!"
	prompt
; 0x81378

HasSubstituteText: ; 0x81378
	text $5a
	line "ha un sostituto!"
	prompt
; 0x8138d

TooWeakSubText: ; 0x8138d
	text "Troppa poca salute"
	line "per creare un"
	cont "sostituto!"
	prompt
; 0x813ad

SubTookDamageText: ; 0x813ad
	text "Il sostituto ha"
	line "preso i danni al"
	cont "posto di"
	cont $59, "!"
	prompt
; 0x813d0

SubFadedText: ; 0x813d0
	text "Il sostituto di"
	line $59
	cont "svanisce!"
	prompt
; 0x813e6

LearnedMoveText: ; 0x813e6
	text $5a
	line "impara"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x813f8

WasSeededText: ; 0x813f8
	text $59
	line "é pieno di semi!"
	prompt
; 0x81407

EvadedText: ; 0x81407
	text $59
	line "evita l'attacco!"
	prompt
; 0x8141d
	
WasDisabledText: ; 0x8141d
	text "@"
	text_from_ram StringBuffer1
	text " di"
	line $59
	cont "viene bloccata!"
	prompt
; 0x81435

CoinsScatteredText: ; 0x81435
	text "Ci sono monete"
	line "sparse ovunque!"
	prompt
; 0x81452

TransformedTypeText: ; 0x81452
	text $5a
	line "si trasforma in"
	cont "tipo @"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x81476

EliminatedStatsText: ; 0x81476
	text "Tutti i cambiamen-"
	line "ti di statistica"
	cont "sono stati annul-"
	cont "lati!"
	prompt
; 0x81499

TransformedText: ; 0x81499
	text $5a
	line "si trasforma in"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x814b4

LightScreenEffectText: ; 0x814b4
	text "La Dif. Sp. della"
	line "squadra aumenta!"
	prompt
; 0x814c7

ReflectEffectText: ; 0x814c7
	text "La Difesa della"
	line "squadra aumenta!"
	prompt
; 0x814d9

NothingHappenedText: ; 0x814d9
	text "Ma non succede"
	line "nulla."
	prompt
; 0x814f0

ButItFailedText: ; 0x814f0
	text "Ma fallisce!"
	prompt
; 0x81500

ItFailedText: ; 0x81500
	text "Fallisce!"
	prompt
; 0x8150c

DidntAffect1Text: ; 0x8150c
	text "Non ha effetto su"
	line $59, "!"
	prompt
; 0x81520

DidntAffect2Text: ; 0x81520
	text "Non ha effetto su"
	line $59, "!"
	prompt
; 0x81534

HPIsFullText: ; 0x81534
	text $5a, " "
	line "recupera tutti"
	cont "i PS!"
	prompt
; 0x81544

DraggedOutText: ; 0x81544
	text $5a, " entra"
	line "in campo!"
	prompt
; 0x81558

ParalyzedText: ; 0x81558
	text $59
	line "é paralizzato!"
	cont "Potrebbe non riu-"
	cont "scire ad attacca-"
	cont "re!"
	prompt
; 0x8157d

FullyParalyzedText: ; 0x8157d
	text $5a, " é"
	line "paralizzato!"
	prompt
; 0x81592

AlreadyParalyzedText: ; 0x81592
	text $59
	line "é già paralizzato!"
	prompt
; 0x815a9

ProtectedByText: ; 0x815a9
	text $59
	line "é protetto da"
	cont "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 0x815c1

MirrorMoveFailedText: ; 0x815c1
	text "Ma ", $4e
	line "fallisce!"
	prompt
; 0x815da

StoleText: ; 0x815da
	text $5a
	line "ruba @"
	text_from_ram StringBuffer1
	text $55
	db "all'avversario!"
	prompt
; 0x815f7

CantEscapeNowText: ; 0x815f7
	text $59
	line "non può scappare!"
	prompt
; 0x8160b

StartedNightmareText: ; 0x8160b
	text $59
	line "ha iniziato ad"
	cont "avere un incubo!"
	prompt
; 0x8162b

WasDefrostedText: ; 0x8162b
	text $5a, "si"
	line "scongela!"
	prompt
; 0x8163d

PutACurseText: ; 0x8163d
	text $5a
	line "dimezza i propri"
	cont "PS e infligge una"

	para "maledizione su"
	line $59, "!"
	prompt
; 0x81665

ProtectedItselfText: ; 0x81665
	text $5a, " si"
	line "protegge!"
	prompt
; 0x8167a

ProtectingItselfText: ; 0x8167a
	text $59
	line "si protegge!"
	done
; 0x81691

SpikesText: ; 0x81691
	text $59
	line "é pieno di punte!"
	prompt

; 0x816b1

IdentifiedText: ; 0x816b1
	text $5a
	line "prevede un"
	cont "attacco!"
	prompt
; 0x816c2

StartPerishText: ; 0x816c2
	text "Entrambi i #mon"
	line "perderanno in 3"
	cont "turni!"
	prompt
; 0x816e4

SandstormBrewedText: ; 0x816e4
	text "Arriva una tempe-"
	line "sta di sabbia!"
	prompt
; 0x816f9

BracedItselfText: ; 0x816f9
	text $5a
	line "si rinvigorisce!"
	prompt
; 0x8170b

FellInLoveText: ; 0x8170b
	text $59
	line "si innamora!"
	prompt
; 0x8171c

CoveredByVeilText: ; 0x8171c
	text "La tua squadra é"
	line "coperta da un"
	cont "velo mistico!"
	prompt
; 0x81733

SafeguardProtectText: ; 0x81733
	text "La tua squadra é"
	line "protetta dalla"
	cont "Salvaguardia!"
	prompt
; 0x81751

MagnitudeText: ; 0x81751
	text "Magnitudo @"
	deciram wd265, $11
	text "!"
	prompt
; 0x81764

ReleasedByText: ; 0x81764
	text $5a
	line "si libera da"
	cont $59, "!"
	prompt
; 0x8177a

ShedLeechSeedText: ; 0x8177a
	text $5a
	line "si libera dai"
    cont "semi!"
	prompt
; 0x8178e

BlewSpikesText: ; 0x8178e
	text $5a
	line "ha tolto via le"
	cont "punte dal campo!"
	prompt
; 0x817a3

DownpourText: ; 0x817a3
	text "Inizia a piovere!"
	prompt
; 0x817b8

SunGotBrightText: ; 0x817b8
	text "La luce solare"
	line "é fortissima!"
	prompt
; 0x817d2

BellyDrumText: ; 0x817d2
	text $5a
	line "dimezza i propri"
	cont "PS per massimizza-"
	cont "re il proprio"
	cont "attacco!"
	prompt
; 0x817f6

CopiedStatsText: ; 0x817f6
	text $5a
	line "ha copiato le"

	para "modifiche delle"
	line "statistiche di"
	cont $59, "!"
	prompt
; 0x81817

ForesawAttackText: ; 0x81817
	text $5a
	line "prevede un"
	cont "attacco!"
	prompt
; 0x8182d

BeatUpAttackText: ; 0x8182d
	text_from_ram StringBuffer1
	text " attacca!"
	done
; 0x8183b

RefusedGiftText: ; 0x8183b
	text $59
	line "rifiuta lo"
	cont "strumento!"
	prompt
; 0x81850

IgnoredOrders2Text: ; 0x81850
	text $5a
	line "ignora gli ordini!"
	prompt
; 0x81863

BattleText_0x81863: ; 0x81863
	text "Errore di"
	line "collegamento<...>"

	para "La lotta é stata"
	line "annullata<...>"
	prompt
; 0x8188e

BattleText_0x8188e: ; 0x8188e
	text "È scaduto il tempo"
	line "per oggi!"
	done
; 0x818ac
