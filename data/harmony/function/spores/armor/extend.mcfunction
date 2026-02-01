# Executor: A player that just consumed Spores of Armor
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/armor/extend] "},{"translate":"harmony.spores.armor"},{"text":" extended by "},{"selector":"@s"}]

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_armor shroomhearth.harmony 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_armor max run scoreboard players get spores_of_armor shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_armor name [{"color":"#8f45ed","translate":"harmony.spores.armor"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#8f45ed","text":"["},{"translate":"harmony.spores.armor","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.armor.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9