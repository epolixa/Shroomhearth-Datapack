# check if they have repairable item
execute store result score @s repairable run clear @s #recall:recall_whistle[item_model="shroomhearth:recall_whistle"] 0

# replace with new item
clear @s[scores={repairable=1..}] #recall:recall_whistle[item_model="shroomhearth:recall_whistle"] 1
loot give @s[scores={repairable=1..}] loot recall:recall_whistle

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable