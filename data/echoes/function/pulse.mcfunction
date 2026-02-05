# Executor: Server
# Position: Spawn

tellraw @a[tag=debug_echoes] "[echoes.pulse] pulsing..."

# Update data for players who have recently moved in the storage list
execute as @a[tag=moved] at @s run function echoes:pulse_players

# Check all players in the storage list and create echoes for any that are no longer online
function echoes:pulse_storage

# Pulse any echoes interaction entities
execute as @e[tag=echoes_interaction] at @s run function echoes:pulse_echoes