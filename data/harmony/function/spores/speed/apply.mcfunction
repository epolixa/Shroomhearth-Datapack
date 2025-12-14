# Executor: A player that should have Spores of Speed applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/speed/apply] applying spores.speed attribute modifier to "},{"selector":"@s"}]

# Apply Spores of Speed attribute modifier
attribute @s minecraft:movement_speed modifier add shroomhearth:spores.speed 0.2 add_multiplied_base

# Tag the player to indicate they have Spores of Speed
tag @s add spores_of_speed
