# copy rotation of overworld anchor to player
data modify entity @s Rotation set from entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation

# teleport player to overworld anchor
execute in minecraft:overworld run teleport @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1]

# copy stored inventory from overworld anchor
execute as @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] at @s run function porcelain:copy_inv_a_to_p

# destroy nearest anchor in overworld
kill @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1]

# unload chunk in overworld
execute at @s run forceload remove ~ ~

# make sure chunks are still loaded for nearby remaining anchors
execute as @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] at @s run forceload add ~ ~