# Executes from the context of a player who damaged the ender dragon with melee 
# and successfully rolled the carve drop chance.

say I got a carve!

# Play sound for all players
#playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 1 2 1
playsound minecraft:entity.goat.horn_break hostile @a ~ ~ ~ 1 0.5 1
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2 1

# Play particles for all players
particle minecraft:crit ~ ~ ~ 3 1 3 0 16 force

# Generate the carve
loot spawn ~ ~1 ~ loot carves:carve

# Modify the generated carve's movement data on next tick
schedule function carves:initialize_carve_drop 1t

