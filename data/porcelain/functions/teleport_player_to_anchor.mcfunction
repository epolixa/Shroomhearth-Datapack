################################################################
# teleport player to anchor
# overworld porcelain anchor control
################################################################

# modify rotation of nearest anchor in overworld
data modify entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation set from entity @s Rotation

# teleport player to nearest anchor in overworld
tp @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1]

# destroy nearest anchor in overworld
kill @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1]

# unload chunk in overworld
execute at @s run forceload remove ~ ~

# make sure chunks are still loaded for nearby remaining anchors
execute as @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] at @s run forceload add ~ ~

# remove all prior effects from player
effect clear @s

# travel effects
function porcelain:travel_effects

# remove porcelainAnchor flag from player
scoreboard players set @s porcelainAnchor 0