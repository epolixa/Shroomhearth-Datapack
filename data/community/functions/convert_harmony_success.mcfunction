# This function gets called when a player tries to convert their harmony into a charm and succeeds

# Reduce player's harmony by 100
scoreboard players remove @s harmony 100

# Clear 1 material item
clear @s #community:charm_material 1

# Give a charm to the player
loot give @s loot community:charm

# Summon an xp orb
summon minecraft:experience_orb ~ ~0.8 ~ {Value:20}

# Play a sound
execute at @s run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 1 1.8