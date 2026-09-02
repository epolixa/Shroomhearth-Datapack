# Executor: Marker entity summoned to check for valid harmony cap spawn location
# Position: The marker entity

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/harmony_cap/check_spawn_position] checking harmony cap spawn marker position at ["},{"type":"nbt","entity":"@s","nbt":"Pos[0]"},{"text":", "},{"type":"nbt","entity":"@s","nbt":"Pos[1]"},{"text":", "},{"type":"nbt","entity":"@s","nbt":"Pos[2]"},{"text":"]"}]


# Get count of nearby harmony cap entities
execute store result score @s harmony_cluster if entity @e[tag=harmony_cap_interaction,distance=..16]

# If the count is less than the player's player_group score, 
# and there is a valid block below, 
# and no other harmony cap interaction is at the same position, 
# summon a new harmony cap interaction entity
execute if score @s harmony_cluster < @n[tag=spawning_harmony_cap] player_group \
if block ~ ~-0.0625 ~ #shroomhearth:harmony/harmony_cap_grows_on \
unless entity @e[tag=harmony_cap_interaction,distance=..1] \
run tag @s add spawn_success 

execute as @s[tag=spawn_success] run function shroomhearth:harmony/harmony_cap/summon_harmony_cap

# Play a particle to indicate a harmony cap tried to spawn
particle minecraft:firefly ~ ~0.0625 ~ 0 0 0 0 1

# Reduce harmony score
scoreboard players remove @s[scores={harmony=1..}] harmony 1

# If valid position found or no grace re-tries remaining, remove the marker
kill @s[tag=spawn_success]
kill @s[scores={harmony=..0}]

# If valid position not found and grace re-tries remaining (based on harmony score), run again
execute as @s[tag=!spawn_success,scores={harmony=1..}] run function shroomhearth:harmony/harmony_cap/find_spawn_position