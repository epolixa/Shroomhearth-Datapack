#   from the context of a cleanup marker...
#   if there is no source anchor in the same chunk,
#       remove current chunk from forceloading
#   and then kill the cleanup marker

# Should really generalize this method in shroomhearth namespace
# keepChunk should be changed to a scoreboard objective so that we don't need to do nbt checks

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/cleanup_marked_chunk] Cleaning up marked chunk at "},{"selector":"@s"}]


# Calculate and score the chunk position of marker
execute as @s run function shroomhearth:score_chunk_coordinates

# Calculate and score the chunk position of nearest Porcelain source anchor (may not exist)
execute as @n[tag=source_anchor,distance=0..] run function shroomhearth:score_chunk_coordinates

# Set keepChunk to 1 if the nearest Porcelain source anchor is inside the same chunk
execute if entity @n[tag=source_anchor,distance=0..] \
if score @s chunkX = @n[tag=source_anchor,distance=0..] chunkX \
if score @s chunkZ = @n[tag=source_anchor,distance=0..] chunkZ \
run data modify entity @s data.keepChunk set value 1

# Stop forceloading chunk if keepChunk = 0
execute as @s[nbt={data:{keepChunk:0}}] run forceload remove ~ ~

# Remove the marker
kill @s