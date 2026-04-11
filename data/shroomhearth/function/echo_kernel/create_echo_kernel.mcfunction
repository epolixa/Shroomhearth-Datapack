# Executor: Player who just consumed an echoed chorus fruit and spawned an uncalibrated echo kernel
# Position: The player

tellraw @a[tag=debug_echo_kernel] [{"text":"[shroomhearth:echo_kernel/create_echo_kernel] Creating Echo Kernel"}]


# Spawn a kernel
loot spawn ~ ~ ~ loot shroomhearth:echo_kernel/echo_kernel

# Calibrate it
execute as @n[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{shroomhearth_id:"uncalibrated_echo_kernel"}}}}] at @s run function shroomhearth:echo_kernel/calibrate_echo_kernel