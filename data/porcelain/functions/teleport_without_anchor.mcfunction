# teleport to overworld and find nearest ground
execute in minecraft:overworld run teleport @s ~ 64 ~
spreadplayers ~ ~ 0 4 false @s

# show warning
playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 1 1 1
title @s actionbar {"color":"white","translate":"item.minecraft.porcelain.anchor_lost"}

# cleanup force-loaded chunks
forceload remove all