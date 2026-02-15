# Executor: A player who has finished using an echo horn and is starting to teleport
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/teleport] Teleporting "},{"selector":"@s"}]

# Teleport using their own echo horn
execute as @s[tag=using_own_echo_horn] run function shroomhearth:echo_horn/teleport_self

# Teleport using another player's echo horn
execute as @s[tag=using_other_player_echo_horn] run function shroomhearth:echo_horn/teleport_to_player

# Handle succesful teleportation
execute as @s[tag=echo_horn_teleport_success] at @s run function shroomhearth:echo_horn/teleport_success

# Finish using echo horn
function shroomhearth:echo_horn/stop_using_echo_horn