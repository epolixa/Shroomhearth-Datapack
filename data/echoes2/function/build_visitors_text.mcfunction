# Executor: An echoes interaction entity that has found its matching online player
# Position: The interaction entity (where the player was last seen)

# Copy name text from visitor object
data modify storage shroomhearth:echoes visitors_text append from entity @s data.visitors[0].name

# pop off visitor
data remove entity @s data.visitors[0]

# go again if we still have visitors
execute if data entity @s data.visitors[0] run function echoes2:build_visitors_text