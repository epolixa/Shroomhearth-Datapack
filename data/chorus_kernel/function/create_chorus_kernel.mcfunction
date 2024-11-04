# Executes from the context of a player who just consumed an echoing chorus fruit and dropped a chorus kernel
tellraw @a[tag=debug_chorus_kernel] "Creating Chorus Kernel..."

# Spawn a kernel
loot spawn ~ ~ ~ loot chorus_kernel:chorus_kernel
tellraw @a[tag=debug_chorus_kernel] "Chorus Kernel item spawned"

# Calibrate it
tag @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{spore:"uncalibrated_chorus_kernel"}}}}] add calibrating_chorus_kernel
execute as @n[tag=calibrating_chorus_kernel] run function chorus_kernel:calibrate_chorus_kernel
data modify entity @n[tag=calibrating_chorus_kernel] Item.components.minecraft:custom_data.spore set value "chorus_kernel"
tag @n[tag=calibrating_chorus_kernel] remove calibrating_chorus_kernel