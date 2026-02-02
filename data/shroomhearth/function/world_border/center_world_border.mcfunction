# Executor: Server
# Position: World Spawn

tellraw @a[tag=debug_world_border] [{"text":"[shroomhearth:world_border/center_world_border] Centering World Border at 0,0 in all dimensions"}]


# Center world border at 0,0 in all dimensions
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:the_nether run worldborder center 0 0
execute in minecraft:the_end run worldborder center 0 0
execute in minecraft:the_porcelain run worldborder center 0 0