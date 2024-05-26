# randomly teleport dragon
execute in minecraft:the_end positioned 0 64 0 run spreadplayers ~ ~ 1 40 false @e[type=ender_dragon,limit=1,sort=nearest]

# teleport back in with new context
execute as @e[type=ender_dragon,limit=1,sort=nearest] at @s run function ender_dragon:warp_dragon_in_with_context