	db SLOWPOKE ; 079

	db 90, 65, 65, 15, 40, 40
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC
	db 190 ; catch rate
	db 63 ; base exp
	db NO_ITEM ; item 1
	db KINGS_ROCK ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 5, 5 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn MONSTER, AMPHIBIAN ; egg groups

	; tmhm
	tmhm ZEN_HEADBUTT, CURSE, BODY_SLAM, TOXIC, ZAP_CANNON,   HIDDEN_POWER, SUNNY_DAY,   BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, DIG, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, THUNDER_WAVE, SUBSTITUTE, SURF, STRENGTH, WHIRLPOOL, FLASH, FLAMETHROWER, ICE_BEAM
	; end
