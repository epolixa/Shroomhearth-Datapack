# Executor: A player who took damage while using an echo horn
# Position: The player

tellraw @a[tag=debug_echo_horn] [{"text":"[shroomhearth:echo_horn/advancement_reward/echo_horn_interrupted] "},{"selector":"@s"},{"text":" interrupted Echo Horn"}]


# Revoke trigger
advancement revoke @s only shroomhearth:echo_horn/echo_horn_interrupted

# Play sound
execute at @s run playsound minecraft:block.sculk_sensor.clicking_stop player @a ~ ~ ~ 1 1

# inform player
tellraw @s "Echo Horn interrupted"

# Stop using the echo horn
function shroomhearth:echo_horn/stop_using_echo_horn