# Executor: A player that just consumed Spores of Speed
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/speed/activate] "},{"translate":"harmony.spores.speed"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_speed shroomhearth matches 0 run scoreboard players add active_spores shroomhearth 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_speed shroomhearth 3600

# Create bossbar
bossbar add shroomhearth:spores_of_speed [{"color":"#33EBFF","translate":"harmony.spores.speed"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_speed max 3600
bossbar set shroomhearth:spores_of_speed style progress
bossbar set shroomhearth:spores_of_speed value 3600
bossbar set shroomhearth:spores_of_speed visible true
bossbar set shroomhearth:spores_of_speed players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#33EBFF","text":"["},{"translate":"harmony.spores.speed","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.speed.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
