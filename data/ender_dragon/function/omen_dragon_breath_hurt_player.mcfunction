# play sound
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 0.5

# sometimes warp player
execute if predicate shroomhearth:random_chance_50 run function ender_dragon:warp_player

# play particles after teleporting
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 10