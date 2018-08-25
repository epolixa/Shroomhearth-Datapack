################################################################
# Bleeding Particles
# script for bleeding particles
################################################################

scoreboard players add @e[scores={entityHealth=1..10}] bleedSpeed 1

# players
execute as @a[scores={entityHealth=1..10, bleedSpeed=2}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={entityHealth=1..8, bleedSpeed=6}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={entityHealth=1..6, bleedSpeed=4}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={entityHealth=1..4, bleedSpeed=8}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={entityHealth=1..2, bleedSpeed=10}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1

# mobs
execute as @e[scores={entityHealth=1, bleedSpeed=10}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.2 0.2 0 1

scoreboard players set @e[scores={entityHealth=0..10,bleedSpeed=10..}] bleedSpeed 0