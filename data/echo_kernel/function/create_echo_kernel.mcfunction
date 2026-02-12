# Executes from the context of a player who just consumed an echoing chorus fruit and dropped a chorus kernel
tellraw @a[tag=debug_echo_kernel] "Creating Echo Kernel..."

# Spawn a kernel
loot spawn ~ ~ ~ loot echo_kernel:echo_kernel
tellraw @a[tag=debug_echo_kernel] "Echo Kernel item spawned"

# Calibrate it
tag @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{shroomhearth_id"uncalibrated_echo_kernel"}}}}] add calibrating_echo_kernel
execute as @n[tag=calibrating_echo_kernel] run function echo_kernel:calibrate_echo_kernel
data modify entity @n[tag=calibrating_echo_kernel] Item.components.minecraft:custom_data.spore set value "echo_kernel"
tag @n[tag=calibrating_echo_kernel] remove calibrating_echo_kernel