# Executes from a player who attacked an Ender Tome entity

advancement revoke @s only ender_tome:player_hurt_ender_tome

execute unless predicate ender_tome:holding_enhanceable_item positioned ^ ^ ^1 as @n[tag=ender_tome] at @s run function ender_tome:deactivate_ender_tome
execute if predicate ender_tome:holding_enhanceable_item run function ender_tome:enhance_item