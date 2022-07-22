#   from the context of a cleanup marker...
#   if there is no source anchor in the same chunk,
#       remove current chunk from forceloading
#   and then kill the cleanup marker

# store chunk pos of marker
execute as @s run function shroomhearth:chunk_coords/calc

# store chunk pos of nearest source anchor (may not exist)
execute as @e[tag=source_anchor, distance=0.., sort=nearest, limit=1] run function shroomhearth:chunk_coords/calc

# set keepChunk to 1 if the nearest source anchor is inside the same chunk
execute if entity @e[tag=source_anchor, distance=0.., sort=nearest, limit=1] if score @s chunkX = @e[tag=source_anchor, distance=0.., sort=nearest, limit=1] chunkX if score @s chunkZ = @e[tag=source_anchor, distance=0.., sort=nearest, limit=1] chunkZ run data modify entity @s data.keepChunk set value 1

# remove chunk from forceloading if keepChunk = 0
execute as @s[nbt={data:{keepChunk:0}}] run forceload remove ~ ~

# kill the marker
kill @s
