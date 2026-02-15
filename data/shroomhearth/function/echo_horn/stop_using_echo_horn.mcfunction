# Executor: A player who stopped using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/stop_using_echo_horn] "},{"selector":"@s"},{"text":" stopped using Echo Horn"}]


# Cleanup forceload marker
execute as @s[tag=using_own_echo_horn,tag=has_respawn_data] run function shroomhearth:echo_horn/cleanup_echo_horn_forceload_marker

# Remove attribute modifier
attribute @s minecraft:movement_speed modifier remove shroomhearth:echo_horn_movement_speed
attribute @s minecraft:jump_strength modifier remove shroomhearth:echo_horn_jump_strength

# Remove all tags
function shroomhearth:echo_horn/remove_tags