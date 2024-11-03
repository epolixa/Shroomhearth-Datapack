tellraw @a[tag=debug_chorus_kernel] "Setting chorus kernel target..."

$data modify storage shroomhearth:chorus_kernel target.X set from storage shroomhearth:players $(key_string).chorus_kernel.item.components.minecraft:custom_data.targetPosX
$data modify storage shroomhearth:chorus_kernel target.Y set from storage shroomhearth:players $(key_string).chorus_kernel.item.components.minecraft:custom_data.targetPosY
$data modify storage shroomhearth:chorus_kernel target.Z set from storage shroomhearth:players $(key_string).chorus_kernel.item.components.minecraft:custom_data.targetPosZ
$data modify storage shroomhearth:chorus_kernel target.Dimension set from storage shroomhearth:players $(key_string).chorus_kernel.item.components.minecraft:custom_data.targetDim