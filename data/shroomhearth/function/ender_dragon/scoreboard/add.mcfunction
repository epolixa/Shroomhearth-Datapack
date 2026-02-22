# Dragon team for summoned mobs to join
team add ender_dragon "Ender Dragon"
team modify ender_dragon color dark_purple
team modify ender_dragon prefix "Ender Dragon's "
team modify ender_dragon friendlyFire false
team modify ender_dragon collisionRule pushOtherTeams

# Resource that Dragon spends to cast powers
scoreboard objectives add rage dummy

# Track Dragon's current phase
scoreboard objectives add ender_dragon_phase dummy

# Track Dragon's max health and percentage for power adaptation
scoreboard objectives add max_health dummy
scoreboard objectives add health_percent dummy

# Stats to show to the player after slaying
scoreboard objectives add ender_dragon_stats_enabled dummy
scoreboard objectives add ender_dragon_stats_total_slain dummy
scoreboard objectives add ender_dragon_stats_deaths deathCount
scoreboard objectives add ender_dragon_stats_hits dummy
scoreboard objectives add ender_dragon_stats_mobs dummy
scoreboard objectives add ender_dragon_stats_endermen dummy
scoreboard objectives add ender_dragon_stats_end_crystals dummy

# The number of items that the Omen Ender Dragon may drop as carves. Derived from omen_level and decremented as carves are dropped.
scoreboard objectives add carve_drop_potential dummy

# Tracks delay before the Omen Ender Dragon can snatch a player again.
scoreboard objectives add snatch_cooldown dummy

# Objective for fake player globals
scoreboard objectives add shroomhearth.ender_dragon dummy

# Flag for if the dragon is alive or has been killed
# Defaults to 0 for first dragon fight
scoreboard players set ender_dragon_slain shroomhearth.ender_dragon 0

# Calculations for total time of each ender dragon fight
scoreboard players set ender_dragon_stats_fight_time shroomhearth.ender_dragon 0
scoreboard players set ender_dragon_stats_fight_time_seconds shroomhearth.ender_dragon 0
scoreboard players set ender_dragon_stats_fight_time_minutes shroomhearth.ender_dragon 0

# The number of players fighting the ender dragon
scoreboard players set ender_dragon_players shroomhearth.ender_dragon 0

# Powers
scoreboard players set distort_sequence shroomhearth.ender_dragon 0
scoreboard players set gravity_sequence shroomhearth.ender_dragon 0
scoreboard players set strike_sequence shroomhearth.ender_dragon 0
scoreboard players set summon_sequence shroomhearth.ender_dragon 0
