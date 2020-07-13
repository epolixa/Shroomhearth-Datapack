################################################################
# teleport player to anchor
# overworld porcelain anchor control
################################################################

# copy rotation of player to nearest anchor in overworld
data modify entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation set from entity @s Rotation

# teleport player to position offset up from anchor in overworld
execute in minecraft:overworld at @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] run teleport ~ ~1.9 ~

# destroy nearest anchor in overworld
kill @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1]

# unload chunk in overworld
execute at @s run forceload remove ~ ~

# make sure chunks are still loaded for nearby remaining anchors
execute as @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] at @s run forceload add ~ ~

# remove all prior effects from player
effect clear @s