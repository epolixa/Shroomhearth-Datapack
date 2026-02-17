# Executor: Server
# Position: Spawn

#tellraw @a[tag=debug_echoes] "[shroomhearth:echoes/pulse] pulsing..."


# Update data for players who have recently moved in the storage list
#execute as @a[tag=moved] at @s run function shroomhearth:echoes/player_moved

# Check all players in the storage list and create echoes for any that are no longer online
# Is there a more efficient way to do this without checking every second?
function shroomhearth:echoes/audit_storage

# Pulse any echoes interaction entities
execute as @e[tag=echoes_interaction] at @s run function shroomhearth:echoes/pulse_echoes