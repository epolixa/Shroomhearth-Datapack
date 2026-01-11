# Executor: A player who took damage while using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:echo_horn_interrupted] "},{"selector":"@s"},{"text":" interrupted Echo Horn"}]


# Revoke trigger
advancement revoke @s only echo_horn:echo_horn_interrupted

# Play sound
execute at @s run playsound minecraft:block.sculk_sensor.clicking_stop player @a ~ ~ ~ 1 1

# inform player
tellraw @s "Echo Horn interrupted"

# Stop using the echo horn
function echo_horn:stop_using_echo_horn