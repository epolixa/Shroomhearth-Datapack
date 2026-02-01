# Executor: A player that just consumed Spores of Strength
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/activate] "},{"translate":"harmony.spores.strength"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_strength shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_strength shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_strength [{"color":"#FFC700","translate":"harmony.spores.strength"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_strength max 3600
bossbar set shroomhearth:spores_of_strength style progress
bossbar set shroomhearth:spores_of_strength value 3600
bossbar set shroomhearth:spores_of_strength visible true
bossbar set shroomhearth:spores_of_strength players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#FFC700","text":"["},{"translate":"harmony.spores.strength","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.strength.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8