# Executes from the context of an echo marker at the position of a matching player while checking for matching player
tellraw @a[tag=debugger] [{"text":"Echo Marker found matching Player "},{"selector":"@p"}]

# Update position data if needed
execute if entity @p[tag=echo_update] run function echoes:update_marker

# add tag
tag @s add tracked_player