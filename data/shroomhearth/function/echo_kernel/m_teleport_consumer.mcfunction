# Executor: Player who just consumed an echo kernel
# Position: The player
# Data: shroomhearth:echo_kernel.target: {x: int, y: int, z: int, dimension: string}

tellraw @a[tag=debug_echo_kernel] [{"text":"[shroomhearth:echo_kernel/m_teleport_consumer] Teleporting player to Echo Kernel target"}]


# Teleport the player with the player's eaten echo kernel data
$execute in $(dimension) run tp @s $(x) $(y) $(z)