# Executor: A player that just consumed Spores of Continuity
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/continuity/extend] "},{"translate":"event.shroomhearth.spores_of_continuity"},{"text":" extended by "},{"selector":"@s"}]


# Update score
scoreboard players add spores_of_continuity shroomhearth.harmony 3600

# Update max score for bossbar
execute store result bossbar shroomhearth:spores_of_continuity max run scoreboard players get spores_of_continuity shroomhearth.harmony

# Update the attribution for bossbar
bossbar set shroomhearth:spores_of_continuity name [{"color":"#6c6c89","translate":"event.shroomhearth.spores_of_continuity"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#6c6c89","text":"["},{"translate":"event.shroomhearth.spores_of_continuity","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_continuity.tooltip"}}},{"text":"]"},{"color":"white","translate":"event.shroomhearth.spores.extend"},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8
