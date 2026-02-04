# Executor: An echo horn forceload marker entity
# Position: The marker entity

tellraw @a[tag=debug_echo_horn] [{"text":"[echo_horn:found_respawn_block] Found respawn block at marker "},{"selector":"@s"}]


# Tag the player associated with this marker as having a valid respawn block
tag @p[tag=checking_respawn_point] add has_respawn_block

# Remove the marker entity and stop forceloading the chunk
# if the respawn point is valid
execute if entity @s[tag=has_respawn_block] run function shroomhearth:porcelain/cleanup_marked_chunk