# Context: A harmony mushroom interaction entity that has been attacked and should drop an item before being removed.
# Position: The harmony mushroom interaction entity that was attacked.

tellraw @a[tag=debug_harmony] "[harmony:harmony_cap/drop_item] dropping harmony cap item"

# Spawn an item
loot spawn ~ ~ ~ loot harmony:harmony_cap

# Play a breaking sound effect
playsound minecraft:block.small_dripleaf.break block @a ~ ~ ~ 1 0.9

# Breaking particles
particle minecraft:end_rod ~ ~0.1875 ~ 0.2 0.2 0.2 0.03 3

# Spawn experience
summon minecraft:experience_orb

# Remove the harmony mushroom interaction entity and attached display entity
execute on passengers run kill @s[tag=harmony_cap]
kill @s