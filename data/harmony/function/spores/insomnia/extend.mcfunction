# Executor: A player that just consumed Spores of Insomnia
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/insomnia/extend] "},{"translate":"harmony.spores.insomnia"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_insomnia shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_insomnia max run scoreboard players get spores_of_insomnia shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_insomnia name [{"color":"#5061a4","translate":"harmony.spores.insomnia"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#5061a4","text":"["},{"translate":"harmony.spores.insomnia","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.insomnia.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
