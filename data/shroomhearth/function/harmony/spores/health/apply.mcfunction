# Executor: A player that should have Spores of Health applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/health/apply] applying spores.health attribute modifier to "},{"selector":"@s"}]

# Apply Spores of Health attribute modifier
attribute @s minecraft:max_health modifier add shroomhearth:spores_of_health 4 add_value

# Tag the player to indicate they have Spores of Health
tag @s add spores_of_health