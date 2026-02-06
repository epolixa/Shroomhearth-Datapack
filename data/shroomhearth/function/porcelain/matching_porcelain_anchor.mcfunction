# Executor: Player leaving the Porcelain
# Position: a Porcelain anchor matching the player ID

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/matching_porcelain_anchor] Teleporting "},{"selector":"@s"},{"text":" to their porcelain anchor"}]


# teleport to porcelain anchor matching player ID
teleport @n[tag=porcelain_anchor]

# destroy anchor in porcelain
kill @n[tag=porcelain_anchor]

# unload chunk in porcelain if there is no other anchors
execute at @s run forceload remove ~ ~

# make sure chunks are still loaded for nearby remaining anchors
execute as @n[tag=porcelain_anchor] at @s run forceload add ~ ~
