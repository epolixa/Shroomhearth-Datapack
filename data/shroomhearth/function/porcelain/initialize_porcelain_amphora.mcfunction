# Executor: A Porcelain Amphora item display entity that was newly summoned
# Position: The Porcelain Amphora

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/initialize_porcelain_amphora] Initializing Porcelain Amphora entity for "},{"selector":"@p[tag=used_porcelain_amphora]"}]


# Assign the parent Player's UUID to their Porcelain Amphora
scoreboard players operation @s porcelain_amphora_uuid_1 = @p[tag=used_porcelain_amphora] uuid_1
scoreboard players operation @s porcelain_amphora_uuid_2 = @p[tag=used_porcelain_amphora] uuid_2
scoreboard players operation @s porcelain_amphora_uuid_3 = @p[tag=used_porcelain_amphora] uuid_3
scoreboard players operation @s porcelain_amphora_uuid_4 = @p[tag=used_porcelain_amphora] uuid_4

# Copy the parent Player's inventory to their Porcelain Amphora
execute if predicate shroomhearth:in_overworld run function shroomhearth:porcelain/copy_inventory/player_to_porcelain_amphora_overworld
execute unless predicate shroomhearth:in_overworld run function shroomhearth:porcelain/copy_inventory/player_to_porcelain_amphora

# Start forceloading the chunk that the Porcelain Amphora is in so that their Player may teleport back to it later
data modify storage shroomhearth:forceload marker_tag_prefix set value "porcelain_amphora"
function shroomhearth:forceload/m_start_forceloading_chunk with storage shroomhearth:forceload

# Assign the parent Player's UUID to the nearest forceload marker
scoreboard players operation @n[tag=porcelain_amphora_forceload_marker] porcelain_amphora_uuid_1 = @p[tag=used_porcelain_amphora] uuid_1
scoreboard players operation @n[tag=porcelain_amphora_forceload_marker] porcelain_amphora_uuid_2 = @p[tag=used_porcelain_amphora] uuid_2
scoreboard players operation @n[tag=porcelain_amphora_forceload_marker] porcelain_amphora_uuid_3 = @p[tag=used_porcelain_amphora] uuid_3
scoreboard players operation @n[tag=porcelain_amphora_forceload_marker] porcelain_amphora_uuid_4 = @p[tag=used_porcelain_amphora] uuid_4

# Remove new amphora tag
tag @s remove new_porcelain_amphora