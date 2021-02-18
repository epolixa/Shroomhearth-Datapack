# play effects
particle minecraft:witch ~ ~1 ~ 3 1 3 0 64 force

# play sound
playsound minecraft:item.trident.thunder hostile @a[distance=0..] ~ ~ ~ 13 0.8

# summon lighting on random entities for each player
execute positioned 0 64 0 as @a[distance=..200] at @e[type=!ender_dragon,limit=1,sort=random,distance=..200] run summon minecraft:lightning_bolt ~ ~ ~