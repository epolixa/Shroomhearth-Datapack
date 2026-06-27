# Executor: an entity with the losing harmonic haste
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_haste/release] "},{"selector":"@s"},{"text":" released Harmonic Haste"}]


# Remove attribute modifiers
attribute @s minecraft:attack_speed modifier remove shroomhearth:harmonic_haste.attack_speed
attribute @s minecraft:block_break_speed modifier remove shroomhearth:harmonic_haste.block_break_speed


