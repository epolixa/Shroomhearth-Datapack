# Runs from the context of an echoes armor stand at the position of a matching player
# Ideally runs when a matching player has logged back in

tellraw @a[tag=debugger] [{"text":"Echoes found Player "},{"selector":"@p"}]

# Untag player as marked and kill echoes
tag @p remove echo_marked
kill @s