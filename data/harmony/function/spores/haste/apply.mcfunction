# Executor: A player that should have Spores of Haste applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/haste/apply] applying spores.haste attribute modifier to "},{"selector":"@s"}]

# Apply Spores of Haste attribute modifier
attribute @s minecraft:attack_speed modifier add shroomhearth:spores.haste.attack_speed 0.1 add_multiplied_total
attribute @s minecraft:block_break_speed modifier add shroomhearth:spores.haste.block_break_speed 0.2 add_multiplied_total

# Tag the player to indicate they have Spores of Haste
tag @s add spores_of_haste
