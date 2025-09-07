# Executes from the context of an item entity nearby an allay summoned from a bottle at the position of that allay

tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.give_allay_nearby_item] "},{"selector":"@s"},{"text":" grabbed nearby item"}]

# Assign the item
data modify entity @n[tag=unbottled_allay] equipment.mainhand set from entity @s Item
data modify entity @n[tag=unbottled_allay] equipment.mainhand.count set value 1

# Reduce the item's count by 1
execute store result score @s itemCount run data get entity @s Item.count
execute unless score @s itemCount matches 0 run scoreboard players remove @s itemCount 1
execute unless score @s itemCount matches 0 store result entity @s Item.count int 1 run scoreboard players get @s itemCount
execute if score @s itemCount matches 0 run kill @s