################################################################
# Hell Heels
# script for hell heels
################################################################

# Change block under player while wearing boots
execute as @a[nbt={Inventory: [{Slot: 100b, id: "minecraft:golden_boots", tag: {relic: "solomons_shoes"}}]}] at @s if block ~ ~-1 ~ lava run setblock ~ ~-1 ~ minecraft:magma_block
execute as @a[nbt={Inventory: [{Slot: 100b, id: "minecraft:golden_boots"}]}] at @s if block ~0.5 ~-1 ~ lava run setblock ~0.5 ~-1 ~ minecraft:magma_block
execute as @a[nbt={Inventory: [{Slot: 100b, id: "minecraft:golden_boots"}]}] at @s if block ~-0.5 ~-1 ~ lava run setblock ~-0.5 ~-1 ~ minecraft:magma_block
execute as @a[nbt={Inventory: [{Slot: 100b, id: "minecraft:golden_boots"}]}] at @s if block ~ ~-1 ~0.5 lava run setblock ~ ~-1 ~0.5 minecraft:magma_block
execute as @a[nbt={Inventory: [{Slot: 100b, id: "minecraft:golden_boots"}]}] at @s if block ~ ~-1 ~-0.5 lava run setblock ~ ~-1 ~-0.5 minecraft:magma_block