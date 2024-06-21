advancement revoke @s only ender_tome:player_hurt_ender_tome

say Attempting to apply Ender Tome

scoreboard players set @s enhanceable_enchantments_length 0
execute if predicate ender_tome:holding_enhanceable_item run function ender_tome:enhance_enchanted_item

execute if score @s enhanceable_enchantments_length matches ..0 at @n[tag=ender_tome] run loot spawn ~ ~ ~ loot ender_tome:ender_tome
execute if score @s enhanceable_enchantments_length matches ..0 at @n[tag=ender_tome] run playsound minecraft:item.book.page_turn neutral @a ~ ~ ~ 1 0.8
execute if score @s enhanceable_enchantments_length matches ..0 at @n[tag=ender_tome] run say No enhanceable enchantments found

kill @n[tag=ender_tome]
kill @n[tag=ender_tome_interaction]