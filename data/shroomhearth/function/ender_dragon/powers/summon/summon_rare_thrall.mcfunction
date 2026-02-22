tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/summon/summon_rare_thrall] Attempting to summon a rare thrall"}]


# Summon a random mob
execute store result score random shroomhearth run random value 0..3
execute if score random shroomhearth matches 0 summon minecraft:evoker run function shroomhearth:ender_dragon/powers/summon/initialize_thrall
execute if score random shroomhearth matches 1 summon minecraft:ravager run function shroomhearth:ender_dragon/powers/summon/initialize_thrall
execute if score random shroomhearth matches 2 summon minecraft:piglin_brute run function shroomhearth:ender_dragon/powers/summon/initialize_thrall
execute if score random shroomhearth matches 3 summon minecraft:breeze run function shroomhearth:ender_dragon/powers/summon/initialize_thrall
scoreboard players set random shroomhearth -1