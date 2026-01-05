# Executor: A player who is online
# Position: The player

tellraw @a[tag=debug_echoes] [{"text":"[echoes.pulse_players] pulsing "},{"selector":"@s"},{"text":"..."}]

# Overwrite this player's data in storage using a macro
function echoes:m_update_player_storage with entity @s

# Reset moved tag
tag @s remove moved