# Executor: A player that just consumed a Bottle of Strength Spores
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/extend] Strength Spores extended by "},{"selector":"@s"}]


# Add value to timer - 3600 seconds in an hour
scoreboard players add strength_spores shroomhearth 3600

# Update the new max value for bossbar
execute store result bossbar shroomhearth:strength_spores max run scoreboard players get strength_spores shroomhearth

# Update the attribution for bossbar
bossbar set shroomhearth:strength_spores name [{"color":"#FFC700","translate":"harmony.spores.strength"},{"color":"white","text":" - "},{"selector": "@s"}]

# Announce extension
tellraw @a [{"color":"#FFC700","translate":"harmony.spores.strength","hover_event":{"action":"show_text","value":{"translate":"harmony.spores.strength.tooltip"}}},{"color":"white","text":" were dispersed by "},{"selector":"@s"}]

# Play sound 
execute as @a at @s run playsound block.beacon.power_select player @s ~ ~ ~ 1 1.9

# Grant advancement
advancement grant @s only harmony:release_spores