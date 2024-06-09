# Executes from the context of a player who damaged the ender dragon with melee 
# and successfully rolled the carve drop chance.

say Dropped a carve!

# Play sound for all players
playsound minecraft:entity.goat.ram_impact hostile @a ~ ~ ~ 12 0.5
playsound minecraft:entity.goat.horn_break hostile @a ~ ~ ~ 12 0.5
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 12 0.5

# Play particles for all players
particle minecraft:crit ~ ~ ~ 3 1 3 0 16 force

# Generate the carve
loot spawn ~ ~1 ~ loot ominous_runes:random_rune

# Modify the generated carve's movement data on next tick
schedule function ender_dragon:initialize_carve_drop 1t