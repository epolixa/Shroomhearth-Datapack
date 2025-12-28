# Executor: A player that should have Spores of Swiftness removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/swiftness/remove] removing spores.swiftness attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Swiftness attribute modifier
attribute @s minecraft:movement_speed modifier remove shroomhearth:spores.swiftness

# Tag the player to indicate they no longer have Spores of Speed
tag @s remove spores_of_swiftness
