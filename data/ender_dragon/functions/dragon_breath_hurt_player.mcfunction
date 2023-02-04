# revoke advancement
advancement revoke @s only ender_dragon:dragon_breath_hurt_player

# play sound
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.5

# sometimes warp player
execute if predicate shroomhearth:random_chance_20 run function ender_dragon:warp_player
