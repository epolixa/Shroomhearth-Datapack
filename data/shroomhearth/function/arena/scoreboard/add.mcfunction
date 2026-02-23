# kill tracker
scoreboard objectives add arena_kills dummy

# death tracker
scoreboard objectives add arena_deaths dummy

# xp tracker
scoreboard objectives add arena_xp_points dummy


# Objective for fake player globals
scoreboard objectives add shroomhearth.arena dummy

# used for xp calculations
scoreboard players set xp_total shroomhearth.arena 0
scoreboard players set xp_points shroomhearth.arena 0
scoreboard players set xp_level shroomhearth.arena 0
scoreboard players set xp_multiplier shroomhearth.arena 0
scoreboard players set xp_additive shroomhearth.arena 0