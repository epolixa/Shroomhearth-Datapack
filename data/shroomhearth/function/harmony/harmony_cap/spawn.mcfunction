# Executor: Player who exceeded harmony threshold and is attempting to spawn a harmony cap
# Position: The player

tellraw @a[tag=debug_harmony] [{"text":"shroomhearth:harmony/harmony_cap/spawn] spawning harmony cap from "},{"selector":"@s"}]


# Capture the player's current Y level in storage then add 8 to it with number provider
execute store result storage shroomhearth:harmony harmony_cap.maxHeight int 1 run data get entity @s Pos[1]
execute store result storage shroomhearth:harmony harmony_cap.maxHeight int 1 run compute default integer shroomhearth:storage_harmony_harmony_cap_max_height_add_eight

# Summon a marker to find a suitable spawn location
summon minecraft:armor_stand ~ ~ ~ {Tags:["harmony_cap","harmony_cap_spawn_marker"]}

# Copy player's player_group score to harmony score of marker to be used for grace re-tries
scoreboard players operation @n[tag=harmony_cap_spawn_marker] harmony = @s player_group

# Start looking for a suitable spawning position
execute as @n[tag=harmony_cap_spawn_marker] at @s run function shroomhearth:harmony/harmony_cap/find_spawn_position