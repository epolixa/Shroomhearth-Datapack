# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/swiftness/deactivate] deactivating "},{"translate":"harmony.spores.swiftness"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_swiftness

# Announce expiration
tellraw @a [{"color":"#33EBFF","text":"["},{"translate":"harmony.spores.swiftness","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.swiftness.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
