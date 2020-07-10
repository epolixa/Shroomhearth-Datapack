################################################################
# teleporting player
# functions relative to a player being teleported back to their overworld anchor
################################################################

# teleport player to anchor
tp @e[type=minecraft:armor_stand,tag=porcelain_overworld_anchor,distance=..160,sort=nearest,limit=1]

# destroy anchor in overworld if player is touching
kill @e[type=minecraft:armor_stand,tag=porcelain_overworld_anchor,distance=..1]

# remove all prior effects from player
effect clear @s

# give some potion effects to take the edge off
effect give @s minecraft:slow_falling 1
effect give @s minecraft:blindness 1

# play effects
playsound minecraft:block.respawn_anchor.charge ambient @s ~ ~ ~ 1 0.1 1

# remove porcelainAnchor flag from player
scoreboard players set @s porcelainAnchor 0