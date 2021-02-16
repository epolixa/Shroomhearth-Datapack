# set lcg
scoreboard players set bityard lcgModulus 4
function bityard:lcg/random

# summon experience orb
execute if score bityard lcg matches 0 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:8}
execute if score bityard lcg matches 1 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:9}
execute if score bityard lcg matches 2 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:10}
execute if score bityard lcg matches 3 at @e[type=minecraft:piglin,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:11}

# revoke trigger
advancement revoke @s only extra_xp:bartering