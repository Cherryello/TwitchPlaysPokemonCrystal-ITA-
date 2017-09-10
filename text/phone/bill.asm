BillPhoneMornGreetingText: ; 0x1b4427
	text "Buongiorno!"

	para "Sono il provider"
	line "del servizio del"
	cont "Sistema di Memoria"
	cont "Pokémon."
	done

BillPhoneDayGreetingText: ; 0x1b4470
	text "Buongiorno!"

	para "Sono il provider"
	line "del servizio del"
	cont "Sistema di Memoria"
	cont "Pokémon."
	done

BillPhoneNiteGreetingText: ; 0x1b44b5
	text "Buonasera!"

	para "Sono il provider"
	line "del servizio del"
	cont "Sistema di Memoria"
	cont "Pokémon."
	done

BillPhoneGeneriText: ; 0x1b44fe
	db $0, "Chi é?", $51
	db $14, ",giusto?", $4f
	db "Un momento<...>", $51
	db $56, $4f
	db $56, $57

BillPhoneNotFullText: ; 0x1b452a
	text "Scusa l'attesa!"

	para $14, ", il box"
	line "ha spazio per @"
	TX_RAM StringBuffer3
	text $55
	db "Pokémon solamente."

	para "Vai e acchiappali"
	line "tutti!"
	done

BillPhoneNearlyFullText: ; 0x1b4587
	text "Scusa l'attesa!"

	para $14, ", il box"
	line "ha spazio per @"
	cont "@"
	TX_RAM StringBuffer3
	text "Pokémon solamente."

	para "Forse dovresti"
	line "cambiare box."
	done

BillPhoneFullText: ; 0x1b45ed
	text "Scusa l'attesa!"

	para $14, ", il box"
	line "é pieno!"
	prompt

BillPhoneNewlyFullText: ; 0x1b4652
	text "Ehi, ", $14, "?"
	line "Sono io, Bill!"

	para "Grazie per aver"
	line "usato il mio"
	cont "Sistema di Deposi-"
	cont "to!"

	para "L'ultimo Pokémon"
	line "che hai mandato"
	cont "qui ha riempito"
	cont "il box corrente."
	prompt

BillWholePCFullText:
	text "Wow, hai riempito"
	line "un intero server."

	para "Se vuoi altro spa-"
	line "zio, devi per for-"
	cont "za liberare qual-"
	cont "che Pokémon."
	done

BillWantNextBox:
	text "Imposterò come"
	line "corrente il box"
	cont "successivo."

	para "Comunque<...>"
	prompt

BillThankYouText:
	para "Grazie per aver"
	line "usato il mio"
	cont "Sistema di Deposi-"
	cont "to!"
	done

BillCallMeToSwitch:
	text "Okay, allora la-"
	line "scerò tutto com'é."

	para "Richiamami se mai"
	line "dovessi cambiare"
	cont "idea."

	para "Puoi anche cambia-"
	line "re tu stesso il"
	cont "box da computer."
	prompt
