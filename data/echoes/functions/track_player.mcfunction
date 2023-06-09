# Executes from the context of an echo tracker at the position of a matching player while checking for matching player

tellraw @a[tag=debug_echoes] [{"text":"Echo Tracker found matching Player "},{"selector":"@p"}]

# Update position data if needed
execute if entity @p[tag=update_echo_tracker] run function echoes:update_echo_tracker

# add tag
tag @s add tracked_player