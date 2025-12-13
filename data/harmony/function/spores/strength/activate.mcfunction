# Executor: A player that just consumed a Bottle of Strength Spores
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/activate] Strength Spores activated by "},{"selector":"@s"}]


# Update active spores if not already active
execute if score strength_spores shroomhearth matches 0 run scoreboard players add active_spores shroomhearth 1

# Add value to timer - 3600 seconds in an hour
scoreboard players add strength_spores shroomhearth 3600

# Create bossbar
bossbar add shroomhearth:strength_spores [{"color":"#FFC700","translate":"harmony.spores.strength"},{"color":"white","text":" - "},{"selector": "@s"}]
bossbar set shroomhearth:strength_spores max 3600
bossbar set shroomhearth:strength_spores style progress
bossbar set shroomhearth:strength_spores value 3600
bossbar set shroomhearth:strength_spores visible true
bossbar set shroomhearth:strength_spores players @a[scores={show_spores_duration=1}]

# Announce activation
tellraw @a [{"color":"#FFC700","translate":"harmony.spores.strength","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.strength.tooltip"}}},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.8