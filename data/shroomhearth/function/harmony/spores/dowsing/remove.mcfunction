# Executor: A Harmony Cap interaction entity that should have Spores of Dowsing removed
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/dowsing/remove] removing spores_of_dowsing armor stand from "},{"selector":"@s"}]


# Remove Spores of Dowsing armor stand
execute on passengers run kill @s[tag=harmony_cap_armor_stand,tag=spores_of_dowsing]

# Tag the entity to indicate they no longer have Spores of Dowsing
tag @s remove spores_of_dowsing