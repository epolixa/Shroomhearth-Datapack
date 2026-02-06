# Executor: Player being teleported out of The Porcelain
# Position: the Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/teleport_without_anchor] Teleporting "},{"selector":"@s"},{"text":" to matching coordinates in source dimension due to lost anchor"}]


# teleport to overworld and find nearest ground
execute if score @s porcelain_dimension_id matches 0 in minecraft:overworld run teleport @s ~ 265 ~
execute if score @s porcelain_dimension_id matches -1 in minecraft:the_nether run teleport @s ~ 265 ~
execute if score @s porcelain_dimension_id matches 1 in minecraft:the_end run teleport @s ~ 265 ~
spreadplayers ~ ~ 0 1 false @s

# show warning
title @s actionbar {"color":"white","translate":"porcelain.porcelain.anchor_lost"}

# cleanup force-loaded chunks
forceload remove all