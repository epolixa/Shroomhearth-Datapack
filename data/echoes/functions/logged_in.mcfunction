# runs from the context of an echoes armor stand at the position of a matching player

tellraw epolixa [{"text":"echoes armor stand found player "},{"selector":"@p"}]

kill @s
tag @p remove echo_marked