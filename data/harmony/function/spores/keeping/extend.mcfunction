# Executor: A player that just consumed Spores of Swiftness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/keeping/extend] "},{"translate":"harmony.spores.keeping"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_keeping shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_keeping max run scoreboard players get spores_of_keeping shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_keeping name [{"color":"#C6C6C6","translate":"harmony.spores.keeping"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#C6C6C6","text":"["},{"translate":"harmony.spores.keeping","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.keeping.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
