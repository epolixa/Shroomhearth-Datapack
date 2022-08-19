# This function gets called when a player tries to convert their harmony into a charm and succeeds

# Reduce player's harmony by 100
scoreboard players remove @s harmony 100

# Clear 1 catalyst item
clear @s #community:charm_catalyst 1

# Give a charm to the player
loot give @s loot community:charm

# Summon an xp orb
summon minecraft:experience_orb ~ ~ ~ {Value:20}

# Play a sound
execute at @s run playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 0.8

# Send a friendly success message to the player
tellraw @s {"translate":"community.converted_harmony","hoverEvent":{"action":"show_text","contents":{"translate":"community.converted_harmony_tooltip"}}}