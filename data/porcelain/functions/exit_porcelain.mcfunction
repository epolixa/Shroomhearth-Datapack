# remove score
scoreboard players reset @s usePorcelain

# teleport to porcelain anchor matching player ID
execute at @e[type=minecraft:armor_stand,tag=porcelain_anchor] if score @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID run teleport @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1]

# destroy anchor in porcelain
kill @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1]

# clear inventory
clear @s

# teleport to overworld
execute in minecraft:overworld positioned ~ ~ ~ unless entity @e[type=minecraft:armor_stand,tag=overworld_anchor] run function porcelain:teleport_without_anchor

# teleport to overworld anchor
execute in minecraft:overworld positioned ~ ~ ~ if entity @e[type=minecraft:armor_stand,tag=overworld_anchor] run function porcelain:teleport_player_to_anchor

# remove all prior effects from player
effect clear @s

# set gamemode to survival
gamemode survival @s

# remove porcelainID from player
scoreboard players reset @s porcelainID

# travel effects
function porcelain:travel_effects