# Executor: An echo horn forceload marker entity that was just summoned by a player using their own echo horn to teleport to their respawn point
# Position: The player's respawn point

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/initialize_echo_horn_marker] Initializing echo horn forceload marker "},{"selector":"@s"},{"text":" for player "},{"selector":"@p[tag=using_echo_horn]"}]


# Add echo horn marker tag
tag @s add echo_horn_forceload_marker

# Initialize keepChunk flag to be used by porcelain forceload cleanup later
data modify entity @s data.keepChunk set value 0

# Copy associated player's UUID scores to the marker's echo_horn_uuid scores
# For the marker, echo_horn_uuid scores serve to track the parent player
scoreboard players operation @s echo_horn_uuid_1 = @p[tag=using_own_echo_horn] uuid_1
scoreboard players operation @s echo_horn_uuid_2 = @p[tag=using_own_echo_horn] uuid_2
scoreboard players operation @s echo_horn_uuid_3 = @p[tag=using_own_echo_horn] uuid_3
scoreboard players operation @s echo_horn_uuid_4 = @p[tag=using_own_echo_horn] uuid_4