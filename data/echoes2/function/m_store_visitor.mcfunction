# Executor: An Echoes that was interacted with a Player
# Position: The Player
# Data: The Player's name

$execute unless data entity @n[tag=echoes_interaction] data.visitors[{name:$(name)}] run data modify entity @n[tag=echoes_interacted] data.visitors append value {name:$(name)}