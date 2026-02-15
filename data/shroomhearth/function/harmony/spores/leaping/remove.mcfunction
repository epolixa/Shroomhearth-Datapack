# Executor: A player that should have Spores of Leaping removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/leaping/remove] removing spores.leaping attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Leaping attribute modifier
attribute @s minecraft:safe_fall_distance modifier remove shroomhearth:spores_of_leaping.safe_fall_distance
attribute @s minecraft:jump_strength modifier remove shroomhearth:spores_of_leaping.jump_strength

# Tag the player to indicate they no longer have Spores of Leaping
tag @s remove spores_of_leaping