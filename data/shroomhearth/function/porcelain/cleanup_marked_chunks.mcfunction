# this removes forceloaded chunks in source dimensions that get marked after a player leaves the porcelain
# is scheduled to run 15 seconds after a player exits porcelain 

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/cleanup_marked_chunk] Checking cleanup marker "},{"selector":"@s"}]

# for every cleanup marker...
#   if there is no source anchor in the same chunk,
#       remove current chunk from forceloading
#   and then kill the cleanup marker
execute as @e[tag=source_cleanup] at @s run function shroomhearth:porcelain/cleanup_marked_chunk