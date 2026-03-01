# Executor: A forceload marker entity tagged for removal
# Position: The forceload marker entity

tellraw @a[tag=debug_forceload] [{"text":"[shroomhearth:forceload/stop_forceloading_chunk] Stopping forceloading chunk at "},{"selector":"@s"}]


# Calculate and score the chunk position of marker
function shroomhearth:score_chunk_coordinates

# Calculate and score the chunk position of other active forceload markers within 16 blocks
execute as @e[tag=forceload_marker,tag=!remove_forceload_marker,distance=0.0625..16] run function shroomhearth:score_chunk_coordinates

# Remove the chunk from forceloading unless there is another active forceload marker in the same chunk
tag @s add removing_forceload_marker
execute as @e[tag=forceload_marker,tag=!remove_forceload_marker,distance=0.0625..16] \
if score @s chunk_x = @n[tag=removing_forceload_marker] chunk_x \
if score @s chunk_z = @n[tag=removing_forceload_marker] chunk_z \
run tag @n[tag=removing_forceload_marker] add keep_forceloading_chunk

# Notify if the chunk will be kept loaded due to another active forceload marker in the same chunk
execute as @s[tag=keep_forceloading_chunk] run tellraw @a[tag=debug_forceload] [{"text":"[shroomhearth:forceload/stop_forceloading_chunk] Keeping chunk loaded for nearby active forceload marker"}]

# Remove the forceloaded chunk if there are no other active forceload markers in the same chunk
execute as @s[tag=!keep_forceloading_chunk] run forceload remove ~ ~

# Remove the marker
kill @s