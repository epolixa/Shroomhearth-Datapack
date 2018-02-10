################################################################
# Solomon's Shoes
# script for solomons shoes usage
################################################################


# Increment score flag for anyone wearing shoes and sneaking
execute as @a[nbt={Inventory: [{Slot: 100b, id: "minecraft:leather_boots", tag: {relic: "solomons_shoes"}}]},scores={playerSneak=1}] at @s if block ~ ~-1 ~ air run scoreboard players add @s solomonsShoes 1

# Remove any platforms that are too close to flagged player
execute as @a[scores={solomonsShoes=1}] at @s run kill @e[tag=solomonsShoes,distance=..2]

# Create a platform for flagged player
execute as @a[scores={solomonsShoes=1}] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Tags: ["solomonsShoes"], Marker: true, NoGravity: true, NoAI: true, Invisible: true, Invulnerable: true, Silent: true, Small: true, Passengers:[{id: shulker, Tags: ["solomonsShoes"], NoAI: true, NoGravity: true, Silent: true, DeathTime: 19, DeathLootTable: "minecraft:empty", Invulnerable: true, ActiveEffects: [{Id: 14, Amplifier: 0, Duration: 999999, ShowParticles: false}]}, {id: falling_block, Tags: ["solomonsShoes"], BlockState: {Name: "minecraft:white_stained_glass"}, Time: 1, DropItem: false, NoGravity: true}]}

# Increment score for platforms
scoreboard players add @e[tag=solomonsShoes] solomonsShoes 1

# Correct position of player to created platform
execute as @e[type=shulker,tag=solomonsShoes,scores={solomonsShoes=1}] at @s run teleport @p[scores={solomonsShoes=1}] ~ ~1 ~

# Reset score flag for players who aren't sneaking
execute as @a[scores={solomonsShoes=1..,playerSneak=0}] run scoreboard players set @s solomonsShoes 0

# Summon particles around platforms
execute as @e[type=shulker,tag=solomonsShoes] at @s run particle end_rod ~ ~0.5 ~ 0.25 0.25 0.25 0.02 1

# Play a sound when platforms appear
execute as @e[type=shulker,tag=solomonsShoes,scores={solomonsShoes=1}] at @s run playsound minecraft:entity.player.breath player @a ~ ~ ~ 0.4 2

# Play a sound when platforms die
execute as @e[type=shulker,tag=solomonsShoes,scores={solomonsShoes=120}] at @s run playsound minecraft:entity.player.breath player @a ~ ~ ~ 0.4 1.7

# Remove platforms at the end of their life
kill @e[tag=solomonsShoes,scores={solomonsShoes=120..}]
