GROUP_N_A EQU -1
MAP_N_A   EQU -1

; map group ids
	const_def
	newgroup ; Olivine City
	mapgroup OLIVINE_POKECENTER_1F, 4, 5
	mapgroup OLIVINE_GYM, 8, 5
	mapgroup OLIVINE_VOLTORB_HOUSE, 4, 4
	mapgroup OLIVINE_PUNISHMENT_SPEECH_HOUSE, 4, 4
	mapgroup OLIVINE_GOOD_ROD_HOUSE, 4, 4
	mapgroup OLIVINE_CAFE, 4, 4
	mapgroup OLIVINE_MART, 4, 6
	mapgroup ROUTE_38_ECRUTEAK_GATE, 4, 5
	mapgroup ROUTE_39_BARN, 4, 4
	mapgroup ROUTE_39_FARMHOUSE, 4, 4
	mapgroup ROUTE_38, 9, 20
	mapgroup ROUTE_39, 18, 10
	mapgroup OLIVINE_CITY, 18, 20

	newgroup ; Mahogany Town
	mapgroup MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, 4, 4
	mapgroup MAHOGANY_GYM, 9, 5
	mapgroup MAHOGANY_POKECENTER_1F, 4, 5
	mapgroup ROUTE_42_ECRUTEAK_GATE, 4, 5
	mapgroup ROUTE_42, 9, 30
	mapgroup ROUTE_44, 9, 30
	mapgroup MAHOGANY_TOWN, 9, 10

	newgroup ; Dungeons
	mapgroup SPROUT_TOWER_1F, 8, 10
	mapgroup SPROUT_TOWER_2F, 8, 10
	mapgroup SPROUT_TOWER_3F, 8, 10
	mapgroup TIN_TOWER_1F, 9, 10
	mapgroup TIN_TOWER_2F, 9, 10
	mapgroup TIN_TOWER_3F, 9, 10
	mapgroup TIN_TOWER_4F, 9, 10
	mapgroup TIN_TOWER_5F, 9, 10
	mapgroup TIN_TOWER_6F, 9, 10
	mapgroup TIN_TOWER_7F, 9, 10
	mapgroup TIN_TOWER_8F, 9, 10
	mapgroup TIN_TOWER_9F, 9, 10
	mapgroup BURNED_TOWER_1F, 9, 10
	mapgroup BURNED_TOWER_B1F, 9, 10
	mapgroup NATIONAL_PARK, 27, 20
	mapgroup NATIONAL_PARK_BUG_CONTEST, 27, 20
	mapgroup RADIO_TOWER_1F, 4, 9
	mapgroup RADIO_TOWER_2F, 4, 9
	mapgroup RADIO_TOWER_3F, 4, 9
	mapgroup RADIO_TOWER_4F, 4, 9
	mapgroup RADIO_TOWER_5F, 4, 9
	mapgroup RUINS_OF_ALPH_OUTSIDE, 18, 10
	mapgroup RUINS_OF_ALPH_HO_OH_CHAMBER, 5, 4
	mapgroup RUINS_OF_ALPH_KABUTO_CHAMBER, 5, 4
	mapgroup RUINS_OF_ALPH_OMANYTE_CHAMBER, 5, 4
	mapgroup RUINS_OF_ALPH_AERODACTYL_CHAMBER, 5, 4
	mapgroup RUINS_OF_ALPH_INNER_CHAMBER, 14, 10
	mapgroup RUINS_OF_ALPH_RESEARCH_CENTER, 4, 4
	mapgroup RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 5, 4
	mapgroup RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 5, 4
	mapgroup RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 5, 4
	mapgroup RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 5, 4
	mapgroup RUINS_OF_ALPH_HO_OH_WORD_ROOM, 12, 10
	mapgroup RUINS_OF_ALPH_KABUTO_WORD_ROOM, 7, 10
	mapgroup RUINS_OF_ALPH_OMANYTE_WORD_ROOM, 8, 10
	mapgroup RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, 7, 10
	mapgroup UNION_CAVE_1F, 18, 10
	mapgroup UNION_CAVE_B1F, 18, 10
	mapgroup UNION_CAVE_B2F, 18, 10
	mapgroup SLOWPOKE_WELL_B1F, 9, 10
	mapgroup SLOWPOKE_WELL_B2F, 9, 10
	mapgroup OLIVINE_LIGHTHOUSE_1F, 9, 10
	mapgroup OLIVINE_LIGHTHOUSE_2F, 9, 10
	mapgroup OLIVINE_LIGHTHOUSE_3F, 9, 10
	mapgroup OLIVINE_LIGHTHOUSE_4F, 9, 10
	mapgroup OLIVINE_LIGHTHOUSE_5F, 9, 10
	mapgroup OLIVINE_LIGHTHOUSE_6F, 9, 10
	mapgroup MAHOGANY_MART_1F, 4, 4
	mapgroup TEAM_ROCKET_BASE_B1F, 9, 15
	mapgroup TEAM_ROCKET_BASE_B2F, 9, 15
	mapgroup TEAM_ROCKET_BASE_B3F, 9, 15
	mapgroup ILEX_FOREST, 27, 15
	mapgroup WAREHOUSE_ENTRANCE, 18, 15
	mapgroup UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 18, 15
	mapgroup GOLDENROD_DEPT_STORE_B1F, 9, 10
	mapgroup UNDERGROUND_WAREHOUSE, 9, 10
	mapgroup MOUNT_MORTAR_1F_OUTSIDE, 18, 20
	mapgroup MOUNT_MORTAR_1F_INSIDE, 27, 20
	mapgroup MOUNT_MORTAR_2F_INSIDE, 18, 20
	mapgroup MOUNT_MORTAR_B1F, 18, 20
	mapgroup ICE_PATH_1F, 18, 20
	mapgroup ICE_PATH_B1F, 18, 10
	mapgroup ICE_PATH_B2F_MAHOGANY_SIDE, 9, 10
	mapgroup ICE_PATH_B2F_BLACKTHORN_SIDE, 9, 5
	mapgroup ICE_PATH_B3F, 9, 10
	mapgroup WHIRL_ISLAND_NW, 9, 5
	mapgroup WHIRL_ISLAND_NE, 9, 10
	mapgroup WHIRL_ISLAND_SW, 9, 10
	mapgroup WHIRL_ISLAND_CAVE, 9, 5
	mapgroup WHIRL_ISLAND_SE, 9, 5
	mapgroup WHIRL_ISLAND_B1F, 18, 20
	mapgroup WHIRL_ISLAND_B2F, 18, 10
	mapgroup WHIRL_ISLAND_LUGIA_CHAMBER, 9, 10
	mapgroup SILVER_CAVE_ROOM_1, 18, 10
	mapgroup SILVER_CAVE_ROOM_2, 18, 15
	mapgroup SILVER_CAVE_ROOM_3, 18, 10
	mapgroup SILVER_CAVE_ITEM_ROOMS, 9, 10
	mapgroup DARK_CAVE_VIOLET_ENTRANCE, 18, 20
	mapgroup DARK_CAVE_BLACKTHORN_ENTRANCE, 18, 15
	mapgroup DRAGONS_DEN_1F, 9, 5
	mapgroup DRAGONS_DEN_B1F, 18, 20
	mapgroup DRAGON_SHRINE, 5, 5
	mapgroup TOHJO_FALLS, 15, 21
	mapgroup DIGLETTS_CAVE, 18, 10
	mapgroup UNDERGROUND, 14, 3
	mapgroup ROCK_TUNNEL_1F, 18, 15
	mapgroup ROCK_TUNNEL_B1F, 18, 15
	mapgroup VICTORY_ROAD, 36, 10

	newgroup ; Ecruteak City
	mapgroup ECRUTEAK_HOUSE, 9, 10
	mapgroup WISE_TRIOS_ROOM, 4, 4
	mapgroup ECRUTEAK_POKECENTER_1F, 4, 5
	mapgroup ECRUTEAK_LUGIA_SPEECH_HOUSE, 4, 4
	mapgroup DANCE_THEATRE, 7, 6
	mapgroup ECRUTEAK_MART, 4, 6
	mapgroup ECRUTEAK_GYM, 9, 5
	mapgroup ECRUTEAK_ITEMFINDER_HOUSE, 4, 4
	mapgroup ECRUTEAK_ELITE_FLOOR, 13, 11
	mapgroup ECRUTEAK_CITY, 18, 20

	newgroup ; Blackthron City
	mapgroup BLACKTHORN_GYM_1F, 9, 5
	mapgroup BLACKTHORN_GYM_2F, 9, 5
	mapgroup BLACKTHORNGYMREMATCH1F, 12, 8
	mapgroup BLACKTHORNGYMREMATCH2F, 12, 8
	mapgroup BLACKTHORN_DRAGON_SPEECH_HOUSE, 4, 4
	mapgroup BLACKTHORN_DODRIO_TRADE_HOUSE, 4, 4
	mapgroup BLACKTHORN_MART, 4, 6
	mapgroup BLACKTHORN_POKECENTER_1F, 4, 5
	mapgroup MOVE_DELETERS_HOUSE, 4, 4
	mapgroup ROUTE_45, 45, 10
	mapgroup ROUTE_46, 18, 10
	mapgroup BLACKTHORN_CITY, 18, 20

	newgroup ; Cinnabar Island
	mapgroup CINNABAR_POKECENTER_1F, 4, 8
	mapgroup ROUTE_19___FUCHSIA_GATE, 4, 5
	mapgroup SEAFOAM_GYM, 4, 5
	mapgroup ROUTE_19, 18, 10
	mapgroup ROUTE_20, 9, 30
	mapgroup ROUTE_21, 18, 10
	mapgroup CINNABAR_ISLAND, 20, 20

	newgroup; Cerulean City
	mapgroup CERULEAN_GYM_BADGE_SPEECH_HOUSE, 4, 4
	mapgroup CERULEAN_POLICE_STATION, 4, 4
	mapgroup CERULEAN_TRADE_SPEECH_HOUSE, 4, 4
	mapgroup CERULEAN_POKECENTER_1F, 4, 8
	mapgroup CERULEAN_GYM, 8, 5
	mapgroup CERULEAN_MART, 4, 6
	mapgroup ROUTE_10_POKECENTER_1F, 4, 8
	mapgroup POWER_PLANT, 9, 10
	mapgroup BILLS_HOUSE, 4, 4
	mapgroup ROUTE_4, 9, 20
	mapgroup ROUTE_9, 9, 30
	mapgroup ROUTE_10_NORTH, 13, 13
	mapgroup ROUTE_24, 9, 10
	mapgroup ROUTE_25, 9, 30
	mapgroup CERULEAN_CITY, 18, 20

	newgroup ; Azalea Town
	mapgroup AZALEA_POKECENTER_1F, 4, 5
	mapgroup CHARCOAL_KILN, 4, 4
	mapgroup AZALEA_MART, 4, 6
	mapgroup KURTS_HOUSE, 4, 8
	mapgroup AZALEA_GYM, 8, 5
	mapgroup ROUTE_33, 9, 10
	mapgroup AZALEA_TOWN, 9, 20

	newgroup ; Lake of Rage
	mapgroup LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 4, 4
	mapgroup LAKE_OF_RAGE_MAGIKARP_HOUSE, 4, 4
	mapgroup ROUTE_43_MAHOGANY_GATE, 4, 5
	mapgroup ROUTE_43_GATE, 4, 5
	mapgroup ROUTE_43, 27, 10
	mapgroup LAKE_OF_RAGE, 18, 20

	newgroup ; Violet City
	mapgroup ROUTE_32, 45, 10
	mapgroup ROUTE_35, 18, 10
	mapgroup ROUTE_36, 9, 30
	mapgroup ROUTE_37, 9, 10
	mapgroup VIOLET_CITY, 18, 20
	mapgroup VIOLET_MART, 4, 6
	mapgroup VIOLET_GYM, 8, 5
	mapgroup EARLS_POKEMON_ACADEMY, 8, 4
	mapgroup VIOLET_NICKNAME_SPEECH_HOUSE, 4, 4
	mapgroup VIOLET_POKECENTER_1F, 4, 5
	mapgroup VIOLET_ONIX_TRADE_HOUSE, 4, 4
	mapgroup ROUTE_32_RUINS_OF_ALPH_GATE, 4, 5
	mapgroup ROUTE_32_POKECENTER_1F, 4, 5
	mapgroup ROUTE_35_GOLDENROD_GATE, 4, 5
	mapgroup ROUTE_35_NATIONAL_PARK_GATE, 4, 4
	mapgroup ROUTE_36_RUINS_OF_ALPH_GATE, 4, 5
	mapgroup ROUTE_36_NATIONAL_PARK_GATE, 4, 5

	newgroup ; Goldenrod City
	mapgroup ROUTE_34, 27, 10
	mapgroup GOLDENROD_CITY, 18, 20
	mapgroup GOLDENROD_GYM, 9, 10
	mapgroup GOLDENROD_BIKE_SHOP, 4, 4
	mapgroup GOLDENROD_HAPPINESS_RATER, 4, 4
	mapgroup GOLDENROD_BILLS_HOUSE, 4, 4
	mapgroup GOLDENROD_MAGNET_TRAIN_STATION, 9, 10
	mapgroup GOLDENROD_FLOWER_SHOP, 4, 4
	mapgroup GOLDENROD_PP_SPEECH_HOUSE, 4, 4
	mapgroup GOLDENROD_NAME_RATERS_HOUSE, 4, 4
	mapgroup GOLDENROD_DEPT_STORE_1F, 4, 8
	mapgroup GOLDENROD_DEPT_STORE_2F, 4, 8
	mapgroup GOLDENROD_DEPT_STORE_3F, 4, 8
	mapgroup GOLDENROD_DEPT_STORE_4F, 4, 8
	mapgroup GOLDENROD_DEPT_STORE_5F, 4, 8
	mapgroup GOLDENROD_DEPT_STORE_6F, 4, 8
	mapgroup GOLDENROD_DEPT_STORE_ELEVATOR, 2, 2
	mapgroup GOLDENROD_DEPT_STORE_ROOF, 4, 8
	mapgroup GOLDENROD_GAME_CORNER, 7, 10
	mapgroup GOLDENROD_POKECENTER_1F, 8, 16
	mapgroup GOLDENROD_POKECOM_CENTER_2F_MOBILE, 16, 16
	mapgroup GOLDENROD_BOUTIQUE, 4, 6
	mapgroup ILEX_FOREST_AZALEA_GATE, 4, 5
	mapgroup ROUTE_34_ILEX_FOREST_GATE, 4, 5
	mapgroup DAY_CARE, 4, 5

	newgroup ; Vermilion City Roofs
	mapgroup ROUTE_6, 9, 10
	mapgroup ROUTE_11, 9, 20
	mapgroup VERMILION_CITY, 18, 20
	mapgroup VERMILION_HOUSE_FISHING_SPEECH_HOUSE, 4, 4
	mapgroup VERMILION_POKECENTER_1F, 4, 8
	mapgroup POKEMON_FAN_CLUB, 4, 5
	mapgroup VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 4, 4
	mapgroup VERMILION_MART, 4, 6
	mapgroup VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, 4, 4
	mapgroup VERMILION_GYM, 9, 5
	mapgroup VERMILION_GYM_2, 14, 12
	mapgroup ROUTE_6_SAFFRON_GATE, 4, 5
	mapgroup ROUTE_6_UNDERGROUND_ENTRANCE, 4, 4
	mapgroup MEWISLANDENTRANCE, 18, 10
	mapgroup ROUTE_11_12_GATE, 4, 5

	newgroup ; Pallet Town Roofs
	mapgroup ROUTE_1, 18, 10
	mapgroup PALLET_TOWN, 9, 10
	mapgroup REDS_HOUSE_1F, 4, 4
	mapgroup REDS_HOUSE_2F, 4, 4
	mapgroup BLUES_HOUSE, 4, 4
	mapgroup OAKS_LAB, 6, 5

	newgroup ; Pewter City Roofs
	mapgroup ROUTE_3, 9, 30
	mapgroup PEWTER_CITY, 18, 20
	mapgroup PEWTER_NIDORAN_SPEECH_HOUSE, 4, 4
	mapgroup PEWTER_GYM, 7, 5
	mapgroup PEWTER_MART, 4, 6
	mapgroup PEWTER_POKECENTER_1F, 4, 8
	mapgroup PEWTER_SNOOZE_SPEECH_HOUSE, 4, 4
	mapgroup ROUTE_2_NORTH, 18, 10

	newgroup ; Ports and Ship
	mapgroup OLIVINE_PORT, 18, 10
	mapgroup VERMILION_PORT, 18, 10
	mapgroup FAST_SHIP_1F, 9, 16
	mapgroup FAST_SHIP_CABINS_NNW_NNE_NE, 16, 4
	mapgroup FAST_SHIP_CABINS_SW_SSW_NW, 16, 4
	mapgroup FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, 17, 5
	mapgroup FAST_SHIP_B1F, 8, 16
	mapgroup OLIVINE_PORT_PASSAGE, 9, 10
	mapgroup VERMILION_PORT_PASSAGE, 9, 10
	mapgroup MOUNT_MOON_SQUARE, 9, 15
	mapgroup MOUNT_MOON_GIFT_SHOP, 4, 4
	mapgroup TIN_TOWER_ROOF, 9, 10

	newgroup ; Pokemon League
	mapgroup ROUTE_23, 9, 10
	mapgroup INDIGO_PLATEAU_POKECENTER_1F, 7, 9
	mapgroup WILLS_ROOM, 9, 5
	mapgroup KOGAS_ROOM, 9, 5
	mapgroup BRUNOS_ROOM, 9, 5
	mapgroup KARENS_ROOM, 9, 5
	mapgroup LANCES_ROOM, 12, 5
	mapgroup HALL_OF_FAME, 7, 5
	mapgroup HALLWAY_OF_FAME, 10, 5

	newgroup ; Fuchsia City Roofs
	mapgroup ROUTE_13, 9, 30
	mapgroup ROUTE_14, 18, 10
	mapgroup ROUTE_15, 9, 20
	mapgroup ROUTE_18, 9, 10
	mapgroup FUCHSIA_CITY, 18, 20
	mapgroup FUCHSIA_MART, 4, 6
	mapgroup SAFARI_ZONE_MAIN_OFFICE, 4, 4
	mapgroup FUCHSIA_GYM, 9, 5
	mapgroup FUCHSIA_BILL_SPEECH_HOUSE, 4, 4
	mapgroup FUCHSIA_POKECENTER_1F, 4, 8
	mapgroup SAFARI_ZONE_WARDENS_HOME, 4, 5
	mapgroup ROUTE_15_FUCHSIA_GATE, 4, 5
	mapgroup FUCHSIA_GYM_2, 13, 7

	newgroup ; Lavender Town
	mapgroup ROUTE_8, 9, 21
	mapgroup ROUTE_12, 27, 10
	mapgroup ROUTE_10_SOUTH, 9, 10
	mapgroup LAVENDER_TOWN, 9, 10
	mapgroup LAVENDER_POKECENTER_1F, 4, 8
	mapgroup MR_FUJIS_HOUSE, 4, 5
	mapgroup LAVENDER_TOWN_SPEECH_HOUSE, 4, 4
	mapgroup LAVENDER_NAME_RATER, 4, 4
	mapgroup LAVENDER_MART, 4, 6
	mapgroup SOUL_HOUSE, 4, 5
	mapgroup LAV_RADIO_TOWER_1F, 4, 10
	mapgroup ROUTE_8_SAFFRON_GATE, 4, 5
	mapgroup ROUTE_12_SUPER_ROD_HOUSE, 4, 4

	newgroup ; Silver Cave
	mapgroup ROUTE_28, 9, 20
	mapgroup SILVER_CAVE_OUTSIDE, 18, 20
	mapgroup SILVER_CAVE_POKECENTER_1F, 4, 5
	mapgroup ROUTE_28_FAMOUS_SPEECH_HOUSE, 4, 4

	newgroup ; Communications Center
	mapgroup POKECENTER_2F, 4, 8
	mapgroup TRADE_CENTER, 4, 5
	mapgroup COLOSSEUM, 4, 5
	mapgroup TIME_CAPSULE, 4, 5
	mapgroup POKECENTER_2F_KANTO, 4, 8
	mapgroup TRADE_CENTER_KANTO, 4, 5
	mapgroup COLOSSEUM_KANTO, 4, 5
	mapgroup TIME_CAPSULE_KANTO, 4, 5

	newgroup ; Celadon City
	mapgroup ROUTE_7, 9, 10
	mapgroup ROUTE_16, 9, 10
	mapgroup ROUTE_17, 45, 10
	mapgroup CELADON_CITY, 18, 20
	mapgroup CELADON_DEPT_STORE_1F, 4, 8
	mapgroup CELADON_DEPT_STORE_2F, 4, 8
	mapgroup CELADON_DEPT_STORE_3F, 4, 8
	mapgroup CELADON_DEPT_STORE_4F, 4, 8
	mapgroup CELADON_DEPT_STORE_5F, 4, 8
	mapgroup CELADON_DEPT_STORE_6F, 4, 8
	mapgroup CELADON_DEPT_STORE_ELEVATOR, 2, 2
	mapgroup CELADON_MANSION_1F, 5, 4
	mapgroup CELADON_MANSION_2F, 5, 4
	mapgroup CELADON_MANSION_3F, 5, 4
	mapgroup CELADON_MANSION_ROOF, 5, 4
	mapgroup CELADON_MANSION_ROOF_HOUSE, 4, 4
	mapgroup CELADON_POKECENTER_1F, 4, 8
	mapgroup CELADON_GAME_CORNER, 7, 10
	mapgroup CELADON_GAME_CORNER_PRIZE_ROOM, 3, 3
	mapgroup CELADON_GYM, 9, 5
	mapgroup CELADON_CAFE, 4, 6
	mapgroup ROUTE_16_FUCHSIA_SPEECH_HOUSE, 4, 4
	mapgroup ROUTE_16_GATE, 4, 5
	mapgroup ROUTE_7_SAFFRON_GATE, 4, 5
	mapgroup ROUTE_17_18_GATE, 4, 5

	newgroup ; Cianwood City
	mapgroup ROUTE_40, 18, 10
	mapgroup ROUTE_41, 27, 25
	mapgroup CIANWOOD_CITY, 27, 15
	mapgroup MANIAS_HOUSE, 4, 4
	mapgroup CIANWOOD_GYM, 9, 5
	mapgroup CIANWOOD_POKECENTER_1F, 4, 5
	mapgroup CIANWOOD_PHARMACY, 4, 4
	mapgroup CIANWOOD_CITY_PHOTO_STUDIO, 4, 4
	mapgroup CIANWOOD_LUGIA_SPEECH_HOUSE, 4, 4
	mapgroup POKE_SEERS_HOUSE, 4, 4
	mapgroup BATTLE_TOWER_1F, 5, 8
	mapgroup BATTLE_TOWER_BATTLE_ROOM, 4, 4
	mapgroup BATTLE_TOWER_ELEVATOR, 2, 2
	mapgroup BATTLE_TOWER_HALLWAY, 2, 11
	mapgroup ROUTE_40_BATTLE_TOWER_GATE, 4, 5
	mapgroup BATTLE_TOWER_OUTSIDE, 14, 10
	mapgroup CIANWOOD_ROCK_SMASH_SPEECH_HOUSE, 4, 4

	newgroup ; Viridian City
	mapgroup ROUTE_2_SOUTH, 18, 10
	mapgroup ROUTE_22, 9, 20
	mapgroup VIRIDIAN_CITY, 18, 20
	mapgroup VIRIDIAN_GYM, 23, 7
	mapgroup VIRIDIAN_NICKNAME_SPEECH_HOUSE, 4, 4
	mapgroup TRAINER_HOUSE_1F, 7, 5
	mapgroup TRAINER_HOUSE_B1F, 8, 5
	mapgroup VIRIDIAN_MART, 4, 6
	mapgroup VIRIDIAN_POKECENTER_1F, 4, 8
	mapgroup ROUTE_2_NUGGET_SPEECH_HOUSE, 4, 4
	mapgroup ROUTE_2_GATE, 4, 5
	mapgroup VICTORY_ROAD_GATE, 9, 10

	newgroup ; New Bark Town
	mapgroup ROUTE_26, 54, 10
	mapgroup ROUTE_27, 9, 40
	mapgroup ROUTE_29, 9, 30
	mapgroup NEW_BARK_TOWN, 9, 10
	mapgroup ELMS_LAB, 6, 5
	mapgroup KRISS_HOUSE_1F, 4, 5
	mapgroup KRISS_HOUSE_2F, 3, 4
	mapgroup KRISS_NEIGHBORS_HOUSE, 4, 4
	mapgroup ELMS_HOUSE, 4, 4
	mapgroup ROUTE_26_HEAL_SPEECH_HOUSE, 4, 4
	mapgroup ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE, 4, 4
	mapgroup ROUTE_27_SANDSTORM_HOUSE, 4, 4
	mapgroup ROUTE_29_46_GATE, 4, 5

	newgroup ; Saffron City
	mapgroup ROUTE_5, 9, 10
	mapgroup SAFFRON_CITY, 18, 20
	mapgroup FIGHTING_DOJO, 6, 5
	mapgroup SAFFRON_GYM, 9, 10
	mapgroup SAFFRON_MART, 4, 6
	mapgroup SAFFRON_POKECENTER_1F, 4, 8
	mapgroup MR_PSYCHICS_HOUSE, 4, 4
	mapgroup SAFFRON_TRAIN_STATION, 9, 10
	mapgroup SILPH_CO_1F, 4, 8
	mapgroup COPYCATS_HOUSE_1F, 4, 4
	mapgroup COPYCATS_HOUSE_2F, 3, 5
	mapgroup ROUTE_5_UNDERGROUND_ENTRANCE, 4, 4
	mapgroup ROUTE_5_SAFFRON_CITY_GATE, 4, 5
	mapgroup ROUTE_5_CLEANSE_TAG_SPEECH_HOUSE, 4, 4
	mapgroup SAFFRON_GYM_2, 11, 7

	newgroup
	mapgroup ROUTE_30, 27, 10
	mapgroup ROUTE_31, 9, 20
	mapgroup CHERRYGROVE_CITY, 9, 20
	mapgroup CHERRYGROVE_MART, 4, 6
	mapgroup CHERRYGROVE_POKECENTER_1F, 4, 5
	mapgroup CHERRYGROVE_GYM_SPEECH_HOUSE, 4, 4
	mapgroup GUIDE_GENTS_HOUSE, 4, 4
	mapgroup CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 4, 4
	mapgroup ROUTE_30_BERRY_SPEECH_HOUSE, 4, 4
	mapgroup MR_POKEMONS_HOUSE, 4, 4
	mapgroup ROUTE_31_VIOLET_GATE, 4, 5

	newgroup
	mapgroup VIRIDIAN_FOREST, $18, $11
	mapgroup VIRIDIAN_FOREST_GATE_NORTH, $04, $05
	mapgroup VIRIDIAN_FOREST_GATE_SOUTH, $04, $05
	mapgroup MT_MOON_B1F, 18, 20
	mapgroup MT_MOON_B2F, 14, 14
	mapgroup MT_MOON_B3F, 18, 20
	mapgroup MOUNT_MOON_POKECENTER_1F, 4, 8
	mapgroup CERULEANCAVE1, 9, 15
	mapgroup CERULEANCAVE2, 9, 15
	mapgroup CERULEANCAVE3, 9, 15
	mapgroup MEWISLANDUNDERGROUND, 9, 10
	mapgroup MEWISLANDENTRANCEDOCK, 18, 10
	mapgroup MEWISLANDB1B, 7, 12
	mapgroup MEWISLANDB1, 9, 15
	mapgroup MEWISLANDF1, 9, 15
	mapgroup MEWISLANDF2, 9, 15
	mapgroup MEWISLANDPEAK, 9, 10
	mapgroup BATTLE_TENT_RUINS, 4, 6
	mapgroup BATTLE_TENT_BATTLE_ROOM, 4, 6
	mapgroup BATTLE_TENT_GENERATOR, 10, 10
	mapgroup ROCKET_HIDEOUT_1, 14, 15
	mapgroup ROCKET_HIDEOUT_2, 14, 15
	mapgroup ROCKET_HIDEOUT_3, 14, 15
	mapgroup ROCKET_HIDEOUT_4, 12, 15
	mapgroup BATTLE_TENT_PC_ROOM, 4, 4
	mapgroup OLIVINE_LIGHTHOUSE_ELEVATOR, 3, 3
	mapgroup POWERPLANTB1, 18, 20
	mapgroup POWERPLANTB2, 18, 20

	mapgroup ENTEI_ROOM, 4, 5
	mapgroup RAIKOU_ROOM, 4, 5
	mapgroup SUICUNE_ROOM, 4, 5

	newgroup
	mapgroup CINNABAR_VOLCANO_ENTRANCE, 4, 5
	mapgroup CINNABAR_VOLCANO_B1F, 18, 12
	mapgroup CINNABAR_VOLCANO_B2F, 18, 20
	mapgroup CINNABAR_VOLCANO_B3F, 18, 20
	mapgroup SEAFOAM_ISLANDS_ENTRANCE, 12, 5
	mapgroup SEAFOAM_ISLANDS_B1F, 24, 24
	mapgroup SEAFOAM_ISLANDS_B2F, 12, 12
	mapgroup SEAFOAM_ISLANDS_B3F, 12, 5
	mapgroup TOHJO_FALLS_BACK_ROOM, 4, 5
	mapgroup CELADON_DEPT_STORE_B1F, 4, 8
	mapgroup SILVER_CAVE_DREAM_ROOM, 18, 10
	mapgroup MT_SILVER_RUINS, 24, 16
	mapgroup MT_SILVER_RUINS_B1, 16, 16
	mapgroup BILLS_GARDEN, 20, 20
	mapgroup DUMMY_BLANK_MAP, 1, 1
	mapgroup CINNABAR_VOLCANO_HALLWAY, 4, 10
	mapgroup CINNABAR_VOLCANO_LAB, 10, 12

	newgroup ; Pallet Town RB
	mapgroup ROUTE_1_RB, 18, 10
	mapgroup PALLET_TOWN_RB, 9, 10
	mapgroup REDS_HOUSE_1F_RB, 4, 4
	mapgroup REDS_HOUSE_2F_RB, 4, 4
	mapgroup BLUES_HOUSE_RB, 4, 4
	mapgroup OAKS_LAB_RB, 6, 5

	newgroup ; Viridian City RB
	mapgroup ROUTE_2_RB, 36, 10
	mapgroup ROUTE_22_RB, 9, 20
	mapgroup VIRIDIAN_CITY_RB, 18, 20
	mapgroup VIRIDIAN_MART_RB, 4, 6
	mapgroup VIRIDIAN_POKECENTER_1F_RB, 4, 8
	mapgroup VIRIDIAN_NICKNAME_SPEECH_HOUSE_RB, 4, 4
	mapgroup VIRIDIAN_TRAINER_SCHOOL_RB, 4, 4
	mapgroup VICTORY_ROAD_GATE_RB, 4, 5
	mapgroup ROUTE_23_RB, 20, 10
	mapgroup ROUTE_2_NUGGET_SPEECH_HOUSE_RB, 4, 4
	mapgroup ROUTE_2_GATE_RB, 4, 5

	newgroup ; Pewter City RB
	mapgroup PEWTER_CITY_RB, 18, 20
	mapgroup PEWTER_GYM_RB, 7, 5
	mapgroup PEWTER_MART_RB, 4, 6
	mapgroup PEWTER_POKECENTER_1F_RB, 4, 8
	mapgroup PEWTER_SNOOZE_SPEECH_HOUSE_RB, 4, 4
	mapgroup PEWTER_NIDORAN_SPEECH_HOUSE_RB, 4, 4
	mapgroup PEWTER_MUSEUM_1F_RB, 4, 10
	mapgroup PEWTER_MUSEUM_2F_RB, 4, 7
	mapgroup ROUTE_3_RB, 9, 30
	mapgroup MOUNT_MOON_POKECENTER_1F_RB, 4, 8

	newgroup ; Cerulean City RB
	mapgroup CERULEAN_GYM_RB, 8, 5
	mapgroup ROUTE_4_RB, 9, 20
	mapgroup CERULEAN_CITY_RB, 18, 20
	mapgroup CERULEAN_POKECENTER_1F_RB, 4, 8
	mapgroup CERULEAN_MART_RB, 4, 6
	mapgroup CERULEAN_GYM_BADGE_SPEECH_HOUSE_RB, 4, 4
	mapgroup CERULEAN_TRADE_SPEECH_HOUSE_RB, 4, 4
	mapgroup ROUTE_24_RB, 18, 10
	mapgroup ROUTE_25_RB, 9, 30
	mapgroup BILLS_HOUSE_RB, 4, 4
	mapgroup ROUTE_9_RB, 9, 6

	newgroup ; Vermilion City RB
	mapgroup ROUTE_6_SAFFRON_GATE_RB, 4, 5
	mapgroup ROUTE_6_UNDERGROUND_ENTRANCE_RB, 4, 4
	mapgroup ROUTE_6_RB, 12, 10
	mapgroup VERMILION_CITY_RB, 18, 20
	mapgroup VERMILION_POKECENTER_1F_RB, 4, 8
	mapgroup VERMILION_MART_RB, 4, 6
	mapgroup VERMILION_HOUSE_FISHING_SPEECH_HOUSE_RB, 4, 4
	mapgroup POKEMON_FAN_CLUB_RB, 4, 5
	mapgroup VERMILION_MAGNET_TRAIN_SPEECH_HOUSE_RB, 4, 4
	mapgroup VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE_RB, 4, 4
	mapgroup ROUTE_11_RB, 9, 20
	mapgroup ROUTE_11_GATE_RB, 4, 5
	mapgroup ROUTE_12_RB, 9, 10 ; RB

	newgroup ; Saffron Area RB
	mapgroup ROUTE_5_RB, 9, 10
	mapgroup ROUTE_5_UNDERGROUND_ENTRANCE_RB, 4, 4
	mapgroup ROUTE_5_SAFFRON_CITY_GATE_RB, 4, 5

	newgroup ; EGK dungeons etc
	mapgroup VIRIDIAN_FOREST_RB, $18, $11
	mapgroup VIRIDIAN_FOREST_NORTH_RB, $04, $05
	mapgroup VIRIDIAN_FOREST_SOUTH_RB, $04, $05
	mapgroup DIGLETTS_CAVE_RB, 18, 10
	mapgroup MT_MOON_B1F_RB, 18, 20
	mapgroup MT_MOON_B2F_RB, 14, 14
	mapgroup MT_MOON_B3F_RB, 18, 20
	mapgroup UNDERGROUND_RB, 14, 3
	mapgroup VERMILION_DOCK, 6, 14
	mapgroup S_S_ANNE_1,   9, 20
	mapgroup S_S_ANNE_2,   9, 20
	mapgroup S_S_ANNE_3,   3, 10
	mapgroup S_S_ANNE_4,   4, 15
	mapgroup S_S_ANNE_5,   7, 10
	mapgroup S_S_ANNE_6,   8,  7
	mapgroup S_S_ANNE_7,   4,  3
	mapgroup S_S_ANNE_8,   8, 12
	mapgroup S_S_ANNE_9,   8, 12
	mapgroup S_S_ANNE_10,  8, 12

; elevator floors
	const_def
	const _B4F
	const _B3F
	const _B2F
	const _B1F
	const _1F
	const _2F
	const _3F
	const _4F
	const _5F
	const _6F
	const _7F
	const _8F
	const _9F
	const _10F
	const _11F
	const _ROOF

; connection directions
EAST EQU 1
WEST EQU 2
SOUTH EQU 4
NORTH EQU 8

; sprites
	const_def
	const SPRITE_NONE
	const SPRITE_RUST
	const SPRITE_RUST_BIKE
	const SPRITE_GAMEBOY_KID
	const SPRITE_SILVER
	const SPRITE_OAK
	const SPRITE_RED
	const SPRITE_BLUE
	const SPRITE_BILL
	const SPRITE_ELDER
	const SPRITE_JANINE
	const SPRITE_KURT
	const SPRITE_MOM
	const SPRITE_BLAINE
	const SPRITE_REDS_MOM
	const SPRITE_DAISY
	const SPRITE_ELM
	const SPRITE_WILL
	const SPRITE_FALKNER
	const SPRITE_WHITNEY
	const SPRITE_BUGSY
	const SPRITE_MORTY
	const SPRITE_CHUCK
	const SPRITE_JASMINE
	const SPRITE_PRYCE
	const SPRITE_CLAIR
	const SPRITE_BROCK
	const SPRITE_KAREN
	const SPRITE_BRUNO
	const SPRITE_MISTY
	const SPRITE_LANCE
	const SPRITE_SURGE
	const SPRITE_ERIKA
	const SPRITE_KOGA
	const SPRITE_SABRINA
	const SPRITE_COOLTRAINER_M
	const SPRITE_COOLTRAINER_F
	const SPRITE_BUG_CATCHER
	const SPRITE_TWIN
	const SPRITE_YOUNGSTER
	const SPRITE_LASS
	const SPRITE_TEACHER
	const SPRITE_BUENA
	const SPRITE_SUPER_NERD
	const SPRITE_ROCKER
	const SPRITE_POKEFAN_M
	const SPRITE_POKEFAN_F
	const SPRITE_GRAMPS
	const SPRITE_GRANNY
	const SPRITE_SWIMMER_GUY
	const SPRITE_SWIMMER_GIRL
	const SPRITE_BIG_SNORLAX
	const SPRITE_SURFING_PIKACHU
	const SPRITE_ROCKET
	const SPRITE_ROCKET_GIRL
	const SPRITE_NURSE
	const SPRITE_LINK_RECEPTIONIST
	const SPRITE_CLERK
	const SPRITE_FISHER
	const SPRITE_FISHING_GURU
	const SPRITE_SCIENTIST
	const SPRITE_KIMONO_GIRL
	const SPRITE_SAGE
	const SPRITE_UNUSED_GUY
	const SPRITE_GENTLEMAN
	const SPRITE_BLACK_BELT
	const SPRITE_RECEPTIONIST
	const SPRITE_OFFICER
	const SPRITE_CAL
	const SPRITE_SLOWPOKE
	const SPRITE_CAPTAIN
	const SPRITE_BIG_LAPRAS
	const SPRITE_GYM_GUY
	const SPRITE_SAILOR
	const SPRITE_BIKER
	const SPRITE_PHARMACIST
	const SPRITE_MONSTER
	const SPRITE_FAIRY
	const SPRITE_BIRD
	const SPRITE_DRAGON
	const SPRITE_BIG_ONIX
	const SPRITE_N64
	const SPRITE_SUDOWOODO
	const SPRITE_SURF
	const SPRITE_POKE_BALL
	const SPRITE_POKEDEX
	const SPRITE_PAPER
	const SPRITE_VIRTUAL_BOY
	const SPRITE_OLD_LINK_RECEPTIONIST
	const SPRITE_ROCK
	const SPRITE_BOULDER
	const SPRITE_SNES
	const SPRITE_FAMICOM
	const SPRITE_FRUIT_TREE
	const SPRITE_GOLD_TROPHY
	const SPRITE_SILVER_TROPHY
	const SPRITE_AZURE
	const SPRITE_AZURE_BIKE
	const SPRITE_KURT_OUTSIDE
	const SPRITE_SUICUNE
	const SPRITE_ENTEI
	const SPRITE_RAIKOU
	const SPRITE_STANDING_YOUNGSTER
	const SPRITE_GIOVANNI
	const SPRITE_SIDEWAYS_GRAMPS
	const SPRITE_OLD_AMBER
	const SPRITE_DOME_FOSSIL
	const SPRITE_HELIX_FOSSIL
	const SPRITE_AJDNNW
	const SPRITE_BABA

const_value = $80
SPRITE_POKEMON EQU const_value
	const SPRITE_UNOWN
	const SPRITE_GEODUDE
	const SPRITE_GROWLITHE
	const SPRITE_WEEDLE
	const SPRITE_SHELLDER
	const SPRITE_ODDISH
	const SPRITE_GENGAR
	const SPRITE_ZUBAT
	const SPRITE_MAGIKARP
	const SPRITE_SQUIRTLE
	const SPRITE_TOGEPI
	const SPRITE_BUTTERFREE
	const SPRITE_DIGLETT
	const SPRITE_POLIWAG
	const SPRITE_PIKACHU
	const SPRITE_CLEFAIRY
	const SPRITE_CHARMANDER
	const SPRITE_JYNX
	const SPRITE_STARMIE
	const SPRITE_BULBASAUR
	const SPRITE_JIGGLYPUFF
	const SPRITE_GRIMER
	const SPRITE_EKANS
	const SPRITE_PARAS
	const SPRITE_TENTACOOL
	const SPRITE_TAUROS
	const SPRITE_MACHOP
	const SPRITE_VOLTORB
	const SPRITE_LAPRAS
	const SPRITE_RHYDON
	const SPRITE_SPEAROW
	const SPRITE_SNORLAX
	const SPRITE_GYARADOS
	const SPRITE_LUGIA
	const SPRITE_HO_OH
	const SPRITE_ARTICUNO
	const SPRITE_ZAPDOS
	const SPRITE_MOLTRES
	const SPRITE_EGG

const_value = $e0
	const SPRITE_DAYCARE_MON_1
	const SPRITE_DAYCARE_MON_2

const_value = $f0
SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE
	const SPRITE_DOLL_1
	const SPRITE_DOLL_2
	const SPRITE_BIG_DOLL
	const SPRITE_WEIRD_TREE
	const SPRITE_OLIVINE_RIVAL
	const SPRITE_AZALEA_ROCKET
	const SPRITE_FUCHSIA_GYM_1
	const SPRITE_FUCHSIA_GYM_2
	const SPRITE_FUCHSIA_GYM_3
	const SPRITE_FUCHSIA_GYM_4
	const SPRITE_COPYCAT
	const SPRITE_JANINE_IMPERSONATOR
	const SPRITE_EGK_RIVAL
	const SPRITE_EGK_BILL
	const SPRITE_EGK_ROCKET

; sprite types
WALKING_SPRITE  EQU 1
STANDING_SPRITE EQU 2
STILL_SPRITE    EQU 3

; sprite palettes
PAL_OW_RED    EQU 0
PAL_OW_BLUE   EQU 1
PAL_OW_GREEN  EQU 2
PAL_OW_BROWN  EQU 3
PAL_OW_YELLOW   EQU 4
PAL_OW_SILVER EQU 5
PAL_OW_TREE   EQU 6
PAL_OW_ROCK   EQU 7


	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7


; permissions
TOWN EQU 1
ROUTE EQU 2
INDOOR EQU 3
CAVE EQU 4
FOREST EQU 5
GATE EQU 6
DUNGEON EQU 7

; object struct
OBJECT_00 EQU $0
OBJECT_01 EQU $1
OBJECT_SPRITE EQU $2
OBJECT_03 EQU $3
OBJECT_04 EQU $4
OBJECT_FLAGS EQU $5
OBJECT_PALETTE EQU $6
OBJECT_07 EQU $7
OBJECT_08 EQU $8
OBJECT_09 EQU $9
OBJECT_STEP_DURATION EQU $a
OBJECT_11 EQU $b
OBJECT_12 EQU $c
OBJECT_FACING EQU $d
OBJECT_STANDING_TILE EQU $e
OBJECT_NEXT_TILE EQU $f
OBJECT_MAP_X EQU $10
OBJECT_MAP_Y EQU $11
OBJECT_NEXT_MAP_X EQU $12
OBJECT_NEXT_MAP_Y EQU $13
OBJECT_20 EQU $14
OBJECT_21 EQU $15
OBJECT_22 EQU $16
OBJECT_SPRITE_X EQU $17
OBJECT_SPRITE_Y EQU $18
OBJECT_SPRITE_X_OFFSET EQU $19
OBJECT_SPRITE_Y_OFFSET EQU $1a
OBJECT_27 EQU $1b
OBJECT_28 EQU $1c
OBJECT_29 EQU $1d
OBJECT_30 EQU $1e
OBJECT_31 EQU $1f
OBJECT_32 EQU $20
; 33-39 are not used
; map object struct
	const_def
	const MAPOBJECT_OBJECT_STRUCT_ID ; 0
	const MAPOBJECT_SPRITE ; 1
	const MAPOBJECT_Y_COORD ; 2
	const MAPOBJECT_X_COORD ; 3
	const MAPOBJECT_MOVEMENT ; 4
	const MAPOBJECT_RADIUS ; 5
	const MAPOBJECT_HOUR ; 6
	const MAPOBJECT_TIMEOFDAY ; 7
	const MAPOBJECT_COLOR ; 8
	const MAPOBJECT_RANGE ; 9
	const MAPOBJECT_SCRIPT_POINTER ; a
	const MAPOBJECT_POINTER_HI ; b
	const MAPOBJECT_EVENT_FLAG ; c
	const MAPOBJECT_FLAG_HI ; d
	const MAPOBJECT_E ; unused
	const MAPOBJECT_F ; unused


; roaming constants
ROAM_RAIKOU EQU 1
ROAM_ENTEI EQU 2
ROAM_SUICUNE EQU 4

OW_DOWN EQU 0
OW_UP EQU 4
OW_LEFT EQU 8
OW_RIGHT EQU 12
