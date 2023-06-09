# Runs from the context of an echo tracker that could not find its matching player
# Ideally means the actual matching player has logged out, and we should create a new echoes armor stand for them

tellraw @a[tag=debug_echoes] [{"text":"Echo Tracker could not find its Player, assuming they logged out... Summoning Echoes"}]

# Create the new echoes
execute summon armor_stand run function echoes:initialize_echoes

# Kill the echo tracker
kill @s