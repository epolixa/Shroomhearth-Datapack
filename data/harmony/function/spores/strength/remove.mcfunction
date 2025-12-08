# Executor: A player that should have Strength Spores removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/remove] removing strength_spores attribute modifier from "},{"selector":"@s"}]


# Remove Strength Spores attribute modifier
attribute @s minecraft:attack_damage modifier remove shroomhearth:spores.strength

# Tag the player to indicate they no longer have Strength Spores
tag @s remove strength_spores