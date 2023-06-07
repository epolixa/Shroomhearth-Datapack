execute as @e[tag=echoes] at @s run function echoes:1s_echoes
execute as @e[tag=echo_marker] at @s run function echoes:1s_marker

execute as @a[tag=!echo_marked] at @s run function echoes:mark_player