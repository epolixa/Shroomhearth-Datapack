# execute from the context of a newly summoned thrall mob

# set lcg
scoreboard players set lcgModulus shroomhearth 10
function shroomhearth:lcg/random

# apply a random effect
execute if score lcg shroomhearth matches 0 run effect give @s minecraft:speed infinite
execute if score lcg shroomhearth matches 1 run effect give @s minecraft:strength infinite
execute if score lcg shroomhearth matches 2 run effect give @s minecraft:jump_boost infinite
execute if score lcg shroomhearth matches 3 run effect give @s minecraft:regeneration infinite
execute if score lcg shroomhearth matches 4 run effect give @s minecraft:resistance infinite
execute if score lcg shroomhearth matches 5 run effect give @s minecraft:fire_resistance infinite
execute if score lcg shroomhearth matches 6 run effect give @s minecraft:invisibility infinite
execute if score lcg shroomhearth matches 7 run effect give @s minecraft:health_boost infinite
execute if score lcg shroomhearth matches 8 run effect give @s minecraft:absorption infinite
execute if score lcg shroomhearth matches 9 run effect give @s minecraft:slow_falling infinite

# unset lcg
scoreboard players set lcg shroomhearth -1