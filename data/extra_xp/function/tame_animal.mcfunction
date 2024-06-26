# set lcg
scoreboard players set lcgModulus shroomhearth 7
function shroomhearth:lcg/random

# summon experience orb
execute if score lcg shroomhearth matches 0 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score lcg shroomhearth matches 1 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute if score lcg shroomhearth matches 2 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score lcg shroomhearth matches 3 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute if score lcg shroomhearth matches 4 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:5}
execute if score lcg shroomhearth matches 5 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:6}
execute if score lcg shroomhearth matches 6 at @e[type=#extra_xp:tamable,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:7}

# revoke trigger
advancement revoke @s only extra_xp:tame_animal