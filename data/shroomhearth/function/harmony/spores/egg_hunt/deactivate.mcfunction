# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/egg_hunt/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_egg_hunt"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_egg_hunt

# Announce expiration
tellraw @a [{"color":"#a0744d","text":"["},{"translate":"event.shroomhearth.spores_of_egg_hunt","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_egg_hunt.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.75

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
