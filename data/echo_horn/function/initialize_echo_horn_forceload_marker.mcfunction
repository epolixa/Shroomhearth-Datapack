# Executor: An echo horn forceload marker entity that was just summoned by a player using their own echo horn to teleport to their respawn point
# Position: The player's respawn point

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:initialize_echo_horn_marker] Initializing echo horn forceload marker "},{"selector":"@s"},{"text":" for player "},{"selector":"@p[tag=using_echo_horn]"}]


# Add echo horn marker tag
tag @s add echo_horn_forceload_marker

# Initialize keepChunk flag to be used by porcelain forceload cleanup later
data modify entity @s data.keepChunk set value 0

# Copy associated player's UUID scores to the marker's echo_horn_uuid scores
# For the marker, echo_horn_uuid scores serve to track the parent player
scoreboard players operation @s echo_horn_UUID1 = @p[tag=using_own_echo_horn] UUID1
scoreboard players operation @s echo_horn_UUID2 = @p[tag=using_own_echo_horn] UUID2
scoreboard players operation @s echo_horn_UUID3 = @p[tag=using_own_echo_horn] UUID3
scoreboard players operation @s echo_horn_UUID4 = @p[tag=using_own_echo_horn] UUID4


# Marker will be checked by player every 1s to see if respawn point is valid
# and eventually removed after player stops using echo horn



# Add player's respawn point data
#data modify entity @s data.respawn.x set from entity @p[tag=using_own_echo_horn] respawn.pos[0]
#data modify entity @s data.respawn.y set from entity @p[tag=using_own_echo_horn] respawn.pos[1]
#data modify entity @s data.respawn.z set from entity @p[tag=using_own_echo_horn] respawn.pos[2]
#data modify entity @s data.respawn.dimension set from entity @p[tag=using_own_echo_horn] respawn.dimension

# Move the marker to the respawn point position
#execute store result entity @s Pos[0] double 1.0 run data get entity @s data.respawn.pos[0]
#execute store result entity @s Pos[1] double 1.0 run data get entity @s data.respawn.pos[1]
#execute store result entity @s Pos[2] double 1.0 run data get entity @s data.respawn.pos[2]

# Start forceloading the chunk in the respawn point dimension
#execute if data entity @s data.respawn{dimension: "minecraft:overworld"} in minecraft:overworld positioned as @s run forceload add ~ ~
#execute if data entity @s data.respawn{dimension: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run forceload add ~ ~
#function echo_horn:m_forceload_respawn_point with entity @s data.respawn

# Teleport the marker to the respawn point dimension
#execute if data entity @s data.respawn{dimension: "minecraft:overworld"} in minecraft:overworld positioned as @s run tp @s ~ ~ ~
#execute if data entity @s data.respawn{dimension: "minecraft:the_nether"} in minecraft:the_nether positioned as @s run tp @s ~ ~ ~


# Check the position for a valid respawn block
#execute at @s run function echo_horn:check_respawn_point