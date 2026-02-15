# Executor: A player who started using their echo horn to teleport to their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/modify_storage_player_echo_horn] Modifying player storage echo horn data for "},{"selector":"@s"}]

# Modify per-player storage data for echo horn,
# then start forceloading respawn chunk 
function shroomhearth:score_uuid
function shroomhearth:store_target_uuid
function shroomhearth:echo_horn/m_modify_storage_player_echo_horn with storage shroomhearth:players target_uuid