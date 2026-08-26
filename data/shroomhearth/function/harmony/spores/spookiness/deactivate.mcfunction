# Executor: Server
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/deactivate] deactivating "},{"translate":"event.shroomhearth.spores_of_spookiness"}]

# Update active spores
scoreboard players remove active_spores shroomhearth.harmony 1

# Remove bossbar
bossbar remove shroomhearth:spores_of_spookiness

# Announce expiration
tellraw @a [{"color":"#e3901d","text":"["},{"translate":"event.shroomhearth.spores_of_spookiness"},{"text":"]","color":"white"},{"translate":"event.shroomhearth.spores.deactivate"}]

# Play sound
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.7
