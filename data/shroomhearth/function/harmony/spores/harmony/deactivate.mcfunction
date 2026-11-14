# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/harmony/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_harmony"}]

# Update active spores
scoreboard players remove active_spores shroomhearth.harmony 1

# Remove bossbar
bossbar remove shroomhearth:spores_of_harmony

# Announce expiration
tellraw @a [{"color":"#8abfbf","text":"["},{"translate":"event.shroomhearth.spores_of_harmony","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_harmony.tooltip"}}},{"text":"]"},{"color":"white","translate":"event.shroomhearth.spores.deactivate"}]

# Play sound
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7
