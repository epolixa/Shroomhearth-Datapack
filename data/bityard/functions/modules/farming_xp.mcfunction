################################################################
# Farming XP
# get xp from farming related activities
################################################################

# check if player has harvested crop
# wheat
execute as @a[scores={farmWheat=1..}] at @s[scores={rng=0..5}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:wheat"}}, distance=..5, limit=1] run summon minecraft:xp_orb ~ ~ ~ {Value:1}
# beets
execute as @a[scores={farmBeets=1..}] at @s[scores={rng=0..7}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:beetroot"}}, distance=..5, limit=1] run summon minecraft:xp_orb ~ ~ ~ {Value:1}
# carrots
execute as @a[scores={farmCarrots=1..}] at @s[scores={rng=0..5}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:carrot"}}, distance=..5, limit=1] if entity @e[type=item,nbt={Age:0s, Item:{id:"minecraft:carrot"}}, distance=0.1..5] run summon minecraft:xp_orb ~ ~ ~ {Value:1}
# potatoes
execute as @a[scores={farmPotatoes=1..}] at @s[scores={rng=0..5}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:potato"}}, distance=..5, limit=1] if entity @e[type=item,nbt={Age:0s, Item:{id:"minecraft:potato"}}, distance=0.1..5] run summon minecraft:xp_orb ~ ~ ~ {Value:1}
# nether warts
execute as @a[scores={farmWarts=1..}] at @s[scores={rng=0..5}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:nether_wart"}}, distance=..5, limit=1] if entity @e[type=item,nbt={Age:0s, Item:{id:"minecraft:nether_wart"}}, distance=0.1..5] run summon minecraft:xp_orb ~ ~ ~ {Value:1}

# reset farm scores
execute as @a[scores={farmWheat=1..}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:wheat"}}] run scoreboard players set @s farmWheat 0 
execute as @a[scores={farmBeets=1..}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:beetroot"}}] run scoreboard players set @s farmBeets 0 
execute as @a[scores={farmCarrots=1..}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:carrot"}}] run scoreboard players set @s farmCarrots 0 
execute as @a[scores={farmPotatoes=1..}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:potato"}}] run scoreboard players set @s farmPotatoes 0 
execute as @a[scores={farmWarts=1..}] at @e[type=item,nbt={Age:0s, Item:{id:"minecraft:nether_wart"}}] run scoreboard players set @s farmWarts 0 
