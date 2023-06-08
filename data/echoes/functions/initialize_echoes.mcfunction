# Identifier
tag @s add echoes

# Base NBT
data modify entity @s Marker set value 1b

# Inherit player UUID from echo marker
scoreboard players operation @s UUID1 = @e[tag=echo_marker,sort=nearest,limit=1] UUID1
scoreboard players operation @s UUID2 = @e[tag=echo_marker,sort=nearest,limit=1] UUID2
scoreboard players operation @s UUID3 = @e[tag=echo_marker,sort=nearest,limit=1] UUID3
scoreboard players operation @s UUID4 = @e[tag=echo_marker,sort=nearest,limit=1] UUID4

# Set positional data from echo marker
data modify entity @s Pos set from entity @e[tag=echo_marker,sort=nearest,limit=1] data.echoesPos
execute if data entity @e[tag=echo_marker,sort=nearest,limit=1] data{echoesDim:"minecraft:overworld"} in minecraft:overworld positioned as @s run tp ~ ~ ~
execute if data entity @e[tag=echo_marker,sort=nearest,limit=1] data{echoesDim:"minecraft:the_nether"} in minecraft:the_nether positioned as @s run tp ~ ~ ~
execute if data entity @e[tag=echo_marker,sort=nearest,limit=1] data{echoesDim:"minecraft:the_end"} in minecraft:the_end positioned as @s run tp ~ ~ ~
execute if data entity @e[tag=echo_marker,sort=nearest,limit=1] data{echoesDim:"minecraft:the_porcelain"} in minecraft:the_porcelain positioned as @s run tp ~ ~ ~