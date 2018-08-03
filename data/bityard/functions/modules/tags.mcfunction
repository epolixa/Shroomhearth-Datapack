################################################################
# Tags
# controls entity tags 
################################################################

# wardable - entities that may be blocked by end crystals
execute as @e[type=minecraft:zombie, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:skeleton, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:creeper, tag=!wardable] run tag @s add wardable
execute as @e[type=minecraft:spider, tag=!wardable] run tag @s add wardable