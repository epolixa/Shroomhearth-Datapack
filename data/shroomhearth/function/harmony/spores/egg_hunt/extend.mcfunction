# Executor: A player that just consumed Spores of Egg Hunt
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/egg_hunt/extend] "},{"translate":"harmony.spores.egg_hunt"},{"text":" extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_egg_hunt shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_egg_hunt max run scoreboard players get spores_of_egg_hunt shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_egg_hunt name [{"color":"#a0744d","translate":"harmony.spores.egg_hunt"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#a0744d","text":"["},{"translate":"harmony.spores.egg_hunt","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.egg_hunt.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.75
