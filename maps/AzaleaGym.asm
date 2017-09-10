AzaleaGym_MapScriptHeader: ; 0x18ec1c
	; trigger count
	db 2
	dw AzaleaGym_Trigger1, $0000
	dw AzaleaGym_Trigger2, $0000

	; callback count
	db 0
; 0x18ec1e

AzaleaGym_Trigger1:
	priorityjump AzaleaGym_BurglarSimonScript1
	end

AzaleaGym_Trigger2:
	end

AzaleaGym_BurglarSimonScript1:
	pause 60
	moveperson $9, 5, 15
	appear $9
	spriteface $9, $1
	playsound SFX_ENTER_DOOR
	pause 15
	showemote $0, $9, 15
	pause 15
	spriteface $9, $2
	spriteface $0, $3
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext AzaleaGym_BurglarSimonText1
	waitbutton
	closetext
	winlosstext AzaleaGym_BurglarSimonTextLoss, $0000
	loadtrainer BURGLAR, SIMON_1
	startbattle
	reloadmapmusic
	returnafterbattle
	playmusic MUSIC_POKEMANIAC_ENCOUNTER
	loadfont
	writetext AzaleaGym_BurglarSimonText2
	buttonsound
	verbosegiveitem EXP_SHARE, 1
	iffalse .skip_set
	setevent EVENT_GOT_EXP_SHARE_FROM_SIMON
.skip_set
	writetext AzaleaGym_BurglarSimonText3
	waitbutton
	closetext
	spriteface $9, $0
	pause 5
	playsound SFX_EXIT_BUILDING
	disappear $9
	pause 15
	special DeleteSavedMusic
	playmapmusic
	setevent EVENT_BEAT_SIMON_1
	dotrigger $1
	end

AzaleaGym_BurglarSimonMovement1:
	big_step_down
	big_step_down
	big_step_down
	step_end

AzaleaGym_BurglarSimonMovement2:
	big_step_right
	big_step_down
	step_end


BugsyScript_0x18ec1e: ; 0x18ec1e
	faceplayer
	loadfont
	checkevent EVENT_BEAT_ELM
	iftrue BugsyPostgameRematchScript
	checkevent EVENT_BUGSY_REMATCH
	iftrue BugsyAfterRematch
	checkevent EVENT_SET_BY_OAK_AFTER_16_BADGES
	iftrue BugsyRematchScript
	checkevent EVENT_BEAT_BUGSY
	iftrue UnknownScript_0x18ec48
	writetext UnknownText_0x18ed0b
	waitbutton
	closetext
	winlosstext UnknownText_0x18edae, $0000
	loadtrainer BUGSY, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_BUGSY
	loadfont
	writetext UnknownText_0x18ee14
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	checkcode VAR_BADGES
	scall UnknownScript_0x18ec73
UnknownScript_0x18ec48: ; 0x18ec48
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue UnknownScript_0x18ec6d
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	writetext UnknownText_0x18ee2b
	buttonsound
	verbosegiveitem TM_FURY_CUTTER, 1
	iffalse UnknownScript_0x18ec71
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext UnknownText_0x18eefa
	waitbutton
	closetext
	end
; 0x18ec6d

BugsyAfterRematch:
	writetext BugsyAfterRematchText
	waitbutton
	closetext
	end

BugsyRematchScript:
	checkevent EVENT_CONTEST_ADMIN_HOLDING_PRIZE
	iffalse BugsyReject
	writetext BugsyRematchTextBefore
	waitbutton
	closetext
	winlosstext BugsyRematchBeatenText, $0000
	loadtrainer BUGSY, 2
	startbattle
	returnafterbattle
	setevent EVENT_BUGSY_REMATCH
	loadfont
	jump BugsyAfterRematch

UnknownScript_0x18ec6d: ; 0x18ec6d
	writetext UnknownText_0x18ef98
	waitbutton
UnknownScript_0x18ec71: ; 0x18ec71
	closetext
	end
; 0x18ec73

BugsyReject:
	writetext BugsyRejectText
	waitbutton
	closetext
	end

UnknownScript_0x18ec73: ; 0x18ec73
	if_equal $7, UnknownScript_0x18ec7f
	if_equal $6, UnknownScript_0x18ec7c
	end
; 0x18ec7c

UnknownScript_0x18ec7c: ; 0x18ec7c
	jumpstd goldenrodrockets
; 0x18ec7f

UnknownScript_0x18ec7f: ; 0x18ec7f
	jumpstd radiotowerrockets
; 0x18ec82

TrainerTwinsAmyandmay1: ; 0x18ec82
	; bit/flag number
	dw $464

	; trainer group && trainer id
	db TWINS, AMYANDMAY1

	; text when seen
	dw TwinsAmyandmay1SeenText

	; text when trainer beaten
	dw TwinsAmyandmay1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsAmyandmay1Script
; 0x18ec8e

TwinsAmyandmay1Script: ; 0x18ec8e
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f1fc
	waitbutton
	closetext
	end
; 0x18ec96

TrainerTwinsAmyandmay2: ; 0x18ec96
	; bit/flag number
	dw $464

	; trainer group && trainer id
	db TWINS, AMYANDMAY2

	; text when seen
	dw TwinsAmyandmay2SeenText

	; text when trainer beaten
	dw TwinsAmyandmay2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw TwinsAmyandmay2Script
; 0x18eca2

TwinsAmyandmay2Script: ; 0x18eca2
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f269
	waitbutton
	closetext
	end
; 0x18ecaa

TrainerBug_catcherBug_catcher_benny: ; 0x18ecaa
	; bit/flag number
	dw $53c

	; trainer group && trainer id
	db BUG_CATCHER, BUG_CATCHER_BENNY

	; text when seen
	dw Bug_catcherBug_catcher_bennySeenText

	; text when trainer beaten
	dw Bug_catcherBug_catcher_bennyBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherBug_catcher_bennyScript
; 0x18ecb6

Bug_catcherBug_catcher_bennyScript: ; 0x18ecb6
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f053
	waitbutton
	closetext
	end
; 0x18ecbe

TrainerBug_catcherAl: ; 0x18ecbe
	; bit/flag number
	dw $53d

	; trainer group && trainer id
	db BUG_CATCHER, AL

	; text when seen
	dw Bug_catcherAlSeenText

	; text when trainer beaten
	dw Bug_catcherAlBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherAlScript
; 0x18ecca

Bug_catcherAlScript: ; 0x18ecca
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f0d3
	waitbutton
	closetext
	end
; 0x18ecd2

TrainerBug_catcherJosh: ; 0x18ecd2
	; bit/flag number
	dw $53e

	; trainer group && trainer id
	db BUG_CATCHER, JOSH

	; text when seen
	dw Bug_catcherJoshSeenText

	; text when trainer beaten
	dw Bug_catcherJoshBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherJoshScript
; 0x18ecde

Bug_catcherJoshScript: ; 0x18ecde
	talkaftercancel
	loadfont
	writetext UnknownText_0x18f17e
	waitbutton
	closetext
	end
; 0x18ece6

AzaleaGymGuyScript: ; 0x18ece6
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuyWinScript
	loadfont
	writetext AzaleaGymGuyText
	waitbutton
	closetext
	end

.AzaleaGymGuyWinScript
	loadfont
	writetext AzaleaGymGuyWinText
	waitbutton
	closetext
	end
; 0x18ecfb

MapAzaleaGymSignpost1Script: ; 0x18ecfb
	checkflag ENGINE_HIVEBADGE
	iftrue UnknownScript_0x18ed04
	jumpstd gymstatue1
; 0x18ed04

UnknownScript_0x18ed04: ; 0x18ed04
	trainertotext BUGSY, 1, $1
	jumpstd gymstatue2
; 0x18ed0b

BugsyPostgameRematchScript:
    writetext BugsyPostgameRematchText
    yesorno
    iffalse .return
    closetext
    loadtrainer BUGSY, 2
    winlosstext BugsyPostgameBeatenText, 0
    startbattle
    returnafterbattle
    loadfont
    writetext BugsyPostgameAfterText
    waitbutton
.return
    closetext
    end
	
AzaleaGym_BurglarSimonText1:
	text $56, " ", $56, " ", $56

	para $56, " Sto cercando il"
	line "mio collega."

	para "Lo hai mica visto?"
	done

AzaleaGym_BurglarSimonTextLoss:
	text "Ahi!"
	done

AzaleaGym_BurglarSimonText2:
	text "Io e il mio"
	line "collega ci siamo"

	para "separati dopo"
	line "aver frugato in un"

	para "edificio abbando-"
	line "nato a Kanto."

	para "Volevo dargli"
	line "questo."
	done

AzaleaGym_BurglarSimonText3:
	text "Mi chiedo davvero"
	line "dove sia finito<...>"
	done

UnknownText_0x18ed0b: ; 0x18ed0b
	text "Sono Raffaello!"
	line "Con i #mon"

	para "coleottero non ho"
	line "alcun rivale."

	para "Sto studiando per"
	line "diventare una"

	para "autorità nel campo"
	line "dei #mon"
	cont "coleottero."

	para "Ti mostrerò cosa"
	line "ho appreso dai"
	cont "miei studi."
	done
; 0x18edae

BugsyRematchTextBefore:
	text "Piacere di"
	line "rivederti!"

	para "Ho sentito! Hai"
	line "vinto la Gara"
	cont "Pigliamosche!"

	para "Nel frattempo ho"
	line "continuato i miei"

	para "studi sui #mon"
	line "coleottero."

	para "Lascia che ti"
	line "dimostri cosa ho"
	cont "imparato!"
	done

BugsyRematchBeatenText:
	text "Oh, allora é"
	line "andata così<...>"
	done

BugsyAfterRematchText:
	text "Ho perso contro"
	line "la tua passione"
	cont "nell'allenamento."

	para "Dovrei continuare"
	line "le ricerche?"
	done

BugsyRejectText:
	text "Ciao, <PLAY_G>!"
	line "Lo sapevi?"

	para "Si svolgono ogni"
	line "giorno le Gare"

	para "Pigliamosche al"
	line "Parco Nazionale."

	para "Ovviamente certe"
	line "cose mi vengono"
	cont "spontanee."

	para "Ho vinto così"
	line "tante volte che"

	para "l'organizzatore mi"
	line "ha chiesto di"
	cont "smettere! Ahah!"

	para "Ma dovresti fare"
	line "una prova."

	para "Sono sicuro che"
	line "la vincerai!"

	done



UnknownText_0x18edae: ; 0x18edae
	text "Strabiliante! Sei"
	line "un vero esperto"
	cont "di #mon!"

	para "La mia ricerca va"
	line "approfondita."

	para "OK, hai vinto."
	line "Ecco la medaglia."
	done
; 0x18ee14

UnknownText_0x18ee14: ; 0x18ee14
	text "<PLAYER> riceve la"
	line "Medaglia Alveare."
	done
; 0x18ee2b

UnknownText_0x18ee2b: ; 0x18ee2b
	text "Conosci i vantaggi"
	line "della medaglia"
	cont "Alveare?"

	para "Con essa, i #-"
	line "mon con Taglio"

	para "potranno usare la"
	line "mossa fuori dalla"
	cont "lotta."

	para "Inoltre, vorrei"
	line "che accettassi"
	cont "questa."
	done
; 0x18eefa

UnknownText_0x18eefa: ; 0x18eefa
	text "L'MT49 contiene"
	line "Tagliofuria."

	para "Se il colpo va a"
	line "segno, la sua"
	cont "potenza cresce ad"
	cont "ogni turno."

	para "Diviene sempre"
	line "più forte con il"
	cont "prolungarsi della"
	cont "lotta."

	para "Non é grandiosa?"
	line "L'ho scoperta io!"
	done
; 0x18ef98

UnknownText_0x18ef98: ; 0x18ef98
	text "I #mon coleot-"
	line "tero sono miste-"
	cont "riosi: c'é ancora"

	para "molto da"
	line "scoprire!"

	para "Studia i tuoi"
	line "preferiti."
	done
; 0x18eff8

Bug_catcherBug_catcher_bennySeenText: ; 0x18eff8
	text "I #mon coleot-"
	line "tero si evolvono"
	cont "presto, diventando"

	para "forti in breve"
	line "tempo."
	done
; 0x18f037

Bug_catcherBug_catcher_bennyBeatenText: ; 0x18f037
	text "Solo l'evoluzione"
	line "non basta!"
	done
; 0x18f053

UnknownText_0x18f053: ; 0x18f053
	text "I #mon evoluti"
	line "sono più forti."
	cont "Sul serio!"
	done
; 0x18f081

Bug_catcherAlSeenText: ; 0x18f081
	text "I #mon coleot-"
	line "tero sono una"
	cont "forza."

	para "Te lo dimostrerò!"
	done
; 0x18f0b4

Bug_catcherAlBeatenText: ; 0x18f0b4
	text "Anche tu sei una"
	line "forza, lo ammetto<...>"
	done
; 0x18f0d3

UnknownText_0x18f0d3: ; 0x18f0d3
	text "I #mon coleot-"
	line "tero sono meravi-"
	cont "gliosi, ma a molte"
	cont "ragazze non"
	cont "piacciono."

	para "Chissà come mai<...>"
	done
; 0x18f118

Bug_catcherJoshSeenText: ; 0x18f118
	text "Hai salvato tu gli"
	line "Slowpoke? Allora"
	cont "sei forte!"

	para "Ma i miei forti"
	line "#mon pure sanno"
	cont "il fatto loro!"
	done
; 0x18f174

Bug_catcherJoshBeatenText: ; 0x18f174
	text "Urrgggh!"
	done
; 0x18f17e

UnknownText_0x18f17e: ; 0x18f17e
	text "Credo di dovergli"
	line "insegnare mosse"
	cont "migliori<...>"
	done
; 0x18f1a9

TwinsAmyandmay1SeenText: ; 0x18f1a9
	text "Amy: Vuoi sfidare"
	line "il capopalestra?"
	cont "Non si passa!"
	done
; 0x18f1db

TwinsAmyandmay1BeatenText: ; 0x18f1db
	text "Amy & May: Oh,"
	line "doppia disdetta!"
	done
; 0x18f1fc

UnknownText_0x18f1fc: ; 0x18f1fc
	text "Amy: Sei davvero"
	line "forte!"
	done
; 0x18f217

TwinsAmyandmay2SeenText: ; 0x18f217
	text "May: Vai dal"
	line "capopalestra? Ci"
	cont "siamo prima noi!"
	done
; 0x18f248

TwinsAmyandmay2BeatenText: ; 0x18f248
	text "Amy & May: Oh,"
	line "doppia disdetta!"
	done
; 0x18f269

UnknownText_0x18f269: ; 0x18f269
	text "May: I nostri"
	line "#mon coleottero"
	cont "hanno perso<...>"
	done
; 0x18f296

AzaleaGymGuyText: ; 0x18f296
	text "Ehi, sfidante!"

	para "Raffaello é"
	line "giovane ma ha già"

	para "esperienza con i"
	line "#mon di tipo"
	cont "coleottero."

	para "Sarà dura se non"
	line "segui i miei"
	cont "consigli."

	para "Vediamo<...> I #mon"
	line "coleottero odiano"
	cont "il fuoco."

	para "Anche le mosse di"
	line "tipo volante sono"
	cont "molto efficaci."
	done
; 0x18f359

AzaleaGymGuyWinText: ; 0x18f359
	text "Ben fatto! Una"
	line "grande lotta tra"

	para "giovani allenatori"
	line "di talento."

	para "Con gente come te,"
	line "i #mon avranno"
	cont "un grande futuro!"
	done
; 0x18f3cc

BugsyPostgameRematchText:
	text "Ehilà!"

	para "Stavo studiando"
	line "altre tattiche"
	cont "per i coleotteori!"
	
	para "Vorresti lottare"
	line "con me?"

	done
	
BugsyPostgameBeatenText:
	text "Spaventoso!"
	
	para "Devo aver studiato"
	line "male<...>"
	done
	
BugsyPostgameAfterText:
	text "Sai davvero così"
	line "tante cose<...>"
	
	para "Un giorno dovrai"
	line "insegnarmi qual-"
	cont "cosa!"

	done

AzaleaGym_MapEventHeader: ; 0x18f3cc
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $4, 5, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $f, $5, 5, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 13, 3, $0, MapAzaleaGymSignpost1Script
	signpost 13, 6, $0, MapAzaleaGymSignpost1Script

	; people-events
	db 8
	person_event SPRITE_BUGSY, 11, 9, $3, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, BugsyScript_0x18ec1e, -1
	person_event SPRITE_BUG_CATCHER, 7, 9, $a, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 2, TrainerBug_catcherBug_catcher_benny, -1
	person_event SPRITE_BUG_CATCHER, 12, 12, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherAl, -1
	person_event SPRITE_BUG_CATCHER, 6, 4, $6, 0, 0, -1, -1, 8 + PAL_OW_BROWN, 2, 3, TrainerBug_catcherJosh, -1
	person_event SPRITE_TWIN, 14, 8, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsAmyandmay1, -1
	person_event SPRITE_TWIN, 14, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 2, 1, TrainerTwinsAmyandmay2, -1
	person_event SPRITE_GYM_GUY, 17, 11, $6, 0, 0, -1, -1, 8 + PAL_OW_RED, 0, 0, AzaleaGymGuyScript, -1
	person_event SPRITE_PHARMACIST, 0, 0, $0, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, ObjectEvent, EVENT_BEAT_SIMON_1
; 0x18f441



