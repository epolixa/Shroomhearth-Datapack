# Executor: Server, triggered the next tick after a player in the storage list has been detected as offline
# Position: Root

#tellraw @a[tag=debug_echoes] "[shroomhearth:echoes/audit_storage] Auditing player storage for any offline players"


# Capture the number of players currently being tracked
execute store result score echoes_players_length shroomhearth.echoes if data storage shroomhearth:echoes players[]

# Reset the players index
scoreboard players set echoes_players_index shroomhearth.echoes 0
execute store result storage shroomhearth:echoes players_index int 1 run scoreboard players get echoes_players_index shroomhearth.echoes

# Begin iterating through the players array
function shroomhearth:echoes/m_iterate_player_storage with storage shroomhearth:echoes

# Remove any players from the storage that have been marked for removal
data remove storage shroomhearth:echoes players[{remove:true}]