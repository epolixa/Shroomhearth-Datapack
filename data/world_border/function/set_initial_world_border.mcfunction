# Executor: Server
# Position: World Spawn

tellraw @a[tag=debug_world_border] [{"text":"[world_border:set_initial_world_border] Setting initial World Border and scores"}]

# Center world border
function world_border:center_world_border

# Set world border distance to 2048x2048 in the overworld
execute in minecraft:overworld run worldborder set 2048

# Set world border to 1/8th of the overworld border in the nether
execute in minecraft:the_nether run worldborder set 256

# Set world border to default max in the end and the porcelain
execute in minecraft:the_end run worldborder set 29999984
execute in minecraft:the_porcelain run worldborder set 29999984

# Update world border scores
function world_border:update_distance_scores
scoreboard players operation distance_target_overworld shroomhearth.world_border = distance_overworld shroomhearth.world_border
scoreboard players operation distance_target_the_nether shroomhearth.world_border = distance_the_nether shroomhearth.world_border