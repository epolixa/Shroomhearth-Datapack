# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/speed/deactivate] deactivating "},{"translate":"harmony.spores.speed"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_speed

# Announce expiration
tellraw @a [{"color":"#33EBFF","text":"["},{"translate":"harmony.spores.speed","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.speed.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth 1
