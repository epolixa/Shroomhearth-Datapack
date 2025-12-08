# Executor: A player that just consumed a Bottle of Strength Spores
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/strength/consume] Strength Spores consumed by "},{"selector":"@s"}]


# Activate or extend Strength Spores
execute if score strength_spores shroomhearth matches 1.. run function harmony:spores/strength/extend
execute unless score strength_spores shroomhearth matches 1.. run function harmony:spores/strength/activate

# Reset advancement trigger
advancement revoke @s only harmony:consume_bottle_of_strength_spores