# Remove any platforms that are too close to player
execute as @e[type=area_effect_cloud, tag=voxelSocks, distance=..2] run function voxel_socks:destroy_platform

# Create a platform under player
summon minecraft:area_effect_cloud ~ ~-1.3 ~ {Tags:["voxelSocks"], Duration:999999, DurationOnUse:0, Radius:0.5, RadiusOnUse:0, RadiusPerTick:0, Particle:"minecraft:block minecraft:air", Passengers:[{id:"minecraft:shulker", Tags:["voxelSocks"], NoAI:true, NoGravity:true, Silent:true, DeathLootTable:"minecraft:empty", Invulnerable:true, DeathTime:19, ActiveEffects:[{Id:14, Amplifier:1, Duration:999999, ShowParticles:false}]}, {id:"minecraft:falling_block", Tags:["voxelSocks"], BlockState:{Name:"minecraft:white_stained_glass"}, Time:1, DropItem:false, NoGravity:true}]}

# Correct position of player to created platform
execute as @e[type=shulker, tag=voxelSocks, limit=1, sort=nearest] at @s run teleport @p[scores={voxelSocks=1}] ~ ~1.4 ~

# Play a sound when platforms appear
playsound minecraft:ui.toast.in player @a ~ ~ ~ 1 1.5