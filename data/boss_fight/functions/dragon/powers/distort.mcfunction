# play sound
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 12 0.7

# show actionbar
execute positioned 0 64 0 run title @a[distance=..128] actionbar {"color":"dark_purple","font":"minecraft:illageralt","bold":true,"text":"DISTORT"}

# set lcg
scoreboard players set lcgModulus shroomhearth 13
function shroomhearth:lcg/random

# apply a random effect to all mobs within range
execute if score lcg shroomhearth matches 0 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:speed 10 2
execute if score lcg shroomhearth matches 1 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:slowness 10 2
execute if score lcg shroomhearth matches 2 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:jump_boost 10 3
execute if score lcg shroomhearth matches 3 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:nausea 15
execute if score lcg shroomhearth matches 4 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:invisibility 15
execute if score lcg shroomhearth matches 5 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:darkness 15
execute if score lcg shroomhearth matches 6 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:hunger 15
execute if score lcg shroomhearth matches 7 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:weakness 10 1
execute if score lcg shroomhearth matches 8 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:poison 10
execute if score lcg shroomhearth matches 9 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:wither 10
execute if score lcg shroomhearth matches 10 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:absorption 15
execute if score lcg shroomhearth matches 11 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:levitation 10 1
execute if score lcg shroomhearth matches 12 positioned 0 64 0 run effect give @e[type=!#boss_fight:dragon_immune,distance=..128] minecraft:slow_falling 10 3

# unset lcg
scoreboard players set lcg shroomhearth -1

# expend rage
scoreboard players remove @s rage 48