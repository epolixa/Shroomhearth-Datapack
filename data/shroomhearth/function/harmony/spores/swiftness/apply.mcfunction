# Executor: A player that should have Spores of Swiftness applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/swiftness/apply] applying spores.swiftness attribute modifier to "},{"selector":"@s"}]

# Apply Spores of Swiftness attribute modifier
attribute @s minecraft:movement_speed modifier add shroomhearth:spores_of_swiftness 0.2 add_multiplied_base

# Tag the player to indicate they have Spores of Swiftness
tag @s add spores_of_swiftness
