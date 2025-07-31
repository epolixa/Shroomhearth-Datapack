# Executor: Server
# Position: Root

#tellraw @a[tag=debug_echoes2] "[echoes.pulse_storage] pulsing..."

# Capture the number of players currently being tracked
execute store result score echoes_players_length shroomhearth if data storage shroomhearth:echoes players[]

# Reset the players index
scoreboard players set echoes_players_index shroomhearth 0
execute store result storage shroomhearth:echoes players_index int 1 run scoreboard players get echoes_players_index shroomhearth

# Begin iterating through the players array
function echoes2:m_iterate_player_storage with storage shroomhearth:echoes

# Remove any players from the storage that have been marked for removal
data remove storage shroomhearth:echoes players[{remove:true}]