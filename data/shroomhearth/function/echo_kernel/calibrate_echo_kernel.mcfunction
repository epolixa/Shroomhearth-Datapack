# Executor: A new Echo Kernel item entoty spawned from a Player who ate an Echoed Chorus Fruit
# Position: The item entity

tellraw @a[tag=debug_echo_kernel] [{"text":"[shroomhearth:echo_kernel/calibrate_echo_kernel] Calibrating Echo Kernel"}]


# Capture player position and dimension in fruit data
execute store result entity @s Item.components.minecraft:custom_data.target.x int 1 run data get entity @p[tag=consume_echoed_chorus_fruit] Pos[0] 1
execute store result entity @s Item.components.minecraft:custom_data.target.y int 1 run data get entity @p[tag=consume_echoed_chorus_fruit] Pos[1] 1
execute store result entity @s Item.components.minecraft:custom_data.target.z int 1 run data get entity @p[tag=consume_echoed_chorus_fruit] Pos[2] 1
data modify entity @s Item.components.minecraft:custom_data.target.dimension set from entity @p[tag=consume_echoed_chorus_fruit] Dimension

# Summon a temporary text display to handle component resolution for lore
tag @s add calibrating_echo_kernel
summon minecraft:text_display ~ ~ ~ {Tags:["echo_kernel_text_display"]}
data modify entity @n[tag=echo_kernel_text_display] text set value [{"text": "XYZ: ", "color": "gray", "italic": false}, {"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.target.x"},{"text": ", "},{"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.target.y"},{"text": ", "},{"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.target.z"}]
data modify entity @s Item.components.minecraft:lore append from entity @n[tag=echo_kernel_text_display] text
data modify entity @n[tag=echo_kernel_text_display] text set value [{"text": "Dimension: ", "color": "gray", "italic": false}, {"color": "blue", "entity": "@n[tag=calibrating_echo_kernel]", "nbt": "Item.components.minecraft:custom_data.target.dimension"}]
data modify entity @s Item.components.minecraft:lore append from entity @n[tag=echo_kernel_text_display] text
#data modify entity @n[tag=echo_kernel_text_display] text set value '[{"text": "Creator: ", "color": "gray", "italic": false}, {"color": "blue", "selector": "@p[tag=consume_echoed_chorus_fruit]"}]'
#data modify entity @s Item.components.minecraft:lore append string entity @n[tag=echo_kernel_text_display] text
kill @n[tag=echo_kernel_text_display]

# Update shroomhearth_id
data modify entity @s Item.components.minecraft:custom_data.shroomhearth_id set value "echo_kernel"
