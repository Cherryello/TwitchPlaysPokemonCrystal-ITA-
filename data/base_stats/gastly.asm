	db GASTLY ; 092

	db 30, 35, 30, 80, 100, 35
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON
	db 190 ; catch rate
	db 62 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_SLOW ; growth rate
	dn AMORPHOUS, AMORPHOUS ; egg groups

	; tmhm
	tmhm CURSE, DAZZLINGLEAM, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, WILLOWISP, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDER, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, DARK_PULSE, REST, ATTRACT, THIEF, SUBSTITUTE, THUNDERBOLT

	; end
