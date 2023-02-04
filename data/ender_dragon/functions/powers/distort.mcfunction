# play sound
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 12 0.7

# show actionbar
title @a[predicate=ender_dragon:on_main_end_island] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"DISTORT"}

# set lcg
scoreboard players set lcgModulus shroomhearth 13
function shroomhearth:lcg/random

# apply a random effect to all mobs within range
execute if score lcg shroomhearth matches 0 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:speed 10 2
execute if score lcg shroomhearth matches 1 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:slowness 10 2
execute if score lcg shroomhearth matches 2 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:jump_boost 10 3
execute if score lcg shroomhearth matches 3 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:nausea 15
execute if score lcg shroomhearth matches 4 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:invisibility 15
execute if score lcg shroomhearth matches 5 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:darkness 15
execute if score lcg shroomhearth matches 6 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:hunger 15
execute if score lcg shroomhearth matches 7 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:weakness 10 1
execute if score lcg shroomhearth matches 8 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:poison 10
execute if score lcg shroomhearth matches 9 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:wither 10
execute if score lcg shroomhearth matches 10 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:absorption 15
execute if score lcg shroomhearth matches 11 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:levitation 10 1
execute if score lcg shroomhearth matches 12 run effect give @e[type=!#ender_dragon:dragon_immune,predicate=ender_dragon:on_main_end_island] minecraft:slow_falling 10 3

# unset lcg
scoreboard players set lcg shroomhearth -1

# expend rage
scoreboard players remove @s rage 48