# Executor: A Porcelain Anchor that has been matched with a Player who is exiting The Porcelain
# Position: The Porcelain Amphora

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/teleport_player_to_porcelain_amphora] Teleporting "},{"selector":"@p[tag=exiting_porcelain]"},{"text":" to their Porcelain Amphora"}]


# Teleport the Player to their Porcelain Amphora
tp @p[tag=exiting_porcelain] @s

# Copy the Player's stored inventory from their Porcelain Amphora
execute if predicate shroomhearth:in_overworld run function shroomhearth:porcelain/copy_inventory/porcelain_amphora_to_player_overworld
execute unless predicate shroomhearth:in_overworld run function shroomhearth:porcelain/copy_inventory/porcelain_amphora_to_player

# Mark the teleportation as succesful
tag @p[tag=exiting_porcelain] add found_porcelain_amphora

# Tag the matching forceload marker for removal
execute as @e[tag=porcelain_amphora_forceload_marker] \
if score @p[tag=exiting_porcelain] uuid_1 = @s porcelain_amphora_uuid_1 \
if score @p[tag=exiting_porcelain] uuid_2 = @s porcelain_amphora_uuid_2 \
if score @p[tag=exiting_porcelain] uuid_3 = @s porcelain_amphora_uuid_3 \
if score @p[tag=exiting_porcelain] uuid_4 = @s porcelain_amphora_uuid_4 \
run tag @s add remove_forceload_marker

# Prune forceloaded chunks
function shroomhearth:forceload/prune_forceloaded_chunks

# Destroy self
kill @s
