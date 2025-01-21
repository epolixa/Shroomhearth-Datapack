# check if they have repairable item
execute store result score @s repairable run clear @s minecraft:chorus_fruit[custom_data={"spore":"echoed_chorus_fruit"}] 0

# replace with new item
clear @s[scores={repairable=1..}] minecraft:chorus_fruit[custom_data={"spore":"echoed_chorus_fruit"}] 1
loot give @s[scores={repairable=1..}] loot echo_kernel:echoed_chorus_fruit

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable