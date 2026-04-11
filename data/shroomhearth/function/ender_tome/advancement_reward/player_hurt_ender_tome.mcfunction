# Executor: Player who attacked an Ender Tome entity
# Position: The player

tellraw @a[tag=debug_ender_tome] [{"text":"[shroomhearth:ender_tome/player_hurt_ender_tome] "},{"selector":"@s"},{"text":" attacked an Ender Tome"}]

# Revoke trigger
advancement revoke @s only shroomhearth:ender_tome/player_hurt_ender_tome

# Apply or deactivate the Ender Tome
execute unless predicate shroomhearth:ender_tome/holding_enhanceable_item positioned ^ ^ ^1 as @n[tag=ender_tome] at @s run function shroomhearth:ender_tome/deactivate_ender_tome
execute if predicate shroomhearth:ender_tome/holding_enhanceable_item run function shroomhearth:ender_tome/enhance_item