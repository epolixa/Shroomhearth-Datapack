# Executes from the context of a player who damaged the ender dragon with melee 
# and successfully rolled the carve drop chance.

say I got a carve!

# Play sound for all players
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 12 0.8
playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 12 1.5

# Play particles for all players
particle minecraft:crit ~ ~ ~ 3 1 3 0 16 force

# Generate the carve
loot spawn ~ ~1 ~ loot carves:carve

# Modify the generated carve's movement data on next tick
schedule function carves:initialize_carve_drop 1t

