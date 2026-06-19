# Executor: Player who damaged the ender dragon with melee and successfully rolled the carve drop chance
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/drop_carve] "},{"selector":"@s"},{"text":" triggered a carve drop"}]


# Play sound for all players
# Play different sound to indicate penultimate carve drop
playsound minecraft:entity.goat.horn_break hostile @a ~ ~ ~ 160 0.5
execute if score @n[tag=omen_ender_dragon] carve_drop_potential matches 2.. run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 160 0.5
execute if score @n[tag=omen_ender_dragon] carve_drop_potential matches 1 run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ 160 0.5

# Play particles for all players
particle minecraft:crit ~ ~1 ~ 3 1 3 1 32 force

# Generate the carve
loot spawn ~ ~1 ~ loot shroomhearth:runes/random_rune

# Modify the generated carve's movement data on next tick
schedule function shroomhearth:ender_dragon/initialize_carve_drop 1t

# Decrement carve drop potential
scoreboard players remove @n[tag=omen_ender_dragon] carve_drop_potential 1