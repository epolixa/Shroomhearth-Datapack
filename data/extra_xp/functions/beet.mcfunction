# as a player who just harvested crop and rng is between 0 and 5, from their perspective, summon an xp orb at the dropped crop's position
execute as @s[scores={rng=0..7}] at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:beetroot"}},distance=..5,limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:1}

# reset score
scoreboard players set @s farmBeet 0 
