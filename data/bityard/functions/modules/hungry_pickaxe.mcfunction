################################################################
# Hungry Pickaxe
# script for hungry pickaxe usage
################################################################

# Give haste effect to anyone mining ore with pick
# Coal
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryCoal=1..}] at @s run effect give @s minecraft:haste 60 0
# Iron
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryIron=1..}] at @s run effect give @s minecraft:haste 60 0
# Quartz
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryQuartz=1..}] at @s run effect give @s minecraft:haste 60 0
# Gold
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryGold=1..}] at @s run effect give @s minecraft:haste 60 1
# Redstone
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryRedstone=1..}] at @s run effect give @s minecraft:haste 60 1
# Lapis
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryLapis=1..}] at @s run effect give @s minecraft:haste 60 1
# Diamond
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryDiamond=1..}] at @s run effect give @s minecraft:haste 60 2
# Emerald
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe", tag:{relic:"hungry_pickaxe"}}}, scores={hungryEmerald=1..}] at @s run effect give @s minecraft:haste 60 2

# Reset hungry scores
execute as @a[scores={hungryCoal=1..}] run scoreboard players set @s hungryCoal 0
execute as @a[scores={hungryIron=1..}] run scoreboard players set @s hungryIron 0
execute as @a[scores={hungryQuartz=1..}] run scoreboard players set @s hungryQuartz 0
execute as @a[scores={hungryGold=1..}] run scoreboard players set @s hungryGold 0
execute as @a[scores={hungryRedstone=1..}] run scoreboard players set @s hungryRedstone 0
execute as @a[scores={hungryLapis=1..}] run scoreboard players set @s hungryLapis 0
execute as @a[scores={hungryDiamond=1..}] run scoreboard players set @s hungryDiamond 0
execute as @a[scores={hungryEmerald=1..}] run scoreboard players set @s hungryEmerald 0 