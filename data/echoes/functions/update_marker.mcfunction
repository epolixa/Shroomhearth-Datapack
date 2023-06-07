# executes from the context of a marker at the position of a matching player while checking for matching player

data modify entity @e[tag=echo_marker,sort=nearest,limit=1] data.echoesPos set from entity @p Pos
data modify entity @e[tag=echo_marker,sort=nearest,limit=1] data.echoesDim set from entity @p Dimension

tellraw epolixa [{"text":"echo marker found player "},{"selector":"@p"},{"text":" at "},{"nbt":"data.echoesPos","entity":"@s"},{"text":" in "},{"nbt":"data.echoesDim","entity":"@s"}]

# add tag
tag @s add found_player