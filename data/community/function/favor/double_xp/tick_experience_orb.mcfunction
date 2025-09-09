# do scoreboard math to duplicate value of xp orb
execute store result score @s experience_value run data get entity @s Value 1
scoreboard players operation @s experience_value *= double_xp_multiplier shroomhearth

execute store result entity @s Value int 1 run scoreboard players get @s experience_value

tag @s add double_xp