MomPhoneGreetingText: ; 0x1b4000
	text "Pronto?"

	para "Oh, hi, ", $52, "!"
	line "Working hard?"
	done

UnknownText_0x1b4021: ; 0x1b4021
	text "Oh, so you're in"
	line "@"
	TX_RAM StringBuffer3
	text "<...>"

	para "Isn't that where"
	line "@"
	TX_RAM StringBuffer4
	text $51
	db "is? Did you go"
	line "take a look?"
	done

MomPhoneGenericAreaText: ; 0x1b406b
	text "Really, you're in"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "I've never gone"
	line "there. That's kind"
	cont "of neat, ", $52, "."
	done

MomPhoneNewBarkText: ; 0x1b40b1
	text "What? You're in"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "Come see your MOM"
	line "sometime!"
	done

MomPhoneCherrygroveText: ; 0x1b40e4
	text "You're visiting"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "How about coming"
	line "home for a bit?"
	done

UnknownText_0x1b411c: ; 0x1b411c
	text "Wow, you're in"
	line "@"
	TX_RAM StringBuffer3
	text "?"

	para "Good luck on your"
	line "#MON quest!"
	done

UnknownText_0x1b4150: ; 0x1b4150
	text "That sounds really"
	line "tough."

	para "But, ", $52, ", I"
	line "know you're really"

	para "determined. You'll"
	line "be OK, right?"
	done

UnknownText_0x1b41a7: ; 0x1b41a7
	text "By the way, you've"
	line "saved up ¥@"
	TX_RAM StringBuffer3
	text "."

	para "Do you want to"
	line "keep on saving?"
	done

UnknownText_0x1b41ea: ; 0x1b41ea
	text "It's important to"
	line "save your money."
	done

UnknownText_0x1b420d: ; 0x1b420d
	text "Oh, ", $52, ","
	line "you're not saving"

	para "any money. Would"
	line "you like to save?"
	done

UnknownText_0x1b4249: ; 0x1b4249
	text "By the way, you've"
	line "saved up ¥@"
	TX_RAM StringBuffer3
	text "."

	para "Want to start"
	line "saving again?"
	done

UnknownText_0x1b4289: ; 0x1b4289
	text "Okay. Conserverò i"
	line "tuoi soldi."
	done

MomPhoneWontSaveMoneyText: ; 0x1b42a3
	text "Okay. Non conser-"
	line "verò i tuoi soldi." 
	done

MomPhoneHangUpText: ; 0x1b42c0
	text $52, ", non"
	line "arrenderti! Credo"
	cont "in te, amore mio!"
	done

MomPhoneNoPokemonText: ; 0x1b42ea
	text "Pronto?"

	para "Oh, hi, ", $52, "!"
	line "Wasn't PROF.ELM"
	cont "waiting for you?"
	done

MomPhoneNoPokedexText: ; 0x1b431d
	text "Pronto?"

	para "Oh, hi, ", $52, "!"
	line "You're on a big"

	para "mission for PROF."
	line "ELM? Be good!"
	done

MomPhoneNoGymQuestText: ; 0x1b435f
	text "Pronto?"

	para "Hi, ", $52, "! If"
	line "you're done with"

	para "your errand come"
	line "on home, dear."
	done

MomPhoneLectureText: ; 0x1b43a1
	text "Pronto?"

	para "<...><...> ", $52, "?"
	line "Mi ha detto il"

	para "Professor Elm che"
	line "hai intrapreso un"
	cont "lungo viaggio."

	para "Avrei preferito"
	line "che me lo dicessi<...>"

	para "E per quanto ri-"
    line "guarda i soldi?"
	cont "Dovrei conservarli"
	cont "per te?"
	done
