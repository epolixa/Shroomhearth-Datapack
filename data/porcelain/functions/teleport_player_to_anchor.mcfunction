# this executes from the context of a player leaving the porcelain at the position of a porcelain anchor matching their ID

# teleport player to source anchor
execute if score @s porcelainDimID matches 0 in minecraft:overworld run teleport @e[tag=source_anchor,sort=nearest,limit=1]
execute if score @s porcelainDimID matches -1 in minecraft:the_nether run teleport @e[tag=source_anchor,sort=nearest,limit=1]
execute if score @s porcelainDimID matches 1 in minecraft:the_end run teleport @e[tag=source_anchor,sort=nearest,limit=1]

# copy stored inventory from source anchor
execute as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_a_to_p

# destroy nearest anchor in source
kill @e[tag=source_anchor,sort=nearest,limit=1]

# unload chunk in source
execute at @s run forceload remove ~ ~

# make sure chunks are still loaded for nearby remaining anchors
execute as @e[tag=source_anchor,sort=nearest,limit=1] at @s run forceload add ~ ~