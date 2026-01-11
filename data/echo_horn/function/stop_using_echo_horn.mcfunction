# Executor: A player who stopped using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:stop_using_echo_horn] "},{"selector":"@s"},{"text":" stopped using Echo Horn"}]



# Stop forceloading destination
#execute as @s[tag=using_own_echo_horn] as @e[tag=echo_horn_forceload_marker] at @s run function porcelain:cleanup_marked_chunk

# Cleanup forceload marker
execute as @s[tag=using_own_echo_horn,tag=has_respawn_data] run function echo_horn:cleanup_echo_horn_forceload_marker

# Remove all tags
function echo_horn:remove_tags

# clear effect
#effect clear @s minecraft:slowness

