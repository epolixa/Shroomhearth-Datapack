# Executor: A player who is attempting to teleport to their respawn point
# Position: The player
# Data: players.<key_string>.echo_horn storage
# {respawn_x: int, respawn_y: int, respawn_z: int, respawn_dimension: string}

$tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/m_teleport_to_respawn] Teleporting "},{"selector":"@s"},{"text":" to their respawn point: "},{"text":"$(respawn_x), $(respawn_y), $(respawn_z) in $(respawn_dimension)"}]

# Teleport to the respawn point
$execute in $(respawn_dimension) run teleport @s $(respawn_x) $(respawn_y) $(respawn_z)

# Teleport to world spawn unless there is a valid respawn block at the position
# This is not working right when the respawn point is in a different dimension
# I think the dimension needs to be loaded for a little bit before the block check will work
# Maybe we should go back to the marker strategy
$execute in $(respawn_dimension) unless block $(respawn_x) $(respawn_y) $(respawn_z) #shroomhearth:respawn_blocks run function shroomhearth:echo_horn/teleport_to_world_spawn