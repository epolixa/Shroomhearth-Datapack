################################################################
# Bleeding Particles
# script for bleeding particles
################################################################

scoreboard players add @a[scores={playerHealth=0..10}] bleedSpeed 1

execute as @a[scores={playerHealth=0..10, bleedSpeed=2}] at @s run particle minecraft:block minecraft:red_coral ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=0..8, bleedSpeed=6}] at @s run particle minecraft:block minecraft:red_coral ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=0..6, bleedSpeed=4}] at @s run particle minecraft:block minecraft:red_coral ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=0..4, bleedSpeed=10}] at @s run particle minecraft:block minecraft:red_coral ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @a[scores={playerHealth=0..2, bleedSpeed=8}] at @s run particle minecraft:block minecraft:red_coral ~ ~0.9 ~ 0.2 0.45 0.2 0 1

scoreboard players set @a[scores={playerHealth=0..10,bleedSpeed=10..}] bleedSpeed 0