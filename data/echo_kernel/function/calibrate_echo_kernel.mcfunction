# Executes from the context of a player who just consumed an echoing chorus fruit and dropped a chorus kernel
tellraw @a[tag=debug_echo_kernel] "Calibrating Echo Kernel..."

# Capture player position and dimension in fruit data
execute store result entity @s Item.components.minecraft:custom_data.targetPosX int 1 run data get entity @p[tag=consumed_echoed_chorus_fruit] Pos[0] 1
execute store result entity @s Item.components.minecraft:custom_data.targetPosY int 1 run data get entity @p[tag=consumed_echoed_chorus_fruit] Pos[1] 1
execute store result entity @s Item.components.minecraft:custom_data.targetPosZ int 1 run data get entity @p[tag=consumed_echoed_chorus_fruit] Pos[2] 1
data modify entity @s Item.components.minecraft:custom_data.targetDim set from entity @p[tag=consumed_echoed_chorus_fruit] Dimension
tellraw @a[tag=debug_echo_kernel] "Player position and dimension captured in Echo Kernel"

# Override Lore
data modify entity @s Item.components.minecraft:lore set value ['{"text": ""}']

# Summon a temporary text display to handle component resolution for lore
summon minecraft:text_display ~ ~ ~ {Tags:["echo_kernel_text_display"]}
data modify entity @n[tag=echo_kernel_text_display] text set value '[{"text": "XYZ: ", "color": "gray", "italic": false}, {"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.targetPosX"},{"text": ", "},{"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.targetPosY"},{"text": ", "},{"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.targetPosZ"}]'
data modify entity @s Item.components.minecraft:lore append string entity @n[tag=echo_kernel_text_display] text
data modify entity @n[tag=echo_kernel_text_display] text set value '[{"text": "Dimension:  ", "color": "gray", "italic": false}, {"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.targetDim"}]'
data modify entity @s Item.components.minecraft:lore append string entity @n[tag=echo_kernel_text_display] text
#data modify entity @n[tag=echo_kernel_text_display] text set value '[{"text": "Creator:  ", "color": "gray", "italic": false}, {"color": "blue", "selector": "@p[tag=consumed_echoed_chorus_fruit]"}]'
#data modify entity @s Item.components.minecraft:lore append string entity @n[tag=echo_kernel_text_display] text
kill @n[tag=echo_kernel_text_display]
tellraw @a[tag=debug_echo_kernel] "Echo Kernel lore updated"