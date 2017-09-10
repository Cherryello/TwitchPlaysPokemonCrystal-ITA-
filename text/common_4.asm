_OakText6: ; 0x1c4000
	text "E come hai detto"
	line "di chiamarti?"
	prompt
; 0x1c4026

_OakText7: ; 0x1c4026
	text "Bene, <PLAYER>!"

	para "Stai per scrivere"
	line "la tua personalis-"
	cont "sima avventura nel"
	cont "mondo dei #mon."

	para "Vivrai esperienze"
	line "divertenti e"
	cont "affronterai dure"
	cont "battaglie."

	para "Ti attende un mon-"
	line "do di sogni e"
	cont "avventure con i"
	cont "#mon."

	para "Cosa aspetti?"

	para "Ci vediamo"
	line "tra poco!"
	done
; 0x1c40e6

_OakText8:
	text "Ah, allora ti"
	line "chiami <PLAYER>!"
	prompt

_OakText9:
	text "Questo é il tuo"
	line "migliore amico."

	para "È il tuo rivale da"
	line "quando eravate"
	cont "solo dei bambini."

	para "Ricordi ancora il"
	line "suo nome, vero?"
	done

_OakText10:
	text "Assolutamente!"
	line "Il suo nome"
	cont "é <GREEN>!"
	prompt

_OakText9F:
	text "Lei é la tua"
	line "migliore amica."

	para "È la tua rivale da"
	line "quando eravate"
	cont "solo dei bambini."

	para "Ricordi ancora il"
	line "suo nome, vero?"
	done

_OakText10F:
	text "Assolutamente!"
	line "Il suo nome"
	cont "é <GREEN>!"
	prompt

UnknownText_0x1c40e6: ; 0x1c40e6
	text "L'ora potrebbe"
	line "essere sbagliata."

	para "Regola di nuovo"
	line "l'orologio."
	prompt
; 0x1c411c

UnknownText_0x1c411c: ; 0x1c411c
	text "Regola con la"
	line "pulsantiera di"
	cont "comando."

	para "Conferma: A"
	line "Annulla: B"
	done
; 0x1c415b

UnknownText_0x1c415b: ; 0x1c415b
	text "Va bene?"
	done
; 0x1c4168

UnknownText_0x1c4168: ; 0x1c4168
	text "Hai regolato"
	line "l'orologio."
	done
; 0x1c4183

UnknownText_0x1c4183: ; 0x1c4183
	text "é passato troppo"
	line "tempo. Riprova."
	prompt
; 0x1c41b1

UnknownText_0x1c41b1: ; 0x1c41b1
	text "Se scambi questo"
	line "#mon, dopo non"
	cont "potrai lottare."
	prompt
; 0x1c41e6

UnknownText_0x1c41e6: ; 0x1c41e6
	text "Il"
	line "@"
	text_from_ram StringBuffer1
	text " del tuo"
	cont "amico pare sia"
	cont "anomalo!"
	prompt
; 0x1c4212

UnknownText_0x1c4212: ; 0x1c4212
	text "Scambi @"
	text_from_ram wd004
	text ""
	line "per @"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1c422a

UnknownText_0x1c422a: ; 0x1c422a
	text "To enter a mobile"
	line "battle, you must"

	para "pick a team of"
	line "three #mon."

	para "Is that OK?"
	done
; 0x1c4275

UnknownText_0x1c4275: ; 0x1c4275
	text "Need more info on"
	line "mobile battles?"
	done
; 0x1c4298

UnknownText_0x1c4298: ; 0x1c4298
	text "For a mobile"
	line "battle, choose"
	cont "three #mon."

	para "The maximum daily"
	line "play time is ten"

	para "minutes for each"
	line "linked player."

	para "If a battle isn't"
	line "finished within"

	para "the time limit,"
	line "the player with"

	para "the fewest fainted"
	line "#mon wins."

	para "If tied, the team"
	line "that lost the"

	para "least amount of HP"
	line "wins."
	done
; 0x1c439c

UnknownText_0x1c439c: ; 0x1c439c
	text "Today's remaining"
	line "time is @"
	deciram StringBuffer2, $12
	text " min."

	para "Would you like to"
	line "battle?"
	done
; 0x1c43dc

UnknownText_0x1c43dc: ; 0x1c43dc
	text "There are only @"
	deciram StringBuffer2, $12
	text ""
	line "min. left today."

	para "Want a quick"
	line "battle?"
	done
; 0x1c4419

UnknownText_0x1c4419: ; 0x1c4419
	text "There is only"
	line "1 min. left today!"

	para "Want to rush"
	line "through a battle?"
	done
; 0x1c445a

UnknownText_0x1c445a: ; 0x1c445a
	text "There is less than"
	line "1 min. left today!"

	para "Please try again"
	line "tomorrow."
	done
; 0x1c449c

UnknownText_0x1c449c: ; 0x1c449c
	text "Try again using"
	line "the same settings?"
	done
; 0x1c44c0

UnknownText_0x1c44c0: ; 0x1c44c0
	text "There is less than"
	line "1 min. left today!"
	done
; 0x1c44e7

UnknownText_0x1c44e7: ; 0x1c44e7
	text "No time left for"
	line "linking today."
	done
; 0x1c4508

UnknownText_0x1c4508: ; 0x1c4508
	text "Pick three #mon"
	line "for battle."
	done
; 0x1c4525

UnknownText_0x1c4525: ; 0x1c4525
	text "Today's remaining"
	line "time is @"
	deciram StringBuffer2, $12
	text " min."
	done
; 0x1c454b

UnknownText_0x1c454b: ; 0x1c454b
	text "Vuoi salvare il"
	line "gioco?"
	done
; 0x1c456d

UnknownText_0x1c456d: ; 0x1c456d
	text "Salvataggio<...>"
	line "Non spegnere."
	done
; 0x1c4590

UnknownText_0x1c4590: ; 0x1c4590
	text $52, " ha"
	line "salvato il gioco."
	done
; 0x1c45a3

UnknownText_0x1c45a3: ; 0x1c45a3
	text "C'é già un gioco"
	line "salvato in"
	cont "memoria. Vuoi"
	cont "sostituirlo?"
	done
; 0x1c45d9

UnknownText_0x1c45d9: ; 0x1c45d9
	text "C'é già un gioco"
	line "salvato in"
	cont "memoria. Vuoi"
	cont "sostituirlo?"
	done
; 0x1c460d

UnknownText_0x1c460d: ; 0x1c460d
	text "Il salvataggio"
	line "é corrotto!"
	prompt
; 0x1c462a

UnknownText_0x1c462a: ; 0x1c462a
	text "Quando cambi"
	line "box, i dati"
	cont "vengono salvati."
	cont "Va bene?"
	done
; 0x1c465f

UnknownText_0x1c465f: ; 0x1c465f
	text "Quando cambi"
	line "box, i dati"
	cont "vengono salvati."
	cont "Va bene?"
	done
; 0x1c4693

_Text_DeleteBox:
	text "Quando liberi un"
	line "intero box, i dati"
	cont "vengono salvati."
	cont "Va bene?"
	done

UnknownText_0x1c4693: ; 0x1c4693
	text "La finestra dell'"
	line "area di salvatag-"
	cont "gio é troppo"
	cont "grande."
	done
; 0x1c46b7

UnknownText_0x1c46b7: ; 0x1c46b7
	text "Nessuna finestra"
	line "disponibile."
	done
; 0x1c46dc

UnknownText_0x1c46dc: ; 0x1c46dc
	text "Evento corrotto!"
	prompt
; 0x1c46ee

_ObjectEventText:: ; 0x1c46ee
	text "Oggetto evento"
	done
; 0x1c46fc

UnknownText_0x1c46fc:: ; 0x1c46fc
	text "Sfondo evento"
	done
; 0x1c4706

UnknownText_0x1c4706:: ; 0x1c4706
	text "Coordinate evento"
	done
; 0x1c4719

UnknownText_0x1c4719:: ; 0x1c4719
	text $52, " riceve"
	line "@"
	text_from_ram StringBuffer4
	text "."
	done

MultipleGetItemText::
	text $52, " riceve"
	line "@"
	deciram wd10c, $13
	text " @"
	text_from_ram StringBuffer4
	text "."
	done
; 0x1c472c

UnknownText_0x1c472c:: ; 0x1c472c
	text $52, " mette"
	line "@"
	text_from_ram StringBuffer1
	text " nella"
	cont "@"
	text_from_ram StringBuffer3
	text "."
	prompt
; 0x1c474b

UnknownText_0x1c474b:: ; 0x1c474b
	text "La @"
	text_from_ram StringBuffer3
	text ""
	line "é piena<...>"
	prompt
; 0x1c475f

UnknownText_0x1c475f: ; 0x1c475f
	text "Io vedo ogni cosa."
	line "Io comprendo ogni"
	cont "cosa<...>"

	para "Ovviamente, anche"
	line "dei tuoi #mon!"
	done
; 0x1c4797

UnknownText_0x1c4797: ; 0x1c4797
	text "Cosaaa!? Non ci"
	line "capisco niente!"

	para "Com'é possibile?!"
	done
; 0x1c47d4

UnknownText_0x1c47d4: ; 0x1c47d4
	text "Hm<...> Vedo che"
	line "hai incontrato"
	cont "@"
	text_from_ram wd003
	text " qui:"
	cont "@"
	text_from_ram wd00e
	text "!"
	prompt
; 0x1c47fa

UnknownText_0x1c47fa: ; 0x1c47fa
	text "Erano le"
	line "@"
	text_from_ram wd01f
	text "!"

	para "Era al livello @"
	text_from_ram wd036
	text "!"

	para "Sono troppo bravo,"
	line "eh?"
	prompt
; 0x1c4837

UnknownText_0x1c4837: ; 0x1c4837
	text "Hm<...> @"
	text_from_ram wd003
	text ""
	line "viene da @"
	text_from_ram wd02a
	text $55
	db "da uno scambio?"

	para "@"
	text_from_ram wd00e
	text ""
	line "era dove @"
	text_from_ram wd02a
	text $55
	db "trovato @"
	text_from_ram wd003
	text "!"
	prompt
; 0x1c487f

UnknownText_0x1c487f: ; 0x1c487f
	para "Cosa!?"
	
	para "Incredibile!"

	para "Non capisco come,"
	line "ma é assolutamente"

	para "incredibile!"
	line "Sei speciale."

	para "Non riesco a vede-"
	line "re dove lo hai in-"
	cont "contrato per la"
    cont "prima volta, ma"
	cont "era al livello @"
	text_from_ram wd036
	text "."

	para "Sono troppo bravo,"
	line "eh?"
	prompt
; 0x1c491d

UnknownText_0x1c491d: ; 0x1c491d
	text "Ehi!"

	para "Quello é un uovo!"

	para "Non puoi ancora di-"
	line "re che lo hai"
	cont "incontrato<...>"
	done
; 0x1c4955

UnknownText_0x1c4955: ; 0x1c4955
	text "Hahaha! Ho già"
	line "previsto che non"
	cont "avresti accettato!"
	done
; 0x1c497a

UnknownText_0x1c497a: ; 0x1c497a
	text "Per quel che vedo<...>"

	para "Sarebbe saggio"
	line "allevare il tuo"

	para "#mon con un po'"
	line "più di attenzione."
	done
; 0x1c49c6

UnknownText_0x1c49c6: ; 0x1c49c6
	text "Per quel che vedo<...>"

	para "Sembra sia cre-"
	line "sciuto un po'."

	para "@"
	text_from_ram wd003
	text " sembra"
	line "si stia affezio-"
	cont "nando un po' di"
	cont "più."
	done
; 0x1c4a21

UnknownText_0x1c4a21: ; 0x1c4a21
	text "Per quel che vedo<...>"

	para "@"
	text_from_ram wd003
	text " é"
	line "cresciuto. Sta"
	cont "diventando sicura-"
	cont "mente più forte."
	done
; 0x1c4a5b

UnknownText_0x1c4a5b: ; 0x1c4a5b
	text "Per quel che vedo<...>"

	para "È cresciuto sano"
	line "e forte soprattut-"
	cont "to!"

	para "Questo @"
	text_from_ram wd003
	text ""
	line "deve aver affron-"

	para "tato numerose"
	line "battaglie."

	para "Sembra molto sicu-"
	line "ro di sé."
	done
; 0x1c4ae5

UnknownText_0x1c4ae5: ; 0x1c4ae5
	text "Per quel che vedo<...>"

	para "Sono davvero stu-"
	line "pito per le cure"
	cont "che hai riservato"
	cont "a questo #mon."

	para "Era da veramente"
	line "molto tempo che"

	para "non vedevo un"
	line "#mon forte come"
	cont "questo @"
	text_from_ram wd003
	text "."

	para "Sono certo che"
	line "vedere @"
	text_from_ram wd003
	text $51
	db "in una lotta fa-"
	line "rebbe emozionare"
	cont "chiunque."
	done
; 0x1c4b92

UnknownText_0x1c4b92: ; 0x1c4b92
	text "Congratulazioni!"
	line "Il tuo @"
	text_from_ram StringBuffer2
	db "@"
; 0x1c4bae

UnknownText_0x1c4bae: ; 0x1c4bae
	db "@"
; 0x1c4baf

UnknownText_0x1c4baf: ; 0x1c4baf
	text $51
	db "si é evoluto in"
	line "@"
	text_from_ram StringBuffer1
	text "!"
	done
; 0x1c4bc5

UnknownText_0x1c4bc5: ; 0x1c4bc5
	text "Oh? @"
	text_from_ram StringBuffer2
	text ""
	line "ha smesso di"
	cont "evolversi."
	prompt
; 0x1c4be3

UnknownText_0x1c4be3: ; 0x1c4be3
	text "Cosa? @"
	text_from_ram StringBuffer2
	text ""
	line "si sta evolvendo!"
	done
; 0x1c4bfd

UnknownText_0x1c4bfd: ; 0x1c4bfd
	text "Quanti?"
	done
; 0x1c4c08

UnknownText_0x1c4c08: ; 0x1c4c08
	deciram wd10c, $12
	text " @"
	text_from_ram StringBuffer2
	text ""
	line "in tutto fa"
	cont "¥@"
	deciram $ffc3, $36
	text "."
	done
; 0x1c4c28

UnknownText_0x1c4c28: ; 0x1c4c28
	text "Ciao, tesorino."

	para "Io vendo erbe"
	line "medicinali a buon"
	cont "prezzo."

	para "Sono efficaci, ma"
	line "sono un po' amare."

	para "I tuoi #mon"
	line "potrebbero non"
	cont "apprezzarle."

	para "Hehehehe<...>"
	done
; 0x1c4ca3

UnknownText_0x1c4ca3: ; 0x1c4ca3
	text "Quanti?"
	done
; 0x1c4cae

UnknownText_0x1c4cae: ; 0x1c4cae
	deciram wd10c, $12
	text " @"
	text_from_ram StringBuffer2
	text ""
	line "ti verrà a fare"
	cont "¥@"
	deciram $ffc3, $36
	text "."
	done
; 0x1c4cce

UnknownText_0x1c4cce: ; 0x1c4cce
	text "Grazie, tesorino."
	line "Hehehehe<...>"
	done
; 0x1c4cea

UnknownText_0x1c4cea: ; 0x1c4cea
	text "Oh? Il tuo zaino"
	line "é pieno, tesorino."
	done
; 0x1c4d08

UnknownText_0x1c4d08: ; 0x1c4d08
	text "Hehehe<...> Non hai"
	line "abbastanza soldi."
	done
; 0x1c4d2a

UnknownText_0x1c4d2a: ; 0x1c4d2a
	text "Torna a farmi"
	line "visita, tesorino."
	cont "Hehehehe<...>"
	done
; 0x1c4d47

UnknownText_0x1c4d47: ; 0x1c4d47
	text "Ehi! Hai fiutato"
	line "qualche affare,"
	cont "non é vero?"

	para "Io vendo oggetti"
	line "rari che nessun"

	para "altro può offrir-"
	line "ti, ma potrò dar-"
	cont "tene solo uno per"
	cont "tipo."
	done
; 0x1c4db0

UnknownText_0x1c4db0: ; 0x1c4db0
	text_from_ram StringBuffer2
	text " viene"
	line "¥@"
	deciram $ffc3, $36
	text ". Ti interessa?"
	done
; 0x1c4dcd

UnknownText_0x1c4dcd: ; 0x1c4dcd
	text "Grazie."
	done
; 0x1c4dd6

UnknownText_0x1c4dd6: ; 0x1c4dd6
	text "Oh-oh, non hai"
	line "più spazio."
	done
; 0x1c4df7

UnknownText_0x1c4df7: ; 0x1c4df7
	text "Ne hai già compra-"
	line "ti abbastanza. Non"
	cont "ne ho altri."
	done
; 0x1c4e28

UnknownText_0x1c4e28: ; 0x1c4e28
	text "Oh-oh, non puoi"
	line "darmi così poco."
	done
; 0x1c4e46

UnknownText_0x1c4e46: ; 0x1c4e46
	text "Torna a farmi"
	line "visita."
	done
; 0x1c4e5f

UnknownText_0x1c4e5f: ; 0x1c4e5f
	text "Cosa c'é? Ti serve"
	line "qualche medicina?"
	done
; 0x1c4e7e

UnknownText_0x1c4e7e: ; 0x1c4e7e
	text "Quanti?"
	done
; 0x1c4e89

UnknownText_0x1c4e89: ; 0x1c4e89
	deciram wd10c, $12
	text " @"
	text_from_ram StringBuffer2
	text "verranno ¥@"
	deciram $ffc3, $36
	text "."
	done
; 0x1c4eab

UnknownText_0x1c4eab: ; 0x1c4eab
	text "Grazie mille!"
	done
; 0x1c4eb9

UnknownText_0x1c4eb9: ; 0x1c4eb9
	text "Non hai più"
	line "spazio."
	done
; 0x1c4ed8

UnknownText_0x1c4ed8: ; 0x1c4ed8
	text "Oh? Non sono"
	line "abbastanza."
	done
; 0x1c4ef6

UnknownText_0x1c4ef6: ; 0x1c4ef6
	text "Perfetto."
	line "Ci vediamo."
	done
; 0x1c4f12

UnknownText_0x1c4f12: ; 0x1c4f12
	text "Non hai nulla da"
	line "poter vendere."
	prompt
; 0x1c4f33

UnknownText_0x1c4f33: ; 0x1c4f33
	text "Quanti?"
	done
; 0x1c4f3e

UnknownText_0x1c4f3e: ; 0x1c4f3e
	text "Posso darti"
	line "¥@"
	deciram $ffc3, $36
	text "."

	para "Va bene?"
	done
; 0x1c4f62

UnknownText_0x1c4f62: ; 0x1c4f62
	text "Benvenuto! Come"
	line "posso aiutarti?"
	done
; 0x1c4f80

UnknownText_0x1c4f80: ; 0x1c4f80
	text "Ecco a te."
	line "Grazie mille!"
	done
; 0x1c4f9a

UnknownText_0x1c4f9a: ; 0x1c4f9a
	text "Non hai abbastanza"
	line "soldi."
	done
; 0x1c4fb7

UnknownText_0x1c4fb7: ; 0x1c4fb7
	text "Non hai spazio per"
	line "altri strumenti."
	done
; 0x1c4fd7

UnknownText_0x1c4fd7: ; 0x1c4fd7
	text "Mi spiace, ma non"
	line "posso comprartelo."
	prompt
; 0x1c4ff9

UnknownText_0x1c4ff9: ; 0x1c4ff9
	text "Torna a trovarci!"
	done
; 0x1c500d

UnknownText_0x1c500d: ; 0x1c500d
	text "Cosa posso fare"
	line "per te?"
	done
; 0x1c502e

_Text_PremierBallBonus:
	text "Ricevi una"
	line "Premier Ball in"
	cont "omaggio!"
	done

UnknownText_0x1c502e: ; 0x1c502e
	text "Ecco ¥@"
	deciram $ffc3, $36
	text " per"
	line "@"
	text_from_ram StringBuffer2
	text "."
	done
; 0x1c5049

UnknownText_0x1c5049: ; 0x1c5049
	text "Quanti gettoni"
	line "scommetti?"
	done
; 0x1c505e

UnknownText_0x1c505e: ; 0x1c505e
	text "Start!"
	done
; 0x1c5066

UnknownText_0x1c5066: ; 0x1c5066
	text "Non hai abbastanza"
	line "gettoni."
	prompt
; 0x1c5079

UnknownText_0x1c5079: ; 0x1c5079
	text "Ahia<...> Hai finito"
	line "i gettoni<...>"
	done
; 0x1c5092

UnknownText_0x1c5092: ; 0x1c5092
	text "Vuoi continuare?"
	done
; 0x1c509f

UnknownText_0x1c509f: ; 0x1c509f
	text "in fila!"
	line "Hai vinto @"
	text_from_ram StringBuffer2
	text " gettoni!"
	done
; 0x1c50bb

UnknownText_0x1c50bb: ; 0x1c50bb
	text "Mannaggia!"
	done
; 0x1c50c2

_MobileStadiumEntryText: ; 0x1c50c2
	text "Data for use in"
	line "the MOBILE STADIUM"

	para "of the N64 #mon"
	line "STADIUM 2 can be"
	cont "read here."

	para "Read the data?"
	done
; 0x1c5121

_MobileStadiumSuccessText: ; 0x1c5121
	text "Data transfer is"
	line "complete.", $51
	db "We hope you enjoy"
	line "MOBILE STADIUM", $51
	db "battles in the N64"
	line "#mon STADIUM 2.", $51
	db $57
; 0x1c5182

UnknownText_0x1c5182: ; 0x1c5182
	text "Clock time unknown"
	done
; 0x1c5196

UnknownText_0x1c5196: ; 0x1c5196
	text "Delete the saved"
	line "LOG-IN PASSWORD?"
	done
; 0x1c51b9

UnknownText_0x1c51b9: ; 0x1c51b9
	text "Deleted the LOG-IN"
	line "PASSWORD."
	done
; 0x1c51d7

UnknownText_0x1c51d7: ; 0x1c51d7
	text "Scegli tre #mon"
	line "per lottare."
	prompt
; 0x1c51f4

UnknownText_0x1c51f4: ; 0x1c51f4
	text_from_ram wd006
	text ","
	line "@"
	text_from_ram wd00c
	text " e"
	cont "@"
	text_from_ram wd012
	text "."

	para "Usi questi tre?"
	done
; 0x1c521c

UnknownText_0x1c521c: ; 0x1c521c
	text "Possono partecipa-"
	line "re solo tre #-"
	cont "mon."
	prompt
; 0x1c5238

UnknownText_0x1c5238: ; 0x1c5238
	text "The CARD FOLDER"
	line "stores your and", $51
	db "your friends'"
	line "CARDS.", $51
	db "A CARD contains"
	line "information like", $51
	db "the person's name,"
	line "phone number and", $55
	db "profile.", $51
	db $57
; 0x1c52bc

UnknownText_0x1c52bc: ; 0x1c52bc
	text "This is your CARD.", $51
	db "Once you've"
	line "entered your phone", $51
	db "number, you can"
	line "trade CARDS with", $55
	db "your friends.", $51
	db $57
; 0x1c531e

UnknownText_0x1c531e: ; 0x1c531e
	text "If you have your"
	line "friend's CARD, you", $51
	db "can use it to make"
	line "a call from a", $51
	db "mobile phone on"
	line "the 2nd floor of a", $55
	db "#mon CENTER.", $51
	db $57
; 0x1c5394

UnknownText_0x1c5394: ; 0x1c5394
	text "To safely store"
	line "your collection of", $51
	db "CARDS, you must"
	line "set a PASSCODE for", $55
	db "your CARD FOLDER.", $51
	db $57
; 0x1c53ee

UnknownText_0x1c53ee: ; 0x1c53ee
	text "If the CARD FOLDER"
	line "is deleted, all"

	para "its CARDS and the"
	line "PASSCODE will also"
	cont "be deleted."

	para "Beware--a deleted"
	line "CARD FOLDER can't"
	cont "be restored."

	para "Want to delete"
	line "your CARD FOLDER?"
	done
; 0x1c5494

UnknownText_0x1c5494: ; 0x1c5494
	text "Are you sure you"
	line "want to delete it?"
	done
; 0x1c54b9

UnknownText_0x1c54b9: ; 0x1c54b9
	text "The CARD FOLDER"
	line "has been deleted.", $51
	db $57
; 0x1c54dd

UnknownText_0x1c54dd: ; 0x1c54dd
	text "There is an older"
	line "CARD FOLDER from a"
	cont "previous journey."

	para "Do you want to"
	line "open it?"
	done
; 0x1c552d

UnknownText_0x1c552d: ; 0x1c552d
	text "Delete the old"
	line "CARD FOLDER?"
	done
; 0x1c554a

UnknownText_0x1c554a: ; 0x1c554a
	text "Finish registering"
	line "CARDS?"
	done
; 0x1c5565

UnknownText_0x1c5565: ; 0x1c5565
	text "Huh? Sorry, wrong"
	line "number!"
	done
; 0x1c5580

UnknownText_0x1c5580: ; 0x1c5580
	text "Click!"
	done
; 0x1c5588

UnknownText_0x1c5588: ; 0x1c5588
	text "", $56, $57
; 0x1c558b

UnknownText_0x1c558b: ; 0x1c558b
	text "That number is out"
	line "of the area."
	done
; 0x1c55ac

UnknownText_0x1c55ac: ; 0x1c55ac
	text "Just go talk to"
	line "that person!"
	done
; 0x1c55ca

UnknownText_0x1c55ca: ; 0x1c55ca
	text "Grazie!"
	done
; 0x1c55d6

UnknownText_0x1c55d6: ; 0x1c55d6
	text "  :"
	done
; 0x1c55db

UnknownText_0x1c55db: ; 0x1c55db
	text "Password OK."
	line "Select CONTINUE &"
	cont "reset settings."
	prompt
; 0x1c560b

UnknownText_0x1c560b: ; 0x1c560b
	text "Password errata!"
	prompt
; 0x1c561c

UnknownText_0x1c561c: ; 0x1c561c
	text "Resettare l'ora?"
	done
; 0x1c562e

UnknownText_0x1c562e: ; 0x1c562e
	text "Inserisci la"
	line "password."
	done
; 0x1c564a

UnknownText_0x1c564a: ; 0x1c564a
	text "Vuoi eliminare"
	line "definitivamente la"
	cont "partita attuale?"
	done
; 0x1c5660

UnknownText_0x1c5660: ; 0x1c5660
	text_from_ram wd050
	text " impara"
	line "@"
	text_from_ram StringBuffer2
	text "!@"
	sound0
	text_waitsfx
	db "@"
; 0x1c5677

UnknownText_0x1c5677: ; 0x1c5677
	db "@"
; 0x1c5678

UnknownText_0x1c5678: ; 0x1c5678
	text "Quale mossa vuoi"
	line "che dimentichi?"
	done
; 0x1c5699

UnknownText_0x1c5699: ; 0x1c5699
	text "Bloccare l'appren-"
	line "dimento di"
	cont "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1c56af

UnknownText_0x1c56af: ; 0x1c56af
	text_from_ram wd050
	text ""
	line "non ha imparato"
	cont "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c56c9

UnknownText_0x1c56c9: ; 0x1c56c9
	text_from_ram wd050
	text " vorreb-"
	line "be imparare"
	cont "@"
	text_from_ram StringBuffer2
	text "."

	para "Ma conosce già"
	line "quattro mosse."

	para "Vuoi cancellare"
	line "una mossa e sosti-"
	cont "tuirla con"
	cont "@"
	text_from_ram StringBuffer2
	text "?"
	done
; 0x1c5740

UnknownText_0x1c5740: ; 0x1c5740
	text "1, 2 e<...>@"
	interpret_data
	db "@"
; 0x1c574d

UnknownText_0x1c574d: ; 0x1c574d
	db "@"
; 0x1c574e

UnknownText_0x1c574e: ; 0x1c574e
	text " Puf!@"
	interpret_data
	text $51
	db "@"
	text_from_ram wd050
	text " scorda"
	line "@"
	text_from_ram StringBuffer1
	text "."

	para "e al suo posto<...>"
	prompt
; 0x1c5772

UnknownText_0x1c5772: ; 0x1c5772
	text "Impossibile scor-"
	line "dare mosse MN ora."
	prompt
; 0x1c5793

UnknownText_0x1c5793: ; 0x1c5793
	text "Vuoi giocare tre"
	line "gettoni?"
	done
; 0x1c57ab

UnknownText_0x1c57ab: ; 0x1c57ab
	text "Non hai abbastanza"
	line "gettoni<...>"
	prompt
; 0x1c57be

UnknownText_0x1c57be: ; 0x1c57be
	text "Scegli una carta."
	done
; 0x1c57ce

UnknownText_0x1c57ce: ; 0x1c57ce
	text "Digita l'importo"
	line "della tua scommes-"
	cont "sa."
	done
; 0x1c57df

UnknownText_0x1c57df: ; 0x1c57df
	text "Vuoi continuare?"
	done
; 0x1c57f4

UnknownText_0x1c57f4: ; 0x1c57f4
	text "Le carte sono"
	line "state mischiate."
	prompt
; 0x1c5813

UnknownText_0x1c5813: ; 0x1c5813
	text "Evvai!"
	done
; 0x1c581a

UnknownText_0x1c581a: ; 0x1c581a
	text "Mannaggia<...>"
	done
; 0x1c5821

UnknownText_0x1c5821: ; 0x1c5821
	current_day
	db "@"
; 0x1c5823

UnknownText_0x1c5823: ; 0x1c5823
	db "@"
; 0x1c5824

UnknownText_0x1c5824: ; 0x1c5824
	text "", $56, $57
; 0x1c5827

UnknownText_0x1c5827: ; 0x1c5827
	text "Non c'é campo."
	prompt
; 0x1c5847

UnknownText_0x1c5847: ; 0x1c5847
	text "Chi vuoi chiamare?"
	done
; 0x1c5862

UnknownText_0x1c5862: ; 0x1c5862
	text "Premi un pulsante"
	line "per uscire."
	done
; 0x1c587d

UnknownText_0x1c587d: ; 0x1c587d
	text "Vuoi cancellare"
	line "questo numero?"
	done
; 0x1c589f

UnknownText_0x1c589f: ; 0x1c589f
	text "Quale prezzo"
	line "preferisci?"
	done
; 0x1c58bc

UnknownText_0x1c58bc: ; 0x1c58bc
	text_from_ram StringBuffer1
	text "?"
	line "Va bene?"
	done
; 0x1c58d1

UnknownText_0x1c58d1: ; 0x1c58d1
	text "Si parte!", $51
	db $57
; 0x1c58e0

UnknownText_0x1c58e0: ; 0x1c58e0
	text "Non hai abbastanza"
	line "punti.", $51
	db $57
; 0x1c58ff

UnknownText_0x1c58ff: ; 0x1c58ff
	text "Non hai abbastanza"
	line "spazio.", $51
	db $57
; 0x1c591a

UnknownText_0x1c591a: ; 0x1c591a
	text "Oh. Ritorna pure"
	line "quando vuoi!"
	done
; 0x1c5937

UnknownText_0x1c5937: ; 0x1c5937
	text "Ehm, ehi.", $51
	db $57
; 0x1c5944

UnknownText_0x1c5944: ; 0x1c5944
	;text "Excuse me." redundent
	;line "You're not ready.", $51
	;db $57
; 0x1c5962

UnknownText_0x1c5962: ; 0x1c5962
	text "Ritorna quando"
	line "sarai pronto."
	done
; 0x1c5983

UnknownText_0x1c5983: ; 0x1c5983
	text "Ti servono almeno"
	line "tre #mon.", $51
	db $57
; 0x1c59a3

UnknownText_0x1c59a3: ; 0x1c59a3
	text "Mi spiace, ma un"
	line "uovo non può"
	cont "partecipare.", $51
	db $57
; 0x1c59c3

UnknownText_0x1c59c3: ; 0x1c59c3
;	text "Only three #mon"
;	line "may be entered.", $51
;	db $57
; 0x1c59e5

UnknownText_0x1c59e5: ; 0x1c59e5
;	text "The @"
;	text_from_ram StringBuffer2
;	text " #mon"
;	line "must all be", $55
;	db "different kinds.", $51
;	db $57
; 0x1c5a13

UnknownText_0x1c5a13: ; 0x1c5a13
;	text "The @"
;	text_from_ram StringBuffer2
;	text " #mon"
;	line "must not hold the", $55
;	db "same items.", $51
;	db $57
; 0x1c5a42

UnknownText_0x1c5a42: ; 0x1c5a42
;	text "You can't take an"
;	line "EGG!", $51
;	db $57
; 0x1c5a5a

UnknownText_0x1c5a5a: ; 0x1c5a5a
	text "Ha evitato"
	line "la sfera!"

	para "Questo #mon"
	line "non può essere"
	cont "catturato!"
	prompt
; 0x1c5a90

UnknownText_0x1c5a90: ; 0x1c5a90
	text "Hai mancato il"
	line "#mon!"
	prompt
; 0x1c5aa6

UnknownText_0x1c5aa6: ; 0x1c5aa6
	text "Oh no! Il #mon"
	line "si é liberato!"
	prompt
; 0x1c5ac3

UnknownText_0x1c5ac3: ; 0x1c5ac3
	text "Sembrava preso,"
	line "e invece no!"
	prompt
; 0x1c5ae3

UnknownText_0x1c5ae3: ; 0x1c5ae3
	text "Aargh!"
	line "Per un pelo!"
	prompt
; 0x1c5afa

UnknownText_0x1c5afa: ; 0x1c5afa
	text "Grr! Ci mancava"
	line "poco!"
	prompt
; 0x1c5b17

UnknownText_0x1c5b17: ; 0x1c5b17
	text "Preso! @"
	text_from_ram EnemyMonNick
	text ""
	line "é stato catturato!@"
	sound0x02
	db "@"
; 0x1c5b34

UnknownText_0x1c5b34: ; 0x1c5b34
	db "@"
; 0x1c5b35

UnknownText_0x1c5b35: ; 0x1c5b35
	text_waitsfx
	db "@"
; 0x1c5b37

UnknownText_0x1c5b37: ; 0x1c5b37
	db "@"
; 0x1c5b38

UnknownText_0x1c5b38: ; 0x1c5b38
	text_from_ram wd050
	text " é"
	line "stato inviato al"
	cont "PC di Bill."
	prompt
; 0x1c5b53

UnknownText_0x1c5b38_2: ; 0x1c5b38
	text_from_ram wd050
	text " é"
	line "stato inviato al"
	cont "PC di qualcuno."
	prompt
; 0x1c5b53

_SentToBoxNumberText:
	text "Viene mandato al"
	line "@"
	TX_RAM StringBuffer3
	text "!"
	prompt

UnknownText_0x1c5b53: ; 0x1c5b53
    text "I dati di"
	line "@"
	text_from_ram EnemyMonNick
	text " sono"
	cont "stati inseriti", $55
	db "nel #dex.@"
	sound0x2C
	text_waitsfx
	db "@"
; 0x1c5b7e

UnknownText_0x1c5b7e: ; 0x1c5b7e
	db "@"
; 0x1c5b7f

UnknownText_0x1c5b7f: ; 0x1c5b7f
	text "Vuoi dare un"
	line "soprannome a"
	cont "@"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1c5b9a

UnknownText_0x1c5b9a: ; 0x1c5b9a
	text_from_ram StringBuffer1
	text "'s"
	line "@"
	text_from_ram StringBuffer2
	text " rose."
	prompt
; 0x1c5bac

UnknownText_0x1c5bac: ; 0x1c5bac
	text "Non avrebbe alcun"
	line "effetto."
	prompt
; 0x1c5bcd

UnknownText_0x1c5bcd: ; 0x1c5bcd
	text "Ci sono ancora gli"
	line "effetti del repel-"
	cont "lente di prima."
	prompt
; 0x1c5bf9

UnknownText_0x1c5bf9: ; 0x1c5bf9
	text "Hai suonato il"
	line "#flauto."

	para "Oh, che motivetto"
	line "simpatico!"
	prompt
; 0x1c5c28

UnknownText_0x1c5c28: ; 0x1c5c28
	text "Tutti i #mon"
	line "che dormivano sono"
	cont "ora svegli."
	prompt
; 0x1c5c44

UnknownText_0x1c5c44: ; 0x1c5c44
	text $52, " suona il"
	line "#flauto.@"
	text_waitsfx
	db "@"
; 0x1c5c5d

UnknownText_0x1c5c5d: ; 0x1c5c5d
	db "@"
; 0x1c5c5e

UnknownText_0x1c5c5e: ; 0x1c5c5e
	text "Ora hai"
	line "@"
	deciram wBlueCardBalance, $12
	text " punti."
	done
; 0x1c5c7b

UnknownText_0x1c5c7b: ; 0x1c5c7b
	text "Gettoni:"
	line "@"
	deciram Coins, $25
	db "@"
; 0x1c5c89

UnknownText_0x1c5c89: ; 0x1c5c89
	db "@"
; 0x1c5c8a

UnknownText_0x1c5c8a: ; 0x1c5c8a
	text "Aumentare i PP"
	line "di quale mossa?"
	done
; 0x1c5ca7

UnknownText_0x1c5ca7: ; 0x1c5ca7
	text "Ricaricare i PP"
	line "di quale mossa?"
	done
; 0x1c5cc6

UnknownText_0x1c5cc6: ; 0x1c5cc6
    text "I PP di "
	text_from_ram StringBuffer2
	text ""
	line "vengono portati"
	cont "al loro massimo."
	prompt
; 0x1c5cdd

UnknownText_0x1c5cdd: ; 0x1c5cdd
    text "I PP di "
	text_from_ram StringBuffer2
	text ""
	line "aumentano."
	prompt
; 0x1c5cf1

UnknownText_0x1c5cf1: ; 0x1c5cf1
	text "PP recuperati."
	prompt
; 0x1c5d03

UnknownText_0x1c5d03: ; 0x1c5d03
	text "C'era un trofeo"
	line "dentro!@"
	sound0
	text $51
	db "@"
	text_from_ram PlayerName
	text " manda"
	line "il trofeo a casa."
	prompt
; 0x1c5d3e

UnknownText_0x1c5d3e: ; 0x1c5d3e
	text "Sembra amaro<...>"
	prompt
; 0x1c5d50

UnknownText_0x1c5d50: ; 0x1c5d50
	text "Non può essere"
	line "usato su un uovo."
	prompt
; 0x1c5d6e

UnknownText_0x1c5d6e: ; 0x1c5d6e
	text "Oak: ", $52, "!"
	line "Non é il caso"
	cont "di usarlo!"
	prompt
; 0x1c5d97

UnknownText_0x1c5d97: ; 0x1c5d97
	text "Appartiene a un'"
	line "altra persona!"
	prompt
; 0x1c5db6

UnknownText_0x1c5db6: ; 0x1c5db6
	text "Non avrebbe alcun"
	line "effetto."
	prompt
; 0x1c5dd0

UnknownText_0x1c5dd0: ; 0x1c5dd0
	text "L'allenatore ha"
	line "respinto la ball!"
	prompt
; 0x1c5def

UnknownText_0x1c5def: ; 0x1c5def
	text "Non provare a"
	line "rubare!"
	prompt
; 0x1c5e01

UnknownText_0x1c5e01: ; 0x1c5e01
	text "Usare la bici qui"
	line "é vietato."
	prompt
; 0x1c5e1d

UnknownText_0x1c5e1d: ; 0x1c5e1d
	text "Non puoi salire su"
	line "@"
	text_from_ram StringBuffer1
	text " ora."
	prompt
; 0x1c5e3a

UnknownText_0x1c5e3a: ; 0x1c5e3a
	text "Il box é pieno."
	line "Non puoi usarla"
	cont "adesso."
	prompt
; 0x1c5e68

UnknownText_0x1c5e68: ; 0x1c5e68
	text $52, " usa @"
	text_dunno1
	text_from_ram StringBuffer2
	text "."
	done
; 0x1c5e7b

UnknownText_0x1c5e7b: ; 0x1c5e7b
	text $52, " sale su@"
	text_dunno1
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c5e90

UnknownText_0x1c5e90: ; 0x1c5e90
	text $52, " scende@"
	text_dunno1
	text "da @"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c5ea8

UnknownText_0x1c5ea8: ; 0x1c5ea8
	text_from_ram StringBuffer1
	text " impara"
	line "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1c5eba

UnknownText_0x1c5eba: ; 0x1c5eba
	text "Questo #mon co-"
	line "nosce solo una"
	cont "mossa."
	done
; 0x1c5eda

UnknownText_0x1c5eda: ; 0x1c5eda
	text "Oh, vuoi fargli"
	line "dimenticare"
	cont "@"
	text_from_ram StringBuffer1
	text "?"
	done
; 0x1c5ef5

UnknownText_0x1c5ef5: ; 0x1c5ef5
	text "Bene! Il #mon"
	line "ha dimenticato la"
	cont "mossa."
	done
; 0x1c5f17

UnknownText_0x1c5f17: ; 0x1c5f17
	text "Un uovo non può"
	line "conoscere alcuna"
	cont "mossa!"
	done
; 0x1c5f36

UnknownText_0x1c5f36: ; 0x1c5f36
	text "No? Allora torna a"
	line "farmi visita."
	done
; 0x1c5f50

UnknownText_0x1c5f50: ; 0x1c5f50
	text "Che mossa vuoi che"
	line "dimentichi?"
	prompt
; 0x1c5f74

UnknownText_0x1c5f74: ; 0x1c5f74
	text "Uhm<...> Oh, giusto,"
	line "io sono"
	cont "l'Eliminamosse."

	para "Posso far dimenti-"
	line "care una mossa a"
	cont "un #mon."

	para "A quale #mon"
	line "devo far dimenti-"
	cont "care una mossa?"
	done
; 0x1c5fd1

UnknownText_0x1c5fd1: ; 0x1c5fd1
	text "A quale #mon?"
	prompt
; 0x1c5fde

UnknownText_0x1c5fde: ; 0x1c5fde
	text " ora"
	line "legale, giusto?"
	done
; 0x1c5ff1

UnknownText_0x1c5ff1: ; 0x1c5ff1
	text ","
	line "giusto?"
	done
; 0x1c6000

UnknownText_0x1c6000: ; 0x1c6000
	text "Vuoi passare alla"
	line "ora legale?"
	done
; 0x1c6030

UnknownText_0x1c6030: ; 0x1c6030
	text "Ho messo l'orolo-"
	line "gio avanti di un'"
	cont "ora."
	prompt
; 0x1c6056

UnknownText_0x1c6056: ; 0x1c6056
	text "È in vigore l'ora"
	line "solare?"
	done
; 0x1c6075

UnknownText_0x1c6075: ; 0x1c6075
	text "Metterò l'orologio"
	line "indietro di"
	cont "un'ora."
	prompt
; 0x1c6095

UnknownText_0x1c6095: ; 0x1c6095
	text "Vuoi aggiustare"
	line "l'orologio per"

	para "impostare l'ora"
	line "legale?"
	done
; 0x1c60d1

UnknownText_0x1c60d1: ; 0x1c60d1
	text "Ho perso il li-"
	line "bretto d'istruzio-"
	cont "ni del #Gear."

	para "Ritorna fra un"
	line "po'."
	prompt
; 0x1c611e

_LovelyWaterText:
	text "Le onde si sca-"
	line "gliano contro"
	cont "la costa."
	done
