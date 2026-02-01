# Executor: A player that just consumed Spores of Strength
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/extend] "},{"translate":"harmony.spores.strength"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_strength shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_strength max run scoreboard players get spores_of_strength shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_strength name [{"color":"#FFC700","translate":"harmony.spores.strength"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#FFC700","text":"["},{"translate":"harmony.spores.strength","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.strength.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9