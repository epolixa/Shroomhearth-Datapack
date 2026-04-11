# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/peace/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_peace"}]


# Update the spawn monsters game rule
gamerule spawn_monsters true

# Remove bossbar
bossbar remove shroomhearth:spores_of_peace

# Announce expiration
tellraw @a [{"color":"#f39a5e","text":"["},{"translate":"event.shroomhearth.spores_of_peace","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_peace.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
