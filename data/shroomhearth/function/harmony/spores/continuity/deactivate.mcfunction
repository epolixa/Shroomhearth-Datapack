# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/continuity/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_continuity"}]


# Stop time lock
gamerule advance_time true

# Update active spores
scoreboard players remove active_spores shroomhearth.harmony 1

# Remove bossbar
bossbar remove shroomhearth:spores_of_continuity

# Announce expiration
tellraw @a [{"color":"#6c6c89","text":"["},{"translate":"event.shroomhearth.spores_of_continuity","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_continuity.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.deactivate"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7
