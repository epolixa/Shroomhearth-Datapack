# check if they have repairable item
execute store result score @s repairable run clear @s #recall:recall_whistle{CustomModelData:2} 0

# replace with new item
clear @s[scores={repairable=1..}] #recall:recall_whistle{CustomModelData:2} 1
loot give @s[scores={repairable=1..}] loot recall:recall_whistle

# reset score
scoreboard players reset @s repairable

# tag player
tag @s add repaired