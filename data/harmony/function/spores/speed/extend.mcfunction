# Executor: A player that just consumed Spores of Speed
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/speed/extend] "},{"translate":"harmony.spores.speed"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_speed shroomhearth 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_speed max run scoreboard players get spores_of_speed shroomhearth

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_speed name [{"color":"#33EBFF","translate":"harmony.spores.speed"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#33EBFF","text":"["},{"translate":"harmony.spores.speed","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.speed.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
