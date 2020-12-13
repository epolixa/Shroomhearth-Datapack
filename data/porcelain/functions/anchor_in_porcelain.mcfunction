################################################################
# anchor in porcelain
# things relative to player anchor in porcelain
################################################################

# give player effect if they stray too far
execute as @p[distance=96..106] run effect give @s minecraft:blindness 2 1 true
title @p[distance=96..106] actionbar {"color":"white","translate":"item.minecraft.porcelain.fading"}

# make player exit if they stray too far
execute as @p[distance=104..106] run advancement grant @s only porcelain:exit_porcelain

# destroy self if there is no player close enough
execute unless entity @p[distance=..106] run kill @s

# particles around anchor
particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.005 1 force