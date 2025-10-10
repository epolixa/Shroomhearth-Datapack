# Executor: An Echoes that was interacted with a Player
# Position: The Echoes
# Data: The Player's name

$execute unless data entity @s data.visitors[{name:$(name)}] run function echoes:m_register_visitor with storage shroomhearth:player_name