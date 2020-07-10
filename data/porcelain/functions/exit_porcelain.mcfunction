################################################################
# exit porcelain
# manage leaving the porcelain
################################################################

# remove score
scoreboard players reset @s porcelainItem

# destroy anchor in porcelain
kill @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1]

# clear inventory
clear @s

# give player porcelain key
loot give @s loot porcelain:porcelain

# teleport to overworld
execute in minecraft:overworld positioned ~ ~ ~ unless entity @e[type=minecraft:armor_stand,tag=overworld_anchor] run function porcelain:teleport_without_anchor

# teleport to overworld anchor
execute in minecraft:overworld positioned ~ ~ ~ if entity @e[type=minecraft:armor_stand,tag=overworld_anchor] run function porcelain:teleport_player_to_anchor

# set gamemode to survival
gamemode survival @s

# give overworld anchor delay score to player
scoreboard players set @s porcelainAnchor 1