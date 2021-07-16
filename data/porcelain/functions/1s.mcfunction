# play particles on overworld anchors
execute as @e[tag=source_anchor] at @s run particle minecraft:end_rod ~ ~0.8 ~ 0 0 0 0.005 1

# relative to anchor in porcelain
execute as @e[tag=porcelain_anchor] at @s run function porcelain:anchor_in_porcelain

# disable certain entities in porcelain
execute in minecraft:the_porcelain run function porcelain:disable_entities