# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/leaping/deactivate] deactivating "},{"translate":"harmony.spores.leaping"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_leaping

# Announce expiration
tellraw @a [{"color":"#FDFF84","text":"["},{"translate":"harmony.spores.leaping","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.leaping.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth 1
