# Executor: an entity with the losing harmonic strength
# Position: the entity

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/enchantment/harmonic_strength/remove] "},{"selector":"@s"},{"text":" removed Harmonic Strength"}]


# Remove attribute modifiers
attribute @s minecraft:attack_damage modifier remove shroomhearth:harmonic_strength
