# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/clemency/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_clemency"}]


# Stop weather lock
gamerule advance_weather true

# Update active spores
scoreboard players remove active_spores shroomhearth.harmony 1

# Remove bossbar
bossbar remove shroomhearth:spores_of_clemency

# Announce expiration
tellraw @a [{"color":"#78A7FF","text":"["},{"translate":"event.shroomhearth.spores_of_clemency","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_clemency.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.deactivate"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7
