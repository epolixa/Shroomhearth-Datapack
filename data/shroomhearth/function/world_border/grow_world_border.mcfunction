# Executor: Player who just consumed a Hyphal Knot while the world border is idle
# Position: The player

tellraw @a[tag=debug_world_border] [{"text":"[shroomhearth:world_border/grow_world_border] "},{"selector":"@s"},{"text":" unravelled a Hyphal Knot and started growing the World Border"}]


# Set target scores
scoreboard players add distance_target_overworld shroomhearth.world_border 32
scoreboard players add distance_target_the_nether shroomhearth.world_border 4

# Expand world border by 32 in overworld
execute in minecraft:overworld run worldborder add 32 64s

# Expand world border 1/8th as much in nether
execute in minecraft:the_nether run worldborder add 4 64s

# Notify players
tellraw @a [{"color":"white","text":"A Hyphal Knot was unravelled by "},{"selector":"@s"}]

# Play unravel sound
playsound minecraft:item.lead.break player

# Play sound for all players
execute as @a at @s run playsound minecraft:block.chorus_flower.grow player @s ~ ~ ~ 32 0.8

# Play particles
particle minecraft:end_rod ~ ~1 ~ 4 0 4 0.05 16

# Grant advancement
advancement grant @s only shroomhearth:world_border/beyond_the_horizon