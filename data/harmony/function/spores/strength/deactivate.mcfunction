# Executor: Server 
# Position: Root

tellraw @a[tag=debug_harmony] "[harmony:spores/strength/1s_inactive] deactivating Strength Spores"


# Remove bossbar
bossbar remove shroomhearth:strength_spores

# Announce expiration
tellraw @a [{"color":"#FFC700","translate":"harmony.spores.strength","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.strength.tooltip"}}},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# Update active spores 
scoreboard players remove active_spores shroomhearth 1