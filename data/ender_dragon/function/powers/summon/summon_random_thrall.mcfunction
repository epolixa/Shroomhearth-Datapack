# Summon either a regular thrall or a 20% chance for a rare thrall
execute store result score random shroomhearth run random value 0..5
execute if score random shroomhearth matches 0 run function ender_dragon:powers/summon/summon_rare_thrall
execute if score random shroomhearth matches 1..5 run function ender_dragon:powers/summon/summon_regular_thrall
scoreboard players set random shroomhearth -1