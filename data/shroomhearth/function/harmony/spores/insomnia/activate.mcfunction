# Executor: A player that just consumed Spores of Insomnia
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/insomnia/activate] "},{"translate":"harmony.spores.insomnia"},{"text":" activated by "},{"selector":"@s"}]


# Update the spawn phantoms game rule
gamerule spawn_phantoms false

# Update active spores if not already active
execute if score spores_of_insomnia shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_insomnia shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_insomnia [{"color":"#5061a4","translate":"harmony.spores.insomnia"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_insomnia max 3600
bossbar set shroomhearth:spores_of_insomnia style progress
bossbar set shroomhearth:spores_of_insomnia value 3600
bossbar set shroomhearth:spores_of_insomnia visible true
bossbar set shroomhearth:spores_of_insomnia players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#5061a4","text":"["},{"translate":"harmony.spores.insomnia","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.insomnia.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.7
