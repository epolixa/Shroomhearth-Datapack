# Executes from the context of a player who just consumed a chorus kernel
# Data: shroomhearth:chorus_kernel.target: {X: int, Y: int, Z: int, Dimension: string}
tellraw @a[tag=debug_chorus_kernel] "Teleport consumer..."

# Finally teleport the player with the player's eaten chorus fruit data
$execute in $(Dimension) run tp @s $(X) $(Y) $(Z)