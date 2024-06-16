advancement revoke @s only ender_tome:attack_ominous_tome

say reading tome

function ender_tome:enhance_enchanted_item

execute if score @s enhanceable_enchantments_length matches ..0 at @n[tag=ominous_tome] run loot spawn ~ ~ ~ loot ender_tome:ender_tome

execute if score @s enhanceable_enchantments_length matches ..0 at @n[tag=ominous_tome] run playsound minecraft:item.book.page_turn neutral @a ~ ~ ~ 1 0.8

kill @n[tag=ominous_tome]
kill @n[tag=ominous_tome_interaction]