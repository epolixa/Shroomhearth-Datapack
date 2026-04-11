# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/keeping/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_keeping"}]


# Update the keep inventory game rule
gamerule keep_inventory false

# Remove bossbar
bossbar remove shroomhearth:spores_of_keeping

# Announce expiration
tellraw @a [{"color":"#C6C6C6","text":"["},{"translate":"event.shroomhearth.spores_of_keeping","hover_event":{"action":"show_text","value":{"translate":"event.shroomhearth.spores_of_keeping.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
