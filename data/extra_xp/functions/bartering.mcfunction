# set lcg
scoreboard players set lcgModulus shroomhearth 4
function shroomhearth:lcg/random

# summon experience orb
execute if score lcg shroomhearth matches 0 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:8}
execute if score lcg shroomhearth matches 1 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:9}
execute if score lcg shroomhearth matches 2 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:10}
execute if score lcg shroomhearth matches 3 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:11}

# revoke trigger
advancement revoke @s only extra_xp:bartering