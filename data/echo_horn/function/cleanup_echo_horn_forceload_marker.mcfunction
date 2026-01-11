# Executor: A player who stopped using their own echo horn to teleport to their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:cleanup_echo_horn_forceload_marker] Cleaning up echo horn forceload marker for "},{"selector":"@s"}]


# Find and remove the echo horn forceload marker associated with this player
tag @s add cleanup_echo_horn_forceload_marker
execute as @e[tag=echo_horn_forceload_marker,sort=nearest] \
if score @p[tag=cleanup_echo_horn_forceload_marker] UUID1 = @s echo_horn_UUID1 \
if score @p[tag=cleanup_echo_horn_forceload_marker] UUID2 = @s echo_horn_UUID2 \
if score @p[tag=cleanup_echo_horn_forceload_marker] UUID3 = @s echo_horn_UUID3 \
if score @p[tag=cleanup_echo_horn_forceload_marker] UUID4 = @s echo_horn_UUID4 \
at @s run function porcelain:cleanup_marked_chunk
tag @s remove cleanup_echo_horn_forceload_marker