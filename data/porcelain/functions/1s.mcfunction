# play particles on overworld anchors
execute as @e[tag=source_anchor] at @s run particle minecraft:end_rod ~ ~0.8 ~ 0 0 0 0.005 1

# porcelain-specific functions
execute in minecraft:the_porcelain run function porcelain:1s_porcelain