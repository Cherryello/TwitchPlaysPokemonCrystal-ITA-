_FruitBearingTreeText: ; 0x1bc000
	text "é un albero da"
	line "frutta."
	done
; 0x1bc01c

_HeyItsFruitText: ; 0x1bc01c
	text "Ehi, ma é"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bc02d

_ObtainedFruitText: ; 0x1bc02d
	text "Hai trovato una"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bc03e

_FruitPackIsFullText: ; 0x1bc03e
	text "Ma lo zaino é"
	line "pieno<...>"
	done
; 0x1bc055

_NothingHereText: ; 0x1bc055
	text "Qui non c'é"
	line "nulla<...>"
	done
; 0x1bc06b

UnknownText_0x1bc06b: ; 0x1bc06b
	text "Quale ghicocca"
	line "vuoi che usi?"
	done
; 0x1bc089

UnknownText_0x1bc089: ; 0x1bc089
	text "Quante ball dovrei"
	line "tirarne fuori?"
	done
; 0x1bc0a2

UnknownText_0x1bc0a2: ; 0x1bc0a2
	text_from_ram StringBuffer1
	text ""
	line "recupera @"
	deciram wd1f3, $23
	text "PS!"
	done
; 0x1bc0bb

UnknownText_0x1bc0bb: ; 0x1bc0bb
	text_from_ram StringBuffer1
	text " si é"
	line "disintossicato."
	done
; 0x1bc0d2

UnknownText_0x1bc0d2: ; 0x1bc0d2
	text_from_ram StringBuffer1
	text " si é"
	line "liberato dalla"
	cont "paralisi."
	done
; 0x1bc0ea

UnknownText_0x1bc0ea: ; 0x1bc0ea
	text_from_ram StringBuffer1
	text " é"
	line "guarito dalla"
	cont "scottatura."
	done
; 0x1bc101

UnknownText_0x1bc101: ; 0x1bc101
	text_from_ram StringBuffer1
	text " si é"
	line "scongelato."
	done
; 0x1bc115

UnknownText_0x1bc115: ; 0x1bc115
	text_from_ram StringBuffer1
	text " si é"
	line "svegliato."
	done
; 0x1bc123

UnknownText_0x1bc123: ; 0x1bc123
	text_from_ram StringBuffer1
	text " ha"
	line "recuperato la"
	cont "salute."
	done
; 0x1bc13a

UnknownText_0x1bc13a: ; 0x1bc13a
	text_from_ram StringBuffer1
	text ""
	line "rinsavisce."
	done
; 0x1bc14f

UnknownText_0x1bc14f: ; 0x1bc14f
	text_from_ram StringBuffer1
	text " sale al"
	line "livello @"
	deciram CurPartyLevel, $13
	text "!@"
	sound0
	text_waitsfx
	db "@"
; 0x1bc16d

UnknownText_0x1bc16d: ; 0x1bc16d
	db "@"
; 0x1bc16e

UnknownText_0x1bc16e: ; 0x1bc16e
	text_from_ram StringBuffer1
	text " torna"
	line "in sé."
	done
; 0x1bc187

UnknownText_0x1bc187: ; 0x1bc187
	text "Inserisci un nume-"
	line "a quattro cifre."
	done
; 0x1bc1ac

UnknownText_0x1bc1ac: ; 0x1bc1ac
	text "Inserisci il nume-"
	line "ro per confermare."
	done
; 0x1bc1cf

UnknownText_0x1bc1cf: ; 0x1bc1cf
	text "I due numeri non"
	line "corrispondono."
	done
; 0x1bc1eb

UnknownText_0x1bc1eb: ; 0x1bc1eb
	text "Hai impostato il"
	line "passcode.", $51
	db "Metti questo № la"
	line "prossima volta che", $55
	db "apri la cartella.", $51
	db $57
; 0x1bc23e

UnknownText_0x1bc23e: ; 0x1bc23e
	text "0000 non vale!", $51
	db $57
; 0x1bc251

UnknownText_0x1bc251: ; 0x1bc251
	text "Inserisci il", $4e, "passcode."
	done
; 0x1bc272

UnknownText_0x1bc272: ; 0x1bc272
	text "Passcode"
	line "errato!", $51
	db $57
; 0x1bc288

UnknownText_0x1bc288: ; 0x1bc288
	text "Cartella aperta.@"
	db "@"
; 0x1bc29c

UnknownText_0x1bc29c: ; 0x1bc29c
	text $56, $56, $56, $56, $56, $56
	line $56, $56, $56, $56, $56, $56

	para "Zzz<...> Che c'é?"
	line "Mi hai svegliato!"

	para "Puoi controllare"
	line "l'orologio?"
	prompt
; 0x1bc2eb

UnknownText_0x1bc2eb: ; 0x1bc2eb
	text "Che ora é?"
	done
; 0x1bc2fd

UnknownText_0x1bc2fd: ; 0x1bc2fd
	text "Come?@"
	db "@"
; 0x1bc305

UnknownText_0x1bc305: ; 0x1bc305
	text "?"
	done
; 0x1bc308

UnknownText_0x1bc308: ; 0x1bc308
	text "Quanti minuti?"
	done
; 0x1bc31b

UnknownText_0x1bc31b: ; 0x1bc31b
	text "Whoa!@"
	db "@"
; 0x1bc323

UnknownText_0x1bc323: ; 0x1bc323
	text "?"
	done
; 0x1bc326

UnknownText_0x1bc326: ; 0x1bc326
	text "!"
	line "Ho dormito troppo!"
	done
; 0x1bc336

UnknownText_0x1bc336: ; 0x1bc336
	text "!"
	line "Ma allora ho"
	cont "dormito troppo!"
	done
; 0x1bc34f

UnknownText_0x1bc34f: ; 0x1bc34f
	text "!"
	line "Ecco perché"
	cont "é così buio!"
	done
; 0x1bc369

UnknownText_0x1bc369: ; 0x1bc369
	text "Che giorno é?"
	done
; 0x1bc37a

UnknownText_0x1bc37a: ; 0x1bc37a
	text ", giusto?"
	done
; 0x1bc384

UnknownText_0x1bc384: ; 0x1bc384
	text "There is nothing"
	line "connected."
	done
; 0x1bc3a1

UnknownText_0x1bc3a1: ; 0x1bc3a1
	text "Check stocazzo."
	done
; 0x1bc3bc

UnknownText_0x1bc3bc: ; 0x1bc3bc
	text "Check CDMA"
	line "adapter."
	done
; 0x1bc3d1

UnknownText_0x1bc3d1: ; 0x1bc3d1
	text "Check DOCOMO PHS"
	line "adapter."
	done
; 0x1bc3ec

UnknownText_0x1bc3ec: ; 0x1bc3ec
	text "Check DDI PHS"
	line "adapter."
	done
; 0x1bc404

UnknownText_0x1bc404: ; 0x1bc404
	text "Check unlimited"
	line "battle mobile"
	cont "adapter."
	done
; 0x1bc42c

UnknownText_0x1bc42c: ; 0x1bc42c
	text "La password é:"
	line $57
; 0x1bc43f

UnknownText_0x1bc43f: ; 0x1bc43f
	text "Va bene?"
	done
; 0x1bc44c

UnknownText_0x1bc44c: ; 0x1bc44c
	text "Inserisci il"
	line "numero ID."
	done
; 0x1bc45e

UnknownText_0x1bc45e: ; 0x1bc45e
	text "Inserisci l'impor-"
	line "to."
	done
; 0x1bc471

UnknownText_0x1bc471: ; 0x1bc471
	text "Non c'é nulla da"
	line "scegliere."
	prompt
; 0x1bc48c

UnknownText_0x1bc48c: ; 0x1bc48c
	text "Su che lato vuoi"
	line "metterlo?"
	done
; 0x1bc4b2

UnknownText_0x1bc4b2: ; 0x1bc4b2
	text "Da quale lato vuoi"
	line "toglierlo?"
	done
; 0x1bc4d7

UnknownText_0x1bc4d7: ; 0x1bc4d7
	text "Metti via"
	line "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1bc4ec

UnknownText_0x1bc4ec: ; 0x1bc4ec
	text "Non c'é nulla da"
	line "togliere."
	prompt
; 0x1bc509

UnknownText_0x1bc509: ; 0x1bc509
	text "Hai impostato"
	line "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1bc51c

UnknownText_0x1bc51c: ; 0x1bc51c
	text "Metti via"
	line "@"
	text_from_ram StringBuffer3
	text $51
	db "e imposti"
	line "@"
	text_from_ram StringBuffer4
	text "."
	prompt
; 0x1bc546

UnknownText_0x1bc546: ; 0x1bc546
	text "é già stato"
	line "impostato."
	prompt
; 0x1bc55d

UnknownText_0x1bc55d: ; 0x1bc55d
	text "é la Mappa Città."
	done
; 0x1bc570

UnknownText_0x1bc570: ; 0x1bc570
	text "é un poster di un"
	line "Pikachu molto ca-"
	cont "rino."
	done
; 0x1bc591

UnknownText_0x1bc591: ; 0x1bc591
	text "é un poster di un"
	line "Clefairy molto ca-"
	cont "rino."
	done
; 0x1bc5b3

UnknownText_0x1bc5b3: ; 0x1bc5b3
	text "é un poster di un"
	line "Jigglypuff molto"
	cont "carino."
	done
; 0x1bc5d7

UnknownText_0x1bc5d7: ; 0x1bc5d7
	text "é un adorabile"
	line "@"
	text_from_ram StringBuffer3
	text "."
	done
; 0x1bc5ef

UnknownText_0x1bc5ef: ; 0x1bc5ef
	text "Un peluche enorme!"
	line "é molto soffice."
	done
; 0x1bc615

UnknownText_0x1bc615: ; 0x1bc615
	text "Ciao, ", $52, "!"
	line "Come stai?"
	prompt
; 0x1bc62a

UnknownText_0x1bc62a: ; 0x1bc62a
	text "Ho trovato un"
	line "oggetto utile men-"
	cont "tre facevo shop-"
	cont "ping, così l'ho"
	prompt
; 0x1bc64e

UnknownText_0x1bc64e: ; 0x1bc64e
	text "comprato con i"
	line "tuoi soldi. Scusa!"
	prompt
; 0x1bc673

UnknownText_0x1bc673: ; 0x1bc673
	text "é nel tuo PC."
	line "Ti piacerà!"
	done
; 0x1bc693

UnknownText_0x1bc693: ; 0x1bc693
	text "Oggi mentre facevo"
	line "shopping, ho visto"
	cont "un pupazzo vera-"
	cont "mente adorabile,"
	cont "così l'ho"
	prompt
; 0x1bc6c7

UnknownText_0x1bc6c7: ; 0x1bc6c7
	text "é in camera tua."
	line "Ti piacerà!"
	done
; 0x1bc6e9

UnknownText_0x1bc6e9: ; 0x1bc6e9
	text_from_ram wc6d1
	text " viene"
	line "mandata a @"
	text_from_ram wc719
	text "."
	done
; 0x1bc701

UnknownText_0x1bc701: ; 0x1bc701
	text ""
	done
; 0x1bc703

UnknownText_0x1bc703: ; 0x1bc703
	text_from_ram wc719
	text " dice"
	line "addio a"
	done
; 0x1bc719

UnknownText_0x1bc719: ; 0x1bc719
	text_from_ram wc703
	text "."
	done
; 0x1bc71f

UnknownText_0x1bc71f: ; 0x1bc71f
	text "Abbi cura di"
	line "@"
	text_from_ram wc703
	text "!"
	done
; 0x1bc739

UnknownText_0x1bc739: ; 0x1bc739
	text "Per @"
	text_from_ram wc6d1
	text "di"
	line "@"
	text_from_ram wc6e7
	text ","
	done
; 0x1bc74c

UnknownText_0x1bc74c: ; 0x1bc74c
	text_from_ram wc719
	text " invia"
	line "@"
	text_from_ram wc703
	text "."
	done
; 0x1bc75e

UnknownText_0x1bc75e: ; 0x1bc75e
	text_from_ram wc719
	text " scam-"
	line "bierà @"
	text_from_ram wc703
	db "@"
; 0x1bc773

UnknownText_0x1bc773: ; 0x1bc773
	db "@"
; 0x1bc774

UnknownText_0x1bc774: ; 0x1bc774
	text "per @"
	text_from_ram wc6d1
	text "di"
	line "@"
	text_from_ram wc6e7
	text "."
	done
; 0x1bc787

UnknownText_0x1bc787: ; 0x1bc787
	text_from_ram wc6e7
	text " scam-"
	line "bierà @"
	text_from_ram wc6d1
	db "@"
; 0x1bc79c

UnknownText_0x1bc79c: ; 0x1bc79c
	db "@"
; 0x1bc79d

UnknownText_0x1bc79d: ; 0x1bc79d
	text "per @"
	text_from_ram wc703
	text "di"
	line "@"
	text_from_ram wc719
	text "."
	done
; 0x1bc7b0

UnknownText_0x1bc7b0: ; 0x1bc7b0
	text_from_ram wc6e7
	text "'s"
	line "@"
	text_from_ram wc6d1
	text " trade<...>"
	done
; 0x1bc7c3

UnknownText_0x1bc7c3: ; 0x1bc7c3
	text "Abbi cura di"
	line "@"
	text_from_ram wc703
	text "!"
	done
; 0x1bc7dd

UnknownText_0x1bc7dd: ; 0x1bc7dd
	text_from_ram wc6e7
	text "'s"
	line "@"
	text_from_ram wc6d1
	text " trade<...>"
	done
; 0x1bc7f0

UnknownText_0x1bc7f0: ; 0x1bc7f0
	text "Abbi cura di"
	line "@"
	text_from_ram wc703
	text "!"
	done
; 0x1bc80a

UnknownText_0x1bc80a: ; 0x1bc80a
	text_from_ram wc703
	text " torna!"
	done
; 0x1bc81a

UnknownText_0x1bc81a: ; 0x1bc81a
	text ""
	line "Mary: Prof.Oak's"
	done
; 0x1bc82d

UnknownText_0x1bc82d: ; 0x1bc82d
	text ""
	line "#mon Talk!"
	done
; 0x1bc83a

UnknownText_0x1bc83a: ; 0x1bc83a
	text ""
	line "With me, Mary!"
	done
; 0x1bc84b

UnknownText_0x1bc84b: ; 0x1bc84b
	text ""
	line "Oak: @"
	text_from_ram wd050
	db "@"
; 0x1bc857

UnknownText_0x1bc857: ; 0x1bc857
	db "@"
; 0x1bc858

UnknownText_0x1bc858: ; 0x1bc858
	text ""
	line "may be seen around"
	done
; 0x1bc86d

UnknownText_0x1bc86d: ; 0x1bc86d
	text ""
	line "@"
	text_from_ram StringBuffer1
	text "."
	done
; 0x1bc876

UnknownText_0x1bc876: ; 0x1bc876
	text ""
	line "Mary: @"
	text_from_ram StringBuffer1
	text "'s"
	done
; 0x1bc885

UnknownText_0x1bc885: ; 0x1bc885
	text ""
	line "sweet and adorably"
	done
; 0x1bc89a

UnknownText_0x1bc89a: ; 0x1bc89a
	text ""
	line "wiggly and slickly"
	done
; 0x1bc8af

UnknownText_0x1bc8af: ; 0x1bc8af
	text ""
	line "aptly named and"
	done
; 0x1bc8c1

UnknownText_0x1bc8c1: ; 0x1bc8c1
	text ""
	line "undeniably kind of"
	done
; 0x1bc8d6

UnknownText_0x1bc8d6: ; 0x1bc8d6
	text ""
	line "so, so unbearably"
	done
; 0x1bc8ea

UnknownText_0x1bc8ea: ; 0x1bc8ea
	text ""
	line "wow, impressively"
	done
; 0x1bc8fe

UnknownText_0x1bc8fe: ; 0x1bc8fe
	text ""
	line "almost poisonously"
	done
; 0x1bc913

UnknownText_0x1bc913: ; 0x1bc913
	text ""
	line "ooh, so sensually"
	done
; 0x1bc927

UnknownText_0x1bc927: ; 0x1bc927
	text ""
	line "so mischievously"
	done
; 0x1bc93a

UnknownText_0x1bc93a: ; 0x1bc93a
	text ""
	line "so very topically"
	done
; 0x1bc94e

UnknownText_0x1bc94e: ; 0x1bc94e
	text ""
	line "sure addictively"
	done
; 0x1bc961

UnknownText_0x1bc961: ; 0x1bc961
	text ""
	line "looks in water is"
	done
; 0x1bc975

UnknownText_0x1bc975: ; 0x1bc975
	text ""
	line "evolution must be"
	done
; 0x1bc989

UnknownText_0x1bc989: ; 0x1bc989
	text ""
	line "provocatively"
	done
; 0x1bc999

UnknownText_0x1bc999: ; 0x1bc999
	text ""
	line "so flipped out and"
	done
; 0x1bc9ae

UnknownText_0x1bc9ae: ; 0x1bc9ae
	text ""
	line "heart-meltingly"
	done
; 0x1bc9c0

UnknownText_0x1bc9c0: ; 0x1bc9c0
	text ""
	line "cute."
	done
; 0x1bc9c8

UnknownText_0x1bc9c8: ; 0x1bc9c8
	text ""
	line "weird."
	done
; 0x1bc9d1

UnknownText_0x1bc9d1: ; 0x1bc9d1
	text ""
	line "pleasant."
	done
; 0x1bc9dd

UnknownText_0x1bc9dd: ; 0x1bc9dd
	text ""
	line "bold, sort of."
	done
; 0x1bc9ee

UnknownText_0x1bc9ee: ; 0x1bc9ee
	text ""
	line "frightening."
	done
; 0x1bc9fd

UnknownText_0x1bc9fd: ; 0x1bc9fd
	text ""
	line "suave & debonair!"
	done
; 0x1bca11

UnknownText_0x1bca11: ; 0x1bca11
	text ""
	line "powerful."
	done
; 0x1bca1d

UnknownText_0x1bca1d: ; 0x1bca1d
	text ""
	line "exciting."
	done
; 0x1bca29

UnknownText_0x1bca29: ; 0x1bca29
	text ""
	line "groovy!"
	done
; 0x1bca33

UnknownText_0x1bca33: ; 0x1bca33
	text ""
	line "inspiring."
	done
; 0x1bca40

UnknownText_0x1bca40: ; 0x1bca40
	text ""
	line "friendly."
	done
; 0x1bca4c

UnknownText_0x1bca4c: ; 0x1bca4c
	text ""
	line "hot, hot, hot!"
	done
; 0x1bca5d

UnknownText_0x1bca5d: ; 0x1bca5d
	text ""
	line "stimulating."
	done
; 0x1bca6c

UnknownText_0x1bca6c: ; 0x1bca6c
	text ""
	line "guarded."
	done
; 0x1bca77

UnknownText_0x1bca77: ; 0x1bca77
	text ""
	line "lovely."
	done
; 0x1bca81

UnknownText_0x1bca81: ; 0x1bca81
	text ""
	line "speedy."
	done
; 0x1bca8b

UnknownText_0x1bca8b: ; 0x1bca8b
	text "#mon"
	done
; 0x1bca91

UnknownText_0x1bca91: ; 0x1bca91
	text ""
	line "@"
	text_from_ram StringBuffer1
	db "@"
; 0x1bca98

UnknownText_0x1bca98: ; 0x1bca98
	db "@"
; 0x1bca99

UnknownText_0x1bca99: ; 0x1bca99
	text ""
	line "Ben: #mon Music"
	done
; 0x1bcaab

UnknownText_0x1bcaab: ; 0x1bcaab
	text ""
	line "Channel!"
	done
; 0x1bcab6

UnknownText_0x1bcab6: ; 0x1bcab6
	text ""
	line "It's me, DJ Ben!"
	done
; 0x1bcac8

UnknownText_0x1bcac8: ; 0x1bcac8
	text ""
	line "Fern: #Music!"
	done
; 0x1bcad8

UnknownText_0x1bcad8: ; 0x1bcad8
	text ""
	line "With DJ Fern!"
	done
; 0x1bcae8

UnknownText_0x1bcae8: ; 0x1bcae8
	text ""
	line "Today's @"
	current_day
	text ","
	done
; 0x1bcaf6

UnknownText_0x1bcaf6: ; 0x1bcaf6
	text ""
	line "so let us jam to"
	done
; 0x1bcb09

UnknownText_0x1bcb09: ; 0x1bcb09
	text ""
	line "so chill out to"
	done
; 0x1bcb1b

UnknownText_0x1bcb1b: ; 0x1bcb1b
	text ""
	line "#mon March!"
	done
; 0x1bcb29

UnknownText_0x1bcb29: ; 0x1bcb29
	text ""
	line "#mon Lullaby!"
	done
; 0x1bcb39

UnknownText_0x1bcb39: ; 0x1bcb39
	text ""
	line "Reed: Yeehaw! How"
	done
; 0x1bcb4d

UnknownText_0x1bcb4d: ; 0x1bcb4d
	text ""
	line "y'all doin' now?"
	done
; 0x1bcb60

UnknownText_0x1bcb60: ; 0x1bcb60
	text ""
	line "Whether you're up"
	done
; 0x1bcb73

UnknownText_0x1bcb73: ; 0x1bcb73
	text ""
	line "or way down low,"
	done
; 0x1bcb86

UnknownText_0x1bcb86: ; 0x1bcb86
	text ""
	line "don't you miss the"
	done
; 0x1bcb9a

UnknownText_0x1bcb9a: ; 0x1bcb9a
	text ""
	line "Lucky Number Show!"
	done
; 0x1bcbaf

UnknownText_0x1bcbaf: ; 0x1bcbaf
	text ""
	line "This week's Lucky"
	done
; 0x1bcbc2

UnknownText_0x1bcbc2: ; 0x1bcbc2
	text ""
	line "Number is @"
	interpret_data
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1bcbd6

UnknownText_0x1bcbd6: ; 0x1bcbd6
	text ""
	line "I'll repeat that!"
	done
; 0x1bcbe9

UnknownText_0x1bcbe9: ; 0x1bcbe9
	text ""
	line "Match it and go to"
	done
; 0x1bcbfe

UnknownText_0x1bcbfe: ; 0x1bcbfe
	text ""
	line "the Radio Tower!"
	done
; 0x1bcc11

UnknownText_0x1bcc11: ; 0x1bcc11
	text ""
	line "<...>Repeating myself"
	done
; 0x1bcc25

UnknownText_0x1bcc25: ; 0x1bcc25
	text ""
	line "gets to be a drag<...>"
	done
; 0x1bcc3a

UnknownText_0x1bcc3a: ; 0x1bcc3a
	text ""
	line "Posti e Persone!"
	done
; 0x1bcc4f

UnknownText_0x1bcc4f: ; 0x1bcc4f
	text ""
	line "Brought to you by"
	done
; 0x1bcc63

UnknownText_0x1bcc63: ; 0x1bcc63
	text ""
	line "me, DJ Lily!"
	done
; 0x1bcc72

UnknownText_0x1bcc72: ; 0x1bcc72
	text ""
	line "@"
	text_from_ram StringBuffer2
	text " @"
	text_from_ram StringBuffer1
	db "@"
; 0x1bcc7f

UnknownText_0x1bcc7f: ; 0x1bcc7f
	db "@"
; 0x1bcc80

UnknownText_0x1bcc80: ; 0x1bcc80
	text ""
	line "is cute."
	done
; 0x1bcc8b

UnknownText_0x1bcc8b: ; 0x1bcc8b
	text ""
	line "is sort of lazy."
	done
; 0x1bcc9e

UnknownText_0x1bcc9e: ; 0x1bcc9e
	text ""
	line "is always happy."
	done
; 0x1bccb1

UnknownText_0x1bccb1: ; 0x1bccb1
	text ""
	line "is quite noisy."
	done
; 0x1bccc3

UnknownText_0x1bccc3: ; 0x1bccc3
	text ""
	line "is precocious."
	done
; 0x1bccd4

UnknownText_0x1bccd4: ; 0x1bccd4
	text ""
	line "is somewhat bold."
	done
; 0x1bcce8

UnknownText_0x1bcce8: ; 0x1bcce8
	text ""
	line "is too picky!"
	done
; 0x1bccf8

UnknownText_0x1bccf8: ; 0x1bccf8
	text ""
	line "is sort of OK."
	done
; 0x1bcd09

UnknownText_0x1bcd09: ; 0x1bcd09
	text ""
	line "is just so-so."
	done
; 0x1bcd1a

UnknownText_0x1bcd1a: ; 0x1bcd1a
	text ""
	line "is actually great."
	done
; 0x1bcd2f

UnknownText_0x1bcd2f: ; 0x1bcd2f
	text ""
	line "is just my type."
	done
; 0x1bcd42

UnknownText_0x1bcd42: ; 0x1bcd42
	text ""
	line "is so cool, no?"
	done
; 0x1bcd54

UnknownText_0x1bcd54: ; 0x1bcd54
	text ""
	line "is inspiring!"
	done
; 0x1bcd64

UnknownText_0x1bcd64: ; 0x1bcd64
	text ""
	line "is kind of weird."
	done
; 0x1bcd78

UnknownText_0x1bcd78: ; 0x1bcd78
	text ""
	line "is right for me?"
	done
; 0x1bcd8b

UnknownText_0x1bcd8b: ; 0x1bcd8b
	text ""
	line "is definitely odd!"
	done
; 0x1bcda0

UnknownText_0x1bcda0: ; 0x1bcda0
	text ""
	line "@"
	text_from_ram StringBuffer1
	db "@"
; 0x1bcda7

UnknownText_0x1bcda7: ; 0x1bcda7
	db "@"
; 0x1bcda8

UnknownText_0x1bcda8: ; 0x1bcda8
	text ""
	line "<...> <...>Ahem, we are"
	done
; 0x1bcdba

UnknownText_0x1bcdba: ; 0x1bcdba
	text ""
	line "Team Rocket!"
	done
; 0x1bcdc9

UnknownText_0x1bcdc9: ; 0x1bcdc9
	text ""
	line "After three months"
	done
; 0x1bcddd

UnknownText_0x1bcddd: ; 0x1bcddd
	text ""
	line "of preparation, we"
	done
; 0x1bcdf2

UnknownText_0x1bcdf2: ; 0x1bcdf2
	text ""
	line "have risen again"
	done
; 0x1bce05

UnknownText_0x1bce05: ; 0x1bce05
	text ""
	line "from the ashes!"
	done
; 0x1bce17

UnknownText_0x1bce17: ; 0x1bce17
	text ""
	line "Giovanni! @"
	interpret_data
	text "Can you"
	done
; 0x1bce2e

UnknownText_0x1bce2e: ; 0x1bce2e
	text ""
	line "hear?@"
	interpret_data
	text " We did it!"
	done
; 0x1bce44

UnknownText_0x1bce44: ; 0x1bce44
	text ""
	line "@"
	interpret_data
	text "Where is our boss?"
	done
; 0x1bce5c

UnknownText_0x1bce5c: ; 0x1bce5c
	text ""
	line "@"
	interpret_data
	text "Is he listening?"
	done
; 0x1bce72

UnknownText_0x1bce72: ; 0x1bce72
	text ""
	line "Buena: Buena here!"
	done
; 0x1bce87

UnknownText_0x1bce87: ; 0x1bce87
	text ""
	line "Today's password!"
	done
; 0x1bce9a

UnknownText_0x1bce9a: ; 0x1bce9a
	text ""
	line "Let me think<...> It's"
	done
; 0x1bceae

UnknownText_0x1bceae: ; 0x1bceae
	text ""
	line "@"
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1bceb7

UnknownText_0x1bceb7: ; 0x1bceb7
	text ""
	line "Don't forget it!"
	done
; 0x1bcec9

UnknownText_0x1bcec9: ; 0x1bcec9
	text ""
	line "I'm in Goldenrod's"
	done
; 0x1bcedc

UnknownText_0x1bcedc: ; 0x1bcedc
	text ""
	line "Radio Tower!"
	done
; 0x1bceeb

UnknownText_0x1bceeb: ; 0x1bceeb
	text ""
	line "Buena: Oh my<...>"
	done
; 0x1bcefb

UnknownText_0x1bcefb: ; 0x1bcefb
	text ""
	line "It's midnight! I"
	done
; 0x1bcf0d

UnknownText_0x1bcf0d: ; 0x1bcf0d
	text ""
	line "have to shut down!"
	done
; 0x1bcf22

UnknownText_0x1bcf22: ; 0x1bcf22
	text ""
	line "Thanks for tuning"
	done
; 0x1bcf36

UnknownText_0x1bcf36: ; 0x1bcf36
	text ""
	line "in to the end! But"
	done
; 0x1bcf4b

UnknownText_0x1bcf4b: ; 0x1bcf4b
	text ""
	line "don't stay up too"
	done
; 0x1bcf5e

UnknownText_0x1bcf5e: ; 0x1bcf5e
	text ""
	line "late! Presented to"
	done
; 0x1bcf73

UnknownText_0x1bcf73: ; 0x1bcf73
	text ""
	line "you by DJ Buena!"
	done
; 0x1bcf86

UnknownText_0x1bcf86: ; 0x1bcf86
	text "I'm outta here!"
	done
; 0x1bcf96

UnknownText_0x1bcf96: ; 0x1bcf96
	text "<...>"
	done
; 0x1bcf99

UnknownText_0x1bcf99: ; 0x1bcf99
	text ""
	line ""
	done
; 0x1bcf9c

_WhosThatPkmnText1:
	text ""
	line "It's time for"
	done

_WhosThatPkmnText2:
	text ""
	line "#mon Quiz!"
	done

_WhosThatPkmnText3:
	text ""
	line "With me, Mary!"
	done

_WhosThatPkmnText4:
	text ""
	line "Can you guess"
	done

_WhosThatPkmnText5:
	text ""
	line "what #mon this"
	done

_WhosThatPkmnText6:
	text ""
	line "is?"
	done

_WhosThatPkmnText7:
	text ""
	line $56, " ", $56, " ", $56
	done

_WhosThatPkmnText8:
	text ""
	line "Did you guess it?"
	done

_WhosThatPkmnText9:
	text ""
	line "é @"
	TX_RAM StringBuffer1
	text "!"
	done

UnknownText_0x1bcf9c: ; 0x1bcf9c
	text $3f
	line "ritira"
	cont "@"
	text_from_ram EnemyMonNick
	text "!"
	prompt
; 0x1bcfaf

UnknownText_0x1bcfaf: ; 0x1bcfaf
	text $3f
	line "usa @"
	text_from_ram wd050
	text $55
	db "su @"
	text_from_ram EnemyMonNick
	text "!"
	prompt
; 0x1bcfc7

UnknownText_0x1bcfc7: ; 0x1bcfc7
	text "Non puoi utiliz-"
	line "zarlo ora."
	prompt
; 0x1bcfe5

UnknownText_0x1bcfe5: ; 0x1bcfe5
	text "Non puoi mettere"
	line "questo strumento"
	cont "nello zaino."
	done
; 0x1bd009

UnknownText_0x1bd009: ; 0x1bd009
	text "@"
	text_from_ram StringBuffer1
	text ""
	line "é stato messo"
	cont "nello zaino."
	done
; 0x1bd029

UnknownText_0x1bd029: ; 0x1bd029
	text "Tempo restante"
	done
; 0x1bd039

UnknownText_0x1bd039: ; 0x1bd039
	text "I PS del #mon"
	line "sono stati ripri-"
	cont "stinati."
	prompt
; 0x1bd054

UnknownText_0x1bd054: ; 0x1bd054
	text "Teletrasportando<...>"
	done
; 0x1bd05e

UnknownText_0x1bd05e: ; 0x1bd05e
	text "Quale numero vuoi"
	line "sostituire?"
	done
; 0x1bd07f

UnknownText_0x1bd07f: ; 0x1bd07f
	text "Vuoi giocare con"
	line "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd09a

UnknownText_0x1bd09a: ; 0x1bd09a
	text "Ti servono due Po-"
	line "kémon da accoppia-"
	cont "re."
	prompt
; 0x1bd0bd

UnknownText_0x1bd0bd: ; 0x1bd0bd
	text "Non é possibile"
	line "accoppiare questi"
	cont "#mon."
	prompt
; 0x1bd0d8

UnknownText_0x1bd0d8: ; 0x1bd0d8
	text "La compatibilità"
	line "é @"
	deciram wd265, $13
	text "."
	cont "Devono accoppiar-"
	cont "si?"
	done
; 0x1bd109

UnknownText_0x1bd109: ; 0x1bd109
	text "Non c'é nessun"
	line "uovo."
	line $58
; 0x1bd11c

UnknownText_0x1bd11c: ; 0x1bd11c
	text "Sta per schiuder-"
	line "si!"
	prompt
; 0x1bd131

UnknownText_0x1bd131: ; 0x1bd131
	text "Vuoi testare"
	line "l'evento"
	cont "@"
	deciram StringBuffer2, $12
	text "?"
	done
; 0x1bd145

UnknownText_0x1bd145: ; 0x1bd145
	text "Ora!"
	done
; 0x1bd14d

UnknownText_0x1bd14d: ; 0x1bd14d
	text "Stop!"
	done
; 0x1bd153

UnknownText_0x1bd153: ; 0x1bd153
	text "Per un ragazzo!"
	done
; 0x1bd15f

UnknownText_0x1bd15f: ; 0x1bd15f
	text "Per una ragazza!"
	done
; 0x1bd16c

UnknownText_0x1bd16c: ; 0x1bd16c
	text "Non é adatto ad"
	line "un ragazzo!"
	done
; 0x1bd188

UnknownText_0x1bd188: ; 0x1bd188
	text "Il box é pieno!"
	done
; 0x1bd19a

UnknownText_0x1bd19a: ; 0x1bd19a
	text "é arrivata una"
	line "nuova carta"
	cont "da @"
	text_from_ram StringBuffer2
	text "."
	done
; 0x1bd1ba

UnknownText_0x1bd1ba: ; 0x1bd1ba
	text "Mettere la carta"
	line "nella cartella?"
	done
; 0x1bd1dd

UnknownText_0x1bd1dd: ; 0x1bd1dd
	text_from_ram StringBuffer2
	text "'s CARD was"
	line "listed as no.@"
	deciram StringBuffer1, $12
	text "."
	prompt
; 0x1bd201

UnknownText_0x1bd201: ; 0x1bd201
	text "Inizio collega-"
	line "mento."
	done
; 0x1bd211

UnknownText_0x1bd211: ; 0x1bd211
	text "Collegamento ter-"
	line "minato."
	done
; 0x1bd223

UnknownText_0x1bd223: ; 0x1bd223
	text "Terminando il"
	line "collegamento."
	done
; 0x1bd232

UnknownText_0x1bd232: ; 0x1bd232
	text "Vuoi annullare il"
	line "limite di tempo?"
	done
; 0x1bd249

UnknownText_0x1bd249: ; 0x1bd249
	text "Il limite di tempo"
	line "é stato eliminato."
	done
; 0x1bd266

UnknownText_0x1bd266: ; 0x1bd266
	text "Pick which packet"
	line "as an error?"
	done
; 0x1bd286

UnknownText_0x1bd286: ; 0x1bd286
	text "Scambio @"
	text_from_ram StringBuffer2
	text ""
	line "per @"
	text_from_ram StringBuffer1
	text "<...>"
	done
; 0x1bd2a0

UnknownText_0x1bd2a0: ; 0x1bd2a0
	text "Ottieni la"
	line "Medaglia Voltorb!"
	done
; 0x1bd2bc

UnknownText_0x1bd2bc: ; 0x1bd2bc
	text "A che piano?"
	done
; 0x1bd2ca

UnknownText_0x1bd2ca: ; 0x1bd2ca
	text "Annunciatore:"
	line "Basta!"

	para "Il tempo é"
    line "scaduto!"
	done
; 0x1bd2e7

UnknownText_0x1bd2e7: ; 0x1bd2e7
	text "Annunciatore: La"
	line "gara é finita!"
	done
; 0x1bd308

UnknownText_0x1bd308: ; 0x1bd308
	text "é finito l'effetto"
	line "del Repellente."
	done
; 0x1bd321

_UseAnotherRepelText:
	text "é finito l'effetto"
	line "del Repellente."

	para "Vuoi usarne un"
	line "altro?"
	done

UnknownText_0x1bd321: ; 0x1bd321
	text $52, " trova"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done
; 0x1bd331

UnknownText_0x1bd331: ; 0x1bd331
	text "Ma ", $52, " non"
	line "ha altro spazio<...>"
	done
; 0x1bd34b

UnknownText_0x1bd34b: ; 0x1bd34b
	text "Ho appena visto un"
	line "@"
	text_from_ram StringBuffer1
	text " raro in"
	cont "@"
	text_from_ram StringBuffer2
	text "."

	para "Ti richiamo appena"
	line "vedo un altro"
	cont "#mon raro, ok?"
	prompt
; 0x1bd39e

UnknownText_0x1bd39e: ; 0x1bd39e
	text "Salvataggio<...>"
	line "Non spegnere!"
	done
; 0x1bd3be

UnknownText_0x1bd3be: ; 0x1bd3be
	text_from_ram PlayerName
	text " riceve"
	line "@"
	text_from_ram StringBuffer1
	text "!@"
	sound0x0F
	text_waitsfx
	db "@"
; 0x1bd3d6

UnknownText_0x1bd3d6: ; 0x1bd3d6
	db "@"
; 0x1bd3d7

UnknownText_0x1bd3d7: ; 0x1bd3d7
	text "Non hai gettoni."
	prompt
; 0x1bd3eb

UnknownText_0x1bd3eb: ; 0x1bd3eb
	text "Non hai un"
	line "salvadanaio."
	prompt
; 0x1bd407

UnknownText_0x1bd407: ; 0x1bd407
	text "Va bene, inizia a"
	line "collegare il Cavo"
	cont "Game Link."
	prompt
; 0x1bd429

UnknownText_0x1bd429: ; 0x1bd429
	text $52, " scambia"
	line "@"
	text_from_ram wd050
	text " per", $55
	db "@"
	text_from_ram StringBuffer2
	text ".@"
	db "@"
; 0x1bd445

UnknownText_0x1bd445: ; 0x1bd445
	sound0x0A
	interpret_data
	db "@"
; 0x1bd448

UnknownText_0x1bd448: ; 0x1bd448
	db "@"
; 0x1bd449

UnknownText_0x1bd449: ; 0x1bd449
	text "Collezionare #-"
	line "mon é la mia"
	cont "passione."
	para "Non é che avresti"
	line "@"
	text_from_ram StringBuffer1
	text "?"

	para "Vorresti scambiar-"
	line "lo con il mio "
	cont "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd48c

UnknownText_0x1bd48c: ; 0x1bd48c
	text "Non ti va?"
	line "Oh, va bene<...>"
	done
; 0x1bd4aa

UnknownText_0x1bd4aa: ; 0x1bd4aa
	text "Eh? Ma non é"
	line "@"
	text_from_ram StringBuffer1
	text ". "
	cont "Che delusione<...>"
	done
; 0x1bd4d2

UnknownText_0x1bd4d2: ; 0x1bd4d2
	text "Grande! Adesso ho"
	line "@"
	text_from_ram StringBuffer1
	text "!"
	cont "Grazie!"
	done
; 0x1bd4f4

UnknownText_0x1bd4f4: ; 0x1bd4f4
	text "Ciao! Come sta il"
	line "mio vecchio"
	cont "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd512

UnknownText_0x1bd512: ; 0x1bd512
	text "Ciao, sto cercando"
	line "questo #mon."

	para "Se avessi un"
	line "@"
	text_from_ram StringBuffer1
	text ", ti"

	para "andrebbe di scam-"
	line "biarlo per il mio" 
	cont "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd565

UnknownText_0x1bd565: ; 0x1bd565
	text "Non lo hai nemmeno"
	line "tu, vero?"

	para "Peccato, ci avevo"
	line "sperato<...>"
	done
; 0x1bd5a1

UnknownText_0x1bd5a1: ; 0x1bd5a1
	text "Non hai un"
	line "@"
	text_from_ram StringBuffer1
	text "? é un"
	cont "peccato, ma vabbé."
	done
; 0x1bd5cc

UnknownText_0x1bd5cc: ; 0x1bd5cc
	text "Grande! Grazie!"

	para "Finalmente ho un"
	line "@"
	text_from_ram StringBuffer1
	text "."
	done
; 0x1bd5f4

UnknownText_0x1bd5f4: ; 0x1bd5f4
	text "Ehi! Il @"
	text_from_ram wd050
	text ""
	line "che mi hai scam-"
	cont "biato se la cava"
	cont "davvero bene!"
	done
; 0x1bd621

UnknownText_0x1bd621: ; 0x1bd621
	text_from_ram wd050
	text " é davvero"
	line "dolce, ma non"
	cont "ce l'ho."

	para "Non avresti un"
	line "@"
	text_from_ram StringBuffer1
	text "?"

	para "Me lo daresti per"
	line "il mio @"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1bd673

UnknownText_0x1bd673: ; 0x1bd673
	text "Non vuoi fare a"
	line "cambio? Capisco<...>"
	done
; 0x1bd696

UnknownText_0x1bd696: ; 0x1bd696
	text "Non é"
	line "@"
	text_from_ram StringBuffer1
	text "."

	para "Per favore, se ne"
	line "trovi uno, scam-"
	cont "bialo con me."
	done
; 0x1bd6cd

UnknownText_0x1bd6cd: ; 0x1bd6cd
	text "Wow! Grazie mille!"
	line "Ho sempre voluto"
	cont "un @"
	text_from_ram wd050
	text "!"
	done
; 0x1bd6f5

UnknownText_0x1bd6f5: ; 0x1bd6f5
	text "Come sta quel"
	line "@"
	text_from_ram StringBuffer2
	text " che"
	cont "ti ho dato?"

	para "Il tuo @"
	text_from_ram wd050
	text " é"
	line "così dolce!"
	done
; 0x1bd731

UnknownText_0x1bd731: ; 0x1bd731
	text "Hm? Che succede?"
	done
; 0x1bd745

UnknownText_0x1bd745: ; 0x1bd745
	text "Gli scambi sono"
	line "davvero singolari<...>"

	para "Ho ancora molto"
	line "da imparare."
	done
; 0x1bd77f

UnknownText_0x1bd77f: ; 0x1bd77f
	text "<...>"

	para "Quindi stai per"
	line "partire per un"
	cont "viaggio<...>"

	para "Ok!"
	line "Darò una mano"
	cont "anch'io!"

	para "Ma cosa posso fare"
	line "per te?"

	para "Giusto! Posso con-"
	line "servare i tuoi"
	cont "soldi!"

	para "Nei lunghi viaggi,"
	line "i soldi sono im-"
	cont "portanti."

	para "Vuoi che conservi"
	line "i tuoi soldi?"
	done
; 0x1bd868

UnknownText_0x1bd868: ; 0x1bd868
	text "Ok, conserverò i"
	line "tuoi soldi."
	para $56, $56, $56
	prompt
; 0x1bd88e

UnknownText_0x1bd88e: ; 0x1bd88e
	text "Fa' attenzione."

	para "I #mon sono"
	line "tuoi amici. Agisci"
	cont "come se fossi in"
	cont "una squadra."

	para "Adesso vai!"
	done
; 0x1bd8da

UnknownText_0x1bd8da: ; 0x1bd8da
	text "Ehi, bentornato!"
	line "Ti stai impegnan-"
	cont "do, lo vedo."

	para "Ho tenuto la tua"
	line "camera pulita."

	para "O vuoi parlare di"
	line "soldi?"
	done
; 0x1bd942

UnknownText_0x1bd942: ; 0x1bd942
	text "Cosa vuoi fare?"
	done
; 0x1bd95b

UnknownText_0x1bd95b: ; 0x1bd95b
	text "Quanto vuoi che"
	line "conservi?"
	done
; 0x1bd97a

UnknownText_0x1bd97a: ; 0x1bd97a
	text "Quanto vuoi che"
	line "ti dia?"
	done
; 0x1bd999

UnknownText_0x1bd999: ; 0x1bd999
	text "Vuoi che conservi"
	line "i tuoi soldi?"
	done
; 0x1bd9ba

UnknownText_0x1bd9ba: ; 0x1bd9ba
	text "Non mi hai mai da-"
	line "to così tanto!"
	prompt
; 0x1bd9d7

UnknownText_0x1bd9d7: ; 0x1bd9d7
	text "é meglio che non"
	line "porti con te così"
	cont "tanti soldi!"
	prompt
; 0x1bd9f1

UnknownText_0x1bd9f1: ; 0x1bd9f1
	text "Non hai così tan-"
	line "ti soldi."
	prompt
; 0x1bda0b

UnknownText_0x1bda0b: ; 0x1bda0b
	text "Non posso conser-"
	line "varti tutti quei"
	cont "soldi!"
	prompt
; 0x1bda25

UnknownText_0x1bda25: ; 0x1bda25
	text "Ok, conserverò i"
	line "tuoi soldi."
	cont "Fidati di me!"

	para $52, ", ce la"
	line "puoi fare!"
	done
; 0x1bda5b

UnknownText_0x1bda5b: ; 0x1bda5b
	text "I tuoi soldi sono"
	line "al sicuro qui!"
	done
; 0x1bda7e

UnknownText_0x1bda7e: ; 0x1bda7e
	text $52, ", non"
	line "arrenderti!"
	done
; 0x1bda90

UnknownText_0x1bda90: ; 0x1bda90
	text "Non strafare."
	done
; 0x1bdaa7

UnknownText_0x1bdaa7: ; 0x1bdaa7
	text ""
	done
; 0x1bdaa9

UnknownText_0x1bdaa9: ; 0x1bdaa9
	text "Sono l'anziano"
	line "della pensione."

	para "Vuoi che"
	line "allevi uno dei" 
	cont "tuoi #mon?"
	done
; 0x1bdad8

UnknownText_0x1bdad8: ; 0x1bdad8
	text "Sono l'anziano"
	line "della pensione."

	para "Hai mai sentito"
	line "parlare delle"
	cont "uova #mon?"

	para "Stavo allevando"
	line "dei #mon con"
	cont "mia moglie, come"
    cont "al solito."

	para "Ci impressionammo"
	line "moltissimo quando"
	cont "trovammo un uovo!"

	para "È incredibile,"
	line "vero?"

	para "Allora, vuoi che"
	line "allevi uno dei" 
	cont "tuoi #mon?"
	done
; 0x1bdb85

UnknownText_0x1bdb85: ; 0x1bdb85
	text "Sono l'anziana"
	line "della pensione."

	para "Vuoi che allevi"
	line "uno dei tuoi" 
	cont "#mon?"
	done
; 0x1bdbbb

UnknownText_0x1bdbbb: ; 0x1bdbbb
	text "Sono l'anziana"
	line "della pensione."
	
	para "Hai mai sentito"
	line "parlare delle"
	cont "uova #mon?"

	para "Stavo allevando"
	line "dei #mon con"
	cont "mio marito, quan-"
    cont "do all'improvviso"
	cont "ne abbiamo trovato"
	cont "uno!"

	para "Incredibile, vero?"

	para "Allora, vuoi che"
	line "allevi uno dei" 
	cont "tuoi #mon?"
	done
; 0x1bdc79

UnknownText_0x1bdc79: ; 0x1bdc79
	text "Quale dovrei"
	line "allevare?"
	prompt
; 0x1bdc97

UnknownText_0x1bdc97: ; 0x1bdc97
	text "Oh? Ma hai sola-"
	line "mente un #mon."
	prompt
; 0x1bdcb8

UnknownText_0x1bdcb8: ; 0x1bdcb8
	text "Mi spiace, ma non"
	line "posso accettare"
	cont "un uovo."
	prompt
; 0x1bdcda

UnknownText_0x1bdcda: ; 0x1bdcda
	text "Togli la lettera"
	line "prima di consegna-"
	cont "rmelo."
	prompt
; 0x1bdcff

UnknownText_0x1bdcff: ; 0x1bdcff
	text "Se mi dai quel"
	line "#mon, con cosa"
	cont "andrai a combatte-"
	cont "re poi?"
	prompt
; 0x1bdd30

UnknownText_0x1bdd30: ; 0x1bdd30
	text "Ok. Alleverò il"
	line "tuo @"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x1bdd4b

UnknownText_0x1bdd4b: ; 0x1bdd4b
	text "Ritorna più tardi."
	done
; 0x1bdd64

UnknownText_0x1bdd64: ; 0x1bdd64
	text "Siamo dei geni o"
	line "cosa? Vuoi vedere"
	cont "@"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1bdd96

UnknownText_0x1bdd96: ; 0x1bdd96
	text "@"
	text_from_ram StringBuffer1
	text ""
	line "é cresciuto molto."

	para "é salito di @"
	deciram StringBuffer2 + 1, $13
	text "."

	para "Se rivuoi il tuo"
	line "#mon, ti verrà"
	cont "a fare ¥@"
	deciram StringBuffer2 + 2, $34
	text "."
	done
; 0x1bde04

UnknownText_0x1bde04: ; 0x1bde04
	text "Ottimo! Ecco il"
	line "tuo #mon."
	prompt
; 0x1bde1f

UnknownText_0x1bde1f: ; 0x1bde1f
	text $52, " ha"
	line "@"
	text_from_ram StringBuffer1
	text "."
	prompt
; 0x1bde32

UnknownText_0x1bde32: ; 0x1bde32
	text "Uh? Rieccoti."
	line "Il tuo @"
	text_from_ram StringBuffer1
	text $51
	db "ha bisogno di un"
	line "altro po' di"
	cont "tempo."

	para "Se rivuoi il tuo"
	line "#mon, ti verrà"
	cont "a fare ¥100."
	done
; 0x1bdea2

UnknownText_0x1bdea2: ; 0x1bdea2
	text "Non hai spazio in"
	line "squadra."
	prompt
; 0x1bdebc

UnknownText_0x1bdebc: ; 0x1bdebc
	text "Non hai abbastanza"
	line "soldi."
	prompt
; 0x1bded9

UnknownText_0x1bded9: ; 0x1bded9
	text "Oh, bene allora."
	prompt
; 0x1bdee9

UnknownText_0x1bdee9: ; 0x1bdee9
	text "Torna a trovarci."
	done
; 0x1bdef6

UnknownText_0x1bdef6: ; 0x1bdef6
	text "Non ancora<...>"
	done
; 0x1bdf00

UnknownText_0x1bdf00: ; 0x1bdf00
	text "Ah, sei tu!"

	para "Stavamo allevando"
	line "i tuoi #mon,"
    cont "quando a un certo"
	cont "punto, che sor-"
	cont "presa!"

	para "Abbiamo trovato un"
	line "uovo vicino ai"
	cont "tuoi #mon!"

	para "Non abbiamo idea"
	line "di come ci sia"
    cont "finito, ma sta di"
	cont "fatto che c'é!"
	
	para "Allora, lo vuoi?"
	done
; 0x1bdfa5

UnknownText_0x1bdfa5: ; 0x1bdfa5
	text $52, " riceve"
	line "l'uovo dalla"
	cont "pensione!"
	done
; 0x1bdfba

UnknownText_0x1bdfba: ; 0x1bdfba
	text "Abbine cura."
	done
; 0x1bdfd1

UnknownText_0x1bdfd1: ; 0x1bdfd1
	text "Bene, allora."
	line "Grazie!"
	done
; 0x1bdff2

UnknownText_0x1bdff2: ; 0x1bdff2
	text "Non hai spazio"
	line "con te."
	cont "Torna un'altra"
	cont "volta."
	done
; 0x1be024

UnknownText_0x1be024: ; 0x1be024
	text "A quale #mon"
	line "devo fare una"
	cont "bella foto?"
	prompt
; 0x1be047

UnknownText_0x1be047: ; 0x1be047
	text "Ook! Stai fermo"
	line "così<...>"
	prompt
; 0x1be06a

UnknownText_0x1be06a: ; 0x1be06a
	text "Ecco fatto!"
	line "Tutto é filato"
	cont "liscio."
	cont "Torna pure, ok?"
	done
; 0x1be08d
