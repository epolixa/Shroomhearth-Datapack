# Executes from the context of an echoes that is touched by a player

# Tag player
tag @s add touched

# Inform echoes name
data modify storage echoes:echoes name set from entity @s CustomName
title @p actionbar {"nbt":"name","storage":"echoes:echoes","interpret":true}

# Play sound
playsound minecraft:particle.soul_escape player @p ~ ~ ~