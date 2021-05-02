# set lcg
scoreboard players set bityard lcgModulus 7
function bityard:lcg/random

# summon experience orb
execute if score bityard lcg matches 0 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score bityard lcg matches 1 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute if score bityard lcg matches 2 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score bityard lcg matches 3 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute if score bityard lcg matches 4 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:5}
execute if score bityard lcg matches 5 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:6}
execute if score bityard lcg matches 6 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:7}

# revoke trigger
advancement revoke @s only extra_xp:tame_animal