# Executor: Server
# Position: Spawn


# Play particles on source dimension anchors
execute as @e[tag=porcelain_display] at @s run particle minecraft:end_rod ~ ~0.6 ~ 0 0 0 0.005 1

# Execute functions inside The Porcelain
execute in shroomhearth:the_porcelain run function shroomhearth:porcelain/1s_porcelain