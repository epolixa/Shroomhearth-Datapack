# Executor: A player who stopped using their own echo horn to teleport to their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:cleanup_echo_horn_forceload_marker] Cleaning up echo horn forceload marker for "},{"selector":"@s"}]


# Find and remove the echo horn forceload marker associated with this player
tag @s add cleanup_echo_horn_forceload_marker
execute as @e[tag=echo_horn_forceload_marker,sort=nearest] \
if score @p[tag=cleanup_echo_horn_forceload_marker] uuid_1 = @s echo_horn_uuid_1 \
if score @p[tag=cleanup_echo_horn_forceload_marker] uuid_2 = @s echo_horn_uuid_2 \
if score @p[tag=cleanup_echo_horn_forceload_marker] uuid_3 = @s echo_horn_uuid_3 \
if score @p[tag=cleanup_echo_horn_forceload_marker] uuid_4 = @s echo_horn_uuid_4 \
at @s run function shroomhearth:porcelain/cleanup_marked_chunk
tag @s remove cleanup_echo_horn_forceload_marker