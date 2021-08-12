# remove score
scoreboard players reset @s usePorcelain

# clear inventory
clear @s

# teleport to porcelain anchor matching player ID
execute positioned as @e[tag=porcelain_anchor] if score @e[tag=porcelain_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID run function porcelain:matching_porcelain_anchor

# teleport to source dim
execute if score @s porcelainDimID matches 0 in minecraft:overworld positioned ~ ~ ~ unless entity @e[tag=source_anchor] run function porcelain:teleport_without_anchor
execute if score @s porcelainDimID matches -1 in minecraft:the_nether positioned ~ ~ ~ unless entity @e[tag=source_anchor] run function porcelain:teleport_without_anchor
execute if score @s porcelainDimID matches 1 in minecraft:the_end positioned ~ ~ ~ unless entity @e[tag=source_anchor] run function porcelain:teleport_without_anchor

# teleport to source anchor
execute if score @s porcelainDimID matches 0 in minecraft:overworld positioned ~ ~ ~ if entity @e[tag=source_anchor] positioned as @e[tag=source_anchor] if score @e[tag=source_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID run function porcelain:teleport_player_to_anchor
execute if score @s porcelainDimID matches -1 in minecraft:the_nether positioned ~ ~ ~ if entity @e[tag=source_anchor] positioned as @e[tag=source_anchor] if score @e[tag=source_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID run function porcelain:teleport_player_to_anchor
execute if score @s porcelainDimID matches 1 in minecraft:the_end positioned ~ ~ ~ if entity @e[tag=source_anchor] positioned as @e[tag=source_anchor] if score @e[tag=source_anchor,sort=nearest,limit=1] porcelainID = @s porcelainID run function porcelain:teleport_player_to_anchor

# remove all prior effects from player
#effect clear @s

# set gamemode to survival
gamemode survival @s

# remove porcelainID from player
scoreboard players reset @s porcelainID

# travel effects
function porcelain:travel_effects