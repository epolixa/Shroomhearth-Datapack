# revoke advancement
advancement revoke @s only ender_dragon:dragon_breath_hurt_player

# play sound
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.5

# clamp warpThreshold to 200
execute if score @s warpThreshold matches 201.. run scoreboard players set @s warpThreshold 200

# decrement warpThreshold by 100
scoreboard players remove @s warpThreshold 100

# clamp warpThreshold to 0
execute if score @s warpThreshold matches ..-1 run scoreboard players set @s warpThreshold 0

# if warpThreshold is 0, warp player
execute if score @s warpThreshold matches 0 run function ender_dragon:warp_player
