execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 40000
execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 40000
data modify entity @s Motion[1] set value 1d
tag @s add carve
tag @s add initialized