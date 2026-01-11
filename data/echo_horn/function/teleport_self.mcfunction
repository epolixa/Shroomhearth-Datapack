# Executor: A player who has finished using their own echo horn and is starting to teleport
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_self] "},{"selector":"@s"},{"text":" started teleporting with Echo Horn"}]



# chunks need to be loaded in order to check blocks
# check if the player has a bed at the set spawn point
#execute at @e[tag=recall_marker] unless block ~ ~ ~ #recall:spawn_blocks run tag @s remove has_spawn

# If the player has a valid respawn point, 
# copy their respawn data to per-player storage,
# then attempt to teleport them there with a macro
execute as @s[tag=has_respawn_block] run function echo_horn:teleport_to_respawn

# Otherwise, teleport to world spawn
execute as @s[tag=!has_respawn_block] run function echo_horn:teleport_to_world_spawn

# Cleanup forceload marker
execute as @s[tag=has_respawn_data] run function echo_horn:cleanup_echo_horn_forceload_marker



# execute the teleportation
#execute as @s[tag=has_spawn] as @e[tag=recall_marker] run function recall:teleport_to_marker
#execute as @s[tag=!has_spawn] run function recall:teleport_player_to_world_spawn

# Cleanup the marker
#execute as @e[tag=recall_marker] at @s run function porcelain:cleanup_marked_chunk

# Remove has_respawn tag
#tag @s remove has_respawn

# Center player on block
execute at @s align xz run tp @s ~.5 ~ ~.5

# Fix position if needed
execute at @s unless block ~ ~ ~ minecraft:air run function echo_horn:fix_position

# Play teleport sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1.1

# take 1 xp level
#xp add @s[gamemode=survival] -1 levels


# clear the slowness
#effect clear @s minecraft:slowness

# grant advancement
#advancement grant @s only recall:recall