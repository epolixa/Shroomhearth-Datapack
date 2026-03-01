# Executor: Any context where a forceloaded chunk is needed
# Position: The intended position of the forceloaded chunk
# Data: storage shroomhearth:forceload: {marker_tag_prefix: string}

# This function is intended to be called from any context where a forceloaded chunk is needed, for example:
# - A Player's Porcelain Anchor needs to be loaded so that they may return to it when exiting the Porcelain
# - A Player's respawn point needs to be loaded so that they may teleport to it when using their Echo Horn
# The value marker_tag_prefix in the shroomhearth:forceload storage is used to keep track of which forceload markers belong to which context, so that they can be removed later when no longer needed.

# If we need to execute commands on the newly summoned forceload marker, it may not work unless the chunk was already loaded. See Echo Horn functions...

tellraw @a[tag=debug_forceload] [{"text":"[shroomhearth:forceload/start_forceloading_chunk] Starting to forceload chunk at "},{"selector":"@s"}]


# Start forceloading the chunk
forceload add ~ ~

# Summon a forceload marker entity to keep track of the forceloaded chunk
# The marker_tag_prefix in the shroomhearth:forceload storage is used to keep track of which forceload markers belong to which context
$summon minecraft:marker ~ ~ ~ {Tags: [forceload_marker, $(marker_tag_prefix)_forceload_marker]}