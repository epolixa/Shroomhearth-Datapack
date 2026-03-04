# Executor: Server 
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/rushing/deactivate] deactivating "},{"translate":"harmony.spores.rushing"}]


# Update the random_tick_speed game rule
gamerule random_tick_speed 3

# Remove bossbar
bossbar remove shroomhearth:spores_of_rushing

# Announce expiration
tellraw @a [{"color":"#b38ef3","text":"["},{"translate":"harmony.spores.rushing","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.rushing.tooltip"}}},{"text":"]"},{"color":"white","text":" have dissipated"}]

# Play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7

# Update active spores 
scoreboard players remove active_spores shroomhearth.harmony 1
