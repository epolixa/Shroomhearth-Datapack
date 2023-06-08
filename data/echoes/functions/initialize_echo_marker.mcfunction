# Identifier
tag @s add echo_marker

# Copy player UUID
scoreboard players operation @s UUID1 = @p UUID1
scoreboard players operation @s UUID2 = @p UUID2
scoreboard players operation @s UUID3 = @p UUID3
scoreboard players operation @s UUID4 = @p UUID4

# Copy position and dimension from player
# Later will be used to set armor stand position
data modify entity @s data.echoesPos set from entity @p Pos
data modify entity @s data.echoesDim set from entity @p Dimension

# Reposition all existing echo markers (including the new one)
# Spawn chunks are a 19x19 chunk area
# (16 chunks x 16 blocks) / 2 radii = 128
execute in minecraft:overworld run spreadplayers 112 0 1 128 false @e[tag=echo_marker]