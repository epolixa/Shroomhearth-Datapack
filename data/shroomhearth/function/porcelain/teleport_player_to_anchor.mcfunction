# Executor: Player leaving The Porcelain
# Position: a source anchor matching the player ID

# teleport player to source anchor
execute if score @s porcelain_dimension_id matches 0 in minecraft:overworld run teleport @e[tag=source_anchor,sort=nearest,limit=1]
execute if score @s porcelain_dimension_id matches -1 in minecraft:the_nether run teleport @e[tag=source_anchor,sort=nearest,limit=1]
execute if score @s porcelain_dimension_id matches 1 in minecraft:the_end run teleport @e[tag=source_anchor,sort=nearest,limit=1]

# copy stored inventory from source anchor
execute if predicate shroomhearth:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function shroomhearth:porcelain/copy_inv_a_to_p_overworld
execute unless predicate shroomhearth:in_overworld as @e[tag=source_anchor,sort=nearest,limit=1] at @s run function shroomhearth:porcelain/copy_inv_a_to_p

# create cleanup marker to unload chunk after 15s
# keepChunk - 0/1 flag to determine whether chunk should be removed from forceloading or kept, depending on nearby anchors, default to 0
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["source_cleanup"], data:{keepChunk:0}}

# destroy nearest anchor in source
kill @e[tag=source_anchor,sort=nearest,limit=1]
kill @e[tag=porcelain_display,sort=nearest,limit=1]

# schedule function to process cleanup markers
schedule function shroomhearth:porcelain/cleanup_marked_chunks 15s
