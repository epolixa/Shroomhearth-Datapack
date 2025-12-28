# Executor: A player that should have Spores of Haste removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/haste/remove] removing spores.haste attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Haste attribute modifier
attribute @s minecraft:attack_speed modifier remove shroomhearth:spores.haste.attack_speed
attribute @s minecraft:block_break_speed modifier remove shroomhearth:spores.haste.block_break_speed

# Tag the player to indicate they no longer have Spores of Haste
tag @s remove spores_of_haste
