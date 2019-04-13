# Play a sound
playsound minecraft:ui.toast.out player @a ~ ~ ~ 1 1.5

# Remove platforms at the end of their life
kill @e[type=!area_effect_cloud, type=!player, tag=voxelSocks, distance=..2]
kill @s