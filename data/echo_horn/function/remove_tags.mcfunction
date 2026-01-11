# Executor: A player who stopped using an echo horn and should have all relevant tags removed
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:remove_tags] Removing all echo horn tags from "},{"selector":"@s"}]

# Remove all echo horn related tags from the player
tag @s remove using_echo_horn
tag @s remove using_echo_horn_mainhand
tag @s remove using_echo_horn_offhand
tag @s remove using_own_echo_horn
tag @s remove using_other_player_echo_horn
tag @s remove has_respawn_data
tag @s remove has_respawn_block
tag @s remove echo_horn_found_target_player

tag @s remove checking_respawn_point
tag @s remove checking_teleport_target
tag @s remove echo_horn_teleport_target
tag @s remove cleanup_echo_horn_forceload_marker