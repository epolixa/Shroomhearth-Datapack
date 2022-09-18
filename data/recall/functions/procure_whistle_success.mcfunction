# This function gets called when a player tries to convert their harmony into a charm and succeeds

# Clear 1 material item
clear @s #recall:whistle_material 1

# Give a whistle to the player
loot give @s loot recall:recall_whistle

# Summon an xp orb
summon minecraft:experience_orb ~ ~ ~ {Value:20}

# Play a sound
execute at @s run playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 1