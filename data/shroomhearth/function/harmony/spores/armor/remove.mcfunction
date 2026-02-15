# Executor: A player that should have Spores of Armor removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/armor/remove] removing spores.armor attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Armor attribute modifier
attribute @s minecraft:armor modifier remove shroomhearth:spores_of_armor

# Tag the player to indicate they no longer have Spores of Armor
tag @s remove spores_of_armor