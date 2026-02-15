# Executor: A player that just consumed Spores of Haste
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/haste/activate] "},{"translate":"harmony.spores.haste"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_haste shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_haste shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_haste [{"color":"#D9C043","translate":"harmony.spores.haste"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_haste max 3600
bossbar set shroomhearth:spores_of_haste style progress
bossbar set shroomhearth:spores_of_haste value 3600
bossbar set shroomhearth:spores_of_haste visible true
bossbar set shroomhearth:spores_of_haste players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#D9C043","text":"["},{"translate":"harmony.spores.haste","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.haste.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
