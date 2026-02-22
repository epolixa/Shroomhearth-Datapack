tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/summon/summon_random_thrall] Attempting to summon a random thrall"}]


# Summon either a regular thrall or a 20% chance for a rare thrall
execute store result score random shroomhearth run random value 0..9
execute if score random shroomhearth matches 0 run function shroomhearth:ender_dragon/powers/summon/summon_rare_thrall
execute if score random shroomhearth matches 1..9 run function shroomhearth:ender_dragon/powers/summon/summon_regular_thrall
scoreboard players set random shroomhearth -1