# check if they have repairable item
execute store result score @s repairable run clear @s #shroomhearth:porcelain/porcelain_amphora[custom_data={"shroomhearth_id":"porcelain_amphora"}] 0

# replace with new item
clear @s[scores={repairable=1..}] #shroomhearth:porcelain/porcelain_amphora[custom_data={"shroomhearth_id":"porcelain_amphora"}] 1
loot give @s[scores={repairable=1..}] loot shroomhearth:porcelain_amphora

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable