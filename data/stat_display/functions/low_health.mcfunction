# set lcg
scoreboard players set lcgModulus shroomhearth 5
function shroomhearth:lcg/random

# spawn "hurt" particles on player with greater chance at lower health levels
execute if score lcg shroomhearth matches 0 at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score lcg shroomhearth matches 1 as @s[scores={playerHealth=1..8}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score lcg shroomhearth matches 2 as @s[scores={playerHealth=1..6}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score lcg shroomhearth matches 3 as @s[scores={playerHealth=1..4}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1
execute if score lcg shroomhearth matches 4 as @s[scores={playerHealth=1..2}] at @s run particle minecraft:block minecraft:fire_coral_block ~ ~0.9 ~ 0.2 0.45 0.2 0 1

# revoke trigger
advancement revoke @s only stat_display:low_health