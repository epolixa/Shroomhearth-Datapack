# this executes from the context of a player leaving the porcelain at the position of a porcelain anchor matching their ID

# teleport to porcelain anchor matching player ID
teleport @e[tag=porcelain_anchor,sort=nearest,limit=1]

# destroy anchor in porcelain
kill @e[tag=porcelain_anchor,sort=nearest,limit=1]

# unload chunk in porcelain if there is no other anchors
execute at @s run forceload remove ~ ~ 

# make sure chunks are still loaded for nearby remaining anchors
execute as @e[tag=porcelain_anchor,sort=nearest,limit=1] at @s run forceload add ~ ~
