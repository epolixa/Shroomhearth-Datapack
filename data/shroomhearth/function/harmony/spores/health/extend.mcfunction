# Executor: A player that just consumed Spores of Health
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/health/extend] "},{"translate":"event.shroomhearth.spores_of_health"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_health shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_health max run scoreboard players get spores_of_health shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_health name [{"color":"#F87D23","translate":"event.shroomhearth.spores_of_health"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#F87D23","text":"["},{"translate":"event.shroomhearth.spores_of_health","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_health.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9