# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/haste/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_haste"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_haste

# Announce expiration
tellraw @a [{"color":"#D9C043","text":"["},{"translate":"event.shroomhearth.spores_of_haste","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_haste.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
