# Executes from the context of a player who just consumed an echoing chorus fruit and dropped a chorus kernel
tellraw @a[tag=debug_chorus_kernel] "Calibrating Chorus Kernel..."

# Capture player position and dimension in fruit data
execute store result entity @s Item.components.minecraft:custom_data.targetPosX int 1 run data get entity @p[tag=consumed_echoing_chorus_fruit] Pos[0] 1
execute store result entity @s Item.components.minecraft:custom_data.targetPosY int 1 run data get entity @p[tag=consumed_echoing_chorus_fruit] Pos[1] 1
execute store result entity @s Item.components.minecraft:custom_data.targetPosZ int 1 run data get entity @p[tag=consumed_echoing_chorus_fruit] Pos[2] 1
data modify entity @s Item.components.minecraft:custom_data.targetDim set from entity @p[tag=consumed_echoing_chorus_fruit] Dimension
tellraw @a[tag=debug_chorus_kernel] "Player position and dimension captured in Chorus Kernel"