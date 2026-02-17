# Executor: An Echoes that was interacted with a Player
# Position: The Echoes
# Data: The Player's name

tellraw @a[tag=debug_echoes] "[shroomhearth:echoes/m_check_visitor] checking if $(name) has already visited this Echoes"


# If this player is not already in the visitors list for this Echoes, add them and update the text
$execute unless data entity @s data.visitors[{name:$(name)}] run function shroomhearth:echoes/m_register_visitor with storage shroomhearth:player_name