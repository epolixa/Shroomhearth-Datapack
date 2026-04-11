# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/strength/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_strength"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_strength

# Announce expiration
tellraw @a [{"color":"#FFC700","text":"["},{"translate":"event.shroomhearth.spores_of_strength","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_strength.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1