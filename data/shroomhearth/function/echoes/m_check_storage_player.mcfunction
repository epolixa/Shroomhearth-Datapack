# Executor: Server
# Position: Spawn
# Data: Target Player data

#$tellraw @a[tag=debug_echoes] "[shroomhearth:echoes/m_check_storage_player] Checking if $(name) is still online"


# If the target player is offline, create a new Echoes interaction entity and mark them for removal from storage
$execute unless entity @p[nbt={UUID:$(uuid)}] run function shroomhearth:echoes/m_handle_offline_player with storage shroomhearth:echoes players[{uuid:$(uuid)}]