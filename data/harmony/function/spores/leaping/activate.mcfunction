# Executor: A player that just consumed Spores of Leaping
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/leaping/activate] "},{"translate":"harmony.spores.leaping"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_leaping shroomhearth matches 0 run scoreboard players add active_spores shroomhearth 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_leaping shroomhearth 3600

# Create bossbar
bossbar add shroomhearth:spores_of_leaping [{"color":"#FDFF84","translate":"harmony.spores.leaping"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_leaping max 3600
bossbar set shroomhearth:spores_of_leaping style progress
bossbar set shroomhearth:spores_of_leaping value 3600
bossbar set shroomhearth:spores_of_leaping visible true
bossbar set shroomhearth:spores_of_leaping players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#FDFF84","text":"["},{"translate":"harmony.spores.leaping","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.leaping.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
