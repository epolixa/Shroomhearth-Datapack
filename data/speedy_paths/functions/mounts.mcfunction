# give speed to nearest mount mob to player (should be their RootVehicle)
effect give @e[type=#speedy_paths:mounts,sort=nearest,limit=1,distance=..2] minecraft:speed 1 1 true

# revoke trigger advancement
advancement revoke @s only speedy_paths:mount_on_path