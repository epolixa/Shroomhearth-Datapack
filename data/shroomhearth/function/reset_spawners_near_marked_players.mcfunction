# Executor: Player tagged with reset_spawner
# Position: the player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:reset_spawners_near_marked_players] Resetting spawners near player "},{"selector":"@s"}]


# Replace spawners within 8 blocks with invalid data to basic spawner
execute as @a[tag=reset_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:barrier replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:allay"}}}
execute as @a[tag=reset_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:barrier replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:interaction"}}}
execute as @a[tag=reset_spawner] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:spawner replace minecraft:barrier

# Clear tag
tag @a[tag=reset_spawner] remove reset_spawner