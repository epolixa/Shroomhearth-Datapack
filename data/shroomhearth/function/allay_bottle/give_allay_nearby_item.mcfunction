# Executor: An Item entity near an allay that was just spawned by a player
# Position: The Item entity

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/give_allay_nearby_item] Giving Allay nearby "},{"nbt":"Item.id","entity":"@s"}]


# Assign the item
data modify entity @n[type=minecraft:allay,tag=unbottled_allay] equipment.mainhand set from entity @s Item
data modify entity @n[type=minecraft:allay,tag=unbottled_allay] equipment.mainhand.count set value 1

# Reduce the item's count by 1
execute store result score @s item_count run data get entity @s Item.count
execute unless score @s item_count matches 0 run scoreboard players remove @s item_count 1
execute unless score @s item_count matches 0 store result entity @s Item.count int 1 run scoreboard players get @s item_count
execute if score @s item_count matches 0 run kill @s