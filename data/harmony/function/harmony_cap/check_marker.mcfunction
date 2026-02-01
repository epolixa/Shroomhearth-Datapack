# Executor: Marker entity summoned to check for valid harmony cap spawn location
# Position: The marker entity

tellraw @a[tag=debug_harmony] "[harmony:harmony_cap/check_marker] checking selected position for valid spawn..."


# Get count of nearby harmony cap entities
execute store result score @s harmony_cluster if entity @e[tag=harmony_cap_interaction,distance=..32]

# If the count is less than the player's player_group score, 
# and there is a valid block below, 
# and no other harmony cap interaction is at the same position, 
# summon a new harmony cap interaction entity
execute if score @s harmony_cluster < @p[tag=spawning_harmony_cap] player_group \
if block ~ ~-0.0625 ~ #harmony:harmony_cap_grows_on \
unless entity @e[tag=harmony_cap_interaction,distance=..1] \
run summon minecraft:interaction ~ ~ ~ {Tags: ["harmony_cap","harmony_cap_interaction","new_harmony_cap_interaction"], height: 0.1875, width: 0.5}

# Initialize the new harmony cap interaction entity
execute as @n[tag=new_harmony_cap_interaction] at @s run function harmony:harmony_cap/initialize_interaction

# Play a particle to indicate a harmony cap tried to spawn
particle minecraft:firefly ~ ~0.0625 ~ 0 0 0 0 1

# Remove the marker
kill @s[tag=harmony_cap_marker]