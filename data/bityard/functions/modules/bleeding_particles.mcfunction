################################################################
# Bleeding Particles
# script for bleeding particles
################################################################

scoreboard players add @a[scores={playerHealth=1..10}] bleedSpeed 1

execute as @a[scores={playerHealth=1..10, bleedSpeed=2}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=1..8, bleedSpeed=6}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=1..6, bleedSpeed=4}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=1..4, bleedSpeed=8}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=1..2, bleedSpeed=10}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1

scoreboard players set @a[scores={playerHealth=0..10,bleedSpeed=10..}] bleedSpeed 0