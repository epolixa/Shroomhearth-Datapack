################################################################
# Speedy Paths
# grass paths grant a small speed boost
################################################################

# give speed 1 to players on grass path
execute as @a at @s if block ~ ~-0.1 ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true

# tag mountable mobs
tag @e[tag=!pathwalker,nbt={Saddle:1b}] add pathwalker
tag @e[tag=!pathwalker,nbt={SaddleItem:{Count:1b}}] add pathwalker
tag @e[tag=!pathwalker,nbt={DecorItem:{Count:1b}}] add pathwalker

# give speed to mountables
execute as @e[tag=pathwalker] at @s if block ~ ~-0.1 ~ minecraft:grass_path run effect give @s minecraft:speed 1 0 true