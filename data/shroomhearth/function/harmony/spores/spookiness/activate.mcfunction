# Executor: A player that just consumed Spores of Spookiness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/spookiness/activate] "},{"translate":"event.shroomhearth.spores_of_spookiness"},{"text":" activated by "},{"selector":"@s"}]

# Update active spores if not already active
scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_spookiness shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_spookiness [{"color":"#9b59b6","translate":"event.shroomhearth.spores_of_spookiness"},{"color":"white","text":" - "},{"selector":"@s"}]
bossbar set shroomhearth:spores_of_spookiness max 3600
bossbar set shroomhearth:spores_of_spookiness style progress
bossbar set shroomhearth:spores_of_spookiness value 3600
bossbar set shroomhearth:spores_of_spookiness visible true
bossbar set shroomhearth:spores_of_spookiness players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#9b59b6","text":"["},{"translate":"event.shroomhearth.spores_of_spookiness"},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
