################################################################
# Grass Paths
# grass paths grant a small speed boost
################################################################

# give speed 1 to players on grass path
execute as @a at @s if block ~ ~-0.1 ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true

# same for entities
execute as @e at @s if block ~ ~-0.1 ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true