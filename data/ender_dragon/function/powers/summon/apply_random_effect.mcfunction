# Executes from the context of a newly summoned thrall mob

# Apply a random effect
execute store result score random shroomhearth run random value 0..13
execute if score random shroomhearth matches 0 run effect give @s minecraft:speed infinite
execute if score random shroomhearth matches 1 run effect give @s minecraft:strength infinite
execute if score random shroomhearth matches 2 run effect give @s minecraft:jump_boost infinite
execute if score random shroomhearth matches 3 run effect give @s minecraft:regeneration infinite
execute if score random shroomhearth matches 4 run effect give @s minecraft:resistance infinite
execute if score random shroomhearth matches 5 run effect give @s minecraft:fire_resistance infinite
execute if score random shroomhearth matches 6 run effect give @s minecraft:invisibility infinite
execute if score random shroomhearth matches 7 run effect give @s minecraft:health_boost infinite
execute if score random shroomhearth matches 8 run effect give @s minecraft:absorption infinite
execute if score random shroomhearth matches 9 run effect give @s minecraft:slow_falling infinite
execute if score random shroomhearth matches 10 run effect give @s minecraft:wind_charged infinite
execute if score random shroomhearth matches 11 run effect give @s minecraft:weaving infinite
execute if score random shroomhearth matches 12 run effect give @s minecraft:oozing infinite
execute if score random shroomhearth matches 13 run effect give @s minecraft:infested infinite
scoreboard players set random shroomhearth -1