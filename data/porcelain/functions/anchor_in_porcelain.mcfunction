################################################################
# anchor in porcelain
# things relative to player anchor in porcelain
################################################################

# give player effect if they stray far enough
execute as @p[distance=140..160] run effect give @s minecraft:blindness 2
title @p[distance=140..160] actionbar {"color":"white","text":"Vision fading"}

# make player exit if they stray too far
execute as @p[distance=144..160] run advancement grant @s only porcelain:exit_porcelain

# destroy self if there is no player close enough
execute unless entity @p[distance=..160] run kill @s

# particles around anchor
particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.005 1 force