# Executor: A player that just consumed Spores of Rushing
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/rushing/activate] "},{"translate":"event.shroomhearth.spores_of_rushing"},{"text":" activated by "},{"selector":"@s"}]


# Update the random_tick_speed game rule
gamerule random_tick_speed 30

# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_rushing shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_rushing [{"color":"#b38ef3","translate":"event.shroomhearth.spores_of_rushing"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_rushing max 3600
bossbar set shroomhearth:spores_of_rushing style progress
bossbar set shroomhearth:spores_of_rushing value 3600
bossbar set shroomhearth:spores_of_rushing visible true
bossbar set shroomhearth:spores_of_rushing players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#b38ef3","text":"["},{"translate":"event.shroomhearth.spores_of_rushing","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_rushing.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
