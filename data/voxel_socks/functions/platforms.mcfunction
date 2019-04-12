# Summon particles around platforms
#execute as @s[type=shulker] run particle end_rod ~ ~0.5 ~ 0.25 0.25 0.25 0.02 1

# Destroy platforms at the end of their life
execute as @s[scores={voxelSocks=120}] run function voxel_socks:destroy_platform

# Increment life timer for platforms
scoreboard players add @s voxelSocks 1