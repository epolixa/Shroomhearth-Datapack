# Executor: An echo horn forceload marker entity that a player is teleporting to
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/teleport_to_respawn_success] Teleporting player "},{"selector":"@p[tag=teleporting_to_respawn_point]"},{"text":" to respawn point at marker "},{"selector":"@s"}]


# Teleport the player
tp @p[tag=teleporting_to_respawn_point] @s

# Tag the player for successful teleportation
tag @p[tag=teleporting_to_respawn_point] add echo_horn_teleport_success