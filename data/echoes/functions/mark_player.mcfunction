# run from context of a player

tellraw epolixa [{"text":"marking player "},{"selector":"@s"}]

# summon new marker
summon minecraft:marker ~ ~ ~ {Tags:["echo_marker"]}
scoreboard players operation @e[tag=echo_marker,sort=nearest,limit=1] UUID1 = @s UUID1
scoreboard players operation @e[tag=echo_marker,sort=nearest,limit=1] UUID2 = @s UUID2
scoreboard players operation @e[tag=echo_marker,sort=nearest,limit=1] UUID3 = @s UUID3
scoreboard players operation @e[tag=echo_marker,sort=nearest,limit=1] UUID4 = @s UUID4

data modify entity @e[tag=echo_marker,sort=nearest,limit=1] data.echoesPos set from entity @s Pos
data modify entity @e[tag=echo_marker,sort=nearest,limit=1] data.echoesDim set from entity @s Dimension

execute as @e[tag=echo_marker,sort=nearest,limit=1] in minecraft:overworld run tp 112 80 0

tag @s add echo_marked