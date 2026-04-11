# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/experience/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_experience"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_experience

# Announce expiration
tellraw @a [{"color":"#00FF00","text":"["},{"translate":"event.shroomhearth.spores_of_experience","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_experience.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.deactivate"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
