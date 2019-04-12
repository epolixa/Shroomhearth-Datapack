# Remove any platforms that are too close to player
kill @e[tag=voxelSocks, distance=..2]

# Create a platform under player
summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["voxelSocks"], Duration:999999, DurationOnUse:0, Radius:1, RadiusOnUse:0, RadiusPerTick:0, Particle:"minecraft:end_rod", Potion:"minecraft:water", Effects:[{Id:28, Amplifier:0, Duration:3}], Passengers:[{id:"minecraft:shulker", Tags:["voxelSocks"], NoAI:true, NoGravity:true, Silent:true, DeathLootTable:"minecraft:empty", Invulnerable:true, DeathTime:19, ActiveEffects:[{Id:14, Amplifier:1, Duration:999999, ShowParticles:false}]}, {id:"minecraft:falling_block", Tags:["voxelSocks"], BlockState:{Name:"minecraft:white_stained_glass"}, Time:1, DropItem:false, NoGravity:true}]}

# Correct position of player to created platform
execute as @e[type=shulker, tag=voxelSocks, limit=1, sort=nearest] at @s run teleport @p[nbt={Inventory: [{Slot:100b, tag:{relic:"voxel_socks"}}]}] ~ ~1 ~

# Play a sound when platforms appear
playsound minecraft:ui.toast.in player @a ~ ~ ~ 1.4 1.4

# Revoke trigger advancement
advancement revoke @s only voxel_socks:sneak