# method 1 
# do scoreboard math to duplicate value of xp orb
#execute store result score @s experience_value run data get entity @s Value 1
#scoreboard players operation @s experience_value *= double_xp_multiplier shroomhearth
#execute store result entity @s Value int 1 run scoreboard players get @s experience_value

# method 2
# clone the experience orb once
tag @s add double_xp_clone_source
execute summon minecraft:experience_orb run function community:favor/double_xp/summon_clone
tag @s remove double_xp_clone_source

particle minecraft:trial_spawner_detection
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~

tag @s add double_xp