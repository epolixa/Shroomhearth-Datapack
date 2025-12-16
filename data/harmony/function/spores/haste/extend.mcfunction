# Executor: A player that just consumed Spores of Haste
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/haste/extend] "},{"translate":"harmony.spores.haste"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_haste shroomhearth 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_haste max run scoreboard players get spores_of_haste shroomhearth

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_haste name [{"color":"#D9C043","translate":"harmony.spores.haste"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#D9C043","text":"["},{"translate":"harmony.spores.haste","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.haste.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
