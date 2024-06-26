# cancel the recall if a player takes damage or unselects whistle during cast time

# revoke trigger
advancement revoke @s only recall:interrupted

# stop forceloading destination
execute as @e[tag=recall_marker] at @s run function porcelain:cleanup_marked_chunk

# remove tag
tag @s remove recalling

# clear effect
effect clear @s minecraft:slowness

# inform player
tellraw @s "Recall interrupted"