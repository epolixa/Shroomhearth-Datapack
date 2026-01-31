# Executor: A player that just consumed Spores of Health
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/health/activate] "},{"translate":"harmony.spores.health"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_health shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_health shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_health [{"color":"#F87D23","translate":"harmony.spores.health"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_health max 3600
bossbar set shroomhearth:spores_of_health style progress
bossbar set shroomhearth:spores_of_health value 3600
bossbar set shroomhearth:spores_of_health visible true
bossbar set shroomhearth:spores_of_health players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#F87D23","text":"["},{"translate":"harmony.spores.health","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.health.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8