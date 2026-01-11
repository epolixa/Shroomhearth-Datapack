# Executor: A player that an echo horn user is teleporting to
# Position: The target player

#tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:found_target_player] Found target player "},{"selector":"@s"},{"text":" for teleportation"}]

tag @p[tag=checking_teleport_target] add echo_horn_found_target_player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_to_player] Target player "},{"selector":"@s"},{"text":" found for "},{"selector":"@p[tag=echo_horn_found_target_player]"}]

tp @p[tag=echo_horn_found_target_player] @s