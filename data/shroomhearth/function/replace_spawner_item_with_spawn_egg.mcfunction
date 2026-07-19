# Executor: A spawner item entity
# Position: the entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:replace_spawner_item_with_spawn_egg] Replacing spawner item entity with matching spawn egg"}]


# Replace any spawner item entities with respective spawn egg item entities 
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:zombie"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:zombie_spawn_egg"}
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:skeleton"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:skeleton_spawn_egg"}
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:spider"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:spider_spawn_egg"}
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:cave_spider"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:cave_spider_spawn_egg"}
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:silverfish"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:silverfish_spawn_egg"}
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:blaze"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:blaze_spawn_egg"}
item modify entity @s[nbt={Item:{components:{"minecraft:custom_data":{SpawnData:{entity:{id:"minecraft:magma_cube"}}}}}}] contents {"type":"minecraft:set_item","item":"minecraft:magma_cube_spawn_egg"}

# Kill self if not a normal spawner
kill @s[nbt={Item:{id:"minecraft:spawner"}}]