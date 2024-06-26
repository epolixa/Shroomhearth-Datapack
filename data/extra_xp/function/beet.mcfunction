# set lcg
scoreboard players set lcgModulus shroomhearth 3
function shroomhearth:lcg/random

# store the count of the dropped item in score
execute store result score @s farmBeet if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot"}},distance=..6,sort=nearest]

# as a player who just harvested mature crop and lcg, from their perspective, summon an xp orb worth 1 at the dropped crop's position
# beets have a chance to give a little more xp for no reason :)
execute if score lcg shroomhearth matches 0 if score @s farmBeet matches 1.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score lcg shroomhearth matches 1 if score @s farmBeet matches 1.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:2}

# reset score
scoreboard players set @s farmBeet 0
