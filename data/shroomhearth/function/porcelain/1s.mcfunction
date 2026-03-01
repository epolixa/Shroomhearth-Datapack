# Executor: Server
# Position: Spawn

#tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/1s] Pulsing..."}]


# Play particles on source dimension anchors
execute as @e[tag=porcelain_anchor] at @s run particle minecraft:end_rod ~ ~0.6 ~ 0 0 0 0.005 1

# Execute functions inside The Porcelain every second if there are players in the dimension
execute if entity @p[predicate=shroomhearth:porcelain/in_the_porcelain] in shroomhearth:the_porcelain run function shroomhearth:porcelain/1s_the_porcelain