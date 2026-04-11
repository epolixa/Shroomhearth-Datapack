# Executor: A wither skeleton thrall that was just summoned
# Position: the wither skeleton

tellraw @a[tag=debug_wither] [{"text":"[shroomhearth:wither/initialize_wither_skeletons] Initializing wither skeleton "},{"selector":"@s"}]


# Join thralls to wither team so kill message has color
team join wither @s

# Play particles on summoned mobs
particle minecraft:smoke ~ ~1 ~ 0.1 0 0.1 0.05 16

# remove new spawn tags
tag @s remove new_wither_thrall