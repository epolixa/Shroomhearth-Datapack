# Executes from the context of an item entity nearby an allay summoned from a bottle at the position of that allay

# Assign the item
data modify entity @e[type=minecraft:allay,tag=unbottled_allay,sort=nearest,limit=1] HandItems[0] set from entity @s Item
data modify entity @e[type=minecraft:allay,tag=unbottled_allay,sort=nearest,limit=1] HandItems[0].count set value 1

# Reduce the item's count by 1
execute store result score @s itemCount run data get entity @s Item.count
execute unless score @s itemCount matches 0 run scoreboard players remove @s itemCount 1
execute unless score @s itemCount matches 0 store result entity @s Item.count int 1 run scoreboard players get @s itemCount
execute if score @s itemCount matches 0 run kill @s