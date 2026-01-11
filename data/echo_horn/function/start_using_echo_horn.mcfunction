# Executor: A player who started using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:start_using_echo_horn] "},{"selector":"@s"},{"text":" started using Echo Horn"}]


# Add tags to mark player as using echo horn
tag @s add using_echo_horn
execute if predicate echo_horn:holding_echo_horn_mainhand run tag @s add using_echo_horn_mainhand
execute if predicate echo_horn:holding_echo_horn_offhand unless predicate echo_horn:holding_echo_horn_mainhand run tag @s add using_echo_horn_offhand

# Reset echo horn timer objective
scoreboard players reset @s using_echo_horn

# Set timbre data on blank echo horn in the player's mainhand or offhand
execute if predicate echo_horn:holding_blank_echo_horn_mainhand run item modify entity @s weapon.mainhand echo_horn:set_timbre
execute if predicate echo_horn:holding_blank_echo_horn_offhand unless predicate echo_horn:holding_blank_echo_horn_mainhand run item modify entity @s weapon.offhand echo_horn:set_timbre

# Capture UUID scores from echo horn timbre data
# For the player, echo_horn_UUID scores track the timbre of the echo horn being used
execute as @s[tag=using_echo_horn_mainhand] run function echo_horn:capture_echo_horn_uuid_mainhand
execute as @s[tag=using_echo_horn_offhand] run function echo_horn:capture_echo_horn_uuid_offhand


# Set tags according to if the player is using their own echo horn or another player's echo horn
execute if score @s echo_horn_UUID1 = @s UUID1 \
if score @s echo_horn_UUID2 = @s UUID2 \
if score @s echo_horn_UUID3 = @s UUID3 \
if score @s echo_horn_UUID4 = @s UUID4 \
run tag @s add using_own_echo_horn
execute as @s[tag=!using_own_echo_horn] run tag @s add using_other_player_echo_horn

# If using own echo horn, tag if player has respawn data
execute if data entity @s[tag=using_own_echo_horn] respawn run tag @s add has_respawn_data


# If the whistle's UUID data matches the user's UUID, proceed with teleporting to the user's spawn point
#execute as @s[tag=using_own_echo_horn] run function echo_horn:teleport 

# If the whistle's UUID data matches a different player's UUID, attempt to teleport to that player's current position
#execute as @s[tag=using_other_player_echo_horn] run function echo_horn:teleport_to_other_player

# If using own echo horn and have respawn data
# Update per-player storage and start forceloading respawn chunk
execute as @s[tag=has_respawn_data] run function echo_horn:modify_storage_player_echo_horn

# If using own echo horn to teleport to respawn point,
# summon an echo horn forceload marker
# to start forceloading the destination chunk.
#execute as @s[tag=using_own_echo_horn,tag=has_respawn] summon minecraft:marker run function echo_horn:initialize_echo_horn_forceload_marker

# Play sound effect
playsound minecraft:particle.soul_escape player @s ~ ~ ~ 1 0.5