# Executor: Server
# Position: World Spawn

tellraw @a[tag=debug_world_border] [{"text":"[world_border:set_initial_world_border] Setting initial World Border and scores"}]


# Set world border to 2048x2048 centered at spawn in the overworld
execute in minecraft:overworld run worldborder set 2048

# Set world border to 1/8th of the overworld border in the nether
execute in minecraft:the_nether run worldborder set 256

# Set world border to default max in the end and the porcelain
execute in minecraft:the_end run worldborder set 29999984
execute in minecraft:the_porcelain run worldborder set 29999984

# Update world border scores
scoreboard players set world_border_overworld shroomhearth 2048
scoreboard players set world_border_the_nether_target shroomhearth 256
function world_border:update_world_border_scores