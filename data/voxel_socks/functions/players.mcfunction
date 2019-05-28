################################################################
# Voxel Socks
# script for voxel socks shoes usage
################################################################

# Add score for anyone wearing shoes and sneaking
execute as @s[scores={playerSneak=1}] if block ~ ~-1 ~ minecraft:air run scoreboard players add @s voxelSocks 1

# Create platform for players with score if platform not already there
execute as @s[scores={voxelSocks=1}] unless entity @e[type=minecraft:shulker, tag=voxelSocks, distance=..1.4] run function voxel_socks:create_platform

# Give slow fall to players touching a platform
execute positioned ~ ~-0.5 ~ if entity @e[type=minecraft:shulker, tag=voxelSocks, distance=..1] run effect give @s minecraft:slow_falling 1 0 false

# Reset score flag for players who aren't sneaking
execute as @s[scores={voxelSocks=1..,playerSneak=0}] run scoreboard players set @s voxelSocks 0
