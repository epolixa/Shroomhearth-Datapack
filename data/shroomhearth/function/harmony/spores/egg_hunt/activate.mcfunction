# Executor: A player that just consumed Spores of Egg Hunt
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/egg_hunt/activate] "},{"translate":"harmony.spores.egg_hunt"},{"text":" activated by "},{"selector":"@s"}]


# Update active spores if not already active
execute if score spores_of_egg_hunt shroomhearth.harmony matches 0 run scoreboard players add active_spores shroomhearth.harmony 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add spores_of_egg_hunt shroomhearth.harmony 3600

# Create bossbar
bossbar add shroomhearth:spores_of_egg_hunt [{"color":"#a0744d","translate":"harmony.spores.egg_hunt"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:spores_of_egg_hunt max 3600
bossbar set shroomhearth:spores_of_egg_hunt style progress
bossbar set shroomhearth:spores_of_egg_hunt value 3600
bossbar set shroomhearth:spores_of_egg_hunt visible true
bossbar set shroomhearth:spores_of_egg_hunt players @a[scores={show_timer_bars=1}]

# Announce activation
tellraw @a [{"color":"#a0744d","text":"["},{"translate":"harmony.spores.egg_hunt","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.egg_hunt.tooltip"}}},{"text":"]"},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.75
