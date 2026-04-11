# Executor: A player that should have Spores of Armor applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/armor/apply] applying spores.armor attribute modifier to "},{"selector":"@s"}]

# Apply Spores of Armor attribute modifier
attribute @s minecraft:armor modifier add shroomhearth:spores_of_armor 4 add_value

# Tag the player to indicate they have Spores of Armor
tag @s add spores_of_armor