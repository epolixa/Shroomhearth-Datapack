# Executor: A player that just consumed Spores of Ease
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/ease/activate] "},{"translate":"harmony.spores.ease"},{"text":" activated by "},{"selector":"@s"}]

# Update the difficulty to Easy
difficulty easy

# Update active spores if not already active
execute if score spores_of_ease shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_ease shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_ease [{"color":"#B6DB61","translate":"harmony.spores.ease"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_ease max 3600
bossbar set shroomhearth:spores_of_ease style progress
bossbar set shroomhearth:spores_of_ease value 3600
bossbar set shroomhearth:spores_of_ease visible true
bossbar set shroomhearth:spores_of_ease players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#B6DB61","text":"["},{"translate":"harmony.spores.ease","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.ease.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
