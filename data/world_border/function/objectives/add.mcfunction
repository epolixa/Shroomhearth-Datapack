# Objective for fake player globals
scoreboard objectives add shroomhearth.world_border dummy

# Globals for tracking current world border diameter and target diameter
scoreboard players set distance_overworld shroomhearth.world_border 2048
scoreboard players set distance_target_overworld shroomhearth.world_border 2048
scoreboard players set distance_the_nether shroomhearth.world_border 256
scoreboard players set distance_target_the_nether shroomhearth.world_border 256

# Globals for enchanted golden chorus fruit maxRange math
scoreboard players set enchanted_golden_chorus_fruit_max_range shroomhearth.world_border 0
scoreboard players set enchanted_golden_chorus_fruit_max_range_divisor shroomhearth.world_border 2