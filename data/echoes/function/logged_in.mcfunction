# Runs from the context of an echoes armor stand at the position of a matching player
# Ideally runs when a matching player has logged back in

tellraw @a[tag=debug_echoes] [{"text":"Echoes found Player "},{"selector":"@p"},{"text":", assuming they logged in"}]

# Untag tracked player and kill echoes
tag @p remove echo_tracking

# Mark self for deletion
tag @s add found_player