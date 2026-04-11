# Executor: A player who has finished using an echo horn and is attempting to teleport to their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/teleport_to_respawn] Attempting to teleport "},{"selector":"@s"},{"text":" to their respawn point"}]


# Find the echo horn forceload marker belonging to this player,
# then check the block at the marker's position
# and tag the player if the block is a valid respawn block
tag @s add teleporting_to_respawn_point
execute as @e[tag=echo_horn_forceload_marker] \
if score @p[tag=teleporting_to_respawn_point] uuid_1 = @s echo_horn_uuid_1 \
if score @p[tag=teleporting_to_respawn_point] uuid_2 = @s echo_horn_uuid_2 \
if score @p[tag=teleporting_to_respawn_point] uuid_3 = @s echo_horn_uuid_3 \
if score @p[tag=teleporting_to_respawn_point] uuid_4 = @s echo_horn_uuid_4 \
run function shroomhearth:echo_horn/teleport_to_respawn_success
tag @s remove teleporting_to_respawn_point