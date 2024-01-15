# Executes from the context of a player that ate Dragon Meat

# Apply effects
effect clear @s minecraft:hunger
effect give @s minecraft:saturation 12 0 true
effect give @s minecraft:strength 120
effect give @s minecraft:resistance 120

# Reset trigger
advancement revoke @s only carves:consume_dragon_tail