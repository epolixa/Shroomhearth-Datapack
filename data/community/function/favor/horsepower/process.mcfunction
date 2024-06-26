# tick value
scoreboard players remove favHorsepower shroomhearth 1

# apply effects to mounts with riders
effect give @e[predicate=speedy_paths:mount] minecraft:speed 2 2
effect give @e[predicate=speedy_paths:mount] minecraft:jump_boost 2 2
effect give @e[predicate=community:favor/horsepower/airborne_mount] minecraft:slow_falling 2 1

# apply levitation if horse is looking up
execute as @e[predicate=community:favor/horsepower/airborne_mount] store result score @s rotPitch run data get entity @s Rotation[1]
effect give @e[predicate=community:favor/horsepower/floating_mount] minecraft:levitation 2 2

# update bossbar
execute store result bossbar community:favor/horsepower value run scoreboard players get favHorsepower shroomhearth
bossbar set community:favor/horsepower players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favHorsepower shroomhearth matches ..0 run function community:favor/horsepower/deactivate