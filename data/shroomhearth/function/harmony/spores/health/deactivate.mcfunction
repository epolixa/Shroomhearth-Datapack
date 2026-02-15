# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/health/deactivate] deactivating "},{"translate":"harmony.spores.health"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_health

# Announce expiration
tellraw @a [{"color":"#F87D23","text":"["},{"translate":"harmony.spores.health","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.health.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1