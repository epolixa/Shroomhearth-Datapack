# set lcg
scoreboard players set lcgModulus bityard 4
function bityard:lcg/random

# store the count of the dropped item in score
# amethyst never drops shards until mature
execute store result score @s farmAmethyst if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:amethyst_shard"}},distance=..6,sort=nearest]

# amethyst always drops xp, between 2-5 (just like quartz)
execute if score lcg bityard matches 0 if score @s farmAmethyst matches 1.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:amethyst_shard"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:2}
execute if score lcg bityard matches 1 if score @s farmAmethyst matches 1.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:amethyst_shard"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:3}
execute if score lcg bityard matches 2 if score @s farmAmethyst matches 1.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:amethyst_shard"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute if score lcg bityard matches 3 if score @s farmAmethyst matches 1.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:amethyst_shard"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:5}

# reset score
scoreboard players set @s farmAmethyst 0