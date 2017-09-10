UnknownText_0x1c0000: ; 1c0000
	text "Oh, nessuna foto?"
	line "Torna un'altra"
	cont "volta, ok?"
	done
; 1c0021

UnknownText_0x1c0021: ; 1c0021
	text "Un uovo? Il mio"
	line "talento vale di"
	cont "più<...>"
	done
; 1c0043

UnknownText_0x1c0043: ; 1c0043
	text "Ehi, salve! Io"
	line "sono il Giudice"
	cont "Onomastico!"

	para "Valuto i nomi"
	line "dei #mon."

	para "Vuoi che valuti il"
	line "soprannome per"
	cont "quale #mon?"
	done
; 1c00a0

UnknownText_0x1c00a0: ; 1c00a0
	text "Vuoi che valuti il"
	line "soprannome per"
	cont "quale #mon?"
	prompt
; 1c00cd

UnknownText_0x1c00cd: ; 1c00cd
	text "Hm<...> @"
	text_from_ram StringBuffer1
	text "<...>"
	line "Non é male"

	para "Ma potrebbe avere"
	line "di meglio."

	para "Vuoi che gli dia"
	line "un nome più bello?"
	done
; 1c0142

UnknownText_0x1c0142: ; 1c0142
	text "Bene. Che nome"
	line "vogliamo dargli,"
	cont "dunque?"
	prompt
; 1c0171

UnknownText_0x1c0171: ; 1c0171
	text "È meglio di quello"
	line "di prima!"

	para "Ben fatto!"
	done
; 1c019e

UnknownText_0x1c019e: ; 1c019e
	text "OK, allora."
	line "Ritorna pure."
	done
; 1c01be

UnknownText_0x1c01be: ; 1c01be
	text "Hm<...> @"
	text_from_ram StringBuffer1
	text "?"
	line "Che bel nome!"
	cont "È perfetto."

	para "Tratta @"
	text_from_ram StringBuffer1
	text ""
	line "con amore."
	done
; 1c0208

UnknownText_0x1c0208: ; 1c0208
	text "Oh<...> È solo"
	line "un uovo."
	done
; 1c0222

UnknownText_0x1c0222: ; 1c0222
	text "Può sembrare lo"
	line "stesso di prima,"

	para "ma questo nuovo"
	line "nome é molto"
	cont "meglio!"

	para "Ben fatto!"
	done
; 1c0272

UnknownText_0x1c0272: ; 1c0272
	text "Bene. Ora questo"
	line "#mon si chiama"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c029c

UnknownText_0x1c029c: ; 1c029c
	text_from_ram StringBuffer1
	text " riceve@@"
; 1c02a9

UnknownText_0x1c02a9: ; 1c02a9
	text ""
	line "la bellezza di"
	cont "@"
	deciram StringBuffer2, $25 ; fixes 5-digit EXP glitch
	text " Punti ESP.!"
	prompt
; 1c02c9

UnknownText_0x1c02c9: ; 1c02c9
	text ""
	line "@"
	deciram StringBuffer2, $25 ; fixes 5-digit EXP glitch
	text " Punti ESP.!"
	prompt
; 1c02df

UnknownText_0x1c02df: ; 1c02df
	text "Vai, @@"
; 1c02e6

UnknownText_0x1c02e6: ; 1c02e6
	text "Vai, @@"
; 1c02f0

UnknownText_0x1c02f0: ; 1c02f0
	text "Ce la puoi fare,"
	line "@@"
; 1c02fe

UnknownText_0x1c02fe: ; 1c02fe
	text "Il nemico é"
	cont "debole!"
	line "Vai, @@"
; 1c0317

UnknownText_0x1c0317: ; 1c0317
	text_from_ram BattleMonNick
	text "!"
	done
; 1c031d

UnknownText_0x1c031d: ; 1c031d
	text_from_ram BattleMonNick
	text ",@@"
; 1c0324

UnknownText_0x1c0324: ; 1c0324
	text " può"
	line "bastare! Torna!@@"
; 1c0340

UnknownText_0x1c0340: ; 1c0340
	text " OK!"
	line "Torna!@@"
; 1c0352

UnknownText_0x1c0352: ; 1c0352
	text " bene!"
	line "Torna!@@"
; 1c0366

UnknownText_0x1c0366: ; 1c0366
	text " torna!"
	done
; 1c0373

UnknownText_0x1c0373: ; 1c0373
	text "Estratta un'MT."
	prompt
; 1c0384

UnknownText_0x1c0384: ; 1c0384
	text "Estratta una MN."
	prompt
; 1c0396

UnknownText_0x1c0396: ; 1c0396
	text "Contiene"
	line "@"
	text_from_ram StringBuffer2
	text "."

	para "Vuoi insegnare"
	line "@"
	text_from_ram StringBuffer2
	text ""
	cont "ad un #mon?"
	done
; 1c03c2

UnknownText_0x1c03c2: ; 1c03c2
	text_from_ram StringBuffer2
	text " non"
	line "é compatibile con"
	cont "@"
	text_from_ram StringBuffer1
	text "."

	para "Non può imparare"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c03fa

UnknownText_0x1c03fa: ; 1c03fa
	text "Non c'é spazio"
	line "per ulteriori"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0421

UnknownText_0x1c0421: ; 1c0421
	text "Ricevi"
	line "@"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 1c0436

UnknownText_0x1c0436: ; 1c0436
	text "Il collegamento é"
	line "stato annullato."
	prompt
; 1c0454

UnknownText_0x1c0454: ; 1c0454
	text "Errore di"
	line "comunicazione."
	prompt
; 1c046a

UnknownText_0x1c046a: ; 1c046a
	text "Devi ritirare il"
	line "dono al Centro"
	cont "#mon."
	prompt
; 1c048e

UnknownText_0x1c048e: ; 1c048e
	text "Il tuo amico non"
	line "é pronto."
	prompt
; 1c04a7

UnknownText_0x1c04a7: ; 1c04a7
	text "Spiacente--solo 5"
	line "doni al giorno."
	prompt
; 1c04c6

UnknownText_0x1c04c6: ; 1c04c6
	text "Spiacente. Solo 1"
	line "dono al giorno"
	cont "a persona."
	prompt
; 1c04e9

UnknownText_0x1c04e9: ; 1c04e9
	text_from_ram wc903
	text " invia"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c04fa

UnknownText_0x1c04fa: ; 1c04fa
	text_from_ram wc903
	text " invia"
	line "@"
	text_from_ram StringBuffer1
	text $55
	db "a casa"
	line "di @"
	text_from_ram wc950 + 3
	text "."
	prompt
; 1c051a

UnknownText_0x1c051a: ; 1c051a
	text "Ricevi la carta"
	line "di @"
	text_from_ram wc850
	text "."
	prompt
; 1c0531

UnknownText_0x1c0531: ; 1c0531
	text_from_ram wc850
	text "'s CARD was"
	line "listed as no.@"
	deciram wd265, $12
	text "."
	prompt
; 1c0555

UnknownText_0x1c0555: ; 1c0555
	text "The CARD was not"
	line "registered."
	prompt
; 1c0573

UnknownText_0x1c0573: ; 1c0573
	text "Il collegamento é"
	line "stato annullato."
	prompt
; 1c0591

UnknownText_0x1c0591: ; 1c0591
	text "Errore di"
	line "comunicazione."
	prompt
; 1c05a7

_BadgeRequiredText: ; 1c05a7
	text "Ops! Ti serve la"
	line "medaglia adatta!"
	prompt
; 1c05c8

UnknownText_0x1c05c8: ; 1c05c8
	text "Non puoi usare"
	line "questa mossa qui."
	prompt
; 1c05dd

UnknownText_0x1c05dd: ; 1c05dd
	text_from_ram StringBuffer2
	text " usa"
	line "Taglio!"
	prompt
; 1c05ec

UnknownText_0x1c05ec: ; 1c05ec
	text "Non c'é nulla"
	line "da tagliare qui."
	prompt
; 1c0609

UnknownText_0x1c0609: ; 1c0609
	text "Un forte bagliore"
	line "illumina l'area!@"
	text_waitsfx
	db "@"
; 1c062e

UnknownText_0x1c062e: ; 1c062e
	db "@"
; 1c062f

_UsedSurfText: ; 1c062f
	text_from_ram StringBuffer2
	text " usa"
	line "Surf!"
	done
; 1c063f

_CantSurfText: ; 1c063f
	text "Non puoi usare"
	line "Surf qui."
	prompt
; 1c0654

_AlreadySurfingText: ; 1c0654
	text "Sei già"
	line "in mare."
	prompt
; 1c066c

_AskSurfText: ; 1c066c
	text "L'acqua ha un"
	line "colore azzurro"
	cont "marino<...>"
	cont "Vuoi usare Surf?"
	done
; 1c068e

UnknownText_0x1c068e: ; 1c068e
	text_from_ram StringBuffer2
	text " usa"
	line "Cascata!"
	done
; 1c06a3

UnknownText_0x1c06a3: ; 1c06a3
	text "Wow, questa casca-"
	line "ta é enorme."
	done
; 1c06bf

UnknownText_0x1c06bf: ; 1c06bf
	text "Vuoi usare"
	line "Cascata?"
	done
; 1c06de

UnknownText_0x1c06de: ; 1c06de
	text_from_ram StringBuffer2
	text " usa"
	line "Fossa!"
	done
; 1c06ed

UnknownText_0x1c06ed: ; 1c06ed
	text "<PLAYER> usa una"
	line "Fune di fuga."
	done
; 1c0705

UnknownText_0x1c0705: ; 1c0705
	text "Non puoi usarla"
	line "qui."
	done
; 1c071a

UnknownText_0x1c071a: ; 1c071a
	text "Ritorni all'ultimo"
	line "Centro #mon"
	cont "visitato."
	done
; 1c073b

UnknownText_0x1c073b: ; 1c073b
	text "Non puoi usarla"
	line "qui.", $51
	db $57
; 1c0751

UnknownText_0x1c0751: ; 1c0751
	text "Un #mon sta già"
	line "esercitando forza."
	prompt
; 1c0774

UnknownText_0x1c0774: ; 1c0774
	text_from_ram StringBuffer2
	text " usa"
	line "Forza!"
	done
; 1c0788

UnknownText_0x1c0788: ; 1c0788
	text_from_ram StringBuffer1
	text " può"
	line "spostare i massi."
	prompt
; 1c07a0

UnknownText_0x1c07a0: ; 1c07a0
	text "Forse un #mon"
	line "potrebbe spostare"
	cont "questo masso."

	para "Vuoi usare"
	line "Forza?"
	done
; 1c07d8

UnknownText_0x1c07d8: ; 1c07d8
	text "Ora puoi spostare"
	line "i massi!"
	done
; 1c07f4

UnknownText_0x1c07f4: ; 1c07f4
	text "Forse un #mon"
	line "potrebbe spostare"
	cont "questo masso."
	done
; 1c0816

UnknownText_0x1c0816: ; 1c0816
	text_from_ram StringBuffer2
	text " usa"
	line "Mulinello!"
	prompt
; 1c082b

UnknownText_0x1c082b: ; 1c082b
	text "È un brutto"
	line "mulinello!"

	para "Magari un #mon"
	line "sarebbe capace di"
	cont "attraversarlo."
	done
; 1c0864

UnknownText_0x1c0864: ; 1c0864
	text "Un mulinello"
	line "blocca la strada."

	para "Vuoi usare"
	line "Mulinello?"
	done
; 1c0897

UnknownText_0x1c0897: ; 1c0897
	text_from_ram StringBuffer2
	text " usa"
	line "Bottintesta!"
	prompt
; 1c08ac

UnknownText_0x1c08ac: ; 1c08ac
	text "Non succede"
	line "nulla<...>"
	done
; 1c08bc

UnknownText_0x1c08bc: ; 1c08bc
	text "Potrebbe esserci"
	line "un #mon in"
	cont "questo albero."

	para "Vuoi usare"
	line "Bottintesta?"
	done
; 1c08f0

UnknownText_0x1c08f0: ; 1c08f0
	text_from_ram StringBuffer2
	text " usa"
	line "Spaccaroccia!"
	prompt
; 1c0906

UnknownText_0x1c0906: ; 1c0906
	text "Forse un #mon"
	line "potrebbe frantu-"
	cont "marla."
	done
; 1c0924

UnknownText_0x1c0924: ; 1c0924
	text "Questa roccia può"
	line "essere frantumata."

	para "Vuoi usare"
	line "Spaccaroccia?"
	done
; 1c0958

UnknownText_0x1c0958: ; 1c0958
	text "Oh!"
	line "Ha abboccato!"
	prompt
; 1c0965

UnknownText_0x1c0965: ; 1c0965
	text "Nemmeno una"
	line "vecchia ciabatta<...>"
	prompt
; 1c0979

UnknownText_0x1c0979: ; 1c0979
	text "Pare non ci sia"
	line "nulla qui."
	prompt
; 1c099a

UnknownText_0x1c099a: ; 1c099a
	text "Non puoi scendere"
	line "qui!"
	done
; 1c09b2

UnknownText_0x1c09b2: ; 1c09b2
	text "<PLAYER> sale sulla"
	line "@"
	text_from_ram StringBuffer2
	text "."
	done
; 1c09c7

UnknownText_0x1c09c7: ; 1c09c7
	text "<PLAYER> scende"
	line "dalla @"
	text_from_ram StringBuffer2
	text "."
	done
; 1c09dd

UnknownText_0x1c09dd: ; 1c09dd
	text "Questo albero può"
	line "essere tagliato!"

	para "Vuoi usare Taglio?"
	done
; 1c0a05

UnknownText_0x1c0a05: ; 1c0a05
	text "Questo albero può"
	line "essere tagliato!"
	done
; 1c0a1c

UnknownText_0x1c0a1c: ; 1c0a1c
	text "<PLAYER> trova"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

MultipleGetItemBallText::
	text $52, " trova"
	line "@"
	deciram wd10c, $13
	text " @"
	text_from_ram StringBuffer3
	text "."
	done
; 1c0a2c

UnknownText_0x1c0a2c: ; 1c0a2c
	text "Ma non hai più"
	line "spazio nello"
	cont "zaino."
	done
; 1c0a4e

UnknownText_0x1c0a4e: ; 1c0a4e
	text "<PLAYER> non ha"
	line "più #mon dispo-"
	cont "nibili!"

	para "<PLAYER> ha"
	line "perso!"
	done
; 1c0a77

UnknownText_0x1c0a4e_2: ; 1c0a4e
	text "<PLAYER> non ha"
	line "più #mon dispo-"
	cont "nibili!"

	para "<PLAYER> scappa"
	line "via e perde"
	cont "¥@"
	deciram $ffc3, $35
	text "<...>"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "<PLAYER> ha"
	line "perso!"
	done

UnknownText_0x1c0a4e_3: ; 1c0a4e
	text "<PLAYER> non ha"
	line "più #mon dispo-"
	cont "nibili!"

	para "<PLAYER> paga"
	line "¥@"
	deciram $ffc3, $35
	text " al"
	cont "vincitore<...>"

	para $56, " ", $56, " ", $56
	line $56, " ", $56, " ", $56

	para "<PLAYER> ha"
	line "perso!"
	done
; 1c0a77

UnknownText_0x1c0a77: ; 1c0a77
	text "Sì! Il detector"
	line "dice che c'é uno"
	cont "strumento nei"
	cont "paraggi."
	prompt
; 1c0aa9

UnknownText_0x1c0aa9: ; 1c0aa9
	text "Niente! Il detec-"
	line "tor non reagisce."
	prompt
; 1c0acc

UnknownText_0x1c0acc: ; 1c0acc
	text_from_ram StringBuffer3
	text ""
	line "é sopravvissuto"
	cont "al veleno!"
	prompt
; 1c0ada

; UnknownText_0x1c0ada: ; 1c0ada
	; text "<PLAYER> is out of"
	; line "useable #mon!"

	; para "<PLAYER> whited"
	; line "out!"
	; prompt
; ; 1c0b03

UnknownText_0x1c0b03: ; 1c0b03
	text_from_ram StringBuffer3
	text " usa"
	line "Profumino!"
	done
; 1c0b1a

UnknownText_0x1c0b1a: ; 1c0b1a
	text "Pare non ci sia"
	line "nulla qui<...>"
	done
; 1c0b3b

UnknownText_0x1c0b3b: ; 1c0b3b
	text "<PLAYER> annaffia."

	para "Ma non succede"
	line "nulla<...>"
	done
; 1c0b65

UnknownText_0x1c0b65: ; 1c0b65
	text "I #mon di"
	line "<PLAYER> sono"
	cont "stati curati!"
	done
; 1c0b7f

UnknownText_0x1c0b7f: ; 1c0b7f
	text "Un uovo non può"
	line "tenere nulla."
	prompt
; 1c0b9a

UnknownText_0x1c0b9a: ; 1c0b9a
	text "Nessuno strumento."
	done
; 1c0ba5

UnknownText_0x1c0ba5: ; 1c0ba5
	text "Quante unità"
	line "buttare?"
	done
; 1c0bbb

UnknownText_0x1c0bbb: ; 1c0bbb
	text "Butti @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 1c0bd8

UnknownText_0x1c0bd8: ; 1c0bd8
	text "Butti"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c0bee

UnknownText_0x1c0bee: ; 1c0bee
	text "Oak: ", "<PLAYER>!"
	line "C'é luogo e tempo"
	cont "per ogni cosa, ma"
	cont "non ora!"
	prompt
; 1c0c17

UnknownText_0x1c0c17: ; 1c0c17
	text "Non hai alcun"
	line "#mon!"
	prompt
; 1c0c2e

UnknownText_0x1c0c2e: ; 1c0c2e
	text "Hai assegnato"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c0c45

UnknownText_0x1c0c45: ; 1c0c45
	text "Non puoi assegnare"
	line "questo strumento."
	prompt
; 1c0c63
Text_DeselectedItem:
	text "Deselezionato"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt

Text_NotRegistered:
	text "Questo strumento"
	line "non é assegnato."
	prompt

Text_AlreadyRegistered:
	text "Questo strumento"
	line "é già stato"
	cont "assegnato."
	prompt

UnknownText_0x1c0c63: ; 1c0c63
	text "Dove vuoi spostare"
	line "questo strumento?"
	done
; 1c0c83

UnknownText_0x1c0c83: ; 1c0c83
	text ""
	done
; 1c0c85

UnknownText_0x1c0c85: ; 1c0c85
	text "Non puoi usarlo"
	line "durante una lotta."
	prompt
; 1c0ca3

UnknownText_0x1c0ca3: ; 1c0ca3
	text "Ma ora parliamo"
	line "un po' di te."
	
	para "Sei un ragazzo"
	line "o una ragazza?"
	done
; 1c0cc6

ConfirmBoyText:
	text "Quindi sei un"
	line "ragazzo?"
	done
ConfirmGirlText:
	text "Quindi sei una"
	line "ragazza?"
	done

UnknownText_0x1c0cc6: ; 1c0cc6
	text "@"
	text_from_ram StringBuffer2
	text " di"
	line $5a
	cont ""
	db "@"
; 1c0ccf

UnknownText_0x1c0ccf: ; 1c0ccf
	db "@"
; 1c0cd0

UnknownText_0x1c0cd0: ; 1c0cd0
	interpret_data
	text "aumenta"
	cont "di molto!"
	prompt
; 1c0ce0

UnknownText_0x1c0ce0: ; 1c0ce0
	text "aumenta!"
	prompt
; 1c0ceb

UnknownText_0x1c0ceb: ; 1c0ceb
	text "@"
	text_from_ram StringBuffer2
	text " di"
	line $59
	db "@"
; 1c0cf4

UnknownText_0x1c0cf4: ; 1c0cf4
	db "@"
; 1c0cf5

UnknownText_0x1c0cf5: ; 1c0cf5
	interpret_data
	text $4c, "cala a picco!"
	prompt
; 1c0d06

UnknownText_0x1c0d06: ; 1c0d06
	text " cala!"
	prompt
; 1c0d0e

UnknownText_0x1c0d0e: ; 1c0d0e
	text $5a, "@@"
; 1c0d12

UnknownText_0x1c0d12: ; 1c0d12
	text ""
	line "ha creato un"
	cont "turbinio!"
	prompt
; 1c0d26

UnknownText_0x1c0d26: ; 1c0d26
	text ""
	line "assorbe la luce!"
	prompt
; 1c0d3a

UnknownText_0x1c0d3a: ; 1c0d3a
	text ""
	line "ha abbassato"
	cont "la testa!"
	prompt
; 1c0d4e

UnknownText_0x1c0d4e: ; 1c0d4e
	text ""
	line "sta brillando!"
	prompt
; 1c0d5c

UnknownText_0x1c0d5c: ; 1c0d5c
	text ""
	line "volta alto nel"
	cont "cielo!"
	prompt
; 1c0d6c

UnknownText_0x1c0d6c: ; 1c0d6c
	text ""
	line "scava una fossa!"
	prompt
; 1c0d7a
_PowerHerbText:
	text $5a, " ha"
	line "mangiato una"
	cont "Vigorerba,"
	cont "attivandone gli"
	cont "effetti!"
	prompt


_ActorNameText: ; 1c0d7a
	text $5a, "@@"
; 1c0d7e

_UsedMove1Text: ; 1c0d7e
	text ""
	line "usa @@"
; 1c0d87

_UsedMove2Text: ; 1c0d87
	text ""
	line "usa @@"
; 1c0d90

_UsedInsteadText: ; 1c0d90
	text "invece,", $55
	db "@@"
; 1c0d9c

_MoveNameText: ; 1c0d9c
	text_from_ram StringBuffer2
	db "@"
; 1c0da0

UnknownText_0x1c0da0: ; 1c0da0
	db "@"
; 1c0da1

_EndUsedMove1Text: ; 1c0da1
	text "!"
	done
; 1c0da4

_EndUsedMove2Text: ; 1c0da4
	text "!"
	done
; 1c0da7

_EndUsedMove3Text: ; 1c0da7
	text "!"
	done
; 1c0daa

_EndUsedMove4Text: ; 1c0daa
	text "!"
	done
; 1c0dad

_EndUsedMove5Text: ; 1c0dad
	text "!"
	done
; 1c0db0

UnknownText_0x1c0db0: ; 1c0db0
	text "Oh?", $51
	db "@@"
; 1c0db8

UnknownText_0x1c0db8: ; 1c0db8
	text ""
	done
; 1c0dba

UnknownText_0x1c0dba: ; 1c0dba
	text_from_ram StringBuffer1
	text " é"
	line "nato dall'uovo!@"
	sound0x02
	text_waitsfx
	db "@"
; 1c0dd7

UnknownText_0x1c0dd7: ; 1c0dd7
	db "@"
; 1c0dd8

UnknownText_0x1c0dd8: ; 1c0dd8
	text "Vuoi dare un"
	line "soprannome a @"
	text_from_ram StringBuffer1
	text "?"
	done
; 1c0df3

UnknownText_0x1c0df3: ; 1c0df3
	text "È @"
	text_from_ram wBreedMon2Nick
	text ""
	line "che hai lasciato"
	cont "dall'anziana"
	cont "della pensione."
	done
; 1c0e24

UnknownText_0x1c0e24: ; 1c0e24
	text "È @"
	text_from_ram wBreedMon1
	text ""
	line "che hai lasciato"
	cont "dall'anziano della"
	cont "pensione."
	done
; 1c0e54

UnknownText_0x1c0e54: ; 1c0e54
	text "Sprizza energia"
	line "da tutti i pori."
	prompt
; 1c0e6f

UnknownText_0x1c0e6f: ; 1c0e6f
	text "Non ha alcun"
	line "interesse per"
	cont "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0e8d

UnknownText_0x1c0e8d: ; 1c0e8d
	text "Sembra considerare"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0eac

UnknownText_0x1c0eac: ; 1c0eac
	text "È amichevole con"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0ec6

UnknownText_0x1c0ec6: ; 1c0ec6
	text "Mostra interesse"
	line "per @"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c0ee3

_EmptyMailboxText: ; 1c0ee3
	text "Non c'é alcun"
	line "messaggio qui."
	prompt
; 1c0ef9

ClearedMailPutAwayText: ; 1c0ef9
	text "Il messaggio é"
	line "stato messo via."
	prompt
; 1c0f19

MailPackFullText: ; 1c0f19
	text "Lo zaino é pieno."
	prompt
; 1c0f2c

MailMessageLostText: ; 1c0f2c
	text "Il testo del"
	line "messaggio andrà"
	cont "perso. Va bene?"
	done
; 1c0f51

MailAlreadyHoldingItemText: ; 1c0f51
	text "Sta già tenendo"
	line "uno strumento."
	prompt
; 1c0f71

MailEggText: ; 1c0f71
	text "Un uovo non può"
	line "tenere nulla."
	prompt
; 1c0f8d

MailMovedFromBoxText: ; 1c0f8d
	text "Questo messaggio é"
	line "stato preso dal PC."
	prompt
; 1c0fb3

UnknownText_0x1c0fb3: ; 1c0fb3
	text "Sì"
	prompt
; 1c0fb8

UnknownText_0x1c0fb8: ; 1c0fb8
	text "No"
	prompt
; 1c0fbc

UnknownText_0x1c0fbc: ; 1c0fbc
	deciram wcf64, $13
	text " @"
	text_from_ram StringBuffer1
	text ""
	line "Animazione tipo @"
	text_from_ram StringBuffer2
	db "@"
; 1c0fdc

UnknownText_0x1c0fdc: ; 1c0fdc
	db "@"
; 1c0fdd

UnknownText_0x1c0fdd: ; 1c0fdd
	text "№ del #mon?"
	done
; 1c0feb

UnknownText_0x1c0feb: ; 1c0feb
	text_from_ram StringBuffer1
	text " é"
	line "stato mandato al"
	cont "PC di Bill."
	prompt
; 1c1006

UnknownText_0x1c1006: ; 1c1006
	text "Ti servono #mon"
	line "per chiamare!"
	prompt
; 1c1024

UnknownText_0x1c1024: ; 1c1024
	text "Che fai?"
	done
; 1c102b

UnknownText_0x1c102b: ; 1c102b
	text "C'é un #mon"
	line "che porta un"
	cont "messaggio con sé"

	para "Togliglielo."
	prompt
; 1c1062

UnknownText_0x1c1062: ; 1c1062
	text "Non hai neanche"
	line "un #mon!"
	prompt
; 1c1080

UnknownText_0x1c1080: ; 1c1080
	text "Non puoi deposita-"
	line "re il tuo ultimo" 
	cont "#mon!"
	prompt
; 1c10a2

UnknownText_0x1c10a2: ; 1c10a2
	text "Non puoi portare"
	line "altri #mon con"
	cont "te."
	prompt
; 1c10c0

UnknownText_0x1c10c0: ; 1c10c0
	text "Preso @"
	text_from_ram StringBuffer1
	text "!"
	prompt
; 1c10cf

UnknownText_0x1c10cf: ; 1c10cf
	text "Cambi #mon?"
	done
; 1c10dd

UnknownText_0x1c10dd: ; 1c10dd
	text "Hai già catturato"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c10fa

UnknownText_0x1c10fa: ; 1c10fa
	text "Il vincitore di"
	line "questa Gara"
	cont "Pigliamosche é@"
	interpret_data
	text "<...>", $51
	db "@"
	text_from_ram wd016
	text ","
	line "che ha catturato", $55
	db "@"
	text_from_ram StringBuffer1
	text "!@@"
; 1c113f

UnknownText_0x1c113f: ; 1c113f
	text $51
	db "Il punteggio"
	line "é di @"
	deciram wd004, $23
	text " punti!"
	prompt
; 1c1166

UnknownText_0x1c1166: ; 1c1166
	text "Il secondo posto"
	line "va a"
	cont "@"
	text_from_ram wd016
	text ",", $51
	db "che ha catturato"
	line "@"
	text_from_ram StringBuffer1
	text "!@@"
; 1c1196

UnknownText_0x1c1196: ; 1c1196
	text $51
	db "Il punteggio"
	line "é di @"
	deciram wd008, $23
	text " punti!"
	prompt
; 1c11b5

UnknownText_0x1c11b5: ; 1c11b5
	text "Il terzo posto"
	line "va a"
	cont "@"
	text_from_ram wd016
	text ",", $51
	db "che ha catturato"
	line "@"
	text_from_ram StringBuffer1
	text "!@@"
; 1c11e4

UnknownText_0x1c11e4: ; 1c11e4
	text $51
	db "Il punteggio"
	line "é di @"
	deciram wd00c, $23
	text " punti!"
	prompt
; 1c1203

UnknownText_0x1c1203: ; 1c1203
	text "Fammi misurare"
	line "quel Magikarp."

	para "<...>Hm, é grande"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c123a

UnknownText_0x1c123a: ; 1c123a
	text "Record attuale:", $51
	db "@"
	text_from_ram StringBuffer1
	text " stabilito da"
	line "@"
	text_from_ram wdfe9 + 1
	text_waitsfx
	db "@"
; 1c1260

UnknownText_0x1c1260: ; 1c1260
	db "@"
; 1c1261

UnknownText_0x1c1261: ; 1c1261
	text "Congratulazioni!"

	para "Abbiamo trovato"
	line "una corrispondenza"
	cont "con il numero ID"

	para "di @"
	text_from_ram StringBuffer1
	text " nella"
	line "tua squadra."
	prompt
; 1c12ae

UnknownText_0x1c12ae: ; 1c12ae
	text "Congratulazioni!"

	para "Abbiamo trovato"
	line "una corrispondenza"
	cont "con il numero ID"

	para "di @"
	text_from_ram StringBuffer1
	text " nel"
	line "tuo box PC."
	prompt
; 1c12fc

UnknownText_0x1c12fc: ; 1c12fc
	text "Vuoi dare un"
	line "soprannome a"
	cont "@"
	text_from_ram StringBuffer1
	text " che hai"
	cont "ricevuto?"
	done
; 1c1328

UnknownText_0x1c1328: ; 1c1328
	text "Bzzzt! Hai bisogno"
	line "di un #mon per"
	cont "usarlo!"
	prompt
; 1c1353

UnknownText_0x1c1353: ; 1c1353
	text "<PLAYER> ha"
	line "avviato il PC."
	prompt
; 1c1368

UnknownText_0x1c1368: ; 1c1368
	text "Cosa vuoi fare?"
	done
; 1c1381

_KrissPCHowManyWithdrawText: ; 1c1381
	text "Quante unità"
	line "vuoi ritirare?"
	done
; 1c13a4

_KrissPCWithdrewItemsText: ; 1c13a4
	text "Ritiri @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c13bf

_KrissPCNoRoomWithdrawText: ; 1c13bf
	text "Non c'é spazio per"
	line "altri oggetti."
	prompt
; 1c13df

UnknownText_0x1c13df: ; 1c13df
	text "Non ci sono"
	line "oggetti qui!"
	prompt
; 1c13ef

_KrissPCHowManyDepositText: ; 1c13ef
	text "Quante unità"
	line "vuoi depositare?"
	done
; 1c1411

_KrissPCDepositItemsText: ; 1c1411
	text "Depositi @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c142d

_KrissPCNoRoomDepositText: ; 1c142d
	text "Non c'é spazio per"
	line "altri oggetti."
	prompt
; 1c144d

_KrissPCCantDepositText:
	text "Non puoi deposita-"
	line "re il tuo computer"
	cont "adesso."
	prompt

UnknownText_0x1c144d: ; 1c144d
	text "<PLAYER> ha"
	line "avviato il PC."
	prompt
; 1c1462

UnknownText_0x1c1462: ; 1c1462
	text "A quale PC"
	line "vuoi accedere?"
	done
; 1c1474

UnknownText_0x1c1474: ; 1c1474
	text "Accesso al"
	line "PC di Bill."

	para "Aperto il Sistema"
	line "Memoria #mon."
	prompt
; 1c14a4

UnknownText_0x1c1474_2: ; 1c1474
	text "Accesso al"
	line "PC di qualcuno."

	para "Aperto il Sistema"
	line "Memoria #mon."
	prompt
; 1c14a4

UnknownText_0x1c14a4: ; 1c14a4
	text "Accesso al tuo PC."

	para "Aperto il Sistema"
	line "Memoria Strumenti."
	prompt
; 1c14d2

UnknownText_0x1c14d2: ; 1c14d2
	text "Accesso al PC del"
	line "Professor Oak."

	para "Aperto il Sistema"
	line "Valutaz. #dex."
	prompt
; 1c1505

UnknownText_0x1c1505: ; 1c1505
	text "<...>"
	line "Collegamento"
	cont "terminato<...>"
	done
; 1c1515

_OakPCText1: ; 1c1515
	text "Vuoi far valutare"
	line "il tuo #dex?"
	done
; 1c1533

_OakPCText2: ; 1c1533
	text "Attuale livello di"
	line "completamento del"
	cont "#dex:"
	prompt
; 1c1553

_OakPCText3: ; 1c1553
	text_from_ram StringBuffer3
	text " #mon visti:"
	line "@"
	text_from_ram StringBuffer4
	text " #mon presi:"

	para "Valutazione del"
	line "Professor Oak:"
	done
; 1c1585

_OakRating01: ; 1c1585
	text "Cerca i #mon"
	line "nell'erba alta!"
	done
; 1c15a5

_OakRating02: ; 1c15a5
	text "Bene. Vedo che hai"
	line "capito come usare"
	cont "le # Ball."
	done
; 1c15d5

_OakRating03: ; 1c15d5
	text "Bravo, stai ingra-"
	line "nando bene."

	para "Ma sappi che hai"
	line "ancora strada da"
	cont "da fare."
	done
; 1c1611

_OakRating04: ; 1c1611
	text "Continua a riem-"
	line "pire il #dex."

	para "Cattura diversi"
	line "tipi di #mon!"
	done
; 1c164f

_OakRating05: ; 1c164f
	text "Ti stai impegnan-"
	line "do, si vede."

	para "Il tuo #dex ne"
	line "é testimone."
	done
; 1c168c

_OakRating06: ; 1c168c
	text "Alcuni #mon per"
	line "evolversi hanno"
	cont "bisogno di salire"
	cont "di livello,"

	para "mentre altri hanno"
	line "bisogno di entrare"
	cont "in contatto con"
	cont "delle pietre."
	done
; 1c16ca

_OakRating07: ; 1c16ca
	text "Sei riuscito ad"
	line "avere un amo da"
	cont "pesca? Con esso"

	para "puoi pescare dei"
	line "#mon che non"
	cont "troveresti altri-"
	cont "menti."
	done
; 1c1709

_OakRating08: ; 1c1709
	text "Eccellente! Stai"
	line "riempiendo il tuo"
	cont "#dex per bene!"
	done
; 1c173b

_OakRating09: ; 1c173b
	text "Alcuni #mon"
	line "appaiono solo"

	para "durante alcuni"
	line "momenti della"
	cont "giornata."
	done
; 1c1773

_OakRating10: ; 1c1773
	text "Il tuo #dex si"
	line "sta riempiendo."
	cont "Continua così,"
	cont "non demordere!"
	done
; 1c17a4

_OakRating11: ; 1c17a4
	text "Sono colpito."
	line "Stai facendo evol-"

	para "vere i tuoi #-"
	line "mon, non ti limiti"
	cont "a catturarli."
	done
; 1c17e0

_OakRating12: ; 1c17e0
	text "Hai già incontrato"
	line "Franz?"
	cont "Le sfere che crea"
	cont "dovrebbero esserti"
	cont "di grande aiuto."
	done
; 1c1812

_OakRating13: ; 1c1812
	text "Wow. Hai preso"
	line "più #mon dell'"

	para "ultimo progetto di"
	line "ricerca #mon."
	done
; 1c1853

_OakRating14: ; 1c1853
	text "Stai scambiando"
	line "i tuoi #mon?"

	para "È difficile arri-"
	line "vare a così tanto"
	cont "da soli!"
	done
; 1c188b

_OakRating15: ; 1c188b
	text "Wow! Sei arrivato"
	line "ai 200! Il tuo"
	cont "#dex é ottimo!"
	done
; 1c18bc

_OakRating16: ; 1c18bc
	text "Hai trovato tutti"
	line "questi #mon!"

	para "Hai radicalmente"
	line "aiutato i miei"
	cont "studi!"
	done
; 1c18f7

_OakRating17: ; 1c18f7
	text "Magnifico! Potre-"
	line "sti benissimo"

	para "diventare un pro-"
	line "fessore #mon!"
	done
; 1c1932

_OakRating18: ; 1c1932
	text "Il tuo #dex"
	line "é fantastico!"

	para "Sei già un grande"
	line "esperto del setto-"
	cont "re!"
	done
; 1c196b

_OakRatingNearlyThere:
	text "Wow! Questo #-"
	line "dex é prossimo"
	cont "all'essere com-"
	cont "pleto!"

	para "Mi hai superato"
	line "già di molto!"
	done

_OakRating19: ; 1c196b
	text "Wow! Un #dex"
	line "completo! Hai"

	para "realizzato il mio"
	line "sogno!"
	cont "Congratulazioni!"
	done
; 1c19aa

_OakPCText4: ; 1c19aa
	text "Collegamento con"
	line "il PC del Profes-"
	cont "sor Oak terminato."
	done
; 1c19cd

UnknownText_0x1c19cd: ; 1c19cd
	text "Triple-theme"
	line "trainer ranking!", $51
	db "The SAVE file you"
	line "just sent might", $55
	db "make the rankings!", $51
	db $57
; 1c1a22

UnknownText_0x1c1a22: ; 1c1a22
	text "There is no"
	line "ranking data.", $51
	db "Link to obtain"
	line "ranking data.", $51
	db $57
; 1c1a5b

UnknownText_0x1c1a5b: ; 1c1a5b
	text " , evvai!"
	done
; 1c1a65

UnknownText_0x1c1a65: ; 1c1a65
	text "Mannaggia<...>"
	done
; 1c1a6c

UnknownText_0x1c1a6c: ; 1c1a6c
	text "Vuoi concludere"
	line "la Gara?"
	done
; 1c1a90

UnknownText_0x1c1a90: ; 1c1a90
	text "Quantità da"
	line "buttare?"
	cont "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 1c1aad

UnknownText_0x1c1aad: ; 1c1aad
	text "Butti @"
	deciram wd10c, $12
	text ""
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 1c1aca

UnknownText_0x1c1aca: ; 1c1aca
	text "Butti"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c1adf

UnknownText_0x1c1adf: ; 1c1adf
	text "Non puoi buttare"
	line "via uno strumento"
	cont "così importante!"
	prompt
; 1c1b03

UnknownText_0x1c1b03: ; 1c1b03
	text "Oak: ", "<PLAYER>!"
	line "C'é luogo e tempo"
	cont "per ogni cosa, ma"
	cont "non ora!"
	done
; 1c1b2c

UnknownText_0x1c1b2c: ; 1c1b2c
	text "Prendi"
	line "@"
	text_from_ram StringBuffer1
	text " "
	cont "da @"
	text_from_ram wd050
	text " e"
	
    para "sostituisci con"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c1b57

UnknownText_0x1c1b57: ; 1c1b57
	text "Dai a @"
	text_from_ram wd050
	text " "
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 1c1b6f

UnknownText_0x1c1b6f: ; 1c1b6f
	text "Rimuovi prima il"
	line "messaggio."
	prompt
; 1c1b8e

UnknownText_0x1c1b8e: ; 1c1b8e
	text_from_ram wd050
	text " non sta"
	line "tenendo nulla."
	prompt
; 1c1baa

UnknownText_0x1c1baa: ; 1c1baa
	text "Lo zaino é pieno."
	prompt
; 1c1bc4

UnknownText_0x1c1bc4: ; 1c1bc4
	text "Prendi"
	line "@"
	text_from_ram StringBuffer1
	text " "
	cont "da @"
	text_from_ram wd050
	text "."
	prompt
; 1c1bdc

UnknownText_0x1c1bdc: ; 1c1bdc
	text_from_ram wd050
	text " tiene"
    line "già @"
	text_from_ram StringBuffer1
	text "."
	
	para "Sostituire?"
	done
; 1c1c09

UnknownText_0x1c1c09: ; 1c1c09
	text "Questo strumento"
	line "non si può tenere."
	prompt
; 1c1c22

UnknownText_0x1c1c22: ; 1c1c22
	text "Il testo del mes-"
	line "saggio andrà"
	cont "perso. Va bene?"
	done
; 1c1c47

UnknownText_0x1c1c47: ; 1c1c47
	text "Messaggio preso da"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 1c1c62

UnknownText_0x1c1c62: ; 1c1c62
	text "Non c'é spazio"
	line "nello zaino."
	prompt
; 1c1c86

UnknownText_0x1c1c86: ; 1c1c86
	text "Vuoi mandare il"
	line "messaggio al PC?"
	done
; 1c1ca9

UnknownText_0x1c1ca9: ; 1c1ca9
	text "Nel PC non c'é più"
	line "spazio per altri"
	cont "messaggi."
	prompt
; 1c1cc4

UnknownText_0x1c1cc4: ; 1c1cc4
	text "Il messaggio é"
	line "stato mandato al"
    cont "tuo PC."
	prompt
; 1c1ce3

UnknownText_0x1c1ce3: ; 1c1ce3
	text "Non ha abbastanza"
	line "PS!"
	prompt
; 1c1cf3

UnknownText_0x1c1cf3: ; 1c1cf3
	text "Puoi assegnare uno"
	line "strumento dello"

	para "zaino al tasto"
	line "Select."
	done
; 1c1d35

_OakText1: ; 1c1d35
	text "Ciao! Scusa se"
	line "ti ho fatto", $55
	db "attendere."
	para "Mi chiamo Oak!"

	para "Tutti mi conoscono"
	line "come il professore",$55
	db "dei #mon!"
	prompt
; 1c1da4

_OakText2: ; 1c1da4
	text "Questo mondo é"
	line "abitato da creatu-", $55
	db "re che chiamiamo", $55
	db "#mon.@@"
; 1c1de2

_OakText3: ; 1c1de2
	text_waitsfx
	db "@"
; 1c1de4

UnknownText_0x1c1de4: ; 1c1de4
	db "@"
; 1c1de5

_OakText4: ; 1c1de5
	text "Per alcuni i #-"
	line "mon sono piccoli"
	cont "amici, altri li"
	cont "usano per lottare."
	prompt
; 1c1e51

_OakText5: ; 1c1e51
	text "In quanto a me<...>"
	line "Lo studio dei"
	cont "#mon é il mio"
	cont "lavoro."
	prompt
; 1c1ec9
