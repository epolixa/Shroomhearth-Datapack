# Get count of nearby harmony cap entities
execute store result score @s harmonyCluster if entity @e[tag=harmony_cap_interaction,distance=..32]

# If the count is less than the player's playerGroup score, 
# and there is a valid block below, 
# and no other harmony cap interaction is at the same position, 
# summon a new harmony cap interaction entity
execute if score @s harmonyCluster < @p[tag=spawning_harmony_cap] playerGroup if block ~ ~-0.0625 ~ #community:harmony_cap_grows_on unless entity @e[tag=harmony_cap_interaction,distance=..1] run \
summon minecraft:interaction ~ ~ ~ {\
Tags: ["harmony_cap","harmony_cap_interaction","new_harmony_cap_interaction"], \
height: 0.1875, \
width: 0.5\
}

# Initialize the new harmony cap interaction entity
execute as @n[tag=new_harmony_cap_interaction] at @s run function community:initialize_harmony_cap_interaction

# Play a particle to indicate a harmony cap tried to spawn
particle minecraft:firefly ~ ~0.0625 ~ 0 0 0 0 1

# Remove the marker
kill @s