# mob spawner eggs
# converts natural spawners into spawn eggs every tick

# replace any natural spawner item entities to respective spawn egg item entities 
execute at @s[nbt={Item: {tag: {BlockEntityTag: {SpawnData: {id: "minecraft:zombie"}}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:zombie_spawn_egg", Count:1b}, PickupDelay:10}
execute at @s[nbt={Item: {tag: {BlockEntityTag: {SpawnData: {id: "minecraft:skeleton"}}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:skeleton_spawn_egg", Count:1b}, PickupDelay:10}
execute at @s[nbt={Item: {tag: {BlockEntityTag: {SpawnData: {id: "minecraft:spider"}}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spider_spawn_egg", Count:1b}, PickupDelay:10}
execute at @s[nbt={Item: {tag: {BlockEntityTag: {SpawnData: {id: "minecraft:cave_spider"}}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cave_spider_spawn_egg", Count:1b}, PickupDelay:10}
execute at @s[nbt={Item: {tag: {BlockEntityTag: {SpawnData: {id: "minecraft:silverfish"}}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg", Count:1b}, PickupDelay:10}
execute at @s[nbt={Item: {tag: {BlockEntityTag: {SpawnData: {id: "minecraft:blaze"}}}}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blaze_spawn_egg", Count:1b}, PickupDelay:10}


# remove any unnatural (other) spawner item entities
kill @s