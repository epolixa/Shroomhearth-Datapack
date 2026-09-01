# Executor: A harmony cap marker that was just spawned
# Position: A player that triggered it

tellraw @a[tag=debug_harmony] [{"text":"shroomhearth:harmony/harmony_cap/find_spawn_position] looking for valid position to spawn harmony cap with remaining attempts: "},{"score":{"name":"@s","objective":"harmony"}}]


# Spread the marker
function shroomhearth:harmony/harmony_cap/m_spread_marker with storage shroomhearth:harmony harmony_cap

# Move position one block down if spreadplayers landed on top of a block that harmony cap can grow in
# As of 26.3 snapshot 4, spreadplayers can no longer land on top of snow or lichen, but it will still land on sculk vein.
# Added an override to the entities_can_teleport_to block tag to continue allowing harmony cap to spawn on such blocks
# https://minecraft.wiki/w/Java_Edition_26.3_Snapshot_4#Command_format
execute at @s positioned ~ ~-0.0625 ~ if predicate shroomhearth:harmony/harmony_cap_can_grow_in at @s run tp @s ~ ~-1 ~

# Move position one texel down if spreadplayers landed on top of a dirt path
execute at @s if block ~ ~-0.0625 ~ minecraft:dirt_path run tp @s ~ ~-0.0625 ~

# Check if the marker can spawn a harmony cap
execute at @s run function shroomhearth:harmony/harmony_cap/check_spawn_position