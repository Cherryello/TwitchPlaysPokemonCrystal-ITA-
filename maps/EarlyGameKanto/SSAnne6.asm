SSAnne6_MapScriptHeader:
	db 0
	db 0

SSAnne6Gentleman1Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	jumptextfaceplayer _SSAnne6Text1
	
.Female
	jumptextfaceplayer _SSAnne6Text1F
	
SSAnne6Gentleman2Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text2

SSAnne6Gentleman3Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text3

SSAnne6Gentleman4Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text4

SSAnne6Gentleman5Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text5

SSAnne6Gentleman6Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	jumptextfaceplayer _SSAnne6Text6

SSAnne6Gentleman7Script:
	checkevent EVENT_ROCKET_TAKEOVER_OF_SS_ANNE
	iftrue SSAnne6CookingUpTroubleScript
	faceplayer
	loadfont
	writetext _SSAnne6Text_61807
	buttonsound
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, .zero
	if_equal MONDAY, .one
	if_equal TUESDAY, .two
	if_equal WEDNESDAY, .zero
	if_equal THURSDAY, .two
	if_equal FRIDAY, .zero
	if_equal SATURDAY, .one
.zero
	writetext _SSAnne6Text_6180c
	waitbutton
	closetext
	end
.one
	writetext _SSAnne6Text_61811
	waitbutton
	closetext
	end
.two
	writetext _SSAnne6Text_61816
	waitbutton
	closetext
	end

SSAnne6CookingUpTroubleScript:
	jumptextfaceplayer _SSAnne6Text_CookingUpTrouble

_SSAnne6Text1:
	text "Oh, uagliunciell'!"
	line "Qui siamo molto"
	cont "impegnati, perciò<...>"
	cont "Va vatténn'!"
	done
	
_SSAnne6Text1F:
	text "Oh, uagliuncell'!"
	line "Qui siamo molto"
	cont "impegnati, perciò<...>"
	cont "Va vatténn'!"
	done

_SSAnne6Text2:
	text "Ho visto una palla"
	line "molto strana nella"
	cont "spazzatura."
	done

_SSAnne6Text3:
	text "Sono troppo stanco"
	line "non ce la faccio!"
	done

_SSAnne6Text4:
	text "Hm-mm-hmm-mh<...>"

	para "Pelo patate all"
	line "day long!"
	cont "Hm-mm<...>"
	
	para "Hey, you!"
	line "Sapevi che qui the"
	cont "staff too comes"
	cont "from many posti"
	cont "di Europa?"
	
	para "Inghilterra, Fran-"
	line "cia, Italia<...>"
	cont "A real mixtape!"
	done

_SSAnne6Text5:
	text "Hai mai sentito"
	line "parlare di un"
	cont "#mon chiamato"
	cont "Snorlax?"

	para "Non fa altro che"
	line "mangiare e dormi-"
	cont "re!"
	done

_SSAnne6Text6:
	text "Sob<...> Sniff<...>"

	para "Sto sempre a"
	line "pelare cipolle<...>"
	cont "Sniff<...>"
	done

_SSAnne6Text_61807:
	text "Er-hem! Je suis"
	line "le chef!"

	para "Le menu principal"
	line "est:"
	done

_SSAnne6Text_6180c:
	text "Salmon du Salad!"

	para "Les ospités si"
	line "potrebbero lamen-"
	cont "tare del fatto que"
	cont "serviamo juste"
	cont "pesce! Ahah!"
	done

_SSAnne6Text_61811:
	text "Eels au Barbecue!"

	para "J'ai paura che les"
	line "ospités possano"
	cont "ammutinerie!"
	done

_SSAnne6Text_61816:
	text "Prime Fillets du"
	line "Beef!"

	para "Ma ho abbastanza"
	line "fillets du beef?"
	done

_SSAnne6Text_CookingUpTrouble:
	text "Les hommes en noir"
	line "sono molto ostaco-"
	cont "lati in cucina!"
	done

SSAnne6TrashcanIfSet:
	dw EVENT_S_S_ANNE_6_GREAT_BALL, SSAnne6Trashcan
SSAnne6Trashcan:
	jumpstd trashcan
SSAnne6HiddenGreatBall:
	checkevent EVENT_S_S_ANNE_6_GREAT_BALL
	iftrue SSAnne6Trashcan
	loadfont
	verbosegiveitem GREAT_BALL, 1
	setevent EVENT_S_S_ANNE_6_GREAT_BALL
	closetext
	end

SSAnne6_MapEventHeader:
	db 0, 0
	db 1
	warp_def 0, 6, 11, GROUP_S_S_ANNE_1, MAP_S_S_ANNE_1

	db 0
	db 3
	signpost 5, 13, $0, SSAnne6Trashcan
	signpost 7, 13, $0, SSAnne6Trashcan
	signpost 9, 13, $0, SSAnne6HiddenGreatBall

	db 7
	person_event SPRITE_GENTLEMAN, 12,  5, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman1Script, -1
	person_event SPRITE_GENTLEMAN, 12,  9, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman2Script, -1
	person_event SPRITE_GENTLEMAN, 11, 13, $4, 2, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman3Script, -1
	person_event SPRITE_GENTLEMAN, 10, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman4Script, -1
	person_event SPRITE_GENTLEMAN, 12, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman5Script, -1
	person_event SPRITE_GENTLEMAN, 14, 17, $3, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman6Script, -1
	person_event SPRITE_GENTLEMAN, 17, 15, $7, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, SSAnne6Gentleman7Script, -1
