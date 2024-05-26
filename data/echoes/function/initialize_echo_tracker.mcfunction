# Executes from the context of a newly-summoned echo tracker at the position of the player whom it is created for

# Identifier
tag @s add echo_tracker

# Copy player UUID
scoreboard players operation @s UUID1 = @p UUID1
scoreboard players operation @s UUID2 = @p UUID2
scoreboard players operation @s UUID3 = @p UUID3
scoreboard players operation @s UUID4 = @p UUID4

# Copy position and dimension from player
# Later will be used to set echoes armor stand position
data modify entity @s data.echoesPos set from entity @p Pos
data modify entity @s data.echoesDim set from entity @p Dimension

# Use a temporary sign to store the JSON name string of the player
execute unless dimension minecraft:overworld run function echoes:set_echo_tracker_name
execute if dimension minecraft:overworld run function echoes:set_echo_tracker_name_overworld

# Reposition all existing echo trackers (including the new one)
# We do this because the position of the tracker is used as a unique identifier,
# no two trackers should have the same position.
# Echo trackers live in spawn chunks so they stay loaded.
# Spawn chunks are a 19x19 chunk area..
# (16 chunks x 16 blocks) / 2 radii = 128
execute in minecraft:overworld run spreadplayers 112 0 1 128 false @e[tag=echo_tracker]