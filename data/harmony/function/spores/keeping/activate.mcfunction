# Executor: A player that just consumed Spores of Keeping
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/keeping/activate] "},{"translate":"harmony.spores.keeping"},{"text":" activated by "},{"selector":"@s"}]


# Update the keep inventory game rule
gamerule keepInventory true

# Update active spores if not already active
execute if score spores_of_keeping shroomhearth matches 0 run scoreboard players add active_spores shroomhearth 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_keeping shroomhearth 3600

# Create bossbar
bossbar add shroomhearth:spores_of_keeping [{"color":"#C6C6C6","translate":"harmony.spores.keeping"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_keeping max 3600
bossbar set shroomhearth:spores_of_keeping style progress
bossbar set shroomhearth:spores_of_keeping value 3600
bossbar set shroomhearth:spores_of_keeping visible true
bossbar set shroomhearth:spores_of_keeping players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#C6C6C6","text":"["},{"translate":"harmony.spores.keeping","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.keeping.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
