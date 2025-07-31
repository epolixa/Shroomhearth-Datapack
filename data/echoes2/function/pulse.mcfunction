# Executor: Server
# Position: Root

#tellraw @a[tag=debug_echoes2] "[echoes.pulse] pulsing..."

# Track online players and update their data in the storage list
execute as @a at @s run function echoes2:pulse_players

# Check all players in the storage list and create echoes for any that are no longer online
function echoes2:pulse_storage

# Pulse any echoes interaction entities
execute as @e[tag=echoes_interaction] at @s run function echoes2:pulse_echoes