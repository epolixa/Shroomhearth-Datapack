# Executor: A player using their own echo horn who has not yet validated their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:check_respawn_point] Checking respawn point for player "},{"selector":"@s"}]


# Find the echo horn forceload marker belonging to this player,
# then check the block at the marker's position
# and tag the player if the block is a valid respawn block
tag @s add checking_respawn_point
execute as @e[tag=echo_horn_forceload_marker] \
if score @p[tag=checking_respawn_point] uuid_1 = @s echo_horn_uuid_1 \
if score @p[tag=checking_respawn_point] uuid_2 = @s echo_horn_uuid_2 \
if score @p[tag=checking_respawn_point] uuid_3 = @s echo_horn_uuid_3 \
if score @p[tag=checking_respawn_point] uuid_4 = @s echo_horn_uuid_4 \
at @s if block ~ ~ ~ #echo_horn:respawn_blocks \
run function echo_horn:found_respawn_block
tag @s remove checking_respawn_point

# Log whether a valid respawn block was found
tellraw @a[tag=debug_echo_horn,tag=!has_respawn_block] [{"text":"[echo_horn:check_respawn_point] No respawn block found at respawn point of "},{"selector":"@p[tag=using_own_echo_horn]"}]