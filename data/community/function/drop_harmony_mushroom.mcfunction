# Context: A harmony mushroom interaction entity that has been attacked and should drop an item before being removed.
# Position: The harmony mushroom interaction entity that was attacked.

# Spawn an item
loot spawn ~ ~ ~ loot community:harmony_mushroom

# Play a breaking sound effect
playsound minecraft:block.small_dripleaf.break block @a ~ ~ ~ 1 0.8

# Breaking particles
particle minecraft:end_rod ~ ~0.3 ~ 0.25 0.25 0.25 0.05 3

# spawn xp
summon minecraft:experience_orb

# Remove the harmony mushroom interaction entity and attached display entity
execute on passengers run kill @s[tag=harmony_mushroom]
kill @s