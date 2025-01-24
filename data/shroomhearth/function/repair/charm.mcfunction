# check if they have repairable item
execute store result score @s repairable run clear @s #community:charm[custom_data={"spore":"charm"}] 0

# replace with new item
clear @s[scores={repairable=1..}] #community:charm[custom_data={"spore":"charm"}] 1
loot give @s[scores={repairable=1..}] loot community:charm

# tag player
tag @s[scores={repairable=1..}] add repaired

# reset score
scoreboard players reset @s repairable