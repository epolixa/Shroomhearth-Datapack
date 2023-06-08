# Runs from the context of an echo marker that could not find its matching player
# Ideally means the actual matching player has logged out, and we should create an echoes armor stand for them

tellraw @a[tag=debugger] [{"text":"Echo Marker could not find Player... Summoning Echoes"}]

# Create the new echoes
execute summon armor_stand run function echoes:initialize_echoes

# Kill the echo marker
kill @s