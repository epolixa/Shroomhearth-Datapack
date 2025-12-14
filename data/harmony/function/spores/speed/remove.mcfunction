# Executor: A player that should have Spores of Speed removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/speed/remove] removing spores.speed attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Speed attribute modifier
attribute @s minecraft:movement_speed modifier remove shroomhearth:spores.speed

# Tag the player to indicate they no longer have Spores of Speed
tag @s remove spores_of_speed
