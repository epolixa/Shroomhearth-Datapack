# set lcg
scoreboard players set lcgModulus shroomhearth 3
function shroomhearth:lcg/random

# as a player who just harvested crop, from their perspective, summon an xp orb at the dropped crop's position
execute at @e[type=item,nbt={Age:0s,Item:{Count:2b,id:"minecraft:nether_wart"}},distance=..6,limit=1] if score lcg shroomhearth matches ..1 run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute at @e[type=item,nbt={Age:0s,Item:{Count:3b,id:"minecraft:nether_wart"}},distance=..6,limit=1] if score lcg shroomhearth matches ..1 run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute at @e[type=item,nbt={Age:0s,Item:{Count:4b,id:"minecraft:nether_wart"}},distance=..6,limit=1] if score lcg shroomhearth matches ..1 run summon minecraft:experience_orb ~ ~ ~ {Value:1}

# reset score
scoreboard players set @s farmWart 0 
