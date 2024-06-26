# Executes from the context of an Ender Tome entity that has expired or failed to grant an enhancement

loot spawn ~ ~ ~ loot ender_tome:ender_tome

playsound minecraft:item.book.page_turn neutral @a ~ ~ ~ 1 0.8

kill @n[tag=ender_tome_interaction,distance=0]
kill @s