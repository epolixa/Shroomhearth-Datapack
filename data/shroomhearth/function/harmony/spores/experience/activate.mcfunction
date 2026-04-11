# Executor: A player that just consumed Spores of Experience
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/experience/activate] "},{"translate":"event.shroomhearth.spores_of_experience"},{"text":" activated by "},{"selector":"@s"}]


# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_experience shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_experience [{"color":"#00FF00","translate":"event.shroomhearth.spores_of_experience"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_experience max 3600
bossbar set shroomhearth:spores_of_experience style progress
bossbar set shroomhearth:spores_of_experience value 3600
bossbar set shroomhearth:spores_of_experience visible true
bossbar set shroomhearth:spores_of_experience players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#00FF00","text":"["},{"translate":"event.shroomhearth.spores_of_experience","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_experience.tooltip"}}},{"text":"]"},{"color":"white","translate":"event.shroomhearth.spores.activate"},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
