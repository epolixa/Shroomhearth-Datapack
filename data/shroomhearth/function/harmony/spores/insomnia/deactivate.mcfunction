# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/insomnia/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_insomnia"}]


# Update the spawn phantoms game rule
gamerule spawn_phantoms true

# Remove bossbar
bossbar remove shroomhearth:spores_of_insomnia

# Announce expiration
tellraw @a [{"color":"#5061a4","text":"["},{"translate":"event.shroomhearth.spores_of_insomnia","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_insomnia.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
