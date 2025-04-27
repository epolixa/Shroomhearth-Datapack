# Replace nearby spawners with invalid data to basic spawner
execute as @a[tag=reset_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:barrier replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:allay"}}}
execute as @a[tag=reset_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:barrier replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:interaction"}}}
execute as @a[tag=reset_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:spawner replace minecraft:barrier

# Clear tag
tag @a[tag=reset_spawner] remove reset_spawner