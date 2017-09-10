PokeCenter2F_MapScriptHeader:
PokeCenter2FKanto_MapScriptHeader: ; 0x192845
	; trigger count
	db 6

	; triggers
	dw UnknownScript_0x19285f, $0000
	dw UnknownScript_0x192873, $0000
	dw UnknownScript_0x192877, $0000
	dw UnknownScript_0x19287b, $0000
	dw UnknownScript_0x19287f, $0000
	dw UnknownScript_0x192883, $0000

	; callback count
	db 0
; 0x19285f

Pokecenter2F_CheckPalChanged:
	ld a, [PlayerGender]
	ld b, a
	ld a, [wPlayerPalette]
	and $7
	or b
	ld [ScriptVar], a
	ret

UnknownScript_0x19285f: ; 0x19285f
	special Functionc2f6
	if_equal $0, UnknownScript_0x192872
	clearevent EVENT_MYSTERY_GIFT_DELIVERY_MAN
	checkevent EVENT_001_STD
	iftrue UnknownScript_0x192872
	priorityjump UnknownScript_0x192887
; 0x192872

UnknownScript_0x192872: ; 0x192872
	end
; 0x192873

UnknownScript_0x192873: ; 0x192873
	priorityjump UnknownScript_0x192ab6
	end
; 0x192877

UnknownScript_0x192877: ; 0x192877
	priorityjump UnknownScript_0x192add
	end
; 0x19287b

UnknownScript_0x19287b: ; 0x19287b
	priorityjump UnknownScript_0x192c4e
	end
; 0x19287f

UnknownScript_0x19287f: ; 0x19287f
	priorityjump UnknownScript_0x192ac3
	end
; 0x192883

UnknownScript_0x192883: ; 0x192883
	priorityjump UnknownScript_0x192aea
	end
; 0x192887

UnknownScript_0x192887: ; 0x192887
	appear $5
	setevent EVENT_001_STD
	end
; 0x19288d

UnknownScript_0x19288d: ; 0x19288d
	faceplayer
	loadfont
	writetext UnknownText_0x19312f
	waitbutton
	closetext
	end
; 0x192895

UnknownScript_0x192895: ; 0x192895
	faceplayer
	loadfont
	writetext UnknownText_0x19315f
	waitbutton
	closetext
	end
; 0x19289d

LinkReceptionistScript_0x19289d: ; 0x19289d
	; loadvar (PlayerName + 8), $1 ;D485, now set at game start
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse UnknownScript_0x19288d
	loadfont
	writetext UnknownText_0x192e3a
	yesorno
	iffalse UnknownScript_0x19291d
	special Function10630f
	iffalse UnknownScript_0x1928be
	writetext UnknownText_0x192d7e
	special Function103612
	iffalse UnknownScript_0x19291d
	if_equal $1, UnknownScript_0x19291f
UnknownScript_0x1928be: ; 0x1928be
	special Function29ce8
	writetext UnknownText_0x192f67
	special Function29d11
	iffalse UnknownScript_0x1928f6
	writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x192917
	special Function29e66
	iffalse UnknownScript_0x192917
	writetext UnknownText_0x192f67
	special Function29d92
	iffalse UnknownScript_0x192911
	copybytetovar wcf51
	iffalse UnknownScript_0x1928fe
	special Function29e82
	iffalse UnknownScript_0x192909
	writetext UnknownText_0x19306b
	waitbutton
	closetext
	scall UnknownScript_0x192b04
	warpcheck
	end
; 0x1928f6

UnknownScript_0x1928f6: ; 0x1928f6
	special Function29c92
	writetext UnknownText_0x192f19
	closetext
	end
; 0x1928fe

UnknownScript_0x1928fe: ; 0x1928fe
	special Function29efa
	writetext UnknownText_0x193029
	special Function29eee
	closetext
	end
; 0x192909

UnknownScript_0x192909: ; 0x192909
	writetext UnknownText_0x19304a
	special Function29eee
	closetext
	end
; 0x192911

UnknownScript_0x192911: ; 0x192911
	writetext UnknownText_0x192f75
	jump UnknownScript_0x19291a
; 0x192917

UnknownScript_0x192917: ; 0x192917
	writetext UnknownText_0x192fd1
UnknownScript_0x19291a: ; 0x19291a
	special Function29c92
UnknownScript_0x19291d: ; 0x19291d
	closetext
	end
; 0x19291f

UnknownScript_0x19291f: ; 0x19291f
	scall UnknownScript_0x19292b
	iftrue UnknownScript_0x19292a
	scall UnknownScript_0x19294a
	warpcheck
	end
; 0x19292a

UnknownScript_0x19292a: ; 0x19292a
	end
; 0x19292b

UnknownScript_0x19292b: ; 0x19292b
	writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x192943
	special Function29e66
	iffalse UnknownScript_0x192943
	special Function1011f1
	writetext UnknownText_0x19306b
	waitbutton
	closetext
	writebyte $0
	end
; 0x192943

UnknownScript_0x192943: ; 0x192943
	writetext UnknownText_0x192fd1
	closetext
	writebyte $1
	end
; 0x19294a

UnknownScript_0x19294a: ; 0x19294a
	applymovement2 MovementData_0x192cce
	applymovement $0, MovementData_0x192ce7
	end
; 0x192952

LinkReceptionistScript_0x192952: ; 0x192952
	; loadvar (PlayerName + 8), $1 ;D485, now set at game start
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iffalse UnknownScript_0x192895
	loadfont
	writetext UnknownText_0x192de0
	yesorno
	iffalse UnknownScript_0x1929d2
	special Function10630f
	iffalse UnknownScript_0x192973
	writetext UnknownText_0x192d39
	special Function103612
	iffalse UnknownScript_0x1929d2
	if_equal $1, UnknownScript_0x1929d4
UnknownScript_0x192973: ; 0x192973
	special Function29cf1
	writetext UnknownText_0x192f67
	special Function29d11
	iffalse UnknownScript_0x1929ab
	writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x1929cc
	special Function29e66
	iffalse UnknownScript_0x1929cc
	writetext UnknownText_0x192f67
	special Function29d92
	iffalse UnknownScript_0x1929c6
	copybytetovar wcf51
	iffalse UnknownScript_0x1929b3
	special Function29e82
	iffalse UnknownScript_0x1929be
	writetext UnknownText_0x19306b
	waitbutton
	closetext
	scall UnknownScript_0x192b04
	warpcheck
	end
; 0x1929ab

UnknownScript_0x1929ab: ; 0x1929ab
	special Function29c92
	writetext UnknownText_0x192f19
	closetext
	end
; 0x1929b3

UnknownScript_0x1929b3: ; 0x1929b3
	special Function29efa
	writetext UnknownText_0x193029
	special Function29eee
	closetext
	end
; 0x1929be

UnknownScript_0x1929be: ; 0x1929be
	writetext UnknownText_0x19304a
	special Function29eee
	closetext
	end
; 0x1929c6

UnknownScript_0x1929c6: ; 0x1929c6
	writetext UnknownText_0x192f75
	jump UnknownScript_0x1929cf
; 0x1929cc

UnknownScript_0x1929cc: ; 0x1929cc
	writetext UnknownText_0x192fd1
UnknownScript_0x1929cf: ; 0x1929cf
	special Function29c92
UnknownScript_0x1929d2: ; 0x1929d2
	closetext
	end
; 0x1929d4

UnknownScript_0x1929d4: ; 0x1929d4
	scall UnknownScript_0x192a05
	iffalse UnknownScript_0x1929e5
	scall UnknownScript_0x1929e6
	iftrue UnknownScript_0x1929e5
	scall UnknownScript_0x19294a
	warpcheck
	end
; 0x1929e5

UnknownScript_0x1929e5: ; 0x1929e5
	end
; 0x1929e6

UnknownScript_0x1929e6: ; 0x1929e6
	writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x1929fe
	special Function103780
	iffalse UnknownScript_0x1929fe
	special Function1011f1
	writetext UnknownText_0x19306b
	waitbutton
	closetext
	writebyte $0
	end
; 0x1929fe

UnknownScript_0x1929fe: ; 0x1929fe
	writetext UnknownText_0x192fd1
	closetext
	writebyte $1
	end
; 0x192a05

UnknownScript_0x192a05: ; 0x192a05
	special Function10366e
	iffalse UnknownScript_0x192a1e
	if_equal $1, UnknownScript_0x192a22
	if_equal $2, UnknownScript_0x192a22
	if_equal $3, UnknownScript_0x192a1a
	jump UnknownScript_0x192a1e
; 0x192a1a

UnknownScript_0x192a1a: ; 0x192a1a
	writetext UnknownText_0x1932bc
	waitbutton
UnknownScript_0x192a1e: ; 0x192a1e
	closetext
	writebyte $0
	end
; 0x192a22

UnknownScript_0x192a22: ; 0x192a22
	writebyte $1
	end
; 0x192a25

UnknownScript_0x192a25: ; 0x192a25
	faceplayer
	loadfont
	writetext UnknownText_0x193100
	waitbutton
	closetext
	end
; 0x192a2d

LinkReceptionistScript_0x192a2d: ; 0x192a2d
	; loadvar (PlayerName + 8), $1 ;D485, now set at game start
	checkevent EVENT_FIRST_TIME_HALL_OF_FAME
	iftrue .SkipBillCheck
	checkevent EVENT_BILL_IN_GOLDENROD_BILLS_HOUSE
	iftrue UnknownScript_0x192a25
.SkipBillCheck
	checkflag ENGINE_TIME_CAPSULE
	iffalse UnknownScript_0x192a25
	special Function29cfa
	faceplayer
	loadfont
	writetext UnknownText_0x192e9f
	yesorno
	iffalse UnknownScript_0x192aa2
	special Function29bfb
	if_equal $1, UnknownScript_0x192aa7
	if_equal $2, UnknownScript_0x192aac
	if_equal $3, UnknownScript_0x192ab1
	writetext UnknownText_0x192f67
	special Function29d11
	iffalse UnknownScript_0x192a91
	writetext UnknownText_0x192f34
	yesorno
	iffalse UnknownScript_0x192a9f
	special Function29e66
	iffalse UnknownScript_0x192a9f
	writetext UnknownText_0x192f67
	special Function29d92
	iffalse UnknownScript_0x192a99
	copybytetovar wcf51
	iffalse UnknownScript_0x192a84
	special Function29e82
	writetext UnknownText_0x19304a
	special Function29eee
	closetext
	end
; 0x192a84

UnknownScript_0x192a84: ; 0x192a84
	special Function29c7b
	writetext UnknownText_0x19306b
	waitbutton
	closetext
	scall UnknownScript_0x192bc4
	warpcheck
	end
; 0x192a91

UnknownScript_0x192a91: ; 0x192a91
	special Function29c92
	writetext UnknownText_0x192f19
	closetext
	end
; 0x192a99

UnknownScript_0x192a99: ; 0x192a99
	writetext UnknownText_0x192f75
	jump UnknownScript_0x192aa2
; 0x192a9f

UnknownScript_0x192a9f: ; 0x192a9f
	writetext UnknownText_0x192fd1
UnknownScript_0x192aa2: ; 0x192aa2
	special Function29c92
	closetext
	end
; 0x192aa7

UnknownScript_0x192aa7: ; 0x192aa7
	writetext UnknownText_0x19308b
	closetext
	end
; 0x192aac

UnknownScript_0x192aac: ; 0x192aac
	writetext UnknownText_0x1930a8
	closetext
	end
; 0x192ab1

UnknownScript_0x192ab1: ; 0x192ab1
	writetext UnknownText_0x1930cf
	closetext
	end
; 0x192ab6

UnknownScript_0x192ab6: ; 0x192ab6
	special Function29c92
	scall UnknownScript_0x192b50
	dotrigger $0
	domaptrigger GROUP_TRADE_CENTER, MAP_TRADE_CENTER, $0
	end
; 0x192ac3

UnknownScript_0x192ac3: ; 0x192ac3
	special Function101220
	scall UnknownScript_0x192ad0
	dotrigger $0
	;domaptrigger GROUP_MOBILE_TRADE_ROOM_MOBILE, MAP_MOBILE_TRADE_ROOM_MOBILE, $0
	end
; 0x192ad0

UnknownScript_0x192ad0: ; 0x192ad0
	applymovement $2, MovementData_0x192d0b
	applymovement $0, MovementData_0x192d0f
	applymovement $2, MovementData_0x192d14
	end
; 0x192add

UnknownScript_0x192add: ; 0x192add
	special Function29c92
	scall UnknownScript_0x192b8a
	dotrigger $0
	domaptrigger GROUP_COLOSSEUM, MAP_COLOSSEUM, $0
	end
; 0x192aea

UnknownScript_0x192aea: ; 0x192aea
	special Function101220
	scall UnknownScript_0x192af7
	dotrigger $0
	end
; 0x192af7

UnknownScript_0x192af7: ; 0x192af7
	applymovement $3, MovementData_0x192d0b
	applymovement $0, MovementData_0x192d0f
	applymovement $3, MovementData_0x192d14
	end
; 0x192b04

UnknownScript_0x192b04: ; 0x192b04
	callasm Pokecenter2F_CheckPalChanged
	iftrue UnknownScript_0x192b12
	applymovement2 MovementData_0x192cca
	applymovement $0, MovementData_0x192cde
	end
; 0x192b12

UnknownScript_0x192b12: ; 0x192b12
	applymovement2 MovementData_0x192cd8
	applymovement $0, MovementData_0x192ce2
	loadfont
	writetext UnknownText_0x193266
	waitbutton
	closetext
	applymovement2 MovementData_0x192cdc
	spriteface $0, $2
	loadfont
	writetext UnknownText_0x193278
	waitbutton
	closetext
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte 0
	special Functionc225
	applymovement $0, MovementData_0x192d1c
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	special Functione4a
	loadfont
	writetext UnknownText_0x19329a
	waitbutton
	closetext
	showemote $0, $0, 15
	applymovement $0, MovementData_0x192ce5
	end
; 0x192b50

UnknownScript_0x192b50: ; 0x192b50
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .reset_palette_swap
	applymovement $2, MovementData_0x192d04
	applymovement $0, MovementData_0x192cf5
	applymovement $2, MovementData_0x192cfe
	end
; 0x192b63

.reset_palette_swap: ; 0x192b63
	applymovement $2, MovementData_0x192d04
	applymovement $0, MovementData_0x192d28
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte 1
	special Functionc225
	applymovement $0, MovementData_0x192d1c
	special Functione4a
	applymovement $0, MovementData_0x192d2a
	applymovement $2, MovementData_0x192cfe
	end
; 0x192b8a

UnknownScript_0x192b8a: ; 0x192b8a
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue .reset_palette_swap
	applymovement $3, MovementData_0x192d04
	applymovement $0, MovementData_0x192cf5
	applymovement $3, MovementData_0x192cfe
	end
; 0x192b9d

.reset_palette_swap: ; 0x192b9d
	applymovement $3, MovementData_0x192d04
	applymovement $0, MovementData_0x192d28
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte 1
	special Functionc225
	applymovement $0, MovementData_0x192d1c
	special Functione4a
	applymovement $0, MovementData_0x192d2a
	applymovement $3, MovementData_0x192cfe
	end
; 0x192bc4

UnknownScript_0x192bc4: ; 0x192bc4
	callasm Pokecenter2F_CheckPalChanged
	iftrue UnknownScript_0x192bec
	checkcode VAR_FACING
	if_equal $2, UnknownScript_0x192bdc
	if_equal $3, UnknownScript_0x192be4
	applymovement2 MovementData_0x192cd2
	applymovement $0, MovementData_0x192cec
	end
; 0x192bdc

UnknownScript_0x192bdc: ; 0x192bdc
	applymovement2 MovementData_0x192cd2
	applymovement $0, MovementData_0x192cef
	end
; 0x192be4

UnknownScript_0x192be4: ; 0x192be4
	applymovement2 MovementData_0x192cd5
	applymovement $0, MovementData_0x192cf2
	end
; 0x192bec

UnknownScript_0x192bec: ; 0x192bec
	checkcode VAR_FACING
	if_equal $3, UnknownScript_0x192c00
	if_equal $2, UnknownScript_0x192c0a
	applymovement2 MovementData_0x192d33
	applymovement $0, MovementData_0x192d2d
	jump UnknownScript_0x192c11
; 0x192c00

UnknownScript_0x192c00: ; 0x192c00
	applymovement2 MovementData_0x192d36
	applymovement $0, MovementData_0x192d2f
	jump UnknownScript_0x192c11
; 0x192c0a

UnknownScript_0x192c0a: ; 0x192c0a
	applymovement2 MovementData_0x192d33
	applymovement $0, MovementData_0x192d31
UnknownScript_0x192c11: ; 0x192c11
	loadfont
	writetext UnknownText_0x193266
	waitbutton
	closetext
	checkcode VAR_FACING
	if_not_equal $1, UnknownScript_0x192c20
	spriteface $0, $2
UnknownScript_0x192c20: ; 0x192c20
	loadfont
	writetext UnknownText_0x193278
	waitbutton
	closetext
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte 0
	special Functionc225
	applymovement $0, MovementData_0x192d22
	faceperson $0, $4
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	special Functione4a
	loadfont
	writetext UnknownText_0x19329a
	waitbutton
	closetext
	showemote $0, $0, 15
	applymovement $0, MovementData_0x192d2d
	end
; 0x192c4e

UnknownScript_0x192c4e: ; 0x192c4e
	special Function29c92
	checkflag ENGINE_KRIS_IN_CABLE_CLUB
	iftrue UnknownScript_0x192c66
	applymovement $4, MovementData_0x192d08
	applymovement $0, MovementData_0x192cf9
	applymovement $4, MovementData_0x192d01
	jump UnknownScript_0x192c8c
; 0x192c66

UnknownScript_0x192c66: ; 0x192c66
	applymovement $4, MovementData_0x192d08
	applymovement $0, MovementData_0x192cfc
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	playsound SFX_TINGLE
	applymovement $0, MovementData_0x192d17
	writebyte 1
	special Functionc225
	applymovement $0, MovementData_0x192d1c
	special Functione4a
	applymovement $0, MovementData_0x192cfc
	applymovement $4, MovementData_0x192d01
UnknownScript_0x192c8c: ; 0x192c8c
	dotrigger $0
	domaptrigger GROUP_TIME_CAPSULE, MAP_TIME_CAPSULE, $0
	end
; 0x192c93

MapPokeCenter2FSignpost0Script: ; 0x192c93
	refreshscreen $0
	special Functionc2da
	closetext
	end
; 0x192c9a

OfficerScript_0x192c9a: ; 0x192c9a
	faceplayer
	loadfont
	checkevent EVENT_MYSTERY_GIFT_DELIVERY_MAN
	iftrue UnknownScript_0x192cb8
	writetext UnknownText_0x193190
	yesorno
	iffalse UnknownScript_0x192cc4
	writetext UnknownText_0x1931c4
	buttonsound
	waitsfx
	special Functionc309
	iffalse UnknownScript_0x192cbe
	itemnotify
	setevent EVENT_MYSTERY_GIFT_DELIVERY_MAN
UnknownScript_0x192cb8: ; 0x192cb8
	writetext UnknownText_0x1931d2
	waitbutton
	closetext
	end
; 0x192cbe

UnknownScript_0x192cbe: ; 0x192cbe
	writetext UnknownText_0x1931ef
	waitbutton
	closetext
	end
; 0x192cc4

UnknownScript_0x192cc4: ; 0x192cc4
	writetext UnknownText_0x19324d
	waitbutton
	closetext
	end
; 0x192cca

MovementData_0x192cca: ; 0x192cca
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192cce

MovementData_0x192cce: ; 0x192cce
	slow_step_up
	slow_step_left
	turn_head_down
	step_end
; 0x192cd2

MovementData_0x192cd2: ; 0x192cd2
	slow_step_left
	turn_head_down
	step_end
; 0x192cd5

MovementData_0x192cd5: ; 0x192cd5
	slow_step_right
	turn_head_down
	step_end
; 0x192cd8

MovementData_0x192cd8: ; 0x192cd8
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192cdc

MovementData_0x192cdc: ; 0x192cdc
	turn_head_right
	step_end
; 0x192cde

MovementData_0x192cde: ; 0x192cde
	step_up
	step_up
	step_up
	step_end
; 0x192ce2

MovementData_0x192ce2: ; 0x192ce2
	step_up
	step_up
	step_end
; 0x192ce5

MovementData_0x192ce5: ; 0x192ce5
	step_up
	step_end
; 0x192ce7

MovementData_0x192ce7: ; 0x192ce7
	step_up
	step_up
	step_right
	step_up
	step_end
; 0x192cec

MovementData_0x192cec: ; 0x192cec
	step_up
	step_up
	step_end
; 0x192cef

MovementData_0x192cef: ; 0x192cef
	step_left
	step_up
	step_end
; 0x192cf2

MovementData_0x192cf2: ; 0x192cf2
	step_right
	step_up
	step_end
; 0x192cf5

MovementData_0x192cf5: ; 0x192cf5
	step_down
	step_down
	step_down
	step_end
; 0x192cf9

MovementData_0x192cf9: ; 0x192cf9
	step_down
	step_down
	step_end
; 0x192cfc

MovementData_0x192cfc: ; 0x192cfc
	step_down
	step_end
; 0x192cfe

MovementData_0x192cfe: ; 0x192cfe
	slow_step_right
	slow_step_down
	step_end
; 0x192d01

MovementData_0x192d01: ; 0x192d01
	slow_step_right
	turn_head_down
	step_end
; 0x192d04

MovementData_0x192d04: ; 0x192d04
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192d08

MovementData_0x192d08: ; 0x192d08
	slow_step_left
	turn_head_right
	step_end
; 0x192d0b

MovementData_0x192d0b: ; 0x192d0b
	slow_step_up
	slow_step_left
	turn_head_right
	step_end
; 0x192d0f

MovementData_0x192d0f: ; 0x192d0f
	step_down
	step_left
	step_down
	step_down
	step_end
; 0x192d14

MovementData_0x192d14: ; 0x192d14
	slow_step_right
	slow_step_down
	step_end
; 0x192d17

MovementData_0x192d17: ; 0x192d17
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	step_end
; 0x192d1c

MovementData_0x192d1c: ; 0x192d1c
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_left
	step_end
; 0x192d22

MovementData_0x192d22: ; 0x192d22
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end
; 0x192d28

MovementData_0x192d28: ; 0x192d28
	step_down
	step_end
; 0x192d2a

MovementData_0x192d2a: ; 0x192d2a
	step_down
	step_down
	step_end
; 0x192d2d

MovementData_0x192d2d: ; 0x192d2d
	step_up
	step_end
; 0x192d2f

MovementData_0x192d2f: ; 0x192d2f
	step_right
	step_end
; 0x192d31

MovementData_0x192d31: ; 0x192d31
	step_left
	step_end
; 0x192d33

MovementData_0x192d33: ; 0x192d33
	slow_step_left
	turn_head_right
	step_end
; 0x192d36

MovementData_0x192d36: ; 0x192d36
	slow_step_right
	turn_head_left
	step_end
; 0x192d39

UnknownText_0x192d39: ; 0x192d39
	text "Vorresti lottare"
	line "tramite il Cavo o"

	para "tramite il telefo-"
	line "no?"
	done
; 0x192d7e

UnknownText_0x192d7e: ; 0x192d7e
	text "Vorresti scambiare"
	line "tramite il Cavo o"

	para "tramite il telefo-"
	line "no?"
	done
; 0x192dc2

UnknownText_0x192dc2: ; 0x192dc2
	text "Entra pure nella"
	line "Cabina Telefonica."
	done
; 0x192de0

UnknownText_0x192de0: ; 0x192de0
	text "Ti do il benvenuto"
	line "nel Colosseo del"
	cont "Club via Cavo."

	para "Qui puoi sfidare"
	line "un amico."

	para "Hai voglia di"
	line "lottare?"
	done
; 0x192e3a

UnknownText_0x192e3a: ; 0x192e3a
	text "Ti do il benvenuto"
	line "nel Centro Scambi"
	cont "del Club via Cavo."

	para "Qui puoi scambiare"
	line "i tuoi #mon con"
	cont "quelli di un"
	cont "amico."

	para "Vuoi scambiare?"
	done
; 0x192e9f

UnknownText_0x192e9f: ; 0x192e9f
	text "Ti do il benvenuto"
	line "nella Tempocapsula"
	cont "del Club via Cavo."

	para "Puoi viaggiare nel"
	line "passato per scam-"
	cont "biare i #mon."

	para "Vorresti fare un"
	line "viaggio nel tempo?"
	done
; 0x192f19

UnknownText_0x192f19: ; 0x192f19
	text "Il tuo amico non é"
	line "pronto."
	prompt
; 0x192f34

UnknownText_0x192f34: ; 0x192f34
	text "Prima di iniziare"
	line "il collegamento,"
	cont "devo salvare il"
	cont "gioco."
	done
; 0x192f67

UnknownText_0x192f67: ; 0x192f67
	text "Attendere prego."
	done
; 0x192f75

UnknownText_0x192f75: ; 0x192f75
	text "Il collegamento é"
	line "stato interrotto a"
	cont "causa di inatti-"
	cont "vità."

	para "Parla col tuo"
	line "amico e riprova."
	prompt
; 0x192fd1

UnknownText_0x192fd1: ; 0x192fd1
	text "Prego, entra."
	prompt
; 0x192fe5

UnknownText_0x192fe5: ; 0x192fe5
	text "Prego, entra."
	prompt
; 0x192ff6

UnknownText_0x192ff6: ; 0x192ff6
	text "Ti faremo entrare"
	line "nella Sala Link."
	done
; 0x193029

UnknownText_0x193029: ; 0x193029
	text "Non puoi collegar-"
	line "ti col passato"
	cont "qui."
	prompt
; 0x19304a

UnknownText_0x19304a: ; 0x19304a
	text "Sono state scelte"
	line "stanze non compa-"
	cont "tibili."
	prompt
; 0x19306b

UnknownText_0x19306b: ; 0x19306b
	text "Prego, entra."
	done
; 0x19307c

UnknownText_0x19307c: ; 0x19307c
	text "Prego, entra."
	prompt
; 0x19308b

UnknownText_0x19308b: ; 0x19308b
	text "Spiacenti,@"
	text_from_ram StringBuffer1
	text ""
	line "non può essere"
	cont "preso."
	prompt
; 0x1930a8

UnknownText_0x1930a8: ; 0x1930a8
	text "Non puoi prendere"
	line "@"
	text_from_ram StringBuffer1
	text " se ha"
	cont "@"
	text_from_ram StringBuffer2
	text "."
	prompt
; 0x1930cf

UnknownText_0x1930cf: ; 0x1930cf
	text "Non puoi portare"
	line "@"
	text_from_ram StringBuffer1
	text " con te"
	cont "perché ha un mess."
	prompt
; 0x193100

UnknownText_0x193100: ; 0x193100
	text "Spiacente, ma la"
	line "Tempocapsula é"
	cont "in riparazione."
	done
; 0x19312f

UnknownText_0x19312f: ; 0x19312f
	text "Spiacente, ma la"
	line "Macchina Scambi"
	cont "é in riparazione."
	done
; 0x19315f

UnknownText_0x19315f: ; 0x19315f
	text "Spiacente, ma la"
	line "Macchina Lotte"
	cont "é in riparazione."
	done
; 0x193190

UnknownText_0x193190: ; 0x193190
	text "Ciao! Tu sei"
	line "<PLAYER>, giusto?"

	para "Ho qualcosa per"
	line "te."
	done
; 0x1931c4

UnknownText_0x1931c4: ; 0x1931c4
	text "Ecco fatto!"
	done
; 0x1931d2

UnknownText_0x1931d2: ; 0x1931d2
	text "Speriamo di ripo-"
	line "terti servire in"
	cont "futuro."
	done
; 0x1931ef

UnknownText_0x1931ef: ; 0x1931ef
	text "Oh, non hai abba-"
	line "stanza spazio."

	para "Passa in qualsiasi"
	line "Centro #mon"

	para "della regione per"
	line "prenderlo."
	done
; 0x19324d

UnknownText_0x19324d: ; 0x19324d
	text "No? È molto stra-"
	line "no<...>"
	done
; 0x193266

UnknownText_0x193266: ; 0x193266
	text "Oh, aspetta prego."
	done
; 0x193278

UnknownText_0x193278: ; 0x193278
	text "Dobbiamo cambiare"
	line "un po' l'aspetto<...>"
	done
; 0x19329a

UnknownText_0x19329a: ; 0x19329a
	text "Come ti sembra"
	line "questo look?"
	done
; 0x1932bc

UnknownText_0x1932bc: ; 0x1932bc
	text "Scusa!"

	para "Per le regole Sta-"
	line "dium, devi usare 6"

	para "#mon diversi,"
	line "uova escluse."

	para "I sei #mon de-"
	line "vono essere diver-"
	cont "si fra loro."

	para "Inoltre, anche gli"
	line "strumenti tenuti"
	cont "devono essere"
	cont "diversi."

	para "Torna pure quando"
	line "sarai pronto."
	done
; 0x19337f

PokeCenter2F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $7, $0, -1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F
	warp_def $0, $5,  1, GROUP_TRADE_CENTER, MAP_TRADE_CENTER
	warp_def $0, $9,  1, GROUP_COLOSSEUM, MAP_COLOSSEUM
	warp_def $2, $d,  1, GROUP_TIME_CAPSULE, MAP_TIME_CAPSULE


	; xy triggers
	db 0

	; signposts
	db 1
	signpost 3, 7, $0, MapPokeCenter2FSignpost0Script

	; people-events
	db 4
	person_event SPRITE_LINK_RECEPTIONIST, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LinkReceptionistScript_0x19289d, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LinkReceptionistScript_0x192952, -1
	person_event SPRITE_LINK_RECEPTIONIST, 7, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LinkReceptionistScript_0x192a2d, -1
	person_event SPRITE_OFFICER, 5, 5, $6, 0, 0, -1, -1, 0, 0, 0, OfficerScript_0x192c9a, EVENT_MYSTERY_GIFT_DELIVERY_MAN
; 0x1933dc

PokeCenter2FKanto_MapEventHeader: ; 0x19337f
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $7, $0, -1, GROUP_POKECENTER_2F_KANTO, MAP_POKECENTER_2F_KANTO
	warp_def $0, $5,  1, GROUP_TRADE_CENTER_KANTO, MAP_TRADE_CENTER_KANTO
	warp_def $0, $9,  1, GROUP_COLOSSEUM_KANTO, MAP_COLOSSEUM_KANTO
	warp_def $2, $d,  1, GROUP_TIME_CAPSULE_KANTO, MAP_TIME_CAPSULE_KANTO


	; xy triggers
	db 0

	; signposts
	db 1
	signpost 3, 7, $0, MapPokeCenter2FSignpost0Script

	; people-events
	db 4
	person_event SPRITE_LINK_RECEPTIONIST, 6, 9, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LinkReceptionistScript_0x19289d, -1
	person_event SPRITE_LINK_RECEPTIONIST, 6, 13, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LinkReceptionistScript_0x192952, -1
	person_event SPRITE_LINK_RECEPTIONIST, 7, 17, $6, 0, 0, -1, -1, 8 + PAL_OW_GREEN, 0, 0, LinkReceptionistScript_0x192a2d, -1
	person_event SPRITE_OFFICER, 5, 5, $6, 0, 0, -1, -1, 0, 0, 0, OfficerScript_0x192c9a, EVENT_MYSTERY_GIFT_DELIVERY_MAN
; 0x1933dc

