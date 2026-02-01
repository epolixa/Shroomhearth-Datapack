# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/haste/deactivate] deactivating "},{"translate":"harmony.spores.haste"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_haste

# Announce expiration
tellraw @a [{"color":"#D9C043","text":"["},{"translate":"harmony.spores.haste","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.haste.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
