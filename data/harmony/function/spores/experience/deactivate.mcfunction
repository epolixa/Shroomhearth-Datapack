# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/experience/deactivate] deactivating "},{"translate":"harmony.spores.experience"}]


# Remove bossbar
bossbar remove shroomhearth:spores_of_experience

# Announce expiration
tellraw @a [{"color":"#00FF00","text":"["},{"translate":"harmony.spores.experience","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.experience.tooltip"}}},{"text":"]"},{"color":"white","translate":"harmony.spores.deactivate"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
