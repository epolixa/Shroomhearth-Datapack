# check if they have repairable item
execute store result score @s repairable run clear @s minecraft:warped_fungus_on_a_stick[custom_data={"shroomhearth_id":"recall_whistle"}] 0

# replace with new item
clear @s[scores={repairable=1..}] minecraft:warped_fungus_on_a_stick[custom_data={"shroomhearth_id":"recall_whistle"}] 1
#loot give @s[scores={repairable=1..}] loot recall:recall_whistle
loot give @s[scores={repairable=1..}] loot echo_horn:echo_horn

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable