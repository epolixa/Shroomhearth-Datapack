# Executes from the context of a player that touched an echoes armor stand

# Tag player
tag @s add touched_echoes

# Inform echoes name
data modify storage echoes:echoes name set from entity @e[tag=echoes,limit=1,sort=nearest] CustomName
title @s actionbar {"nbt":"name","storage":"echoes:echoes","interpret":true}

# Play sound
playsound minecraft:particle.soul_escape player @s ~ ~ ~