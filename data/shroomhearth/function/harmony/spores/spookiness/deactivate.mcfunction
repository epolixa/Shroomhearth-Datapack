# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_spookiness"}]

# Update active spores
scoreboard players remove active_spores shroomhearth.harmony 1

# Remove bossbar
bossbar remove shroomhearth:spores_of_spookiness

# Announce expiration
tellraw @a [{"color":"#e3901d","text":"["},{"translate":"event.shroomhearth.spores_of_spookiness","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_spookiness.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7
