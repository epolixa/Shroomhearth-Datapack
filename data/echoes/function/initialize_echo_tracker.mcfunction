# Executor: A newly-summoned echo tracker
# Position: The player whom it is created for

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

# Use a temporary text display to resolve the JSON name string of the player
summon minecraft:text_display ~ ~ ~ {Tags:["echo_tracker_text_display"]}
data modify entity @n[tag=echo_tracker_text_display] text set value {"selector":"@p"}
data modify entity @s data.echoesName set from entity @n[tag=echo_tracker_text_display] text
kill @n[tag=echo_tracker_text_display]

# Reposition all existing echo trackers (including the new one)
# We do this because the position of the tracker is used as a unique identifier,
# no two trackers should have the same position.
# Echo trackers live in spawn chunks so they stay loaded.
# Spawn chunks are a 2x2 chunk area
# (2 chunks x 16 blocks) / 2 radii = 16 block range
execute in minecraft:overworld run spreadplayers 112 0 1 16 false @e[tag=echo_tracker]