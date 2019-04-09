################################################################
# Farming XP
# get xp from farming related activities
################################################################

# check if player has harvested crop
# wheat
# as a player who just harvested wheat and rng is between 0 and 5, from their perspective, summon an xp orb at the dropped wheat's position
execute as @a[scores={farmWheat=1..,rng=0..5}] at @s at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:wheat"}}, distance=..5, limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
# beets - more likely to drop xp
execute as @a[scores={farmBeets=1..,rng=0..7}] at @s at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:beetroot"}}, distance=..5, limit=1] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
# carrots
execute as @a[scores={farmCarrots=1..,rng=0..5}] at @s at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:carrot"}}, distance=..5, limit=1] if entity @e[type=item,nbt={Age:0s, Item:{id:"minecraft:carrot"}}, distance=0.1..5] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
# potatoes
execute as @a[scores={farmPotatoes=1..,rng=0..5}] at @s at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:potato"}}, distance=..5, limit=1] if entity @e[type=item,nbt={Age:0s, Item:{id:"minecraft:potato"}}, distance=0.1..5] run summon minecraft:experience_orb ~ ~ ~ {Value:1}
# nether warts
execute as @a[scores={farmWarts=1..,rng=0..5}] at @s at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:nether_wart"}}, distance=..5, limit=1] if entity @e[type=item,nbt={Age:0s, Item:{id:"minecraft:nether_wart"}}, distance=0.1..5] run summon minecraft:experience_orb ~ ~ ~ {Value:1}

# reset farm scores of players if a crop was just harvested
execute if entity @e[type=item,limit=1,nbt={Age:0s, Item:{id:"minecraft:wheat"}}] as @a[scores={farmWheat=1..}] run scoreboard players set @s farmWheat 0 
execute if entity @e[type=item,limit=1,nbt={Age:0s, Item:{id:"minecraft:beetroot"}}] as @a[scores={farmBeets=1..}] run scoreboard players set @s farmBeets 0 
execute if entity @e[type=item,limit=1,nbt={Age:0s, Item:{id:"minecraft:carrot"}}] as @a[scores={farmCarrots=1..}] run scoreboard players set @s farmCarrots 0 
execute if entity @e[type=item,limit=1,nbt={Age:0s, Item:{id:"minecraft:potato"}}] as @a[scores={farmPotatoes=1..}] run scoreboard players set @s farmPotatoes 0 
execute if entity @e[type=item,limit=1,nbt={Age:0s, Item:{id:"minecraft:nether_wart"}}] as @a[scores={farmWarts=1..}] run scoreboard players set @s farmWarts 0 
