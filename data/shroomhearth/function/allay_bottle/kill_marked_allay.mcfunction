# Executor: Server, scheduled 1 tick after an Allay has been "bottled"
# Position: Root

tellraw @a[tag=debug_allay_bottle] [{"text":"[shroomhearth:allay_bottle/kill_marked_allay] Removing marked Allays"}]


# Remove all marked allays
kill @e[type=minecraft:allay,tag=delete]