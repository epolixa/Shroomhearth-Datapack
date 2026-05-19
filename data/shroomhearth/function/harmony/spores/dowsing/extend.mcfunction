# Executor: A player that just consumed Spores of Dowsing
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/dowsing/extend] "},{"translate":"event.shroomhearth.spores_of_dowsing"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_dowsing shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_dowsing max run scoreboard players get spores_of_dowsing shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_dowsing name [{"color":"#8abfbf","translate":"event.shroomhearth.spores_of_dowsing"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#8abfbf","text":"["},{"translate":"event.shroomhearth.spores_of_dowsing","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_dowsing.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.75
