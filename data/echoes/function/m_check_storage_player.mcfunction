# Executor: Server
# Position: Root
# Data: Target player data

$tellraw @a[tag=debug_echoes] "[echoes.m_check_storage_player] checking if $(name) is still online..."

# Check if the target player is online
#$execute if entity @p[nbt={UUID:$(uuid)}] run tellraw @a[tag=debug_echoes] "[echoes.m_check_storage_player] $(name) is online."

# If the target player is offline, create a new Echoes interaction entity and mark them for removal from storage
$execute unless entity @p[nbt={UUID:$(uuid)}] run function echoes:m_handle_offline_player with storage shroomhearth:echoes players[{uuid:$(uuid)}]