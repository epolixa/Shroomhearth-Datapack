# Executor: A player that should have Spores of Leaping applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/leaping/apply] applying spores.leaping attribute modifier to "},{"selector":"@s"}]

# Apply Spores of Leaping attribute modifier
attribute @s minecraft:safe_fall_distance modifier add shroomhearth:spores_of_leaping.safe_fall_distance 1 add_value
attribute @s minecraft:jump_strength modifier add shroomhearth:spores_of_leaping.jump_strength 0.1 add_value

# Tag the player to indicate they have Spores of Leaping
tag @s add spores_of_leaping