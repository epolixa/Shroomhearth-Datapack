################################################################
# Bleeding Particles
# script for bleeding particles
################################################################

# players
execute as @s[scores={rng=0}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @s[scores={playerHealth=1..8, rng=2}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @s[scores={playerHealth=1..6, rng=4}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @s[scores={playerHealth=1..4, rng=6}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute as @s[scores={playerHealth=1..2, rng=8}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1