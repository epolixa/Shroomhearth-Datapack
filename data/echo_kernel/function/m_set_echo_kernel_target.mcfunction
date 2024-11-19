tellraw @a[tag=debug_echo_kernel] "Setting echo kernel target..."

$data modify storage shroomhearth:echo_kernel target.X set from storage shroomhearth:players $(key_string).echo_kernel.item.components.minecraft:custom_data.targetPosX
$data modify storage shroomhearth:echo_kernel target.Y set from storage shroomhearth:players $(key_string).echo_kernel.item.components.minecraft:custom_data.targetPosY
$data modify storage shroomhearth:echo_kernel target.Z set from storage shroomhearth:players $(key_string).echo_kernel.item.components.minecraft:custom_data.targetPosZ
$data modify storage shroomhearth:echo_kernel target.Dimension set from storage shroomhearth:players $(key_string).echo_kernel.item.components.minecraft:custom_data.targetDim