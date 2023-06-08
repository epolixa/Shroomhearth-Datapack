# Executes from the context of an echo marker at the position of a matched player who has recently moved
tellraw @a[tag=debugger] [{"text":"Updating tracked position of Player "},{"selector":"@p"},{"text":" at "},{"nbt":"data.echoesPos","entity":"@s"},{"text":" in "},{"nbt":"data.echoesDim","entity":"@s"}]

# Update position tracking
data modify entity @s data.echoesPos set from entity @p Pos
data modify entity @s data.echoesDim set from entity @p Dimension

# Untag player
tag @p remove echo_update