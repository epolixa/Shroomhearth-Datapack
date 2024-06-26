# Summon a random mob
execute store result score random shroomhearth run random value 0..26
execute if score random shroomhearth matches 0 summon minecraft:zombie run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 1 summon minecraft:zombie_villager run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 2 summon minecraft:husk run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 3 summon minecraft:drowned run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 4 summon minecraft:skeleton run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 5 summon minecraft:stray run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 6 summon minecraft:wither_skeleton run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 7 summon minecraft:creeper run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 8 summon minecraft:spider run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 9 summon minecraft:cave_spider run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 10 summon minecraft:silverfish run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 11 summon minecraft:slime run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 12 summon minecraft:witch run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 13 summon minecraft:vindicator run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 14 summon minecraft:pillager run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 15 positioned ~ ~8 ~ summon minecraft:phantom run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 16 summon minecraft:guardian run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 17 summon minecraft:hoglin run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 18 summon minecraft:zoglin run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 19 summon minecraft:piglin run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 20 summon minecraft:zombified_piglin run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 21 summon minecraft:magma_cube run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 22 summon minecraft:blaze run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 23 positioned ~ ~8 ~ summon minecraft:ghast run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 24 summon minecraft:endermite run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 25 summon minecraft:shulker run function ender_dragon:powers/summon/initialize_thrall
execute if score random shroomhearth matches 26 summon minecraft:bogged run function ender_dragon:powers/summon/initialize_thrall
scoreboard players set random shroomhearth -1

say summon regular thrall