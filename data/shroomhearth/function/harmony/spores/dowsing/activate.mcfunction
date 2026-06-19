# Executor: A player that just consumed Spores of Dowsing
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/dowsing/activate] "},{"translate":"event.shroomhearth.spores_of_dowsing"},{"text":" activated by "},{"selector":"@s"}]


# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_dowsing shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_dowsing [{"color":"#8abfbf","translate":"event.shroomhearth.spores_of_dowsing"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_dowsing max 3600
bossbar set shroomhearth:spores_of_dowsing style progress
bossbar set shroomhearth:spores_of_dowsing value 3600
bossbar set shroomhearth:spores_of_dowsing visible true
bossbar set shroomhearth:spores_of_dowsing players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#8abfbf","text":"["},{"translate":"event.shroomhearth.spores_of_dowsing","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_dowsing.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.75
