# Summon a random mob
execute store result score random shroomhearth run random value 0..3
execute if score random shroomhearth matches 0 summon minecraft:evoker run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 1 summon minecraft:ravager run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 2 summon minecraft:piglin_brute run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 3 summon minecraft:breeze run function ender_dragon:powers/summon/initialize_thrall
scoreboard players set random shroomhearth -1