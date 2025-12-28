# Executor: A player that just consumed Spores of Ease
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/ease/extend] "},{"translate":"harmony.spores.ease"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_ease shroomhearth 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_ease max run scoreboard players get spores_of_ease shroomhearth

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_ease name [{"color":"#B6DB61","translate":"harmony.spores.ease"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#B6DB61","text":"["},{"translate":"harmony.spores.ease","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.ease.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
