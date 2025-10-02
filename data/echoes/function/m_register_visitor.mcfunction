# Executor: An Echoes that was interacted with a Player
# Position: The Player
# Data: The Player's name

# Add player name to visitors
$data modify entity @n[tag=echoes_interacted] data.visitors append value {name:$(name)}

# Grant experience
summon minecraft:experience_orb ~ ~ ~ {Value:5}