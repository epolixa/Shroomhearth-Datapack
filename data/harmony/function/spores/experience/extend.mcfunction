# Executor: A player that just consumed Spores of Experience
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/experience/extend] "},{"translate":"harmony.spores.experience"},{"text":" extended by "},{"selector":"@s"}]

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_experience shroomhearth 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:spores_of_experience max run scoreboard players get spores_of_experience shroomhearth

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_experience name [{"color":"#00FF00","translate":"harmony.spores.experience"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#00FF00","text":"["},{"translate":"harmony.spores.experience","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.experience.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.extend"},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
