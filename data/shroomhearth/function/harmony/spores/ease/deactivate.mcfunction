# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/ease/deactivate] deactivating "},{"translate":"harmony.spores.ease"}]


# Update difficulty
difficulty hard

# Remove bossbar
bossbar remove shroomhearth:spores_of_ease

# Announce expiration
tellraw @a [{"color":"#B6DB61","text":"["},{"translate":"harmony.spores.ease","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.ease.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
