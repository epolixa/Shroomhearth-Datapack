# Executor: A player that just consumed Spores of Clemency
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/clemency/activate] "},{"translate":"harmony.spores.clemency"},{"text":" activated by "},{"selector":"@s"}]


# Lock the weather
gamerule advance_weather false

# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_clemency shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_clemency [{"color":"#78A7FF","translate":"harmony.spores.clemency"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_clemency max 3600
bossbar set shroomhearth:spores_of_clemency style progress
bossbar set shroomhearth:spores_of_clemency value 3600
bossbar set shroomhearth:spores_of_clemency visible true
bossbar set shroomhearth:spores_of_clemency players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#78A7FF","text":"["},{"translate":"harmony.spores.clemency","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.clemency.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.activate"},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
