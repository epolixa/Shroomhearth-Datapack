# check if they have repairable item
execute store result score @s repairable run clear @s minecraft:knowledge_book[custom_data={"shroomhearth_id":"ender_tome"}] 0

# replace with new item
clear @s[scores={repairable=1..}] minecraft:knowledge_book[custom_data={"shroomhearth_id":"ender_tome"}] 1
loot give @s[scores={repairable=1..}] loot ender_tome:ender_tome

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable