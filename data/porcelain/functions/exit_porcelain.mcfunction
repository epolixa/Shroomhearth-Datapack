################################################################
# exit porcelain
# manage leaving the porcelain
################################################################

# destroy anchor in porcelain
kill @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1]

# remove score
scoreboard players set @s porcelainItem 0

# clear inventory
clear @s

# give player porcelain key
loot give @s loot porcelain:porcelain

# teleport to overworld
execute in minecraft:overworld run teleport @s ~ 64 ~
execute in minecraft:overworld run spreadplayers ~ ~ 0 1 false @s

# set gamemode to survival
gamemode survival @s

# setup exit effects
effect give @s minecraft:slow_falling 999999
effect give @s minecraft:blindness 999999

# give overworld anchor delay score to player
scoreboard players set @s porcelainAnchor 1