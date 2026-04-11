# Executor: A player who attempted to use an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/trigger_echo_horn] Echo Horn triggered by "},{"selector":"@s"}]


# Start using the Echo Horn
# if the player is not already using an Echo Horn
# and if the player is able to use the Echo Horn
execute as @s[tag=!using_echo_horn] if predicate shroomhearth:echo_horn/can_use_echo_horn run function shroomhearth:echo_horn/start_using_echo_horn