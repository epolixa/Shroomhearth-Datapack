# set AngerTime
data modify entity @s AngerTime set value 100000

# capture UUID from random mob
data modify entity @s AngryAt set from entity @e[distance=..200,limit=1,sort=random] UUID

# play particles
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0 0.1 0.05 40 force