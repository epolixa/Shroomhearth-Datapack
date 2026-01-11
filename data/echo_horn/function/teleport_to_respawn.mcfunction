# Executor: A player who has finished using an echo horn and is attempting to teleport to their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:teleport_to_respawn] Attempting to teleport "},{"selector":"@s"},{"text":" to their respawn point"}]

tag @s add teleporting_to_respawn_point

# Find the echo horn forceload marker belonging to this player,
# then check the block at the marker's position
# and tag the player if the block is a valid respawn block
execute as @e[tag=echo_horn_forceload_marker] \
if score @p[tag=teleporting_to_respawn_point] UUID1 = @s echo_horn_UUID1 \
if score @p[tag=teleporting_to_respawn_point] UUID2 = @s echo_horn_UUID2 \
if score @p[tag=teleporting_to_respawn_point] UUID3 = @s echo_horn_UUID3 \
if score @p[tag=teleporting_to_respawn_point] UUID4 = @s echo_horn_UUID4 \
run function echo_horn:teleport_to_respawn_success

tag @s remove teleporting_to_respawn_point

# Set respawn data in per-player macro
# Update the per-player storage with echo horn data
#function shroomhearth:capture_uuid
#function echo_horn:m_teleport_to_respawn with storage shroomhearth:players temp_uuid
#tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:start_using_echo_horn] Updated player storage with echo horn data for "},{"selector":"@s"}]