# Executor: An echo horn forceload marker entity
# Position: The marker
# Data: The marker's respawn point data
# {x: int, y: int, z: int, dimension: string}

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:forceload_respawn_point] Forceloading respawn point for marker "},{"selector":"@s"},{"text":" of player "},{"selector":"@p[tag=using_echo_horn]"}]

# Start forceloading the chunk at the macro'd position from the marker's data
#$execute if data entity @s data{respawn_dimension:"minecraft:overworld"} in minecraft:overworld positioned $(respawn_x) $(respawn_y) $(respawn_z) run forceload add ~ ~
#$execute if data entity @s data{respawn_dimension:"minecraft:the_nether"} in minecraft:the_nether positioned $(respawn_x) $(respawn_y) $(respawn_z) run forceload add ~ ~
$execute in $(dimension) positioned $(x) $(y) $(z) run forceload add ~ ~

# Teleport to the respawn point
$execute in $(dimension) run teleport @s $(x) $(y) $(z)

# Check position for valid respawn block
#execute at @s run function echo_horn:check_respawn_point