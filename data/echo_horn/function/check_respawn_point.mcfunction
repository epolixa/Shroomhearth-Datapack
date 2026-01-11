# Executor: A player using their own echo horn who has not yet validated their respawn point
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:check_respawn_point] Checking respawn point for player "},{"selector":"@s"}]


tag @s add checking_respawn_point

# Find the echo horn forceload marker belonging to this player,
# then check the block at the marker's position
# and tag the player if the block is a valid respawn block
execute as @e[tag=echo_horn_forceload_marker] \
if score @p[tag=checking_respawn_point] UUID1 = @s echo_horn_UUID1 \
if score @p[tag=checking_respawn_point] UUID2 = @s echo_horn_UUID2 \
if score @p[tag=checking_respawn_point] UUID3 = @s echo_horn_UUID3 \
if score @p[tag=checking_respawn_point] UUID4 = @s echo_horn_UUID4 \
at @s if block ~ ~ ~ #echo_horn:respawn_blocks \
run function echo_horn:found_respawn_block

tag @s remove checking_respawn_point



# If there is a valid respawn block at the respawn point,
# tag the marker's player as having a valid respawn point
#execute at @s if block ~ ~ ~ #echo_horn:respawn_blocks \
#at @a[tag=using_own_echo_horn,sort=nearest] \
#if score @s echo_horn_UUID1 = @p UUID1 \
#if score @s echo_horn_UUID2 = @p UUID2 \
#if score @s echo_horn_UUID3 = @p UUID3 \
#if score @s echo_horn_UUID4 = @p UUID4 \
#run tag @p add echo_horn_valid_respawn

tellraw @a[tag=debug_echo_horn,tag=!has_respawn_block] [{"text":"[echo_horn:check_respawn_point] No respawn block found at respawn point of "},{"selector":"@p[tag=using_own_echo_horn]"}]
#tag @a[tag=echo_horn_valid_respawn] remove echo_horn_valid_respawn