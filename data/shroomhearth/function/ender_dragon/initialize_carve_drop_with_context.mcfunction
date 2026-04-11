# Executor: the item entity for a newly spawned carve drop
# Position: The item entity

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/initialize_carve_drop_with_context] Initializing carve drop for item entity "},{"selector":"@s"}]

execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 40000
execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 40000
data modify entity @s Motion[1] set value 1d
tag @s add carve
tag @s add initialized