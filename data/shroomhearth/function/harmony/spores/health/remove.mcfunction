# Executor: A player that should have Spores of Health removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/health/remove] removing spores.health attribute modifier from "},{"selector":"@s"}]

# Remove Spores of Health attribute modifier
attribute @s minecraft:max_health modifier remove shroomhearth:spores_of_health

# Tag the player to indicate they no longer have Spores of Health
tag @s remove spores_of_health