# Executor: An echoes interaction entity that has found its matching online player
# Position: The interaction entity (where the player was last seen)
# Data: The interaction entity's player data

tellraw @a[tag=debug_echoes] [{"text":"[shroomhearth:echoes/m_dismiss_echoes] Echoes found "},{"nbt":"data.player.name","entity":"@s"},{"text":" and will be dismissed."}]


# Tell player about their visitors
data modify storage shroomhearth:echoes visitors_text set value []
execute if data entity @s data.visitors[0] run function shroomhearth:echoes/build_visitors_text
execute if data storage shroomhearth:echoes visitors_text[0] run tellraw @p[tag=echoes_player] [{"text":"Your Echoes were visited by: "}, {"nbt":"visitors_text[]","storage":"shroomhearth:echoes","separator":", ","interpret":true}]

# Add the player's data in storage using a macro
execute as @p[tag=echoes_player] at @s run function shroomhearth:echoes/m_update_player_storage with entity @s

# Play particles
particle minecraft:soul_fire_flame ~ ~0.125 ~ 0.0625 0.125 0.0625 0.0625 4

# Remove self
kill @s