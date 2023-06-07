# runs from the context of an echo marker that could not find its matching player

say echo marker could not find player

function echoes:summon_echoes
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID1 = @s UUID1
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID2 = @s UUID2
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID3 = @s UUID3
scoreboard players operation @e[tag=echoes,sort=nearest,limit=1] UUID4 = @s UUID4
data modify entity @e[tag=echoes,sort=nearest,limit=1] Pos set from entity @s data.echoesPos
data modify entity @e[tag=echoes,sort=nearest,limit=1] Dimension set from entity @s data.echoesDim

kill @s