# Executor: A player that just consumed Spores of Peace
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/peace/activate] "},{"translate":"harmony.spores.peace"},{"text":" activated by "},{"selector":"@s"}]


# Update the spawn monsters game rule
gamerule spawn_monsters false

# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_peace shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_peace [{"color":"#ffd800","translate":"harmony.spores.peace"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_peace max 3600
bossbar set shroomhearth:spores_of_peace style progress
bossbar set shroomhearth:spores_of_peace value 3600
bossbar set shroomhearth:spores_of_peace visible true
bossbar set shroomhearth:spores_of_peace players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#ffd800","text":"["},{"translate":"harmony.spores.peace","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.peace.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
