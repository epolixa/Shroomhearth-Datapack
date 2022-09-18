tellraw @s "cast recall"

# check if player has spawn point set
execute if data entity @s SpawnX if data entity @s SpawnY if data entity @s SpawnZ if data entity @s SpawnDimension run tag @s add has_spawn

# check if the player has a bed at the set spawn point
execute at @e[tag=recall_marker] unless block ~ ~ ~ #recall:spawn_blocks run tag @s remove has_spawn

# execute the teleportation
execute as @s[tag=has_spawn] run function recall:teleport_player_to_spawn
execute as @s[tag=!has_spawn] run function recall:teleport_player_to_world_spawn

# cleanup the marker
execute as @e[tag=recall_marker] at @s run function porcelain:cleanup_marked_chunk

# remove has_spawn tag
tag @s remove has_spawn

# center player on block
execute at @s align xz run tp @s ~.5 ~ ~.5

# fix position if needed
execute at @s unless block ~ ~ ~ minecraft:air run function recall:fix_position

# play sound
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 1.1

# take 1 xp level
xp add @s[gamemode=survival] -1 levels

# clear the slowness
effect clear @s minecraft:slowness

# grant advancement
advancement grant @s only recall:recall

# clear the casting tag
tag @s remove recalling