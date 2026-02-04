# Executor: Player leaving the Porcelain
# Position: a Porcelain anchor matching the player ID


# teleport to porcelain anchor matching player ID
teleport @e[tag=porcelain_anchor,sort=nearest,limit=1]

# destroy anchor in porcelain
kill @e[tag=porcelain_anchor,sort=nearest,limit=1]

# unload chunk in porcelain if there is no other anchors
execute at @s run forceload remove ~ ~

# make sure chunks are still loaded for nearby remaining anchors
execute as @e[tag=porcelain_anchor,sort=nearest,limit=1] at @s run forceload add ~ ~
