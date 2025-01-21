# check if they have repairable item
execute store result score @s repairable run clear @s minecraft:chorus_fruit[custom_data={"spore":"enchanted_golden_chorus_fruit"}] 0

# replace with new item
clear @s[scores={repairable=1..}] minecraft:chorus_fruit[custom_data={"spore":"enchanted_golden_chorus_fruit"}] 1
loot give @s[scores={repairable=1..}] loot golden_chorus_fruit:enchanted_golden_chorus_fruit

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable