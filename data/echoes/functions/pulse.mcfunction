# Process players who don't have echo trackers yet
execute as @a[tag=!echo_tracking] at @s run function echoes:start_tracking_player

# Process echo trackers
execute as @e[tag=echo_tracker] at @s run function echoes:pulse_echo_tracker

# Process echoes armor stands
execute as @e[tag=echoes] at @s run function echoes:pulse_echoes

