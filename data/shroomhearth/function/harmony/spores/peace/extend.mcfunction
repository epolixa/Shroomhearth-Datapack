# Executor: A player that just consumed Spores of Peace
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/peace/extend] "},{"translate":"event.shroomhearth.spores_of_peace"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_peace shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_peace max run scoreboard players get spores_of_peace shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_peace name [{"color":"#f39a5e","translate":"event.shroomhearth.spores_of_peace"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#f39a5e","text":"["},{"translate":"event.shroomhearth.spores_of_peace","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_peace.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
