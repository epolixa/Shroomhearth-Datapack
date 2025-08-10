# Executor: An echoes interaction entity that has found its matching online player
# Position: The interaction entity (where the player was last seen)
# Data: The interaction entity's player data

tellraw @a[tag=debug_echoes2] [{"text":"[echoes.m_dismiss_echoes] Echoes found "},{"nbt":"data.player.name","entity":"@s"},{"text":" and will be dismissed."}]

# Tell player about their visitors
data modify storage shroomhearth:echoes visitors_text set value []
execute if data entity @s data.visitors[0] run function echoes2:build_visitors_text
execute if data storage shroomhearth:echoes visitors_text[0] run tellraw @p[tag=echoes_player] [{"text":"Your Echoes were visited by: "}, {"nbt":"visitors_text[]","storage":"shroomhearth:echoes","separator":", ","interpret":true}]

# Play particles
particle minecraft:soul_fire_flame ~ ~0.125 ~ 0.0625 0.125 0.0625 0.0625 4

# Remove self
kill @s