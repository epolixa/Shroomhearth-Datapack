# Executor: Server
# Position: Root

# This function is intended to be scheduled from any context after a forceload marker has been tagged as "remove_forceload_marker"

tellraw @a[tag=debug_forceload] [{"text":"[shroomhearth:forceload/prune_forceloaded_chunks] Pruning forceloaded chunks tagged for removal"}]


# Remove forceload from chunks with markers tagged for removal and kill the markers
execute as @e[tag=remove_forceload_marker] at @s run function shroomhearth:forceload/stop_forceloading_chunk