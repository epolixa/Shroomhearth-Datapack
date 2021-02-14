# as a player who just harvested crop and rng is between 0 and 5, from their perspective, summon an xp orb at the dropped crop's position
execute as @s[scores={rng=0..8}] at @e[type=item,nbt={Age:0s,Item:{Count:4b,id:"minecraft:amethyst_shard"}},distance=..5,limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[scores={rng=0..8}] at @e[type=item,nbt={Age:0s,Item:{Count:8b,id:"minecraft:amethyst_shard"}},distance=..5,limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[scores={rng=0..8}] at @e[type=item,nbt={Age:0s,Item:{Count:12b,id:"minecraft:amethyst_shard"}},distance=..5,limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:4}
execute as @s[scores={rng=0..8}] at @e[type=item,nbt={Age:0s,Item:{Count:16b,id:"minecraft:amethyst_shard"}},distance=..5,limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:4}

# reset score
scoreboard players set @s farmAmethyst 0 
