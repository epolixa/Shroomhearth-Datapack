# Executor: Server
# Position: World Spawn

tellraw @a[tag=debug_world_border] [{"text":"[world_border:update_distance_scores] Updating distance scores"}]


# Update world border scores for overworld and nether
execute in minecraft:overworld store result score distance_overworld shroomhearth.world_border run worldborder get
execute in minecraft:the_nether store result score distance_the_nether shroomhearth.world_border run worldborder get