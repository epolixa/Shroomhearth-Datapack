# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/dowsing/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_dowsing"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_dowsing

# Announce expiration
tellraw @a [{"color":"#8abfbf","text":"["},{"translate":"event.shroomhearth.spores_of_dowsing","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_dowsing.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.75

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
