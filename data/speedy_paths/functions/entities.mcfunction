# tag mobs that have a saddle item
tag @s[tag=!saddled,nbt={Saddle:1b}] add saddled
tag @s[tag=!saddled,nbt={SaddleItem:{Count:1b}}] add saddled
tag @s[tag=!saddled,nbt={DecorItem:{Count:1b}}] add saddled

# give speed to saddled mountables on grass paths
execute if block ~ ~-0.1 ~ minecraft:dirt_path run effect give @s[tag=saddled] minecraft:speed 1 0 true