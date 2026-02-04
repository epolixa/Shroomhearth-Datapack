# check if they have repairable item
execute store result score @s repairable run clear @s #shroomhearth:porcelain/porcelain[custom_data={"spore":"porcelain"}] 0

# replace with new item
clear @s[scores={repairable=1..}] #shroomhearth:porcelain/porcelain[custom_data={"spore":"porcelain"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:porcelain

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable