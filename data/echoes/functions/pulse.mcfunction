# Process players who don't have echo trackers yet
execute as @a[tag=!echo_tracking] at @s run function echoes:start_tracking_player

# Process echo trackers
execute as @e[tag=echo_tracker] at @s run function echoes:pulse_echo_tracker

# Process echoes armor stands
execute as @e[tag=echoes] at @s run function echoes:pulse_echoes

# Process players touching echoes
execute as @a[tag=!touched_echoes] at @s if entity @e[tag=echoes,distance=..1] run function echoes:player_touch_echoes
execute as @a[tag=touched_echoes] at @s unless entity @e[tag=echoes,distance=..1] run tag @s remove touched_echoes

