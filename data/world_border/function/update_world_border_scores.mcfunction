# Executor: Server
# Position: World Spawn

tellraw @a[tag=debug_world_border] [{"text":"[world_border:update_world_border_scores] Updating World Border scores"}]


# Update world border scores for overworld and nether
execute in minecraft:overworld store result score WORLD_BORDER_OVERWORLD shroomhearth run worldborder get
execute in minecraft:the_nether store result score WORLD_BORDER_THE_NETHER shroomhearth run worldborder get