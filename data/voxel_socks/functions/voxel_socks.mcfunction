################################################################
# Voxel Socks
# script for voxel socks shoes usage
################################################################

# Increment score flag for anyone wearing shoes and sneaking
execute as @a[nbt={Inventory: [{Slot:100b, tag:{relic:"voxel_socks"}}]},scores={playerSneak=1}] at @s if block ~ ~-1 ~ air run scoreboard players add @s voxelSocks 1

# Remove any platforms that are too close to flagged player
execute as @a[scores={voxelSocks=1}] at @s run kill @e[tag=voxelSocks,distance=..2]

# Create a platform for flagged player
execute as @a[scores={voxelSocks=1}] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Tags: ["voxelSocks"], Marker: true, NoGravity: true, NoAI: true, Invisible: true, Invulnerable: true, Silent: true, Small: true, Passengers:[{id: shulker, Tags: ["voxelSocks"], NoAI: true, NoGravity: true, Silent: true, DeathLootTable: "minecraft:empty", Invulnerable: true, DeathTime: 19, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}, {id: falling_block, Tags: ["voxelSocks"], BlockState: {Name: "minecraft:white_stained_glass"}, Time: 1, DropItem: false, NoGravity: true}]}

# Increment score for platforms
scoreboard players add @e[tag=voxelSocks] voxelSocks 1

# Correct position of player to created platform
execute as @e[type=shulker,tag=voxelSocks,scores={voxelSocks=1}] at @s run teleport @p[scores={voxelSocks=1}] ~ ~1 ~

# Reset score flag for players who aren't sneaking
execute as @a[scores={voxelSocks=1..,playerSneak=0}] run scoreboard players set @s voxelSocks 0

# Summon particles around platforms
execute as @e[type=shulker,tag=voxelSocks] at @s run particle end_rod ~ ~0.5 ~ 0.25 0.25 0.25 0.02 1

# Play a sound when platforms appear
execute as @e[type=shulker,tag=voxelSocks,scores={voxelSocks=1}] at @s run playsound minecraft:ui.toast.in player @a ~ ~ ~ 1.4 1.4

# Play a sound when platforms die
execute as @e[type=shulker,tag=voxelSocks,scores={voxelSocks=120}] at @s run playsound minecraft:ui.toast.out player @a ~ ~ ~ 1.4 1.4

# Remove platforms at the end of their life
kill @e[tag=voxelSocks,scores={voxelSocks=120..}] 
