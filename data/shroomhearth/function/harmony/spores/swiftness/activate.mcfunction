# Executor: A player that just consumed Spores of Swiftness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/swiftness/activate] "},{"translate":"harmony.spores.swiftness"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
execute if score spores_of_swiftness shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_swiftness shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_swiftness [{"color":"#33EBFF","translate":"harmony.spores.swiftness"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_swiftness max 3600
bossbar set shroomhearth:spores_of_swiftness style progress
bossbar set shroomhearth:spores_of_swiftness value 3600
bossbar set shroomhearth:spores_of_swiftness visible true
bossbar set shroomhearth:spores_of_swiftness players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#33EBFF","text":"["},{"translate":"harmony.spores.swiftness","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.swiftness.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
