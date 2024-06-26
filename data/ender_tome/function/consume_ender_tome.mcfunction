# Executes from the context of an Ender Tome entity that has been consumed in the process of enhancing an item

particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0.01 6

playsound minecraft:block.trial_spawner.ambient_ominous neutral @a ~ ~ ~ 1 1.2
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.8

kill @n[tag=ender_tome_interaction,distance=0]
kill @s