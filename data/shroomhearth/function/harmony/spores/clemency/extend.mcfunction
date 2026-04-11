# Executor: A player that just consumed Spores of Clemency
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/clemency/extend] "},{"translate":"event.shroomhearth.spores_of_clemency"},{"text":" extended by "},{"selector":"@s"}]


# Update score
scoreboard players add spores_of_clemency shroomhearth.harmony 3600

# Update max score for bossbar
execute store result bossbar shroomhearth:spores_of_clemency max run scoreboard players get spores_of_clemency shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_clemency name [{"color":"#78A7FF","translate":"event.shroomhearth.spores_of_clemency"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#78A7FF","text":"["},{"translate":"event.shroomhearth.spores_of_clemency","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_clemency.tooltip"}}},{"text":"]"},{"color":"white","translate":"event.shroomhearth.spores.extend"},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
