text   EQUS "db $00," ; Start writing text.
next   EQUS "db $4e," ; Move a line down.
line   EQUS "db $4f," ; Start writing at the bottom line.
para   EQUS "db $51," ; Start a new paragraph.
cont   EQUS "db $55," ; Scroll to the next line.
done   EQUS "db $57"  ; End a text box.
prompt EQUS "db $58"  ; Prompt the player to end a text box (initiating some other event).

; Pokedex text commands are only used with pokered.
; They are included for compatibility.
page   EQUS "db $50,"     ; Start a new Pokedex page.
dex    EQUS "db $e8, $50" ; End a Pokedex entry.


TX_RAM: MACRO
	db 1
	dw \1
	ENDM

TX_FAR: MACRO
	db $16
	dw \1
	db BANK(\1)
	ENDM


text_from_ram EQUS "TX_RAM"

text_dunno1: macro
	db 5
	endm

text_waitsfx: macro
	db 6
	endm

text_dunno2: macro
	db 7
	endm

start_asm: macro
	db 8
	endm

deciram: macro
	db 9
	dw \1
	db \2 ;first nyble is bytes, second is digits
	endm

interpret_data: macro
	db 10
	endm

sound0: macro
	db 11
	endm

limited_interpret_data: macro
	db 12
	db \1
	endm

sound0x0F: macro
	db $f
	endm

sound0x02: macro
	db $10
	endm

sound0x0A: macro
	db $11
	endm

sound0x2C: macro
	db $13
	endm

current_day: macro
	db $15
	endm

text_jump EQUS "TX_FAR"

metricdex: macro
	db $2f
	dw \1
	endm
