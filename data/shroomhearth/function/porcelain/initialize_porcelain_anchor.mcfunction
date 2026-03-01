# Executor: A Porcelain Anchor item display entity that was newly summoned
# Position: The Anchor

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/initialize_porcelain_anchor] Initializing Porcelain Anchor for "},{"selector":"@p[tag=used_porcelain]"}]


# Assign the parent Player's UUID to their Porcelain Anchor
scoreboard players operation @s porcelain_uuid_1 = @p[tag=used_porcelain] uuid_1
scoreboard players operation @s porcelain_uuid_2 = @p[tag=used_porcelain] uuid_2
scoreboard players operation @s porcelain_uuid_3 = @p[tag=used_porcelain] uuid_3
scoreboard players operation @s porcelain_uuid_4 = @p[tag=used_porcelain] uuid_4

# Copy the parent Player's inventory to their Porcelain Anchor
execute if predicate shroomhearth:in_overworld run function shroomhearth:porcelain/copy_inventory/player_to_anchor_overworld
execute unless predicate shroomhearth:in_overworld run function shroomhearth:porcelain/copy_inventory/player_to_anchor

# Start forceloading the chunk that the Porcelain Anchor is in so that their Player may teleport back to it later
data modify storage shroomhearth:forceload marker_tag_prefix set value "porcelain"
function shroomhearth:forceload/m_start_forceloading_chunk with storage shroomhearth:forceload

# Assign the parent Player's UUID to the nearest forceload marker
scoreboard players operation @n[tag=porcelain_forceload_marker] porcelain_uuid_1 = @p[tag=used_porcelain] uuid_1
scoreboard players operation @n[tag=porcelain_forceload_marker] porcelain_uuid_2 = @p[tag=used_porcelain] uuid_2
scoreboard players operation @n[tag=porcelain_forceload_marker] porcelain_uuid_3 = @p[tag=used_porcelain] uuid_3
scoreboard players operation @n[tag=porcelain_forceload_marker] porcelain_uuid_4 = @p[tag=used_porcelain] uuid_4

# Remove new anchor tag
tag @s remove new_porcelain_anchor