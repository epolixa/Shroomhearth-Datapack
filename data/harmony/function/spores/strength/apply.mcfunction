# Executor: A player that should have Spores of Strength applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/apply] applying spores.strength attribute modifier to "},{"selector":"@s"}]


# Apply Spores of Strength attribute modifier
attribute @s minecraft:attack_damage modifier add shroomhearth:spores.strength 3 add_value

# Tag the player to indicate they have Spores of Strength
tag @s add spores_of_strength