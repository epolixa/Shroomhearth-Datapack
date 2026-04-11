# Dragon team for summoned mobs to join
team remove ender_dragon

# Resource that Dragon spends to cast powers
scoreboard objectives remove rage

# Track Dragon's current phase
scoreboard objectives remove ender_dragon_phase

# Track Dragon's max health and calculate percentage for power adaptation
scoreboard objectives remove max_health
scoreboard objectives remove health_percent

# Stats to show to the player after slaying
scoreboard objectives remove ender_dragon_stats_enabled
scoreboard objectives remove ender_dragon_stats_total_slain
scoreboard objectives remove ender_dragon_stats_deaths
scoreboard objectives remove ender_dragon_stats_hits
scoreboard objectives remove ender_dragon_stats_mobs
scoreboard objectives remove ender_dragon_stats_endermen
scoreboard objectives remove ender_dragon_stats_end_crystals

# The number of items that the Omen Ender Dragon may drop as carves. Derived from omen_level and decremented as carves are dropped.
scoreboard objectives remove carve_drop_potential

# Tracks delay before the Omen Ender Dragon can snatch a player again.
scoreboard objectives remove snatch_cooldown

# Objective for fake player globals
scoreboard objectives remove shroomhearth.ender_dragon
