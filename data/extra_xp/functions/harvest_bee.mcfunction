# set lcg
scoreboard players set lcgModulus shroomhearth 3
function shroomhearth:lcg/random

# summon experience orb
execute if score lcg shroomhearth matches 0 run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score lcg shroomhearth matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute if score lcg shroomhearth matches 2 run summon minecraft:experience_orb ~ ~ ~ {Value:3}

# revoke trigger
advancement revoke @s only extra_xp:harvest_bee