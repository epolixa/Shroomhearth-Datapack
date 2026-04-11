# Executor: Ender Tome entity that has expired or failed to grant an enhancement
# Position: The Ender Tome entity

tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/deactivate_ender_tome] Deactivating Ender Tome"}]


# Spawn item drop
loot spawn ~ ~ ~ loot shroomhearth:ender_tome

# Play sound
playsound minecraft:item.book.page_turn neutral @a ~ ~ ~ 1 0.8

# Remove the Ender Tome entity and interaction entity
kill @n[tag=ender_tome_interaction,distance=0]
kill @s