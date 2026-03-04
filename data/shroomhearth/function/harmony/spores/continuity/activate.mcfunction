# Executor: A player that just consumed Spores of Continuity
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/continuity/activate] "},{"translate":"harmony.spores.continuity"},{"text":" activated by "},{"selector":"@s"}]


# Stop time
gamerule advance_time false

# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_continuity shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_continuity [{"color":"#6c6c89","translate":"harmony.spores.continuity"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_continuity max 3600
bossbar set shroomhearth:spores_of_continuity style progress
bossbar set shroomhearth:spores_of_continuity value 3600
bossbar set shroomhearth:spores_of_continuity visible true
bossbar set shroomhearth:spores_of_continuity players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#6c6c89","text":"["},{"translate":"harmony.spores.continuity","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.continuity.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.activate"},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
