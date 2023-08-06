# Replace nearby spawners with allay data to basic spawner
execute as @a[tag=allay_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:barrier replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:allay"}}}
execute as @a[tag=allay_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:spawner replace minecraft:barrier

# Clear tag
tag @a[tag=allay_spawner] remove allay_spawner