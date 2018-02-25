################################################################
# Farming XP
# get xp from farming related activities
################################################################

# check if player ha harvested wheat
execute as @a[scores={farmWheat=1..}] at @s[scores={rng=0..5}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:wheat"}}, distance=..5] run summon minecraft:xp_orb ~ ~ ~ {Value:1}

# reset farmWheat
execute as @a[scores={farmWheat=1..}] run scoreboard players set @s farmWheat 0 
