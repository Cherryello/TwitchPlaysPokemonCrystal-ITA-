	db WEEZING ; 110

	db 65, 90, 120, 60, 85, 70
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON
	db 60 ; catch rate
	db 172 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 100 ; unknown
	db 20 ; step cycles to hatch
	db 5 ; unknown
	dn 7, 7 ; frontpic dimensions
	db 0, 0, 0, 0 ; padding
	db MEDIUM_FAST ; growth rate
	dn AMORPHOUS, AMORPHOUS ; egg groups

	; tmhm
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, WILLOWISP, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, DARK_PULSE, REST, ATTRACT, THIEF, SUBSTITUTE, FLASH, FLAMETHROWER, THUNDERBOLT
	; end
