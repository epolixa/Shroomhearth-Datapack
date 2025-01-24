# check if they have repairable item
execute store result score @s repairable run clear @s minecraft:allay_spawn_egg[custom_data={"spore":"allay_bottle"}] 0

# replace with new item
clear @s[scores={repairable=1..}] minecraft:allay_spawn_egg[custom_data={"spore":"allay_bottle"}] 1
loot give @s[scores={repairable=1..}] loot allay_bottle:allay_bottle

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable