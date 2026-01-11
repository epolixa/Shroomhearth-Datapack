# Executor: A player who has finished using their own echo horn and is starting to teleport
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_self] "},{"selector":"@s"},{"text":" started teleporting with Echo Horn"}]


# If the player has a valid respawn point, 
# copy their respawn data to per-player storage,
# then attempt to teleport them there with a macro
execute as @s[tag=has_respawn_block] run function echo_horn:teleport_to_respawn

# Otherwise, teleport to world spawn
execute as @s[tag=!has_respawn_block] run function echo_horn:teleport_to_world_spawn

# Fix position if needed
execute at @s unless block ~ ~ ~ minecraft:air run function echo_horn:fix_position

# Grant advancement for using echo horn
advancement grant @s[tag=echo_horn_teleport_success] only echo_horn:homebound