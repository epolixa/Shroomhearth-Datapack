# Executor: A player who interacted with an Echoes interaction entity
# Position: The player

tellraw @a[tag=debug_echoes2] [{"text":"[echoes.player_interacted_with_echoes] "},{"selector":"@s"},{"text":" interacted with Echoes of "},{"nbt":"data.player.name","entity":"@n[tag=echoes_interaction]"}]

# Revoke advancement
advancement revoke @s only echoes2:player_interacted_with_echoes

# Tag the targetted interaction entity
tag @n[tag=echoes_interaction,nbt={interaction:{}}] add echoes_interacted

# Play title
title @s actionbar [{"nbt":"data.player.name","entity":"@n[tag=echoes_interacted]","interpret":true},{"text":" ("},{"score":{"name":"@n[tag=echoes_interacted]","objective":"echoes_pulses"}},{"text":" pulses)"}]

# Play sound
execute at @n[tag=echoes_interacted] run playsound minecraft:particle.soul_escape player @s ~ ~ ~

# Play particles
execute at @n[tag=echoes_interacted] run particle minecraft:soul_fire_flame ~ ~0.125 ~ 0.0625 0.125 0.0625 0.0625 4

# Add interacting player to the interaction entity's visitors
function shroomhearth:store_player_name
data modify entity @n[tag=echoes_interacted] data.visitors append from storage shroomhearth:player_name name

# Clear the interaction marker on target interaction entity
data remove entity @n[tag=echoes_interacted] interaction
tag @n[tag=echoes_interacted] remove echoes_interacted

# Grant advancement
advancement grant @s only echoes2:the_long_dream