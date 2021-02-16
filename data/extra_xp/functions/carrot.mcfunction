# set lcg
scoreboard players set bityard lcgModulus 3
function bityard:lcg/random

# store the count of the dropped item in score
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},distance=..6,sort=nearest] run scoreboard players add @p[scores={farmCarrot=1..}] farmCarrot 1

# as a player who just harvested mature crop and lcg, from their perspective, summon an xp orb worth 1 at the dropped crop's position
execute if score @s farmCarrot matches 3.. at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:carrot"}},distance=..6,limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Value:1}

# reset score
scoreboard players set @s farmCarrot 0
