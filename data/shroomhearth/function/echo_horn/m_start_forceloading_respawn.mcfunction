# Executor: A player who has started using an echo horn to teleport to their respawn point
# Position: The player
# Data: per-player echo horn storage respawn data
# {x: int, y: int, z: int, dimension: string}

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/m_start_forceloading_respawn] Forceloading respawn point for marker "},{"selector":"@s"},{"text":" of player "},{"selector":"@p[tag=using_echo_horn]"}]


# Start forceloading the chunk at the macro'd position from the storage data
$execute in $(dimension) positioned $(x) $(y) $(z) run forceload add ~ ~

# Summon a new echo horn forceload marker entity for the player
# Does not work using common forceload methods since the chunk may not be loaded in advance?
$execute in $(dimension) positioned $(x) $(y) $(z) summon minecraft:marker run function shroomhearth:echo_horn/initialize_echo_horn_forceload_marker