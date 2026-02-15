# Executor: A player that just consumed Spores of Leaping
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/leaping/extend] "},{"translate":"harmony.spores.leaping"},{"text":" extended by "},{"selector":"@s"}]

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_leaping shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_leaping max run scoreboard players get spores_of_leaping shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_leaping name [{"color":"#FDFF84","translate":"harmony.spores.leaping"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#FDFF84","text":"["},{"translate":"harmony.spores.leaping","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.leaping.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
