# Process players who don't have echo markers yet
execute as @a[tag=!echo_marked] at @s run function echoes:mark_player

# Process echo markers
execute as @e[tag=echo_marker] at @s run function echoes:pulse_echo_marker

# Process echoes armor stands
execute as @e[tag=echoes] at @s run function echoes:pulse_echoes

