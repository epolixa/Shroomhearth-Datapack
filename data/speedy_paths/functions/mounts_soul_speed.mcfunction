# give speed to nearest mount mob to player (should be their RootVehicle) according to soul speed level
execute if predicate speedy_paths:soul_speed_1 run effect give @e[type=#speedy_paths:mounts,sort=nearest,limit=1,distance=..2] minecraft:speed 1 0 true
execute if predicate speedy_paths:soul_speed_2 run effect give @e[type=#speedy_paths:mounts,sort=nearest,limit=1,distance=..2] minecraft:speed 1 1 true
execute if predicate speedy_paths:soul_speed_3 run effect give @e[type=#speedy_paths:mounts,sort=nearest,limit=1,distance=..2] minecraft:speed 1 2 true
execute if predicate speedy_paths:soul_speed_4 run effect give @e[type=#speedy_paths:mounts,sort=nearest,limit=1,distance=..2] minecraft:speed 1 3 true

# revoke trigger advancement
advancement revoke @s only speedy_paths:mount_on_soul_path_with_soul_speed_rider