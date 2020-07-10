################################################################
# teleporting player
# functions relative to a player being teleported back to their overworld anchor
################################################################

# teleport player to anchor
tp @e[type=minecraft:armor_stand,tag=porcelain_overworld_anchor,distance=..160,sort=nearest,limit=1]

# destroy anchor in overworld if player is touching
kill @e[type=minecraft:armor_stand,tag=porcelain_overworld_anchor,distance=..1]

# remove effects from player
effect clear @s

# remove porcelainAnchor flag from player
scoreboard players set @s porcelainAnchor 0