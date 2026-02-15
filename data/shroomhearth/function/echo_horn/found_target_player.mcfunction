# Executor: A player that an echo horn user is teleporting to
# Position: The target player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/teleport_to_player] Target player "},{"selector":"@s"},{"text":" found for "},{"selector":"@p[tag=checking_target_player]"}]


# Mark teleportation as successful for the echo horn user
tag @p[tag=checking_target_player] add echo_horn_teleport_success

# Teleport the echo horn user to this target player
tp @p[tag=echo_horn_teleport_success] @s