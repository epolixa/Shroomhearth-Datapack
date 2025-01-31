# check if they have repairable item
execute store result score @s repairable run clear @s #porcelain:porcelain[custom_data={"spore":"porcelain"}] 0

# replace with new item
clear @s[scores={repairable=1..}] #porcelain:porcelain[custom_data={"spore":"porcelain"}] 1
loot give @s[scores={repairable=1..}] loot porcelain:porcelain

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable