# Executor: A player that just consumed Spores of Spookiness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/extend] "},{"translate":"event.shroomhearth.spores_of_spookiness"},{"text":" extended by "},{"selector":"@s"}]

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_spookiness shroomhearth.harmony 3600

# Update max value for bossbar
execute store result bossbar shroomhearth:spores_of_spookiness max run scoreboard players get spores_of_spookiness shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_spookiness name [{"color":"#e3901d","translate":"event.shroomhearth.spores_of_spookiness"},{"color":"white","text":" - "},{"selector":"@s"}]

# Announce extension
tellraw @a [{"color":"#e3901d","text":"["},{"translate":"event.shroomhearth.spores_of_spookiness"},{"text":"]","color":"white"},{"translate":"event.shroomhearth.spores.extend"},{"selector":"@s"}]

# Play sound
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
