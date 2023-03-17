# randomly teleport dragon
execute in minecraft:the_end positioned 0 64 0 run spreadplayers ~ ~ 1 40 false @e[type=ender_dragon,limit=1,sort=nearest]

# fix height to nearest end crystal
execute as @e[type=ender_dragon,limit=1,sort=nearest] at @s run data modify entity @s Pos[1] set from entity @e[type=minecraft:end_crystal,limit=1,sort=nearest] Pos[1]

# play sound
execute as @e[type=ender_dragon,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.teleport hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 12 0.7