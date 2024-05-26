# play particles on overworld anchors
execute as @e[tag=porcelain_display] at @s run particle minecraft:end_rod ~ ~0.6 ~ 0 0 0 0.005 1

# porcelain-specific functions
execute in minecraft:the_porcelain run function porcelain:1s_porcelain