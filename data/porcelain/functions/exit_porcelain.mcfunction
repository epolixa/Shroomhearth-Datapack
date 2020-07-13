################################################################
# exit porcelain
# manage leaving the porcelain
################################################################

# remove score
scoreboard players reset @s usePorcelain

# burst particles at porcelain anchor
execute at @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.1 16

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

# travel effects
function porcelain:travel_effects

# burst particles in overworld
execute at @s run particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.1 16