# Executor: Server
# Position: Root
# Data: Echoes storage

$tellraw @a[tag=debug_echoes] "[echoes.m_iterate_player_storage] checking storage players list at index $(players_index)..."

# Check targetted player
$function echoes:m_check_storage_player with storage shroomhearth:echoes players[$(players_index)]

# Increment the index
scoreboard players add echoes_players_index shroomhearth 1
execute store result storage shroomhearth:echoes players_index int 1 run scoreboard players get echoes_players_index shroomhearth

# If the index is still less than the length of the players array, continue iterating
execute if score echoes_players_index shroomhearth < echoes_players_length shroomhearth run function echoes:m_iterate_player_storage with storage shroomhearth:echoes