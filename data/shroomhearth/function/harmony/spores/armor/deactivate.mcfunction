# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/armor/deactivate] deactivating "},{"translate":"harmony.spores.armor"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_armor

# Announce expiration
tellraw @a [{"color":"#8f45ed","text":"["},{"translate":"harmony.spores.armor","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.armor.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1