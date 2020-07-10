################################################################
# anchor in porcelain
# things relative to player anchor in porcelain
################################################################

# give player effect if they stray far enough
execute as @p[distance=140..160] run effect give @s minecraft:blindness 2
title @p[distance=140..160] actionbar {"color":"white","text":"Vision fading"}

# make player exit if they stray too far
execute as @p[distance=144..160] run advancement grant @s only porcelain:exit_porcelain

# particles around anchor
particle minecraft:end_rod ~ ~1.2 ~ 0.4 0.8 0.4 0.005 1 force