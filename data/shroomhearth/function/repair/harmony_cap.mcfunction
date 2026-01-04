# check if they have repairable item
execute store result score @s repairable run clear @s #harmony:harmony_cap[custom_data={"spore":"harmony_cap"}] 0

# replace with new item
clear @s[scores={repairable=1..}] #harmony:harmony_cap[custom_data={"spore":"harmony_cap"}] 1
loot give @s[scores={repairable=1..}] loot harmony:harmony_cap

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable