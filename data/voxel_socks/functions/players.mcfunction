################################################################
# Voxel Socks
# script for voxel socks shoes usage
################################################################

# Trigger advancement for anyone wearing shoes and sneaking
execute as @s[scores={playerSneak=1}, advancements={voxel_socks:started_sneak=false}] if block ~ ~-0.1 ~ air run advancement grant @s only voxel_socks:started_sneak
