# set lcg
scoreboard players set bityard lcgModulus 3
function bityard:lcg/random

# summon experience orb
execute if score bityard lcg matches 0 run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score bityard lcg matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute if score bityard lcg matches 2 run summon minecraft:experience_orb ~ ~ ~ {Value:3}

# revoke trigger
advancement revoke @s only extra_xp:harvest_bee