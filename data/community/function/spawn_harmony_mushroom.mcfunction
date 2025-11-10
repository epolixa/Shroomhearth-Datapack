# Context: Player who increased harmony
tag @s add spawning_harmony_mushroom

summon minecraft:marker ~ ~ ~ {Tags:["harmony_mushroom","harmony_mushroom_marker"]}

spreadplayers ~ ~ 8 32 true @e[tag=harmony_mushroom_marker]

execute as @e[tag=harmony_mushroom_marker] at @s run function community:check_harmony_mushroom_marker

tag @s remove spawning_harmony_mushroom