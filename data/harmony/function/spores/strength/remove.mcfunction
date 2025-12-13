# Executor: A player that should have Spores of Strength removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/remove] removing spores.strength attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Strength attribute modifier
attribute @s minecraft:attack_damage modifier remove shroomhearth:spores.strength

# Tag the player to indicate they no longer have Spores of Strength
tag @s remove spores_of_strength