# Executes from the context of an item entity nearby an allay summoned from a bottle at the position of that allay

# Assign the item
data modify entity @e[type=minecraft:allay,tag=!from_bottle,sort=nearest,limit=1] HandItems[0] set from entity @s Item
data modify entity @e[type=minecraft:allay,tag=!from_bottle,sort=nearest,limit=1] HandItems[0].Count set value 1b

# Reduce the item's count by 1
execute store result score @s itemCount run data get entity @s Item.Count
execute unless score @s itemCount matches 0 run scoreboard players remove @s itemCount 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s itemCount