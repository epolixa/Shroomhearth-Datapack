# Executor: A player that just consumed Spores of Swiftness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/swiftness/extend] "},{"translate":"harmony.spores.swiftness"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_swiftness shroomhearth 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_swiftness max run scoreboard players get spores_of_swiftness shroomhearth

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_speed name [{"color":"#33EBFF","translate":"harmony.spores.swiftness"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#33EBFF","text":"["},{"translate":"harmony.spores.swiftness","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.swiftness.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
