# Executor: A player who is online
# Position: The player

#tellraw @a[tag=debug_echoes2] [{"text":"[echoes.pulse_players] pulsing "},{"selector":"@s"},{"text":"..."}]

# Overwrite this player's data in storage using a macro
function echoes2:m_update_player_storage with entity @s