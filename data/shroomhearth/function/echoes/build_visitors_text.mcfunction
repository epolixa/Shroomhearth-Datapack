# Executor: An echoes interaction entity that has found its matching online player
# Position: The interaction entity (where the player was last seen)

tellraw @a[tag=debug_echoes] [{"text":"[shroomhearth:echoes/build_visitors_text] Building Echoes visitors text for "},{"nbt":"data.player.name","entity":"@s"}]


# Copy name text from visitor object
data modify storage shroomhearth:echoes visitors_text append from entity @s data.visitors[0].name

# Pop off visitor
data remove entity @s data.visitors[0]

# Recurse if we still have visitors
execute if data entity @s data.visitors[0] run function shroomhearth:echoes/build_visitors_text