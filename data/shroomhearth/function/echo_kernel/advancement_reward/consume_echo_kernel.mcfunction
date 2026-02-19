# Executor: Player that consumed an echo kernel
# Position: The player

tellraw @a[tag=debug_echo_kernel] [{"text":"[shroomhearth:echo_kernel/advancement_reward/consume_echo_kernel] "},{"selector":"@s"},{"text":" consumed an Echo Kernel"}]


# Revoke trigger
advancement revoke @s only shroomhearth:echo_kernel/consume_echo_kernel

# Teleport the player
function shroomhearth:echo_kernel/play_teleport_effects
execute if predicate shroomhearth:echo_kernel/holding_echo_kernel_mainhand run function shroomhearth:echo_kernel/m_teleport_consumer with entity @s SelectedItem.components.minecraft:custom_data.target
execute if predicate shroomhearth:echo_kernel/holding_echo_kernel_offhand run function shroomhearth:echo_kernel/m_teleport_consumer with entity @s equipment.offhand.components.minecraft:custom_data.target
execute at @s run function shroomhearth:echo_kernel/play_teleport_effects

# Grant advancement
advancement grant @s only shroomhearth:echo_kernel/use_echo_kernel