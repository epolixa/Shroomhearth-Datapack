# Executor: A player that just consumed Spores of Armor
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/armor/activate] "},{"translate":"harmony.spores.armor"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_armor shroomhearth matches 0 run scoreboard players add active_spores shroomhearth 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_armor shroomhearth 3600

# Create bossbar
bossbar add shroomhearth:spores_of_armor [{"color":"#8f45ed","translate":"harmony.spores.armor"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_armor max 3600
bossbar set shroomhearth:spores_of_armor style progress
bossbar set shroomhearth:spores_of_armor value 3600
bossbar set shroomhearth:spores_of_armor visible true
bossbar set shroomhearth:spores_of_armor players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#8f45ed","text":"["},{"translate":"harmony.spores.armor","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.armor.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8