# Executor: An echoes interaction entity that is pulsing
# Position: The interaction entity (where the player was last seen)
# Data: The interaction entity's player data

$tellraw @a[tag=debug_echoes2] "[echoes.m_find_echoes_player] Echoes is searching for $(name)..."

$tag @p[nbt={UUID:$(uuid)}] add echoes_player

execute if entity @p[tag=echoes_player] run function echoes2:m_dismiss_echoes

tag @a[tag=echoes_player] remove echoes_player