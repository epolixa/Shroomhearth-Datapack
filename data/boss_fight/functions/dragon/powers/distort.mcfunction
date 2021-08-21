# play sound
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 12 0.7

# show actionbar
execute positioned 0 64 0 run title @a[distance=..200] actionbar {"color":"dark_purple","font":"minecraft:alt","bold":true,"text":"DISTORT"}

# set lcg
scoreboard players set lcgModulus bityard 13
function bityard:lcg/random

# apply a random effect to all mobs within range
execute if score lcg bityard matches 0 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:speed 10 2
execute if score lcg bityard matches 1 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:slowness 10 2
execute if score lcg bityard matches 2 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:jump_boost 10 3
execute if score lcg bityard matches 3 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:nausea 15
execute if score lcg bityard matches 4 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:invisibility 15
execute if score lcg bityard matches 5 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:blindness 15
execute if score lcg bityard matches 6 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:hunger 15
execute if score lcg bityard matches 7 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:weakness 10 1
execute if score lcg bityard matches 8 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:poison 10
execute if score lcg bityard matches 9 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:wither 10
execute if score lcg bityard matches 10 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:absorption 15
execute if score lcg bityard matches 11 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:levitation 10 1
execute if score lcg bityard matches 12 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..200] minecraft:slow_falling 10 3

# unset lcg
scoreboard players set lcg bityard -1