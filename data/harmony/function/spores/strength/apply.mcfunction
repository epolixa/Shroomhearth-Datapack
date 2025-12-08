# Executor: A player that should have Strength Spores applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/apply] applying strength_spores attribute modifier to "},{"selector":"@s"}]


# Apply Strength Spores attribute modifier
attribute @s minecraft:attack_damage modifier add shroomhearth:spores.strength 3 add_value

# Tag the player to indicate they have Strength Spores
tag @s add strength_spores